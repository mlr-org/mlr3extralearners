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
#> min 0.00327    45   2.898 0.1290       6
#> 1se 0.06427    13   3.010 0.1342       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      0        180        0   121
#>   [7,]  38   2      0        115        0   150
#>   [8,]  38  12      1          8        1   120
#>   [9,]  33   6      1          1        1   115
#>  [10,]  38  16      1         10        0   160
#>  [11,]  38  12      1         11        1    92
#>  [12,]  40  12      1          9        0   153
#>  [13,]  42   3      1          1        1   130
#>  [14,]  40   2      1          1        1   148
#>  [15,]  42   2      0        180        1   100
#>  [16,]  42   2      0          2        0   140
#>  [17,]  40  11      1         10        1   120
#>  [18,]  42   2      0        180        0   100
#>  [19,]  43   3      1          0        1   100
#>  [20,]  41   2      1          1        0   166
#>  [21,]  42   4      0        180        0   162
#>  [22,]  40   3      1          1        0   170
#>  [23,]  42   2      0        180        1   124
#>  [24,]  44   5      1          1        0   170
#>  [25,]  45   3      0        180        1   154
#>  [26,]  41  10      1          8        0   150
#>  [27,]  44   3      0        180        0   141
#>  [28,]  41   5      1          4        1   141
#>  [29,]  44   2      1          1        1   150
#>  [30,]  46   2      1          1        0   126
#>  [31,]  47   4      1          3        0   118
#>  [32,]  48  15      0        180        1   160
#>  [33,]  44   3      1          0        1   180
#>  [34,]  46   7      1          2        0   166
#>  [35,]  43  29      0        180        1   180
#>  [36,]  47   6      1          0        1   116
#>  [37,]  47   4      1          3        1   160
#>  [38,]  45   8      1          0        1   117
#>  [39,]  49   5      0         73        1   136
#>  [40,]  45   5      0          5        0   141
#>  [41,]  46   2      1          1        1   122
#>  [42,]  44   4      1          0        1   114
#>  [43,]  47   2      0        180        0   108
#>  [44,]  45   5      0        180        1   190
#>  [45,]  46   5      1          3        0   130
#>  [46,]  44   2      0        180        0   142
#>  [47,]  46  15      0        180        1   120
#>  [48,]  45   9      1          0        1   145
#>  [49,]  47   3      1          1        1   120
#>  [50,]  47   5      1          3        1   130
#>  [51,]  46   3      1          0        1   119
#>  [52,]  49   4      0        180        0   117
#>  [53,]  47  10      0         10        1   140
#>  [54,]  50   1      1          0        1   129
#>  [55,]  48   2      1          0        0   184
#>  [56,]  50   4      1          1        0   125
#>  [57,]  49   7      1          7        1   110
#>  [58,]  46   3      1          1        1   140
#>  [59,]  50   7      0        180        1   110
#>  [60,]  49   2      0          2        0   105
#>  [61,]  51   1      0          1        1   145
#>  [62,]  49  15      1         11        1   160
#>  [63,]  47   2      0        180        0   150
#>  [64,]  46   6      1          0        1   156
#>  [65,]  52   2      0        180        1   170
#>  [66,]  50   7      1          0        1    92
#>  [67,]  50   4      0          4        1   100
#>  [68,]  51   3      1          2        0   113
#>  [69,]  50   1      1          0        0   150
#>  [70,]  50   9      0        180        0   130
#>  [71,]  47   6      0        180        1   162
#>  [72,]  51   8      0        180        1   140
#>  [73,]  46   1      1          1        0   145
#>  [74,]  48  17      1         10        0   111
#>  [75,]  47   2      1          1        0   110
#>  [76,]  52   4      1          4        0   152
#>  [77,]  49   9      1          3        0   102
#>  [78,]  49  15      0        180        1   160
#>  [79,]  53   5      0        180        1   140
#>  [80,]  54  17      1         12        1   102
#>  [81,]  53   7      1          0        0   199
#>  [82,]  54   6      1          3        0   129
#>  [83,]  50   2      0          5        1   106
#>  [84,]  53   8      1          7        0   160
#>  [85,]  48   3      1          2        0   150
#>  [86,]  51  25      1          1        0   202
#>  [87,]  53   4      0          4        0   140
#>  [88,]  52  14      1          7        1   200
#>  [89,]  48  11      1         10        0   120
#>  [90,]  53   4      1          0        1   156
#>  [91,]  51  13      0         99        1   160
#>  [92,]  54   9      1          0        1   138
#>  [93,]  49  16      0         16        0   125
#>  [94,]  54  23      1         10        0   131
#>  [95,]  52   7      1          2        0   154
#>  [96,]  54   9      1          1        0   130
#>  [97,]  55   4      1          2        0   150
#>  [98,]  52   4      0        180        1   180
#>  [99,]  51  13      1         11        0   145
#> [100,]  50   5      1          4        1   150
#> [101,]  54   4      1          0        1   121
#> [102,]  52   4      0        180        0   183
#> [103,]  50   3      0        174        1   153
#> [104,]  55  28      1         13        1   160
#> [105,]  49   6      1          0        1   130
#> [106,]  50   7      1          1        0   156
#> [107,]  53   9      0          9        1    95
#> [108,]  50   7      1          0        1   127
#> [109,]  52   5      0        175        1   117
#> [110,]  55   1      0        180        0   127
#> [111,]  54   1      0        180        0   162
#> [112,]  54   7      1          0        1   100
#> [113,]  56   3      0        180        1   193
#> [114,]  55   5      1          4        1   120
#> [115,]  52   8      0        180        0   119
#> [116,]  53  18      1          9        1   150
#> [117,]  54   3      0        180        1   180
#> [118,]  55   6      0        180        0   170
#> [119,]  52  16      1         14        0   170
#> [120,]  53  15      0         15        1    90
#> [121,]  53   4      0        180        1   150
#> [122,]  54   3      0        180        0   128
#> [123,]  55   1      0          2        0   130
#> [124,]  57   3      0          3        0   120
#> [125,]  54   7      1          2        0   129
#> [126,]  52   9      1          3        0   170
#> [127,]  54   2      1          1        1   176
#> [128,]  57   5      1          3        1   138
#> [129,]  57   1      0        180        1   156
#> [130,]  56   4      1          0        1   140
#> [131,]  52   2      0        180        0   140
#> [132,]  52  15      1         14        0   130
#> [133,]  56  14      1         11        0   130
#> [134,]  57  10      0        180        1   170
#> [135,]  58   8      0          8        1   130
#> [136,]  54   5      0        180        1   108
#> [137,]  55   3      1          1        1   156
#> [138,]  53  21      1         13        1   130
#> [139,]  57   4      0        180        1   119
#> [140,]  58   6      1          0        1    90
#> [141,]  53  15      1         10        1   130
#> [142,]  54  17      1          8        1   227
#> [143,]  55   9      1          2        1   147
#> [144,]  56   5      0          5        1   150
#> [145,]  54  23      1          8        0   120
#> [146,]  53   4      0        147        1   145
#> [147,]  53   7      1          0        1   120
#> [148,]  55   5      0          5        1   131
#> [149,]  54   7      1          0        1   141
#> [150,]  59  15      1         10        0   140
#> [151,]  59   9      1          1        1   125
#> [152,]  57   1      0        180        0   148
#> [153,]  58   4      1          0        1   160
#> [154,]  60   5      1          1        0   138
#> [155,]  57   5      0        180        1   130
#> [156,]  58  11      1          9        1   124
#> [157,]  55   5      1          0        1   160
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
#> [169,]  61   3      1          2        1   102
#> [170,]  61  20      1         13        0   130
#> [171,]  58  10      0         10        1   150
#> [172,]  61   3      0         17        0   143
#> [173,]  57   3      1          2        0   120
#> [174,]  58  19      1         13        1   140
#> [175,]  56  18      1         11        1   165
#> [176,]  58  11      0        172        1   135
#> [177,]  60  12      1          0        1   114
#> [178,]  55   9      1          7        1   135
#> [179,]  61   4      1          0        1   115
#> [180,]  61  13      1         12        1   130
#> [181,]  57   1      0          1        0   126
#> [182,]  57  15      1         13        1   110
#> [183,]  59   5      1          2        0   182
#> [184,]  58   5      1          1        1   135
#> [185,]  61  13      0         13        0   210
#> [186,]  62   7      1          2        1   180
#> [187,]  61  18      0        170        0   140
#> [188,]  60   7      0          7        0   147
#> [189,]  59  13      1          2        0   198
#> [190,]  57  12      1          9        1   120
#> [191,]  62   4      1          0        0   160
#> [192,]  62   4      1          3        0   173
#> [193,]  58   2      0         30        0   202
#> [194,]  59   1      0        180        0   155
#> [195,]  59  16      1          9        1   133
#> [196,]  61  13      0         13        0   120
#> [197,]  61   5      0          5        1   110
#> [198,]  57  18      1          9        1    93
#> [199,]  61   5      0          5        1   160
#> [200,]  58  11      1          9        0   179
#> [201,]  57   2      1          1        0   159
#> [202,]  58   7      0        180        1   150
#> [203,]  63   1      0        180        1   130
#> [204,]  61   7      0        180        0   135
#> [205,]  63   4      1          3        0   222
#> [206,]  62   3      0        180        1   105
#> [207,]  63   4      1          1        0   155
#> [208,]  60  18      1         13        0   132
#> [209,]  58   9      1          9        0   110
#> [210,]  59   1      0         22        1   162
#> [211,]  60   7      1          1        1    90
#> [212,]  65  13      0        180        1   100
#> [213,]  63   1      0          1        0   130
#> [214,]  62   6      0        180        0   170
#> [215,]  61  15      1         13        0   170
#> [216,]  59   4      0          4        0   149
#> [217,]  60   3      0          3        0   168
#> [218,]  63  12      1         10        0   200
#> [219,]  61   6      1          1        1   117
#> [220,]  66   1      1          0        1   120
#> [221,]  64   6      1          0        1   140
#> [222,]  63  14      1          9        0   123
#> [223,]  65  36      1         11        0   140
#> [224,]  63   4      1          3        0   162
#> [225,]  66   3      1          1        0   127
#> [226,]  61  10      1          2        1   194
#> [227,]  64  32      1          9        1   160
#> [228,]  63  12      1          9        0   114
#> [229,]  66   5      1          0        1   110
#> [230,]  65   8      1          0        0   168
#> [231,]  65  10      1          8        1   120
#> [232,]  64  21      1         10        0   190
#> [233,]  61  12      1         11        0   154
#> [234,]  64   9      0        180        0   150
#> [235,]  61   4      0        180        1   113
#> [236,]  65   3      0        180        1   190
#> [237,]  63  16      1          7        1   110
#> [238,]  64   7      0        180        1   120
#> [239,]  66   6      1          1        1   130
#> [240,]  62   3      1          1        1   199
#> [241,]  65   6      0          9        0   112
#> [242,]  65   3      1          0        1    80
#> [243,]  63   5      1          4        0   170
#> [244,]  63   2      1          1        0   180
#> [245,]  64   2      0          2        0   201
#> [246,]  66  18      1          5        0   142
#> [247,]  62   9      0        180        0   145
#> [248,]  61  14      1          5        0   140
#> [249,]  61  15      1         10        0   130
#> [250,]  63   9      1          8        1   160
#> [251,]  63   3      1          2        0   120
#> [252,]  64  19      1          8        1   160
#> [253,]  65   8      1          0        1   140
#> [254,]  67   6      0        180        1   170
#> [255,]  68   5      1          4        1   150
#> [256,]  66   7      1          0        1   115
#> [257,]  64  14      1         13        1   150
#> [258,]  67   4      1          3        0   130
#> [259,]  66   3      1          0        1   135
#> [260,]  65   2      1          1        1   170
#> [261,]  68   1      0        180        1   166
#> [262,]  64  10      1          9        1   110
#> [263,]  63   7      1          0        0   162
#> [264,]  67   8      1          1        1   130
#> [265,]  63  10      0         16        1   160
#> [266,]  66  14      0        180        0   130
#> [267,]  68  18      0        180        1   260
#> [268,]  65  17      1         14        1   100
#> [269,]  63   8      1          1        1   162
#> [270,]  65  18      1          3        0   120
#> [271,]  63   1      1          0        1   155
#> [272,]  63  10      0         18        1   130
#> [273,]  67  11      0         11        0   150
#> [274,]  68  11      0        180        0   160
#> [275,]  68  14      0         79        0   172
#> [276,]  65  15      1         12        1   150
#> [277,]  69  12      0         15        1   140
#> [278,]  66  15      1         13        1   160
#> [279,]  63   2      0        180        0   150
#> [280,]  65  11      1          6        0   130
#> [281,]  69  21      1         10        0   180
#> [282,]  69   6      0        180        1   100
#> [283,]  66   9      1          8        0   130
#> [284,]  63   8      0        180        1   120
#> [285,]  66   3      0          3        1   138
#> [286,]  69   1      1          0        0   170
#> [287,]  68  10      1         10        1   150
#> [288,]  67   7      1          4        1   130
#> [289,]  65   6      0          6        0    80
#> [290,]  65  10      1          1        1   148
#> [291,]  66  19      1         12        1   150
#> [292,]  67  12      1         12        0   160
#> [293,]  65   4      1          1        0   130
#> [294,]  64   4      0        179        0   160
#> [295,]  66   4      0        180        1   130
#> [296,]  70  15      1         12        1   132
#> [297,]  64  11      0         11        0   125
#> [298,]  64   4      0        180        1   140
#> [299,]  64   0      1          0        1   118
#> [300,]  67   2      0         18        0   131
#> [301,]  66   4      0        180        0   177
#> [302,]  68   4      1          0        1   160
#> [303,]  65  13      1         12        1   130
#> [304,]  69  17      1         10        0   140
#> [305,]  69   8      0         93        0   140
#> [306,]  66   6      0        180        0   140
#> [307,]  68  18      1          0        1   160
#> [308,]  65   6      0        101        1   115
#> [309,]  68   4      0          4        1   190
#> [310,]  71   3      0          5        0   112
#> [311,]  68   7      0        150        0   210
#> [312,]  71  20      1          0        1   160
#> [313,]  67   2      0        180        0   128
#> [314,]  66   9      1          3        1   151
#> [315,]  66   1      1          1        1   165
#> [316,]  70   4      1          0        1   180
#> [317,]  70  14      0        171        0   166
#> [318,]  67   6      1          4        0   130
#> [319,]  68  18      1         14        1   170
#> [320,]  69   0      0          0        1   148
#> [321,]  68   7      1          0        1   150
#> [322,]  69   3      1          2        0   151
#> [323,]  67  14      1         13        0   130
#> [324,]  66   2      0          2        1   228
#> [325,]  71   6      0         45        1   158
#> [326,]  71   3      0        103        0   133
#> [327,]  69   3      0          3        1   130
#> [328,]  70  22      1         13        0   103
#> [329,]  67   1      0         36        1   104
#> [330,]  67   5      0          5        0   130
#> [331,]  72   3      1          0        1   132
#> [332,]  72   7      0          7        1   110
#> [333,]  69   8      1          7        1   108
#> [334,]  66   2      1          1        0   123
#> [335,]  68  18      0         18        1   100
#> [336,]  67  14      0        172        1   140
#> [337,]  68   2      0          7        1   130
#> [338,]  69   8      1          2        0   121
#> [339,]  70   3      0        123        0   130
#> [340,]  70   9      0        180        1   142
#> [341,]  72   5      1          4        0   170
#> [342,]  67  22      1          1        1   140
#> [343,]  68   3      0         19        0   135
#> [344,]  67  12      1          8        0   120
#> [345,]  69   1      0          1        1   110
#> [346,]  67   1      0          1        1    60
#> [347,]  67   4      0         60        1   136
#> [348,]  69   5      0         76        0   120
#> [349,]  67   8      1          0        1   130
#> [350,]  66  24      1         13        0   130
#> [351,]  70  35      1          0        1   105
#> [352,]  72  30      1          0        1   145
#> [353,]  68   7      1          2        0   135
#> [354,]  73  20      1          0        1   170
#> [355,]  69  10      1          6        1   120
#> [356,]  70  11      0        180        1   210
#> [357,]  72  19      1          8        0   120
#> [358,]  72  12      1         10        0   170
#> [359,]  67   8      0        180        1   170
#> [360,]  67   5      1          0        1   147
#> [361,]  73  13      0        152        1   130
#> [362,]  70   5      0        180        0   150
#> [363,]  72   2      0          2        1   100
#> [364,]  67   4      1          1        0   134
#> [365,]  72   6      1          5        0   115
#> [366,]  68  23      0        180        1   220
#> [367,]  70   3      0        180        0   121
#> [368,]  69   3      0        180        0   220
#> [369,]  71   3      1          2        0   150
#> [370,]  68   4      1          3        0   210
#> [371,]  72   5      0         28        0   120
#> [372,]  71   5      0        180        0   191
#> [373,]  73   6      0        180        1   117
#> [374,]  69  16      1         10        1   140
#> [375,]  69   8      1          1        0   164
#> [376,]  68   7      0        180        1   130
#> [377,]  72  16      1          1        1   130
#> [378,]  72   8      1          1        1   150
#> [379,]  71   2      1          0        1   180
#> [380,]  73   7      0          7        1   140
#> [381,]  68  15      1         13        1   130
#> [382,]  70   3      0          3        1   159
#> [383,]  70  13      1          9        0   100
#> [384,]  72   6      0        180        1   130
#> [385,]  74   8      1          0        1    85
#> [386,]  69   2      1          0        1   110
#> [387,]  71   3      1          1        0   150
#> [388,]  71  15      1         11        0   165
#> [389,]  74  20      0         20        1   180
#> [390,]  71  20      1         10        0   140
#> [391,]  74   0      1          0        1    90
#> [392,]  73   3      1          0        1   136
#> [393,]  70   5      1          0        1   190
#> [394,]  71   8      1          7        0   149
#> [395,]  71   3      1          2        1   190
#> [396,]  69  12      1          1        1   149
#> [397,]  73   4      0         58        1   160
#> [398,]  72   5      1          3        1   160
#> [399,]  70   3      0        180        1   154
#> [400,]  73   6      0        180        0   110
#> [401,]  71   7      1          2        0   143
#> [402,]  71  13      1          8        0   121
#> [403,]  69   2      1          1        1    80
#> [404,]  71  14      1         13        1   170
#> [405,]  72  10      1          8        1   153
#> [406,]  72  15      1         13        0   156
#> [407,]  71  10      1          9        1   120
#> [408,]  75   1      0          1        0   133
#> [409,]  75   2      1          1        0   145
#> [410,]  73  10      1          9        1   146
#> [411,]  73  10      1         10        1   120
#> [412,]  74  15      1          9        1   179
#> [413,]  75  13      1          1        1   130
#> [414,]  71  11      1          8        0   110
#> [415,]  70   7      1          4        0   184
#> [416,]  72   1      1          1        0   168
#> [417,]  72   7      0         57        1   145
#> [418,]  72  11      0         11        1   140
#> [419,]  76  25      1         12        1   170
#> [420,]  73  12      1         12        1   140
#> [421,]  75   1      0        180        1   140
#> [422,]  72   4      1          0        1   197
#> [423,]  71   3      1          0        0   144
#> [424,]  73   4      0        180        0   124
#> [425,]  74  34      1          8        1   233
#> [426,]  71  32      1         12        1   107
#> [427,]  72   5      0        180        0   154
#> [428,]  72   3      0        180        0   160
#> [429,]  77  11      0         11        1   150
#> [430,]  77   4      0          4        0   185
#> [431,]  75   3      1          1        0   180
#> [432,]  72   7      1          2        0   142
#> [433,]  71  16      0        180        0   140
#> [434,]  74   7      0        180        1   150
#> [435,]  74   3      0          3        1   128
#> [436,]  74   2      1          1        0   140
#> [437,]  74  19      1          4        1   200
#> [438,]  73   6      0          6        1   114
#> [439,]  75  23      1         14        1   110
#> [440,]  74   2      0        180        0   190
#> [441,]  72   4      0         85        1   120
#> [442,]  72   4      1          3        0   160
#> [443,]  76  17      1          0        1   200
#> [444,]  73   4      1          3        1   125
#> [445,]  76  13      1         10        0   110
#> [446,]  75   4      1          0        1   122
#> [447,]  75   7      0          7        0   190
#> [448,]  73  13      1         11        0   195
#> [449,]  75  12      0         12        1   160
#> [450,]  74   8      1          0        1   105
#> [451,]  75   4      1          2        1   188
#> [452,]  75   1      0          1        1   125
#> [453,]  73   0      0        180        0   156
#> [454,]  76   5      0        180        0   185
#> [455,]  74  10      1          0        1   135
#> [456,]  76   5      1          0        1   167
#> [457,]  74   8      1          8        1   170
#> [458,]  75   9      0        180        1   140
#> [459,]  73  33      1         12        1   175
#> [460,]  77   5      1          0        0   123
#> [461,]  77  12      1          9        1   100
#> [462,]  73  10      1          9        0   146
#> [463,]  77  12      0        180        0   130
#> [464,]  77   1      1          0        1    90
#> [465,]  76  12      1         11        1   120
#> [466,]  74   6      0         79        1   140
#> [467,]  75   3      1          1        1   171
#> [468,]  74   9      1          8        0   200
#> [469,]  75   6      0        180        0   150
#> [470,]  79  10      1          8        0   190
#> [471,]  74   2      1          0        1   130
#> [472,]  78  18      0         18        1   144
#> [473,]  76  29      0         47        0    90
#> [474,]  73   8      1          1        1   162
#> [475,]  73  11      1          2        1   110
#> [476,]  78   8      1          6        1   110
#> [477,]  74   7      0          7        0   161
#> [478,]  76  13      1          1        1   170
#> [479,]  79   6      0        180        0   170
#> [480,]  80  10      1          6        1   147
#> [481,]  78   0      0        180        1   212
#> [482,]  78  13      1          5        0   130
#> [483,]  75   5      0        119        1   150
#> [484,]  75  12      1          1        1   120
#> [485,]  80   8      0          8        1   120
#> [486,]  74  10      1          8        0   135
#> [487,]  76   1      0          1        1    83
#> [488,]  79   4      0         80        0   145
#> [489,]  78   2      1          1        0   130
#> [490,]  75   4      1          0        0   212
#> [491,]  77   2      1          0        1   143
#> [492,]  78  10      0        180        1   130
#> [493,]  76  11      1          0        0   120
#> [494,]  75  11      1          4        0   162
#> [495,]  76   7      0         29        1   150
#> [496,]  80   9      0         23        1   128
#> [497,]  78   6      1          0        1   240
#> [498,]  76   3      1          0        1   140
#> [499,]  79  11      0        180        0   160
#> [500,]  78  14      1          0        1   140
#> [501,]  81   1      0          1        0   130
#> [502,]  78  11      1          8        1   118
#> [503,]  76   4      0          4        1   160
#> [504,]  79   4      0          4        1   125
#> [505,]  76  12      1         10        1   127
#> [506,]  77   6      0          6        1   107
#> [507,]  80   3      1          0        1   120
#> [508,]  75   2      1          1        1   204
#> [509,]  78  11      0        180        1   135
#> [510,]  77  31      1          3        1   161
#> [511,]  78   7      1          0        1   110
#> [512,]  79   3      0          3        0   120
#> [513,]  79   4      1          0        1   120
#> [514,]  82   5      0          8        1   120
#> [515,]  76   7      0        161        0   151
#> [516,]  79  10      0         10        1   120
#> [517,]  81   4      1          2        1   126
#> [518,]  80   9      0        118        1   186
#> [519,]  80   6      0        173        1   160
#> [520,]  78  32      0        180        1   130
#> [521,]  79   1      0         37        1   140
#> [522,]  78  15      0         15        0   165
#> [523,]  80   5      1          1        1   108
#> [524,]  78   4      0        180        0   175
#> [525,]  79   3      0          3        1   101
#> [526,]  76   1      0        166        0   131
#> [527,]  81   4      1          1        1   104
#> [528,]  78  20      1          0        1   109
#> [529,]  80   1      0          1        0   100
#> [530,]  77  10      1          8        1   130
#> [531,]  77   5      0         85        0   188
#> [532,]  80   2      1          1        0   168
#> [533,]  78   2      0        180        0   148
#> [534,]  80   5      0          5        1   130
#> [535,]  82   1      1          0        1    82
#> [536,]  79  10      0        180        1   150
#> [537,]  77   4      0        180        1    98
#> [538,]  81   1      0        108        0   129
#> [539,]  78  12      0        180        0   134
#> [540,]  79   1      0        125        0   193
#> [541,]  82  21      1          2        0   155
#> [542,]  84  22      1         10        0   180
#> [543,]  79   4      0          4        1   121
#> [544,]  80   6      0          6        1   110
#> [545,]  83   9      1          5        1   170
#> [546,]  82   5      0        180        0   110
#> [547,]  83   5      0        180        0   148
#> [548,]  79   7      1          6        0   130
#> [549,]  83   4      0        103        0    97
#> [550,]  81  11      1          8        0   160
#> [551,]  80  11      1          8        0   170
#> [552,]  78  23      1         10        1   145
#> [553,]  78   9      1          4        1   120
#> [554,]  79   1      0        180        1   170
#> [555,]  81  15      0        180        1   140
#> [556,]  84   5      1          1        1    85
#> [557,]  81  20      1          9        0   170
#> [558,]  81  16      0         16        1   110
#> [559,]  80   6      1          0        1   150
#> [560,]  80  11      1          8        0   110
#> [561,]  80   8      1          7        0   160
#> [562,]  79   7      0        177        0   197
#> [563,]  79   0      1          0        1    96
#> [564,]  85   4      0        180        0    90
#> [565,]  81   2      1          1        0   198
#> [566,]  84   4      0        167        0   198
#> [567,]  80   3      1          1        1   230
#> [568,]  82  23      1          0        0   110
#> [569,]  84   5      0        180        1   203
#> [570,]  84   4      0          4        1    85
#> [571,]  84   1      0         38        1   205
#> [572,]  83   3      0        180        0   174
#> [573,]  85   3      1          2        1   160
#> [574,]  84   4      0         89        1   129
#> [575,]  80   2      1          0        1   130
#> [576,]  79   4      0          4        1    60
#> [577,]  80   6      0         71        1   189
#> [578,]  82  19      0         19        0   120
#> [579,]  83   9      0        180        0   198
#> [580,]  79  14      1          0        0   110
#> [581,]  83   3      0        114        0    98
#> [582,]  83   2      0        154        0   130
#> [583,]  82   0      0          2        1   100
#> [584,]  85   9      1          6        1   160
#> [585,]  81   4      0          4        0   175
#> [586,]  81   1      0          1        1   145
#> [587,]  81  12      0         12        1   163
#> [588,]  82   5      1          0        1   146
#> [589,]  83  12      1          2        1   170
#> [590,]  81  19      1         14        0   120
#> [591,]  83   7      0        126        0   135
#> [592,]  86   8      0          8        1   132
#> [593,]  84   6      0        165        0   145
#> [594,]  86   3      0          3        1   140
#> [595,]  82   9      0        180        1   134
#> [596,]  84   3      0        180        1   120
#> [597,]  81  13      0        180        0   152
#> [598,]  81   2      1          0        1   118
#> [599,]  81   4      0        180        0   160
#> [600,]  82   1      0        180        1   193
#> [601,]  83   4      0          4        0   130
#> [602,]  87   2      0          5        1   137
#> [603,]  86  12      1          0        1   132
#> [604,]  86   6      1          0        1   140
#> [605,]  84  16      0         70        1   150
#> [606,]  83  19      0         43        0   150
#> [607,]  84   3      1          2        0   125
#> [608,]  83  10      1          0        1   190
#> [609,]  88  14      1          3        1   130
#> [610,]  84   3      0          3        1   121
#> [611,]  84   7      1          2        0   148
#> [612,]  87   2      0        180        0   113
#> [613,]  84   9      0         92        1   110
#> [614,]  86   4      0         38        1   122
#> [615,]  86  13      0        177        0   163
#> [616,]  85   3      0          3        1   113
#> [617,]  86   6      0          6        1   117
#> [618,]  86   6      1          1        0   112
#> [619,]  88   4      0          4        0   100
#> [620,]  88   4      0          4        1   115
#> [621,]  85  22      0         22        1   184
#> [622,]  83   9      0         65        1   150
#> [623,]  86   9      1          7        1   142
#> [624,]  87   2      0        180        1   130
#> [625,]  88   3      0        115        0   110
#> [626,]  88   2      0        180        1    68
#> [627,]  83   3      0          3        1   130
#> [628,]  87   8      0          8        1   157
#> [629,]  86  15      1          8        1   109
#> [630,]  88   4      0          4        0    86
#> [631,]  89   5      0        119        1   140
#> [632,]  87   6      0        180        1   110
#> [633,]  84   8      0        180        1   119
#> [634,]  84   0      0        180        1   136
#> [635,]  89  10      0         46        1   170
#> [636,]  90  14      0         14        1   100
#> [637,]  91   8      0          8        0   100
#> [638,]  87   2      0        180        0   160
#> [639,]  87   6      1          0        0   125
#> [640,]  86   3      1          0        1    80
#> [641,]  88   7      0         24        0   119
#> [642,]  88   8      0         50        1   154
#> [643,]  90  11      1         10        1   186
#> [644,]  87   6      0        126        1   168
#> [645,]  86  10      0        180        1   137
#> [646,]  86   9      1          7        0   130
#> [647,]  90   4      1          0        0   121
#> [648,]  91   1      0          1        1    74
#> [649,]  87   5      0         36        1   150
#> [650,]  90   5      1          0        1   125
#> [651,]  91   3      0         33        1   137
#> [652,]  88   5      0        158        0   100
#> [653,]  89  12      1          0        1   130
#> [654,]  90  18      0        180        0   188
#> [655,]  91   4      1          0        1   120
#> [656,]  90  19      1         11        1   129
#> [657,]  94   6      0         50        0    78
#> [658,]  90   1      0          1        1   118
#> [659,]  91   2      0          2        1   116
#> [660,]  91   1      0        180        0   158
#> [661,]  90  16      0         16        1   106
#> [662,]  90   3      0         67        0   162
#> [663,]  96   3      0         12        1    97
#> [664,]  95   8      1          5        1   150
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+ 115.0   12.0  180.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+ 180.0+   2.0+ 180.0+ 180.0+   3.0  180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+  73.0    5.0+
#>  [41] 161.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+   2.0 
#>  [61]   1.0  179.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+  88.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 166.0+
#>  [91]  99.0  180.0+  16.0+ 152.0+   7.0+ 180.0+ 180.0+ 180.0+  13.0+ 171.0+
#> [101] 180.0+ 180.0+ 174.0+  28.0    6.0+ 180.0+   9.0+ 180.0+ 175.0+ 180.0+
#> [111] 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0   15.0+
#> [121] 180.0+ 180.0+   2.0    3.0+ 180.0+ 180.0+ 180.0+ 140.0  180.0+ 165.0 
#> [131] 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [141] 180.0+ 171.0+  15.0    5.0+ 180.0+ 147.0+ 180.0+   5.0+ 180.0+ 180.0+
#> [151] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+
#> [161] 180.0+ 180.0+   9.0+ 180.0+   0.5  171.0+ 180.0+ 180.0+   3.0  180.0+
#> [171]  10.0+  17.0    3.0+  19.0  180.0+ 172.0+ 172.0+  24.0  180.0+ 180.0+
#> [181]   1.0+  15.0  180.0+ 180.0+  13.0+ 180.0+ 170.0    7.0+ 180.0+ 180.0+
#> [191] 180.0+ 180.0+  30.0  180.0+ 180.0+  13.0+   5.0   18.0    5.0+ 180.0+
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+   9.0   22.0 
#> [211] 180.0+ 180.0+   1.0  180.0+ 180.0+   4.0+   3.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+  14.0+  36.0  180.0+   3.0+  88.0  180.0+  12.0  180.0+ 180.0+
#> [231] 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [241]   9.0    3.0  180.0+ 180.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [251]   3.0+ 103.0   15.0  180.0+   5.0+ 179.0+  14.0+ 180.0+   3.0+ 175.0+
#> [261] 180.0+ 180.0+   7.0+   8.0   16.0  180.0+ 180.0+ 180.0+ 180.0+ 123.0+
#> [271]   1.0+  18.0   11.0+ 180.0+  79.0   15.0+  15.0  180.0+ 180.0+ 180.0+
#> [281] 174.0+ 180.0+ 180.0+ 180.0+   3.0  175.0   10.0  180.0+   6.0  180.0+
#> [291]  19.0+  12.0  180.0+ 179.0+ 180.0+ 180.0+  11.0+ 180.0+   0.5   18.0 
#> [301] 180.0+ 180.0+ 180.0+ 180.0+  93.0  180.0+  18.0+ 101.0    4.0    5.0 
#> [311] 150.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 171.0    6.0  180.0+   0.5 
#> [321] 180.0+ 180.0+ 180.0+   2.0   45.0  103.0    3.0+ 180.0+  36.0    5.0+
#> [331] 180.0+   7.0    8.0+   2.0+  18.0  172.0+   7.0    8.0+ 123.0  180.0+
#> [341] 180.0+  51.0   19.0  180.0+   1.0    1.0   60.0   76.0  180.0+ 180.0+
#> [351] 180.0+ 162.0    7.0+ 124.0  180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+
#> [361] 152.0  180.0+   2.0   76.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [371]  28.0  180.0+ 180.0+  16.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+   7.0+
#> [381]  15.0    3.0+  13.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0   20.0 
#> [391]   0.5  180.0+ 180.0+   8.0    3.0   12.0   58.0  180.0+ 180.0+ 180.0+
#> [401] 180.0+ 175.0    2.0   14.0+  10.0+ 180.0+ 179.0+   1.0  180.0+ 180.0+
#> [411]  15.0  180.0+  13.0  180.0+ 104.0+   1.0   57.0   11.0  180.0+  12.0 
#> [421] 180.0+ 180.0+ 180.0+ 180.0+  34.0  177.0+ 180.0+ 180.0+  11.0+   4.0+
#> [431] 180.0+   7.0  180.0+ 180.0+   3.0  180.0+ 180.0+   6.0  180.0+ 180.0+
#> [441]  85.0  180.0+  17.0+ 180.0+ 174.0+   4.0    7.0  180.0+  12.0  180.0+
#> [451]  46.0    1.0  180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+  33.0    5.0 
#> [461] 180.0+ 180.0+ 180.0+   1.0   12.0   79.0    3.0  168.0+ 180.0+ 180.0+
#> [471] 176.0+  18.0   47.0  180.0+  11.0    8.0+   7.0  180.0+ 180.0+  10.0 
#> [481] 180.0+ 172.0  119.0   12.0    8.0  180.0+   1.0   80.0  180.0+   4.0+
#> [491]   2.0  180.0+  11.0  152.0+  29.0   23.0  180.0+   3.0+ 180.0+ 180.0+
#> [501]   1.0   11.0    4.0    4.0  180.0+   6.0    3.0+   2.0+ 180.0+ 171.0 
#> [511]  43.0    3.0  138.0    8.0  161.0   10.0+  93.0  118.0  173.0  180.0+
#> [521]  37.0   15.0+   5.0+ 180.0+   3.0  166.0+  71.0   20.0+   1.0   10.0 
#> [531]  85.0   10.0  180.0+   5.0    1.0  180.0+ 180.0+ 108.0  180.0+ 125.0 
#> [541] 180.0+ 180.0+   4.0    6.0    9.0+ 180.0+ 180.0+ 180.0+ 103.0  180.0+
#> [551] 169.0   70.0  180.0+ 180.0+ 180.0+ 180.0+  20.0   16.0  180.0+ 180.0+
#> [561] 180.0+ 177.0+   0.5  180.0+ 180.0+ 167.0    3.0+  62.0  180.0+   4.0 
#> [571]  38.0  180.0+ 180.0+  89.0  180.0+   4.0   71.0   19.0  180.0+ 180.0+
#> [581] 114.0  154.0    2.0  180.0+   4.0+   1.0   12.0    5.0+  77.0  180.0+
#> [591] 126.0    8.0  165.0    3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [601]   4.0+   5.0  180.0+   6.0   70.0   43.0  180.0+ 180.0+  14.0    3.0 
#> [611] 180.0+ 180.0+  92.0   38.0  177.0    3.0+   6.0+   6.0+   4.0+   4.0 
#> [621]  22.0   65.0   11.0  180.0+ 115.0  180.0+   3.0+   8.0+ 180.0+   4.0 
#> [631] 119.0  180.0+ 180.0+ 180.0+  46.0   14.0    8.0  180.0+  25.0    3.0 
#> [641]  24.0   50.0   11.0  126.0  180.0+ 180.0+   4.0    1.0   36.0   89.0 
#> [651]  33.0  158.0  180.0+ 180.0+   4.0  180.0+  50.0    1.0+   2.0  180.0+
#> [661]  16.0   67.0   12.0    8.0   53.0    7.0+  69.0    2.0    3.0   15.0+
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
#>   0.8592977 
```
