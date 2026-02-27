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
#> min 0.00327    45   2.708 0.2063       6
#> 1se 0.08477    10   2.906 0.1942       5
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  35   5      1          2        0   172
#>   [2,]  35  10      1          9        0   106
#>   [3,]  34   5      0          5        0   120
#>   [4,]  35   2      0        180        0   121
#>   [5,]  38   2      0        115        0   150
#>   [6,]  38  12      1          8        1   120
#>   [7,]  38  16      1         10        0   160
#>   [8,]  37   1      1          0        1   146
#>   [9,]  42   2      0        180        1   100
#>  [10,]  38   5      1          3        0   125
#>  [11,]  42   2      0          2        0   140
#>  [12,]  40   6      0        180        1   138
#>  [13,]  40  11      1         10        1   120
#>  [14,]  43   3      1          0        1   100
#>  [15,]  41   2      1          1        0   166
#>  [16,]  40   1      1          0        1   145
#>  [17,]  43   4      1          0        1   130
#>  [18,]  42   4      0        180        0   162
#>  [19,]  42  15      1         13        1   125
#>  [20,]  40   3      1          1        0   170
#>  [21,]  42  12      1         10        1   170
#>  [22,]  42   2      0        180        1   124
#>  [23,]  44   5      1          1        0   170
#>  [24,]  45   3      0        180        1   154
#>  [25,]  41  10      1          8        0   150
#>  [26,]  44   3      0        180        0   141
#>  [27,]  41  13      1          1        0   140
#>  [28,]  45   6      0        180        1   170
#>  [29,]  41   5      1          4        1   141
#>  [30,]  44   2      1          1        1   150
#>  [31,]  43   2      0        180        1   140
#>  [32,]  46  15      0        180        0   120
#>  [33,]  46   2      1          1        0   126
#>  [34,]  47   4      1          3        0   118
#>  [35,]  48  15      0        180        1   160
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
#>  [46,]  46   2      1          1        1   122
#>  [47,]  46   6      1          0        1   100
#>  [48,]  47   2      0        180        0   108
#>  [49,]  45   5      0        180        1   190
#>  [50,]  46   5      1          3        0   130
#>  [51,]  47   3      1          1        1   120
#>  [52,]  48   3      0        180        0   154
#>  [53,]  48  12      1         11        0   200
#>  [54,]  47   5      1          3        1   130
#>  [55,]  47   9      1          6        0   170
#>  [56,]  46   3      1          0        1   119
#>  [57,]  47  10      0         10        1   140
#>  [58,]  48   2      1          0        0   184
#>  [59,]  47   7      0        180        0   145
#>  [60,]  50   4      1          1        0   125
#>  [61,]  50   6      1          2        1   140
#>  [62,]  49   7      1          7        1   110
#>  [63,]  46   9      1          9        1   122
#>  [64,]  50   7      0        180        1   110
#>  [65,]  49   2      0          2        0   105
#>  [66,]  51   1      0          1        1   145
#>  [67,]  49  15      1         11        1   160
#>  [68,]  49  23      0        179        1   112
#>  [69,]  46   6      1          0        1   156
#>  [70,]  50   7      1          0        1    92
#>  [71,]  50   4      0          4        1   100
#>  [72,]  51   3      1          2        0   113
#>  [73,]  50   1      1          0        0   150
#>  [74,]  50   9      0        180        0   130
#>  [75,]  47   8      0        180        0   160
#>  [76,]  51   8      0        180        1   140
#>  [77,]  52   2      0        180        0   155
#>  [78,]  46   3      0        180        1   120
#>  [79,]  46   1      1          1        0   145
#>  [80,]  50   4      1          1        0   150
#>  [81,]  48   7      1          0        1   110
#>  [82,]  53   8      0         36        1   160
#>  [83,]  48  17      1         10        0   111
#>  [84,]  52   4      1          4        0   152
#>  [85,]  54  17      1         12        1   102
#>  [86,]  54   6      1          3        0   129
#>  [87,]  51   3      1          1        0   140
#>  [88,]  50  14      1         13        0   170
#>  [89,]  53   8      1          7        0   160
#>  [90,]  48   3      1          2        0   150
#>  [91,]  51  25      1          1        0   202
#>  [92,]  49   5      1          2        1   150
#>  [93,]  53   4      0          4        0   140
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
#> [104,]  55   4      1          2        0   150
#> [105,]  52   4      0        180        1   180
#> [106,]  51  13      1         11        0   145
#> [107,]  50   5      1          4        1   150
#> [108,]  52   4      0        180        0   183
#> [109,]  55  28      1         13        1   160
#> [110,]  49   6      1          0        1   130
#> [111,]  49   1      0          1        1   110
#> [112,]  50   7      1          1        0   156
#> [113,]  53   9      0          9        1    95
#> [114,]  56   4      1          1        1   130
#> [115,]  52   5      0        175        1   117
#> [116,]  54   1      0        180        0   162
#> [117,]  56   3      0        180        1   193
#> [118,]  56   2      0        180        0   132
#> [119,]  55   5      1          4        1   120
#> [120,]  52   8      0        180        0   119
#> [121,]  55   6      0        180        0   170
#> [122,]  52  16      0         16        0   152
#> [123,]  53  10      1          9        0   172
#> [124,]  52  16      1         14        0   170
#> [125,]  53  15      0         15        1    90
#> [126,]  55   6      0        180        1   100
#> [127,]  55   6      1          5        1   138
#> [128,]  55   2      0        134        1   140
#> [129,]  54   3      0        180        0   128
#> [130,]  56   3      0          8        1   139
#> [131,]  57   3      0          3        0   120
#> [132,]  54   7      1          2        0   129
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
#> [143,]  58   8      0          8        1   130
#> [144,]  54   5      0        180        1   108
#> [145,]  55   3      1          1        1   156
#> [146,]  57   0      0          0        1   150
#> [147,]  53  21      1         13        1   130
#> [148,]  57   4      0        180        1   119
#> [149,]  53  15      1         10        1   130
#> [150,]  54  17      1          8        1   227
#> [151,]  55   9      1          2        1   147
#> [152,]  55  13      0        166        1   140
#> [153,]  56   5      0          5        1   150
#> [154,]  54  23      1          8        0   120
#> [155,]  53   7      1          0        1   120
#> [156,]  57  11      1         10        1   129
#> [157,]  55   3      1          2        0   140
#> [158,]  55   5      0          5        1   131
#> [159,]  54   7      1          0        1   141
#> [160,]  56   4      0          4        0   164
#> [161,]  59  15      1         10        0   140
#> [162,]  58   9      1          0        1   180
#> [163,]  58   1      1          1        1   200
#> [164,]  55   5      1          0        0   140
#> [165,]  56   7      1          5        1   120
#> [166,]  55   2      0          2        0   106
#> [167,]  57   1      0        180        0   148
#> [168,]  59   3      0        180        0   120
#> [169,]  58   4      1          0        1   160
#> [170,]  60   5      1          1        0   138
#> [171,]  57   5      0        180        1   130
#> [172,]  58  11      1          9        1   124
#> [173,]  55   5      1          0        1   160
#> [174,]  59   6      1          0        1   140
#> [175,]  58  26      1          0        1   189
#> [176,]  60   0      1          0        1    80
#> [177,]  59   2      1          1        0   140
#> [178,]  58   8      0        161        1   140
#> [179,]  61   3      1          2        1   102
#> [180,]  61  20      1         13        0   130
#> [181,]  57  13      1         10        0   110
#> [182,]  57   4      1          3        0   138
#> [183,]  57  11      0        180        1   150
#> [184,]  61   3      0         17        0   143
#> [185,]  57   3      1          2        0   120
#> [186,]  58  19      1         13        1   140
#> [187,]  56  13      1          6        1   158
#> [188,]  56  18      1         11        1   165
#> [189,]  59   9      1          0        1    80
#> [190,]  55   4      1          3        1   160
#> [191,]  58  11      0        172        1   135
#> [192,]  60  12      1          0        1   114
#> [193,]  55   9      1          7        1   135
#> [194,]  61   4      1          0        1   115
#> [195,]  56   8      1          8        0   120
#> [196,]  61  13      1         12        1   130
#> [197,]  59  11      1          8        1   190
#> [198,]  57   1      0          1        0   126
#> [199,]  58   5      1          1        1   135
#> [200,]  59  10      0        180        0   160
#> [201,]  61  13      0         13        0   210
#> [202,]  62  10      1          0        1   153
#> [203,]  62   7      1          2        1   180
#> [204,]  61  18      0        170        0   140
#> [205,]  61  28      1          7        0   133
#> [206,]  58   8      1          3        1   150
#> [207,]  57   7      0        169        0   180
#> [208,]  61   7      0          7        1   150
#> [209,]  60   7      0          7        0   147
#> [210,]  59  13      1          2        0   198
#> [211,]  62   4      1          0        0   160
#> [212,]  60  17      1          8        1   140
#> [213,]  62   4      1          3        0   173
#> [214,]  59   1      0        180        0   155
#> [215,]  59  16      1          9        1   133
#> [216,]  63   6      0         28        1   120
#> [217,]  61  13      0         13        0   120
#> [218,]  61   5      0          5        1   110
#> [219,]  57   2      1          1        0   159
#> [220,]  62  17      1         10        1   180
#> [221,]  62   1      1          0        1   172
#> [222,]  58   7      0        180        1   150
#> [223,]  61   7      0        180        0   135
#> [224,]  63   4      1          3        0   222
#> [225,]  63  15      1         10        1   126
#> [226,]  64   4      0        180        0   130
#> [227,]  63   4      1          1        0   155
#> [228,]  60  18      1         13        0   132
#> [229,]  59   8      0        180        1   140
#> [230,]  59   1      0         22        1   162
#> [231,]  60   7      1          5        1   141
#> [232,]  60   7      0          7        0   140
#> [233,]  59   5      1          1        0   148
#> [234,]  60   7      1          1        1    90
#> [235,]  63   1      0          1        0   162
#> [236,]  63   1      0          1        0   130
#> [237,]  62   6      0        180        0   170
#> [238,]  59   4      0          4        0   149
#> [239,]  62   6      0          6        0   120
#> [240,]  63  12      1         10        0   200
#> [241,]  59  10      0        180        1   130
#> [242,]  60   8      0         17        1   130
#> [243,]  61   6      1          1        1   117
#> [244,]  66   1      1          0        1   120
#> [245,]  64   6      1          0        1   140
#> [246,]  63  10      1          0        1   148
#> [247,]  65  36      1         11        0   140
#> [248,]  63   4      1          3        0   162
#> [249,]  66   3      1          1        0   127
#> [250,]  64  32      1          9        1   160
#> [251,]  63  12      1          9        0   114
#> [252,]  63   7      0        180        0   120
#> [253,]  65   8      1          0        0   168
#> [254,]  65  10      1          8        1   120
#> [255,]  64   0      0          0        1    90
#> [256,]  60   6      0        180        0   130
#> [257,]  61  12      1         11        0   154
#> [258,]  65   3      0        180        1   190
#> [259,]  64   7      0        180        1   120
#> [260,]  66   6      1          1        1   130
#> [261,]  65   3      1          0        1    80
#> [262,]  63   5      1          4        0   170
#> [263,]  63   2      1          1        0   180
#> [264,]  67  11      0         11        1   100
#> [265,]  64   2      0          2        0   201
#> [266,]  66  18      1          5        0   142
#> [267,]  66  16      1         11        1   169
#> [268,]  61  14      1          5        0   140
#> [269,]  61  15      1         10        0   130
#> [270,]  63   9      1          8        1   160
#> [271,]  63   3      1          2        0   120
#> [272,]  63   2      1          0        0   140
#> [273,]  64  19      1          8        1   160
#> [274,]  65   8      1          0        1   140
#> [275,]  65  15      1         11        1   160
#> [276,]  64  13      1         12        1   150
#> [277,]  66   7      1          0        1   115
#> [278,]  66  13      1          0        0   118
#> [279,]  66   3      1          0        1   135
#> [280,]  66   6      1          0        1   140
#> [281,]  65   2      1          1        1   170
#> [282,]  68   1      0        180        1   166
#> [283,]  63   7      1          0        0   162
#> [284,]  67   8      1          1        1   130
#> [285,]  68   5      0          5        1    90
#> [286,]  64   1      0          1        1   120
#> [287,]  65  17      1         14        1   100
#> [288,]  63   8      1          1        1   162
#> [289,]  63   1      1          0        1   155
#> [290,]  63  10      0         18        1   130
#> [291,]  67  11      0         11        0   150
#> [292,]  68  14      0         79        0   172
#> [293,]  66  12      1         10        1   150
#> [294,]  66  15      1         13        1   160
#> [295,]  65  11      1          6        0   130
#> [296,]  69  21      1         10        0   180
#> [297,]  66   3      0          3        1   138
#> [298,]  67   1      0        180        1   160
#> [299,]  68  10      1         10        1   150
#> [300,]  65   1      1          0        0   133
#> [301,]  67   2      0        180        0   184
#> [302,]  65  10      1          1        1   148
#> [303,]  66  19      1         12        1   150
#> [304,]  67  12      1         12        0   160
#> [305,]  65   4      1          1        0   130
#> [306,]  66   4      0        180        1   130
#> [307,]  70  15      1         12        1   132
#> [308,]  64   4      0        180        1   140
#> [309,]  67   2      0         18        0   131
#> [310,]  66   7      1          5        1   131
#> [311,]  66   4      0        180        0   177
#> [312,]  69   4      1          3        1   150
#> [313,]  65  13      1         12        1   130
#> [314,]  69  17      1         10        0   140
#> [315,]  66   6      0        180        0   140
#> [316,]  65   1      0          1        1   120
#> [317,]  68  18      1          0        1   160
#> [318,]  68   4      0          4        1   190
#> [319,]  70   7      1          0        1   190
#> [320,]  68   7      0        150        0   210
#> [321,]  67   2      0        180        0   128
#> [322,]  66   9      1          3        1   151
#> [323,]  69   8      0        180        1   153
#> [324,]  70  14      0        171        0   166
#> [325,]  66   4      0        180        0   130
#> [326,]  67   6      1          4        0   130
#> [327,]  68  18      1         14        1   170
#> [328,]  69   0      0          0        1   148
#> [329,]  65   2      0        180        0   130
#> [330,]  68   7      1          0        1   150
#> [331,]  69   3      1          2        0   151
#> [332,]  69   8      0        180        1   180
#> [333,]  71   7      0          7        0   230
#> [334,]  66   2      0          2        1   228
#> [335,]  71   6      0         45        1   158
#> [336,]  69   5      0          5        1   142
#> [337,]  69   3      0          3        1   130
#> [338,]  70  22      1         13        0   103
#> [339,]  67   1      0         36        1   104
#> [340,]  67   5      0          5        0   130
#> [341,]  69   8      1          5        1   195
#> [342,]  69   6      1          4        1   174
#> [343,]  72   3      1          0        1   132
#> [344,]  72   7      0          7        1   110
#> [345,]  66   2      1          1        0   123
#> [346,]  69  19      0        180        0   130
#> [347,]  67  14      0        172        1   140
#> [348,]  69  11      1          0        1   120
#> [349,]  66   2      0        180        0   130
#> [350,]  67   7      1          4        0   122
#> [351,]  69   4      1          3        0   132
#> [352,]  69   8      1          2        0   121
#> [353,]  67  13      1          9        0   130
#> [354,]  70   3      0        123        0   130
#> [355,]  70   9      0        180        1   142
#> [356,]  72   5      1          4        0   170
#> [357,]  68   3      0         19        0   135
#> [358,]  67  12      1          8        0   120
#> [359,]  67   1      0          1        1    60
#> [360,]  72  13      1         11        1   195
#> [361,]  68  10      1          8        1   160
#> [362,]  66  24      1         13        0   130
#> [363,]  72  30      1          0        1   145
#> [364,]  70   7      0          7        0   102
#> [365,]  68   7      1          2        0   135
#> [366,]  73  20      1          0        1   170
#> [367,]  69  10      1          6        1   120
#> [368,]  70  11      0        180        1   210
#> [369,]  67   8      0        180        1   170
#> [370,]  67   5      1          0        1   147
#> [371,]  67   9      0        180        0   158
#> [372,]  70   5      0        180        0   150
#> [373,]  72   2      0          2        1   100
#> [374,]  72   6      1          5        0   115
#> [375,]  71   1      0        173        1   188
#> [376,]  70   3      0        180        0   121
#> [377,]  69   3      0        180        0   220
#> [378,]  71   3      1          2        0   150
#> [379,]  68   4      1          3        0   210
#> [380,]  71   5      0        180        0   191
#> [381,]  69  16      1         10        1   140
#> [382,]  69   8      1          1        0   164
#> [383,]  68   7      0        180        1   130
#> [384,]  70   4      0        180        0   180
#> [385,]  69   1      1          0        0   155
#> [386,]  71   2      1          0        1   180
#> [387,]  73   7      0          7        1   140
#> [388,]  68  15      1         13        1   130
#> [389,]  70   3      0          3        1   159
#> [390,]  72   6      0        180        1   130
#> [391,]  73   0      0        180        1   161
#> [392,]  74   8      1          0        1    85
#> [393,]  69   2      1          0        1   110
#> [394,]  71   3      1          1        0   150
#> [395,]  71  15      1         11        0   165
#> [396,]  74  20      0         20        1   180
#> [397,]  68   9      0        180        1   120
#> [398,]  73   3      1          0        1   136
#> [399,]  70   5      1          0        1   190
#> [400,]  71  17      1         11        0   160
#> [401,]  71   8      1          7        0   149
#> [402,]  69  12      1          1        1   149
#> [403,]  74   4      0          4        0   120
#> [404,]  73   4      0         58        1   160
#> [405,]  72   5      1          3        1   160
#> [406,]  70   3      0        180        1   154
#> [407,]  73   6      0        180        0   110
#> [408,]  72  15      1          0        1   150
#> [409,]  71   7      1          2        0   143
#> [410,]  72   8      1          0        1   140
#> [411,]  73  17      1         11        0   140
#> [412,]  69   2      1          1        1    80
#> [413,]  71  14      1         13        1   170
#> [414,]  72  10      1          8        1   153
#> [415,]  69   7      0        180        1   144
#> [416,]  72  15      1         13        0   156
#> [417,]  70   8      0          8        0   120
#> [418,]  75   1      0          1        0   133
#> [419,]  75   2      1          1        0   145
#> [420,]  71   2      0         10        1   112
#> [421,]  73   1      0          1        1    80
#> [422,]  75   9      1          7        0   140
#> [423,]  75  13      1          1        1   130
#> [424,]  71   4      0          4        0   134
#> [425,]  72  15      1         12        1   120
#> [426,]  73  10      1          8        0   120
#> [427,]  70   7      1          4        0   184
#> [428,]  72   7      0         57        1   145
#> [429,]  73  10      0        180        0   162
#> [430,]  72  11      0         11        1   140
#> [431,]  76  25      1         12        1   170
#> [432,]  73  12      1         12        1   140
#> [433,]  72   2      0        180        0   120
#> [434,]  75   1      0        180        1   140
#> [435,]  72   4      1          0        1   197
#> [436,]  71   3      1          0        0   144
#> [437,]  73   4      0        180        0   124
#> [438,]  74  34      1          8        1   233
#> [439,]  76   3      1          0        1   120
#> [440,]  72   5      0        180        0   154
#> [441,]  72   3      0        180        0   160
#> [442,]  77  11      0         11        1   150
#> [443,]  77   4      0          4        0   185
#> [444,]  75   3      1          1        0   180
#> [445,]  73  15      0         15        1   160
#> [446,]  71  16      0        180        0   140
#> [447,]  73  10      1         10        0   124
#> [448,]  74   7      0        180        1   150
#> [449,]  74   3      0          3        1   128
#> [450,]  76   1      0        180        0   114
#> [451,]  74   2      1          1        0   140
#> [452,]  73   6      0          6        1   114
#> [453,]  75  23      1         14        1   110
#> [454,]  74   2      0        180        0   190
#> [455,]  72   4      0         85        1   120
#> [456,]  72   4      1          3        0   160
#> [457,]  75   4      1          0        1   122
#> [458,]  75   7      0          7        0   190
#> [459,]  75   0      0          0        1   130
#> [460,]  73  13      1         11        0   195
#> [461,]  76  13      1          8        1   148
#> [462,]  76   4      0          4        1   155
#> [463,]  75   1      0          1        1   125
#> [464,]  73   1      0         52        1   105
#> [465,]  73   0      0        180        0   156
#> [466,]  72   5      0        180        0   120
#> [467,]  78  12      1         11        1   160
#> [468,]  74  10      1          0        1   135
#> [469,]  76   5      1          0        1   167
#> [470,]  77  12      1          9        1   100
#> [471,]  73  10      1          9        0   146
#> [472,]  77  12      0        180        0   130
#> [473,]  77   1      1          0        1    90
#> [474,]  73   7      1          0        0   174
#> [475,]  74   9      1          8        0   200
#> [476,]  75   6      0        180        0   150
#> [477,]  79  10      1          8        0   190
#> [478,]  76  29      0         47        0    90
#> [479,]  73   8      1          1        1   162
#> [480,]  74   2      0        180        0   100
#> [481,]  78   7      0          7        1   133
#> [482,]  74  15      0        180        1   172
#> [483,]  78   8      1          6        1   110
#> [484,]  76  13      1          1        1   170
#> [485,]  80  10      1          6        1   147
#> [486,]  78  13      1          5        0   130
#> [487,]  80   8      0          8        1   120
#> [488,]  75  13      1          6        0   150
#> [489,]  76   1      0          1        1    83
#> [490,]  79   4      0         80        0   145
#> [491,]  75   4      1          0        0   212
#> [492,]  77   2      1          0        1   143
#> [493,]  76  11      1          0        0   120
#> [494,]  75  11      1          4        0   162
#> [495,]  75   3      0          3        0     0
#> [496,]  77  24      0         24        1   160
#> [497,]  79   8      0         32        1   120
#> [498,]  80   6      0          6        1   150
#> [499,]  78   6      1          0        1   240
#> [500,]  76   3      1          0        1   140
#> [501,]  79  11      0        180        0   160
#> [502,]  79   2      1          0        1   121
#> [503,]  78  14      1          0        1   140
#> [504,]  76   4      0          4        1   160
#> [505,]  79   4      0          4        1   125
#> [506,]  76  10      1          8        0   180
#> [507,]  76  12      1         10        1   127
#> [508,]  75   2      1          1        1   204
#> [509,]  78  11      0        180        1   135
#> [510,]  76   1      0          1        1   140
#> [511,]  78   7      1          0        1   110
#> [512,]  79   3      0          3        0   120
#> [513,]  79   4      1          0        1   120
#> [514,]  81   1      0        180        0   120
#> [515,]  80  15      1         12        1   150
#> [516,]  77   9      1          4        0   141
#> [517,]  80  40      1          0        1   138
#> [518,]  78   4      0         59        1   112
#> [519,]  80  17      1         12        0   100
#> [520,]  76   7      0        161        0   151
#> [521,]  81   4      1          2        1   126
#> [522,]  79  28      0        164        0   100
#> [523,]  80   6      0        173        1   160
#> [524,]  78  32      0        180        1   130
#> [525,]  81   2      0        175        0   172
#> [526,]  77  13      1          0        1   190
#> [527,]  78  15      0         15        0   165
#> [528,]  81   4      1          1        1   104
#> [529,]  78   3      1          1        1   152
#> [530,]  77  10      1          8        1   130
#> [531,]  82   3      1          1        1   144
#> [532,]  77   5      0         85        0   188
#> [533,]  79   6      0          6        0   152
#> [534,]  80   6      1          0        1   119
#> [535,]  82   1      1          0        1    82
#> [536,]  79  10      0        180        1   150
#> [537,]  77   4      0        180        1    98
#> [538,]  78  12      0        180        0   134
#> [539,]  79   1      0        125        0   193
#> [540,]  82  21      1          2        0   155
#> [541,]  84  22      1         10        0   180
#> [542,]  79   4      0          4        1   121
#> [543,]  80   6      0          6        1   110
#> [544,]  83   5      0        180        0   148
#> [545,]  79   7      1          6        0   130
#> [546,]  83   4      0        103        0    97
#> [547,]  81  11      1          8        0   160
#> [548,]  78  23      1         10        1   145
#> [549,]  78   9      1          4        1   120
#> [550,]  82   8      1          1        0   128
#> [551,]  79   1      0        180        1   170
#> [552,]  81  15      0        180        1   140
#> [553,]  80   7      1          0        1   146
#> [554,]  84   5      1          1        1    85
#> [555,]  81  16      0         16        1   110
#> [556,]  80  11      1          8        0   110
#> [557,]  79   7      0        177        0   197
#> [558,]  85   4      0        180        0    90
#> [559,]  81   2      1          1        0   198
#> [560,]  80   3      1          1        1   230
#> [561,]  82  23      1          0        0   110
#> [562,]  84   5      0        180        1   203
#> [563,]  84   4      0          4        1    85
#> [564,]  84   1      0         38        1   205
#> [565,]  81   4      0         90        1   138
#> [566,]  79   9      1          8        0   150
#> [567,]  80  13      1          8        1   140
#> [568,]  79   4      0          4        1    60
#> [569,]  80   6      0         71        1   189
#> [570,]  83   1      0          1        1   100
#> [571,]  82  19      0         19        0   120
#> [572,]  80  30      1         13        0   220
#> [573,]  83   9      0        180        0   198
#> [574,]  79  14      1          0        0   110
#> [575,]  83   2      0        154        0   130
#> [576,]  82   0      0          2        1   100
#> [577,]  85   9      1          6        1   160
#> [578,]  84  15      1         13        1   110
#> [579,]  81  12      0         12        1   163
#> [580,]  82  16      1          8        0   103
#> [581,]  82   5      1          0        1   146
#> [582,]  86  12      0        180        1   120
#> [583,]  81  19      1         14        0   120
#> [584,]  82  15      1          0        0   183
#> [585,]  80   2      0         88        0   135
#> [586,]  83   7      0        126        0   135
#> [587,]  86   8      0          8        1   132
#> [588,]  81  16      1          9        0   180
#> [589,]  86   3      0          3        1   140
#> [590,]  81  13      0        180        0   152
#> [591,]  85   3      0          3        1   118
#> [592,]  81   2      1          0        1   118
#> [593,]  81   4      0        180        0   160
#> [594,]  83   9      0        180        1   149
#> [595,]  82   1      0        180        1   193
#> [596,]  83   4      0          4        0   130
#> [597,]  87   2      0          5        1   137
#> [598,]  86  12      1          0        1   132
#> [599,]  84  16      0         70        1   150
#> [600,]  83  19      0         43        0   150
#> [601,]  84   3      1          2        0   125
#> [602,]  86   2      0        180        1   169
#> [603,]  88  14      1          3        1   130
#> [604,]  84   7      1          2        0   148
#> [605,]  87   2      0        180        0   113
#> [606,]  84   9      0         92        1   110
#> [607,]  84   3      0        180        1   170
#> [608,]  86   4      0         38        1   122
#> [609,]  82   4      0          4        0   130
#> [610,]  86  13      0        177        0   163
#> [611,]  86   6      0          6        1   117
#> [612,]  84  13      0         62        1   100
#> [613,]  86   6      1          1        0   112
#> [614,]  88   4      0          4        0   100
#> [615,]  83  20      1          3        1   150
#> [616,]  88   4      0          4        1   115
#> [617,]  85  22      0         22        1   184
#> [618,]  83   9      0         65        1   150
#> [619,]  86   9      1          7        1   142
#> [620,]  87   2      0        180        1   130
#> [621,]  86   6      0         46        0   173
#> [622,]  88   3      0        115        0   110
#> [623,]  88   2      0        180        1    68
#> [624,]  83   3      0          3        1   130
#> [625,]  88   4      0          4        0    86
#> [626,]  89   4      0          4        1   153
#> [627,]  89   5      0        119        1   140
#> [628,]  87   6      0        180        1   110
#> [629,]  87   1      0          1        0   170
#> [630,]  85   8      0          8        1   136
#> [631,]  84   2      0        110        1   174
#> [632,]  89  10      0         46        1   170
#> [633,]  90  14      0         14        1   100
#> [634,]  91   8      0          8        0   100
#> [635,]  87   6      1          0        0   125
#> [636,]  91  10      0        145        0   135
#> [637,]  90  11      1         10        1   186
#> [638,]  87   6      0        126        1   168
#> [639,]  86  10      0        180        1   137
#> [640,]  90   4      1          0        0   121
#> [641,]  87  43      0        178        1   130
#> [642,]  90   5      1          0        1   125
#> [643,]  89   3      1          1        1   160
#> [644,]  92   1      0          1        1   167
#> [645,]  91   3      0         33        1   137
#> [646,]  87   7      0         74        1   105
#> [647,]  89  12      1          0        1   130
#> [648,]  89   2      0        168        0   118
#> [649,]  91   5      0        169        1   176
#> [650,]  89  52      0         52        1   130
#> [651,]  89   4      0          4        1   159
#> [652,]  91   0      0          0        0     0
#> [653,]  90  18      0        180        0   188
#> [654,]  91   4      1          0        1   120
#> [655,]  90  19      1         11        1   129
#> [656,]  94   6      0         50        0    78
#> [657,]  90   1      0          1        1   118
#> [658,]  93   8      0        179        1   110
#> [659,]  94   8      0          8        1   142
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  96   3      0         12        1    97
#> [663,]  95   8      1          5        1   150
#> [664,]  94   3      0         26        1   144
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1]   5.0+ 180.0+   5.0+ 180.0+ 115.0   12.0  180.0+ 180.0+ 180.0+   5.0+
#>  [11]   2.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41]   6.0+ 180.0+ 180.0+ 180.0+  73.0  161.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+   7.0  180.0+ 180.0+   2.0    1.0  179.0+ 179.0+ 180.0+ 180.0+
#>  [71]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81]   7.0   36.0   88.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 166.0+  99.0  180.0+  16.0+ 180.0+
#> [101] 152.0+   7.0+   6.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+  28.0    6.0+
#> [111]   1.0  180.0+   9.0+ 180.0+ 175.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+  16.0+ 180.0+  16.0   15.0+ 180.0+ 180.0+ 134.0+ 180.0+   8.0 
#> [131]   3.0+ 180.0+ 180.0+ 180.0+ 140.0  180.0+   1.0  165.0  180.0+ 180.0+
#> [141] 180.0+ 180.0+   8.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 171.0+
#> [151]  15.0  166.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+   4.0+
#> [161] 180.0+   9.0+   1.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [171] 180.0+ 180.0+ 180.0+  64.0  180.0+   0.5  180.0+ 161.0+   3.0  180.0+
#> [181] 180.0+ 180.0+ 180.0+  17.0    3.0+  19.0  180.0+ 180.0+   9.0+ 180.0+
#> [191] 172.0+ 172.0+  24.0  180.0+   8.0  180.0+ 180.0+   1.0+ 180.0+ 180.0+
#> [201]  13.0+ 180.0+ 180.0+ 170.0   94.0  180.0+ 169.0    7.0    7.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0   13.0+   5.0  180.0+ 180.0+
#> [221]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+  22.0 
#> [231]  84.0    7.0+ 180.0+ 180.0+   1.0    1.0  180.0+   4.0+   6.0+ 180.0+
#> [241] 180.0+  17.0  180.0+ 180.0+ 180.0+ 180.0+  36.0  180.0+   3.0+ 180.0+
#> [251]  12.0  180.0+ 180.0+ 180.0+   0.5  180.0+  12.0+ 180.0+ 180.0+ 180.0+
#> [261]   3.0  180.0+ 180.0+  11.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [271]   3.0+   2.0+ 103.0   15.0  180.0+  13.0  179.0+ 166.0+   3.0+ 180.0+
#> [281] 175.0+ 180.0+   7.0+   8.0    5.0    1.0  180.0+ 180.0+   1.0+  18.0 
#> [291]  11.0+  79.0   80.0  180.0+ 180.0+ 174.0+   3.0  180.0+  10.0  180.0+
#> [301] 180.0+ 180.0+  19.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+  18.0    7.0+
#> [311] 180.0+ 152.0+ 180.0+ 180.0+ 180.0+   1.0   18.0+   4.0    7.0+ 150.0 
#> [321] 180.0+ 180.0+ 180.0+ 171.0  180.0+   6.0  180.0+   0.5  180.0+ 180.0+
#> [331] 180.0+ 180.0+   7.0+   2.0   45.0    5.0+   3.0+ 180.0+  36.0    5.0+
#> [341] 180.0+  97.0  180.0+   7.0    2.0+ 180.0+ 172.0+ 180.0+ 180.0+   7.0 
#> [351] 180.0+   8.0+  13.0+ 123.0  180.0+ 180.0+  19.0  180.0+   1.0  132.0 
#> [361]  10.0+ 180.0+ 162.0    7.0+   7.0+ 124.0  180.0+ 180.0+ 180.0+ 180.0+
#> [371] 180.0+ 180.0+   2.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [381]  16.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+  15.0    3.0+ 180.0+
#> [391] 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0  180.0+ 180.0+ 180.0+ 180.0+
#> [401]   8.0   12.0    4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [411] 180.0+   2.0   14.0+  10.0+ 180.0+ 180.0+   8.0+   1.0  180.0+  10.0 
#> [421]   1.0  180.0+  13.0    4.0+ 180.0+  10.0  104.0+  57.0  180.0+  11.0 
#> [431] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 180.0+
#> [441] 180.0+  11.0+   4.0+ 180.0+  15.0+ 180.0+  10.0  180.0+   3.0  180.0+
#> [451] 180.0+   6.0  180.0+ 180.0+  85.0  180.0+   4.0    7.0    0.5  180.0+
#> [461] 180.0+   4.0    1.0   52.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+
#> [471] 180.0+ 180.0+   1.0    7.0+ 168.0+ 180.0+ 180.0+  47.0  180.0+ 180.0+
#> [481]   7.0  180.0+   8.0+ 180.0+  10.0  172.0    8.0  180.0+   1.0   80.0 
#> [491]   4.0+   2.0   11.0  152.0+   3.0   24.0   32.0    6.0  180.0+   3.0+
#> [501] 180.0+ 180.0+ 180.0+   4.0    4.0   10.0+ 180.0+   2.0+ 180.0+   1.0 
#> [511]  43.0    3.0  138.0  180.0+ 180.0+  71.0   40.0   59.0   17.0  161.0 
#> [521]  93.0  164.0  173.0  180.0+ 175.0+  22.0   15.0+  71.0    3.0+  10.0 
#> [531] 180.0+  85.0    6.0+   6.0    1.0  180.0+ 180.0+ 180.0+ 125.0  180.0+
#> [541] 180.0+   4.0    6.0  180.0+ 180.0+ 103.0  180.0+  70.0  180.0+ 180.0+
#> [551] 180.0+ 180.0+   7.0+ 180.0+  16.0  180.0+ 177.0+ 180.0+ 180.0+   3.0+
#> [561]  62.0  180.0+   4.0   38.0   90.0  180.0+ 180.0+   4.0   71.0    1.0 
#> [571]  19.0   30.0  180.0+ 180.0+ 154.0    2.0  180.0+ 180.0+  12.0   16.0+
#> [581]   5.0+ 180.0+ 180.0+  83.0   88.0  126.0    8.0  180.0+   3.0  180.0+
#> [591]   3.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0  180.0+  70.0   43.0 
#> [601] 180.0+ 180.0+  14.0  180.0+ 180.0+  92.0  180.0+  38.0    4.0  177.0 
#> [611]   6.0+  62.0    6.0+   4.0+  20.0    4.0   22.0   65.0   11.0  180.0+
#> [621]  46.0  115.0  180.0+   3.0+   4.0    4.0  119.0  180.0+   1.0+   8.0 
#> [631] 110.0   46.0   14.0    8.0   25.0  145.0   11.0  126.0  180.0+   4.0 
#> [641] 178.0+  89.0    3.0+   1.0   33.0   74.0  180.0+ 168.0  169.0   52.0 
#> [651]   4.0    0.5  180.0+   4.0  180.0+  50.0    1.0+ 179.0+   8.0+  16.0 
#> [661]  67.0   12.0    8.0   26.0   53.0    7.0+   0.5   69.0    2.0    3.0 
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
#>   0.8376808 
```
