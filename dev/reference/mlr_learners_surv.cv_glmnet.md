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
#> min 0.00349    44   2.878 0.1729       6
#> 1se 0.07514    11   3.028 0.1735       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35  10      1          9        0   106
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  38   2      0        115        0   150
#>   [8,]  36   1      0        180        1   155
#>   [9,]  36   5      1          0        1   115
#>  [10,]  33   6      1          1        1   115
#>  [11,]  38  16      1         10        0   160
#>  [12,]  38  12      1         11        1    92
#>  [13,]  40  12      1          9        0   153
#>  [14,]  42   3      1          1        1   130
#>  [15,]  38   5      1          3        0   125
#>  [16,]  40   6      0        180        1   138
#>  [17,]  40  11      1         10        1   120
#>  [18,]  43   3      1          0        1   100
#>  [19,]  41   2      1          1        0   166
#>  [20,]  43   4      1          0        1   130
#>  [21,]  42   4      0        180        0   162
#>  [22,]  40   3      1          1        0   170
#>  [23,]  42  12      1         10        1   170
#>  [24,]  43   2      1          1        1   116
#>  [25,]  44   5      1          1        0   170
#>  [26,]  41  10      1          8        0   150
#>  [27,]  41  13      1          1        0   140
#>  [28,]  45   6      0        180        1   170
#>  [29,]  43   2      0        180        1   140
#>  [30,]  46  15      0        180        0   120
#>  [31,]  46   2      1          1        0   126
#>  [32,]  47   4      1          3        0   118
#>  [33,]  48  15      0        180        1   160
#>  [34,]  45   3      0        150        0   130
#>  [35,]  44   3      1          0        1   180
#>  [36,]  46   7      1          2        0   166
#>  [37,]  43  29      0        180        1   180
#>  [38,]  45   4      1          0        0   124
#>  [39,]  46  13      1         10        0   100
#>  [40,]  47   4      1          3        1   160
#>  [41,]  45   8      1          0        1   117
#>  [42,]  49   5      0         73        1   136
#>  [43,]  45   5      0          5        0   141
#>  [44,]  46   2      1          1        1   122
#>  [45,]  46   6      1          0        1   100
#>  [46,]  44   4      1          0        1   114
#>  [47,]  47   2      0        180        0   108
#>  [48,]  45   5      0        180        1   190
#>  [49,]  46   5      1          3        0   130
#>  [50,]  44   2      0        180        0   142
#>  [51,]  46  15      0        180        1   120
#>  [52,]  48   3      0        180        0   154
#>  [53,]  48  12      1         11        0   200
#>  [54,]  47   5      1          3        1   130
#>  [55,]  47   9      1          6        0   170
#>  [56,]  49   4      0        180        0   117
#>  [57,]  47  10      0         10        1   140
#>  [58,]  50   1      1          0        1   129
#>  [59,]  50   4      1          1        0   125
#>  [60,]  50   6      1          2        1   140
#>  [61,]  49   7      1          7        1   110
#>  [62,]  46   9      1          9        1   122
#>  [63,]  50   7      0        180        1   110
#>  [64,]  49  15      1         11        1   160
#>  [65,]  47   2      0        180        0   150
#>  [66,]  49  23      0        179        1   112
#>  [67,]  46   6      1          0        1   156
#>  [68,]  52   2      0        180        1   170
#>  [69,]  50   4      0          4        1   100
#>  [70,]  50   1      1          0        0   150
#>  [71,]  50   9      0        180        0   130
#>  [72,]  49   7      1          4        1    90
#>  [73,]  51   8      0        180        1   140
#>  [74,]  52   2      0        180        0   155
#>  [75,]  48   7      1          0        1   110
#>  [76,]  53   8      0         36        1   160
#>  [77,]  48  17      1         10        0   111
#>  [78,]  52   4      1          4        0   152
#>  [79,]  53   5      0        180        1   140
#>  [80,]  54  17      1         12        1   102
#>  [81,]  53   5      0         77        0   159
#>  [82,]  54   6      1          3        0   129
#>  [83,]  50   2      0          5        1   106
#>  [84,]  50  10      1          6        0   122
#>  [85,]  50  14      1         13        0   170
#>  [86,]  53   8      1          7        0   160
#>  [87,]  51  25      1          1        0   202
#>  [88,]  49   5      1          2        1   150
#>  [89,]  53   4      0          4        0   140
#>  [90,]  52  14      1          7        1   200
#>  [91,]  48  11      1         10        0   120
#>  [92,]  53   4      1          0        1   156
#>  [93,]  51  13      0         99        1   160
#>  [94,]  49  16      0         16        0   125
#>  [95,]  55   3      1          1        0   150
#>  [96,]  54  23      1         10        0   131
#>  [97,]  52   7      1          2        0   154
#>  [98,]  54   9      1          1        0   130
#>  [99,]  52   4      0        180        1   180
#> [100,]  51  13      1         11        0   145
#> [101,]  54   4      1          0        1   121
#> [102,]  50   3      0        174        1   153
#> [103,]  55  28      1         13        1   160
#> [104,]  49   6      1          0        1   130
#> [105,]  49   1      0          1        1   110
#> [106,]  53   8      1          0        1   130
#> [107,]  52   5      0        175        1   117
#> [108,]  55   1      0        180        0   127
#> [109,]  55   2      0          2        0   145
#> [110,]  54   1      0        180        0   162
#> [111,]  56   2      0        180        0   132
#> [112,]  55   5      1          4        1   120
#> [113,]  52   8      0        180        0   119
#> [114,]  53  18      1          9        1   150
#> [115,]  54   3      0        180        1   180
#> [116,]  55   6      0        180        0   170
#> [117,]  52  16      0         16        0   152
#> [118,]  53  10      1          9        0   172
#> [119,]  52  16      1         14        0   170
#> [120,]  53   4      0        180        1   150
#> [121,]  55   6      0        180        1   100
#> [122,]  55   6      1          5        1   138
#> [123,]  55   1      0          2        0   130
#> [124,]  57   3      0          3        0   120
#> [125,]  54   7      1          2        0   129
#> [126,]  54   2      1          1        0   135
#> [127,]  52   9      1          3        0   170
#> [128,]  57   5      1          3        1   138
#> [129,]  57   1      0        180        1   156
#> [130,]  57   1      0          1        1   100
#> [131,]  56   4      1          0        1   140
#> [132,]  52   2      0        180        0   140
#> [133,]  55  11      1          7        0   104
#> [134,]  52  15      1         14        0   130
#> [135,]  56  14      1         11        0   130
#> [136,]  53   3      1          0        1   200
#> [137,]  55   3      1          1        1   156
#> [138,]  57   0      0          0        1   150
#> [139,]  59   3      1          1        0   172
#> [140,]  57   4      0        180        1   119
#> [141,]  53  15      1         10        1   130
#> [142,]  55   9      1          2        1   147
#> [143,]  55  13      0        166        1   140
#> [144,]  56   5      0          5        1   150
#> [145,]  54  23      1          8        0   120
#> [146,]  57   4      1          2        1   185
#> [147,]  53   4      0        147        1   145
#> [148,]  53   7      1          0        1   120
#> [149,]  55   5      0          5        1   131
#> [150,]  54   7      1          0        1   141
#> [151,]  59  15      1         10        0   140
#> [152,]  58   9      1          0        1   180
#> [153,]  55   2      0          2        0   106
#> [154,]  59   9      1          1        1   125
#> [155,]  60  11      1          9        0   106
#> [156,]  59   3      0        180        0   120
#> [157,]  58   4      1          0        1   160
#> [158,]  57   2      0          2        1   120
#> [159,]  58  11      1          9        1   124
#> [160,]  55   5      1          0        1   160
#> [161,]  59   5      0        180        1   155
#> [162,]  58  26      1          0        1   189
#> [163,]  61   9      0          9        1   160
#> [164,]  58   4      1          3        0   120
#> [165,]  59   2      1          1        0   140
#> [166,]  58  14      1          6        0   190
#> [167,]  61   4      1          3        0   151
#> [168,]  61   3      1          2        1   102
#> [169,]  61  20      1         13        0   130
#> [170,]  57   2      1          0        1   116
#> [171,]  57   4      1          3        0   138
#> [172,]  61   3      0         17        0   143
#> [173,]  57   3      1          2        0   120
#> [174,]  58  19      1         13        1   140
#> [175,]  56  18      1         11        1   165
#> [176,]  59   9      1          0        1    80
#> [177,]  55   4      1          3        1   160
#> [178,]  58  11      0        172        1   135
#> [179,]  60  12      1          0        1   114
#> [180,]  55   9      1          7        1   135
#> [181,]  56   8      1          8        0   120
#> [182,]  59  11      1          8        1   190
#> [183,]  57   1      0          1        0   126
#> [184,]  57  15      1         13        1   110
#> [185,]  59   5      1          2        0   182
#> [186,]  59  10      0        180        0   160
#> [187,]  61   8      0         77        0   120
#> [188,]  62  10      1          0        1   153
#> [189,]  62   7      1          2        1   180
#> [190,]  57   3      1          0        0   100
#> [191,]  61  28      1          7        0   133
#> [192,]  61   7      0          7        1   150
#> [193,]  61   6      0          6        0   134
#> [194,]  59  13      1          2        0   198
#> [195,]  57  12      1          9        1   120
#> [196,]  62   4      1          0        0   160
#> [197,]  58   3      1          0        1   146
#> [198,]  58   2      0         30        0   202
#> [199,]  59   1      0        180        0   155
#> [200,]  61  13      0         13        0   120
#> [201,]  61   5      0          5        1   160
#> [202,]  58  11      1          9        0   179
#> [203,]  57   2      1          1        0   159
#> [204,]  62   1      1          0        1   172
#> [205,]  58   7      0        180        1   150
#> [206,]  63   3      1          1        0   180
#> [207,]  63   1      0        180        1   130
#> [208,]  61   7      0        180        0   135
#> [209,]  63   4      0        180        1   190
#> [210,]  63  15      1         10        1   126
#> [211,]  63   4      1          1        0   155
#> [212,]  60  18      1         13        0   132
#> [213,]  59   8      0        180        1   140
#> [214,]  58   9      1          9        0   110
#> [215,]  62   7      0          7        0   150
#> [216,]  59   1      0         22        1   162
#> [217,]  59   4      0        180        0   196
#> [218,]  60   7      1          5        1   141
#> [219,]  60   7      0          7        0   140
#> [220,]  59   5      1          1        0   148
#> [221,]  60   7      1          1        1    90
#> [222,]  65  13      0        180        1   100
#> [223,]  63   1      0          1        0   162
#> [224,]  63   1      0          1        0   130
#> [225,]  61  15      1         13        0   170
#> [226,]  59   4      0          4        0   149
#> [227,]  64  10      1          9        0   160
#> [228,]  62   6      0          6        0   120
#> [229,]  63  12      1         10        0   200
#> [230,]  59  10      0        180        1   130
#> [231,]  66   1      1          0        1   120
#> [232,]  63  10      1          0        1   148
#> [233,]  63  14      1          9        0   123
#> [234,]  66   3      1          1        0   127
#> [235,]  61  10      1          2        1   194
#> [236,]  64  32      1          9        1   160
#> [237,]  63  12      1          9        0   114
#> [238,]  63   7      0        180        0   120
#> [239,]  66   5      1          0        1   110
#> [240,]  65  10      1          8        1   120
#> [241,]  64   0      0          0        1    90
#> [242,]  60   6      0        180        0   130
#> [243,]  64  21      1         10        0   190
#> [244,]  61  12      1         11        0   154
#> [245,]  61   4      0        180        1   113
#> [246,]  63  16      1          7        1   110
#> [247,]  66   6      1          1        1   130
#> [248,]  63  12      0         12        1   150
#> [249,]  62   3      1          1        1   199
#> [250,]  65   3      1          0        1    80
#> [251,]  63   5      1          4        0   170
#> [252,]  62  13      1         11        0   180
#> [253,]  67  11      0         11        1   100
#> [254,]  64   2      0          2        0   201
#> [255,]  66  16      1         11        1   169
#> [256,]  62   9      0        180        0   145
#> [257,]  61  14      1          5        0   140
#> [258,]  61  15      1         10        0   130
#> [259,]  63   9      1          8        1   160
#> [260,]  63   3      1          2        0   120
#> [261,]  64  19      1          8        1   160
#> [262,]  65   8      1          0        1   140
#> [263,]  65  15      1         11        1   160
#> [264,]  68   5      1          4        1   150
#> [265,]  64  13      1         12        1   150
#> [266,]  66   7      1          0        1   115
#> [267,]  64  14      1         13        1   150
#> [268,]  65   3      0          3        0   105
#> [269,]  64   0      0          0        1   148
#> [270,]  67   4      1          3        0   130
#> [271,]  65   2      1          1        1   170
#> [272,]  68   1      0        180        1   166
#> [273,]  64  10      1          9        1   110
#> [274,]  63   7      1          0        0   162
#> [275,]  68   5      0          5        1    90
#> [276,]  68  18      0        180        1   260
#> [277,]  63   8      1          1        1   162
#> [278,]  65  18      1          3        0   120
#> [279,]  63   1      1          0        1   155
#> [280,]  63  10      0         18        1   130
#> [281,]  66  12      1         10        1   150
#> [282,]  65  15      1         12        1   150
#> [283,]  65   4      1          2        1   145
#> [284,]  63   2      0        180        0   150
#> [285,]  69  21      1         10        0   180
#> [286,]  66   9      1          8        0   130
#> [287,]  68  14      1         13        1   140
#> [288,]  65   8      1          0        1    90
#> [289,]  69   1      1          0        0   170
#> [290,]  68  10      1         10        1   150
#> [291,]  65   1      1          0        0   133
#> [292,]  67   7      1          4        1   130
#> [293,]  63   2      1          0        0    99
#> [294,]  67   2      0        180        0   184
#> [295,]  65   6      0          6        0    80
#> [296,]  65  10      1          1        1   148
#> [297,]  69   6      0         99        1   140
#> [298,]  65   4      1          1        0   130
#> [299,]  64   4      0        179        0   160
#> [300,]  70  15      1         12        1   132
#> [301,]  64  11      0         11        0   125
#> [302,]  64   4      0        180        1   140
#> [303,]  67   2      0         18        0   131
#> [304,]  66   7      1          5        1   131
#> [305,]  66   4      0        180        0   177
#> [306,]  68   4      1          0        1   160
#> [307,]  69   8      0         93        0   140
#> [308,]  66   6      0        180        0   140
#> [309,]  68  18      1          0        1   160
#> [310,]  65   6      0        101        1   115
#> [311,]  68   4      0          4        1   190
#> [312,]  71   3      0          5        0   112
#> [313,]  70   7      1          0        1   190
#> [314,]  71  20      1          0        1   160
#> [315,]  67   2      0        180        0   128
#> [316,]  66   9      1          3        1   151
#> [317,]  66   1      1          1        1   165
#> [318,]  70   4      1          0        1   180
#> [319,]  70  14      0        171        0   166
#> [320,]  66   4      0        180        0   130
#> [321,]  67  10      1          9        0   200
#> [322,]  67   6      1          4        0   130
#> [323,]  68  18      1         14        1   170
#> [324,]  65   2      0        180        0   130
#> [325,]  68   7      1          0        1   150
#> [326,]  69   3      1          2        0   151
#> [327,]  67  14      1         13        0   130
#> [328,]  65  14      1         13        1   150
#> [329,]  71   7      0          7        0   230
#> [330,]  66   2      0          2        1   228
#> [331,]  71   6      0         45        1   158
#> [332,]  69   5      0          5        1   142
#> [333,]  71   3      0        103        0   133
#> [334,]  69   3      0          3        1   130
#> [335,]  70  22      1         13        0   103
#> [336,]  67   5      0          5        0   130
#> [337,]  68   6      0        180        0   145
#> [338,]  69   8      1          5        1   195
#> [339,]  72   3      1          0        1   132
#> [340,]  69   8      1          7        1   108
#> [341,]  67   3      0        180        0   110
#> [342,]  67  14      0        172        1   140
#> [343,]  66   2      0        180        0   130
#> [344,]  67   7      1          4        0   122
#> [345,]  69   8      1          2        0   121
#> [346,]  67  13      1          9        0   130
#> [347,]  70   3      0        123        0   130
#> [348,]  70   9      0        180        1   142
#> [349,]  67  22      1          1        1   140
#> [350,]  69   1      0          1        1   110
#> [351,]  67   1      0          1        1    60
#> [352,]  67   4      0         60        1   136
#> [353,]  69   5      0         76        0   120
#> [354,]  72  13      1         11        1   195
#> [355,]  68  10      1          8        1   160
#> [356,]  66  24      1         13        0   130
#> [357,]  70  35      1          0        1   105
#> [358,]  72  30      1          0        1   145
#> [359,]  68   7      1          2        0   135
#> [360,]  71   6      0          9        0   120
#> [361,]  72  12      1         10        0   170
#> [362,]  67   8      0        180        1   170
#> [363,]  67   5      1          0        1   147
#> [364,]  67   9      0        180        0   158
#> [365,]  73  13      0        152        1   130
#> [366,]  70   5      0        180        0   150
#> [367,]  72   2      0          2        1   100
#> [368,]  72   6      1          5        0   115
#> [369,]  71   1      0        173        1   188
#> [370,]  69   3      0        180        0   220
#> [371,]  68   4      1          3        0   210
#> [372,]  72   5      0         28        0   120
#> [373,]  71   5      0        180        0   191
#> [374,]  69  16      1         10        1   140
#> [375,]  72  16      1          1        1   130
#> [376,]  70   4      0        180        0   180
#> [377,]  69   1      1          0        0   155
#> [378,]  73   6      1          0        1   270
#> [379,]  71   2      1          0        1   180
#> [380,]  73   7      0          7        1   140
#> [381,]  68  15      1         13        1   130
#> [382,]  70  13      1          9        0   100
#> [383,]  72   6      0        180        1   130
#> [384,]  73   0      0        180        1   161
#> [385,]  74   8      1          0        1    85
#> [386,]  73   4      0        180        1   154
#> [387,]  71   3      1          1        0   150
#> [388,]  71  15      1         11        0   165
#> [389,]  74  20      0         20        1   180
#> [390,]  68   9      0        180        1   120
#> [391,]  71  20      1         10        0   140
#> [392,]  73   3      1          0        1   136
#> [393,]  70   5      1          0        1   190
#> [394,]  71  17      1         11        0   160
#> [395,]  71   8      1          7        0   149
#> [396,]  73  10      1          8        0   106
#> [397,]  74   4      0          4        0   120
#> [398,]  73   4      0         58        1   160
#> [399,]  72   5      1          3        1   160
#> [400,]  70   3      0        180        1   154
#> [401,]  71   7      1          2        0   143
#> [402,]  72   8      1          0        1   140
#> [403,]  74   3      0          3        1   150
#> [404,]  73  17      1         11        0   140
#> [405,]  71  13      1          8        0   121
#> [406,]  69   2      1          1        1    80
#> [407,]  74   7      1          0        1   117
#> [408,]  69   7      0        180        1   144
#> [409,]  72  15      1         13        0   156
#> [410,]  70   8      0          8        0   120
#> [411,]  71  10      1          9        1   120
#> [412,]  75   1      0          1        0   133
#> [413,]  75   2      1          1        0   145
#> [414,]  72  10      1          9        1   160
#> [415,]  73  10      1         10        1   120
#> [416,]  74  15      1          9        1   179
#> [417,]  71   2      0         10        1   112
#> [418,]  73   1      0          1        1    80
#> [419,]  75   9      1          7        0   140
#> [420,]  75  13      1          1        1   130
#> [421,]  71   4      0          4        0   134
#> [422,]  72   1      1          1        0   168
#> [423,]  72   7      0         57        1   145
#> [424,]  73  10      0        180        0   162
#> [425,]  70   3      0          3        0   150
#> [426,]  73  12      1         12        1   140
#> [427,]  72   2      0        180        0   120
#> [428,]  72   4      1          0        1   197
#> [429,]  71   3      1          0        0   144
#> [430,]  73   5      0        180        0   126
#> [431,]  73   4      0        180        0   124
#> [432,]  74  34      1          8        1   233
#> [433,]  71  32      1         12        1   107
#> [434,]  72   5      0        180        0   154
#> [435,]  72   3      0        180        0   160
#> [436,]  77  11      0         11        1   150
#> [437,]  77   4      0          4        0   185
#> [438,]  75   3      1          1        0   180
#> [439,]  73  15      0         15        1   160
#> [440,]  71  16      0        180        0   140
#> [441,]  73  10      1         10        0   124
#> [442,]  74   7      0        180        1   150
#> [443,]  74   3      0          3        1   128
#> [444,]  76   1      0        180        0   114
#> [445,]  76   8      1          0        1   141
#> [446,]  73   6      0          6        1   114
#> [447,]  75  23      1         14        1   110
#> [448,]  74   2      0        180        0   190
#> [449,]  72   4      0         85        1   120
#> [450,]  76  17      1          0        1   200
#> [451,]  76  13      1         10        0   110
#> [452,]  75   7      0          7        0   190
#> [453,]  75   0      0          0        1   130
#> [454,]  73  13      1         11        0   195
#> [455,]  75  12      0         12        1   160
#> [456,]  74   8      1          0        1   105
#> [457,]  76   4      0          4        1   155
#> [458,]  74   2      0        180        0   111
#> [459,]  73   0      0        180        0   156
#> [460,]  72   5      0        180        0   120
#> [461,]  78  12      1         11        1   160
#> [462,]  76   5      0        180        0   185
#> [463,]  74  10      1          0        1   135
#> [464,]  76   5      1          0        1   167
#> [465,]  75   9      0        180        1   140
#> [466,]  73  33      1         12        1   175
#> [467,]  77  12      1          9        1   100
#> [468,]  77  12      0        180        0   130
#> [469,]  77   1      1          0        1    90
#> [470,]  76  12      1         11        1   120
#> [471,]  78   5      1          0        1   170
#> [472,]  73   7      1          0        0   174
#> [473,]  75   3      1          1        1   171
#> [474,]  74   9      1          8        0   200
#> [475,]  79  10      1          8        0   190
#> [476,]  74   2      1          0        1   130
#> [477,]  78  18      0         18        1   144
#> [478,]  76  29      0         47        0    90
#> [479,]  73   8      1          1        1   162
#> [480,]  73  11      1          2        1   110
#> [481,]  74  15      0        180        1   172
#> [482,]  78   8      1          6        1   110
#> [483,]  74   7      0          7        0   161
#> [484,]  78  32      1          9        1   198
#> [485,]  79   6      0        180        0   170
#> [486,]  78  15      0        180        1   270
#> [487,]  75  13      1          6        0   150
#> [488,]  74  10      1          8        0   135
#> [489,]  78  12      1          9        0   150
#> [490,]  78   2      1          1        0   130
#> [491,]  75   4      1          0        0   212
#> [492,]  77   2      1          0        1   143
#> [493,]  78  10      0        180        1   130
#> [494,]  75  11      1          4        0   162
#> [495,]  76   7      0         29        1   150
#> [496,]  79   8      0         32        1   120
#> [497,]  80   6      0          6        1   150
#> [498,]  76   3      1          0        1   140
#> [499,]  78  11      1          1        1   140
#> [500,]  79  11      0        180        0   160
#> [501,]  79   2      1          0        1   121
#> [502,]  78  14      1          0        1   140
#> [503,]  81   1      0          1        0   130
#> [504,]  76   4      0          4        1   160
#> [505,]  79   4      0          4        1   125
#> [506,]  76  10      1          8        0   180
#> [507,]  76  12      1         10        1   127
#> [508,]  80   3      1          0        1   120
#> [509,]  75   2      1          1        1   204
#> [510,]  78  11      0        180        1   135
#> [511,]  76   1      0          1        1   140
#> [512,]  76   1      0          1        1    90
#> [513,]  78   7      1          0        1   110
#> [514,]  79   3      0          3        0   120
#> [515,]  77   7      0        180        1   170
#> [516,]  77   6      0          6        1   144
#> [517,]  81   1      0        180        0   120
#> [518,]  80  15      1         12        1   150
#> [519,]  77   9      1          4        0   141
#> [520,]  80  40      1          0        1   138
#> [521,]  78   4      0         59        1   112
#> [522,]  80  17      1         12        0   100
#> [523,]  76   7      0        161        0   151
#> [524,]  79  10      0         10        1   120
#> [525,]  80  15      1          0        1    90
#> [526,]  81   4      1          2        1   126
#> [527,]  79  28      0        164        0   100
#> [528,]  80   6      0        173        1   160
#> [529,]  78  32      0        180        1   130
#> [530,]  81   3      0        180        0   184
#> [531,]  81   2      0        175        0   172
#> [532,]  78   7      0          7        1   147
#> [533,]  77  13      1          0        1   190
#> [534,]  78  26      1          5        0   194
#> [535,]  76   1      0        166        0   131
#> [536,]  78  20      1          0        1   109
#> [537,]  80   1      0          1        0   100
#> [538,]  78   3      1          1        1   152
#> [539,]  77  10      1          8        1   130
#> [540,]  82   3      1          1        1   144
#> [541,]  79   6      0          6        0   152
#> [542,]  80   6      1          0        1   119
#> [543,]  80   5      0          5        1   130
#> [544,]  82   1      1          0        1    82
#> [545,]  79  10      0        180        1   150
#> [546,]  79   1      0        125        0   193
#> [547,]  82  21      1          2        0   155
#> [548,]  84  22      1         10        0   180
#> [549,]  80   6      0          6        1   110
#> [550,]  83   9      1          5        1   170
#> [551,]  82   5      0        180        0   110
#> [552,]  83   4      0        103        0    97
#> [553,]  81  11      1          8        0   160
#> [554,]  78  23      1         10        1   145
#> [555,]  79   4      0          4        1   183
#> [556,]  78   9      1          4        1   120
#> [557,]  82   8      1          1        0   128
#> [558,]  80   7      1          0        1   146
#> [559,]  81  20      1          9        0   170
#> [560,]  83   8      0          8        0   115
#> [561,]  80   6      1          0        1   150
#> [562,]  81   8      0        180        0   146
#> [563,]  79   7      0        177        0   197
#> [564,]  79   0      1          0        1    96
#> [565,]  85   4      0        180        0    90
#> [566,]  81   2      1          1        0   198
#> [567,]  82   6      0        128        1   100
#> [568,]  84   5      0        180        1   203
#> [569,]  84   4      0          4        1    85
#> [570,]  81   1      0          1        1   150
#> [571,]  84   1      0         38        1   205
#> [572,]  81   4      0         90        1   138
#> [573,]  79   9      1          8        0   150
#> [574,]  80  13      1          8        1   140
#> [575,]  84   4      0         89        1   129
#> [576,]  79   4      0          4        1    60
#> [577,]  80   6      0         71        1   189
#> [578,]  83   1      0          1        1   100
#> [579,]  80  30      1         13        0   220
#> [580,]  83   3      0        114        0    98
#> [581,]  81  14      1         12        1   128
#> [582,]  83   2      0        154        0   130
#> [583,]  82   0      0          2        1   100
#> [584,]  81   4      0          4        0   175
#> [585,]  84  15      1         13        1   110
#> [586,]  81   1      0          1        1   145
#> [587,]  81  12      0         12        1   163
#> [588,]  81   4      0          4        0   160
#> [589,]  83  12      1          2        1   170
#> [590,]  82   3      1          2        0   130
#> [591,]  83   7      0        126        0   135
#> [592,]  86   3      0          3        1   140
#> [593,]  82   9      0        180        1   134
#> [594,]  81  13      0        180        0   152
#> [595,]  85   3      0          3        1   118
#> [596,]  81   4      0        180        0   160
#> [597,]  83   9      0        180        1   149
#> [598,]  82   1      0        180        1   193
#> [599,]  83   4      0          4        0   130
#> [600,]  86  12      1          0        1   132
#> [601,]  82  14      1         11        1   103
#> [602,]  86   6      1          0        1   140
#> [603,]  84   3      1          2        0   125
#> [604,]  88  14      1          3        1   130
#> [605,]  84   3      0          3        1   121
#> [606,]  83  13      1         12        0   170
#> [607,]  84   7      1          2        0   148
#> [608,]  87   2      0        180        0   113
#> [609,]  84   9      0         92        1   110
#> [610,]  86  13      0        177        0   163
#> [611,]  85   3      0          3        1   113
#> [612,]  86   6      0          6        1   117
#> [613,]  84  13      0         62        1   100
#> [614,]  86   6      1          1        0   112
#> [615,]  83  20      1          3        1   150
#> [616,]  85  22      0         22        1   184
#> [617,]  83   9      0         65        1   150
#> [618,]  86   9      1          7        1   142
#> [619,]  86   6      0         46        0   173
#> [620,]  88   3      0        115        0   110
#> [621,]  88   2      0        180        1    68
#> [622,]  83   3      0          3        1   130
#> [623,]  87   8      0          8        1   157
#> [624,]  86  15      1          8        1   109
#> [625,]  88   4      0          4        0    86
#> [626,]  89   4      0          4        1   153
#> [627,]  89   5      0        119        1   140
#> [628,]  87   6      0        180        1   110
#> [629,]  87   1      0          1        0   170
#> [630,]  84   8      0        180        1   119
#> [631,]  85   8      0          8        1   136
#> [632,]  84   2      0        110        1   174
#> [633,]  87  29      0         29        1    97
#> [634,]  87  15      1          9        1   138
#> [635,]  84   0      0        180        1   136
#> [636,]  90  14      0         14        1   100
#> [637,]  88   1      0          1        0   135
#> [638,]  91   8      0          8        0   100
#> [639,]  87   6      1          0        0   125
#> [640,]  88   7      0         24        0   119
#> [641,]  87   6      0        126        1   168
#> [642,]  86  10      0        180        1   137
#> [643,]  90   4      1          0        0   121
#> [644,]  91   1      0          1        1    74
#> [645,]  88   3      1          2        0   159
#> [646,]  91   3      0         33        1   137
#> [647,]  88   5      0        158        0   100
#> [648,]  87   7      0         74        1   105
#> [649,]  89  12      1          0        1   130
#> [650,]  89   2      0        168        0   118
#> [651,]  91   5      0        169        1   176
#> [652,]  89  52      0         52        1   130
#> [653,]  92   7      0          7        1   110
#> [654,]  91   4      1          0        1   120
#> [655,]  94   6      0         50        0    78
#> [656,]  90   1      0          1        1   118
#> [657,]  91   2      0          2        1   116
#> [658,]  94   8      0          8        1   142
#> [659,]  91   1      0        180        0   158
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  96   3      0         12        1    97
#> [663,]  95   8      1          5        1   150
#> [664,]  94   3      0         26        1   144
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 115.0  180.0+   5.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+   2.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+  73.0    5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+
#>  [61]   7.0  180.0+ 180.0+ 179.0+ 180.0+ 179.0+ 180.0+ 180.0+   4.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+   4.0+ 180.0+ 180.0+
#>  [81]  77.0  180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0 
#>  [91] 180.0+ 166.0+  99.0   16.0+ 180.0+ 152.0+   7.0+ 180.0+ 180.0+  13.0+
#> [101] 180.0+ 174.0+  28.0    6.0+   1.0  180.0+ 175.0+ 180.0+   2.0  180.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0  180.0+
#> [121] 180.0+ 180.0+   2.0    3.0+ 180.0+ 180.0+ 180.0+ 140.0  180.0+   1.0 
#> [131] 165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+
#> [141] 180.0+  15.0  166.0+   5.0+ 180.0+   4.0+ 147.0+ 180.0+   5.0+ 180.0+
#> [151] 180.0+   9.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+
#> [161] 180.0+ 180.0+   9.0+ 180.0+ 180.0+ 171.0+ 180.0+   3.0  180.0+ 180.0+
#> [171] 180.0+  17.0    3.0+  19.0  180.0+   9.0+ 180.0+ 172.0+ 172.0+  24.0 
#> [181]   8.0  180.0+   1.0+  15.0  180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+
#> [191]  94.0    7.0    6.0  180.0+ 180.0+ 180.0+   3.0+  30.0  180.0+  13.0+
#> [201]   5.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211]   4.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+  84.0    7.0+ 180.0+
#> [221] 180.0+ 180.0+   1.0    1.0  180.0+   4.0+ 167.0    6.0+ 180.0+ 180.0+
#> [231] 180.0+ 180.0+  14.0+   3.0+  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+
#> [241]   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   3.0 
#> [251] 180.0+ 180.0+  11.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+
#> [261] 103.0   15.0  180.0+   5.0+  13.0  179.0+  14.0+   3.0    0.5+ 180.0+
#> [271] 175.0+ 180.0+ 180.0+   7.0+   5.0  180.0+ 180.0+ 123.0+   1.0+  18.0 
#> [281]  80.0   15.0+   4.0+ 180.0+ 174.0+ 180.0+ 180.0+   8.0+ 175.0   10.0 
#> [291] 180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+  99.0  180.0+ 179.0+ 180.0+
#> [301]  11.0+ 180.0+  18.0    7.0+ 180.0+ 180.0+  93.0  180.0+  18.0+ 101.0 
#> [311]   4.0    5.0    7.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 171.0  180.0+
#> [321] 174.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  14.0+   7.0+   2.0 
#> [331]  45.0    5.0+ 103.0    3.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [341] 180.0+ 172.0+ 180.0+   7.0    8.0+  13.0+ 123.0  180.0+  51.0    1.0 
#> [351]   1.0   60.0   76.0  132.0   10.0+ 180.0+ 180.0+ 162.0    7.0+   9.0 
#> [361]  12.0  180.0+ 180.0+ 180.0+ 152.0  180.0+   2.0  180.0+ 173.0+ 180.0+
#> [371] 180.0+  28.0  180.0+  16.0+  16.0+ 180.0+ 180.0+   6.0  180.0+   7.0+
#> [381]  15.0   13.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+  20.0  180.0+
#> [391]  20.0  180.0+ 180.0+ 180.0+   8.0   87.0    4.0+  58.0  180.0+ 180.0+
#> [401] 180.0+ 180.0+   3.0  180.0+ 175.0    2.0  180.0+ 180.0+ 180.0+   8.0+
#> [411] 179.0+   1.0  180.0+ 159.0   15.0  180.0+  10.0    1.0  180.0+  13.0 
#> [421]   4.0+   1.0   57.0  180.0+   3.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [431] 180.0+  34.0  177.0+ 180.0+ 180.0+  11.0+   4.0+ 180.0+  15.0+ 180.0+
#> [441]  10.0  180.0+   3.0  180.0+ 180.0+   6.0  180.0+ 180.0+  85.0   17.0+
#> [451] 174.0+   7.0    0.5  180.0+  12.0  180.0+   4.0  180.0+ 180.0+ 180.0+
#> [461]  12.0  180.0+ 180.0+ 180.0+ 180.0+  33.0  180.0+ 180.0+   1.0   12.0 
#> [471] 180.0+   7.0+   3.0  168.0+ 180.0+ 176.0+  18.0   47.0  180.0+  11.0 
#> [481] 180.0+   8.0+   7.0   32.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [491]   4.0+   2.0  180.0+ 152.0+  29.0   32.0    6.0    3.0+ 180.0+ 180.0+
#> [501] 180.0+ 180.0+   1.0    4.0    4.0   10.0+ 180.0+   3.0+   2.0+ 180.0+
#> [511]   1.0    1.0   43.0    3.0  180.0+   6.0  180.0+ 180.0+  71.0   40.0 
#> [521]  59.0   17.0  161.0   10.0+ 180.0+  93.0  164.0  173.0  180.0+ 180.0+
#> [531] 175.0+   7.0+  22.0  171.0+ 166.0+  20.0+   1.0    3.0+  10.0  180.0+
#> [541]   6.0+   6.0    5.0    1.0  180.0+ 125.0  180.0+ 180.0+   6.0    9.0+
#> [551] 180.0+ 103.0  180.0+  70.0    4.0  180.0+ 180.0+   7.0+  20.0    8.0+
#> [561] 180.0+ 180.0+ 177.0+   0.5  180.0+ 180.0+ 128.0  180.0+   4.0    1.0 
#> [571]  38.0   90.0  180.0+ 180.0+  89.0    4.0   71.0    1.0   30.0  114.0 
#> [581] 180.0+ 154.0    2.0    4.0+ 180.0+   1.0   12.0    4.0+  77.0    3.0 
#> [591] 126.0    3.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [601] 174.0    6.0  180.0+  14.0    3.0   13.0  180.0+ 180.0+  92.0  177.0 
#> [611]   3.0+   6.0+  62.0    6.0+  20.0   22.0   65.0   11.0   46.0  115.0 
#> [621] 180.0+   3.0+   8.0+ 180.0+   4.0    4.0  119.0  180.0+   1.0+ 180.0+
#> [631]   8.0  110.0   29.0  180.0+ 180.0+  14.0    1.0+   8.0   25.0   24.0 
#> [641] 126.0  180.0+   4.0    1.0   75.0   33.0  158.0   74.0  180.0+ 168.0 
#> [651] 169.0   52.0    7.0    4.0   50.0    1.0+   2.0    8.0+ 180.0+  16.0 
#> [661]  67.0   12.0    8.0   26.0   53.0    7.0+   0.5  180.0+   3.0   15.0+
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
#>   0.8502038 
```
