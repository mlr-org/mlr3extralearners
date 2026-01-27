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
#> min 0.00303    45   2.785 0.1765       6
#> 1se 0.07164    11   2.934 0.1848       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      0        180        0   121
#>   [7,]  35   2      1          1        1   112
#>   [8,]  37   9      0        180        1   151
#>   [9,]  38  13      1          0        1   161
#>  [10,]  38   2      0        115        0   150
#>  [11,]  36   1      0        180        1   155
#>  [12,]  35   0      0        180        1   119
#>  [13,]  36   5      1          0        1   115
#>  [14,]  33   6      1          1        1   115
#>  [15,]  38  16      1         10        0   160
#>  [16,]  40  12      1          9        0   153
#>  [17,]  42   3      1          1        1   130
#>  [18,]  37   1      1          0        1   146
#>  [19,]  40   2      1          1        1   148
#>  [20,]  38   5      1          3        0   125
#>  [21,]  42   2      0          2        0   140
#>  [22,]  40   6      0        180        1   138
#>  [23,]  42   2      0        180        0   100
#>  [24,]  43   3      1          0        1   100
#>  [25,]  41   2      1          1        0   166
#>  [26,]  40   1      1          0        1   145
#>  [27,]  43   4      1          0        1   130
#>  [28,]  42   4      0        180        0   162
#>  [29,]  42  12      1         10        1   170
#>  [30,]  42   2      0        180        1   124
#>  [31,]  44   5      1          1        0   170
#>  [32,]  45   3      0        180        1   154
#>  [33,]  41  10      1          8        0   150
#>  [34,]  44   3      0        180        0   141
#>  [35,]  41  13      1          1        0   140
#>  [36,]  45   6      0        180        1   170
#>  [37,]  44   2      1          1        1   150
#>  [38,]  43   2      0        180        1   140
#>  [39,]  45   2      0        180        1   140
#>  [40,]  46   2      1          1        0   126
#>  [41,]  47   4      1          3        0   118
#>  [42,]  48  15      0        180        1   160
#>  [43,]  45   3      0        150        0   130
#>  [44,]  46   7      1          2        0   166
#>  [45,]  45   4      1          0        0   124
#>  [46,]  43  10      0        180        0   185
#>  [47,]  47   4      1          3        1   160
#>  [48,]  43   3      1          0        1   124
#>  [49,]  45   8      1          0        1   117
#>  [50,]  49   5      0         73        1   136
#>  [51,]  45   5      0          5        0   141
#>  [52,]  46   2      1          1        1   122
#>  [53,]  46   6      1          0        1   100
#>  [54,]  44   4      1          0        1   114
#>  [55,]  44   9      1          8        1   135
#>  [56,]  46   5      1          3        0   130
#>  [57,]  46   4      0        180        1   121
#>  [58,]  45   9      1          0        1   145
#>  [59,]  47   3      1          1        1   120
#>  [60,]  48   3      0        180        0   154
#>  [61,]  47   5      1          3        1   130
#>  [62,]  47   9      1          6        0   170
#>  [63,]  49   4      0        180        0   117
#>  [64,]  47  10      0         10        1   140
#>  [65,]  48   2      1          0        0   184
#>  [66,]  47   7      0        180        0   145
#>  [67,]  50   4      1          1        0   125
#>  [68,]  49   7      1          7        1   110
#>  [69,]  46   3      1          1        1   140
#>  [70,]  49   2      0          2        0   105
#>  [71,]  51   1      0          1        1   145
#>  [72,]  46   6      1          0        1   156
#>  [73,]  50   4      0          4        1   100
#>  [74,]  51   3      1          2        0   113
#>  [75,]  50   1      1          0        0   150
#>  [76,]  50   9      0        180        0   130
#>  [77,]  49   7      1          4        1    90
#>  [78,]  47   8      0        180        0   160
#>  [79,]  47   6      0        180        1   162
#>  [80,]  51   8      0        180        1   140
#>  [81,]  52   2      0        180        0   155
#>  [82,]  46   3      0        180        1   120
#>  [83,]  50   4      1          1        0   150
#>  [84,]  48   7      1          0        1   110
#>  [85,]  53   8      0         36        1   160
#>  [86,]  48  17      1         10        0   111
#>  [87,]  47   2      1          1        0   110
#>  [88,]  52   4      1          4        0   152
#>  [89,]  49   9      1          3        0   102
#>  [90,]  53   5      0        180        1   140
#>  [91,]  54  17      1         12        1   102
#>  [92,]  53   5      0         77        0   159
#>  [93,]  51   3      1          1        0   140
#>  [94,]  50  10      1          6        0   122
#>  [95,]  50  14      1         13        0   170
#>  [96,]  48   3      1          2        0   150
#>  [97,]  51  25      1          1        0   202
#>  [98,]  49   5      1          2        1   150
#>  [99,]  53   4      1          0        1   156
#> [100,]  51  13      0         99        1   160
#> [101,]  54   9      1          0        1   138
#> [102,]  49  16      0         16        0   125
#> [103,]  55   3      1          1        0   150
#> [104,]  52   7      1          2        0   154
#> [105,]  55   6      1          2        1   114
#> [106,]  54   9      1          1        0   130
#> [107,]  55   4      1          2        0   150
#> [108,]  51  13      1         11        0   145
#> [109,]  54   4      1          0        1   121
#> [110,]  50   3      0        174        1   153
#> [111,]  55  28      1         13        1   160
#> [112,]  49   6      1          0        1   130
#> [113,]  49   1      0          1        1   110
#> [114,]  50   7      1          1        0   156
#> [115,]  53   9      0          9        1    95
#> [116,]  53   8      1          0        1   130
#> [117,]  50   7      1          0        1   127
#> [118,]  52   5      0        175        1   117
#> [119,]  55   1      0        180        0   127
#> [120,]  55   2      0          2        0   145
#> [121,]  54   1      0        180        0   162
#> [122,]  54   7      1          0        1   100
#> [123,]  56   3      0        180        1   193
#> [124,]  56   2      0        180        0   132
#> [125,]  52   8      0        180        0   119
#> [126,]  53  18      1          9        1   150
#> [127,]  54   3      0        180        1   180
#> [128,]  55   6      0        180        0   170
#> [129,]  53  10      1          9        0   172
#> [130,]  52  16      1         14        0   170
#> [131,]  53   4      0        180        1   150
#> [132,]  55   6      0        180        1   100
#> [133,]  55   6      1          5        1   138
#> [134,]  54  12      1          0        1   190
#> [135,]  54   3      0        180        0   128
#> [136,]  56   3      0          8        1   139
#> [137,]  57   3      0          3        0   120
#> [138,]  54   2      1          1        0   135
#> [139,]  52   9      1          3        0   170
#> [140,]  54   2      1          1        1   176
#> [141,]  57   5      1          3        1   138
#> [142,]  57   1      0        180        1   156
#> [143,]  57   1      0          1        1   100
#> [144,]  56   4      1          0        1   140
#> [145,]  52  15      1         14        0   130
#> [146,]  53   3      1          0        1   200
#> [147,]  57  10      0        180        1   170
#> [148,]  58   8      0          8        1   130
#> [149,]  54   5      0        180        1   108
#> [150,]  57   0      0          0        1   150
#> [151,]  53  21      1         13        1   130
#> [152,]  53  15      1         10        1   130
#> [153,]  54  17      1          8        1   227
#> [154,]  55   9      1          2        1   147
#> [155,]  54  23      1          8        0   120
#> [156,]  53   7      1          0        1   120
#> [157,]  55   3      1          2        0   140
#> [158,]  55   5      0          5        1   131
#> [159,]  54   7      1          0        1   141
#> [160,]  56   4      0          4        0   164
#> [161,]  59  15      1         10        0   140
#> [162,]  58   9      1          0        1   180
#> [163,]  58   1      1          1        1   200
#> [164,]  56   7      1          5        1   120
#> [165,]  55   2      0          2        0   106
#> [166,]  57   1      0        180        0   148
#> [167,]  58   4      1          0        1   160
#> [168,]  60   5      1          1        0   138
#> [169,]  58  11      1          9        1   124
#> [170,]  55   5      1          0        1   160
#> [171,]  57  10      1          9        0   103
#> [172,]  59   6      1          0        1   140
#> [173,]  60   0      1          0        1    80
#> [174,]  59   2      1          1        0   140
#> [175,]  58  14      1          6        0   190
#> [176,]  61   4      1          3        0   151
#> [177,]  61   3      1          2        1   102
#> [178,]  61  20      1         13        0   130
#> [179,]  57  13      1         10        0   110
#> [180,]  57   2      1          0        1   116
#> [181,]  58  10      0         10        1   150
#> [182,]  57  11      0        180        1   150
#> [183,]  57   3      1          2        0   120
#> [184,]  55   4      1          3        1   160
#> [185,]  58  11      0        172        1   135
#> [186,]  60  12      1          0        1   114
#> [187,]  55   9      1          7        1   135
#> [188,]  56   8      1          8        0   120
#> [189,]  61  13      1         12        1   130
#> [190,]  57  15      1         13        1   110
#> [191,]  61   8      0         77        0   120
#> [192,]  61  13      0         13        0   210
#> [193,]  58   8      1          5        0   152
#> [194,]  62  10      1          0        1   153
#> [195,]  62   7      1          2        1   180
#> [196,]  57   3      1          0        0   100
#> [197,]  61  18      0        170        0   140
#> [198,]  61  28      1          7        0   133
#> [199,]  57   7      0        169        0   180
#> [200,]  59  13      1          2        0   198
#> [201,]  57  12      1          9        1   120
#> [202,]  62   4      1          0        0   160
#> [203,]  60  17      1          8        1   140
#> [204,]  62   4      1          3        0   173
#> [205,]  59   1      0        180        0   155
#> [206,]  59  16      1          9        1   133
#> [207,]  63   6      0         28        1   120
#> [208,]  61  13      0         13        0   120
#> [209,]  61   5      0          5        1   110
#> [210,]  57  18      1          9        1    93
#> [211,]  61   5      0          5        1   160
#> [212,]  57   2      1          1        0   159
#> [213,]  62  17      1         10        1   180
#> [214,]  62   1      1          0        1   172
#> [215,]  58   7      0        180        1   150
#> [216,]  63   3      1          1        0   180
#> [217,]  63   1      0        180        1   130
#> [218,]  61   7      0        180        0   135
#> [219,]  62   3      0        180        1   105
#> [220,]  63   4      0        180        1   190
#> [221,]  63  15      1         10        1   126
#> [222,]  64   4      0        180        0   130
#> [223,]  63   4      1          1        0   155
#> [224,]  59   8      0        180        1   140
#> [225,]  61   9      1          9        1   150
#> [226,]  58   9      1          9        0   110
#> [227,]  62   7      0          7        0   150
#> [228,]  59   1      0         22        1   162
#> [229,]  58   2      0        180        0   127
#> [230,]  59   4      0        180        0   196
#> [231,]  60   7      1          5        1   141
#> [232,]  60   7      0          7        0   140
#> [233,]  63   1      0          1        0   162
#> [234,]  63   1      0          1        0   130
#> [235,]  62   6      0        180        0   170
#> [236,]  61  15      1         13        0   170
#> [237,]  59   4      0          4        0   149
#> [238,]  64  10      1          9        0   160
#> [239,]  62   6      0          6        0   120
#> [240,]  63  12      1         10        0   200
#> [241,]  60   8      0         17        1   130
#> [242,]  61   6      1          1        1   117
#> [243,]  64  12      1         11        0   160
#> [244,]  66   1      1          0        1   120
#> [245,]  64   6      1          0        1   140
#> [246,]  63  14      1          9        0   123
#> [247,]  65  36      1         11        0   140
#> [248,]  63   4      1          3        0   162
#> [249,]  66   3      1          1        0   127
#> [250,]  64  32      1          9        1   160
#> [251,]  63  12      1          9        0   114
#> [252,]  63   7      0        180        0   120
#> [253,]  66   5      1          0        1   110
#> [254,]  65   8      1          0        0   168
#> [255,]  65  10      1          8        1   120
#> [256,]  60   6      0        180        0   130
#> [257,]  64  21      1         10        0   190
#> [258,]  61  12      1         11        0   154
#> [259,]  64   9      0        180        0   150
#> [260,]  61   4      0        180        1   113
#> [261,]  65   3      0        180        1   190
#> [262,]  63  16      1          7        1   110
#> [263,]  64   7      0        180        1   120
#> [264,]  66   6      1          1        1   130
#> [265,]  63  12      0         12        1   150
#> [266,]  62   3      1          1        1   199
#> [267,]  65   6      0          9        0   112
#> [268,]  65   3      1          0        1    80
#> [269,]  63   2      1          1        0   180
#> [270,]  62  13      1         11        0   180
#> [271,]  67  11      0         11        1   100
#> [272,]  66  18      1          5        0   142
#> [273,]  62   9      0        180        0   145
#> [274,]  61  14      1          5        0   140
#> [275,]  61  15      1         10        0   130
#> [276,]  63   9      1          8        1   160
#> [277,]  63   3      1          2        0   120
#> [278,]  63   2      1          0        0   140
#> [279,]  64  19      1          8        1   160
#> [280,]  65   8      1          0        1   140
#> [281,]  67   6      0        180        1   170
#> [282,]  68   5      1          4        1   150
#> [283,]  64  13      1         12        1   150
#> [284,]  64   6      1          0        1   125
#> [285,]  66  13      1          0        0   118
#> [286,]  64  14      1         13        1   150
#> [287,]  64   0      0          0        1   148
#> [288,]  66   3      1          0        1   135
#> [289,]  65   2      1          1        1   170
#> [290,]  63   7      1          0        0   162
#> [291,]  67   8      1          1        1   130
#> [292,]  66  14      0        180        0   130
#> [293,]  64   1      0          1        1   120
#> [294,]  68  18      0        180        1   260
#> [295,]  65  17      1         14        1   100
#> [296,]  63   8      1          1        1   162
#> [297,]  65  18      1          3        0   120
#> [298,]  68  11      0        180        0   160
#> [299,]  68  14      0         79        0   172
#> [300,]  65  15      1         12        1   150
#> [301,]  66  11      1          0        0   100
#> [302,]  65   4      1          2        1   145
#> [303,]  66  15      1         13        1   160
#> [304,]  63   2      0        180        0   150
#> [305,]  65  11      1          6        0   130
#> [306,]  69  21      1         10        0   180
#> [307,]  69   6      0        180        1   100
#> [308,]  68  14      1         13        1   140
#> [309,]  65   8      1          0        1    90
#> [310,]  69   1      1          0        0   170
#> [311,]  68  10      1         10        1   150
#> [312,]  67   7      1          4        1   130
#> [313,]  67   2      0        180        0   184
#> [314,]  65   6      0          6        0    80
#> [315,]  65  10      1          1        1   148
#> [316,]  66  19      1         12        1   150
#> [317,]  69   6      0         99        1   140
#> [318,]  65   4      1          1        0   130
#> [319,]  64   4      0        179        0   160
#> [320,]  66   4      0        180        1   130
#> [321,]  70  15      1         12        1   132
#> [322,]  64   4      0        180        1   140
#> [323,]  64   0      1          0        1   118
#> [324,]  66   7      1          5        1   131
#> [325,]  68   4      1          0        1   160
#> [326,]  69   4      1          3        1   150
#> [327,]  65  13      1         12        1   130
#> [328,]  69  17      1         10        0   140
#> [329,]  69   8      0         93        0   140
#> [330,]  65   1      0          1        1   120
#> [331,]  68  18      1          0        1   160
#> [332,]  68   4      0          4        1   190
#> [333,]  71   3      0          5        0   112
#> [334,]  70   7      1          0        1   190
#> [335,]  68   7      0        150        0   210
#> [336,]  71  20      1          0        1   160
#> [337,]  67   2      0        180        0   128
#> [338,]  66   9      1          3        1   151
#> [339,]  70  14      0        171        0   166
#> [340,]  68  18      1         14        1   170
#> [341,]  65   2      0        180        0   130
#> [342,]  68   7      1          0        1   150
#> [343,]  67  14      1         13        0   130
#> [344,]  65  14      1         13        1   150
#> [345,]  71   7      0          7        0   230
#> [346,]  66   2      0          2        1   228
#> [347,]  71   6      0         45        1   158
#> [348,]  71   3      0        103        0   133
#> [349,]  70  22      1         13        0   103
#> [350,]  67   5      0          5        0   130
#> [351,]  68   6      0        180        0   145
#> [352,]  69   8      1          5        1   195
#> [353,]  69   6      1          4        1   174
#> [354,]  72   3      1          0        1   132
#> [355,]  69   8      1          7        1   108
#> [356,]  66   2      1          1        0   123
#> [357,]  68  18      0         18        1   100
#> [358,]  67  14      0        172        1   140
#> [359,]  69  11      1          0        1   120
#> [360,]  66   2      0        180        0   130
#> [361,]  67   7      1          4        0   122
#> [362,]  69   4      1          3        0   132
#> [363,]  68   2      0          7        1   130
#> [364,]  69   8      1          2        0   121
#> [365,]  67  13      1          9        0   130
#> [366,]  70   9      0        180        1   142
#> [367,]  67  22      1          1        1   140
#> [368,]  67  12      1          8        0   120
#> [369,]  69   5      0         76        0   120
#> [370,]  67   8      1          0        1   130
#> [371,]  70  35      1          0        1   105
#> [372,]  72  30      1          0        1   145
#> [373,]  70   7      0          7        0   102
#> [374,]  68   7      1          2        0   135
#> [375,]  73  20      1          0        1   170
#> [376,]  70  11      0        180        1   210
#> [377,]  72  19      1          8        0   120
#> [378,]  67   5      1          0        1   147
#> [379,]  70   5      0        180        0   150
#> [380,]  72   6      1          5        0   115
#> [381,]  71   1      0        173        1   188
#> [382,]  68  23      0        180        1   220
#> [383,]  70   3      0        180        0   121
#> [384,]  71   3      1          2        0   150
#> [385,]  68   4      1          3        0   210
#> [386,]  69  16      1         10        1   140
#> [387,]  72  16      1          1        1   130
#> [388,]  70   4      0        180        0   180
#> [389,]  69   1      1          0        0   155
#> [390,]  73   6      1          0        1   270
#> [391,]  72   8      1          1        1   150
#> [392,]  68  15      1         13        1   130
#> [393,]  70  13      1          9        0   100
#> [394,]  72   6      0        180        1   130
#> [395,]  73   4      0        180        1   154
#> [396,]  69   2      1          0        1   110
#> [397,]  74  20      0         20        1   180
#> [398,]  71  20      1         10        0   140
#> [399,]  74   0      1          0        1    90
#> [400,]  73   3      1          0        1   136
#> [401,]  70   5      1          0        1   190
#> [402,]  71  17      1         11        0   160
#> [403,]  70  26      1         11        1   120
#> [404,]  74   4      0          4        0   120
#> [405,]  72   5      1          3        1   160
#> [406,]  70   3      0        180        1   154
#> [407,]  72  15      1          0        1   150
#> [408,]  71   7      1          2        0   143
#> [409,]  72   8      1          0        1   140
#> [410,]  74   3      0          3        1   150
#> [411,]  73  17      1         11        0   140
#> [412,]  71  13      1          8        0   121
#> [413,]  70   4      1          0        1   140
#> [414,]  72  10      1          8        1   153
#> [415,]  72  15      1         13        0   156
#> [416,]  70   8      0          8        0   120
#> [417,]  71  10      1          9        1   120
#> [418,]  75   1      0          1        0   133
#> [419,]  75   2      1          1        0   145
#> [420,]  73  10      1          9        1   146
#> [421,]  73  10      1         10        1   120
#> [422,]  73  10      1          8        0   120
#> [423,]  70   7      1          4        0   184
#> [424,]  72   1      1          1        0   168
#> [425,]  72   7      0         57        1   145
#> [426,]  73  10      0        180        0   162
#> [427,]  70   3      0          3        0   150
#> [428,]  73   5      1          3        1   112
#> [429,]  72   4      1          0        1   197
#> [430,]  71   3      1          0        0   144
#> [431,]  73   5      0        180        0   126
#> [432,]  74  34      1          8        1   233
#> [433,]  71  32      1         12        1   107
#> [434,]  72   5      0        180        0   154
#> [435,]  72   3      0        180        0   160
#> [436,]  77  11      0         11        1   150
#> [437,]  77   4      0          4        0   185
#> [438,]  75   3      1          1        0   180
#> [439,]  72   7      1          2        0   142
#> [440,]  73  15      0         15        1   160
#> [441,]  74   7      0        180        1   150
#> [442,]  74   2      1          1        0   140
#> [443,]  74  19      1          4        1   200
#> [444,]  73   6      0          6        1   114
#> [445,]  75  23      1         14        1   110
#> [446,]  74   2      0        180        0   190
#> [447,]  72   4      0         85        1   120
#> [448,]  72   4      1          3        0   160
#> [449,]  76  17      1          0        1   200
#> [450,]  73   4      1          3        1   125
#> [451,]  75   4      1          0        1   122
#> [452,]  75   7      0          7        0   190
#> [453,]  73  13      1         11        0   195
#> [454,]  74   8      1          0        1   105
#> [455,]  75   4      1          2        1   188
#> [456,]  74   6      0        180        0   160
#> [457,]  76   4      0          4        1   155
#> [458,]  74   2      0        180        0   111
#> [459,]  73   1      0         52        1   105
#> [460,]  73   0      0        180        0   156
#> [461,]  72   5      0        180        0   120
#> [462,]  78  12      1         11        1   160
#> [463,]  74  10      1          0        1   135
#> [464,]  76   5      1          0        1   167
#> [465,]  75   9      0        180        1   140
#> [466,]  73  33      1         12        1   175
#> [467,]  77   5      1          0        0   123
#> [468,]  77  12      1          9        1   100
#> [469,]  77  12      0        180        0   130
#> [470,]  73   7      1          0        0   174
#> [471,]  75   6      0        180        0   150
#> [472,]  74   2      1          0        1   130
#> [473,]  78  18      0         18        1   144
#> [474,]  77   3      0        180        0   110
#> [475,]  76  29      0         47        0    90
#> [476,]  73  11      1          2        1   110
#> [477,]  74   2      0        180        0   100
#> [478,]  78   7      0          7        1   133
#> [479,]  74  15      0        180        1   172
#> [480,]  74   7      0          7        0   161
#> [481,]  78  32      1          9        1   198
#> [482,]  79   6      0        180        0   170
#> [483,]  78  15      0        180        1   270
#> [484,]  80   8      0          8        1   120
#> [485,]  75  13      1          6        0   150
#> [486,]  76   1      0          1        1    83
#> [487,]  78  12      1          9        0   150
#> [488,]  78   2      1          1        0   130
#> [489,]  75   4      1          0        0   212
#> [490,]  78  10      0        180        1   130
#> [491,]  76  11      1          0        0   120
#> [492,]  75   3      0          3        0     0
#> [493,]  77  24      0         24        1   160
#> [494,]  79   8      0         32        1   120
#> [495,]  80   9      0         23        1   128
#> [496,]  76   3      1          0        1   140
#> [497,]  78  11      1          1        1   140
#> [498,]  79   2      1          0        1   121
#> [499,]  78  14      1          0        1   140
#> [500,]  79   4      0          4        1   125
#> [501,]  76  10      1          8        0   180
#> [502,]  77   6      0          6        1   107
#> [503,]  80   3      1          0        1   120
#> [504,]  75   2      1          1        1   204
#> [505,]  77  31      1          3        1   161
#> [506,]  76   1      0          1        1    90
#> [507,]  78   7      1          0        1   110
#> [508,]  79   3      0          3        0   120
#> [509,]  77   6      0          6        1   144
#> [510,]  79   4      1          0        1   120
#> [511,]  81   1      0        180        0   120
#> [512,]  82   5      0          8        1   120
#> [513,]  80  40      1          0        1   138
#> [514,]  78   4      0         59        1   112
#> [515,]  80  15      1          0        1    90
#> [516,]  81   4      1          2        1   126
#> [517,]  78  32      0        180        1   130
#> [518,]  81   3      0        180        0   184
#> [519,]  77  13      1          0        1   190
#> [520,]  78  15      0         15        0   165
#> [521,]  80   5      1          1        1   108
#> [522,]  78   4      0        180        0   175
#> [523,]  79   3      0          3        1   101
#> [524,]  76   1      0        166        0   131
#> [525,]  81   4      1          1        1   104
#> [526,]  78  20      1          0        1   109
#> [527,]  80   1      0          1        0   100
#> [528,]  78   3      1          1        1   152
#> [529,]  77  10      1          8        1   130
#> [530,]  82   3      1          1        1   144
#> [531,]  80   2      1          1        0   168
#> [532,]  80   6      1          0        1   119
#> [533,]  80   5      0          5        1   130
#> [534,]  82   1      1          0        1    82
#> [535,]  79  10      0        180        1   150
#> [536,]  81   1      0        108        0   129
#> [537,]  78  12      0        180        0   134
#> [538,]  79   1      0        125        0   193
#> [539,]  82  21      1          2        0   155
#> [540,]  84  22      1         10        0   180
#> [541,]  79   4      0          4        1   121
#> [542,]  83   9      1          5        1   170
#> [543,]  82   5      0        180        0   110
#> [544,]  79   7      1          6        0   130
#> [545,]  83   4      0        103        0    97
#> [546,]  81  11      1          8        0   160
#> [547,]  78  23      1         10        1   145
#> [548,]  79   4      0          4        1   183
#> [549,]  78   9      1          4        1   120
#> [550,]  81  15      0        180        1   140
#> [551,]  80   7      1          0        1   146
#> [552,]  83   8      0          8        0   115
#> [553,]  81  16      0         16        1   110
#> [554,]  80   6      1          0        1   150
#> [555,]  80   8      1          7        0   160
#> [556,]  79   0      1          0        1    96
#> [557,]  85   4      0        180        0    90
#> [558,]  81   2      1          1        0   198
#> [559,]  83   2      0          2        1   155
#> [560,]  82   6      0        128        1   100
#> [561,]  84   4      0        167        0   198
#> [562,]  82  23      1          0        0   110
#> [563,]  84   5      0        180        1   203
#> [564,]  81   1      0          1        1   150
#> [565,]  84   1      0         38        1   205
#> [566,]  83   3      0        180        0   174
#> [567,]  81   4      0         90        1   138
#> [568,]  79   9      1          8        0   150
#> [569,]  80  13      1          8        1   140
#> [570,]  84   4      0         89        1   129
#> [571,]  80   2      1          0        1   130
#> [572,]  79   4      0          4        1    60
#> [573,]  80   6      0         71        1   189
#> [574,]  83   1      0          1        1   100
#> [575,]  79  14      1          0        0   110
#> [576,]  83   3      0        114        0    98
#> [577,]  81  14      1         12        1   128
#> [578,]  83   2      0        154        0   130
#> [579,]  82   0      0          2        1   100
#> [580,]  85   9      1          6        1   160
#> [581,]  83   1      0        180        0   160
#> [582,]  81   4      0          4        0   175
#> [583,]  84  15      1         13        1   110
#> [584,]  82   5      1          0        1   146
#> [585,]  81   4      0          4        0   160
#> [586,]  86  12      0        180        1   120
#> [587,]  82   3      1          2        0   130
#> [588,]  82  15      1          0        0   183
#> [589,]  83   7      0        126        0   135
#> [590,]  81  16      1          9        0   180
#> [591,]  84   6      0        165        0   145
#> [592,]  86   3      0          3        1   140
#> [593,]  82   9      0        180        1   134
#> [594,]  84   3      0        180        1   120
#> [595,]  81  13      0        180        0   152
#> [596,]  85   3      0          3        1   118
#> [597,]  81   2      1          0        1   118
#> [598,]  83   4      0          4        0   130
#> [599,]  87   2      0          5        1   137
#> [600,]  82  14      1         11        1   103
#> [601,]  86   6      1          0        1   140
#> [602,]  83  19      0         43        0   150
#> [603,]  84   3      1          2        0   125
#> [604,]  83  10      1          0        1   190
#> [605,]  88  14      1          3        1   130
#> [606,]  83  13      1         12        0   170
#> [607,]  87   2      0        180        0   113
#> [608,]  84   9      0         92        1   110
#> [609,]  84   3      0        180        1   170
#> [610,]  86   4      0         38        1   122
#> [611,]  86  13      0        177        0   163
#> [612,]  85   3      0          3        1   113
#> [613,]  84  13      0         62        1   100
#> [614,]  86   6      1          1        0   112
#> [615,]  88   4      0          4        0   100
#> [616,]  85  22      0         22        1   184
#> [617,]  83   9      0         65        1   150
#> [618,]  86   9      1          7        1   142
#> [619,]  88   3      0        115        0   110
#> [620,]  83   3      0          3        1   130
#> [621,]  87   8      0          8        1   157
#> [622,]  86  15      1          8        1   109
#> [623,]  88   4      0          4        0    86
#> [624,]  89   5      0        119        1   140
#> [625,]  87   1      0          1        0   170
#> [626,]  84   8      0        180        1   119
#> [627,]  85   8      0          8        1   136
#> [628,]  89  10      0         46        1   170
#> [629,]  90  14      0         14        1   100
#> [630,]  88   1      0          1        0   135
#> [631,]  86   4      0        180        1   145
#> [632,]  91   8      0          8        0   100
#> [633,]  87   2      0        180        0   160
#> [634,]  87   6      1          0        0   125
#> [635,]  91  10      0        145        0   135
#> [636,]  88   7      0         24        0   119
#> [637,]  90  11      1         10        1   186
#> [638,]  87   6      0        126        1   168
#> [639,]  86  10      0        180        1   137
#> [640,]  90   4      1          0        0   121
#> [641,]  91   1      0          1        1    74
#> [642,]  87  43      0        178        1   130
#> [643,]  90   5      1          0        1   125
#> [644,]  88   3      1          2        0   159
#> [645,]  89   3      1          1        1   160
#> [646,]  91   3      0         33        1   137
#> [647,]  87   7      0         74        1   105
#> [648,]  89  12      1          0        1   130
#> [649,]  89   2      0        168        0   118
#> [650,]  91   5      0        169        1   176
#> [651,]  89  52      0         52        1   130
#> [652,]  89   4      0          4        1   159
#> [653,]  91   0      0          0        0     0
#> [654,]  89  14      0        180        1    84
#> [655,]  90  18      0        180        0   188
#> [656,]  91   4      1          0        1   120
#> [657,]  90  19      1         11        1   129
#> [658,]  94   6      0         50        0    78
#> [659,]  90   1      0          1        1   118
#> [660,]  91   2      0          2        1   116
#> [661,]  93   8      0        179        1   110
#> [662,]  94   8      0          8        1   142
#> [663,]  92   4      0         76        1   149
#> [664,]  90  16      0         16        1   106
#> [665,]  90   3      0         67        0   162
#> [666,]  91  12      0         53        1   212
#> [667,]  91   7      0          7        0   135
#> [668,]  93   0      1          0        1   122
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0 
#>  [11] 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+   5.0+
#>  [21]   2.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0 
#>  [51]   5.0+ 161.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 177.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+   2.0 
#>  [71]   1.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+   4.0+ 180.0+ 180.0+
#>  [91] 180.0+  77.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 166.0+  99.0 
#> [101] 180.0+  16.0+ 180.0+   7.0+   6.0+ 180.0+ 180.0+  13.0+ 180.0+ 174.0+
#> [111]  28.0    6.0+   1.0  180.0+   9.0+ 180.0+ 180.0+ 175.0+ 180.0+   2.0 
#> [121] 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0 
#> [131] 180.0+ 180.0+ 180.0+  12.0+ 180.0+   8.0    3.0+ 180.0+ 180.0+ 180.0+
#> [141] 140.0  180.0+   1.0  165.0  180.0+ 180.0+ 180.0+   8.0+ 180.0+   0.5 
#> [151] 180.0+ 180.0+ 171.0+  15.0  180.0+ 180.0+ 180.0+   5.0+ 180.0+   4.0+
#> [161] 180.0+   9.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [171] 180.0+  64.0    0.5  180.0+ 171.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+
#> [181]  10.0+ 180.0+   3.0+ 180.0+ 172.0+ 172.0+  24.0    8.0  180.0+  15.0 
#> [191]  77.0   13.0+   8.0+ 180.0+ 180.0+ 180.0+ 170.0   94.0  169.0  180.0+
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0   13.0+   5.0   18.0 
#> [211]   5.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+ 180.0+
#> [231]  84.0    7.0+   1.0    1.0  180.0+ 180.0+   4.0+ 167.0    6.0+ 180.0+
#> [241]  17.0  180.0+  12.0  180.0+ 180.0+  14.0+  36.0  180.0+   3.0+ 180.0+
#> [251]  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0+ 180.0+ 180.0+
#> [261] 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0    3.0  180.0+ 180.0+
#> [271]  11.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0 
#> [281] 180.0+   5.0+  13.0  180.0+ 166.0+  14.0+   0.5+   3.0+ 175.0+   7.0+
#> [291]   8.0  180.0+   1.0  180.0+ 180.0+ 180.0+ 123.0+ 180.0+  79.0   15.0+
#> [301] 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+   8.0+ 175.0 
#> [311]  10.0  180.0+ 180.0+   6.0  180.0+  19.0+  99.0  180.0+ 179.0+ 180.0+
#> [321] 180.0+ 180.0+   0.5    7.0+ 180.0+ 152.0+ 180.0+ 180.0+  93.0    1.0 
#> [331]  18.0+   4.0    5.0    7.0+ 150.0  180.0+ 180.0+ 180.0+ 171.0  180.0+
#> [341] 180.0+ 180.0+ 180.0+  14.0+   7.0+   2.0   45.0  103.0  180.0+   5.0+
#> [351] 180.0+ 180.0+  97.0  180.0+   8.0+   2.0+  18.0  172.0+ 180.0+ 180.0+
#> [361]   7.0  180.0+   7.0    8.0+  13.0+ 180.0+  51.0  180.0+  76.0  180.0+
#> [371] 180.0+ 162.0    7.0+   7.0+ 124.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [381] 173.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+  16.0+ 180.0+ 180.0+   6.0 
#> [391] 180.0+  15.0   13.0+ 180.0+ 180.0+   2.0   20.0   20.0    0.5  180.0+
#> [401] 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0 
#> [411] 180.0+ 175.0  180.0+  10.0+ 180.0+   8.0+ 179.0+   1.0  180.0+ 180.0+
#> [421]  15.0   10.0  104.0+   1.0   57.0  180.0+   3.0+   5.0  180.0+ 180.0+
#> [431] 180.0+  34.0  177.0+ 180.0+ 180.0+  11.0+   4.0+ 180.0+   7.0   15.0+
#> [441] 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+  85.0  180.0+  17.0+ 180.0+
#> [451]   4.0    7.0  180.0+ 180.0+  46.0  180.0+   4.0  180.0+  52.0  180.0+
#> [461] 180.0+  12.0  180.0+ 180.0+ 180.0+  33.0    5.0  180.0+ 180.0+   7.0+
#> [471] 180.0+ 176.0+  18.0  180.0+  47.0   11.0  180.0+   7.0  180.0+   7.0 
#> [481]  32.0  180.0+ 180.0+   8.0  180.0+   1.0  180.0+ 180.0+   4.0+ 180.0+
#> [491]  11.0    3.0   24.0   32.0   23.0    3.0+ 180.0+ 180.0+ 180.0+   4.0 
#> [501]  10.0+   6.0    3.0+   2.0+ 171.0    1.0   43.0    3.0    6.0  138.0 
#> [511] 180.0+   8.0   40.0   59.0  180.0+  93.0  180.0+ 180.0+  22.0   15.0+
#> [521]   5.0+ 180.0+   3.0  166.0+  71.0   20.0+   1.0    3.0+  10.0  180.0+
#> [531]  10.0    6.0    5.0    1.0  180.0+ 108.0  180.0+ 125.0  180.0+ 180.0+
#> [541]   4.0    9.0+ 180.0+ 180.0+ 103.0  180.0+  70.0    4.0  180.0+ 180.0+
#> [551]   7.0+   8.0+  16.0  180.0+ 180.0+   0.5  180.0+ 180.0+   2.0  128.0 
#> [561] 167.0   62.0  180.0+   1.0   38.0  180.0+  90.0  180.0+ 180.0+  89.0 
#> [571] 180.0+   4.0   71.0    1.0  180.0+ 114.0  180.0+ 154.0    2.0  180.0+
#> [581] 180.0+   4.0+ 180.0+   5.0+   4.0+ 180.0+   3.0   83.0  126.0  180.0+
#> [591] 165.0    3.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+   4.0+   5.0  174.0 
#> [601]   6.0   43.0  180.0+ 180.0+  14.0   13.0  180.0+  92.0  180.0+  38.0 
#> [611] 177.0    3.0+  62.0    6.0+   4.0+  22.0   65.0   11.0  115.0    3.0+
#> [621]   8.0+ 180.0+   4.0  119.0    1.0+ 180.0+   8.0   46.0   14.0    1.0+
#> [631] 180.0+   8.0  180.0+  25.0  145.0   24.0   11.0  126.0  180.0+   4.0 
#> [641]   1.0  178.0+  89.0   75.0    3.0+  33.0   74.0  180.0+ 168.0  169.0 
#> [651]  52.0    4.0    0.5  180.0+ 180.0+   4.0  180.0+  50.0    1.0+   2.0 
#> [661] 179.0+   8.0+  76.0   16.0   67.0   53.0    7.0+   0.5  180.0+  15.0+
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
#>   0.8591648 
```
