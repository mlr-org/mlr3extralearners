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
#> min 0.00335    45   2.822 0.1393       6
#> 1se 0.06567    13   2.945 0.1328       5
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
#>   [8,]  38  13      1          0        1   161
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  12      1          8        1   120
#>  [12,]  38  16      1         10        0   160
#>  [13,]  38  12      1         11        1    92
#>  [14,]  40  12      1          9        0   153
#>  [15,]  37   1      1          0        1   146
#>  [16,]  40   2      1          1        1   148
#>  [17,]  42   2      0        180        1   100
#>  [18,]  42   2      0          2        0   140
#>  [19,]  40   6      0        180        1   138
#>  [20,]  40  11      1         10        1   120
#>  [21,]  42   2      0        180        0   100
#>  [22,]  43   3      1          0        1   100
#>  [23,]  42   4      0        180        0   162
#>  [24,]  42  15      1         13        1   125
#>  [25,]  42  12      1         10        1   170
#>  [26,]  44   5      1          1        0   170
#>  [27,]  41  10      1          8        0   150
#>  [28,]  44   3      0        180        0   141
#>  [29,]  41  13      1          1        0   140
#>  [30,]  45   6      0        180        1   170
#>  [31,]  41   5      1          4        1   141
#>  [32,]  44   2      1          1        1   150
#>  [33,]  43   2      0        180        1   140
#>  [34,]  45   2      0        180        1   140
#>  [35,]  46   2      1          1        0   126
#>  [36,]  45   3      0        150        0   130
#>  [37,]  46   7      1          2        0   166
#>  [38,]  45   4      1          0        0   124
#>  [39,]  43  10      0        180        0   185
#>  [40,]  47   6      1          0        1   116
#>  [41,]  46  13      1         10        0   100
#>  [42,]  44   0      1          0        1    96
#>  [43,]  47   4      1          3        1   160
#>  [44,]  43   3      1          0        1   124
#>  [45,]  45   8      1          0        1   117
#>  [46,]  49   5      0         73        1   136
#>  [47,]  45   5      0          5        0   141
#>  [48,]  46   2      1          1        1   122
#>  [49,]  46   6      1          0        1   100
#>  [50,]  44   4      1          0        1   114
#>  [51,]  44   9      1          8        1   135
#>  [52,]  45   5      0        180        1   190
#>  [53,]  46   5      1          3        0   130
#>  [54,]  47   5      1          3        1   130
#>  [55,]  47   9      1          6        0   170
#>  [56,]  46   3      1          0        1   119
#>  [57,]  49   4      0        180        0   117
#>  [58,]  50   1      1          0        1   129
#>  [59,]  48   2      1          0        0   184
#>  [60,]  47   7      0        180        0   145
#>  [61,]  50   4      1          1        0   125
#>  [62,]  50   6      1          2        1   140
#>  [63,]  49   7      1          7        1   110
#>  [64,]  46   3      1          1        1   140
#>  [65,]  50   7      0        180        1   110
#>  [66,]  49   2      0          2        0   105
#>  [67,]  51   1      0          1        1   145
#>  [68,]  49  15      1         11        1   160
#>  [69,]  49  23      0        179        1   112
#>  [70,]  50   7      1          0        1    92
#>  [71,]  50   9      0        180        0   130
#>  [72,]  49   7      1          4        1    90
#>  [73,]  47   8      0        180        0   160
#>  [74,]  47   6      0        180        1   162
#>  [75,]  51   8      0        180        1   140
#>  [76,]  52   2      0        180        0   155
#>  [77,]  46   3      0        180        1   120
#>  [78,]  46   1      1          1        0   145
#>  [79,]  50   4      1          1        0   150
#>  [80,]  48   7      1          0        1   110
#>  [81,]  53   8      0         36        1   160
#>  [82,]  48  17      1         10        0   111
#>  [83,]  47   2      1          1        0   110
#>  [84,]  49   9      1          3        0   102
#>  [85,]  49  15      0        180        1   160
#>  [86,]  54  17      1         12        1   102
#>  [87,]  53   5      0         77        0   159
#>  [88,]  53   7      1          0        0   199
#>  [89,]  54   6      1          3        0   129
#>  [90,]  51   3      1          1        0   140
#>  [91,]  50   2      0          5        1   106
#>  [92,]  50  14      1         13        0   170
#>  [93,]  53   8      1          7        0   160
#>  [94,]  53   4      0          4        0   140
#>  [95,]  52  14      1          7        1   200
#>  [96,]  48   6      0        180        0   160
#>  [97,]  53   4      1          0        1   156
#>  [98,]  51  13      0         99        1   160
#>  [99,]  54   9      1          0        1   138
#> [100,]  54  23      1         10        0   131
#> [101,]  52   7      1          2        0   154
#> [102,]  55   4      1          2        0   150
#> [103,]  51  13      1         11        0   145
#> [104,]  54   4      1          0        1   121
#> [105,]  52   4      0        180        0   183
#> [106,]  50   3      0        174        1   153
#> [107,]  55  28      1         13        1   160
#> [108,]  49   6      1          0        1   130
#> [109,]  49   1      0          1        1   110
#> [110,]  53   8      1          0        1   130
#> [111,]  50   7      1          0        1   127
#> [112,]  56   4      1          1        1   130
#> [113,]  52   5      0        175        1   117
#> [114,]  55   1      0        180        0   127
#> [115,]  55   2      0          2        0   145
#> [116,]  54   1      0        180        0   162
#> [117,]  56   3      0        180        1   193
#> [118,]  56   2      0        180        0   132
#> [119,]  55   5      1          4        1   120
#> [120,]  52   8      0        180        0   119
#> [121,]  55   6      0        180        0   170
#> [122,]  52  16      0         16        0   152
#> [123,]  53  10      1          9        0   172
#> [124,]  52  16      1         14        0   170
#> [125,]  53   4      0        180        1   150
#> [126,]  55   6      0        180        1   100
#> [127,]  55   6      1          5        1   138
#> [128,]  54  12      1          0        1   190
#> [129,]  55   2      0        134        1   140
#> [130,]  54   3      0        180        0   128
#> [131,]  54   7      1          2        0   129
#> [132,]  54   2      1          1        0   135
#> [133,]  52   9      1          3        0   170
#> [134,]  57   5      1          3        1   138
#> [135,]  57   1      0        180        1   156
#> [136,]  56   4      1          0        1   140
#> [137,]  52   2      0        180        0   140
#> [138,]  55  11      1          7        0   104
#> [139,]  53   3      1          0        1   200
#> [140,]  57  10      0        180        1   170
#> [141,]  58   8      0          8        1   130
#> [142,]  55   3      1          1        1   156
#> [143,]  57   0      0          0        1   150
#> [144,]  59   3      1          1        0   172
#> [145,]  57   4      0        180        1   119
#> [146,]  53  15      1         10        1   130
#> [147,]  54  17      1          8        1   227
#> [148,]  55  13      0        166        1   140
#> [149,]  56   5      0          5        1   150
#> [150,]  54  23      1          8        0   120
#> [151,]  57   4      1          2        1   185
#> [152,]  53   4      0        147        1   145
#> [153,]  53   7      1          0        1   120
#> [154,]  55   3      1          2        0   140
#> [155,]  56   4      0          4        0   164
#> [156,]  56   7      1          5        1   120
#> [157,]  55   2      0          2        0   106
#> [158,]  59   9      1          1        1   125
#> [159,]  57   1      0        180        0   148
#> [160,]  60  11      1          9        0   106
#> [161,]  59   3      0        180        0   120
#> [162,]  58   4      1          0        1   160
#> [163,]  57   2      0          2        1   120
#> [164,]  60   5      1          1        0   138
#> [165,]  59   6      1          0        1   140
#> [166,]  59   5      0        180        1   155
#> [167,]  58  26      1          0        1   189
#> [168,]  60   0      1          0        1    80
#> [169,]  59   2      1          1        0   140
#> [170,]  58   8      0        161        1   140
#> [171,]  61   4      1          3        0   151
#> [172,]  61   9      1          8        0   150
#> [173,]  61   3      1          2        1   102
#> [174,]  58   1      0          1        1   100
#> [175,]  57  13      1         10        0   110
#> [176,]  58  10      0         10        1   150
#> [177,]  61   3      0         17        0   143
#> [178,]  56  14      0         45        0   130
#> [179,]  57   3      1          2        0   120
#> [180,]  58  19      1         13        1   140
#> [181,]  56  18      1         11        1   165
#> [182,]  58  11      0        172        1   135
#> [183,]  60  12      1          0        1   114
#> [184,]  55   9      1          7        1   135
#> [185,]  61   4      1          0        1   115
#> [186,]  56   8      1          8        0   120
#> [187,]  61  13      1         12        1   130
#> [188,]  59  11      1          8        1   190
#> [189,]  57  15      1         13        1   110
#> [190,]  59   5      1          2        0   182
#> [191,]  58   5      1          1        1   135
#> [192,]  59  10      0        180        0   160
#> [193,]  61   8      0         77        0   120
#> [194,]  58   8      1          5        0   152
#> [195,]  62  10      1          0        1   153
#> [196,]  62   7      1          2        1   180
#> [197,]  57   3      1          0        0   100
#> [198,]  58   8      1          3        1   150
#> [199,]  57   7      0        169        0   180
#> [200,]  61   7      0          7        1   150
#> [201,]  60   7      0          7        0   147
#> [202,]  59  13      1          2        0   198
#> [203,]  62   4      1          0        0   160
#> [204,]  60  17      1          8        1   140
#> [205,]  62   4      1          3        0   173
#> [206,]  59   1      0        180        0   155
#> [207,]  59  16      1          9        1   133
#> [208,]  61  13      0         13        0   120
#> [209,]  57  18      1          9        1    93
#> [210,]  61   5      0          5        1   160
#> [211,]  58  11      1          9        0   179
#> [212,]  57   2      1          1        0   159
#> [213,]  62  17      1         10        1   180
#> [214,]  62   1      1          0        1   172
#> [215,]  58   7      0        180        1   150
#> [216,]  63   3      1          1        0   180
#> [217,]  63   1      0        180        1   130
#> [218,]  61   7      0        180        0   135
#> [219,]  63   4      1          3        0   222
#> [220,]  62   3      0        180        1   105
#> [221,]  63   4      0        180        1   190
#> [222,]  63  15      1         10        1   126
#> [223,]  64   4      0        180        0   130
#> [224,]  63   4      1          1        0   155
#> [225,]  60  18      1         13        0   132
#> [226,]  59   8      0        180        1   140
#> [227,]  61   9      1          9        1   150
#> [228,]  62   7      0          7        0   150
#> [229,]  58   2      0        180        0   127
#> [230,]  59   4      0        180        0   196
#> [231,]  59   5      1          1        0   148
#> [232,]  60   7      1          1        1    90
#> [233,]  65  13      0        180        1   100
#> [234,]  63   1      0          1        0   162
#> [235,]  61  15      1         13        0   170
#> [236,]  60   3      0          3        0   168
#> [237,]  59  10      0        180        1   130
#> [238,]  60   8      0         17        1   130
#> [239,]  64  12      1         11        0   160
#> [240,]  66   1      1          0        1   120
#> [241,]  63  10      1          0        1   148
#> [242,]  63  14      1          9        0   123
#> [243,]  63   4      1          3        0   162
#> [244,]  66   3      1          1        0   127
#> [245,]  63   7      0        180        0   120
#> [246,]  65  10      1          8        1   120
#> [247,]  64   0      0          0        1    90
#> [248,]  64  21      1         10        0   190
#> [249,]  61  12      1         11        0   154
#> [250,]  63  16      1          7        1   110
#> [251,]  64   7      0        180        1   120
#> [252,]  66   6      1          1        1   130
#> [253,]  65   6      0          9        0   112
#> [254,]  65   3      1          0        1    80
#> [255,]  63   5      1          4        0   170
#> [256,]  63   2      1          1        0   180
#> [257,]  62  13      1         11        0   180
#> [258,]  64   2      0          2        0   201
#> [259,]  66  18      1          5        0   142
#> [260,]  66  16      1         11        1   169
#> [261,]  62   9      0        180        0   145
#> [262,]  61  14      1          5        0   140
#> [263,]  63   9      1          8        1   160
#> [264,]  63   3      1          2        0   120
#> [265,]  63   2      1          0        0   140
#> [266,]  64  19      1          8        1   160
#> [267,]  65   8      1          0        1   140
#> [268,]  67   6      0        180        1   170
#> [269,]  65  15      1         11        1   160
#> [270,]  68   5      1          4        1   150
#> [271,]  64  13      1         12        1   150
#> [272,]  64   6      1          0        1   125
#> [273,]  66   7      1          0        1   115
#> [274,]  66  13      1          0        0   118
#> [275,]  64  14      1         13        1   150
#> [276,]  66   3      1          0        1   135
#> [277,]  66   6      1          0        1   140
#> [278,]  65   2      1          1        1   170
#> [279,]  68   1      0        180        1   166
#> [280,]  63   7      1          0        0   162
#> [281,]  67   8      1          1        1   130
#> [282,]  63  10      0         16        1   160
#> [283,]  66  14      0        180        0   130
#> [284,]  64   1      0          1        1   120
#> [285,]  63   8      1          1        1   162
#> [286,]  65  18      1          3        0   120
#> [287,]  63   1      1          0        1   155
#> [288,]  63  10      0         18        1   130
#> [289,]  67  11      0         11        0   150
#> [290,]  68  14      0         79        0   172
#> [291,]  66  12      1         10        1   150
#> [292,]  65  15      1         12        1   150
#> [293,]  66  11      1          0        0   100
#> [294,]  65   4      1          2        1   145
#> [295,]  69  12      0         15        1   140
#> [296,]  66  15      1         13        1   160
#> [297,]  63   2      0        180        0   150
#> [298,]  65  11      1          6        0   130
#> [299,]  69  21      1         10        0   180
#> [300,]  69   6      0        180        1   100
#> [301,]  63   8      0        180        1   120
#> [302,]  68  14      1         13        1   140
#> [303,]  66   3      0          3        1   138
#> [304,]  69   1      1          0        0   170
#> [305,]  68  10      1         10        1   150
#> [306,]  65   1      1          0        0   133
#> [307,]  67   7      1          4        1   130
#> [308,]  63   2      1          0        0    99
#> [309,]  67   2      0        180        0   184
#> [310,]  65   6      0          6        0    80
#> [311,]  65  10      1          1        1   148
#> [312,]  66  19      1         12        1   150
#> [313,]  67  12      1         12        0   160
#> [314,]  69   6      0         99        1   140
#> [315,]  65   4      1          1        0   130
#> [316,]  64   4      0        179        0   160
#> [317,]  70  15      1         12        1   132
#> [318,]  64  11      0         11        0   125
#> [319,]  64   4      0        180        1   140
#> [320,]  64   0      1          0        1   118
#> [321,]  67   2      0         18        0   131
#> [322,]  66   4      0        180        0   177
#> [323,]  69   4      1          3        1   150
#> [324,]  65  13      1         12        1   130
#> [325,]  69   8      0         93        0   140
#> [326,]  65   1      0          1        1   120
#> [327,]  68  18      1          0        1   160
#> [328,]  65   6      0        101        1   115
#> [329,]  68   4      0          4        1   190
#> [330,]  71   3      0          5        0   112
#> [331,]  70   7      1          0        1   190
#> [332,]  71  20      1          0        1   160
#> [333,]  67   2      0        180        0   128
#> [334,]  66   9      1          3        1   151
#> [335,]  66   1      1          1        1   165
#> [336,]  70   4      1          0        1   180
#> [337,]  69   8      0        180        1   153
#> [338,]  70  14      0        171        0   166
#> [339,]  67  10      1          9        0   200
#> [340,]  67   6      1          4        0   130
#> [341,]  69   0      0          0        1   148
#> [342,]  67  14      1         13        0   130
#> [343,]  65  14      1         13        1   150
#> [344,]  69   8      0        180        1   180
#> [345,]  71   7      0          7        0   230
#> [346,]  66   2      0          2        1   228
#> [347,]  71   6      0         45        1   158
#> [348,]  69   5      0          5        1   142
#> [349,]  70  22      1         13        0   103
#> [350,]  67   1      0         36        1   104
#> [351,]  68   6      0        180        0   145
#> [352,]  69   8      1          5        1   195
#> [353,]  69   6      1          4        1   174
#> [354,]  72   3      1          0        1   132
#> [355,]  72   7      0          7        1   110
#> [356,]  67   3      0        180        0   110
#> [357,]  69  19      0        180        0   130
#> [358,]  67  14      0        172        1   140
#> [359,]  69  11      1          0        1   120
#> [360,]  69   4      1          3        0   132
#> [361,]  68   2      0          7        1   130
#> [362,]  67  13      1          9        0   130
#> [363,]  72   5      1          4        0   170
#> [364,]  67  22      1          1        1   140
#> [365,]  68   3      0         19        0   135
#> [366,]  69   1      0          1        1   110
#> [367,]  67   1      0          1        1    60
#> [368,]  67   4      0         60        1   136
#> [369,]  67   8      1          0        1   130
#> [370,]  68  10      1          8        1   160
#> [371,]  70  35      1          0        1   105
#> [372,]  70   7      0          7        0   102
#> [373,]  68   7      1          2        0   135
#> [374,]  73  20      1          0        1   170
#> [375,]  71   6      0          9        0   120
#> [376,]  69  10      1          6        1   120
#> [377,]  70  11      0        180        1   210
#> [378,]  67   5      1          0        1   147
#> [379,]  67   9      0        180        0   158
#> [380,]  73  13      0        152        1   130
#> [381,]  72   2      0          2        1   100
#> [382,]  68  23      0        180        1   220
#> [383,]  70   3      0        180        0   121
#> [384,]  69   3      0        180        0   220
#> [385,]  71   3      1          2        0   150
#> [386,]  68   4      1          3        0   210
#> [387,]  72   5      0         28        0   120
#> [388,]  71   5      0        180        0   191
#> [389,]  73   6      0        180        1   117
#> [390,]  69   8      1          1        0   164
#> [391,]  68   7      0        180        1   130
#> [392,]  72  16      1          1        1   130
#> [393,]  70   4      0        180        0   180
#> [394,]  69   1      1          0        0   155
#> [395,]  73   6      1          0        1   270
#> [396,]  71   2      1          0        1   180
#> [397,]  73   7      0          7        1   140
#> [398,]  68  15      1         13        1   130
#> [399,]  70  13      1          9        0   100
#> [400,]  72   6      0        180        1   130
#> [401,]  73   0      0        180        1   161
#> [402,]  74   8      1          0        1    85
#> [403,]  69   2      1          0        1   110
#> [404,]  71   3      1          1        0   150
#> [405,]  68   9      0        180        1   120
#> [406,]  71  20      1         10        0   140
#> [407,]  73   3      1          0        1   136
#> [408,]  70   5      1          0        1   190
#> [409,]  71  17      1         11        0   160
#> [410,]  71   3      1          2        1   190
#> [411,]  73  10      1          8        0   106
#> [412,]  69  12      1          1        1   149
#> [413,]  73   6      0        180        0   110
#> [414,]  72  15      1          0        1   150
#> [415,]  71   7      1          2        0   143
#> [416,]  74   3      0          3        1   150
#> [417,]  73  17      1         11        0   140
#> [418,]  71  13      1          8        0   121
#> [419,]  69   2      1          1        1    80
#> [420,]  70   4      1          0        1   140
#> [421,]  71  14      1         13        1   170
#> [422,]  74   7      1          0        1   117
#> [423,]  72  10      1          8        1   153
#> [424,]  69   7      0        180        1   144
#> [425,]  72  15      1         13        0   156
#> [426,]  71  10      1          9        1   120
#> [427,]  75   1      0          1        0   133
#> [428,]  75   2      1          1        0   145
#> [429,]  74  15      1          9        1   179
#> [430,]  71   2      0         10        1   112
#> [431,]  71   4      0          4        0   134
#> [432,]  72  11      0         11        1   140
#> [433,]  73  12      1         12        1   140
#> [434,]  72   2      0        180        0   120
#> [435,]  72   4      1          0        1   197
#> [436,]  73   5      0        180        0   126
#> [437,]  73   4      0        180        0   124
#> [438,]  76   3      1          0        1   120
#> [439,]  76   5      0          5        1   130
#> [440,]  77  11      0         11        1   150
#> [441,]  75   3      1          1        0   180
#> [442,]  72   7      1          2        0   142
#> [443,]  71  16      0        180        0   140
#> [444,]  73  10      1         10        0   124
#> [445,]  74   7      0        180        1   150
#> [446,]  74   3      0          3        1   128
#> [447,]  76   1      0        180        0   114
#> [448,]  76   8      1          0        1   141
#> [449,]  73   6      0          6        1   114
#> [450,]  75  23      1         14        1   110
#> [451,]  72   4      0         85        1   120
#> [452,]  72   4      1          3        0   160
#> [453,]  73   4      1          3        1   125
#> [454,]  76  13      1         10        0   110
#> [455,]  75   4      1          0        1   122
#> [456,]  75   7      0          7        0   190
#> [457,]  75  12      0         12        1   160
#> [458,]  74   8      1          0        1   105
#> [459,]  76  13      1          8        1   148
#> [460,]  75   4      1          2        1   188
#> [461,]  74   6      0        180        0   160
#> [462,]  76   4      0          4        1   155
#> [463,]  75   1      0          1        1   125
#> [464,]  73   1      0         52        1   105
#> [465,]  73   0      0        180        0   156
#> [466,]  72   5      0        180        0   120
#> [467,]  78  12      1         11        1   160
#> [468,]  76  44      1         10        0   105
#> [469,]  76   5      0        180        0   185
#> [470,]  76   5      1          0        1   167
#> [471,]  74   8      1          8        1   170
#> [472,]  73  33      1         12        1   175
#> [473,]  77   5      1          0        0   123
#> [474,]  77  12      1          9        1   100
#> [475,]  73   7      1          0        0   174
#> [476,]  74   6      0         79        1   140
#> [477,]  74   9      1          8        0   200
#> [478,]  75   6      0        180        0   150
#> [479,]  79  10      1          8        0   190
#> [480,]  74   2      1          0        1   130
#> [481,]  78  18      0         18        1   144
#> [482,]  77   3      0        180        0   110
#> [483,]  76  29      0         47        0    90
#> [484,]  73  11      1          2        1   110
#> [485,]  78   7      0          7        1   133
#> [486,]  74  15      0        180        1   172
#> [487,]  78   8      1          6        1   110
#> [488,]  76  13      1          1        1   170
#> [489,]  78  32      1          9        1   198
#> [490,]  79   6      0        180        0   170
#> [491,]  80  10      1          6        1   147
#> [492,]  78   0      0        180        1   212
#> [493,]  75  13      1          6        0   150
#> [494,]  74  10      1          8        0   135
#> [495,]  76   1      0          1        1    83
#> [496,]  79   4      0         80        0   145
#> [497,]  78  12      1          9        0   150
#> [498,]  78  10      0        180        1   130
#> [499,]  75  11      1          4        0   162
#> [500,]  75   3      0          3        0     0
#> [501,]  77  24      0         24        1   160
#> [502,]  79   8      0         32        1   120
#> [503,]  80   9      0         23        1   128
#> [504,]  80   6      0          6        1   150
#> [505,]  76   3      1          0        1   140
#> [506,]  78  14      1          0        1   140
#> [507,]  78  11      1          8        1   118
#> [508,]  79   4      0          4        1   125
#> [509,]  76  12      1         10        1   127
#> [510,]  77   6      0          6        1   107
#> [511,]  75   2      1          1        1   204
#> [512,]  76   1      0          1        1   140
#> [513,]  77  31      1          3        1   161
#> [514,]  76   1      0          1        1    90
#> [515,]  78   7      1          0        1   110
#> [516,]  79   3      0          3        0   120
#> [517,]  77   6      0          6        1   144
#> [518,]  77   9      1          4        0   141
#> [519,]  82   5      0          8        1   120
#> [520,]  78   4      0         59        1   112
#> [521,]  79  10      0         10        1   120
#> [522,]  80  15      1          0        1    90
#> [523,]  81   4      1          2        1   126
#> [524,]  79  28      0        164        0   100
#> [525,]  80   6      0        173        1   160
#> [526,]  78  32      0        180        1   130
#> [527,]  79   1      0         37        1   140
#> [528,]  81   3      0        180        0   184
#> [529,]  81   2      0        175        0   172
#> [530,]  78   7      0          7        1   147
#> [531,]  78  15      0         15        0   165
#> [532,]  78   4      0        180        0   175
#> [533,]  76   1      0        166        0   131
#> [534,]  78   3      1          1        1   152
#> [535,]  77  10      1          8        1   130
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
#> [547,]  84  22      1         10        0   180
#> [548,]  79   4      0          4        1   121
#> [549,]  80   6      0          6        1   110
#> [550,]  83   4      0        103        0    97
#> [551,]  81  11      1          8        0   160
#> [552,]  80  11      1          8        0   170
#> [553,]  78   9      1          4        1   120
#> [554,]  82   8      1          1        0   128
#> [555,]  79   1      0        180        1   170
#> [556,]  81  15      0        180        1   140
#> [557,]  80   7      1          0        1   146
#> [558,]  84   5      1          1        1    85
#> [559,]  81  20      1          9        0   170
#> [560,]  80   6      1          0        1   150
#> [561,]  80  11      1          8        0   110
#> [562,]  79   0      1          0        1    96
#> [563,]  81   2      1          1        0   198
#> [564,]  83   2      0          2        1   155
#> [565,]  82   6      0        128        1   100
#> [566,]  84   4      0        167        0   198
#> [567,]  80   3      1          1        1   230
#> [568,]  82  23      1          0        0   110
#> [569,]  84   5      0        180        1   203
#> [570,]  84   4      0          4        1    85
#> [571,]  81   1      0          1        1   150
#> [572,]  81   4      0         90        1   138
#> [573,]  79   9      1          8        0   150
#> [574,]  85   3      1          2        1   160
#> [575,]  84   4      0         89        1   129
#> [576,]  80   2      1          0        1   130
#> [577,]  79   4      0          4        1    60
#> [578,]  82  19      0         19        0   120
#> [579,]  80  30      1         13        0   220
#> [580,]  83   9      0        180        0   198
#> [581,]  83   2      0        154        0   130
#> [582,]  85   9      1          6        1   160
#> [583,]  83   1      0        180        0   160
#> [584,]  81   4      0          4        0   175
#> [585,]  81  12      0         12        1   163
#> [586,]  82  16      1          8        0   103
#> [587,]  82   5      1          0        1   146
#> [588,]  86  12      0        180        1   120
#> [589,]  83  12      1          2        1   170
#> [590,]  82  15      1          0        0   183
#> [591,]  83   7      0        126        0   135
#> [592,]  86   8      0          8        1   132
#> [593,]  81  16      1          9        0   180
#> [594,]  84   6      0        165        0   145
#> [595,]  86   3      0          3        1   140
#> [596,]  84   3      0        180        1   120
#> [597,]  85   3      0          3        1   118
#> [598,]  81   2      1          0        1   118
#> [599,]  81   4      0        180        0   160
#> [600,]  82   1      0        180        1   193
#> [601,]  83   4      0          4        0   130
#> [602,]  82  14      1         11        1   103
#> [603,]  86   6      1          0        1   140
#> [604,]  84  16      0         70        1   150
#> [605,]  83  10      1          0        1   190
#> [606,]  86   2      0        180        1   169
#> [607,]  88  14      1          3        1   130
#> [608,]  83  13      1         12        0   170
#> [609,]  84   7      1          2        0   148
#> [610,]  84   9      0         92        1   110
#> [611,]  84  13      0         62        1   100
#> [612,]  88   4      0          4        0   100
#> [613,]  85  22      0         22        1   184
#> [614,]  83   9      0         65        1   150
#> [615,]  87   2      0        180        1   130
#> [616,]  88   2      0        180        1    68
#> [617,]  83   3      0          3        1   130
#> [618,]  86  15      1          8        1   109
#> [619,]  88   4      0          4        0    86
#> [620,]  89   4      0          4        1   153
#> [621,]  87   1      0          1        0   170
#> [622,]  85   8      0          8        1   136
#> [623,]  84   2      0        110        1   174
#> [624,]  87  29      0         29        1    97
#> [625,]  90  14      0         14        1   100
#> [626,]  86   4      0        180        1   145
#> [627,]  91   8      0          8        0   100
#> [628,]  87   2      0        180        0   160
#> [629,]  87   6      1          0        0   125
#> [630,]  91  10      0        145        0   135
#> [631,]  86   3      1          0        1    80
#> [632,]  88   7      0         24        0   119
#> [633,]  90  11      1         10        1   186
#> [634,]  87   6      0        126        1   168
#> [635,]  86  10      0        180        1   137
#> [636,]  90   4      1          0        0   121
#> [637,]  91   1      0          1        1    74
#> [638,]  87  43      0        178        1   130
#> [639,]  87   5      0         36        1   150
#> [640,]  88   3      1          2        0   159
#> [641,]  89   3      1          1        1   160
#> [642,]  92   1      0          1        1   167
#> [643,]  88   5      0        158        0   100
#> [644,]  87   7      0         74        1   105
#> [645,]  89  12      1          0        1   130
#> [646,]  89   2      0        168        0   118
#> [647,]  91   5      0        169        1   176
#> [648,]  89  52      0         52        1   130
#> [649,]  92   7      0          7        1   110
#> [650,]  89   4      0          4        1   159
#> [651,]  91   0      0          0        0     0
#> [652,]  90  18      0        180        0   188
#> [653,]  91   4      1          0        1   120
#> [654,]  90  19      1         11        1   129
#> [655,]  94   6      0         50        0    78
#> [656,]  90   1      0          1        1   118
#> [657,]  91   2      0          2        1   116
#> [658,]  94   8      0          8        1   142
#> [659,]  92   4      0         76        1   149
#> [660,]  91   1      0        180        0   158
#> [661,]  95   8      1          5        1   150
#> [662,]  94   3      0         26        1   144
#> [663,]  91  12      0         53        1   212
#> [664,]  91   7      0          7        0   135
#> [665,]  93   0      1          0        1   122
#> [666,]  92   5      0         69        0   139
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [11]  12.0  180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   2.0+ 180.0+ 180.0+
#>  [21] 180.0+   3.0  180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+   6.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 172.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+   7.0  180.0+ 180.0+   2.0    1.0  179.0+ 179.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0 
#>  [81]  36.0   88.0+ 180.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+
#>  [91]   5.0  180.0+ 180.0+   4.0+  85.0  180.0+ 166.0+  99.0  180.0+ 152.0+
#> [101]   7.0+ 180.0+  13.0+ 180.0+ 180.0+ 174.0+  28.0    6.0+   1.0  180.0+
#> [111] 180.0+ 180.0+ 175.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+  16.0+ 180.0+  16.0  180.0+ 180.0+ 180.0+  12.0+ 134.0+ 180.0+
#> [131] 180.0+ 180.0+ 180.0+ 140.0  180.0+ 165.0  180.0+ 180.0+ 180.0+ 180.0+
#> [141]   8.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 171.0+ 166.0+   5.0+ 180.0+
#> [151]   4.0+ 147.0+ 180.0+ 180.0+   4.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+   2.0  180.0+  64.0  180.0+ 180.0+   0.5  180.0+ 161.0+
#> [171] 180.0+ 180.0+   3.0    1.0  180.0+  10.0+  17.0   45.0    3.0+  19.0 
#> [181] 180.0+ 172.0+ 172.0+  24.0  180.0+   8.0  180.0+ 180.0+  15.0  180.0+
#> [191] 180.0+ 180.0+  77.0    8.0+ 180.0+ 180.0+ 180.0+ 180.0+ 169.0    7.0 
#> [201]   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  13.0+  18.0    5.0+
#> [211] 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+
#> [231] 180.0+ 180.0+ 180.0+   1.0  180.0+   3.0+ 180.0+  17.0   12.0  180.0+
#> [241] 180.0+  14.0+ 180.0+   3.0+ 180.0+ 180.0+   0.5  180.0+  12.0+ 180.0+
#> [251] 180.0+ 180.0+   9.0    3.0  180.0+ 180.0+ 180.0+   2.0+  18.0+ 180.0+
#> [261] 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0  180.0+ 180.0+   5.0+
#> [271]  13.0  180.0+ 179.0+ 166.0+  14.0+   3.0+ 180.0+ 175.0+ 180.0+   7.0+
#> [281]   8.0   16.0  180.0+   1.0  180.0+ 123.0+   1.0+  18.0   11.0+  79.0 
#> [291]  80.0   15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 174.0+ 180.0+
#> [301] 180.0+ 180.0+   3.0  175.0   10.0  180.0+ 180.0+ 180.0+ 180.0+   6.0 
#> [311] 180.0+  19.0+  12.0   99.0  180.0+ 179.0+ 180.0+  11.0+ 180.0+   0.5 
#> [321]  18.0  180.0+ 152.0+ 180.0+  93.0    1.0   18.0+ 101.0    4.0    5.0 
#> [331]   7.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 171.0  174.0+   6.0 
#> [341]   0.5  180.0+  14.0+ 180.0+   7.0+   2.0   45.0    5.0+ 180.0+  36.0 
#> [351] 180.0+ 180.0+  97.0  180.0+   7.0  180.0+ 180.0+ 172.0+ 180.0+ 180.0+
#> [361]   7.0   13.0+ 180.0+  51.0   19.0    1.0    1.0   60.0  180.0+  10.0+
#> [371] 180.0+   7.0+   7.0+ 124.0    9.0  180.0+ 180.0+ 180.0+ 180.0+ 152.0 
#> [381]   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+ 180.0+
#> [391] 180.0+  16.0+ 180.0+ 180.0+   6.0  180.0+   7.0+  15.0   13.0+ 180.0+
#> [401] 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0  180.0+ 180.0+ 180.0+   3.0 
#> [411]  87.0   12.0  180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0    2.0  180.0+
#> [421]  14.0+ 180.0+  10.0+ 180.0+ 180.0+ 179.0+   1.0  180.0+ 180.0+  10.0 
#> [431]   4.0+  11.0   12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0   11.0+
#> [441] 180.0+   7.0  180.0+  10.0  180.0+   3.0  180.0+ 180.0+   6.0  180.0+
#> [451]  85.0  180.0+ 180.0+ 174.0+   4.0    7.0   12.0  180.0+ 180.0+  46.0 
#> [461] 180.0+   4.0    1.0   52.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+
#> [471]   8.0   33.0    5.0  180.0+   7.0+  79.0  168.0+ 180.0+ 180.0+ 176.0+
#> [481]  18.0  180.0+  47.0   11.0    7.0  180.0+   8.0+ 180.0+  32.0  180.0+
#> [491]  10.0  180.0+ 180.0+ 180.0+   1.0   80.0  180.0+ 180.0+ 152.0+   3.0 
#> [501]  24.0   32.0   23.0    6.0    3.0+ 180.0+  11.0    4.0  180.0+   6.0 
#> [511]   2.0+   1.0  171.0    1.0   43.0    3.0    6.0   71.0    8.0   59.0 
#> [521]  10.0+ 180.0+  93.0  164.0  173.0  180.0+  37.0  180.0+ 175.0+   7.0+
#> [531]  15.0+ 180.0+ 166.0+   3.0+  10.0   85.0   10.0    6.0+   6.0  180.0+
#> [541]   5.0    1.0  180.0+ 108.0  180.0+ 125.0  180.0+   4.0    6.0  103.0 
#> [551] 180.0+ 169.0  180.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0  180.0+
#> [561] 180.0+   0.5  180.0+   2.0  128.0  167.0    3.0+  62.0  180.0+   4.0 
#> [571]   1.0   90.0  180.0+ 180.0+  89.0  180.0+   4.0   19.0   30.0  180.0+
#> [581] 154.0  180.0+ 180.0+   4.0+  12.0   16.0+   5.0+ 180.0+  77.0   83.0 
#> [591] 126.0    8.0  180.0+ 165.0    3.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+
#> [601]   4.0+ 174.0    6.0   70.0  180.0+ 180.0+  14.0   13.0  180.0+  92.0 
#> [611]  62.0    4.0+  22.0   65.0  180.0+ 180.0+   3.0+ 180.0+   4.0    4.0 
#> [621]   1.0+   8.0  110.0   29.0   14.0  180.0+   8.0  180.0+  25.0  145.0 
#> [631]   3.0   24.0   11.0  126.0  180.0+   4.0    1.0  178.0+  36.0   75.0 
#> [641]   3.0+   1.0  158.0   74.0  180.0+ 168.0  169.0   52.0    7.0    4.0 
#> [651]   0.5  180.0+   4.0  180.0+  50.0    1.0+   2.0    8.0+  76.0  180.0+
#> [661]   8.0   26.0   53.0    7.0+   0.5   69.0    2.0  180.0+   3.0   15.0+
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
#>   0.8423753 
```
