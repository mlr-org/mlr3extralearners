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
#> min 0.00353    45   2.820 0.1243       6
#> 1se 0.06311    14   2.938 0.1139       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  35   2      0        180        0   121
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  12      1          8        1   120
#>  [12,]  36   5      1          0        1   115
#>  [13,]  33   6      1          1        1   115
#>  [14,]  38  16      1         10        0   160
#>  [15,]  38  12      1         11        1    92
#>  [16,]  40  12      1          9        0   153
#>  [17,]  42   3      1          1        1   130
#>  [18,]  40   2      1          1        1   148
#>  [19,]  42   2      0        180        1   100
#>  [20,]  38   5      1          3        0   125
#>  [21,]  40   6      0        180        1   138
#>  [22,]  42   2      0        180        0   100
#>  [23,]  43   3      1          0        1   100
#>  [24,]  41   2      1          1        0   166
#>  [25,]  43   4      1          0        1   130
#>  [26,]  42  15      1         13        1   125
#>  [27,]  42   2      0        180        1   124
#>  [28,]  45   3      0        180        1   154
#>  [29,]  41  10      1          8        0   150
#>  [30,]  44   3      0        180        0   141
#>  [31,]  41  13      1          1        0   140
#>  [32,]  45   9      1          7        0   110
#>  [33,]  45   6      0        180        1   170
#>  [34,]  44   2      1          1        1   150
#>  [35,]  46  15      0        180        0   120
#>  [36,]  47   4      1          3        0   118
#>  [37,]  48  15      0        180        1   160
#>  [38,]  45   3      0        150        0   130
#>  [39,]  44   3      1          0        1   180
#>  [40,]  46   7      1          2        0   166
#>  [41,]  43  29      0        180        1   180
#>  [42,]  47   6      1          0        1   116
#>  [43,]  46  13      1         10        0   100
#>  [44,]  44   0      1          0        1    96
#>  [45,]  47   4      1          3        1   160
#>  [46,]  45   8      1          0        1   117
#>  [47,]  49   5      0         73        1   136
#>  [48,]  45   5      0          5        0   141
#>  [49,]  46   6      1          0        1   100
#>  [50,]  44   4      1          0        1   114
#>  [51,]  47   2      0        180        0   108
#>  [52,]  45   5      0        180        1   190
#>  [53,]  46   5      1          3        0   130
#>  [54,]  46   4      0        180        1   121
#>  [55,]  44   2      0        180        0   142
#>  [56,]  46  15      0        180        1   120
#>  [57,]  45   9      1          0        1   145
#>  [58,]  47   3      1          1        1   120
#>  [59,]  48   3      0        180        0   154
#>  [60,]  48  12      1         11        0   200
#>  [61,]  47   5      1          3        1   130
#>  [62,]  49   4      0        180        0   117
#>  [63,]  47  10      0         10        1   140
#>  [64,]  50   1      1          0        1   129
#>  [65,]  48   2      1          0        0   184
#>  [66,]  47   7      0        180        0   145
#>  [67,]  50   4      1          1        0   125
#>  [68,]  49   7      1          7        1   110
#>  [69,]  50   7      0        180        1   110
#>  [70,]  49   2      0          2        0   105
#>  [71,]  49  15      1         11        1   160
#>  [72,]  47   2      0        180        0   150
#>  [73,]  49  23      0        179        1   112
#>  [74,]  46   6      1          0        1   156
#>  [75,]  50   7      1          0        1    92
#>  [76,]  51   3      1          2        0   113
#>  [77,]  50   9      0        180        0   130
#>  [78,]  47   6      0        180        1   162
#>  [79,]  51   8      0        180        1   140
#>  [80,]  52   2      0        180        0   155
#>  [81,]  46   3      0        180        1   120
#>  [82,]  50   4      1          1        0   150
#>  [83,]  48   7      1          0        1   110
#>  [84,]  53   8      0         36        1   160
#>  [85,]  47   2      1          1        0   110
#>  [86,]  52   4      1          4        0   152
#>  [87,]  49   9      1          3        0   102
#>  [88,]  49  15      0        180        1   160
#>  [89,]  53   5      0        180        1   140
#>  [90,]  54  17      1         12        1   102
#>  [91,]  53   5      0         77        0   159
#>  [92,]  53   7      1          0        0   199
#>  [93,]  54   6      1          3        0   129
#>  [94,]  51   3      1          1        0   140
#>  [95,]  53   8      1          7        0   160
#>  [96,]  48   3      1          2        0   150
#>  [97,]  51  25      1          1        0   202
#>  [98,]  49   5      1          2        1   150
#>  [99,]  52  14      1          7        1   200
#> [100,]  48   6      0        180        0   160
#> [101,]  48  11      1         10        0   120
#> [102,]  53   4      1          0        1   156
#> [103,]  51  13      0         99        1   160
#> [104,]  55   3      1          1        0   150
#> [105,]  54  23      1         10        0   131
#> [106,]  52   7      1          2        0   154
#> [107,]  55   6      1          2        1   114
#> [108,]  55   4      1          2        0   150
#> [109,]  52   4      0        180        1   180
#> [110,]  51  13      1         11        0   145
#> [111,]  54   4      1          0        1   121
#> [112,]  52   4      0        180        0   183
#> [113,]  55  28      1         13        1   160
#> [114,]  49   6      1          0        1   130
#> [115,]  53   9      0          9        1    95
#> [116,]  52   5      0        175        1   117
#> [117,]  55   1      0        180        0   127
#> [118,]  54   1      0        180        0   162
#> [119,]  56   3      0        180        1   193
#> [120,]  56   2      0        180        0   132
#> [121,]  55   5      1          4        1   120
#> [122,]  52   8      0        180        0   119
#> [123,]  53  18      1          9        1   150
#> [124,]  52  16      0         16        0   152
#> [125,]  53  10      1          9        0   172
#> [126,]  53  15      0         15        1    90
#> [127,]  55   6      1          5        1   138
#> [128,]  55   2      0        134        1   140
#> [129,]  54   3      0        180        0   128
#> [130,]  56   3      0          8        1   139
#> [131,]  55   1      0          2        0   130
#> [132,]  57   3      0          3        0   120
#> [133,]  54   2      1          1        0   135
#> [134,]  54   2      1          1        1   176
#> [135,]  57   5      1          3        1   138
#> [136,]  57   1      0        180        1   156
#> [137,]  56   4      1          0        1   140
#> [138,]  52   2      0        180        0   140
#> [139,]  55  11      1          7        0   104
#> [140,]  56  14      1         11        0   130
#> [141,]  53   3      1          0        1   200
#> [142,]  58   8      0          8        1   130
#> [143,]  54   5      0        180        1   108
#> [144,]  59   3      1          1        0   172
#> [145,]  57   4      0        180        1   119
#> [146,]  58   6      1          0        1    90
#> [147,]  53  15      1         10        1   130
#> [148,]  54  17      1          8        1   227
#> [149,]  55   9      1          2        1   147
#> [150,]  55  13      0        166        1   140
#> [151,]  54  23      1          8        0   120
#> [152,]  57   4      1          2        1   185
#> [153,]  53   7      1          0        1   120
#> [154,]  57  11      1         10        1   129
#> [155,]  55   3      1          2        0   140
#> [156,]  55   5      0          5        1   131
#> [157,]  58   9      1          0        1   180
#> [158,]  56   7      1          5        1   120
#> [159,]  55   2      0          2        0   106
#> [160,]  59   9      1          1        1   125
#> [161,]  57   1      0        180        0   148
#> [162,]  60  11      1          9        0   106
#> [163,]  58   4      1          0        1   160
#> [164,]  60   5      1          1        0   138
#> [165,]  57   5      0        180        1   130
#> [166,]  58  11      1          9        1   124
#> [167,]  55   5      1          0        1   160
#> [168,]  57  10      1          9        0   103
#> [169,]  59   5      0        180        1   155
#> [170,]  58   4      1          3        0   120
#> [171,]  58   8      0        161        1   140
#> [172,]  58  14      1          6        0   190
#> [173,]  61   4      1          3        0   151
#> [174,]  61   9      1          8        0   150
#> [175,]  61  20      1         13        0   130
#> [176,]  57  13      1         10        0   110
#> [177,]  57   2      1          0        1   116
#> [178,]  57   4      1          3        0   138
#> [179,]  57  11      0        180        1   150
#> [180,]  61   3      0         17        0   143
#> [181,]  56  14      0         45        0   130
#> [182,]  57   3      1          2        0   120
#> [183,]  58  19      1         13        1   140
#> [184,]  56  18      1         11        1   165
#> [185,]  59   9      1          0        1    80
#> [186,]  58  11      0        172        1   135
#> [187,]  55   9      1          7        1   135
#> [188,]  61   4      1          0        1   115
#> [189,]  56   8      1          8        0   120
#> [190,]  61  13      1         12        1   130
#> [191,]  59  11      1          8        1   190
#> [192,]  57  15      1         13        1   110
#> [193,]  59   5      1          2        0   182
#> [194,]  58   5      1          1        1   135
#> [195,]  61   8      0         77        0   120
#> [196,]  58   8      1          5        0   152
#> [197,]  62   7      1          2        1   180
#> [198,]  57   3      1          0        0   100
#> [199,]  57   7      0        169        0   180
#> [200,]  57  12      1          9        1   120
#> [201,]  60  17      1          8        1   140
#> [202,]  62   4      1          3        0   173
#> [203,]  58   2      0         30        0   202
#> [204,]  59   1      0        180        0   155
#> [205,]  59  16      1          9        1   133
#> [206,]  63   6      0         28        1   120
#> [207,]  61   5      0          5        1   110
#> [208,]  61   5      0          5        1   160
#> [209,]  57   2      1          1        0   159
#> [210,]  62  17      1         10        1   180
#> [211,]  58   7      0        180        1   150
#> [212,]  63   3      1          1        0   180
#> [213,]  63   1      0        180        1   130
#> [214,]  61   7      0        180        0   135
#> [215,]  63   4      1          3        0   222
#> [216,]  63   4      0        180        1   190
#> [217,]  63  15      1         10        1   126
#> [218,]  64   4      0        180        0   130
#> [219,]  63   4      1          1        0   155
#> [220,]  60  18      1         13        0   132
#> [221,]  59   8      0        180        1   140
#> [222,]  61   9      1          9        1   150
#> [223,]  58   9      1          9        0   110
#> [224,]  62   7      0          7        0   150
#> [225,]  59   1      0         22        1   162
#> [226,]  58   2      0        180        0   127
#> [227,]  59   4      0        180        0   196
#> [228,]  60   7      1          1        1    90
#> [229,]  65  13      0        180        1   100
#> [230,]  63   1      0          1        0   130
#> [231,]  60   3      0          3        0   168
#> [232,]  64  10      1          9        0   160
#> [233,]  62   6      0          6        0   120
#> [234,]  63  12      1         10        0   200
#> [235,]  60   8      0         17        1   130
#> [236,]  61   6      1          1        1   117
#> [237,]  64  12      1         11        0   160
#> [238,]  66   1      1          0        1   120
#> [239,]  63  10      1          0        1   148
#> [240,]  63  14      1          9        0   123
#> [241,]  65  36      1         11        0   140
#> [242,]  63   4      1          3        0   162
#> [243,]  66   3      1          1        0   127
#> [244,]  61  10      1          2        1   194
#> [245,]  64  32      1          9        1   160
#> [246,]  66   5      1          0        1   110
#> [247,]  65  10      1          8        1   120
#> [248,]  61  12      1         11        0   154
#> [249,]  64   9      0        180        0   150
#> [250,]  63  16      1          7        1   110
#> [251,]  64   7      0        180        1   120
#> [252,]  66   6      1          1        1   130
#> [253,]  62   3      1          1        1   199
#> [254,]  63   5      1          4        0   170
#> [255,]  63   2      1          1        0   180
#> [256,]  62  13      1         11        0   180
#> [257,]  66  18      1          5        0   142
#> [258,]  61  14      1          5        0   140
#> [259,]  61  15      1         10        0   130
#> [260,]  63   2      1          0        0   140
#> [261,]  64  19      1          8        1   160
#> [262,]  65   8      1          0        1   140
#> [263,]  67   6      0        180        1   170
#> [264,]  64   6      1          0        1   125
#> [265,]  66  13      1          0        0   118
#> [266,]  64  14      1         13        1   150
#> [267,]  65   3      0          3        0   105
#> [268,]  67   4      1          3        0   130
#> [269,]  65   2      1          1        1   170
#> [270,]  68   1      0        180        1   166
#> [271,]  64  10      1          9        1   110
#> [272,]  63   7      1          0        0   162
#> [273,]  67   8      1          1        1   130
#> [274,]  68   5      0          5        1    90
#> [275,]  63  10      0         16        1   160
#> [276,]  66  14      0        180        0   130
#> [277,]  64   1      0          1        1   120
#> [278,]  65  17      1         14        1   100
#> [279,]  63   8      1          1        1   162
#> [280,]  65  18      1          3        0   120
#> [281,]  63   1      1          0        1   155
#> [282,]  67  11      0         11        0   150
#> [283,]  68  14      0         79        0   172
#> [284,]  66  11      1          0        0   100
#> [285,]  65   4      1          2        1   145
#> [286,]  63   2      0        180        0   150
#> [287,]  65  11      1          6        0   130
#> [288,]  69  21      1         10        0   180
#> [289,]  63   8      0        180        1   120
#> [290,]  67   1      0        180        1   160
#> [291,]  68  10      1         10        1   150
#> [292,]  67   7      1          4        1   130
#> [293,]  63   2      1          0        0    99
#> [294,]  67   2      0        180        0   184
#> [295,]  65   6      0          6        0    80
#> [296,]  66  19      1         12        1   150
#> [297,]  67  12      1         12        0   160
#> [298,]  69   6      0         99        1   140
#> [299,]  66   4      0        180        1   130
#> [300,]  70  15      1         12        1   132
#> [301,]  64  11      0         11        0   125
#> [302,]  64   0      1          0        1   118
#> [303,]  67   2      0         18        0   131
#> [304,]  66   4      0        180        0   177
#> [305,]  69   4      1          3        1   150
#> [306,]  69   8      0         93        0   140
#> [307,]  66   6      0        180        0   140
#> [308,]  65   1      0          1        1   120
#> [309,]  71   3      0          5        0   112
#> [310,]  70   7      1          0        1   190
#> [311,]  68   7      0        150        0   210
#> [312,]  71  20      1          0        1   160
#> [313,]  67   2      0        180        0   128
#> [314,]  66   9      1          3        1   151
#> [315,]  66   1      1          1        1   165
#> [316,]  70   4      1          0        1   180
#> [317,]  70  14      0        171        0   166
#> [318,]  66   4      0        180        0   130
#> [319,]  68  18      1         14        1   170
#> [320,]  65   2      0        180        0   130
#> [321,]  68   7      1          0        1   150
#> [322,]  69   3      1          2        0   151
#> [323,]  67  14      1         13        0   130
#> [324,]  65  14      1         13        1   150
#> [325,]  69   8      0        180        1   180
#> [326,]  71   7      0          7        0   230
#> [327,]  66   2      0          2        1   228
#> [328,]  69   3      0          3        1   130
#> [329,]  70  22      1         13        0   103
#> [330,]  67   1      0         36        1   104
#> [331,]  67   5      0          5        0   130
#> [332,]  68   6      0        180        0   145
#> [333,]  72   3      1          0        1   132
#> [334,]  72   7      0          7        1   110
#> [335,]  69   8      1          7        1   108
#> [336,]  67   3      0        180        0   110
#> [337,]  66   2      1          1        0   123
#> [338,]  67  14      0        172        1   140
#> [339,]  69  11      1          0        1   120
#> [340,]  66   2      0        180        0   130
#> [341,]  67   7      1          4        0   122
#> [342,]  69   4      1          3        0   132
#> [343,]  69   8      1          2        0   121
#> [344,]  67  13      1          9        0   130
#> [345,]  70   3      0        123        0   130
#> [346,]  70   9      0        180        1   142
#> [347,]  72   5      1          4        0   170
#> [348,]  67  22      1          1        1   140
#> [349,]  67  12      1          8        0   120
#> [350,]  67   4      0         60        1   136
#> [351,]  69   5      0         76        0   120
#> [352,]  72  13      1         11        1   195
#> [353,]  68  10      1          8        1   160
#> [354,]  72  30      1          0        1   145
#> [355,]  68   7      1          2        0   135
#> [356,]  73  20      1          0        1   170
#> [357,]  71   6      0          9        0   120
#> [358,]  69  10      1          6        1   120
#> [359,]  72  19      1          8        0   120
#> [360,]  67   8      0        180        1   170
#> [361,]  67   9      0        180        0   158
#> [362,]  70   5      0        180        0   150
#> [363,]  72   2      0          2        1   100
#> [364,]  67   4      1          1        0   134
#> [365,]  71   1      0        173        1   188
#> [366,]  70   3      0        180        0   121
#> [367,]  69   3      0        180        0   220
#> [368,]  72   5      0         28        0   120
#> [369,]  71   5      0        180        0   191
#> [370,]  73   6      0        180        1   117
#> [371,]  69   8      1          1        0   164
#> [372,]  68   7      0        180        1   130
#> [373,]  72  16      1          1        1   130
#> [374,]  70   4      0        180        0   180
#> [375,]  73   6      1          0        1   270
#> [376,]  72   8      1          1        1   150
#> [377,]  73   7      0          7        1   140
#> [378,]  72   6      0        180        1   130
#> [379,]  73   0      0        180        1   161
#> [380,]  74   8      1          0        1    85
#> [381,]  71   3      1          1        0   150
#> [382,]  71  15      1         11        0   165
#> [383,]  74  20      0         20        1   180
#> [384,]  74   0      1          0        1    90
#> [385,]  73   3      1          0        1   136
#> [386,]  70   5      1          0        1   190
#> [387,]  71  17      1         11        0   160
#> [388,]  71   3      1          2        1   190
#> [389,]  73  10      1          8        0   106
#> [390,]  70  26      1         11        1   120
#> [391,]  73   4      0         58        1   160
#> [392,]  72   5      1          3        1   160
#> [393,]  70   3      0        180        1   154
#> [394,]  72  15      1          0        1   150
#> [395,]  71   7      1          2        0   143
#> [396,]  72   8      1          0        1   140
#> [397,]  74   3      0          3        1   150
#> [398,]  73  17      1         11        0   140
#> [399,]  71  13      1          8        0   121
#> [400,]  69   2      1          1        1    80
#> [401,]  70   4      1          0        1   140
#> [402,]  71  14      1         13        1   170
#> [403,]  74   7      1          0        1   117
#> [404,]  72  10      1          8        1   153
#> [405,]  70   8      0          8        0   120
#> [406,]  75   1      0          1        0   133
#> [407,]  75   2      1          1        0   145
#> [408,]  73  10      1         10        1   120
#> [409,]  74  15      1          9        1   179
#> [410,]  71   2      0         10        1   112
#> [411,]  75   9      1          7        0   140
#> [412,]  75  13      1          1        1   130
#> [413,]  71  11      1          8        0   110
#> [414,]  71   4      0          4        0   134
#> [415,]  72  15      1         12        1   120
#> [416,]  70   7      1          4        0   184
#> [417,]  72   7      0         57        1   145
#> [418,]  72  11      0         11        1   140
#> [419,]  70   3      0          3        0   150
#> [420,]  73   5      1          3        1   112
#> [421,]  73  12      1         12        1   140
#> [422,]  73   5      0        180        0   126
#> [423,]  74  34      1          8        1   233
#> [424,]  76   3      1          0        1   120
#> [425,]  71  32      1         12        1   107
#> [426,]  72   5      0        180        0   154
#> [427,]  72   3      0        180        0   160
#> [428,]  76   5      0          5        1   130
#> [429,]  77   4      0          4        0   185
#> [430,]  72   7      1          2        0   142
#> [431,]  73  15      0         15        1   160
#> [432,]  71  16      0        180        0   140
#> [433,]  73  10      1         10        0   124
#> [434,]  74   7      0        180        1   150
#> [435,]  74   3      0          3        1   128
#> [436,]  76   8      1          0        1   141
#> [437,]  74  19      1          4        1   200
#> [438,]  72   4      0         85        1   120
#> [439,]  72   4      1          3        0   160
#> [440,]  76  13      1         10        0   110
#> [441,]  75   4      1          0        1   122
#> [442,]  75   7      0          7        0   190
#> [443,]  75   0      0          0        1   130
#> [444,]  73  13      1         11        0   195
#> [445,]  76  13      1          8        1   148
#> [446,]  75   4      1          2        1   188
#> [447,]  74   6      0        180        0   160
#> [448,]  75   1      0          1        1   125
#> [449,]  74   2      0        180        0   111
#> [450,]  73   1      0         52        1   105
#> [451,]  73   0      0        180        0   156
#> [452,]  72   5      0        180        0   120
#> [453,]  78  12      1         11        1   160
#> [454,]  76  44      1         10        0   105
#> [455,]  76   5      0        180        0   185
#> [456,]  74  10      1          0        1   135
#> [457,]  74   8      1          8        1   170
#> [458,]  75   9      0        180        1   140
#> [459,]  77   5      1          0        0   123
#> [460,]  73  10      1          9        0   146
#> [461,]  76  12      1         11        1   120
#> [462,]  78   5      1          0        1   170
#> [463,]  74   6      0         79        1   140
#> [464,]  77   3      0        180        0   110
#> [465,]  76  29      0         47        0    90
#> [466,]  73   8      1          1        1   162
#> [467,]  73  11      1          2        1   110
#> [468,]  74   2      0        180        0   100
#> [469,]  78   7      0          7        1   133
#> [470,]  74  15      0        180        1   172
#> [471,]  78   8      1          6        1   110
#> [472,]  74   7      0          7        0   161
#> [473,]  79   6      0        180        0   170
#> [474,]  80  10      1          6        1   147
#> [475,]  78  13      1          5        0   130
#> [476,]  75   5      0        119        1   150
#> [477,]  75  12      1          1        1   120
#> [478,]  80   8      0          8        1   120
#> [479,]  75  13      1          6        0   150
#> [480,]  74  10      1          8        0   135
#> [481,]  76   1      0          1        1    83
#> [482,]  79   4      0         80        0   145
#> [483,]  78  12      1          9        0   150
#> [484,]  78   2      1          1        0   130
#> [485,]  75   4      1          0        0   212
#> [486,]  78  10      0        180        1   130
#> [487,]  76  11      1          0        0   120
#> [488,]  75  11      1          4        0   162
#> [489,]  75   3      0          3        0     0
#> [490,]  76   7      0         29        1   150
#> [491,]  77  24      0         24        1   160
#> [492,]  79   8      0         32        1   120
#> [493,]  80   9      0         23        1   128
#> [494,]  78   6      1          0        1   240
#> [495,]  76   3      1          0        1   140
#> [496,]  78  11      1          1        1   140
#> [497,]  79  11      0        180        0   160
#> [498,]  79   2      1          0        1   121
#> [499,]  81   1      0          1        0   130
#> [500,]  78  11      1          8        1   118
#> [501,]  79   4      0          4        1   125
#> [502,]  76  10      1          8        0   180
#> [503,]  77   6      0          6        1   107
#> [504,]  76   1      0          1        1   140
#> [505,]  78   7      1          0        1   110
#> [506,]  79   3      0          3        0   120
#> [507,]  77   7      0        180        1   170
#> [508,]  77   6      0          6        1   144
#> [509,]  79   4      1          0        1   120
#> [510,]  81   1      0        180        0   120
#> [511,]  82   5      0          8        1   120
#> [512,]  78   4      0         59        1   112
#> [513,]  76   7      0        161        0   151
#> [514,]  79  10      0         10        1   120
#> [515,]  81   4      1          2        1   126
#> [516,]  80   9      0        118        1   186
#> [517,]  80   6      0        173        1   160
#> [518,]  81   3      0        180        0   184
#> [519,]  81   2      0        175        0   172
#> [520,]  78   7      0          7        1   147
#> [521,]  77  13      1          0        1   190
#> [522,]  78  15      0         15        0   165
#> [523,]  78   4      0        180        0   175
#> [524,]  78  26      1          5        0   194
#> [525,]  76   1      0        166        0   131
#> [526,]  81   4      1          1        1   104
#> [527,]  77  10      1          8        1   130
#> [528,]  82   3      1          1        1   144
#> [529,]  79   6      0          6        0   152
#> [530,]  80   6      1          0        1   119
#> [531,]  78   2      0        180        0   148
#> [532,]  80   5      0          5        1   130
#> [533,]  82   1      1          0        1    82
#> [534,]  79  10      0        180        1   150
#> [535,]  77   4      0        180        1    98
#> [536,]  78  12      0        180        0   134
#> [537,]  79   1      0        125        0   193
#> [538,]  82  21      1          2        0   155
#> [539,]  80   6      0          6        1   110
#> [540,]  82   5      0        180        0   110
#> [541,]  83   5      0        180        0   148
#> [542,]  79   7      1          6        0   130
#> [543,]  83   4      0        103        0    97
#> [544,]  81  11      1          8        0   160
#> [545,]  81   5      0        177        0    41
#> [546,]  80  11      1          8        0   170
#> [547,]  78  23      1         10        1   145
#> [548,]  79   4      0          4        1   183
#> [549,]  78   9      1          4        1   120
#> [550,]  81  15      0        180        1   140
#> [551,]  80   7      1          0        1   146
#> [552,]  81  20      1          9        0   170
#> [553,]  83   8      0          8        0   115
#> [554,]  81  16      0         16        1   110
#> [555,]  80   6      1          0        1   150
#> [556,]  80  11      1          8        0   110
#> [557,]  80   8      1          7        0   160
#> [558,]  79   7      0        177        0   197
#> [559,]  79   0      1          0        1    96
#> [560,]  85   4      0        180        0    90
#> [561,]  81   2      1          1        0   198
#> [562,]  83   2      0          2        1   155
#> [563,]  84   4      0        167        0   198
#> [564,]  80   3      1          1        1   230
#> [565,]  82  23      1          0        0   110
#> [566,]  84   5      0        180        1   203
#> [567,]  84   4      0          4        1    85
#> [568,]  83   3      0        180        0   174
#> [569,]  81   4      0         90        1   138
#> [570,]  79   9      1          8        0   150
#> [571,]  80   2      1          0        1   130
#> [572,]  80   6      0         71        1   189
#> [573,]  83   1      0          1        1   100
#> [574,]  82  19      0         19        0   120
#> [575,]  80  30      1         13        0   220
#> [576,]  83   9      0        180        0   198
#> [577,]  79  14      1          0        0   110
#> [578,]  83   3      0        114        0    98
#> [579,]  81  14      1         12        1   128
#> [580,]  83   2      0        154        0   130
#> [581,]  82   0      0          2        1   100
#> [582,]  85   9      1          6        1   160
#> [583,]  83   1      0        180        0   160
#> [584,]  81   1      0          1        1   145
#> [585,]  83  12      1          2        1   170
#> [586,]  82  15      1          0        0   183
#> [587,]  83   7      0        126        0   135
#> [588,]  86   8      0          8        1   132
#> [589,]  81  16      1          9        0   180
#> [590,]  84   6      0        165        0   145
#> [591,]  86   3      0          3        1   140
#> [592,]  82   9      0        180        1   134
#> [593,]  84   3      0        180        1   120
#> [594,]  81  13      0        180        0   152
#> [595,]  85   3      0          3        1   118
#> [596,]  81   4      0        180        0   160
#> [597,]  83   4      0          4        0   130
#> [598,]  87   2      0          5        1   137
#> [599,]  86  12      1          0        1   132
#> [600,]  86   6      1          0        1   140
#> [601,]  84  16      0         70        1   150
#> [602,]  84   3      1          2        0   125
#> [603,]  83  10      1          0        1   190
#> [604,]  86   2      0        180        1   169
#> [605,]  84   3      0          3        1   121
#> [606,]  84   7      1          2        0   148
#> [607,]  84   3      0        180        1   170
#> [608,]  86  13      0        177        0   163
#> [609,]  86   6      0          6        1   117
#> [610,]  84  13      0         62        1   100
#> [611,]  86   6      1          1        0   112
#> [612,]  88   4      0          4        0   100
#> [613,]  83  20      1          3        1   150
#> [614,]  88   4      0          4        1   115
#> [615,]  83   9      0         65        1   150
#> [616,]  86   9      1          7        1   142
#> [617,]  88   3      0        115        0   110
#> [618,]  88   2      0        180        1    68
#> [619,]  87   8      0          8        1   157
#> [620,]  86  15      1          8        1   109
#> [621,]  88   4      0          4        0    86
#> [622,]  89   4      0          4        1   153
#> [623,]  87   1      0          1        0   170
#> [624,]  85   8      0          8        1   136
#> [625,]  84   2      0        110        1   174
#> [626,]  87  29      0         29        1    97
#> [627,]  87  15      1          9        1   138
#> [628,]  90  14      0         14        1   100
#> [629,]  88   1      0          1        0   135
#> [630,]  86   4      0        180        1   145
#> [631,]  87   2      0        180        0   160
#> [632,]  87   6      1          0        0   125
#> [633,]  91  10      0        145        0   135
#> [634,]  86   3      1          0        1    80
#> [635,]  88   7      0         24        0   119
#> [636,]  87   6      0        126        1   168
#> [637,]  86  10      0        180        1   137
#> [638,]  86   9      1          7        0   130
#> [639,]  90   4      1          0        0   121
#> [640,]  91   1      0          1        1    74
#> [641,]  87  43      0        178        1   130
#> [642,]  87   5      0         36        1   150
#> [643,]  90   5      1          0        1   125
#> [644,]  88   3      1          2        0   159
#> [645,]  89   3      1          1        1   160
#> [646,]  92   1      0          1        1   167
#> [647,]  88   5      0        158        0   100
#> [648,]  87   7      0         74        1   105
#> [649,]  91   5      0        169        1   176
#> [650,]  92   7      0          7        1   110
#> [651,]  89   4      0          4        1   159
#> [652,]  91   0      0          0        0     0
#> [653,]  89  14      0        180        1    84
#> [654,]  91   4      1          0        1   120
#> [655,]  90   1      0          1        1   118
#> [656,]  91   2      0          2        1   116
#> [657,]  94   8      0          8        1   142
#> [658,]  92   4      0         76        1   149
#> [659,]  91   1      0        180        0   158
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  96   3      0         12        1    97
#> [663,]  95   8      1          5        1   150
#> [664,]  91  12      0         53        1   212
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   2.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 115.0  180.0+ 180.0+
#>  [11]  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+
#>  [21] 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+
#>  [41] 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+   2.0 
#>  [71] 179.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+   7.0   36.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91]  77.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+
#> [101] 180.0+ 166.0+  99.0  180.0+ 152.0+   7.0+   6.0+ 180.0+ 180.0+  13.0+
#> [111] 180.0+ 180.0+  28.0    6.0+   9.0+ 175.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+  16.0+ 180.0+  15.0+ 180.0+ 134.0+ 180.0+   8.0 
#> [131]   2.0    3.0+ 180.0+ 180.0+ 140.0  180.0+ 165.0  180.0+ 180.0+ 180.0+
#> [141] 180.0+   8.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+
#> [151] 180.0+   4.0+ 180.0+ 180.0+ 180.0+   5.0+   9.0+ 180.0+   2.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [171] 161.0+ 171.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0 
#> [181]  45.0    3.0+  19.0  180.0+   9.0+ 172.0+  24.0  180.0+   8.0  180.0+
#> [191] 180.0+  15.0  180.0+ 180.0+  77.0    8.0+ 180.0+ 180.0+ 169.0  180.0+
#> [201] 180.0+ 180.0+  30.0  180.0+ 180.0+  28.0    5.0    5.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [221] 180.0+ 180.0+   9.0    7.0+  22.0  180.0+ 180.0+ 180.0+ 180.0+   1.0 
#> [231]   3.0+ 167.0    6.0+ 180.0+  17.0  180.0+  12.0  180.0+ 180.0+  14.0+
#> [241]  36.0  180.0+   3.0+  88.0  180.0+ 180.0+ 180.0+  12.0+ 180.0+ 180.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  18.0+ 180.0+ 180.0+   2.0+
#> [261] 103.0   15.0  180.0+ 180.0+ 166.0+  14.0+   3.0  180.0+ 175.0+ 180.0+
#> [271] 180.0+   7.0+   8.0    5.0   16.0  180.0+   1.0  180.0+ 180.0+ 123.0+
#> [281]   1.0+  11.0+  79.0  180.0+   4.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+
#> [291]  10.0  180.0+ 180.0+ 180.0+   6.0   19.0+  12.0   99.0  180.0+ 180.0+
#> [301]  11.0+   0.5   18.0  180.0+ 152.0+  93.0  180.0+   1.0    5.0    7.0+
#> [311] 150.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 171.0  180.0+ 180.0+ 180.0+
#> [321] 180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+   2.0    3.0+ 180.0+  36.0 
#> [331]   5.0+ 180.0+ 180.0+   7.0    8.0+ 180.0+   2.0+ 172.0+ 180.0+ 180.0+
#> [341]   7.0  180.0+   8.0+  13.0+ 123.0  180.0+ 180.0+  51.0  180.0+  60.0 
#> [351]  76.0  132.0   10.0+ 162.0    7.0+ 124.0    9.0  180.0+ 180.0+ 180.0+
#> [361] 180.0+ 180.0+   2.0   76.0  173.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+
#> [371] 180.0+ 180.0+  16.0+ 180.0+   6.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+
#> [381]   3.0+ 180.0+  20.0    0.5  180.0+ 180.0+ 180.0+   3.0   87.0  180.0+
#> [391]  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0    2.0 
#> [401] 180.0+  14.0+ 180.0+  10.0+   8.0+   1.0  180.0+  15.0  180.0+  10.0 
#> [411] 180.0+  13.0  180.0+   4.0+ 180.0+ 104.0+  57.0   11.0    3.0+   5.0 
#> [421]  12.0  180.0+  34.0  180.0+ 177.0+ 180.0+ 180.0+   5.0    4.0+   7.0 
#> [431]  15.0+ 180.0+  10.0  180.0+   3.0  180.0+ 180.0+  85.0  180.0+ 174.0+
#> [441]   4.0    7.0    0.5  180.0+ 180.0+  46.0  180.0+   1.0  180.0+  52.0 
#> [451] 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+   8.0  180.0+   5.0  180.0+
#> [461]  12.0  180.0+  79.0  180.0+  47.0  180.0+  11.0  180.0+   7.0  180.0+
#> [471]   8.0+   7.0  180.0+  10.0  172.0  119.0   12.0    8.0  180.0+ 180.0+
#> [481]   1.0   80.0  180.0+ 180.0+   4.0+ 180.0+  11.0  152.0+   3.0   29.0 
#> [491]  24.0   32.0   23.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   1.0   11.0 
#> [501]   4.0   10.0+   6.0    1.0   43.0    3.0  180.0+   6.0  138.0  180.0+
#> [511]   8.0   59.0  161.0   10.0+  93.0  118.0  173.0  180.0+ 175.0+   7.0+
#> [521]  22.0   15.0+ 180.0+ 171.0+ 166.0+  71.0   10.0  180.0+   6.0+   6.0 
#> [531] 180.0+   5.0    1.0  180.0+ 180.0+ 180.0+ 125.0  180.0+   6.0  180.0+
#> [541] 180.0+ 180.0+ 103.0  180.0+ 177.0+ 169.0   70.0    4.0  180.0+ 180.0+
#> [551]   7.0+  20.0    8.0+  16.0  180.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+
#> [561] 180.0+   2.0  167.0    3.0+  62.0  180.0+   4.0  180.0+  90.0  180.0+
#> [571] 180.0+  71.0    1.0   19.0   30.0  180.0+ 180.0+ 114.0  180.0+ 154.0 
#> [581]   2.0  180.0+ 180.0+   1.0   77.0   83.0  126.0    8.0  180.0+ 165.0 
#> [591]   3.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+   4.0+   5.0  180.0+   6.0 
#> [601]  70.0  180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 177.0    6.0+  62.0 
#> [611]   6.0+   4.0+  20.0    4.0   65.0   11.0  115.0  180.0+   8.0+ 180.0+
#> [621]   4.0    4.0    1.0+   8.0  110.0   29.0  180.0+  14.0    1.0+ 180.0+
#> [631] 180.0+  25.0  145.0    3.0   24.0  126.0  180.0+ 180.0+   4.0    1.0 
#> [641] 178.0+  36.0   89.0   75.0    3.0+   1.0  158.0   74.0  169.0    7.0 
#> [651]   4.0    0.5  180.0+   4.0    1.0+   2.0    8.0+  76.0  180.0+  16.0 
#> [661]  67.0   12.0    8.0   53.0    7.0+   0.5   69.0    2.0  180.0+   3.0 
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
#>   0.8144067 
```
