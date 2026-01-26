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
#> min 0.00391    43   2.824 0.1215       6
#> 1se 0.07000    12   2.944 0.1162       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  33   2      0          2        0   150
#>   [2,]  35   5      1          2        0   172
#>   [3,]  34   5      0          5        0   120
#>   [4,]  35   2      0        180        0   121
#>   [5,]  35   2      1          1        1   112
#>   [6,]  38  13      1          0        1   161
#>   [7,]  38   2      0        115        0   150
#>   [8,]  35   0      0        180        1   119
#>   [9,]  38  12      1          8        1   120
#>  [10,]  33   6      1          1        1   115
#>  [11,]  38  16      1         10        0   160
#>  [12,]  38  12      1         11        1    92
#>  [13,]  40  12      1          9        0   153
#>  [14,]  42   3      1          1        1   130
#>  [15,]  37   1      1          0        1   146
#>  [16,]  40   2      1          1        1   148
#>  [17,]  42   2      0          2        0   140
#>  [18,]  42   2      0        180        0   100
#>  [19,]  43   3      1          0        1   100
#>  [20,]  41   2      1          1        0   166
#>  [21,]  40   1      1          0        1   145
#>  [22,]  42   4      0        180        0   162
#>  [23,]  40   3      1          1        0   170
#>  [24,]  43   2      1          1        1   116
#>  [25,]  42   2      0        180        1   124
#>  [26,]  44   5      1          1        0   170
#>  [27,]  45   3      0        180        1   154
#>  [28,]  41  10      1          8        0   150
#>  [29,]  45   9      1          7        0   110
#>  [30,]  45   6      0        180        1   170
#>  [31,]  44   2      1          1        1   150
#>  [32,]  43   2      0        180        1   140
#>  [33,]  46   2      1          1        0   126
#>  [34,]  45   3      0        150        0   130
#>  [35,]  44   3      1          0        1   180
#>  [36,]  46   7      1          2        0   166
#>  [37,]  43  29      0        180        1   180
#>  [38,]  45   4      1          0        0   124
#>  [39,]  43  10      0        180        0   185
#>  [40,]  46  13      1         10        0   100
#>  [41,]  45   8      1          0        1   117
#>  [42,]  46   2      1          1        1   122
#>  [43,]  44   4      1          0        1   114
#>  [44,]  45   5      0        180        1   190
#>  [45,]  46   5      1          3        0   130
#>  [46,]  44   2      0        180        0   142
#>  [47,]  46  15      0        180        1   120
#>  [48,]  45   9      1          0        1   145
#>  [49,]  47   3      1          1        1   120
#>  [50,]  48  12      1         11        0   200
#>  [51,]  47   5      1          3        1   130
#>  [52,]  47   9      1          6        0   170
#>  [53,]  46   3      1          0        1   119
#>  [54,]  47  10      0         10        1   140
#>  [55,]  50   1      1          0        1   129
#>  [56,]  48   2      1          0        0   184
#>  [57,]  47   7      0        180        0   145
#>  [58,]  50   4      1          1        0   125
#>  [59,]  49   7      1          7        1   110
#>  [60,]  46   3      1          1        1   140
#>  [61,]  49   2      0          2        0   105
#>  [62,]  51   1      0          1        1   145
#>  [63,]  49  15      1         11        1   160
#>  [64,]  47   2      0        180        0   150
#>  [65,]  49  23      0        179        1   112
#>  [66,]  46   6      1          0        1   156
#>  [67,]  52   2      0        180        1   170
#>  [68,]  50   7      1          0        1    92
#>  [69,]  51   3      1          2        0   113
#>  [70,]  50   9      0        180        0   130
#>  [71,]  47   8      0        180        0   160
#>  [72,]  47   6      0        180        1   162
#>  [73,]  51   8      0        180        1   140
#>  [74,]  52   2      0        180        0   155
#>  [75,]  46   3      0        180        1   120
#>  [76,]  50   4      1          1        0   150
#>  [77,]  48   7      1          0        1   110
#>  [78,]  53   8      0         36        1   160
#>  [79,]  48  17      1         10        0   111
#>  [80,]  47   2      1          1        0   110
#>  [81,]  52   4      1          4        0   152
#>  [82,]  49   9      1          3        0   102
#>  [83,]  49  15      0        180        1   160
#>  [84,]  53   5      0        180        1   140
#>  [85,]  54  17      1         12        1   102
#>  [86,]  53   5      0         77        0   159
#>  [87,]  54   6      1          3        0   129
#>  [88,]  50   2      0          5        1   106
#>  [89,]  50  14      1         13        0   170
#>  [90,]  48   3      1          2        0   150
#>  [91,]  51  25      1          1        0   202
#>  [92,]  49   5      1          2        1   150
#>  [93,]  53   4      0          4        0   140
#>  [94,]  48   6      0        180        0   160
#>  [95,]  53   4      1          0        1   156
#>  [96,]  54   9      1          0        1   138
#>  [97,]  55   3      1          1        0   150
#>  [98,]  54  23      1         10        0   131
#>  [99,]  52   7      1          2        0   154
#> [100,]  55   6      1          2        1   114
#> [101,]  54   9      1          1        0   130
#> [102,]  55   4      1          2        0   150
#> [103,]  52   4      0        180        1   180
#> [104,]  52   4      0        180        0   183
#> [105,]  49   6      1          0        1   130
#> [106,]  50   7      1          1        0   156
#> [107,]  53   8      1          0        1   130
#> [108,]  56   4      1          1        1   130
#> [109,]  52   5      0        175        1   117
#> [110,]  55   2      0          2        0   145
#> [111,]  54   1      0        180        0   162
#> [112,]  54   7      1          0        1   100
#> [113,]  56   2      0        180        0   132
#> [114,]  54   3      0        180        1   180
#> [115,]  55   6      0        180        0   170
#> [116,]  53  15      0         15        1    90
#> [117,]  53   4      0        180        1   150
#> [118,]  55   6      0        180        1   100
#> [119,]  56   3      0          8        1   139
#> [120,]  55   1      0          2        0   130
#> [121,]  57   3      0          3        0   120
#> [122,]  54   2      1          1        0   135
#> [123,]  54   2      1          1        1   176
#> [124,]  57   5      1          3        1   138
#> [125,]  57   1      0        180        1   156
#> [126,]  57   1      0          1        1   100
#> [127,]  55  11      1          7        0   104
#> [128,]  56  14      1         11        0   130
#> [129,]  57  10      0        180        1   170
#> [130,]  58   8      0          8        1   130
#> [131,]  55   3      1          1        1   156
#> [132,]  57   0      0          0        1   150
#> [133,]  58   6      1          0        1    90
#> [134,]  53  15      1         10        1   130
#> [135,]  55   9      1          2        1   147
#> [136,]  55  13      0        166        1   140
#> [137,]  56   5      0          5        1   150
#> [138,]  57   4      1          2        1   185
#> [139,]  53   4      0        147        1   145
#> [140,]  53   7      1          0        1   120
#> [141,]  55   3      1          2        0   140
#> [142,]  54   7      1          0        1   141
#> [143,]  56   4      0          4        0   164
#> [144,]  58   9      1          0        1   180
#> [145,]  55   2      0          2        0   106
#> [146,]  60  11      1          9        0   106
#> [147,]  59   3      0        180        0   120
#> [148,]  57   2      0          2        1   120
#> [149,]  60   5      1          1        0   138
#> [150,]  57   5      0        180        1   130
#> [151,]  58  11      1          9        1   124
#> [152,]  55   5      1          0        1   160
#> [153,]  57  10      1          9        0   103
#> [154,]  59   4      1          0        1   152
#> [155,]  58  26      1          0        1   189
#> [156,]  61   9      0          9        1   160
#> [157,]  58   4      1          3        0   120
#> [158,]  60   0      1          0        1    80
#> [159,]  59   2      1          1        0   140
#> [160,]  58   8      0        161        1   140
#> [161,]  58  14      1          6        0   190
#> [162,]  61   9      1          8        0   150
#> [163,]  61   3      1          2        1   102
#> [164,]  58   1      0          1        1   100
#> [165,]  57  13      1         10        0   110
#> [166,]  58  10      0         10        1   150
#> [167,]  57   4      1          3        0   138
#> [168,]  57  11      0        180        1   150
#> [169,]  56  14      0         45        0   130
#> [170,]  58  19      1         13        1   140
#> [171,]  56  13      1          6        1   158
#> [172,]  56  18      1         11        1   165
#> [173,]  60  12      1          0        1   114
#> [174,]  55   9      1          7        1   135
#> [175,]  61   4      1          0        1   115
#> [176,]  56   8      1          8        0   120
#> [177,]  61  13      1         12        1   130
#> [178,]  59  11      1          8        1   190
#> [179,]  57  15      1         13        1   110
#> [180,]  59   5      1          2        0   182
#> [181,]  61   8      0         77        0   120
#> [182,]  62  10      1          0        1   153
#> [183,]  58   8      1          3        1   150
#> [184,]  57   7      0        169        0   180
#> [185,]  61   6      0          6        0   134
#> [186,]  57  12      1          9        1   120
#> [187,]  58   3      1          0        1   146
#> [188,]  62   4      1          3        0   173
#> [189,]  58   2      0         30        0   202
#> [190,]  59   1      0        180        0   155
#> [191,]  59  16      1          9        1   133
#> [192,]  61   5      0          5        1   110
#> [193,]  57  18      1          9        1    93
#> [194,]  61   5      0          5        1   160
#> [195,]  58  11      1          9        0   179
#> [196,]  57   2      1          1        0   159
#> [197,]  62  17      1         10        1   180
#> [198,]  62   1      1          0        1   172
#> [199,]  63   3      1          1        0   180
#> [200,]  63   1      0        180        1   130
#> [201,]  62   3      0        180        1   105
#> [202,]  63  15      1         10        1   126
#> [203,]  64   4      0        180        0   130
#> [204,]  63   4      1          1        0   155
#> [205,]  60  18      1         13        0   132
#> [206,]  59   8      0        180        1   140
#> [207,]  58   9      1          9        0   110
#> [208,]  59   1      0         22        1   162
#> [209,]  58   2      0        180        0   127
#> [210,]  59   4      0        180        0   196
#> [211,]  60   7      1          5        1   141
#> [212,]  60   7      0          7        0   140
#> [213,]  59   5      1          1        0   148
#> [214,]  60   7      1          1        1    90
#> [215,]  63   1      0          1        0   162
#> [216,]  63   1      0          1        0   130
#> [217,]  61  15      1         13        0   170
#> [218,]  59   4      0          4        0   149
#> [219,]  60   3      0          3        0   168
#> [220,]  62   6      0          6        0   120
#> [221,]  60   8      0         17        1   130
#> [222,]  64  12      1         11        0   160
#> [223,]  63  14      1          9        0   123
#> [224,]  63   4      1          3        0   162
#> [225,]  66   3      1          1        0   127
#> [226,]  61  10      1          2        1   194
#> [227,]  64  32      1          9        1   160
#> [228,]  63  12      1          9        0   114
#> [229,]  66   5      1          0        1   110
#> [230,]  65   8      1          0        0   168
#> [231,]  65  10      1          8        1   120
#> [232,]  64   0      0          0        1    90
#> [233,]  60   6      0        180        0   130
#> [234,]  64   9      0        180        0   150
#> [235,]  65   3      0        180        1   190
#> [236,]  63  16      1          7        1   110
#> [237,]  66   6      1          1        1   130
#> [238,]  63  12      0         12        1   150
#> [239,]  62   3      1          1        1   199
#> [240,]  65   6      0          9        0   112
#> [241,]  62  13      1         11        0   180
#> [242,]  64   2      0          2        0   201
#> [243,]  66  18      1          5        0   142
#> [244,]  61  14      1          5        0   140
#> [245,]  61  15      1         10        0   130
#> [246,]  63   9      1          8        1   160
#> [247,]  63   3      1          2        0   120
#> [248,]  64  19      1          8        1   160
#> [249,]  65   8      1          0        1   140
#> [250,]  67   6      0        180        1   170
#> [251,]  65  15      1         11        1   160
#> [252,]  68   5      1          4        1   150
#> [253,]  64  13      1         12        1   150
#> [254,]  66   7      1          0        1   115
#> [255,]  64   0      0          0        1   148
#> [256,]  66   3      1          0        1   135
#> [257,]  65   2      1          1        1   170
#> [258,]  68   1      0        180        1   166
#> [259,]  64  10      1          9        1   110
#> [260,]  63   7      1          0        0   162
#> [261,]  68   5      0          5        1    90
#> [262,]  66  14      0        180        0   130
#> [263,]  64   1      0          1        1   120
#> [264,]  68  18      0        180        1   260
#> [265,]  65  17      1         14        1   100
#> [266,]  63   8      1          1        1   162
#> [267,]  65  18      1          3        0   120
#> [268,]  63   1      1          0        1   155
#> [269,]  67  11      0         11        0   150
#> [270,]  68  11      0        180        0   160
#> [271,]  66  12      1         10        1   150
#> [272,]  65  15      1         12        1   150
#> [273,]  66  15      1         13        1   160
#> [274,]  63   2      0        180        0   150
#> [275,]  65  11      1          6        0   130
#> [276,]  69   6      0        180        1   100
#> [277,]  66   9      1          8        0   130
#> [278,]  63   8      0        180        1   120
#> [279,]  69   1      1          0        0   170
#> [280,]  68  10      1         10        1   150
#> [281,]  67   7      1          4        1   130
#> [282,]  67   2      0        180        0   184
#> [283,]  65  10      1          1        1   148
#> [284,]  66  19      1         12        1   150
#> [285,]  67  12      1         12        0   160
#> [286,]  69   6      0         99        1   140
#> [287,]  65   4      1          1        0   130
#> [288,]  64   4      0        179        0   160
#> [289,]  64  11      0         11        0   125
#> [290,]  64   4      0        180        1   140
#> [291,]  67   2      0         18        0   131
#> [292,]  66   7      1          5        1   131
#> [293,]  66   4      0        180        0   177
#> [294,]  68   4      1          0        1   160
#> [295,]  65  13      1         12        1   130
#> [296,]  69  17      1         10        0   140
#> [297,]  69   8      0         93        0   140
#> [298,]  64  21      0         21        1   155
#> [299,]  66   6      0        180        0   140
#> [300,]  65   1      0          1        1   120
#> [301,]  71   3      0          5        0   112
#> [302,]  68   7      0        150        0   210
#> [303,]  66   1      1          1        1   165
#> [304,]  70   4      1          0        1   180
#> [305,]  69   8      0        180        1   153
#> [306,]  66   4      0        180        0   130
#> [307,]  67  10      1          9        0   200
#> [308,]  67   6      1          4        0   130
#> [309,]  68  18      1         14        1   170
#> [310,]  69   0      0          0        1   148
#> [311,]  65   2      0        180        0   130
#> [312,]  68   7      1          0        1   150
#> [313,]  69   3      1          2        0   151
#> [314,]  67  14      1         13        0   130
#> [315,]  65  14      1         13        1   150
#> [316,]  71   6      0         45        1   158
#> [317,]  69   5      0          5        1   142
#> [318,]  71   3      0        103        0   133
#> [319,]  69   3      0          3        1   130
#> [320,]  67   1      0         36        1   104
#> [321,]  68   6      0        180        0   145
#> [322,]  69   8      1          5        1   195
#> [323,]  69   6      1          4        1   174
#> [324,]  72   7      0          7        1   110
#> [325,]  69   8      1          7        1   108
#> [326,]  67   3      0        180        0   110
#> [327,]  66   2      1          1        0   123
#> [328,]  69  19      0        180        0   130
#> [329,]  67  14      0        172        1   140
#> [330,]  69  11      1          0        1   120
#> [331,]  66   2      0        180        0   130
#> [332,]  67   7      1          4        0   122
#> [333,]  69   4      1          3        0   132
#> [334,]  69   8      1          2        0   121
#> [335,]  67  13      1          9        0   130
#> [336,]  67  22      1          1        1   140
#> [337,]  68   3      0         19        0   135
#> [338,]  67  12      1          8        0   120
#> [339,]  69   1      0          1        1   110
#> [340,]  67   1      0          1        1    60
#> [341,]  67   8      1          0        1   130
#> [342,]  72  13      1         11        1   195
#> [343,]  72  30      1          0        1   145
#> [344,]  70   7      0          7        0   102
#> [345,]  68   7      1          2        0   135
#> [346,]  69  10      1          6        1   120
#> [347,]  70  11      0        180        1   210
#> [348,]  72  19      1          8        0   120
#> [349,]  72  12      1         10        0   170
#> [350,]  67   8      0        180        1   170
#> [351,]  67   5      1          0        1   147
#> [352,]  67   9      0        180        0   158
#> [353,]  73  13      0        152        1   130
#> [354,]  70   5      0        180        0   150
#> [355,]  72   6      1          5        0   115
#> [356,]  71   1      0        173        1   188
#> [357,]  68  23      0        180        1   220
#> [358,]  69   3      0        180        0   220
#> [359,]  71   3      1          2        0   150
#> [360,]  68   4      1          3        0   210
#> [361,]  72   5      0         28        0   120
#> [362,]  71   5      0        180        0   191
#> [363,]  73   6      0        180        1   117
#> [364,]  69  16      1         10        1   140
#> [365,]  69   8      1          1        0   164
#> [366,]  68   7      0        180        1   130
#> [367,]  72  16      1          1        1   130
#> [368,]  70   4      0        180        0   180
#> [369,]  69   1      1          0        0   155
#> [370,]  72   8      1          1        1   150
#> [371,]  71   2      1          0        1   180
#> [372,]  73   7      0          7        1   140
#> [373,]  68  15      1         13        1   130
#> [374,]  70  13      1          9        0   100
#> [375,]  73   0      0        180        1   161
#> [376,]  74   8      1          0        1    85
#> [377,]  73   4      0        180        1   154
#> [378,]  69   2      1          0        1   110
#> [379,]  71   3      1          1        0   150
#> [380,]  71  15      1         11        0   165
#> [381,]  68   9      0        180        1   120
#> [382,]  71  20      1         10        0   140
#> [383,]  71  17      1         11        0   160
#> [384,]  71   8      1          7        0   149
#> [385,]  71   3      1          2        1   190
#> [386,]  73  10      1          8        0   106
#> [387,]  70  26      1         11        1   120
#> [388,]  74   4      0          4        0   120
#> [389,]  72  15      1          0        1   150
#> [390,]  71   7      1          2        0   143
#> [391,]  72   8      1          0        1   140
#> [392,]  74   3      0          3        1   150
#> [393,]  71  13      1          8        0   121
#> [394,]  69   2      1          1        1    80
#> [395,]  70   4      1          0        1   140
#> [396,]  71  14      1         13        1   170
#> [397,]  74   7      1          0        1   117
#> [398,]  69   7      0        180        1   144
#> [399,]  71  10      1          9        1   120
#> [400,]  75   1      0          1        0   133
#> [401,]  75   2      1          1        0   145
#> [402,]  74  15      1          9        1   179
#> [403,]  71   2      0         10        1   112
#> [404,]  73   1      0          1        1    80
#> [405,]  75   9      1          7        0   140
#> [406,]  75  13      1          1        1   130
#> [407,]  71  11      1          8        0   110
#> [408,]  71   4      0          4        0   134
#> [409,]  72  15      1         12        1   120
#> [410,]  73  10      1          8        0   120
#> [411,]  70   7      1          4        0   184
#> [412,]  72   1      1          1        0   168
#> [413,]  72   7      0         57        1   145
#> [414,]  73  10      0        180        0   162
#> [415,]  72  11      0         11        1   140
#> [416,]  73   5      1          3        1   112
#> [417,]  76  25      1         12        1   170
#> [418,]  73  12      1         12        1   140
#> [419,]  75   1      0        180        1   140
#> [420,]  72   4      1          0        1   197
#> [421,]  71   3      1          0        0   144
#> [422,]  73   4      0        180        0   124
#> [423,]  74  34      1          8        1   233
#> [424,]  72   3      0        180        0   160
#> [425,]  76   5      0          5        1   130
#> [426,]  77  11      0         11        1   150
#> [427,]  75   3      1          1        0   180
#> [428,]  72   7      1          2        0   142
#> [429,]  73  15      0         15        1   160
#> [430,]  74   7      0        180        1   150
#> [431,]  74   3      0          3        1   128
#> [432,]  74   2      1          1        0   140
#> [433,]  76   8      1          0        1   141
#> [434,]  73   6      0          6        1   114
#> [435,]  75  23      1         14        1   110
#> [436,]  74   2      0        180        0   190
#> [437,]  72   4      0         85        1   120
#> [438,]  72   4      1          3        0   160
#> [439,]  76  17      1          0        1   200
#> [440,]  73   4      1          3        1   125
#> [441,]  76  13      1         10        0   110
#> [442,]  75   7      0          7        0   190
#> [443,]  75   0      0          0        1   130
#> [444,]  73  13      1         11        0   195
#> [445,]  75   4      1          2        1   188
#> [446,]  74   6      0        180        0   160
#> [447,]  76   4      0          4        1   155
#> [448,]  75   1      0          1        1   125
#> [449,]  74   2      0        180        0   111
#> [450,]  73   0      0        180        0   156
#> [451,]  72   5      0        180        0   120
#> [452,]  78  12      1         11        1   160
#> [453,]  76   5      0        180        0   185
#> [454,]  74   8      1          8        1   170
#> [455,]  73  33      1         12        1   175
#> [456,]  77   5      1          0        0   123
#> [457,]  77  12      0        180        0   130
#> [458,]  76  12      1         11        1   120
#> [459,]  78   5      1          0        1   170
#> [460,]  74   6      0         79        1   140
#> [461,]  75   3      1          1        1   171
#> [462,]  79  10      1          8        0   190
#> [463,]  74   2      1          0        1   130
#> [464,]  78  18      0         18        1   144
#> [465,]  77   3      0        180        0   110
#> [466,]  73  11      1          2        1   110
#> [467,]  74   2      0        180        0   100
#> [468,]  78   7      0          7        1   133
#> [469,]  74  15      0        180        1   172
#> [470,]  74   7      0          7        0   161
#> [471,]  76  13      1          1        1   170
#> [472,]  78  32      1          9        1   198
#> [473,]  79   6      0        180        0   170
#> [474,]  80  10      1          6        1   147
#> [475,]  78   0      0        180        1   212
#> [476,]  78  13      1          5        0   130
#> [477,]  75   5      0        119        1   150
#> [478,]  75  12      1          1        1   120
#> [479,]  78  15      0        180        1   270
#> [480,]  80   8      0          8        1   120
#> [481,]  74  10      1          8        0   135
#> [482,]  76   1      0          1        1    83
#> [483,]  79   4      0         80        0   145
#> [484,]  78   2      1          1        0   130
#> [485,]  75   4      1          0        0   212
#> [486,]  77   2      1          0        1   143
#> [487,]  76  11      1          0        0   120
#> [488,]  75  11      1          4        0   162
#> [489,]  75   3      0          3        0     0
#> [490,]  77  24      0         24        1   160
#> [491,]  79   8      0         32        1   120
#> [492,]  80   9      0         23        1   128
#> [493,]  80   6      0          6        1   150
#> [494,]  78   6      1          0        1   240
#> [495,]  76   3      1          0        1   140
#> [496,]  78  11      1          1        1   140
#> [497,]  79   2      1          0        1   121
#> [498,]  78  14      1          0        1   140
#> [499,]  81   1      0          1        0   130
#> [500,]  78  11      1          8        1   118
#> [501,]  76   4      0          4        1   160
#> [502,]  76  10      1          8        0   180
#> [503,]  76  12      1         10        1   127
#> [504,]  77   6      0          6        1   107
#> [505,]  80   3      1          0        1   120
#> [506,]  75   2      1          1        1   204
#> [507,]  78  11      0        180        1   135
#> [508,]  76   1      0          1        1   140
#> [509,]  77  31      1          3        1   161
#> [510,]  76   1      0          1        1    90
#> [511,]  78   7      1          0        1   110
#> [512,]  79   3      0          3        0   120
#> [513,]  77   7      0        180        1   170
#> [514,]  79   4      1          0        1   120
#> [515,]  80  15      1         12        1   150
#> [516,]  77   9      1          4        0   141
#> [517,]  82   5      0          8        1   120
#> [518,]  80  40      1          0        1   138
#> [519,]  78   4      0         59        1   112
#> [520,]  76   7      0        161        0   151
#> [521,]  79  28      0        164        0   100
#> [522,]  80   9      0        118        1   186
#> [523,]  80   6      0        173        1   160
#> [524,]  78  32      0        180        1   130
#> [525,]  81   3      0        180        0   184
#> [526,]  81   2      0        175        0   172
#> [527,]  78   7      0          7        1   147
#> [528,]  77  13      1          0        1   190
#> [529,]  78   4      0        180        0   175
#> [530,]  78  20      1          0        1   109
#> [531,]  78   3      1          1        1   152
#> [532,]  77  10      1          8        1   130
#> [533,]  82   3      1          1        1   144
#> [534,]  80   2      1          1        0   168
#> [535,]  79   6      0          6        0   152
#> [536,]  80   6      1          0        1   119
#> [537,]  80   5      0          5        1   130
#> [538,]  82   1      1          0        1    82
#> [539,]  77   4      0        180        1    98
#> [540,]  81   1      0        108        0   129
#> [541,]  82  21      1          2        0   155
#> [542,]  84  22      1         10        0   180
#> [543,]  79   4      0          4        1   121
#> [544,]  82   5      0        180        0   110
#> [545,]  83   5      0        180        0   148
#> [546,]  81  11      1          8        0   160
#> [547,]  78  23      1         10        1   145
#> [548,]  79   4      0          4        1   183
#> [549,]  79   1      0        180        1   170
#> [550,]  81  15      0        180        1   140
#> [551,]  80   7      1          0        1   146
#> [552,]  81  20      1          9        0   170
#> [553,]  83   8      0          8        0   115
#> [554,]  80   6      1          0        1   150
#> [555,]  81   8      0        180        0   146
#> [556,]  80   8      1          7        0   160
#> [557,]  79   7      0        177        0   197
#> [558,]  79   0      1          0        1    96
#> [559,]  85   4      0        180        0    90
#> [560,]  81   2      1          1        0   198
#> [561,]  83   2      0          2        1   155
#> [562,]  84   4      0        167        0   198
#> [563,]  80   3      1          1        1   230
#> [564,]  84   4      0          4        1    85
#> [565,]  81   1      0          1        1   150
#> [566,]  84   1      0         38        1   205
#> [567,]  81   4      0         90        1   138
#> [568,]  85   3      1          2        1   160
#> [569,]  80  13      1          8        1   140
#> [570,]  79   4      0          4        1    60
#> [571,]  80   6      0         71        1   189
#> [572,]  83   1      0          1        1   100
#> [573,]  82  19      0         19        0   120
#> [574,]  80  30      1         13        0   220
#> [575,]  83   9      0        180        0   198
#> [576,]  79  14      1          0        0   110
#> [577,]  83   2      0        154        0   130
#> [578,]  83   1      0        180        0   160
#> [579,]  81   4      0          4        0   175
#> [580,]  84  15      1         13        1   110
#> [581,]  81   1      0          1        1   145
#> [582,]  81  12      0         12        1   163
#> [583,]  82  16      1          8        0   103
#> [584,]  82   5      1          0        1   146
#> [585,]  81   4      0          4        0   160
#> [586,]  86  12      0        180        1   120
#> [587,]  83  12      1          2        1   170
#> [588,]  81  19      1         14        0   120
#> [589,]  82   3      1          2        0   130
#> [590,]  80   2      0         88        0   135
#> [591,]  83   7      0        126        0   135
#> [592,]  86   8      0          8        1   132
#> [593,]  81  16      1          9        0   180
#> [594,]  86   3      0          3        1   140
#> [595,]  82   9      0        180        1   134
#> [596,]  81   4      0        180        0   160
#> [597,]  83   9      0        180        1   149
#> [598,]  82   1      0        180        1   193
#> [599,]  83   4      0          4        0   130
#> [600,]  87   2      0          5        1   137
#> [601,]  86  12      1          0        1   132
#> [602,]  84  16      0         70        1   150
#> [603,]  83  19      0         43        0   150
#> [604,]  83  10      1          0        1   190
#> [605,]  86   2      0        180        1   169
#> [606,]  84   3      0          3        1   121
#> [607,]  83  13      1         12        0   170
#> [608,]  84   7      1          2        0   148
#> [609,]  87   2      0        180        0   113
#> [610,]  84   9      0         92        1   110
#> [611,]  84   3      0        180        1   170
#> [612,]  86   4      0         38        1   122
#> [613,]  86  13      0        177        0   163
#> [614,]  85   3      0          3        1   113
#> [615,]  86   6      0          6        1   117
#> [616,]  86   6      1          1        0   112
#> [617,]  88   4      0          4        0   100
#> [618,]  83  20      1          3        1   150
#> [619,]  85  22      0         22        1   184
#> [620,]  86   9      1          7        1   142
#> [621,]  88   3      0        115        0   110
#> [622,]  86  15      1          8        1   109
#> [623,]  88   4      0          4        0    86
#> [624,]  89   4      0          4        1   153
#> [625,]  87   6      0        180        1   110
#> [626,]  87   1      0          1        0   170
#> [627,]  87  29      0         29        1    97
#> [628,]  84   0      0        180        1   136
#> [629,]  89  10      0         46        1   170
#> [630,]  88   1      0          1        0   135
#> [631,]  86   4      0        180        1   145
#> [632,]  87   2      0        180        0   160
#> [633,]  87   6      1          0        0   125
#> [634,]  91  10      0        145        0   135
#> [635,]  86   3      1          0        1    80
#> [636,]  88   7      0         24        0   119
#> [637,]  90  11      1         10        1   186
#> [638,]  86  10      0        180        1   137
#> [639,]  90   4      1          0        0   121
#> [640,]  91   1      0          1        1    74
#> [641,]  87  43      0        178        1   130
#> [642,]  87   5      0         36        1   150
#> [643,]  90   5      1          0        1   125
#> [644,]  88   3      1          2        0   159
#> [645,]  89   3      1          1        1   160
#> [646,]  92   1      0          1        1   167
#> [647,]  91   3      0         33        1   137
#> [648,]  89   2      0        168        0   118
#> [649,]  91   5      0        169        1   176
#> [650,]  92   7      0          7        1   110
#> [651,]  89   4      0          4        1   159
#> [652,]  91   0      0          0        0     0
#> [653,]  89  14      0        180        1    84
#> [654,]  91   4      1          0        1   120
#> [655,]  94   6      0         50        0    78
#> [656,]  91   2      0          2        1   116
#> [657,]  93   8      0        179        1   110
#> [658,]  91   1      0        180        0   158
#> [659,]  90  16      0         16        1   106
#> [660,]  90   3      0         67        0   162
#> [661,]  96   3      0         12        1    97
#> [662,]  95   8      1          5        1   150
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
#>   [1]   2.0+   5.0+   5.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+  12.0  180.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+   2.0+ 180.0+   3.0  180.0+
#>  [21] 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 161.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+
#>  [61]   2.0    1.0  179.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+
#>  [81]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+   5.0  180.0+ 180.0+
#>  [91] 180.0+ 180.0+   4.0+ 180.0+ 166.0+ 180.0+ 180.0+ 152.0+   7.0+   6.0+
#> [101] 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 175.0+   2.0 
#> [111] 180.0+   7.0+ 180.0+ 180.0+ 180.0+  15.0+ 180.0+ 180.0+   8.0    2.0 
#> [121]   3.0+ 180.0+ 180.0+ 140.0  180.0+   1.0  180.0+ 180.0+ 180.0+   8.0+
#> [131] 180.0+   0.5  180.0+ 180.0+  15.0  166.0+   5.0+   4.0+ 147.0+ 180.0+
#> [141] 180.0+ 180.0+   4.0+   9.0+   2.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+
#> [151] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+   0.5  180.0+ 161.0+
#> [161] 171.0+ 180.0+   3.0    1.0  180.0+  10.0+ 180.0+ 180.0+  45.0   19.0 
#> [171] 180.0+ 180.0+ 172.0+  24.0  180.0+   8.0  180.0+ 180.0+  15.0  180.0+
#> [181]  77.0  180.0+ 180.0+ 169.0    6.0  180.0+   3.0+ 180.0+  30.0  180.0+
#> [191] 180.0+   5.0   18.0    5.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+
#> [201] 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0   22.0  180.0+ 180.0+
#> [211]  84.0    7.0+ 180.0+ 180.0+   1.0    1.0  180.0+   4.0+   3.0+   6.0+
#> [221]  17.0   12.0   14.0+ 180.0+   3.0+  88.0  180.0+  12.0  180.0+ 180.0+
#> [231] 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0 
#> [241] 180.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+ 103.0   15.0  180.0+
#> [251] 180.0+   5.0+  13.0  179.0+   0.5+   3.0+ 175.0+ 180.0+ 180.0+   7.0+
#> [261]   5.0  180.0+   1.0  180.0+ 180.0+ 180.0+ 123.0+   1.0+  11.0+ 180.0+
#> [271]  80.0   15.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 175.0   10.0 
#> [281] 180.0+ 180.0+ 180.0+  19.0+  12.0   99.0  180.0+ 179.0+  11.0+ 180.0+
#> [291]  18.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+  93.0   21.0+ 180.0+   1.0 
#> [301]   5.0  150.0    1.0  180.0+ 180.0+ 180.0+ 174.0+   6.0  180.0+   0.5 
#> [311] 180.0+ 180.0+ 180.0+ 180.0+  14.0+  45.0    5.0+ 103.0    3.0+  36.0 
#> [321] 180.0+ 180.0+  97.0    7.0    8.0+ 180.0+   2.0+ 180.0+ 172.0+ 180.0+
#> [331] 180.0+   7.0  180.0+   8.0+  13.0+  51.0   19.0  180.0+   1.0    1.0 
#> [341] 180.0+ 132.0  162.0    7.0+   7.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+
#> [351] 180.0+ 180.0+ 152.0  180.0+ 180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [361]  28.0  180.0+ 180.0+  16.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+
#> [371] 180.0+   7.0+  15.0   13.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+
#> [381] 180.0+  20.0  180.0+   8.0    3.0   87.0  180.0+   4.0+ 180.0+ 180.0+
#> [391] 180.0+   3.0  175.0    2.0  180.0+  14.0+ 180.0+ 180.0+ 179.0+   1.0 
#> [401] 180.0+ 180.0+  10.0    1.0  180.0+  13.0  180.0+   4.0+ 180.0+  10.0 
#> [411] 104.0+   1.0   57.0  180.0+  11.0    5.0  180.0+  12.0  180.0+ 180.0+
#> [421] 180.0+ 180.0+  34.0  180.0+   5.0   11.0+ 180.0+   7.0   15.0+ 180.0+
#> [431]   3.0  180.0+ 180.0+   6.0  180.0+ 180.0+  85.0  180.0+  17.0+ 180.0+
#> [441] 174.0+   7.0    0.5  180.0+  46.0  180.0+   4.0    1.0  180.0+ 180.0+
#> [451] 180.0+  12.0  180.0+   8.0   33.0    5.0  180.0+  12.0  180.0+  79.0 
#> [461]   3.0  180.0+ 176.0+  18.0  180.0+  11.0  180.0+   7.0  180.0+   7.0 
#> [471] 180.0+  32.0  180.0+  10.0  180.0+ 172.0  119.0   12.0  180.0+   8.0 
#> [481] 180.0+   1.0   80.0  180.0+   4.0+   2.0   11.0  152.0+   3.0   24.0 
#> [491]  32.0   23.0    6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   1.0   11.0 
#> [501]   4.0   10.0+ 180.0+   6.0    3.0+   2.0+ 180.0+   1.0  171.0    1.0 
#> [511]  43.0    3.0  180.0+ 138.0  180.0+  71.0    8.0   40.0   59.0  161.0 
#> [521] 164.0  118.0  173.0  180.0+ 180.0+ 175.0+   7.0+  22.0  180.0+  20.0+
#> [531]   3.0+  10.0  180.0+  10.0    6.0+   6.0    5.0    1.0  180.0+ 108.0 
#> [541] 180.0+ 180.0+   4.0  180.0+ 180.0+ 180.0+  70.0    4.0  180.0+ 180.0+
#> [551]   7.0+  20.0    8.0+ 180.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+ 180.0+
#> [561]   2.0  167.0    3.0+   4.0    1.0   38.0   90.0  180.0+ 180.0+   4.0 
#> [571]  71.0    1.0   19.0   30.0  180.0+ 180.0+ 154.0  180.0+   4.0+ 180.0+
#> [581]   1.0   12.0   16.0+   5.0+   4.0+ 180.0+  77.0  180.0+   3.0   88.0 
#> [591] 126.0    8.0  180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0 
#> [601] 180.0+  70.0   43.0  180.0+ 180.0+   3.0   13.0  180.0+ 180.0+  92.0 
#> [611] 180.0+  38.0  177.0    3.0+   6.0+   6.0+   4.0+  20.0   22.0   11.0 
#> [621] 115.0  180.0+   4.0    4.0  180.0+   1.0+  29.0  180.0+  46.0    1.0+
#> [631] 180.0+ 180.0+  25.0  145.0    3.0   24.0   11.0  180.0+   4.0    1.0 
#> [641] 178.0+  36.0   89.0   75.0    3.0+   1.0   33.0  168.0  169.0    7.0 
#> [651]   4.0    0.5  180.0+   4.0   50.0    2.0  179.0+ 180.0+  16.0   67.0 
#> [661]  12.0    8.0   26.0    7.0+   0.5   69.0    2.0  180.0+   3.0   15.0+
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
#>   0.8467156 
```
