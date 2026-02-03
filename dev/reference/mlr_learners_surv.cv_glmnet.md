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
#> min 0.00308    45   2.669 0.1189       6
#> 1se 0.06041    13   2.781 0.1098       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35  10      1          9        0   106
#>   [4,]  37   9      0        180        1   151
#>   [5,]  35   0      0        180        1   119
#>   [6,]  36   5      1          0        1   115
#>   [7,]  38  16      1         10        0   160
#>   [8,]  38  12      1         11        1    92
#>   [9,]  40  12      1          9        0   153
#>  [10,]  42   3      1          1        1   130
#>  [11,]  37   1      1          0        1   146
#>  [12,]  40   2      1          1        1   148
#>  [13,]  42   2      0        180        1   100
#>  [14,]  40   6      0        180        1   138
#>  [15,]  42   2      0        180        0   100
#>  [16,]  43   3      1          0        1   100
#>  [17,]  41   2      1          1        0   166
#>  [18,]  40   1      1          0        1   145
#>  [19,]  43   4      1          0        1   130
#>  [20,]  42   4      0        180        0   162
#>  [21,]  42  15      1         13        1   125
#>  [22,]  40   3      1          1        0   170
#>  [23,]  42  12      1         10        1   170
#>  [24,]  43   2      1          1        1   116
#>  [25,]  44   5      1          1        0   170
#>  [26,]  45   3      0        180        1   154
#>  [27,]  41  10      1          8        0   150
#>  [28,]  41  13      1          1        0   140
#>  [29,]  45   9      1          7        0   110
#>  [30,]  45   6      0        180        1   170
#>  [31,]  44   2      1          1        1   150
#>  [32,]  43   2      0        180        1   140
#>  [33,]  45   2      0        180        1   140
#>  [34,]  46  15      0        180        0   120
#>  [35,]  46   2      1          1        0   126
#>  [36,]  48  15      0        180        1   160
#>  [37,]  43  29      0        180        1   180
#>  [38,]  45   4      1          0        0   124
#>  [39,]  43  10      0        180        0   185
#>  [40,]  47   6      1          0        1   116
#>  [41,]  44   0      1          0        1    96
#>  [42,]  47   4      1          3        1   160
#>  [43,]  43   3      1          0        1   124
#>  [44,]  45   5      0          5        0   141
#>  [45,]  46   6      1          0        1   100
#>  [46,]  44   4      1          0        1   114
#>  [47,]  47   2      0        180        0   108
#>  [48,]  44   9      1          8        1   135
#>  [49,]  45   5      0        180        1   190
#>  [50,]  46   5      1          3        0   130
#>  [51,]  46   4      0        180        1   121
#>  [52,]  45   9      1          0        1   145
#>  [53,]  47   3      1          1        1   120
#>  [54,]  48  12      1         11        0   200
#>  [55,]  47   5      1          3        1   130
#>  [56,]  49   4      0        180        0   117
#>  [57,]  47  10      0         10        1   140
#>  [58,]  50   1      1          0        1   129
#>  [59,]  48   2      1          0        0   184
#>  [60,]  47   7      0        180        0   145
#>  [61,]  50   4      1          1        0   125
#>  [62,]  50   6      1          2        1   140
#>  [63,]  49   7      1          7        1   110
#>  [64,]  46   3      1          1        1   140
#>  [65,]  46   9      1          9        1   122
#>  [66,]  50   7      0        180        1   110
#>  [67,]  49   2      0          2        0   105
#>  [68,]  51   1      0          1        1   145
#>  [69,]  47   2      0        180        0   150
#>  [70,]  46   6      1          0        1   156
#>  [71,]  52   2      0        180        1   170
#>  [72,]  50   4      0          4        1   100
#>  [73,]  47   8      0        180        0   160
#>  [74,]  47   6      0        180        1   162
#>  [75,]  51   8      0        180        1   140
#>  [76,]  52   2      0        180        0   155
#>  [77,]  46   1      1          1        0   145
#>  [78,]  50   4      1          1        0   150
#>  [79,]  48   7      1          0        1   110
#>  [80,]  53   8      0         36        1   160
#>  [81,]  48  17      1         10        0   111
#>  [82,]  47   2      1          1        0   110
#>  [83,]  52   4      1          4        0   152
#>  [84,]  49   9      1          3        0   102
#>  [85,]  54  17      1         12        1   102
#>  [86,]  53   5      0         77        0   159
#>  [87,]  51   3      1          1        0   140
#>  [88,]  50   2      0          5        1   106
#>  [89,]  50  14      1         13        0   170
#>  [90,]  53   8      1          7        0   160
#>  [91,]  48   3      1          2        0   150
#>  [92,]  51  25      1          1        0   202
#>  [93,]  49   5      1          2        1   150
#>  [94,]  53   4      0          4        0   140
#>  [95,]  48   6      0        180        0   160
#>  [96,]  51  13      0         99        1   160
#>  [97,]  54   9      1          0        1   138
#>  [98,]  55   3      1          1        0   150
#>  [99,]  54  23      1         10        0   131
#> [100,]  55   6      1          2        1   114
#> [101,]  54   9      1          1        0   130
#> [102,]  55   4      1          2        0   150
#> [103,]  50   5      1          4        1   150
#> [104,]  52   4      0        180        0   183
#> [105,]  50   3      0        174        1   153
#> [106,]  55  28      1         13        1   160
#> [107,]  49   6      1          0        1   130
#> [108,]  49   1      0          1        1   110
#> [109,]  50   7      1          1        0   156
#> [110,]  53   9      0          9        1    95
#> [111,]  50   7      1          0        1   127
#> [112,]  56   4      1          1        1   130
#> [113,]  55   2      0          2        0   145
#> [114,]  54   1      0        180        0   162
#> [115,]  54   7      1          0        1   100
#> [116,]  56   3      0        180        1   193
#> [117,]  56   2      0        180        0   132
#> [118,]  55   5      1          4        1   120
#> [119,]  52   8      0        180        0   119
#> [120,]  53  18      1          9        1   150
#> [121,]  55   6      0        180        0   170
#> [122,]  52  16      0         16        0   152
#> [123,]  52  16      1         14        0   170
#> [124,]  53   4      0        180        1   150
#> [125,]  55   6      0        180        1   100
#> [126,]  54  12      1          0        1   190
#> [127,]  54   3      0        180        0   128
#> [128,]  55   1      0          2        0   130
#> [129,]  57   3      0          3        0   120
#> [130,]  54   7      1          2        0   129
#> [131,]  54   2      1          1        0   135
#> [132,]  54   2      1          1        1   176
#> [133,]  57   5      1          3        1   138
#> [134,]  57   1      0          1        1   100
#> [135,]  52   2      0        180        0   140
#> [136,]  55  11      1          7        0   104
#> [137,]  56  14      1         11        0   130
#> [138,]  53   3      1          0        1   200
#> [139,]  58   8      0          8        1   130
#> [140,]  54   5      0        180        1   108
#> [141,]  53  21      1         13        1   130
#> [142,]  59   3      1          1        0   172
#> [143,]  57   4      0        180        1   119
#> [144,]  58   6      1          0        1    90
#> [145,]  53  15      1         10        1   130
#> [146,]  54  17      1          8        1   227
#> [147,]  55   9      1          2        1   147
#> [148,]  54  23      1          8        0   120
#> [149,]  57   4      1          2        1   185
#> [150,]  53   4      0        147        1   145
#> [151,]  53   7      1          0        1   120
#> [152,]  55   3      1          2        0   140
#> [153,]  55   5      0          5        1   131
#> [154,]  54   7      1          0        1   141
#> [155,]  58   9      1          0        1   180
#> [156,]  58   1      1          1        1   200
#> [157,]  55   5      1          0        0   140
#> [158,]  56   7      1          5        1   120
#> [159,]  55   2      0          2        0   106
#> [160,]  59   9      1          1        1   125
#> [161,]  59   3      0        180        0   120
#> [162,]  60   5      1          1        0   138
#> [163,]  57   5      0        180        1   130
#> [164,]  58  11      1          9        1   124
#> [165,]  55   5      1          0        1   160
#> [166,]  57  10      1          9        0   103
#> [167,]  59   6      1          0        1   140
#> [168,]  59   5      0        180        1   155
#> [169,]  59   4      1          0        1   152
#> [170,]  58  26      1          0        1   189
#> [171,]  60   0      1          0        1    80
#> [172,]  59   2      1          1        0   140
#> [173,]  61   9      1          8        0   150
#> [174,]  57  11      0        180        1   150
#> [175,]  61   3      0         17        0   143
#> [176,]  57   3      1          2        0   120
#> [177,]  56  18      1         11        1   165
#> [178,]  59   9      1          0        1    80
#> [179,]  55   4      1          3        1   160
#> [180,]  58  11      0        172        1   135
#> [181,]  60  12      1          0        1   114
#> [182,]  55   9      1          7        1   135
#> [183,]  61   4      1          0        1   115
#> [184,]  56   8      1          8        0   120
#> [185,]  61  13      1         12        1   130
#> [186,]  59  11      1          8        1   190
#> [187,]  57   1      0          1        0   126
#> [188,]  58   5      1          1        1   135
#> [189,]  59  10      0        180        0   160
#> [190,]  61   8      0         77        0   120
#> [191,]  61  13      0         13        0   210
#> [192,]  58   8      1          5        0   152
#> [193,]  57   3      1          0        0   100
#> [194,]  58   8      1          3        1   150
#> [195,]  61   7      0          7        1   150
#> [196,]  60   7      0          7        0   147
#> [197,]  61   6      0          6        0   134
#> [198,]  59  13      1          2        0   198
#> [199,]  57  12      1          9        1   120
#> [200,]  60  17      1          8        1   140
#> [201,]  58   3      1          0        1   146
#> [202,]  58   2      0         30        0   202
#> [203,]  59   1      0        180        0   155
#> [204,]  59  16      1          9        1   133
#> [205,]  63   6      0         28        1   120
#> [206,]  61  13      0         13        0   120
#> [207,]  61   5      0          5        1   110
#> [208,]  61   5      0          5        1   160
#> [209,]  58  11      1          9        0   179
#> [210,]  57   2      1          1        0   159
#> [211,]  62  17      1         10        1   180
#> [212,]  62   1      1          0        1   172
#> [213,]  63   3      1          1        0   180
#> [214,]  63   1      0        180        1   130
#> [215,]  61   7      0        180        0   135
#> [216,]  63   4      1          3        0   222
#> [217,]  62   3      0        180        1   105
#> [218,]  63  15      1         10        1   126
#> [219,]  64   4      0        180        0   130
#> [220,]  60  18      1         13        0   132
#> [221,]  61   9      1          9        1   150
#> [222,]  62   7      0          7        0   150
#> [223,]  59   1      0         22        1   162
#> [224,]  58   2      0        180        0   127
#> [225,]  59   4      0        180        0   196
#> [226,]  60   7      1          5        1   141
#> [227,]  60   7      0          7        0   140
#> [228,]  60   7      1          1        1    90
#> [229,]  65  13      0        180        1   100
#> [230,]  63   1      0          1        0   162
#> [231,]  63   1      0          1        0   130
#> [232,]  61  15      1         13        0   170
#> [233,]  60   3      0          3        0   168
#> [234,]  64  10      1          9        0   160
#> [235,]  62   6      0          6        0   120
#> [236,]  63  12      1         10        0   200
#> [237,]  59  10      0        180        1   130
#> [238,]  60   8      0         17        1   130
#> [239,]  66   1      1          0        1   120
#> [240,]  63  14      1          9        0   123
#> [241,]  65  36      1         11        0   140
#> [242,]  63   4      1          3        0   162
#> [243,]  66   3      1          1        0   127
#> [244,]  61  10      1          2        1   194
#> [245,]  66   5      1          0        1   110
#> [246,]  65   8      1          0        0   168
#> [247,]  64   0      0          0        1    90
#> [248,]  60   6      0        180        0   130
#> [249,]  64  21      1         10        0   190
#> [250,]  61  12      1         11        0   154
#> [251,]  64   9      0        180        0   150
#> [252,]  61   4      0        180        1   113
#> [253,]  65   3      0        180        1   190
#> [254,]  66   6      1          1        1   130
#> [255,]  62   3      1          1        1   199
#> [256,]  65   3      1          0        1    80
#> [257,]  63   5      1          4        0   170
#> [258,]  63   2      1          1        0   180
#> [259,]  62  13      1         11        0   180
#> [260,]  67  11      0         11        1   100
#> [261,]  64   2      0          2        0   201
#> [262,]  66  18      1          5        0   142
#> [263,]  62   9      0        180        0   145
#> [264,]  61  15      1         10        0   130
#> [265,]  63   9      1          8        1   160
#> [266,]  63   3      1          2        0   120
#> [267,]  64  19      1          8        1   160
#> [268,]  65   8      1          0        1   140
#> [269,]  68   5      1          4        1   150
#> [270,]  64   6      1          0        1   125
#> [271,]  66   7      1          0        1   115
#> [272,]  64   0      0          0        1   148
#> [273,]  66   3      1          0        1   135
#> [274,]  66   6      1          0        1   140
#> [275,]  65   2      1          1        1   170
#> [276,]  68   1      0        180        1   166
#> [277,]  67   8      1          1        1   130
#> [278,]  68   5      0          5        1    90
#> [279,]  63  10      0         16        1   160
#> [280,]  66  14      0        180        0   130
#> [281,]  64   1      0          1        1   120
#> [282,]  68  18      0        180        1   260
#> [283,]  65  17      1         14        1   100
#> [284,]  63   8      1          1        1   162
#> [285,]  65  18      1          3        0   120
#> [286,]  63   1      1          0        1   155
#> [287,]  67  11      0         11        0   150
#> [288,]  68  14      0         79        0   172
#> [289,]  65  15      1         12        1   150
#> [290,]  66  11      1          0        0   100
#> [291,]  69  12      0         15        1   140
#> [292,]  63   2      0        180        0   150
#> [293,]  65  11      1          6        0   130
#> [294,]  69   6      0        180        1   100
#> [295,]  66   9      1          8        0   130
#> [296,]  63   8      0        180        1   120
#> [297,]  69   1      1          0        0   170
#> [298,]  67   1      0        180        1   160
#> [299,]  68  10      1         10        1   150
#> [300,]  65   1      1          0        0   133
#> [301,]  65   6      0          6        0    80
#> [302,]  66  19      1         12        1   150
#> [303,]  67  12      1         12        0   160
#> [304,]  69   6      0         99        1   140
#> [305,]  65   4      1          1        0   130
#> [306,]  70  15      1         12        1   132
#> [307,]  64  11      0         11        0   125
#> [308,]  64   4      0        180        1   140
#> [309,]  64   0      1          0        1   118
#> [310,]  67   2      0         18        0   131
#> [311,]  66   4      0        180        0   177
#> [312,]  68   4      1          0        1   160
#> [313,]  69   4      1          3        1   150
#> [314,]  65  13      1         12        1   130
#> [315,]  64  21      0         21        1   155
#> [316,]  68  18      1          0        1   160
#> [317,]  65   6      0        101        1   115
#> [318,]  68   4      0          4        1   190
#> [319,]  70   7      1          0        1   190
#> [320,]  68   7      0        150        0   210
#> [321,]  71  20      1          0        1   160
#> [322,]  66   9      1          3        1   151
#> [323,]  66   1      1          1        1   165
#> [324,]  69   8      0        180        1   153
#> [325,]  66   4      0        180        0   130
#> [326,]  67   6      1          4        0   130
#> [327,]  65   2      0        180        0   130
#> [328,]  68   7      1          0        1   150
#> [329,]  67  14      1         13        0   130
#> [330,]  65  14      1         13        1   150
#> [331,]  69   8      0        180        1   180
#> [332,]  71   7      0          7        0   230
#> [333,]  66   2      0          2        1   228
#> [334,]  71   6      0         45        1   158
#> [335,]  67   5      0          5        0   130
#> [336,]  68   6      0        180        0   145
#> [337,]  69   8      1          5        1   195
#> [338,]  69   6      1          4        1   174
#> [339,]  72   7      0          7        1   110
#> [340,]  69  19      0        180        0   130
#> [341,]  68  18      0         18        1   100
#> [342,]  69  11      1          0        1   120
#> [343,]  69   4      1          3        0   132
#> [344,]  67  13      1          9        0   130
#> [345,]  72   5      1          4        0   170
#> [346,]  67  22      1          1        1   140
#> [347,]  68   3      0         19        0   135
#> [348,]  67  12      1          8        0   120
#> [349,]  69   1      0          1        1   110
#> [350,]  67   1      0          1        1    60
#> [351,]  67   4      0         60        1   136
#> [352,]  69   5      0         76        0   120
#> [353,]  67   8      1          0        1   130
#> [354,]  72  13      1         11        1   195
#> [355,]  68  10      1          8        1   160
#> [356,]  70  35      1          0        1   105
#> [357,]  72  30      1          0        1   145
#> [358,]  70   7      0          7        0   102
#> [359,]  68   7      1          2        0   135
#> [360,]  69  10      1          6        1   120
#> [361,]  72  12      1         10        0   170
#> [362,]  67   5      1          0        1   147
#> [363,]  67   9      0        180        0   158
#> [364,]  70   5      0        180        0   150
#> [365,]  72   2      0          2        1   100
#> [366,]  67   4      1          1        0   134
#> [367,]  72   6      1          5        0   115
#> [368,]  68  23      0        180        1   220
#> [369,]  70   3      0        180        0   121
#> [370,]  69   3      0        180        0   220
#> [371,]  71   3      1          2        0   150
#> [372,]  68   4      1          3        0   210
#> [373,]  72   5      0         28        0   120
#> [374,]  71   5      0        180        0   191
#> [375,]  73   6      0        180        1   117
#> [376,]  69   8      1          1        0   164
#> [377,]  68   7      0        180        1   130
#> [378,]  72  16      1          1        1   130
#> [379,]  70   4      0        180        0   180
#> [380,]  73   6      1          0        1   270
#> [381,]  72   8      1          1        1   150
#> [382,]  73   7      0          7        1   140
#> [383,]  68  15      1         13        1   130
#> [384,]  70  13      1          9        0   100
#> [385,]  73   0      0        180        1   161
#> [386,]  74   8      1          0        1    85
#> [387,]  73   4      0        180        1   154
#> [388,]  69   2      1          0        1   110
#> [389,]  71  15      1         11        0   165
#> [390,]  74  20      0         20        1   180
#> [391,]  68   9      0        180        1   120
#> [392,]  71  20      1         10        0   140
#> [393,]  74   0      1          0        1    90
#> [394,]  73   3      1          0        1   136
#> [395,]  70   5      1          0        1   190
#> [396,]  71  17      1         11        0   160
#> [397,]  71   8      1          7        0   149
#> [398,]  73   4      0         58        1   160
#> [399,]  72   5      1          3        1   160
#> [400,]  70   3      0        180        1   154
#> [401,]  71   7      1          2        0   143
#> [402,]  74   3      0          3        1   150
#> [403,]  73  17      1         11        0   140
#> [404,]  69   2      1          1        1    80
#> [405,]  70   4      1          0        1   140
#> [406,]  74   7      1          0        1   117
#> [407,]  72  10      1          8        1   153
#> [408,]  69   7      0        180        1   144
#> [409,]  72  15      1         13        0   156
#> [410,]  70   8      0          8        0   120
#> [411,]  75   1      0          1        0   133
#> [412,]  75   2      1          1        0   145
#> [413,]  72  10      1          9        1   160
#> [414,]  74  15      1          9        1   179
#> [415,]  71   4      0          4        0   134
#> [416,]  73  10      1          8        0   120
#> [417,]  70   7      1          4        0   184
#> [418,]  72   1      1          1        0   168
#> [419,]  72   7      0         57        1   145
#> [420,]  73  10      0        180        0   162
#> [421,]  72  11      0         11        1   140
#> [422,]  70   3      0          3        0   150
#> [423,]  73  12      1         12        1   140
#> [424,]  72   2      0        180        0   120
#> [425,]  75   1      0        180        1   140
#> [426,]  72   4      1          0        1   197
#> [427,]  71   3      1          0        0   144
#> [428,]  73   5      0        180        0   126
#> [429,]  73   4      0        180        0   124
#> [430,]  76   3      1          0        1   120
#> [431,]  72   5      0        180        0   154
#> [432,]  72   3      0        180        0   160
#> [433,]  76   5      0          5        1   130
#> [434,]  77  11      0         11        1   150
#> [435,]  77   4      0          4        0   185
#> [436,]  75   3      1          1        0   180
#> [437,]  71  16      0        180        0   140
#> [438,]  73  10      1         10        0   124
#> [439,]  76   1      0        180        0   114
#> [440,]  74   2      1          1        0   140
#> [441,]  76   8      1          0        1   141
#> [442,]  73   6      0          6        1   114
#> [443,]  72   4      1          3        0   160
#> [444,]  76  17      1          0        1   200
#> [445,]  73   4      1          3        1   125
#> [446,]  76  13      1         10        0   110
#> [447,]  73  13      1         11        0   195
#> [448,]  75  12      0         12        1   160
#> [449,]  74   8      1          0        1   105
#> [450,]  76  13      1          8        1   148
#> [451,]  75   4      1          2        1   188
#> [452,]  74   6      0        180        0   160
#> [453,]  75   1      0          1        1   125
#> [454,]  73   1      0         52        1   105
#> [455,]  73   0      0        180        0   156
#> [456,]  72   5      0        180        0   120
#> [457,]  78  12      1         11        1   160
#> [458,]  76  44      1         10        0   105
#> [459,]  76   5      0        180        0   185
#> [460,]  74  10      1          0        1   135
#> [461,]  76   5      1          0        1   167
#> [462,]  74   8      1          8        1   170
#> [463,]  75   9      0        180        1   140
#> [464,]  73  33      1         12        1   175
#> [465,]  77  12      1          9        1   100
#> [466,]  73  10      1          9        0   146
#> [467,]  77  12      0        180        0   130
#> [468,]  77   1      1          0        1    90
#> [469,]  76  12      1         11        1   120
#> [470,]  78   5      1          0        1   170
#> [471,]  73   7      1          0        0   174
#> [472,]  75   3      1          1        1   171
#> [473,]  74   9      1          8        0   200
#> [474,]  75   6      0        180        0   150
#> [475,]  77   3      0        180        0   110
#> [476,]  76  29      0         47        0    90
#> [477,]  73  11      1          2        1   110
#> [478,]  78   7      0          7        1   133
#> [479,]  74  15      0        180        1   172
#> [480,]  78   8      1          6        1   110
#> [481,]  78  32      1          9        1   198
#> [482,]  79   6      0        180        0   170
#> [483,]  78   0      0        180        1   212
#> [484,]  75   5      0        119        1   150
#> [485,]  75  12      1          1        1   120
#> [486,]  80   8      0          8        1   120
#> [487,]  75  13      1          6        0   150
#> [488,]  74  10      1          8        0   135
#> [489,]  76   1      0          1        1    83
#> [490,]  79   4      0         80        0   145
#> [491,]  78  12      1          9        0   150
#> [492,]  78   2      1          1        0   130
#> [493,]  75   4      1          0        0   212
#> [494,]  76  11      1          0        0   120
#> [495,]  75  11      1          4        0   162
#> [496,]  77  24      0         24        1   160
#> [497,]  80   9      0         23        1   128
#> [498,]  80   6      0          6        1   150
#> [499,]  78   6      1          0        1   240
#> [500,]  76   3      1          0        1   140
#> [501,]  78  11      1          1        1   140
#> [502,]  79  11      0        180        0   160
#> [503,]  79   2      1          0        1   121
#> [504,]  79   4      0          4        1   125
#> [505,]  76  12      1         10        1   127
#> [506,]  76   1      0          1        1   140
#> [507,]  76   1      0          1        1    90
#> [508,]  78   7      1          0        1   110
#> [509,]  79   3      0          3        0   120
#> [510,]  77   7      0        180        1   170
#> [511,]  77   6      0          6        1   144
#> [512,]  79   4      1          0        1   120
#> [513,]  80  40      1          0        1   138
#> [514,]  76   7      0        161        0   151
#> [515,]  79  10      0         10        1   120
#> [516,]  80  15      1          0        1    90
#> [517,]  81   4      1          2        1   126
#> [518,]  80   9      0        118        1   186
#> [519,]  80   6      0        173        1   160
#> [520,]  78  32      0        180        1   130
#> [521,]  79   1      0         37        1   140
#> [522,]  81   2      0        175        0   172
#> [523,]  77  13      1          0        1   190
#> [524,]  78  15      0         15        0   165
#> [525,]  80   5      1          1        1   108
#> [526,]  78   4      0        180        0   175
#> [527,]  79   3      0          3        1   101
#> [528,]  78  26      1          5        0   194
#> [529,]  76   1      0        166        0   131
#> [530,]  78  20      1          0        1   109
#> [531,]  82   3      1          1        1   144
#> [532,]  80   2      1          1        0   168
#> [533,]  79   6      0          6        0   152
#> [534,]  80   6      1          0        1   119
#> [535,]  78   2      0        180        0   148
#> [536,]  80   5      0          5        1   130
#> [537,]  82   1      1          0        1    82
#> [538,]  79  10      0        180        1   150
#> [539,]  77   4      0        180        1    98
#> [540,]  81   1      0        108        0   129
#> [541,]  78  12      0        180        0   134
#> [542,]  79   1      0        125        0   193
#> [543,]  84  22      1         10        0   180
#> [544,]  80   6      0          6        1   110
#> [545,]  83   9      1          5        1   170
#> [546,]  82   5      0        180        0   110
#> [547,]  83   5      0        180        0   148
#> [548,]  79   7      1          6        0   130
#> [549,]  83   4      0        103        0    97
#> [550,]  79   4      0          4        1   183
#> [551,]  82   8      1          1        0   128
#> [552,]  79   1      0        180        1   170
#> [553,]  81  15      0        180        1   140
#> [554,]  84   5      1          1        1    85
#> [555,]  81  20      1          9        0   170
#> [556,]  80   6      1          0        1   150
#> [557,]  81   8      0        180        0   146
#> [558,]  80   8      1          7        0   160
#> [559,]  79   7      0        177        0   197
#> [560,]  85   4      0        180        0    90
#> [561,]  81   2      1          1        0   198
#> [562,]  83   2      0          2        1   155
#> [563,]  82   6      0        128        1   100
#> [564,]  84   4      0        167        0   198
#> [565,]  80   3      1          1        1   230
#> [566,]  82  23      1          0        0   110
#> [567,]  84   4      0          4        1    85
#> [568,]  84   1      0         38        1   205
#> [569,]  83   3      0        180        0   174
#> [570,]  81   4      0         90        1   138
#> [571,]  85   3      1          2        1   160
#> [572,]  80  13      1          8        1   140
#> [573,]  84   4      0         89        1   129
#> [574,]  79   4      0          4        1    60
#> [575,]  83   1      0          1        1   100
#> [576,]  82  19      0         19        0   120
#> [577,]  80  30      1         13        0   220
#> [578,]  83   9      0        180        0   198
#> [579,]  79  14      1          0        0   110
#> [580,]  83   3      0        114        0    98
#> [581,]  81  14      1         12        1   128
#> [582,]  82   0      0          2        1   100
#> [583,]  83   1      0        180        0   160
#> [584,]  81   1      0          1        1   145
#> [585,]  82  16      1          8        0   103
#> [586,]  81   4      0          4        0   160
#> [587,]  86  12      0        180        1   120
#> [588,]  83  12      1          2        1   170
#> [589,]  82  15      1          0        0   183
#> [590,]  84   6      0        165        0   145
#> [591,]  82   9      0        180        1   134
#> [592,]  81  13      0        180        0   152
#> [593,]  81   2      1          0        1   118
#> [594,]  81   4      0        180        0   160
#> [595,]  83   9      0        180        1   149
#> [596,]  82   1      0        180        1   193
#> [597,]  86  12      1          0        1   132
#> [598,]  86   6      1          0        1   140
#> [599,]  84  16      0         70        1   150
#> [600,]  84   3      1          2        0   125
#> [601,]  83  10      1          0        1   190
#> [602,]  86   2      0        180        1   169
#> [603,]  88  14      1          3        1   130
#> [604,]  84   3      0          3        1   121
#> [605,]  84   7      1          2        0   148
#> [606,]  87   2      0        180        0   113
#> [607,]  84   9      0         92        1   110
#> [608,]  84   3      0        180        1   170
#> [609,]  86   4      0         38        1   122
#> [610,]  85   3      0          3        1   113
#> [611,]  86   6      0          6        1   117
#> [612,]  84  13      0         62        1   100
#> [613,]  86   6      1          1        0   112
#> [614,]  83  20      1          3        1   150
#> [615,]  85  22      0         22        1   184
#> [616,]  83   9      0         65        1   150
#> [617,]  86   9      1          7        1   142
#> [618,]  87   2      0        180        1   130
#> [619,]  86   6      0         46        0   173
#> [620,]  88   3      0        115        0   110
#> [621,]  88   2      0        180        1    68
#> [622,]  83   3      0          3        1   130
#> [623,]  87   8      0          8        1   157
#> [624,]  86  15      1          8        1   109
#> [625,]  88   4      0          4        0    86
#> [626,]  87   6      0        180        1   110
#> [627,]  87   1      0          1        0   170
#> [628,]  84   8      0        180        1   119
#> [629,]  85   8      0          8        1   136
#> [630,]  87  15      1          9        1   138
#> [631,]  89  10      0         46        1   170
#> [632,]  90  14      0         14        1   100
#> [633,]  88   1      0          1        0   135
#> [634,]  91   8      0          8        0   100
#> [635,]  87   2      0        180        0   160
#> [636,]  87   6      1          0        0   125
#> [637,]  91  10      0        145        0   135
#> [638,]  88   7      0         24        0   119
#> [639,]  90  11      1         10        1   186
#> [640,]  87   6      0        126        1   168
#> [641,]  86  10      0        180        1   137
#> [642,]  90   4      1          0        0   121
#> [643,]  87  43      0        178        1   130
#> [644,]  87   5      0         36        1   150
#> [645,]  88   3      1          2        0   159
#> [646,]  92   1      0          1        1   167
#> [647,]  91   3      0         33        1   137
#> [648,]  87   7      0         74        1   105
#> [649,]  89   2      0        168        0   118
#> [650,]  91   5      0        169        1   176
#> [651,]  89  52      0         52        1   130
#> [652,]  89   4      0          4        1   159
#> [653,]  89  14      0        180        1    84
#> [654,]  90  18      0        180        0   188
#> [655,]  91   4      1          0        1   120
#> [656,]  90  19      1         11        1   129
#> [657,]  94   6      0         50        0    78
#> [658,]  90   1      0          1        1   118
#> [659,]  91   2      0          2        1   116
#> [660,]  94   8      0          8        1   142
#> [661,]  92   4      0         76        1   149
#> [662,]  90  16      0         16        1   106
#> [663,]  94   3      0         26        1   144
#> [664,]  91  12      0         53        1   212
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [11] 180.0+   2.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+   2.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+
#>  [41] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [51] 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+   2.0    1.0  180.0+ 180.0+
#>  [71] 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0 
#>  [81]  88.0+ 180.0+   4.0+ 180.0+ 180.0+  77.0  180.0+   5.0  180.0+ 180.0+
#>  [91] 180.0+ 180.0+ 180.0+   4.0+ 180.0+  99.0  180.0+ 180.0+ 152.0+   6.0+
#> [101] 180.0+ 180.0+ 171.0+ 180.0+ 174.0+  28.0    6.0+   1.0  180.0+   9.0+
#> [111] 180.0+ 180.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+  16.0+  16.0  180.0+ 180.0+  12.0+ 180.0+   2.0    3.0+ 180.0+
#> [131] 180.0+ 180.0+ 140.0    1.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+
#> [141] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0  180.0+   4.0+ 147.0+
#> [151] 180.0+ 180.0+   5.0+ 180.0+   9.0+   1.0  180.0+ 180.0+   2.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+
#> [171]   0.5  180.0+ 180.0+ 180.0+  17.0    3.0+ 180.0+   9.0+ 180.0+ 172.0+
#> [181] 172.0+  24.0  180.0+   8.0  180.0+ 180.0+   1.0+ 180.0+ 180.0+  77.0 
#> [191]  13.0+   8.0+ 180.0+ 180.0+   7.0    7.0+   6.0  180.0+ 180.0+ 180.0+
#> [201]   3.0+  30.0  180.0+ 180.0+  28.0   13.0+   5.0    5.0+ 180.0+ 180.0+
#> [211] 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+   7.0+  22.0  180.0+ 180.0+  84.0    7.0+ 180.0+ 180.0+   1.0 
#> [231]   1.0  180.0+   3.0+ 167.0    6.0+ 180.0+ 180.0+  17.0  180.0+  14.0+
#> [241]  36.0  180.0+   3.0+  88.0  180.0+ 180.0+   0.5  180.0+ 180.0+  12.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+  11.0+
#> [261]   2.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+ 103.0   15.0    5.0+ 180.0+
#> [271] 179.0+   0.5+   3.0+ 180.0+ 175.0+ 180.0+   8.0    5.0   16.0  180.0+
#> [281]   1.0  180.0+ 180.0+ 180.0+ 123.0+   1.0+  11.0+  79.0   15.0+ 180.0+
#> [291]  15.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 175.0  180.0+  10.0  180.0+
#> [301]   6.0   19.0+  12.0   99.0  180.0+ 180.0+  11.0+ 180.0+   0.5   18.0 
#> [311] 180.0+ 180.0+ 152.0+ 180.0+  21.0+  18.0+ 101.0    4.0    7.0+ 150.0 
#> [321] 180.0+ 180.0+   1.0  180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+  14.0+
#> [331] 180.0+   7.0+   2.0   45.0    5.0+ 180.0+ 180.0+  97.0    7.0  180.0+
#> [341]  18.0  180.0+ 180.0+  13.0+ 180.0+  51.0   19.0  180.0+   1.0    1.0 
#> [351]  60.0   76.0  180.0+ 132.0   10.0+ 180.0+ 162.0    7.0+   7.0+ 180.0+
#> [361]  12.0  180.0+ 180.0+ 180.0+   2.0   76.0  180.0+ 180.0+ 180.0+ 180.0+
#> [371] 180.0+ 180.0+  28.0  180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+   6.0 
#> [381] 180.0+   7.0+  15.0   13.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+  20.0 
#> [391] 180.0+  20.0    0.5  180.0+ 180.0+ 180.0+   8.0   58.0  180.0+ 180.0+
#> [401] 180.0+   3.0  180.0+   2.0  180.0+ 180.0+  10.0+ 180.0+ 180.0+   8.0+
#> [411]   1.0  180.0+ 159.0  180.0+   4.0+  10.0  104.0+   1.0   57.0  180.0+
#> [421]  11.0    3.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [431] 180.0+ 180.0+   5.0   11.0+   4.0+ 180.0+ 180.0+  10.0  180.0+ 180.0+
#> [441] 180.0+   6.0  180.0+  17.0+ 180.0+ 174.0+ 180.0+  12.0  180.0+ 180.0+
#> [451]  46.0  180.0+   1.0   52.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+
#> [461] 180.0+   8.0  180.0+  33.0  180.0+ 180.0+ 180.0+   1.0   12.0  180.0+
#> [471]   7.0+   3.0  168.0+ 180.0+ 180.0+  47.0   11.0    7.0  180.0+   8.0+
#> [481]  32.0  180.0+ 180.0+ 119.0   12.0    8.0  180.0+ 180.0+   1.0   80.0 
#> [491] 180.0+ 180.0+   4.0+  11.0  152.0+  24.0   23.0    6.0  180.0+   3.0+
#> [501] 180.0+ 180.0+ 180.0+   4.0  180.0+   1.0    1.0   43.0    3.0  180.0+
#> [511]   6.0  138.0   40.0  161.0   10.0+ 180.0+  93.0  118.0  173.0  180.0+
#> [521]  37.0  175.0+  22.0   15.0+   5.0+ 180.0+   3.0  171.0+ 166.0+  20.0+
#> [531] 180.0+  10.0    6.0+   6.0  180.0+   5.0    1.0  180.0+ 180.0+ 108.0 
#> [541] 180.0+ 125.0  180.0+   6.0    9.0+ 180.0+ 180.0+ 180.0+ 103.0    4.0 
#> [551] 180.0+ 180.0+ 180.0+ 180.0+  20.0  180.0+ 180.0+ 180.0+ 177.0+ 180.0+
#> [561] 180.0+   2.0  128.0  167.0    3.0+  62.0    4.0   38.0  180.0+  90.0 
#> [571] 180.0+ 180.0+  89.0    4.0    1.0   19.0   30.0  180.0+ 180.0+ 114.0 
#> [581] 180.0+   2.0  180.0+   1.0   16.0+   4.0+ 180.0+  77.0   83.0  165.0 
#> [591] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0   70.0  180.0+
#> [601] 180.0+ 180.0+  14.0    3.0  180.0+ 180.0+  92.0  180.0+  38.0    3.0+
#> [611]   6.0+  62.0    6.0+  20.0   22.0   65.0   11.0  180.0+  46.0  115.0 
#> [621] 180.0+   3.0+   8.0+ 180.0+   4.0  180.0+   1.0+ 180.0+   8.0  180.0+
#> [631]  46.0   14.0    1.0+   8.0  180.0+  25.0  145.0   24.0   11.0  126.0 
#> [641] 180.0+   4.0  178.0+  36.0   75.0    1.0   33.0   74.0  168.0  169.0 
#> [651]  52.0    4.0  180.0+ 180.0+   4.0  180.0+  50.0    1.0+   2.0    8.0+
#> [661]  76.0   16.0   26.0   53.0    7.0+   0.5   69.0    2.0    3.0   15.0+
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
#>   0.8285168 
```
