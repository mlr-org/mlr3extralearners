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
#> min 0.00348    45   2.794 0.1432       6
#> 1se 0.06832    13   2.926 0.1381       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  35   5      1          2        0   172
#>   [2,]  35  10      1          9        0   106
#>   [3,]  34   5      0          5        0   120
#>   [4,]  35   2      0        180        0   121
#>   [5,]  37   9      0        180        1   151
#>   [6,]  36   1      0        180        1   155
#>   [7,]  35   0      0        180        1   119
#>   [8,]  38  16      1         10        0   160
#>   [9,]  38  12      1         11        1    92
#>  [10,]  40   2      1          1        1   148
#>  [11,]  42   2      0        180        1   100
#>  [12,]  40   6      0        180        1   138
#>  [13,]  40  11      1         10        1   120
#>  [14,]  41   2      1          1        0   166
#>  [15,]  40   1      1          0        1   145
#>  [16,]  42  15      1         13        1   125
#>  [17,]  40   3      1          1        0   170
#>  [18,]  42  12      1         10        1   170
#>  [19,]  43   2      1          1        1   116
#>  [20,]  42   2      0        180        1   124
#>  [21,]  41  10      1          8        0   150
#>  [22,]  44   3      0        180        0   141
#>  [23,]  45   9      1          7        0   110
#>  [24,]  44   2      1          1        1   150
#>  [25,]  43   2      0        180        1   140
#>  [26,]  45   2      0        180        1   140
#>  [27,]  46  15      0        180        0   120
#>  [28,]  46   2      1          1        0   126
#>  [29,]  47   4      1          3        0   118
#>  [30,]  48  15      0        180        1   160
#>  [31,]  45   3      0        150        0   130
#>  [32,]  45   4      1          0        0   124
#>  [33,]  43  10      0        180        0   185
#>  [34,]  47   6      1          0        1   116
#>  [35,]  46  13      1         10        0   100
#>  [36,]  44   0      1          0        1    96
#>  [37,]  47   4      1          3        1   160
#>  [38,]  45   8      1          0        1   117
#>  [39,]  44   4      1          0        1   114
#>  [40,]  44   9      1          8        1   135
#>  [41,]  45   5      0        180        1   190
#>  [42,]  46   5      1          3        0   130
#>  [43,]  44   2      0        180        0   142
#>  [44,]  46  15      0        180        1   120
#>  [45,]  45   9      1          0        1   145
#>  [46,]  48   3      0        180        0   154
#>  [47,]  48  12      1         11        0   200
#>  [48,]  47   5      1          3        1   130
#>  [49,]  47   9      1          6        0   170
#>  [50,]  46   3      1          0        1   119
#>  [51,]  49   4      0        180        0   117
#>  [52,]  47  10      0         10        1   140
#>  [53,]  50   1      1          0        1   129
#>  [54,]  48   2      1          0        0   184
#>  [55,]  47   7      0        180        0   145
#>  [56,]  50   4      1          1        0   125
#>  [57,]  50   6      1          2        1   140
#>  [58,]  49   7      1          7        1   110
#>  [59,]  46   3      1          1        1   140
#>  [60,]  50   7      0        180        1   110
#>  [61,]  51   1      0          1        1   145
#>  [62,]  47   2      0        180        0   150
#>  [63,]  46   6      1          0        1   156
#>  [64,]  50   4      0          4        1   100
#>  [65,]  50   1      1          0        0   150
#>  [66,]  50   9      0        180        0   130
#>  [67,]  47   8      0        180        0   160
#>  [68,]  47   6      0        180        1   162
#>  [69,]  51   8      0        180        1   140
#>  [70,]  52   2      0        180        0   155
#>  [71,]  46   1      1          1        0   145
#>  [72,]  50   4      1          1        0   150
#>  [73,]  53   8      0         36        1   160
#>  [74,]  52   4      1          4        0   152
#>  [75,]  49   9      1          3        0   102
#>  [76,]  54  17      1         12        1   102
#>  [77,]  53   5      0         77        0   159
#>  [78,]  53   7      1          0        0   199
#>  [79,]  54   6      1          3        0   129
#>  [80,]  51   3      1          1        0   140
#>  [81,]  50  10      1          6        0   122
#>  [82,]  50  14      1         13        0   170
#>  [83,]  53   8      1          7        0   160
#>  [84,]  48   3      1          2        0   150
#>  [85,]  51  25      1          1        0   202
#>  [86,]  53   4      0          4        0   140
#>  [87,]  48   6      0        180        0   160
#>  [88,]  48  11      1         10        0   120
#>  [89,]  53   4      1          0        1   156
#>  [90,]  51  13      0         99        1   160
#>  [91,]  54   9      1          0        1   138
#>  [92,]  54  23      1         10        0   131
#>  [93,]  52   7      1          2        0   154
#>  [94,]  55   6      1          2        1   114
#>  [95,]  55   4      1          2        0   150
#>  [96,]  52   4      0        180        1   180
#>  [97,]  50   5      1          4        1   150
#>  [98,]  55  28      1         13        1   160
#>  [99,]  49   6      1          0        1   130
#> [100,]  50   7      1          1        0   156
#> [101,]  50   7      1          0        1   127
#> [102,]  56   4      1          1        1   130
#> [103,]  52   5      0        175        1   117
#> [104,]  55   1      0        180        0   127
#> [105,]  55   2      0          2        0   145
#> [106,]  54   1      0        180        0   162
#> [107,]  56   3      0        180        1   193
#> [108,]  55   5      1          4        1   120
#> [109,]  52   8      0        180        0   119
#> [110,]  53  18      1          9        1   150
#> [111,]  55   6      0        180        0   170
#> [112,]  52  16      0         16        0   152
#> [113,]  53  10      1          9        0   172
#> [114,]  52  16      1         14        0   170
#> [115,]  53  15      0         15        1    90
#> [116,]  53   4      0        180        1   150
#> [117,]  55   6      1          5        1   138
#> [118,]  54  12      1          0        1   190
#> [119,]  54   3      0        180        0   128
#> [120,]  56   3      0          8        1   139
#> [121,]  55   1      0          2        0   130
#> [122,]  57   3      0          3        0   120
#> [123,]  54   2      1          1        0   135
#> [124,]  52   9      1          3        0   170
#> [125,]  54   2      1          1        1   176
#> [126,]  57   5      1          3        1   138
#> [127,]  52   2      0        180        0   140
#> [128,]  55  11      1          7        0   104
#> [129,]  52  15      1         14        0   130
#> [130,]  53   3      1          0        1   200
#> [131,]  57  10      0        180        1   170
#> [132,]  58   8      0          8        1   130
#> [133,]  55   3      1          1        1   156
#> [134,]  57   0      0          0        1   150
#> [135,]  53  21      1         13        1   130
#> [136,]  59   3      1          1        0   172
#> [137,]  57   4      0        180        1   119
#> [138,]  58   6      1          0        1    90
#> [139,]  54  17      1          8        1   227
#> [140,]  55   9      1          2        1   147
#> [141,]  55  13      0        166        1   140
#> [142,]  56   5      0          5        1   150
#> [143,]  54  23      1          8        0   120
#> [144,]  57   4      1          2        1   185
#> [145,]  53   4      0        147        1   145
#> [146,]  53   7      1          0        1   120
#> [147,]  57  11      1         10        1   129
#> [148,]  55   3      1          2        0   140
#> [149,]  55   5      0          5        1   131
#> [150,]  58   9      1          0        1   180
#> [151,]  58   1      1          1        1   200
#> [152,]  59   9      1          1        1   125
#> [153,]  57   1      0        180        0   148
#> [154,]  60  11      1          9        0   106
#> [155,]  58   4      1          0        1   160
#> [156,]  60   5      1          1        0   138
#> [157,]  57   5      0        180        1   130
#> [158,]  58  11      1          9        1   124
#> [159,]  59   6      1          0        1   140
#> [160,]  59   4      1          0        1   152
#> [161,]  58  26      1          0        1   189
#> [162,]  60   0      1          0        1    80
#> [163,]  58  14      1          6        0   190
#> [164,]  61   4      1          3        0   151
#> [165,]  61   9      1          8        0   150
#> [166,]  61   3      1          2        1   102
#> [167,]  58   1      0          1        1   100
#> [168,]  61  20      1         13        0   130
#> [169,]  57   2      1          0        1   116
#> [170,]  57   4      1          3        0   138
#> [171,]  57  11      0        180        1   150
#> [172,]  61   3      0         17        0   143
#> [173,]  57   3      1          2        0   120
#> [174,]  58  19      1         13        1   140
#> [175,]  56  13      1          6        1   158
#> [176,]  56  18      1         11        1   165
#> [177,]  59   9      1          0        1    80
#> [178,]  55   4      1          3        1   160
#> [179,]  58  11      0        172        1   135
#> [180,]  60  12      1          0        1   114
#> [181,]  55   9      1          7        1   135
#> [182,]  61   4      1          0        1   115
#> [183,]  56   8      1          8        0   120
#> [184,]  61  13      1         12        1   130
#> [185,]  59  11      1          8        1   190
#> [186,]  57   1      0          1        0   126
#> [187,]  57  15      1         13        1   110
#> [188,]  58   5      1          1        1   135
#> [189,]  59  10      0        180        0   160
#> [190,]  58   8      1          5        0   152
#> [191,]  62  10      1          0        1   153
#> [192,]  62   7      1          2        1   180
#> [193,]  57   3      1          0        0   100
#> [194,]  61  18      0        170        0   140
#> [195,]  61  28      1          7        0   133
#> [196,]  58   8      1          3        1   150
#> [197,]  57   7      0        169        0   180
#> [198,]  61   7      0          7        1   150
#> [199,]  60   7      0          7        0   147
#> [200,]  59  13      1          2        0   198
#> [201,]  62   4      1          0        0   160
#> [202,]  60  17      1          8        1   140
#> [203,]  58   3      1          0        1   146
#> [204,]  59  16      1          9        1   133
#> [205,]  63   6      0         28        1   120
#> [206,]  61  13      0         13        0   120
#> [207,]  61   5      0          5        1   110
#> [208,]  61   5      0          5        1   160
#> [209,]  58  11      1          9        0   179
#> [210,]  57   2      1          1        0   159
#> [211,]  62  17      1         10        1   180
#> [212,]  58   7      0        180        1   150
#> [213,]  63   3      1          1        0   180
#> [214,]  61   7      0        180        0   135
#> [215,]  63   4      1          3        0   222
#> [216,]  63   4      0        180        1   190
#> [217,]  63  15      1         10        1   126
#> [218,]  64   4      0        180        0   130
#> [219,]  63   4      1          1        0   155
#> [220,]  60  18      1         13        0   132
#> [221,]  58   9      1          9        0   110
#> [222,]  62   7      0          7        0   150
#> [223,]  58   2      0        180        0   127
#> [224,]  59   4      0        180        0   196
#> [225,]  60   7      1          5        1   141
#> [226,]  60   7      0          7        0   140
#> [227,]  59   5      1          1        0   148
#> [228,]  65  13      0        180        1   100
#> [229,]  63   1      0          1        0   130
#> [230,]  62   6      0        180        0   170
#> [231,]  61  15      1         13        0   170
#> [232,]  60   3      0          3        0   168
#> [233,]  64  10      1          9        0   160
#> [234,]  63  12      1         10        0   200
#> [235,]  59  10      0        180        1   130
#> [236,]  60   8      0         17        1   130
#> [237,]  61   6      1          1        1   117
#> [238,]  64  12      1         11        0   160
#> [239,]  64   6      1          0        1   140
#> [240,]  63  10      1          0        1   148
#> [241,]  63  14      1          9        0   123
#> [242,]  65  36      1         11        0   140
#> [243,]  63   4      1          3        0   162
#> [244,]  66   3      1          1        0   127
#> [245,]  63  12      1          9        0   114
#> [246,]  63   7      0        180        0   120
#> [247,]  65   8      1          0        0   168
#> [248,]  65  10      1          8        1   120
#> [249,]  64   0      0          0        1    90
#> [250,]  60   6      0        180        0   130
#> [251,]  64  21      1         10        0   190
#> [252,]  64   9      0        180        0   150
#> [253,]  61   4      0        180        1   113
#> [254,]  65   3      0        180        1   190
#> [255,]  63  16      1          7        1   110
#> [256,]  64   7      0        180        1   120
#> [257,]  66   6      1          1        1   130
#> [258,]  65   6      0          9        0   112
#> [259,]  65   3      1          0        1    80
#> [260,]  62  13      1         11        0   180
#> [261,]  67  11      0         11        1   100
#> [262,]  66  18      1          5        0   142
#> [263,]  66  16      1         11        1   169
#> [264,]  62   9      0        180        0   145
#> [265,]  61  14      1          5        0   140
#> [266,]  61  15      1         10        0   130
#> [267,]  63   9      1          8        1   160
#> [268,]  63   2      1          0        0   140
#> [269,]  64  19      1          8        1   160
#> [270,]  65   8      1          0        1   140
#> [271,]  65  15      1         11        1   160
#> [272,]  68   5      1          4        1   150
#> [273,]  64   6      1          0        1   125
#> [274,]  66  13      1          0        0   118
#> [275,]  65   3      0          3        0   105
#> [276,]  66   6      1          0        1   140
#> [277,]  65   2      1          1        1   170
#> [278,]  68   1      0        180        1   166
#> [279,]  63   7      1          0        0   162
#> [280,]  67   8      1          1        1   130
#> [281,]  68   5      0          5        1    90
#> [282,]  66  14      0        180        0   130
#> [283,]  64   1      0          1        1   120
#> [284,]  68  18      0        180        1   260
#> [285,]  65  18      1          3        0   120
#> [286,]  63   1      1          0        1   155
#> [287,]  63  10      0         18        1   130
#> [288,]  67  11      0         11        0   150
#> [289,]  68  11      0        180        0   160
#> [290,]  68  14      0         79        0   172
#> [291,]  66  12      1         10        1   150
#> [292,]  65  15      1         12        1   150
#> [293,]  66  11      1          0        0   100
#> [294,]  66  15      1         13        1   160
#> [295,]  63   2      0        180        0   150
#> [296,]  69  21      1         10        0   180
#> [297,]  69   6      0        180        1   100
#> [298,]  63   8      0        180        1   120
#> [299,]  67   1      0        180        1   160
#> [300,]  68  10      1         10        1   150
#> [301,]  65   1      1          0        0   133
#> [302,]  67   7      1          4        1   130
#> [303,]  63   2      1          0        0    99
#> [304,]  67   2      0        180        0   184
#> [305,]  65   6      0          6        0    80
#> [306,]  67  12      1         12        0   160
#> [307,]  65   4      1          1        0   130
#> [308,]  64   4      0        179        0   160
#> [309,]  66   4      0        180        1   130
#> [310,]  70  15      1         12        1   132
#> [311,]  64   0      1          0        1   118
#> [312,]  67   2      0         18        0   131
#> [313,]  66   7      1          5        1   131
#> [314,]  68   4      1          0        1   160
#> [315,]  69   4      1          3        1   150
#> [316,]  65  13      1         12        1   130
#> [317,]  69  17      1         10        0   140
#> [318,]  64  21      0         21        1   155
#> [319,]  66   6      0        180        0   140
#> [320,]  65   1      0          1        1   120
#> [321,]  68  18      1          0        1   160
#> [322,]  65   6      0        101        1   115
#> [323,]  71   3      0          5        0   112
#> [324,]  68   7      0        150        0   210
#> [325,]  71  20      1          0        1   160
#> [326,]  66   1      1          1        1   165
#> [327,]  70   4      1          0        1   180
#> [328,]  70  14      0        171        0   166
#> [329,]  67  10      1          9        0   200
#> [330,]  67   6      1          4        0   130
#> [331,]  69   0      0          0        1   148
#> [332,]  65   2      0        180        0   130
#> [333,]  68   7      1          0        1   150
#> [334,]  69   3      1          2        0   151
#> [335,]  67  14      1         13        0   130
#> [336,]  65  14      1         13        1   150
#> [337,]  69   8      0        180        1   180
#> [338,]  71   7      0          7        0   230
#> [339,]  66   2      0          2        1   228
#> [340,]  71   6      0         45        1   158
#> [341,]  69   5      0          5        1   142
#> [342,]  69   3      0          3        1   130
#> [343,]  68   6      0        180        0   145
#> [344,]  69   8      1          5        1   195
#> [345,]  69   6      1          4        1   174
#> [346,]  72   7      0          7        1   110
#> [347,]  69   8      1          7        1   108
#> [348,]  67  14      0        172        1   140
#> [349,]  69  11      1          0        1   120
#> [350,]  67  13      1          9        0   130
#> [351,]  70   3      0        123        0   130
#> [352,]  70   9      0        180        1   142
#> [353,]  67  22      1          1        1   140
#> [354,]  68   3      0         19        0   135
#> [355,]  69   1      0          1        1   110
#> [356,]  67   1      0          1        1    60
#> [357,]  67   4      0         60        1   136
#> [358,]  72  13      1         11        1   195
#> [359,]  68  10      1          8        1   160
#> [360,]  66  24      1         13        0   130
#> [361,]  70  35      1          0        1   105
#> [362,]  70   7      0          7        0   102
#> [363,]  68   7      1          2        0   135
#> [364,]  73  20      1          0        1   170
#> [365,]  69  10      1          6        1   120
#> [366,]  70  11      0        180        1   210
#> [367,]  67   8      0        180        1   170
#> [368,]  67   5      1          0        1   147
#> [369,]  67   9      0        180        0   158
#> [370,]  70   5      0        180        0   150
#> [371,]  72   6      1          5        0   115
#> [372,]  71   1      0        173        1   188
#> [373,]  68  23      0        180        1   220
#> [374,]  70   3      0        180        0   121
#> [375,]  71   3      1          2        0   150
#> [376,]  68   4      1          3        0   210
#> [377,]  71   5      0        180        0   191
#> [378,]  69  16      1         10        1   140
#> [379,]  69   8      1          1        0   164
#> [380,]  72  16      1          1        1   130
#> [381,]  70   4      0        180        0   180
#> [382,]  69   1      1          0        0   155
#> [383,]  72   8      1          1        1   150
#> [384,]  71   2      1          0        1   180
#> [385,]  73   7      0          7        1   140
#> [386,]  70   3      0          3        1   159
#> [387,]  70  13      1          9        0   100
#> [388,]  72   6      0        180        1   130
#> [389,]  73   0      0        180        1   161
#> [390,]  74   8      1          0        1    85
#> [391,]  69   2      1          0        1   110
#> [392,]  71   3      1          1        0   150
#> [393,]  71  15      1         11        0   165
#> [394,]  68   9      0        180        1   120
#> [395,]  74   0      1          0        1    90
#> [396,]  70   5      1          0        1   190
#> [397,]  71   8      1          7        0   149
#> [398,]  71   3      1          2        1   190
#> [399,]  69  12      1          1        1   149
#> [400,]  73   4      0         58        1   160
#> [401,]  70   3      0        180        1   154
#> [402,]  72  15      1          0        1   150
#> [403,]  71   7      1          2        0   143
#> [404,]  74   3      0          3        1   150
#> [405,]  71  13      1          8        0   121
#> [406,]  70   4      1          0        1   140
#> [407,]  71  14      1         13        1   170
#> [408,]  74   7      1          0        1   117
#> [409,]  72  10      1          8        1   153
#> [410,]  69   7      0        180        1   144
#> [411,]  72  15      1         13        0   156
#> [412,]  71  10      1          9        1   120
#> [413,]  75   1      0          1        0   133
#> [414,]  73  10      1          9        1   146
#> [415,]  72  10      1          9        1   160
#> [416,]  73  10      1         10        1   120
#> [417,]  71   2      0         10        1   112
#> [418,]  73   1      0          1        1    80
#> [419,]  75  13      1          1        1   130
#> [420,]  73  10      1          8        0   120
#> [421,]  72   7      0         57        1   145
#> [422,]  73  10      0        180        0   162
#> [423,]  72  11      0         11        1   140
#> [424,]  70   3      0          3        0   150
#> [425,]  73   5      1          3        1   112
#> [426,]  76  25      1         12        1   170
#> [427,]  73  12      1         12        1   140
#> [428,]  72   2      0        180        0   120
#> [429,]  71   3      1          0        0   144
#> [430,]  73   4      0        180        0   124
#> [431,]  74  34      1          8        1   233
#> [432,]  76   3      1          0        1   120
#> [433,]  71  32      1         12        1   107
#> [434,]  72   5      0        180        0   154
#> [435,]  76   5      0          5        1   130
#> [436,]  77  11      0         11        1   150
#> [437,]  77   4      0          4        0   185
#> [438,]  75   3      1          1        0   180
#> [439,]  73  10      1         10        0   124
#> [440,]  74   7      0        180        1   150
#> [441,]  74   3      0          3        1   128
#> [442,]  74   2      1          1        0   140
#> [443,]  76   8      1          0        1   141
#> [444,]  75  23      1         14        1   110
#> [445,]  72   4      0         85        1   120
#> [446,]  72   4      1          3        0   160
#> [447,]  73   4      1          3        1   125
#> [448,]  75   4      1          0        1   122
#> [449,]  75   0      0          0        1   130
#> [450,]  74   8      1          0        1   105
#> [451,]  76  13      1          8        1   148
#> [452,]  75   4      1          2        1   188
#> [453,]  74   6      0        180        0   160
#> [454,]  76   4      0          4        1   155
#> [455,]  73   1      0         52        1   105
#> [456,]  72   5      0        180        0   120
#> [457,]  78  12      1         11        1   160
#> [458,]  76  44      1         10        0   105
#> [459,]  76   5      0        180        0   185
#> [460,]  74  10      1          0        1   135
#> [461,]  74   8      1          8        1   170
#> [462,]  75   9      0        180        1   140
#> [463,]  73  33      1         12        1   175
#> [464,]  77   5      1          0        0   123
#> [465,]  77  12      0        180        0   130
#> [466,]  73   7      1          0        0   174
#> [467,]  74   6      0         79        1   140
#> [468,]  74   9      1          8        0   200
#> [469,]  75   6      0        180        0   150
#> [470,]  79  10      1          8        0   190
#> [471,]  74   2      1          0        1   130
#> [472,]  77   3      0        180        0   110
#> [473,]  73   8      1          1        1   162
#> [474,]  73  11      1          2        1   110
#> [475,]  74   2      0        180        0   100
#> [476,]  78   7      0          7        1   133
#> [477,]  74  15      0        180        1   172
#> [478,]  74   7      0          7        0   161
#> [479,]  76  13      1          1        1   170
#> [480,]  79   6      0        180        0   170
#> [481,]  80  10      1          6        1   147
#> [482,]  78   0      0        180        1   212
#> [483,]  75   5      0        119        1   150
#> [484,]  78  15      0        180        1   270
#> [485,]  80   8      0          8        1   120
#> [486,]  75  13      1          6        0   150
#> [487,]  74  10      1          8        0   135
#> [488,]  76   1      0          1        1    83
#> [489,]  79   4      0         80        0   145
#> [490,]  78   2      1          1        0   130
#> [491,]  75   4      1          0        0   212
#> [492,]  77   2      1          0        1   143
#> [493,]  75   3      0          3        0     0
#> [494,]  76   7      0         29        1   150
#> [495,]  79   8      0         32        1   120
#> [496,]  78   6      1          0        1   240
#> [497,]  76   3      1          0        1   140
#> [498,]  78  11      1          1        1   140
#> [499,]  79  11      0        180        0   160
#> [500,]  79   2      1          0        1   121
#> [501,]  81   1      0          1        0   130
#> [502,]  78  11      1          8        1   118
#> [503,]  76   4      0          4        1   160
#> [504,]  79   4      0          4        1   125
#> [505,]  76  12      1         10        1   127
#> [506,]  77   6      0          6        1   107
#> [507,]  78  11      0        180        1   135
#> [508,]  76   1      0          1        1   140
#> [509,]  77  31      1          3        1   161
#> [510,]  76   1      0          1        1    90
#> [511,]  78   7      1          0        1   110
#> [512,]  77   7      0        180        1   170
#> [513,]  77   6      0          6        1   144
#> [514,]  79   4      1          0        1   120
#> [515,]  81   1      0        180        0   120
#> [516,]  77   9      1          4        0   141
#> [517,]  82   5      0          8        1   120
#> [518,]  80  40      1          0        1   138
#> [519,]  80  17      1         12        0   100
#> [520,]  76   7      0        161        0   151
#> [521,]  79  10      0         10        1   120
#> [522,]  81   4      1          2        1   126
#> [523,]  79  28      0        164        0   100
#> [524,]  78  32      0        180        1   130
#> [525,]  79   1      0         37        1   140
#> [526,]  81   3      0        180        0   184
#> [527,]  81   2      0        175        0   172
#> [528,]  78   7      0          7        1   147
#> [529,]  77  13      1          0        1   190
#> [530,]  78  15      0         15        0   165
#> [531,]  80   5      1          1        1   108
#> [532,]  78   4      0        180        0   175
#> [533,]  78  26      1          5        0   194
#> [534,]  81   4      1          1        1   104
#> [535,]  78   3      1          1        1   152
#> [536,]  80   2      1          1        0   168
#> [537,]  79   6      0          6        0   152
#> [538,]  80   6      1          0        1   119
#> [539,]  78   2      0        180        0   148
#> [540,]  82   1      1          0        1    82
#> [541,]  81   1      0        108        0   129
#> [542,]  78  12      0        180        0   134
#> [543,]  84  22      1         10        0   180
#> [544,]  79   4      0          4        1   121
#> [545,]  83   9      1          5        1   170
#> [546,]  83   5      0        180        0   148
#> [547,]  83   4      0        103        0    97
#> [548,]  81  11      1          8        0   160
#> [549,]  81   5      0        177        0    41
#> [550,]  80  11      1          8        0   170
#> [551,]  78  23      1         10        1   145
#> [552,]  79   4      0          4        1   183
#> [553,]  78   9      1          4        1   120
#> [554,]  82   8      1          1        0   128
#> [555,]  79   1      0        180        1   170
#> [556,]  81  15      0        180        1   140
#> [557,]  84   5      1          1        1    85
#> [558,]  83   8      0          8        0   115
#> [559,]  81  16      0         16        1   110
#> [560,]  80   6      1          0        1   150
#> [561,]  80  11      1          8        0   110
#> [562,]  79   7      0        177        0   197
#> [563,]  85   4      0        180        0    90
#> [564,]  81   2      1          1        0   198
#> [565,]  83   2      0          2        1   155
#> [566,]  82   6      0        128        1   100
#> [567,]  84   4      0        167        0   198
#> [568,]  80   3      1          1        1   230
#> [569,]  82  23      1          0        0   110
#> [570,]  84   4      0          4        1    85
#> [571,]  81   1      0          1        1   150
#> [572,]  81   4      0         90        1   138
#> [573,]  79   9      1          8        0   150
#> [574,]  85   3      1          2        1   160
#> [575,]  80   2      1          0        1   130
#> [576,]  79   4      0          4        1    60
#> [577,]  80   6      0         71        1   189
#> [578,]  82  19      0         19        0   120
#> [579,]  79  14      1          0        0   110
#> [580,]  81  14      1         12        1   128
#> [581,]  83   2      0        154        0   130
#> [582,]  83   1      0        180        0   160
#> [583,]  81   4      0          4        0   175
#> [584,]  84  15      1         13        1   110
#> [585,]  81   1      0          1        1   145
#> [586,]  81  12      0         12        1   163
#> [587,]  82   5      1          0        1   146
#> [588,]  81   4      0          4        0   160
#> [589,]  83  12      1          2        1   170
#> [590,]  81  19      1         14        0   120
#> [591,]  82   3      1          2        0   130
#> [592,]  82  15      1          0        0   183
#> [593,]  80   2      0         88        0   135
#> [594,]  83   7      0        126        0   135
#> [595,]  86   8      0          8        1   132
#> [596,]  81  16      1          9        0   180
#> [597,]  84   6      0        165        0   145
#> [598,]  82   9      0        180        1   134
#> [599,]  84   3      0        180        1   120
#> [600,]  81   4      0        180        0   160
#> [601,]  83   9      0        180        1   149
#> [602,]  86   6      1          0        1   140
#> [603,]  84  16      0         70        1   150
#> [604,]  83  19      0         43        0   150
#> [605,]  84   3      1          2        0   125
#> [606,]  83  10      1          0        1   190
#> [607,]  86   2      0        180        1   169
#> [608,]  88  14      1          3        1   130
#> [609,]  84   3      0          3        1   121
#> [610,]  83  13      1         12        0   170
#> [611,]  84   9      0         92        1   110
#> [612,]  84   3      0        180        1   170
#> [613,]  86   4      0         38        1   122
#> [614,]  82   4      0          4        0   130
#> [615,]  85   3      0          3        1   113
#> [616,]  86   6      0          6        1   117
#> [617,]  88   4      0          4        0   100
#> [618,]  83  20      1          3        1   150
#> [619,]  88   4      0          4        1   115
#> [620,]  85  22      0         22        1   184
#> [621,]  83   9      0         65        1   150
#> [622,]  86   6      0         46        0   173
#> [623,]  83   3      0          3        1   130
#> [624,]  87   8      0          8        1   157
#> [625,]  86  15      1          8        1   109
#> [626,]  88   4      0          4        0    86
#> [627,]  89   4      0          4        1   153
#> [628,]  89   5      0        119        1   140
#> [629,]  87  15      1          9        1   138
#> [630,]  84   0      0        180        1   136
#> [631,]  90  14      0         14        1   100
#> [632,]  88   1      0          1        0   135
#> [633,]  91   8      0          8        0   100
#> [634,]  87   2      0        180        0   160
#> [635,]  87   6      1          0        0   125
#> [636,]  91  10      0        145        0   135
#> [637,]  88   7      0         24        0   119
#> [638,]  88   8      0         50        1   154
#> [639,]  90  11      1         10        1   186
#> [640,]  87   6      0        126        1   168
#> [641,]  86   9      1          7        0   130
#> [642,]  90   4      1          0        0   121
#> [643,]  91   1      0          1        1    74
#> [644,]  87   5      0         36        1   150
#> [645,]  88   3      1          2        0   159
#> [646,]  89   3      1          1        1   160
#> [647,]  92   1      0          1        1   167
#> [648,]  88   5      0        158        0   100
#> [649,]  87   7      0         74        1   105
#> [650,]  89  12      1          0        1   130
#> [651,]  89   2      0        168        0   118
#> [652,]  91   5      0        169        1   176
#> [653,]  91   0      0          0        0     0
#> [654,]  90  18      0        180        0   188
#> [655,]  91   4      1          0        1   120
#> [656,]  90  19      1         11        1   129
#> [657,]  90   1      0          1        1   118
#> [658,]  91   2      0          2        1   116
#> [659,]  93   8      0        179        1   110
#> [660,]  94   8      0          8        1   142
#> [661,]  92   4      0         76        1   149
#> [662,]  91   1      0        180        0   158
#> [663,]  90   3      0         67        0   162
#> [664,]  95   8      1          5        1   150
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 150.0  180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+   5.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+  10.0+ 172.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+
#>  [61]   1.0  180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+  36.0    4.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 166.0+  99.0 
#>  [91] 180.0+ 152.0+   7.0+   6.0+ 180.0+ 180.0+ 171.0+  28.0    6.0+ 180.0+
#> [101] 180.0+ 180.0+ 175.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [111] 180.0+  16.0+ 180.0+  16.0   15.0+ 180.0+ 180.0+  12.0+ 180.0+   8.0 
#> [121]   2.0    3.0+ 180.0+ 180.0+ 180.0+ 140.0  180.0+ 180.0+ 180.0+ 180.0+
#> [131] 180.0+   8.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0 
#> [141] 166.0+   5.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+ 180.0+   5.0+   9.0+
#> [151]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+
#> [161] 180.0+   0.5  171.0+ 180.0+ 180.0+   3.0    1.0  180.0+ 180.0+ 180.0+
#> [171] 180.0+  17.0    3.0+  19.0  180.0+ 180.0+   9.0+ 180.0+ 172.0+ 172.0+
#> [181]  24.0  180.0+   8.0  180.0+ 180.0+   1.0+  15.0  180.0+ 180.0+   8.0+
#> [191] 180.0+ 180.0+ 180.0+ 170.0   94.0  180.0+ 169.0    7.0    7.0+ 180.0+
#> [201] 180.0+ 180.0+   3.0+ 180.0+  28.0   13.0+   5.0    5.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [221]   9.0    7.0+ 180.0+ 180.0+  84.0    7.0+ 180.0+ 180.0+   1.0  180.0+
#> [231] 180.0+   3.0+ 167.0  180.0+ 180.0+  17.0  180.0+  12.0  180.0+ 180.0+
#> [241]  14.0+  36.0  180.0+   3.0+  12.0  180.0+ 180.0+ 180.0+   0.5  180.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0    3.0  180.0+
#> [261]  11.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 103.0   15.0 
#> [271] 180.0+   5.0+ 180.0+ 166.0+   3.0  180.0+ 175.0+ 180.0+   7.0+   8.0 
#> [281]   5.0  180.0+   1.0  180.0+ 123.0+   1.0+  18.0   11.0+ 180.0+  79.0 
#> [291]  80.0   15.0+ 180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+  10.0 
#> [301] 180.0+ 180.0+ 180.0+ 180.0+   6.0   12.0  180.0+ 179.0+ 180.0+ 180.0+
#> [311]   0.5   18.0    7.0+ 180.0+ 152.0+ 180.0+ 180.0+  21.0+ 180.0+   1.0 
#> [321]  18.0+ 101.0    5.0  150.0  180.0+   1.0  180.0+ 171.0  174.0+   6.0 
#> [331]   0.5  180.0+ 180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+   2.0   45.0 
#> [341]   5.0+   3.0+ 180.0+ 180.0+  97.0    7.0    8.0+ 172.0+ 180.0+  13.0+
#> [351] 123.0  180.0+  51.0   19.0    1.0    1.0   60.0  132.0   10.0+ 180.0+
#> [361] 180.0+   7.0+   7.0+ 124.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [371] 180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0+
#> [381] 180.0+ 180.0+ 180.0+ 180.0+   7.0+   3.0+  13.0+ 180.0+ 180.0+ 180.0+
#> [391]   2.0    3.0+ 180.0+ 180.0+   0.5  180.0+   8.0    3.0   12.0   58.0 
#> [401] 180.0+ 180.0+ 180.0+   3.0  175.0  180.0+  14.0+ 180.0+  10.0+ 180.0+
#> [411] 180.0+ 179.0+   1.0  180.0+ 159.0   15.0   10.0    1.0   13.0   10.0 
#> [421]  57.0  180.0+  11.0    3.0+   5.0  180.0+  12.0  180.0+ 180.0+ 180.0+
#> [431]  34.0  180.0+ 177.0+ 180.0+   5.0   11.0+   4.0+ 180.0+  10.0  180.0+
#> [441]   3.0  180.0+ 180.0+ 180.0+  85.0  180.0+ 180.0+   4.0    0.5  180.0+
#> [451] 180.0+  46.0  180.0+   4.0   52.0  180.0+  12.0  180.0+ 180.0+ 180.0+
#> [461]   8.0  180.0+  33.0    5.0  180.0+   7.0+  79.0  168.0+ 180.0+ 180.0+
#> [471] 176.0+ 180.0+ 180.0+  11.0  180.0+   7.0  180.0+   7.0  180.0+ 180.0+
#> [481]  10.0  180.0+ 119.0  180.0+   8.0  180.0+ 180.0+   1.0   80.0  180.0+
#> [491]   4.0+   2.0    3.0   29.0   32.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+
#> [501]   1.0   11.0    4.0    4.0  180.0+   6.0  180.0+   1.0  171.0    1.0 
#> [511]  43.0  180.0+   6.0  138.0  180.0+  71.0    8.0   40.0   17.0  161.0 
#> [521]  10.0+  93.0  164.0  180.0+  37.0  180.0+ 175.0+   7.0+  22.0   15.0+
#> [531]   5.0+ 180.0+ 171.0+  71.0    3.0+  10.0    6.0+   6.0  180.0+   1.0 
#> [541] 108.0  180.0+ 180.0+   4.0    9.0+ 180.0+ 103.0  180.0+ 177.0+ 169.0 
#> [551]  70.0    4.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+  16.0  180.0+
#> [561] 180.0+ 177.0+ 180.0+ 180.0+   2.0  128.0  167.0    3.0+  62.0    4.0 
#> [571]   1.0   90.0  180.0+ 180.0+ 180.0+   4.0   71.0   19.0  180.0+ 180.0+
#> [581] 154.0  180.0+   4.0+ 180.0+   1.0   12.0    5.0+   4.0+  77.0  180.0+
#> [591]   3.0   83.0   88.0  126.0    8.0  180.0+ 165.0  180.0+ 180.0+ 180.0+
#> [601] 180.0+   6.0   70.0   43.0  180.0+ 180.0+ 180.0+  14.0    3.0   13.0 
#> [611]  92.0  180.0+  38.0    4.0    3.0+   6.0+   4.0+  20.0    4.0   22.0 
#> [621]  65.0   46.0    3.0+   8.0+ 180.0+   4.0    4.0  119.0  180.0+ 180.0+
#> [631]  14.0    1.0+   8.0  180.0+  25.0  145.0   24.0   50.0   11.0  126.0 
#> [641] 180.0+   4.0    1.0   36.0   75.0    3.0+   1.0  158.0   74.0  180.0+
#> [651] 168.0  169.0    0.5  180.0+   4.0  180.0+   1.0+   2.0  179.0+   8.0+
#> [661]  76.0  180.0+  67.0    8.0   53.0    7.0+   0.5   69.0    2.0   15.0+
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
#>   0.8284581 
```
