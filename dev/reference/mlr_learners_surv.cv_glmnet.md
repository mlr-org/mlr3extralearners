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
#> min 0.00340    44   2.866 0.1412       6
#> 1se 0.06666    12   2.988 0.1248       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  35   5      1          2        0   172
#>   [2,]  35  10      1          9        0   106
#>   [3,]  38  13      1          0        1   161
#>   [4,]  36   1      0        180        1   155
#>   [5,]  35   0      0        180        1   119
#>   [6,]  38  12      1          8        1   120
#>   [7,]  38  16      1         10        0   160
#>   [8,]  38  12      1         11        1    92
#>   [9,]  40  12      1          9        0   153
#>  [10,]  42   3      1          1        1   130
#>  [11,]  40   2      1          1        1   148
#>  [12,]  42   2      0        180        1   100
#>  [13,]  38   5      1          3        0   125
#>  [14,]  40  11      1         10        1   120
#>  [15,]  43   3      1          0        1   100
#>  [16,]  41   2      1          1        0   166
#>  [17,]  40   1      1          0        1   145
#>  [18,]  43   4      1          0        1   130
#>  [19,]  42  15      1         13        1   125
#>  [20,]  40   3      1          1        0   170
#>  [21,]  43   2      1          1        1   116
#>  [22,]  45   3      0        180        1   154
#>  [23,]  44   3      0        180        0   141
#>  [24,]  41   5      1          4        1   141
#>  [25,]  44   2      1          1        1   150
#>  [26,]  43   2      0        180        1   140
#>  [27,]  46  15      0        180        0   120
#>  [28,]  46   2      1          1        0   126
#>  [29,]  47   4      1          3        0   118
#>  [30,]  48  15      0        180        1   160
#>  [31,]  45   3      0        150        0   130
#>  [32,]  44   3      1          0        1   180
#>  [33,]  43  29      0        180        1   180
#>  [34,]  45   4      1          0        0   124
#>  [35,]  46  13      1         10        0   100
#>  [36,]  47   4      1          3        1   160
#>  [37,]  43   3      1          0        1   124
#>  [38,]  49   5      0         73        1   136
#>  [39,]  45   5      0          5        0   141
#>  [40,]  46   2      1          1        1   122
#>  [41,]  47   2      0        180        0   108
#>  [42,]  44   9      1          8        1   135
#>  [43,]  45   5      0        180        1   190
#>  [44,]  46   5      1          3        0   130
#>  [45,]  46   4      0        180        1   121
#>  [46,]  44   2      0        180        0   142
#>  [47,]  46  15      0        180        1   120
#>  [48,]  45   9      1          0        1   145
#>  [49,]  47   3      1          1        1   120
#>  [50,]  48   3      0        180        0   154
#>  [51,]  48  12      1         11        0   200
#>  [52,]  47   5      1          3        1   130
#>  [53,]  49   4      0        180        0   117
#>  [54,]  47  10      0         10        1   140
#>  [55,]  47   7      0        180        0   145
#>  [56,]  50   4      1          1        0   125
#>  [57,]  46   3      1          1        1   140
#>  [58,]  46   9      1          9        1   122
#>  [59,]  50   7      0        180        1   110
#>  [60,]  49   2      0          2        0   105
#>  [61,]  49  15      1         11        1   160
#>  [62,]  47   2      0        180        0   150
#>  [63,]  49  23      0        179        1   112
#>  [64,]  52   2      0        180        1   170
#>  [65,]  50   7      1          0        1    92
#>  [66,]  51   3      1          2        0   113
#>  [67,]  50   1      1          0        0   150
#>  [68,]  50   9      0        180        0   130
#>  [69,]  47   6      0        180        1   162
#>  [70,]  51   8      0        180        1   140
#>  [71,]  52   2      0        180        0   155
#>  [72,]  46   3      0        180        1   120
#>  [73,]  46   1      1          1        0   145
#>  [74,]  48   7      1          0        1   110
#>  [75,]  53   8      0         36        1   160
#>  [76,]  52   4      1          4        0   152
#>  [77,]  53   5      0        180        1   140
#>  [78,]  54  17      1         12        1   102
#>  [79,]  54   6      1          3        0   129
#>  [80,]  51   3      1          1        0   140
#>  [81,]  50   2      0          5        1   106
#>  [82,]  50  10      1          6        0   122
#>  [83,]  50  14      1         13        0   170
#>  [84,]  53   8      1          7        0   160
#>  [85,]  48   3      1          2        0   150
#>  [86,]  51  25      1          1        0   202
#>  [87,]  49   5      1          2        1   150
#>  [88,]  53   4      0          4        0   140
#>  [89,]  52  14      1          7        1   200
#>  [90,]  53   4      1          0        1   156
#>  [91,]  51  13      0         99        1   160
#>  [92,]  54   9      1          0        1   138
#>  [93,]  55   3      1          1        0   150
#>  [94,]  54  23      1         10        0   131
#>  [95,]  55   6      1          2        1   114
#>  [96,]  54   9      1          1        0   130
#>  [97,]  55   4      1          2        0   150
#>  [98,]  52   4      0        180        1   180
#>  [99,]  51  13      1         11        0   145
#> [100,]  50   5      1          4        1   150
#> [101,]  54   4      1          0        1   121
#> [102,]  52   4      0        180        0   183
#> [103,]  49   6      1          0        1   130
#> [104,]  49   1      0          1        1   110
#> [105,]  50   7      1          0        1   127
#> [106,]  54   1      0        180        0   162
#> [107,]  54   7      1          0        1   100
#> [108,]  56   2      0        180        0   132
#> [109,]  55   5      1          4        1   120
#> [110,]  52  16      0         16        0   152
#> [111,]  52  16      1         14        0   170
#> [112,]  53  15      0         15        1    90
#> [113,]  53   4      0        180        1   150
#> [114,]  55   6      1          5        1   138
#> [115,]  54  12      1          0        1   190
#> [116,]  55   2      0        134        1   140
#> [117,]  55   1      0          2        0   130
#> [118,]  57   3      0          3        0   120
#> [119,]  54   7      1          2        0   129
#> [120,]  54   2      1          1        0   135
#> [121,]  52   9      1          3        0   170
#> [122,]  54   2      1          1        1   176
#> [123,]  57   5      1          3        1   138
#> [124,]  57   1      0        180        1   156
#> [125,]  57   1      0          1        1   100
#> [126,]  56   4      1          0        1   140
#> [127,]  55  11      1          7        0   104
#> [128,]  52  15      1         14        0   130
#> [129,]  56  14      1         11        0   130
#> [130,]  53   3      1          0        1   200
#> [131,]  57  10      0        180        1   170
#> [132,]  55   3      1          1        1   156
#> [133,]  57   0      0          0        1   150
#> [134,]  53  21      1         13        1   130
#> [135,]  59   3      1          1        0   172
#> [136,]  57   4      0        180        1   119
#> [137,]  58   6      1          0        1    90
#> [138,]  53  15      1         10        1   130
#> [139,]  54  17      1          8        1   227
#> [140,]  55   9      1          2        1   147
#> [141,]  55  13      0        166        1   140
#> [142,]  57   4      1          2        1   185
#> [143,]  53   7      1          0        1   120
#> [144,]  57  11      1         10        1   129
#> [145,]  55   3      1          2        0   140
#> [146,]  55   5      0          5        1   131
#> [147,]  54   7      1          0        1   141
#> [148,]  56   4      0          4        0   164
#> [149,]  59  15      1         10        0   140
#> [150,]  58   9      1          0        1   180
#> [151,]  58   1      1          1        1   200
#> [152,]  56   7      1          5        1   120
#> [153,]  59   9      1          1        1   125
#> [154,]  57   1      0        180        0   148
#> [155,]  59   3      0        180        0   120
#> [156,]  58   4      1          0        1   160
#> [157,]  57   2      0          2        1   120
#> [158,]  60   5      1          1        0   138
#> [159,]  57   5      0        180        1   130
#> [160,]  58  11      1          9        1   124
#> [161,]  57  10      1          9        0   103
#> [162,]  59   6      1          0        1   140
#> [163,]  59   5      0        180        1   155
#> [164,]  59   4      1          0        1   152
#> [165,]  58  26      1          0        1   189
#> [166,]  61   9      0          9        1   160
#> [167,]  58   4      1          3        0   120
#> [168,]  60   0      1          0        1    80
#> [169,]  59   2      1          1        0   140
#> [170,]  58   8      0        161        1   140
#> [171,]  61   4      1          3        0   151
#> [172,]  61   9      1          8        0   150
#> [173,]  58   1      0          1        1   100
#> [174,]  61  20      1         13        0   130
#> [175,]  57  13      1         10        0   110
#> [176,]  57   4      1          3        0   138
#> [177,]  57  11      0        180        1   150
#> [178,]  61   3      0         17        0   143
#> [179,]  56  14      0         45        0   130
#> [180,]  57   3      1          2        0   120
#> [181,]  58  19      1         13        1   140
#> [182,]  56  13      1          6        1   158
#> [183,]  59   9      1          0        1    80
#> [184,]  55   4      1          3        1   160
#> [185,]  58  11      0        172        1   135
#> [186,]  60  12      1          0        1   114
#> [187,]  55   9      1          7        1   135
#> [188,]  61   4      1          0        1   115
#> [189,]  61  13      1         12        1   130
#> [190,]  59  11      1          8        1   190
#> [191,]  57  15      1         13        1   110
#> [192,]  59   5      1          2        0   182
#> [193,]  58   5      1          1        1   135
#> [194,]  61   8      0         77        0   120
#> [195,]  62   7      1          2        1   180
#> [196,]  61  28      1          7        0   133
#> [197,]  58   8      1          3        1   150
#> [198,]  57   7      0        169        0   180
#> [199,]  59  13      1          2        0   198
#> [200,]  57  12      1          9        1   120
#> [201,]  62   4      1          0        0   160
#> [202,]  60  17      1          8        1   140
#> [203,]  58   3      1          0        1   146
#> [204,]  62   4      1          3        0   173
#> [205,]  59   1      0        180        0   155
#> [206,]  59  16      1          9        1   133
#> [207,]  61   5      0          5        1   110
#> [208,]  57  18      1          9        1    93
#> [209,]  61   5      0          5        1   160
#> [210,]  58  11      1          9        0   179
#> [211,]  57   2      1          1        0   159
#> [212,]  62   1      1          0        1   172
#> [213,]  58   7      0        180        1   150
#> [214,]  63   1      0        180        1   130
#> [215,]  61   7      0        180        0   135
#> [216,]  62   3      0        180        1   105
#> [217,]  63   4      0        180        1   190
#> [218,]  64   4      0        180        0   130
#> [219,]  63   4      1          1        0   155
#> [220,]  60  18      1         13        0   132
#> [221,]  59   8      0        180        1   140
#> [222,]  61   9      1          9        1   150
#> [223,]  62   7      0          7        0   150
#> [224,]  59   1      0         22        1   162
#> [225,]  58   2      0        180        0   127
#> [226,]  60   7      1          5        1   141
#> [227,]  60   7      0          7        0   140
#> [228,]  59   5      1          1        0   148
#> [229,]  60   7      1          1        1    90
#> [230,]  65  13      0        180        1   100
#> [231,]  63   1      0          1        0   162
#> [232,]  59   4      0          4        0   149
#> [233,]  60   3      0          3        0   168
#> [234,]  64  10      1          9        0   160
#> [235,]  63  12      1         10        0   200
#> [236,]  59  10      0        180        1   130
#> [237,]  60   8      0         17        1   130
#> [238,]  61   6      1          1        1   117
#> [239,]  64  12      1         11        0   160
#> [240,]  64   6      1          0        1   140
#> [241,]  63  10      1          0        1   148
#> [242,]  63  14      1          9        0   123
#> [243,]  65  36      1         11        0   140
#> [244,]  66   3      1          1        0   127
#> [245,]  61  10      1          2        1   194
#> [246,]  64  32      1          9        1   160
#> [247,]  63   7      0        180        0   120
#> [248,]  66   5      1          0        1   110
#> [249,]  65   8      1          0        0   168
#> [250,]  65  10      1          8        1   120
#> [251,]  64   0      0          0        1    90
#> [252,]  64  21      1         10        0   190
#> [253,]  61  12      1         11        0   154
#> [254,]  61   4      0        180        1   113
#> [255,]  65   3      0        180        1   190
#> [256,]  63  16      1          7        1   110
#> [257,]  64   7      0        180        1   120
#> [258,]  66   6      1          1        1   130
#> [259,]  62   3      1          1        1   199
#> [260,]  65   6      0          9        0   112
#> [261,]  65   3      1          0        1    80
#> [262,]  62  13      1         11        0   180
#> [263,]  67  11      0         11        1   100
#> [264,]  66  18      1          5        0   142
#> [265,]  66  16      1         11        1   169
#> [266,]  62   9      0        180        0   145
#> [267,]  63   9      1          8        1   160
#> [268,]  63   2      1          0        0   140
#> [269,]  65  15      1         11        1   160
#> [270,]  68   5      1          4        1   150
#> [271,]  66   7      1          0        1   115
#> [272,]  65   3      0          3        0   105
#> [273,]  64   0      0          0        1   148
#> [274,]  67   4      1          3        0   130
#> [275,]  66   3      1          0        1   135
#> [276,]  64  10      1          9        1   110
#> [277,]  67   8      1          1        1   130
#> [278,]  68   5      0          5        1    90
#> [279,]  63  10      0         16        1   160
#> [280,]  66  14      0        180        0   130
#> [281,]  64   1      0          1        1   120
#> [282,]  65  17      1         14        1   100
#> [283,]  63   8      1          1        1   162
#> [284,]  63   1      1          0        1   155
#> [285,]  63  10      0         18        1   130
#> [286,]  67  11      0         11        0   150
#> [287,]  68  11      0        180        0   160
#> [288,]  68  14      0         79        0   172
#> [289,]  66  12      1         10        1   150
#> [290,]  65  15      1         12        1   150
#> [291,]  66  11      1          0        0   100
#> [292,]  65   4      1          2        1   145
#> [293,]  69  12      0         15        1   140
#> [294,]  66  15      1         13        1   160
#> [295,]  63   2      0        180        0   150
#> [296,]  65  11      1          6        0   130
#> [297,]  66   9      1          8        0   130
#> [298,]  68  14      1         13        1   140
#> [299,]  65   8      1          0        1    90
#> [300,]  66   3      0          3        1   138
#> [301,]  65   1      1          0        0   133
#> [302,]  67   7      1          4        1   130
#> [303,]  63   2      1          0        0    99
#> [304,]  65   6      0          6        0    80
#> [305,]  65  10      1          1        1   148
#> [306,]  66  19      1         12        1   150
#> [307,]  67  12      1         12        0   160
#> [308,]  65   4      1          1        0   130
#> [309,]  64   4      0        179        0   160
#> [310,]  70  15      1         12        1   132
#> [311,]  64  11      0         11        0   125
#> [312,]  64   0      1          0        1   118
#> [313,]  67   2      0         18        0   131
#> [314,]  66   7      1          5        1   131
#> [315,]  68   4      1          0        1   160
#> [316,]  69   4      1          3        1   150
#> [317,]  65  13      1         12        1   130
#> [318,]  69   8      0         93        0   140
#> [319,]  66   6      0        180        0   140
#> [320,]  65   1      0          1        1   120
#> [321,]  68  18      1          0        1   160
#> [322,]  71   3      0          5        0   112
#> [323,]  70   7      1          0        1   190
#> [324,]  68   7      0        150        0   210
#> [325,]  67   2      0        180        0   128
#> [326,]  66   9      1          3        1   151
#> [327,]  70   4      1          0        1   180
#> [328,]  70  14      0        171        0   166
#> [329,]  67  10      1          9        0   200
#> [330,]  67   6      1          4        0   130
#> [331,]  68  18      1         14        1   170
#> [332,]  69   0      0          0        1   148
#> [333,]  65   2      0        180        0   130
#> [334,]  68   7      1          0        1   150
#> [335,]  69   3      1          2        0   151
#> [336,]  67  14      1         13        0   130
#> [337,]  71   7      0          7        0   230
#> [338,]  71   6      0         45        1   158
#> [339,]  69   5      0          5        1   142
#> [340,]  69   3      0          3        1   130
#> [341,]  67   1      0         36        1   104
#> [342,]  67   5      0          5        0   130
#> [343,]  68   6      0        180        0   145
#> [344,]  69   8      1          5        1   195
#> [345,]  69   6      1          4        1   174
#> [346,]  72   3      1          0        1   132
#> [347,]  72   7      0          7        1   110
#> [348,]  69   8      1          7        1   108
#> [349,]  67   3      0        180        0   110
#> [350,]  68  18      0         18        1   100
#> [351,]  67  14      0        172        1   140
#> [352,]  69  11      1          0        1   120
#> [353,]  66   2      0        180        0   130
#> [354,]  67   7      1          4        0   122
#> [355,]  68   2      0          7        1   130
#> [356,]  69   8      1          2        0   121
#> [357,]  67  13      1          9        0   130
#> [358,]  70   9      0        180        1   142
#> [359,]  67  22      1          1        1   140
#> [360,]  68   3      0         19        0   135
#> [361,]  67  12      1          8        0   120
#> [362,]  69   1      0          1        1   110
#> [363,]  67   1      0          1        1    60
#> [364,]  67   4      0         60        1   136
#> [365,]  69   5      0         76        0   120
#> [366,]  68  10      1          8        1   160
#> [367,]  70  35      1          0        1   105
#> [368,]  72  30      1          0        1   145
#> [369,]  70   7      0          7        0   102
#> [370,]  68   7      1          2        0   135
#> [371,]  70  11      0        180        1   210
#> [372,]  72  19      1          8        0   120
#> [373,]  67   9      0        180        0   158
#> [374,]  67   4      1          1        0   134
#> [375,]  72   6      1          5        0   115
#> [376,]  68  23      0        180        1   220
#> [377,]  69   3      0        180        0   220
#> [378,]  68   4      1          3        0   210
#> [379,]  72   5      0         28        0   120
#> [380,]  70   4      0        180        0   180
#> [381,]  73   6      1          0        1   270
#> [382,]  72   8      1          1        1   150
#> [383,]  71   2      1          0        1   180
#> [384,]  70   3      0          3        1   159
#> [385,]  70  13      1          9        0   100
#> [386,]  72   6      0        180        1   130
#> [387,]  73   0      0        180        1   161
#> [388,]  74   8      1          0        1    85
#> [389,]  73   4      0        180        1   154
#> [390,]  69   2      1          0        1   110
#> [391,]  71   3      1          1        0   150
#> [392,]  71  15      1         11        0   165
#> [393,]  74  20      0         20        1   180
#> [394,]  68   9      0        180        1   120
#> [395,]  74   0      1          0        1    90
#> [396,]  73   3      1          0        1   136
#> [397,]  70   5      1          0        1   190
#> [398,]  71   3      1          2        1   190
#> [399,]  73  10      1          8        0   106
#> [400,]  69  12      1          1        1   149
#> [401,]  73   4      0         58        1   160
#> [402,]  70   3      0        180        1   154
#> [403,]  73   6      0        180        0   110
#> [404,]  71   7      1          2        0   143
#> [405,]  72   8      1          0        1   140
#> [406,]  74   3      0          3        1   150
#> [407,]  73  17      1         11        0   140
#> [408,]  71  13      1          8        0   121
#> [409,]  69   2      1          1        1    80
#> [410,]  70   4      1          0        1   140
#> [411,]  71  14      1         13        1   170
#> [412,]  72  10      1          8        1   153
#> [413,]  70   8      0          8        0   120
#> [414,]  71  10      1          9        1   120
#> [415,]  75   1      0          1        0   133
#> [416,]  75   2      1          1        0   145
#> [417,]  73  10      1          9        1   146
#> [418,]  72  10      1          9        1   160
#> [419,]  73  10      1         10        1   120
#> [420,]  71   2      0         10        1   112
#> [421,]  73   1      0          1        1    80
#> [422,]  75   9      1          7        0   140
#> [423,]  75  13      1          1        1   130
#> [424,]  71   4      0          4        0   134
#> [425,]  72  15      1         12        1   120
#> [426,]  73  10      1          8        0   120
#> [427,]  70   7      1          4        0   184
#> [428,]  72   1      1          1        0   168
#> [429,]  73  10      0        180        0   162
#> [430,]  72  11      0         11        1   140
#> [431,]  70   3      0          3        0   150
#> [432,]  73   5      1          3        1   112
#> [433,]  72   2      0        180        0   120
#> [434,]  71   3      1          0        0   144
#> [435,]  73   5      0        180        0   126
#> [436,]  73   4      0        180        0   124
#> [437,]  76   3      1          0        1   120
#> [438,]  72   5      0        180        0   154
#> [439,]  72   3      0        180        0   160
#> [440,]  76   5      0          5        1   130
#> [441,]  77  11      0         11        1   150
#> [442,]  75   3      1          1        0   180
#> [443,]  72   7      1          2        0   142
#> [444,]  73  15      0         15        1   160
#> [445,]  71  16      0        180        0   140
#> [446,]  73  10      1         10        0   124
#> [447,]  74   7      0        180        1   150
#> [448,]  76   8      1          0        1   141
#> [449,]  75  23      1         14        1   110
#> [450,]  74   2      0        180        0   190
#> [451,]  72   4      1          3        0   160
#> [452,]  73   4      1          3        1   125
#> [453,]  76  13      1         10        0   110
#> [454,]  75   4      1          0        1   122
#> [455,]  75   7      0          7        0   190
#> [456,]  73  13      1         11        0   195
#> [457,]  75  12      0         12        1   160
#> [458,]  76  13      1          8        1   148
#> [459,]  75   4      1          2        1   188
#> [460,]  74   6      0        180        0   160
#> [461,]  75   1      0          1        1   125
#> [462,]  74   2      0        180        0   111
#> [463,]  73   1      0         52        1   105
#> [464,]  73   0      0        180        0   156
#> [465,]  72   5      0        180        0   120
#> [466,]  78  12      1         11        1   160
#> [467,]  76  44      1         10        0   105
#> [468,]  74  10      1          0        1   135
#> [469,]  74   8      1          8        1   170
#> [470,]  73  33      1         12        1   175
#> [471,]  77   5      1          0        0   123
#> [472,]  77  12      0        180        0   130
#> [473,]  74   6      0         79        1   140
#> [474,]  74   9      1          8        0   200
#> [475,]  79  10      1          8        0   190
#> [476,]  74   2      1          0        1   130
#> [477,]  78  18      0         18        1   144
#> [478,]  77   3      0        180        0   110
#> [479,]  73   8      1          1        1   162
#> [480,]  78   7      0          7        1   133
#> [481,]  74  15      0        180        1   172
#> [482,]  78  32      1          9        1   198
#> [483,]  79   6      0        180        0   170
#> [484,]  78   0      0        180        1   212
#> [485,]  78  13      1          5        0   130
#> [486,]  75   5      0        119        1   150
#> [487,]  75  12      1          1        1   120
#> [488,]  78  15      0        180        1   270
#> [489,]  80   8      0          8        1   120
#> [490,]  74  10      1          8        0   135
#> [491,]  76   1      0          1        1    83
#> [492,]  79   4      0         80        0   145
#> [493,]  78  12      1          9        0   150
#> [494,]  78   2      1          1        0   130
#> [495,]  75   4      1          0        0   212
#> [496,]  77   2      1          0        1   143
#> [497,]  78  10      0        180        1   130
#> [498,]  76  11      1          0        0   120
#> [499,]  75  11      1          4        0   162
#> [500,]  75   3      0          3        0     0
#> [501,]  80   9      0         23        1   128
#> [502,]  80   6      0          6        1   150
#> [503,]  78   6      1          0        1   240
#> [504,]  79   2      1          0        1   121
#> [505,]  81   1      0          1        0   130
#> [506,]  78  11      1          8        1   118
#> [507,]  76   4      0          4        1   160
#> [508,]  79   4      0          4        1   125
#> [509,]  77   6      0          6        1   107
#> [510,]  80   3      1          0        1   120
#> [511,]  78  11      0        180        1   135
#> [512,]  76   1      0          1        1   140
#> [513,]  76   1      0          1        1    90
#> [514,]  77   7      0        180        1   170
#> [515,]  77   6      0          6        1   144
#> [516,]  80  15      1         12        1   150
#> [517,]  77   9      1          4        0   141
#> [518,]  82   5      0          8        1   120
#> [519,]  78   4      0         59        1   112
#> [520,]  80  17      1         12        0   100
#> [521,]  76   7      0        161        0   151
#> [522,]  80  15      1          0        1    90
#> [523,]  81   4      1          2        1   126
#> [524,]  79  28      0        164        0   100
#> [525,]  80   9      0        118        1   186
#> [526,]  80   6      0        173        1   160
#> [527,]  78  32      0        180        1   130
#> [528,]  79   1      0         37        1   140
#> [529,]  81   3      0        180        0   184
#> [530,]  77  13      1          0        1   190
#> [531,]  78  15      0         15        0   165
#> [532,]  80   5      1          1        1   108
#> [533,]  78   4      0        180        0   175
#> [534,]  78  26      1          5        0   194
#> [535,]  78   3      1          1        1   152
#> [536,]  77  10      1          8        1   130
#> [537,]  82   3      1          1        1   144
#> [538,]  80   6      1          0        1   119
#> [539,]  80   5      0          5        1   130
#> [540,]  79  10      0        180        1   150
#> [541,]  77   4      0        180        1    98
#> [542,]  81   1      0        108        0   129
#> [543,]  78  12      0        180        0   134
#> [544,]  79   1      0        125        0   193
#> [545,]  82  21      1          2        0   155
#> [546,]  84  22      1         10        0   180
#> [547,]  80   6      0          6        1   110
#> [548,]  82   5      0        180        0   110
#> [549,]  83   5      0        180        0   148
#> [550,]  79   7      1          6        0   130
#> [551,]  83   4      0        103        0    97
#> [552,]  81  11      1          8        0   160
#> [553,]  80  11      1          8        0   170
#> [554,]  78  23      1         10        1   145
#> [555,]  78   9      1          4        1   120
#> [556,]  82   8      1          1        0   128
#> [557,]  80   7      1          0        1   146
#> [558,]  84   5      1          1        1    85
#> [559,]  81  20      1          9        0   170
#> [560,]  83   8      0          8        0   115
#> [561,]  81  16      0         16        1   110
#> [562,]  80   6      1          0        1   150
#> [563,]  80  11      1          8        0   110
#> [564,]  81   8      0        180        0   146
#> [565,]  85   4      0        180        0    90
#> [566,]  81   2      1          1        0   198
#> [567,]  82   6      0        128        1   100
#> [568,]  84   4      0        167        0   198
#> [569,]  82  23      1          0        0   110
#> [570,]  84   4      0          4        1    85
#> [571,]  81   1      0          1        1   150
#> [572,]  84   1      0         38        1   205
#> [573,]  85   3      1          2        1   160
#> [574,]  80  13      1          8        1   140
#> [575,]  84   4      0         89        1   129
#> [576,]  80   2      1          0        1   130
#> [577,]  79   4      0          4        1    60
#> [578,]  83   1      0          1        1   100
#> [579,]  82  19      0         19        0   120
#> [580,]  80  30      1         13        0   220
#> [581,]  83   9      0        180        0   198
#> [582,]  79  14      1          0        0   110
#> [583,]  83   3      0        114        0    98
#> [584,]  81  14      1         12        1   128
#> [585,]  82   0      0          2        1   100
#> [586,]  85   9      1          6        1   160
#> [587,]  83   1      0        180        0   160
#> [588,]  81   4      0          4        0   175
#> [589,]  81   1      0          1        1   145
#> [590,]  81  12      0         12        1   163
#> [591,]  82  16      1          8        0   103
#> [592,]  82   5      1          0        1   146
#> [593,]  86  12      0        180        1   120
#> [594,]  83  12      1          2        1   170
#> [595,]  81  19      1         14        0   120
#> [596,]  82  15      1          0        0   183
#> [597,]  83   7      0        126        0   135
#> [598,]  86   8      0          8        1   132
#> [599,]  81  16      1          9        0   180
#> [600,]  84   6      0        165        0   145
#> [601,]  86   3      0          3        1   140
#> [602,]  82   9      0        180        1   134
#> [603,]  84   3      0        180        1   120
#> [604,]  85   3      0          3        1   118
#> [605,]  81   2      1          0        1   118
#> [606,]  81   4      0        180        0   160
#> [607,]  82   1      0        180        1   193
#> [608,]  87   2      0          5        1   137
#> [609,]  82  14      1         11        1   103
#> [610,]  86   6      1          0        1   140
#> [611,]  84  16      0         70        1   150
#> [612,]  83  10      1          0        1   190
#> [613,]  88  14      1          3        1   130
#> [614,]  83  13      1         12        0   170
#> [615,]  84   7      1          2        0   148
#> [616,]  84   9      0         92        1   110
#> [617,]  84   3      0        180        1   170
#> [618,]  86  13      0        177        0   163
#> [619,]  86   6      0          6        1   117
#> [620,]  84  13      0         62        1   100
#> [621,]  86   6      1          1        0   112
#> [622,]  88   4      0          4        0   100
#> [623,]  88   4      0          4        1   115
#> [624,]  85  22      0         22        1   184
#> [625,]  83   9      0         65        1   150
#> [626,]  86   9      1          7        1   142
#> [627,]  87   2      0        180        1   130
#> [628,]  88   3      0        115        0   110
#> [629,]  88   2      0        180        1    68
#> [630,]  87   8      0          8        1   157
#> [631,]  86  15      1          8        1   109
#> [632,]  88   4      0          4        0    86
#> [633,]  89   5      0        119        1   140
#> [634,]  87  29      0         29        1    97
#> [635,]  84   0      0        180        1   136
#> [636,]  90  14      0         14        1   100
#> [637,]  86   4      0        180        1   145
#> [638,]  91   8      0          8        0   100
#> [639,]  87   2      0        180        0   160
#> [640,]  91  10      0        145        0   135
#> [641,]  86   3      1          0        1    80
#> [642,]  88   7      0         24        0   119
#> [643,]  88   8      0         50        1   154
#> [644,]  90  11      1         10        1   186
#> [645,]  87   6      0        126        1   168
#> [646,]  86  10      0        180        1   137
#> [647,]  86   9      1          7        0   130
#> [648,]  90   4      1          0        0   121
#> [649,]  88   3      1          2        0   159
#> [650,]  89   3      1          1        1   160
#> [651,]  91   3      0         33        1   137
#> [652,]  87   7      0         74        1   105
#> [653,]  89  12      1          0        1   130
#> [654,]  89   2      0        168        0   118
#> [655,]  89  52      0         52        1   130
#> [656,]  92   7      0          7        1   110
#> [657,]  91   0      0          0        0     0
#> [658,]  90  18      0        180        0   188
#> [659,]  91   4      1          0        1   120
#> [660,]  90  19      1         11        1   129
#> [661,]  90   1      0          1        1   118
#> [662,]  93   8      0        179        1   110
#> [663,]  94   8      0          8        1   142
#> [664,]  91   1      0        180        0   158
#> [665,]  90   3      0         67        0   162
#> [666,]  94   3      0         26        1   144
#> [667,]  91  12      0         53        1   212
#> [668,]  93   0      1          0        1   122
#> [669,]  92   2      0          2        0   112
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [11]   2.0+ 180.0+   5.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21]   2.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+
#>  [41] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0 
#>  [61] 179.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+   7.0   36.0    4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81]   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  166.0+
#>  [91]  99.0  180.0+ 180.0+ 152.0+   6.0+ 180.0+ 180.0+ 180.0+  13.0+ 171.0+
#> [101] 180.0+ 180.0+   6.0+   1.0  180.0+ 180.0+   7.0+ 180.0+ 180.0+  16.0+
#> [111]  16.0   15.0+ 180.0+ 180.0+  12.0+ 134.0+   2.0    3.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+ 140.0  180.0+   1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+
#> [131] 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0 
#> [141] 166.0+   4.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+   4.0+ 180.0+   9.0+
#> [151]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+
#> [161] 180.0+  64.0  180.0+ 180.0+ 180.0+   9.0+ 180.0+   0.5  180.0+ 161.0+
#> [171] 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+  17.0   45.0    3.0+
#> [181]  19.0  180.0+   9.0+ 180.0+ 172.0+ 172.0+  24.0  180.0+ 180.0+ 180.0+
#> [191]  15.0  180.0+ 180.0+  77.0  180.0+  94.0  180.0+ 169.0  180.0+ 180.0+
#> [201] 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   5.0   18.0    5.0+ 180.0+
#> [211] 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [221] 180.0+ 180.0+   7.0+  22.0  180.0+  84.0    7.0+ 180.0+ 180.0+ 180.0+
#> [231]   1.0    4.0+   3.0+ 167.0  180.0+ 180.0+  17.0  180.0+  12.0  180.0+
#> [241] 180.0+  14.0+  36.0    3.0+  88.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [251]   0.5  180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0 
#> [261]   3.0  180.0+  11.0+  18.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+
#> [271] 179.0+   3.0    0.5+ 180.0+   3.0+ 180.0+   8.0    5.0   16.0  180.0+
#> [281]   1.0  180.0+ 180.0+   1.0+  18.0   11.0+ 180.0+  79.0   80.0   15.0+
#> [291] 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+   3.0 
#> [301] 180.0+ 180.0+ 180.0+   6.0  180.0+  19.0+  12.0  180.0+ 179.0+ 180.0+
#> [311]  11.0+   0.5   18.0    7.0+ 180.0+ 152.0+ 180.0+  93.0  180.0+   1.0 
#> [321]  18.0+   5.0    7.0+ 150.0  180.0+ 180.0+ 180.0+ 171.0  174.0+   6.0 
#> [331] 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+   7.0+  45.0    5.0+   3.0+
#> [341]  36.0    5.0+ 180.0+ 180.0+  97.0  180.0+   7.0    8.0+ 180.0+  18.0 
#> [351] 172.0+ 180.0+ 180.0+   7.0    7.0    8.0+  13.0+ 180.0+  51.0   19.0 
#> [361] 180.0+   1.0    1.0   60.0   76.0   10.0+ 180.0+ 162.0    7.0+   7.0+
#> [371] 180.0+ 180.0+ 180.0+  76.0  180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+
#> [381]   6.0  180.0+ 180.0+   3.0+  13.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [391]   3.0+ 180.0+  20.0  180.0+   0.5  180.0+ 180.0+   3.0   87.0   12.0 
#> [401]  58.0  180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0    2.0  180.0+
#> [411]  14.0+  10.0+   8.0+ 179.0+   1.0  180.0+ 180.0+ 159.0   15.0   10.0 
#> [421]   1.0  180.0+  13.0    4.0+ 180.0+  10.0  104.0+   1.0  180.0+  11.0 
#> [431]   3.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0 
#> [441]  11.0+ 180.0+   7.0   15.0+ 180.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+
#> [451] 180.0+ 180.0+ 174.0+   4.0    7.0  180.0+  12.0  180.0+  46.0  180.0+
#> [461]   1.0  180.0+  52.0  180.0+ 180.0+  12.0  180.0+ 180.0+   8.0   33.0 
#> [471]   5.0  180.0+  79.0  168.0+ 180.0+ 176.0+  18.0  180.0+ 180.0+   7.0 
#> [481] 180.0+  32.0  180.0+ 180.0+ 172.0  119.0   12.0  180.0+   8.0  180.0+
#> [491]   1.0   80.0  180.0+ 180.0+   4.0+   2.0  180.0+  11.0  152.0+   3.0 
#> [501]  23.0    6.0  180.0+ 180.0+   1.0   11.0    4.0    4.0    6.0    3.0+
#> [511] 180.0+   1.0    1.0  180.0+   6.0  180.0+  71.0    8.0   59.0   17.0 
#> [521] 161.0  180.0+  93.0  164.0  118.0  173.0  180.0+  37.0  180.0+  22.0 
#> [531]  15.0+   5.0+ 180.0+ 171.0+   3.0+  10.0  180.0+   6.0    5.0  180.0+
#> [541] 180.0+ 108.0  180.0+ 125.0  180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+
#> [551] 103.0  180.0+ 169.0   70.0  180.0+ 180.0+   7.0+ 180.0+  20.0    8.0+
#> [561]  16.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 128.0  167.0   62.0    4.0 
#> [571]   1.0   38.0  180.0+ 180.0+  89.0  180.0+   4.0    1.0   19.0   30.0 
#> [581] 180.0+ 180.0+ 114.0  180.0+   2.0  180.0+ 180.0+   4.0+   1.0   12.0 
#> [591]  16.0+   5.0+ 180.0+  77.0  180.0+  83.0  126.0    8.0  180.0+ 165.0 
#> [601]   3.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   5.0  174.0    6.0 
#> [611]  70.0  180.0+  14.0   13.0  180.0+  92.0  180.0+ 177.0    6.0+  62.0 
#> [621]   6.0+   4.0+   4.0   22.0   65.0   11.0  180.0+ 115.0  180.0+   8.0+
#> [631] 180.0+   4.0  119.0   29.0  180.0+  14.0  180.0+   8.0  180.0+ 145.0 
#> [641]   3.0   24.0   50.0   11.0  126.0  180.0+ 180.0+   4.0   75.0    3.0+
#> [651]  33.0   74.0  180.0+ 168.0   52.0    7.0    0.5  180.0+   4.0  180.0+
#> [661]   1.0+ 179.0+   8.0+ 180.0+  67.0   26.0   53.0    0.5    2.0   15.0+
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
#>   0.8488943 
```
