# Cross-Validated GLM with Elastic Net Regularization Survival Learner

Generalized linear models with elastic net regularization. Calls
[`glmnet::cv.glmnet()`](https://glmnet.stanford.edu/reference/cv.glmnet.html)
from package [glmnet](https://CRAN.R-project.org/package=glmnet).

## Initial parameter values

- `family` is set to `"cox"` and cannot be changed.

- `cox.ties` is initialized to `"breslow"` to keep the tie-handling
  behavior of earlier glmnet versions, and to silence the glmnet v5.0
  warning about the upcoming default change to `"efron"`.

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`glmnet::predict.cv.glmnet()`](https://glmnet.stanford.edu/reference/predict.cv.glmnet.html).

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    `glmnet:::survfit.cv.glmnet()`. Parameters `stype` and `ctype`
    relate to how `lp` predictions are transformed into survival
    predictions and are described in
    [`survival::survfit.coxph()`](https://rdrr.io/pkg/survival/man/survfit.coxph.html).
    By default the Breslow estimator is used for computing the baseline
    hazard.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.cv_glmnet")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “lp”

- Feature Types: “logical”, “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [glmnet](https://CRAN.R-project.org/package=glmnet),
  [survdistr](https://CRAN.R-project.org/package=survdistr)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| lambda | untyped | NULL |  | \- |
| type.measure | character | deviance | deviance, C | \- |
| nfolds | integer | 10 |  | \\\[3, \infty)\\ |
| foldid | untyped | NULL |  | \- |
| alignment | character | lambda | lambda, fraction | \- |
| grouped | logical | TRUE | TRUE, FALSE | \- |
| keep | logical | FALSE | TRUE, FALSE | \- |
| parallel | logical | FALSE | TRUE, FALSE | \- |
| gamma | untyped | c(0, 0.25, 0.5, 0.75, 1) |  | \- |
| relax | logical | FALSE | TRUE, FALSE | \- |
| trace.it | integer | 0 |  | \\\[0, 1\]\\ |
| alpha | numeric | 1 |  | \\\[0, 1\]\\ |
| nlambda | integer | 100 |  | \\\[1, \infty)\\ |
| lambda.min.ratio | numeric | \- |  | \\\[0, 1\]\\ |
| standardize | logical | TRUE | TRUE, FALSE | \- |
| intercept | logical | TRUE | TRUE, FALSE | \- |
| exclude | untyped | NULL |  | \- |
| penalty.factor | untyped | \- |  | \- |
| lower.limits | untyped | -Inf |  | \- |
| upper.limits | untyped | Inf |  | \- |
| cox.ties | character | breslow | breslow, efron | \- |
| maxp | integer | \- |  | \\\[1, \infty)\\ |
| path | logical | FALSE | TRUE, FALSE | \- |
| fdev | numeric | 1e-05 |  | \\\[0, 1\]\\ |
| devmax | numeric | 0.999 |  | \\\[0, 1\]\\ |
| eps | numeric | 1e-06 |  | \\\[0, 1\]\\ |
| big | numeric | 9.9e+35 |  | \\(-\infty, \infty)\\ |
| mnlam | integer | 5 |  | \\(-\infty, \infty)\\ |
| pmin | numeric | 1e-09 |  | \\\[0, 1\]\\ |
| exmx | numeric | 250 |  | \\(-\infty, \infty)\\ |
| prec | numeric | 1e-10 |  | \\(-\infty, \infty)\\ |
| mxit | integer | 100 |  | \\\[1, \infty)\\ |
| epsnr | numeric | 1e-06 |  | \\\[0, 1\]\\ |
| mxitnr | integer | 25 |  | \\\[1, \infty)\\ |
| thresh | numeric | 1e-07 |  | \\\[0, \infty)\\ |
| maxit | integer | 100000 |  | \\\[1, \infty)\\ |
| dfmax | integer | NULL |  | \\\[0, \infty)\\ |
| pmax | integer | NULL |  | \\\[0, \infty)\\ |
| s | numeric | lambda.1se |  | \\\[0, \infty)\\ |
| predict.gamma | numeric | gamma.1se |  | \\\[0, 1\]\\ |
| exact | logical | FALSE | TRUE, FALSE | \- |
| stype | integer | 2 |  | \\\[1, 2\]\\ |
| ctype | integer | \- |  | \\\[1, 2\]\\ |
| use_pred_offset | logical | \- | TRUE, FALSE | \- |
| strata | untyped | NULL |  | \- |

## Offset

If a `Task` contains a column with the `offset` role, it is
automatically incorporated during training via the `offset` argument in
[`glmnet::glmnet()`](https://glmnet.stanford.edu/reference/glmnet.html).
During prediction, the offset column from the test set is used only if
`use_pred_offset = TRUE` (default), passed via the `newoffset` argument
in
[`glmnet::predict.glmnet()`](https://glmnet.stanford.edu/reference/predict.glmnet.html).
Otherwise, if the user sets `use_pred_offset = FALSE`, a zero offset is
applied, effectively disabling the offset adjustment during prediction.

## Stratification

Parameter `strata` can be set to the name of one task column used as the
stratification variable. During training, the column is removed from the
data, converted to an integer, and is attached to the survival response
via
[`glmnet::stratifySurv()`](https://glmnet.stanford.edu/reference/stratifySurv.html).
During prediction, the same task column is passed as `newstrata` for
survival distribution predictions (`distr`) in the `survfit` function.
Constant interpolation via `survdistr` is used to align the survival
probabilities to a common set of time points across all strata. Note
that if an observation in the test set has a stratum not present in the
training set, the prediction will fail, as the baseline hazard cannot be
estimated for unseen strata. The rest of the prediction types do not
depend on the strata column.

## References

Friedman J, Hastie T, Tibshirani R (2010). “Regularization Paths for
Generalized Linear Models via Coordinate Descent.” *Journal of
Statistical Software*, **33**(1), 1–22.
[doi:10.18637/jss.v033.i01](https://doi.org/10.18637/jss.v033.i01) .

## See also

- [Dictionary](https://mlr3misc.mlr-org.com/reference/Dictionary.html)
  of [Learners](https://mlr3.mlr-org.com/reference/Learner.html):
  [mlr3::mlr_learners](https://mlr3.mlr-org.com/reference/mlr_learners.html).

- `as.data.table(mlr_learners)` for a table of available
  [Learners](https://mlr3.mlr-org.com/reference/Learner.html) in the
  running session (depending on the loaded packages).

- Chapter in the [mlr3book](https://mlr3book.mlr-org.com/):
  <https://mlr3book.mlr-org.com/chapters/chapter2/data_and_basic_modeling.html#sec-learners>

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

be-marc

bblodfon

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvCVGlmnet`

## Active bindings

- `native_model`:

  (`cv.glmnet`)  
  The fitted model.

## Methods

### Public methods

- [`LearnerSurvCVGlmnet$new()`](#method-LearnerSurvCVGlmnet-initialize)

- [`LearnerSurvCVGlmnet$selected_features()`](#method-LearnerSurvCVGlmnet-selected_features)

- [`LearnerSurvCVGlmnet$clone()`](#method-LearnerSurvCVGlmnet-clone)

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
- [`mlr3::Learner$train()`](https://mlr3.mlr-org.com/reference/Learner.html#method-train)

------------------------------------------------------------------------

### `LearnerSurvCVGlmnet$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvCVGlmnet$new()

------------------------------------------------------------------------

### `LearnerSurvCVGlmnet$selected_features()`

Returns the set of selected features as reported by
[`glmnet::predict.glmnet()`](https://glmnet.stanford.edu/reference/predict.glmnet.html)
with `type` set to `"nonzero"`.

#### Usage

    LearnerSurvCVGlmnet$selected_features(lambda = NULL)

#### Arguments

- `lambda`:

  (`numeric(1)`)  
  Custom `lambda`, defaults to the active lambda depending on parameter
  set.

#### Returns

([`character()`](https://rdrr.io/r/base/character.html)) of feature
names.

------------------------------------------------------------------------

### `LearnerSurvCVGlmnet$clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerSurvCVGlmnet$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("surv.cv_glmnet")
print(learner)
#> 
#> ── <LearnerSurvCVGlmnet> (surv.cv_glmnet): Regularized Generalized Linear Model 
#> • Model: -
#> • Parameters: cox.ties=breslow, use_pred_offset=TRUE
#> • Packages: mlr3, mlr3proba, mlr3extralearners, glmnet, and survdistr
#> • Predict Types: [crank], distr, and lp
#> • Feature Types: logical, integer, and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: offset, selected_features, and weights
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

# Define a Task
task = tsk("grace")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> $model
#> 
#> Call:  glmnet::cv.glmnet(x = data, y = target, cox.ties = "breslow",      family = "cox") 
#> 
#> Measure: Partial Likelihood Deviance 
#> 
#>      Lambda Index Measure     SE Nonzero
#> min 0.00308    45   2.732 0.1522       6
#> 1se 0.07281    11   2.882 0.1574       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      0        180        0   121
#>   [7,]  35   2      1          1        1   112
#>   [8,]  37   9      0        180        1   151
#>   [9,]  38  13      1          0        1   161
#>  [10,]  38  12      1          8        1   120
#>  [11,]  33   6      1          1        1   115
#>  [12,]  38  16      1         10        0   160
#>  [13,]  38  12      1         11        1    92
#>  [14,]  40  12      1          9        0   153
#>  [15,]  42   3      1          1        1   130
#>  [16,]  40   2      1          1        1   148
#>  [17,]  42   2      0        180        1   100
#>  [18,]  42   2      0          2        0   140
#>  [19,]  40   6      0        180        1   138
#>  [20,]  40  11      1         10        1   120
#>  [21,]  42   2      0        180        0   100
#>  [22,]  43   3      1          0        1   100
#>  [23,]  40   1      1          0        1   145
#>  [24,]  43   4      1          0        1   130
#>  [25,]  40   3      1          1        0   170
#>  [26,]  42  12      1         10        1   170
#>  [27,]  43   2      1          1        1   116
#>  [28,]  42   2      0        180        1   124
#>  [29,]  44   5      1          1        0   170
#>  [30,]  41  10      1          8        0   150
#>  [31,]  41  13      1          1        0   140
#>  [32,]  45   9      1          7        0   110
#>  [33,]  45   6      0        180        1   170
#>  [34,]  41   5      1          4        1   141
#>  [35,]  44   2      1          1        1   150
#>  [36,]  43   2      0        180        1   140
#>  [37,]  45   2      0        180        1   140
#>  [38,]  48  15      0        180        1   160
#>  [39,]  45   3      0        150        0   130
#>  [40,]  44   3      1          0        1   180
#>  [41,]  45   4      1          0        0   124
#>  [42,]  43  10      0        180        0   185
#>  [43,]  47   6      1          0        1   116
#>  [44,]  47   4      1          3        1   160
#>  [45,]  43   3      1          0        1   124
#>  [46,]  49   5      0         73        1   136
#>  [47,]  46   2      1          1        1   122
#>  [48,]  46   6      1          0        1   100
#>  [49,]  44   4      1          0        1   114
#>  [50,]  44   9      1          8        1   135
#>  [51,]  45   5      0        180        1   190
#>  [52,]  46   5      1          3        0   130
#>  [53,]  47   3      1          1        1   120
#>  [54,]  48  12      1         11        0   200
#>  [55,]  47   9      1          6        0   170
#>  [56,]  46   3      1          0        1   119
#>  [57,]  49   4      0        180        0   117
#>  [58,]  50   4      1          1        0   125
#>  [59,]  50   6      1          2        1   140
#>  [60,]  49   7      1          7        1   110
#>  [61,]  46   3      1          1        1   140
#>  [62,]  46   9      1          9        1   122
#>  [63,]  50   7      0        180        1   110
#>  [64,]  49   2      0          2        0   105
#>  [65,]  51   1      0          1        1   145
#>  [66,]  49  15      1         11        1   160
#>  [67,]  47   2      0        180        0   150
#>  [68,]  46   6      1          0        1   156
#>  [69,]  50   7      1          0        1    92
#>  [70,]  50   4      0          4        1   100
#>  [71,]  51   3      1          2        0   113
#>  [72,]  50   1      1          0        0   150
#>  [73,]  50   9      0        180        0   130
#>  [74,]  47   8      0        180        0   160
#>  [75,]  47   6      0        180        1   162
#>  [76,]  52   2      0        180        0   155
#>  [77,]  46   3      0        180        1   120
#>  [78,]  46   1      1          1        0   145
#>  [79,]  50   4      1          1        0   150
#>  [80,]  48   7      1          0        1   110
#>  [81,]  47   2      1          1        0   110
#>  [82,]  49   9      1          3        0   102
#>  [83,]  49  15      0        180        1   160
#>  [84,]  53   5      0        180        1   140
#>  [85,]  54  17      1         12        1   102
#>  [86,]  53   5      0         77        0   159
#>  [87,]  53   7      1          0        0   199
#>  [88,]  54   6      1          3        0   129
#>  [89,]  51   3      1          1        0   140
#>  [90,]  50  10      1          6        0   122
#>  [91,]  50  14      1         13        0   170
#>  [92,]  48   3      1          2        0   150
#>  [93,]  51  25      1          1        0   202
#>  [94,]  49   5      1          2        1   150
#>  [95,]  53   4      0          4        0   140
#>  [96,]  52  14      1          7        1   200
#>  [97,]  53   4      1          0        1   156
#>  [98,]  51  13      0         99        1   160
#>  [99,]  54   9      1          0        1   138
#> [100,]  49  16      0         16        0   125
#> [101,]  55   3      1          1        0   150
#> [102,]  54  23      1         10        0   131
#> [103,]  52   4      0        180        1   180
#> [104,]  50   5      1          4        1   150
#> [105,]  54   4      1          0        1   121
#> [106,]  52   4      0        180        0   183
#> [107,]  49   6      1          0        1   130
#> [108,]  49   1      0          1        1   110
#> [109,]  50   7      1          1        0   156
#> [110,]  53   8      1          0        1   130
#> [111,]  50   7      1          0        1   127
#> [112,]  56   4      1          1        1   130
#> [113,]  52   5      0        175        1   117
#> [114,]  54   7      1          0        1   100
#> [115,]  56   2      0        180        0   132
#> [116,]  52   8      0        180        0   119
#> [117,]  53  18      1          9        1   150
#> [118,]  54   3      0        180        1   180
#> [119,]  52  16      0         16        0   152
#> [120,]  53  10      1          9        0   172
#> [121,]  52  16      1         14        0   170
#> [122,]  53  15      0         15        1    90
#> [123,]  53   4      0        180        1   150
#> [124,]  55   6      0        180        1   100
#> [125,]  55   2      0        134        1   140
#> [126,]  54   3      0        180        0   128
#> [127,]  56   3      0          8        1   139
#> [128,]  57   3      0          3        0   120
#> [129,]  52   9      1          3        0   170
#> [130,]  54   2      1          1        1   176
#> [131,]  57   5      1          3        1   138
#> [132,]  57   1      0        180        1   156
#> [133,]  57   1      0          1        1   100
#> [134,]  56   4      1          0        1   140
#> [135,]  52   2      0        180        0   140
#> [136,]  55  11      1          7        0   104
#> [137,]  56  14      1         11        0   130
#> [138,]  58   8      0          8        1   130
#> [139,]  54   5      0        180        1   108
#> [140,]  55   3      1          1        1   156
#> [141,]  53  21      1         13        1   130
#> [142,]  59   3      1          1        0   172
#> [143,]  57   4      0        180        1   119
#> [144,]  58   6      1          0        1    90
#> [145,]  53  15      1         10        1   130
#> [146,]  54  17      1          8        1   227
#> [147,]  55   9      1          2        1   147
#> [148,]  55  13      0        166        1   140
#> [149,]  56   5      0          5        1   150
#> [150,]  54  23      1          8        0   120
#> [151,]  53   7      1          0        1   120
#> [152,]  57  11      1         10        1   129
#> [153,]  55   3      1          2        0   140
#> [154,]  54   7      1          0        1   141
#> [155,]  58   9      1          0        1   180
#> [156,]  58   1      1          1        1   200
#> [157,]  55   5      1          0        0   140
#> [158,]  56   7      1          5        1   120
#> [159,]  55   2      0          2        0   106
#> [160,]  57   1      0        180        0   148
#> [161,]  60  11      1          9        0   106
#> [162,]  59   3      0        180        0   120
#> [163,]  58   4      1          0        1   160
#> [164,]  57   2      0          2        1   120
#> [165,]  60   5      1          1        0   138
#> [166,]  55   5      1          0        1   160
#> [167,]  57  10      1          9        0   103
#> [168,]  59   6      1          0        1   140
#> [169,]  59   5      0        180        1   155
#> [170,]  59   4      1          0        1   152
#> [171,]  58   4      1          3        0   120
#> [172,]  60   0      1          0        1    80
#> [173,]  59   2      1          1        0   140
#> [174,]  58  14      1          6        0   190
#> [175,]  61   9      1          8        0   150
#> [176,]  61   3      1          2        1   102
#> [177,]  58   1      0          1        1   100
#> [178,]  61  20      1         13        0   130
#> [179,]  57  13      1         10        0   110
#> [180,]  57   2      1          0        1   116
#> [181,]  58  10      0         10        1   150
#> [182,]  57   4      1          3        0   138
#> [183,]  56  14      0         45        0   130
#> [184,]  57   3      1          2        0   120
#> [185,]  56  13      1          6        1   158
#> [186,]  60  12      1          0        1   114
#> [187,]  55   9      1          7        1   135
#> [188,]  61   4      1          0        1   115
#> [189,]  61  13      1         12        1   130
#> [190,]  59  11      1          8        1   190
#> [191,]  57  15      1         13        1   110
#> [192,]  59   5      1          2        0   182
#> [193,]  58   5      1          1        1   135
#> [194,]  59  10      0        180        0   160
#> [195,]  61   8      0         77        0   120
#> [196,]  61  13      0         13        0   210
#> [197,]  58   8      1          5        0   152
#> [198,]  62  10      1          0        1   153
#> [199,]  61  18      0        170        0   140
#> [200,]  58   8      1          3        1   150
#> [201,]  57   7      0        169        0   180
#> [202,]  61   7      0          7        1   150
#> [203,]  60   7      0          7        0   147
#> [204,]  61   6      0          6        0   134
#> [205,]  57  12      1          9        1   120
#> [206,]  60  17      1          8        1   140
#> [207,]  58   2      0         30        0   202
#> [208,]  59   1      0        180        0   155
#> [209,]  63   6      0         28        1   120
#> [210,]  61  13      0         13        0   120
#> [211,]  61   5      0          5        1   110
#> [212,]  61   5      0          5        1   160
#> [213,]  58  11      1          9        0   179
#> [214,]  63   3      1          1        0   180
#> [215,]  63   1      0        180        1   130
#> [216,]  61   7      0        180        0   135
#> [217,]  63   4      1          3        0   222
#> [218,]  62   3      0        180        1   105
#> [219,]  63   4      0        180        1   190
#> [220,]  64   4      0        180        0   130
#> [221,]  60  18      1         13        0   132
#> [222,]  59   8      0        180        1   140
#> [223,]  58   9      1          9        0   110
#> [224,]  62   7      0          7        0   150
#> [225,]  59   4      0        180        0   196
#> [226,]  60   7      0          7        0   140
#> [227,]  59   5      1          1        0   148
#> [228,]  60   7      1          1        1    90
#> [229,]  65  13      0        180        1   100
#> [230,]  63   1      0          1        0   162
#> [231,]  61  15      1         13        0   170
#> [232,]  59   4      0          4        0   149
#> [233,]  62   6      0          6        0   120
#> [234,]  63  12      1         10        0   200
#> [235,]  59  10      0        180        1   130
#> [236,]  66   1      1          0        1   120
#> [237,]  64   6      1          0        1   140
#> [238,]  65  36      1         11        0   140
#> [239,]  66   3      1          1        0   127
#> [240,]  61  10      1          2        1   194
#> [241,]  64  32      1          9        1   160
#> [242,]  63  12      1          9        0   114
#> [243,]  63   7      0        180        0   120
#> [244,]  66   5      1          0        1   110
#> [245,]  65  10      1          8        1   120
#> [246,]  64   0      0          0        1    90
#> [247,]  64  21      1         10        0   190
#> [248,]  61  12      1         11        0   154
#> [249,]  64   9      0        180        0   150
#> [250,]  61   4      0        180        1   113
#> [251,]  64   7      0        180        1   120
#> [252,]  63  12      0         12        1   150
#> [253,]  62   3      1          1        1   199
#> [254,]  65   6      0          9        0   112
#> [255,]  65   3      1          0        1    80
#> [256,]  63   2      1          1        0   180
#> [257,]  62  13      1         11        0   180
#> [258,]  64   2      0          2        0   201
#> [259,]  66  16      1         11        1   169
#> [260,]  62   9      0        180        0   145
#> [261,]  61  14      1          5        0   140
#> [262,]  61  15      1         10        0   130
#> [263,]  63   9      1          8        1   160
#> [264,]  63   3      1          2        0   120
#> [265,]  63   2      1          0        0   140
#> [266,]  65   8      1          0        1   140
#> [267,]  64  13      1         12        1   150
#> [268,]  64   6      1          0        1   125
#> [269,]  66   7      1          0        1   115
#> [270,]  66  13      1          0        0   118
#> [271,]  64   0      0          0        1   148
#> [272,]  66   6      1          0        1   140
#> [273,]  65   2      1          1        1   170
#> [274,]  67   8      1          1        1   130
#> [275,]  68   5      0          5        1    90
#> [276,]  63  10      0         16        1   160
#> [277,]  64   1      0          1        1   120
#> [278,]  68  18      0        180        1   260
#> [279,]  63   8      1          1        1   162
#> [280,]  63  10      0         18        1   130
#> [281,]  67  11      0         11        0   150
#> [282,]  68  11      0        180        0   160
#> [283,]  68  14      0         79        0   172
#> [284,]  65  15      1         12        1   150
#> [285,]  66  11      1          0        0   100
#> [286,]  65   4      1          2        1   145
#> [287,]  69  12      0         15        1   140
#> [288,]  66  15      1         13        1   160
#> [289,]  63   2      0        180        0   150
#> [290,]  65  11      1          6        0   130
#> [291,]  69  21      1         10        0   180
#> [292,]  63   8      0        180        1   120
#> [293,]  68  14      1         13        1   140
#> [294,]  65   8      1          0        1    90
#> [295,]  66   3      0          3        1   138
#> [296,]  69   1      1          0        0   170
#> [297,]  67   1      0        180        1   160
#> [298,]  68  10      1         10        1   150
#> [299,]  65   1      1          0        0   133
#> [300,]  67   2      0        180        0   184
#> [301,]  65   6      0          6        0    80
#> [302,]  66  19      1         12        1   150
#> [303,]  67  12      1         12        0   160
#> [304,]  65   4      1          1        0   130
#> [305,]  64   4      0        179        0   160
#> [306,]  66   4      0        180        1   130
#> [307,]  70  15      1         12        1   132
#> [308,]  64  11      0         11        0   125
#> [309,]  64   4      0        180        1   140
#> [310,]  67   2      0         18        0   131
#> [311,]  66   7      1          5        1   131
#> [312,]  66   4      0        180        0   177
#> [313,]  65  13      1         12        1   130
#> [314,]  69  17      1         10        0   140
#> [315,]  64  21      0         21        1   155
#> [316,]  66   6      0        180        0   140
#> [317,]  65   1      0          1        1   120
#> [318,]  68  18      1          0        1   160
#> [319,]  65   6      0        101        1   115
#> [320,]  71   3      0          5        0   112
#> [321,]  70   7      1          0        1   190
#> [322,]  68   7      0        150        0   210
#> [323,]  67   2      0        180        0   128
#> [324,]  66   9      1          3        1   151
#> [325,]  66   1      1          1        1   165
#> [326,]  70   4      1          0        1   180
#> [327,]  69   8      0        180        1   153
#> [328,]  70  14      0        171        0   166
#> [329,]  67   6      1          4        0   130
#> [330,]  68  18      1         14        1   170
#> [331,]  69   0      0          0        1   148
#> [332,]  65   2      0        180        0   130
#> [333,]  68   7      1          0        1   150
#> [334,]  69   3      1          2        0   151
#> [335,]  69   8      0        180        1   180
#> [336,]  71   7      0          7        0   230
#> [337,]  66   2      0          2        1   228
#> [338,]  69   5      0          5        1   142
#> [339,]  71   3      0        103        0   133
#> [340,]  69   3      0          3        1   130
#> [341,]  67   5      0          5        0   130
#> [342,]  68   6      0        180        0   145
#> [343,]  69   8      1          5        1   195
#> [344,]  69   6      1          4        1   174
#> [345,]  69   8      1          7        1   108
#> [346,]  67   3      0        180        0   110
#> [347,]  69  19      0        180        0   130
#> [348,]  67  14      0        172        1   140
#> [349,]  69  11      1          0        1   120
#> [350,]  66   2      0        180        0   130
#> [351,]  67   7      1          4        0   122
#> [352,]  68   2      0          7        1   130
#> [353,]  69   8      1          2        0   121
#> [354,]  67  13      1          9        0   130
#> [355,]  70   9      0        180        1   142
#> [356,]  72   5      1          4        0   170
#> [357,]  67  22      1          1        1   140
#> [358,]  68   3      0         19        0   135
#> [359,]  67  12      1          8        0   120
#> [360,]  69   1      0          1        1   110
#> [361,]  67   1      0          1        1    60
#> [362,]  67   4      0         60        1   136
#> [363,]  69   5      0         76        0   120
#> [364,]  67   8      1          0        1   130
#> [365,]  66  24      1         13        0   130
#> [366,]  72  30      1          0        1   145
#> [367,]  68   7      1          2        0   135
#> [368,]  71   6      0          9        0   120
#> [369,]  70  11      0        180        1   210
#> [370,]  72  19      1          8        0   120
#> [371,]  67   8      0        180        1   170
#> [372,]  67   9      0        180        0   158
#> [373,]  70   5      0        180        0   150
#> [374,]  67   4      1          1        0   134
#> [375,]  72   6      1          5        0   115
#> [376,]  68  23      0        180        1   220
#> [377,]  70   3      0        180        0   121
#> [378,]  69   3      0        180        0   220
#> [379,]  68   4      1          3        0   210
#> [380,]  72   5      0         28        0   120
#> [381,]  71   5      0        180        0   191
#> [382,]  69   8      1          1        0   164
#> [383,]  72  16      1          1        1   130
#> [384,]  69   1      1          0        0   155
#> [385,]  73   6      1          0        1   270
#> [386,]  72   8      1          1        1   150
#> [387,]  70   3      0          3        1   159
#> [388,]  70  13      1          9        0   100
#> [389,]  73   4      0        180        1   154
#> [390,]  69   2      1          0        1   110
#> [391,]  71  20      1         10        0   140
#> [392,]  74   0      1          0        1    90
#> [393,]  70   5      1          0        1   190
#> [394,]  71  17      1         11        0   160
#> [395,]  71   8      1          7        0   149
#> [396,]  69  12      1          1        1   149
#> [397,]  73   4      0         58        1   160
#> [398,]  73   6      0        180        0   110
#> [399,]  71   7      1          2        0   143
#> [400,]  72   8      1          0        1   140
#> [401,]  74   3      0          3        1   150
#> [402,]  73  17      1         11        0   140
#> [403,]  70   4      1          0        1   140
#> [404,]  72  10      1          8        1   153
#> [405,]  72  15      1         13        0   156
#> [406,]  70   8      0          8        0   120
#> [407,]  71  10      1          9        1   120
#> [408,]  73  10      1          9        1   146
#> [409,]  72  10      1          9        1   160
#> [410,]  73  10      1         10        1   120
#> [411,]  74  15      1          9        1   179
#> [412,]  71   2      0         10        1   112
#> [413,]  73   1      0          1        1    80
#> [414,]  71  11      1          8        0   110
#> [415,]  71   4      0          4        0   134
#> [416,]  72  15      1         12        1   120
#> [417,]  70   7      1          4        0   184
#> [418,]  72   1      1          1        0   168
#> [419,]  72   7      0         57        1   145
#> [420,]  72  11      0         11        1   140
#> [421,]  70   3      0          3        0   150
#> [422,]  73   5      1          3        1   112
#> [423,]  72   2      0        180        0   120
#> [424,]  72   4      1          0        1   197
#> [425,]  71   3      1          0        0   144
#> [426,]  73   4      0        180        0   124
#> [427,]  71  32      1         12        1   107
#> [428,]  72   5      0        180        0   154
#> [429,]  72   3      0        180        0   160
#> [430,]  76   5      0          5        1   130
#> [431,]  77   4      0          4        0   185
#> [432,]  75   3      1          1        0   180
#> [433,]  72   7      1          2        0   142
#> [434,]  73  15      0         15        1   160
#> [435,]  71  16      0        180        0   140
#> [436,]  73  10      1         10        0   124
#> [437,]  74   3      0          3        1   128
#> [438,]  76   8      1          0        1   141
#> [439,]  72   4      1          3        0   160
#> [440,]  76  17      1          0        1   200
#> [441,]  75   4      1          0        1   122
#> [442,]  75   7      0          7        0   190
#> [443,]  75   0      0          0        1   130
#> [444,]  73  13      1         11        0   195
#> [445,]  75  12      0         12        1   160
#> [446,]  74   8      1          0        1   105
#> [447,]  76  13      1          8        1   148
#> [448,]  74   6      0        180        0   160
#> [449,]  76   4      0          4        1   155
#> [450,]  75   1      0          1        1   125
#> [451,]  74   2      0        180        0   111
#> [452,]  73   1      0         52        1   105
#> [453,]  73   0      0        180        0   156
#> [454,]  72   5      0        180        0   120
#> [455,]  76  44      1         10        0   105
#> [456,]  76   5      0        180        0   185
#> [457,]  74  10      1          0        1   135
#> [458,]  76   5      1          0        1   167
#> [459,]  74   8      1          8        1   170
#> [460,]  75   9      0        180        1   140
#> [461,]  77   5      1          0        0   123
#> [462,]  77  12      1          9        1   100
#> [463,]  73  10      1          9        0   146
#> [464,]  77  12      0        180        0   130
#> [465,]  77   1      1          0        1    90
#> [466,]  78   5      1          0        1   170
#> [467,]  73   7      1          0        0   174
#> [468,]  74   6      0         79        1   140
#> [469,]  75   3      1          1        1   171
#> [470,]  74   9      1          8        0   200
#> [471,]  74   2      1          0        1   130
#> [472,]  77   3      0        180        0   110
#> [473,]  76  29      0         47        0    90
#> [474,]  74   2      0        180        0   100
#> [475,]  78   7      0          7        1   133
#> [476,]  78   8      1          6        1   110
#> [477,]  76  13      1          1        1   170
#> [478,]  78  32      1          9        1   198
#> [479,]  79   6      0        180        0   170
#> [480,]  78   0      0        180        1   212
#> [481,]  78  13      1          5        0   130
#> [482,]  75  12      1          1        1   120
#> [483,]  78  15      0        180        1   270
#> [484,]  75  13      1          6        0   150
#> [485,]  79   4      0         80        0   145
#> [486,]  78  12      1          9        0   150
#> [487,]  75   4      1          0        0   212
#> [488,]  77   2      1          0        1   143
#> [489,]  78  10      0        180        1   130
#> [490,]  75  11      1          4        0   162
#> [491,]  75   3      0          3        0     0
#> [492,]  76   7      0         29        1   150
#> [493,]  77  24      0         24        1   160
#> [494,]  79   8      0         32        1   120
#> [495,]  80   9      0         23        1   128
#> [496,]  78  11      1          1        1   140
#> [497,]  79  11      0        180        0   160
#> [498,]  79   2      1          0        1   121
#> [499,]  78  14      1          0        1   140
#> [500,]  81   1      0          1        0   130
#> [501,]  79   4      0          4        1   125
#> [502,]  76  10      1          8        0   180
#> [503,]  76  12      1         10        1   127
#> [504,]  77   6      0          6        1   107
#> [505,]  80   3      1          0        1   120
#> [506,]  75   2      1          1        1   204
#> [507,]  78  11      0        180        1   135
#> [508,]  77  31      1          3        1   161
#> [509,]  76   1      0          1        1    90
#> [510,]  77   7      0        180        1   170
#> [511,]  77   6      0          6        1   144
#> [512,]  79   4      1          0        1   120
#> [513,]  81   1      0        180        0   120
#> [514,]  77   9      1          4        0   141
#> [515,]  82   5      0          8        1   120
#> [516,]  80  40      1          0        1   138
#> [517,]  80  17      1         12        0   100
#> [518,]  76   7      0        161        0   151
#> [519,]  81   4      1          2        1   126
#> [520,]  79  28      0        164        0   100
#> [521,]  80   9      0        118        1   186
#> [522,]  80   6      0        173        1   160
#> [523,]  81   3      0        180        0   184
#> [524,]  81   2      0        175        0   172
#> [525,]  77  13      1          0        1   190
#> [526,]  78  26      1          5        0   194
#> [527,]  76   1      0        166        0   131
#> [528,]  81   4      1          1        1   104
#> [529,]  78  20      1          0        1   109
#> [530,]  80   1      0          1        0   100
#> [531,]  82   3      1          1        1   144
#> [532,]  80   6      1          0        1   119
#> [533,]  82   1      1          0        1    82
#> [534,]  77   4      0        180        1    98
#> [535,]  78  12      0        180        0   134
#> [536,]  79   1      0        125        0   193
#> [537,]  82  21      1          2        0   155
#> [538,]  84  22      1         10        0   180
#> [539,]  80   6      0          6        1   110
#> [540,]  83   9      1          5        1   170
#> [541,]  82   5      0        180        0   110
#> [542,]  79   7      1          6        0   130
#> [543,]  83   4      0        103        0    97
#> [544,]  81  11      1          8        0   160
#> [545,]  81   5      0        177        0    41
#> [546,]  80  11      1          8        0   170
#> [547,]  78   9      1          4        1   120
#> [548,]  79   1      0        180        1   170
#> [549,]  81  15      0        180        1   140
#> [550,]  84   5      1          1        1    85
#> [551,]  81  20      1          9        0   170
#> [552,]  83   8      0          8        0   115
#> [553,]  80   6      1          0        1   150
#> [554,]  80  11      1          8        0   110
#> [555,]  81   8      0        180        0   146
#> [556,]  80   8      1          7        0   160
#> [557,]  79   7      0        177        0   197
#> [558,]  79   0      1          0        1    96
#> [559,]  80   3      1          1        1   230
#> [560,]  84   5      0        180        1   203
#> [561,]  84   4      0          4        1    85
#> [562,]  81   1      0          1        1   150
#> [563,]  84   1      0         38        1   205
#> [564,]  81   4      0         90        1   138
#> [565,]  79   9      1          8        0   150
#> [566,]  80  13      1          8        1   140
#> [567,]  84   4      0         89        1   129
#> [568,]  80   2      1          0        1   130
#> [569,]  80   6      0         71        1   189
#> [570,]  83   1      0          1        1   100
#> [571,]  82  19      0         19        0   120
#> [572,]  80  30      1         13        0   220
#> [573,]  83   9      0        180        0   198
#> [574,]  79  14      1          0        0   110
#> [575,]  83   3      0        114        0    98
#> [576,]  81  14      1         12        1   128
#> [577,]  82   0      0          2        1   100
#> [578,]  83   1      0        180        0   160
#> [579,]  81   4      0          4        0   175
#> [580,]  84  15      1         13        1   110
#> [581,]  81   1      0          1        1   145
#> [582,]  81  12      0         12        1   163
#> [583,]  82   5      1          0        1   146
#> [584,]  81   4      0          4        0   160
#> [585,]  86  12      0        180        1   120
#> [586,]  83  12      1          2        1   170
#> [587,]  82   3      1          2        0   130
#> [588,]  82  15      1          0        0   183
#> [589,]  83   7      0        126        0   135
#> [590,]  86   8      0          8        1   132
#> [591,]  81  16      1          9        0   180
#> [592,]  84   6      0        165        0   145
#> [593,]  82   9      0        180        1   134
#> [594,]  81  13      0        180        0   152
#> [595,]  85   3      0          3        1   118
#> [596,]  81   2      1          0        1   118
#> [597,]  81   4      0        180        0   160
#> [598,]  83   9      0        180        1   149
#> [599,]  83   4      0          4        0   130
#> [600,]  87   2      0          5        1   137
#> [601,]  86  12      1          0        1   132
#> [602,]  82  14      1         11        1   103
#> [603,]  86   6      1          0        1   140
#> [604,]  84  16      0         70        1   150
#> [605,]  83  19      0         43        0   150
#> [606,]  84   3      1          2        0   125
#> [607,]  84   3      0          3        1   121
#> [608,]  83  13      1         12        0   170
#> [609,]  84   7      1          2        0   148
#> [610,]  82   4      0          4        0   130
#> [611,]  86  13      0        177        0   163
#> [612,]  86   6      0          6        1   117
#> [613,]  83  20      1          3        1   150
#> [614,]  88   4      0          4        1   115
#> [615,]  85  22      0         22        1   184
#> [616,]  86   9      1          7        1   142
#> [617,]  87   2      0        180        1   130
#> [618,]  86   6      0         46        0   173
#> [619,]  88   2      0        180        1    68
#> [620,]  83   3      0          3        1   130
#> [621,]  87   8      0          8        1   157
#> [622,]  86  15      1          8        1   109
#> [623,]  88   4      0          4        0    86
#> [624,]  89   4      0          4        1   153
#> [625,]  87   6      0        180        1   110
#> [626,]  87   1      0          1        0   170
#> [627,]  84   2      0        110        1   174
#> [628,]  87  29      0         29        1    97
#> [629,]  87  15      1          9        1   138
#> [630,]  84   0      0        180        1   136
#> [631,]  90  14      0         14        1   100
#> [632,]  88   1      0          1        0   135
#> [633,]  86   4      0        180        1   145
#> [634,]  91   8      0          8        0   100
#> [635,]  91  10      0        145        0   135
#> [636,]  86   3      1          0        1    80
#> [637,]  88   7      0         24        0   119
#> [638,]  90  11      1         10        1   186
#> [639,]  87   6      0        126        1   168
#> [640,]  86  10      0        180        1   137
#> [641,]  90   4      1          0        0   121
#> [642,]  91   1      0          1        1    74
#> [643,]  87  43      0        178        1   130
#> [644,]  90   5      1          0        1   125
#> [645,]  88   3      1          2        0   159
#> [646,]  89   3      1          1        1   160
#> [647,]  92   1      0          1        1   167
#> [648,]  88   5      0        158        0   100
#> [649,]  89  12      1          0        1   130
#> [650,]  91   5      0        169        1   176
#> [651,]  89   4      0          4        1   159
#> [652,]  91   0      0          0        0     0
#> [653,]  89  14      0        180        1    84
#> [654,]  90  18      0        180        0   188
#> [655,]  90  19      1         11        1   129
#> [656,]  94   6      0         50        0    78
#> [657,]  91   2      0          2        1   116
#> [658,]  93   8      0        179        1   110
#> [659,]  94   8      0          8        1   142
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  96   3      0         12        1    97
#> [663,]  95   8      1          5        1   150
#> [664,]  91   7      0          7        0   135
#> [665,]  93   0      1          0        1   122
#> [666,]  92   5      0         69        0   139
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+  12.0 
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   2.0+ 180.0+ 180.0+
#>  [21] 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+
#>  [41] 180.0+ 180.0+   6.0+ 180.0+ 180.0+  73.0  161.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0 
#>  [61] 180.0+ 180.0+ 180.0+   2.0    1.0  179.0+ 180.0+ 180.0+ 180.0+   4.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0 
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  166.0+  99.0  180.0+  16.0+
#> [101] 180.0+ 152.0+ 180.0+ 171.0+ 180.0+ 180.0+   6.0+   1.0  180.0+ 180.0+
#> [111] 180.0+ 180.0+ 175.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [121]  16.0   15.0+ 180.0+ 180.0+ 134.0+ 180.0+   8.0    3.0+ 180.0+ 180.0+
#> [131] 140.0  180.0+   1.0  165.0  180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+
#> [141] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+ 180.0+
#> [151] 180.0+ 180.0+ 180.0+ 180.0+   9.0+   1.0  180.0+ 180.0+   2.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+
#> [171] 180.0+   0.5  180.0+ 171.0+ 180.0+   3.0    1.0  180.0+ 180.0+ 180.0+
#> [181]  10.0+ 180.0+  45.0    3.0+ 180.0+ 172.0+  24.0  180.0+ 180.0+ 180.0+
#> [191]  15.0  180.0+ 180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 170.0  180.0+
#> [201] 169.0    7.0    7.0+   6.0  180.0+ 180.0+  30.0  180.0+  28.0   13.0+
#> [211]   5.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+ 180.0+   9.0    7.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+   1.0 
#> [231] 180.0+   4.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0    3.0+  88.0 
#> [241] 180.0+  12.0  180.0+ 180.0+ 180.0+   0.5  180.0+  12.0+ 180.0+ 180.0+
#> [251] 180.0+  12.0  180.0+   9.0    3.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+
#> [261] 180.0+ 180.0+ 180.0+   3.0+   2.0+  15.0   13.0  180.0+ 179.0+ 166.0+
#> [271]   0.5+ 180.0+ 175.0+   8.0    5.0   16.0    1.0  180.0+ 180.0+  18.0 
#> [281]  11.0+ 180.0+  79.0   15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+
#> [291] 174.0+ 180.0+ 180.0+   8.0+   3.0  175.0  180.0+  10.0  180.0+ 180.0+
#> [301]   6.0   19.0+  12.0  180.0+ 179.0+ 180.0+ 180.0+  11.0+ 180.0+  18.0 
#> [311]   7.0+ 180.0+ 180.0+ 180.0+  21.0+ 180.0+   1.0   18.0+ 101.0    5.0 
#> [321]   7.0+ 150.0  180.0+ 180.0+   1.0  180.0+ 180.0+ 171.0    6.0  180.0+
#> [331]   0.5  180.0+ 180.0+ 180.0+ 180.0+   7.0+   2.0    5.0+ 103.0    3.0+
#> [341]   5.0+ 180.0+ 180.0+  97.0    8.0+ 180.0+ 180.0+ 172.0+ 180.0+ 180.0+
#> [351]   7.0    7.0    8.0+  13.0+ 180.0+ 180.0+  51.0   19.0  180.0+   1.0 
#> [361]   1.0   60.0   76.0  180.0+ 180.0+ 162.0    7.0+   9.0  180.0+ 180.0+
#> [371] 180.0+ 180.0+ 180.0+  76.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0 
#> [381] 180.0+ 180.0+  16.0+ 180.0+   6.0  180.0+   3.0+  13.0+ 180.0+   2.0 
#> [391]  20.0    0.5  180.0+ 180.0+   8.0   12.0   58.0  180.0+ 180.0+ 180.0+
#> [401]   3.0  180.0+ 180.0+  10.0+ 180.0+   8.0+ 179.0+ 180.0+ 159.0   15.0 
#> [411] 180.0+  10.0    1.0  180.0+   4.0+ 180.0+ 104.0+   1.0   57.0   11.0 
#> [421]   3.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+   5.0 
#> [431]   4.0+ 180.0+   7.0   15.0+ 180.0+  10.0    3.0  180.0+ 180.0+  17.0+
#> [441]   4.0    7.0    0.5  180.0+  12.0  180.0+ 180.0+ 180.0+   4.0    1.0 
#> [451] 180.0+  52.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+
#> [461]   5.0  180.0+ 180.0+ 180.0+   1.0  180.0+   7.0+  79.0    3.0  168.0+
#> [471] 176.0+ 180.0+  47.0  180.0+   7.0    8.0+ 180.0+  32.0  180.0+ 180.0+
#> [481] 172.0   12.0  180.0+ 180.0+  80.0  180.0+   4.0+   2.0  180.0+ 152.0+
#> [491]   3.0   29.0   24.0   32.0   23.0  180.0+ 180.0+ 180.0+ 180.0+   1.0 
#> [501]   4.0   10.0+ 180.0+   6.0    3.0+   2.0+ 180.0+ 171.0    1.0  180.0+
#> [511]   6.0  138.0  180.0+  71.0    8.0   40.0   17.0  161.0   93.0  164.0 
#> [521] 118.0  173.0  180.0+ 175.0+  22.0  171.0+ 166.0+  71.0   20.0+   1.0 
#> [531] 180.0+   6.0    1.0  180.0+ 180.0+ 125.0  180.0+ 180.0+   6.0    9.0+
#> [541] 180.0+ 180.0+ 103.0  180.0+ 177.0+ 169.0  180.0+ 180.0+ 180.0+ 180.0+
#> [551]  20.0    8.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+   0.5    3.0+ 180.0+
#> [561]   4.0    1.0   38.0   90.0  180.0+ 180.0+  89.0  180.0+  71.0    1.0 
#> [571]  19.0   30.0  180.0+ 180.0+ 114.0  180.0+   2.0  180.0+   4.0+ 180.0+
#> [581]   1.0   12.0    5.0+   4.0+ 180.0+  77.0    3.0   83.0  126.0    8.0 
#> [591] 180.0+ 165.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0 
#> [601] 180.0+ 174.0    6.0   70.0   43.0  180.0+   3.0   13.0  180.0+   4.0 
#> [611] 177.0    6.0+  20.0    4.0   22.0   11.0  180.0+  46.0  180.0+   3.0+
#> [621]   8.0+ 180.0+   4.0    4.0  180.0+   1.0+ 110.0   29.0  180.0+ 180.0+
#> [631]  14.0    1.0+ 180.0+   8.0  145.0    3.0   24.0   11.0  126.0  180.0+
#> [641]   4.0    1.0  178.0+  89.0   75.0    3.0+   1.0  158.0  180.0+ 169.0 
#> [651]   4.0    0.5  180.0+ 180.0+ 180.0+  50.0    2.0  179.0+   8.0+  16.0 
#> [661]  67.0   12.0    8.0    7.0+   0.5   69.0    2.0  180.0+   3.0   15.0+
#> 
#> $weights
#> NULL
#> 
#> $offset
#> NULL
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> surv.cindex 
#>   0.8409073 
```
