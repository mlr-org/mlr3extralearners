#!/usr/bin/env Rscript
# Prints the signature (parameters with defaults and annotations) and the docstring of a Python callable,
# so that a paradox ParamSet can be drafted from it.
#
# Usage:
#   Rscript py_signature.R <pip requirement> <module> <attribute path>
# Examples:
#   Rscript py_signature.R scikit-learn sklearn.ensemble HistGradientBoostingClassifier
#   Rscript py_signature.R scikit-learn sklearn.ensemble HistGradientBoostingClassifier.fit
#   Rscript py_signature.R tabpfn tabpfn TabPFNClassifier
#
# The pip requirement is passed to reticulate::py_require(), so the package is installed into an ephemeral
# environment if it is not available. Set RETICULATE_PYTHON to use an existing environment instead.

args = commandArgs(trailingOnly = TRUE)
if (length(args) != 3L) {
  stop("Usage: Rscript py_signature.R <pip requirement> <module> <attribute path>")
}
requirement = args[[1L]]
module = args[[2L]]
attr_path = args[[3L]]

reticulate::py_require(requirement)

code = sprintf('
import importlib, inspect
obj = importlib.import_module(%s)
for name in %s.split("."):
    obj = getattr(obj, name)
print("Signature of %s.%s:")
try:
    for p in inspect.signature(obj).parameters.values():
        print("  " + str(p))
except (TypeError, ValueError) as e:
    print("  <no signature available: %%s>" %% e)
doc = inspect.getdoc(obj)
if doc:
    print("")
    print("Docstring:")
    print(doc)
', shQuote(module, type = "sh"), shQuote(attr_path, type = "sh"), module, attr_path)

invisible(reticulate::py_run_string(code))
