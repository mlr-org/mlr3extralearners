# temporary: standalone reproduction of the botorch segfault
import faulthandler
faulthandler.enable()
import torch
from botorch.models import SingleTaskGP
from botorch.fit import fit_gpytorch_mll
from gpytorch.kernels import MaternKernel, ScaleKernel
from gpytorch.mlls import ExactMarginalLogLikelihood

print("torch", torch.__version__, "threads", torch.get_num_threads(), torch.backends.cpu.get_cpu_capability(), flush=True)
torch.manual_seed(1)
x = torch.rand(32, 6, dtype=torch.float64)
y = torch.rand(32, 1, dtype=torch.float64)
for nu in [2.5, 1.5, 0.5]:
    gp = SingleTaskGP(x, y, covar_module=ScaleKernel(MaternKernel(nu=nu, ard_num_dims=6)))
    fit_gpytorch_mll(ExactMarginalLogLikelihood(gp.likelihood, gp))
    gp.eval()
    with torch.no_grad():
        print(nu, gp.posterior(x).mean.mean().item(), flush=True)
print("python OK", flush=True)
