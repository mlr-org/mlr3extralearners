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
#> min 0.00341    44   2.845 0.1192       6
#> 1se 0.06094    13   2.949 0.1041       5
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  35  10      1          9        0   106
#>   [3,]  34   5      0          5        0   120
#>   [4,]  35   2      0        180        0   121
#>   [5,]  35   2      1          1        1   112
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  36   5      1          0        1   115
#>  [12,]  33   6      1          1        1   115
#>  [13,]  38  16      1         10        0   160
#>  [14,]  38  12      1         11        1    92
#>  [15,]  40  12      1          9        0   153
#>  [16,]  38   5      1          3        0   125
#>  [17,]  42   2      0          2        0   140
#>  [18,]  42   2      0        180        0   100
#>  [19,]  41   2      1          1        0   166
#>  [20,]  40   1      1          0        1   145
#>  [21,]  42   4      0        180        0   162
#>  [22,]  40   3      1          1        0   170
#>  [23,]  42   2      0        180        1   124
#>  [24,]  44   5      1          1        0   170
#>  [25,]  45   3      0        180        1   154
#>  [26,]  44   3      0        180        0   141
#>  [27,]  45   9      1          7        0   110
#>  [28,]  41   5      1          4        1   141
#>  [29,]  44   2      1          1        1   150
#>  [30,]  43   2      0        180        1   140
#>  [31,]  46  15      0        180        0   120
#>  [32,]  46   2      1          1        0   126
#>  [33,]  47   4      1          3        0   118
#>  [34,]  48  15      0        180        1   160
#>  [35,]  45   3      0        150        0   130
#>  [36,]  44   3      1          0        1   180
#>  [37,]  46   7      1          2        0   166
#>  [38,]  43  29      0        180        1   180
#>  [39,]  45   4      1          0        0   124
#>  [40,]  47   6      1          0        1   116
#>  [41,]  46  13      1         10        0   100
#>  [42,]  44   0      1          0        1    96
#>  [43,]  43   3      1          0        1   124
#>  [44,]  45   8      1          0        1   117
#>  [45,]  45   5      0          5        0   141
#>  [46,]  46   2      1          1        1   122
#>  [47,]  46   6      1          0        1   100
#>  [48,]  47   2      0        180        0   108
#>  [49,]  45   5      0        180        1   190
#>  [50,]  46   5      1          3        0   130
#>  [51,]  44   2      0        180        0   142
#>  [52,]  45   9      1          0        1   145
#>  [53,]  47   3      1          1        1   120
#>  [54,]  48   3      0        180        0   154
#>  [55,]  47   5      1          3        1   130
#>  [56,]  46   3      1          0        1   119
#>  [57,]  47  10      0         10        1   140
#>  [58,]  50   1      1          0        1   129
#>  [59,]  47   7      0        180        0   145
#>  [60,]  50   6      1          2        1   140
#>  [61,]  49   7      1          7        1   110
#>  [62,]  46   3      1          1        1   140
#>  [63,]  50   7      0        180        1   110
#>  [64,]  49   2      0          2        0   105
#>  [65,]  49  15      1         11        1   160
#>  [66,]  49  23      0        179        1   112
#>  [67,]  52   2      0        180        1   170
#>  [68,]  50   7      1          0        1    92
#>  [69,]  50   4      0          4        1   100
#>  [70,]  51   3      1          2        0   113
#>  [71,]  50   1      1          0        0   150
#>  [72,]  49   7      1          4        1    90
#>  [73,]  47   6      0        180        1   162
#>  [74,]  51   8      0        180        1   140
#>  [75,]  52   2      0        180        0   155
#>  [76,]  46   3      0        180        1   120
#>  [77,]  46   1      1          1        0   145
#>  [78,]  50   4      1          1        0   150
#>  [79,]  53   8      0         36        1   160
#>  [80,]  48  17      1         10        0   111
#>  [81,]  47   2      1          1        0   110
#>  [82,]  49   9      1          3        0   102
#>  [83,]  49  15      0        180        1   160
#>  [84,]  53   5      0        180        1   140
#>  [85,]  54  17      1         12        1   102
#>  [86,]  53   5      0         77        0   159
#>  [87,]  54   6      1          3        0   129
#>  [88,]  50   2      0          5        1   106
#>  [89,]  48   3      1          2        0   150
#>  [90,]  53   4      0          4        0   140
#>  [91,]  52  14      1          7        1   200
#>  [92,]  48   6      0        180        0   160
#>  [93,]  51  13      0         99        1   160
#>  [94,]  54   9      1          0        1   138
#>  [95,]  49  16      0         16        0   125
#>  [96,]  52   7      1          2        0   154
#>  [97,]  55   6      1          2        1   114
#>  [98,]  54   9      1          1        0   130
#>  [99,]  55   4      1          2        0   150
#> [100,]  52   4      0        180        1   180
#> [101,]  50   5      1          4        1   150
#> [102,]  54   4      1          0        1   121
#> [103,]  50   3      0        174        1   153
#> [104,]  55  28      1         13        1   160
#> [105,]  49   6      1          0        1   130
#> [106,]  49   1      0          1        1   110
#> [107,]  53   9      0          9        1    95
#> [108,]  53   8      1          0        1   130
#> [109,]  50   7      1          0        1   127
#> [110,]  56   4      1          1        1   130
#> [111,]  52   5      0        175        1   117
#> [112,]  55   1      0        180        0   127
#> [113,]  54   1      0        180        0   162
#> [114,]  54   7      1          0        1   100
#> [115,]  56   2      0        180        0   132
#> [116,]  52   8      0        180        0   119
#> [117,]  54   3      0        180        1   180
#> [118,]  53  10      1          9        0   172
#> [119,]  52  16      1         14        0   170
#> [120,]  53   4      0        180        1   150
#> [121,]  55   6      0        180        1   100
#> [122,]  55   2      0        134        1   140
#> [123,]  54   3      0        180        0   128
#> [124,]  56   3      0          8        1   139
#> [125,]  54   2      1          1        0   135
#> [126,]  54   2      1          1        1   176
#> [127,]  57   1      0        180        1   156
#> [128,]  57   1      0          1        1   100
#> [129,]  52  15      1         14        0   130
#> [130,]  56  14      1         11        0   130
#> [131,]  53   3      1          0        1   200
#> [132,]  57  10      0        180        1   170
#> [133,]  54   5      0        180        1   108
#> [134,]  55   3      1          1        1   156
#> [135,]  57   0      0          0        1   150
#> [136,]  53  21      1         13        1   130
#> [137,]  59   3      1          1        0   172
#> [138,]  57   4      0        180        1   119
#> [139,]  54  17      1          8        1   227
#> [140,]  55  13      0        166        1   140
#> [141,]  56   5      0          5        1   150
#> [142,]  57   4      1          2        1   185
#> [143,]  57  11      1         10        1   129
#> [144,]  55   3      1          2        0   140
#> [145,]  58   9      1          0        1   180
#> [146,]  58   1      1          1        1   200
#> [147,]  55   5      1          0        0   140
#> [148,]  59   9      1          1        1   125
#> [149,]  58   4      1          0        1   160
#> [150,]  57   2      0          2        1   120
#> [151,]  57   5      0        180        1   130
#> [152,]  58  11      1          9        1   124
#> [153,]  57  10      1          9        0   103
#> [154,]  59   5      0        180        1   155
#> [155,]  61   9      0          9        1   160
#> [156,]  58   4      1          3        0   120
#> [157,]  59   2      1          1        0   140
#> [158,]  58   8      0        161        1   140
#> [159,]  61   4      1          3        0   151
#> [160,]  61   9      1          8        0   150
#> [161,]  61   3      1          2        1   102
#> [162,]  58   1      0          1        1   100
#> [163,]  61  20      1         13        0   130
#> [164,]  58  10      0         10        1   150
#> [165,]  57   4      1          3        0   138
#> [166,]  57  11      0        180        1   150
#> [167,]  61   3      0         17        0   143
#> [168,]  56  14      0         45        0   130
#> [169,]  58  19      1         13        1   140
#> [170,]  56  13      1          6        1   158
#> [171,]  59   9      1          0        1    80
#> [172,]  55   4      1          3        1   160
#> [173,]  60  12      1          0        1   114
#> [174,]  56   8      1          8        0   120
#> [175,]  61  13      1         12        1   130
#> [176,]  59  11      1          8        1   190
#> [177,]  57  15      1         13        1   110
#> [178,]  59   5      1          2        0   182
#> [179,]  61   8      0         77        0   120
#> [180,]  61  13      0         13        0   210
#> [181,]  58   8      1          5        0   152
#> [182,]  62  10      1          0        1   153
#> [183,]  62   7      1          2        1   180
#> [184,]  57   3      1          0        0   100
#> [185,]  61  18      0        170        0   140
#> [186,]  57   7      0        169        0   180
#> [187,]  61   7      0          7        1   150
#> [188,]  60   7      0          7        0   147
#> [189,]  61   6      0          6        0   134
#> [190,]  59  13      1          2        0   198
#> [191,]  57  12      1          9        1   120
#> [192,]  62   4      1          0        0   160
#> [193,]  60  17      1          8        1   140
#> [194,]  58   3      1          0        1   146
#> [195,]  58   2      0         30        0   202
#> [196,]  59   1      0        180        0   155
#> [197,]  59  16      1          9        1   133
#> [198,]  63   6      0         28        1   120
#> [199,]  61  13      0         13        0   120
#> [200,]  57  18      1          9        1    93
#> [201,]  58  11      1          9        0   179
#> [202,]  62  17      1         10        1   180
#> [203,]  58   7      0        180        1   150
#> [204,]  63   3      1          1        0   180
#> [205,]  63   1      0        180        1   130
#> [206,]  61   7      0        180        0   135
#> [207,]  62   3      0        180        1   105
#> [208,]  63   4      0        180        1   190
#> [209,]  63  15      1         10        1   126
#> [210,]  63   4      1          1        0   155
#> [211,]  62   7      0          7        0   150
#> [212,]  59   1      0         22        1   162
#> [213,]  59   4      0        180        0   196
#> [214,]  60   7      0          7        0   140
#> [215,]  59   5      1          1        0   148
#> [216,]  60   7      1          1        1    90
#> [217,]  65  13      0        180        1   100
#> [218,]  63   1      0          1        0   162
#> [219,]  62   6      0        180        0   170
#> [220,]  61  15      1         13        0   170
#> [221,]  59   4      0          4        0   149
#> [222,]  60   3      0          3        0   168
#> [223,]  64  10      1          9        0   160
#> [224,]  62   6      0          6        0   120
#> [225,]  63  12      1         10        0   200
#> [226,]  59  10      0        180        1   130
#> [227,]  60   8      0         17        1   130
#> [228,]  64  12      1         11        0   160
#> [229,]  64   6      1          0        1   140
#> [230,]  63  10      1          0        1   148
#> [231,]  63  14      1          9        0   123
#> [232,]  65  36      1         11        0   140
#> [233,]  66   3      1          1        0   127
#> [234,]  61  10      1          2        1   194
#> [235,]  64  32      1          9        1   160
#> [236,]  63  12      1          9        0   114
#> [237,]  63   7      0        180        0   120
#> [238,]  66   5      1          0        1   110
#> [239,]  65   8      1          0        0   168
#> [240,]  65  10      1          8        1   120
#> [241,]  60   6      0        180        0   130
#> [242,]  61  12      1         11        0   154
#> [243,]  64   9      0        180        0   150
#> [244,]  61   4      0        180        1   113
#> [245,]  65   3      0        180        1   190
#> [246,]  64   7      0        180        1   120
#> [247,]  66   6      1          1        1   130
#> [248,]  63  12      0         12        1   150
#> [249,]  62   3      1          1        1   199
#> [250,]  65   6      0          9        0   112
#> [251,]  63   5      1          4        0   170
#> [252,]  63   2      1          1        0   180
#> [253,]  64   2      0          2        0   201
#> [254,]  66  18      1          5        0   142
#> [255,]  66  16      1         11        1   169
#> [256,]  62   9      0        180        0   145
#> [257,]  61  14      1          5        0   140
#> [258,]  61  15      1         10        0   130
#> [259,]  63   9      1          8        1   160
#> [260,]  63   3      1          2        0   120
#> [261,]  63   2      1          0        0   140
#> [262,]  64  19      1          8        1   160
#> [263,]  65   8      1          0        1   140
#> [264,]  67   6      0        180        1   170
#> [265,]  68   5      1          4        1   150
#> [266,]  64  13      1         12        1   150
#> [267,]  64  14      1         13        1   150
#> [268,]  65   3      0          3        0   105
#> [269,]  67   4      1          3        0   130
#> [270,]  66   6      1          0        1   140
#> [271,]  68   1      0        180        1   166
#> [272,]  64  10      1          9        1   110
#> [273,]  67   8      1          1        1   130
#> [274,]  68   5      0          5        1    90
#> [275,]  66  14      0        180        0   130
#> [276,]  68  18      0        180        1   260
#> [277,]  65  18      1          3        0   120
#> [278,]  63  10      0         18        1   130
#> [279,]  67  11      0         11        0   150
#> [280,]  68  11      0        180        0   160
#> [281,]  65   4      1          2        1   145
#> [282,]  66  15      1         13        1   160
#> [283,]  63   2      0        180        0   150
#> [284,]  65  11      1          6        0   130
#> [285,]  69  21      1         10        0   180
#> [286,]  66   9      1          8        0   130
#> [287,]  63   8      0        180        1   120
#> [288,]  68  14      1         13        1   140
#> [289,]  66   3      0          3        1   138
#> [290,]  69   1      1          0        0   170
#> [291,]  65   1      1          0        0   133
#> [292,]  67   7      1          4        1   130
#> [293,]  67   2      0        180        0   184
#> [294,]  65   6      0          6        0    80
#> [295,]  65  10      1          1        1   148
#> [296,]  66  19      1         12        1   150
#> [297,]  67  12      1         12        0   160
#> [298,]  69   6      0         99        1   140
#> [299,]  65   4      1          1        0   130
#> [300,]  64   4      0        179        0   160
#> [301,]  66   4      0        180        1   130
#> [302,]  70  15      1         12        1   132
#> [303,]  64  11      0         11        0   125
#> [304,]  64   0      1          0        1   118
#> [305,]  67   2      0         18        0   131
#> [306,]  66   7      1          5        1   131
#> [307,]  66   4      0        180        0   177
#> [308,]  69   4      1          3        1   150
#> [309,]  69   8      0         93        0   140
#> [310,]  66   6      0        180        0   140
#> [311,]  65   1      0          1        1   120
#> [312,]  68  18      1          0        1   160
#> [313,]  65   6      0        101        1   115
#> [314,]  68   4      0          4        1   190
#> [315,]  71   3      0          5        0   112
#> [316,]  68   7      0        150        0   210
#> [317,]  71  20      1          0        1   160
#> [318,]  67   2      0        180        0   128
#> [319,]  66   9      1          3        1   151
#> [320,]  69   8      0        180        1   153
#> [321,]  70  14      0        171        0   166
#> [322,]  66   4      0        180        0   130
#> [323,]  67  10      1          9        0   200
#> [324,]  68  18      1         14        1   170
#> [325,]  69   0      0          0        1   148
#> [326,]  69   3      1          2        0   151
#> [327,]  67  14      1         13        0   130
#> [328,]  65  14      1         13        1   150
#> [329,]  69   8      0        180        1   180
#> [330,]  66   2      0          2        1   228
#> [331,]  69   3      0          3        1   130
#> [332,]  67   1      0         36        1   104
#> [333,]  67   5      0          5        0   130
#> [334,]  69   8      1          5        1   195
#> [335,]  69   6      1          4        1   174
#> [336,]  69   8      1          7        1   108
#> [337,]  67   3      0        180        0   110
#> [338,]  66   2      1          1        0   123
#> [339,]  69  19      0        180        0   130
#> [340,]  68  18      0         18        1   100
#> [341,]  66   2      0        180        0   130
#> [342,]  69   4      1          3        0   132
#> [343,]  68   2      0          7        1   130
#> [344,]  67  13      1          9        0   130
#> [345,]  70   3      0        123        0   130
#> [346,]  70   9      0        180        1   142
#> [347,]  72   5      1          4        0   170
#> [348,]  67  22      1          1        1   140
#> [349,]  68   3      0         19        0   135
#> [350,]  67  12      1          8        0   120
#> [351,]  69   1      0          1        1   110
#> [352,]  67   1      0          1        1    60
#> [353,]  67   4      0         60        1   136
#> [354,]  69   5      0         76        0   120
#> [355,]  72  13      1         11        1   195
#> [356,]  68  10      1          8        1   160
#> [357,]  70  35      1          0        1   105
#> [358,]  72  30      1          0        1   145
#> [359,]  70   7      0          7        0   102
#> [360,]  72  19      1          8        0   120
#> [361,]  67   8      0        180        1   170
#> [362,]  73  13      0        152        1   130
#> [363,]  72   2      0          2        1   100
#> [364,]  67   4      1          1        0   134
#> [365,]  72   6      1          5        0   115
#> [366,]  70   3      0        180        0   121
#> [367,]  71   3      1          2        0   150
#> [368,]  73   6      0        180        1   117
#> [369,]  69  16      1         10        1   140
#> [370,]  72  16      1          1        1   130
#> [371,]  70   4      0        180        0   180
#> [372,]  69   1      1          0        0   155
#> [373,]  73   6      1          0        1   270
#> [374,]  72   8      1          1        1   150
#> [375,]  68  15      1         13        1   130
#> [376,]  70  13      1          9        0   100
#> [377,]  72   6      0        180        1   130
#> [378,]  73   0      0        180        1   161
#> [379,]  74   8      1          0        1    85
#> [380,]  73   4      0        180        1   154
#> [381,]  69   2      1          0        1   110
#> [382,]  71   3      1          1        0   150
#> [383,]  71  15      1         11        0   165
#> [384,]  74  20      0         20        1   180
#> [385,]  71  20      1         10        0   140
#> [386,]  74   0      1          0        1    90
#> [387,]  73   3      1          0        1   136
#> [388,]  70   5      1          0        1   190
#> [389,]  71  17      1         11        0   160
#> [390,]  71   3      1          2        1   190
#> [391,]  73  10      1          8        0   106
#> [392,]  70  26      1         11        1   120
#> [393,]  74   4      0          4        0   120
#> [394,]  73   4      0         58        1   160
#> [395,]  72   5      1          3        1   160
#> [396,]  70   3      0        180        1   154
#> [397,]  72  15      1          0        1   150
#> [398,]  71   7      1          2        0   143
#> [399,]  74   3      0          3        1   150
#> [400,]  71  13      1          8        0   121
#> [401,]  69   2      1          1        1    80
#> [402,]  70   4      1          0        1   140
#> [403,]  72  10      1          8        1   153
#> [404,]  69   7      0        180        1   144
#> [405,]  72  15      1         13        0   156
#> [406,]  71  10      1          9        1   120
#> [407,]  75   1      0          1        0   133
#> [408,]  75   2      1          1        0   145
#> [409,]  72  10      1          9        1   160
#> [410,]  73  10      1         10        1   120
#> [411,]  71   2      0         10        1   112
#> [412,]  73   1      0          1        1    80
#> [413,]  75   9      1          7        0   140
#> [414,]  75  13      1          1        1   130
#> [415,]  71  11      1          8        0   110
#> [416,]  71   4      0          4        0   134
#> [417,]  72  15      1         12        1   120
#> [418,]  73  10      1          8        0   120
#> [419,]  70   7      1          4        0   184
#> [420,]  72   1      1          1        0   168
#> [421,]  73  10      0        180        0   162
#> [422,]  72  11      0         11        1   140
#> [423,]  70   3      0          3        0   150
#> [424,]  73   5      1          3        1   112
#> [425,]  73  12      1         12        1   140
#> [426,]  72   2      0        180        0   120
#> [427,]  75   1      0        180        1   140
#> [428,]  72   4      1          0        1   197
#> [429,]  73   4      0        180        0   124
#> [430,]  74  34      1          8        1   233
#> [431,]  76   3      1          0        1   120
#> [432,]  72   3      0        180        0   160
#> [433,]  75   3      1          1        0   180
#> [434,]  73  15      0         15        1   160
#> [435,]  71  16      0        180        0   140
#> [436,]  74   7      0        180        1   150
#> [437,]  74   2      1          1        0   140
#> [438,]  76   8      1          0        1   141
#> [439,]  74  19      1          4        1   200
#> [440,]  73   6      0          6        1   114
#> [441,]  75  23      1         14        1   110
#> [442,]  74   2      0        180        0   190
#> [443,]  72   4      0         85        1   120
#> [444,]  72   4      1          3        0   160
#> [445,]  76  17      1          0        1   200
#> [446,]  73   4      1          3        1   125
#> [447,]  76  13      1         10        0   110
#> [448,]  75   4      1          0        1   122
#> [449,]  73  13      1         11        0   195
#> [450,]  75  12      0         12        1   160
#> [451,]  76  13      1          8        1   148
#> [452,]  76   4      0          4        1   155
#> [453,]  75   1      0          1        1   125
#> [454,]  73   1      0         52        1   105
#> [455,]  73   0      0        180        0   156
#> [456,]  72   5      0        180        0   120
#> [457,]  78  12      1         11        1   160
#> [458,]  76   5      0        180        0   185
#> [459,]  74  10      1          0        1   135
#> [460,]  76   5      1          0        1   167
#> [461,]  75   9      0        180        1   140
#> [462,]  73  33      1         12        1   175
#> [463,]  77   5      1          0        0   123
#> [464,]  73  10      1          9        0   146
#> [465,]  77  12      0        180        0   130
#> [466,]  77   1      1          0        1    90
#> [467,]  76  12      1         11        1   120
#> [468,]  78   5      1          0        1   170
#> [469,]  73   7      1          0        0   174
#> [470,]  75   3      1          1        1   171
#> [471,]  74   9      1          8        0   200
#> [472,]  75   6      0        180        0   150
#> [473,]  79  10      1          8        0   190
#> [474,]  74   2      1          0        1   130
#> [475,]  76  29      0         47        0    90
#> [476,]  73   8      1          1        1   162
#> [477,]  73  11      1          2        1   110
#> [478,]  74  15      0        180        1   172
#> [479,]  74   7      0          7        0   161
#> [480,]  79   6      0        180        0   170
#> [481,]  78   0      0        180        1   212
#> [482,]  78  13      1          5        0   130
#> [483,]  75  12      1          1        1   120
#> [484,]  75  13      1          6        0   150
#> [485,]  74  10      1          8        0   135
#> [486,]  76   1      0          1        1    83
#> [487,]  79   4      0         80        0   145
#> [488,]  78  12      1          9        0   150
#> [489,]  78   2      1          1        0   130
#> [490,]  75   4      1          0        0   212
#> [491,]  77   2      1          0        1   143
#> [492,]  78  10      0        180        1   130
#> [493,]  76  11      1          0        0   120
#> [494,]  76   7      0         29        1   150
#> [495,]  77  24      0         24        1   160
#> [496,]  79   8      0         32        1   120
#> [497,]  80   9      0         23        1   128
#> [498,]  76   3      1          0        1   140
#> [499,]  79  11      0        180        0   160
#> [500,]  78  14      1          0        1   140
#> [501,]  81   1      0          1        0   130
#> [502,]  78  11      1          8        1   118
#> [503,]  76  10      1          8        0   180
#> [504,]  76  12      1         10        1   127
#> [505,]  77   6      0          6        1   107
#> [506,]  75   2      1          1        1   204
#> [507,]  78  11      0        180        1   135
#> [508,]  76   1      0          1        1   140
#> [509,]  78   7      1          0        1   110
#> [510,]  77   6      0          6        1   144
#> [511,]  80  15      1         12        1   150
#> [512,]  82   5      0          8        1   120
#> [513,]  80  40      1          0        1   138
#> [514,]  80  17      1         12        0   100
#> [515,]  76   7      0        161        0   151
#> [516,]  81   4      1          2        1   126
#> [517,]  80   9      0        118        1   186
#> [518,]  80   6      0        173        1   160
#> [519,]  79   1      0         37        1   140
#> [520,]  81   3      0        180        0   184
#> [521,]  81   2      0        175        0   172
#> [522,]  78   7      0          7        1   147
#> [523,]  77  13      1          0        1   190
#> [524,]  80   5      1          1        1   108
#> [525,]  78  26      1          5        0   194
#> [526,]  76   1      0        166        0   131
#> [527,]  81   4      1          1        1   104
#> [528,]  78  20      1          0        1   109
#> [529,]  80   1      0          1        0   100
#> [530,]  77  10      1          8        1   130
#> [531,]  77   5      0         85        0   188
#> [532,]  79   6      0          6        0   152
#> [533,]  80   6      1          0        1   119
#> [534,]  78   2      0        180        0   148
#> [535,]  80   5      0          5        1   130
#> [536,]  82   1      1          0        1    82
#> [537,]  79  10      0        180        1   150
#> [538,]  81   1      0        108        0   129
#> [539,]  78  12      0        180        0   134
#> [540,]  79   1      0        125        0   193
#> [541,]  84  22      1         10        0   180
#> [542,]  79   4      0          4        1   121
#> [543,]  80   6      0          6        1   110
#> [544,]  82   5      0        180        0   110
#> [545,]  83   5      0        180        0   148
#> [546,]  83   4      0        103        0    97
#> [547,]  81  11      1          8        0   160
#> [548,]  81   5      0        177        0    41
#> [549,]  80  11      1          8        0   170
#> [550,]  78  23      1         10        1   145
#> [551,]  79   4      0          4        1   183
#> [552,]  79   1      0        180        1   170
#> [553,]  81  15      0        180        1   140
#> [554,]  80   7      1          0        1   146
#> [555,]  83   8      0          8        0   115
#> [556,]  81  16      0         16        1   110
#> [557,]  80   6      1          0        1   150
#> [558,]  80  11      1          8        0   110
#> [559,]  81   8      0        180        0   146
#> [560,]  80   8      1          7        0   160
#> [561,]  79   7      0        177        0   197
#> [562,]  85   4      0        180        0    90
#> [563,]  83   2      0          2        1   155
#> [564,]  82   6      0        128        1   100
#> [565,]  84   4      0        167        0   198
#> [566,]  84   5      0        180        1   203
#> [567,]  84   1      0         38        1   205
#> [568,]  83   3      0        180        0   174
#> [569,]  81   4      0         90        1   138
#> [570,]  79   9      1          8        0   150
#> [571,]  85   3      1          2        1   160
#> [572,]  80  13      1          8        1   140
#> [573,]  80   2      1          0        1   130
#> [574,]  79   4      0          4        1    60
#> [575,]  80   6      0         71        1   189
#> [576,]  80  30      1         13        0   220
#> [577,]  83   9      0        180        0   198
#> [578,]  83   3      0        114        0    98
#> [579,]  81  14      1         12        1   128
#> [580,]  83   2      0        154        0   130
#> [581,]  82   0      0          2        1   100
#> [582,]  83   1      0        180        0   160
#> [583,]  81   4      0          4        0   175
#> [584,]  81  12      0         12        1   163
#> [585,]  82  16      1          8        0   103
#> [586,]  81   4      0          4        0   160
#> [587,]  86  12      0        180        1   120
#> [588,]  82   3      1          2        0   130
#> [589,]  82  15      1          0        0   183
#> [590,]  81  16      1          9        0   180
#> [591,]  86   3      0          3        1   140
#> [592,]  82   9      0        180        1   134
#> [593,]  84   3      0        180        1   120
#> [594,]  81  13      0        180        0   152
#> [595,]  81   4      0        180        0   160
#> [596,]  82   1      0        180        1   193
#> [597,]  86  12      1          0        1   132
#> [598,]  82  14      1         11        1   103
#> [599,]  86   6      1          0        1   140
#> [600,]  84  16      0         70        1   150
#> [601,]  83  19      0         43        0   150
#> [602,]  84   3      1          2        0   125
#> [603,]  83  10      1          0        1   190
#> [604,]  86   2      0        180        1   169
#> [605,]  88  14      1          3        1   130
#> [606,]  84   3      0          3        1   121
#> [607,]  83  13      1         12        0   170
#> [608,]  84   7      1          2        0   148
#> [609,]  87   2      0        180        0   113
#> [610,]  84   9      0         92        1   110
#> [611,]  82   4      0          4        0   130
#> [612,]  86  13      0        177        0   163
#> [613,]  85   3      0          3        1   113
#> [614,]  86   6      0          6        1   117
#> [615,]  86   6      1          1        0   112
#> [616,]  83  20      1          3        1   150
#> [617,]  88   4      0          4        1   115
#> [618,]  83   9      0         65        1   150
#> [619,]  87   2      0        180        1   130
#> [620,]  88   3      0        115        0   110
#> [621,]  88   2      0        180        1    68
#> [622,]  86  15      1          8        1   109
#> [623,]  88   4      0          4        0    86
#> [624,]  89   4      0          4        1   153
#> [625,]  84   8      0        180        1   119
#> [626,]  85   8      0          8        1   136
#> [627,]  84   2      0        110        1   174
#> [628,]  87  29      0         29        1    97
#> [629,]  87  15      1          9        1   138
#> [630,]  84   0      0        180        1   136
#> [631,]  88   1      0          1        0   135
#> [632,]  86   4      0        180        1   145
#> [633,]  91   8      0          8        0   100
#> [634,]  86   3      1          0        1    80
#> [635,]  88   8      0         50        1   154
#> [636,]  87   6      0        126        1   168
#> [637,]  87   5      0         36        1   150
#> [638,]  88   3      1          2        0   159
#> [639,]  89   3      1          1        1   160
#> [640,]  92   1      0          1        1   167
#> [641,]  91   3      0         33        1   137
#> [642,]  88   5      0        158        0   100
#> [643,]  87   7      0         74        1   105
#> [644,]  89  12      1          0        1   130
#> [645,]  89   2      0        168        0   118
#> [646,]  91   5      0        169        1   176
#> [647,]  92   7      0          7        1   110
#> [648,]  89   4      0          4        1   159
#> [649,]  91   0      0          0        0     0
#> [650,]  89  14      0        180        1    84
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
#> [663,]  95   8      1          5        1   150
#> [664,]  94   3      0         26        1   144
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+ 180.0+
#>  [11]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+   6.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 161.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [51] 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+
#>  [61]   7.0  180.0+ 180.0+   2.0  179.0+ 179.0+ 180.0+ 180.0+   4.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0   88.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+   5.0  180.0+   4.0+
#>  [91]  85.0  180.0+  99.0  180.0+  16.0+   7.0+   6.0+ 180.0+ 180.0+ 180.0+
#> [101] 171.0+ 180.0+ 174.0+  28.0    6.0+   1.0    9.0+ 180.0+ 180.0+ 180.0+
#> [111] 175.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0  180.0+
#> [121] 180.0+ 134.0+ 180.0+   8.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+
#> [131] 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 171.0+ 166.0+
#> [141]   5.0+   4.0+ 180.0+ 180.0+   9.0+   1.0  180.0+ 180.0+ 180.0+   2.0 
#> [151] 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+ 180.0+ 161.0+ 180.0+ 180.0+
#> [161]   3.0    1.0  180.0+  10.0+ 180.0+ 180.0+  17.0   45.0   19.0  180.0+
#> [171]   9.0+ 180.0+ 172.0+   8.0  180.0+ 180.0+  15.0  180.0+  77.0   13.0+
#> [181]   8.0+ 180.0+ 180.0+ 180.0+ 170.0  169.0    7.0    7.0+   6.0  180.0+
#> [191] 180.0+ 180.0+ 180.0+   3.0+  30.0  180.0+ 180.0+  28.0   13.0+  18.0 
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [211]   7.0+  22.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+
#> [221]   4.0+   3.0+ 167.0    6.0+ 180.0+ 180.0+  17.0   12.0  180.0+ 180.0+
#> [231]  14.0+  36.0    3.0+  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [241] 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0 
#> [251] 180.0+ 180.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+
#> [261]   2.0+ 103.0   15.0  180.0+   5.0+  13.0   14.0+   3.0  180.0+ 180.0+
#> [271] 180.0+ 180.0+   8.0    5.0  180.0+ 180.0+ 123.0+  18.0   11.0+ 180.0+
#> [281]   4.0+ 180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   3.0  175.0 
#> [291] 180.0+ 180.0+ 180.0+   6.0  180.0+  19.0+  12.0   99.0  180.0+ 179.0+
#> [301] 180.0+ 180.0+  11.0+   0.5   18.0    7.0+ 180.0+ 152.0+  93.0  180.0+
#> [311]   1.0   18.0+ 101.0    4.0    5.0  150.0  180.0+ 180.0+ 180.0+ 180.0+
#> [321] 171.0  180.0+ 174.0+ 180.0+   0.5  180.0+ 180.0+  14.0+ 180.0+   2.0 
#> [331]   3.0+  36.0    5.0+ 180.0+  97.0    8.0+ 180.0+   2.0+ 180.0+  18.0 
#> [341] 180.0+ 180.0+   7.0   13.0+ 123.0  180.0+ 180.0+  51.0   19.0  180.0+
#> [351]   1.0    1.0   60.0   76.0  132.0   10.0+ 180.0+ 162.0    7.0+ 180.0+
#> [361] 180.0+ 152.0    2.0   76.0  180.0+ 180.0+ 180.0+ 180.0+  16.0+  16.0+
#> [371] 180.0+ 180.0+   6.0  180.0+  15.0   13.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [381]   2.0    3.0+ 180.0+  20.0   20.0    0.5  180.0+ 180.0+ 180.0+   3.0 
#> [391]  87.0  180.0+   4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+   3.0  175.0 
#> [401]   2.0  180.0+  10.0+ 180.0+ 180.0+ 179.0+   1.0  180.0+ 159.0   15.0 
#> [411]  10.0    1.0  180.0+  13.0  180.0+   4.0+ 180.0+  10.0  104.0+   1.0 
#> [421] 180.0+  11.0    3.0+   5.0   12.0  180.0+ 180.0+ 180.0+ 180.0+  34.0 
#> [431] 180.0+ 180.0+ 180.0+  15.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0 
#> [441] 180.0+ 180.0+  85.0  180.0+  17.0+ 180.0+ 174.0+   4.0  180.0+  12.0 
#> [451] 180.0+   4.0    1.0   52.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+
#> [461] 180.0+  33.0    5.0  180.0+ 180.0+   1.0   12.0  180.0+   7.0+   3.0 
#> [471] 168.0+ 180.0+ 180.0+ 176.0+  47.0  180.0+  11.0  180.0+   7.0  180.0+
#> [481] 180.0+ 172.0   12.0  180.0+ 180.0+   1.0   80.0  180.0+ 180.0+   4.0+
#> [491]   2.0  180.0+  11.0   29.0   24.0   32.0   23.0    3.0+ 180.0+ 180.0+
#> [501]   1.0   11.0   10.0+ 180.0+   6.0    2.0+ 180.0+   1.0   43.0    6.0 
#> [511] 180.0+   8.0   40.0   17.0  161.0   93.0  118.0  173.0   37.0  180.0+
#> [521] 175.0+   7.0+  22.0    5.0+ 171.0+ 166.0+  71.0   20.0+   1.0   10.0 
#> [531]  85.0    6.0+   6.0  180.0+   5.0    1.0  180.0+ 108.0  180.0+ 125.0 
#> [541] 180.0+   4.0    6.0  180.0+ 180.0+ 103.0  180.0+ 177.0+ 169.0   70.0 
#> [551]   4.0  180.0+ 180.0+   7.0+   8.0+  16.0  180.0+ 180.0+ 180.0+ 180.0+
#> [561] 177.0+ 180.0+   2.0  128.0  167.0  180.0+  38.0  180.0+  90.0  180.0+
#> [571] 180.0+ 180.0+ 180.0+   4.0   71.0   30.0  180.0+ 114.0  180.0+ 154.0 
#> [581]   2.0  180.0+   4.0+  12.0   16.0+   4.0+ 180.0+   3.0   83.0  180.0+
#> [591]   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 174.0    6.0   70.0 
#> [601]  43.0  180.0+ 180.0+ 180.0+  14.0    3.0   13.0  180.0+ 180.0+  92.0 
#> [611]   4.0  177.0    3.0+   6.0+   6.0+  20.0    4.0   65.0  180.0+ 115.0 
#> [621] 180.0+ 180.0+   4.0    4.0  180.0+   8.0  110.0   29.0  180.0+ 180.0+
#> [631]   1.0+ 180.0+   8.0    3.0   50.0  126.0   36.0   75.0    3.0+   1.0 
#> [641]  33.0  158.0   74.0  180.0+ 168.0  169.0    7.0    4.0    0.5  180.0+
#> [651] 180.0+   4.0  180.0+   1.0+   2.0  179.0+   8.0+  76.0  180.0+  16.0 
#> [661]  67.0   12.0    8.0   26.0   53.0    7.0+   0.5  180.0+   3.0   15.0+
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
#>   0.8321431 
```
