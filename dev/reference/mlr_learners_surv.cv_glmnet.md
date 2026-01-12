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
#> min 0.00332    44   2.789 0.1266       6
#> 1se 0.06527    12   2.905 0.1225       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   5      1          2        0   172
#>   [5,]  35  10      1          9        0   106
#>   [6,]  34   5      0          5        0   120
#>   [7,]  35   2      0        180        0   121
#>   [8,]  35   2      1          1        1   112
#>   [9,]  38  13      1          0        1   161
#>  [10,]  38   2      0        115        0   150
#>  [11,]  36   1      0        180        1   155
#>  [12,]  35   0      0        180        1   119
#>  [13,]  38  12      1          8        1   120
#>  [14,]  36   5      1          0        1   115
#>  [15,]  40  12      1          9        0   153
#>  [16,]  37   1      1          0        1   146
#>  [17,]  42   2      0        180        1   100
#>  [18,]  42   2      0          2        0   140
#>  [19,]  40   6      0        180        1   138
#>  [20,]  42   2      0        180        0   100
#>  [21,]  43   3      1          0        1   100
#>  [22,]  43   4      1          0        1   130
#>  [23,]  42   4      0        180        0   162
#>  [24,]  42  15      1         13        1   125
#>  [25,]  43   2      1          1        1   116
#>  [26,]  45   3      0        180        1   154
#>  [27,]  41  10      1          8        0   150
#>  [28,]  41  13      1          1        0   140
#>  [29,]  45   9      1          7        0   110
#>  [30,]  43   2      0        180        1   140
#>  [31,]  45   2      0        180        1   140
#>  [32,]  46   2      1          1        0   126
#>  [33,]  47   4      1          3        0   118
#>  [34,]  48  15      0        180        1   160
#>  [35,]  45   3      0        150        0   130
#>  [36,]  44   3      1          0        1   180
#>  [37,]  46   7      1          2        0   166
#>  [38,]  43  29      0        180        1   180
#>  [39,]  45   4      1          0        0   124
#>  [40,]  43  10      0        180        0   185
#>  [41,]  47   6      1          0        1   116
#>  [42,]  44   0      1          0        1    96
#>  [43,]  43   3      1          0        1   124
#>  [44,]  45   8      1          0        1   117
#>  [45,]  49   5      0         73        1   136
#>  [46,]  45   5      0          5        0   141
#>  [47,]  46   2      1          1        1   122
#>  [48,]  46   6      1          0        1   100
#>  [49,]  47   2      0        180        0   108
#>  [50,]  45   5      0        180        1   190
#>  [51,]  46   4      0        180        1   121
#>  [52,]  44   2      0        180        0   142
#>  [53,]  46  15      0        180        1   120
#>  [54,]  45   9      1          0        1   145
#>  [55,]  48   3      0        180        0   154
#>  [56,]  48  12      1         11        0   200
#>  [57,]  46   3      1          0        1   119
#>  [58,]  49   4      0        180        0   117
#>  [59,]  47  10      0         10        1   140
#>  [60,]  50   1      1          0        1   129
#>  [61,]  48   2      1          0        0   184
#>  [62,]  47   7      0        180        0   145
#>  [63,]  50   4      1          1        0   125
#>  [64,]  50   6      1          2        1   140
#>  [65,]  49   7      1          7        1   110
#>  [66,]  46   3      1          1        1   140
#>  [67,]  49  15      1         11        1   160
#>  [68,]  47   2      0        180        0   150
#>  [69,]  46   6      1          0        1   156
#>  [70,]  52   2      0        180        1   170
#>  [71,]  50   4      0          4        1   100
#>  [72,]  47   6      0        180        1   162
#>  [73,]  52   2      0        180        0   155
#>  [74,]  46   3      0        180        1   120
#>  [75,]  46   1      1          1        0   145
#>  [76,]  50   4      1          1        0   150
#>  [77,]  53   8      0         36        1   160
#>  [78,]  48  17      1         10        0   111
#>  [79,]  47   2      1          1        0   110
#>  [80,]  52   4      1          4        0   152
#>  [81,]  49   9      1          3        0   102
#>  [82,]  53   5      0        180        1   140
#>  [83,]  53   5      0         77        0   159
#>  [84,]  53   7      1          0        0   199
#>  [85,]  51   3      1          1        0   140
#>  [86,]  50   2      0          5        1   106
#>  [87,]  50  10      1          6        0   122
#>  [88,]  50  14      1         13        0   170
#>  [89,]  53   8      1          7        0   160
#>  [90,]  51  25      1          1        0   202
#>  [91,]  53   4      0          4        0   140
#>  [92,]  52  14      1          7        1   200
#>  [93,]  48  11      1         10        0   120
#>  [94,]  53   4      1          0        1   156
#>  [95,]  51  13      0         99        1   160
#>  [96,]  54   9      1          0        1   138
#>  [97,]  49  16      0         16        0   125
#>  [98,]  55   3      1          1        0   150
#>  [99,]  54  23      1         10        0   131
#> [100,]  52   7      1          2        0   154
#> [101,]  55   6      1          2        1   114
#> [102,]  54   9      1          1        0   130
#> [103,]  52   4      0        180        1   180
#> [104,]  51  13      1         11        0   145
#> [105,]  50   5      1          4        1   150
#> [106,]  54   4      1          0        1   121
#> [107,]  52   4      0        180        0   183
#> [108,]  50   3      0        174        1   153
#> [109,]  49   6      1          0        1   130
#> [110,]  49   1      0          1        1   110
#> [111,]  50   7      1          0        1   127
#> [112,]  56   4      1          1        1   130
#> [113,]  55   1      0        180        0   127
#> [114,]  54   1      0        180        0   162
#> [115,]  54   7      1          0        1   100
#> [116,]  56   3      0        180        1   193
#> [117,]  55   5      1          4        1   120
#> [118,]  52   8      0        180        0   119
#> [119,]  53  18      1          9        1   150
#> [120,]  54   3      0        180        1   180
#> [121,]  55   6      0        180        0   170
#> [122,]  52  16      0         16        0   152
#> [123,]  52  16      1         14        0   170
#> [124,]  53   4      0        180        1   150
#> [125,]  55   6      0        180        1   100
#> [126,]  55   6      1          5        1   138
#> [127,]  55   2      0        134        1   140
#> [128,]  54   3      0        180        0   128
#> [129,]  56   3      0          8        1   139
#> [130,]  57   3      0          3        0   120
#> [131,]  54   7      1          2        0   129
#> [132,]  54   2      1          1        0   135
#> [133,]  52   9      1          3        0   170
#> [134,]  54   2      1          1        1   176
#> [135,]  57   5      1          3        1   138
#> [136,]  57   1      0        180        1   156
#> [137,]  57   1      0          1        1   100
#> [138,]  56   4      1          0        1   140
#> [139,]  52   2      0        180        0   140
#> [140,]  55  11      1          7        0   104
#> [141,]  56  14      1         11        0   130
#> [142,]  53   3      1          0        1   200
#> [143,]  53  21      1         13        1   130
#> [144,]  57   4      0        180        1   119
#> [145,]  53  15      1         10        1   130
#> [146,]  54  17      1          8        1   227
#> [147,]  55  13      0        166        1   140
#> [148,]  54  23      1          8        0   120
#> [149,]  53   4      0        147        1   145
#> [150,]  57  11      1         10        1   129
#> [151,]  55   3      1          2        0   140
#> [152,]  55   5      0          5        1   131
#> [153,]  56   4      0          4        0   164
#> [154,]  59  15      1         10        0   140
#> [155,]  58   1      1          1        1   200
#> [156,]  56   7      1          5        1   120
#> [157,]  55   2      0          2        0   106
#> [158,]  59   9      1          1        1   125
#> [159,]  57   1      0        180        0   148
#> [160,]  60  11      1          9        0   106
#> [161,]  59   3      0        180        0   120
#> [162,]  60   5      1          1        0   138
#> [163,]  57   5      0        180        1   130
#> [164,]  58  11      1          9        1   124
#> [165,]  55   5      1          0        1   160
#> [166,]  57  10      1          9        0   103
#> [167,]  59   6      1          0        1   140
#> [168,]  59   5      0        180        1   155
#> [169,]  58  26      1          0        1   189
#> [170,]  61   9      0          9        1   160
#> [171,]  58   4      1          3        0   120
#> [172,]  60   0      1          0        1    80
#> [173,]  61   9      1          8        0   150
#> [174,]  61   3      1          2        1   102
#> [175,]  58   1      0          1        1   100
#> [176,]  61  20      1         13        0   130
#> [177,]  57  13      1         10        0   110
#> [178,]  57   2      1          0        1   116
#> [179,]  57  11      0        180        1   150
#> [180,]  56  14      0         45        0   130
#> [181,]  57   3      1          2        0   120
#> [182,]  58  19      1         13        1   140
#> [183,]  56  13      1          6        1   158
#> [184,]  59   9      1          0        1    80
#> [185,]  55   4      1          3        1   160
#> [186,]  60  12      1          0        1   114
#> [187,]  55   9      1          7        1   135
#> [188,]  61   4      1          0        1   115
#> [189,]  56   8      1          8        0   120
#> [190,]  61   8      0         77        0   120
#> [191,]  62  10      1          0        1   153
#> [192,]  62   7      1          2        1   180
#> [193,]  57   3      1          0        0   100
#> [194,]  57   7      0        169        0   180
#> [195,]  61   6      0          6        0   134
#> [196,]  59  13      1          2        0   198
#> [197,]  57  12      1          9        1   120
#> [198,]  62   4      1          0        0   160
#> [199,]  60  17      1          8        1   140
#> [200,]  58   2      0         30        0   202
#> [201,]  59   1      0        180        0   155
#> [202,]  59  16      1          9        1   133
#> [203,]  63   6      0         28        1   120
#> [204,]  61  13      0         13        0   120
#> [205,]  61   5      0          5        1   110
#> [206,]  57  18      1          9        1    93
#> [207,]  61   5      0          5        1   160
#> [208,]  58  11      1          9        0   179
#> [209,]  57   2      1          1        0   159
#> [210,]  62   1      1          0        1   172
#> [211,]  63   1      0        180        1   130
#> [212,]  61   7      0        180        0   135
#> [213,]  63   4      0        180        1   190
#> [214,]  63  15      1         10        1   126
#> [215,]  64   4      0        180        0   130
#> [216,]  63   4      1          1        0   155
#> [217,]  59   8      0        180        1   140
#> [218,]  61   9      1          9        1   150
#> [219,]  58   9      1          9        0   110
#> [220,]  62   7      0          7        0   150
#> [221,]  59   1      0         22        1   162
#> [222,]  58   2      0        180        0   127
#> [223,]  59   4      0        180        0   196
#> [224,]  60   7      0          7        0   140
#> [225,]  60   7      1          1        1    90
#> [226,]  65  13      0        180        1   100
#> [227,]  63   1      0          1        0   162
#> [228,]  64  10      1          9        0   160
#> [229,]  63  12      1         10        0   200
#> [230,]  59  10      0        180        1   130
#> [231,]  60   8      0         17        1   130
#> [232,]  61   6      1          1        1   117
#> [233,]  64  12      1         11        0   160
#> [234,]  66   1      1          0        1   120
#> [235,]  63  10      1          0        1   148
#> [236,]  63  14      1          9        0   123
#> [237,]  65  36      1         11        0   140
#> [238,]  63  12      1          9        0   114
#> [239,]  63   7      0        180        0   120
#> [240,]  66   5      1          0        1   110
#> [241,]  65   8      1          0        0   168
#> [242,]  65  10      1          8        1   120
#> [243,]  64   0      0          0        1    90
#> [244,]  60   6      0        180        0   130
#> [245,]  61  12      1         11        0   154
#> [246,]  64   9      0        180        0   150
#> [247,]  61   4      0        180        1   113
#> [248,]  65   3      0        180        1   190
#> [249,]  63  16      1          7        1   110
#> [250,]  64   7      0        180        1   120
#> [251,]  66   6      1          1        1   130
#> [252,]  62   3      1          1        1   199
#> [253,]  65   3      1          0        1    80
#> [254,]  63   5      1          4        0   170
#> [255,]  62  13      1         11        0   180
#> [256,]  67  11      0         11        1   100
#> [257,]  66  18      1          5        0   142
#> [258,]  66  16      1         11        1   169
#> [259,]  62   9      0        180        0   145
#> [260,]  61  14      1          5        0   140
#> [261,]  61  15      1         10        0   130
#> [262,]  63   3      1          2        0   120
#> [263,]  64  19      1          8        1   160
#> [264,]  67   6      0        180        1   170
#> [265,]  64   6      1          0        1   125
#> [266,]  66   7      1          0        1   115
#> [267,]  66  13      1          0        0   118
#> [268,]  64  14      1         13        1   150
#> [269,]  67   4      1          3        0   130
#> [270,]  66   3      1          0        1   135
#> [271,]  66   6      1          0        1   140
#> [272,]  68   1      0        180        1   166
#> [273,]  64  10      1          9        1   110
#> [274,]  63   7      1          0        0   162
#> [275,]  67   8      1          1        1   130
#> [276,]  68   5      0          5        1    90
#> [277,]  66  14      0        180        0   130
#> [278,]  65  18      1          3        0   120
#> [279,]  63  10      0         18        1   130
#> [280,]  67  11      0         11        0   150
#> [281,]  68  14      0         79        0   172
#> [282,]  65  15      1         12        1   150
#> [283,]  66  11      1          0        0   100
#> [284,]  65   4      1          2        1   145
#> [285,]  66  15      1         13        1   160
#> [286,]  63   2      0        180        0   150
#> [287,]  65  11      1          6        0   130
#> [288,]  69  21      1         10        0   180
#> [289,]  63   8      0        180        1   120
#> [290,]  65   8      1          0        1    90
#> [291,]  66   3      0          3        1   138
#> [292,]  68  10      1         10        1   150
#> [293,]  65   1      1          0        0   133
#> [294,]  67   7      1          4        1   130
#> [295,]  63   2      1          0        0    99
#> [296,]  67   2      0        180        0   184
#> [297,]  65   6      0          6        0    80
#> [298,]  65  10      1          1        1   148
#> [299,]  66  19      1         12        1   150
#> [300,]  67  12      1         12        0   160
#> [301,]  69   6      0         99        1   140
#> [302,]  65   4      1          1        0   130
#> [303,]  64   4      0        179        0   160
#> [304,]  66   4      0        180        1   130
#> [305,]  70  15      1         12        1   132
#> [306,]  64   4      0        180        1   140
#> [307,]  64   0      1          0        1   118
#> [308,]  66   7      1          5        1   131
#> [309,]  69   4      1          3        1   150
#> [310,]  65  13      1         12        1   130
#> [311,]  69   8      0         93        0   140
#> [312,]  71   3      0          5        0   112
#> [313,]  68   7      0        150        0   210
#> [314,]  71  20      1          0        1   160
#> [315,]  66   9      1          3        1   151
#> [316,]  66   1      1          1        1   165
#> [317,]  70   4      1          0        1   180
#> [318,]  69   8      0        180        1   153
#> [319,]  66   4      0        180        0   130
#> [320,]  68  18      1         14        1   170
#> [321,]  69   0      0          0        1   148
#> [322,]  65   2      0        180        0   130
#> [323,]  68   7      1          0        1   150
#> [324,]  65  14      1         13        1   150
#> [325,]  69   8      0        180        1   180
#> [326,]  71   7      0          7        0   230
#> [327,]  66   2      0          2        1   228
#> [328,]  69   5      0          5        1   142
#> [329,]  71   3      0        103        0   133
#> [330,]  69   3      0          3        1   130
#> [331,]  70  22      1         13        0   103
#> [332,]  68   6      0        180        0   145
#> [333,]  69   8      1          5        1   195
#> [334,]  69   6      1          4        1   174
#> [335,]  72   3      1          0        1   132
#> [336,]  72   7      0          7        1   110
#> [337,]  69   8      1          7        1   108
#> [338,]  66   2      1          1        0   123
#> [339,]  68  18      0         18        1   100
#> [340,]  67  14      0        172        1   140
#> [341,]  69  11      1          0        1   120
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
#> [353,]  67   4      0         60        1   136
#> [354,]  69   5      0         76        0   120
#> [355,]  67   8      1          0        1   130
#> [356,]  68  10      1          8        1   160
#> [357,]  66  24      1         13        0   130
#> [358,]  70  35      1          0        1   105
#> [359,]  72  30      1          0        1   145
#> [360,]  70   7      0          7        0   102
#> [361,]  68   7      1          2        0   135
#> [362,]  71   6      0          9        0   120
#> [363,]  70  11      0        180        1   210
#> [364,]  72  19      1          8        0   120
#> [365,]  72  12      1         10        0   170
#> [366,]  67   8      0        180        1   170
#> [367,]  67   5      1          0        1   147
#> [368,]  72   2      0          2        1   100
#> [369,]  67   4      1          1        0   134
#> [370,]  72   6      1          5        0   115
#> [371,]  71   1      0        173        1   188
#> [372,]  70   3      0        180        0   121
#> [373,]  71   3      1          2        0   150
#> [374,]  72   5      0         28        0   120
#> [375,]  73   6      0        180        1   117
#> [376,]  69  16      1         10        1   140
#> [377,]  72  16      1          1        1   130
#> [378,]  70   4      0        180        0   180
#> [379,]  69   1      1          0        0   155
#> [380,]  73   6      1          0        1   270
#> [381,]  72   8      1          1        1   150
#> [382,]  71   2      1          0        1   180
#> [383,]  68  15      1         13        1   130
#> [384,]  70   3      0          3        1   159
#> [385,]  70  13      1          9        0   100
#> [386,]  72   6      0        180        1   130
#> [387,]  73   4      0        180        1   154
#> [388,]  69   2      1          0        1   110
#> [389,]  71  15      1         11        0   165
#> [390,]  74  20      0         20        1   180
#> [391,]  70   5      1          0        1   190
#> [392,]  71  17      1         11        0   160
#> [393,]  71   8      1          7        0   149
#> [394,]  71   3      1          2        1   190
#> [395,]  73  10      1          8        0   106
#> [396,]  70  26      1         11        1   120
#> [397,]  73   4      0         58        1   160
#> [398,]  70   3      0        180        1   154
#> [399,]  73   6      0        180        0   110
#> [400,]  72  15      1          0        1   150
#> [401,]  71   7      1          2        0   143
#> [402,]  72   8      1          0        1   140
#> [403,]  74   3      0          3        1   150
#> [404,]  73  17      1         11        0   140
#> [405,]  69   2      1          1        1    80
#> [406,]  70   4      1          0        1   140
#> [407,]  69   7      0        180        1   144
#> [408,]  70   8      0          8        0   120
#> [409,]  71  10      1          9        1   120
#> [410,]  75   1      0          1        0   133
#> [411,]  75   2      1          1        0   145
#> [412,]  73  10      1          9        1   146
#> [413,]  73  10      1         10        1   120
#> [414,]  71   2      0         10        1   112
#> [415,]  75   9      1          7        0   140
#> [416,]  75  13      1          1        1   130
#> [417,]  71   4      0          4        0   134
#> [418,]  72  15      1         12        1   120
#> [419,]  70   7      1          4        0   184
#> [420,]  72   7      0         57        1   145
#> [421,]  72  11      0         11        1   140
#> [422,]  73   5      1          3        1   112
#> [423,]  76  25      1         12        1   170
#> [424,]  71   3      1          0        0   144
#> [425,]  73   4      0        180        0   124
#> [426,]  74  34      1          8        1   233
#> [427,]  76   3      1          0        1   120
#> [428,]  71  32      1         12        1   107
#> [429,]  72   5      0        180        0   154
#> [430,]  77   4      0          4        0   185
#> [431,]  75   3      1          1        0   180
#> [432,]  72   7      1          2        0   142
#> [433,]  71  16      0        180        0   140
#> [434,]  73  10      1         10        0   124
#> [435,]  74   7      0        180        1   150
#> [436,]  74   3      0          3        1   128
#> [437,]  76   1      0        180        0   114
#> [438,]  74  19      1          4        1   200
#> [439,]  73   6      0          6        1   114
#> [440,]  75  23      1         14        1   110
#> [441,]  74   2      0        180        0   190
#> [442,]  72   4      0         85        1   120
#> [443,]  72   4      1          3        0   160
#> [444,]  73   4      1          3        1   125
#> [445,]  75   4      1          0        1   122
#> [446,]  75   7      0          7        0   190
#> [447,]  75   0      0          0        1   130
#> [448,]  73  13      1         11        0   195
#> [449,]  75  12      0         12        1   160
#> [450,]  74   8      1          0        1   105
#> [451,]  76  13      1          8        1   148
#> [452,]  75   4      1          2        1   188
#> [453,]  76   4      0          4        1   155
#> [454,]  74   2      0        180        0   111
#> [455,]  73   1      0         52        1   105
#> [456,]  73   0      0        180        0   156
#> [457,]  78  12      1         11        1   160
#> [458,]  76  44      1         10        0   105
#> [459,]  76   5      0        180        0   185
#> [460,]  74  10      1          0        1   135
#> [461,]  74   8      1          8        1   170
#> [462,]  75   9      0        180        1   140
#> [463,]  73  33      1         12        1   175
#> [464,]  77   5      1          0        0   123
#> [465,]  77  12      1          9        1   100
#> [466,]  73  10      1          9        0   146
#> [467,]  77  12      0        180        0   130
#> [468,]  77   1      1          0        1    90
#> [469,]  76  12      1         11        1   120
#> [470,]  78   5      1          0        1   170
#> [471,]  74   6      0         79        1   140
#> [472,]  75   3      1          1        1   171
#> [473,]  74   9      1          8        0   200
#> [474,]  75   6      0        180        0   150
#> [475,]  74   2      1          0        1   130
#> [476,]  73   8      1          1        1   162
#> [477,]  74   2      0        180        0   100
#> [478,]  78   8      1          6        1   110
#> [479,]  74   7      0          7        0   161
#> [480,]  76  13      1          1        1   170
#> [481,]  78  32      1          9        1   198
#> [482,]  79   6      0        180        0   170
#> [483,]  78   0      0        180        1   212
#> [484,]  78  13      1          5        0   130
#> [485,]  78  15      0        180        1   270
#> [486,]  80   8      0          8        1   120
#> [487,]  75  13      1          6        0   150
#> [488,]  74  10      1          8        0   135
#> [489,]  76   1      0          1        1    83
#> [490,]  78  12      1          9        0   150
#> [491,]  75   4      1          0        0   212
#> [492,]  77   2      1          0        1   143
#> [493,]  78  10      0        180        1   130
#> [494,]  75  11      1          4        0   162
#> [495,]  75   3      0          3        0     0
#> [496,]  77  24      0         24        1   160
#> [497,]  80   9      0         23        1   128
#> [498,]  78   6      1          0        1   240
#> [499,]  76   3      1          0        1   140
#> [500,]  79   2      1          0        1   121
#> [501,]  78  14      1          0        1   140
#> [502,]  81   1      0          1        0   130
#> [503,]  78  11      1          8        1   118
#> [504,]  76   4      0          4        1   160
#> [505,]  75   2      1          1        1   204
#> [506,]  78  11      0        180        1   135
#> [507,]  76   1      0          1        1   140
#> [508,]  77  31      1          3        1   161
#> [509,]  78   7      1          0        1   110
#> [510,]  77   7      0        180        1   170
#> [511,]  77   6      0          6        1   144
#> [512,]  81   1      0        180        0   120
#> [513,]  80  15      1         12        1   150
#> [514,]  77   9      1          4        0   141
#> [515,]  80  40      1          0        1   138
#> [516,]  80  17      1         12        0   100
#> [517,]  76   7      0        161        0   151
#> [518,]  79  10      0         10        1   120
#> [519,]  80  15      1          0        1    90
#> [520,]  79  28      0        164        0   100
#> [521,]  80   6      0        173        1   160
#> [522,]  78  32      0        180        1   130
#> [523,]  81   3      0        180        0   184
#> [524,]  81   2      0        175        0   172
#> [525,]  78   7      0          7        1   147
#> [526,]  77  13      1          0        1   190
#> [527,]  78  15      0         15        0   165
#> [528,]  80   5      1          1        1   108
#> [529,]  78   4      0        180        0   175
#> [530,]  79   3      0          3        1   101
#> [531,]  78  26      1          5        0   194
#> [532,]  76   1      0        166        0   131
#> [533,]  81   4      1          1        1   104
#> [534,]  78  20      1          0        1   109
#> [535,]  80   1      0          1        0   100
#> [536,]  78   3      1          1        1   152
#> [537,]  77  10      1          8        1   130
#> [538,]  82   3      1          1        1   144
#> [539,]  77   5      0         85        0   188
#> [540,]  80   2      1          1        0   168
#> [541,]  80   6      1          0        1   119
#> [542,]  80   5      0          5        1   130
#> [543,]  78  12      0        180        0   134
#> [544,]  84  22      1         10        0   180
#> [545,]  79   4      0          4        1   121
#> [546,]  83   9      1          5        1   170
#> [547,]  82   5      0        180        0   110
#> [548,]  79   7      1          6        0   130
#> [549,]  83   4      0        103        0    97
#> [550,]  81   5      0        177        0    41
#> [551,]  80  11      1          8        0   170
#> [552,]  78  23      1         10        1   145
#> [553,]  79   4      0          4        1   183
#> [554,]  78   9      1          4        1   120
#> [555,]  82   8      1          1        0   128
#> [556,]  79   1      0        180        1   170
#> [557,]  80   7      1          0        1   146
#> [558,]  84   5      1          1        1    85
#> [559,]  81  20      1          9        0   170
#> [560,]  81  16      0         16        1   110
#> [561,]  80   6      1          0        1   150
#> [562,]  80  11      1          8        0   110
#> [563,]  81   8      0        180        0   146
#> [564,]  80   8      1          7        0   160
#> [565,]  79   7      0        177        0   197
#> [566,]  85   4      0        180        0    90
#> [567,]  82   6      0        128        1   100
#> [568,]  84   4      0        167        0   198
#> [569,]  80   3      1          1        1   230
#> [570,]  82  23      1          0        0   110
#> [571,]  84   5      0        180        1   203
#> [572,]  84   4      0          4        1    85
#> [573,]  81   1      0          1        1   150
#> [574,]  84   1      0         38        1   205
#> [575,]  83   3      0        180        0   174
#> [576,]  81   4      0         90        1   138
#> [577,]  79   9      1          8        0   150
#> [578,]  85   3      1          2        1   160
#> [579,]  84   4      0         89        1   129
#> [580,]  83   1      0          1        1   100
#> [581,]  82  19      0         19        0   120
#> [582,]  83   9      0        180        0   198
#> [583,]  79  14      1          0        0   110
#> [584,]  83   3      0        114        0    98
#> [585,]  81  14      1         12        1   128
#> [586,]  82   0      0          2        1   100
#> [587,]  85   9      1          6        1   160
#> [588,]  83   1      0        180        0   160
#> [589,]  81   4      0          4        0   175
#> [590,]  84  15      1         13        1   110
#> [591,]  81   1      0          1        1   145
#> [592,]  81  12      0         12        1   163
#> [593,]  82  16      1          8        0   103
#> [594,]  82   5      1          0        1   146
#> [595,]  81   4      0          4        0   160
#> [596,]  81  19      1         14        0   120
#> [597,]  82   3      1          2        0   130
#> [598,]  82  15      1          0        0   183
#> [599,]  86   8      0          8        1   132
#> [600,]  84   6      0        165        0   145
#> [601,]  82   9      0        180        1   134
#> [602,]  85   3      0          3        1   118
#> [603,]  81   2      1          0        1   118
#> [604,]  83   9      0        180        1   149
#> [605,]  82   1      0        180        1   193
#> [606,]  87   2      0          5        1   137
#> [607,]  84  16      0         70        1   150
#> [608,]  83  19      0         43        0   150
#> [609,]  84   3      1          2        0   125
#> [610,]  86   2      0        180        1   169
#> [611,]  88  14      1          3        1   130
#> [612,]  83  13      1         12        0   170
#> [613,]  84   7      1          2        0   148
#> [614,]  87   2      0        180        0   113
#> [615,]  84   9      0         92        1   110
#> [616,]  84   3      0        180        1   170
#> [617,]  82   4      0          4        0   130
#> [618,]  86  13      0        177        0   163
#> [619,]  85   3      0          3        1   113
#> [620,]  84  13      0         62        1   100
#> [621,]  86   6      1          1        0   112
#> [622,]  88   4      0          4        0   100
#> [623,]  83   9      0         65        1   150
#> [624,]  86   9      1          7        1   142
#> [625,]  86   6      0         46        0   173
#> [626,]  88   3      0        115        0   110
#> [627,]  88   2      0        180        1    68
#> [628,]  83   3      0          3        1   130
#> [629,]  87   8      0          8        1   157
#> [630,]  88   4      0          4        0    86
#> [631,]  89   5      0        119        1   140
#> [632,]  87   1      0          1        0   170
#> [633,]  84   8      0        180        1   119
#> [634,]  84   2      0        110        1   174
#> [635,]  87  15      1          9        1   138
#> [636,]  89  10      0         46        1   170
#> [637,]  87   6      1          0        0   125
#> [638,]  91  10      0        145        0   135
#> [639,]  88   7      0         24        0   119
#> [640,]  88   8      0         50        1   154
#> [641,]  90  11      1         10        1   186
#> [642,]  87   6      0        126        1   168
#> [643,]  91   1      0          1        1    74
#> [644,]  87  43      0        178        1   130
#> [645,]  87   5      0         36        1   150
#> [646,]  90   5      1          0        1   125
#> [647,]  89   3      1          1        1   160
#> [648,]  92   1      0          1        1   167
#> [649,]  91   3      0         33        1   137
#> [650,]  88   5      0        158        0   100
#> [651,]  89  12      1          0        1   130
#> [652,]  89   2      0        168        0   118
#> [653,]  89  52      0         52        1   130
#> [654,]  92   7      0          7        1   110
#> [655,]  89   4      0          4        1   159
#> [656,]  89  14      0        180        1    84
#> [657,]  90  18      0        180        0   188
#> [658,]  90  19      1         11        1   129
#> [659,]  94   6      0         50        0    78
#> [660,]  91   2      0          2        1   116
#> [661,]  92   4      0         76        1   149
#> [662,]  91   1      0        180        0   158
#> [663,]  90   3      0         67        0   162
#> [664,]  96   3      0         12        1    97
#> [665,]  95   8      1          5        1   150
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  93   4      0        180        1   135
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 115.0 
#>  [11] 180.0+ 180.0+  12.0    5.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+
#>  [21]   3.0  180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41]   6.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+   7.0  180.0+ 179.0+ 180.0+ 180.0+ 180.0+
#>  [71]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0   88.0+ 180.0+   4.0+
#>  [81] 180.0+ 180.0+  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+
#>  [91]   4.0+  85.0  180.0+ 166.0+  99.0  180.0+  16.0+ 180.0+ 152.0+   7.0+
#> [101]   6.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+ 180.0+ 174.0+   6.0+   1.0 
#> [111] 180.0+ 180.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+  16.0+  16.0  180.0+ 180.0+ 180.0+ 134.0+ 180.0+   8.0    3.0+
#> [131] 180.0+ 180.0+ 180.0+ 180.0+ 140.0  180.0+   1.0  165.0  180.0+ 180.0+
#> [141] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+ 166.0+ 180.0+ 147.0+ 180.0+
#> [151] 180.0+   5.0+   4.0+ 180.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+
#> [171] 180.0+   0.5  180.0+   3.0    1.0  180.0+ 180.0+ 180.0+ 180.0+  45.0 
#> [181]   3.0+  19.0  180.0+   9.0+ 180.0+ 172.0+  24.0  180.0+   8.0   77.0 
#> [191] 180.0+ 180.0+ 180.0+ 169.0    6.0  180.0+ 180.0+ 180.0+ 180.0+  30.0 
#> [201] 180.0+ 180.0+  28.0   13.0+   5.0   18.0    5.0+ 180.0+ 180.0+   1.0 
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0    7.0+
#> [221]  22.0  180.0+ 180.0+   7.0+ 180.0+ 180.0+   1.0  167.0  180.0+ 180.0+
#> [231]  17.0  180.0+  12.0  180.0+ 180.0+  14.0+  36.0   12.0  180.0+ 180.0+
#> [241] 180.0+ 180.0+   0.5  180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [251] 180.0+ 180.0+   3.0  180.0+ 180.0+  11.0+  18.0+ 180.0+ 180.0+ 180.0+
#> [261] 180.0+   3.0+ 103.0  180.0+ 180.0+ 179.0+ 166.0+  14.0+ 180.0+   3.0+
#> [271] 180.0+ 180.0+ 180.0+   7.0+   8.0    5.0  180.0+ 123.0+  18.0   11.0+
#> [281]  79.0   15.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 174.0+ 180.0+   8.0+
#> [291]   3.0   10.0  180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+  19.0+  12.0 
#> [301]  99.0  180.0+ 179.0+ 180.0+ 180.0+ 180.0+   0.5    7.0+ 152.0+ 180.0+
#> [311]  93.0    5.0  150.0  180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+
#> [321]   0.5  180.0+ 180.0+  14.0+ 180.0+   7.0+   2.0    5.0+ 103.0    3.0+
#> [331] 180.0+ 180.0+ 180.0+  97.0  180.0+   7.0    8.0+   2.0+  18.0  172.0+
#> [341] 180.0+   7.0    7.0    8.0+  13.0+ 123.0  180.0+ 180.0+  51.0   19.0 
#> [351] 180.0+   1.0   60.0   76.0  180.0+  10.0+ 180.0+ 180.0+ 162.0    7.0+
#> [361]   7.0+   9.0  180.0+ 180.0+  12.0  180.0+ 180.0+   2.0   76.0  180.0+
#> [371] 173.0+ 180.0+ 180.0+  28.0  180.0+  16.0+  16.0+ 180.0+ 180.0+   6.0 
#> [381] 180.0+ 180.0+  15.0    3.0+  13.0+ 180.0+ 180.0+   2.0  180.0+  20.0 
#> [391] 180.0+ 180.0+   8.0    3.0   87.0  180.0+  58.0  180.0+ 180.0+ 180.0+
#> [401] 180.0+ 180.0+   3.0  180.0+   2.0  180.0+ 180.0+   8.0+ 179.0+   1.0 
#> [411] 180.0+ 180.0+  15.0   10.0  180.0+  13.0    4.0+ 180.0+ 104.0+  57.0 
#> [421]  11.0    5.0  180.0+ 180.0+ 180.0+  34.0  180.0+ 177.0+ 180.0+   4.0+
#> [431] 180.0+   7.0  180.0+  10.0  180.0+   3.0  180.0+ 180.0+   6.0  180.0+
#> [441] 180.0+  85.0  180.0+ 180.0+   4.0    7.0    0.5  180.0+  12.0  180.0+
#> [451] 180.0+  46.0    4.0  180.0+  52.0  180.0+  12.0  180.0+ 180.0+ 180.0+
#> [461]   8.0  180.0+  33.0    5.0  180.0+ 180.0+ 180.0+   1.0   12.0  180.0+
#> [471]  79.0    3.0  168.0+ 180.0+ 176.0+ 180.0+ 180.0+   8.0+   7.0  180.0+
#> [481]  32.0  180.0+ 180.0+ 172.0  180.0+   8.0  180.0+ 180.0+   1.0  180.0+
#> [491]   4.0+   2.0  180.0+ 152.0+   3.0   24.0   23.0  180.0+   3.0+ 180.0+
#> [501] 180.0+   1.0   11.0    4.0    2.0+ 180.0+   1.0  171.0   43.0  180.0+
#> [511]   6.0  180.0+ 180.0+  71.0   40.0   17.0  161.0   10.0+ 180.0+ 164.0 
#> [521] 173.0  180.0+ 180.0+ 175.0+   7.0+  22.0   15.0+   5.0+ 180.0+   3.0 
#> [531] 171.0+ 166.0+  71.0   20.0+   1.0    3.0+  10.0  180.0+  85.0   10.0 
#> [541]   6.0    5.0  180.0+ 180.0+   4.0    9.0+ 180.0+ 180.0+ 103.0  177.0+
#> [551] 169.0   70.0    4.0  180.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0   16.0 
#> [561] 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 128.0  167.0    3.0+  62.0 
#> [571] 180.0+   4.0    1.0   38.0  180.0+  90.0  180.0+ 180.0+  89.0    1.0 
#> [581]  19.0  180.0+ 180.0+ 114.0  180.0+   2.0  180.0+ 180.0+   4.0+ 180.0+
#> [591]   1.0   12.0   16.0+   5.0+   4.0+ 180.0+   3.0   83.0    8.0  165.0 
#> [601] 180.0+   3.0+ 180.0+ 180.0+ 180.0+   5.0   70.0   43.0  180.0+ 180.0+
#> [611]  14.0   13.0  180.0+ 180.0+  92.0  180.0+   4.0  177.0    3.0+  62.0 
#> [621]   6.0+   4.0+  65.0   11.0   46.0  115.0  180.0+   3.0+   8.0+   4.0 
#> [631] 119.0    1.0+ 180.0+ 110.0  180.0+  46.0   25.0  145.0   24.0   50.0 
#> [641]  11.0  126.0    1.0  178.0+  36.0   89.0    3.0+   1.0   33.0  158.0 
#> [651] 180.0+ 168.0   52.0    7.0    4.0  180.0+ 180.0+ 180.0+  50.0    2.0 
#> [661]  76.0  180.0+  67.0   12.0    8.0    7.0+   0.5   69.0  180.0+   3.0 
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
#>   0.8551263 
```
