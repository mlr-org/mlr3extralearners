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
#> min 0.00346    44   2.776 0.1403       6
#> 1se 0.06795    12   2.908 0.1437       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35   5      1          2        0   172
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  36   1      0        180        1   155
#>   [7,]  35   0      0        180        1   119
#>   [8,]  38  12      1          8        1   120
#>   [9,]  36   5      1          0        1   115
#>  [10,]  33   6      1          1        1   115
#>  [11,]  38  16      1         10        0   160
#>  [12,]  42   3      1          1        1   130
#>  [13,]  37   1      1          0        1   146
#>  [14,]  40   2      1          1        1   148
#>  [15,]  38   5      1          3        0   125
#>  [16,]  42   2      0          2        0   140
#>  [17,]  42   2      0        180        0   100
#>  [18,]  43   3      1          0        1   100
#>  [19,]  41   2      1          1        0   166
#>  [20,]  43   4      1          0        1   130
#>  [21,]  42   4      0        180        0   162
#>  [22,]  42  15      1         13        1   125
#>  [23,]  40   3      1          1        0   170
#>  [24,]  42  12      1         10        1   170
#>  [25,]  44   5      1          1        0   170
#>  [26,]  45   3      0        180        1   154
#>  [27,]  41  10      1          8        0   150
#>  [28,]  44   3      0        180        0   141
#>  [29,]  45   9      1          7        0   110
#>  [30,]  41   5      1          4        1   141
#>  [31,]  44   2      1          1        1   150
#>  [32,]  46   2      1          1        0   126
#>  [33,]  47   4      1          3        0   118
#>  [34,]  48  15      0        180        1   160
#>  [35,]  44   3      1          0        1   180
#>  [36,]  43  29      0        180        1   180
#>  [37,]  45   4      1          0        0   124
#>  [38,]  47   6      1          0        1   116
#>  [39,]  46  13      1         10        0   100
#>  [40,]  44   0      1          0        1    96
#>  [41,]  43   3      1          0        1   124
#>  [42,]  45   5      0          5        0   141
#>  [43,]  46   2      1          1        1   122
#>  [44,]  46   6      1          0        1   100
#>  [45,]  44   4      1          0        1   114
#>  [46,]  47   2      0        180        0   108
#>  [47,]  44   9      1          8        1   135
#>  [48,]  46   5      1          3        0   130
#>  [49,]  46   4      0        180        1   121
#>  [50,]  46  15      0        180        1   120
#>  [51,]  45   9      1          0        1   145
#>  [52,]  47   3      1          1        1   120
#>  [53,]  48  12      1         11        0   200
#>  [54,]  47   9      1          6        0   170
#>  [55,]  46   3      1          0        1   119
#>  [56,]  49   4      0        180        0   117
#>  [57,]  50   1      1          0        1   129
#>  [58,]  48   2      1          0        0   184
#>  [59,]  47   7      0        180        0   145
#>  [60,]  50   4      1          1        0   125
#>  [61,]  50   6      1          2        1   140
#>  [62,]  46   3      1          1        1   140
#>  [63,]  50   7      0        180        1   110
#>  [64,]  49   2      0          2        0   105
#>  [65,]  51   1      0          1        1   145
#>  [66,]  49  15      1         11        1   160
#>  [67,]  47   2      0        180        0   150
#>  [68,]  49  23      0        179        1   112
#>  [69,]  52   2      0        180        1   170
#>  [70,]  50   7      1          0        1    92
#>  [71,]  50   4      0          4        1   100
#>  [72,]  47   6      0        180        1   162
#>  [73,]  51   8      0        180        1   140
#>  [74,]  46   1      1          1        0   145
#>  [75,]  50   4      1          1        0   150
#>  [76,]  48   7      1          0        1   110
#>  [77,]  53   8      0         36        1   160
#>  [78,]  48  17      1         10        0   111
#>  [79,]  47   2      1          1        0   110
#>  [80,]  52   4      1          4        0   152
#>  [81,]  49  15      0        180        1   160
#>  [82,]  53   5      0        180        1   140
#>  [83,]  53   5      0         77        0   159
#>  [84,]  54   6      1          3        0   129
#>  [85,]  51   3      1          1        0   140
#>  [86,]  50  14      1         13        0   170
#>  [87,]  53   8      1          7        0   160
#>  [88,]  48   3      1          2        0   150
#>  [89,]  51  25      1          1        0   202
#>  [90,]  49   5      1          2        1   150
#>  [91,]  53   4      0          4        0   140
#>  [92,]  52  14      1          7        1   200
#>  [93,]  48  11      1         10        0   120
#>  [94,]  54   9      1          0        1   138
#>  [95,]  49  16      0         16        0   125
#>  [96,]  55   3      1          1        0   150
#>  [97,]  54  23      1         10        0   131
#>  [98,]  52   7      1          2        0   154
#>  [99,]  55   6      1          2        1   114
#> [100,]  54   9      1          1        0   130
#> [101,]  52   4      0        180        1   180
#> [102,]  55  28      1         13        1   160
#> [103,]  50   7      1          1        0   156
#> [104,]  53   9      0          9        1    95
#> [105,]  53   8      1          0        1   130
#> [106,]  50   7      1          0        1   127
#> [107,]  52   5      0        175        1   117
#> [108,]  54   1      0        180        0   162
#> [109,]  54   7      1          0        1   100
#> [110,]  56   3      0        180        1   193
#> [111,]  52   8      0        180        0   119
#> [112,]  53  18      1          9        1   150
#> [113,]  54   3      0        180        1   180
#> [114,]  55   6      0        180        0   170
#> [115,]  52  16      0         16        0   152
#> [116,]  53  10      1          9        0   172
#> [117,]  52  16      1         14        0   170
#> [118,]  53  15      0         15        1    90
#> [119,]  53   4      0        180        1   150
#> [120,]  55   6      1          5        1   138
#> [121,]  54  12      1          0        1   190
#> [122,]  55   2      0        134        1   140
#> [123,]  54   3      0        180        0   128
#> [124,]  56   3      0          8        1   139
#> [125,]  55   1      0          2        0   130
#> [126,]  54   2      1          1        0   135
#> [127,]  52   9      1          3        0   170
#> [128,]  54   2      1          1        1   176
#> [129,]  57   5      1          3        1   138
#> [130,]  57   1      0        180        1   156
#> [131,]  57   1      0          1        1   100
#> [132,]  52   2      0        180        0   140
#> [133,]  52  15      1         14        0   130
#> [134,]  53   3      1          0        1   200
#> [135,]  57  10      0        180        1   170
#> [136,]  58   8      0          8        1   130
#> [137,]  54   5      0        180        1   108
#> [138,]  55   3      1          1        1   156
#> [139,]  53  21      1         13        1   130
#> [140,]  57   4      0        180        1   119
#> [141,]  58   6      1          0        1    90
#> [142,]  55   9      1          2        1   147
#> [143,]  55  13      0        166        1   140
#> [144,]  56   5      0          5        1   150
#> [145,]  54  23      1          8        0   120
#> [146,]  57   4      1          2        1   185
#> [147,]  53   7      1          0        1   120
#> [148,]  57  11      1         10        1   129
#> [149,]  55   3      1          2        0   140
#> [150,]  55   5      0          5        1   131
#> [151,]  59  15      1         10        0   140
#> [152,]  58   9      1          0        1   180
#> [153,]  58   1      1          1        1   200
#> [154,]  55   5      1          0        0   140
#> [155,]  56   7      1          5        1   120
#> [156,]  60  11      1          9        0   106
#> [157,]  59   3      0        180        0   120
#> [158,]  58   4      1          0        1   160
#> [159,]  57   2      0          2        1   120
#> [160,]  60   5      1          1        0   138
#> [161,]  57   5      0        180        1   130
#> [162,]  57  10      1          9        0   103
#> [163,]  59   5      0        180        1   155
#> [164,]  59   4      1          0        1   152
#> [165,]  58  26      1          0        1   189
#> [166,]  61   9      0          9        1   160
#> [167,]  60   0      1          0        1    80
#> [168,]  59   2      1          1        0   140
#> [169,]  58  14      1          6        0   190
#> [170,]  58   1      0          1        1   100
#> [171,]  61  20      1         13        0   130
#> [172,]  57   2      1          0        1   116
#> [173,]  58  10      0         10        1   150
#> [174,]  57   4      1          3        0   138
#> [175,]  57  11      0        180        1   150
#> [176,]  61   3      0         17        0   143
#> [177,]  56  14      0         45        0   130
#> [178,]  56  18      1         11        1   165
#> [179,]  59   9      1          0        1    80
#> [180,]  55   4      1          3        1   160
#> [181,]  58  11      0        172        1   135
#> [182,]  61   4      1          0        1   115
#> [183,]  61  13      1         12        1   130
#> [184,]  59  11      1          8        1   190
#> [185,]  57   1      0          1        0   126
#> [186,]  59   5      1          2        0   182
#> [187,]  58   5      1          1        1   135
#> [188,]  61  13      0         13        0   210
#> [189,]  58   8      1          5        0   152
#> [190,]  62  10      1          0        1   153
#> [191,]  62   7      1          2        1   180
#> [192,]  57   3      1          0        0   100
#> [193,]  61  18      0        170        0   140
#> [194,]  61  28      1          7        0   133
#> [195,]  57   7      0        169        0   180
#> [196,]  60   7      0          7        0   147
#> [197,]  61   6      0          6        0   134
#> [198,]  60  17      1          8        1   140
#> [199,]  58   2      0         30        0   202
#> [200,]  59  16      1          9        1   133
#> [201,]  63   6      0         28        1   120
#> [202,]  61  13      0         13        0   120
#> [203,]  61   5      0          5        1   110
#> [204,]  57  18      1          9        1    93
#> [205,]  58  11      1          9        0   179
#> [206,]  62  17      1         10        1   180
#> [207,]  62   1      1          0        1   172
#> [208,]  58   7      0        180        1   150
#> [209,]  63   3      1          1        0   180
#> [210,]  61   7      0        180        0   135
#> [211,]  63  15      1         10        1   126
#> [212,]  64   4      0        180        0   130
#> [213,]  63   4      1          1        0   155
#> [214,]  60  18      1         13        0   132
#> [215,]  62   7      0          7        0   150
#> [216,]  59   1      0         22        1   162
#> [217,]  58   2      0        180        0   127
#> [218,]  59   4      0        180        0   196
#> [219,]  60   7      1          5        1   141
#> [220,]  60   7      0          7        0   140
#> [221,]  60   7      1          1        1    90
#> [222,]  65  13      0        180        1   100
#> [223,]  63   1      0          1        0   162
#> [224,]  63   1      0          1        0   130
#> [225,]  61  15      1         13        0   170
#> [226,]  59   4      0          4        0   149
#> [227,]  63  12      1         10        0   200
#> [228,]  59  10      0        180        1   130
#> [229,]  64  12      1         11        0   160
#> [230,]  64   6      1          0        1   140
#> [231,]  63  10      1          0        1   148
#> [232,]  63  14      1          9        0   123
#> [233,]  66   3      1          1        0   127
#> [234,]  64  32      1          9        1   160
#> [235,]  63  12      1          9        0   114
#> [236,]  66   5      1          0        1   110
#> [237,]  64   0      0          0        1    90
#> [238,]  60   6      0        180        0   130
#> [239,]  64  21      1         10        0   190
#> [240,]  61  12      1         11        0   154
#> [241,]  64   9      0        180        0   150
#> [242,]  61   4      0        180        1   113
#> [243,]  65   3      0        180        1   190
#> [244,]  66   6      1          1        1   130
#> [245,]  63  12      0         12        1   150
#> [246,]  65   3      1          0        1    80
#> [247,]  63   5      1          4        0   170
#> [248,]  63   2      1          1        0   180
#> [249,]  62  13      1         11        0   180
#> [250,]  64   2      0          2        0   201
#> [251,]  66  18      1          5        0   142
#> [252,]  66  16      1         11        1   169
#> [253,]  61  14      1          5        0   140
#> [254,]  63   2      1          0        0   140
#> [255,]  65   8      1          0        1   140
#> [256,]  65  15      1         11        1   160
#> [257,]  64  13      1         12        1   150
#> [258,]  64   6      1          0        1   125
#> [259,]  66  13      1          0        0   118
#> [260,]  67   4      1          3        0   130
#> [261,]  66   3      1          0        1   135
#> [262,]  66   6      1          0        1   140
#> [263,]  68   1      0        180        1   166
#> [264,]  67   8      1          1        1   130
#> [265,]  68   5      0          5        1    90
#> [266,]  63  10      0         16        1   160
#> [267,]  68  18      0        180        1   260
#> [268,]  65  17      1         14        1   100
#> [269,]  63   8      1          1        1   162
#> [270,]  65  18      1          3        0   120
#> [271,]  63   1      1          0        1   155
#> [272,]  63  10      0         18        1   130
#> [273,]  67  11      0         11        0   150
#> [274,]  68  11      0        180        0   160
#> [275,]  66  11      1          0        0   100
#> [276,]  65   4      1          2        1   145
#> [277,]  69  12      0         15        1   140
#> [278,]  65  11      1          6        0   130
#> [279,]  69   6      0        180        1   100
#> [280,]  66   9      1          8        0   130
#> [281,]  63   8      0        180        1   120
#> [282,]  68  14      1         13        1   140
#> [283,]  65   8      1          0        1    90
#> [284,]  66   3      0          3        1   138
#> [285,]  69   1      1          0        0   170
#> [286,]  68  10      1         10        1   150
#> [287,]  65   1      1          0        0   133
#> [288,]  63   2      1          0        0    99
#> [289,]  65   6      0          6        0    80
#> [290,]  65  10      1          1        1   148
#> [291,]  66  19      1         12        1   150
#> [292,]  69   6      0         99        1   140
#> [293,]  65   4      1          1        0   130
#> [294,]  64   4      0        179        0   160
#> [295,]  66   4      0        180        1   130
#> [296,]  70  15      1         12        1   132
#> [297,]  64  11      0         11        0   125
#> [298,]  67   2      0         18        0   131
#> [299,]  66   4      0        180        0   177
#> [300,]  69   4      1          3        1   150
#> [301,]  65  13      1         12        1   130
#> [302,]  69  17      1         10        0   140
#> [303,]  64  21      0         21        1   155
#> [304,]  66   6      0        180        0   140
#> [305,]  65   1      0          1        1   120
#> [306,]  71   3      0          5        0   112
#> [307,]  70   7      1          0        1   190
#> [308,]  68   7      0        150        0   210
#> [309,]  71  20      1          0        1   160
#> [310,]  67   2      0        180        0   128
#> [311,]  66   9      1          3        1   151
#> [312,]  66   1      1          1        1   165
#> [313,]  69   8      0        180        1   153
#> [314,]  70  14      0        171        0   166
#> [315,]  66   4      0        180        0   130
#> [316,]  67  10      1          9        0   200
#> [317,]  68  18      1         14        1   170
#> [318,]  69   0      0          0        1   148
#> [319,]  67  14      1         13        0   130
#> [320,]  71   6      0         45        1   158
#> [321,]  69   5      0          5        1   142
#> [322,]  71   3      0        103        0   133
#> [323,]  69   3      0          3        1   130
#> [324,]  67   1      0         36        1   104
#> [325,]  68   6      0        180        0   145
#> [326,]  69   8      1          5        1   195
#> [327,]  72   7      0          7        1   110
#> [328,]  69   8      1          7        1   108
#> [329,]  66   2      1          1        0   123
#> [330,]  69  19      0        180        0   130
#> [331,]  67  14      0        172        1   140
#> [332,]  66   2      0        180        0   130
#> [333,]  67   7      1          4        0   122
#> [334,]  69   4      1          3        0   132
#> [335,]  68   2      0          7        1   130
#> [336,]  69   8      1          2        0   121
#> [337,]  67  13      1          9        0   130
#> [338,]  70   9      0        180        1   142
#> [339,]  72   5      1          4        0   170
#> [340,]  67  22      1          1        1   140
#> [341,]  68   3      0         19        0   135
#> [342,]  67  12      1          8        0   120
#> [343,]  69   1      0          1        1   110
#> [344,]  67   1      0          1        1    60
#> [345,]  67   4      0         60        1   136
#> [346,]  69   5      0         76        0   120
#> [347,]  72  13      1         11        1   195
#> [348,]  66  24      1         13        0   130
#> [349,]  70  35      1          0        1   105
#> [350,]  70   7      0          7        0   102
#> [351,]  73  20      1          0        1   170
#> [352,]  71   6      0          9        0   120
#> [353,]  69  10      1          6        1   120
#> [354,]  70  11      0        180        1   210
#> [355,]  72  12      1         10        0   170
#> [356,]  67   8      0        180        1   170
#> [357,]  67   5      1          0        1   147
#> [358,]  67   9      0        180        0   158
#> [359,]  71   1      0        173        1   188
#> [360,]  68  23      0        180        1   220
#> [361,]  70   3      0        180        0   121
#> [362,]  69   3      0        180        0   220
#> [363,]  71   3      1          2        0   150
#> [364,]  72   5      0         28        0   120
#> [365,]  73   6      0        180        1   117
#> [366,]  69  16      1         10        1   140
#> [367,]  69   8      1          1        0   164
#> [368,]  68   7      0        180        1   130
#> [369,]  72  16      1          1        1   130
#> [370,]  69   1      1          0        0   155
#> [371,]  73   6      1          0        1   270
#> [372,]  72   8      1          1        1   150
#> [373,]  71   2      1          0        1   180
#> [374,]  73   7      0          7        1   140
#> [375,]  68  15      1         13        1   130
#> [376,]  70   3      0          3        1   159
#> [377,]  72   6      0        180        1   130
#> [378,]  73   0      0        180        1   161
#> [379,]  74   8      1          0        1    85
#> [380,]  71   3      1          1        0   150
#> [381,]  71  15      1         11        0   165
#> [382,]  74  20      0         20        1   180
#> [383,]  74   0      1          0        1    90
#> [384,]  73   3      1          0        1   136
#> [385,]  70   5      1          0        1   190
#> [386,]  71  17      1         11        0   160
#> [387,]  71   8      1          7        0   149
#> [388,]  71   3      1          2        1   190
#> [389,]  73  10      1          8        0   106
#> [390,]  69  12      1          1        1   149
#> [391,]  74   4      0          4        0   120
#> [392,]  73   4      0         58        1   160
#> [393,]  72   5      1          3        1   160
#> [394,]  73   6      0        180        0   110
#> [395,]  72  15      1          0        1   150
#> [396,]  72   8      1          0        1   140
#> [397,]  74   3      0          3        1   150
#> [398,]  73  17      1         11        0   140
#> [399,]  71  13      1          8        0   121
#> [400,]  69   2      1          1        1    80
#> [401,]  70   4      1          0        1   140
#> [402,]  74   7      1          0        1   117
#> [403,]  72  10      1          8        1   153
#> [404,]  70   8      0          8        0   120
#> [405,]  75   2      1          1        0   145
#> [406,]  73  10      1          9        1   146
#> [407,]  73  10      1         10        1   120
#> [408,]  74  15      1          9        1   179
#> [409,]  71   2      0         10        1   112
#> [410,]  73   1      0          1        1    80
#> [411,]  75   9      1          7        0   140
#> [412,]  75  13      1          1        1   130
#> [413,]  71  11      1          8        0   110
#> [414,]  71   4      0          4        0   134
#> [415,]  72  15      1         12        1   120
#> [416,]  73  10      1          8        0   120
#> [417,]  70   7      1          4        0   184
#> [418,]  72   1      1          1        0   168
#> [419,]  72   7      0         57        1   145
#> [420,]  72  11      0         11        1   140
#> [421,]  73   5      1          3        1   112
#> [422,]  76  25      1         12        1   170
#> [423,]  73  12      1         12        1   140
#> [424,]  72   4      1          0        1   197
#> [425,]  71   3      1          0        0   144
#> [426,]  73   5      0        180        0   126
#> [427,]  73   4      0        180        0   124
#> [428,]  74  34      1          8        1   233
#> [429,]  71  32      1         12        1   107
#> [430,]  72   5      0        180        0   154
#> [431,]  76   5      0          5        1   130
#> [432,]  77  11      0         11        1   150
#> [433,]  77   4      0          4        0   185
#> [434,]  73  15      0         15        1   160
#> [435,]  73  10      1         10        0   124
#> [436,]  74   7      0        180        1   150
#> [437,]  74   3      0          3        1   128
#> [438,]  76   1      0        180        0   114
#> [439,]  76   8      1          0        1   141
#> [440,]  74  19      1          4        1   200
#> [441,]  73   6      0          6        1   114
#> [442,]  75  23      1         14        1   110
#> [443,]  76  17      1          0        1   200
#> [444,]  75   7      0          7        0   190
#> [445,]  73  13      1         11        0   195
#> [446,]  76  13      1          8        1   148
#> [447,]  75   4      1          2        1   188
#> [448,]  74   6      0        180        0   160
#> [449,]  76   4      0          4        1   155
#> [450,]  75   1      0          1        1   125
#> [451,]  72   5      0        180        0   120
#> [452,]  76  44      1         10        0   105
#> [453,]  74   8      1          8        1   170
#> [454,]  77   5      1          0        0   123
#> [455,]  77  12      1          9        1   100
#> [456,]  77  12      0        180        0   130
#> [457,]  77   1      1          0        1    90
#> [458,]  76  12      1         11        1   120
#> [459,]  73   7      1          0        0   174
#> [460,]  74   6      0         79        1   140
#> [461,]  75   3      1          1        1   171
#> [462,]  74   9      1          8        0   200
#> [463,]  79  10      1          8        0   190
#> [464,]  74   2      1          0        1   130
#> [465,]  73   8      1          1        1   162
#> [466,]  73  11      1          2        1   110
#> [467,]  78   7      0          7        1   133
#> [468,]  74  15      0        180        1   172
#> [469,]  74   7      0          7        0   161
#> [470,]  76  13      1          1        1   170
#> [471,]  79   6      0        180        0   170
#> [472,]  80  10      1          6        1   147
#> [473,]  78   0      0        180        1   212
#> [474,]  75   5      0        119        1   150
#> [475,]  78  15      0        180        1   270
#> [476,]  80   8      0          8        1   120
#> [477,]  74  10      1          8        0   135
#> [478,]  78  12      1          9        0   150
#> [479,]  78   2      1          1        0   130
#> [480,]  75   4      1          0        0   212
#> [481,]  77   2      1          0        1   143
#> [482,]  78  10      0        180        1   130
#> [483,]  75  11      1          4        0   162
#> [484,]  75   3      0          3        0     0
#> [485,]  76   7      0         29        1   150
#> [486,]  77  24      0         24        1   160
#> [487,]  80   9      0         23        1   128
#> [488,]  78  11      1          1        1   140
#> [489,]  79  11      0        180        0   160
#> [490,]  79   2      1          0        1   121
#> [491,]  78  14      1          0        1   140
#> [492,]  78  11      1          8        1   118
#> [493,]  76   4      0          4        1   160
#> [494,]  79   4      0          4        1   125
#> [495,]  76  10      1          8        0   180
#> [496,]  76  12      1         10        1   127
#> [497,]  75   2      1          1        1   204
#> [498,]  78  11      0        180        1   135
#> [499,]  76   1      0          1        1   140
#> [500,]  77  31      1          3        1   161
#> [501,]  78   7      1          0        1   110
#> [502,]  77   7      0        180        1   170
#> [503,]  79   4      1          0        1   120
#> [504,]  81   1      0        180        0   120
#> [505,]  77   9      1          4        0   141
#> [506,]  82   5      0          8        1   120
#> [507,]  78   4      0         59        1   112
#> [508,]  80  17      1         12        0   100
#> [509,]  80  15      1          0        1    90
#> [510,]  79  28      0        164        0   100
#> [511,]  80   9      0        118        1   186
#> [512,]  80   6      0        173        1   160
#> [513,]  78  32      0        180        1   130
#> [514,]  81   3      0        180        0   184
#> [515,]  81   2      0        175        0   172
#> [516,]  78   7      0          7        1   147
#> [517,]  77  13      1          0        1   190
#> [518,]  78  15      0         15        0   165
#> [519,]  79   3      0          3        1   101
#> [520,]  78  26      1          5        0   194
#> [521,]  76   1      0        166        0   131
#> [522,]  78  20      1          0        1   109
#> [523,]  78   3      1          1        1   152
#> [524,]  77  10      1          8        1   130
#> [525,]  82   3      1          1        1   144
#> [526,]  79   6      0          6        0   152
#> [527,]  80   6      1          0        1   119
#> [528,]  78   2      0        180        0   148
#> [529,]  80   5      0          5        1   130
#> [530,]  82   1      1          0        1    82
#> [531,]  79  10      0        180        1   150
#> [532,]  77   4      0        180        1    98
#> [533,]  78  12      0        180        0   134
#> [534,]  79   1      0        125        0   193
#> [535,]  82  21      1          2        0   155
#> [536,]  79   4      0          4        1   121
#> [537,]  83   9      1          5        1   170
#> [538,]  82   5      0        180        0   110
#> [539,]  83   5      0        180        0   148
#> [540,]  83   4      0        103        0    97
#> [541,]  81  11      1          8        0   160
#> [542,]  78   9      1          4        1   120
#> [543,]  82   8      1          1        0   128
#> [544,]  81  15      0        180        1   140
#> [545,]  84   5      1          1        1    85
#> [546,]  81  20      1          9        0   170
#> [547,]  81  16      0         16        1   110
#> [548,]  81   8      0        180        0   146
#> [549,]  80   8      1          7        0   160
#> [550,]  79   7      0        177        0   197
#> [551,]  79   0      1          0        1    96
#> [552,]  85   4      0        180        0    90
#> [553,]  81   2      1          1        0   198
#> [554,]  83   2      0          2        1   155
#> [555,]  82   6      0        128        1   100
#> [556,]  84   4      0        167        0   198
#> [557,]  84   5      0        180        1   203
#> [558,]  81   1      0          1        1   150
#> [559,]  81   4      0         90        1   138
#> [560,]  85   3      1          2        1   160
#> [561,]  80  13      1          8        1   140
#> [562,]  84   4      0         89        1   129
#> [563,]  79   4      0          4        1    60
#> [564,]  80   6      0         71        1   189
#> [565,]  83   1      0          1        1   100
#> [566,]  82  19      0         19        0   120
#> [567,]  80  30      1         13        0   220
#> [568,]  83   9      0        180        0   198
#> [569,]  79  14      1          0        0   110
#> [570,]  83   3      0        114        0    98
#> [571,]  81  14      1         12        1   128
#> [572,]  83   2      0        154        0   130
#> [573,]  82   0      0          2        1   100
#> [574,]  85   9      1          6        1   160
#> [575,]  83   1      0        180        0   160
#> [576,]  81   4      0          4        0   175
#> [577,]  81   1      0          1        1   145
#> [578,]  81  12      0         12        1   163
#> [579,]  82  16      1          8        0   103
#> [580,]  82   5      1          0        1   146
#> [581,]  81   4      0          4        0   160
#> [582,]  83  12      1          2        1   170
#> [583,]  82  15      1          0        0   183
#> [584,]  83   7      0        126        0   135
#> [585,]  84   6      0        165        0   145
#> [586,]  86   3      0          3        1   140
#> [587,]  84   3      0        180        1   120
#> [588,]  81  13      0        180        0   152
#> [589,]  85   3      0          3        1   118
#> [590,]  81   4      0        180        0   160
#> [591,]  83   9      0        180        1   149
#> [592,]  82   1      0        180        1   193
#> [593,]  87   2      0          5        1   137
#> [594,]  82  14      1         11        1   103
#> [595,]  83  19      0         43        0   150
#> [596,]  84   3      1          2        0   125
#> [597,]  83  10      1          0        1   190
#> [598,]  86   2      0        180        1   169
#> [599,]  84   3      0          3        1   121
#> [600,]  83  13      1         12        0   170
#> [601,]  87   2      0        180        0   113
#> [602,]  86   4      0         38        1   122
#> [603,]  86  13      0        177        0   163
#> [604,]  85   3      0          3        1   113
#> [605,]  86   6      0          6        1   117
#> [606,]  84  13      0         62        1   100
#> [607,]  86   6      1          1        0   112
#> [608,]  88   4      0          4        0   100
#> [609,]  83  20      1          3        1   150
#> [610,]  88   4      0          4        1   115
#> [611,]  85  22      0         22        1   184
#> [612,]  83   9      0         65        1   150
#> [613,]  86   9      1          7        1   142
#> [614,]  87   2      0        180        1   130
#> [615,]  86   6      0         46        0   173
#> [616,]  88   3      0        115        0   110
#> [617,]  88   2      0        180        1    68
#> [618,]  83   3      0          3        1   130
#> [619,]  87   8      0          8        1   157
#> [620,]  88   4      0          4        0    86
#> [621,]  89   5      0        119        1   140
#> [622,]  87   6      0        180        1   110
#> [623,]  84   8      0        180        1   119
#> [624,]  84   0      0        180        1   136
#> [625,]  90  14      0         14        1   100
#> [626,]  88   1      0          1        0   135
#> [627,]  86   4      0        180        1   145
#> [628,]  91   8      0          8        0   100
#> [629,]  87   2      0        180        0   160
#> [630,]  87   6      1          0        0   125
#> [631,]  91  10      0        145        0   135
#> [632,]  88   7      0         24        0   119
#> [633,]  88   8      0         50        1   154
#> [634,]  87   6      0        126        1   168
#> [635,]  86  10      0        180        1   137
#> [636,]  86   9      1          7        0   130
#> [637,]  91   1      0          1        1    74
#> [638,]  87  43      0        178        1   130
#> [639,]  87   5      0         36        1   150
#> [640,]  88   3      1          2        0   159
#> [641,]  92   1      0          1        1   167
#> [642,]  91   3      0         33        1   137
#> [643,]  88   5      0        158        0   100
#> [644,]  87   7      0         74        1   105
#> [645,]  89  12      1          0        1   130
#> [646,]  89   2      0        168        0   118
#> [647,]  91   5      0        169        1   176
#> [648,]  89  52      0         52        1   130
#> [649,]  89   4      0          4        1   159
#> [650,]  91   0      0          0        0     0
#> [651,]  89  14      0        180        1    84
#> [652,]  90  18      0        180        0   188
#> [653,]  91   4      1          0        1   120
#> [654,]  90  19      1         11        1   129
#> [655,]  94   6      0         50        0    78
#> [656,]  93   8      0        179        1   110
#> [657,]  94   8      0          8        1   142
#> [658,]  91   1      0        180        0   158
#> [659,]  90  16      0         16        1   106
#> [660,]  90   3      0         67        0   162
#> [661,]  96   3      0         12        1    97
#> [662,]  95   8      1          5        1   150
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
#>   [1] 180.0+   5.0+   5.0+   5.0+ 180.0+ 180.0+ 180.0+  12.0    5.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+   5.0+   2.0+ 180.0+   3.0  180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+
#>  [41] 180.0+   5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [51] 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 172.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+   2.0    1.0  179.0+ 180.0+ 179.0+ 180.0+ 180.0+
#>  [71]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+   4.0+
#>  [81] 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91]   4.0+  85.0  180.0+ 180.0+  16.0+ 180.0+ 152.0+   7.0+   6.0+ 180.0+
#> [101] 180.0+  28.0  180.0+   9.0+ 180.0+ 180.0+ 175.0+ 180.0+   7.0+ 180.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0   15.0+ 180.0+ 180.0+
#> [121]  12.0+ 134.0+ 180.0+   8.0    2.0  180.0+ 180.0+ 180.0+ 140.0  180.0+
#> [131]   1.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [141] 180.0+  15.0  166.0+   5.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+   5.0+
#> [151] 180.0+   9.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+   0.5  180.0+ 171.0+   1.0 
#> [171] 180.0+ 180.0+  10.0+ 180.0+ 180.0+  17.0   45.0  180.0+   9.0+ 180.0+
#> [181] 172.0+ 180.0+ 180.0+ 180.0+   1.0+ 180.0+ 180.0+  13.0+   8.0+ 180.0+
#> [191] 180.0+ 180.0+ 170.0   94.0  169.0    7.0+   6.0  180.0+  30.0  180.0+
#> [201]  28.0   13.0+   5.0   18.0  180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+   4.0+ 180.0+   7.0+  22.0  180.0+ 180.0+  84.0    7.0+
#> [221] 180.0+ 180.0+   1.0    1.0  180.0+   4.0+ 180.0+ 180.0+  12.0  180.0+
#> [231] 180.0+  14.0+   3.0+ 180.0+  12.0  180.0+   0.5  180.0+ 180.0+  12.0+
#> [241] 180.0+ 180.0+ 180.0+ 180.0+  12.0    3.0  180.0+ 180.0+ 180.0+   2.0+
#> [251]  18.0+ 180.0+ 180.0+   2.0+  15.0  180.0+  13.0  180.0+ 166.0+ 180.0+
#> [261]   3.0+ 180.0+ 180.0+   8.0    5.0   16.0  180.0+ 180.0+ 180.0+ 123.0+
#> [271]   1.0+  18.0   11.0+ 180.0+ 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+
#> [281] 180.0+ 180.0+   8.0+   3.0  175.0   10.0  180.0+ 180.0+   6.0  180.0+
#> [291]  19.0+  99.0  180.0+ 179.0+ 180.0+ 180.0+  11.0+  18.0  180.0+ 152.0+
#> [301] 180.0+ 180.0+  21.0+ 180.0+   1.0    5.0    7.0+ 150.0  180.0+ 180.0+
#> [311] 180.0+   1.0  180.0+ 171.0  180.0+ 174.0+ 180.0+   0.5  180.0+  45.0 
#> [321]   5.0+ 103.0    3.0+  36.0  180.0+ 180.0+   7.0    8.0+   2.0+ 180.0+
#> [331] 172.0+ 180.0+   7.0  180.0+   7.0    8.0+  13.0+ 180.0+ 180.0+  51.0 
#> [341]  19.0  180.0+   1.0    1.0   60.0   76.0  132.0  180.0+ 180.0+   7.0+
#> [351] 124.0    9.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 173.0+ 180.0+
#> [361] 180.0+ 180.0+ 180.0+  28.0  180.0+  16.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [371]   6.0  180.0+ 180.0+   7.0+  15.0    3.0+ 180.0+ 180.0+ 180.0+   3.0+
#> [381] 180.0+  20.0    0.5  180.0+ 180.0+ 180.0+   8.0    3.0   87.0   12.0 
#> [391]   4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0    2.0 
#> [401] 180.0+ 180.0+  10.0+   8.0+ 180.0+ 180.0+  15.0  180.0+  10.0    1.0 
#> [411] 180.0+  13.0  180.0+   4.0+ 180.0+  10.0  104.0+   1.0   57.0   11.0 
#> [421]   5.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+  34.0  177.0+ 180.0+
#> [431]   5.0   11.0+   4.0+  15.0+  10.0  180.0+   3.0  180.0+ 180.0+ 180.0+
#> [441]   6.0  180.0+  17.0+   7.0  180.0+ 180.0+  46.0  180.0+   4.0    1.0 
#> [451] 180.0+ 180.0+   8.0    5.0  180.0+ 180.0+   1.0   12.0    7.0+  79.0 
#> [461]   3.0  168.0+ 180.0+ 176.0+ 180.0+  11.0    7.0  180.0+   7.0  180.0+
#> [471] 180.0+  10.0  180.0+ 119.0  180.0+   8.0  180.0+ 180.0+ 180.0+   4.0+
#> [481]   2.0  180.0+ 152.0+   3.0   29.0   24.0   23.0  180.0+ 180.0+ 180.0+
#> [491] 180.0+  11.0    4.0    4.0   10.0+ 180.0+   2.0+ 180.0+   1.0  171.0 
#> [501]  43.0  180.0+ 138.0  180.0+  71.0    8.0   59.0   17.0  180.0+ 164.0 
#> [511] 118.0  173.0  180.0+ 180.0+ 175.0+   7.0+  22.0   15.0+   3.0  171.0+
#> [521] 166.0+  20.0+   3.0+  10.0  180.0+   6.0+   6.0  180.0+   5.0    1.0 
#> [531] 180.0+ 180.0+ 180.0+ 125.0  180.0+   4.0    9.0+ 180.0+ 180.0+ 103.0 
#> [541] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  20.0   16.0  180.0+ 180.0+ 177.0+
#> [551]   0.5  180.0+ 180.0+   2.0  128.0  167.0  180.0+   1.0   90.0  180.0+
#> [561] 180.0+  89.0    4.0   71.0    1.0   19.0   30.0  180.0+ 180.0+ 114.0 
#> [571] 180.0+ 154.0    2.0  180.0+ 180.0+   4.0+   1.0   12.0   16.0+   5.0+
#> [581]   4.0+  77.0   83.0  126.0  165.0    3.0  180.0+ 180.0+   3.0+ 180.0+
#> [591] 180.0+ 180.0+   5.0  174.0   43.0  180.0+ 180.0+ 180.0+   3.0   13.0 
#> [601] 180.0+  38.0  177.0    3.0+   6.0+  62.0    6.0+   4.0+  20.0    4.0 
#> [611]  22.0   65.0   11.0  180.0+  46.0  115.0  180.0+   3.0+   8.0+   4.0 
#> [621] 119.0  180.0+ 180.0+ 180.0+  14.0    1.0+ 180.0+   8.0  180.0+  25.0 
#> [631] 145.0   24.0   50.0  126.0  180.0+ 180.0+   1.0  178.0+  36.0   75.0 
#> [641]   1.0   33.0  158.0   74.0  180.0+ 168.0  169.0   52.0    4.0    0.5 
#> [651] 180.0+ 180.0+   4.0  180.0+  50.0  179.0+   8.0+ 180.0+  16.0   67.0 
#> [661]  12.0    8.0   26.0   53.0    7.0+   0.5    2.0  180.0+   3.0   15.0+
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
#>   0.8388444 
```
