# Task types: parents, properties, and what `.predict()` must return

| Task type | Parent class | Example tasks for tests and docs | Predict types |
|---|---|---|---|
| `classif` | `LearnerClassif` | `sonar` (binary), `iris`, `penguins` (multiclass), `spam` (larger) | `response`, `prob` |
| `regr` | `LearnerRegr` | `mtcars`, `boston_housing` | `response`, `se`, `quantiles`, `distr` |
| `surv` | `mlr3proba::LearnerSurv` | `grace`, `rats`, `lung` | `crank`, `distr`, `lp`, `response` |
| `cmprsk` | `mlr3cmprsk::LearnerCompRisks` | `pbc` | `cif` |

`mlr3proba` and `mlr3cmprsk` are in `Imports`, so survival and competing-risk learners reference the parent with the `pkg::` prefix
(`inherit = mlr3proba::LearnerSurv`), exactly as the existing files do.

## Properties

Allowed values are in `mlr3::mlr_reflections$learner_properties`. The ones you will choose between:

- `"missings"`: the upstream handles `NA` in features itself. The autotest will feed it missings, so only claim it if true.
- `"weights"`: you pass `private$.get_weights(task)` to the upstream.
- `"importance"`, `"selected_features"`, `"oob_error"`: you implement the matching public method.
- `"twoclass"`, `"multiclass"` (classification only): what the upstream supports. Binary-only upstreams get only `"twoclass"`.
- `"marshal"`: the model cannot be serialized with `saveRDS()` as is (Python objects, external pointers). Requires the
  `marshal()`/`unmarshal()` methods and the `marshaled` binding, see the Python reference.
- `"validation"` and `"internal_tuning"`: the learner can use an internal validation set and early stopping.
  These need the `validate` field, `.extract_internal_valid_scores()`, `.extract_internal_tuned_values()`, and a parameter with
  `tags = c("train", "internal_tuning")`; copy `R/learner_fastai_classif_fastai.R` or `R/learner_catboost_classif_catboost.R`.
  Discuss with the user before adding these, they roughly double the implementation effort.

## Return value of `.predict()`

Only include the elements the current `self$predict_type` asks for, except where noted.

**classif**

```r
list(response = <factor or character of class labels, length task$nrow>)
list(prob = <numeric matrix, nrow = task$nrow, colnames = task$class_names in any order>)
```

Return `prob` only when `self$predict_type == "prob"`; mlr3 derives the response from it.
When an upstream returns only the positive-class probability for binary tasks, use `pprob_to_matrix(p, task)` from `R/helpers.R`.
Check that the column order matches the labels: a transposed or misnamed matrix passes `expect_prediction()` but fails the
autotest's sanity check (it trains on a trivially separable task and expects low error).

**regr**

```r
list(response = <numeric, length task$nrow>)
list(response = <numeric>, se = <numeric standard errors>)        # predict_type "se"
```

`quantiles` and `distr` exist but are rare; look at `R/learner_gbm_regr_gbm.R` or the `mlr3` documentation of `PredictionRegr`
before promising them.

**surv**

Build the list with `mlr3proba::surv_return()`; it derives `crank` from `distr` and checks the matrix shape:

```r
surv = <matrix nrow = task$nrow, ncol = length(times), survival probabilities S(t) per row>
pred_list = mlr3proba::surv_return(times = times, surv = surv)
pred_list$response = <optional: expected survival time>
pred_list
```

`times` are usually the unique event times of the training data, stored in the model during `.train()`.
When the upstream only yields a linear predictor, `surv_return(lp = lp)` (plus `crank = lp`) is acceptable but weaker.
Call the time grid helper `gridify_times(times, ntime)` from `R/helpers.R` if the learner exposes an `ntime` parameter.

**cmprsk**

```r
list(cif = <named list, one matrix per cause, nrow = task$nrow, colnames = time points>)
```

See `R/learner_CoxBoost_cmprsk_coxboost.R` for the full handling of the `times` parameter and defaulting to training event times.

## Feature types

Claim exactly what the upstream accepts. The autotest generates one task per claimed type (`feat_logical`, `feat_integer`,
`feat_numeric`, `feat_character`, `feat_factor`, `feat_ordered`) plus a mixed one.
`character` and `ordered` are often forgotten and often unsupported; when the upstream wants a numeric matrix, declare only
`c("integer", "numeric")` (plus `"logical"` when you convert via `as_numeric_matrix()`), and let users add `mlr3pipelines`
encoders in front of the learner instead of silently encoding factors inside the learner.
