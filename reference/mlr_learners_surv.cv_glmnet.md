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
#> min 0.00334    44   2.629 0.1681       6
#> 1se 0.07197    11   2.772 0.1670       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35   2      1          1        1   112
#>   [5,]  37   9      0        180        1   151
#>   [6,]  38  13      1          0        1   161
#>   [7,]  36   1      0        180        1   155
#>   [8,]  35   0      0        180        1   119
#>   [9,]  38  12      1         11        1    92
#>  [10,]  40  12      1          9        0   153
#>  [11,]  42   3      1          1        1   130
#>  [12,]  40   2      1          1        1   148
#>  [13,]  38   5      1          3        0   125
#>  [14,]  40   6      0        180        1   138
#>  [15,]  40  11      1         10        1   120
#>  [16,]  41   2      1          1        0   166
#>  [17,]  40   1      1          0        1   145
#>  [18,]  43   4      1          0        1   130
#>  [19,]  42  15      1         13        1   125
#>  [20,]  40   3      1          1        0   170
#>  [21,]  42  12      1         10        1   170
#>  [22,]  43   2      1          1        1   116
#>  [23,]  42   2      0        180        1   124
#>  [24,]  44   5      1          1        0   170
#>  [25,]  41  10      1          8        0   150
#>  [26,]  44   3      0        180        0   141
#>  [27,]  45   9      1          7        0   110
#>  [28,]  45   6      0        180        1   170
#>  [29,]  41   5      1          4        1   141
#>  [30,]  44   2      1          1        1   150
#>  [31,]  45   2      0        180        1   140
#>  [32,]  46   2      1          1        0   126
#>  [33,]  47   4      1          3        0   118
#>  [34,]  48  15      0        180        1   160
#>  [35,]  45   3      0        150        0   130
#>  [36,]  44   3      1          0        1   180
#>  [37,]  46   7      1          2        0   166
#>  [38,]  43  29      0        180        1   180
#>  [39,]  45   4      1          0        0   124
#>  [40,]  47   6      1          0        1   116
#>  [41,]  44   0      1          0        1    96
#>  [42,]  47   4      1          3        1   160
#>  [43,]  45   8      1          0        1   117
#>  [44,]  49   5      0         73        1   136
#>  [45,]  45   5      0          5        0   141
#>  [46,]  46   2      1          1        1   122
#>  [47,]  44   4      1          0        1   114
#>  [48,]  46   5      1          3        0   130
#>  [49,]  46   4      0        180        1   121
#>  [50,]  46  15      0        180        1   120
#>  [51,]  45   9      1          0        1   145
#>  [52,]  47   3      1          1        1   120
#>  [53,]  48   3      0        180        0   154
#>  [54,]  48  12      1         11        0   200
#>  [55,]  47   5      1          3        1   130
#>  [56,]  47   9      1          6        0   170
#>  [57,]  46   3      1          0        1   119
#>  [58,]  49   4      0        180        0   117
#>  [59,]  47  10      0         10        1   140
#>  [60,]  50   1      1          0        1   129
#>  [61,]  48   2      1          0        0   184
#>  [62,]  50   6      1          2        1   140
#>  [63,]  49   7      1          7        1   110
#>  [64,]  46   9      1          9        1   122
#>  [65,]  49  15      1         11        1   160
#>  [66,]  49  23      0        179        1   112
#>  [67,]  46   6      1          0        1   156
#>  [68,]  50   7      1          0        1    92
#>  [69,]  50   4      0          4        1   100
#>  [70,]  50   1      1          0        0   150
#>  [71,]  50   9      0        180        0   130
#>  [72,]  49   7      1          4        1    90
#>  [73,]  47   6      0        180        1   162
#>  [74,]  52   2      0        180        0   155
#>  [75,]  46   1      1          1        0   145
#>  [76,]  53   8      0         36        1   160
#>  [77,]  52   4      1          4        0   152
#>  [78,]  49   9      1          3        0   102
#>  [79,]  49  15      0        180        1   160
#>  [80,]  53   5      0        180        1   140
#>  [81,]  54  17      1         12        1   102
#>  [82,]  54   6      1          3        0   129
#>  [83,]  51   3      1          1        0   140
#>  [84,]  50   2      0          5        1   106
#>  [85,]  50  10      1          6        0   122
#>  [86,]  50  14      1         13        0   170
#>  [87,]  48   3      1          2        0   150
#>  [88,]  49   5      1          2        1   150
#>  [89,]  52  14      1          7        1   200
#>  [90,]  48   6      0        180        0   160
#>  [91,]  48  11      1         10        0   120
#>  [92,]  53   4      1          0        1   156
#>  [93,]  51  13      0         99        1   160
#>  [94,]  49  16      0         16        0   125
#>  [95,]  54  23      1         10        0   131
#>  [96,]  52   7      1          2        0   154
#>  [97,]  55   6      1          2        1   114
#>  [98,]  54   9      1          1        0   130
#>  [99,]  55   4      1          2        0   150
#> [100,]  52   4      0        180        1   180
#> [101,]  51  13      1         11        0   145
#> [102,]  50   5      1          4        1   150
#> [103,]  52   4      0        180        0   183
#> [104,]  50   3      0        174        1   153
#> [105,]  55  28      1         13        1   160
#> [106,]  50   7      1          1        0   156
#> [107,]  53   9      0          9        1    95
#> [108,]  50   7      1          0        1   127
#> [109,]  56   4      1          1        1   130
#> [110,]  52   5      0        175        1   117
#> [111,]  55   2      0          2        0   145
#> [112,]  56   3      0        180        1   193
#> [113,]  56   2      0        180        0   132
#> [114,]  55   5      1          4        1   120
#> [115,]  52   8      0        180        0   119
#> [116,]  53  18      1          9        1   150
#> [117,]  54   3      0        180        1   180
#> [118,]  55   6      0        180        0   170
#> [119,]  52  16      0         16        0   152
#> [120,]  52  16      1         14        0   170
#> [121,]  53  15      0         15        1    90
#> [122,]  55   6      0        180        1   100
#> [123,]  54  12      1          0        1   190
#> [124,]  55   2      0        134        1   140
#> [125,]  54   3      0        180        0   128
#> [126,]  55   1      0          2        0   130
#> [127,]  54   7      1          2        0   129
#> [128,]  54   2      1          1        0   135
#> [129,]  52   9      1          3        0   170
#> [130,]  57   5      1          3        1   138
#> [131,]  57   1      0        180        1   156
#> [132,]  57   1      0          1        1   100
#> [133,]  52   2      0        180        0   140
#> [134,]  55  11      1          7        0   104
#> [135,]  52  15      1         14        0   130
#> [136,]  57  10      0        180        1   170
#> [137,]  54   5      0        180        1   108
#> [138,]  55   3      1          1        1   156
#> [139,]  57   0      0          0        1   150
#> [140,]  53  21      1         13        1   130
#> [141,]  59   3      1          1        0   172
#> [142,]  57   4      0        180        1   119
#> [143,]  54  17      1          8        1   227
#> [144,]  55   9      1          2        1   147
#> [145,]  55  13      0        166        1   140
#> [146,]  56   5      0          5        1   150
#> [147,]  54  23      1          8        0   120
#> [148,]  57   4      1          2        1   185
#> [149,]  53   7      1          0        1   120
#> [150,]  57  11      1         10        1   129
#> [151,]  55   3      1          2        0   140
#> [152,]  55   5      0          5        1   131
#> [153,]  56   4      0          4        0   164
#> [154,]  59  15      1         10        0   140
#> [155,]  58   9      1          0        1   180
#> [156,]  55   5      1          0        0   140
#> [157,]  56   7      1          5        1   120
#> [158,]  55   2      0          2        0   106
#> [159,]  57   1      0        180        0   148
#> [160,]  59   3      0        180        0   120
#> [161,]  58   4      1          0        1   160
#> [162,]  57   2      0          2        1   120
#> [163,]  60   5      1          1        0   138
#> [164,]  57   5      0        180        1   130
#> [165,]  55   5      1          0        1   160
#> [166,]  57  10      1          9        0   103
#> [167,]  59   6      1          0        1   140
#> [168,]  59   4      1          0        1   152
#> [169,]  58  26      1          0        1   189
#> [170,]  61   9      0          9        1   160
#> [171,]  58   8      0        161        1   140
#> [172,]  58  14      1          6        0   190
#> [173,]  61   4      1          3        0   151
#> [174,]  61   9      1          8        0   150
#> [175,]  61   3      1          2        1   102
#> [176,]  58   1      0          1        1   100
#> [177,]  61  20      1         13        0   130
#> [178,]  57  13      1         10        0   110
#> [179,]  57   2      1          0        1   116
#> [180,]  58  10      0         10        1   150
#> [181,]  57   4      1          3        0   138
#> [182,]  61   3      0         17        0   143
#> [183,]  57   3      1          2        0   120
#> [184,]  58  19      1         13        1   140
#> [185,]  56  13      1          6        1   158
#> [186,]  56  18      1         11        1   165
#> [187,]  59   9      1          0        1    80
#> [188,]  55   4      1          3        1   160
#> [189,]  55   9      1          7        1   135
#> [190,]  61   4      1          0        1   115
#> [191,]  56   8      1          8        0   120
#> [192,]  59  11      1          8        1   190
#> [193,]  57   1      0          1        0   126
#> [194,]  57  15      1         13        1   110
#> [195,]  59   5      1          2        0   182
#> [196,]  58   5      1          1        1   135
#> [197,]  59  10      0        180        0   160
#> [198,]  61  13      0         13        0   210
#> [199,]  58   8      1          5        0   152
#> [200,]  62  10      1          0        1   153
#> [201,]  62   7      1          2        1   180
#> [202,]  57   7      0        169        0   180
#> [203,]  61   7      0          7        1   150
#> [204,]  60   7      0          7        0   147
#> [205,]  57  12      1          9        1   120
#> [206,]  62   4      1          0        0   160
#> [207,]  60  17      1          8        1   140
#> [208,]  62   4      1          3        0   173
#> [209,]  58   2      0         30        0   202
#> [210,]  59  16      1          9        1   133
#> [211,]  61   5      0          5        1   110
#> [212,]  57  18      1          9        1    93
#> [213,]  61   5      0          5        1   160
#> [214,]  58  11      1          9        0   179
#> [215,]  62  17      1         10        1   180
#> [216,]  58   7      0        180        1   150
#> [217,]  63   3      1          1        0   180
#> [218,]  61   7      0        180        0   135
#> [219,]  62   3      0        180        1   105
#> [220,]  63   4      0        180        1   190
#> [221,]  63  15      1         10        1   126
#> [222,]  63   4      1          1        0   155
#> [223,]  60  18      1         13        0   132
#> [224,]  59   8      0        180        1   140
#> [225,]  61   9      1          9        1   150
#> [226,]  58   9      1          9        0   110
#> [227,]  62   7      0          7        0   150
#> [228,]  58   2      0        180        0   127
#> [229,]  60   7      1          5        1   141
#> [230,]  60   7      0          7        0   140
#> [231,]  59   5      1          1        0   148
#> [232,]  65  13      0        180        1   100
#> [233,]  63   1      0          1        0   130
#> [234,]  61  15      1         13        0   170
#> [235,]  62   6      0          6        0   120
#> [236,]  63  12      1         10        0   200
#> [237,]  59  10      0        180        1   130
#> [238,]  60   8      0         17        1   130
#> [239,]  64  12      1         11        0   160
#> [240,]  63  10      1          0        1   148
#> [241,]  63  14      1          9        0   123
#> [242,]  65  36      1         11        0   140
#> [243,]  63   4      1          3        0   162
#> [244,]  66   3      1          1        0   127
#> [245,]  61  10      1          2        1   194
#> [246,]  63  12      1          9        0   114
#> [247,]  66   5      1          0        1   110
#> [248,]  65   8      1          0        0   168
#> [249,]  65  10      1          8        1   120
#> [250,]  64   0      0          0        1    90
#> [251,]  61  12      1         11        0   154
#> [252,]  64   9      0        180        0   150
#> [253,]  61   4      0        180        1   113
#> [254,]  63  16      1          7        1   110
#> [255,]  63  12      0         12        1   150
#> [256,]  65   6      0          9        0   112
#> [257,]  63   5      1          4        0   170
#> [258,]  62  13      1         11        0   180
#> [259,]  67  11      0         11        1   100
#> [260,]  64   2      0          2        0   201
#> [261,]  66  18      1          5        0   142
#> [262,]  66  16      1         11        1   169
#> [263,]  61  14      1          5        0   140
#> [264,]  63   9      1          8        1   160
#> [265,]  63   3      1          2        0   120
#> [266,]  63   2      1          0        0   140
#> [267,]  64  19      1          8        1   160
#> [268,]  65   8      1          0        1   140
#> [269,]  67   6      0        180        1   170
#> [270,]  65  15      1         11        1   160
#> [271,]  68   5      1          4        1   150
#> [272,]  64   6      1          0        1   125
#> [273,]  66  13      1          0        0   118
#> [274,]  64  14      1         13        1   150
#> [275,]  65   3      0          3        0   105
#> [276,]  64   0      0          0        1   148
#> [277,]  67   4      1          3        0   130
#> [278,]  66   3      1          0        1   135
#> [279,]  66   6      1          0        1   140
#> [280,]  65   2      1          1        1   170
#> [281,]  68   1      0        180        1   166
#> [282,]  64  10      1          9        1   110
#> [283,]  63   7      1          0        0   162
#> [284,]  67   8      1          1        1   130
#> [285,]  68   5      0          5        1    90
#> [286,]  66  14      0        180        0   130
#> [287,]  65  17      1         14        1   100
#> [288,]  63   8      1          1        1   162
#> [289,]  65  18      1          3        0   120
#> [290,]  63   1      1          0        1   155
#> [291,]  67  11      0         11        0   150
#> [292,]  68  11      0        180        0   160
#> [293,]  68  14      0         79        0   172
#> [294,]  66  12      1         10        1   150
#> [295,]  65  15      1         12        1   150
#> [296,]  66  11      1          0        0   100
#> [297,]  65   4      1          2        1   145
#> [298,]  69  12      0         15        1   140
#> [299,]  66  15      1         13        1   160
#> [300,]  65  11      1          6        0   130
#> [301,]  69  21      1         10        0   180
#> [302,]  69   6      0        180        1   100
#> [303,]  63   8      0        180        1   120
#> [304,]  68  14      1         13        1   140
#> [305,]  66   3      0          3        1   138
#> [306,]  69   1      1          0        0   170
#> [307,]  67   1      0        180        1   160
#> [308,]  65   1      1          0        0   133
#> [309,]  67   7      1          4        1   130
#> [310,]  67   2      0        180        0   184
#> [311,]  65  10      1          1        1   148
#> [312,]  66  19      1         12        1   150
#> [313,]  69   6      0         99        1   140
#> [314,]  65   4      1          1        0   130
#> [315,]  64   4      0        179        0   160
#> [316,]  66   4      0        180        1   130
#> [317,]  64  11      0         11        0   125
#> [318,]  64   0      1          0        1   118
#> [319,]  66   7      1          5        1   131
#> [320,]  66   4      0        180        0   177
#> [321,]  68   4      1          0        1   160
#> [322,]  69   4      1          3        1   150
#> [323,]  65  13      1         12        1   130
#> [324,]  69   8      0         93        0   140
#> [325,]  66   6      0        180        0   140
#> [326,]  65   1      0          1        1   120
#> [327,]  68  18      1          0        1   160
#> [328,]  68   4      0          4        1   190
#> [329,]  71   3      0          5        0   112
#> [330,]  70   7      1          0        1   190
#> [331,]  66   9      1          3        1   151
#> [332,]  66   1      1          1        1   165
#> [333,]  70   4      1          0        1   180
#> [334,]  69   8      0        180        1   153
#> [335,]  70  14      0        171        0   166
#> [336,]  66   4      0        180        0   130
#> [337,]  67   6      1          4        0   130
#> [338,]  68  18      1         14        1   170
#> [339,]  69   0      0          0        1   148
#> [340,]  69   3      1          2        0   151
#> [341,]  67  14      1         13        0   130
#> [342,]  65  14      1         13        1   150
#> [343,]  66   2      0          2        1   228
#> [344,]  69   5      0          5        1   142
#> [345,]  71   3      0        103        0   133
#> [346,]  69   3      0          3        1   130
#> [347,]  70  22      1         13        0   103
#> [348,]  68   6      0        180        0   145
#> [349,]  69   8      1          5        1   195
#> [350,]  72   3      1          0        1   132
#> [351,]  67   3      0        180        0   110
#> [352,]  66   2      1          1        0   123
#> [353,]  69  19      0        180        0   130
#> [354,]  68  18      0         18        1   100
#> [355,]  67  14      0        172        1   140
#> [356,]  69   4      1          3        0   132
#> [357,]  69   8      1          2        0   121
#> [358,]  67  13      1          9        0   130
#> [359,]  70   3      0        123        0   130
#> [360,]  70   9      0        180        1   142
#> [361,]  72   5      1          4        0   170
#> [362,]  67  22      1          1        1   140
#> [363,]  67  12      1          8        0   120
#> [364,]  69   1      0          1        1   110
#> [365,]  67   4      0         60        1   136
#> [366,]  72  13      1         11        1   195
#> [367,]  66  24      1         13        0   130
#> [368,]  70   7      0          7        0   102
#> [369,]  68   7      1          2        0   135
#> [370,]  73  20      1          0        1   170
#> [371,]  69  10      1          6        1   120
#> [372,]  70  11      0        180        1   210
#> [373,]  72  19      1          8        0   120
#> [374,]  72  12      1         10        0   170
#> [375,]  67   8      0        180        1   170
#> [376,]  67   9      0        180        0   158
#> [377,]  73  13      0        152        1   130
#> [378,]  70   5      0        180        0   150
#> [379,]  67   4      1          1        0   134
#> [380,]  71   1      0        173        1   188
#> [381,]  68  23      0        180        1   220
#> [382,]  70   3      0        180        0   121
#> [383,]  69   3      0        180        0   220
#> [384,]  71   3      1          2        0   150
#> [385,]  68   4      1          3        0   210
#> [386,]  73   6      0        180        1   117
#> [387,]  69   8      1          1        0   164
#> [388,]  68   7      0        180        1   130
#> [389,]  69   1      1          0        0   155
#> [390,]  73   6      1          0        1   270
#> [391,]  72   8      1          1        1   150
#> [392,]  73   0      0        180        1   161
#> [393,]  74  20      0         20        1   180
#> [394,]  73   3      1          0        1   136
#> [395,]  70   5      1          0        1   190
#> [396,]  71   8      1          7        0   149
#> [397,]  71   3      1          2        1   190
#> [398,]  73  10      1          8        0   106
#> [399,]  69  12      1          1        1   149
#> [400,]  70  26      1         11        1   120
#> [401,]  74   4      0          4        0   120
#> [402,]  73   4      0         58        1   160
#> [403,]  72   5      1          3        1   160
#> [404,]  70   3      0        180        1   154
#> [405,]  73   6      0        180        0   110
#> [406,]  71   7      1          2        0   143
#> [407,]  72   8      1          0        1   140
#> [408,]  74   3      0          3        1   150
#> [409,]  73  17      1         11        0   140
#> [410,]  69   2      1          1        1    80
#> [411,]  70   4      1          0        1   140
#> [412,]  72  10      1          8        1   153
#> [413,]  69   7      0        180        1   144
#> [414,]  72  15      1         13        0   156
#> [415,]  70   8      0          8        0   120
#> [416,]  75   1      0          1        0   133
#> [417,]  75   2      1          1        0   145
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
#> [428,]  72   1      1          1        0   168
#> [429,]  72   7      0         57        1   145
#> [430,]  73  10      0        180        0   162
#> [431,]  72  11      0         11        1   140
#> [432,]  73  12      1         12        1   140
#> [433,]  72   2      0        180        0   120
#> [434,]  72   4      1          0        1   197
#> [435,]  71   3      1          0        0   144
#> [436,]  73   4      0        180        0   124
#> [437,]  76   3      1          0        1   120
#> [438,]  72   5      0        180        0   154
#> [439,]  72   3      0        180        0   160
#> [440,]  77   4      0          4        0   185
#> [441,]  75   3      1          1        0   180
#> [442,]  72   7      1          2        0   142
#> [443,]  73  15      0         15        1   160
#> [444,]  73  10      1         10        0   124
#> [445,]  74   7      0        180        1   150
#> [446,]  76   1      0        180        0   114
#> [447,]  74   2      1          1        0   140
#> [448,]  76   8      1          0        1   141
#> [449,]  73   6      0          6        1   114
#> [450,]  75  23      1         14        1   110
#> [451,]  72   4      0         85        1   120
#> [452,]  76  17      1          0        1   200
#> [453,]  76  13      1         10        0   110
#> [454,]  75   4      1          0        1   122
#> [455,]  75   7      0          7        0   190
#> [456,]  75   0      0          0        1   130
#> [457,]  73  13      1         11        0   195
#> [458,]  75  12      0         12        1   160
#> [459,]  76  13      1          8        1   148
#> [460,]  76   4      0          4        1   155
#> [461,]  73   1      0         52        1   105
#> [462,]  73   0      0        180        0   156
#> [463,]  78  12      1         11        1   160
#> [464,]  76  44      1         10        0   105
#> [465,]  76   5      0        180        0   185
#> [466,]  74   8      1          8        1   170
#> [467,]  75   9      0        180        1   140
#> [468,]  73  33      1         12        1   175
#> [469,]  77   5      1          0        0   123
#> [470,]  77  12      1          9        1   100
#> [471,]  77  12      0        180        0   130
#> [472,]  76  12      1         11        1   120
#> [473,]  78   5      1          0        1   170
#> [474,]  73   7      1          0        0   174
#> [475,]  74   6      0         79        1   140
#> [476,]  74   9      1          8        0   200
#> [477,]  78  18      0         18        1   144
#> [478,]  76  29      0         47        0    90
#> [479,]  73   8      1          1        1   162
#> [480,]  74   2      0        180        0   100
#> [481,]  78   7      0          7        1   133
#> [482,]  74  15      0        180        1   172
#> [483,]  78   8      1          6        1   110
#> [484,]  74   7      0          7        0   161
#> [485,]  76  13      1          1        1   170
#> [486,]  78  32      1          9        1   198
#> [487,]  79   6      0        180        0   170
#> [488,]  80  10      1          6        1   147
#> [489,]  78   0      0        180        1   212
#> [490,]  75   5      0        119        1   150
#> [491,]  75  13      1          6        0   150
#> [492,]  76   1      0          1        1    83
#> [493,]  79   4      0         80        0   145
#> [494,]  75   4      1          0        0   212
#> [495,]  76  11      1          0        0   120
#> [496,]  75  11      1          4        0   162
#> [497,]  75   3      0          3        0     0
#> [498,]  76   7      0         29        1   150
#> [499,]  77  24      0         24        1   160
#> [500,]  78   6      1          0        1   240
#> [501,]  78  11      1          1        1   140
#> [502,]  79  11      0        180        0   160
#> [503,]  81   1      0          1        0   130
#> [504,]  78  11      1          8        1   118
#> [505,]  79   4      0          4        1   125
#> [506,]  76  12      1         10        1   127
#> [507,]  77   6      0          6        1   107
#> [508,]  80   3      1          0        1   120
#> [509,]  75   2      1          1        1   204
#> [510,]  78  11      0        180        1   135
#> [511,]  76   1      0          1        1   140
#> [512,]  77  31      1          3        1   161
#> [513,]  77   7      0        180        1   170
#> [514,]  79   4      1          0        1   120
#> [515,]  81   1      0        180        0   120
#> [516,]  80  15      1         12        1   150
#> [517,]  77   9      1          4        0   141
#> [518,]  82   5      0          8        1   120
#> [519,]  80  40      1          0        1   138
#> [520,]  78   4      0         59        1   112
#> [521,]  80  17      1         12        0   100
#> [522,]  76   7      0        161        0   151
#> [523,]  79  10      0         10        1   120
#> [524,]  80  15      1          0        1    90
#> [525,]  79  28      0        164        0   100
#> [526,]  80   9      0        118        1   186
#> [527,]  78  32      0        180        1   130
#> [528,]  79   1      0         37        1   140
#> [529,]  81   2      0        175        0   172
#> [530,]  78   7      0          7        1   147
#> [531,]  78  15      0         15        0   165
#> [532,]  80   5      1          1        1   108
#> [533,]  78   4      0        180        0   175
#> [534,]  78  26      1          5        0   194
#> [535,]  76   1      0        166        0   131
#> [536,]  81   4      1          1        1   104
#> [537,]  80   1      0          1        0   100
#> [538,]  78   3      1          1        1   152
#> [539,]  77  10      1          8        1   130
#> [540,]  82   3      1          1        1   144
#> [541,]  77   5      0         85        0   188
#> [542,]  79   6      0          6        0   152
#> [543,]  82   1      1          0        1    82
#> [544,]  77   4      0        180        1    98
#> [545,]  79   1      0        125        0   193
#> [546,]  82  21      1          2        0   155
#> [547,]  84  22      1         10        0   180
#> [548,]  79   4      0          4        1   121
#> [549,]  83   9      1          5        1   170
#> [550,]  83   5      0        180        0   148
#> [551,]  79   7      1          6        0   130
#> [552,]  83   4      0        103        0    97
#> [553,]  81  11      1          8        0   160
#> [554,]  81   5      0        177        0    41
#> [555,]  82   8      1          1        0   128
#> [556,]  79   1      0        180        1   170
#> [557,]  81  15      0        180        1   140
#> [558,]  80   7      1          0        1   146
#> [559,]  84   5      1          1        1    85
#> [560,]  80  11      1          8        0   110
#> [561,]  81   8      0        180        0   146
#> [562,]  80   8      1          7        0   160
#> [563,]  79   0      1          0        1    96
#> [564,]  85   4      0        180        0    90
#> [565,]  83   2      0          2        1   155
#> [566,]  80   3      1          1        1   230
#> [567,]  82  23      1          0        0   110
#> [568,]  84   5      0        180        1   203
#> [569,]  84   4      0          4        1    85
#> [570,]  81   1      0          1        1   150
#> [571,]  84   1      0         38        1   205
#> [572,]  83   3      0        180        0   174
#> [573,]  81   4      0         90        1   138
#> [574,]  85   3      1          2        1   160
#> [575,]  80  13      1          8        1   140
#> [576,]  84   4      0         89        1   129
#> [577,]  79   4      0          4        1    60
#> [578,]  83   1      0          1        1   100
#> [579,]  80  30      1         13        0   220
#> [580,]  83   9      0        180        0   198
#> [581,]  83   3      0        114        0    98
#> [582,]  81  14      1         12        1   128
#> [583,]  82   0      0          2        1   100
#> [584,]  85   9      1          6        1   160
#> [585,]  83   1      0        180        0   160
#> [586,]  81   1      0          1        1   145
#> [587,]  81  12      0         12        1   163
#> [588,]  83  12      1          2        1   170
#> [589,]  81  19      1         14        0   120
#> [590,]  80   2      0         88        0   135
#> [591,]  83   7      0        126        0   135
#> [592,]  81  16      1          9        0   180
#> [593,]  86   3      0          3        1   140
#> [594,]  82   9      0        180        1   134
#> [595,]  84   3      0        180        1   120
#> [596,]  81  13      0        180        0   152
#> [597,]  85   3      0          3        1   118
#> [598,]  81   2      1          0        1   118
#> [599,]  83   9      0        180        1   149
#> [600,]  82   1      0        180        1   193
#> [601,]  86  12      1          0        1   132
#> [602,]  82  14      1         11        1   103
#> [603,]  84   3      1          2        0   125
#> [604,]  83  10      1          0        1   190
#> [605,]  86   2      0        180        1   169
#> [606,]  88  14      1          3        1   130
#> [607,]  83  13      1         12        0   170
#> [608,]  84   7      1          2        0   148
#> [609,]  87   2      0        180        0   113
#> [610,]  84   3      0        180        1   170
#> [611,]  86   4      0         38        1   122
#> [612,]  82   4      0          4        0   130
#> [613,]  86  13      0        177        0   163
#> [614,]  85   3      0          3        1   113
#> [615,]  86   6      0          6        1   117
#> [616,]  83  20      1          3        1   150
#> [617,]  88   4      0          4        1   115
#> [618,]  85  22      0         22        1   184
#> [619,]  86   9      1          7        1   142
#> [620,]  87   2      0        180        1   130
#> [621,]  86   6      0         46        0   173
#> [622,]  88   2      0        180        1    68
#> [623,]  83   3      0          3        1   130
#> [624,]  87   8      0          8        1   157
#> [625,]  86  15      1          8        1   109
#> [626,]  88   4      0          4        0    86
#> [627,]  89   5      0        119        1   140
#> [628,]  87   6      0        180        1   110
#> [629,]  84   8      0        180        1   119
#> [630,]  85   8      0          8        1   136
#> [631,]  87  29      0         29        1    97
#> [632,]  87  15      1          9        1   138
#> [633,]  84   0      0        180        1   136
#> [634,]  88   1      0          1        0   135
#> [635,]  86   4      0        180        1   145
#> [636,]  91   8      0          8        0   100
#> [637,]  91  10      0        145        0   135
#> [638,]  88   8      0         50        1   154
#> [639,]  90  11      1         10        1   186
#> [640,]  87   6      0        126        1   168
#> [641,]  86  10      0        180        1   137
#> [642,]  90   4      1          0        0   121
#> [643,]  91   1      0          1        1    74
#> [644,]  87  43      0        178        1   130
#> [645,]  87   5      0         36        1   150
#> [646,]  90   5      1          0        1   125
#> [647,]  89   3      1          1        1   160
#> [648,]  92   1      0          1        1   167
#> [649,]  87   7      0         74        1   105
#> [650,]  89  12      1          0        1   130
#> [651,]  89   2      0        168        0   118
#> [652,]  91   5      0        169        1   176
#> [653,]  89  14      0        180        1    84
#> [654,]  90  19      1         11        1   129
#> [655,]  94   6      0         50        0    78
#> [656,]  91   2      0          2        1   116
#> [657,]  94   8      0          8        1   142
#> [658,]  92   4      0         76        1   149
#> [659,]  91   1      0        180        0   158
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  95   8      1          5        1   150
#> [663,]  94   3      0         26        1   144
#> [664,]  91  12      0         53        1   212
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [11] 180.0+   2.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+   6.0+
#>  [41] 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [51] 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+
#>  [61] 180.0+ 180.0+   7.0  180.0+ 179.0+ 179.0+ 180.0+ 180.0+   4.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0    4.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+
#>  [91] 180.0+ 166.0+  99.0   16.0+ 152.0+   7.0+   6.0+ 180.0+ 180.0+ 180.0+
#> [101]  13.0+ 171.0+ 180.0+ 174.0+  28.0  180.0+   9.0+ 180.0+ 180.0+ 175.0+
#> [111]   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+  16.0 
#> [121]  15.0+ 180.0+  12.0+ 134.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 140.0 
#> [131] 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+
#> [141] 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+ 180.0+   4.0+ 180.0+ 180.0+
#> [151] 180.0+   5.0+   4.0+ 180.0+   9.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+
#> [161] 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+
#> [171] 161.0+ 171.0+ 180.0+ 180.0+   3.0    1.0  180.0+ 180.0+ 180.0+  10.0+
#> [181] 180.0+  17.0    3.0+  19.0  180.0+ 180.0+   9.0+ 180.0+  24.0  180.0+
#> [191]   8.0  180.0+   1.0+  15.0  180.0+ 180.0+ 180.0+  13.0+   8.0+ 180.0+
#> [201] 180.0+ 169.0    7.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+  30.0  180.0+
#> [211]   5.0   18.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+   4.0+ 180.0+ 180.0+ 180.0+   9.0    7.0+ 180.0+  84.0    7.0+
#> [231] 180.0+ 180.0+   1.0  180.0+   6.0+ 180.0+ 180.0+  17.0   12.0  180.0+
#> [241]  14.0+  36.0  180.0+   3.0+  88.0   12.0  180.0+ 180.0+ 180.0+   0.5 
#> [251]  12.0+ 180.0+ 180.0+ 180.0+  12.0    9.0  180.0+ 180.0+  11.0+   2.0+
#> [261]  18.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0  180.0+ 180.0+
#> [271]   5.0+ 180.0+ 166.0+  14.0+   3.0    0.5+ 180.0+   3.0+ 180.0+ 175.0+
#> [281] 180.0+ 180.0+   7.0+   8.0    5.0  180.0+ 180.0+ 180.0+ 123.0+   1.0+
#> [291]  11.0+ 180.0+  79.0   80.0   15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+
#> [301] 174.0+ 180.0+ 180.0+ 180.0+   3.0  175.0  180.0+ 180.0+ 180.0+ 180.0+
#> [311] 180.0+  19.0+  99.0  180.0+ 179.0+ 180.0+  11.0+   0.5    7.0+ 180.0+
#> [321] 180.0+ 152.0+ 180.0+  93.0  180.0+   1.0   18.0+   4.0    5.0    7.0+
#> [331] 180.0+   1.0  180.0+ 180.0+ 171.0  180.0+   6.0  180.0+   0.5  180.0+
#> [341] 180.0+  14.0+   2.0    5.0+ 103.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [351] 180.0+   2.0+ 180.0+  18.0  172.0+ 180.0+   8.0+  13.0+ 123.0  180.0+
#> [361] 180.0+  51.0  180.0+   1.0   60.0  132.0  180.0+   7.0+   7.0+ 124.0 
#> [371] 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 152.0  180.0+  76.0  173.0+
#> [381] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0 
#> [391] 180.0+ 180.0+  20.0  180.0+ 180.0+   8.0    3.0   87.0   12.0  180.0+
#> [401]   4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+   2.0 
#> [411] 180.0+  10.0+ 180.0+ 180.0+   8.0+   1.0  180.0+ 180.0+ 159.0  180.0+
#> [421]  10.0  180.0+  13.0  180.0+   4.0+ 180.0+  10.0    1.0   57.0  180.0+
#> [431]  11.0   12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [441] 180.0+   7.0   15.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+
#> [451]  85.0   17.0+ 174.0+   4.0    7.0    0.5  180.0+  12.0  180.0+   4.0 
#> [461]  52.0  180.0+  12.0  180.0+ 180.0+   8.0  180.0+  33.0    5.0  180.0+
#> [471] 180.0+  12.0  180.0+   7.0+  79.0  168.0+  18.0   47.0  180.0+ 180.0+
#> [481]   7.0  180.0+   8.0+   7.0  180.0+  32.0  180.0+  10.0  180.0+ 119.0 
#> [491] 180.0+   1.0   80.0    4.0+  11.0  152.0+   3.0   29.0   24.0  180.0+
#> [501] 180.0+ 180.0+   1.0   11.0    4.0  180.0+   6.0    3.0+   2.0+ 180.0+
#> [511]   1.0  171.0  180.0+ 138.0  180.0+ 180.0+  71.0    8.0   40.0   59.0 
#> [521]  17.0  161.0   10.0+ 180.0+ 164.0  118.0  180.0+  37.0  175.0+   7.0+
#> [531]  15.0+   5.0+ 180.0+ 171.0+ 166.0+  71.0    1.0    3.0+  10.0  180.0+
#> [541]  85.0    6.0+   1.0  180.0+ 125.0  180.0+ 180.0+   4.0    9.0+ 180.0+
#> [551] 180.0+ 103.0  180.0+ 177.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+
#> [561] 180.0+ 180.0+   0.5  180.0+   2.0    3.0+  62.0  180.0+   4.0    1.0 
#> [571]  38.0  180.0+  90.0  180.0+ 180.0+  89.0    4.0    1.0   30.0  180.0+
#> [581] 114.0  180.0+   2.0  180.0+ 180.0+   1.0   12.0   77.0  180.0+  88.0 
#> [591] 126.0  180.0+   3.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+
#> [601] 180.0+ 174.0  180.0+ 180.0+ 180.0+  14.0   13.0  180.0+ 180.0+ 180.0+
#> [611]  38.0    4.0  177.0    3.0+   6.0+  20.0    4.0   22.0   11.0  180.0+
#> [621]  46.0  180.0+   3.0+   8.0+ 180.0+   4.0  119.0  180.0+ 180.0+   8.0 
#> [631]  29.0  180.0+ 180.0+   1.0+ 180.0+   8.0  145.0   50.0   11.0  126.0 
#> [641] 180.0+   4.0    1.0  178.0+  36.0   89.0    3.0+   1.0   74.0  180.0+
#> [651] 168.0  169.0  180.0+ 180.0+  50.0    2.0    8.0+  76.0  180.0+  16.0 
#> [661]  67.0    8.0   26.0   53.0    7.0+   0.5   69.0    2.0    3.0   15.0+
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
#>   0.8227867 
```
