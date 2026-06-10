# Cross-Validated GLM with Elastic Net Regularization Survival Learner

Generalized linear models with elastic net regularization. Calls
[`glmnet::cv.glmnet()`](https://glmnet.stanford.edu/reference/cv.glmnet.html)
from package [glmnet](https://CRAN.R-project.org/package=glmnet).

## Initial parameter values

- `family` is set to `"cox"` and cannot be changed.

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`glmnet::predict.cv.glmnet()`](https://glmnet.stanford.edu/reference/predict.cv.glmnet.html).

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    [`glmnet::survfit.cv.glmnet()`](https://glmnet.stanford.edu/reference/survfit.cv.glmnet.html).
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
[`glmnet::glmnet()`](https://glmnet.stanford.edu/reference/glmnet.html).
During prediction, the offset column from the test set is used only if
`use_pred_offset = TRUE` (default), passed via the `newoffset` argument
in
[`glmnet::predict.coxnet()`](https://glmnet.stanford.edu/reference/predict.glmnet.html).
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
#> min 0.00291    46   2.715 0.1170       6
#> 1se 0.05705    14   2.814 0.1166       5
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   2      0        180        0   121
#>   [4,]  35   2      1          1        1   112
#>   [5,]  38   2      0        115        0   150
#>   [6,]  36   1      0        180        1   155
#>   [7,]  38  12      1          8        1   120
#>   [8,]  36   5      1          0        1   115
#>   [9,]  33   6      1          1        1   115
#>  [10,]  38  16      1         10        0   160
#>  [11,]  38  12      1         11        1    92
#>  [12,]  40  12      1          9        0   153
#>  [13,]  42   3      1          1        1   130
#>  [14,]  37   1      1          0        1   146
#>  [15,]  42   2      0        180        1   100
#>  [16,]  38   5      1          3        0   125
#>  [17,]  42   2      0          2        0   140
#>  [18,]  40   6      0        180        1   138
#>  [19,]  40  11      1         10        1   120
#>  [20,]  42   2      0        180        0   100
#>  [21,]  43   3      1          0        1   100
#>  [22,]  40   1      1          0        1   145
#>  [23,]  43   4      1          0        1   130
#>  [24,]  42   4      0        180        0   162
#>  [25,]  40   3      1          1        0   170
#>  [26,]  42  12      1         10        1   170
#>  [27,]  43   2      1          1        1   116
#>  [28,]  41  10      1          8        0   150
#>  [29,]  45   6      0        180        1   170
#>  [30,]  41   5      1          4        1   141
#>  [31,]  44   2      1          1        1   150
#>  [32,]  43   2      0        180        1   140
#>  [33,]  45   2      0        180        1   140
#>  [34,]  47   4      1          3        0   118
#>  [35,]  45   3      0        150        0   130
#>  [36,]  44   3      1          0        1   180
#>  [37,]  46   7      1          2        0   166
#>  [38,]  43  29      0        180        1   180
#>  [39,]  45   4      1          0        0   124
#>  [40,]  47   6      1          0        1   116
#>  [41,]  46  13      1         10        0   100
#>  [42,]  47   4      1          3        1   160
#>  [43,]  45   5      0          5        0   141
#>  [44,]  46   2      1          1        1   122
#>  [45,]  46   6      1          0        1   100
#>  [46,]  45   5      0        180        1   190
#>  [47,]  46   5      1          3        0   130
#>  [48,]  46   4      0        180        1   121
#>  [49,]  44   2      0        180        0   142
#>  [50,]  46  15      0        180        1   120
#>  [51,]  45   9      1          0        1   145
#>  [52,]  47   3      1          1        1   120
#>  [53,]  47   5      1          3        1   130
#>  [54,]  47   9      1          6        0   170
#>  [55,]  46   3      1          0        1   119
#>  [56,]  49   4      0        180        0   117
#>  [57,]  47  10      0         10        1   140
#>  [58,]  50   1      1          0        1   129
#>  [59,]  47   7      0        180        0   145
#>  [60,]  50   6      1          2        1   140
#>  [61,]  49   7      1          7        1   110
#>  [62,]  46   9      1          9        1   122
#>  [63,]  50   7      0        180        1   110
#>  [64,]  51   1      0          1        1   145
#>  [65,]  49  15      1         11        1   160
#>  [66,]  49  23      0        179        1   112
#>  [67,]  46   6      1          0        1   156
#>  [68,]  52   2      0        180        1   170
#>  [69,]  50   7      1          0        1    92
#>  [70,]  50   4      0          4        1   100
#>  [71,]  51   3      1          2        0   113
#>  [72,]  50   1      1          0        0   150
#>  [73,]  50   9      0        180        0   130
#>  [74,]  49   7      1          4        1    90
#>  [75,]  47   8      0        180        0   160
#>  [76,]  47   6      0        180        1   162
#>  [77,]  51   8      0        180        1   140
#>  [78,]  52   2      0        180        0   155
#>  [79,]  46   3      0        180        1   120
#>  [80,]  46   1      1          1        0   145
#>  [81,]  50   4      1          1        0   150
#>  [82,]  48   7      1          0        1   110
#>  [83,]  48  17      1         10        0   111
#>  [84,]  52   4      1          4        0   152
#>  [85,]  49  15      0        180        1   160
#>  [86,]  53   5      0        180        1   140
#>  [87,]  54  17      1         12        1   102
#>  [88,]  53   5      0         77        0   159
#>  [89,]  54   6      1          3        0   129
#>  [90,]  50   2      0          5        1   106
#>  [91,]  50  10      1          6        0   122
#>  [92,]  50  14      1         13        0   170
#>  [93,]  48   3      1          2        0   150
#>  [94,]  49   5      1          2        1   150
#>  [95,]  53   4      0          4        0   140
#>  [96,]  52  14      1          7        1   200
#>  [97,]  48  11      1         10        0   120
#>  [98,]  49  16      0         16        0   125
#>  [99,]  52   7      1          2        0   154
#> [100,]  54   9      1          1        0   130
#> [101,]  52   4      0        180        1   180
#> [102,]  51  13      1         11        0   145
#> [103,]  50   5      1          4        1   150
#> [104,]  54   4      1          0        1   121
#> [105,]  52   4      0        180        0   183
#> [106,]  50   3      0        174        1   153
#> [107,]  49   6      1          0        1   130
#> [108,]  49   1      0          1        1   110
#> [109,]  50   7      1          1        0   156
#> [110,]  53   9      0          9        1    95
#> [111,]  56   4      1          1        1   130
#> [112,]  52   5      0        175        1   117
#> [113,]  55   2      0          2        0   145
#> [114,]  54   1      0        180        0   162
#> [115,]  54   7      1          0        1   100
#> [116,]  56   3      0        180        1   193
#> [117,]  56   2      0        180        0   132
#> [118,]  55   5      1          4        1   120
#> [119,]  52   8      0        180        0   119
#> [120,]  53  18      1          9        1   150
#> [121,]  54   3      0        180        1   180
#> [122,]  55   6      0        180        0   170
#> [123,]  53  10      1          9        0   172
#> [124,]  52  16      1         14        0   170
#> [125,]  53  15      0         15        1    90
#> [126,]  55   6      0        180        1   100
#> [127,]  55   6      1          5        1   138
#> [128,]  54  12      1          0        1   190
#> [129,]  55   2      0        134        1   140
#> [130,]  54   3      0        180        0   128
#> [131,]  56   3      0          8        1   139
#> [132,]  57   3      0          3        0   120
#> [133,]  54   2      1          1        0   135
#> [134,]  52   9      1          3        0   170
#> [135,]  54   2      1          1        1   176
#> [136,]  57   5      1          3        1   138
#> [137,]  57   1      0        180        1   156
#> [138,]  57   1      0          1        1   100
#> [139,]  52   2      0        180        0   140
#> [140,]  55  11      1          7        0   104
#> [141,]  52  15      1         14        0   130
#> [142,]  58   8      0          8        1   130
#> [143,]  54   5      0        180        1   108
#> [144,]  55   3      1          1        1   156
#> [145,]  53  21      1         13        1   130
#> [146,]  59   3      1          1        0   172
#> [147,]  58   6      1          0        1    90
#> [148,]  53  15      1         10        1   130
#> [149,]  54  17      1          8        1   227
#> [150,]  55  13      0        166        1   140
#> [151,]  56   5      0          5        1   150
#> [152,]  53   4      0        147        1   145
#> [153,]  53   7      1          0        1   120
#> [154,]  57  11      1         10        1   129
#> [155,]  55   3      1          2        0   140
#> [156,]  55   5      0          5        1   131
#> [157,]  54   7      1          0        1   141
#> [158,]  56   4      0          4        0   164
#> [159,]  55   5      1          0        0   140
#> [160,]  56   7      1          5        1   120
#> [161,]  55   2      0          2        0   106
#> [162,]  59   9      1          1        1   125
#> [163,]  57   1      0        180        0   148
#> [164,]  60  11      1          9        0   106
#> [165,]  58   4      1          0        1   160
#> [166,]  57   5      0        180        1   130
#> [167,]  59   6      1          0        1   140
#> [168,]  59   5      0        180        1   155
#> [169,]  59   4      1          0        1   152
#> [170,]  58  26      1          0        1   189
#> [171,]  61   9      0          9        1   160
#> [172,]  58   4      1          3        0   120
#> [173,]  59   2      1          1        0   140
#> [174,]  58   8      0        161        1   140
#> [175,]  58  14      1          6        0   190
#> [176,]  61   4      1          3        0   151
#> [177,]  61   9      1          8        0   150
#> [178,]  61   3      1          2        1   102
#> [179,]  57  13      1         10        0   110
#> [180,]  57   2      1          0        1   116
#> [181,]  58  10      0         10        1   150
#> [182,]  57   4      1          3        0   138
#> [183,]  61   3      0         17        0   143
#> [184,]  57   3      1          2        0   120
#> [185,]  58  19      1         13        1   140
#> [186,]  56  13      1          6        1   158
#> [187,]  56  18      1         11        1   165
#> [188,]  55   4      1          3        1   160
#> [189,]  58  11      0        172        1   135
#> [190,]  60  12      1          0        1   114
#> [191,]  55   9      1          7        1   135
#> [192,]  61   4      1          0        1   115
#> [193,]  61  13      1         12        1   130
#> [194,]  59  11      1          8        1   190
#> [195,]  57   1      0          1        0   126
#> [196,]  59   5      1          2        0   182
#> [197,]  58   5      1          1        1   135
#> [198,]  59  10      0        180        0   160
#> [199,]  61   8      0         77        0   120
#> [200,]  61  13      0         13        0   210
#> [201,]  62  10      1          0        1   153
#> [202,]  57   3      1          0        0   100
#> [203,]  61  18      0        170        0   140
#> [204,]  61   7      0          7        1   150
#> [205,]  61   6      0          6        0   134
#> [206,]  59  13      1          2        0   198
#> [207,]  57  12      1          9        1   120
#> [208,]  62   4      1          0        0   160
#> [209,]  60  17      1          8        1   140
#> [210,]  58   3      1          0        1   146
#> [211,]  62   4      1          3        0   173
#> [212,]  58   2      0         30        0   202
#> [213,]  59   1      0        180        0   155
#> [214,]  63   6      0         28        1   120
#> [215,]  61  13      0         13        0   120
#> [216,]  61   5      0          5        1   110
#> [217,]  61   5      0          5        1   160
#> [218,]  58  11      1          9        0   179
#> [219,]  62  17      1         10        1   180
#> [220,]  62   1      1          0        1   172
#> [221,]  58   7      0        180        1   150
#> [222,]  63   3      1          1        0   180
#> [223,]  63   4      1          3        0   222
#> [224,]  62   3      0        180        1   105
#> [225,]  63   4      1          1        0   155
#> [226,]  59   8      0        180        1   140
#> [227,]  62   7      0          7        0   150
#> [228,]  59   1      0         22        1   162
#> [229,]  60   7      0          7        0   140
#> [230,]  59   5      1          1        0   148
#> [231,]  60   7      1          1        1    90
#> [232,]  65  13      0        180        1   100
#> [233,]  63   1      0          1        0   162
#> [234,]  62   6      0        180        0   170
#> [235,]  61  15      1         13        0   170
#> [236,]  60   3      0          3        0   168
#> [237,]  62   6      0          6        0   120
#> [238,]  63  12      1         10        0   200
#> [239,]  61   6      1          1        1   117
#> [240,]  64  12      1         11        0   160
#> [241,]  66   1      1          0        1   120
#> [242,]  64   6      1          0        1   140
#> [243,]  63  10      1          0        1   148
#> [244,]  63  14      1          9        0   123
#> [245,]  65  36      1         11        0   140
#> [246,]  63   4      1          3        0   162
#> [247,]  63  12      1          9        0   114
#> [248,]  63   7      0        180        0   120
#> [249,]  66   5      1          0        1   110
#> [250,]  64   0      0          0        1    90
#> [251,]  64  21      1         10        0   190
#> [252,]  61  12      1         11        0   154
#> [253,]  64   9      0        180        0   150
#> [254,]  61   4      0        180        1   113
#> [255,]  63  12      0         12        1   150
#> [256,]  62   3      1          1        1   199
#> [257,]  65   3      1          0        1    80
#> [258,]  63   5      1          4        0   170
#> [259,]  63   2      1          1        0   180
#> [260,]  62  13      1         11        0   180
#> [261,]  64   2      0          2        0   201
#> [262,]  66  18      1          5        0   142
#> [263,]  62   9      0        180        0   145
#> [264,]  61  14      1          5        0   140
#> [265,]  61  15      1         10        0   130
#> [266,]  63   9      1          8        1   160
#> [267,]  63   3      1          2        0   120
#> [268,]  63   2      1          0        0   140
#> [269,]  65   8      1          0        1   140
#> [270,]  67   6      0        180        1   170
#> [271,]  65  15      1         11        1   160
#> [272,]  68   5      1          4        1   150
#> [273,]  64  13      1         12        1   150
#> [274,]  64   6      1          0        1   125
#> [275,]  65   3      0          3        0   105
#> [276,]  64   0      0          0        1   148
#> [277,]  66   3      1          0        1   135
#> [278,]  65   2      1          1        1   170
#> [279,]  68   1      0        180        1   166
#> [280,]  64  10      1          9        1   110
#> [281,]  63   7      1          0        0   162
#> [282,]  67   8      1          1        1   130
#> [283,]  68   5      0          5        1    90
#> [284,]  63  10      0         16        1   160
#> [285,]  66  14      0        180        0   130
#> [286,]  68  18      0        180        1   260
#> [287,]  63   8      1          1        1   162
#> [288,]  63   1      1          0        1   155
#> [289,]  63  10      0         18        1   130
#> [290,]  67  11      0         11        0   150
#> [291,]  68  14      0         79        0   172
#> [292,]  66  11      1          0        0   100
#> [293,]  65   4      1          2        1   145
#> [294,]  66  15      1         13        1   160
#> [295,]  63   2      0        180        0   150
#> [296,]  69  21      1         10        0   180
#> [297,]  63   8      0        180        1   120
#> [298,]  68  14      1         13        1   140
#> [299,]  65   8      1          0        1    90
#> [300,]  66   3      0          3        1   138
#> [301,]  69   1      1          0        0   170
#> [302,]  67   1      0        180        1   160
#> [303,]  68  10      1         10        1   150
#> [304,]  65   1      1          0        0   133
#> [305,]  67   7      1          4        1   130
#> [306,]  63   2      1          0        0    99
#> [307,]  67   2      0        180        0   184
#> [308,]  65   6      0          6        0    80
#> [309,]  67  12      1         12        0   160
#> [310,]  64   4      0        179        0   160
#> [311,]  66   4      0        180        1   130
#> [312,]  64   4      0        180        1   140
#> [313,]  67   2      0         18        0   131
#> [314,]  66   4      0        180        0   177
#> [315,]  68   4      1          0        1   160
#> [316,]  69   4      1          3        1   150
#> [317,]  65  13      1         12        1   130
#> [318,]  69  17      1         10        0   140
#> [319,]  69   8      0         93        0   140
#> [320,]  65   1      0          1        1   120
#> [321,]  65   6      0        101        1   115
#> [322,]  71   3      0          5        0   112
#> [323,]  71  20      1          0        1   160
#> [324,]  67   2      0        180        0   128
#> [325,]  66   9      1          3        1   151
#> [326,]  66   1      1          1        1   165
#> [327,]  70   4      1          0        1   180
#> [328,]  70  14      0        171        0   166
#> [329,]  66   4      0        180        0   130
#> [330,]  67   6      1          4        0   130
#> [331,]  69   0      0          0        1   148
#> [332,]  65   2      0        180        0   130
#> [333,]  68   7      1          0        1   150
#> [334,]  69   3      1          2        0   151
#> [335,]  67  14      1         13        0   130
#> [336,]  65  14      1         13        1   150
#> [337,]  71   7      0          7        0   230
#> [338,]  71   6      0         45        1   158
#> [339,]  69   5      0          5        1   142
#> [340,]  71   3      0        103        0   133
#> [341,]  69   3      0          3        1   130
#> [342,]  67   1      0         36        1   104
#> [343,]  67   5      0          5        0   130
#> [344,]  69   6      1          4        1   174
#> [345,]  72   3      1          0        1   132
#> [346,]  72   7      0          7        1   110
#> [347,]  69   8      1          7        1   108
#> [348,]  67   3      0        180        0   110
#> [349,]  69  19      0        180        0   130
#> [350,]  67  14      0        172        1   140
#> [351,]  69  11      1          0        1   120
#> [352,]  66   2      0        180        0   130
#> [353,]  67   7      1          4        0   122
#> [354,]  68   2      0          7        1   130
#> [355,]  69   8      1          2        0   121
#> [356,]  67  13      1          9        0   130
#> [357,]  70   9      0        180        1   142
#> [358,]  72   5      1          4        0   170
#> [359,]  68   3      0         19        0   135
#> [360,]  67  12      1          8        0   120
#> [361,]  67   1      0          1        1    60
#> [362,]  67   4      0         60        1   136
#> [363,]  67   8      1          0        1   130
#> [364,]  72  13      1         11        1   195
#> [365,]  68  10      1          8        1   160
#> [366,]  70  35      1          0        1   105
#> [367,]  68   7      1          2        0   135
#> [368,]  73  20      1          0        1   170
#> [369,]  71   6      0          9        0   120
#> [370,]  70  11      0        180        1   210
#> [371,]  72  12      1         10        0   170
#> [372,]  67   8      0        180        1   170
#> [373,]  67   5      1          0        1   147
#> [374,]  67   9      0        180        0   158
#> [375,]  72   2      0          2        1   100
#> [376,]  67   4      1          1        0   134
#> [377,]  72   6      1          5        0   115
#> [378,]  71   1      0        173        1   188
#> [379,]  69   3      0        180        0   220
#> [380,]  71   3      1          2        0   150
#> [381,]  68   4      1          3        0   210
#> [382,]  72   5      0         28        0   120
#> [383,]  73   6      0        180        1   117
#> [384,]  69  16      1         10        1   140
#> [385,]  69   8      1          1        0   164
#> [386,]  68   7      0        180        1   130
#> [387,]  70   4      0        180        0   180
#> [388,]  71   2      1          0        1   180
#> [389,]  73   7      0          7        1   140
#> [390,]  70  13      1          9        0   100
#> [391,]  72   6      0        180        1   130
#> [392,]  73   0      0        180        1   161
#> [393,]  73   4      0        180        1   154
#> [394,]  69   2      1          0        1   110
#> [395,]  71  15      1         11        0   165
#> [396,]  68   9      0        180        1   120
#> [397,]  71  20      1         10        0   140
#> [398,]  74   0      1          0        1    90
#> [399,]  73   3      1          0        1   136
#> [400,]  71  17      1         11        0   160
#> [401,]  71   8      1          7        0   149
#> [402,]  71   3      1          2        1   190
#> [403,]  73  10      1          8        0   106
#> [404,]  73   4      0         58        1   160
#> [405,]  73   6      0        180        0   110
#> [406,]  72   8      1          0        1   140
#> [407,]  74   3      0          3        1   150
#> [408,]  73  17      1         11        0   140
#> [409,]  71  13      1          8        0   121
#> [410,]  69   2      1          1        1    80
#> [411,]  74   7      1          0        1   117
#> [412,]  72  10      1          8        1   153
#> [413,]  72  15      1         13        0   156
#> [414,]  70   8      0          8        0   120
#> [415,]  71  10      1          9        1   120
#> [416,]  75   2      1          1        0   145
#> [417,]  73  10      1          9        1   146
#> [418,]  72  10      1          9        1   160
#> [419,]  73  10      1         10        1   120
#> [420,]  74  15      1          9        1   179
#> [421,]  75  13      1          1        1   130
#> [422,]  71   4      0          4        0   134
#> [423,]  72  15      1         12        1   120
#> [424,]  72   1      1          1        0   168
#> [425,]  72   7      0         57        1   145
#> [426,]  72  11      0         11        1   140
#> [427,]  73   5      1          3        1   112
#> [428,]  76  25      1         12        1   170
#> [429,]  75   1      0        180        1   140
#> [430,]  72   4      1          0        1   197
#> [431,]  71   3      1          0        0   144
#> [432,]  73   5      0        180        0   126
#> [433,]  73   4      0        180        0   124
#> [434,]  72   5      0        180        0   154
#> [435,]  72   3      0        180        0   160
#> [436,]  77  11      0         11        1   150
#> [437,]  77   4      0          4        0   185
#> [438,]  75   3      1          1        0   180
#> [439,]  73  15      0         15        1   160
#> [440,]  71  16      0        180        0   140
#> [441,]  73  10      1         10        0   124
#> [442,]  74   3      0          3        1   128
#> [443,]  76   1      0        180        0   114
#> [444,]  74   2      1          1        0   140
#> [445,]  76   8      1          0        1   141
#> [446,]  73   6      0          6        1   114
#> [447,]  75  23      1         14        1   110
#> [448,]  74   2      0        180        0   190
#> [449,]  72   4      1          3        0   160
#> [450,]  76  17      1          0        1   200
#> [451,]  73   4      1          3        1   125
#> [452,]  76  13      1         10        0   110
#> [453,]  75   4      1          0        1   122
#> [454,]  75   7      0          7        0   190
#> [455,]  75   0      0          0        1   130
#> [456,]  73  13      1         11        0   195
#> [457,]  75  12      0         12        1   160
#> [458,]  74   8      1          0        1   105
#> [459,]  76  13      1          8        1   148
#> [460,]  75   4      1          2        1   188
#> [461,]  74   6      0        180        0   160
#> [462,]  76   4      0          4        1   155
#> [463,]  75   1      0          1        1   125
#> [464,]  74   2      0        180        0   111
#> [465,]  73   0      0        180        0   156
#> [466,]  78  12      1         11        1   160
#> [467,]  76  44      1         10        0   105
#> [468,]  76   5      0        180        0   185
#> [469,]  74  10      1          0        1   135
#> [470,]  76   5      1          0        1   167
#> [471,]  75   9      0        180        1   140
#> [472,]  73  33      1         12        1   175
#> [473,]  77   5      1          0        0   123
#> [474,]  77  12      1          9        1   100
#> [475,]  73  10      1          9        0   146
#> [476,]  77  12      0        180        0   130
#> [477,]  77   1      1          0        1    90
#> [478,]  78   5      1          0        1   170
#> [479,]  73   7      1          0        0   174
#> [480,]  74   6      0         79        1   140
#> [481,]  75   3      1          1        1   171
#> [482,]  74   9      1          8        0   200
#> [483,]  75   6      0        180        0   150
#> [484,]  74   2      1          0        1   130
#> [485,]  77   3      0        180        0   110
#> [486,]  73  11      1          2        1   110
#> [487,]  74   2      0        180        0   100
#> [488,]  78   7      0          7        1   133
#> [489,]  74  15      0        180        1   172
#> [490,]  76  13      1          1        1   170
#> [491,]  80  10      1          6        1   147
#> [492,]  78  13      1          5        0   130
#> [493,]  75   5      0        119        1   150
#> [494,]  78  15      0        180        1   270
#> [495,]  80   8      0          8        1   120
#> [496,]  75  13      1          6        0   150
#> [497,]  74  10      1          8        0   135
#> [498,]  76   1      0          1        1    83
#> [499,]  75   4      1          0        0   212
#> [500,]  78  10      0        180        1   130
#> [501,]  75  11      1          4        0   162
#> [502,]  75   3      0          3        0     0
#> [503,]  76   7      0         29        1   150
#> [504,]  77  24      0         24        1   160
#> [505,]  79   8      0         32        1   120
#> [506,]  80   9      0         23        1   128
#> [507,]  78   6      1          0        1   240
#> [508,]  76   3      1          0        1   140
#> [509,]  78  11      1          1        1   140
#> [510,]  81   1      0          1        0   130
#> [511,]  76   4      0          4        1   160
#> [512,]  76  10      1          8        0   180
#> [513,]  76  12      1         10        1   127
#> [514,]  77   6      0          6        1   107
#> [515,]  78  11      0        180        1   135
#> [516,]  76   1      0          1        1   140
#> [517,]  77  31      1          3        1   161
#> [518,]  78   7      1          0        1   110
#> [519,]  79   3      0          3        0   120
#> [520,]  77   7      0        180        1   170
#> [521,]  77   6      0          6        1   144
#> [522,]  79   4      1          0        1   120
#> [523,]  81   1      0        180        0   120
#> [524,]  80  15      1         12        1   150
#> [525,]  77   9      1          4        0   141
#> [526,]  82   5      0          8        1   120
#> [527,]  78   4      0         59        1   112
#> [528,]  80  17      1         12        0   100
#> [529,]  76   7      0        161        0   151
#> [530,]  79  10      0         10        1   120
#> [531,]  81   4      1          2        1   126
#> [532,]  80   9      0        118        1   186
#> [533,]  80   6      0        173        1   160
#> [534,]  79   1      0         37        1   140
#> [535,]  81   2      0        175        0   172
#> [536,]  78   7      0          7        1   147
#> [537,]  80   5      1          1        1   108
#> [538,]  78   4      0        180        0   175
#> [539,]  78  26      1          5        0   194
#> [540,]  76   1      0        166        0   131
#> [541,]  81   4      1          1        1   104
#> [542,]  78   3      1          1        1   152
#> [543,]  77  10      1          8        1   130
#> [544,]  80   2      1          1        0   168
#> [545,]  79   6      0          6        0   152
#> [546,]  80   6      1          0        1   119
#> [547,]  82   1      1          0        1    82
#> [548,]  77   4      0        180        1    98
#> [549,]  78  12      0        180        0   134
#> [550,]  79   1      0        125        0   193
#> [551,]  82  21      1          2        0   155
#> [552,]  84  22      1         10        0   180
#> [553,]  83   9      1          5        1   170
#> [554,]  79   7      1          6        0   130
#> [555,]  78  23      1         10        1   145
#> [556,]  79   4      0          4        1   183
#> [557,]  78   9      1          4        1   120
#> [558,]  82   8      1          1        0   128
#> [559,]  79   1      0        180        1   170
#> [560,]  81  15      0        180        1   140
#> [561,]  80   7      1          0        1   146
#> [562,]  84   5      1          1        1    85
#> [563,]  81  20      1          9        0   170
#> [564,]  83   8      0          8        0   115
#> [565,]  80   6      1          0        1   150
#> [566,]  80  11      1          8        0   110
#> [567,]  81   8      0        180        0   146
#> [568,]  79   7      0        177        0   197
#> [569,]  82   6      0        128        1   100
#> [570,]  84   4      0        167        0   198
#> [571,]  80   3      1          1        1   230
#> [572,]  82  23      1          0        0   110
#> [573,]  84   5      0        180        1   203
#> [574,]  84   4      0          4        1    85
#> [575,]  81   1      0          1        1   150
#> [576,]  84   1      0         38        1   205
#> [577,]  83   3      0        180        0   174
#> [578,]  81   4      0         90        1   138
#> [579,]  80  13      1          8        1   140
#> [580,]  80   2      1          0        1   130
#> [581,]  79   4      0          4        1    60
#> [582,]  83   1      0          1        1   100
#> [583,]  82  19      0         19        0   120
#> [584,]  83   9      0        180        0   198
#> [585,]  83   3      0        114        0    98
#> [586,]  83   2      0        154        0   130
#> [587,]  81   1      0          1        1   145
#> [588,]  82   5      1          0        1   146
#> [589,]  81   4      0          4        0   160
#> [590,]  86  12      0        180        1   120
#> [591,]  83  12      1          2        1   170
#> [592,]  81  19      1         14        0   120
#> [593,]  82   3      1          2        0   130
#> [594,]  82  15      1          0        0   183
#> [595,]  80   2      0         88        0   135
#> [596,]  81  16      1          9        0   180
#> [597,]  82   9      0        180        1   134
#> [598,]  84   3      0        180        1   120
#> [599,]  85   3      0          3        1   118
#> [600,]  81   2      1          0        1   118
#> [601,]  83   9      0        180        1   149
#> [602,]  82   1      0        180        1   193
#> [603,]  83   4      0          4        0   130
#> [604,]  87   2      0          5        1   137
#> [605,]  86  12      1          0        1   132
#> [606,]  82  14      1         11        1   103
#> [607,]  86   6      1          0        1   140
#> [608,]  84  16      0         70        1   150
#> [609,]  83  10      1          0        1   190
#> [610,]  86   2      0        180        1   169
#> [611,]  88  14      1          3        1   130
#> [612,]  84   3      0          3        1   121
#> [613,]  87   2      0        180        0   113
#> [614,]  84   3      0        180        1   170
#> [615,]  86   4      0         38        1   122
#> [616,]  84  13      0         62        1   100
#> [617,]  86   6      1          1        0   112
#> [618,]  83  20      1          3        1   150
#> [619,]  88   4      0          4        1   115
#> [620,]  85  22      0         22        1   184
#> [621,]  83   9      0         65        1   150
#> [622,]  86   9      1          7        1   142
#> [623,]  87   2      0        180        1   130
#> [624,]  86   6      0         46        0   173
#> [625,]  88   2      0        180        1    68
#> [626,]  83   3      0          3        1   130
#> [627,]  88   4      0          4        0    86
#> [628,]  89   5      0        119        1   140
#> [629,]  87   6      0        180        1   110
#> [630,]  87   1      0          1        0   170
#> [631,]  84   8      0        180        1   119
#> [632,]  85   8      0          8        1   136
#> [633,]  84   2      0        110        1   174
#> [634,]  87  15      1          9        1   138
#> [635,]  84   0      0        180        1   136
#> [636,]  89  10      0         46        1   170
#> [637,]  90  14      0         14        1   100
#> [638,]  87   2      0        180        0   160
#> [639,]  87   6      1          0        0   125
#> [640,]  86   3      1          0        1    80
#> [641,]  88   7      0         24        0   119
#> [642,]  88   8      0         50        1   154
#> [643,]  87   6      0        126        1   168
#> [644,]  91   1      0          1        1    74
#> [645,]  87  43      0        178        1   130
#> [646,]  87   5      0         36        1   150
#> [647,]  90   5      1          0        1   125
#> [648,]  88   3      1          2        0   159
#> [649,]  89   3      1          1        1   160
#> [650,]  89  12      1          0        1   130
#> [651,]  89   2      0        168        0   118
#> [652,]  91   5      0        169        1   176
#> [653,]  89  52      0         52        1   130
#> [654,]  89   4      0          4        1   159
#> [655,]  91   4      1          0        1   120
#> [656,]  94   6      0         50        0    78
#> [657,]  90   1      0          1        1   118
#> [658,]  93   8      0        179        1   110
#> [659,]  94   8      0          8        1   142
#> [660,]  91   1      0        180        0   158
#> [661,]  90  16      0         16        1   106
#> [662,]  96   3      0         12        1    97
#> [663,]  95   8      1          5        1   150
#> [664,]  94   3      0         26        1   144
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   2.0+ 180.0+   2.0+ 115.0  180.0+  12.0    5.0+ 180.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [21]   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+   5.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+   6.0+
#>  [41] 180.0+ 180.0+   5.0+ 161.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+
#>  [51] 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+
#>  [61]   7.0  180.0+ 180.0+   1.0  179.0+ 179.0+ 180.0+ 180.0+ 180.0+   4.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+   7.0   88.0+   4.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+   5.0 
#>  [91] 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+  16.0+   7.0+ 180.0+
#> [101] 180.0+  13.0+ 171.0+ 180.0+ 180.0+ 174.0+   6.0+   1.0  180.0+   9.0+
#> [111] 180.0+ 175.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+  16.0   15.0+ 180.0+ 180.0+  12.0+ 134.0+ 180.0+
#> [131]   8.0    3.0+ 180.0+ 180.0+ 180.0+ 140.0  180.0+   1.0  180.0+ 180.0+
#> [141] 180.0+   8.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+ 166.0+
#> [151]   5.0+ 147.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+   4.0+ 180.0+ 180.0+
#> [161]   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+
#> [171]   9.0+ 180.0+ 180.0+ 161.0+ 171.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+
#> [181]  10.0+ 180.0+  17.0    3.0+  19.0  180.0+ 180.0+ 180.0+ 172.0+ 172.0+
#> [191]  24.0  180.0+ 180.0+ 180.0+   1.0+ 180.0+ 180.0+ 180.0+  77.0   13.0+
#> [201] 180.0+ 180.0+ 170.0    7.0    6.0  180.0+ 180.0+ 180.0+ 180.0+   3.0+
#> [211] 180.0+  30.0  180.0+  28.0   13.0+   5.0    5.0+ 180.0+ 180.0+   1.0 
#> [221] 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+   7.0+  22.0    7.0+ 180.0+
#> [231] 180.0+ 180.0+   1.0  180.0+ 180.0+   3.0+   6.0+ 180.0+ 180.0+  12.0 
#> [241] 180.0+ 180.0+ 180.0+  14.0+  36.0  180.0+  12.0  180.0+ 180.0+   0.5 
#> [251] 180.0+  12.0+ 180.0+ 180.0+  12.0  180.0+   3.0  180.0+ 180.0+ 180.0+
#> [261]   2.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+  15.0  180.0+
#> [271] 180.0+   5.0+  13.0  180.0+   3.0    0.5+   3.0+ 175.0+ 180.0+ 180.0+
#> [281]   7.0+   8.0    5.0   16.0  180.0+ 180.0+ 180.0+   1.0+  18.0   11.0+
#> [291]  79.0  180.0+   4.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+   8.0+   3.0 
#> [301] 175.0  180.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+   6.0   12.0  179.0+
#> [311] 180.0+ 180.0+  18.0  180.0+ 180.0+ 152.0+ 180.0+ 180.0+  93.0    1.0 
#> [321] 101.0    5.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 171.0  180.0+   6.0 
#> [331]   0.5  180.0+ 180.0+ 180.0+ 180.0+  14.0+   7.0+  45.0    5.0+ 103.0 
#> [341]   3.0+  36.0    5.0+  97.0  180.0+   7.0    8.0+ 180.0+ 180.0+ 172.0+
#> [351] 180.0+ 180.0+   7.0    7.0    8.0+  13.0+ 180.0+ 180.0+  19.0  180.0+
#> [361]   1.0   60.0  180.0+ 132.0   10.0+ 180.0+   7.0+ 124.0    9.0  180.0+
#> [371]  12.0  180.0+ 180.0+ 180.0+   2.0   76.0  180.0+ 173.0+ 180.0+ 180.0+
#> [381] 180.0+  28.0  180.0+  16.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+  13.0+
#> [391] 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+  20.0    0.5  180.0+ 180.0+
#> [401]   8.0    3.0   87.0   58.0  180.0+ 180.0+   3.0  180.0+ 175.0    2.0 
#> [411] 180.0+  10.0+ 180.0+   8.0+ 179.0+ 180.0+ 180.0+ 159.0   15.0  180.0+
#> [421]  13.0    4.0+ 180.0+   1.0   57.0   11.0    5.0  180.0+ 180.0+ 180.0+
#> [431] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  11.0+   4.0+ 180.0+  15.0+ 180.0+
#> [441]  10.0    3.0  180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+  17.0+
#> [451] 180.0+ 174.0+   4.0    7.0    0.5  180.0+  12.0  180.0+ 180.0+  46.0 
#> [461] 180.0+   4.0    1.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [471] 180.0+  33.0    5.0  180.0+ 180.0+ 180.0+   1.0  180.0+   7.0+  79.0 
#> [481]   3.0  168.0+ 180.0+ 176.0+ 180.0+  11.0  180.0+   7.0  180.0+ 180.0+
#> [491]  10.0  172.0  119.0  180.0+   8.0  180.0+ 180.0+   1.0    4.0+ 180.0+
#> [501] 152.0+   3.0   29.0   24.0   32.0   23.0  180.0+   3.0+ 180.0+   1.0 
#> [511]   4.0   10.0+ 180.0+   6.0  180.0+   1.0  171.0   43.0    3.0  180.0+
#> [521]   6.0  138.0  180.0+ 180.0+  71.0    8.0   59.0   17.0  161.0   10.0+
#> [531]  93.0  118.0  173.0   37.0  175.0+   7.0+   5.0+ 180.0+ 171.0+ 166.0+
#> [541]  71.0    3.0+  10.0   10.0    6.0+   6.0    1.0  180.0+ 180.0+ 125.0 
#> [551] 180.0+ 180.0+   9.0+ 180.0+  70.0    4.0  180.0+ 180.0+ 180.0+ 180.0+
#> [561]   7.0+ 180.0+  20.0    8.0+ 180.0+ 180.0+ 180.0+ 177.0+ 128.0  167.0 
#> [571]   3.0+  62.0  180.0+   4.0    1.0   38.0  180.0+  90.0  180.0+ 180.0+
#> [581]   4.0    1.0   19.0  180.0+ 114.0  154.0    1.0    5.0+   4.0+ 180.0+
#> [591]  77.0  180.0+   3.0   83.0   88.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+
#> [601] 180.0+ 180.0+   4.0+   5.0  180.0+ 174.0    6.0   70.0  180.0+ 180.0+
#> [611]  14.0    3.0  180.0+ 180.0+  38.0   62.0    6.0+  20.0    4.0   22.0 
#> [621]  65.0   11.0  180.0+  46.0  180.0+   3.0+   4.0  119.0  180.0+   1.0+
#> [631] 180.0+   8.0  110.0  180.0+ 180.0+  46.0   14.0  180.0+  25.0    3.0 
#> [641]  24.0   50.0  126.0    1.0  178.0+  36.0   89.0   75.0    3.0+ 180.0+
#> [651] 168.0  169.0   52.0    4.0    4.0   50.0    1.0+ 179.0+   8.0+ 180.0+
#> [661]  16.0   12.0    8.0   26.0   53.0    7.0+   0.5   69.0    3.0   15.0+
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
#>   0.8244272 
```
