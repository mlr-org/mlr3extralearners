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
#> min 0.00333    45   2.775 0.1693       6
#> 1se 0.07868    11   2.934 0.1594       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35   5      1          2        0   172
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38  12      1          8        1   120
#>   [9,]  33   6      1          1        1   115
#>  [10,]  38  16      1         10        0   160
#>  [11,]  38  12      1         11        1    92
#>  [12,]  42   3      1          1        1   130
#>  [13,]  37   1      1          0        1   146
#>  [14,]  40   2      1          1        1   148
#>  [15,]  38   5      1          3        0   125
#>  [16,]  42   2      0          2        0   140
#>  [17,]  40   6      0        180        1   138
#>  [18,]  40  11      1         10        1   120
#>  [19,]  42   2      0        180        0   100
#>  [20,]  40   1      1          0        1   145
#>  [21,]  42  15      1         13        1   125
#>  [22,]  40   3      1          1        0   170
#>  [23,]  42  12      1         10        1   170
#>  [24,]  43   2      1          1        1   116
#>  [25,]  42   2      0        180        1   124
#>  [26,]  44   5      1          1        0   170
#>  [27,]  41  10      1          8        0   150
#>  [28,]  44   3      0        180        0   141
#>  [29,]  45   9      1          7        0   110
#>  [30,]  45   6      0        180        1   170
#>  [31,]  41   5      1          4        1   141
#>  [32,]  44   2      1          1        1   150
#>  [33,]  43   2      0        180        1   140
#>  [34,]  45   2      0        180        1   140
#>  [35,]  46   2      1          1        0   126
#>  [36,]  48  15      0        180        1   160
#>  [37,]  45   3      0        150        0   130
#>  [38,]  44   3      1          0        1   180
#>  [39,]  43  29      0        180        1   180
#>  [40,]  45   4      1          0        0   124
#>  [41,]  43  10      0        180        0   185
#>  [42,]  46  13      1         10        0   100
#>  [43,]  44   0      1          0        1    96
#>  [44,]  47   4      1          3        1   160
#>  [45,]  45   5      0          5        0   141
#>  [46,]  46   6      1          0        1   100
#>  [47,]  44   4      1          0        1   114
#>  [48,]  47   2      0        180        0   108
#>  [49,]  44   9      1          8        1   135
#>  [50,]  45   5      0        180        1   190
#>  [51,]  46   5      1          3        0   130
#>  [52,]  46   4      0        180        1   121
#>  [53,]  44   2      0        180        0   142
#>  [54,]  46  15      0        180        1   120
#>  [55,]  45   9      1          0        1   145
#>  [56,]  47   3      1          1        1   120
#>  [57,]  48  12      1         11        0   200
#>  [58,]  47   5      1          3        1   130
#>  [59,]  47  10      0         10        1   140
#>  [60,]  50   1      1          0        1   129
#>  [61,]  48   2      1          0        0   184
#>  [62,]  47   7      0        180        0   145
#>  [63,]  50   6      1          2        1   140
#>  [64,]  49   7      1          7        1   110
#>  [65,]  46   3      1          1        1   140
#>  [66,]  50   7      0        180        1   110
#>  [67,]  49  23      0        179        1   112
#>  [68,]  46   6      1          0        1   156
#>  [69,]  52   2      0        180        1   170
#>  [70,]  50   4      0          4        1   100
#>  [71,]  50   1      1          0        0   150
#>  [72,]  50   9      0        180        0   130
#>  [73,]  49   7      1          4        1    90
#>  [74,]  47   8      0        180        0   160
#>  [75,]  47   6      0        180        1   162
#>  [76,]  52   2      0        180        0   155
#>  [77,]  46   3      0        180        1   120
#>  [78,]  46   1      1          1        0   145
#>  [79,]  50   4      1          1        0   150
#>  [80,]  48   7      1          0        1   110
#>  [81,]  53   8      0         36        1   160
#>  [82,]  48  17      1         10        0   111
#>  [83,]  52   4      1          4        0   152
#>  [84,]  49   9      1          3        0   102
#>  [85,]  49  15      0        180        1   160
#>  [86,]  54  17      1         12        1   102
#>  [87,]  53   7      1          0        0   199
#>  [88,]  50   2      0          5        1   106
#>  [89,]  50  10      1          6        0   122
#>  [90,]  50  14      1         13        0   170
#>  [91,]  49   5      1          2        1   150
#>  [92,]  53   4      0          4        0   140
#>  [93,]  52  14      1          7        1   200
#>  [94,]  48   6      0        180        0   160
#>  [95,]  48  11      1         10        0   120
#>  [96,]  53   4      1          0        1   156
#>  [97,]  51  13      0         99        1   160
#>  [98,]  54   9      1          0        1   138
#>  [99,]  49  16      0         16        0   125
#> [100,]  55   3      1          1        0   150
#> [101,]  54  23      1         10        0   131
#> [102,]  52   7      1          2        0   154
#> [103,]  55   6      1          2        1   114
#> [104,]  54   9      1          1        0   130
#> [105,]  50   5      1          4        1   150
#> [106,]  50   3      0        174        1   153
#> [107,]  49   6      1          0        1   130
#> [108,]  49   1      0          1        1   110
#> [109,]  50   7      1          1        0   156
#> [110,]  53   9      0          9        1    95
#> [111,]  53   8      1          0        1   130
#> [112,]  50   7      1          0        1   127
#> [113,]  56   4      1          1        1   130
#> [114,]  55   2      0          2        0   145
#> [115,]  54   1      0        180        0   162
#> [116,]  54   7      1          0        1   100
#> [117,]  56   3      0        180        1   193
#> [118,]  55   5      1          4        1   120
#> [119,]  54   3      0        180        1   180
#> [120,]  52  16      0         16        0   152
#> [121,]  53  10      1          9        0   172
#> [122,]  52  16      1         14        0   170
#> [123,]  53   4      0        180        1   150
#> [124,]  55   6      0        180        1   100
#> [125,]  55   6      1          5        1   138
#> [126,]  55   2      0        134        1   140
#> [127,]  54   3      0        180        0   128
#> [128,]  55   1      0          2        0   130
#> [129,]  57   3      0          3        0   120
#> [130,]  54   2      1          1        0   135
#> [131,]  54   2      1          1        1   176
#> [132,]  57   1      0        180        1   156
#> [133,]  57   1      0          1        1   100
#> [134,]  56   4      1          0        1   140
#> [135,]  52   2      0        180        0   140
#> [136,]  55  11      1          7        0   104
#> [137,]  53   3      1          0        1   200
#> [138,]  58   8      0          8        1   130
#> [139,]  55   3      1          1        1   156
#> [140,]  57   0      0          0        1   150
#> [141,]  59   3      1          1        0   172
#> [142,]  57   4      0        180        1   119
#> [143,]  53  15      1         10        1   130
#> [144,]  54  17      1          8        1   227
#> [145,]  55   9      1          2        1   147
#> [146,]  55  13      0        166        1   140
#> [147,]  56   5      0          5        1   150
#> [148,]  53   7      1          0        1   120
#> [149,]  57  11      1         10        1   129
#> [150,]  56   4      0          4        0   164
#> [151,]  58   9      1          0        1   180
#> [152,]  58   1      1          1        1   200
#> [153,]  56   7      1          5        1   120
#> [154,]  55   2      0          2        0   106
#> [155,]  59   9      1          1        1   125
#> [156,]  57   1      0        180        0   148
#> [157,]  59   3      0        180        0   120
#> [158,]  58   4      1          0        1   160
#> [159,]  57   2      0          2        1   120
#> [160,]  60   5      1          1        0   138
#> [161,]  57   5      0        180        1   130
#> [162,]  58  11      1          9        1   124
#> [163,]  55   5      1          0        1   160
#> [164,]  57  10      1          9        0   103
#> [165,]  59   6      1          0        1   140
#> [166,]  59   5      0        180        1   155
#> [167,]  59   4      1          0        1   152
#> [168,]  58  26      1          0        1   189
#> [169,]  61   9      0          9        1   160
#> [170,]  58   4      1          3        0   120
#> [171,]  60   0      1          0        1    80
#> [172,]  58   8      0        161        1   140
#> [173,]  58  14      1          6        0   190
#> [174,]  61   4      1          3        0   151
#> [175,]  61   9      1          8        0   150
#> [176,]  61   3      1          2        1   102
#> [177,]  58   1      0          1        1   100
#> [178,]  61  20      1         13        0   130
#> [179,]  57  13      1         10        0   110
#> [180,]  57   2      1          0        1   116
#> [181,]  58  10      0         10        1   150
#> [182,]  57   4      1          3        0   138
#> [183,]  61   3      0         17        0   143
#> [184,]  56  14      0         45        0   130
#> [185,]  56  13      1          6        1   158
#> [186,]  56  18      1         11        1   165
#> [187,]  59   9      1          0        1    80
#> [188,]  55   4      1          3        1   160
#> [189,]  58  11      0        172        1   135
#> [190,]  61   4      1          0        1   115
#> [191,]  56   8      1          8        0   120
#> [192,]  59  11      1          8        1   190
#> [193,]  59   5      1          2        0   182
#> [194,]  58   5      1          1        1   135
#> [195,]  59  10      0        180        0   160
#> [196,]  61   8      0         77        0   120
#> [197,]  61  13      0         13        0   210
#> [198,]  58   8      1          5        0   152
#> [199,]  62   7      1          2        1   180
#> [200,]  57   3      1          0        0   100
#> [201,]  61  18      0        170        0   140
#> [202,]  57   7      0        169        0   180
#> [203,]  61   7      0          7        1   150
#> [204,]  60   7      0          7        0   147
#> [205,]  57  12      1          9        1   120
#> [206,]  62   4      1          0        0   160
#> [207,]  62   4      1          3        0   173
#> [208,]  58   2      0         30        0   202
#> [209,]  63   6      0         28        1   120
#> [210,]  61  13      0         13        0   120
#> [211,]  57   2      1          1        0   159
#> [212,]  62   1      1          0        1   172
#> [213,]  63   3      1          1        0   180
#> [214,]  63   1      0        180        1   130
#> [215,]  61   7      0        180        0   135
#> [216,]  62   3      0        180        1   105
#> [217,]  63   4      0        180        1   190
#> [218,]  64   4      0        180        0   130
#> [219,]  63   4      1          1        0   155
#> [220,]  60  18      1         13        0   132
#> [221,]  58   9      1          9        0   110
#> [222,]  62   7      0          7        0   150
#> [223,]  59   1      0         22        1   162
#> [224,]  60   7      0          7        0   140
#> [225,]  59   5      1          1        0   148
#> [226,]  60   7      1          1        1    90
#> [227,]  63   1      0          1        0   162
#> [228,]  61  15      1         13        0   170
#> [229,]  59   4      0          4        0   149
#> [230,]  62   6      0          6        0   120
#> [231,]  63  12      1         10        0   200
#> [232,]  59  10      0        180        1   130
#> [233,]  61   6      1          1        1   117
#> [234,]  66   1      1          0        1   120
#> [235,]  64   6      1          0        1   140
#> [236,]  63  14      1          9        0   123
#> [237,]  65  36      1         11        0   140
#> [238,]  63   4      1          3        0   162
#> [239,]  66   3      1          1        0   127
#> [240,]  61  10      1          2        1   194
#> [241,]  64  32      1          9        1   160
#> [242,]  63  12      1          9        0   114
#> [243,]  63   7      0        180        0   120
#> [244,]  65  10      1          8        1   120
#> [245,]  64  21      1         10        0   190
#> [246,]  61  12      1         11        0   154
#> [247,]  64   9      0        180        0   150
#> [248,]  61   4      0        180        1   113
#> [249,]  63  12      0         12        1   150
#> [250,]  62   3      1          1        1   199
#> [251,]  65   3      1          0        1    80
#> [252,]  63   5      1          4        0   170
#> [253,]  64   2      0          2        0   201
#> [254,]  66  18      1          5        0   142
#> [255,]  66  16      1         11        1   169
#> [256,]  61  14      1          5        0   140
#> [257,]  61  15      1         10        0   130
#> [258,]  63   3      1          2        0   120
#> [259,]  63   2      1          0        0   140
#> [260,]  67   6      0        180        1   170
#> [261,]  68   5      1          4        1   150
#> [262,]  64  13      1         12        1   150
#> [263,]  66   7      1          0        1   115
#> [264,]  65   3      0          3        0   105
#> [265,]  64   0      0          0        1   148
#> [266,]  66   3      1          0        1   135
#> [267,]  66   6      1          0        1   140
#> [268,]  68   1      0        180        1   166
#> [269,]  64  10      1          9        1   110
#> [270,]  63   7      1          0        0   162
#> [271,]  67   8      1          1        1   130
#> [272,]  68   5      0          5        1    90
#> [273,]  63  10      0         16        1   160
#> [274,]  66  14      0        180        0   130
#> [275,]  68  18      0        180        1   260
#> [276,]  65  17      1         14        1   100
#> [277,]  63   8      1          1        1   162
#> [278,]  65  18      1          3        0   120
#> [279,]  63   1      1          0        1   155
#> [280,]  63  10      0         18        1   130
#> [281,]  67  11      0         11        0   150
#> [282,]  68  11      0        180        0   160
#> [283,]  68  14      0         79        0   172
#> [284,]  66  12      1         10        1   150
#> [285,]  65   4      1          2        1   145
#> [286,]  69  12      0         15        1   140
#> [287,]  66  15      1         13        1   160
#> [288,]  65  11      1          6        0   130
#> [289,]  69  21      1         10        0   180
#> [290,]  69   6      0        180        1   100
#> [291,]  66   9      1          8        0   130
#> [292,]  63   8      0        180        1   120
#> [293,]  65   8      1          0        1    90
#> [294,]  69   1      1          0        0   170
#> [295,]  68  10      1         10        1   150
#> [296,]  65   1      1          0        0   133
#> [297,]  67   7      1          4        1   130
#> [298,]  63   2      1          0        0    99
#> [299,]  67   2      0        180        0   184
#> [300,]  65   6      0          6        0    80
#> [301,]  66  19      1         12        1   150
#> [302,]  67  12      1         12        0   160
#> [303,]  64   4      0        179        0   160
#> [304,]  64   0      1          0        1   118
#> [305,]  67   2      0         18        0   131
#> [306,]  66   7      1          5        1   131
#> [307,]  68   4      1          0        1   160
#> [308,]  69   4      1          3        1   150
#> [309,]  65  13      1         12        1   130
#> [310,]  64  21      0         21        1   155
#> [311,]  66   6      0        180        0   140
#> [312,]  68  18      1          0        1   160
#> [313,]  65   6      0        101        1   115
#> [314,]  68   4      0          4        1   190
#> [315,]  71   3      0          5        0   112
#> [316,]  70   7      1          0        1   190
#> [317,]  71  20      1          0        1   160
#> [318,]  67   2      0        180        0   128
#> [319,]  66   9      1          3        1   151
#> [320,]  66   1      1          1        1   165
#> [321,]  70  14      0        171        0   166
#> [322,]  66   4      0        180        0   130
#> [323,]  67  10      1          9        0   200
#> [324,]  67   6      1          4        0   130
#> [325,]  68  18      1         14        1   170
#> [326,]  69   0      0          0        1   148
#> [327,]  65   2      0        180        0   130
#> [328,]  68   7      1          0        1   150
#> [329,]  69   3      1          2        0   151
#> [330,]  65  14      1         13        1   150
#> [331,]  69   8      0        180        1   180
#> [332,]  71   7      0          7        0   230
#> [333,]  66   2      0          2        1   228
#> [334,]  71   6      0         45        1   158
#> [335,]  71   3      0        103        0   133
#> [336,]  69   3      0          3        1   130
#> [337,]  70  22      1         13        0   103
#> [338,]  67   1      0         36        1   104
#> [339,]  69   8      1          5        1   195
#> [340,]  69   6      1          4        1   174
#> [341,]  72   3      1          0        1   132
#> [342,]  69   8      1          7        1   108
#> [343,]  67   3      0        180        0   110
#> [344,]  66   2      1          1        0   123
#> [345,]  69  19      0        180        0   130
#> [346,]  68  18      0         18        1   100
#> [347,]  69  11      1          0        1   120
#> [348,]  67  13      1          9        0   130
#> [349,]  70   3      0        123        0   130
#> [350,]  72   5      1          4        0   170
#> [351,]  67  12      1          8        0   120
#> [352,]  69   1      0          1        1   110
#> [353,]  67   4      0         60        1   136
#> [354,]  69   5      0         76        0   120
#> [355,]  67   8      1          0        1   130
#> [356,]  72  13      1         11        1   195
#> [357,]  68  10      1          8        1   160
#> [358,]  66  24      1         13        0   130
#> [359,]  70  35      1          0        1   105
#> [360,]  70   7      0          7        0   102
#> [361,]  68   7      1          2        0   135
#> [362,]  73  20      1          0        1   170
#> [363,]  69  10      1          6        1   120
#> [364,]  70  11      0        180        1   210
#> [365,]  72  19      1          8        0   120
#> [366,]  67   8      0        180        1   170
#> [367,]  67   9      0        180        0   158
#> [368,]  73  13      0        152        1   130
#> [369,]  72   2      0          2        1   100
#> [370,]  67   4      1          1        0   134
#> [371,]  72   6      1          5        0   115
#> [372,]  68  23      0        180        1   220
#> [373,]  70   3      0        180        0   121
#> [374,]  68   4      1          3        0   210
#> [375,]  73   6      0        180        1   117
#> [376,]  69  16      1         10        1   140
#> [377,]  69   8      1          1        0   164
#> [378,]  68   7      0        180        1   130
#> [379,]  72  16      1          1        1   130
#> [380,]  70   4      0        180        0   180
#> [381,]  69   1      1          0        0   155
#> [382,]  73   6      1          0        1   270
#> [383,]  72   8      1          1        1   150
#> [384,]  73   7      0          7        1   140
#> [385,]  70   3      0          3        1   159
#> [386,]  70  13      1          9        0   100
#> [387,]  72   6      0        180        1   130
#> [388,]  73   0      0        180        1   161
#> [389,]  74   8      1          0        1    85
#> [390,]  73   4      0        180        1   154
#> [391,]  69   2      1          0        1   110
#> [392,]  71   3      1          1        0   150
#> [393,]  71  15      1         11        0   165
#> [394,]  74  20      0         20        1   180
#> [395,]  68   9      0        180        1   120
#> [396,]  71  20      1         10        0   140
#> [397,]  70   5      1          0        1   190
#> [398,]  71  17      1         11        0   160
#> [399,]  71   8      1          7        0   149
#> [400,]  71   3      1          2        1   190
#> [401,]  73  10      1          8        0   106
#> [402,]  74   4      0          4        0   120
#> [403,]  72   5      1          3        1   160
#> [404,]  70   3      0        180        1   154
#> [405,]  73   6      0        180        0   110
#> [406,]  72   8      1          0        1   140
#> [407,]  74   3      0          3        1   150
#> [408,]  69   2      1          1        1    80
#> [409,]  74   7      1          0        1   117
#> [410,]  72  10      1          8        1   153
#> [411,]  69   7      0        180        1   144
#> [412,]  72  15      1         13        0   156
#> [413,]  70   8      0          8        0   120
#> [414,]  71  10      1          9        1   120
#> [415,]  72  10      1          9        1   160
#> [416,]  73  10      1         10        1   120
#> [417,]  71   2      0         10        1   112
#> [418,]  73   1      0          1        1    80
#> [419,]  75   9      1          7        0   140
#> [420,]  71  11      1          8        0   110
#> [421,]  71   4      0          4        0   134
#> [422,]  72  15      1         12        1   120
#> [423,]  70   7      1          4        0   184
#> [424,]  72   1      1          1        0   168
#> [425,]  72   7      0         57        1   145
#> [426,]  73  10      0        180        0   162
#> [427,]  72  11      0         11        1   140
#> [428,]  73   5      1          3        1   112
#> [429,]  76  25      1         12        1   170
#> [430,]  72   2      0        180        0   120
#> [431,]  75   1      0        180        1   140
#> [432,]  73   4      0        180        0   124
#> [433,]  74  34      1          8        1   233
#> [434,]  76   3      1          0        1   120
#> [435,]  71  32      1         12        1   107
#> [436,]  77  11      0         11        1   150
#> [437,]  72   7      1          2        0   142
#> [438,]  73  15      0         15        1   160
#> [439,]  71  16      0        180        0   140
#> [440,]  73  10      1         10        0   124
#> [441,]  74   7      0        180        1   150
#> [442,]  74   3      0          3        1   128
#> [443,]  74   2      1          1        0   140
#> [444,]  73   6      0          6        1   114
#> [445,]  75  23      1         14        1   110
#> [446,]  74   2      0        180        0   190
#> [447,]  76  17      1          0        1   200
#> [448,]  73   4      1          3        1   125
#> [449,]  75   4      1          0        1   122
#> [450,]  75   7      0          7        0   190
#> [451,]  75   0      0          0        1   130
#> [452,]  73  13      1         11        0   195
#> [453,]  74   8      1          0        1   105
#> [454,]  76  13      1          8        1   148
#> [455,]  75   4      1          2        1   188
#> [456,]  74   6      0        180        0   160
#> [457,]  76   4      0          4        1   155
#> [458,]  75   1      0          1        1   125
#> [459,]  74   2      0        180        0   111
#> [460,]  73   1      0         52        1   105
#> [461,]  72   5      0        180        0   120
#> [462,]  78  12      1         11        1   160
#> [463,]  76  44      1         10        0   105
#> [464,]  74  10      1          0        1   135
#> [465,]  76   5      1          0        1   167
#> [466,]  73  33      1         12        1   175
#> [467,]  77  12      0        180        0   130
#> [468,]  76  12      1         11        1   120
#> [469,]  73   7      1          0        0   174
#> [470,]  75   3      1          1        1   171
#> [471,]  74   9      1          8        0   200
#> [472,]  75   6      0        180        0   150
#> [473,]  79  10      1          8        0   190
#> [474,]  74   2      1          0        1   130
#> [475,]  78  18      0         18        1   144
#> [476,]  77   3      0        180        0   110
#> [477,]  76  29      0         47        0    90
#> [478,]  73   8      1          1        1   162
#> [479,]  73  11      1          2        1   110
#> [480,]  74   2      0        180        0   100
#> [481,]  78   7      0          7        1   133
#> [482,]  74  15      0        180        1   172
#> [483,]  78   8      1          6        1   110
#> [484,]  74   7      0          7        0   161
#> [485,]  76  13      1          1        1   170
#> [486,]  78  32      1          9        1   198
#> [487,]  80  10      1          6        1   147
#> [488,]  78   0      0        180        1   212
#> [489,]  78  13      1          5        0   130
#> [490,]  75   5      0        119        1   150
#> [491,]  75  12      1          1        1   120
#> [492,]  78  15      0        180        1   270
#> [493,]  75  13      1          6        0   150
#> [494,]  74  10      1          8        0   135
#> [495,]  76   1      0          1        1    83
#> [496,]  79   4      0         80        0   145
#> [497,]  78  10      0        180        1   130
#> [498,]  76  11      1          0        0   120
#> [499,]  75  11      1          4        0   162
#> [500,]  75   3      0          3        0     0
#> [501,]  76   7      0         29        1   150
#> [502,]  79   8      0         32        1   120
#> [503,]  80   6      0          6        1   150
#> [504,]  78   6      1          0        1   240
#> [505,]  76   3      1          0        1   140
#> [506,]  78  11      1          1        1   140
#> [507,]  79  11      0        180        0   160
#> [508,]  79   2      1          0        1   121
#> [509,]  78  11      1          8        1   118
#> [510,]  79   4      0          4        1   125
#> [511,]  76  10      1          8        0   180
#> [512,]  75   2      1          1        1   204
#> [513,]  77  31      1          3        1   161
#> [514,]  76   1      0          1        1    90
#> [515,]  78   7      1          0        1   110
#> [516,]  79   3      0          3        0   120
#> [517,]  77   7      0        180        1   170
#> [518,]  77   6      0          6        1   144
#> [519,]  80  15      1         12        1   150
#> [520,]  77   9      1          4        0   141
#> [521,]  82   5      0          8        1   120
#> [522,]  78   4      0         59        1   112
#> [523,]  79  10      0         10        1   120
#> [524,]  81   4      1          2        1   126
#> [525,]  79  28      0        164        0   100
#> [526,]  78  32      0        180        1   130
#> [527,]  79   1      0         37        1   140
#> [528,]  81   3      0        180        0   184
#> [529,]  81   2      0        175        0   172
#> [530,]  78   7      0          7        1   147
#> [531,]  77  13      1          0        1   190
#> [532,]  80   5      1          1        1   108
#> [533,]  78   4      0        180        0   175
#> [534,]  78  26      1          5        0   194
#> [535,]  76   1      0        166        0   131
#> [536,]  78  20      1          0        1   109
#> [537,]  80   1      0          1        0   100
#> [538,]  78   3      1          1        1   152
#> [539,]  77  10      1          8        1   130
#> [540,]  77   5      0         85        0   188
#> [541,]  80   2      1          1        0   168
#> [542,]  79   6      0          6        0   152
#> [543,]  80   6      1          0        1   119
#> [544,]  78   2      0        180        0   148
#> [545,]  80   5      0          5        1   130
#> [546,]  82   1      1          0        1    82
#> [547,]  79  10      0        180        1   150
#> [548,]  77   4      0        180        1    98
#> [549,]  78  12      0        180        0   134
#> [550,]  79   1      0        125        0   193
#> [551,]  84  22      1         10        0   180
#> [552,]  79   4      0          4        1   121
#> [553,]  80   6      0          6        1   110
#> [554,]  82   5      0        180        0   110
#> [555,]  79   7      1          6        0   130
#> [556,]  81  11      1          8        0   160
#> [557,]  80  11      1          8        0   170
#> [558,]  78  23      1         10        1   145
#> [559,]  79   4      0          4        1   183
#> [560,]  82   8      1          1        0   128
#> [561,]  79   1      0        180        1   170
#> [562,]  84   5      1          1        1    85
#> [563,]  83   8      0          8        0   115
#> [564,]  81   8      0        180        0   146
#> [565,]  81   2      1          1        0   198
#> [566,]  83   2      0          2        1   155
#> [567,]  84   4      0        167        0   198
#> [568,]  80   3      1          1        1   230
#> [569,]  84   5      0        180        1   203
#> [570,]  84   4      0          4        1    85
#> [571,]  81   1      0          1        1   150
#> [572,]  84   1      0         38        1   205
#> [573,]  83   3      0        180        0   174
#> [574,]  81   4      0         90        1   138
#> [575,]  79   9      1          8        0   150
#> [576,]  84   4      0         89        1   129
#> [577,]  80   2      1          0        1   130
#> [578,]  80   6      0         71        1   189
#> [579,]  83   1      0          1        1   100
#> [580,]  80  30      1         13        0   220
#> [581,]  83   9      0        180        0   198
#> [582,]  79  14      1          0        0   110
#> [583,]  81  14      1         12        1   128
#> [584,]  85   9      1          6        1   160
#> [585,]  81   4      0          4        0   175
#> [586,]  84  15      1         13        1   110
#> [587,]  81  12      0         12        1   163
#> [588,]  82  16      1          8        0   103
#> [589,]  86  12      0        180        1   120
#> [590,]  83  12      1          2        1   170
#> [591,]  82  15      1          0        0   183
#> [592,]  86   8      0          8        1   132
#> [593,]  84   6      0        165        0   145
#> [594,]  86   3      0          3        1   140
#> [595,]  85   3      0          3        1   118
#> [596,]  81   2      1          0        1   118
#> [597,]  81   4      0        180        0   160
#> [598,]  83   9      0        180        1   149
#> [599,]  82   1      0        180        1   193
#> [600,]  87   2      0          5        1   137
#> [601,]  82  14      1         11        1   103
#> [602,]  86   6      1          0        1   140
#> [603,]  84  16      0         70        1   150
#> [604,]  83  19      0         43        0   150
#> [605,]  84   3      1          2        0   125
#> [606,]  83  10      1          0        1   190
#> [607,]  88  14      1          3        1   130
#> [608,]  84   3      0          3        1   121
#> [609,]  83  13      1         12        0   170
#> [610,]  84   7      1          2        0   148
#> [611,]  84   9      0         92        1   110
#> [612,]  86   4      0         38        1   122
#> [613,]  86  13      0        177        0   163
#> [614,]  86   6      1          1        0   112
#> [615,]  88   4      0          4        0   100
#> [616,]  88   4      0          4        1   115
#> [617,]  85  22      0         22        1   184
#> [618,]  83   9      0         65        1   150
#> [619,]  86   9      1          7        1   142
#> [620,]  87   2      0        180        1   130
#> [621,]  86   6      0         46        0   173
#> [622,]  88   3      0        115        0   110
#> [623,]  86  15      1          8        1   109
#> [624,]  88   4      0          4        0    86
#> [625,]  89   4      0          4        1   153
#> [626,]  89   5      0        119        1   140
#> [627,]  87   6      0        180        1   110
#> [628,]  84   8      0        180        1   119
#> [629,]  85   8      0          8        1   136
#> [630,]  84   2      0        110        1   174
#> [631,]  87  29      0         29        1    97
#> [632,]  87  15      1          9        1   138
#> [633,]  84   0      0        180        1   136
#> [634,]  89  10      0         46        1   170
#> [635,]  90  14      0         14        1   100
#> [636,]  88   1      0          1        0   135
#> [637,]  87   2      0        180        0   160
#> [638,]  87   6      1          0        0   125
#> [639,]  91  10      0        145        0   135
#> [640,]  86   3      1          0        1    80
#> [641,]  88   7      0         24        0   119
#> [642,]  87   6      0        126        1   168
#> [643,]  86   9      1          7        0   130
#> [644,]  90   4      1          0        0   121
#> [645,]  91   1      0          1        1    74
#> [646,]  87  43      0        178        1   130
#> [647,]  87   5      0         36        1   150
#> [648,]  89   3      1          1        1   160
#> [649,]  92   1      0          1        1   167
#> [650,]  88   5      0        158        0   100
#> [651,]  87   7      0         74        1   105
#> [652,]  89  12      1          0        1   130
#> [653,]  89   2      0        168        0   118
#> [654,]  89  52      0         52        1   130
#> [655,]  92   7      0          7        1   110
#> [656,]  89   4      0          4        1   159
#> [657,]  91   0      0          0        0     0
#> [658,]  89  14      0        180        1    84
#> [659,]  90  19      1         11        1   129
#> [660,]  94   6      0         50        0    78
#> [661,]  90   1      0          1        1   118
#> [662,]  93   8      0        179        1   110
#> [663,]  90  16      0         16        1   106
#> [664,]  90   3      0         67        0   162
#> [665,]  96   3      0         12        1    97
#> [666,]  95   8      1          5        1   150
#> [667,]  91  12      0         53        1   212
#> [668,]  91   7      0          7        0   135
#> [669,]  92   2      0          2        0   112
#> [670,]  93   4      0        180        1   135
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+   5.0+ 180.0+   2.0+ 180.0+  12.0  180.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51]   5.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+
#>  [61] 180.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+ 179.0+ 180.0+ 180.0+   4.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0 
#>  [81]  36.0   88.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+
#>  [91] 180.0+   4.0+  85.0  180.0+ 180.0+ 166.0+  99.0  180.0+  16.0+ 180.0+
#> [101] 152.0+   7.0+   6.0+ 180.0+ 171.0+ 174.0+   6.0+   1.0  180.0+   9.0+
#> [111] 180.0+ 180.0+ 180.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+  16.0+
#> [121] 180.0+  16.0  180.0+ 180.0+ 180.0+ 134.0+ 180.0+   2.0    3.0+ 180.0+
#> [131] 180.0+ 180.0+   1.0  165.0  180.0+ 180.0+ 180.0+   8.0+ 180.0+   0.5 
#> [141] 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+ 180.0+ 180.0+   4.0+
#> [151]   9.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+   9.0+ 180.0+
#> [171]   0.5  161.0+ 171.0+ 180.0+ 180.0+   3.0    1.0  180.0+ 180.0+ 180.0+
#> [181]  10.0+ 180.0+  17.0   45.0  180.0+ 180.0+   9.0+ 180.0+ 172.0+ 180.0+
#> [191]   8.0  180.0+ 180.0+ 180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 180.0+
#> [201] 170.0  169.0    7.0    7.0+ 180.0+ 180.0+ 180.0+  30.0   28.0   13.0+
#> [211] 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [221]   9.0    7.0+  22.0    7.0+ 180.0+ 180.0+   1.0  180.0+   4.0+   6.0+
#> [231] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  14.0+  36.0  180.0+   3.0+  88.0 
#> [241] 180.0+  12.0  180.0+ 180.0+ 180.0+  12.0+ 180.0+ 180.0+  12.0  180.0+
#> [251]   3.0  180.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 180.0+
#> [261]   5.0+  13.0  179.0+   3.0    0.5+   3.0+ 180.0+ 180.0+ 180.0+   7.0+
#> [271]   8.0    5.0   16.0  180.0+ 180.0+ 180.0+ 180.0+ 123.0+   1.0+  18.0 
#> [281]  11.0+ 180.0+  79.0   80.0    4.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+
#> [291] 180.0+ 180.0+   8.0+ 175.0   10.0  180.0+ 180.0+ 180.0+ 180.0+   6.0 
#> [301]  19.0+  12.0  179.0+   0.5   18.0    7.0+ 180.0+ 152.0+ 180.0+  21.0+
#> [311] 180.0+  18.0+ 101.0    4.0    5.0    7.0+ 180.0+ 180.0+ 180.0+   1.0 
#> [321] 171.0  180.0+ 174.0+   6.0  180.0+   0.5  180.0+ 180.0+ 180.0+  14.0+
#> [331] 180.0+   7.0+   2.0   45.0  103.0    3.0+ 180.0+  36.0  180.0+  97.0 
#> [341] 180.0+   8.0+ 180.0+   2.0+ 180.0+  18.0  180.0+  13.0+ 123.0  180.0+
#> [351] 180.0+   1.0   60.0   76.0  180.0+ 132.0   10.0+ 180.0+ 180.0+   7.0+
#> [361]   7.0+ 124.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 152.0    2.0   76.0 
#> [371] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [381] 180.0+   6.0  180.0+   7.0+   3.0+  13.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [391]   2.0    3.0+ 180.0+  20.0  180.0+  20.0  180.0+ 180.0+   8.0    3.0 
#> [401]  87.0    4.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0    2.0  180.0+  10.0+
#> [411] 180.0+ 180.0+   8.0+ 179.0+ 159.0   15.0   10.0    1.0  180.0+ 180.0+
#> [421]   4.0+ 180.0+ 104.0+   1.0   57.0  180.0+  11.0    5.0  180.0+ 180.0+
#> [431] 180.0+ 180.0+  34.0  180.0+ 177.0+  11.0+   7.0   15.0+ 180.0+  10.0 
#> [441] 180.0+   3.0  180.0+   6.0  180.0+ 180.0+  17.0+ 180.0+   4.0    7.0 
#> [451]   0.5  180.0+ 180.0+ 180.0+  46.0  180.0+   4.0    1.0  180.0+  52.0 
#> [461] 180.0+  12.0  180.0+ 180.0+ 180.0+  33.0  180.0+  12.0    7.0+   3.0 
#> [471] 168.0+ 180.0+ 180.0+ 176.0+  18.0  180.0+  47.0  180.0+  11.0  180.0+
#> [481]   7.0  180.0+   8.0+   7.0  180.0+  32.0   10.0  180.0+ 172.0  119.0 
#> [491]  12.0  180.0+ 180.0+ 180.0+   1.0   80.0  180.0+  11.0  152.0+   3.0 
#> [501]  29.0   32.0    6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+  11.0    4.0 
#> [511]  10.0+   2.0+ 171.0    1.0   43.0    3.0  180.0+   6.0  180.0+  71.0 
#> [521]   8.0   59.0   10.0+  93.0  164.0  180.0+  37.0  180.0+ 175.0+   7.0+
#> [531]  22.0    5.0+ 180.0+ 171.0+ 166.0+  20.0+   1.0    3.0+  10.0   85.0 
#> [541]  10.0    6.0+   6.0  180.0+   5.0    1.0  180.0+ 180.0+ 180.0+ 125.0 
#> [551] 180.0+   4.0    6.0  180.0+ 180.0+ 180.0+ 169.0   70.0    4.0  180.0+
#> [561] 180.0+ 180.0+   8.0+ 180.0+ 180.0+   2.0  167.0    3.0+ 180.0+   4.0 
#> [571]   1.0   38.0  180.0+  90.0  180.0+  89.0  180.0+  71.0    1.0   30.0 
#> [581] 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+  12.0   16.0+ 180.0+  77.0 
#> [591]  83.0    8.0  165.0    3.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0 
#> [601] 174.0    6.0   70.0   43.0  180.0+ 180.0+  14.0    3.0   13.0  180.0+
#> [611]  92.0   38.0  177.0    6.0+   4.0+   4.0   22.0   65.0   11.0  180.0+
#> [621]  46.0  115.0  180.0+   4.0    4.0  119.0  180.0+ 180.0+   8.0  110.0 
#> [631]  29.0  180.0+ 180.0+  46.0   14.0    1.0+ 180.0+  25.0  145.0    3.0 
#> [641]  24.0  126.0  180.0+   4.0    1.0  178.0+  36.0    3.0+   1.0  158.0 
#> [651]  74.0  180.0+ 168.0   52.0    7.0    4.0    0.5  180.0+ 180.0+  50.0 
#> [661]   1.0+ 179.0+  16.0   67.0   12.0    8.0   53.0    7.0+   2.0  180.0+
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
#>   0.8338915 
```
