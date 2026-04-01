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
#> min 0.00346    44   2.810 0.1371       6
#> 1se 0.07447    11   2.947 0.1431       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  35   5      1          2        0   172
#>   [3,]  35  10      1          9        0   106
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  36   5      1          0        1   115
#>  [11,]  33   6      1          1        1   115
#>  [12,]  38  12      1         11        1    92
#>  [13,]  42   3      1          1        1   130
#>  [14,]  40   2      1          1        1   148
#>  [15,]  38   5      1          3        0   125
#>  [16,]  42   2      0          2        0   140
#>  [17,]  40   6      0        180        1   138
#>  [18,]  42  15      1         13        1   125
#>  [19,]  42  12      1         10        1   170
#>  [20,]  43   2      1          1        1   116
#>  [21,]  42   2      0        180        1   124
#>  [22,]  44   5      1          1        0   170
#>  [23,]  45   3      0        180        1   154
#>  [24,]  41  10      1          8        0   150
#>  [25,]  41  13      1          1        0   140
#>  [26,]  44   2      1          1        1   150
#>  [27,]  43   2      0        180        1   140
#>  [28,]  46   2      1          1        0   126
#>  [29,]  47   4      1          3        0   118
#>  [30,]  48  15      0        180        1   160
#>  [31,]  46   7      1          2        0   166
#>  [32,]  43  29      0        180        1   180
#>  [33,]  45   4      1          0        0   124
#>  [34,]  44   0      1          0        1    96
#>  [35,]  47   4      1          3        1   160
#>  [36,]  43   3      1          0        1   124
#>  [37,]  49   5      0         73        1   136
#>  [38,]  46   2      1          1        1   122
#>  [39,]  46   6      1          0        1   100
#>  [40,]  44   4      1          0        1   114
#>  [41,]  47   2      0        180        0   108
#>  [42,]  44   9      1          8        1   135
#>  [43,]  45   5      0        180        1   190
#>  [44,]  46   5      1          3        0   130
#>  [45,]  46   4      0        180        1   121
#>  [46,]  44   2      0        180        0   142
#>  [47,]  46  15      0        180        1   120
#>  [48,]  48   3      0        180        0   154
#>  [49,]  48  12      1         11        0   200
#>  [50,]  47   5      1          3        1   130
#>  [51,]  47   9      1          6        0   170
#>  [52,]  46   3      1          0        1   119
#>  [53,]  49   4      0        180        0   117
#>  [54,]  47  10      0         10        1   140
#>  [55,]  50   1      1          0        1   129
#>  [56,]  48   2      1          0        0   184
#>  [57,]  47   7      0        180        0   145
#>  [58,]  50   6      1          2        1   140
#>  [59,]  49   7      1          7        1   110
#>  [60,]  46   3      1          1        1   140
#>  [61,]  46   9      1          9        1   122
#>  [62,]  50   7      0        180        1   110
#>  [63,]  49   2      0          2        0   105
#>  [64,]  51   1      0          1        1   145
#>  [65,]  49  15      1         11        1   160
#>  [66,]  49  23      0        179        1   112
#>  [67,]  46   6      1          0        1   156
#>  [68,]  50   7      1          0        1    92
#>  [69,]  51   3      1          2        0   113
#>  [70,]  50   9      0        180        0   130
#>  [71,]  49   7      1          4        1    90
#>  [72,]  47   8      0        180        0   160
#>  [73,]  51   8      0        180        1   140
#>  [74,]  52   2      0        180        0   155
#>  [75,]  46   3      0        180        1   120
#>  [76,]  50   4      1          1        0   150
#>  [77,]  48   7      1          0        1   110
#>  [78,]  53   8      0         36        1   160
#>  [79,]  48  17      1         10        0   111
#>  [80,]  47   2      1          1        0   110
#>  [81,]  52   4      1          4        0   152
#>  [82,]  49  15      0        180        1   160
#>  [83,]  53   5      0        180        1   140
#>  [84,]  54  17      1         12        1   102
#>  [85,]  53   5      0         77        0   159
#>  [86,]  54   6      1          3        0   129
#>  [87,]  50   2      0          5        1   106
#>  [88,]  50  10      1          6        0   122
#>  [89,]  50  14      1         13        0   170
#>  [90,]  51  25      1          1        0   202
#>  [91,]  49   5      1          2        1   150
#>  [92,]  48   6      0        180        0   160
#>  [93,]  48  11      1         10        0   120
#>  [94,]  51  13      0         99        1   160
#>  [95,]  54   9      1          0        1   138
#>  [96,]  49  16      0         16        0   125
#>  [97,]  55   3      1          1        0   150
#>  [98,]  52   7      1          2        0   154
#>  [99,]  54   9      1          1        0   130
#> [100,]  55   4      1          2        0   150
#> [101,]  52   4      0        180        1   180
#> [102,]  51  13      1         11        0   145
#> [103,]  50   5      1          4        1   150
#> [104,]  49   1      0          1        1   110
#> [105,]  53   9      0          9        1    95
#> [106,]  56   4      1          1        1   130
#> [107,]  54   1      0        180        0   162
#> [108,]  54   7      1          0        1   100
#> [109,]  55   5      1          4        1   120
#> [110,]  52   8      0        180        0   119
#> [111,]  53  18      1          9        1   150
#> [112,]  55   6      0        180        0   170
#> [113,]  53  10      1          9        0   172
#> [114,]  52  16      1         14        0   170
#> [115,]  53  15      0         15        1    90
#> [116,]  53   4      0        180        1   150
#> [117,]  55   2      0        134        1   140
#> [118,]  54   3      0        180        0   128
#> [119,]  55   1      0          2        0   130
#> [120,]  54   2      1          1        0   135
#> [121,]  52   9      1          3        0   170
#> [122,]  54   2      1          1        1   176
#> [123,]  57   5      1          3        1   138
#> [124,]  57   1      0          1        1   100
#> [125,]  56   4      1          0        1   140
#> [126,]  52   2      0        180        0   140
#> [127,]  55  11      1          7        0   104
#> [128,]  52  15      1         14        0   130
#> [129,]  56  14      1         11        0   130
#> [130,]  53   3      1          0        1   200
#> [131,]  54   5      0        180        1   108
#> [132,]  55   3      1          1        1   156
#> [133,]  57   4      0        180        1   119
#> [134,]  54  17      1          8        1   227
#> [135,]  55   9      1          2        1   147
#> [136,]  55  13      0        166        1   140
#> [137,]  56   5      0          5        1   150
#> [138,]  54  23      1          8        0   120
#> [139,]  57   4      1          2        1   185
#> [140,]  53   4      0        147        1   145
#> [141,]  57  11      1         10        1   129
#> [142,]  55   5      0          5        1   131
#> [143,]  54   7      1          0        1   141
#> [144,]  56   4      0          4        0   164
#> [145,]  59  15      1         10        0   140
#> [146,]  58   1      1          1        1   200
#> [147,]  56   7      1          5        1   120
#> [148,]  59   9      1          1        1   125
#> [149,]  57   1      0        180        0   148
#> [150,]  60  11      1          9        0   106
#> [151,]  58   4      1          0        1   160
#> [152,]  57   2      0          2        1   120
#> [153,]  57   5      0        180        1   130
#> [154,]  58  11      1          9        1   124
#> [155,]  57  10      1          9        0   103
#> [156,]  59   5      0        180        1   155
#> [157,]  59   4      1          0        1   152
#> [158,]  58  26      1          0        1   189
#> [159,]  60   0      1          0        1    80
#> [160,]  59   2      1          1        0   140
#> [161,]  61   9      1          8        0   150
#> [162,]  58   1      0          1        1   100
#> [163,]  58  10      0         10        1   150
#> [164,]  57   4      1          3        0   138
#> [165,]  61   3      0         17        0   143
#> [166,]  57   3      1          2        0   120
#> [167,]  58  19      1         13        1   140
#> [168,]  56  18      1         11        1   165
#> [169,]  59   9      1          0        1    80
#> [170,]  55   4      1          3        1   160
#> [171,]  60  12      1          0        1   114
#> [172,]  61   4      1          0        1   115
#> [173,]  56   8      1          8        0   120
#> [174,]  61  13      1         12        1   130
#> [175,]  59  11      1          8        1   190
#> [176,]  57   1      0          1        0   126
#> [177,]  59   5      1          2        0   182
#> [178,]  58   5      1          1        1   135
#> [179,]  59  10      0        180        0   160
#> [180,]  61   8      0         77        0   120
#> [181,]  61  13      0         13        0   210
#> [182,]  58   8      1          5        0   152
#> [183,]  62  10      1          0        1   153
#> [184,]  62   7      1          2        1   180
#> [185,]  61  18      0        170        0   140
#> [186,]  61  28      1          7        0   133
#> [187,]  58   8      1          3        1   150
#> [188,]  57   7      0        169        0   180
#> [189,]  61   7      0          7        1   150
#> [190,]  60   7      0          7        0   147
#> [191,]  61   6      0          6        0   134
#> [192,]  59  13      1          2        0   198
#> [193,]  57  12      1          9        1   120
#> [194,]  62   4      1          0        0   160
#> [195,]  60  17      1          8        1   140
#> [196,]  58   3      1          0        1   146
#> [197,]  62   4      1          3        0   173
#> [198,]  58   2      0         30        0   202
#> [199,]  59   1      0        180        0   155
#> [200,]  59  16      1          9        1   133
#> [201,]  63   6      0         28        1   120
#> [202,]  61  13      0         13        0   120
#> [203,]  61   5      0          5        1   160
#> [204,]  58  11      1          9        0   179
#> [205,]  62  17      1         10        1   180
#> [206,]  58   7      0        180        1   150
#> [207,]  63   3      1          1        0   180
#> [208,]  63   1      0        180        1   130
#> [209,]  61   7      0        180        0   135
#> [210,]  63   4      1          3        0   222
#> [211,]  62   3      0        180        1   105
#> [212,]  63   4      0        180        1   190
#> [213,]  63  15      1         10        1   126
#> [214,]  60  18      1         13        0   132
#> [215,]  59   8      0        180        1   140
#> [216,]  61   9      1          9        1   150
#> [217,]  58   9      1          9        0   110
#> [218,]  59   1      0         22        1   162
#> [219,]  58   2      0        180        0   127
#> [220,]  59   5      1          1        0   148
#> [221,]  63   1      0          1        0   162
#> [222,]  62   6      0        180        0   170
#> [223,]  61  15      1         13        0   170
#> [224,]  60   3      0          3        0   168
#> [225,]  64  10      1          9        0   160
#> [226,]  62   6      0          6        0   120
#> [227,]  59  10      0        180        1   130
#> [228,]  60   8      0         17        1   130
#> [229,]  61   6      1          1        1   117
#> [230,]  64  12      1         11        0   160
#> [231,]  64   6      1          0        1   140
#> [232,]  65  36      1         11        0   140
#> [233,]  63   4      1          3        0   162
#> [234,]  66   3      1          1        0   127
#> [235,]  61  10      1          2        1   194
#> [236,]  63  12      1          9        0   114
#> [237,]  66   5      1          0        1   110
#> [238,]  64  21      1         10        0   190
#> [239,]  61  12      1         11        0   154
#> [240,]  64   9      0        180        0   150
#> [241,]  65   3      0        180        1   190
#> [242,]  64   7      0        180        1   120
#> [243,]  62   3      1          1        1   199
#> [244,]  65   3      1          0        1    80
#> [245,]  62  13      1         11        0   180
#> [246,]  67  11      0         11        1   100
#> [247,]  66  18      1          5        0   142
#> [248,]  66  16      1         11        1   169
#> [249,]  62   9      0        180        0   145
#> [250,]  61  14      1          5        0   140
#> [251,]  61  15      1         10        0   130
#> [252,]  63   9      1          8        1   160
#> [253,]  63   3      1          2        0   120
#> [254,]  68   5      1          4        1   150
#> [255,]  64  13      1         12        1   150
#> [256,]  64   6      1          0        1   125
#> [257,]  66   7      1          0        1   115
#> [258,]  64  14      1         13        1   150
#> [259,]  65   3      0          3        0   105
#> [260,]  66   3      1          0        1   135
#> [261,]  66   6      1          0        1   140
#> [262,]  68   1      0        180        1   166
#> [263,]  64  10      1          9        1   110
#> [264,]  68   5      0          5        1    90
#> [265,]  63  10      0         16        1   160
#> [266,]  66  14      0        180        0   130
#> [267,]  64   1      0          1        1   120
#> [268,]  65  18      1          3        0   120
#> [269,]  63   1      1          0        1   155
#> [270,]  63  10      0         18        1   130
#> [271,]  68  14      0         79        0   172
#> [272,]  65  15      1         12        1   150
#> [273,]  66  11      1          0        0   100
#> [274,]  65   4      1          2        1   145
#> [275,]  69  12      0         15        1   140
#> [276,]  63   2      0        180        0   150
#> [277,]  65  11      1          6        0   130
#> [278,]  69  21      1         10        0   180
#> [279,]  69   6      0        180        1   100
#> [280,]  63   8      0        180        1   120
#> [281,]  65   8      1          0        1    90
#> [282,]  66   3      0          3        1   138
#> [283,]  67   1      0        180        1   160
#> [284,]  68  10      1         10        1   150
#> [285,]  65   1      1          0        0   133
#> [286,]  67   7      1          4        1   130
#> [287,]  67   2      0        180        0   184
#> [288,]  65   6      0          6        0    80
#> [289,]  64   4      0        179        0   160
#> [290,]  66   4      0        180        1   130
#> [291,]  70  15      1         12        1   132
#> [292,]  64  11      0         11        0   125
#> [293,]  64   0      1          0        1   118
#> [294,]  67   2      0         18        0   131
#> [295,]  66   7      1          5        1   131
#> [296,]  66   4      0        180        0   177
#> [297,]  68   4      1          0        1   160
#> [298,]  69   8      0         93        0   140
#> [299,]  65   1      0          1        1   120
#> [300,]  68   4      0          4        1   190
#> [301,]  68   7      0        150        0   210
#> [302,]  71  20      1          0        1   160
#> [303,]  70   4      1          0        1   180
#> [304,]  69   8      0        180        1   153
#> [305,]  70  14      0        171        0   166
#> [306,]  67  10      1          9        0   200
#> [307,]  67   6      1          4        0   130
#> [308,]  68  18      1         14        1   170
#> [309,]  65   2      0        180        0   130
#> [310,]  68   7      1          0        1   150
#> [311,]  69   3      1          2        0   151
#> [312,]  69   8      0        180        1   180
#> [313,]  71   7      0          7        0   230
#> [314,]  71   6      0         45        1   158
#> [315,]  69   5      0          5        1   142
#> [316,]  69   3      0          3        1   130
#> [317,]  70  22      1         13        0   103
#> [318,]  67   5      0          5        0   130
#> [319,]  68   6      0        180        0   145
#> [320,]  69   8      1          5        1   195
#> [321,]  69   6      1          4        1   174
#> [322,]  72   7      0          7        1   110
#> [323,]  69   8      1          7        1   108
#> [324,]  67   3      0        180        0   110
#> [325,]  66   2      1          1        0   123
#> [326,]  69  19      0        180        0   130
#> [327,]  68  18      0         18        1   100
#> [328,]  67  14      0        172        1   140
#> [329,]  67   7      1          4        0   122
#> [330,]  69   4      1          3        0   132
#> [331,]  68   2      0          7        1   130
#> [332,]  69   8      1          2        0   121
#> [333,]  67  13      1          9        0   130
#> [334,]  70   3      0        123        0   130
#> [335,]  70   9      0        180        1   142
#> [336,]  67  22      1          1        1   140
#> [337,]  68   3      0         19        0   135
#> [338,]  67  12      1          8        0   120
#> [339,]  67   1      0          1        1    60
#> [340,]  67   8      1          0        1   130
#> [341,]  72  13      1         11        1   195
#> [342,]  68  10      1          8        1   160
#> [343,]  66  24      1         13        0   130
#> [344,]  70  35      1          0        1   105
#> [345,]  72  30      1          0        1   145
#> [346,]  70   7      0          7        0   102
#> [347,]  68   7      1          2        0   135
#> [348,]  73  20      1          0        1   170
#> [349,]  69  10      1          6        1   120
#> [350,]  70  11      0        180        1   210
#> [351,]  72  12      1         10        0   170
#> [352,]  67   5      1          0        1   147
#> [353,]  67   9      0        180        0   158
#> [354,]  73  13      0        152        1   130
#> [355,]  70   5      0        180        0   150
#> [356,]  72   2      0          2        1   100
#> [357,]  67   4      1          1        0   134
#> [358,]  72   6      1          5        0   115
#> [359,]  71   1      0        173        1   188
#> [360,]  68  23      0        180        1   220
#> [361,]  70   3      0        180        0   121
#> [362,]  72   5      0         28        0   120
#> [363,]  71   5      0        180        0   191
#> [364,]  73   6      0        180        1   117
#> [365,]  70   4      0        180        0   180
#> [366,]  69   1      1          0        0   155
#> [367,]  73   6      1          0        1   270
#> [368,]  71   2      1          0        1   180
#> [369,]  73   7      0          7        1   140
#> [370,]  68  15      1         13        1   130
#> [371,]  70   3      0          3        1   159
#> [372,]  74   8      1          0        1    85
#> [373,]  69   2      1          0        1   110
#> [374,]  71   3      1          1        0   150
#> [375,]  71  15      1         11        0   165
#> [376,]  74  20      0         20        1   180
#> [377,]  68   9      0        180        1   120
#> [378,]  71  20      1         10        0   140
#> [379,]  74   0      1          0        1    90
#> [380,]  70   5      1          0        1   190
#> [381,]  71   8      1          7        0   149
#> [382,]  70  26      1         11        1   120
#> [383,]  74   4      0          4        0   120
#> [384,]  73   4      0         58        1   160
#> [385,]  72   5      1          3        1   160
#> [386,]  73   6      0        180        0   110
#> [387,]  74   3      0          3        1   150
#> [388,]  73  17      1         11        0   140
#> [389,]  71  13      1          8        0   121
#> [390,]  69   2      1          1        1    80
#> [391,]  71  14      1         13        1   170
#> [392,]  74   7      1          0        1   117
#> [393,]  72  10      1          8        1   153
#> [394,]  69   7      0        180        1   144
#> [395,]  70   8      0          8        0   120
#> [396,]  71  10      1          9        1   120
#> [397,]  75   1      0          1        0   133
#> [398,]  73  10      1          9        1   146
#> [399,]  74  15      1          9        1   179
#> [400,]  71   2      0         10        1   112
#> [401,]  73   1      0          1        1    80
#> [402,]  75   9      1          7        0   140
#> [403,]  75  13      1          1        1   130
#> [404,]  71  11      1          8        0   110
#> [405,]  71   4      0          4        0   134
#> [406,]  72  15      1         12        1   120
#> [407,]  70   7      1          4        0   184
#> [408,]  72   1      1          1        0   168
#> [409,]  72   7      0         57        1   145
#> [410,]  72  11      0         11        1   140
#> [411,]  73   5      1          3        1   112
#> [412,]  76  25      1         12        1   170
#> [413,]  72   2      0        180        0   120
#> [414,]  75   1      0        180        1   140
#> [415,]  71   3      1          0        0   144
#> [416,]  73   4      0        180        0   124
#> [417,]  76   3      1          0        1   120
#> [418,]  71  32      1         12        1   107
#> [419,]  72   5      0        180        0   154
#> [420,]  76   5      0          5        1   130
#> [421,]  77  11      0         11        1   150
#> [422,]  77   4      0          4        0   185
#> [423,]  75   3      1          1        0   180
#> [424,]  72   7      1          2        0   142
#> [425,]  71  16      0        180        0   140
#> [426,]  73  10      1         10        0   124
#> [427,]  74   7      0        180        1   150
#> [428,]  74   3      0          3        1   128
#> [429,]  76   1      0        180        0   114
#> [430,]  74   2      1          1        0   140
#> [431,]  76   8      1          0        1   141
#> [432,]  74  19      1          4        1   200
#> [433,]  73   6      0          6        1   114
#> [434,]  75  23      1         14        1   110
#> [435,]  72   4      1          3        0   160
#> [436,]  76  17      1          0        1   200
#> [437,]  73   4      1          3        1   125
#> [438,]  75   7      0          7        0   190
#> [439,]  75   0      0          0        1   130
#> [440,]  73  13      1         11        0   195
#> [441,]  75  12      0         12        1   160
#> [442,]  74   8      1          0        1   105
#> [443,]  76  13      1          8        1   148
#> [444,]  75   4      1          2        1   188
#> [445,]  74   6      0        180        0   160
#> [446,]  76   4      0          4        1   155
#> [447,]  74   2      0        180        0   111
#> [448,]  73   0      0        180        0   156
#> [449,]  72   5      0        180        0   120
#> [450,]  78  12      1         11        1   160
#> [451,]  74  10      1          0        1   135
#> [452,]  76   5      1          0        1   167
#> [453,]  75   9      0        180        1   140
#> [454,]  73  33      1         12        1   175
#> [455,]  77  12      1          9        1   100
#> [456,]  77  12      0        180        0   130
#> [457,]  77   1      1          0        1    90
#> [458,]  76  12      1         11        1   120
#> [459,]  73   7      1          0        0   174
#> [460,]  74   6      0         79        1   140
#> [461,]  74   9      1          8        0   200
#> [462,]  75   6      0        180        0   150
#> [463,]  79  10      1          8        0   190
#> [464,]  77   3      0        180        0   110
#> [465,]  73   8      1          1        1   162
#> [466,]  73  11      1          2        1   110
#> [467,]  74   2      0        180        0   100
#> [468,]  78   7      0          7        1   133
#> [469,]  74  15      0        180        1   172
#> [470,]  78   8      1          6        1   110
#> [471,]  74   7      0          7        0   161
#> [472,]  76  13      1          1        1   170
#> [473,]  78  32      1          9        1   198
#> [474,]  79   6      0        180        0   170
#> [475,]  78  13      1          5        0   130
#> [476,]  75  12      1          1        1   120
#> [477,]  78  15      0        180        1   270
#> [478,]  75  13      1          6        0   150
#> [479,]  79   4      0         80        0   145
#> [480,]  78  12      1          9        0   150
#> [481,]  75   4      1          0        0   212
#> [482,]  76  11      1          0        0   120
#> [483,]  75  11      1          4        0   162
#> [484,]  75   3      0          3        0     0
#> [485,]  76   7      0         29        1   150
#> [486,]  77  24      0         24        1   160
#> [487,]  79   8      0         32        1   120
#> [488,]  80   9      0         23        1   128
#> [489,]  80   6      0          6        1   150
#> [490,]  79  11      0        180        0   160
#> [491,]  78  14      1          0        1   140
#> [492,]  78  11      1          8        1   118
#> [493,]  76   4      0          4        1   160
#> [494,]  79   4      0          4        1   125
#> [495,]  76  10      1          8        0   180
#> [496,]  77   6      0          6        1   107
#> [497,]  80   3      1          0        1   120
#> [498,]  75   2      1          1        1   204
#> [499,]  78  11      0        180        1   135
#> [500,]  76   1      0          1        1   140
#> [501,]  77  31      1          3        1   161
#> [502,]  76   1      0          1        1    90
#> [503,]  79   3      0          3        0   120
#> [504,]  77   7      0        180        1   170
#> [505,]  77   6      0          6        1   144
#> [506,]  79   4      1          0        1   120
#> [507,]  77   9      1          4        0   141
#> [508,]  82   5      0          8        1   120
#> [509,]  80  40      1          0        1   138
#> [510,]  78   4      0         59        1   112
#> [511,]  80  15      1          0        1    90
#> [512,]  81   4      1          2        1   126
#> [513,]  79  28      0        164        0   100
#> [514,]  80   9      0        118        1   186
#> [515,]  78  32      0        180        1   130
#> [516,]  79   1      0         37        1   140
#> [517,]  81   3      0        180        0   184
#> [518,]  81   2      0        175        0   172
#> [519,]  78   7      0          7        1   147
#> [520,]  77  13      1          0        1   190
#> [521,]  78  15      0         15        0   165
#> [522,]  80   5      1          1        1   108
#> [523,]  78   4      0        180        0   175
#> [524,]  79   3      0          3        1   101
#> [525,]  78  26      1          5        0   194
#> [526,]  76   1      0        166        0   131
#> [527,]  78  20      1          0        1   109
#> [528,]  80   1      0          1        0   100
#> [529,]  78   3      1          1        1   152
#> [530,]  82   3      1          1        1   144
#> [531,]  77   5      0         85        0   188
#> [532,]  80   2      1          1        0   168
#> [533,]  80   6      1          0        1   119
#> [534,]  80   5      0          5        1   130
#> [535,]  82   1      1          0        1    82
#> [536,]  81   1      0        108        0   129
#> [537,]  82  21      1          2        0   155
#> [538,]  84  22      1         10        0   180
#> [539,]  79   4      0          4        1   121
#> [540,]  80   6      0          6        1   110
#> [541,]  82   5      0        180        0   110
#> [542,]  83   5      0        180        0   148
#> [543,]  79   7      1          6        0   130
#> [544,]  81  11      1          8        0   160
#> [545,]  81   5      0        177        0    41
#> [546,]  80  11      1          8        0   170
#> [547,]  78  23      1         10        1   145
#> [548,]  79   4      0          4        1   183
#> [549,]  78   9      1          4        1   120
#> [550,]  82   8      1          1        0   128
#> [551,]  81  15      0        180        1   140
#> [552,]  80   7      1          0        1   146
#> [553,]  84   5      1          1        1    85
#> [554,]  81  20      1          9        0   170
#> [555,]  83   8      0          8        0   115
#> [556,]  81  16      0         16        1   110
#> [557,]  80   6      1          0        1   150
#> [558,]  81   8      0        180        0   146
#> [559,]  80   8      1          7        0   160
#> [560,]  79   7      0        177        0   197
#> [561,]  79   0      1          0        1    96
#> [562,]  85   4      0        180        0    90
#> [563,]  83   2      0          2        1   155
#> [564,]  84   4      0        167        0   198
#> [565,]  80   3      1          1        1   230
#> [566,]  84   5      0        180        1   203
#> [567,]  84   4      0          4        1    85
#> [568,]  81   1      0          1        1   150
#> [569,]  83   3      0        180        0   174
#> [570,]  81   4      0         90        1   138
#> [571,]  79   9      1          8        0   150
#> [572,]  85   3      1          2        1   160
#> [573,]  80  13      1          8        1   140
#> [574,]  80   2      1          0        1   130
#> [575,]  79   4      0          4        1    60
#> [576,]  83   1      0          1        1   100
#> [577,]  82  19      0         19        0   120
#> [578,]  80  30      1         13        0   220
#> [579,]  83   9      0        180        0   198
#> [580,]  79  14      1          0        0   110
#> [581,]  81  14      1         12        1   128
#> [582,]  83   2      0        154        0   130
#> [583,]  85   9      1          6        1   160
#> [584,]  83   1      0        180        0   160
#> [585,]  81   4      0          4        0   175
#> [586,]  81  12      0         12        1   163
#> [587,]  82  16      1          8        0   103
#> [588,]  82   5      1          0        1   146
#> [589,]  81   4      0          4        0   160
#> [590,]  86  12      0        180        1   120
#> [591,]  83  12      1          2        1   170
#> [592,]  81  19      1         14        0   120
#> [593,]  82   3      1          2        0   130
#> [594,]  82  15      1          0        0   183
#> [595,]  83   7      0        126        0   135
#> [596,]  86   8      0          8        1   132
#> [597,]  84   6      0        165        0   145
#> [598,]  86   3      0          3        1   140
#> [599,]  82   9      0        180        1   134
#> [600,]  85   3      0          3        1   118
#> [601,]  81   2      1          0        1   118
#> [602,]  82   1      0        180        1   193
#> [603,]  83   4      0          4        0   130
#> [604,]  86  12      1          0        1   132
#> [605,]  82  14      1         11        1   103
#> [606,]  86   6      1          0        1   140
#> [607,]  83  19      0         43        0   150
#> [608,]  83  10      1          0        1   190
#> [609,]  88  14      1          3        1   130
#> [610,]  83  13      1         12        0   170
#> [611,]  84   7      1          2        0   148
#> [612,]  87   2      0        180        0   113
#> [613,]  84   9      0         92        1   110
#> [614,]  84   3      0        180        1   170
#> [615,]  86   4      0         38        1   122
#> [616,]  82   4      0          4        0   130
#> [617,]  86  13      0        177        0   163
#> [618,]  85   3      0          3        1   113
#> [619,]  84  13      0         62        1   100
#> [620,]  86   6      1          1        0   112
#> [621,]  88   4      0          4        0   100
#> [622,]  85  22      0         22        1   184
#> [623,]  83   9      0         65        1   150
#> [624,]  86   9      1          7        1   142
#> [625,]  87   2      0        180        1   130
#> [626,]  86   6      0         46        0   173
#> [627,]  88   3      0        115        0   110
#> [628,]  83   3      0          3        1   130
#> [629,]  87   8      0          8        1   157
#> [630,]  86  15      1          8        1   109
#> [631,]  88   4      0          4        0    86
#> [632,]  87   6      0        180        1   110
#> [633,]  84   2      0        110        1   174
#> [634,]  87  29      0         29        1    97
#> [635,]  84   0      0        180        1   136
#> [636,]  88   1      0          1        0   135
#> [637,]  86   4      0        180        1   145
#> [638,]  91  10      0        145        0   135
#> [639,]  86   3      1          0        1    80
#> [640,]  88   7      0         24        0   119
#> [641,]  88   8      0         50        1   154
#> [642,]  90  11      1         10        1   186
#> [643,]  86  10      0        180        1   137
#> [644,]  86   9      1          7        0   130
#> [645,]  91   1      0          1        1    74
#> [646,]  87  43      0        178        1   130
#> [647,]  87   5      0         36        1   150
#> [648,]  88   3      1          2        0   159
#> [649,]  92   1      0          1        1   167
#> [650,]  91   3      0         33        1   137
#> [651,]  88   5      0        158        0   100
#> [652,]  89   2      0        168        0   118
#> [653,]  91   5      0        169        1   176
#> [654,]  89   4      0          4        1   159
#> [655,]  89  14      0        180        1    84
#> [656,]  90  18      0        180        0   188
#> [657,]  90  19      1         11        1   129
#> [658,]  94   6      0         50        0    78
#> [659,]  90   1      0          1        1   118
#> [660,]  91   2      0          2        1   116
#> [661,]  93   8      0        179        1   110
#> [662,]  94   8      0          8        1   142
#> [663,]  92   4      0         76        1   149
#> [664,]  90  16      0         16        1   106
#> [665,]  96   3      0         12        1    97
#> [666,]  94   3      0         26        1   144
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+   5.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+   2.0+
#>  [21] 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0  161.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+
#>  [61] 180.0+ 180.0+   2.0    1.0  179.0+ 179.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+
#>  [81]   4.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+   5.0  180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+ 180.0+  99.0  180.0+  16.0+ 180.0+   7.0+ 180.0+ 180.0+
#> [101] 180.0+  13.0+ 171.0+   1.0    9.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+
#> [111] 180.0+ 180.0+ 180.0+  16.0   15.0+ 180.0+ 134.0+ 180.0+   2.0  180.0+
#> [121] 180.0+ 180.0+ 140.0    1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [131] 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+ 180.0+   4.0+ 147.0+
#> [141] 180.0+   5.0+ 180.0+   4.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+
#> [151] 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+
#> [161] 180.0+   1.0   10.0+ 180.0+  17.0    3.0+  19.0  180.0+   9.0+ 180.0+
#> [171] 172.0+ 180.0+   8.0  180.0+ 180.0+   1.0+ 180.0+ 180.0+ 180.0+  77.0 
#> [181]  13.0+   8.0+ 180.0+ 180.0+ 170.0   94.0  180.0+ 169.0    7.0    7.0+
#> [191]   6.0  180.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+  30.0  180.0+ 180.0+
#> [201]  28.0   13.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0   22.0  180.0+ 180.0+
#> [221]   1.0  180.0+ 180.0+   3.0+ 167.0    6.0+ 180.0+  17.0  180.0+  12.0 
#> [231] 180.0+  36.0  180.0+   3.0+  88.0   12.0  180.0+ 180.0+  12.0+ 180.0+
#> [241] 180.0+ 180.0+ 180.0+   3.0  180.0+  11.0+  18.0+ 180.0+ 180.0+ 180.0+
#> [251] 180.0+ 180.0+   3.0+   5.0+  13.0  180.0+ 179.0+  14.0+   3.0    3.0+
#> [261] 180.0+ 180.0+ 180.0+   5.0   16.0  180.0+   1.0  123.0+   1.0+  18.0 
#> [271]  79.0   15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+ 180.0+
#> [281]   8.0+   3.0  180.0+  10.0  180.0+ 180.0+ 180.0+   6.0  179.0+ 180.0+
#> [291] 180.0+  11.0+   0.5   18.0    7.0+ 180.0+ 180.0+  93.0    1.0    4.0 
#> [301] 150.0  180.0+ 180.0+ 180.0+ 171.0  174.0+   6.0  180.0+ 180.0+ 180.0+
#> [311] 180.0+ 180.0+   7.0+  45.0    5.0+   3.0+ 180.0+   5.0+ 180.0+ 180.0+
#> [321]  97.0    7.0    8.0+ 180.0+   2.0+ 180.0+  18.0  172.0+   7.0  180.0+
#> [331]   7.0    8.0+  13.0+ 123.0  180.0+  51.0   19.0  180.0+   1.0  180.0+
#> [341] 132.0   10.0+ 180.0+ 180.0+ 162.0    7.0+   7.0+ 124.0  180.0+ 180.0+
#> [351]  12.0  180.0+ 180.0+ 152.0  180.0+   2.0   76.0  180.0+ 173.0+ 180.0+
#> [361] 180.0+  28.0  180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+   7.0+  15.0 
#> [371]   3.0+ 180.0+   2.0    3.0+ 180.0+  20.0  180.0+  20.0    0.5  180.0+
#> [381]   8.0  180.0+   4.0+  58.0  180.0+ 180.0+   3.0  180.0+ 175.0    2.0 
#> [391]  14.0+ 180.0+  10.0+ 180.0+   8.0+ 179.0+   1.0  180.0+ 180.0+  10.0 
#> [401]   1.0  180.0+  13.0  180.0+   4.0+ 180.0+ 104.0+   1.0   57.0   11.0 
#> [411]   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+   5.0 
#> [421]  11.0+   4.0+ 180.0+   7.0  180.0+  10.0  180.0+   3.0  180.0+ 180.0+
#> [431] 180.0+ 180.0+   6.0  180.0+ 180.0+  17.0+ 180.0+   7.0    0.5  180.0+
#> [441]  12.0  180.0+ 180.0+  46.0  180.0+   4.0  180.0+ 180.0+ 180.0+  12.0 
#> [451] 180.0+ 180.0+ 180.0+  33.0  180.0+ 180.0+   1.0   12.0    7.0+  79.0 
#> [461] 168.0+ 180.0+ 180.0+ 180.0+ 180.0+  11.0  180.0+   7.0  180.0+   8.0+
#> [471]   7.0  180.0+  32.0  180.0+ 172.0   12.0  180.0+ 180.0+  80.0  180.0+
#> [481]   4.0+  11.0  152.0+   3.0   29.0   24.0   32.0   23.0    6.0  180.0+
#> [491] 180.0+  11.0    4.0    4.0   10.0+   6.0    3.0+   2.0+ 180.0+   1.0 
#> [501] 171.0    1.0    3.0  180.0+   6.0  138.0   71.0    8.0   40.0   59.0 
#> [511] 180.0+  93.0  164.0  118.0  180.0+  37.0  180.0+ 175.0+   7.0+  22.0 
#> [521]  15.0+   5.0+ 180.0+   3.0  171.0+ 166.0+  20.0+   1.0    3.0+ 180.0+
#> [531]  85.0   10.0    6.0    5.0    1.0  108.0  180.0+ 180.0+   4.0    6.0 
#> [541] 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 169.0   70.0    4.0  180.0+ 180.0+
#> [551] 180.0+   7.0+ 180.0+  20.0    8.0+  16.0  180.0+ 180.0+ 180.0+ 177.0+
#> [561]   0.5  180.0+   2.0  167.0    3.0+ 180.0+   4.0    1.0  180.0+  90.0 
#> [571] 180.0+ 180.0+ 180.0+ 180.0+   4.0    1.0   19.0   30.0  180.0+ 180.0+
#> [581] 180.0+ 154.0  180.0+ 180.0+   4.0+  12.0   16.0+   5.0+   4.0+ 180.0+
#> [591]  77.0  180.0+   3.0   83.0  126.0    8.0  165.0    3.0  180.0+   3.0+
#> [601] 180.0+ 180.0+   4.0+ 180.0+ 174.0    6.0   43.0  180.0+  14.0   13.0 
#> [611] 180.0+ 180.0+  92.0  180.0+  38.0    4.0  177.0    3.0+  62.0    6.0+
#> [621]   4.0+  22.0   65.0   11.0  180.0+  46.0  115.0    3.0+   8.0+ 180.0+
#> [631]   4.0  180.0+ 110.0   29.0  180.0+   1.0+ 180.0+ 145.0    3.0   24.0 
#> [641]  50.0   11.0  180.0+ 180.0+   1.0  178.0+  36.0   75.0    1.0   33.0 
#> [651] 158.0  168.0  169.0    4.0  180.0+ 180.0+ 180.0+  50.0    1.0+   2.0 
#> [661] 179.0+   8.0+  76.0   16.0   12.0   26.0    0.5   69.0    2.0    3.0 
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
#>   0.8306233 
```
