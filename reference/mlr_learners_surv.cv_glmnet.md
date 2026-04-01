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
#> min 0.00365    42   2.794 0.1487       6
#> 1se 0.07164    10   2.932 0.1359       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      0        180        0   121
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  38   2      0        115        0   150
#>  [10,]  36   1      0        180        1   155
#>  [11,]  35   0      0        180        1   119
#>  [12,]  38  12      1          8        1   120
#>  [13,]  33   6      1          1        1   115
#>  [14,]  38  16      1         10        0   160
#>  [15,]  40  12      1          9        0   153
#>  [16,]  42   3      1          1        1   130
#>  [17,]  37   1      1          0        1   146
#>  [18,]  40   2      1          1        1   148
#>  [19,]  42   2      0        180        1   100
#>  [20,]  42   2      0          2        0   140
#>  [21,]  40  11      1         10        1   120
#>  [22,]  42   2      0        180        0   100
#>  [23,]  41   2      1          1        0   166
#>  [24,]  40   1      1          0        1   145
#>  [25,]  43   4      1          0        1   130
#>  [26,]  42   4      0        180        0   162
#>  [27,]  42  15      1         13        1   125
#>  [28,]  43   2      1          1        1   116
#>  [29,]  44   5      1          1        0   170
#>  [30,]  41  10      1          8        0   150
#>  [31,]  41  13      1          1        0   140
#>  [32,]  41   5      1          4        1   141
#>  [33,]  46  15      0        180        0   120
#>  [34,]  46   2      1          1        0   126
#>  [35,]  47   4      1          3        0   118
#>  [36,]  48  15      0        180        1   160
#>  [37,]  45   3      0        150        0   130
#>  [38,]  46   7      1          2        0   166
#>  [39,]  43  10      0        180        0   185
#>  [40,]  47   6      1          0        1   116
#>  [41,]  45   8      1          0        1   117
#>  [42,]  49   5      0         73        1   136
#>  [43,]  45   5      0          5        0   141
#>  [44,]  46   2      1          1        1   122
#>  [45,]  46   6      1          0        1   100
#>  [46,]  44   4      1          0        1   114
#>  [47,]  47   2      0        180        0   108
#>  [48,]  45   5      0        180        1   190
#>  [49,]  46  15      0        180        1   120
#>  [50,]  45   9      1          0        1   145
#>  [51,]  47   5      1          3        1   130
#>  [52,]  47   9      1          6        0   170
#>  [53,]  46   3      1          0        1   119
#>  [54,]  48   2      1          0        0   184
#>  [55,]  50   6      1          2        1   140
#>  [56,]  49   7      1          7        1   110
#>  [57,]  46   9      1          9        1   122
#>  [58,]  50   7      0        180        1   110
#>  [59,]  51   1      0          1        1   145
#>  [60,]  49  15      1         11        1   160
#>  [61,]  46   6      1          0        1   156
#>  [62,]  52   2      0        180        1   170
#>  [63,]  50   7      1          0        1    92
#>  [64,]  51   3      1          2        0   113
#>  [65,]  50   1      1          0        0   150
#>  [66,]  50   9      0        180        0   130
#>  [67,]  47   8      0        180        0   160
#>  [68,]  51   8      0        180        1   140
#>  [69,]  52   2      0        180        0   155
#>  [70,]  46   3      0        180        1   120
#>  [71,]  46   1      1          1        0   145
#>  [72,]  50   4      1          1        0   150
#>  [73,]  48   7      1          0        1   110
#>  [74,]  53   8      0         36        1   160
#>  [75,]  48  17      1         10        0   111
#>  [76,]  47   2      1          1        0   110
#>  [77,]  52   4      1          4        0   152
#>  [78,]  49   9      1          3        0   102
#>  [79,]  49  15      0        180        1   160
#>  [80,]  53   5      0        180        1   140
#>  [81,]  54  17      1         12        1   102
#>  [82,]  53   5      0         77        0   159
#>  [83,]  54   6      1          3        0   129
#>  [84,]  51   3      1          1        0   140
#>  [85,]  50   2      0          5        1   106
#>  [86,]  50  10      1          6        0   122
#>  [87,]  50  14      1         13        0   170
#>  [88,]  53   8      1          7        0   160
#>  [89,]  51  25      1          1        0   202
#>  [90,]  52  14      1          7        1   200
#>  [91,]  48   6      0        180        0   160
#>  [92,]  48  11      1         10        0   120
#>  [93,]  53   4      1          0        1   156
#>  [94,]  51  13      0         99        1   160
#>  [95,]  49  16      0         16        0   125
#>  [96,]  54  23      1         10        0   131
#>  [97,]  52   7      1          2        0   154
#>  [98,]  54   9      1          1        0   130
#>  [99,]  55   4      1          2        0   150
#> [100,]  51  13      1         11        0   145
#> [101,]  50   5      1          4        1   150
#> [102,]  54   4      1          0        1   121
#> [103,]  52   4      0        180        0   183
#> [104,]  49   1      0          1        1   110
#> [105,]  50   7      1          1        0   156
#> [106,]  53   9      0          9        1    95
#> [107,]  53   8      1          0        1   130
#> [108,]  50   7      1          0        1   127
#> [109,]  56   4      1          1        1   130
#> [110,]  52   5      0        175        1   117
#> [111,]  55   1      0        180        0   127
#> [112,]  55   2      0          2        0   145
#> [113,]  56   3      0        180        1   193
#> [114,]  56   2      0        180        0   132
#> [115,]  55   5      1          4        1   120
#> [116,]  52   8      0        180        0   119
#> [117,]  54   3      0        180        1   180
#> [118,]  52  16      0         16        0   152
#> [119,]  54  12      1          0        1   190
#> [120,]  54   3      0        180        0   128
#> [121,]  55   1      0          2        0   130
#> [122,]  57   3      0          3        0   120
#> [123,]  54   2      1          1        0   135
#> [124,]  52   9      1          3        0   170
#> [125,]  54   2      1          1        1   176
#> [126,]  57   5      1          3        1   138
#> [127,]  57   1      0          1        1   100
#> [128,]  56   4      1          0        1   140
#> [129,]  52   2      0        180        0   140
#> [130,]  55  11      1          7        0   104
#> [131,]  53   3      1          0        1   200
#> [132,]  57  10      0        180        1   170
#> [133,]  58   8      0          8        1   130
#> [134,]  54   5      0        180        1   108
#> [135,]  57   0      0          0        1   150
#> [136,]  53  21      1         13        1   130
#> [137,]  57   4      0        180        1   119
#> [138,]  53  15      1         10        1   130
#> [139,]  54  17      1          8        1   227
#> [140,]  55   9      1          2        1   147
#> [141,]  55  13      0        166        1   140
#> [142,]  53   4      0        147        1   145
#> [143,]  55   3      1          2        0   140
#> [144,]  55   5      0          5        1   131
#> [145,]  54   7      1          0        1   141
#> [146,]  56   4      0          4        0   164
#> [147,]  59  15      1         10        0   140
#> [148,]  58   9      1          0        1   180
#> [149,]  58   1      1          1        1   200
#> [150,]  55   5      1          0        0   140
#> [151,]  56   7      1          5        1   120
#> [152,]  59   9      1          1        1   125
#> [153,]  57   1      0        180        0   148
#> [154,]  60  11      1          9        0   106
#> [155,]  59   3      0        180        0   120
#> [156,]  58   4      1          0        1   160
#> [157,]  57   2      0          2        1   120
#> [158,]  57  10      1          9        0   103
#> [159,]  59   6      1          0        1   140
#> [160,]  59   5      0        180        1   155
#> [161,]  59   4      1          0        1   152
#> [162,]  58  26      1          0        1   189
#> [163,]  61   9      0          9        1   160
#> [164,]  58   4      1          3        0   120
#> [165,]  60   0      1          0        1    80
#> [166,]  58  14      1          6        0   190
#> [167,]  61   4      1          3        0   151
#> [168,]  61   9      1          8        0   150
#> [169,]  61  20      1         13        0   130
#> [170,]  57  13      1         10        0   110
#> [171,]  57   2      1          0        1   116
#> [172,]  58  10      0         10        1   150
#> [173,]  57   4      1          3        0   138
#> [174,]  61   3      0         17        0   143
#> [175,]  57   3      1          2        0   120
#> [176,]  58  19      1         13        1   140
#> [177,]  56  13      1          6        1   158
#> [178,]  56  18      1         11        1   165
#> [179,]  59   9      1          0        1    80
#> [180,]  55   4      1          3        1   160
#> [181,]  58  11      0        172        1   135
#> [182,]  60  12      1          0        1   114
#> [183,]  55   9      1          7        1   135
#> [184,]  61   4      1          0        1   115
#> [185,]  56   8      1          8        0   120
#> [186,]  61  13      1         12        1   130
#> [187,]  59  11      1          8        1   190
#> [188,]  57   1      0          1        0   126
#> [189,]  57  15      1         13        1   110
#> [190,]  59   5      1          2        0   182
#> [191,]  61   8      0         77        0   120
#> [192,]  58   8      1          5        0   152
#> [193,]  62  10      1          0        1   153
#> [194,]  62   7      1          2        1   180
#> [195,]  57   3      1          0        0   100
#> [196,]  61  18      0        170        0   140
#> [197,]  58   8      1          3        1   150
#> [198,]  57   7      0        169        0   180
#> [199,]  61   7      0          7        1   150
#> [200,]  61   6      0          6        0   134
#> [201,]  57  12      1          9        1   120
#> [202,]  62   4      1          0        0   160
#> [203,]  60  17      1          8        1   140
#> [204,]  58   3      1          0        1   146
#> [205,]  62   4      1          3        0   173
#> [206,]  59   1      0        180        0   155
#> [207,]  59  16      1          9        1   133
#> [208,]  61  13      0         13        0   120
#> [209,]  61   5      0          5        1   110
#> [210,]  57  18      1          9        1    93
#> [211,]  61   5      0          5        1   160
#> [212,]  58  11      1          9        0   179
#> [213,]  57   2      1          1        0   159
#> [214,]  62  17      1         10        1   180
#> [215,]  62   1      1          0        1   172
#> [216,]  58   7      0        180        1   150
#> [217,]  63   4      1          3        0   222
#> [218,]  64   4      0        180        0   130
#> [219,]  63   4      1          1        0   155
#> [220,]  60  18      1         13        0   132
#> [221,]  59   8      0        180        1   140
#> [222,]  61   9      1          9        1   150
#> [223,]  62   7      0          7        0   150
#> [224,]  59   1      0         22        1   162
#> [225,]  59   4      0        180        0   196
#> [226,]  60   7      1          5        1   141
#> [227,]  60   7      0          7        0   140
#> [228,]  59   5      1          1        0   148
#> [229,]  60   7      1          1        1    90
#> [230,]  63   1      0          1        0   162
#> [231,]  63   1      0          1        0   130
#> [232,]  62   6      0        180        0   170
#> [233,]  61  15      1         13        0   170
#> [234,]  59   4      0          4        0   149
#> [235,]  60   3      0          3        0   168
#> [236,]  64  10      1          9        0   160
#> [237,]  62   6      0          6        0   120
#> [238,]  63  12      1         10        0   200
#> [239,]  59  10      0        180        1   130
#> [240,]  60   8      0         17        1   130
#> [241,]  61   6      1          1        1   117
#> [242,]  64  12      1         11        0   160
#> [243,]  64   6      1          0        1   140
#> [244,]  63  10      1          0        1   148
#> [245,]  63  14      1          9        0   123
#> [246,]  63   4      1          3        0   162
#> [247,]  66   3      1          1        0   127
#> [248,]  63  12      1          9        0   114
#> [249,]  63   7      0        180        0   120
#> [250,]  66   5      1          0        1   110
#> [251,]  65   8      1          0        0   168
#> [252,]  65  10      1          8        1   120
#> [253,]  64   0      0          0        1    90
#> [254,]  60   6      0        180        0   130
#> [255,]  64  21      1         10        0   190
#> [256,]  61   4      0        180        1   113
#> [257,]  63  12      0         12        1   150
#> [258,]  62   3      1          1        1   199
#> [259,]  65   6      0          9        0   112
#> [260,]  63   5      1          4        0   170
#> [261,]  62  13      1         11        0   180
#> [262,]  67  11      0         11        1   100
#> [263,]  64   2      0          2        0   201
#> [264,]  66  18      1          5        0   142
#> [265,]  66  16      1         11        1   169
#> [266,]  62   9      0        180        0   145
#> [267,]  61  14      1          5        0   140
#> [268,]  61  15      1         10        0   130
#> [269,]  63   9      1          8        1   160
#> [270,]  63   3      1          2        0   120
#> [271,]  64  19      1          8        1   160
#> [272,]  65   8      1          0        1   140
#> [273,]  67   6      0        180        1   170
#> [274,]  64  13      1         12        1   150
#> [275,]  64   6      1          0        1   125
#> [276,]  64  14      1         13        1   150
#> [277,]  64   0      0          0        1   148
#> [278,]  67   4      1          3        0   130
#> [279,]  66   3      1          0        1   135
#> [280,]  66   6      1          0        1   140
#> [281,]  64  10      1          9        1   110
#> [282,]  67   8      1          1        1   130
#> [283,]  63  10      0         16        1   160
#> [284,]  64   1      0          1        1   120
#> [285,]  68  18      0        180        1   260
#> [286,]  65  17      1         14        1   100
#> [287,]  63   8      1          1        1   162
#> [288,]  63   1      1          0        1   155
#> [289,]  68  14      0         79        0   172
#> [290,]  66  11      1          0        0   100
#> [291,]  69  12      0         15        1   140
#> [292,]  66  15      1         13        1   160
#> [293,]  63   2      0        180        0   150
#> [294,]  69   6      0        180        1   100
#> [295,]  66   9      1          8        0   130
#> [296,]  65   8      1          0        1    90
#> [297,]  66   3      0          3        1   138
#> [298,]  69   1      1          0        0   170
#> [299,]  67   1      0        180        1   160
#> [300,]  68  10      1         10        1   150
#> [301,]  67   7      1          4        1   130
#> [302,]  63   2      1          0        0    99
#> [303,]  65  10      1          1        1   148
#> [304,]  69   6      0         99        1   140
#> [305,]  65   4      1          1        0   130
#> [306,]  64   4      0        179        0   160
#> [307,]  66   4      0        180        1   130
#> [308,]  64  11      0         11        0   125
#> [309,]  66   7      1          5        1   131
#> [310,]  66   4      0        180        0   177
#> [311,]  68   4      1          0        1   160
#> [312,]  69   4      1          3        1   150
#> [313,]  65  13      1         12        1   130
#> [314,]  69  17      1         10        0   140
#> [315,]  69   8      0         93        0   140
#> [316,]  66   6      0        180        0   140
#> [317,]  65   6      0        101        1   115
#> [318,]  68   4      0          4        1   190
#> [319,]  71   3      0          5        0   112
#> [320,]  68   7      0        150        0   210
#> [321,]  66   9      1          3        1   151
#> [322,]  66   1      1          1        1   165
#> [323,]  70   4      1          0        1   180
#> [324,]  69   8      0        180        1   153
#> [325,]  70  14      0        171        0   166
#> [326,]  66   4      0        180        0   130
#> [327,]  67   6      1          4        0   130
#> [328,]  65   2      0        180        0   130
#> [329,]  68   7      1          0        1   150
#> [330,]  69   3      1          2        0   151
#> [331,]  65  14      1         13        1   150
#> [332,]  69   8      0        180        1   180
#> [333,]  66   2      0          2        1   228
#> [334,]  69   5      0          5        1   142
#> [335,]  69   3      0          3        1   130
#> [336,]  70  22      1         13        0   103
#> [337,]  67   1      0         36        1   104
#> [338,]  67   5      0          5        0   130
#> [339,]  68   6      0        180        0   145
#> [340,]  69   8      1          5        1   195
#> [341,]  72   3      1          0        1   132
#> [342,]  72   7      0          7        1   110
#> [343,]  69   8      1          7        1   108
#> [344,]  67   3      0        180        0   110
#> [345,]  66   2      1          1        0   123
#> [346,]  68  18      0         18        1   100
#> [347,]  67  14      0        172        1   140
#> [348,]  66   2      0        180        0   130
#> [349,]  69   4      1          3        0   132
#> [350,]  68   2      0          7        1   130
#> [351,]  69   8      1          2        0   121
#> [352,]  67  13      1          9        0   130
#> [353,]  70   3      0        123        0   130
#> [354,]  70   9      0        180        1   142
#> [355,]  72   5      1          4        0   170
#> [356,]  67  22      1          1        1   140
#> [357,]  69   1      0          1        1   110
#> [358,]  67   1      0          1        1    60
#> [359,]  67   4      0         60        1   136
#> [360,]  67   8      1          0        1   130
#> [361,]  72  13      1         11        1   195
#> [362,]  68  10      1          8        1   160
#> [363,]  66  24      1         13        0   130
#> [364,]  70  35      1          0        1   105
#> [365,]  70   7      0          7        0   102
#> [366,]  71   6      0          9        0   120
#> [367,]  69  10      1          6        1   120
#> [368,]  70  11      0        180        1   210
#> [369,]  72  12      1         10        0   170
#> [370,]  67   8      0        180        1   170
#> [371,]  67   9      0        180        0   158
#> [372,]  70   5      0        180        0   150
#> [373,]  72   2      0          2        1   100
#> [374,]  67   4      1          1        0   134
#> [375,]  72   6      1          5        0   115
#> [376,]  71   1      0        173        1   188
#> [377,]  68  23      0        180        1   220
#> [378,]  70   3      0        180        0   121
#> [379,]  69   3      0        180        0   220
#> [380,]  72   5      0         28        0   120
#> [381,]  71   5      0        180        0   191
#> [382,]  73   6      0        180        1   117
#> [383,]  69  16      1         10        1   140
#> [384,]  68   7      0        180        1   130
#> [385,]  72  16      1          1        1   130
#> [386,]  70   4      0        180        0   180
#> [387,]  69   1      1          0        0   155
#> [388,]  73   6      1          0        1   270
#> [389,]  72   8      1          1        1   150
#> [390,]  71   2      1          0        1   180
#> [391,]  68  15      1         13        1   130
#> [392,]  70   3      0          3        1   159
#> [393,]  70  13      1          9        0   100
#> [394,]  72   6      0        180        1   130
#> [395,]  73   0      0        180        1   161
#> [396,]  74   8      1          0        1    85
#> [397,]  73   4      0        180        1   154
#> [398,]  69   2      1          0        1   110
#> [399,]  71   3      1          1        0   150
#> [400,]  71  15      1         11        0   165
#> [401,]  68   9      0        180        1   120
#> [402,]  73   3      1          0        1   136
#> [403,]  70   5      1          0        1   190
#> [404,]  71  17      1         11        0   160
#> [405,]  71   3      1          2        1   190
#> [406,]  70  26      1         11        1   120
#> [407,]  73   4      0         58        1   160
#> [408,]  70   3      0        180        1   154
#> [409,]  73   6      0        180        0   110
#> [410,]  72  15      1          0        1   150
#> [411,]  71   7      1          2        0   143
#> [412,]  74   3      0          3        1   150
#> [413,]  69   2      1          1        1    80
#> [414,]  71  14      1         13        1   170
#> [415,]  72  15      1         13        0   156
#> [416,]  71  10      1          9        1   120
#> [417,]  75   1      0          1        0   133
#> [418,]  73  10      1          9        1   146
#> [419,]  72  10      1          9        1   160
#> [420,]  74  15      1          9        1   179
#> [421,]  71   2      0         10        1   112
#> [422,]  75   9      1          7        0   140
#> [423,]  75  13      1          1        1   130
#> [424,]  71  11      1          8        0   110
#> [425,]  71   4      0          4        0   134
#> [426,]  72  15      1         12        1   120
#> [427,]  73  10      1          8        0   120
#> [428,]  70   7      1          4        0   184
#> [429,]  72   7      0         57        1   145
#> [430,]  73  10      0        180        0   162
#> [431,]  72  11      0         11        1   140
#> [432,]  70   3      0          3        0   150
#> [433,]  73  12      1         12        1   140
#> [434,]  72   4      1          0        1   197
#> [435,]  71   3      1          0        0   144
#> [436,]  73   5      0        180        0   126
#> [437,]  74  34      1          8        1   233
#> [438,]  76   3      1          0        1   120
#> [439,]  71  32      1         12        1   107
#> [440,]  72   5      0        180        0   154
#> [441,]  72   3      0        180        0   160
#> [442,]  77   4      0          4        0   185
#> [443,]  75   3      1          1        0   180
#> [444,]  72   7      1          2        0   142
#> [445,]  73  15      0         15        1   160
#> [446,]  76   8      1          0        1   141
#> [447,]  75  23      1         14        1   110
#> [448,]  74   2      0        180        0   190
#> [449,]  72   4      0         85        1   120
#> [450,]  73   4      1          3        1   125
#> [451,]  76  13      1         10        0   110
#> [452,]  75   4      1          0        1   122
#> [453,]  75   7      0          7        0   190
#> [454,]  76  13      1          8        1   148
#> [455,]  74   6      0        180        0   160
#> [456,]  75   1      0          1        1   125
#> [457,]  74   2      0        180        0   111
#> [458,]  73   0      0        180        0   156
#> [459,]  72   5      0        180        0   120
#> [460,]  78  12      1         11        1   160
#> [461,]  76  44      1         10        0   105
#> [462,]  76   5      0        180        0   185
#> [463,]  74  10      1          0        1   135
#> [464,]  74   8      1          8        1   170
#> [465,]  77   5      1          0        0   123
#> [466,]  77  12      1          9        1   100
#> [467,]  73  10      1          9        0   146
#> [468,]  77  12      0        180        0   130
#> [469,]  73   7      1          0        0   174
#> [470,]  74   6      0         79        1   140
#> [471,]  75   3      1          1        1   171
#> [472,]  74   9      1          8        0   200
#> [473,]  75   6      0        180        0   150
#> [474,]  79  10      1          8        0   190
#> [475,]  77   3      0        180        0   110
#> [476,]  76  29      0         47        0    90
#> [477,]  73   8      1          1        1   162
#> [478,]  74   2      0        180        0   100
#> [479,]  78   8      1          6        1   110
#> [480,]  76  13      1          1        1   170
#> [481,]  79   6      0        180        0   170
#> [482,]  78  13      1          5        0   130
#> [483,]  75   5      0        119        1   150
#> [484,]  75  12      1          1        1   120
#> [485,]  78  15      0        180        1   270
#> [486,]  80   8      0          8        1   120
#> [487,]  75  13      1          6        0   150
#> [488,]  76   1      0          1        1    83
#> [489,]  79   4      0         80        0   145
#> [490,]  78  12      1          9        0   150
#> [491,]  78   2      1          1        0   130
#> [492,]  75   4      1          0        0   212
#> [493,]  78  10      0        180        1   130
#> [494,]  76  11      1          0        0   120
#> [495,]  75  11      1          4        0   162
#> [496,]  79   8      0         32        1   120
#> [497,]  80   9      0         23        1   128
#> [498,]  80   6      0          6        1   150
#> [499,]  78   6      1          0        1   240
#> [500,]  76   3      1          0        1   140
#> [501,]  79  11      0        180        0   160
#> [502,]  79   2      1          0        1   121
#> [503,]  78  14      1          0        1   140
#> [504,]  78  11      1          8        1   118
#> [505,]  76   4      0          4        1   160
#> [506,]  79   4      0          4        1   125
#> [507,]  76  10      1          8        0   180
#> [508,]  76  12      1         10        1   127
#> [509,]  77   6      0          6        1   107
#> [510,]  80   3      1          0        1   120
#> [511,]  75   2      1          1        1   204
#> [512,]  78  11      0        180        1   135
#> [513,]  77  31      1          3        1   161
#> [514,]  76   1      0          1        1    90
#> [515,]  78   7      1          0        1   110
#> [516,]  77   7      0        180        1   170
#> [517,]  77   6      0          6        1   144
#> [518,]  79   4      1          0        1   120
#> [519,]  81   1      0        180        0   120
#> [520,]  80  15      1         12        1   150
#> [521,]  82   5      0          8        1   120
#> [522,]  80  40      1          0        1   138
#> [523,]  78   4      0         59        1   112
#> [524,]  76   7      0        161        0   151
#> [525,]  79  10      0         10        1   120
#> [526,]  80  15      1          0        1    90
#> [527,]  81   4      1          2        1   126
#> [528,]  79  28      0        164        0   100
#> [529,]  80   9      0        118        1   186
#> [530,]  80   6      0        173        1   160
#> [531,]  79   1      0         37        1   140
#> [532,]  81   2      0        175        0   172
#> [533,]  77  13      1          0        1   190
#> [534,]  78  15      0         15        0   165
#> [535,]  80   5      1          1        1   108
#> [536,]  78  20      1          0        1   109
#> [537,]  82   3      1          1        1   144
#> [538,]  77   5      0         85        0   188
#> [539,]  79   6      0          6        0   152
#> [540,]  80   5      0          5        1   130
#> [541,]  79  10      0        180        1   150
#> [542,]  77   4      0        180        1    98
#> [543,]  79   1      0        125        0   193
#> [544,]  82  21      1          2        0   155
#> [545,]  84  22      1         10        0   180
#> [546,]  79   4      0          4        1   121
#> [547,]  80   6      0          6        1   110
#> [548,]  83   9      1          5        1   170
#> [549,]  82   5      0        180        0   110
#> [550,]  83   5      0        180        0   148
#> [551,]  79   7      1          6        0   130
#> [552,]  83   4      0        103        0    97
#> [553,]  80  11      1          8        0   170
#> [554,]  78  23      1         10        1   145
#> [555,]  78   9      1          4        1   120
#> [556,]  79   1      0        180        1   170
#> [557,]  81  15      0        180        1   140
#> [558,]  80   7      1          0        1   146
#> [559,]  84   5      1          1        1    85
#> [560,]  83   8      0          8        0   115
#> [561,]  81  16      0         16        1   110
#> [562,]  80   6      1          0        1   150
#> [563,]  80  11      1          8        0   110
#> [564,]  81   8      0        180        0   146
#> [565,]  80   8      1          7        0   160
#> [566,]  81   2      1          1        0   198
#> [567,]  82   6      0        128        1   100
#> [568,]  80   3      1          1        1   230
#> [569,]  83   3      0        180        0   174
#> [570,]  81   4      0         90        1   138
#> [571,]  79   9      1          8        0   150
#> [572,]  85   3      1          2        1   160
#> [573,]  80  13      1          8        1   140
#> [574,]  84   4      0         89        1   129
#> [575,]  80   2      1          0        1   130
#> [576,]  79   4      0          4        1    60
#> [577,]  82  19      0         19        0   120
#> [578,]  83   9      0        180        0   198
#> [579,]  83   3      0        114        0    98
#> [580,]  81  14      1         12        1   128
#> [581,]  83   2      0        154        0   130
#> [582,]  82   0      0          2        1   100
#> [583,]  84  15      1         13        1   110
#> [584,]  82   5      1          0        1   146
#> [585,]  86  12      0        180        1   120
#> [586,]  83  12      1          2        1   170
#> [587,]  82   3      1          2        0   130
#> [588,]  80   2      0         88        0   135
#> [589,]  83   7      0        126        0   135
#> [590,]  82   9      0        180        1   134
#> [591,]  84   3      0        180        1   120
#> [592,]  81  13      0        180        0   152
#> [593,]  81   2      1          0        1   118
#> [594,]  81   4      0        180        0   160
#> [595,]  82   1      0        180        1   193
#> [596,]  83   4      0          4        0   130
#> [597,]  82  14      1         11        1   103
#> [598,]  84   3      1          2        0   125
#> [599,]  83  10      1          0        1   190
#> [600,]  83  13      1         12        0   170
#> [601,]  84   7      1          2        0   148
#> [602,]  84   9      0         92        1   110
#> [603,]  84   3      0        180        1   170
#> [604,]  82   4      0          4        0   130
#> [605,]  86  13      0        177        0   163
#> [606,]  86   6      0          6        1   117
#> [607,]  84  13      0         62        1   100
#> [608,]  83  20      1          3        1   150
#> [609,]  85  22      0         22        1   184
#> [610,]  83   9      0         65        1   150
#> [611,]  86   9      1          7        1   142
#> [612,]  86   6      0         46        0   173
#> [613,]  88   3      0        115        0   110
#> [614,]  88   2      0        180        1    68
#> [615,]  87   8      0          8        1   157
#> [616,]  86  15      1          8        1   109
#> [617,]  88   4      0          4        0    86
#> [618,]  89   4      0          4        1   153
#> [619,]  89   5      0        119        1   140
#> [620,]  87   6      0        180        1   110
#> [621,]  87   1      0          1        0   170
#> [622,]  85   8      0          8        1   136
#> [623,]  84   2      0        110        1   174
#> [624,]  87  29      0         29        1    97
#> [625,]  87  15      1          9        1   138
#> [626,]  84   0      0        180        1   136
#> [627,]  89  10      0         46        1   170
#> [628,]  90  14      0         14        1   100
#> [629,]  88   1      0          1        0   135
#> [630,]  86   4      0        180        1   145
#> [631,]  91   8      0          8        0   100
#> [632,]  87   2      0        180        0   160
#> [633,]  87   6      1          0        0   125
#> [634,]  91  10      0        145        0   135
#> [635,]  88   7      0         24        0   119
#> [636,]  88   8      0         50        1   154
#> [637,]  90  11      1         10        1   186
#> [638,]  87   6      0        126        1   168
#> [639,]  86  10      0        180        1   137
#> [640,]  90   4      1          0        0   121
#> [641,]  87  43      0        178        1   130
#> [642,]  87   5      0         36        1   150
#> [643,]  90   5      1          0        1   125
#> [644,]  88   3      1          2        0   159
#> [645,]  89   3      1          1        1   160
#> [646,]  92   1      0          1        1   167
#> [647,]  88   5      0        158        0   100
#> [648,]  89  12      1          0        1   130
#> [649,]  89   2      0        168        0   118
#> [650,]  89   4      0          4        1   159
#> [651,]  91   0      0          0        0     0
#> [652,]  89  14      0        180        1    84
#> [653,]  91   4      1          0        1   120
#> [654,]  94   6      0         50        0    78
#> [655,]  90   1      0          1        1   118
#> [656,]  93   8      0        179        1   110
#> [657,]  94   8      0          8        1   142
#> [658,]  92   4      0         76        1   149
#> [659,]  91   1      0        180        0   158
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  96   3      0         12        1    97
#> [663,]  94   3      0         26        1   144
#> [664,]  91   7      0          7        0   135
#> [665,]  93   0      1          0        1   122
#> [666,]  92   5      0         69        0   139
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 115.0  180.0+
#>  [11] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   2.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 155.0+ 180.0+
#>  [31] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+   6.0+
#>  [41] 180.0+  73.0    5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+   1.0  179.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+  85.0 
#>  [91] 180.0+ 180.0+ 166.0+  99.0   16.0+ 152.0+   7.0+ 180.0+ 180.0+  13.0+
#> [101] 171.0+ 180.0+ 180.0+   1.0  180.0+   9.0+ 180.0+ 180.0+ 180.0+ 175.0+
#> [111] 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+  12.0+ 180.0+
#> [121]   2.0    3.0+ 180.0+ 180.0+ 180.0+ 140.0    1.0  165.0  180.0+ 180.0+
#> [131] 180.0+ 180.0+   8.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 171.0+  15.0 
#> [141] 166.0+ 147.0+ 180.0+   5.0+ 180.0+   4.0+ 180.0+   9.0+   1.0  180.0+
#> [151] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+  64.0  180.0+
#> [161] 180.0+ 180.0+   9.0+ 180.0+   0.5  171.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [171] 180.0+  10.0+ 180.0+  17.0    3.0+  19.0  180.0+ 180.0+   9.0+ 180.0+
#> [181] 172.0+ 172.0+  24.0  180.0+   8.0  180.0+ 180.0+   1.0+  15.0  180.0+
#> [191]  77.0    8.0+ 180.0+ 180.0+ 180.0+ 170.0  180.0+ 169.0    7.0    6.0 
#> [201] 180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+  13.0+   5.0   18.0 
#> [211]   5.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [221] 180.0+ 180.0+   7.0+  22.0  180.0+  84.0    7.0+ 180.0+ 180.0+   1.0 
#> [231]   1.0  180.0+ 180.0+   4.0+   3.0+ 167.0    6.0+ 180.0+ 180.0+  17.0 
#> [241] 180.0+  12.0  180.0+ 180.0+  14.0+ 180.0+   3.0+  12.0  180.0+ 180.0+
#> [251] 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+  12.0  180.0+   9.0  180.0+
#> [261] 180.0+  11.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+
#> [271] 103.0   15.0  180.0+  13.0  180.0+  14.0+   0.5+ 180.0+   3.0+ 180.0+
#> [281] 180.0+   8.0   16.0    1.0  180.0+ 180.0+ 180.0+   1.0+  79.0  180.0+
#> [291]  15.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+   3.0  175.0  180.0+  10.0 
#> [301] 180.0+ 180.0+ 180.0+  99.0  180.0+ 179.0+ 180.0+  11.0+   7.0+ 180.0+
#> [311] 180.0+ 152.0+ 180.0+ 180.0+  93.0  180.0+ 101.0    4.0    5.0  150.0 
#> [321] 180.0+   1.0  180.0+ 180.0+ 171.0  180.0+   6.0  180.0+ 180.0+ 180.0+
#> [331]  14.0+ 180.0+   2.0    5.0+   3.0+ 180.0+  36.0    5.0+ 180.0+ 180.0+
#> [341] 180.0+   7.0    8.0+ 180.0+   2.0+  18.0  172.0+ 180.0+ 180.0+   7.0 
#> [351]   8.0+  13.0+ 123.0  180.0+ 180.0+  51.0    1.0    1.0   60.0  180.0+
#> [361] 132.0   10.0+ 180.0+ 180.0+   7.0+   9.0  180.0+ 180.0+  12.0  180.0+
#> [371] 180.0+ 180.0+   2.0   76.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+  28.0 
#> [381] 180.0+ 180.0+  16.0+ 180.0+  16.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+
#> [391]  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+
#> [401] 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+  58.0  180.0+ 180.0+ 180.0+
#> [411] 180.0+   3.0    2.0   14.0+ 180.0+ 179.0+   1.0  180.0+ 159.0  180.0+
#> [421]  10.0  180.0+  13.0  180.0+   4.0+ 180.0+  10.0  104.0+  57.0  180.0+
#> [431]  11.0    3.0+  12.0  180.0+ 180.0+ 180.0+  34.0  180.0+ 177.0+ 180.0+
#> [441] 180.0+   4.0+ 180.0+   7.0   15.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+
#> [451] 174.0+   4.0    7.0  180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+  12.0 
#> [461] 180.0+ 180.0+ 180.0+   8.0    5.0  180.0+ 180.0+ 180.0+   7.0+  79.0 
#> [471]   3.0  168.0+ 180.0+ 180.0+ 180.0+  47.0  180.0+ 180.0+   8.0+ 180.0+
#> [481] 180.0+ 172.0  119.0   12.0  180.0+   8.0  180.0+   1.0   80.0  180.0+
#> [491] 180.0+   4.0+ 180.0+  11.0  152.0+  32.0   23.0    6.0  180.0+   3.0+
#> [501] 180.0+ 180.0+ 180.0+  11.0    4.0    4.0   10.0+ 180.0+   6.0    3.0+
#> [511]   2.0+ 180.0+ 171.0    1.0   43.0  180.0+   6.0  138.0  180.0+ 180.0+
#> [521]   8.0   40.0   59.0  161.0   10.0+ 180.0+  93.0  164.0  118.0  173.0 
#> [531]  37.0  175.0+  22.0   15.0+   5.0+  20.0+ 180.0+  85.0    6.0+   5.0 
#> [541] 180.0+ 180.0+ 125.0  180.0+ 180.0+   4.0    6.0    9.0+ 180.0+ 180.0+
#> [551] 180.0+ 103.0  169.0   70.0  180.0+ 180.0+ 180.0+   7.0+ 180.0+   8.0+
#> [561]  16.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 128.0    3.0+ 180.0+  90.0 
#> [571] 180.0+ 180.0+ 180.0+  89.0  180.0+   4.0   19.0  180.0+ 114.0  180.0+
#> [581] 154.0    2.0  180.0+   5.0+ 180.0+  77.0    3.0   88.0  126.0  180.0+
#> [591] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 174.0  180.0+ 180.0+  13.0 
#> [601] 180.0+  92.0  180.0+   4.0  177.0    6.0+  62.0   20.0   22.0   65.0 
#> [611]  11.0   46.0  115.0  180.0+   8.0+ 180.0+   4.0    4.0  119.0  180.0+
#> [621]   1.0+   8.0  110.0   29.0  180.0+ 180.0+  46.0   14.0    1.0+ 180.0+
#> [631]   8.0  180.0+  25.0  145.0   24.0   50.0   11.0  126.0  180.0+   4.0 
#> [641] 178.0+  36.0   89.0   75.0    3.0+   1.0  158.0  180.0+ 168.0    4.0 
#> [651]   0.5  180.0+   4.0   50.0    1.0+ 179.0+   8.0+  76.0  180.0+  16.0 
#> [661]  67.0   12.0   26.0    7.0+   0.5   69.0    2.0  180.0+   3.0   15.0+
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
#>   0.8454487 
```
