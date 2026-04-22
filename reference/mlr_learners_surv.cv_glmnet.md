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

print(learner$model)
#> $model
#> 
#> Call:  (if (cv) glmnet::cv.glmnet else glmnet::glmnet)(x = data, y = target,      family = "cox") 
#> 
#> Measure: Partial Likelihood Deviance 
#> 
#>      Lambda Index Measure     SE Nonzero
#> min 0.00365    43   2.720 0.1939       6
#> 1se 0.07855    10   2.891 0.1940       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  35   5      1          2        0   172
#>   [3,]  35  10      1          9        0   106
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  38   2      0        115        0   150
#>  [10,]  36   1      0        180        1   155
#>  [11,]  38  12      1          8        1   120
#>  [12,]  36   5      1          0        1   115
#>  [13,]  33   6      1          1        1   115
#>  [14,]  38  12      1         11        1    92
#>  [15,]  37   1      1          0        1   146
#>  [16,]  40   2      1          1        1   148
#>  [17,]  42   2      0        180        1   100
#>  [18,]  38   5      1          3        0   125
#>  [19,]  42   2      0          2        0   140
#>  [20,]  40   6      0        180        1   138
#>  [21,]  40  11      1         10        1   120
#>  [22,]  42   2      0        180        0   100
#>  [23,]  43   3      1          0        1   100
#>  [24,]  41   2      1          1        0   166
#>  [25,]  40   1      1          0        1   145
#>  [26,]  42  15      1         13        1   125
#>  [27,]  40   3      1          1        0   170
#>  [28,]  42  12      1         10        1   170
#>  [29,]  43   2      1          1        1   116
#>  [30,]  42   2      0        180        1   124
#>  [31,]  41  13      1          1        0   140
#>  [32,]  45   9      1          7        0   110
#>  [33,]  45   6      0        180        1   170
#>  [34,]  41   5      1          4        1   141
#>  [35,]  44   2      1          1        1   150
#>  [36,]  43   2      0        180        1   140
#>  [37,]  46   2      1          1        0   126
#>  [38,]  45   3      0        150        0   130
#>  [39,]  44   3      1          0        1   180
#>  [40,]  46   7      1          2        0   166
#>  [41,]  43  10      0        180        0   185
#>  [42,]  47   6      1          0        1   116
#>  [43,]  46  13      1         10        0   100
#>  [44,]  47   4      1          3        1   160
#>  [45,]  45   5      0          5        0   141
#>  [46,]  46   2      1          1        1   122
#>  [47,]  46   6      1          0        1   100
#>  [48,]  44   4      1          0        1   114
#>  [49,]  47   2      0        180        0   108
#>  [50,]  44   9      1          8        1   135
#>  [51,]  46   5      1          3        0   130
#>  [52,]  46  15      0        180        1   120
#>  [53,]  47   3      1          1        1   120
#>  [54,]  48   3      0        180        0   154
#>  [55,]  48  12      1         11        0   200
#>  [56,]  46   3      1          0        1   119
#>  [57,]  47  10      0         10        1   140
#>  [58,]  50   1      1          0        1   129
#>  [59,]  48   2      1          0        0   184
#>  [60,]  47   7      0        180        0   145
#>  [61,]  46   3      1          1        1   140
#>  [62,]  50   7      0        180        1   110
#>  [63,]  49   2      0          2        0   105
#>  [64,]  51   1      0          1        1   145
#>  [65,]  49  15      1         11        1   160
#>  [66,]  49  23      0        179        1   112
#>  [67,]  50   4      0          4        1   100
#>  [68,]  51   3      1          2        0   113
#>  [69,]  50   1      1          0        0   150
#>  [70,]  50   9      0        180        0   130
#>  [71,]  49   7      1          4        1    90
#>  [72,]  47   8      0        180        0   160
#>  [73,]  47   6      0        180        1   162
#>  [74,]  52   2      0        180        0   155
#>  [75,]  46   3      0        180        1   120
#>  [76,]  50   4      1          1        0   150
#>  [77,]  48   7      1          0        1   110
#>  [78,]  53   8      0         36        1   160
#>  [79,]  48  17      1         10        0   111
#>  [80,]  47   2      1          1        0   110
#>  [81,]  49   9      1          3        0   102
#>  [82,]  49  15      0        180        1   160
#>  [83,]  53   5      0        180        1   140
#>  [84,]  54  17      1         12        1   102
#>  [85,]  53   5      0         77        0   159
#>  [86,]  53   7      1          0        0   199
#>  [87,]  50  10      1          6        0   122
#>  [88,]  50  14      1         13        0   170
#>  [89,]  51  25      1          1        0   202
#>  [90,]  49   5      1          2        1   150
#>  [91,]  53   4      0          4        0   140
#>  [92,]  52  14      1          7        1   200
#>  [93,]  48  11      1         10        0   120
#>  [94,]  53   4      1          0        1   156
#>  [95,]  54   9      1          0        1   138
#>  [96,]  49  16      0         16        0   125
#>  [97,]  55   3      1          1        0   150
#>  [98,]  54  23      1         10        0   131
#>  [99,]  55   6      1          2        1   114
#> [100,]  55   4      1          2        0   150
#> [101,]  52   4      0        180        1   180
#> [102,]  51  13      1         11        0   145
#> [103,]  52   4      0        180        0   183
#> [104,]  50   3      0        174        1   153
#> [105,]  55  28      1         13        1   160
#> [106,]  49   6      1          0        1   130
#> [107,]  50   7      1          1        0   156
#> [108,]  53   9      0          9        1    95
#> [109,]  53   8      1          0        1   130
#> [110,]  52   5      0        175        1   117
#> [111,]  55   2      0          2        0   145
#> [112,]  54   7      1          0        1   100
#> [113,]  56   2      0        180        0   132
#> [114,]  55   5      1          4        1   120
#> [115,]  53  18      1          9        1   150
#> [116,]  54   3      0        180        1   180
#> [117,]  55   6      0        180        0   170
#> [118,]  53  10      1          9        0   172
#> [119,]  52  16      1         14        0   170
#> [120,]  53  15      0         15        1    90
#> [121,]  55   6      0        180        1   100
#> [122,]  55   6      1          5        1   138
#> [123,]  54  12      1          0        1   190
#> [124,]  55   2      0        134        1   140
#> [125,]  54   3      0        180        0   128
#> [126,]  56   3      0          8        1   139
#> [127,]  55   1      0          2        0   130
#> [128,]  52   9      1          3        0   170
#> [129,]  57   1      0        180        1   156
#> [130,]  56   4      1          0        1   140
#> [131,]  52   2      0        180        0   140
#> [132,]  55  11      1          7        0   104
#> [133,]  52  15      1         14        0   130
#> [134,]  56  14      1         11        0   130
#> [135,]  57  10      0        180        1   170
#> [136,]  58   8      0          8        1   130
#> [137,]  54   5      0        180        1   108
#> [138,]  55   3      1          1        1   156
#> [139,]  57   0      0          0        1   150
#> [140,]  58   6      1          0        1    90
#> [141,]  53  15      1         10        1   130
#> [142,]  55   9      1          2        1   147
#> [143,]  55  13      0        166        1   140
#> [144,]  56   5      0          5        1   150
#> [145,]  54  23      1          8        0   120
#> [146,]  57   4      1          2        1   185
#> [147,]  53   4      0        147        1   145
#> [148,]  53   7      1          0        1   120
#> [149,]  57  11      1         10        1   129
#> [150,]  55   3      1          2        0   140
#> [151,]  54   7      1          0        1   141
#> [152,]  56   4      0          4        0   164
#> [153,]  59  15      1         10        0   140
#> [154,]  58   9      1          0        1   180
#> [155,]  58   1      1          1        1   200
#> [156,]  55   5      1          0        0   140
#> [157,]  56   7      1          5        1   120
#> [158,]  59   9      1          1        1   125
#> [159,]  57   1      0        180        0   148
#> [160,]  60  11      1          9        0   106
#> [161,]  59   3      0        180        0   120
#> [162,]  58   4      1          0        1   160
#> [163,]  60   5      1          1        0   138
#> [164,]  55   5      1          0        1   160
#> [165,]  61   9      0          9        1   160
#> [166,]  58   4      1          3        0   120
#> [167,]  60   0      1          0        1    80
#> [168,]  58   8      0        161        1   140
#> [169,]  58  14      1          6        0   190
#> [170,]  61   9      1          8        0   150
#> [171,]  58   1      0          1        1   100
#> [172,]  61  20      1         13        0   130
#> [173,]  57   2      1          0        1   116
#> [174,]  58  10      0         10        1   150
#> [175,]  57   4      1          3        0   138
#> [176,]  56  14      0         45        0   130
#> [177,]  58  19      1         13        1   140
#> [178,]  56  13      1          6        1   158
#> [179,]  56  18      1         11        1   165
#> [180,]  58  11      0        172        1   135
#> [181,]  60  12      1          0        1   114
#> [182,]  55   9      1          7        1   135
#> [183,]  61  13      1         12        1   130
#> [184,]  59  11      1          8        1   190
#> [185,]  57  15      1         13        1   110
#> [186,]  59   5      1          2        0   182
#> [187,]  58   5      1          1        1   135
#> [188,]  59  10      0        180        0   160
#> [189,]  61  13      0         13        0   210
#> [190,]  62   7      1          2        1   180
#> [191,]  57   3      1          0        0   100
#> [192,]  61   7      0          7        1   150
#> [193,]  60   7      0          7        0   147
#> [194,]  61   6      0          6        0   134
#> [195,]  59  13      1          2        0   198
#> [196,]  58   3      1          0        1   146
#> [197,]  62   4      1          3        0   173
#> [198,]  58   2      0         30        0   202
#> [199,]  59   1      0        180        0   155
#> [200,]  59  16      1          9        1   133
#> [201,]  63   6      0         28        1   120
#> [202,]  61  13      0         13        0   120
#> [203,]  61   5      0          5        1   110
#> [204,]  58  11      1          9        0   179
#> [205,]  57   2      1          1        0   159
#> [206,]  58   7      0        180        1   150
#> [207,]  61   7      0        180        0   135
#> [208,]  63   4      1          3        0   222
#> [209,]  62   3      0        180        1   105
#> [210,]  63   4      0        180        1   190
#> [211,]  63  15      1         10        1   126
#> [212,]  64   4      0        180        0   130
#> [213,]  63   4      1          1        0   155
#> [214,]  60  18      1         13        0   132
#> [215,]  59   8      0        180        1   140
#> [216,]  61   9      1          9        1   150
#> [217,]  58   9      1          9        0   110
#> [218,]  62   7      0          7        0   150
#> [219,]  59   1      0         22        1   162
#> [220,]  58   2      0        180        0   127
#> [221,]  59   4      0        180        0   196
#> [222,]  60   7      1          5        1   141
#> [223,]  59   5      1          1        0   148
#> [224,]  60   7      1          1        1    90
#> [225,]  65  13      0        180        1   100
#> [226,]  63   1      0          1        0   130
#> [227,]  62   6      0        180        0   170
#> [228,]  61  15      1         13        0   170
#> [229,]  59   4      0          4        0   149
#> [230,]  60   3      0          3        0   168
#> [231,]  64  10      1          9        0   160
#> [232,]  63  12      1         10        0   200
#> [233,]  59  10      0        180        1   130
#> [234,]  60   8      0         17        1   130
#> [235,]  66   1      1          0        1   120
#> [236,]  64   6      1          0        1   140
#> [237,]  63  10      1          0        1   148
#> [238,]  65  36      1         11        0   140
#> [239,]  61  10      1          2        1   194
#> [240,]  64  32      1          9        1   160
#> [241,]  63  12      1          9        0   114
#> [242,]  63   7      0        180        0   120
#> [243,]  66   5      1          0        1   110
#> [244,]  65   8      1          0        0   168
#> [245,]  64   0      0          0        1    90
#> [246,]  60   6      0        180        0   130
#> [247,]  64  21      1         10        0   190
#> [248,]  61  12      1         11        0   154
#> [249,]  64   9      0        180        0   150
#> [250,]  61   4      0        180        1   113
#> [251,]  65   3      0        180        1   190
#> [252,]  63  16      1          7        1   110
#> [253,]  64   7      0        180        1   120
#> [254,]  66   6      1          1        1   130
#> [255,]  63  12      0         12        1   150
#> [256,]  62   3      1          1        1   199
#> [257,]  65   6      0          9        0   112
#> [258,]  65   3      1          0        1    80
#> [259,]  64   2      0          2        0   201
#> [260,]  66  18      1          5        0   142
#> [261,]  66  16      1         11        1   169
#> [262,]  61  14      1          5        0   140
#> [263,]  61  15      1         10        0   130
#> [264,]  63   9      1          8        1   160
#> [265,]  63   3      1          2        0   120
#> [266,]  64  19      1          8        1   160
#> [267,]  67   6      0        180        1   170
#> [268,]  65  15      1         11        1   160
#> [269,]  68   5      1          4        1   150
#> [270,]  64  13      1         12        1   150
#> [271,]  66   7      1          0        1   115
#> [272,]  66  13      1          0        0   118
#> [273,]  64  14      1         13        1   150
#> [274,]  65   3      0          3        0   105
#> [275,]  64   0      0          0        1   148
#> [276,]  65   2      1          1        1   170
#> [277,]  64  10      1          9        1   110
#> [278,]  63   7      1          0        0   162
#> [279,]  67   8      1          1        1   130
#> [280,]  63  10      0         16        1   160
#> [281,]  66  14      0        180        0   130
#> [282,]  64   1      0          1        1   120
#> [283,]  68  18      0        180        1   260
#> [284,]  65  17      1         14        1   100
#> [285,]  63   8      1          1        1   162
#> [286,]  65  18      1          3        0   120
#> [287,]  63   1      1          0        1   155
#> [288,]  63  10      0         18        1   130
#> [289,]  68  11      0        180        0   160
#> [290,]  68  14      0         79        0   172
#> [291,]  65  15      1         12        1   150
#> [292,]  66  11      1          0        0   100
#> [293,]  65   4      1          2        1   145
#> [294,]  66  15      1         13        1   160
#> [295,]  65  11      1          6        0   130
#> [296,]  69  21      1         10        0   180
#> [297,]  69   6      0        180        1   100
#> [298,]  66   9      1          8        0   130
#> [299,]  63   8      0        180        1   120
#> [300,]  68  14      1         13        1   140
#> [301,]  65   8      1          0        1    90
#> [302,]  69   1      1          0        0   170
#> [303,]  68  10      1         10        1   150
#> [304,]  63   2      1          0        0    99
#> [305,]  67   2      0        180        0   184
#> [306,]  65   6      0          6        0    80
#> [307,]  66  19      1         12        1   150
#> [308,]  67  12      1         12        0   160
#> [309,]  69   6      0         99        1   140
#> [310,]  65   4      1          1        0   130
#> [311,]  66   4      0        180        1   130
#> [312,]  70  15      1         12        1   132
#> [313,]  64   4      0        180        1   140
#> [314,]  64   0      1          0        1   118
#> [315,]  66   7      1          5        1   131
#> [316,]  66   4      0        180        0   177
#> [317,]  69   4      1          3        1   150
#> [318,]  65  13      1         12        1   130
#> [319,]  69   8      0         93        0   140
#> [320,]  66   6      0        180        0   140
#> [321,]  65   1      0          1        1   120
#> [322,]  68  18      1          0        1   160
#> [323,]  65   6      0        101        1   115
#> [324,]  68   4      0          4        1   190
#> [325,]  71   3      0          5        0   112
#> [326,]  70   7      1          0        1   190
#> [327,]  71  20      1          0        1   160
#> [328,]  67   2      0        180        0   128
#> [329,]  66   9      1          3        1   151
#> [330,]  66   1      1          1        1   165
#> [331,]  69   8      0        180        1   153
#> [332,]  70  14      0        171        0   166
#> [333,]  66   4      0        180        0   130
#> [334,]  67  10      1          9        0   200
#> [335,]  67   6      1          4        0   130
#> [336,]  68  18      1         14        1   170
#> [337,]  65   2      0        180        0   130
#> [338,]  67  14      1         13        0   130
#> [339,]  71   7      0          7        0   230
#> [340,]  69   5      0          5        1   142
#> [341,]  71   3      0        103        0   133
#> [342,]  69   3      0          3        1   130
#> [343,]  70  22      1         13        0   103
#> [344,]  67   1      0         36        1   104
#> [345,]  68   6      0        180        0   145
#> [346,]  69   8      1          5        1   195
#> [347,]  72   7      0          7        1   110
#> [348,]  69   8      1          7        1   108
#> [349,]  67   3      0        180        0   110
#> [350,]  68  18      0         18        1   100
#> [351,]  67  14      0        172        1   140
#> [352,]  66   2      0        180        0   130
#> [353,]  67   7      1          4        0   122
#> [354,]  69   8      1          2        0   121
#> [355,]  67  13      1          9        0   130
#> [356,]  70   3      0        123        0   130
#> [357,]  70   9      0        180        1   142
#> [358,]  72   5      1          4        0   170
#> [359,]  68   3      0         19        0   135
#> [360,]  69   1      0          1        1   110
#> [361,]  68  10      1          8        1   160
#> [362,]  66  24      1         13        0   130
#> [363,]  70   7      0          7        0   102
#> [364,]  68   7      1          2        0   135
#> [365,]  73  20      1          0        1   170
#> [366,]  71   6      0          9        0   120
#> [367,]  70  11      0        180        1   210
#> [368,]  72  19      1          8        0   120
#> [369,]  72  12      1         10        0   170
#> [370,]  67   8      0        180        1   170
#> [371,]  67   5      1          0        1   147
#> [372,]  67   9      0        180        0   158
#> [373,]  73  13      0        152        1   130
#> [374,]  70   5      0        180        0   150
#> [375,]  71   1      0        173        1   188
#> [376,]  70   3      0        180        0   121
#> [377,]  69   3      0        180        0   220
#> [378,]  71   3      1          2        0   150
#> [379,]  68   4      1          3        0   210
#> [380,]  71   5      0        180        0   191
#> [381,]  73   6      0        180        1   117
#> [382,]  70   4      0        180        0   180
#> [383,]  71   2      1          0        1   180
#> [384,]  73   7      0          7        1   140
#> [385,]  70  13      1          9        0   100
#> [386,]  72   6      0        180        1   130
#> [387,]  73   0      0        180        1   161
#> [388,]  74   8      1          0        1    85
#> [389,]  71   3      1          1        0   150
#> [390,]  71  15      1         11        0   165
#> [391,]  68   9      0        180        1   120
#> [392,]  71  20      1         10        0   140
#> [393,]  74   0      1          0        1    90
#> [394,]  73   3      1          0        1   136
#> [395,]  70   5      1          0        1   190
#> [396,]  71  17      1         11        0   160
#> [397,]  71   8      1          7        0   149
#> [398,]  71   3      1          2        1   190
#> [399,]  69  12      1          1        1   149
#> [400,]  70  26      1         11        1   120
#> [401,]  74   4      0          4        0   120
#> [402,]  73   4      0         58        1   160
#> [403,]  72  15      1          0        1   150
#> [404,]  71   7      1          2        0   143
#> [405,]  72   8      1          0        1   140
#> [406,]  74   3      0          3        1   150
#> [407,]  73  17      1         11        0   140
#> [408,]  71  13      1          8        0   121
#> [409,]  69   2      1          1        1    80
#> [410,]  70   4      1          0        1   140
#> [411,]  71  14      1         13        1   170
#> [412,]  74   7      1          0        1   117
#> [413,]  72  15      1         13        0   156
#> [414,]  70   8      0          8        0   120
#> [415,]  71  10      1          9        1   120
#> [416,]  73  10      1          9        1   146
#> [417,]  72  10      1          9        1   160
#> [418,]  73  10      1         10        1   120
#> [419,]  73   1      0          1        1    80
#> [420,]  75   9      1          7        0   140
#> [421,]  75  13      1          1        1   130
#> [422,]  71  11      1          8        0   110
#> [423,]  71   4      0          4        0   134
#> [424,]  72  15      1         12        1   120
#> [425,]  73  10      1          8        0   120
#> [426,]  70   7      1          4        0   184
#> [427,]  72   1      1          1        0   168
#> [428,]  72   7      0         57        1   145
#> [429,]  73  10      0        180        0   162
#> [430,]  72  11      0         11        1   140
#> [431,]  73   5      1          3        1   112
#> [432,]  76  25      1         12        1   170
#> [433,]  73  12      1         12        1   140
#> [434,]  72   2      0        180        0   120
#> [435,]  75   1      0        180        1   140
#> [436,]  72   4      1          0        1   197
#> [437,]  73   5      0        180        0   126
#> [438,]  73   4      0        180        0   124
#> [439,]  74  34      1          8        1   233
#> [440,]  76   3      1          0        1   120
#> [441,]  72   5      0        180        0   154
#> [442,]  76   5      0          5        1   130
#> [443,]  72   7      1          2        0   142
#> [444,]  73  15      0         15        1   160
#> [445,]  71  16      0        180        0   140
#> [446,]  73  10      1         10        0   124
#> [447,]  74   7      0        180        1   150
#> [448,]  74   3      0          3        1   128
#> [449,]  76   1      0        180        0   114
#> [450,]  74   2      1          1        0   140
#> [451,]  76   8      1          0        1   141
#> [452,]  74  19      1          4        1   200
#> [453,]  74   2      0        180        0   190
#> [454,]  72   4      0         85        1   120
#> [455,]  72   4      1          3        0   160
#> [456,]  73   4      1          3        1   125
#> [457,]  76  13      1         10        0   110
#> [458,]  75   0      0          0        1   130
#> [459,]  73  13      1         11        0   195
#> [460,]  74   8      1          0        1   105
#> [461,]  74   6      0        180        0   160
#> [462,]  74   2      0        180        0   111
#> [463,]  73   0      0        180        0   156
#> [464,]  72   5      0        180        0   120
#> [465,]  78  12      1         11        1   160
#> [466,]  76   5      0        180        0   185
#> [467,]  74   8      1          8        1   170
#> [468,]  75   9      0        180        1   140
#> [469,]  73  33      1         12        1   175
#> [470,]  77  12      1          9        1   100
#> [471,]  73  10      1          9        0   146
#> [472,]  77   1      1          0        1    90
#> [473,]  76  12      1         11        1   120
#> [474,]  78   5      1          0        1   170
#> [475,]  73   7      1          0        0   174
#> [476,]  74   6      0         79        1   140
#> [477,]  75   3      1          1        1   171
#> [478,]  74   9      1          8        0   200
#> [479,]  75   6      0        180        0   150
#> [480,]  79  10      1          8        0   190
#> [481,]  77   3      0        180        0   110
#> [482,]  76  29      0         47        0    90
#> [483,]  73   8      1          1        1   162
#> [484,]  74   2      0        180        0   100
#> [485,]  78   7      0          7        1   133
#> [486,]  74  15      0        180        1   172
#> [487,]  78  32      1          9        1   198
#> [488,]  79   6      0        180        0   170
#> [489,]  80  10      1          6        1   147
#> [490,]  78   0      0        180        1   212
#> [491,]  75   5      0        119        1   150
#> [492,]  78  15      0        180        1   270
#> [493,]  80   8      0          8        1   120
#> [494,]  75  13      1          6        0   150
#> [495,]  76   1      0          1        1    83
#> [496,]  79   4      0         80        0   145
#> [497,]  78  12      1          9        0   150
#> [498,]  78   2      1          1        0   130
#> [499,]  76  11      1          0        0   120
#> [500,]  75  11      1          4        0   162
#> [501,]  76   7      0         29        1   150
#> [502,]  77  24      0         24        1   160
#> [503,]  79   8      0         32        1   120
#> [504,]  80   6      0          6        1   150
#> [505,]  78   6      1          0        1   240
#> [506,]  79  11      0        180        0   160
#> [507,]  79   2      1          0        1   121
#> [508,]  78  14      1          0        1   140
#> [509,]  76   4      0          4        1   160
#> [510,]  79   4      0          4        1   125
#> [511,]  76  10      1          8        0   180
#> [512,]  76  12      1         10        1   127
#> [513,]  77   6      0          6        1   107
#> [514,]  80   3      1          0        1   120
#> [515,]  75   2      1          1        1   204
#> [516,]  76   1      0          1        1   140
#> [517,]  76   1      0          1        1    90
#> [518,]  78   7      1          0        1   110
#> [519,]  77   7      0        180        1   170
#> [520,]  77   6      0          6        1   144
#> [521,]  79   4      1          0        1   120
#> [522,]  81   1      0        180        0   120
#> [523,]  77   9      1          4        0   141
#> [524,]  80  40      1          0        1   138
#> [525,]  78   4      0         59        1   112
#> [526,]  80  17      1         12        0   100
#> [527,]  76   7      0        161        0   151
#> [528,]  79  10      0         10        1   120
#> [529,]  80  15      1          0        1    90
#> [530,]  80   6      0        173        1   160
#> [531,]  78  32      0        180        1   130
#> [532,]  79   1      0         37        1   140
#> [533,]  81   3      0        180        0   184
#> [534,]  81   2      0        175        0   172
#> [535,]  78   7      0          7        1   147
#> [536,]  77  13      1          0        1   190
#> [537,]  78  15      0         15        0   165
#> [538,]  78   4      0        180        0   175
#> [539,]  79   3      0          3        1   101
#> [540,]  78  26      1          5        0   194
#> [541,]  76   1      0        166        0   131
#> [542,]  78   3      1          1        1   152
#> [543,]  80   2      1          1        0   168
#> [544,]  79   6      0          6        0   152
#> [545,]  80   6      1          0        1   119
#> [546,]  78   2      0        180        0   148
#> [547,]  80   5      0          5        1   130
#> [548,]  82   1      1          0        1    82
#> [549,]  81   1      0        108        0   129
#> [550,]  78  12      0        180        0   134
#> [551,]  82  21      1          2        0   155
#> [552,]  79   4      0          4        1   121
#> [553,]  83   9      1          5        1   170
#> [554,]  82   5      0        180        0   110
#> [555,]  83   5      0        180        0   148
#> [556,]  83   4      0        103        0    97
#> [557,]  81   5      0        177        0    41
#> [558,]  78   9      1          4        1   120
#> [559,]  79   1      0        180        1   170
#> [560,]  84   5      1          1        1    85
#> [561,]  81  20      1          9        0   170
#> [562,]  81  16      0         16        1   110
#> [563,]  80   6      1          0        1   150
#> [564,]  80  11      1          8        0   110
#> [565,]  80   8      1          7        0   160
#> [566,]  79   7      0        177        0   197
#> [567,]  79   0      1          0        1    96
#> [568,]  83   2      0          2        1   155
#> [569,]  82   6      0        128        1   100
#> [570,]  84   4      0        167        0   198
#> [571,]  82  23      1          0        0   110
#> [572,]  84   5      0        180        1   203
#> [573,]  84   4      0          4        1    85
#> [574,]  81   1      0          1        1   150
#> [575,]  84   1      0         38        1   205
#> [576,]  83   3      0        180        0   174
#> [577,]  81   4      0         90        1   138
#> [578,]  79   9      1          8        0   150
#> [579,]  85   3      1          2        1   160
#> [580,]  80  13      1          8        1   140
#> [581,]  80   2      1          0        1   130
#> [582,]  79   4      0          4        1    60
#> [583,]  80   6      0         71        1   189
#> [584,]  82  19      0         19        0   120
#> [585,]  80  30      1         13        0   220
#> [586,]  83   9      0        180        0   198
#> [587,]  79  14      1          0        0   110
#> [588,]  81  14      1         12        1   128
#> [589,]  83   2      0        154        0   130
#> [590,]  82   0      0          2        1   100
#> [591,]  81   4      0          4        0   175
#> [592,]  84  15      1         13        1   110
#> [593,]  81   1      0          1        1   145
#> [594,]  81  12      0         12        1   163
#> [595,]  82  16      1          8        0   103
#> [596,]  81   4      0          4        0   160
#> [597,]  86  12      0        180        1   120
#> [598,]  83  12      1          2        1   170
#> [599,]  81  19      1         14        0   120
#> [600,]  82   3      1          2        0   130
#> [601,]  80   2      0         88        0   135
#> [602,]  83   7      0        126        0   135
#> [603,]  84   6      0        165        0   145
#> [604,]  82   9      0        180        1   134
#> [605,]  84   3      0        180        1   120
#> [606,]  81  13      0        180        0   152
#> [607,]  81   4      0        180        0   160
#> [608,]  82   1      0        180        1   193
#> [609,]  83   4      0          4        0   130
#> [610,]  87   2      0          5        1   137
#> [611,]  86  12      1          0        1   132
#> [612,]  86   6      1          0        1   140
#> [613,]  83  19      0         43        0   150
#> [614,]  83  10      1          0        1   190
#> [615,]  88  14      1          3        1   130
#> [616,]  84   3      0          3        1   121
#> [617,]  83  13      1         12        0   170
#> [618,]  84   7      1          2        0   148
#> [619,]  87   2      0        180        0   113
#> [620,]  84   9      0         92        1   110
#> [621,]  86   4      0         38        1   122
#> [622,]  84  13      0         62        1   100
#> [623,]  86   6      1          1        0   112
#> [624,]  88   4      0          4        0   100
#> [625,]  85  22      0         22        1   184
#> [626,]  83   9      0         65        1   150
#> [627,]  87   2      0        180        1   130
#> [628,]  88   4      0          4        0    86
#> [629,]  89   4      0          4        1   153
#> [630,]  89   5      0        119        1   140
#> [631,]  84   8      0        180        1   119
#> [632,]  84   2      0        110        1   174
#> [633,]  84   0      0        180        1   136
#> [634,]  89  10      0         46        1   170
#> [635,]  88   1      0          1        0   135
#> [636,]  86   4      0        180        1   145
#> [637,]  91   8      0          8        0   100
#> [638,]  87   2      0        180        0   160
#> [639,]  87   6      1          0        0   125
#> [640,]  91  10      0        145        0   135
#> [641,]  88   8      0         50        1   154
#> [642,]  86  10      0        180        1   137
#> [643,]  90   4      1          0        0   121
#> [644,]  90   5      1          0        1   125
#> [645,]  89   3      1          1        1   160
#> [646,]  92   1      0          1        1   167
#> [647,]  88   5      0        158        0   100
#> [648,]  87   7      0         74        1   105
#> [649,]  89  12      1          0        1   130
#> [650,]  89   2      0        168        0   118
#> [651,]  91   5      0        169        1   176
#> [652,]  92   7      0          7        1   110
#> [653,]  89   4      0          4        1   159
#> [654,]  91   0      0          0        0     0
#> [655,]  89  14      0        180        1    84
#> [656,]  90  18      0        180        0   188
#> [657,]  91   4      1          0        1   120
#> [658,]  90  19      1         11        1   129
#> [659,]  94   6      0         50        0    78
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
#>   [1] 180.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+
#>  [11]  12.0    5.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+
#>  [21] 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+
#>  [41] 180.0+   6.0+ 180.0+ 180.0+   5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+   2.0    1.0  179.0+ 179.0+   4.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91]   4.0+  85.0  180.0+ 166.0+ 180.0+  16.0+ 180.0+ 152.0+   6.0+ 180.0+
#> [101] 180.0+  13.0+ 180.0+ 174.0+  28.0    6.0+ 180.0+   9.0+ 180.0+ 175.0+
#> [111]   2.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0   15.0+
#> [121] 180.0+ 180.0+  12.0+ 134.0+ 180.0+   8.0    2.0  180.0+ 180.0+ 165.0 
#> [131] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+   0.5  180.0+
#> [141] 180.0+  15.0  166.0+   5.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+ 180.0+
#> [151] 180.0+   4.0+ 180.0+   9.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+   0.5  161.0+ 171.0+ 180.0+
#> [171]   1.0  180.0+ 180.0+  10.0+ 180.0+  45.0   19.0  180.0+ 180.0+ 172.0+
#> [181] 172.0+  24.0  180.0+ 180.0+  15.0  180.0+ 180.0+ 180.0+  13.0+ 180.0+
#> [191] 180.0+   7.0    7.0+   6.0  180.0+   3.0+ 180.0+  30.0  180.0+ 180.0+
#> [201]  28.0   13.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+
#> [221] 180.0+  84.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+   4.0+   3.0+
#> [231] 167.0  180.0+ 180.0+  17.0  180.0+ 180.0+ 180.0+  36.0   88.0  180.0+
#> [241]  12.0  180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0    3.0    2.0+  18.0+
#> [261] 180.0+ 180.0+ 180.0+ 180.0+   3.0+ 103.0  180.0+ 180.0+   5.0+  13.0 
#> [271] 179.0+ 166.0+  14.0+   3.0    0.5+ 175.0+ 180.0+   7.0+   8.0   16.0 
#> [281] 180.0+   1.0  180.0+ 180.0+ 180.0+ 123.0+   1.0+  18.0  180.0+  79.0 
#> [291]  15.0+ 180.0+   4.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [301]   8.0+ 175.0   10.0  180.0+ 180.0+   6.0   19.0+  12.0   99.0  180.0+
#> [311] 180.0+ 180.0+ 180.0+   0.5    7.0+ 180.0+ 152.0+ 180.0+  93.0  180.0+
#> [321]   1.0   18.0+ 101.0    4.0    5.0    7.0+ 180.0+ 180.0+ 180.0+   1.0 
#> [331] 180.0+ 171.0  180.0+ 174.0+   6.0  180.0+ 180.0+ 180.0+   7.0+   5.0+
#> [341] 103.0    3.0+ 180.0+  36.0  180.0+ 180.0+   7.0    8.0+ 180.0+  18.0 
#> [351] 172.0+ 180.0+   7.0    8.0+  13.0+ 123.0  180.0+ 180.0+  19.0    1.0 
#> [361]  10.0+ 180.0+   7.0+   7.0+ 124.0    9.0  180.0+ 180.0+  12.0  180.0+
#> [371] 180.0+ 180.0+ 152.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [381] 180.0+ 180.0+ 180.0+   7.0+  13.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+
#> [391] 180.0+  20.0    0.5  180.0+ 180.0+ 180.0+   8.0    3.0   12.0  180.0+
#> [401]   4.0+  58.0  180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0    2.0  180.0+
#> [411]  14.0+ 180.0+ 180.0+   8.0+ 179.0+ 180.0+ 159.0   15.0    1.0  180.0+
#> [421]  13.0  180.0+   4.0+ 180.0+  10.0  104.0+   1.0   57.0  180.0+  11.0 
#> [431]   5.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+
#> [441] 180.0+   5.0    7.0   15.0+ 180.0+  10.0  180.0+   3.0  180.0+ 180.0+
#> [451] 180.0+ 180.0+ 180.0+  85.0  180.0+ 180.0+ 174.0+   0.5  180.0+ 180.0+
#> [461] 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   8.0  180.0+  33.0  180.0+
#> [471] 180.0+   1.0   12.0  180.0+   7.0+  79.0    3.0  168.0+ 180.0+ 180.0+
#> [481] 180.0+  47.0  180.0+ 180.0+   7.0  180.0+  32.0  180.0+  10.0  180.0+
#> [491] 119.0  180.0+   8.0  180.0+   1.0   80.0  180.0+ 180.0+  11.0  152.0+
#> [501]  29.0   24.0   32.0    6.0  180.0+ 180.0+ 180.0+ 180.0+   4.0    4.0 
#> [511]  10.0+ 180.0+   6.0    3.0+   2.0+   1.0    1.0   43.0  180.0+   6.0 
#> [521] 138.0  180.0+  71.0   40.0   59.0   17.0  161.0   10.0+ 180.0+ 173.0 
#> [531] 180.0+  37.0  180.0+ 175.0+   7.0+  22.0   15.0+ 180.0+   3.0  171.0+
#> [541] 166.0+   3.0+  10.0    6.0+   6.0  180.0+   5.0    1.0  108.0  180.0+
#> [551] 180.0+   4.0    9.0+ 180.0+ 180.0+ 103.0  177.0+ 180.0+ 180.0+ 180.0+
#> [561]  20.0   16.0  180.0+ 180.0+ 180.0+ 177.0+   0.5    2.0  128.0  167.0 
#> [571]  62.0  180.0+   4.0    1.0   38.0  180.0+  90.0  180.0+ 180.0+ 180.0+
#> [581] 180.0+   4.0   71.0   19.0   30.0  180.0+ 180.0+ 180.0+ 154.0    2.0 
#> [591]   4.0+ 180.0+   1.0   12.0   16.0+   4.0+ 180.0+  77.0  180.0+   3.0 
#> [601]  88.0  126.0  165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0 
#> [611] 180.0+   6.0   43.0  180.0+  14.0    3.0   13.0  180.0+ 180.0+  92.0 
#> [621]  38.0   62.0    6.0+   4.0+  22.0   65.0  180.0+   4.0    4.0  119.0 
#> [631] 180.0+ 110.0  180.0+  46.0    1.0+ 180.0+   8.0  180.0+  25.0  145.0 
#> [641]  50.0  180.0+   4.0   89.0    3.0+   1.0  158.0   74.0  180.0+ 168.0 
#> [651] 169.0    7.0    4.0    0.5  180.0+ 180.0+   4.0  180.0+  50.0  180.0+
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
#>   0.8365797 
```
