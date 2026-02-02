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
#> min 0.00381    44   2.893 0.1219       6
#> 1se 0.06819    13   3.011 0.1134       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      0        180        0   121
#>   [7,]  35   2      1          1        1   112
#>   [8,]  37   9      0        180        1   151
#>   [9,]  38  13      1          0        1   161
#>  [10,]  38   2      0        115        0   150
#>  [11,]  35   0      0        180        1   119
#>  [12,]  36   5      1          0        1   115
#>  [13,]  38  16      1         10        0   160
#>  [14,]  38  12      1         11        1    92
#>  [15,]  40   2      1          1        1   148
#>  [16,]  42   2      0        180        1   100
#>  [17,]  42   2      0          2        0   140
#>  [18,]  43   3      1          0        1   100
#>  [19,]  40   1      1          0        1   145
#>  [20,]  43   4      1          0        1   130
#>  [21,]  42   4      0        180        0   162
#>  [22,]  42  15      1         13        1   125
#>  [23,]  40   3      1          1        0   170
#>  [24,]  42  12      1         10        1   170
#>  [25,]  42   2      0        180        1   124
#>  [26,]  44   5      1          1        0   170
#>  [27,]  41  10      1          8        0   150
#>  [28,]  44   3      0        180        0   141
#>  [29,]  41  13      1          1        0   140
#>  [30,]  45   9      1          7        0   110
#>  [31,]  45   6      0        180        1   170
#>  [32,]  41   5      1          4        1   141
#>  [33,]  44   2      1          1        1   150
#>  [34,]  43   2      0        180        1   140
#>  [35,]  46   2      1          1        0   126
#>  [36,]  48  15      0        180        1   160
#>  [37,]  44   3      1          0        1   180
#>  [38,]  43  29      0        180        1   180
#>  [39,]  45   4      1          0        0   124
#>  [40,]  43  10      0        180        0   185
#>  [41,]  44   0      1          0        1    96
#>  [42,]  45   8      1          0        1   117
#>  [43,]  46   6      1          0        1   100
#>  [44,]  47   2      0        180        0   108
#>  [45,]  44   9      1          8        1   135
#>  [46,]  45   5      0        180        1   190
#>  [47,]  46   5      1          3        0   130
#>  [48,]  46   4      0        180        1   121
#>  [49,]  46  15      0        180        1   120
#>  [50,]  45   9      1          0        1   145
#>  [51,]  47   3      1          1        1   120
#>  [52,]  48   3      0        180        0   154
#>  [53,]  48  12      1         11        0   200
#>  [54,]  47   9      1          6        0   170
#>  [55,]  46   3      1          0        1   119
#>  [56,]  49   4      0        180        0   117
#>  [57,]  47  10      0         10        1   140
#>  [58,]  50   1      1          0        1   129
#>  [59,]  47   7      0        180        0   145
#>  [60,]  50   4      1          1        0   125
#>  [61,]  49   7      1          7        1   110
#>  [62,]  46   3      1          1        1   140
#>  [63,]  46   9      1          9        1   122
#>  [64,]  49   2      0          2        0   105
#>  [65,]  51   1      0          1        1   145
#>  [66,]  47   2      0        180        0   150
#>  [67,]  52   2      0        180        1   170
#>  [68,]  50   4      0          4        1   100
#>  [69,]  51   3      1          2        0   113
#>  [70,]  50   1      1          0        0   150
#>  [71,]  47   8      0        180        0   160
#>  [72,]  51   8      0        180        1   140
#>  [73,]  52   2      0        180        0   155
#>  [74,]  46   1      1          1        0   145
#>  [75,]  50   4      1          1        0   150
#>  [76,]  53   8      0         36        1   160
#>  [77,]  48  17      1         10        0   111
#>  [78,]  47   2      1          1        0   110
#>  [79,]  49  15      0        180        1   160
#>  [80,]  54  17      1         12        1   102
#>  [81,]  53   5      0         77        0   159
#>  [82,]  53   7      1          0        0   199
#>  [83,]  50   2      0          5        1   106
#>  [84,]  50  10      1          6        0   122
#>  [85,]  48   3      1          2        0   150
#>  [86,]  49   5      1          2        1   150
#>  [87,]  52  14      1          7        1   200
#>  [88,]  48  11      1         10        0   120
#>  [89,]  53   4      1          0        1   156
#>  [90,]  51  13      0         99        1   160
#>  [91,]  54   9      1          0        1   138
#>  [92,]  49  16      0         16        0   125
#>  [93,]  55   3      1          1        0   150
#>  [94,]  54  23      1         10        0   131
#>  [95,]  52   7      1          2        0   154
#>  [96,]  55   6      1          2        1   114
#>  [97,]  55   4      1          2        0   150
#>  [98,]  52   4      0        180        1   180
#>  [99,]  51  13      1         11        0   145
#> [100,]  52   4      0        180        0   183
#> [101,]  50   3      0        174        1   153
#> [102,]  55  28      1         13        1   160
#> [103,]  49   6      1          0        1   130
#> [104,]  50   7      1          1        0   156
#> [105,]  55   2      0          2        0   145
#> [106,]  54   7      1          0        1   100
#> [107,]  56   3      0        180        1   193
#> [108,]  56   2      0        180        0   132
#> [109,]  55   5      1          4        1   120
#> [110,]  53  18      1          9        1   150
#> [111,]  54   3      0        180        1   180
#> [112,]  55   6      0        180        0   170
#> [113,]  52  16      0         16        0   152
#> [114,]  53  10      1          9        0   172
#> [115,]  52  16      1         14        0   170
#> [116,]  53  15      0         15        1    90
#> [117,]  55   6      0        180        1   100
#> [118,]  54  12      1          0        1   190
#> [119,]  55   2      0        134        1   140
#> [120,]  54   3      0        180        0   128
#> [121,]  56   3      0          8        1   139
#> [122,]  55   1      0          2        0   130
#> [123,]  54   7      1          2        0   129
#> [124,]  54   2      1          1        0   135
#> [125,]  52   9      1          3        0   170
#> [126,]  57   1      0        180        1   156
#> [127,]  57   1      0          1        1   100
#> [128,]  52  15      1         14        0   130
#> [129,]  56  14      1         11        0   130
#> [130,]  53   3      1          0        1   200
#> [131,]  57  10      0        180        1   170
#> [132,]  54   5      0        180        1   108
#> [133,]  55   3      1          1        1   156
#> [134,]  57   0      0          0        1   150
#> [135,]  53  21      1         13        1   130
#> [136,]  59   3      1          1        0   172
#> [137,]  57   4      0        180        1   119
#> [138,]  58   6      1          0        1    90
#> [139,]  53  15      1         10        1   130
#> [140,]  54  17      1          8        1   227
#> [141,]  55  13      0        166        1   140
#> [142,]  56   5      0          5        1   150
#> [143,]  57   4      1          2        1   185
#> [144,]  53   4      0        147        1   145
#> [145,]  57  11      1         10        1   129
#> [146,]  55   5      0          5        1   131
#> [147,]  56   4      0          4        0   164
#> [148,]  59  15      1         10        0   140
#> [149,]  58   1      1          1        1   200
#> [150,]  55   5      1          0        0   140
#> [151,]  56   7      1          5        1   120
#> [152,]  57   1      0        180        0   148
#> [153,]  60  11      1          9        0   106
#> [154,]  59   3      0        180        0   120
#> [155,]  58   4      1          0        1   160
#> [156,]  57   2      0          2        1   120
#> [157,]  58  11      1          9        1   124
#> [158,]  55   5      1          0        1   160
#> [159,]  57  10      1          9        0   103
#> [160,]  59   6      1          0        1   140
#> [161,]  59   5      0        180        1   155
#> [162,]  58  26      1          0        1   189
#> [163,]  58   4      1          3        0   120
#> [164,]  60   0      1          0        1    80
#> [165,]  59   2      1          1        0   140
#> [166,]  58   8      0        161        1   140
#> [167,]  61   9      1          8        0   150
#> [168,]  58   1      0          1        1   100
#> [169,]  61  20      1         13        0   130
#> [170,]  58  10      0         10        1   150
#> [171,]  57   4      1          3        0   138
#> [172,]  57  11      0        180        1   150
#> [173,]  61   3      0         17        0   143
#> [174,]  56  14      0         45        0   130
#> [175,]  55   4      1          3        1   160
#> [176,]  58  11      0        172        1   135
#> [177,]  60  12      1          0        1   114
#> [178,]  61   4      1          0        1   115
#> [179,]  57   1      0          1        0   126
#> [180,]  59   5      1          2        0   182
#> [181,]  58   5      1          1        1   135
#> [182,]  59  10      0        180        0   160
#> [183,]  61   8      0         77        0   120
#> [184,]  61  13      0         13        0   210
#> [185,]  58   8      1          5        0   152
#> [186,]  62  10      1          0        1   153
#> [187,]  62   7      1          2        1   180
#> [188,]  61  18      0        170        0   140
#> [189,]  61  28      1          7        0   133
#> [190,]  58   8      1          3        1   150
#> [191,]  57   7      0        169        0   180
#> [192,]  61   7      0          7        1   150
#> [193,]  60   7      0          7        0   147
#> [194,]  59  13      1          2        0   198
#> [195,]  62   4      1          0        0   160
#> [196,]  62   4      1          3        0   173
#> [197,]  59   1      0        180        0   155
#> [198,]  59  16      1          9        1   133
#> [199,]  63   6      0         28        1   120
#> [200,]  61  13      0         13        0   120
#> [201,]  61   5      0          5        1   110
#> [202,]  57  18      1          9        1    93
#> [203,]  61   5      0          5        1   160
#> [204,]  58  11      1          9        0   179
#> [205,]  57   2      1          1        0   159
#> [206,]  58   7      0        180        1   150
#> [207,]  63   3      1          1        0   180
#> [208,]  63   4      1          3        0   222
#> [209,]  62   3      0        180        1   105
#> [210,]  63   4      0        180        1   190
#> [211,]  63  15      1         10        1   126
#> [212,]  64   4      0        180        0   130
#> [213,]  60  18      1         13        0   132
#> [214,]  59   8      0        180        1   140
#> [215,]  58   9      1          9        0   110
#> [216,]  59   1      0         22        1   162
#> [217,]  58   2      0        180        0   127
#> [218,]  59   4      0        180        0   196
#> [219,]  59   5      1          1        0   148
#> [220,]  60   7      1          1        1    90
#> [221,]  65  13      0        180        1   100
#> [222,]  63   1      0          1        0   130
#> [223,]  62   6      0        180        0   170
#> [224,]  62   6      0          6        0   120
#> [225,]  63  12      1         10        0   200
#> [226,]  59  10      0        180        1   130
#> [227,]  60   8      0         17        1   130
#> [228,]  61   6      1          1        1   117
#> [229,]  64  12      1         11        0   160
#> [230,]  66   1      1          0        1   120
#> [231,]  64   6      1          0        1   140
#> [232,]  63  10      1          0        1   148
#> [233,]  63  14      1          9        0   123
#> [234,]  65  36      1         11        0   140
#> [235,]  66   3      1          1        0   127
#> [236,]  64  32      1          9        1   160
#> [237,]  63   7      0        180        0   120
#> [238,]  66   5      1          0        1   110
#> [239,]  64   0      0          0        1    90
#> [240,]  61  12      1         11        0   154
#> [241,]  64   9      0        180        0   150
#> [242,]  61   4      0        180        1   113
#> [243,]  65   3      0        180        1   190
#> [244,]  64   7      0        180        1   120
#> [245,]  63  12      0         12        1   150
#> [246,]  62   3      1          1        1   199
#> [247,]  65   6      0          9        0   112
#> [248,]  65   3      1          0        1    80
#> [249,]  63   5      1          4        0   170
#> [250,]  63   2      1          1        0   180
#> [251,]  62  13      1         11        0   180
#> [252,]  67  11      0         11        1   100
#> [253,]  64   2      0          2        0   201
#> [254,]  66  18      1          5        0   142
#> [255,]  62   9      0        180        0   145
#> [256,]  61  14      1          5        0   140
#> [257,]  63   9      1          8        1   160
#> [258,]  63   3      1          2        0   120
#> [259,]  63   2      1          0        0   140
#> [260,]  64  19      1          8        1   160
#> [261,]  65   8      1          0        1   140
#> [262,]  67   6      0        180        1   170
#> [263,]  66  13      1          0        0   118
#> [264,]  65   3      0          3        0   105
#> [265,]  64   0      0          0        1   148
#> [266,]  66   3      1          0        1   135
#> [267,]  64  10      1          9        1   110
#> [268,]  63   7      1          0        0   162
#> [269,]  67   8      1          1        1   130
#> [270,]  63  10      0         16        1   160
#> [271,]  66  14      0        180        0   130
#> [272,]  68  18      0        180        1   260
#> [273,]  65  17      1         14        1   100
#> [274,]  63   8      1          1        1   162
#> [275,]  65  18      1          3        0   120
#> [276,]  67  11      0         11        0   150
#> [277,]  68  11      0        180        0   160
#> [278,]  68  14      0         79        0   172
#> [279,]  66  12      1         10        1   150
#> [280,]  65  15      1         12        1   150
#> [281,]  66  11      1          0        0   100
#> [282,]  65   4      1          2        1   145
#> [283,]  66  15      1         13        1   160
#> [284,]  63   2      0        180        0   150
#> [285,]  65  11      1          6        0   130
#> [286,]  69  21      1         10        0   180
#> [287,]  69   6      0        180        1   100
#> [288,]  66   9      1          8        0   130
#> [289,]  63   8      0        180        1   120
#> [290,]  65   8      1          0        1    90
#> [291,]  67   1      0        180        1   160
#> [292,]  68  10      1         10        1   150
#> [293,]  65   1      1          0        0   133
#> [294,]  67   7      1          4        1   130
#> [295,]  65   6      0          6        0    80
#> [296,]  67  12      1         12        0   160
#> [297,]  69   6      0         99        1   140
#> [298,]  65   4      1          1        0   130
#> [299,]  66   4      0        180        1   130
#> [300,]  70  15      1         12        1   132
#> [301,]  64  11      0         11        0   125
#> [302,]  66   7      1          5        1   131
#> [303,]  66   4      0        180        0   177
#> [304,]  68   4      1          0        1   160
#> [305,]  69  17      1         10        0   140
#> [306,]  69   8      0         93        0   140
#> [307,]  64  21      0         21        1   155
#> [308,]  65   1      0          1        1   120
#> [309,]  65   6      0        101        1   115
#> [310,]  68   4      0          4        1   190
#> [311,]  71   3      0          5        0   112
#> [312,]  70   7      1          0        1   190
#> [313,]  68   7      0        150        0   210
#> [314,]  71  20      1          0        1   160
#> [315,]  67   2      0        180        0   128
#> [316,]  66   1      1          1        1   165
#> [317,]  70   4      1          0        1   180
#> [318,]  66   4      0        180        0   130
#> [319,]  68  18      1         14        1   170
#> [320,]  65   2      0        180        0   130
#> [321,]  68   7      1          0        1   150
#> [322,]  69   3      1          2        0   151
#> [323,]  65  14      1         13        1   150
#> [324,]  69   8      0        180        1   180
#> [325,]  66   2      0          2        1   228
#> [326,]  69   5      0          5        1   142
#> [327,]  69   3      0          3        1   130
#> [328,]  70  22      1         13        0   103
#> [329,]  67   1      0         36        1   104
#> [330,]  67   5      0          5        0   130
#> [331,]  68   6      0        180        0   145
#> [332,]  69   8      1          5        1   195
#> [333,]  69   6      1          4        1   174
#> [334,]  72   3      1          0        1   132
#> [335,]  72   7      0          7        1   110
#> [336,]  69   8      1          7        1   108
#> [337,]  67   3      0        180        0   110
#> [338,]  66   2      1          1        0   123
#> [339,]  69  19      0        180        0   130
#> [340,]  67  14      0        172        1   140
#> [341,]  66   2      0        180        0   130
#> [342,]  67   7      1          4        0   122
#> [343,]  68   2      0          7        1   130
#> [344,]  69   8      1          2        0   121
#> [345,]  67  13      1          9        0   130
#> [346,]  70   3      0        123        0   130
#> [347,]  70   9      0        180        1   142
#> [348,]  72   5      1          4        0   170
#> [349,]  67  22      1          1        1   140
#> [350,]  68   3      0         19        0   135
#> [351,]  67  12      1          8        0   120
#> [352,]  69   1      0          1        1   110
#> [353,]  67   1      0          1        1    60
#> [354,]  72  13      1         11        1   195
#> [355,]  66  24      1         13        0   130
#> [356,]  70  35      1          0        1   105
#> [357,]  70   7      0          7        0   102
#> [358,]  68   7      1          2        0   135
#> [359,]  73  20      1          0        1   170
#> [360,]  71   6      0          9        0   120
#> [361,]  69  10      1          6        1   120
#> [362,]  70  11      0        180        1   210
#> [363,]  72  19      1          8        0   120
#> [364,]  72  12      1         10        0   170
#> [365,]  67   8      0        180        1   170
#> [366,]  67   5      1          0        1   147
#> [367,]  73  13      0        152        1   130
#> [368,]  72   2      0          2        1   100
#> [369,]  67   4      1          1        0   134
#> [370,]  72   6      1          5        0   115
#> [371,]  71   1      0        173        1   188
#> [372,]  68  23      0        180        1   220
#> [373,]  70   3      0        180        0   121
#> [374,]  69   3      0        180        0   220
#> [375,]  71   3      1          2        0   150
#> [376,]  68   4      1          3        0   210
#> [377,]  72   5      0         28        0   120
#> [378,]  71   5      0        180        0   191
#> [379,]  73   6      0        180        1   117
#> [380,]  69  16      1         10        1   140
#> [381,]  69   8      1          1        0   164
#> [382,]  68   7      0        180        1   130
#> [383,]  70   4      0        180        0   180
#> [384,]  69   1      1          0        0   155
#> [385,]  73   6      1          0        1   270
#> [386,]  72   8      1          1        1   150
#> [387,]  71   2      1          0        1   180
#> [388,]  73   7      0          7        1   140
#> [389,]  70  13      1          9        0   100
#> [390,]  73   0      0        180        1   161
#> [391,]  74   8      1          0        1    85
#> [392,]  71   3      1          1        0   150
#> [393,]  71  15      1         11        0   165
#> [394,]  74  20      0         20        1   180
#> [395,]  68   9      0        180        1   120
#> [396,]  71  20      1         10        0   140
#> [397,]  74   0      1          0        1    90
#> [398,]  73   3      1          0        1   136
#> [399,]  71  17      1         11        0   160
#> [400,]  71   8      1          7        0   149
#> [401,]  71   3      1          2        1   190
#> [402,]  73  10      1          8        0   106
#> [403,]  74   4      0          4        0   120
#> [404,]  73   4      0         58        1   160
#> [405,]  72   5      1          3        1   160
#> [406,]  70   3      0        180        1   154
#> [407,]  73   6      0        180        0   110
#> [408,]  71   7      1          2        0   143
#> [409,]  71  13      1          8        0   121
#> [410,]  69   2      1          1        1    80
#> [411,]  70   4      1          0        1   140
#> [412,]  71  14      1         13        1   170
#> [413,]  72  10      1          8        1   153
#> [414,]  69   7      0        180        1   144
#> [415,]  72  15      1         13        0   156
#> [416,]  75   1      0          1        0   133
#> [417,]  75   2      1          1        0   145
#> [418,]  72  10      1          9        1   160
#> [419,]  71   2      0         10        1   112
#> [420,]  73   1      0          1        1    80
#> [421,]  75   9      1          7        0   140
#> [422,]  71   4      0          4        0   134
#> [423,]  72  15      1         12        1   120
#> [424,]  70   7      1          4        0   184
#> [425,]  72   7      0         57        1   145
#> [426,]  70   3      0          3        0   150
#> [427,]  76  25      1         12        1   170
#> [428,]  73  12      1         12        1   140
#> [429,]  73   4      0        180        0   124
#> [430,]  74  34      1          8        1   233
#> [431,]  76   3      1          0        1   120
#> [432,]  72   5      0        180        0   154
#> [433,]  76   5      0          5        1   130
#> [434,]  77  11      0         11        1   150
#> [435,]  75   3      1          1        0   180
#> [436,]  72   7      1          2        0   142
#> [437,]  73  15      0         15        1   160
#> [438,]  71  16      0        180        0   140
#> [439,]  76   1      0        180        0   114
#> [440,]  74   2      1          1        0   140
#> [441,]  74  19      1          4        1   200
#> [442,]  73   6      0          6        1   114
#> [443,]  75  23      1         14        1   110
#> [444,]  74   2      0        180        0   190
#> [445,]  72   4      0         85        1   120
#> [446,]  72   4      1          3        0   160
#> [447,]  76  17      1          0        1   200
#> [448,]  73   4      1          3        1   125
#> [449,]  76  13      1         10        0   110
#> [450,]  75   4      1          0        1   122
#> [451,]  75   7      0          7        0   190
#> [452,]  75   0      0          0        1   130
#> [453,]  73  13      1         11        0   195
#> [454,]  74   8      1          0        1   105
#> [455,]  75   4      1          2        1   188
#> [456,]  74   6      0        180        0   160
#> [457,]  76   4      0          4        1   155
#> [458,]  73   1      0         52        1   105
#> [459,]  73   0      0        180        0   156
#> [460,]  72   5      0        180        0   120
#> [461,]  78  12      1         11        1   160
#> [462,]  76  44      1         10        0   105
#> [463,]  76   5      0        180        0   185
#> [464,]  74  10      1          0        1   135
#> [465,]  74   8      1          8        1   170
#> [466,]  75   9      0        180        1   140
#> [467,]  73  33      1         12        1   175
#> [468,]  77   5      1          0        0   123
#> [469,]  77  12      1          9        1   100
#> [470,]  73  10      1          9        0   146
#> [471,]  77  12      0        180        0   130
#> [472,]  77   1      1          0        1    90
#> [473,]  76  12      1         11        1   120
#> [474,]  78   5      1          0        1   170
#> [475,]  73   7      1          0        0   174
#> [476,]  75   3      1          1        1   171
#> [477,]  78  18      0         18        1   144
#> [478,]  77   3      0        180        0   110
#> [479,]  73   8      1          1        1   162
#> [480,]  73  11      1          2        1   110
#> [481,]  74   2      0        180        0   100
#> [482,]  78   7      0          7        1   133
#> [483,]  74  15      0        180        1   172
#> [484,]  76  13      1          1        1   170
#> [485,]  78  32      1          9        1   198
#> [486,]  79   6      0        180        0   170
#> [487,]  78  13      1          5        0   130
#> [488,]  75   5      0        119        1   150
#> [489,]  80   8      0          8        1   120
#> [490,]  75  13      1          6        0   150
#> [491,]  78  12      1          9        0   150
#> [492,]  78   2      1          1        0   130
#> [493,]  75   4      1          0        0   212
#> [494,]  77   2      1          0        1   143
#> [495,]  75  11      1          4        0   162
#> [496,]  75   3      0          3        0     0
#> [497,]  77  24      0         24        1   160
#> [498,]  80   9      0         23        1   128
#> [499,]  76   3      1          0        1   140
#> [500,]  78  11      1          1        1   140
#> [501,]  81   1      0          1        0   130
#> [502,]  78  11      1          8        1   118
#> [503,]  76   4      0          4        1   160
#> [504,]  76  10      1          8        0   180
#> [505,]  80   3      1          0        1   120
#> [506,]  78  11      0        180        1   135
#> [507,]  76   1      0          1        1   140
#> [508,]  77  31      1          3        1   161
#> [509,]  76   1      0          1        1    90
#> [510,]  78   7      1          0        1   110
#> [511,]  77   7      0        180        1   170
#> [512,]  79   4      1          0        1   120
#> [513,]  80  15      1         12        1   150
#> [514,]  77   9      1          4        0   141
#> [515,]  82   5      0          8        1   120
#> [516,]  80  40      1          0        1   138
#> [517,]  78   4      0         59        1   112
#> [518,]  80  17      1         12        0   100
#> [519,]  76   7      0        161        0   151
#> [520,]  80  15      1          0        1    90
#> [521,]  81   4      1          2        1   126
#> [522,]  79  28      0        164        0   100
#> [523,]  80   9      0        118        1   186
#> [524,]  80   6      0        173        1   160
#> [525,]  78  32      0        180        1   130
#> [526,]  81   2      0        175        0   172
#> [527,]  78   7      0          7        1   147
#> [528,]  77  13      1          0        1   190
#> [529,]  80   5      1          1        1   108
#> [530,]  78   4      0        180        0   175
#> [531,]  79   3      0          3        1   101
#> [532,]  78  26      1          5        0   194
#> [533,]  76   1      0        166        0   131
#> [534,]  78  20      1          0        1   109
#> [535,]  80   1      0          1        0   100
#> [536,]  77  10      1          8        1   130
#> [537,]  82   3      1          1        1   144
#> [538,]  80   2      1          1        0   168
#> [539,]  79   6      0          6        0   152
#> [540,]  80   6      1          0        1   119
#> [541,]  80   5      0          5        1   130
#> [542,]  81   1      0        108        0   129
#> [543,]  79   1      0        125        0   193
#> [544,]  84  22      1         10        0   180
#> [545,]  79   4      0          4        1   121
#> [546,]  83   5      0        180        0   148
#> [547,]  79   7      1          6        0   130
#> [548,]  81   5      0        177        0    41
#> [549,]  80  11      1          8        0   170
#> [550,]  78  23      1         10        1   145
#> [551,]  78   9      1          4        1   120
#> [552,]  82   8      1          1        0   128
#> [553,]  79   1      0        180        1   170
#> [554,]  81  15      0        180        1   140
#> [555,]  84   5      1          1        1    85
#> [556,]  83   8      0          8        0   115
#> [557,]  81  16      0         16        1   110
#> [558,]  80  11      1          8        0   110
#> [559,]  81   8      0        180        0   146
#> [560,]  80   8      1          7        0   160
#> [561,]  79   0      1          0        1    96
#> [562,]  85   4      0        180        0    90
#> [563,]  81   2      1          1        0   198
#> [564,]  83   2      0          2        1   155
#> [565,]  82   6      0        128        1   100
#> [566,]  84   4      0        167        0   198
#> [567,]  80   3      1          1        1   230
#> [568,]  84   5      0        180        1   203
#> [569,]  84   4      0          4        1    85
#> [570,]  81   1      0          1        1   150
#> [571,]  79   9      1          8        0   150
#> [572,]  85   3      1          2        1   160
#> [573,]  80  13      1          8        1   140
#> [574,]  80   2      1          0        1   130
#> [575,]  79   4      0          4        1    60
#> [576,]  80   6      0         71        1   189
#> [577,]  82  19      0         19        0   120
#> [578,]  83   9      0        180        0   198
#> [579,]  83   3      0        114        0    98
#> [580,]  81  14      1         12        1   128
#> [581,]  83   2      0        154        0   130
#> [582,]  82   0      0          2        1   100
#> [583,]  85   9      1          6        1   160
#> [584,]  81   4      0          4        0   175
#> [585,]  81   1      0          1        1   145
#> [586,]  81  12      0         12        1   163
#> [587,]  82  16      1          8        0   103
#> [588,]  82   5      1          0        1   146
#> [589,]  86  12      0        180        1   120
#> [590,]  83  12      1          2        1   170
#> [591,]  81  19      1         14        0   120
#> [592,]  82   3      1          2        0   130
#> [593,]  82  15      1          0        0   183
#> [594,]  80   2      0         88        0   135
#> [595,]  83   7      0        126        0   135
#> [596,]  86   8      0          8        1   132
#> [597,]  86   3      0          3        1   140
#> [598,]  84   3      0        180        1   120
#> [599,]  81  13      0        180        0   152
#> [600,]  81   2      1          0        1   118
#> [601,]  81   4      0        180        0   160
#> [602,]  82   1      0        180        1   193
#> [603,]  87   2      0          5        1   137
#> [604,]  82  14      1         11        1   103
#> [605,]  86   6      1          0        1   140
#> [606,]  84   3      1          2        0   125
#> [607,]  88  14      1          3        1   130
#> [608,]  87   2      0        180        0   113
#> [609,]  84   9      0         92        1   110
#> [610,]  86   4      0         38        1   122
#> [611,]  82   4      0          4        0   130
#> [612,]  86  13      0        177        0   163
#> [613,]  85   3      0          3        1   113
#> [614,]  84  13      0         62        1   100
#> [615,]  86   6      1          1        0   112
#> [616,]  88   4      0          4        1   115
#> [617,]  86   9      1          7        1   142
#> [618,]  86   6      0         46        0   173
#> [619,]  88   3      0        115        0   110
#> [620,]  88   2      0        180        1    68
#> [621,]  83   3      0          3        1   130
#> [622,]  86  15      1          8        1   109
#> [623,]  88   4      0          4        0    86
#> [624,]  89   5      0        119        1   140
#> [625,]  84   8      0        180        1   119
#> [626,]  85   8      0          8        1   136
#> [627,]  84   2      0        110        1   174
#> [628,]  87  29      0         29        1    97
#> [629,]  84   0      0        180        1   136
#> [630,]  89  10      0         46        1   170
#> [631,]  90  14      0         14        1   100
#> [632,]  86   4      0        180        1   145
#> [633,]  87   6      1          0        0   125
#> [634,]  91  10      0        145        0   135
#> [635,]  88   7      0         24        0   119
#> [636,]  90  11      1         10        1   186
#> [637,]  87   6      0        126        1   168
#> [638,]  86  10      0        180        1   137
#> [639,]  91   1      0          1        1    74
#> [640,]  87   5      0         36        1   150
#> [641,]  88   3      1          2        0   159
#> [642,]  89   3      1          1        1   160
#> [643,]  92   1      0          1        1   167
#> [644,]  91   3      0         33        1   137
#> [645,]  88   5      0        158        0   100
#> [646,]  87   7      0         74        1   105
#> [647,]  89   2      0        168        0   118
#> [648,]  91   0      0          0        0     0
#> [649,]  89  14      0        180        1    84
#> [650,]  90  18      0        180        0   188
#> [651,]  91   4      1          0        1   120
#> [652,]  94   6      0         50        0    78
#> [653,]  90   1      0          1        1   118
#> [654,]  91   2      0          2        1   116
#> [655,]  93   8      0        179        1   110
#> [656,]  94   8      0          8        1   142
#> [657,]  92   4      0         76        1   149
#> [658,]  91   1      0        180        0   158
#> [659,]  90  16      0         16        1   106
#> [660,]  90   3      0         67        0   162
#> [661,]  96   3      0         12        1    97
#> [662,]  95   8      1          5        1   150
#> [663,]  94   3      0         26        1   144
#> [664,]  91  12      0         53        1   212
#> [665,]  93   0      1          0        1   122
#> [666,]  92   5      0         69        0   139
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0 
#>  [11] 180.0+   5.0+ 180.0+ 180.0+   2.0+ 180.0+   2.0+   3.0  180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 177.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+
#>  [61]   7.0  180.0+ 180.0+   2.0    1.0  180.0+ 180.0+   4.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0   88.0+ 180.0+ 180.0+ 180.0+
#>  [81]  77.0  180.0+   5.0  180.0+ 180.0+ 180.0+  85.0  180.0+ 166.0+  99.0 
#>  [91] 180.0+  16.0+ 180.0+ 152.0+   7.0+   6.0+ 180.0+ 180.0+  13.0+ 180.0+
#> [101] 174.0+  28.0    6.0+ 180.0+   2.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [111] 180.0+ 180.0+  16.0+ 180.0+  16.0   15.0+ 180.0+  12.0+ 134.0+ 180.0+
#> [121]   8.0    2.0  180.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+
#> [131] 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+
#> [141] 166.0+   5.0+   4.0+ 147.0+ 180.0+   5.0+   4.0+ 180.0+   1.0  180.0+
#> [151] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+  64.0 
#> [161] 180.0+ 180.0+ 180.0+   0.5  180.0+ 161.0+ 180.0+   1.0  180.0+  10.0+
#> [171] 180.0+ 180.0+  17.0   45.0  180.0+ 172.0+ 172.0+ 180.0+   1.0+ 180.0+
#> [181] 180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 180.0+ 170.0   94.0  180.0+
#> [191] 169.0    7.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0   13.0+
#> [201]   5.0   18.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+   9.0   22.0  180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+   1.0  180.0+   6.0+ 180.0+ 180.0+  17.0  180.0+  12.0  180.0+
#> [231] 180.0+ 180.0+  14.0+  36.0    3.0+ 180.0+ 180.0+ 180.0+   0.5   12.0+
#> [241] 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0    3.0  180.0+ 180.0+
#> [251] 180.0+  11.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0 
#> [261]  15.0  180.0+ 166.0+   3.0    0.5+   3.0+ 180.0+   7.0+   8.0   16.0 
#> [271] 180.0+ 180.0+ 180.0+ 180.0+ 123.0+  11.0+ 180.0+  79.0   80.0   15.0+
#> [281] 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [291] 180.0+  10.0  180.0+ 180.0+   6.0   12.0   99.0  180.0+ 180.0+ 180.0+
#> [301]  11.0+   7.0+ 180.0+ 180.0+ 180.0+  93.0   21.0+   1.0  101.0    4.0 
#> [311]   5.0    7.0+ 150.0  180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+
#> [321] 180.0+ 180.0+  14.0+ 180.0+   2.0    5.0+   3.0+ 180.0+  36.0    5.0+
#> [331] 180.0+ 180.0+  97.0  180.0+   7.0    8.0+ 180.0+   2.0+ 180.0+ 172.0+
#> [341] 180.0+   7.0    7.0    8.0+  13.0+ 123.0  180.0+ 180.0+  51.0   19.0 
#> [351] 180.0+   1.0    1.0  132.0  180.0+ 180.0+   7.0+   7.0+ 124.0    9.0 
#> [361] 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 152.0    2.0   76.0  180.0+
#> [371] 173.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+  16.0+
#> [381] 180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+   7.0+  13.0+ 180.0+
#> [391] 180.0+   3.0+ 180.0+  20.0  180.0+  20.0    0.5  180.0+ 180.0+   8.0 
#> [401]   3.0   87.0    4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 175.0    2.0 
#> [411] 180.0+  14.0+  10.0+ 180.0+ 180.0+   1.0  180.0+ 159.0   10.0    1.0 
#> [421] 180.0+   4.0+ 180.0+ 104.0+  57.0    3.0+ 180.0+  12.0  180.0+  34.0 
#> [431] 180.0+ 180.0+   5.0   11.0+ 180.0+   7.0   15.0+ 180.0+ 180.0+ 180.0+
#> [441] 180.0+   6.0  180.0+ 180.0+  85.0  180.0+  17.0+ 180.0+ 174.0+   4.0 
#> [451]   7.0    0.5  180.0+ 180.0+  46.0  180.0+   4.0   52.0  180.0+ 180.0+
#> [461]  12.0  180.0+ 180.0+ 180.0+   8.0  180.0+  33.0    5.0  180.0+ 180.0+
#> [471] 180.0+   1.0   12.0  180.0+   7.0+   3.0   18.0  180.0+ 180.0+  11.0 
#> [481] 180.0+   7.0  180.0+ 180.0+  32.0  180.0+ 172.0  119.0    8.0  180.0+
#> [491] 180.0+ 180.0+   4.0+   2.0  152.0+   3.0   24.0   23.0    3.0+ 180.0+
#> [501]   1.0   11.0    4.0   10.0+   3.0+ 180.0+   1.0  171.0    1.0   43.0 
#> [511] 180.0+ 138.0  180.0+  71.0    8.0   40.0   59.0   17.0  161.0  180.0+
#> [521]  93.0  164.0  118.0  173.0  180.0+ 175.0+   7.0+  22.0    5.0+ 180.0+
#> [531]   3.0  171.0+ 166.0+  20.0+   1.0   10.0  180.0+  10.0    6.0+   6.0 
#> [541]   5.0  108.0  125.0  180.0+   4.0  180.0+ 180.0+ 177.0+ 169.0   70.0 
#> [551] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+  16.0  180.0+ 180.0+ 180.0+
#> [561]   0.5  180.0+ 180.0+   2.0  128.0  167.0    3.0+ 180.0+   4.0    1.0 
#> [571] 180.0+ 180.0+ 180.0+ 180.0+   4.0   71.0   19.0  180.0+ 114.0  180.0+
#> [581] 154.0    2.0  180.0+   4.0+   1.0   12.0   16.0+   5.0+ 180.0+  77.0 
#> [591] 180.0+   3.0   83.0   88.0  126.0    8.0    3.0  180.0+ 180.0+ 180.0+
#> [601] 180.0+ 180.0+   5.0  174.0    6.0  180.0+  14.0  180.0+  92.0   38.0 
#> [611]   4.0  177.0    3.0+  62.0    6.0+   4.0   11.0   46.0  115.0  180.0+
#> [621]   3.0+ 180.0+   4.0  119.0  180.0+   8.0  110.0   29.0  180.0+  46.0 
#> [631]  14.0  180.0+  25.0  145.0   24.0   11.0  126.0  180.0+   1.0   36.0 
#> [641]  75.0    3.0+   1.0   33.0  158.0   74.0  168.0    0.5  180.0+ 180.0+
#> [651]   4.0   50.0    1.0+   2.0  179.0+   8.0+  76.0  180.0+  16.0   67.0 
#> [661]  12.0    8.0   26.0   53.0    0.5   69.0    2.0  180.0+   3.0   15.0+
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
#>   0.8122088 
```
