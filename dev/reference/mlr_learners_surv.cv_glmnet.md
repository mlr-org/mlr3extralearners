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

|                      |           |            |                         |                       |
|----------------------|-----------|------------|-------------------------|-----------------------|
| Id                   | Type      | Default    | Levels                  | Range                 |
| alignment            | character | lambda     | lambda, fraction        | \-                    |
| alpha                | numeric   | 1          |                         | \\\[0, 1\]\\          |
| big                  | numeric   | 9.9e+35    |                         | \\(-\infty, \infty)\\ |
| devmax               | numeric   | 0.999      |                         | \\\[0, 1\]\\          |
| dfmax                | integer   | \-         |                         | \\\[0, \infty)\\      |
| eps                  | numeric   | 1e-06      |                         | \\\[0, 1\]\\          |
| epsnr                | numeric   | 1e-08      |                         | \\\[0, 1\]\\          |
| exclude              | untyped   | \-         |                         | \-                    |
| exmx                 | numeric   | 250        |                         | \\(-\infty, \infty)\\ |
| fdev                 | numeric   | 1e-05      |                         | \\\[0, 1\]\\          |
| foldid               | untyped   | NULL       |                         | \-                    |
| gamma                | untyped   | \-         |                         | \-                    |
| grouped              | logical   | TRUE       | TRUE, FALSE             | \-                    |
| intercept            | logical   | TRUE       | TRUE, FALSE             | \-                    |
| keep                 | logical   | FALSE      | TRUE, FALSE             | \-                    |
| lambda               | untyped   | \-         |                         | \-                    |
| lambda.min.ratio     | numeric   | \-         |                         | \\\[0, 1\]\\          |
| lower.limits         | untyped   | -Inf       |                         | \-                    |
| maxit                | integer   | 100000     |                         | \\\[1, \infty)\\      |
| mnlam                | integer   | 5          |                         | \\\[1, \infty)\\      |
| mxit                 | integer   | 100        |                         | \\\[1, \infty)\\      |
| mxitnr               | integer   | 25         |                         | \\\[1, \infty)\\      |
| nfolds               | integer   | 10         |                         | \\\[3, \infty)\\      |
| nlambda              | integer   | 100        |                         | \\\[1, \infty)\\      |
| use_pred_offset      | logical   | TRUE       | TRUE, FALSE             | \-                    |
| parallel             | logical   | FALSE      | TRUE, FALSE             | \-                    |
| penalty.factor       | untyped   | \-         |                         | \-                    |
| pmax                 | integer   | \-         |                         | \\\[0, \infty)\\      |
| pmin                 | numeric   | 1e-09      |                         | \\\[0, 1\]\\          |
| prec                 | numeric   | 1e-10      |                         | \\(-\infty, \infty)\\ |
| predict.gamma        | numeric   | gamma.1se  |                         | \\(-\infty, \infty)\\ |
| relax                | logical   | FALSE      | TRUE, FALSE             | \-                    |
| s                    | numeric   | lambda.1se |                         | \\\[0, \infty)\\      |
| standardize          | logical   | TRUE       | TRUE, FALSE             | \-                    |
| standardize.response | logical   | FALSE      | TRUE, FALSE             | \-                    |
| thresh               | numeric   | 1e-07      |                         | \\\[0, \infty)\\      |
| trace.it             | integer   | 0          |                         | \\\[0, 1\]\\          |
| type.gaussian        | character | \-         | covariance, naive       | \-                    |
| type.logistic        | character | Newton     | Newton, modified.Newton | \-                    |
| type.measure         | character | deviance   | deviance, C             | \-                    |
| type.multinomial     | character | ungrouped  | ungrouped, grouped      | \-                    |
| upper.limits         | untyped   | Inf        |                         | \-                    |
| stype                | integer   | 2          |                         | \\\[1, 2\]\\          |
| ctype                | integer   | \-         |                         | \\\[1, 2\]\\          |

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
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("grace")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> $model
#> 
#> Call:  (if (cv) glmnet::cv.glmnet else glmnet::glmnet)(x = data, y = target,      family = "cox") 
#> 
#> Measure: Partial Likelihood Deviance 
#> 
#>      Lambda Index Measure     SE Nonzero
#> min 0.00338    45   2.942 0.1992       6
#> 1se 0.08770    10   3.129 0.1776       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  35  10      1          9        0   106
#>   [3,]  34   5      0          5        0   120
#>   [4,]  35   2      0        180        0   121
#>   [5,]  35   2      1          1        1   112
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  38  12      1          8        1   120
#>  [11,]  36   5      1          0        1   115
#>  [12,]  33   6      1          1        1   115
#>  [13,]  40  12      1          9        0   153
#>  [14,]  42   3      1          1        1   130
#>  [15,]  37   1      1          0        1   146
#>  [16,]  42   2      0        180        1   100
#>  [17,]  38   5      1          3        0   125
#>  [18,]  40   6      0        180        1   138
#>  [19,]  42   2      0        180        0   100
#>  [20,]  43   3      1          0        1   100
#>  [21,]  41   2      1          1        0   166
#>  [22,]  40   1      1          0        1   145
#>  [23,]  43   4      1          0        1   130
#>  [24,]  42  15      1         13        1   125
#>  [25,]  40   3      1          1        0   170
#>  [26,]  42  12      1         10        1   170
#>  [27,]  43   2      1          1        1   116
#>  [28,]  42   2      0        180        1   124
#>  [29,]  44   5      1          1        0   170
#>  [30,]  45   3      0        180        1   154
#>  [31,]  41  13      1          1        0   140
#>  [32,]  45   6      0        180        1   170
#>  [33,]  41   5      1          4        1   141
#>  [34,]  44   2      1          1        1   150
#>  [35,]  43   2      0        180        1   140
#>  [36,]  45   2      0        180        1   140
#>  [37,]  46  15      0        180        0   120
#>  [38,]  46   2      1          1        0   126
#>  [39,]  47   4      1          3        0   118
#>  [40,]  44   3      1          0        1   180
#>  [41,]  46   7      1          2        0   166
#>  [42,]  45   4      1          0        0   124
#>  [43,]  47   6      1          0        1   116
#>  [44,]  46  13      1         10        0   100
#>  [45,]  44   0      1          0        1    96
#>  [46,]  43   3      1          0        1   124
#>  [47,]  45   8      1          0        1   117
#>  [48,]  45   5      0          5        0   141
#>  [49,]  46   6      1          0        1   100
#>  [50,]  44   4      1          0        1   114
#>  [51,]  44   9      1          8        1   135
#>  [52,]  45   5      0        180        1   190
#>  [53,]  46  15      0        180        1   120
#>  [54,]  45   9      1          0        1   145
#>  [55,]  47   5      1          3        1   130
#>  [56,]  47   9      1          6        0   170
#>  [57,]  46   3      1          0        1   119
#>  [58,]  49   4      0        180        0   117
#>  [59,]  47  10      0         10        1   140
#>  [60,]  50   1      1          0        1   129
#>  [61,]  50   6      1          2        1   140
#>  [62,]  46   3      1          1        1   140
#>  [63,]  46   9      1          9        1   122
#>  [64,]  49   2      0          2        0   105
#>  [65,]  51   1      0          1        1   145
#>  [66,]  49  15      1         11        1   160
#>  [67,]  49  23      0        179        1   112
#>  [68,]  46   6      1          0        1   156
#>  [69,]  52   2      0        180        1   170
#>  [70,]  50   7      1          0        1    92
#>  [71,]  51   3      1          2        0   113
#>  [72,]  50   1      1          0        0   150
#>  [73,]  49   7      1          4        1    90
#>  [74,]  52   2      0        180        0   155
#>  [75,]  46   3      0        180        1   120
#>  [76,]  50   4      1          1        0   150
#>  [77,]  48   7      1          0        1   110
#>  [78,]  53   8      0         36        1   160
#>  [79,]  48  17      1         10        0   111
#>  [80,]  47   2      1          1        0   110
#>  [81,]  52   4      1          4        0   152
#>  [82,]  49   9      1          3        0   102
#>  [83,]  53   7      1          0        0   199
#>  [84,]  54   6      1          3        0   129
#>  [85,]  51   3      1          1        0   140
#>  [86,]  50   2      0          5        1   106
#>  [87,]  50  10      1          6        0   122
#>  [88,]  50  14      1         13        0   170
#>  [89,]  53   8      1          7        0   160
#>  [90,]  51  25      1          1        0   202
#>  [91,]  49   5      1          2        1   150
#>  [92,]  48   6      0        180        0   160
#>  [93,]  54   9      1          0        1   138
#>  [94,]  49  16      0         16        0   125
#>  [95,]  54  23      1         10        0   131
#>  [96,]  54   4      1          0        1   121
#>  [97,]  50   3      0        174        1   153
#>  [98,]  55  28      1         13        1   160
#>  [99,]  49   6      1          0        1   130
#> [100,]  53   9      0          9        1    95
#> [101,]  53   8      1          0        1   130
#> [102,]  52   5      0        175        1   117
#> [103,]  55   1      0        180        0   127
#> [104,]  54   1      0        180        0   162
#> [105,]  54   7      1          0        1   100
#> [106,]  56   3      0        180        1   193
#> [107,]  56   2      0        180        0   132
#> [108,]  55   5      1          4        1   120
#> [109,]  52   8      0        180        0   119
#> [110,]  53  18      1          9        1   150
#> [111,]  55   6      0        180        0   170
#> [112,]  52  16      0         16        0   152
#> [113,]  52  16      1         14        0   170
#> [114,]  53   4      0        180        1   150
#> [115,]  55   6      0        180        1   100
#> [116,]  55   2      0        134        1   140
#> [117,]  54   3      0        180        0   128
#> [118,]  55   1      0          2        0   130
#> [119,]  52   9      1          3        0   170
#> [120,]  54   2      1          1        1   176
#> [121,]  57   1      0        180        1   156
#> [122,]  57   1      0          1        1   100
#> [123,]  56   4      1          0        1   140
#> [124,]  52   2      0        180        0   140
#> [125,]  52  15      1         14        0   130
#> [126,]  53   3      1          0        1   200
#> [127,]  57  10      0        180        1   170
#> [128,]  58   8      0          8        1   130
#> [129,]  54   5      0        180        1   108
#> [130,]  55   3      1          1        1   156
#> [131,]  57   0      0          0        1   150
#> [132,]  53  21      1         13        1   130
#> [133,]  59   3      1          1        0   172
#> [134,]  57   4      0        180        1   119
#> [135,]  58   6      1          0        1    90
#> [136,]  53  15      1         10        1   130
#> [137,]  54  17      1          8        1   227
#> [138,]  55   9      1          2        1   147
#> [139,]  54  23      1          8        0   120
#> [140,]  57   4      1          2        1   185
#> [141,]  53   4      0        147        1   145
#> [142,]  55   3      1          2        0   140
#> [143,]  55   5      0          5        1   131
#> [144,]  58   1      1          1        1   200
#> [145,]  55   5      1          0        0   140
#> [146,]  56   7      1          5        1   120
#> [147,]  55   2      0          2        0   106
#> [148,]  59   9      1          1        1   125
#> [149,]  60  11      1          9        0   106
#> [150,]  59   3      0        180        0   120
#> [151,]  57   2      0          2        1   120
#> [152,]  60   5      1          1        0   138
#> [153,]  57   5      0        180        1   130
#> [154,]  58  11      1          9        1   124
#> [155,]  55   5      1          0        1   160
#> [156,]  57  10      1          9        0   103
#> [157,]  59   6      1          0        1   140
#> [158,]  59   5      0        180        1   155
#> [159,]  59   4      1          0        1   152
#> [160,]  58  26      1          0        1   189
#> [161,]  58   4      1          3        0   120
#> [162,]  58   8      0        161        1   140
#> [163,]  58  14      1          6        0   190
#> [164,]  61   4      1          3        0   151
#> [165,]  61   9      1          8        0   150
#> [166,]  61   3      1          2        1   102
#> [167,]  58   1      0          1        1   100
#> [168,]  58  10      0         10        1   150
#> [169,]  57   4      1          3        0   138
#> [170,]  57  11      0        180        1   150
#> [171,]  61   3      0         17        0   143
#> [172,]  57   3      1          2        0   120
#> [173,]  58  19      1         13        1   140
#> [174,]  56  18      1         11        1   165
#> [175,]  59   9      1          0        1    80
#> [176,]  55   4      1          3        1   160
#> [177,]  58  11      0        172        1   135
#> [178,]  61   4      1          0        1   115
#> [179,]  61  13      1         12        1   130
#> [180,]  57  15      1         13        1   110
#> [181,]  59   5      1          2        0   182
#> [182,]  58   5      1          1        1   135
#> [183,]  61  13      0         13        0   210
#> [184,]  58   8      1          5        0   152
#> [185,]  62  10      1          0        1   153
#> [186,]  62   7      1          2        1   180
#> [187,]  61  18      0        170        0   140
#> [188,]  61  28      1          7        0   133
#> [189,]  58   8      1          3        1   150
#> [190,]  57   7      0        169        0   180
#> [191,]  61   7      0          7        1   150
#> [192,]  60   7      0          7        0   147
#> [193,]  57  12      1          9        1   120
#> [194,]  62   4      1          0        0   160
#> [195,]  60  17      1          8        1   140
#> [196,]  62   4      1          3        0   173
#> [197,]  58   2      0         30        0   202
#> [198,]  59   1      0        180        0   155
#> [199,]  61   5      0          5        1   110
#> [200,]  58  11      1          9        0   179
#> [201,]  57   2      1          1        0   159
#> [202,]  62  17      1         10        1   180
#> [203,]  62   1      1          0        1   172
#> [204,]  58   7      0        180        1   150
#> [205,]  61   7      0        180        0   135
#> [206,]  63   4      1          3        0   222
#> [207,]  62   3      0        180        1   105
#> [208,]  63   4      0        180        1   190
#> [209,]  63  15      1         10        1   126
#> [210,]  63   4      1          1        0   155
#> [211,]  59   8      0        180        1   140
#> [212,]  61   9      1          9        1   150
#> [213,]  58   9      1          9        0   110
#> [214,]  62   7      0          7        0   150
#> [215,]  60   7      1          5        1   141
#> [216,]  60   7      0          7        0   140
#> [217,]  60   7      1          1        1    90
#> [218,]  63   1      0          1        0   130
#> [219,]  62   6      0        180        0   170
#> [220,]  60   3      0          3        0   168
#> [221,]  64  10      1          9        0   160
#> [222,]  62   6      0          6        0   120
#> [223,]  63  12      1         10        0   200
#> [224,]  59  10      0        180        1   130
#> [225,]  61   6      1          1        1   117
#> [226,]  64   6      1          0        1   140
#> [227,]  63  10      1          0        1   148
#> [228,]  63  14      1          9        0   123
#> [229,]  65  36      1         11        0   140
#> [230,]  63   4      1          3        0   162
#> [231,]  61  10      1          2        1   194
#> [232,]  64  32      1          9        1   160
#> [233,]  63  12      1          9        0   114
#> [234,]  65  10      1          8        1   120
#> [235,]  64   0      0          0        1    90
#> [236,]  60   6      0        180        0   130
#> [237,]  64  21      1         10        0   190
#> [238,]  61  12      1         11        0   154
#> [239,]  64   9      0        180        0   150
#> [240,]  61   4      0        180        1   113
#> [241,]  63  16      1          7        1   110
#> [242,]  64   7      0        180        1   120
#> [243,]  63  12      0         12        1   150
#> [244,]  62   3      1          1        1   199
#> [245,]  65   6      0          9        0   112
#> [246,]  65   3      1          0        1    80
#> [247,]  63   5      1          4        0   170
#> [248,]  67  11      0         11        1   100
#> [249,]  64   2      0          2        0   201
#> [250,]  62   9      0        180        0   145
#> [251,]  61  14      1          5        0   140
#> [252,]  61  15      1         10        0   130
#> [253,]  63   9      1          8        1   160
#> [254,]  63   3      1          2        0   120
#> [255,]  63   2      1          0        0   140
#> [256,]  65   8      1          0        1   140
#> [257,]  67   6      0        180        1   170
#> [258,]  65  15      1         11        1   160
#> [259,]  64  13      1         12        1   150
#> [260,]  64   6      1          0        1   125
#> [261,]  66   7      1          0        1   115
#> [262,]  65   3      0          3        0   105
#> [263,]  67   4      1          3        0   130
#> [264,]  66   6      1          0        1   140
#> [265,]  65   2      1          1        1   170
#> [266,]  68   1      0        180        1   166
#> [267,]  64  10      1          9        1   110
#> [268,]  63   7      1          0        0   162
#> [269,]  67   8      1          1        1   130
#> [270,]  68   5      0          5        1    90
#> [271,]  63  10      0         16        1   160
#> [272,]  66  14      0        180        0   130
#> [273,]  64   1      0          1        1   120
#> [274,]  68  18      0        180        1   260
#> [275,]  65  17      1         14        1   100
#> [276,]  63   8      1          1        1   162
#> [277,]  65  18      1          3        0   120
#> [278,]  67  11      0         11        0   150
#> [279,]  68  11      0        180        0   160
#> [280,]  68  14      0         79        0   172
#> [281,]  66  12      1         10        1   150
#> [282,]  65  15      1         12        1   150
#> [283,]  66  11      1          0        0   100
#> [284,]  65   4      1          2        1   145
#> [285,]  69  12      0         15        1   140
#> [286,]  66  15      1         13        1   160
#> [287,]  63   2      0        180        0   150
#> [288,]  69  21      1         10        0   180
#> [289,]  66   9      1          8        0   130
#> [290,]  63   8      0        180        1   120
#> [291,]  68  14      1         13        1   140
#> [292,]  69   1      1          0        0   170
#> [293,]  67   1      0        180        1   160
#> [294,]  68  10      1         10        1   150
#> [295,]  67   7      1          4        1   130
#> [296,]  65   6      0          6        0    80
#> [297,]  65  10      1          1        1   148
#> [298,]  69   6      0         99        1   140
#> [299,]  65   4      1          1        0   130
#> [300,]  70  15      1         12        1   132
#> [301,]  64   0      1          0        1   118
#> [302,]  67   2      0         18        0   131
#> [303,]  68   4      1          0        1   160
#> [304,]  69   4      1          3        1   150
#> [305,]  65  13      1         12        1   130
#> [306,]  69  17      1         10        0   140
#> [307,]  66   6      0        180        0   140
#> [308,]  65   1      0          1        1   120
#> [309,]  68  18      1          0        1   160
#> [310,]  68   4      0          4        1   190
#> [311,]  70   7      1          0        1   190
#> [312,]  71  20      1          0        1   160
#> [313,]  66   9      1          3        1   151
#> [314,]  70   4      1          0        1   180
#> [315,]  70  14      0        171        0   166
#> [316,]  66   4      0        180        0   130
#> [317,]  67  10      1          9        0   200
#> [318,]  67   6      1          4        0   130
#> [319,]  68  18      1         14        1   170
#> [320,]  69   0      0          0        1   148
#> [321,]  65   2      0        180        0   130
#> [322,]  68   7      1          0        1   150
#> [323,]  67  14      1         13        0   130
#> [324,]  65  14      1         13        1   150
#> [325,]  71   7      0          7        0   230
#> [326,]  71   6      0         45        1   158
#> [327,]  70  22      1         13        0   103
#> [328,]  67   1      0         36        1   104
#> [329,]  67   5      0          5        0   130
#> [330,]  69   6      1          4        1   174
#> [331,]  72   3      1          0        1   132
#> [332,]  72   7      0          7        1   110
#> [333,]  69   8      1          7        1   108
#> [334,]  66   2      1          1        0   123
#> [335,]  69  19      0        180        0   130
#> [336,]  67  14      0        172        1   140
#> [337,]  69  11      1          0        1   120
#> [338,]  66   2      0        180        0   130
#> [339,]  67   7      1          4        0   122
#> [340,]  69   4      1          3        0   132
#> [341,]  68   2      0          7        1   130
#> [342,]  69   8      1          2        0   121
#> [343,]  70   3      0        123        0   130
#> [344,]  70   9      0        180        1   142
#> [345,]  67  22      1          1        1   140
#> [346,]  67  12      1          8        0   120
#> [347,]  69   5      0         76        0   120
#> [348,]  67   8      1          0        1   130
#> [349,]  72  13      1         11        1   195
#> [350,]  68  10      1          8        1   160
#> [351,]  66  24      1         13        0   130
#> [352,]  70  35      1          0        1   105
#> [353,]  72  30      1          0        1   145
#> [354,]  70   7      0          7        0   102
#> [355,]  68   7      1          2        0   135
#> [356,]  73  20      1          0        1   170
#> [357,]  71   6      0          9        0   120
#> [358,]  67   5      1          0        1   147
#> [359,]  67   9      0        180        0   158
#> [360,]  73  13      0        152        1   130
#> [361,]  70   5      0        180        0   150
#> [362,]  67   4      1          1        0   134
#> [363,]  72   6      1          5        0   115
#> [364,]  70   3      0        180        0   121
#> [365,]  69   3      0        180        0   220
#> [366,]  71   3      1          2        0   150
#> [367,]  68   4      1          3        0   210
#> [368,]  72   5      0         28        0   120
#> [369,]  71   5      0        180        0   191
#> [370,]  73   6      0        180        1   117
#> [371,]  69   8      1          1        0   164
#> [372,]  68   7      0        180        1   130
#> [373,]  72  16      1          1        1   130
#> [374,]  69   1      1          0        0   155
#> [375,]  73   6      1          0        1   270
#> [376,]  71   2      1          0        1   180
#> [377,]  73   7      0          7        1   140
#> [378,]  70  13      1          9        0   100
#> [379,]  73   0      0        180        1   161
#> [380,]  74   8      1          0        1    85
#> [381,]  73   4      0        180        1   154
#> [382,]  69   2      1          0        1   110
#> [383,]  71   3      1          1        0   150
#> [384,]  71  15      1         11        0   165
#> [385,]  74  20      0         20        1   180
#> [386,]  68   9      0        180        1   120
#> [387,]  71  20      1         10        0   140
#> [388,]  74   0      1          0        1    90
#> [389,]  70   5      1          0        1   190
#> [390,]  71  17      1         11        0   160
#> [391,]  71   8      1          7        0   149
#> [392,]  71   3      1          2        1   190
#> [393,]  69  12      1          1        1   149
#> [394,]  74   4      0          4        0   120
#> [395,]  73   4      0         58        1   160
#> [396,]  72   5      1          3        1   160
#> [397,]  70   3      0        180        1   154
#> [398,]  73   6      0        180        0   110
#> [399,]  72  15      1          0        1   150
#> [400,]  71   7      1          2        0   143
#> [401,]  71  13      1          8        0   121
#> [402,]  69   2      1          1        1    80
#> [403,]  70   4      1          0        1   140
#> [404,]  71  14      1         13        1   170
#> [405,]  74   7      1          0        1   117
#> [406,]  69   7      0        180        1   144
#> [407,]  72  15      1         13        0   156
#> [408,]  70   8      0          8        0   120
#> [409,]  75   1      0          1        0   133
#> [410,]  75   2      1          1        0   145
#> [411,]  73  10      1          9        1   146
#> [412,]  72  10      1          9        1   160
#> [413,]  73  10      1         10        1   120
#> [414,]  74  15      1          9        1   179
#> [415,]  71   2      0         10        1   112
#> [416,]  73   1      0          1        1    80
#> [417,]  75   9      1          7        0   140
#> [418,]  75  13      1          1        1   130
#> [419,]  71   4      0          4        0   134
#> [420,]  72  15      1         12        1   120
#> [421,]  73  10      1          8        0   120
#> [422,]  70   7      1          4        0   184
#> [423,]  72   7      0         57        1   145
#> [424,]  73  10      0        180        0   162
#> [425,]  76  25      1         12        1   170
#> [426,]  73  12      1         12        1   140
#> [427,]  72   2      0        180        0   120
#> [428,]  75   1      0        180        1   140
#> [429,]  72   4      1          0        1   197
#> [430,]  71   3      1          0        0   144
#> [431,]  73   5      0        180        0   126
#> [432,]  74  34      1          8        1   233
#> [433,]  76   3      1          0        1   120
#> [434,]  71  32      1         12        1   107
#> [435,]  77  11      0         11        1   150
#> [436,]  77   4      0          4        0   185
#> [437,]  72   7      1          2        0   142
#> [438,]  73  15      0         15        1   160
#> [439,]  73  10      1         10        0   124
#> [440,]  74   7      0        180        1   150
#> [441,]  74   3      0          3        1   128
#> [442,]  74   2      1          1        0   140
#> [443,]  76   8      1          0        1   141
#> [444,]  73   6      0          6        1   114
#> [445,]  74   2      0        180        0   190
#> [446,]  72   4      1          3        0   160
#> [447,]  73   4      1          3        1   125
#> [448,]  76  13      1         10        0   110
#> [449,]  75   4      1          0        1   122
#> [450,]  75   7      0          7        0   190
#> [451,]  75   0      0          0        1   130
#> [452,]  73  13      1         11        0   195
#> [453,]  75  12      0         12        1   160
#> [454,]  74   8      1          0        1   105
#> [455,]  75   4      1          2        1   188
#> [456,]  74   6      0        180        0   160
#> [457,]  76   4      0          4        1   155
#> [458,]  75   1      0          1        1   125
#> [459,]  74   2      0        180        0   111
#> [460,]  73   0      0        180        0   156
#> [461,]  72   5      0        180        0   120
#> [462,]  78  12      1         11        1   160
#> [463,]  76   5      0        180        0   185
#> [464,]  74  10      1          0        1   135
#> [465,]  76   5      1          0        1   167
#> [466,]  74   8      1          8        1   170
#> [467,]  75   9      0        180        1   140
#> [468,]  73  33      1         12        1   175
#> [469,]  77   5      1          0        0   123
#> [470,]  77  12      1          9        1   100
#> [471,]  77  12      0        180        0   130
#> [472,]  77   1      1          0        1    90
#> [473,]  78   5      1          0        1   170
#> [474,]  74   6      0         79        1   140
#> [475,]  75   3      1          1        1   171
#> [476,]  74   9      1          8        0   200
#> [477,]  79  10      1          8        0   190
#> [478,]  74   2      1          0        1   130
#> [479,]  78  18      0         18        1   144
#> [480,]  77   3      0        180        0   110
#> [481,]  73  11      1          2        1   110
#> [482,]  78   8      1          6        1   110
#> [483,]  74   7      0          7        0   161
#> [484,]  79   6      0        180        0   170
#> [485,]  78   0      0        180        1   212
#> [486,]  75   5      0        119        1   150
#> [487,]  75  12      1          1        1   120
#> [488,]  78  15      0        180        1   270
#> [489,]  80   8      0          8        1   120
#> [490,]  75  13      1          6        0   150
#> [491,]  76   1      0          1        1    83
#> [492,]  79   4      0         80        0   145
#> [493,]  78  12      1          9        0   150
#> [494,]  78   2      1          1        0   130
#> [495,]  77   2      1          0        1   143
#> [496,]  78  10      0        180        1   130
#> [497,]  75  11      1          4        0   162
#> [498,]  75   3      0          3        0     0
#> [499,]  76   7      0         29        1   150
#> [500,]  77  24      0         24        1   160
#> [501,]  79   8      0         32        1   120
#> [502,]  80   9      0         23        1   128
#> [503,]  80   6      0          6        1   150
#> [504,]  78   6      1          0        1   240
#> [505,]  76   3      1          0        1   140
#> [506,]  79  11      0        180        0   160
#> [507,]  79   2      1          0        1   121
#> [508,]  76  12      1         10        1   127
#> [509,]  77   6      0          6        1   107
#> [510,]  76   1      0          1        1   140
#> [511,]  77  31      1          3        1   161
#> [512,]  76   1      0          1        1    90
#> [513,]  78   7      1          0        1   110
#> [514,]  79   3      0          3        0   120
#> [515,]  77   6      0          6        1   144
#> [516,]  81   1      0        180        0   120
#> [517,]  80  15      1         12        1   150
#> [518,]  77   9      1          4        0   141
#> [519,]  82   5      0          8        1   120
#> [520,]  78   4      0         59        1   112
#> [521,]  80  17      1         12        0   100
#> [522,]  79  10      0         10        1   120
#> [523,]  81   4      1          2        1   126
#> [524,]  79  28      0        164        0   100
#> [525,]  80   9      0        118        1   186
#> [526,]  80   6      0        173        1   160
#> [527,]  79   1      0         37        1   140
#> [528,]  81   3      0        180        0   184
#> [529,]  81   2      0        175        0   172
#> [530,]  77  13      1          0        1   190
#> [531,]  78  15      0         15        0   165
#> [532,]  78   4      0        180        0   175
#> [533,]  79   3      0          3        1   101
#> [534,]  78  26      1          5        0   194
#> [535,]  76   1      0        166        0   131
#> [536,]  81   4      1          1        1   104
#> [537,]  78  20      1          0        1   109
#> [538,]  80   1      0          1        0   100
#> [539,]  78   3      1          1        1   152
#> [540,]  82   3      1          1        1   144
#> [541,]  80   2      1          1        0   168
#> [542,]  78   2      0        180        0   148
#> [543,]  80   5      0          5        1   130
#> [544,]  82   1      1          0        1    82
#> [545,]  79  10      0        180        1   150
#> [546,]  81   1      0        108        0   129
#> [547,]  78  12      0        180        0   134
#> [548,]  79   1      0        125        0   193
#> [549,]  82  21      1          2        0   155
#> [550,]  84  22      1         10        0   180
#> [551,]  79   4      0          4        1   121
#> [552,]  82   5      0        180        0   110
#> [553,]  79   7      1          6        0   130
#> [554,]  83   4      0        103        0    97
#> [555,]  81  11      1          8        0   160
#> [556,]  81   5      0        177        0    41
#> [557,]  80  11      1          8        0   170
#> [558,]  79   4      0          4        1   183
#> [559,]  78   9      1          4        1   120
#> [560,]  79   1      0        180        1   170
#> [561,]  81  15      0        180        1   140
#> [562,]  81  20      1          9        0   170
#> [563,]  83   8      0          8        0   115
#> [564,]  80   6      1          0        1   150
#> [565,]  80  11      1          8        0   110
#> [566,]  79   7      0        177        0   197
#> [567,]  79   0      1          0        1    96
#> [568,]  81   2      1          1        0   198
#> [569,]  83   2      0          2        1   155
#> [570,]  82   6      0        128        1   100
#> [571,]  84   4      0        167        0   198
#> [572,]  80   3      1          1        1   230
#> [573,]  84   4      0          4        1    85
#> [574,]  84   1      0         38        1   205
#> [575,]  83   3      0        180        0   174
#> [576,]  81   4      0         90        1   138
#> [577,]  79   9      1          8        0   150
#> [578,]  80  13      1          8        1   140
#> [579,]  84   4      0         89        1   129
#> [580,]  79   4      0          4        1    60
#> [581,]  83   1      0          1        1   100
#> [582,]  82  19      0         19        0   120
#> [583,]  80  30      1         13        0   220
#> [584,]  83   9      0        180        0   198
#> [585,]  83   3      0        114        0    98
#> [586,]  81  14      1         12        1   128
#> [587,]  84  15      1         13        1   110
#> [588,]  81   1      0          1        1   145
#> [589,]  81  12      0         12        1   163
#> [590,]  82  16      1          8        0   103
#> [591,]  82   5      1          0        1   146
#> [592,]  81   4      0          4        0   160
#> [593,]  86  12      0        180        1   120
#> [594,]  83  12      1          2        1   170
#> [595,]  81  19      1         14        0   120
#> [596,]  82  15      1          0        0   183
#> [597,]  80   2      0         88        0   135
#> [598,]  83   7      0        126        0   135
#> [599,]  81  16      1          9        0   180
#> [600,]  84   6      0        165        0   145
#> [601,]  81  13      0        180        0   152
#> [602,]  85   3      0          3        1   118
#> [603,]  81   2      1          0        1   118
#> [604,]  81   4      0        180        0   160
#> [605,]  83   4      0          4        0   130
#> [606,]  87   2      0          5        1   137
#> [607,]  86  12      1          0        1   132
#> [608,]  82  14      1         11        1   103
#> [609,]  86   6      1          0        1   140
#> [610,]  84  16      0         70        1   150
#> [611,]  83  19      0         43        0   150
#> [612,]  83  10      1          0        1   190
#> [613,]  84   7      1          2        0   148
#> [614,]  84   3      0        180        1   170
#> [615,]  86   4      0         38        1   122
#> [616,]  82   4      0          4        0   130
#> [617,]  85   3      0          3        1   113
#> [618,]  84  13      0         62        1   100
#> [619,]  86   6      1          1        0   112
#> [620,]  88   4      0          4        0   100
#> [621,]  83  20      1          3        1   150
#> [622,]  85  22      0         22        1   184
#> [623,]  83   9      0         65        1   150
#> [624,]  86   9      1          7        1   142
#> [625,]  87   2      0        180        1   130
#> [626,]  87   8      0          8        1   157
#> [627,]  88   4      0          4        0    86
#> [628,]  89   4      0          4        1   153
#> [629,]  89   5      0        119        1   140
#> [630,]  84   2      0        110        1   174
#> [631,]  87  29      0         29        1    97
#> [632,]  87  15      1          9        1   138
#> [633,]  84   0      0        180        1   136
#> [634,]  89  10      0         46        1   170
#> [635,]  90  14      0         14        1   100
#> [636,]  88   1      0          1        0   135
#> [637,]  86   4      0        180        1   145
#> [638,]  91   8      0          8        0   100
#> [639,]  87   2      0        180        0   160
#> [640,]  91  10      0        145        0   135
#> [641,]  88   7      0         24        0   119
#> [642,]  88   8      0         50        1   154
#> [643,]  90  11      1         10        1   186
#> [644,]  87   6      0        126        1   168
#> [645,]  86   9      1          7        0   130
#> [646,]  90   4      1          0        0   121
#> [647,]  91   1      0          1        1    74
#> [648,]  88   3      1          2        0   159
#> [649,]  91   3      0         33        1   137
#> [650,]  88   5      0        158        0   100
#> [651,]  87   7      0         74        1   105
#> [652,]  89  12      1          0        1   130
#> [653,]  89   2      0        168        0   118
#> [654,]  91   4      1          0        1   120
#> [655,]  90  19      1         11        1   129
#> [656,]  94   6      0         50        0    78
#> [657,]  93   8      0        179        1   110
#> [658,]  92   4      0         76        1   149
#> [659,]  91   1      0        180        0   158
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  96   3      0         12        1    97
#> [663,]  95   8      1          5        1   150
#> [664,]  91  12      0         53        1   212
#> [665,]  91   7      0          7        0   135
#> [666,]  92   5      0         69        0   139
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+  12.0 
#>  [11]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+   3.0 
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+
#>  [31] 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+
#>  [61] 180.0+ 180.0+ 180.0+   2.0    1.0  179.0+ 179.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+
#>  [81]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+ 180.0+  16.0+ 152.0+ 180.0+ 174.0+  28.0    6.0+   9.0+
#> [101] 180.0+ 175.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [111] 180.0+  16.0+  16.0  180.0+ 180.0+ 134.0+ 180.0+   2.0  180.0+ 180.0+
#> [121] 180.0+   1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+
#> [131]   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0  180.0+   4.0+
#> [141] 147.0+ 180.0+   5.0+   1.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [151]   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+
#> [161] 180.0+ 161.0+ 171.0+ 180.0+ 180.0+   3.0    1.0   10.0+ 180.0+ 180.0+
#> [171]  17.0    3.0+  19.0  180.0+   9.0+ 180.0+ 172.0+ 180.0+ 180.0+  15.0 
#> [181] 180.0+ 180.0+  13.0+   8.0+ 180.0+ 180.0+ 170.0   94.0  180.0+ 169.0 
#> [191]   7.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+  30.0  180.0+   5.0  180.0+
#> [201] 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [211] 180.0+ 180.0+   9.0    7.0+  84.0    7.0+ 180.0+   1.0  180.0+   3.0+
#> [221] 167.0    6.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  14.0+  36.0  180.0+
#> [231]  88.0  180.0+  12.0  180.0+   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+
#> [241] 180.0+ 180.0+  12.0  180.0+   9.0    3.0  180.0+  11.0+   2.0+ 180.0+
#> [251] 180.0+ 180.0+ 180.0+   3.0+   2.0+  15.0  180.0+ 180.0+  13.0  180.0+
#> [261] 179.0+   3.0  180.0+ 180.0+ 175.0+ 180.0+ 180.0+   7.0+   8.0    5.0 
#> [271]  16.0  180.0+   1.0  180.0+ 180.0+ 180.0+ 123.0+  11.0+ 180.0+  79.0 
#> [281]  80.0   15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+ 180.0+
#> [291] 180.0+ 175.0  180.0+  10.0  180.0+   6.0  180.0+  99.0  180.0+ 180.0+
#> [301]   0.5   18.0  180.0+ 152.0+ 180.0+ 180.0+ 180.0+   1.0   18.0+   4.0 
#> [311]   7.0+ 180.0+ 180.0+ 180.0+ 171.0  180.0+ 174.0+   6.0  180.0+   0.5 
#> [321] 180.0+ 180.0+ 180.0+  14.0+   7.0+  45.0  180.0+  36.0    5.0+  97.0 
#> [331] 180.0+   7.0    8.0+   2.0+ 180.0+ 172.0+ 180.0+ 180.0+   7.0  180.0+
#> [341]   7.0    8.0+ 123.0  180.0+  51.0  180.0+  76.0  180.0+ 132.0   10.0+
#> [351] 180.0+ 180.0+ 162.0    7.0+   7.0+ 124.0    9.0  180.0+ 180.0+ 152.0 
#> [361] 180.0+  76.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+
#> [371] 180.0+ 180.0+  16.0+ 180.0+   6.0  180.0+   7.0+  13.0+ 180.0+ 180.0+
#> [381] 180.0+   2.0    3.0+ 180.0+  20.0  180.0+  20.0    0.5  180.0+ 180.0+
#> [391]   8.0    3.0   12.0    4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [401] 175.0    2.0  180.0+  14.0+ 180.0+ 180.0+ 180.0+   8.0+   1.0  180.0+
#> [411] 180.0+ 159.0   15.0  180.0+  10.0    1.0  180.0+  13.0    4.0+ 180.0+
#> [421]  10.0  104.0+  57.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [431] 180.0+  34.0  180.0+ 177.0+  11.0+   4.0+   7.0   15.0+  10.0  180.0+
#> [441]   3.0  180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+ 174.0+   4.0    7.0 
#> [451]   0.5  180.0+  12.0  180.0+  46.0  180.0+   4.0    1.0  180.0+ 180.0+
#> [461] 180.0+  12.0  180.0+ 180.0+ 180.0+   8.0  180.0+  33.0    5.0  180.0+
#> [471] 180.0+   1.0  180.0+  79.0    3.0  168.0+ 180.0+ 176.0+  18.0  180.0+
#> [481]  11.0    8.0+   7.0  180.0+ 180.0+ 119.0   12.0  180.0+   8.0  180.0+
#> [491]   1.0   80.0  180.0+ 180.0+   2.0  180.0+ 152.0+   3.0   29.0   24.0 
#> [501]  32.0   23.0    6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   6.0    1.0 
#> [511] 171.0    1.0   43.0    3.0    6.0  180.0+ 180.0+  71.0    8.0   59.0 
#> [521]  17.0   10.0+  93.0  164.0  118.0  173.0   37.0  180.0+ 175.0+  22.0 
#> [531]  15.0+ 180.0+   3.0  171.0+ 166.0+  71.0   20.0+   1.0    3.0+ 180.0+
#> [541]  10.0  180.0+   5.0    1.0  180.0+ 108.0  180.0+ 125.0  180.0+ 180.0+
#> [551]   4.0  180.0+ 180.0+ 103.0  180.0+ 177.0+ 169.0    4.0  180.0+ 180.0+
#> [561] 180.0+  20.0    8.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+   2.0  128.0 
#> [571] 167.0    3.0+   4.0   38.0  180.0+  90.0  180.0+ 180.0+  89.0    4.0 
#> [581]   1.0   19.0   30.0  180.0+ 114.0  180.0+ 180.0+   1.0   12.0   16.0+
#> [591]   5.0+   4.0+ 180.0+  77.0  180.0+  83.0   88.0  126.0  180.0+ 165.0 
#> [601] 180.0+   3.0+ 180.0+ 180.0+   4.0+   5.0  180.0+ 174.0    6.0   70.0 
#> [611]  43.0  180.0+ 180.0+ 180.0+  38.0    4.0    3.0+  62.0    6.0+   4.0+
#> [621]  20.0   22.0   65.0   11.0  180.0+   8.0+   4.0    4.0  119.0  110.0 
#> [631]  29.0  180.0+ 180.0+  46.0   14.0    1.0+ 180.0+   8.0  180.0+ 145.0 
#> [641]  24.0   50.0   11.0  126.0  180.0+   4.0    1.0   75.0   33.0  158.0 
#> [651]  74.0  180.0+ 168.0    4.0  180.0+  50.0  179.0+  76.0  180.0+  16.0 
#> [661]  67.0   12.0    8.0   53.0    7.0+  69.0    2.0  180.0+   3.0   15.0+
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
#>   0.8491466 
```
