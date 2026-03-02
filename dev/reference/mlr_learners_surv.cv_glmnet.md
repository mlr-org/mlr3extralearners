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
#> min 0.00352    44   2.894 0.1079       6
#> 1se 0.05745    14   2.994 0.1041       5
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35   5      1          2        0   172
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      1          1        1   112
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  12      1          8        1   120
#>  [12,]  38  16      1         10        0   160
#>  [13,]  38  12      1         11        1    92
#>  [14,]  40  12      1          9        0   153
#>  [15,]  42   3      1          1        1   130
#>  [16,]  40   2      1          1        1   148
#>  [17,]  42   2      0        180        1   100
#>  [18,]  38   5      1          3        0   125
#>  [19,]  42   2      0          2        0   140
#>  [20,]  40   6      0        180        1   138
#>  [21,]  43   3      1          0        1   100
#>  [22,]  41   2      1          1        0   166
#>  [23,]  40   1      1          0        1   145
#>  [24,]  43   4      1          0        1   130
#>  [25,]  42   4      0        180        0   162
#>  [26,]  42  15      1         13        1   125
#>  [27,]  40   3      1          1        0   170
#>  [28,]  42  12      1         10        1   170
#>  [29,]  43   2      1          1        1   116
#>  [30,]  42   2      0        180        1   124
#>  [31,]  45   3      0        180        1   154
#>  [32,]  41  10      1          8        0   150
#>  [33,]  44   3      0        180        0   141
#>  [34,]  44   2      1          1        1   150
#>  [35,]  45   2      0        180        1   140
#>  [36,]  46  15      0        180        0   120
#>  [37,]  46   2      1          1        0   126
#>  [38,]  47   4      1          3        0   118
#>  [39,]  45   3      0        150        0   130
#>  [40,]  44   3      1          0        1   180
#>  [41,]  46   7      1          2        0   166
#>  [42,]  43  29      0        180        1   180
#>  [43,]  43  10      0        180        0   185
#>  [44,]  47   6      1          0        1   116
#>  [45,]  46  13      1         10        0   100
#>  [46,]  44   0      1          0        1    96
#>  [47,]  47   4      1          3        1   160
#>  [48,]  43   3      1          0        1   124
#>  [49,]  49   5      0         73        1   136
#>  [50,]  45   5      0          5        0   141
#>  [51,]  46   2      1          1        1   122
#>  [52,]  44   4      1          0        1   114
#>  [53,]  47   2      0        180        0   108
#>  [54,]  44   9      1          8        1   135
#>  [55,]  46   5      1          3        0   130
#>  [56,]  46   4      0        180        1   121
#>  [57,]  44   2      0        180        0   142
#>  [58,]  46  15      0        180        1   120
#>  [59,]  45   9      1          0        1   145
#>  [60,]  47   3      1          1        1   120
#>  [61,]  48  12      1         11        0   200
#>  [62,]  47   9      1          6        0   170
#>  [63,]  46   3      1          0        1   119
#>  [64,]  49   4      0        180        0   117
#>  [65,]  47  10      0         10        1   140
#>  [66,]  48   2      1          0        0   184
#>  [67,]  47   7      0        180        0   145
#>  [68,]  49   7      1          7        1   110
#>  [69,]  46   3      1          1        1   140
#>  [70,]  46   9      1          9        1   122
#>  [71,]  50   7      0        180        1   110
#>  [72,]  49   2      0          2        0   105
#>  [73,]  51   1      0          1        1   145
#>  [74,]  49  15      1         11        1   160
#>  [75,]  47   2      0        180        0   150
#>  [76,]  46   6      1          0        1   156
#>  [77,]  52   2      0        180        1   170
#>  [78,]  50   7      1          0        1    92
#>  [79,]  51   3      1          2        0   113
#>  [80,]  50   1      1          0        0   150
#>  [81,]  50   9      0        180        0   130
#>  [82,]  47   6      0        180        1   162
#>  [83,]  51   8      0        180        1   140
#>  [84,]  46   3      0        180        1   120
#>  [85,]  50   4      1          1        0   150
#>  [86,]  48   7      1          0        1   110
#>  [87,]  53   8      0         36        1   160
#>  [88,]  48  17      1         10        0   111
#>  [89,]  52   4      1          4        0   152
#>  [90,]  49   9      1          3        0   102
#>  [91,]  54  17      1         12        1   102
#>  [92,]  53   5      0         77        0   159
#>  [93,]  53   7      1          0        0   199
#>  [94,]  54   6      1          3        0   129
#>  [95,]  50   2      0          5        1   106
#>  [96,]  50  14      1         13        0   170
#>  [97,]  51  25      1          1        0   202
#>  [98,]  49   5      1          2        1   150
#>  [99,]  53   4      0          4        0   140
#> [100,]  52  14      1          7        1   200
#> [101,]  48   6      0        180        0   160
#> [102,]  48  11      1         10        0   120
#> [103,]  53   4      1          0        1   156
#> [104,]  51  13      0         99        1   160
#> [105,]  55   3      1          1        0   150
#> [106,]  54  23      1         10        0   131
#> [107,]  52   7      1          2        0   154
#> [108,]  55   6      1          2        1   114
#> [109,]  54   9      1          1        0   130
#> [110,]  52   4      0        180        1   180
#> [111,]  51  13      1         11        0   145
#> [112,]  50   5      1          4        1   150
#> [113,]  54   4      1          0        1   121
#> [114,]  52   4      0        180        0   183
#> [115,]  50   3      0        174        1   153
#> [116,]  49   6      1          0        1   130
#> [117,]  49   1      0          1        1   110
#> [118,]  50   7      1          1        0   156
#> [119,]  53   8      1          0        1   130
#> [120,]  50   7      1          0        1   127
#> [121,]  56   4      1          1        1   130
#> [122,]  55   1      0        180        0   127
#> [123,]  55   2      0          2        0   145
#> [124,]  54   1      0        180        0   162
#> [125,]  54   7      1          0        1   100
#> [126,]  55   5      1          4        1   120
#> [127,]  53  18      1          9        1   150
#> [128,]  54   3      0        180        1   180
#> [129,]  52  16      0         16        0   152
#> [130,]  52  16      1         14        0   170
#> [131,]  53  15      0         15        1    90
#> [132,]  53   4      0        180        1   150
#> [133,]  55   6      0        180        1   100
#> [134,]  54  12      1          0        1   190
#> [135,]  54   3      0        180        0   128
#> [136,]  56   3      0          8        1   139
#> [137,]  55   1      0          2        0   130
#> [138,]  57   3      0          3        0   120
#> [139,]  54   7      1          2        0   129
#> [140,]  54   2      1          1        0   135
#> [141,]  54   2      1          1        1   176
#> [142,]  57   1      0          1        1   100
#> [143,]  56   4      1          0        1   140
#> [144,]  55  11      1          7        0   104
#> [145,]  52  15      1         14        0   130
#> [146,]  53   3      1          0        1   200
#> [147,]  58   8      0          8        1   130
#> [148,]  54   5      0        180        1   108
#> [149,]  55   3      1          1        1   156
#> [150,]  57   0      0          0        1   150
#> [151,]  59   3      1          1        0   172
#> [152,]  57   4      0        180        1   119
#> [153,]  58   6      1          0        1    90
#> [154,]  53  15      1         10        1   130
#> [155,]  54  17      1          8        1   227
#> [156,]  55   9      1          2        1   147
#> [157,]  55  13      0        166        1   140
#> [158,]  53   4      0        147        1   145
#> [159,]  53   7      1          0        1   120
#> [160,]  55   3      1          2        0   140
#> [161,]  55   5      0          5        1   131
#> [162,]  54   7      1          0        1   141
#> [163,]  59  15      1         10        0   140
#> [164,]  58   1      1          1        1   200
#> [165,]  55   5      1          0        0   140
#> [166,]  56   7      1          5        1   120
#> [167,]  55   2      0          2        0   106
#> [168,]  59   9      1          1        1   125
#> [169,]  60  11      1          9        0   106
#> [170,]  59   3      0        180        0   120
#> [171,]  60   5      1          1        0   138
#> [172,]  57   5      0        180        1   130
#> [173,]  58  11      1          9        1   124
#> [174,]  57  10      1          9        0   103
#> [175,]  59   6      1          0        1   140
#> [176,]  59   5      0        180        1   155
#> [177,]  59   4      1          0        1   152
#> [178,]  58  26      1          0        1   189
#> [179,]  59   2      1          1        0   140
#> [180,]  58  14      1          6        0   190
#> [181,]  61   4      1          3        0   151
#> [182,]  61   3      1          2        1   102
#> [183,]  61  20      1         13        0   130
#> [184,]  58  10      0         10        1   150
#> [185,]  57   4      1          3        0   138
#> [186,]  57  11      0        180        1   150
#> [187,]  56  14      0         45        0   130
#> [188,]  57   3      1          2        0   120
#> [189,]  58  19      1         13        1   140
#> [190,]  56  18      1         11        1   165
#> [191,]  55   4      1          3        1   160
#> [192,]  58  11      0        172        1   135
#> [193,]  60  12      1          0        1   114
#> [194,]  55   9      1          7        1   135
#> [195,]  59  11      1          8        1   190
#> [196,]  57   1      0          1        0   126
#> [197,]  57  15      1         13        1   110
#> [198,]  59   5      1          2        0   182
#> [199,]  58   5      1          1        1   135
#> [200,]  59  10      0        180        0   160
#> [201,]  61   8      0         77        0   120
#> [202,]  61  13      0         13        0   210
#> [203,]  58   8      1          5        0   152
#> [204,]  62   7      1          2        1   180
#> [205,]  57   3      1          0        0   100
#> [206,]  61  18      0        170        0   140
#> [207,]  60   7      0          7        0   147
#> [208,]  61   6      0          6        0   134
#> [209,]  59  13      1          2        0   198
#> [210,]  57  12      1          9        1   120
#> [211,]  62   4      1          0        0   160
#> [212,]  58   3      1          0        1   146
#> [213,]  62   4      1          3        0   173
#> [214,]  58   2      0         30        0   202
#> [215,]  59   1      0        180        0   155
#> [216,]  59  16      1          9        1   133
#> [217,]  63   6      0         28        1   120
#> [218,]  61  13      0         13        0   120
#> [219,]  57  18      1          9        1    93
#> [220,]  61   5      0          5        1   160
#> [221,]  58  11      1          9        0   179
#> [222,]  62  17      1         10        1   180
#> [223,]  62   1      1          0        1   172
#> [224,]  58   7      0        180        1   150
#> [225,]  63   3      1          1        0   180
#> [226,]  63   1      0        180        1   130
#> [227,]  63   4      1          3        0   222
#> [228,]  63   4      0        180        1   190
#> [229,]  64   4      0        180        0   130
#> [230,]  63   4      1          1        0   155
#> [231,]  60  18      1         13        0   132
#> [232,]  62   7      0          7        0   150
#> [233,]  59   1      0         22        1   162
#> [234,]  58   2      0        180        0   127
#> [235,]  59   4      0        180        0   196
#> [236,]  60   7      1          5        1   141
#> [237,]  60   7      0          7        0   140
#> [238,]  59   5      1          1        0   148
#> [239,]  60   7      1          1        1    90
#> [240,]  65  13      0        180        1   100
#> [241,]  63   1      0          1        0   162
#> [242,]  63   1      0          1        0   130
#> [243,]  62   6      0        180        0   170
#> [244,]  61  15      1         13        0   170
#> [245,]  60   3      0          3        0   168
#> [246,]  64  10      1          9        0   160
#> [247,]  62   6      0          6        0   120
#> [248,]  63  12      1         10        0   200
#> [249,]  59  10      0        180        1   130
#> [250,]  60   8      0         17        1   130
#> [251,]  61   6      1          1        1   117
#> [252,]  64   6      1          0        1   140
#> [253,]  63  10      1          0        1   148
#> [254,]  65  36      1         11        0   140
#> [255,]  63   4      1          3        0   162
#> [256,]  66   3      1          1        0   127
#> [257,]  61  10      1          2        1   194
#> [258,]  64  32      1          9        1   160
#> [259,]  63   7      0        180        0   120
#> [260,]  66   5      1          0        1   110
#> [261,]  65   8      1          0        0   168
#> [262,]  60   6      0        180        0   130
#> [263,]  61  12      1         11        0   154
#> [264,]  64   9      0        180        0   150
#> [265,]  63  16      1          7        1   110
#> [266,]  64   7      0        180        1   120
#> [267,]  66   6      1          1        1   130
#> [268,]  62   3      1          1        1   199
#> [269,]  65   6      0          9        0   112
#> [270,]  65   3      1          0        1    80
#> [271,]  63   5      1          4        0   170
#> [272,]  62  13      1         11        0   180
#> [273,]  66  18      1          5        0   142
#> [274,]  66  16      1         11        1   169
#> [275,]  61  14      1          5        0   140
#> [276,]  63   9      1          8        1   160
#> [277,]  63   3      1          2        0   120
#> [278,]  63   2      1          0        0   140
#> [279,]  64  19      1          8        1   160
#> [280,]  65   8      1          0        1   140
#> [281,]  65  15      1         11        1   160
#> [282,]  64  13      1         12        1   150
#> [283,]  66   7      1          0        1   115
#> [284,]  66  13      1          0        0   118
#> [285,]  64  14      1         13        1   150
#> [286,]  65   3      0          3        0   105
#> [287,]  67   4      1          3        0   130
#> [288,]  65   2      1          1        1   170
#> [289,]  64  10      1          9        1   110
#> [290,]  67   8      1          1        1   130
#> [291,]  68   5      0          5        1    90
#> [292,]  63  10      0         16        1   160
#> [293,]  64   1      0          1        1   120
#> [294,]  65  17      1         14        1   100
#> [295,]  65  18      1          3        0   120
#> [296,]  63   1      1          0        1   155
#> [297,]  63  10      0         18        1   130
#> [298,]  67  11      0         11        0   150
#> [299,]  68  11      0        180        0   160
#> [300,]  68  14      0         79        0   172
#> [301,]  66  12      1         10        1   150
#> [302,]  65  15      1         12        1   150
#> [303,]  66  11      1          0        0   100
#> [304,]  69  12      0         15        1   140
#> [305,]  66  15      1         13        1   160
#> [306,]  63   2      0        180        0   150
#> [307,]  69  21      1         10        0   180
#> [308,]  68  14      1         13        1   140
#> [309,]  65   8      1          0        1    90
#> [310,]  66   3      0          3        1   138
#> [311,]  69   1      1          0        0   170
#> [312,]  67   1      0        180        1   160
#> [313,]  68  10      1         10        1   150
#> [314,]  67   7      1          4        1   130
#> [315,]  63   2      1          0        0    99
#> [316,]  65   6      0          6        0    80
#> [317,]  65  10      1          1        1   148
#> [318,]  66  19      1         12        1   150
#> [319,]  65   4      1          1        0   130
#> [320,]  64   4      0        179        0   160
#> [321,]  66   4      0        180        1   130
#> [322,]  64  11      0         11        0   125
#> [323,]  67   2      0         18        0   131
#> [324,]  69   4      1          3        1   150
#> [325,]  65  13      1         12        1   130
#> [326,]  69   8      0         93        0   140
#> [327,]  64  21      0         21        1   155
#> [328,]  66   6      0        180        0   140
#> [329,]  68  18      1          0        1   160
#> [330,]  68   4      0          4        1   190
#> [331,]  68   7      0        150        0   210
#> [332,]  71  20      1          0        1   160
#> [333,]  67   2      0        180        0   128
#> [334,]  70   4      1          0        1   180
#> [335,]  69   8      0        180        1   153
#> [336,]  70  14      0        171        0   166
#> [337,]  67  10      1          9        0   200
#> [338,]  68  18      1         14        1   170
#> [339,]  69   0      0          0        1   148
#> [340,]  65   2      0        180        0   130
#> [341,]  68   7      1          0        1   150
#> [342,]  69   3      1          2        0   151
#> [343,]  69   5      0          5        1   142
#> [344,]  69   3      0          3        1   130
#> [345,]  70  22      1         13        0   103
#> [346,]  67   1      0         36        1   104
#> [347,]  67   5      0          5        0   130
#> [348,]  68   6      0        180        0   145
#> [349,]  69   8      1          5        1   195
#> [350,]  69   6      1          4        1   174
#> [351,]  72   3      1          0        1   132
#> [352,]  69   8      1          7        1   108
#> [353,]  67   3      0        180        0   110
#> [354,]  66   2      1          1        0   123
#> [355,]  68  18      0         18        1   100
#> [356,]  67  14      0        172        1   140
#> [357,]  69  11      1          0        1   120
#> [358,]  66   2      0        180        0   130
#> [359,]  67   7      1          4        0   122
#> [360,]  68   2      0          7        1   130
#> [361,]  69   8      1          2        0   121
#> [362,]  70   9      0        180        1   142
#> [363,]  67  22      1          1        1   140
#> [364,]  69   1      0          1        1   110
#> [365,]  67   1      0          1        1    60
#> [366,]  69   5      0         76        0   120
#> [367,]  72  13      1         11        1   195
#> [368,]  66  24      1         13        0   130
#> [369,]  68   7      1          2        0   135
#> [370,]  73  20      1          0        1   170
#> [371,]  71   6      0          9        0   120
#> [372,]  69  10      1          6        1   120
#> [373,]  72  12      1         10        0   170
#> [374,]  67   8      0        180        1   170
#> [375,]  73  13      0        152        1   130
#> [376,]  70   5      0        180        0   150
#> [377,]  72   2      0          2        1   100
#> [378,]  67   4      1          1        0   134
#> [379,]  72   6      1          5        0   115
#> [380,]  71   1      0        173        1   188
#> [381,]  68  23      0        180        1   220
#> [382,]  70   3      0        180        0   121
#> [383,]  71   3      1          2        0   150
#> [384,]  68   4      1          3        0   210
#> [385,]  72   5      0         28        0   120
#> [386,]  69  16      1         10        1   140
#> [387,]  68   7      0        180        1   130
#> [388,]  72  16      1          1        1   130
#> [389,]  70   4      0        180        0   180
#> [390,]  72   8      1          1        1   150
#> [391,]  71   2      1          0        1   180
#> [392,]  73   7      0          7        1   140
#> [393,]  70   3      0          3        1   159
#> [394,]  70  13      1          9        0   100
#> [395,]  72   6      0        180        1   130
#> [396,]  73   0      0        180        1   161
#> [397,]  73   4      0        180        1   154
#> [398,]  69   2      1          0        1   110
#> [399,]  68   9      0        180        1   120
#> [400,]  74   0      1          0        1    90
#> [401,]  70   5      1          0        1   190
#> [402,]  71   8      1          7        0   149
#> [403,]  71   3      1          2        1   190
#> [404,]  73  10      1          8        0   106
#> [405,]  69  12      1          1        1   149
#> [406,]  74   4      0          4        0   120
#> [407,]  73   4      0         58        1   160
#> [408,]  70   3      0        180        1   154
#> [409,]  72  15      1          0        1   150
#> [410,]  71   7      1          2        0   143
#> [411,]  72   8      1          0        1   140
#> [412,]  74   3      0          3        1   150
#> [413,]  73  17      1         11        0   140
#> [414,]  71  13      1          8        0   121
#> [415,]  69   2      1          1        1    80
#> [416,]  70   4      1          0        1   140
#> [417,]  71  14      1         13        1   170
#> [418,]  74   7      1          0        1   117
#> [419,]  72  10      1          8        1   153
#> [420,]  69   7      0        180        1   144
#> [421,]  72  15      1         13        0   156
#> [422,]  70   8      0          8        0   120
#> [423,]  75   1      0          1        0   133
#> [424,]  75   2      1          1        0   145
#> [425,]  73  10      1          9        1   146
#> [426,]  72  10      1          9        1   160
#> [427,]  73  10      1         10        1   120
#> [428,]  73   1      0          1        1    80
#> [429,]  75   9      1          7        0   140
#> [430,]  72  15      1         12        1   120
#> [431,]  70   7      1          4        0   184
#> [432,]  72   1      1          1        0   168
#> [433,]  72   7      0         57        1   145
#> [434,]  73  10      0        180        0   162
#> [435,]  72  11      0         11        1   140
#> [436,]  73   5      1          3        1   112
#> [437,]  76  25      1         12        1   170
#> [438,]  72   2      0        180        0   120
#> [439,]  72   4      1          0        1   197
#> [440,]  71   3      1          0        0   144
#> [441,]  73   5      0        180        0   126
#> [442,]  73   4      0        180        0   124
#> [443,]  71  32      1         12        1   107
#> [444,]  76   5      0          5        1   130
#> [445,]  77  11      0         11        1   150
#> [446,]  77   4      0          4        0   185
#> [447,]  75   3      1          1        0   180
#> [448,]  73  15      0         15        1   160
#> [449,]  71  16      0        180        0   140
#> [450,]  74   7      0        180        1   150
#> [451,]  74   3      0          3        1   128
#> [452,]  76   1      0        180        0   114
#> [453,]  74   2      1          1        0   140
#> [454,]  76   8      1          0        1   141
#> [455,]  74  19      1          4        1   200
#> [456,]  75  23      1         14        1   110
#> [457,]  72   4      0         85        1   120
#> [458,]  72   4      1          3        0   160
#> [459,]  76  17      1          0        1   200
#> [460,]  73   4      1          3        1   125
#> [461,]  75   7      0          7        0   190
#> [462,]  74   8      1          0        1   105
#> [463,]  74   6      0        180        0   160
#> [464,]  75   1      0          1        1   125
#> [465,]  73   1      0         52        1   105
#> [466,]  73   0      0        180        0   156
#> [467,]  78  12      1         11        1   160
#> [468,]  76  44      1         10        0   105
#> [469,]  74   8      1          8        1   170
#> [470,]  75   9      0        180        1   140
#> [471,]  73  33      1         12        1   175
#> [472,]  77   5      1          0        0   123
#> [473,]  77  12      1          9        1   100
#> [474,]  73  10      1          9        0   146
#> [475,]  77   1      1          0        1    90
#> [476,]  74   6      0         79        1   140
#> [477,]  75   3      1          1        1   171
#> [478,]  79  10      1          8        0   190
#> [479,]  74   2      1          0        1   130
#> [480,]  78  18      0         18        1   144
#> [481,]  77   3      0        180        0   110
#> [482,]  76  29      0         47        0    90
#> [483,]  73   8      1          1        1   162
#> [484,]  73  11      1          2        1   110
#> [485,]  78   7      0          7        1   133
#> [486,]  74  15      0        180        1   172
#> [487,]  79   6      0        180        0   170
#> [488,]  80  10      1          6        1   147
#> [489,]  78  13      1          5        0   130
#> [490,]  75   5      0        119        1   150
#> [491,]  75  12      1          1        1   120
#> [492,]  80   8      0          8        1   120
#> [493,]  76   1      0          1        1    83
#> [494,]  79   4      0         80        0   145
#> [495,]  78   2      1          1        0   130
#> [496,]  77   2      1          0        1   143
#> [497,]  78  10      0        180        1   130
#> [498,]  75  11      1          4        0   162
#> [499,]  79   8      0         32        1   120
#> [500,]  80   6      0          6        1   150
#> [501,]  78  11      1          1        1   140
#> [502,]  78  14      1          0        1   140
#> [503,]  76   4      0          4        1   160
#> [504,]  79   4      0          4        1   125
#> [505,]  76  10      1          8        0   180
#> [506,]  76  12      1         10        1   127
#> [507,]  75   2      1          1        1   204
#> [508,]  78  11      0        180        1   135
#> [509,]  76   1      0          1        1   140
#> [510,]  77  31      1          3        1   161
#> [511,]  76   1      0          1        1    90
#> [512,]  78   7      1          0        1   110
#> [513,]  77   7      0        180        1   170
#> [514,]  77   6      0          6        1   144
#> [515,]  79   4      1          0        1   120
#> [516,]  81   1      0        180        0   120
#> [517,]  82   5      0          8        1   120
#> [518,]  78   4      0         59        1   112
#> [519,]  80  17      1         12        0   100
#> [520,]  76   7      0        161        0   151
#> [521,]  79  10      0         10        1   120
#> [522,]  80  15      1          0        1    90
#> [523,]  80   9      0        118        1   186
#> [524,]  80   6      0        173        1   160
#> [525,]  78  32      0        180        1   130
#> [526,]  81   2      0        175        0   172
#> [527,]  77  13      1          0        1   190
#> [528,]  78  15      0         15        0   165
#> [529,]  80   5      1          1        1   108
#> [530,]  78   4      0        180        0   175
#> [531,]  78  26      1          5        0   194
#> [532,]  76   1      0        166        0   131
#> [533,]  81   4      1          1        1   104
#> [534,]  78   3      1          1        1   152
#> [535,]  82   3      1          1        1   144
#> [536,]  77   5      0         85        0   188
#> [537,]  80   2      1          1        0   168
#> [538,]  79   6      0          6        0   152
#> [539,]  80   6      1          0        1   119
#> [540,]  78   2      0        180        0   148
#> [541,]  80   5      0          5        1   130
#> [542,]  82   1      1          0        1    82
#> [543,]  77   4      0        180        1    98
#> [544,]  81   1      0        108        0   129
#> [545,]  78  12      0        180        0   134
#> [546,]  79   1      0        125        0   193
#> [547,]  82  21      1          2        0   155
#> [548,]  84  22      1         10        0   180
#> [549,]  82   5      0        180        0   110
#> [550,]  83   5      0        180        0   148
#> [551,]  81   5      0        177        0    41
#> [552,]  80  11      1          8        0   170
#> [553,]  78   9      1          4        1   120
#> [554,]  82   8      1          1        0   128
#> [555,]  79   1      0        180        1   170
#> [556,]  81  15      0        180        1   140
#> [557,]  84   5      1          1        1    85
#> [558,]  83   8      0          8        0   115
#> [559,]  80   6      1          0        1   150
#> [560,]  80  11      1          8        0   110
#> [561,]  81   8      0        180        0   146
#> [562,]  80   8      1          7        0   160
#> [563,]  79   0      1          0        1    96
#> [564,]  85   4      0        180        0    90
#> [565,]  83   2      0          2        1   155
#> [566,]  84   4      0        167        0   198
#> [567,]  84   4      0          4        1    85
#> [568,]  81   1      0          1        1   150
#> [569,]  84   1      0         38        1   205
#> [570,]  81   4      0         90        1   138
#> [571,]  79   9      1          8        0   150
#> [572,]  80  13      1          8        1   140
#> [573,]  84   4      0         89        1   129
#> [574,]  79   4      0          4        1    60
#> [575,]  80   6      0         71        1   189
#> [576,]  82  19      0         19        0   120
#> [577,]  80  30      1         13        0   220
#> [578,]  79  14      1          0        0   110
#> [579,]  83   3      0        114        0    98
#> [580,]  81  14      1         12        1   128
#> [581,]  82   0      0          2        1   100
#> [582,]  85   9      1          6        1   160
#> [583,]  83   1      0        180        0   160
#> [584,]  81   4      0          4        0   175
#> [585,]  84  15      1         13        1   110
#> [586,]  81   1      0          1        1   145
#> [587,]  81  12      0         12        1   163
#> [588,]  82   5      1          0        1   146
#> [589,]  81   4      0          4        0   160
#> [590,]  86  12      0        180        1   120
#> [591,]  83  12      1          2        1   170
#> [592,]  81  19      1         14        0   120
#> [593,]  82   3      1          2        0   130
#> [594,]  82  15      1          0        0   183
#> [595,]  80   2      0         88        0   135
#> [596,]  83   7      0        126        0   135
#> [597,]  86   8      0          8        1   132
#> [598,]  84   6      0        165        0   145
#> [599,]  84   3      0        180        1   120
#> [600,]  81  13      0        180        0   152
#> [601,]  85   3      0          3        1   118
#> [602,]  83   9      0        180        1   149
#> [603,]  83   4      0          4        0   130
#> [604,]  87   2      0          5        1   137
#> [605,]  86  12      1          0        1   132
#> [606,]  84  16      0         70        1   150
#> [607,]  83  19      0         43        0   150
#> [608,]  83  10      1          0        1   190
#> [609,]  88  14      1          3        1   130
#> [610,]  84   3      0          3        1   121
#> [611,]  83  13      1         12        0   170
#> [612,]  87   2      0        180        0   113
#> [613,]  84   9      0         92        1   110
#> [614,]  84   3      0        180        1   170
#> [615,]  82   4      0          4        0   130
#> [616,]  86  13      0        177        0   163
#> [617,]  85   3      0          3        1   113
#> [618,]  86   6      0          6        1   117
#> [619,]  84  13      0         62        1   100
#> [620,]  83  20      1          3        1   150
#> [621,]  88   4      0          4        1   115
#> [622,]  85  22      0         22        1   184
#> [623,]  86   9      1          7        1   142
#> [624,]  88   3      0        115        0   110
#> [625,]  88   2      0        180        1    68
#> [626,]  87   8      0          8        1   157
#> [627,]  86  15      1          8        1   109
#> [628,]  88   4      0          4        0    86
#> [629,]  87   6      0        180        1   110
#> [630,]  84   8      0        180        1   119
#> [631,]  84   2      0        110        1   174
#> [632,]  87  29      0         29        1    97
#> [633,]  87  15      1          9        1   138
#> [634,]  84   0      0        180        1   136
#> [635,]  90  14      0         14        1   100
#> [636,]  88   1      0          1        0   135
#> [637,]  91   8      0          8        0   100
#> [638,]  91  10      0        145        0   135
#> [639,]  88   7      0         24        0   119
#> [640,]  88   8      0         50        1   154
#> [641,]  86  10      0        180        1   137
#> [642,]  86   9      1          7        0   130
#> [643,]  90   4      1          0        0   121
#> [644,]  91   1      0          1        1    74
#> [645,]  87  43      0        178        1   130
#> [646,]  90   5      1          0        1   125
#> [647,]  88   3      1          2        0   159
#> [648,]  88   5      0        158        0   100
#> [649,]  87   7      0         74        1   105
#> [650,]  89  12      1          0        1   130
#> [651,]  89   2      0        168        0   118
#> [652,]  92   7      0          7        1   110
#> [653,]  91   0      0          0        0     0
#> [654,]  90  18      0        180        0   188
#> [655,]  91   4      1          0        1   120
#> [656,]  94   6      0         50        0    78
#> [657,]  93   8      0        179        1   110
#> [658,]  94   8      0          8        1   142
#> [659,]  92   4      0         76        1   149
#> [660,]  91   1      0        180        0   158
#> [661,]  90  16      0         16        1   106
#> [662,]  90   3      0         67        0   162
#> [663,]  96   3      0         12        1    97
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+   5.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+ 180.0+
#>  [11]  12.0  180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+
#>  [21]   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+
#>  [41] 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+
#>  [51] 161.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+
#>  [71] 180.0+   2.0    1.0  179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+   4.0+ 180.0+
#>  [91] 180.0+  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+   4.0+  85.0 
#> [101] 180.0+ 180.0+ 166.0+  99.0  180.0+ 152.0+   7.0+   6.0+ 180.0+ 180.0+
#> [111]  13.0+ 171.0+ 180.0+ 180.0+ 174.0+   6.0+   1.0  180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+  16.0+  16.0 
#> [131]  15.0+ 180.0+ 180.0+  12.0+ 180.0+   8.0    2.0    3.0+ 180.0+ 180.0+
#> [141] 180.0+   1.0  165.0  180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+   0.5 
#> [151] 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+ 147.0+ 180.0+ 180.0+
#> [161]   5.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [171] 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+ 180.0+ 171.0+
#> [181] 180.0+   3.0  180.0+  10.0+ 180.0+ 180.0+  45.0    3.0+  19.0  180.0+
#> [191] 180.0+ 172.0+ 172.0+  24.0  180.0+   1.0+  15.0  180.0+ 180.0+ 180.0+
#> [201]  77.0   13.0+   8.0+ 180.0+ 180.0+ 170.0    7.0+   6.0  180.0+ 180.0+
#> [211] 180.0+   3.0+ 180.0+  30.0  180.0+ 180.0+  28.0   13.0+  18.0    5.0+
#> [221] 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [231] 180.0+   7.0+  22.0  180.0+ 180.0+  84.0    7.0+ 180.0+ 180.0+ 180.0+
#> [241]   1.0    1.0  180.0+ 180.0+   3.0+ 167.0    6.0+ 180.0+ 180.0+  17.0 
#> [251] 180.0+ 180.0+ 180.0+  36.0  180.0+   3.0+  88.0  180.0+ 180.0+ 180.0+
#> [261] 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0    3.0 
#> [271] 180.0+ 180.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0 
#> [281] 180.0+  13.0  179.0+ 166.0+  14.0+   3.0  180.0+ 175.0+ 180.0+   8.0 
#> [291]   5.0   16.0    1.0  180.0+ 123.0+   1.0+  18.0   11.0+ 180.0+  79.0 
#> [301]  80.0   15.0+ 180.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+   8.0+   3.0 
#> [311] 175.0  180.0+  10.0  180.0+ 180.0+   6.0  180.0+  19.0+ 180.0+ 179.0+
#> [321] 180.0+  11.0+  18.0  152.0+ 180.0+  93.0   21.0+ 180.0+  18.0+   4.0 
#> [331] 150.0  180.0+ 180.0+ 180.0+ 180.0+ 171.0  174.0+ 180.0+   0.5  180.0+
#> [341] 180.0+ 180.0+   5.0+   3.0+ 180.0+  36.0    5.0+ 180.0+ 180.0+  97.0 
#> [351] 180.0+   8.0+ 180.0+   2.0+  18.0  172.0+ 180.0+ 180.0+   7.0    7.0 
#> [361]   8.0+ 180.0+  51.0    1.0    1.0   76.0  132.0  180.0+   7.0+ 124.0 
#> [371]   9.0  180.0+  12.0  180.0+ 152.0  180.0+   2.0   76.0  180.0+ 173.0+
#> [381] 180.0+ 180.0+ 180.0+ 180.0+  28.0   16.0+ 180.0+  16.0+ 180.0+ 180.0+
#> [391] 180.0+   7.0+   3.0+  13.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+   0.5 
#> [401] 180.0+   8.0    3.0   87.0   12.0    4.0+  58.0  180.0+ 180.0+ 180.0+
#> [411] 180.0+   3.0  180.0+ 175.0    2.0  180.0+  14.0+ 180.0+  10.0+ 180.0+
#> [421] 180.0+   8.0+   1.0  180.0+ 180.0+ 159.0   15.0    1.0  180.0+ 180.0+
#> [431] 104.0+   1.0   57.0  180.0+  11.0    5.0  180.0+ 180.0+ 180.0+ 180.0+
#> [441] 180.0+ 180.0+ 177.0+   5.0   11.0+   4.0+ 180.0+  15.0+ 180.0+ 180.0+
#> [451]   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+  17.0+ 180.0+
#> [461]   7.0  180.0+ 180.0+   1.0   52.0  180.0+  12.0  180.0+   8.0  180.0+
#> [471]  33.0    5.0  180.0+ 180.0+   1.0   79.0    3.0  180.0+ 176.0+  18.0 
#> [481] 180.0+  47.0  180.0+  11.0    7.0  180.0+ 180.0+  10.0  172.0  119.0 
#> [491]  12.0    8.0    1.0   80.0  180.0+   2.0  180.0+ 152.0+  32.0    6.0 
#> [501] 180.0+ 180.0+   4.0    4.0   10.0+ 180.0+   2.0+ 180.0+   1.0  171.0 
#> [511]   1.0   43.0  180.0+   6.0  138.0  180.0+   8.0   59.0   17.0  161.0 
#> [521]  10.0+ 180.0+ 118.0  173.0  180.0+ 175.0+  22.0   15.0+   5.0+ 180.0+
#> [531] 171.0+ 166.0+  71.0    3.0+ 180.0+  85.0   10.0    6.0+   6.0  180.0+
#> [541]   5.0    1.0  180.0+ 108.0  180.0+ 125.0  180.0+ 180.0+ 180.0+ 180.0+
#> [551] 177.0+ 169.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+
#> [561] 180.0+ 180.0+   0.5  180.0+   2.0  167.0    4.0    1.0   38.0   90.0 
#> [571] 180.0+ 180.0+  89.0    4.0   71.0   19.0   30.0  180.0+ 114.0  180.0+
#> [581]   2.0  180.0+ 180.0+   4.0+ 180.0+   1.0   12.0    5.0+   4.0+ 180.0+
#> [591]  77.0  180.0+   3.0   83.0   88.0  126.0    8.0  165.0  180.0+ 180.0+
#> [601]   3.0+ 180.0+   4.0+   5.0  180.0+  70.0   43.0  180.0+  14.0    3.0 
#> [611]  13.0  180.0+  92.0  180.0+   4.0  177.0    3.0+   6.0+  62.0   20.0 
#> [621]   4.0   22.0   11.0  115.0  180.0+   8.0+ 180.0+   4.0  180.0+ 180.0+
#> [631] 110.0   29.0  180.0+ 180.0+  14.0    1.0+   8.0  145.0   24.0   50.0 
#> [641] 180.0+ 180.0+   4.0    1.0  178.0+  89.0   75.0  158.0   74.0  180.0+
#> [651] 168.0    7.0    0.5  180.0+   4.0   50.0  179.0+   8.0+  76.0  180.0+
#> [661]  16.0   67.0   12.0    8.0   26.0   53.0    0.5   69.0    2.0    3.0 
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
#>   0.8480442 
```
