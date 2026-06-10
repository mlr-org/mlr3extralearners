# Cross-Validated GLM with Elastic Net Regularization Survival Learner

Generalized linear models with elastic net regularization. Calls
[`glmnet::cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/cv.glmnet.html)
from package [glmnet](https://CRAN.R-project.org/package=glmnet).

## Initial parameter values

- `family` is set to `"cox"` and cannot be changed.

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`glmnet::predict.cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.cv.glmnet.html).

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    [`glmnet::survfit.cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/survfit.cv.glmnet.html).
    Parameters `stype` and `ctype` relate to how `lp` predictions are
    transformed into survival predictions and are described in
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
  [glmnet](https://CRAN.R-project.org/package=glmnet)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| alignment | character | lambda | lambda, fraction | \- |
| alpha | numeric | 1 |  | \\\[0, 1\]\\ |
| big | numeric | 9.9e+35 |  | \\(-\infty, \infty)\\ |
| devmax | numeric | 0.999 |  | \\\[0, 1\]\\ |
| dfmax | integer | \- |  | \\\[0, \infty)\\ |
| eps | numeric | 1e-06 |  | \\\[0, 1\]\\ |
| epsnr | numeric | 1e-08 |  | \\\[0, 1\]\\ |
| exclude | untyped | \- |  | \- |
| exmx | numeric | 250 |  | \\(-\infty, \infty)\\ |
| fdev | numeric | 1e-05 |  | \\\[0, 1\]\\ |
| foldid | untyped | NULL |  | \- |
| gamma | untyped | \- |  | \- |
| grouped | logical | TRUE | TRUE, FALSE | \- |
| intercept | logical | TRUE | TRUE, FALSE | \- |
| keep | logical | FALSE | TRUE, FALSE | \- |
| lambda | untyped | \- |  | \- |
| lambda.min.ratio | numeric | \- |  | \\\[0, 1\]\\ |
| lower.limits | untyped | -Inf |  | \- |
| maxit | integer | 100000 |  | \\\[1, \infty)\\ |
| mnlam | integer | 5 |  | \\\[1, \infty)\\ |
| mxit | integer | 100 |  | \\\[1, \infty)\\ |
| mxitnr | integer | 25 |  | \\\[1, \infty)\\ |
| nfolds | integer | 10 |  | \\\[3, \infty)\\ |
| nlambda | integer | 100 |  | \\\[1, \infty)\\ |
| use_pred_offset | logical | TRUE | TRUE, FALSE | \- |
| parallel | logical | FALSE | TRUE, FALSE | \- |
| penalty.factor | untyped | \- |  | \- |
| pmax | integer | \- |  | \\\[0, \infty)\\ |
| pmin | numeric | 1e-09 |  | \\\[0, 1\]\\ |
| prec | numeric | 1e-10 |  | \\(-\infty, \infty)\\ |
| predict.gamma | numeric | gamma.1se |  | \\(-\infty, \infty)\\ |
| relax | logical | FALSE | TRUE, FALSE | \- |
| s | numeric | lambda.1se |  | \\\[0, \infty)\\ |
| standardize | logical | TRUE | TRUE, FALSE | \- |
| standardize.response | logical | FALSE | TRUE, FALSE | \- |
| thresh | numeric | 1e-07 |  | \\\[0, \infty)\\ |
| trace.it | integer | 0 |  | \\\[0, 1\]\\ |
| type.gaussian | character | \- | covariance, naive | \- |
| type.logistic | character | Newton | Newton, modified.Newton | \- |
| type.measure | character | deviance | deviance, C | \- |
| type.multinomial | character | ungrouped | ungrouped, grouped | \- |
| upper.limits | untyped | Inf |  | \- |
| stype | integer | 2 |  | \\\[1, 2\]\\ |
| ctype | integer | \- |  | \\\[1, 2\]\\ |

## Offset

If a `Task` contains a column with the `offset` role, it is
automatically incorporated during training via the `offset` argument in
[`glmnet::glmnet()`](https://rdrr.io/pkg/glmnet/man/glmnet.html). During
prediction, the offset column from the test set is used only if
`use_pred_offset = TRUE` (default), passed via the `newoffset` argument
in
[`glmnet::predict.coxnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html).
Otherwise, if the user sets `use_pred_offset = FALSE`, a zero offset is
applied, effectively disabling the offset adjustment during prediction.

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

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvCVGlmnet`

## Methods

### Public methods

- [`LearnerSurvCVGlmnet$new()`](#method-LearnerSurvCVGlmnet-new)

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

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvCVGlmnet$new()

------------------------------------------------------------------------

### Method `selected_features()`

Returns the set of selected features as reported by
[`glmnet::predict.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html)
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

