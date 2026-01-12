# Classification Neural Network Learner

Simple and fast neural nets for tabular data classification. Calls
[`fastai::tabular_learner()`](https://rdrr.io/pkg/fastai/man/tabular_learner.html)
from package [fastai](https://CRAN.R-project.org/package=fastai).

## Installation

The Python dependencies are automatically installed via
[`reticulate::py_require()`](https://rstudio.github.io/reticulate/reference/py_require.html).
See [Installing Python
Dependencies](https://rstudio.github.io/reticulate/articles/python_packages.html)
for more details. You can manually specify a virtual environment by
calling
[`reticulate::use_virtualenv()`](https://rstudio.github.io/reticulate/reference/use_python.html)
prior to calling the `$train()` function. In this virtual environment,
the `fastai` package and its dependencies must be installed.

## Saving a Learner

In order to save a `lrn("classif.fastai")` for later usage, it is
necessary to call the `$marshal()` method on the `Learner` before
writing it to disk, as the object will otherwise not be saved correctly.
After loading a marshaled `lrn("classif.fastai")` into R again, you then
need to call `$unmarshal()` to transform it into a useable state.

## Initial parameter values

- `n_epoch`: Needs to be set for
  [`fastai::fit()`](https://rdrr.io/pkg/fastai/man/reexports.html) to
  work. If no value is given, it is set to 5.

- `eval_metric`: Needs to be set for
  [`fastai::predict()`](https://rdrr.io/pkg/fastai/man/reexports.html)
  to work. If no value is given, it is set to
  [`fastai::accuracy()`](https://rdrr.io/pkg/fastai/man/accuracy.html).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.fastai")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [fastai](https://CRAN.R-project.org/package=fastai),
  [reticulate](https://CRAN.R-project.org/package=reticulate)

## Parameters

|             |         |         |             |                       |
|-------------|---------|---------|-------------|-----------------------|
| Id          | Type    | Default | Levels      | Range                 |
| act_cls     | untyped | \-      |             | \-                    |
| bn_cont     | logical | TRUE    | TRUE, FALSE | \-                    |
| bn_final    | logical | FALSE   | TRUE, FALSE | \-                    |
| drop_last   | logical | FALSE   | TRUE, FALSE | \-                    |
| embed_p     | numeric | 0       |             | \\\[0, 1\]\\          |
| emb_szs     | untyped | NULL    |             | \-                    |
| n_epoch     | integer | 5       |             | \\\[1, \infty)\\      |
| eval_metric | untyped | \-      |             | \-                    |
| layers      | untyped | \-      |             | \-                    |
| loss_func   | untyped | \-      |             | \-                    |
| lr          | numeric | 0.001   |             | \\\[0, \infty)\\      |
| metrics     | untyped | \-      |             | \-                    |
| n_out       | integer | \-      |             | \\(-\infty, \infty)\\ |
| num_workers | integer | \-      |             | \\(-\infty, \infty)\\ |
| opt_func    | untyped | \-      |             | \-                    |
| patience    | integer | 1       |             | \\\[1, \infty)\\      |
| pin_memory  | logical | TRUE    | TRUE, FALSE | \-                    |
| procs       | untyped | NULL    |             | \-                    |
| ps          | untyped | NULL    |             | \-                    |
| shuffle     | logical | FALSE   | TRUE, FALSE | \-                    |
| train_bn    | logical | TRUE    | TRUE, FALSE | \-                    |
| wd          | integer | \-      |             | \\\[0, \infty)\\      |
| wd_bn_bias  | logical | FALSE   | TRUE, FALSE | \-                    |
| use_bn      | logical | TRUE    | TRUE, FALSE | \-                    |
| y_range     | untyped | NULL    |             | \-                    |
| bs          | integer | 50      |             | \\(-\infty, \infty)\\ |

## References

Howard, Jeremy, Gugger, Sylvain (2020). “Fastai: A Layered API for Deep
Learning.” *Information*, **11**(2), 108. ISSN 2078-2489,
[doi:10.3390/info11020108](https://doi.org/10.3390/info11020108) .

## See also

- [Dictionary](https://mlr3misc.mlr-org.com/reference/Dictionary.html)
  of [Learners](https://mlr3.mlr-org.com/reference/Learner.html):
  [mlr3::mlr_learners](https://mlr3.mlr-org.com/reference/mlr_learners.html).

- `as.data.table(mlr_learners)` for a table of available
  [Learners](https://mlr3.mlr-org.com/reference/Learner.html) in the
  running session (depending on the loaded packages).

- Chapter in the [mlr3book](https://mlr3book.mlr-org.com/):
  <https://mlr3book.mlr-org.com/basics.html#learners>

- [mlr3learners](https://CRAN.R-project.org/package=mlr3learners) for a
  selection of recommended learners.

- [mlr3cluster](https://CRAN.R-project.org/package=mlr3cluster) for
  unsupervised clustering learners.

- [mlr3pipelines](https://CRAN.R-project.org/package=mlr3pipelines) to
  combine learners with pre- and postprocessing steps.

- [mlr3tuning](https://CRAN.R-project.org/package=mlr3tuning) for tuning
  of hyperparameters,
  [mlr3tuningspaces](https://CRAN.R-project.org/package=mlr3tuningspaces)
  for established default tuning spaces.

## Author

annanzrv

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifFastai`

## Active bindings

- `internal_valid_scores`:

  (named [`list()`](https://rdrr.io/r/base/list.html) or `NULL`) The
  validation scores extracted from `eval_protocol` which itself is set
  by fitting the `fastai::tab_learner`. If early stopping is activated,
  this contains the validation scores of the model for the optimal
  `n_epoch`, otherwise the `n_epoch` for the final model.

- `internal_tuned_values`:

  (named [`list()`](https://rdrr.io/r/base/list.html) or `NULL`) If
  early stopping is activated, this returns a list with `n_epoch`, which
  is the last epoch that yielded improvement w.r.t. the `patience`,
  extracted by `max(eval_protocol$epoch)+1`

- `validate`:

  (`numeric(1)` or `character(1)` or `NULL`) How to construct the
  internal validation data. This parameter can be either `NULL`, a
  ratio, `"test"`, or `"predefined"`.

- `marshaled`:

  (`logical(1)`) Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifFastai$new()`](#method-LearnerClassifFastai-new)

- [`LearnerClassifFastai$marshal()`](#method-LearnerClassifFastai-marshal)

- [`LearnerClassifFastai$unmarshal()`](#method-LearnerClassifFastai-unmarshal)

- [`LearnerClassifFastai$clone()`](#method-LearnerClassifFastai-clone)

Inherited methods

- [`mlr3::Learner$base_learner()`](https://mlr3.mlr-org.com/reference/Learner.html#method-base_learner)
- [`mlr3::Learner$configure()`](https://mlr3.mlr-org.com/reference/Learner.html#method-configure)
- [`mlr3::Learner$encapsulate()`](https://mlr3.mlr-org.com/reference/Learner.html#method-encapsulate)
- [`mlr3::Learner$format()`](https://mlr3.mlr-org.com/reference/Learner.html#method-format)
- [`mlr3::Learner$help()`](https://mlr3.mlr-org.com/reference/Learner.html#method-help)
- [`mlr3::Learner$predict()`](https://mlr3.mlr-org.com/reference/Learner.html#method-predict)
- [`mlr3::Learner$predict_newdata()`](https://mlr3.mlr-org.com/reference/Learner.html#method-predict_newdata)
- [`mlr3::Learner$print()`](https://mlr3.mlr-org.com/reference/Learner.html#method-print)
- [`mlr3::Learner$reset()`](https://mlr3.mlr-org.com/reference/Learner.html#method-reset)
- [`mlr3::Learner$selected_features()`](https://mlr3.mlr-org.com/reference/Learner.html#method-selected_features)
- [`mlr3::Learner$train()`](https://mlr3.mlr-org.com/reference/Learner.html#method-train)
- [`mlr3::LearnerClassif$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerClassif.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifFastai$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifFastai$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifFastai$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifFastai$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
