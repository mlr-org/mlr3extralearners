def predict_gp(model, x_py):
    import torch
    with torch.no_grad():
        posterior = model.posterior(x_py)
        mean = posterior.mean.cpu().numpy()
        covar = posterior.mvn.covariance_matrix.cpu().numpy()
    return mean, covar
