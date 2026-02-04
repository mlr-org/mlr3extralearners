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
#> min 0.00377    43   2.796 0.1992       6
#> 1se 0.08124    10   2.983 0.1820       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  33   2      0          2        0   150
#>   [2,]  35   5      1          2        0   172
#>   [3,]  35  10      1          9        0   106
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
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
#>  [16,]  42   3      1          1        1   130
#>  [17,]  37   1      1          0        1   146
#>  [18,]  40   2      1          1        1   148
#>  [19,]  42   2      0        180        1   100
#>  [20,]  38   5      1          3        0   125
#>  [21,]  42   2      0          2        0   140
#>  [22,]  40   6      0        180        1   138
#>  [23,]  40  11      1         10        1   120
#>  [24,]  43   3      1          0        1   100
#>  [25,]  41   2      1          1        0   166
#>  [26,]  40   1      1          0        1   145
#>  [27,]  43   4      1          0        1   130
#>  [28,]  42  15      1         13        1   125
#>  [29,]  40   3      1          1        0   170
#>  [30,]  42  12      1         10        1   170
#>  [31,]  43   2      1          1        1   116
#>  [32,]  42   2      0        180        1   124
#>  [33,]  44   5      1          1        0   170
#>  [34,]  45   3      0        180        1   154
#>  [35,]  41  10      1          8        0   150
#>  [36,]  44   3      0        180        0   141
#>  [37,]  41  13      1          1        0   140
#>  [38,]  45   6      0        180        1   170
#>  [39,]  44   2      1          1        1   150
#>  [40,]  43   2      0        180        1   140
#>  [41,]  46   2      1          1        0   126
#>  [42,]  47   4      1          3        0   118
#>  [43,]  48  15      0        180        1   160
#>  [44,]  44   3      1          0        1   180
#>  [45,]  46   7      1          2        0   166
#>  [46,]  45   4      1          0        0   124
#>  [47,]  43  10      0        180        0   185
#>  [48,]  47   6      1          0        1   116
#>  [49,]  46  13      1         10        0   100
#>  [50,]  47   4      1          3        1   160
#>  [51,]  49   5      0         73        1   136
#>  [52,]  45   5      0          5        0   141
#>  [53,]  46   2      1          1        1   122
#>  [54,]  46   6      1          0        1   100
#>  [55,]  44   4      1          0        1   114
#>  [56,]  44   9      1          8        1   135
#>  [57,]  45   5      0        180        1   190
#>  [58,]  46   5      1          3        0   130
#>  [59,]  46   4      0        180        1   121
#>  [60,]  44   2      0        180        0   142
#>  [61,]  45   9      1          0        1   145
#>  [62,]  48   3      0        180        0   154
#>  [63,]  48  12      1         11        0   200
#>  [64,]  47   5      1          3        1   130
#>  [65,]  47   9      1          6        0   170
#>  [66,]  46   3      1          0        1   119
#>  [67,]  49   4      0        180        0   117
#>  [68,]  50   1      1          0        1   129
#>  [69,]  47   7      0        180        0   145
#>  [70,]  50   4      1          1        0   125
#>  [71,]  49   7      1          7        1   110
#>  [72,]  46   9      1          9        1   122
#>  [73,]  50   7      0        180        1   110
#>  [74,]  49   2      0          2        0   105
#>  [75,]  49  15      1         11        1   160
#>  [76,]  47   2      0        180        0   150
#>  [77,]  49  23      0        179        1   112
#>  [78,]  46   6      1          0        1   156
#>  [79,]  50   7      1          0        1    92
#>  [80,]  50   1      1          0        0   150
#>  [81,]  50   9      0        180        0   130
#>  [82,]  47   8      0        180        0   160
#>  [83,]  47   6      0        180        1   162
#>  [84,]  52   2      0        180        0   155
#>  [85,]  46   3      0        180        1   120
#>  [86,]  52   4      1          4        0   152
#>  [87,]  49   9      1          3        0   102
#>  [88,]  49  15      0        180        1   160
#>  [89,]  53   5      0        180        1   140
#>  [90,]  54  17      1         12        1   102
#>  [91,]  53   7      1          0        0   199
#>  [92,]  51   3      1          1        0   140
#>  [93,]  50   2      0          5        1   106
#>  [94,]  53   8      1          7        0   160
#>  [95,]  53   4      0          4        0   140
#>  [96,]  52  14      1          7        1   200
#>  [97,]  48   6      0        180        0   160
#>  [98,]  48  11      1         10        0   120
#>  [99,]  53   4      1          0        1   156
#> [100,]  54   9      1          0        1   138
#> [101,]  49  16      0         16        0   125
#> [102,]  55   3      1          1        0   150
#> [103,]  54  23      1         10        0   131
#> [104,]  54   9      1          1        0   130
#> [105,]  55   4      1          2        0   150
#> [106,]  52   4      0        180        1   180
#> [107,]  51  13      1         11        0   145
#> [108,]  50   5      1          4        1   150
#> [109,]  54   4      1          0        1   121
#> [110,]  52   4      0        180        0   183
#> [111,]  55  28      1         13        1   160
#> [112,]  49   6      1          0        1   130
#> [113,]  49   1      0          1        1   110
#> [114,]  53   9      0          9        1    95
#> [115,]  56   4      1          1        1   130
#> [116,]  52   5      0        175        1   117
#> [117,]  55   1      0        180        0   127
#> [118,]  54   1      0        180        0   162
#> [119,]  54   7      1          0        1   100
#> [120,]  56   3      0        180        1   193
#> [121,]  56   2      0        180        0   132
#> [122,]  55   5      1          4        1   120
#> [123,]  52   8      0        180        0   119
#> [124,]  53  18      1          9        1   150
#> [125,]  54   3      0        180        1   180
#> [126,]  55   6      0        180        0   170
#> [127,]  53  10      1          9        0   172
#> [128,]  52  16      1         14        0   170
#> [129,]  53  15      0         15        1    90
#> [130,]  53   4      0        180        1   150
#> [131,]  55   6      0        180        1   100
#> [132,]  55   2      0        134        1   140
#> [133,]  54   3      0        180        0   128
#> [134,]  54   2      1          1        0   135
#> [135,]  52   9      1          3        0   170
#> [136,]  54   2      1          1        1   176
#> [137,]  57   5      1          3        1   138
#> [138,]  57   1      0        180        1   156
#> [139,]  57   1      0          1        1   100
#> [140,]  56   4      1          0        1   140
#> [141,]  55  11      1          7        0   104
#> [142,]  52  15      1         14        0   130
#> [143,]  53   3      1          0        1   200
#> [144,]  57  10      0        180        1   170
#> [145,]  58   8      0          8        1   130
#> [146,]  55   3      1          1        1   156
#> [147,]  57   0      0          0        1   150
#> [148,]  57   4      0        180        1   119
#> [149,]  53  15      1         10        1   130
#> [150,]  54  17      1          8        1   227
#> [151,]  55  13      0        166        1   140
#> [152,]  54  23      1          8        0   120
#> [153,]  57   4      1          2        1   185
#> [154,]  53   4      0        147        1   145
#> [155,]  53   7      1          0        1   120
#> [156,]  55   3      1          2        0   140
#> [157,]  55   5      0          5        1   131
#> [158,]  56   4      0          4        0   164
#> [159,]  59  15      1         10        0   140
#> [160,]  58   9      1          0        1   180
#> [161,]  55   5      1          0        0   140
#> [162,]  59   9      1          1        1   125
#> [163,]  59   3      0        180        0   120
#> [164,]  58   4      1          0        1   160
#> [165,]  57   2      0          2        1   120
#> [166,]  55   5      1          0        1   160
#> [167,]  57  10      1          9        0   103
#> [168,]  59   6      1          0        1   140
#> [169,]  59   4      1          0        1   152
#> [170,]  58  26      1          0        1   189
#> [171,]  61   9      0          9        1   160
#> [172,]  60   0      1          0        1    80
#> [173,]  59   2      1          1        0   140
#> [174,]  58   8      0        161        1   140
#> [175,]  61   4      1          3        0   151
#> [176,]  61   3      1          2        1   102
#> [177,]  58   1      0          1        1   100
#> [178,]  61  20      1         13        0   130
#> [179,]  57  13      1         10        0   110
#> [180,]  57   2      1          0        1   116
#> [181,]  58  10      0         10        1   150
#> [182,]  57  11      0        180        1   150
#> [183,]  56  14      0         45        0   130
#> [184,]  58  19      1         13        1   140
#> [185,]  56  13      1          6        1   158
#> [186,]  56  18      1         11        1   165
#> [187,]  59   9      1          0        1    80
#> [188,]  55   4      1          3        1   160
#> [189,]  58  11      0        172        1   135
#> [190,]  55   9      1          7        1   135
#> [191,]  61   4      1          0        1   115
#> [192,]  56   8      1          8        0   120
#> [193,]  59  11      1          8        1   190
#> [194,]  57   1      0          1        0   126
#> [195,]  57  15      1         13        1   110
#> [196,]  59   5      1          2        0   182
#> [197,]  61   8      0         77        0   120
#> [198,]  61  13      0         13        0   210
#> [199,]  62  10      1          0        1   153
#> [200,]  57   3      1          0        0   100
#> [201,]  61  28      1          7        0   133
#> [202,]  61   7      0          7        1   150
#> [203,]  60   7      0          7        0   147
#> [204,]  59  13      1          2        0   198
#> [205,]  57  12      1          9        1   120
#> [206,]  62   4      1          0        0   160
#> [207,]  60  17      1          8        1   140
#> [208,]  58   3      1          0        1   146
#> [209,]  58   2      0         30        0   202
#> [210,]  61  13      0         13        0   120
#> [211,]  57  18      1          9        1    93
#> [212,]  61   5      0          5        1   160
#> [213,]  57   2      1          1        0   159
#> [214,]  62  17      1         10        1   180
#> [215,]  62   1      1          0        1   172
#> [216,]  58   7      0        180        1   150
#> [217,]  63   3      1          1        0   180
#> [218,]  61   7      0        180        0   135
#> [219,]  63   4      1          1        0   155
#> [220,]  60  18      1         13        0   132
#> [221,]  59   8      0        180        1   140
#> [222,]  58   9      1          9        0   110
#> [223,]  59   1      0         22        1   162
#> [224,]  60   7      0          7        0   140
#> [225,]  59   5      1          1        0   148
#> [226,]  60   7      1          1        1    90
#> [227,]  65  13      0        180        1   100
#> [228,]  63   1      0          1        0   130
#> [229,]  62   6      0        180        0   170
#> [230,]  60   3      0          3        0   168
#> [231,]  62   6      0          6        0   120
#> [232,]  63  12      1         10        0   200
#> [233,]  59  10      0        180        1   130
#> [234,]  60   8      0         17        1   130
#> [235,]  61   6      1          1        1   117
#> [236,]  64  12      1         11        0   160
#> [237,]  63  10      1          0        1   148
#> [238,]  63  14      1          9        0   123
#> [239,]  65  36      1         11        0   140
#> [240,]  63   4      1          3        0   162
#> [241,]  61  10      1          2        1   194
#> [242,]  63  12      1          9        0   114
#> [243,]  63   7      0        180        0   120
#> [244,]  65   8      1          0        0   168
#> [245,]  65  10      1          8        1   120
#> [246,]  64   0      0          0        1    90
#> [247,]  60   6      0        180        0   130
#> [248,]  64  21      1         10        0   190
#> [249,]  61  12      1         11        0   154
#> [250,]  64   9      0        180        0   150
#> [251,]  61   4      0        180        1   113
#> [252,]  65   3      0        180        1   190
#> [253,]  63  16      1          7        1   110
#> [254,]  66   6      1          1        1   130
#> [255,]  65   6      0          9        0   112
#> [256,]  65   3      1          0        1    80
#> [257,]  63   2      1          1        0   180
#> [258,]  67  11      0         11        1   100
#> [259,]  64   2      0          2        0   201
#> [260,]  66  18      1          5        0   142
#> [261,]  62   9      0        180        0   145
#> [262,]  61  14      1          5        0   140
#> [263,]  61  15      1         10        0   130
#> [264,]  63   3      1          2        0   120
#> [265,]  65   8      1          0        1   140
#> [266,]  65  15      1         11        1   160
#> [267,]  64  13      1         12        1   150
#> [268,]  64   6      1          0        1   125
#> [269,]  66  13      1          0        0   118
#> [270,]  64  14      1         13        1   150
#> [271,]  64   0      0          0        1   148
#> [272,]  67   4      1          3        0   130
#> [273,]  66   3      1          0        1   135
#> [274,]  68   1      0        180        1   166
#> [275,]  64  10      1          9        1   110
#> [276,]  67   8      1          1        1   130
#> [277,]  68   5      0          5        1    90
#> [278,]  63  10      0         16        1   160
#> [279,]  66  14      0        180        0   130
#> [280,]  64   1      0          1        1   120
#> [281,]  65  18      1          3        0   120
#> [282,]  63   1      1          0        1   155
#> [283,]  67  11      0         11        0   150
#> [284,]  68  11      0        180        0   160
#> [285,]  68  14      0         79        0   172
#> [286,]  66  12      1         10        1   150
#> [287,]  65   4      1          2        1   145
#> [288,]  69  12      0         15        1   140
#> [289,]  66  15      1         13        1   160
#> [290,]  63   2      0        180        0   150
#> [291,]  65  11      1          6        0   130
#> [292,]  69  21      1         10        0   180
#> [293,]  66   9      1          8        0   130
#> [294,]  63   8      0        180        1   120
#> [295,]  65   8      1          0        1    90
#> [296,]  66   3      0          3        1   138
#> [297,]  69   1      1          0        0   170
#> [298,]  67   1      0        180        1   160
#> [299,]  65   1      1          0        0   133
#> [300,]  67   2      0        180        0   184
#> [301,]  65   6      0          6        0    80
#> [302,]  66  19      1         12        1   150
#> [303,]  67  12      1         12        0   160
#> [304,]  69   6      0         99        1   140
#> [305,]  64   4      0        180        1   140
#> [306,]  64   0      1          0        1   118
#> [307,]  67   2      0         18        0   131
#> [308,]  66   4      0        180        0   177
#> [309,]  68   4      1          0        1   160
#> [310,]  69  17      1         10        0   140
#> [311,]  69   8      0         93        0   140
#> [312,]  66   6      0        180        0   140
#> [313,]  65   1      0          1        1   120
#> [314,]  68  18      1          0        1   160
#> [315,]  65   6      0        101        1   115
#> [316,]  68   4      0          4        1   190
#> [317,]  71   3      0          5        0   112
#> [318,]  70   7      1          0        1   190
#> [319,]  68   7      0        150        0   210
#> [320,]  67   2      0        180        0   128
#> [321,]  66   1      1          1        1   165
#> [322,]  70   4      1          0        1   180
#> [323,]  69   8      0        180        1   153
#> [324,]  70  14      0        171        0   166
#> [325,]  66   4      0        180        0   130
#> [326,]  67   6      1          4        0   130
#> [327,]  65   2      0        180        0   130
#> [328,]  68   7      1          0        1   150
#> [329,]  69   3      1          2        0   151
#> [330,]  67  14      1         13        0   130
#> [331,]  71   7      0          7        0   230
#> [332,]  66   2      0          2        1   228
#> [333,]  71   6      0         45        1   158
#> [334,]  69   5      0          5        1   142
#> [335,]  71   3      0        103        0   133
#> [336,]  69   3      0          3        1   130
#> [337,]  67   1      0         36        1   104
#> [338,]  67   5      0          5        0   130
#> [339,]  68   6      0        180        0   145
#> [340,]  69   8      1          5        1   195
#> [341,]  69   6      1          4        1   174
#> [342,]  72   7      0          7        1   110
#> [343,]  67   3      0        180        0   110
#> [344,]  66   2      1          1        0   123
#> [345,]  69  19      0        180        0   130
#> [346,]  68  18      0         18        1   100
#> [347,]  67  14      0        172        1   140
#> [348,]  69  11      1          0        1   120
#> [349,]  66   2      0        180        0   130
#> [350,]  69   4      1          3        0   132
#> [351,]  70   9      0        180        1   142
#> [352,]  68   3      0         19        0   135
#> [353,]  69   1      0          1        1   110
#> [354,]  67   1      0          1        1    60
#> [355,]  67   4      0         60        1   136
#> [356,]  69   5      0         76        0   120
#> [357,]  67   8      1          0        1   130
#> [358,]  72  13      1         11        1   195
#> [359,]  66  24      1         13        0   130
#> [360,]  72  30      1          0        1   145
#> [361,]  70   7      0          7        0   102
#> [362,]  68   7      1          2        0   135
#> [363,]  71   6      0          9        0   120
#> [364,]  69  10      1          6        1   120
#> [365,]  72  19      1          8        0   120
#> [366,]  67   8      0        180        1   170
#> [367,]  73  13      0        152        1   130
#> [368,]  70   5      0        180        0   150
#> [369,]  72   2      0          2        1   100
#> [370,]  71   1      0        173        1   188
#> [371,]  68  23      0        180        1   220
#> [372,]  68   4      1          3        0   210
#> [373,]  71   5      0        180        0   191
#> [374,]  69   8      1          1        0   164
#> [375,]  68   7      0        180        1   130
#> [376,]  72  16      1          1        1   130
#> [377,]  70   4      0        180        0   180
#> [378,]  69   1      1          0        0   155
#> [379,]  73   6      1          0        1   270
#> [380,]  73   7      0          7        1   140
#> [381,]  70   3      0          3        1   159
#> [382,]  70  13      1          9        0   100
#> [383,]  72   6      0        180        1   130
#> [384,]  73   4      0        180        1   154
#> [385,]  69   2      1          0        1   110
#> [386,]  71   3      1          1        0   150
#> [387,]  71  15      1         11        0   165
#> [388,]  74  20      0         20        1   180
#> [389,]  68   9      0        180        1   120
#> [390,]  71  20      1         10        0   140
#> [391,]  74   0      1          0        1    90
#> [392,]  73   3      1          0        1   136
#> [393,]  70   5      1          0        1   190
#> [394,]  71   3      1          2        1   190
#> [395,]  73  10      1          8        0   106
#> [396,]  70  26      1         11        1   120
#> [397,]  74   4      0          4        0   120
#> [398,]  73   4      0         58        1   160
#> [399,]  72   5      1          3        1   160
#> [400,]  70   3      0        180        1   154
#> [401,]  72  15      1          0        1   150
#> [402,]  71   7      1          2        0   143
#> [403,]  73  17      1         11        0   140
#> [404,]  71  13      1          8        0   121
#> [405,]  72  10      1          8        1   153
#> [406,]  69   7      0        180        1   144
#> [407,]  72  15      1         13        0   156
#> [408,]  70   8      0          8        0   120
#> [409,]  71  10      1          9        1   120
#> [410,]  73  10      1          9        1   146
#> [411,]  72  10      1          9        1   160
#> [412,]  73  10      1         10        1   120
#> [413,]  74  15      1          9        1   179
#> [414,]  71   2      0         10        1   112
#> [415,]  73   1      0          1        1    80
#> [416,]  75   9      1          7        0   140
#> [417,]  75  13      1          1        1   130
#> [418,]  71  11      1          8        0   110
#> [419,]  71   4      0          4        0   134
#> [420,]  72  15      1         12        1   120
#> [421,]  70   7      1          4        0   184
#> [422,]  72   7      0         57        1   145
#> [423,]  72  11      0         11        1   140
#> [424,]  70   3      0          3        0   150
#> [425,]  73   5      1          3        1   112
#> [426,]  76  25      1         12        1   170
#> [427,]  73  12      1         12        1   140
#> [428,]  75   1      0        180        1   140
#> [429,]  72   4      1          0        1   197
#> [430,]  71   3      1          0        0   144
#> [431,]  73   5      0        180        0   126
#> [432,]  73   4      0        180        0   124
#> [433,]  74  34      1          8        1   233
#> [434,]  76   3      1          0        1   120
#> [435,]  71  32      1         12        1   107
#> [436,]  72   3      0        180        0   160
#> [437,]  76   5      0          5        1   130
#> [438,]  77  11      0         11        1   150
#> [439,]  72   7      1          2        0   142
#> [440,]  73  15      0         15        1   160
#> [441,]  71  16      0        180        0   140
#> [442,]  73  10      1         10        0   124
#> [443,]  74   3      0          3        1   128
#> [444,]  74   2      1          1        0   140
#> [445,]  76   8      1          0        1   141
#> [446,]  74  19      1          4        1   200
#> [447,]  73   6      0          6        1   114
#> [448,]  75  23      1         14        1   110
#> [449,]  74   2      0        180        0   190
#> [450,]  72   4      0         85        1   120
#> [451,]  72   4      1          3        0   160
#> [452,]  76  17      1          0        1   200
#> [453,]  76  13      1         10        0   110
#> [454,]  75   4      1          0        1   122
#> [455,]  75   0      0          0        1   130
#> [456,]  75  12      0         12        1   160
#> [457,]  76  13      1          8        1   148
#> [458,]  75   4      1          2        1   188
#> [459,]  74   6      0        180        0   160
#> [460,]  76   4      0          4        1   155
#> [461,]  75   1      0          1        1   125
#> [462,]  74   2      0        180        0   111
#> [463,]  73   1      0         52        1   105
#> [464,]  72   5      0        180        0   120
#> [465,]  78  12      1         11        1   160
#> [466,]  76   5      0        180        0   185
#> [467,]  75   9      0        180        1   140
#> [468,]  73  33      1         12        1   175
#> [469,]  77   5      1          0        0   123
#> [470,]  73  10      1          9        0   146
#> [471,]  77  12      0        180        0   130
#> [472,]  77   1      1          0        1    90
#> [473,]  78   5      1          0        1   170
#> [474,]  73   7      1          0        0   174
#> [475,]  74   9      1          8        0   200
#> [476,]  75   6      0        180        0   150
#> [477,]  79  10      1          8        0   190
#> [478,]  74   2      1          0        1   130
#> [479,]  78  18      0         18        1   144
#> [480,]  77   3      0        180        0   110
#> [481,]  76  29      0         47        0    90
#> [482,]  78   7      0          7        1   133
#> [483,]  74  15      0        180        1   172
#> [484,]  76  13      1          1        1   170
#> [485,]  78  32      1          9        1   198
#> [486,]  79   6      0        180        0   170
#> [487,]  78   0      0        180        1   212
#> [488,]  78  13      1          5        0   130
#> [489,]  75   5      0        119        1   150
#> [490,]  78  15      0        180        1   270
#> [491,]  75  13      1          6        0   150
#> [492,]  74  10      1          8        0   135
#> [493,]  76   1      0          1        1    83
#> [494,]  79   4      0         80        0   145
#> [495,]  78  12      1          9        0   150
#> [496,]  78   2      1          1        0   130
#> [497,]  75   4      1          0        0   212
#> [498,]  77   2      1          0        1   143
#> [499,]  76  11      1          0        0   120
#> [500,]  75  11      1          4        0   162
#> [501,]  77  24      0         24        1   160
#> [502,]  79   8      0         32        1   120
#> [503,]  80   9      0         23        1   128
#> [504,]  80   6      0          6        1   150
#> [505,]  78   6      1          0        1   240
#> [506,]  76   3      1          0        1   140
#> [507,]  78  11      1          1        1   140
#> [508,]  79  11      0        180        0   160
#> [509,]  79   2      1          0        1   121
#> [510,]  78  14      1          0        1   140
#> [511,]  81   1      0          1        0   130
#> [512,]  78  11      1          8        1   118
#> [513,]  76   4      0          4        1   160
#> [514,]  79   4      0          4        1   125
#> [515,]  76  12      1         10        1   127
#> [516,]  80   3      1          0        1   120
#> [517,]  75   2      1          1        1   204
#> [518,]  78  11      0        180        1   135
#> [519,]  76   1      0          1        1   140
#> [520,]  77  31      1          3        1   161
#> [521,]  76   1      0          1        1    90
#> [522,]  78   7      1          0        1   110
#> [523,]  77   7      0        180        1   170
#> [524,]  77   6      0          6        1   144
#> [525,]  79   4      1          0        1   120
#> [526,]  81   1      0        180        0   120
#> [527,]  80  15      1         12        1   150
#> [528,]  77   9      1          4        0   141
#> [529,]  78   4      0         59        1   112
#> [530,]  80  17      1         12        0   100
#> [531,]  76   7      0        161        0   151
#> [532,]  80  15      1          0        1    90
#> [533,]  80   9      0        118        1   186
#> [534,]  78  32      0        180        1   130
#> [535,]  81   3      0        180        0   184
#> [536,]  81   2      0        175        0   172
#> [537,]  78   7      0          7        1   147
#> [538,]  80   5      1          1        1   108
#> [539,]  78   4      0        180        0   175
#> [540,]  78  26      1          5        0   194
#> [541,]  76   1      0        166        0   131
#> [542,]  78  20      1          0        1   109
#> [543,]  77  10      1          8        1   130
#> [544,]  82   3      1          1        1   144
#> [545,]  77   5      0         85        0   188
#> [546,]  80   6      1          0        1   119
#> [547,]  78   2      0        180        0   148
#> [548,]  80   5      0          5        1   130
#> [549,]  77   4      0        180        1    98
#> [550,]  81   1      0        108        0   129
#> [551,]  78  12      0        180        0   134
#> [552,]  82  21      1          2        0   155
#> [553,]  84  22      1         10        0   180
#> [554,]  80   6      0          6        1   110
#> [555,]  83   5      0        180        0   148
#> [556,]  79   7      1          6        0   130
#> [557,]  83   4      0        103        0    97
#> [558,]  78  23      1         10        1   145
#> [559,]  79   4      0          4        1   183
#> [560,]  78   9      1          4        1   120
#> [561,]  79   1      0        180        1   170
#> [562,]  81  15      0        180        1   140
#> [563,]  80   7      1          0        1   146
#> [564,]  80   6      1          0        1   150
#> [565,]  80  11      1          8        0   110
#> [566,]  79   0      1          0        1    96
#> [567,]  81   2      1          1        0   198
#> [568,]  83   2      0          2        1   155
#> [569,]  82   6      0        128        1   100
#> [570,]  82  23      1          0        0   110
#> [571,]  84   5      0        180        1   203
#> [572,]  84   4      0          4        1    85
#> [573,]  84   1      0         38        1   205
#> [574,]  83   3      0        180        0   174
#> [575,]  81   4      0         90        1   138
#> [576,]  79   9      1          8        0   150
#> [577,]  84   4      0         89        1   129
#> [578,]  80   2      1          0        1   130
#> [579,]  80   6      0         71        1   189
#> [580,]  83   1      0          1        1   100
#> [581,]  80  30      1         13        0   220
#> [582,]  79  14      1          0        0   110
#> [583,]  83   3      0        114        0    98
#> [584,]  81  14      1         12        1   128
#> [585,]  83   1      0        180        0   160
#> [586,]  81   4      0          4        0   175
#> [587,]  84  15      1         13        1   110
#> [588,]  81   1      0          1        1   145
#> [589,]  81  12      0         12        1   163
#> [590,]  82  16      1          8        0   103
#> [591,]  81   4      0          4        0   160
#> [592,]  86  12      0        180        1   120
#> [593,]  83  12      1          2        1   170
#> [594,]  81  19      1         14        0   120
#> [595,]  82   3      1          2        0   130
#> [596,]  80   2      0         88        0   135
#> [597,]  83   7      0        126        0   135
#> [598,]  86   8      0          8        1   132
#> [599,]  84   6      0        165        0   145
#> [600,]  82   9      0        180        1   134
#> [601,]  84   3      0        180        1   120
#> [602,]  81   2      1          0        1   118
#> [603,]  83   9      0        180        1   149
#> [604,]  83   4      0          4        0   130
#> [605,]  86  12      1          0        1   132
#> [606,]  83  19      0         43        0   150
#> [607,]  84   3      1          2        0   125
#> [608,]  83  10      1          0        1   190
#> [609,]  86   2      0        180        1   169
#> [610,]  88  14      1          3        1   130
#> [611,]  83  13      1         12        0   170
#> [612,]  87   2      0        180        0   113
#> [613,]  84   9      0         92        1   110
#> [614,]  84   3      0        180        1   170
#> [615,]  86   4      0         38        1   122
#> [616,]  82   4      0          4        0   130
#> [617,]  86  13      0        177        0   163
#> [618,]  86   6      0          6        1   117
#> [619,]  84  13      0         62        1   100
#> [620,]  85  22      0         22        1   184
#> [621,]  83   9      0         65        1   150
#> [622,]  86   9      1          7        1   142
#> [623,]  87   2      0        180        1   130
#> [624,]  88   2      0        180        1    68
#> [625,]  83   3      0          3        1   130
#> [626,]  87   8      0          8        1   157
#> [627,]  88   4      0          4        0    86
#> [628,]  89   4      0          4        1   153
#> [629,]  89   5      0        119        1   140
#> [630,]  87   6      0        180        1   110
#> [631,]  84   8      0        180        1   119
#> [632,]  84   2      0        110        1   174
#> [633,]  89  10      0         46        1   170
#> [634,]  90  14      0         14        1   100
#> [635,]  88   1      0          1        0   135
#> [636,]  86   4      0        180        1   145
#> [637,]  91   8      0          8        0   100
#> [638,]  87   6      1          0        0   125
#> [639,]  91  10      0        145        0   135
#> [640,]  86   3      1          0        1    80
#> [641,]  88   7      0         24        0   119
#> [642,]  88   8      0         50        1   154
#> [643,]  90  11      1         10        1   186
#> [644,]  87   6      0        126        1   168
#> [645,]  86  10      0        180        1   137
#> [646,]  90   4      1          0        0   121
#> [647,]  87  43      0        178        1   130
#> [648,]  87   5      0         36        1   150
#> [649,]  89   3      1          1        1   160
#> [650,]  91   3      0         33        1   137
#> [651,]  87   7      0         74        1   105
#> [652,]  89  12      1          0        1   130
#> [653,]  89   2      0        168        0   118
#> [654,]  91   0      0          0        0     0
#> [655,]  89  14      0        180        1    84
#> [656,]  90  18      0        180        0   188
#> [657,]  91   4      1          0        1   120
#> [658,]  90   1      0          1        1   118
#> [659,]  91   2      0          2        1   116
#> [660,]  93   8      0        179        1   110
#> [661,]  94   8      0          8        1   142
#> [662,]  90   3      0         67        0   162
#> [663,]  96   3      0         12        1    97
#> [664,]  95   8      1          5        1   150
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   2.0+   5.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 115.0  180.0+ 180.0+
#>  [11]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+
#>  [21]   2.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31]   2.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+
#>  [51]  73.0    5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [61] 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 172.0+ 180.0+ 180.0+
#>  [71]   7.0  180.0+ 180.0+   2.0  179.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+   5.0  180.0+   4.0+  85.0  180.0+ 180.0+ 166.0+ 180.0+
#> [101]  16.0+ 180.0+ 152.0+ 180.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+ 180.0+
#> [111]  28.0    6.0+   1.0    9.0+ 180.0+ 175.0+ 180.0+ 180.0+   7.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0   15.0+ 180.0+
#> [131] 180.0+ 134.0+ 180.0+ 180.0+ 180.0+ 180.0+ 140.0  180.0+   1.0  165.0 
#> [141] 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+   0.5  180.0+ 180.0+ 171.0+
#> [151] 166.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+   5.0+   4.0+ 180.0+   9.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+  64.0  180.0+ 180.0+
#> [171]   9.0+   0.5  180.0+ 161.0+ 180.0+   3.0    1.0  180.0+ 180.0+ 180.0+
#> [181]  10.0+ 180.0+  45.0   19.0  180.0+ 180.0+   9.0+ 180.0+ 172.0+  24.0 
#> [191] 180.0+   8.0  180.0+   1.0+  15.0  180.0+  77.0   13.0+ 180.0+ 180.0+
#> [201]  94.0    7.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+  30.0   13.0+
#> [211]  18.0    5.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [221] 180.0+   9.0   22.0    7.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+   3.0+
#> [231]   6.0+ 180.0+ 180.0+  17.0  180.0+  12.0  180.0+  14.0+  36.0  180.0+
#> [241]  88.0   12.0  180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+  12.0+ 180.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+   9.0    3.0  180.0+  11.0+   2.0+  18.0+
#> [261] 180.0+ 180.0+ 180.0+   3.0+  15.0  180.0+  13.0  180.0+ 166.0+  14.0+
#> [271]   0.5+ 180.0+   3.0+ 180.0+ 180.0+   8.0    5.0   16.0  180.0+   1.0 
#> [281] 123.0+   1.0+  11.0+ 180.0+  79.0   80.0    4.0+  15.0  180.0+ 180.0+
#> [291] 180.0+ 174.0+ 180.0+ 180.0+   8.0+   3.0  175.0  180.0+ 180.0+ 180.0+
#> [301]   6.0   19.0+  12.0   99.0  180.0+   0.5   18.0  180.0+ 180.0+ 180.0+
#> [311]  93.0  180.0+   1.0   18.0+ 101.0    4.0    5.0    7.0+ 150.0  180.0+
#> [321]   1.0  180.0+ 180.0+ 171.0  180.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+
#> [331]   7.0+   2.0   45.0    5.0+ 103.0    3.0+  36.0    5.0+ 180.0+ 180.0+
#> [341]  97.0    7.0  180.0+   2.0+ 180.0+  18.0  172.0+ 180.0+ 180.0+ 180.0+
#> [351] 180.0+  19.0    1.0    1.0   60.0   76.0  180.0+ 132.0  180.0+ 162.0 
#> [361]   7.0+   7.0+   9.0  180.0+ 180.0+ 180.0+ 152.0  180.0+   2.0  173.0+
#> [371] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+   6.0    7.0+
#> [381]   3.0+  13.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0  180.0+  20.0 
#> [391]   0.5  180.0+ 180.0+   3.0   87.0  180.0+   4.0+  58.0  180.0+ 180.0+
#> [401] 180.0+ 180.0+ 180.0+ 175.0   10.0+ 180.0+ 180.0+   8.0+ 179.0+ 180.0+
#> [411] 159.0   15.0  180.0+  10.0    1.0  180.0+  13.0  180.0+   4.0+ 180.0+
#> [421] 104.0+  57.0   11.0    3.0+   5.0  180.0+  12.0  180.0+ 180.0+ 180.0+
#> [431] 180.0+ 180.0+  34.0  180.0+ 177.0+ 180.0+   5.0   11.0+   7.0   15.0+
#> [441] 180.0+  10.0    3.0  180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+  85.0 
#> [451] 180.0+  17.0+ 174.0+   4.0    0.5   12.0  180.0+  46.0  180.0+   4.0 
#> [461]   1.0  180.0+  52.0  180.0+  12.0  180.0+ 180.0+  33.0    5.0  180.0+
#> [471] 180.0+   1.0  180.0+   7.0+ 168.0+ 180.0+ 180.0+ 176.0+  18.0  180.0+
#> [481]  47.0    7.0  180.0+ 180.0+  32.0  180.0+ 180.0+ 172.0  119.0  180.0+
#> [491] 180.0+ 180.0+   1.0   80.0  180.0+ 180.0+   4.0+   2.0   11.0  152.0+
#> [501]  24.0   32.0   23.0    6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [511]   1.0   11.0    4.0    4.0  180.0+   3.0+   2.0+ 180.0+   1.0  171.0 
#> [521]   1.0   43.0  180.0+   6.0  138.0  180.0+ 180.0+  71.0   59.0   17.0 
#> [531] 161.0  180.0+ 118.0  180.0+ 180.0+ 175.0+   7.0+   5.0+ 180.0+ 171.0+
#> [541] 166.0+  20.0+  10.0  180.0+  85.0    6.0  180.0+   5.0  180.0+ 108.0 
#> [551] 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+ 103.0   70.0    4.0  180.0+
#> [561] 180.0+ 180.0+   7.0+ 180.0+ 180.0+   0.5  180.0+   2.0  128.0   62.0 
#> [571] 180.0+   4.0   38.0  180.0+  90.0  180.0+  89.0  180.0+  71.0    1.0 
#> [581]  30.0  180.0+ 114.0  180.0+ 180.0+   4.0+ 180.0+   1.0   12.0   16.0+
#> [591]   4.0+ 180.0+  77.0  180.0+   3.0   88.0  126.0    8.0  165.0  180.0+
#> [601] 180.0+ 180.0+ 180.0+   4.0+ 180.0+  43.0  180.0+ 180.0+ 180.0+  14.0 
#> [611]  13.0  180.0+  92.0  180.0+  38.0    4.0  177.0    6.0+  62.0   22.0 
#> [621]  65.0   11.0  180.0+ 180.0+   3.0+   8.0+   4.0    4.0  119.0  180.0+
#> [631] 180.0+ 110.0   46.0   14.0    1.0+ 180.0+   8.0   25.0  145.0    3.0 
#> [641]  24.0   50.0   11.0  126.0  180.0+   4.0  178.0+  36.0    3.0+  33.0 
#> [651]  74.0  180.0+ 168.0    0.5  180.0+ 180.0+   4.0    1.0+   2.0  179.0+
#> [661]   8.0+  67.0   12.0    8.0    7.0+   0.5    2.0  180.0+   3.0   15.0+
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
#>   0.8312269 
```