### Method `clone()`

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
#> • Parameters: use_pred_offset=TRUE
#> • Packages: mlr3, mlr3proba, mlr3extralearners, and glmnet
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
#> Warning: Starting in glmnet 5.1, the default Cox tie-handling method will change from 'breslow' to 'efron' (matching survival::coxph). To silence this message and lock in the v5.0 default, pass cox.ties = 'breslow' explicitly. To preview the v5.1 behavior, pass cox.ties = 'efron'.
#> Warning: Starting in glmnet 5.1, the default Cox tie-handling method will change from 'breslow' to 'efron' (matching survival::coxph). To silence this message and lock in the v5.0 default, pass cox.ties = 'breslow' explicitly. To preview the v5.1 behavior, pass cox.ties = 'efron'.
#> Warning: Starting in glmnet 5.1, the default Cox tie-handling method will change from 'breslow' to 'efron' (matching survival::coxph). To silence this message and lock in the v5.0 default, pass cox.ties = 'breslow' explicitly. To preview the v5.1 behavior, pass cox.ties = 'efron'.
#> Warning: Starting in glmnet 5.1, the default Cox tie-handling method will change from 'breslow' to 'efron' (matching survival::coxph). To silence this message and lock in the v5.0 default, pass cox.ties = 'breslow' explicitly. To preview the v5.1 behavior, pass cox.ties = 'efron'.
#> Warning: Starting in glmnet 5.1, the default Cox tie-handling method will change from 'breslow' to 'efron' (matching survival::coxph). To silence this message and lock in the v5.0 default, pass cox.ties = 'breslow' explicitly. To preview the v5.1 behavior, pass cox.ties = 'efron'.
#> Warning: Starting in glmnet 5.1, the default Cox tie-handling method will change from 'breslow' to 'efron' (matching survival::coxph). To silence this message and lock in the v5.0 default, pass cox.ties = 'breslow' explicitly. To preview the v5.1 behavior, pass cox.ties = 'efron'.
#> Warning: Starting in glmnet 5.1, the default Cox tie-handling method will change from 'breslow' to 'efron' (matching survival::coxph). To silence this message and lock in the v5.0 default, pass cox.ties = 'breslow' explicitly. To preview the v5.1 behavior, pass cox.ties = 'efron'.
#> Warning: Starting in glmnet 5.1, the default Cox tie-handling method will change from 'breslow' to 'efron' (matching survival::coxph). To silence this message and lock in the v5.0 default, pass cox.ties = 'breslow' explicitly. To preview the v5.1 behavior, pass cox.ties = 'efron'.
#> Warning: Starting in glmnet 5.1, the default Cox tie-handling method will change from 'breslow' to 'efron' (matching survival::coxph). To silence this message and lock in the v5.0 default, pass cox.ties = 'breslow' explicitly. To preview the v5.1 behavior, pass cox.ties = 'efron'.
#> Warning: Starting in glmnet 5.1, the default Cox tie-handling method will change from 'breslow' to 'efron' (matching survival::coxph). To silence this message and lock in the v5.0 default, pass cox.ties = 'breslow' explicitly. To preview the v5.1 behavior, pass cox.ties = 'efron'.
#> Warning: Starting in glmnet 5.1, the default Cox tie-handling method will change from 'breslow' to 'efron' (matching survival::coxph). To silence this message and lock in the v5.0 default, pass cox.ties = 'breslow' explicitly. To preview the v5.1 behavior, pass cox.ties = 'efron'.

