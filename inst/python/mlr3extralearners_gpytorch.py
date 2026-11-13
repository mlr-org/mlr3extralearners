# Exact Gaussian process regression with gpytorch, used by the regr.gpytorch learner.
# gpytorch requires the model to be defined as a python class,
# and the classes must live in an importable module so that the fitted model can be pickled.
import warnings

import gpytorch
import numpy as np
import torch


class ExactGPModel(gpytorch.models.ExactGP):
    def __init__(self, train_x, train_y, likelihood, kernel="rbf"):
        super().__init__(train_x, train_y, likelihood)
        self.mean_module = gpytorch.means.ConstantMean()
        if kernel == "rbf":
            base_kernel = gpytorch.kernels.RBFKernel()
        elif kernel.startswith("matern_"):
            base_kernel = gpytorch.kernels.MaternKernel(nu=float(kernel.split("_")[1]))
        else:
            raise ValueError(f"Unknown kernel: {kernel}")
        self.covar_module = gpytorch.kernels.ScaleKernel(base_kernel)

    def forward(self, x):
        return gpytorch.distributions.MultivariateNormal(self.mean_module(x), self.covar_module(x))


class GPyTorchWrapper:
    def __init__(self, kernel="rbf", lr=0.1, n_iter=50, device="auto"):
        self.kernel = kernel
        self.lr = float(lr)
        self.n_iter = int(n_iter)
        if device == "auto":
            device = "cuda" if torch.cuda.is_available() else "cpu"
        self.device = torch.device(device)

    def _tensor(self, x):
        return torch.tensor(x, dtype=torch.float64, device=self.device)

    def fit(self, X, y):
        # np.array() copies, the memory of the R objects is read only
        X = np.array(X, dtype=np.float64)
        y = np.array(y, dtype=np.float64)

        # standardize features and target, constant columns are only centered
        self.x_mean = X.mean(axis=0)
        self.x_std = X.std(axis=0)
        self.x_std[self.x_std == 0] = 1.0
        self.y_mean = float(y.mean())
        self.y_std = float(y.std()) or 1.0

        train_x = self._tensor((X - self.x_mean) / self.x_std)
        train_y = self._tensor((y - self.y_mean) / self.y_std)

        self.likelihood = gpytorch.likelihoods.GaussianLikelihood().to(train_x)
        self.model = ExactGPModel(train_x, train_y, self.likelihood, self.kernel).to(train_x)
        self.model.train()
        self.likelihood.train()

        optimizer = torch.optim.Adam(self.model.parameters(), lr=self.lr)
        mll = gpytorch.mlls.ExactMarginalLogLikelihood(self.likelihood, self.model)
        for _ in range(self.n_iter):
            optimizer.zero_grad()
            loss = -mll(self.model(train_x), train_y)
            loss.backward()
            optimizer.step()

        return self

    def predict(self, X):
        X = np.array(X, dtype=np.float64)
        test_x = self._tensor((X - self.x_mean) / self.x_std)

        self.model.eval()
        self.likelihood.eval()
        with torch.no_grad(), warnings.catch_warnings():
            # predicting on the training data is legitimate, e.g. for the train error
            warnings.simplefilter("ignore", gpytorch.utils.warnings.GPInputWarning)
            # posterior of the latent function, i.e. without the observation noise
            posterior = self.model(test_x)
            mean = posterior.mean.cpu().numpy()
            variance = posterior.variance.cpu().numpy()

        return {"mean": mean * self.y_std + self.y_mean, "variance": variance * self.y_std**2}
