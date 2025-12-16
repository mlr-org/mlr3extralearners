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
#> min 0.00362    44   2.738 0.1313       6
#> 1se 0.06475    13   2.850 0.1334       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  35  10      1          9        0   106
#>   [3,]  34   5      0          5        0   120
#>   [4,]  35   2      0        180        0   121
#>   [5,]  35   2      1          1        1   112
#>   [6,]  38  13      1          0        1   161
#>   [7,]  35   0      0        180        1   119
#>   [8,]  38  12      1          8        1   120
#>   [9,]  38  16      1         10        0   160
#>  [10,]  40  12      1          9        0   153
#>  [11,]  42   3      1          1        1   130
#>  [12,]  37   1      1          0        1   146
#>  [13,]  38   5      1          3        0   125
#>  [14,]  42   2      0          2        0   140
#>  [15,]  40   6      0        180        1   138
#>  [16,]  42   2      0        180        0   100
#>  [17,]  43   3      1          0        1   100
#>  [18,]  40   1      1          0        1   145
#>  [19,]  43   4      1          0        1   130
#>  [20,]  42   4      0        180        0   162
#>  [21,]  40   3      1          1        0   170
#>  [22,]  42  12      1         10        1   170
#>  [23,]  43   2      1          1        1   116
#>  [24,]  42   2      0        180        1   124
#>  [25,]  44   5      1          1        0   170
#>  [26,]  44   3      0        180        0   141
#>  [27,]  41  13      1          1        0   140
#>  [28,]  41   5      1          4        1   141
#>  [29,]  44   2      1          1        1   150
#>  [30,]  43   2      0        180        1   140
#>  [31,]  45   2      0        180        1   140
#>  [32,]  46  15      0        180        0   120
#>  [33,]  46   2      1          1        0   126
#>  [34,]  47   4      1          3        0   118
#>  [35,]  48  15      0        180        1   160
#>  [36,]  46   7      1          2        0   166
#>  [37,]  43  29      0        180        1   180
#>  [38,]  45   4      1          0        0   124
#>  [39,]  43  10      0        180        0   185
#>  [40,]  47   6      1          0        1   116
#>  [41,]  44   0      1          0        1    96
#>  [42,]  47   4      1          3        1   160
#>  [43,]  43   3      1          0        1   124
#>  [44,]  45   8      1          0        1   117
#>  [45,]  49   5      0         73        1   136
#>  [46,]  46   2      1          1        1   122
#>  [47,]  46   6      1          0        1   100
#>  [48,]  44   4      1          0        1   114
#>  [49,]  44   9      1          8        1   135
#>  [50,]  45   5      0        180        1   190
#>  [51,]  46   5      1          3        0   130
#>  [52,]  46  15      0        180        1   120
#>  [53,]  45   9      1          0        1   145
#>  [54,]  47   3      1          1        1   120
#>  [55,]  48   3      0        180        0   154
#>  [56,]  48  12      1         11        0   200
#>  [57,]  47   5      1          3        1   130
#>  [58,]  47   9      1          6        0   170
#>  [59,]  47  10      0         10        1   140
#>  [60,]  50   1      1          0        1   129
#>  [61,]  47   7      0        180        0   145
#>  [62,]  50   6      1          2        1   140
#>  [63,]  49   7      1          7        1   110
#>  [64,]  46   9      1          9        1   122
#>  [65,]  50   7      0        180        1   110
#>  [66,]  49   2      0          2        0   105
#>  [67,]  51   1      0          1        1   145
#>  [68,]  49  15      1         11        1   160
#>  [69,]  47   2      0        180        0   150
#>  [70,]  46   6      1          0        1   156
#>  [71,]  52   2      0        180        1   170
#>  [72,]  50   7      1          0        1    92
#>  [73,]  50   4      0          4        1   100
#>  [74,]  50   1      1          0        0   150
#>  [75,]  50   9      0        180        0   130
#>  [76,]  47   8      0        180        0   160
#>  [77,]  47   6      0        180        1   162
#>  [78,]  51   8      0        180        1   140
#>  [79,]  46   3      0        180        1   120
#>  [80,]  46   1      1          1        0   145
#>  [81,]  50   4      1          1        0   150
#>  [82,]  48   7      1          0        1   110
#>  [83,]  47   2      1          1        0   110
#>  [84,]  52   4      1          4        0   152
#>  [85,]  49   9      1          3        0   102
#>  [86,]  49  15      0        180        1   160
#>  [87,]  53   5      0        180        1   140
#>  [88,]  54  17      1         12        1   102
#>  [89,]  53   5      0         77        0   159
#>  [90,]  53   7      1          0        0   199
#>  [91,]  54   6      1          3        0   129
#>  [92,]  50   2      0          5        1   106
#>  [93,]  50  10      1          6        0   122
#>  [94,]  53   8      1          7        0   160
#>  [95,]  51  25      1          1        0   202
#>  [96,]  49   5      1          2        1   150
#>  [97,]  53   4      0          4        0   140
#>  [98,]  52  14      1          7        1   200
#>  [99,]  48   6      0        180        0   160
#> [100,]  48  11      1         10        0   120
#> [101,]  53   4      1          0        1   156
#> [102,]  51  13      0         99        1   160
#> [103,]  54   9      1          0        1   138
#> [104,]  54  23      1         10        0   131
#> [105,]  52   7      1          2        0   154
#> [106,]  55   4      1          2        0   150
#> [107,]  52   4      0        180        1   180
#> [108,]  51  13      1         11        0   145
#> [109,]  50   5      1          4        1   150
#> [110,]  52   4      0        180        0   183
#> [111,]  50   3      0        174        1   153
#> [112,]  49   6      1          0        1   130
#> [113,]  49   1      0          1        1   110
#> [114,]  50   7      1          1        0   156
#> [115,]  53   9      0          9        1    95
#> [116,]  53   8      1          0        1   130
#> [117,]  50   7      1          0        1   127
#> [118,]  56   4      1          1        1   130
#> [119,]  55   1      0        180        0   127
#> [120,]  54   1      0        180        0   162
#> [121,]  56   3      0        180        1   193
#> [122,]  56   2      0        180        0   132
#> [123,]  55   5      1          4        1   120
#> [124,]  52   8      0        180        0   119
#> [125,]  53  18      1          9        1   150
#> [126,]  54   3      0        180        1   180
#> [127,]  52  16      0         16        0   152
#> [128,]  53  10      1          9        0   172
#> [129,]  52  16      1         14        0   170
#> [130,]  53   4      0        180        1   150
#> [131,]  55   6      0        180        1   100
#> [132,]  56   3      0          8        1   139
#> [133,]  57   3      0          3        0   120
#> [134,]  54   7      1          2        0   129
#> [135,]  52   9      1          3        0   170
#> [136,]  57   1      0        180        1   156
#> [137,]  56   4      1          0        1   140
#> [138,]  52   2      0        180        0   140
#> [139,]  57  10      0        180        1   170
#> [140,]  58   8      0          8        1   130
#> [141,]  54   5      0        180        1   108
#> [142,]  55   3      1          1        1   156
#> [143,]  53  21      1         13        1   130
#> [144,]  59   3      1          1        0   172
#> [145,]  57   4      0        180        1   119
#> [146,]  58   6      1          0        1    90
#> [147,]  55  13      0        166        1   140
#> [148,]  57   4      1          2        1   185
#> [149,]  53   4      0        147        1   145
#> [150,]  53   7      1          0        1   120
#> [151,]  57  11      1         10        1   129
#> [152,]  54   7      1          0        1   141
#> [153,]  56   4      0          4        0   164
#> [154,]  58   9      1          0        1   180
#> [155,]  58   1      1          1        1   200
#> [156,]  55   5      1          0        0   140
#> [157,]  55   2      0          2        0   106
#> [158,]  57   1      0        180        0   148
#> [159,]  60  11      1          9        0   106
#> [160,]  58   4      1          0        1   160
#> [161,]  58  11      1          9        1   124
#> [162,]  57  10      1          9        0   103
#> [163,]  59   6      1          0        1   140
#> [164,]  59   5      0        180        1   155
#> [165,]  58  26      1          0        1   189
#> [166,]  61   9      0          9        1   160
#> [167,]  58   4      1          3        0   120
#> [168,]  60   0      1          0        1    80
#> [169,]  59   2      1          1        0   140
#> [170,]  58   8      0        161        1   140
#> [171,]  61   9      1          8        0   150
#> [172,]  61   3      1          2        1   102
#> [173,]  61  20      1         13        0   130
#> [174,]  57  13      1         10        0   110
#> [175,]  58  10      0         10        1   150
#> [176,]  57   4      1          3        0   138
#> [177,]  61   3      0         17        0   143
#> [178,]  56  14      0         45        0   130
#> [179,]  58  19      1         13        1   140
#> [180,]  56  13      1          6        1   158
#> [181,]  56  18      1         11        1   165
#> [182,]  55   4      1          3        1   160
#> [183,]  58  11      0        172        1   135
#> [184,]  60  12      1          0        1   114
#> [185,]  55   9      1          7        1   135
#> [186,]  56   8      1          8        0   120
#> [187,]  59  11      1          8        1   190
#> [188,]  57   1      0          1        0   126
#> [189,]  57  15      1         13        1   110
#> [190,]  59   5      1          2        0   182
#> [191,]  58   5      1          1        1   135
#> [192,]  61   8      0         77        0   120
#> [193,]  58   8      1          5        0   152
#> [194,]  62  10      1          0        1   153
#> [195,]  62   7      1          2        1   180
#> [196,]  57   3      1          0        0   100
#> [197,]  61  18      0        170        0   140
#> [198,]  60   7      0          7        0   147
#> [199,]  61   6      0          6        0   134
#> [200,]  57  12      1          9        1   120
#> [201,]  62   4      1          0        0   160
#> [202,]  60  17      1          8        1   140
#> [203,]  62   4      1          3        0   173
#> [204,]  59   1      0        180        0   155
#> [205,]  59  16      1          9        1   133
#> [206,]  63   6      0         28        1   120
#> [207,]  61  13      0         13        0   120
#> [208,]  61   5      0          5        1   110
#> [209,]  61   5      0          5        1   160
#> [210,]  58  11      1          9        0   179
#> [211,]  57   2      1          1        0   159
#> [212,]  62  17      1         10        1   180
#> [213,]  58   7      0        180        1   150
#> [214,]  63   3      1          1        0   180
#> [215,]  63   1      0        180        1   130
#> [216,]  61   7      0        180        0   135
#> [217,]  63   4      1          3        0   222
#> [218,]  62   3      0        180        1   105
#> [219,]  63  15      1         10        1   126
#> [220,]  63   4      1          1        0   155
#> [221,]  60  18      1         13        0   132
#> [222,]  59   8      0        180        1   140
#> [223,]  58   9      1          9        0   110
#> [224,]  62   7      0          7        0   150
#> [225,]  59   1      0         22        1   162
#> [226,]  59   4      0        180        0   196
#> [227,]  60   7      0          7        0   140
#> [228,]  59   5      1          1        0   148
#> [229,]  60   7      1          1        1    90
#> [230,]  63   1      0          1        0   162
#> [231,]  63   1      0          1        0   130
#> [232,]  62   6      0        180        0   170
#> [233,]  61  15      1         13        0   170
#> [234,]  59   4      0          4        0   149
#> [235,]  62   6      0          6        0   120
#> [236,]  63  12      1         10        0   200
#> [237,]  59  10      0        180        1   130
#> [238,]  66   1      1          0        1   120
#> [239,]  63  10      1          0        1   148
#> [240,]  63  14      1          9        0   123
#> [241,]  65  36      1         11        0   140
#> [242,]  63   4      1          3        0   162
#> [243,]  61  10      1          2        1   194
#> [244,]  64  32      1          9        1   160
#> [245,]  63  12      1          9        0   114
#> [246,]  63   7      0        180        0   120
#> [247,]  66   5      1          0        1   110
#> [248,]  65   8      1          0        0   168
#> [249,]  64   0      0          0        1    90
#> [250,]  60   6      0        180        0   130
#> [251,]  61   4      0        180        1   113
#> [252,]  63  16      1          7        1   110
#> [253,]  64   7      0        180        1   120
#> [254,]  66   6      1          1        1   130
#> [255,]  63  12      0         12        1   150
#> [256,]  62   3      1          1        1   199
#> [257,]  63   2      1          1        0   180
#> [258,]  67  11      0         11        1   100
#> [259,]  64   2      0          2        0   201
#> [260,]  66  16      1         11        1   169
#> [261,]  62   9      0        180        0   145
#> [262,]  61  14      1          5        0   140
#> [263,]  61  15      1         10        0   130
#> [264,]  63   9      1          8        1   160
#> [265,]  63   2      1          0        0   140
#> [266,]  64  19      1          8        1   160
#> [267,]  65   8      1          0        1   140
#> [268,]  65  15      1         11        1   160
#> [269,]  66   7      1          0        1   115
#> [270,]  66  13      1          0        0   118
#> [271,]  64   0      0          0        1   148
#> [272,]  67   4      1          3        0   130
#> [273,]  66   3      1          0        1   135
#> [274,]  65   2      1          1        1   170
#> [275,]  68   1      0        180        1   166
#> [276,]  64  10      1          9        1   110
#> [277,]  63   7      1          0        0   162
#> [278,]  67   8      1          1        1   130
#> [279,]  68   5      0          5        1    90
#> [280,]  63  10      0         16        1   160
#> [281,]  66  14      0        180        0   130
#> [282,]  64   1      0          1        1   120
#> [283,]  65  18      1          3        0   120
#> [284,]  63   1      1          0        1   155
#> [285,]  63  10      0         18        1   130
#> [286,]  67  11      0         11        0   150
#> [287,]  68  11      0        180        0   160
#> [288,]  68  14      0         79        0   172
#> [289,]  65   4      1          2        1   145
#> [290,]  69  12      0         15        1   140
#> [291,]  66  15      1         13        1   160
#> [292,]  63   2      0        180        0   150
#> [293,]  65  11      1          6        0   130
#> [294,]  69  21      1         10        0   180
#> [295,]  69   6      0        180        1   100
#> [296,]  63   8      0        180        1   120
#> [297,]  68  14      1         13        1   140
#> [298,]  65   8      1          0        1    90
#> [299,]  66   3      0          3        1   138
#> [300,]  69   1      1          0        0   170
#> [301,]  67   1      0        180        1   160
#> [302,]  68  10      1         10        1   150
#> [303,]  63   2      1          0        0    99
#> [304,]  67   2      0        180        0   184
#> [305,]  65  10      1          1        1   148
#> [306,]  66  19      1         12        1   150
#> [307,]  67  12      1         12        0   160
#> [308,]  69   6      0         99        1   140
#> [309,]  65   4      1          1        0   130
#> [310,]  64   4      0        179        0   160
#> [311,]  66   4      0        180        1   130
#> [312,]  70  15      1         12        1   132
#> [313,]  64  11      0         11        0   125
#> [314,]  64   0      1          0        1   118
#> [315,]  66   7      1          5        1   131
#> [316,]  66   4      0        180        0   177
#> [317,]  68   4      1          0        1   160
#> [318,]  65  13      1         12        1   130
#> [319,]  69   8      0         93        0   140
#> [320,]  64  21      0         21        1   155
#> [321,]  66   6      0        180        0   140
#> [322,]  65   1      0          1        1   120
#> [323,]  68  18      1          0        1   160
#> [324,]  65   6      0        101        1   115
#> [325,]  70   7      1          0        1   190
#> [326,]  68   7      0        150        0   210
#> [327,]  71  20      1          0        1   160
#> [328,]  67   2      0        180        0   128
#> [329,]  66   9      1          3        1   151
#> [330,]  69   8      0        180        1   153
#> [331,]  70  14      0        171        0   166
#> [332,]  67   6      1          4        0   130
#> [333,]  69   0      0          0        1   148
#> [334,]  65   2      0        180        0   130
#> [335,]  68   7      1          0        1   150
#> [336,]  69   3      1          2        0   151
#> [337,]  67  14      1         13        0   130
#> [338,]  69   8      0        180        1   180
#> [339,]  71   7      0          7        0   230
#> [340,]  66   2      0          2        1   228
#> [341,]  71   6      0         45        1   158
#> [342,]  69   5      0          5        1   142
#> [343,]  71   3      0        103        0   133
#> [344,]  69   3      0          3        1   130
#> [345,]  67   1      0         36        1   104
#> [346,]  67   5      0          5        0   130
#> [347,]  68   6      0        180        0   145
#> [348,]  69   8      1          5        1   195
#> [349,]  69   6      1          4        1   174
#> [350,]  72   3      1          0        1   132
#> [351,]  67   3      0        180        0   110
#> [352,]  66   2      1          1        0   123
#> [353,]  67  14      0        172        1   140
#> [354,]  69  11      1          0        1   120
#> [355,]  67   7      1          4        0   122
#> [356,]  69   4      1          3        0   132
#> [357,]  69   8      1          2        0   121
#> [358,]  67  13      1          9        0   130
#> [359,]  67  12      1          8        0   120
#> [360,]  69   1      0          1        1   110
#> [361,]  67   1      0          1        1    60
#> [362,]  69   5      0         76        0   120
#> [363,]  68  10      1          8        1   160
#> [364,]  72  30      1          0        1   145
#> [365,]  70   7      0          7        0   102
#> [366,]  68   7      1          2        0   135
#> [367,]  73  20      1          0        1   170
#> [368,]  71   6      0          9        0   120
#> [369,]  72  19      1          8        0   120
#> [370,]  72  12      1         10        0   170
#> [371,]  67   8      0        180        1   170
#> [372,]  67   9      0        180        0   158
#> [373,]  73  13      0        152        1   130
#> [374,]  70   5      0        180        0   150
#> [375,]  72   2      0          2        1   100
#> [376,]  72   6      1          5        0   115
#> [377,]  71   1      0        173        1   188
#> [378,]  69   3      0        180        0   220
#> [379,]  71   3      1          2        0   150
#> [380,]  68   4      1          3        0   210
#> [381,]  69   8      1          1        0   164
#> [382,]  68   7      0        180        1   130
#> [383,]  72  16      1          1        1   130
#> [384,]  70   4      0        180        0   180
#> [385,]  73   6      1          0        1   270
#> [386,]  71   2      1          0        1   180
#> [387,]  68  15      1         13        1   130
#> [388,]  73   0      0        180        1   161
#> [389,]  74   8      1          0        1    85
#> [390,]  73   4      0        180        1   154
#> [391,]  69   2      1          0        1   110
#> [392,]  71   3      1          1        0   150
#> [393,]  71  20      1         10        0   140
#> [394,]  74   0      1          0        1    90
#> [395,]  73   3      1          0        1   136
#> [396,]  70   5      1          0        1   190
#> [397,]  71  17      1         11        0   160
#> [398,]  71   8      1          7        0   149
#> [399,]  73  10      1          8        0   106
#> [400,]  69  12      1          1        1   149
#> [401,]  73   4      0         58        1   160
#> [402,]  72   5      1          3        1   160
#> [403,]  70   3      0        180        1   154
#> [404,]  72   8      1          0        1   140
#> [405,]  74   3      0          3        1   150
#> [406,]  73  17      1         11        0   140
#> [407,]  71  13      1          8        0   121
#> [408,]  70   4      1          0        1   140
#> [409,]  71  14      1         13        1   170
#> [410,]  74   7      1          0        1   117
#> [411,]  72  10      1          8        1   153
#> [412,]  72  15      1         13        0   156
#> [413,]  70   8      0          8        0   120
#> [414,]  71  10      1          9        1   120
#> [415,]  75   1      0          1        0   133
#> [416,]  72  10      1          9        1   160
#> [417,]  73  10      1         10        1   120
#> [418,]  74  15      1          9        1   179
#> [419,]  71   2      0         10        1   112
#> [420,]  75  13      1          1        1   130
#> [421,]  71  11      1          8        0   110
#> [422,]  71   4      0          4        0   134
#> [423,]  72  15      1         12        1   120
#> [424,]  72   1      1          1        0   168
#> [425,]  73  10      0        180        0   162
#> [426,]  72  11      0         11        1   140
#> [427,]  73   5      1          3        1   112
#> [428,]  76  25      1         12        1   170
#> [429,]  73  12      1         12        1   140
#> [430,]  75   1      0        180        1   140
#> [431,]  72   4      1          0        1   197
#> [432,]  73   5      0        180        0   126
#> [433,]  73   4      0        180        0   124
#> [434,]  76   3      1          0        1   120
#> [435,]  71  32      1         12        1   107
#> [436,]  72   5      0        180        0   154
#> [437,]  76   5      0          5        1   130
#> [438,]  77   4      0          4        0   185
#> [439,]  75   3      1          1        0   180
#> [440,]  72   7      1          2        0   142
#> [441,]  73  15      0         15        1   160
#> [442,]  71  16      0        180        0   140
#> [443,]  73  10      1         10        0   124
#> [444,]  74   3      0          3        1   128
#> [445,]  76   1      0        180        0   114
#> [446,]  74   2      1          1        0   140
#> [447,]  76   8      1          0        1   141
#> [448,]  74  19      1          4        1   200
#> [449,]  73   4      1          3        1   125
#> [450,]  76  13      1         10        0   110
#> [451,]  75   4      1          0        1   122
#> [452,]  75   0      0          0        1   130
#> [453,]  73  13      1         11        0   195
#> [454,]  76  13      1          8        1   148
#> [455,]  75   1      0          1        1   125
#> [456,]  74   2      0        180        0   111
#> [457,]  73   1      0         52        1   105
#> [458,]  72   5      0        180        0   120
#> [459,]  76   5      0        180        0   185
#> [460,]  74  10      1          0        1   135
#> [461,]  73  33      1         12        1   175
#> [462,]  77  12      1          9        1   100
#> [463,]  77  12      0        180        0   130
#> [464,]  74   6      0         79        1   140
#> [465,]  75   3      1          1        1   171
#> [466,]  74   9      1          8        0   200
#> [467,]  75   6      0        180        0   150
#> [468,]  77   3      0        180        0   110
#> [469,]  73  11      1          2        1   110
#> [470,]  78   7      0          7        1   133
#> [471,]  74   7      0          7        0   161
#> [472,]  76  13      1          1        1   170
#> [473,]  78  32      1          9        1   198
#> [474,]  79   6      0        180        0   170
#> [475,]  80  10      1          6        1   147
#> [476,]  78   0      0        180        1   212
#> [477,]  78  13      1          5        0   130
#> [478,]  75  12      1          1        1   120
#> [479,]  78  15      0        180        1   270
#> [480,]  76   1      0          1        1    83
#> [481,]  79   4      0         80        0   145
#> [482,]  78  12      1          9        0   150
#> [483,]  78  10      0        180        1   130
#> [484,]  76  11      1          0        0   120
#> [485,]  75  11      1          4        0   162
#> [486,]  75   3      0          3        0     0
#> [487,]  76   7      0         29        1   150
#> [488,]  77  24      0         24        1   160
#> [489,]  79   8      0         32        1   120
#> [490,]  80   6      0          6        1   150
#> [491,]  78   6      1          0        1   240
#> [492,]  76   3      1          0        1   140
#> [493,]  78  11      1          1        1   140
#> [494,]  79  11      0        180        0   160
#> [495,]  79   2      1          0        1   121
#> [496,]  81   1      0          1        0   130
#> [497,]  78  11      1          8        1   118
#> [498,]  79   4      0          4        1   125
#> [499,]  76  10      1          8        0   180
#> [500,]  77   6      0          6        1   107
#> [501,]  80   3      1          0        1   120
#> [502,]  77  31      1          3        1   161
#> [503,]  76   1      0          1        1    90
#> [504,]  78   7      1          0        1   110
#> [505,]  79   3      0          3        0   120
#> [506,]  77   7      0        180        1   170
#> [507,]  81   1      0        180        0   120
#> [508,]  80  15      1         12        1   150
#> [509,]  77   9      1          4        0   141
#> [510,]  82   5      0          8        1   120
#> [511,]  80  40      1          0        1   138
#> [512,]  78   4      0         59        1   112
#> [513,]  80  17      1         12        0   100
#> [514,]  76   7      0        161        0   151
#> [515,]  79  10      0         10        1   120
#> [516,]  79  28      0        164        0   100
#> [517,]  80   6      0        173        1   160
#> [518,]  78  32      0        180        1   130
#> [519,]  79   1      0         37        1   140
#> [520,]  81   3      0        180        0   184
#> [521,]  78   7      0          7        1   147
#> [522,]  77  13      1          0        1   190
#> [523,]  80   5      1          1        1   108
#> [524,]  78   4      0        180        0   175
#> [525,]  79   3      0          3        1   101
#> [526,]  76   1      0        166        0   131
#> [527,]  81   4      1          1        1   104
#> [528,]  78  20      1          0        1   109
#> [529,]  80   1      0          1        0   100
#> [530,]  78   3      1          1        1   152
#> [531,]  77  10      1          8        1   130
#> [532,]  82   3      1          1        1   144
#> [533,]  77   5      0         85        0   188
#> [534,]  80   2      1          1        0   168
#> [535,]  80   6      1          0        1   119
#> [536,]  78   2      0        180        0   148
#> [537,]  79  10      0        180        1   150
#> [538,]  77   4      0        180        1    98
#> [539,]  81   1      0        108        0   129
#> [540,]  79   1      0        125        0   193
#> [541,]  82  21      1          2        0   155
#> [542,]  84  22      1         10        0   180
#> [543,]  80   6      0          6        1   110
#> [544,]  82   5      0        180        0   110
#> [545,]  79   7      1          6        0   130
#> [546,]  81  11      1          8        0   160
#> [547,]  81   5      0        177        0    41
#> [548,]  78   9      1          4        1   120
#> [549,]  79   1      0        180        1   170
#> [550,]  81  15      0        180        1   140
#> [551,]  80   7      1          0        1   146
#> [552,]  84   5      1          1        1    85
#> [553,]  81  20      1          9        0   170
#> [554,]  81  16      0         16        1   110
#> [555,]  80   6      1          0        1   150
#> [556,]  81   8      0        180        0   146
#> [557,]  80   8      1          7        0   160
#> [558,]  79   0      1          0        1    96
#> [559,]  85   4      0        180        0    90
#> [560,]  81   2      1          1        0   198
#> [561,]  83   2      0          2        1   155
#> [562,]  82   6      0        128        1   100
#> [563,]  84   4      0        167        0   198
#> [564,]  82  23      1          0        0   110
#> [565,]  84   5      0        180        1   203
#> [566,]  84   4      0          4        1    85
#> [567,]  81   1      0          1        1   150
#> [568,]  83   3      0        180        0   174
#> [569,]  79   9      1          8        0   150
#> [570,]  80  13      1          8        1   140
#> [571,]  84   4      0         89        1   129
#> [572,]  79   4      0          4        1    60
#> [573,]  83   1      0          1        1   100
#> [574,]  83   9      0        180        0   198
#> [575,]  79  14      1          0        0   110
#> [576,]  83   3      0        114        0    98
#> [577,]  81  14      1         12        1   128
#> [578,]  83   2      0        154        0   130
#> [579,]  85   9      1          6        1   160
#> [580,]  83   1      0        180        0   160
#> [581,]  81   1      0          1        1   145
#> [582,]  82  16      1          8        0   103
#> [583,]  81   4      0          4        0   160
#> [584,]  86  12      0        180        1   120
#> [585,]  83  12      1          2        1   170
#> [586,]  80   2      0         88        0   135
#> [587,]  83   7      0        126        0   135
#> [588,]  86   8      0          8        1   132
#> [589,]  81  16      1          9        0   180
#> [590,]  84   6      0        165        0   145
#> [591,]  86   3      0          3        1   140
#> [592,]  82   9      0        180        1   134
#> [593,]  81  13      0        180        0   152
#> [594,]  85   3      0          3        1   118
#> [595,]  83   9      0        180        1   149
#> [596,]  82   1      0        180        1   193
#> [597,]  83   4      0          4        0   130
#> [598,]  83  19      0         43        0   150
#> [599,]  83  10      1          0        1   190
#> [600,]  86   2      0        180        1   169
#> [601,]  83  13      1         12        0   170
#> [602,]  84   7      1          2        0   148
#> [603,]  87   2      0        180        0   113
#> [604,]  82   4      0          4        0   130
#> [605,]  85   3      0          3        1   113
#> [606,]  86   6      0          6        1   117
#> [607,]  84  13      0         62        1   100
#> [608,]  86   6      1          1        0   112
#> [609,]  88   4      0          4        0   100
#> [610,]  83  20      1          3        1   150
#> [611,]  86   9      1          7        1   142
#> [612,]  86   6      0         46        0   173
#> [613,]  88   3      0        115        0   110
#> [614,]  88   2      0        180        1    68
#> [615,]  83   3      0          3        1   130
#> [616,]  87   8      0          8        1   157
#> [617,]  86  15      1          8        1   109
#> [618,]  88   4      0          4        0    86
#> [619,]  89   4      0          4        1   153
#> [620,]  89   5      0        119        1   140
#> [621,]  87   6      0        180        1   110
#> [622,]  85   8      0          8        1   136
#> [623,]  84   2      0        110        1   174
#> [624,]  87  29      0         29        1    97
#> [625,]  87  15      1          9        1   138
#> [626,]  84   0      0        180        1   136
#> [627,]  89  10      0         46        1   170
#> [628,]  91   8      0          8        0   100
#> [629,]  91  10      0        145        0   135
#> [630,]  86   3      1          0        1    80
#> [631,]  88   7      0         24        0   119
#> [632,]  90  11      1         10        1   186
#> [633,]  87   6      0        126        1   168
#> [634,]  86  10      0        180        1   137
#> [635,]  86   9      1          7        0   130
#> [636,]  90   4      1          0        0   121
#> [637,]  91   1      0          1        1    74
#> [638,]  87  43      0        178        1   130
#> [639,]  87   5      0         36        1   150
#> [640,]  90   5      1          0        1   125
#> [641,]  89   3      1          1        1   160
#> [642,]  92   1      0          1        1   167
#> [643,]  91   3      0         33        1   137
#> [644,]  88   5      0        158        0   100
#> [645,]  87   7      0         74        1   105
#> [646,]  89   2      0        168        0   118
#> [647,]  91   5      0        169        1   176
#> [648,]  92   7      0          7        1   110
#> [649,]  89   4      0          4        1   159
#> [650,]  91   0      0          0        0     0
#> [651,]  90  18      0        180        0   188
#> [652,]  91   4      1          0        1   120
#> [653,]  90  19      1         11        1   129
#> [654,]  90   1      0          1        1   118
#> [655,]  91   2      0          2        1   116
#> [656,]  93   8      0        179        1   110
#> [657,]  94   8      0          8        1   142
#> [658,]  92   4      0         76        1   149
#> [659,]  91   1      0        180        0   158
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  96   3      0         12        1    97
#> [663,]  94   3      0         26        1   144
#> [664,]  91  12      0         53        1   212
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+
#>  [11] 180.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+  73.0  161.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51]   5.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+
#>  [61] 180.0+ 180.0+   7.0  180.0+ 180.0+   2.0    1.0  179.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+   7.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+
#>  [91] 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 180.0+
#> [101] 166.0+  99.0  180.0+ 152.0+   7.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+
#> [111] 174.0+   6.0+   1.0  180.0+   9.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0  180.0+
#> [131] 180.0+   8.0    3.0+ 180.0+ 180.0+ 180.0+ 165.0  180.0+ 180.0+   8.0+
#> [141] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 166.0+   4.0+ 147.0+ 180.0+
#> [151] 180.0+ 180.0+   4.0+   9.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+ 180.0+   0.5  180.0+ 161.0+
#> [171] 180.0+   3.0  180.0+ 180.0+  10.0+ 180.0+  17.0   45.0   19.0  180.0+
#> [181] 180.0+ 180.0+ 172.0+ 172.0+  24.0    8.0  180.0+   1.0+  15.0  180.0+
#> [191] 180.0+  77.0    8.0+ 180.0+ 180.0+ 180.0+ 170.0    7.0+   6.0  180.0+
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0   13.0+   5.0    5.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [221] 180.0+ 180.0+   9.0    7.0+  22.0  180.0+   7.0+ 180.0+ 180.0+   1.0 
#> [231]   1.0  180.0+ 180.0+   4.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+  14.0+
#> [241]  36.0  180.0+  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+   0.5  180.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+  11.0+   2.0+ 180.0+
#> [261] 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 103.0   15.0  180.0+ 179.0+ 166.0+
#> [271]   0.5+ 180.0+   3.0+ 175.0+ 180.0+ 180.0+   7.0+   8.0    5.0   16.0 
#> [281] 180.0+   1.0  123.0+   1.0+  18.0   11.0+ 180.0+  79.0    4.0+  15.0 
#> [291] 180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   8.0+   3.0  175.0 
#> [301] 180.0+  10.0  180.0+ 180.0+ 180.0+  19.0+  12.0   99.0  180.0+ 179.0+
#> [311] 180.0+ 180.0+  11.0+   0.5    7.0+ 180.0+ 180.0+ 180.0+  93.0   21.0+
#> [321] 180.0+   1.0   18.0+ 101.0    7.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+
#> [331] 171.0    6.0    0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+   2.0 
#> [341]  45.0    5.0+ 103.0    3.0+  36.0    5.0+ 180.0+ 180.0+  97.0  180.0+
#> [351] 180.0+   2.0+ 172.0+ 180.0+   7.0  180.0+   8.0+  13.0+ 180.0+   1.0 
#> [361]   1.0   76.0   10.0+ 162.0    7.0+   7.0+ 124.0    9.0  180.0+  12.0 
#> [371] 180.0+ 180.0+ 152.0  180.0+   2.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+
#> [381] 180.0+ 180.0+  16.0+ 180.0+   6.0  180.0+  15.0  180.0+ 180.0+ 180.0+
#> [391]   2.0    3.0+  20.0    0.5  180.0+ 180.0+ 180.0+   8.0   87.0   12.0 
#> [401]  58.0  180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0  180.0+  14.0+ 180.0+
#> [411]  10.0+ 180.0+   8.0+ 179.0+   1.0  159.0   15.0  180.0+  10.0   13.0 
#> [421] 180.0+   4.0+ 180.0+   1.0  180.0+  11.0    5.0  180.0+  12.0  180.0+
#> [431] 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+   5.0    4.0+ 180.0+   7.0 
#> [441]  15.0+ 180.0+  10.0    3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 174.0+
#> [451]   4.0    0.5  180.0+ 180.0+   1.0  180.0+  52.0  180.0+ 180.0+ 180.0+
#> [461]  33.0  180.0+ 180.0+  79.0    3.0  168.0+ 180.0+ 180.0+  11.0    7.0 
#> [471]   7.0  180.0+  32.0  180.0+  10.0  180.0+ 172.0   12.0  180.0+   1.0 
#> [481]  80.0  180.0+ 180.0+  11.0  152.0+   3.0   29.0   24.0   32.0    6.0 
#> [491] 180.0+   3.0+ 180.0+ 180.0+ 180.0+   1.0   11.0    4.0   10.0+   6.0 
#> [501]   3.0+ 171.0    1.0   43.0    3.0  180.0+ 180.0+ 180.0+  71.0    8.0 
#> [511]  40.0   59.0   17.0  161.0   10.0+ 164.0  173.0  180.0+  37.0  180.0+
#> [521]   7.0+  22.0    5.0+ 180.0+   3.0  166.0+  71.0   20.0+   1.0    3.0+
#> [531]  10.0  180.0+  85.0   10.0    6.0  180.0+ 180.0+ 180.0+ 108.0  125.0 
#> [541] 180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+
#> [551]   7.0+ 180.0+  20.0   16.0  180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+
#> [561]   2.0  128.0  167.0   62.0  180.0+   4.0    1.0  180.0+ 180.0+ 180.0+
#> [571]  89.0    4.0    1.0  180.0+ 180.0+ 114.0  180.0+ 154.0  180.0+ 180.0+
#> [581]   1.0   16.0+   4.0+ 180.0+  77.0   88.0  126.0    8.0  180.0+ 165.0 
#> [591]   3.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+   4.0+  43.0  180.0+ 180.0+
#> [601]  13.0  180.0+ 180.0+   4.0    3.0+   6.0+  62.0    6.0+   4.0+  20.0 
#> [611]  11.0   46.0  115.0  180.0+   3.0+   8.0+ 180.0+   4.0    4.0  119.0 
#> [621] 180.0+   8.0  110.0   29.0  180.0+ 180.0+  46.0    8.0  145.0    3.0 
#> [631]  24.0   11.0  126.0  180.0+ 180.0+   4.0    1.0  178.0+  36.0   89.0 
#> [641]   3.0+   1.0   33.0  158.0   74.0  168.0  169.0    7.0    4.0    0.5 
#> [651] 180.0+   4.0  180.0+   1.0+   2.0  179.0+   8.0+  76.0  180.0+  16.0 
#> [661]  67.0   12.0   26.0   53.0    7.0+   0.5    2.0  180.0+   3.0   15.0+
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
#>   0.8330185 
```
