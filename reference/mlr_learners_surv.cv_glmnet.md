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
#> min 0.00356    44   2.926 0.1229       6
#> 1se 0.06373    13   3.033 0.1153       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   5      1          2        0   172
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      1          1        1   112
#>   [7,]  38   2      0        115        0   150
#>   [8,]  35   0      0        180        1   119
#>   [9,]  38  12      1          8        1   120
#>  [10,]  36   5      1          0        1   115
#>  [11,]  33   6      1          1        1   115
#>  [12,]  38  12      1         11        1    92
#>  [13,]  40  12      1          9        0   153
#>  [14,]  42   3      1          1        1   130
#>  [15,]  37   1      1          0        1   146
#>  [16,]  38   5      1          3        0   125
#>  [17,]  40  11      1         10        1   120
#>  [18,]  43   3      1          0        1   100
#>  [19,]  41   2      1          1        0   166
#>  [20,]  40   1      1          0        1   145
#>  [21,]  42  15      1         13        1   125
#>  [22,]  40   3      1          1        0   170
#>  [23,]  42  12      1         10        1   170
#>  [24,]  43   2      1          1        1   116
#>  [25,]  44   5      1          1        0   170
#>  [26,]  45   3      0        180        1   154
#>  [27,]  41  10      1          8        0   150
#>  [28,]  44   3      0        180        0   141
#>  [29,]  41  13      1          1        0   140
#>  [30,]  41   5      1          4        1   141
#>  [31,]  43   2      0        180        1   140
#>  [32,]  45   2      0        180        1   140
#>  [33,]  47   4      1          3        0   118
#>  [34,]  48  15      0        180        1   160
#>  [35,]  45   3      0        150        0   130
#>  [36,]  44   3      1          0        1   180
#>  [37,]  43  10      0        180        0   185
#>  [38,]  47   6      1          0        1   116
#>  [39,]  46  13      1         10        0   100
#>  [40,]  44   0      1          0        1    96
#>  [41,]  47   4      1          3        1   160
#>  [42,]  45   8      1          0        1   117
#>  [43,]  45   5      0          5        0   141
#>  [44,]  46   2      1          1        1   122
#>  [45,]  46   6      1          0        1   100
#>  [46,]  44   4      1          0        1   114
#>  [47,]  44   9      1          8        1   135
#>  [48,]  45   5      0        180        1   190
#>  [49,]  46   5      1          3        0   130
#>  [50,]  46   4      0        180        1   121
#>  [51,]  44   2      0        180        0   142
#>  [52,]  46  15      0        180        1   120
#>  [53,]  47   3      1          1        1   120
#>  [54,]  48   3      0        180        0   154
#>  [55,]  48  12      1         11        0   200
#>  [56,]  47   5      1          3        1   130
#>  [57,]  47   9      1          6        0   170
#>  [58,]  46   3      1          0        1   119
#>  [59,]  49   4      0        180        0   117
#>  [60,]  47  10      0         10        1   140
#>  [61,]  50   1      1          0        1   129
#>  [62,]  50   4      1          1        0   125
#>  [63,]  50   7      0        180        1   110
#>  [64,]  49   2      0          2        0   105
#>  [65,]  51   1      0          1        1   145
#>  [66,]  49  15      1         11        1   160
#>  [67,]  47   2      0        180        0   150
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
#>  [83,]  53   8      0         36        1   160
#>  [84,]  52   4      1          4        0   152
#>  [85,]  49  15      0        180        1   160
#>  [86,]  53   5      0        180        1   140
#>  [87,]  54  17      1         12        1   102
#>  [88,]  53   5      0         77        0   159
#>  [89,]  53   7      1          0        0   199
#>  [90,]  54   6      1          3        0   129
#>  [91,]  50  10      1          6        0   122
#>  [92,]  50  14      1         13        0   170
#>  [93,]  51  25      1          1        0   202
#>  [94,]  49   5      1          2        1   150
#>  [95,]  48  11      1         10        0   120
#>  [96,]  54   9      1          0        1   138
#>  [97,]  49  16      0         16        0   125
#>  [98,]  55   3      1          1        0   150
#>  [99,]  54  23      1         10        0   131
#> [100,]  52   7      1          2        0   154
#> [101,]  55   6      1          2        1   114
#> [102,]  54   9      1          1        0   130
#> [103,]  55   4      1          2        0   150
#> [104,]  52   4      0        180        1   180
#> [105,]  51  13      1         11        0   145
#> [106,]  54   4      1          0        1   121
#> [107,]  50   3      0        174        1   153
#> [108,]  55  28      1         13        1   160
#> [109,]  49   6      1          0        1   130
#> [110,]  49   1      0          1        1   110
#> [111,]  50   7      1          1        0   156
#> [112,]  53   8      1          0        1   130
#> [113,]  50   7      1          0        1   127
#> [114,]  56   4      1          1        1   130
#> [115,]  52   5      0        175        1   117
#> [116,]  55   2      0          2        0   145
#> [117,]  54   1      0        180        0   162
#> [118,]  54   7      1          0        1   100
#> [119,]  56   3      0        180        1   193
#> [120,]  55   5      1          4        1   120
#> [121,]  54   3      0        180        1   180
#> [122,]  55   6      0        180        0   170
#> [123,]  53  15      0         15        1    90
#> [124,]  53   4      0        180        1   150
#> [125,]  54  12      1          0        1   190
#> [126,]  56   3      0          8        1   139
#> [127,]  57   3      0          3        0   120
#> [128,]  54   7      1          2        0   129
#> [129,]  54   2      1          1        0   135
#> [130,]  52   9      1          3        0   170
#> [131,]  54   2      1          1        1   176
#> [132,]  57   5      1          3        1   138
#> [133,]  57   1      0        180        1   156
#> [134,]  57   1      0          1        1   100
#> [135,]  56   4      1          0        1   140
#> [136,]  52  15      1         14        0   130
#> [137,]  56  14      1         11        0   130
#> [138,]  53   3      1          0        1   200
#> [139,]  57  10      0        180        1   170
#> [140,]  58   8      0          8        1   130
#> [141,]  57   0      0          0        1   150
#> [142,]  53  21      1         13        1   130
#> [143,]  59   3      1          1        0   172
#> [144,]  57   4      0        180        1   119
#> [145,]  58   6      1          0        1    90
#> [146,]  53  15      1         10        1   130
#> [147,]  55   9      1          2        1   147
#> [148,]  55  13      0        166        1   140
#> [149,]  54  23      1          8        0   120
#> [150,]  53   4      0        147        1   145
#> [151,]  53   7      1          0        1   120
#> [152,]  57  11      1         10        1   129
#> [153,]  55   5      0          5        1   131
#> [154,]  54   7      1          0        1   141
#> [155,]  56   4      0          4        0   164
#> [156,]  58   9      1          0        1   180
#> [157,]  58   1      1          1        1   200
#> [158,]  56   7      1          5        1   120
#> [159,]  55   2      0          2        0   106
#> [160,]  57   1      0        180        0   148
#> [161,]  57   5      0        180        1   130
#> [162,]  57  10      1          9        0   103
#> [163,]  59   5      0        180        1   155
#> [164,]  59   4      1          0        1   152
#> [165,]  58   4      1          3        0   120
#> [166,]  59   2      1          1        0   140
#> [167,]  58   8      0        161        1   140
#> [168,]  61   4      1          3        0   151
#> [169,]  61   3      1          2        1   102
#> [170,]  58   1      0          1        1   100
#> [171,]  57  13      1         10        0   110
#> [172,]  57   2      1          0        1   116
#> [173,]  58  10      0         10        1   150
#> [174,]  57   4      1          3        0   138
#> [175,]  56  14      0         45        0   130
#> [176,]  57   3      1          2        0   120
#> [177,]  58  19      1         13        1   140
#> [178,]  56  13      1          6        1   158
#> [179,]  56  18      1         11        1   165
#> [180,]  58  11      0        172        1   135
#> [181,]  60  12      1          0        1   114
#> [182,]  56   8      1          8        0   120
#> [183,]  59  11      1          8        1   190
#> [184,]  57   1      0          1        0   126
#> [185,]  57  15      1         13        1   110
#> [186,]  59   5      1          2        0   182
#> [187,]  58   5      1          1        1   135
#> [188,]  59  10      0        180        0   160
#> [189,]  61   8      0         77        0   120
#> [190,]  61  13      0         13        0   210
#> [191,]  62   7      1          2        1   180
#> [192,]  57   3      1          0        0   100
#> [193,]  61  18      0        170        0   140
#> [194,]  61  28      1          7        0   133
#> [195,]  58   8      1          3        1   150
#> [196,]  61   7      0          7        1   150
#> [197,]  60   7      0          7        0   147
#> [198,]  59  13      1          2        0   198
#> [199,]  57  12      1          9        1   120
#> [200,]  62   4      1          0        0   160
#> [201,]  62   4      1          3        0   173
#> [202,]  58   2      0         30        0   202
#> [203,]  59   1      0        180        0   155
#> [204,]  59  16      1          9        1   133
#> [205,]  63   6      0         28        1   120
#> [206,]  61  13      0         13        0   120
#> [207,]  57  18      1          9        1    93
#> [208,]  58   7      0        180        1   150
#> [209,]  63   3      1          1        0   180
#> [210,]  61   7      0        180        0   135
#> [211,]  62   3      0        180        1   105
#> [212,]  63   4      0        180        1   190
#> [213,]  64   4      0        180        0   130
#> [214,]  60  18      1         13        0   132
#> [215,]  59   8      0        180        1   140
#> [216,]  61   9      1          9        1   150
#> [217,]  62   7      0          7        0   150
#> [218,]  59   1      0         22        1   162
#> [219,]  58   2      0        180        0   127
#> [220,]  60   7      1          5        1   141
#> [221,]  60   7      0          7        0   140
#> [222,]  59   5      1          1        0   148
#> [223,]  65  13      0        180        1   100
#> [224,]  63   1      0          1        0   162
#> [225,]  63   1      0          1        0   130
#> [226,]  61  15      1         13        0   170
#> [227,]  59   4      0          4        0   149
#> [228,]  64  10      1          9        0   160
#> [229,]  63  12      1         10        0   200
#> [230,]  66   1      1          0        1   120
#> [231,]  63  10      1          0        1   148
#> [232,]  65  36      1         11        0   140
#> [233,]  63   4      1          3        0   162
#> [234,]  66   3      1          1        0   127
#> [235,]  61  10      1          2        1   194
#> [236,]  63  12      1          9        0   114
#> [237,]  65   8      1          0        0   168
#> [238,]  65  10      1          8        1   120
#> [239,]  61  12      1         11        0   154
#> [240,]  64   9      0        180        0   150
#> [241,]  61   4      0        180        1   113
#> [242,]  63  16      1          7        1   110
#> [243,]  62   3      1          1        1   199
#> [244,]  65   6      0          9        0   112
#> [245,]  65   3      1          0        1    80
#> [246,]  63   2      1          1        0   180
#> [247,]  67  11      0         11        1   100
#> [248,]  66  18      1          5        0   142
#> [249,]  61  14      1          5        0   140
#> [250,]  61  15      1         10        0   130
#> [251,]  63   3      1          2        0   120
#> [252,]  63   2      1          0        0   140
#> [253,]  64  19      1          8        1   160
#> [254,]  67   6      0        180        1   170
#> [255,]  65  15      1         11        1   160
#> [256,]  68   5      1          4        1   150
#> [257,]  64  13      1         12        1   150
#> [258,]  64   6      1          0        1   125
#> [259,]  66   7      1          0        1   115
#> [260,]  66  13      1          0        0   118
#> [261,]  64  14      1         13        1   150
#> [262,]  65   3      0          3        0   105
#> [263,]  64   0      0          0        1   148
#> [264,]  67   4      1          3        0   130
#> [265,]  66   3      1          0        1   135
#> [266,]  66   6      1          0        1   140
#> [267,]  68   1      0        180        1   166
#> [268,]  68   5      0          5        1    90
#> [269,]  66  14      0        180        0   130
#> [270,]  65  17      1         14        1   100
#> [271,]  63   8      1          1        1   162
#> [272,]  65  18      1          3        0   120
#> [273,]  63   1      1          0        1   155
#> [274,]  63  10      0         18        1   130
#> [275,]  67  11      0         11        0   150
#> [276,]  68  11      0        180        0   160
#> [277,]  68  14      0         79        0   172
#> [278,]  66  12      1         10        1   150
#> [279,]  65   4      1          2        1   145
#> [280,]  65  11      1          6        0   130
#> [281,]  69  21      1         10        0   180
#> [282,]  68  14      1         13        1   140
#> [283,]  65   8      1          0        1    90
#> [284,]  69   1      1          0        0   170
#> [285,]  68  10      1         10        1   150
#> [286,]  65   1      1          0        0   133
#> [287,]  67   7      1          4        1   130
#> [288,]  65   6      0          6        0    80
#> [289,]  65  10      1          1        1   148
#> [290,]  66  19      1         12        1   150
#> [291,]  64   4      0        179        0   160
#> [292,]  70  15      1         12        1   132
#> [293,]  64  11      0         11        0   125
#> [294,]  64   4      0        180        1   140
#> [295,]  64   0      1          0        1   118
#> [296,]  66   7      1          5        1   131
#> [297,]  68   4      1          0        1   160
#> [298,]  69   4      1          3        1   150
#> [299,]  69  17      1         10        0   140
#> [300,]  64  21      0         21        1   155
#> [301,]  66   6      0        180        0   140
#> [302,]  68  18      1          0        1   160
#> [303,]  65   6      0        101        1   115
#> [304,]  68   4      0          4        1   190
#> [305,]  71   3      0          5        0   112
#> [306,]  70   7      1          0        1   190
#> [307,]  71  20      1          0        1   160
#> [308,]  66   9      1          3        1   151
#> [309,]  70   4      1          0        1   180
#> [310,]  70  14      0        171        0   166
#> [311,]  67  10      1          9        0   200
#> [312,]  69   0      0          0        1   148
#> [313,]  68   7      1          0        1   150
#> [314,]  65  14      1         13        1   150
#> [315,]  71   7      0          7        0   230
#> [316,]  66   2      0          2        1   228
#> [317,]  71   6      0         45        1   158
#> [318,]  69   5      0          5        1   142
#> [319,]  71   3      0        103        0   133
#> [320,]  69   3      0          3        1   130
#> [321,]  70  22      1         13        0   103
#> [322,]  72   7      0          7        1   110
#> [323,]  69   8      1          7        1   108
#> [324,]  67   3      0        180        0   110
#> [325,]  66   2      1          1        0   123
#> [326,]  69  19      0        180        0   130
#> [327,]  68  18      0         18        1   100
#> [328,]  66   2      0        180        0   130
#> [329,]  67   7      1          4        0   122
#> [330,]  69   4      1          3        0   132
#> [331,]  68   2      0          7        1   130
#> [332,]  69   8      1          2        0   121
#> [333,]  70   3      0        123        0   130
#> [334,]  72   5      1          4        0   170
#> [335,]  67  22      1          1        1   140
#> [336,]  68   3      0         19        0   135
#> [337,]  69   1      0          1        1   110
#> [338,]  69   5      0         76        0   120
#> [339,]  67   8      1          0        1   130
#> [340,]  72  13      1         11        1   195
#> [341,]  68  10      1          8        1   160
#> [342,]  72  30      1          0        1   145
#> [343,]  70   7      0          7        0   102
#> [344,]  71   6      0          9        0   120
#> [345,]  69  10      1          6        1   120
#> [346,]  70  11      0        180        1   210
#> [347,]  72  19      1          8        0   120
#> [348,]  72  12      1         10        0   170
#> [349,]  67   8      0        180        1   170
#> [350,]  67   5      1          0        1   147
#> [351,]  67   9      0        180        0   158
#> [352,]  73  13      0        152        1   130
#> [353,]  70   5      0        180        0   150
#> [354,]  67   4      1          1        0   134
#> [355,]  72   6      1          5        0   115
#> [356,]  71   1      0        173        1   188
#> [357,]  68  23      0        180        1   220
#> [358,]  71   3      1          2        0   150
#> [359,]  68   4      1          3        0   210
#> [360,]  72   5      0         28        0   120
#> [361,]  73   6      0        180        1   117
#> [362,]  69   8      1          1        0   164
#> [363,]  68   7      0        180        1   130
#> [364,]  72  16      1          1        1   130
#> [365,]  73   6      1          0        1   270
#> [366,]  73   7      0          7        1   140
#> [367,]  68  15      1         13        1   130
#> [368,]  70  13      1          9        0   100
#> [369,]  72   6      0        180        1   130
#> [370,]  73   0      0        180        1   161
#> [371,]  74   8      1          0        1    85
#> [372,]  73   4      0        180        1   154
#> [373,]  69   2      1          0        1   110
#> [374,]  71  15      1         11        0   165
#> [375,]  74  20      0         20        1   180
#> [376,]  68   9      0        180        1   120
#> [377,]  71  20      1         10        0   140
#> [378,]  74   0      1          0        1    90
#> [379,]  71   8      1          7        0   149
#> [380,]  73  10      1          8        0   106
#> [381,]  70  26      1         11        1   120
#> [382,]  74   4      0          4        0   120
#> [383,]  73   4      0         58        1   160
#> [384,]  70   3      0        180        1   154
#> [385,]  73   6      0        180        0   110
#> [386,]  72  15      1          0        1   150
#> [387,]  71   7      1          2        0   143
#> [388,]  72   8      1          0        1   140
#> [389,]  74   3      0          3        1   150
#> [390,]  73  17      1         11        0   140
#> [391,]  71  13      1          8        0   121
#> [392,]  69   2      1          1        1    80
#> [393,]  70   4      1          0        1   140
#> [394,]  71  14      1         13        1   170
#> [395,]  74   7      1          0        1   117
#> [396,]  72  10      1          8        1   153
#> [397,]  69   7      0        180        1   144
#> [398,]  72  15      1         13        0   156
#> [399,]  70   8      0          8        0   120
#> [400,]  71  10      1          9        1   120
#> [401,]  75   1      0          1        0   133
#> [402,]  73  10      1          9        1   146
#> [403,]  73  10      1         10        1   120
#> [404,]  73   1      0          1        1    80
#> [405,]  75  13      1          1        1   130
#> [406,]  71   4      0          4        0   134
#> [407,]  72  15      1         12        1   120
#> [408,]  73  10      1          8        0   120
#> [409,]  70   7      1          4        0   184
#> [410,]  72   1      1          1        0   168
#> [411,]  73  10      0        180        0   162
#> [412,]  72  11      0         11        1   140
#> [413,]  73   5      1          3        1   112
#> [414,]  76  25      1         12        1   170
#> [415,]  73  12      1         12        1   140
#> [416,]  72   2      0        180        0   120
#> [417,]  72   4      1          0        1   197
#> [418,]  71   3      1          0        0   144
#> [419,]  74  34      1          8        1   233
#> [420,]  71  32      1         12        1   107
#> [421,]  72   3      0        180        0   160
#> [422,]  76   5      0          5        1   130
#> [423,]  75   3      1          1        0   180
#> [424,]  72   7      1          2        0   142
#> [425,]  73  15      0         15        1   160
#> [426,]  71  16      0        180        0   140
#> [427,]  73  10      1         10        0   124
#> [428,]  74   7      0        180        1   150
#> [429,]  74   3      0          3        1   128
#> [430,]  76   1      0        180        0   114
#> [431,]  74   2      1          1        0   140
#> [432,]  74  19      1          4        1   200
#> [433,]  75  23      1         14        1   110
#> [434,]  74   2      0        180        0   190
#> [435,]  72   4      0         85        1   120
#> [436,]  73   4      1          3        1   125
#> [437,]  76  13      1         10        0   110
#> [438,]  75   7      0          7        0   190
#> [439,]  75   0      0          0        1   130
#> [440,]  75  12      0         12        1   160
#> [441,]  76  13      1          8        1   148
#> [442,]  75   4      1          2        1   188
#> [443,]  74   6      0        180        0   160
#> [444,]  76   4      0          4        1   155
#> [445,]  73   1      0         52        1   105
#> [446,]  73   0      0        180        0   156
#> [447,]  72   5      0        180        0   120
#> [448,]  78  12      1         11        1   160
#> [449,]  76   5      0        180        0   185
#> [450,]  76   5      1          0        1   167
#> [451,]  74   8      1          8        1   170
#> [452,]  75   9      0        180        1   140
#> [453,]  73  33      1         12        1   175
#> [454,]  77   5      1          0        0   123
#> [455,]  78   5      1          0        1   170
#> [456,]  73   7      1          0        0   174
#> [457,]  74   6      0         79        1   140
#> [458,]  75   3      1          1        1   171
#> [459,]  74   9      1          8        0   200
#> [460,]  79  10      1          8        0   190
#> [461,]  74   2      1          0        1   130
#> [462,]  78  18      0         18        1   144
#> [463,]  73  11      1          2        1   110
#> [464,]  74   2      0        180        0   100
#> [465,]  78   7      0          7        1   133
#> [466,]  74  15      0        180        1   172
#> [467,]  74   7      0          7        0   161
#> [468,]  78  32      1          9        1   198
#> [469,]  79   6      0        180        0   170
#> [470,]  80  10      1          6        1   147
#> [471,]  78   0      0        180        1   212
#> [472,]  78  13      1          5        0   130
#> [473,]  75   5      0        119        1   150
#> [474,]  75  12      1          1        1   120
#> [475,]  78  15      0        180        1   270
#> [476,]  80   8      0          8        1   120
#> [477,]  75  13      1          6        0   150
#> [478,]  74  10      1          8        0   135
#> [479,]  76   1      0          1        1    83
#> [480,]  79   4      0         80        0   145
#> [481,]  75   4      1          0        0   212
#> [482,]  77   2      1          0        1   143
#> [483,]  78  10      0        180        1   130
#> [484,]  76  11      1          0        0   120
#> [485,]  75  11      1          4        0   162
#> [486,]  75   3      0          3        0     0
#> [487,]  77  24      0         24        1   160
#> [488,]  79   8      0         32        1   120
#> [489,]  80   9      0         23        1   128
#> [490,]  80   6      0          6        1   150
#> [491,]  78   6      1          0        1   240
#> [492,]  78  11      1          1        1   140
#> [493,]  79   2      1          0        1   121
#> [494,]  78  11      1          8        1   118
#> [495,]  76   4      0          4        1   160
#> [496,]  79   4      0          4        1   125
#> [497,]  76  12      1         10        1   127
#> [498,]  77   6      0          6        1   107
#> [499,]  78  11      0        180        1   135
#> [500,]  77  31      1          3        1   161
#> [501,]  76   1      0          1        1    90
#> [502,]  78   7      1          0        1   110
#> [503,]  79   3      0          3        0   120
#> [504,]  77   6      0          6        1   144
#> [505,]  79   4      1          0        1   120
#> [506,]  81   1      0        180        0   120
#> [507,]  80  15      1         12        1   150
#> [508,]  77   9      1          4        0   141
#> [509,]  80  17      1         12        0   100
#> [510,]  76   7      0        161        0   151
#> [511,]  80  15      1          0        1    90
#> [512,]  81   4      1          2        1   126
#> [513,]  79  28      0        164        0   100
#> [514,]  80   9      0        118        1   186
#> [515,]  80   6      0        173        1   160
#> [516,]  78  32      0        180        1   130
#> [517,]  81   2      0        175        0   172
#> [518,]  78   7      0          7        1   147
#> [519,]  77  13      1          0        1   190
#> [520,]  80   5      1          1        1   108
#> [521,]  78   4      0        180        0   175
#> [522,]  79   3      0          3        1   101
#> [523,]  76   1      0        166        0   131
#> [524,]  78  20      1          0        1   109
#> [525,]  80   1      0          1        0   100
#> [526,]  77  10      1          8        1   130
#> [527,]  82   3      1          1        1   144
#> [528,]  77   5      0         85        0   188
#> [529,]  80   2      1          1        0   168
#> [530,]  79   6      0          6        0   152
#> [531,]  80   6      1          0        1   119
#> [532,]  78   2      0        180        0   148
#> [533,]  80   5      0          5        1   130
#> [534,]  82   1      1          0        1    82
#> [535,]  79  10      0        180        1   150
#> [536,]  77   4      0        180        1    98
#> [537,]  79   1      0        125        0   193
#> [538,]  82  21      1          2        0   155
#> [539,]  84  22      1         10        0   180
#> [540,]  79   4      0          4        1   121
#> [541,]  80   6      0          6        1   110
#> [542,]  83   9      1          5        1   170
#> [543,]  82   5      0        180        0   110
#> [544,]  83   5      0        180        0   148
#> [545,]  83   4      0        103        0    97
#> [546,]  81  11      1          8        0   160
#> [547,]  81   5      0        177        0    41
#> [548,]  80  11      1          8        0   170
#> [549,]  78  23      1         10        1   145
#> [550,]  79   4      0          4        1   183
#> [551,]  82   8      1          1        0   128
#> [552,]  79   1      0        180        1   170
#> [553,]  80   7      1          0        1   146
#> [554,]  83   8      0          8        0   115
#> [555,]  80   6      1          0        1   150
#> [556,]  80  11      1          8        0   110
#> [557,]  81   8      0        180        0   146
#> [558,]  80   8      1          7        0   160
#> [559,]  79   7      0        177        0   197
#> [560,]  79   0      1          0        1    96
#> [561,]  85   4      0        180        0    90
#> [562,]  83   2      0          2        1   155
#> [563,]  82   6      0        128        1   100
#> [564,]  84   4      0        167        0   198
#> [565,]  80   3      1          1        1   230
#> [566,]  82  23      1          0        0   110
#> [567,]  84   4      0          4        1    85
#> [568,]  81   1      0          1        1   150
#> [569,]  81   4      0         90        1   138
#> [570,]  79   9      1          8        0   150
#> [571,]  85   3      1          2        1   160
#> [572,]  80  13      1          8        1   140
#> [573,]  79   4      0          4        1    60
#> [574,]  83   1      0          1        1   100
#> [575,]  82  19      0         19        0   120
#> [576,]  83   9      0        180        0   198
#> [577,]  79  14      1          0        0   110
#> [578,]  83   3      0        114        0    98
#> [579,]  81  14      1         12        1   128
#> [580,]  82   0      0          2        1   100
#> [581,]  85   9      1          6        1   160
#> [582,]  83   1      0        180        0   160
#> [583,]  81   4      0          4        0   175
#> [584,]  82  16      1          8        0   103
#> [585,]  82   5      1          0        1   146
#> [586,]  81   4      0          4        0   160
#> [587,]  86  12      0        180        1   120
#> [588,]  83  12      1          2        1   170
#> [589,]  81  19      1         14        0   120
#> [590,]  82   3      1          2        0   130
#> [591,]  82  15      1          0        0   183
#> [592,]  80   2      0         88        0   135
#> [593,]  86   8      0          8        1   132
#> [594,]  84   6      0        165        0   145
#> [595,]  82   9      0        180        1   134
#> [596,]  85   3      0          3        1   118
#> [597,]  81   2      1          0        1   118
#> [598,]  81   4      0        180        0   160
#> [599,]  83   9      0        180        1   149
#> [600,]  82   1      0        180        1   193
#> [601,]  83   4      0          4        0   130
#> [602,]  87   2      0          5        1   137
#> [603,]  82  14      1         11        1   103
#> [604,]  83  19      0         43        0   150
#> [605,]  83  10      1          0        1   190
#> [606,]  86   2      0        180        1   169
#> [607,]  88  14      1          3        1   130
#> [608,]  84   3      0          3        1   121
#> [609,]  83  13      1         12        0   170
#> [610,]  84   7      1          2        0   148
#> [611,]  84   3      0        180        1   170
#> [612,]  82   4      0          4        0   130
#> [613,]  86  13      0        177        0   163
#> [614,]  85   3      0          3        1   113
#> [615,]  86   6      1          1        0   112
#> [616,]  83  20      1          3        1   150
#> [617,]  88   4      0          4        1   115
#> [618,]  85  22      0         22        1   184
#> [619,]  83   9      0         65        1   150
#> [620,]  87   2      0        180        1   130
#> [621,]  86   6      0         46        0   173
#> [622,]  88   3      0        115        0   110
#> [623,]  88   2      0        180        1    68
#> [624,]  83   3      0          3        1   130
#> [625,]  87   8      0          8        1   157
#> [626,]  86  15      1          8        1   109
#> [627,]  88   4      0          4        0    86
#> [628,]  89   4      0          4        1   153
#> [629,]  87   6      0        180        1   110
#> [630,]  87   1      0          1        0   170
#> [631,]  84   8      0        180        1   119
#> [632,]  87  29      0         29        1    97
#> [633,]  84   0      0        180        1   136
#> [634,]  88   1      0          1        0   135
#> [635,]  86   4      0        180        1   145
#> [636,]  91   8      0          8        0   100
#> [637,]  87   6      1          0        0   125
#> [638,]  91  10      0        145        0   135
#> [639,]  88   7      0         24        0   119
#> [640,]  88   8      0         50        1   154
#> [641,]  90  11      1         10        1   186
#> [642,]  87   6      0        126        1   168
#> [643,]  90   4      1          0        0   121
#> [644,]  91   1      0          1        1    74
#> [645,]  87  43      0        178        1   130
#> [646,]  90   5      1          0        1   125
#> [647,]  89   3      1          1        1   160
#> [648,]  91   3      0         33        1   137
#> [649,]  88   5      0        158        0   100
#> [650,]  87   7      0         74        1   105
#> [651,]  91   5      0        169        1   176
#> [652,]  89  52      0         52        1   130
#> [653,]  91   0      0          0        0     0
#> [654,]  90  18      0        180        0   188
#> [655,]  91   4      1          0        1   120
#> [656,]  90  19      1         11        1   129
#> [657,]  94   6      0         50        0    78
#> [658,]  90   1      0          1        1   118
#> [659,]  94   8      0          8        1   142
#> [660,]  92   4      0         76        1   149
#> [661,]  91   1      0        180        0   158
#> [662,]  90  16      0         16        1   106
#> [663,]  90   3      0         67        0   162
#> [664,]  95   8      1          5        1   150
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+   5.0+   2.0+ 115.0  180.0+  12.0    5.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+   3.0  180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+   2.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+   6.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+   5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+
#>  [61] 172.0+ 180.0+ 180.0+   2.0    1.0  179.0+ 180.0+ 180.0+ 180.0+   4.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+   7.0   36.0    4.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+
#>  [91] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+ 152.0+   7.0+
#> [101]   6.0+ 180.0+ 180.0+ 180.0+  13.0+ 180.0+ 174.0+  28.0    6.0+   1.0 
#> [111] 180.0+ 180.0+ 180.0+ 180.0+ 175.0+   2.0  180.0+   7.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+  15.0+ 180.0+  12.0+   8.0    3.0+ 180.0+ 180.0+ 180.0+
#> [131] 180.0+ 140.0  180.0+   1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [141]   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  15.0  166.0+ 180.0+ 147.0+
#> [151] 180.0+ 180.0+   5.0+ 180.0+   4.0+   9.0+   1.0  180.0+   2.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 161.0+ 180.0+   3.0    1.0 
#> [171] 180.0+ 180.0+  10.0+ 180.0+  45.0    3.0+  19.0  180.0+ 180.0+ 172.0+
#> [181] 172.0+   8.0  180.0+   1.0+  15.0  180.0+ 180.0+ 180.0+  77.0   13.0+
#> [191] 180.0+ 180.0+ 170.0   94.0  180.0+   7.0    7.0+ 180.0+ 180.0+ 180.0+
#> [201] 180.0+  30.0  180.0+ 180.0+  28.0   13.0+  18.0  180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+  22.0  180.0+  84.0 
#> [221]   7.0+ 180.0+ 180.0+   1.0    1.0  180.0+   4.0+ 167.0  180.0+ 180.0+
#> [231] 180.0+  36.0  180.0+   3.0+  88.0   12.0  180.0+ 180.0+  12.0+ 180.0+
#> [241] 180.0+ 180.0+ 180.0+   9.0    3.0  180.0+  11.0+  18.0+ 180.0+ 180.0+
#> [251]   3.0+   2.0+ 103.0  180.0+ 180.0+   5.0+  13.0  180.0+ 179.0+ 166.0+
#> [261]  14.0+   3.0    0.5+ 180.0+   3.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+
#> [271] 180.0+ 123.0+   1.0+  18.0   11.0+ 180.0+  79.0   80.0    4.0+ 180.0+
#> [281] 174.0+ 180.0+   8.0+ 175.0   10.0  180.0+ 180.0+   6.0  180.0+  19.0+
#> [291] 179.0+ 180.0+  11.0+ 180.0+   0.5    7.0+ 180.0+ 152.0+ 180.0+  21.0+
#> [301] 180.0+  18.0+ 101.0    4.0    5.0    7.0+ 180.0+ 180.0+ 180.0+ 171.0 
#> [311] 174.0+   0.5  180.0+  14.0+   7.0+   2.0   45.0    5.0+ 103.0    3.0+
#> [321] 180.0+   7.0    8.0+ 180.0+   2.0+ 180.0+  18.0  180.0+   7.0  180.0+
#> [331]   7.0    8.0+ 123.0  180.0+  51.0   19.0    1.0   76.0  180.0+ 132.0 
#> [341]  10.0+ 162.0    7.0+   9.0  180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+
#> [351] 180.0+ 152.0  180.0+  76.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+  28.0 
#> [361] 180.0+ 180.0+ 180.0+  16.0+   6.0    7.0+  15.0   13.0+ 180.0+ 180.0+
#> [371] 180.0+ 180.0+   2.0  180.0+  20.0  180.0+  20.0    0.5    8.0   87.0 
#> [381] 180.0+   4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+
#> [391] 175.0    2.0  180.0+  14.0+ 180.0+  10.0+ 180.0+ 180.0+   8.0+ 179.0+
#> [401]   1.0  180.0+  15.0    1.0   13.0    4.0+ 180.0+  10.0  104.0+   1.0 
#> [411] 180.0+  11.0    5.0  180.0+  12.0  180.0+ 180.0+ 180.0+  34.0  177.0+
#> [421] 180.0+   5.0  180.0+   7.0   15.0+ 180.0+  10.0  180.0+   3.0  180.0+
#> [431] 180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+ 174.0+   7.0    0.5   12.0 
#> [441] 180.0+  46.0  180.0+   4.0   52.0  180.0+ 180.0+  12.0  180.0+ 180.0+
#> [451]   8.0  180.0+  33.0    5.0  180.0+   7.0+  79.0    3.0  168.0+ 180.0+
#> [461] 176.0+  18.0   11.0  180.0+   7.0  180.0+   7.0   32.0  180.0+  10.0 
#> [471] 180.0+ 172.0  119.0   12.0  180.0+   8.0  180.0+ 180.0+   1.0   80.0 
#> [481]   4.0+   2.0  180.0+  11.0  152.0+   3.0   24.0   32.0   23.0    6.0 
#> [491] 180.0+ 180.0+ 180.0+  11.0    4.0    4.0  180.0+   6.0  180.0+ 171.0 
#> [501]   1.0   43.0    3.0    6.0  138.0  180.0+ 180.0+  71.0   17.0  161.0 
#> [511] 180.0+  93.0  164.0  118.0  173.0  180.0+ 175.0+   7.0+  22.0    5.0+
#> [521] 180.0+   3.0  166.0+  20.0+   1.0   10.0  180.0+  85.0   10.0    6.0+
#> [531]   6.0  180.0+   5.0    1.0  180.0+ 180.0+ 125.0  180.0+ 180.0+   4.0 
#> [541]   6.0    9.0+ 180.0+ 180.0+ 103.0  180.0+ 177.0+ 169.0   70.0    4.0 
#> [551] 180.0+ 180.0+   7.0+   8.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+   0.5 
#> [561] 180.0+   2.0  128.0  167.0    3.0+  62.0    4.0    1.0   90.0  180.0+
#> [571] 180.0+ 180.0+   4.0    1.0   19.0  180.0+ 180.0+ 114.0  180.0+   2.0 
#> [581] 180.0+ 180.0+   4.0+  16.0+   5.0+   4.0+ 180.0+  77.0  180.0+   3.0 
#> [591]  83.0   88.0    8.0  165.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [601]   4.0+   5.0  174.0   43.0  180.0+ 180.0+  14.0    3.0   13.0  180.0+
#> [611] 180.0+   4.0  177.0    3.0+   6.0+  20.0    4.0   22.0   65.0  180.0+
#> [621]  46.0  115.0  180.0+   3.0+   8.0+ 180.0+   4.0    4.0  180.0+   1.0+
#> [631] 180.0+  29.0  180.0+   1.0+ 180.0+   8.0   25.0  145.0   24.0   50.0 
#> [641]  11.0  126.0    4.0    1.0  178.0+  89.0    3.0+  33.0  158.0   74.0 
#> [651] 169.0   52.0    0.5  180.0+   4.0  180.0+  50.0    1.0+   8.0+  76.0 
#> [661] 180.0+  16.0   67.0    8.0    7.0+   0.5   69.0    2.0  180.0+  15.0+
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
#>    0.847818 
```