print(learner$model)
#> $model
#> 
#> Call:  (if (cv) glmnet::cv.glmnet else glmnet::glmnet)(x = data, y = target,      family = "cox") 
#> 
#> Measure: Partial Likelihood Deviance 
#> 
#>      Lambda Index Measure     SE Nonzero
#> min 0.00304    45   2.716 0.1152       6
#> 1se 0.05971    13   2.815 0.1212       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38   2      0        115        0   150
#>   [8,]  36   1      0        180        1   155
#>   [9,]  33   6      1          1        1   115
#>  [10,]  38  16      1         10        0   160
#>  [11,]  38  12      1         11        1    92
#>  [12,]  40  12      1          9        0   153
#>  [13,]  42   3      1          1        1   130
#>  [14,]  37   1      1          0        1   146
#>  [15,]  40   2      1          1        1   148
#>  [16,]  42   2      0        180        1   100
#>  [17,]  42   2      0          2        0   140
#>  [18,]  40   6      0        180        1   138
#>  [19,]  42   2      0        180        0   100
#>  [20,]  40   1      1          0        1   145
#>  [21,]  43   4      1          0        1   130
#>  [22,]  42  15      1         13        1   125
#>  [23,]  40   3      1          1        0   170
#>  [24,]  43   2      1          1        1   116
#>  [25,]  45   3      0        180        1   154
#>  [26,]  41  13      1          1        0   140
#>  [27,]  45   9      1          7        0   110
#>  [28,]  45   6      0        180        1   170
#>  [29,]  44   2      1          1        1   150
#>  [30,]  46  15      0        180        0   120
#>  [31,]  47   4      1          3        0   118
#>  [32,]  48  15      0        180        1   160
#>  [33,]  45   3      0        150        0   130
#>  [34,]  44   3      1          0        1   180
#>  [35,]  43  29      0        180        1   180
#>  [36,]  45   4      1          0        0   124
#>  [37,]  43  10      0        180        0   185
#>  [38,]  47   6      1          0        1   116
#>  [39,]  47   4      1          3        1   160
#>  [40,]  43   3      1          0        1   124
#>  [41,]  45   5      0          5        0   141
#>  [42,]  46   2      1          1        1   122
#>  [43,]  44   4      1          0        1   114
#>  [44,]  45   5      0        180        1   190
#>  [45,]  46   5      1          3        0   130
#>  [46,]  46   4      0        180        1   121
#>  [47,]  44   2      0        180        0   142
#>  [48,]  46  15      0        180        1   120
#>  [49,]  48   3      0        180        0   154
#>  [50,]  48  12      1         11        0   200
#>  [51,]  47   9      1          6        0   170
#>  [52,]  49   4      0        180        0   117
#>  [53,]  47  10      0         10        1   140
#>  [54,]  50   1      1          0        1   129
#>  [55,]  47   7      0        180        0   145
#>  [56,]  50   4      1          1        0   125
#>  [57,]  49   7      1          7        1   110
#>  [58,]  46   3      1          1        1   140
#>  [59,]  50   7      0        180        1   110
#>  [60,]  49   2      0          2        0   105
#>  [61,]  51   1      0          1        1   145
#>  [62,]  49  15      1         11        1   160
#>  [63,]  47   2      0        180        0   150
#>  [64,]  49  23      0        179        1   112
#>  [65,]  52   2      0        180        1   170
#>  [66,]  50   4      0          4        1   100
#>  [67,]  51   3      1          2        0   113
#>  [68,]  50   1      1          0        0   150
#>  [69,]  50   9      0        180        0   130
#>  [70,]  47   8      0        180        0   160
#>  [71,]  47   6      0        180        1   162
#>  [72,]  52   2      0        180        0   155
#>  [73,]  46   3      0        180        1   120
#>  [74,]  48   7      1          0        1   110
#>  [75,]  53   8      0         36        1   160
#>  [76,]  49  15      0        180        1   160
#>  [77,]  53   5      0        180        1   140
#>  [78,]  54  17      1         12        1   102
#>  [79,]  53   7      1          0        0   199
#>  [80,]  51   3      1          1        0   140
#>  [81,]  50   2      0          5        1   106
#>  [82,]  50  10      1          6        0   122
#>  [83,]  53   8      1          7        0   160
#>  [84,]  48   3      1          2        0   150
#>  [85,]  51  25      1          1        0   202
#>  [86,]  49   5      1          2        1   150
#>  [87,]  52  14      1          7        1   200
#>  [88,]  53   4      1          0        1   156
#>  [89,]  51  13      0         99        1   160
#>  [90,]  54   9      1          0        1   138
#>  [91,]  49  16      0         16        0   125
#>  [92,]  55   3      1          1        0   150
#>  [93,]  54  23      1         10        0   131
#>  [94,]  52   7      1          2        0   154
#>  [95,]  54   9      1          1        0   130
#>  [96,]  52   4      0        180        1   180
#>  [97,]  50   5      1          4        1   150
#>  [98,]  54   4      1          0        1   121
#>  [99,]  52   4      0        180        0   183
#> [100,]  50   3      0        174        1   153
#> [101,]  55  28      1         13        1   160
#> [102,]  49   1      0          1        1   110
#> [103,]  50   7      1          1        0   156
#> [104,]  53   9      0          9        1    95
#> [105,]  53   8      1          0        1   130
#> [106,]  50   7      1          0        1   127
#> [107,]  56   4      1          1        1   130
#> [108,]  52   5      0        175        1   117
#> [109,]  55   1      0        180        0   127
#> [110,]  55   2      0          2        0   145
#> [111,]  54   1      0        180        0   162
#> [112,]  54   7      1          0        1   100
#> [113,]  56   2      0        180        0   132
#> [114,]  55   5      1          4        1   120
#> [115,]  54   3      0        180        1   180
#> [116,]  55   6      0        180        0   170
#> [117,]  52  16      0         16        0   152
#> [118,]  53  10      1          9        0   172
#> [119,]  52  16      1         14        0   170
#> [120,]  53  15      0         15        1    90
#> [121,]  53   4      0        180        1   150
#> [122,]  54  12      1          0        1   190
#> [123,]  55   2      0        134        1   140
#> [124,]  54   3      0        180        0   128
#> [125,]  56   3      0          8        1   139
#> [126,]  55   1      0          2        0   130
#> [127,]  54   2      1          1        0   135
#> [128,]  54   2      1          1        1   176
#> [129,]  57   5      1          3        1   138
#> [130,]  57   1      0        180        1   156
#> [131,]  56   4      1          0        1   140
#> [132,]  52   2      0        180        0   140
#> [133,]  55  11      1          7        0   104
#> [134,]  52  15      1         14        0   130
#> [135,]  53   3      1          0        1   200
#> [136,]  57  10      0        180        1   170
#> [137,]  58   8      0          8        1   130
#> [138,]  54   5      0        180        1   108
#> [139,]  55   3      1          1        1   156
#> [140,]  53  21      1         13        1   130
#> [141,]  59   3      1          1        0   172
#> [142,]  57   4      0        180        1   119
#> [143,]  58   6      1          0        1    90
#> [144,]  56   5      0          5        1   150
#> [145,]  54  23      1          8        0   120
#> [146,]  57   4      1          2        1   185
#> [147,]  53   4      0        147        1   145
#> [148,]  53   7      1          0        1   120
#> [149,]  57  11      1         10        1   129
#> [150,]  55   3      1          2        0   140
#> [151,]  55   5      0          5        1   131
#> [152,]  54   7      1          0        1   141
#> [153,]  56   4      0          4        0   164
#> [154,]  58   1      1          1        1   200
#> [155,]  55   5      1          0        0   140
#> [156,]  56   7      1          5        1   120
#> [157,]  59   9      1          1        1   125
#> [158,]  57   1      0        180        0   148
#> [159,]  60  11      1          9        0   106
#> [160,]  58   4      1          0        1   160
#> [161,]  57   2      0          2        1   120
#> [162,]  60   5      1          1        0   138
#> [163,]  57   5      0        180        1   130
#> [164,]  58  11      1          9        1   124
#> [165,]  55   5      1          0        1   160
#> [166,]  57  10      1          9        0   103
#> [167,]  59   6      1          0        1   140
#> [168,]  59   4      1          0        1   152
#> [169,]  58  26      1          0        1   189
#> [170,]  61   9      0          9        1   160
#> [171,]  58   4      1          3        0   120
#> [172,]  60   0      1          0        1    80
#> [173,]  58   8      0        161        1   140
#> [174,]  58  14      1          6        0   190
#> [175,]  61   9      1          8        0   150
#> [176,]  61   3      1          2        1   102
#> [177,]  58   1      0          1        1   100
#> [178,]  61  20      1         13        0   130
#> [179,]  57   2      1          0        1   116
#> [180,]  58  10      0         10        1   150
#> [181,]  57   4      1          3        0   138
#> [182,]  56  14      0         45        0   130
#> [183,]  56  18      1         11        1   165
#> [184,]  59   9      1          0        1    80
#> [185,]  58  11      0        172        1   135
#> [186,]  61   4      1          0        1   115
#> [187,]  59  11      1          8        1   190
#> [188,]  57   1      0          1        0   126
#> [189,]  59   5      1          2        0   182
#> [190,]  58   5      1          1        1   135
#> [191,]  59  10      0        180        0   160
#> [192,]  61   8      0         77        0   120
#> [193,]  58   8      1          5        0   152
#> [194,]  62   7      1          2        1   180
#> [195,]  57   3      1          0        0   100
#> [196,]  61  18      0        170        0   140
#> [197,]  61  28      1          7        0   133
#> [198,]  58   8      1          3        1   150
#> [199,]  57   7      0        169        0   180
#> [200,]  57  12      1          9        1   120
#> [201,]  62   4      1          0        0   160
#> [202,]  58   3      1          0        1   146
#> [203,]  59   1      0        180        0   155
#> [204,]  63   6      0         28        1   120
#> [205,]  61   5      0          5        1   110
#> [206,]  61   5      0          5        1   160
#> [207,]  57   2      1          1        0   159
#> [208,]  62  17      1         10        1   180
#> [209,]  58   7      0        180        1   150
#> [210,]  63   3      1          1        0   180
#> [211,]  61   7      0        180        0   135
#> [212,]  63   4      1          3        0   222
#> [213,]  63   4      0        180        1   190
#> [214,]  63  15      1         10        1   126
#> [215,]  64   4      0        180        0   130
#> [216,]  63   4      1          1        0   155
#> [217,]  61   9      1          9        1   150
#> [218,]  58   9      1          9        0   110
#> [219,]  62   7      0          7        0   150
#> [220,]  59   1      0         22        1   162
#> [221,]  58   2      0        180        0   127
#> [222,]  60   7      1          5        1   141
#> [223,]  60   7      0          7        0   140
#> [224,]  63   1      0          1        0   130
#> [225,]  61  15      1         13        0   170
#> [226,]  59   4      0          4        0   149
#> [227,]  60   3      0          3        0   168
#> [228,]  64  10      1          9        0   160
#> [229,]  63  12      1         10        0   200
#> [230,]  59  10      0        180        1   130
#> [231,]  60   8      0         17        1   130
#> [232,]  61   6      1          1        1   117
#> [233,]  64  12      1         11        0   160
#> [234,]  66   1      1          0        1   120
#> [235,]  64   6      1          0        1   140
#> [236,]  63  10      1          0        1   148
#> [237,]  65  36      1         11        0   140
#> [238,]  63   4      1          3        0   162
#> [239,]  66   3      1          1        0   127
#> [240,]  61  10      1          2        1   194
#> [241,]  63   7      0        180        0   120
#> [242,]  65   8      1          0        0   168
#> [243,]  65  10      1          8        1   120
#> [244,]  64   0      0          0        1    90
#> [245,]  60   6      0        180        0   130
#> [246,]  64  21      1         10        0   190
#> [247,]  61  12      1         11        0   154
#> [248,]  64   9      0        180        0   150
#> [249,]  61   4      0        180        1   113
#> [250,]  63  16      1          7        1   110
#> [251,]  64   7      0        180        1   120
#> [252,]  63  12      0         12        1   150
#> [253,]  62   3      1          1        1   199
#> [254,]  65   3      1          0        1    80
#> [255,]  63   5      1          4        0   170
#> [256,]  63   2      1          1        0   180
#> [257,]  62  13      1         11        0   180
#> [258,]  67  11      0         11        1   100
#> [259,]  64   2      0          2        0   201
#> [260,]  66  18      1          5        0   142
#> [261,]  66  16      1         11        1   169
#> [262,]  62   9      0        180        0   145
#> [263,]  61  14      1          5        0   140
#> [264,]  61  15      1         10        0   130
#> [265,]  63   3      1          2        0   120
#> [266,]  63   2      1          0        0   140
#> [267,]  64  19      1          8        1   160
#> [268,]  67   6      0        180        1   170
#> [269,]  65  15      1         11        1   160
#> [270,]  64  13      1         12        1   150
#> [271,]  64   6      1          0        1   125
#> [272,]  66   7      1          0        1   115
#> [273,]  64  14      1         13        1   150
#> [274,]  65   3      0          3        0   105
#> [275,]  64   0      0          0        1   148
#> [276,]  67   4      1          3        0   130
#> [277,]  66   3      1          0        1   135
#> [278,]  66   6      1          0        1   140
#> [279,]  65   2      1          1        1   170
#> [280,]  68   1      0        180        1   166
#> [281,]  64  10      1          9        1   110
#> [282,]  67   8      1          1        1   130
#> [283,]  68   5      0          5        1    90
#> [284,]  66  14      0        180        0   130
#> [285,]  64   1      0          1        1   120
#> [286,]  68  18      0        180        1   260
#> [287,]  65  17      1         14        1   100
#> [288,]  65  18      1          3        0   120
#> [289,]  63  10      0         18        1   130
#> [290,]  66  12      1         10        1   150
#> [291,]  65  15      1         12        1   150
#> [292,]  66  11      1          0        0   100
#> [293,]  69  12      0         15        1   140
#> [294,]  63   2      0        180        0   150
#> [295,]  65  11      1          6        0   130
#> [296,]  69  21      1         10        0   180
#> [297,]  69   6      0        180        1   100
#> [298,]  63   8      0        180        1   120
#> [299,]  68  14      1         13        1   140
#> [300,]  65   8      1          0        1    90
#> [301,]  69   1      1          0        0   170
#> [302,]  68  10      1         10        1   150
#> [303,]  65   1      1          0        0   133
#> [304,]  67   7      1          4        1   130
#> [305,]  63   2      1          0        0    99
#> [306,]  69   6      0         99        1   140
#> [307,]  64   4      0        179        0   160
#> [308,]  66   4      0        180        1   130
#> [309,]  70  15      1         12        1   132
#> [310,]  64  11      0         11        0   125
#> [311,]  67   2      0         18        0   131
#> [312,]  66   4      0        180        0   177
#> [313,]  68   4      1          0        1   160
#> [314,]  69   4      1          3        1   150
#> [315,]  69  17      1         10        0   140
#> [316,]  69   8      0         93        0   140
#> [317,]  64  21      0         21        1   155
#> [318,]  65   1      0          1        1   120
#> [319,]  65   6      0        101        1   115
#> [320,]  71   3      0          5        0   112
#> [321,]  70   7      1          0        1   190
#> [322,]  68   7      0        150        0   210
#> [323,]  67   2      0        180        0   128
#> [324,]  66   9      1          3        1   151
#> [325,]  69   8      0        180        1   153
#> [326,]  70  14      0        171        0   166
#> [327,]  66   4      0        180        0   130
#> [328,]  67   6      1          4        0   130
#> [329,]  68  18      1         14        1   170
#> [330,]  69   0      0          0        1   148
#> [331,]  65   2      0        180        0   130
#> [332,]  69   3      1          2        0   151
#> [333,]  67  14      1         13        0   130
#> [334,]  65  14      1         13        1   150
#> [335,]  71   7      0          7        0   230
#> [336,]  66   2      0          2        1   228
#> [337,]  71   3      0        103        0   133
#> [338,]  69   3      0          3        1   130
#> [339,]  70  22      1         13        0   103
#> [340,]  67   1      0         36        1   104
#> [341,]  67   5      0          5        0   130
#> [342,]  68   6      0        180        0   145
#> [343,]  69   8      1          5        1   195
#> [344,]  72   7      0          7        1   110
#> [345,]  69   8      1          7        1   108
#> [346,]  66   2      1          1        0   123
#> [347,]  66   2      0        180        0   130
#> [348,]  69   4      1          3        0   132
#> [349,]  68   2      0          7        1   130
#> [350,]  69   8      1          2        0   121
#> [351,]  67  13      1          9        0   130
#> [352,]  70   3      0        123        0   130
#> [353,]  70   9      0        180        1   142
#> [354,]  72   5      1          4        0   170
#> [355,]  67  22      1          1        1   140
#> [356,]  68   3      0         19        0   135
#> [357,]  67  12      1          8        0   120
#> [358,]  69   1      0          1        1   110
#> [359,]  67   4      0         60        1   136
#> [360,]  69   5      0         76        0   120
#> [361,]  72  13      1         11        1   195
#> [362,]  68  10      1          8        1   160
#> [363,]  70  35      1          0        1   105
#> [364,]  70   7      0          7        0   102
#> [365,]  71   6      0          9        0   120
#> [366,]  69  10      1          6        1   120
#> [367,]  70  11      0        180        1   210
#> [368,]  72  12      1         10        0   170
#> [369,]  67   8      0        180        1   170
#> [370,]  67   9      0        180        0   158
#> [371,]  70   5      0        180        0   150
#> [372,]  72   2      0          2        1   100
#> [373,]  67   4      1          1        0   134
#> [374,]  72   6      1          5        0   115
#> [375,]  68  23      0        180        1   220
#> [376,]  70   3      0        180        0   121
#> [377,]  71   3      1          2        0   150
#> [378,]  71   5      0        180        0   191
#> [379,]  73   6      0        180        1   117
#> [380,]  69   8      1          1        0   164
#> [381,]  72  16      1          1        1   130
#> [382,]  69   1      1          0        0   155
#> [383,]  73   6      1          0        1   270
#> [384,]  73   7      0          7        1   140
#> [385,]  68  15      1         13        1   130
#> [386,]  70   3      0          3        1   159
#> [387,]  70  13      1          9        0   100
#> [388,]  72   6      0        180        1   130
#> [389,]  73   0      0        180        1   161
#> [390,]  74   8      1          0        1    85
#> [391,]  73   4      0        180        1   154
#> [392,]  69   2      1          0        1   110
#> [393,]  74  20      0         20        1   180
#> [394,]  68   9      0        180        1   120
#> [395,]  71   8      1          7        0   149
#> [396,]  71   3      1          2        1   190
#> [397,]  69  12      1          1        1   149
#> [398,]  73   4      0         58        1   160
#> [399,]  72   5      1          3        1   160
#> [400,]  70   3      0        180        1   154
#> [401,]  73   6      0        180        0   110
#> [402,]  71   7      1          2        0   143
#> [403,]  72   8      1          0        1   140
#> [404,]  74   3      0          3        1   150
#> [405,]  73  17      1         11        0   140
#> [406,]  71  13      1          8        0   121
#> [407,]  70   4      1          0        1   140
#> [408,]  71  14      1         13        1   170
#> [409,]  72  10      1          8        1   153
#> [410,]  69   7      0        180        1   144
#> [411,]  72  15      1         13        0   156
#> [412,]  75   1      0          1        0   133
#> [413,]  75   2      1          1        0   145
#> [414,]  73  10      1          9        1   146
#> [415,]  72  10      1          9        1   160
#> [416,]  73  10      1         10        1   120
#> [417,]  75   9      1          7        0   140
#> [418,]  75  13      1          1        1   130
#> [419,]  71  11      1          8        0   110
#> [420,]  72  15      1         12        1   120
#> [421,]  72   1      1          1        0   168
#> [422,]  72   7      0         57        1   145
#> [423,]  73  10      0        180        0   162
#> [424,]  72  11      0         11        1   140
#> [425,]  73   5      1          3        1   112
#> [426,]  76  25      1         12        1   170
#> [427,]  72   2      0        180        0   120
#> [428,]  72   4      1          0        1   197
#> [429,]  71   3      1          0        0   144
#> [430,]  73   5      0        180        0   126
#> [431,]  73   4      0        180        0   124
#> [432,]  71  32      1         12        1   107
#> [433,]  72   5      0        180        0   154
#> [434,]  72   3      0        180        0   160
#> [435,]  77  11      0         11        1   150
#> [436,]  77   4      0          4        0   185
#> [437,]  72   7      1          2        0   142
#> [438,]  73  10      1         10        0   124
#> [439,]  74   7      0        180        1   150
#> [440,]  74   3      0          3        1   128
#> [441,]  74   2      1          1        0   140
#> [442,]  76   8      1          0        1   141
#> [443,]  75  23      1         14        1   110
#> [444,]  74   2      0        180        0   190
#> [445,]  72   4      0         85        1   120
#> [446,]  76  17      1          0        1   200
#> [447,]  73   4      1          3        1   125
#> [448,]  76  13      1         10        0   110
#> [449,]  75   7      0          7        0   190
#> [450,]  75   0      0          0        1   130
#> [451,]  73  13      1         11        0   195
#> [452,]  74   8      1          0        1   105
#> [453,]  75   4      1          2        1   188
#> [454,]  76   4      0          4        1   155
#> [455,]  75   1      0          1        1   125
#> [456,]  74   2      0        180        0   111
#> [457,]  73   0      0        180        0   156
#> [458,]  72   5      0        180        0   120
#> [459,]  78  12      1         11        1   160
#> [460,]  76  44      1         10        0   105
#> [461,]  76   5      0        180        0   185
#> [462,]  74  10      1          0        1   135
#> [463,]  76   5      1          0        1   167
#> [464,]  74   8      1          8        1   170
#> [465,]  75   9      0        180        1   140
#> [466,]  77  12      1          9        1   100
#> [467,]  77  12      0        180        0   130
#> [468,]  76  12      1         11        1   120
#> [469,]  78   5      1          0        1   170
#> [470,]  73   7      1          0        0   174
#> [471,]  75   3      1          1        1   171
#> [472,]  74   9      1          8        0   200
#> [473,]  75   6      0        180        0   150
#> [474,]  78  18      0         18        1   144
#> [475,]  77   3      0        180        0   110
#> [476,]  76  29      0         47        0    90
#> [477,]  73   8      1          1        1   162
#> [478,]  78   7      0          7        1   133
#> [479,]  74  15      0        180        1   172
#> [480,]  78   8      1          6        1   110
#> [481,]  74   7      0          7        0   161
#> [482,]  76  13      1          1        1   170
#> [483,]  78  32      1          9        1   198
#> [484,]  79   6      0        180        0   170
#> [485,]  80  10      1          6        1   147
#> [486,]  78  13      1          5        0   130
#> [487,]  75   5      0        119        1   150
#> [488,]  78  15      0        180        1   270
#> [489,]  75  13      1          6        0   150
#> [490,]  74  10      1          8        0   135
#> [491,]  76   1      0          1        1    83
#> [492,]  78  12      1          9        0   150
#> [493,]  78   2      1          1        0   130
#> [494,]  77   2      1          0        1   143
#> [495,]  76  11      1          0        0   120
#> [496,]  75  11      1          4        0   162
#> [497,]  75   3      0          3        0     0
#> [498,]  76   7      0         29        1   150
#> [499,]  77  24      0         24        1   160
#> [500,]  79   8      0         32        1   120
#> [501,]  80   9      0         23        1   128
#> [502,]  78   6      1          0        1   240
#> [503,]  76   3      1          0        1   140
#> [504,]  78  11      1          1        1   140
#> [505,]  79   2      1          0        1   121
#> [506,]  78  14      1          0        1   140
#> [507,]  76  10      1          8        0   180
#> [508,]  76  12      1         10        1   127
#> [509,]  75   2      1          1        1   204
#> [510,]  78  11      0        180        1   135
#> [511,]  76   1      0          1        1   140
#> [512,]  77  31      1          3        1   161
#> [513,]  79   3      0          3        0   120
#> [514,]  77   7      0        180        1   170
#> [515,]  77   6      0          6        1   144
#> [516,]  79   4      1          0        1   120
#> [517,]  80  15      1         12        1   150
#> [518,]  77   9      1          4        0   141
#> [519,]  80  40      1          0        1   138
#> [520,]  78   4      0         59        1   112
#> [521,]  80  17      1         12        0   100
#> [522,]  76   7      0        161        0   151
#> [523,]  79  10      0         10        1   120
#> [524,]  80  15      1          0        1    90
#> [525,]  79  28      0        164        0   100
#> [526,]  80   6      0        173        1   160
#> [527,]  79   1      0         37        1   140
#> [528,]  81   3      0        180        0   184
#> [529,]  81   2      0        175        0   172
#> [530,]  78   7      0          7        1   147
#> [531,]  78  15      0         15        0   165
#> [532,]  80   5      1          1        1   108
#> [533,]  78   4      0        180        0   175
#> [534,]  79   3      0          3        1   101
#> [535,]  81   4      1          1        1   104
#> [536,]  78  20      1          0        1   109
#> [537,]  80   1      0          1        0   100
#> [538,]  82   3      1          1        1   144
#> [539,]  77   5      0         85        0   188
#> [540,]  80   2      1          1        0   168
#> [541,]  79   6      0          6        0   152
#> [542,]  79  10      0        180        1   150
#> [543,]  77   4      0        180        1    98
#> [544,]  81   1      0        108        0   129
#> [545,]  78  12      0        180        0   134
#> [546,]  79   1      0        125        0   193
#> [547,]  79   4      0          4        1   121
#> [548,]  80   6      0          6        1   110
#> [549,]  83   5      0        180        0   148
#> [550,]  81  11      1          8        0   160
#> [551,]  81   5      0        177        0    41
#> [552,]  80  11      1          8        0   170
#> [553,]  78  23      1         10        1   145
#> [554,]  79   4      0          4        1   183
#> [555,]  82   8      1          1        0   128
#> [556,]  79   1      0        180        1   170
#> [557,]  81  15      0        180        1   140
#> [558,]  84   5      1          1        1    85
#> [559,]  83   8      0          8        0   115
#> [560,]  81   8      0        180        0   146
#> [561,]  80   8      1          7        0   160
#> [562,]  79   7      0        177        0   197
#> [563,]  79   0      1          0        1    96
#> [564,]  85   4      0        180        0    90
#> [565,]  83   2      0          2        1   155
#> [566,]  82   6      0        128        1   100
#> [567,]  84   5      0        180        1   203
#> [568,]  81   1      0          1        1   150
#> [569,]  84   1      0         38        1   205
#> [570,]  79   9      1          8        0   150
#> [571,]  85   3      1          2        1   160
#> [572,]  80  13      1          8        1   140
#> [573,]  84   4      0         89        1   129
#> [574,]  80   2      1          0        1   130
#> [575,]  79   4      0          4        1    60
#> [576,]  83   1      0          1        1   100
#> [577,]  82  19      0         19        0   120
#> [578,]  80  30      1         13        0   220
#> [579,]  79  14      1          0        0   110
#> [580,]  81  14      1         12        1   128
#> [581,]  83   2      0        154        0   130
#> [582,]  82   0      0          2        1   100
#> [583,]  85   9      1          6        1   160
#> [584,]  83   1      0        180        0   160
#> [585,]  81   4      0          4        0   175
#> [586,]  81  12      0         12        1   163
#> [587,]  82   5      1          0        1   146
#> [588,]  86  12      0        180        1   120
#> [589,]  83  12      1          2        1   170
#> [590,]  81  19      1         14        0   120
#> [591,]  82  15      1          0        0   183
#> [592,]  80   2      0         88        0   135
#> [593,]  86   8      0          8        1   132
#> [594,]  81  16      1          9        0   180
#> [595,]  84   6      0        165        0   145
#> [596,]  82   9      0        180        1   134
#> [597,]  84   3      0        180        1   120
#> [598,]  81  13      0        180        0   152
#> [599,]  85   3      0          3        1   118
#> [600,]  81   4      0        180        0   160
#> [601,]  82   1      0        180        1   193
#> [602,]  83   4      0          4        0   130
#> [603,]  87   2      0          5        1   137
#> [604,]  82  14      1         11        1   103
#> [605,]  84  16      0         70        1   150
#> [606,]  83  10      1          0        1   190
#> [607,]  86   2      0        180        1   169
#> [608,]  88  14      1          3        1   130
#> [609,]  84   3      0          3        1   121
#> [610,]  87   2      0        180        0   113
#> [611,]  84   3      0        180        1   170
#> [612,]  86   4      0         38        1   122
#> [613,]  86  13      0        177        0   163
#> [614,]  85   3      0          3        1   113
#> [615,]  86   6      0          6        1   117
#> [616,]  88   4      0          4        0   100
#> [617,]  83   9      0         65        1   150
#> [618,]  86   9      1          7        1   142
#> [619,]  87   2      0        180        1   130
#> [620,]  86   6      0         46        0   173
#> [621,]  88   3      0        115        0   110
#> [622,]  88   2      0        180        1    68
#> [623,]  83   3      0          3        1   130
#> [624,]  87   8      0          8        1   157
#> [625,]  89   4      0          4        1   153
#> [626,]  89   5      0        119        1   140
#> [627,]  87   6      0        180        1   110
#> [628,]  87   1      0          1        0   170
#> [629,]  84   8      0        180        1   119
#> [630,]  85   8      0          8        1   136
#> [631,]  84   0      0        180        1   136
#> [632,]  89  10      0         46        1   170
#> [633,]  90  14      0         14        1   100
#> [634,]  88   1      0          1        0   135
#> [635,]  86   4      0        180        1   145
#> [636,]  91   8      0          8        0   100
#> [637,]  87   2      0        180        0   160
#> [638,]  87   6      1          0        0   125
#> [639,]  91  10      0        145        0   135
#> [640,]  86   3      1          0        1    80
#> [641,]  88   7      0         24        0   119
#> [642,]  88   8      0         50        1   154
#> [643,]  90  11      1         10        1   186
#> [644,]  87   6      0        126        1   168
#> [645,]  86  10      0        180        1   137
#> [646,]  91   1      0          1        1    74
#> [647,]  87  43      0        178        1   130
#> [648,]  87   5      0         36        1   150
#> [649,]  90   5      1          0        1   125
#> [650,]  88   3      1          2        0   159
#> [651,]  89   3      1          1        1   160
#> [652,]  92   1      0          1        1   167
#> [653,]  92   7      0          7        1   110
#> [654,]  91   0      0          0        0     0
#> [655,]  89  14      0        180        1    84
#> [656,]  90  18      0        180        0   188
#> [657,]  90  19      1         11        1   129
#> [658,]  94   6      0         50        0    78
#> [659,]  90   1      0          1        1   118
#> [660,]  91   2      0          2        1   116
#> [661,]  94   8      0          8        1   142
#> [662,]  92   4      0         76        1   149
#> [663,]  90   3      0         67        0   162
#> [664,]  96   3      0         12        1    97
#> [665,]  95   8      1          5        1   150
#> [666,]  93   0      1          0        1   122
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+ 180.0+ 115.0  180.0+ 180.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+
#>  [41]   5.0+ 161.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+   2.0 
#>  [61]   1.0  179.0+ 180.0+ 179.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+   7.0   36.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81]   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  85.0  166.0+  99.0  180.0+
#>  [91]  16.0+ 180.0+ 152.0+   7.0+ 180.0+ 180.0+ 171.0+ 180.0+ 180.0+ 174.0+
#> [101]  28.0    1.0  180.0+   9.0+ 180.0+ 180.0+ 180.0+ 175.0+ 180.0+   2.0 
#> [111] 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0   15.0+
#> [121] 180.0+  12.0+ 134.0+ 180.0+   8.0    2.0  180.0+ 180.0+ 140.0  180.0+
#> [131] 165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+
#> [141] 180.0+ 180.0+ 180.0+   5.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+ 180.0+
#> [151]   5.0+ 180.0+   4.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161]   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+
#> [171] 180.0+   0.5  161.0+ 171.0+ 180.0+   3.0    1.0  180.0+ 180.0+  10.0+
#> [181] 180.0+  45.0  180.0+   9.0+ 172.0+ 180.0+ 180.0+   1.0+ 180.0+ 180.0+
#> [191] 180.0+  77.0    8.0+ 180.0+ 180.0+ 170.0   94.0  180.0+ 169.0  180.0+
#> [201] 180.0+   3.0+ 180.0+  28.0    5.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+   9.0    7.0+  22.0 
#> [221] 180.0+  84.0    7.0+   1.0  180.0+   4.0+   3.0+ 167.0  180.0+ 180.0+
#> [231]  17.0  180.0+  12.0  180.0+ 180.0+ 180.0+  36.0  180.0+   3.0+  88.0 
#> [241] 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+
#> [251] 180.0+  12.0  180.0+   3.0  180.0+ 180.0+ 180.0+  11.0+   2.0+  18.0+
#> [261] 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0  180.0+ 180.0+  13.0 
#> [271] 180.0+ 179.0+  14.0+   3.0    0.5+ 180.0+   3.0+ 180.0+ 175.0+ 180.0+
#> [281] 180.0+   8.0    5.0  180.0+   1.0  180.0+ 180.0+ 123.0+  18.0   80.0 
#> [291]  15.0+ 180.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [301] 175.0   10.0  180.0+ 180.0+ 180.0+  99.0  179.0+ 180.0+ 180.0+  11.0+
#> [311]  18.0  180.0+ 180.0+ 152.0+ 180.0+  93.0   21.0+   1.0  101.0    5.0 
#> [321]   7.0+ 150.0  180.0+ 180.0+ 180.0+ 171.0  180.0+   6.0  180.0+   0.5 
#> [331] 180.0+ 180.0+ 180.0+  14.0+   7.0+   2.0  103.0    3.0+ 180.0+  36.0 
#> [341]   5.0+ 180.0+ 180.0+   7.0    8.0+   2.0+ 180.0+ 180.0+   7.0    8.0+
#> [351]  13.0+ 123.0  180.0+ 180.0+  51.0   19.0  180.0+   1.0   60.0   76.0 
#> [361] 132.0   10.0+ 180.0+   7.0+   9.0  180.0+ 180.0+  12.0  180.0+ 180.0+
#> [371] 180.0+   2.0   76.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [381]  16.0+ 180.0+   6.0    7.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+
#> [391] 180.0+   2.0   20.0  180.0+   8.0    3.0   12.0   58.0  180.0+ 180.0+
#> [401] 180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0  180.0+  14.0+  10.0+ 180.0+
#> [411] 180.0+   1.0  180.0+ 180.0+ 159.0   15.0  180.0+  13.0  180.0+ 180.0+
#> [421]   1.0   57.0  180.0+  11.0    5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [431] 180.0+ 177.0+ 180.0+ 180.0+  11.0+   4.0+   7.0   10.0  180.0+   3.0 
#> [441] 180.0+ 180.0+ 180.0+ 180.0+  85.0   17.0+ 180.0+ 174.0+   7.0    0.5 
#> [451] 180.0+ 180.0+  46.0    4.0    1.0  180.0+ 180.0+ 180.0+  12.0  180.0+
#> [461] 180.0+ 180.0+ 180.0+   8.0  180.0+ 180.0+ 180.0+  12.0  180.0+   7.0+
#> [471]   3.0  168.0+ 180.0+  18.0  180.0+  47.0  180.0+   7.0  180.0+   8.0+
#> [481]   7.0  180.0+  32.0  180.0+  10.0  172.0  119.0  180.0+ 180.0+ 180.0+
#> [491]   1.0  180.0+ 180.0+   2.0   11.0  152.0+   3.0   29.0   24.0   32.0 
#> [501]  23.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+   2.0+ 180.0+
#> [511]   1.0  171.0    3.0  180.0+   6.0  138.0  180.0+  71.0   40.0   59.0 
#> [521]  17.0  161.0   10.0+ 180.0+ 164.0  173.0   37.0  180.0+ 175.0+   7.0+
#> [531]  15.0+   5.0+ 180.0+   3.0   71.0   20.0+   1.0  180.0+  85.0   10.0 
#> [541]   6.0+ 180.0+ 180.0+ 108.0  180.0+ 125.0    4.0    6.0  180.0+ 180.0+
#> [551] 177.0+ 169.0   70.0    4.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+
#> [561] 180.0+ 177.0+   0.5  180.0+   2.0  128.0  180.0+   1.0   38.0  180.0+
#> [571] 180.0+ 180.0+  89.0  180.0+   4.0    1.0   19.0   30.0  180.0+ 180.0+
#> [581] 154.0    2.0  180.0+ 180.0+   4.0+  12.0    5.0+ 180.0+  77.0  180.0+
#> [591]  83.0   88.0    8.0  180.0+ 165.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+
#> [601] 180.0+   4.0+   5.0  174.0   70.0  180.0+ 180.0+  14.0    3.0  180.0+
#> [611] 180.0+  38.0  177.0    3.0+   6.0+   4.0+  65.0   11.0  180.0+  46.0 
#> [621] 115.0  180.0+   3.0+   8.0+   4.0  119.0  180.0+   1.0+ 180.0+   8.0 
#> [631] 180.0+  46.0   14.0    1.0+ 180.0+   8.0  180.0+  25.0  145.0    3.0 
#> [641]  24.0   50.0   11.0  126.0  180.0+   1.0  178.0+  36.0   89.0   75.0 
#> [651]   3.0+   1.0    7.0    0.5  180.0+ 180.0+ 180.0+  50.0    1.0+   2.0 
#> [661]   8.0+  76.0   67.0   12.0    8.0    0.5   69.0    2.0    3.0   15.0+
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
#>   0.8190278 
```
