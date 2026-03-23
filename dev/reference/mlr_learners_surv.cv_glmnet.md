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
#> min 0.00310    45   2.708 0.1230       6
#> 1se 0.06084    13   2.817 0.1202       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  35  10      1          9        0   106
#>   [2,]  34   5      0          5        0   120
#>   [3,]  35   2      0        180        0   121
#>   [4,]  35   2      1          1        1   112
#>   [5,]  37   9      0        180        1   151
#>   [6,]  36   1      0        180        1   155
#>   [7,]  35   0      0        180        1   119
#>   [8,]  38  12      1          8        1   120
#>   [9,]  38  16      1         10        0   160
#>  [10,]  38  12      1         11        1    92
#>  [11,]  40   2      1          1        1   148
#>  [12,]  42   2      0        180        1   100
#>  [13,]  42   2      0          2        0   140
#>  [14,]  40   6      0        180        1   138
#>  [15,]  40  11      1         10        1   120
#>  [16,]  42   2      0        180        0   100
#>  [17,]  43   3      1          0        1   100
#>  [18,]  43   4      1          0        1   130
#>  [19,]  42  15      1         13        1   125
#>  [20,]  40   3      1          1        0   170
#>  [21,]  43   2      1          1        1   116
#>  [22,]  42   2      0        180        1   124
#>  [23,]  45   3      0        180        1   154
#>  [24,]  41  10      1          8        0   150
#>  [25,]  44   3      0        180        0   141
#>  [26,]  41  13      1          1        0   140
#>  [27,]  45   9      1          7        0   110
#>  [28,]  41   5      1          4        1   141
#>  [29,]  44   2      1          1        1   150
#>  [30,]  45   2      0        180        1   140
#>  [31,]  46  15      0        180        0   120
#>  [32,]  48  15      0        180        1   160
#>  [33,]  44   3      1          0        1   180
#>  [34,]  46   7      1          2        0   166
#>  [35,]  46  13      1         10        0   100
#>  [36,]  44   0      1          0        1    96
#>  [37,]  47   4      1          3        1   160
#>  [38,]  43   3      1          0        1   124
#>  [39,]  45   8      1          0        1   117
#>  [40,]  45   5      0          5        0   141
#>  [41,]  46   2      1          1        1   122
#>  [42,]  46   6      1          0        1   100
#>  [43,]  47   2      0        180        0   108
#>  [44,]  46   5      1          3        0   130
#>  [45,]  46   4      0        180        1   121
#>  [46,]  46  15      0        180        1   120
#>  [47,]  45   9      1          0        1   145
#>  [48,]  47   3      1          1        1   120
#>  [49,]  48   3      0        180        0   154
#>  [50,]  48  12      1         11        0   200
#>  [51,]  47   5      1          3        1   130
#>  [52,]  46   3      1          0        1   119
#>  [53,]  49   4      0        180        0   117
#>  [54,]  47  10      0         10        1   140
#>  [55,]  50   1      1          0        1   129
#>  [56,]  48   2      1          0        0   184
#>  [57,]  47   7      0        180        0   145
#>  [58,]  50   4      1          1        0   125
#>  [59,]  50   6      1          2        1   140
#>  [60,]  46   9      1          9        1   122
#>  [61,]  50   7      0        180        1   110
#>  [62,]  49   2      0          2        0   105
#>  [63,]  51   1      0          1        1   145
#>  [64,]  49  15      1         11        1   160
#>  [65,]  47   2      0        180        0   150
#>  [66,]  49  23      0        179        1   112
#>  [67,]  52   2      0        180        1   170
#>  [68,]  50   7      1          0        1    92
#>  [69,]  50   4      0          4        1   100
#>  [70,]  50   1      1          0        0   150
#>  [71,]  49   7      1          4        1    90
#>  [72,]  47   8      0        180        0   160
#>  [73,]  51   8      0        180        1   140
#>  [74,]  52   2      0        180        0   155
#>  [75,]  46   1      1          1        0   145
#>  [76,]  50   4      1          1        0   150
#>  [77,]  48   7      1          0        1   110
#>  [78,]  53   8      0         36        1   160
#>  [79,]  48  17      1         10        0   111
#>  [80,]  52   4      1          4        0   152
#>  [81,]  49  15      0        180        1   160
#>  [82,]  53   5      0        180        1   140
#>  [83,]  54   6      1          3        0   129
#>  [84,]  50   2      0          5        1   106
#>  [85,]  50  14      1         13        0   170
#>  [86,]  49   5      1          2        1   150
#>  [87,]  52  14      1          7        1   200
#>  [88,]  48  11      1         10        0   120
#>  [89,]  53   4      1          0        1   156
#>  [90,]  51  13      0         99        1   160
#>  [91,]  49  16      0         16        0   125
#>  [92,]  55   3      1          1        0   150
#>  [93,]  54  23      1         10        0   131
#>  [94,]  55   4      1          2        0   150
#>  [95,]  52   4      0        180        1   180
#>  [96,]  51  13      1         11        0   145
#>  [97,]  52   4      0        180        0   183
#>  [98,]  50   3      0        174        1   153
#>  [99,]  49   1      0          1        1   110
#> [100,]  50   7      1          1        0   156
#> [101,]  50   7      1          0        1   127
#> [102,]  56   4      1          1        1   130
#> [103,]  52   5      0        175        1   117
#> [104,]  55   1      0        180        0   127
#> [105,]  54   7      1          0        1   100
#> [106,]  56   3      0        180        1   193
#> [107,]  55   5      1          4        1   120
#> [108,]  52   8      0        180        0   119
#> [109,]  53  18      1          9        1   150
#> [110,]  55   6      0        180        0   170
#> [111,]  52  16      1         14        0   170
#> [112,]  53   4      0        180        1   150
#> [113,]  55   2      0        134        1   140
#> [114,]  56   3      0          8        1   139
#> [115,]  55   1      0          2        0   130
#> [116,]  57   3      0          3        0   120
#> [117,]  54   2      1          1        0   135
#> [118,]  52   9      1          3        0   170
#> [119,]  54   2      1          1        1   176
#> [120,]  57   1      0        180        1   156
#> [121,]  55  11      1          7        0   104
#> [122,]  52  15      1         14        0   130
#> [123,]  56  14      1         11        0   130
#> [124,]  53   3      1          0        1   200
#> [125,]  57  10      0        180        1   170
#> [126,]  55   3      1          1        1   156
#> [127,]  57   0      0          0        1   150
#> [128,]  59   3      1          1        0   172
#> [129,]  57   4      0        180        1   119
#> [130,]  58   6      1          0        1    90
#> [131,]  53  15      1         10        1   130
#> [132,]  54  17      1          8        1   227
#> [133,]  55   9      1          2        1   147
#> [134,]  56   5      0          5        1   150
#> [135,]  54  23      1          8        0   120
#> [136,]  57   4      1          2        1   185
#> [137,]  53   4      0        147        1   145
#> [138,]  53   7      1          0        1   120
#> [139,]  55   3      1          2        0   140
#> [140,]  55   5      0          5        1   131
#> [141,]  54   7      1          0        1   141
#> [142,]  56   4      0          4        0   164
#> [143,]  59  15      1         10        0   140
#> [144,]  55   5      1          0        0   140
#> [145,]  59   9      1          1        1   125
#> [146,]  58   4      1          0        1   160
#> [147,]  57  10      1          9        0   103
#> [148,]  59   6      1          0        1   140
#> [149,]  59   5      0        180        1   155
#> [150,]  58  26      1          0        1   189
#> [151,]  58   4      1          3        0   120
#> [152,]  60   0      1          0        1    80
#> [153,]  59   2      1          1        0   140
#> [154,]  58   8      0        161        1   140
#> [155,]  58  14      1          6        0   190
#> [156,]  61   4      1          3        0   151
#> [157,]  61   9      1          8        0   150
#> [158,]  61   3      1          2        1   102
#> [159,]  58   1      0          1        1   100
#> [160,]  61  20      1         13        0   130
#> [161,]  57  13      1         10        0   110
#> [162,]  58  10      0         10        1   150
#> [163,]  57   4      1          3        0   138
#> [164,]  61   3      0         17        0   143
#> [165,]  57   3      1          2        0   120
#> [166,]  56  13      1          6        1   158
#> [167,]  56  18      1         11        1   165
#> [168,]  59   9      1          0        1    80
#> [169,]  55   4      1          3        1   160
#> [170,]  58  11      0        172        1   135
#> [171,]  60  12      1          0        1   114
#> [172,]  61   4      1          0        1   115
#> [173,]  56   8      1          8        0   120
#> [174,]  61  13      1         12        1   130
#> [175,]  59  11      1          8        1   190
#> [176,]  57  15      1         13        1   110
#> [177,]  58   5      1          1        1   135
#> [178,]  59  10      0        180        0   160
#> [179,]  62  10      1          0        1   153
#> [180,]  62   7      1          2        1   180
#> [181,]  61  18      0        170        0   140
#> [182,]  61  28      1          7        0   133
#> [183,]  57   7      0        169        0   180
#> [184,]  60   7      0          7        0   147
#> [185,]  61   6      0          6        0   134
#> [186,]  59  13      1          2        0   198
#> [187,]  57  12      1          9        1   120
#> [188,]  62   4      1          0        0   160
#> [189,]  60  17      1          8        1   140
#> [190,]  58   3      1          0        1   146
#> [191,]  62   4      1          3        0   173
#> [192,]  58   2      0         30        0   202
#> [193,]  59   1      0        180        0   155
#> [194,]  63   6      0         28        1   120
#> [195,]  61   5      0          5        1   110
#> [196,]  61   5      0          5        1   160
#> [197,]  58  11      1          9        0   179
#> [198,]  57   2      1          1        0   159
#> [199,]  62  17      1         10        1   180
#> [200,]  58   7      0        180        1   150
#> [201,]  63   3      1          1        0   180
#> [202,]  61   7      0        180        0   135
#> [203,]  63   4      1          3        0   222
#> [204,]  63   4      0        180        1   190
#> [205,]  64   4      0        180        0   130
#> [206,]  63   4      1          1        0   155
#> [207,]  60  18      1         13        0   132
#> [208,]  59   8      0        180        1   140
#> [209,]  61   9      1          9        1   150
#> [210,]  58   9      1          9        0   110
#> [211,]  59   5      1          1        0   148
#> [212,]  60   7      1          1        1    90
#> [213,]  62   6      0        180        0   170
#> [214,]  59   4      0          4        0   149
#> [215,]  64  10      1          9        0   160
#> [216,]  62   6      0          6        0   120
#> [217,]  63  12      1         10        0   200
#> [218,]  59  10      0        180        1   130
#> [219,]  60   8      0         17        1   130
#> [220,]  61   6      1          1        1   117
#> [221,]  66   1      1          0        1   120
#> [222,]  64   6      1          0        1   140
#> [223,]  63  14      1          9        0   123
#> [224,]  63   4      1          3        0   162
#> [225,]  66   3      1          1        0   127
#> [226,]  64  32      1          9        1   160
#> [227,]  63   7      0        180        0   120
#> [228,]  65  10      1          8        1   120
#> [229,]  64   0      0          0        1    90
#> [230,]  60   6      0        180        0   130
#> [231,]  64  21      1         10        0   190
#> [232,]  61  12      1         11        0   154
#> [233,]  61   4      0        180        1   113
#> [234,]  63  16      1          7        1   110
#> [235,]  64   7      0        180        1   120
#> [236,]  66   6      1          1        1   130
#> [237,]  65   6      0          9        0   112
#> [238,]  65   3      1          0        1    80
#> [239,]  63   5      1          4        0   170
#> [240,]  63   2      1          1        0   180
#> [241,]  62  13      1         11        0   180
#> [242,]  66  16      1         11        1   169
#> [243,]  62   9      0        180        0   145
#> [244,]  61  14      1          5        0   140
#> [245,]  63   3      1          2        0   120
#> [246,]  63   2      1          0        0   140
#> [247,]  64  19      1          8        1   160
#> [248,]  65   8      1          0        1   140
#> [249,]  65  15      1         11        1   160
#> [250,]  68   5      1          4        1   150
#> [251,]  64  13      1         12        1   150
#> [252,]  64   6      1          0        1   125
#> [253,]  66   7      1          0        1   115
#> [254,]  66  13      1          0        0   118
#> [255,]  64  14      1         13        1   150
#> [256,]  64   0      0          0        1   148
#> [257,]  67   4      1          3        0   130
#> [258,]  66   6      1          0        1   140
#> [259,]  68   1      0        180        1   166
#> [260,]  64  10      1          9        1   110
#> [261,]  63   7      1          0        0   162
#> [262,]  68   5      0          5        1    90
#> [263,]  64   1      0          1        1   120
#> [264,]  63   8      1          1        1   162
#> [265,]  65  18      1          3        0   120
#> [266,]  63   1      1          0        1   155
#> [267,]  67  11      0         11        0   150
#> [268,]  68  11      0        180        0   160
#> [269,]  68  14      0         79        0   172
#> [270,]  66  12      1         10        1   150
#> [271,]  66  11      1          0        0   100
#> [272,]  65   4      1          2        1   145
#> [273,]  69  12      0         15        1   140
#> [274,]  66  15      1         13        1   160
#> [275,]  63   2      0        180        0   150
#> [276,]  65  11      1          6        0   130
#> [277,]  66   9      1          8        0   130
#> [278,]  63   8      0        180        1   120
#> [279,]  68  14      1         13        1   140
#> [280,]  65   8      1          0        1    90
#> [281,]  66   3      0          3        1   138
#> [282,]  69   1      1          0        0   170
#> [283,]  68  10      1         10        1   150
#> [284,]  65   1      1          0        0   133
#> [285,]  63   2      1          0        0    99
#> [286,]  67   2      0        180        0   184
#> [287,]  65  10      1          1        1   148
#> [288,]  66  19      1         12        1   150
#> [289,]  67  12      1         12        0   160
#> [290,]  65   4      1          1        0   130
#> [291,]  64   4      0        179        0   160
#> [292,]  70  15      1         12        1   132
#> [293,]  64   0      1          0        1   118
#> [294,]  66   4      0        180        0   177
#> [295,]  68   4      1          0        1   160
#> [296,]  69   4      1          3        1   150
#> [297,]  69  17      1         10        0   140
#> [298,]  69   8      0         93        0   140
#> [299,]  66   6      0        180        0   140
#> [300,]  65   1      0          1        1   120
#> [301,]  68   4      0          4        1   190
#> [302,]  71   3      0          5        0   112
#> [303,]  70   7      1          0        1   190
#> [304,]  68   7      0        150        0   210
#> [305,]  71  20      1          0        1   160
#> [306,]  67   2      0        180        0   128
#> [307,]  66   9      1          3        1   151
#> [308,]  69   8      0        180        1   153
#> [309,]  70  14      0        171        0   166
#> [310,]  67  10      1          9        0   200
#> [311,]  67   6      1          4        0   130
#> [312,]  68  18      1         14        1   170
#> [313,]  69   0      0          0        1   148
#> [314,]  65   2      0        180        0   130
#> [315,]  68   7      1          0        1   150
#> [316,]  69   3      1          2        0   151
#> [317,]  67  14      1         13        0   130
#> [318,]  65  14      1         13        1   150
#> [319,]  69   8      0        180        1   180
#> [320,]  71   7      0          7        0   230
#> [321,]  66   2      0          2        1   228
#> [322,]  69   5      0          5        1   142
#> [323,]  71   3      0        103        0   133
#> [324,]  69   3      0          3        1   130
#> [325,]  70  22      1         13        0   103
#> [326,]  67   1      0         36        1   104
#> [327,]  68   6      0        180        0   145
#> [328,]  72   3      1          0        1   132
#> [329,]  69   8      1          7        1   108
#> [330,]  67   3      0        180        0   110
#> [331,]  66   2      1          1        0   123
#> [332,]  69  19      0        180        0   130
#> [333,]  68  18      0         18        1   100
#> [334,]  67  14      0        172        1   140
#> [335,]  66   2      0        180        0   130
#> [336,]  69   4      1          3        0   132
#> [337,]  68   2      0          7        1   130
#> [338,]  69   8      1          2        0   121
#> [339,]  70   9      0        180        1   142
#> [340,]  72   5      1          4        0   170
#> [341,]  67  22      1          1        1   140
#> [342,]  68   3      0         19        0   135
#> [343,]  69   1      0          1        1   110
#> [344,]  69   5      0         76        0   120
#> [345,]  67   8      1          0        1   130
#> [346,]  72  13      1         11        1   195
#> [347,]  70  35      1          0        1   105
#> [348,]  72  30      1          0        1   145
#> [349,]  70   7      0          7        0   102
#> [350,]  68   7      1          2        0   135
#> [351,]  73  20      1          0        1   170
#> [352,]  71   6      0          9        0   120
#> [353,]  69  10      1          6        1   120
#> [354,]  70  11      0        180        1   210
#> [355,]  72  12      1         10        0   170
#> [356,]  67   8      0        180        1   170
#> [357,]  67   9      0        180        0   158
#> [358,]  73  13      0        152        1   130
#> [359,]  70   5      0        180        0   150
#> [360,]  72   6      1          5        0   115
#> [361,]  71   1      0        173        1   188
#> [362,]  69   3      0        180        0   220
#> [363,]  71   3      1          2        0   150
#> [364,]  68   4      1          3        0   210
#> [365,]  72   5      0         28        0   120
#> [366,]  71   5      0        180        0   191
#> [367,]  69  16      1         10        1   140
#> [368,]  69   8      1          1        0   164
#> [369,]  68   7      0        180        1   130
#> [370,]  72  16      1          1        1   130
#> [371,]  70   4      0        180        0   180
#> [372,]  69   1      1          0        0   155
#> [373,]  72   8      1          1        1   150
#> [374,]  71   2      1          0        1   180
#> [375,]  73   7      0          7        1   140
#> [376,]  68  15      1         13        1   130
#> [377,]  70   3      0          3        1   159
#> [378,]  73   0      0        180        1   161
#> [379,]  71   3      1          1        0   150
#> [380,]  71  15      1         11        0   165
#> [381,]  68   9      0        180        1   120
#> [382,]  71  20      1         10        0   140
#> [383,]  73   3      1          0        1   136
#> [384,]  70   5      1          0        1   190
#> [385,]  71  17      1         11        0   160
#> [386,]  71   8      1          7        0   149
#> [387,]  69  12      1          1        1   149
#> [388,]  70  26      1         11        1   120
#> [389,]  74   4      0          4        0   120
#> [390,]  73   4      0         58        1   160
#> [391,]  72   5      1          3        1   160
#> [392,]  72   8      1          0        1   140
#> [393,]  73  17      1         11        0   140
#> [394,]  71  13      1          8        0   121
#> [395,]  69   2      1          1        1    80
#> [396,]  70   4      1          0        1   140
#> [397,]  74   7      1          0        1   117
#> [398,]  69   7      0        180        1   144
#> [399,]  72  15      1         13        0   156
#> [400,]  70   8      0          8        0   120
#> [401,]  71  10      1          9        1   120
#> [402,]  73  10      1          9        1   146
#> [403,]  74  15      1          9        1   179
#> [404,]  75  13      1          1        1   130
#> [405,]  71  11      1          8        0   110
#> [406,]  71   4      0          4        0   134
#> [407,]  72  15      1         12        1   120
#> [408,]  73  10      1          8        0   120
#> [409,]  70   7      1          4        0   184
#> [410,]  72   7      0         57        1   145
#> [411,]  72  11      0         11        1   140
#> [412,]  73   5      1          3        1   112
#> [413,]  72   2      0        180        0   120
#> [414,]  75   1      0        180        1   140
#> [415,]  72   4      1          0        1   197
#> [416,]  73   5      0        180        0   126
#> [417,]  74  34      1          8        1   233
#> [418,]  76   3      1          0        1   120
#> [419,]  71  32      1         12        1   107
#> [420,]  72   3      0        180        0   160
#> [421,]  76   5      0          5        1   130
#> [422,]  77  11      0         11        1   150
#> [423,]  77   4      0          4        0   185
#> [424,]  75   3      1          1        0   180
#> [425,]  72   7      1          2        0   142
#> [426,]  73  15      0         15        1   160
#> [427,]  71  16      0        180        0   140
#> [428,]  73  10      1         10        0   124
#> [429,]  76   1      0        180        0   114
#> [430,]  74   2      1          1        0   140
#> [431,]  76   8      1          0        1   141
#> [432,]  74  19      1          4        1   200
#> [433,]  75  23      1         14        1   110
#> [434,]  74   2      0        180        0   190
#> [435,]  72   4      0         85        1   120
#> [436,]  72   4      1          3        0   160
#> [437,]  76  17      1          0        1   200
#> [438,]  76  13      1         10        0   110
#> [439,]  75   7      0          7        0   190
#> [440,]  73  13      1         11        0   195
#> [441,]  75  12      0         12        1   160
#> [442,]  74   8      1          0        1   105
#> [443,]  75   4      1          2        1   188
#> [444,]  74   6      0        180        0   160
#> [445,]  76   4      0          4        1   155
#> [446,]  75   1      0          1        1   125
#> [447,]  74   2      0        180        0   111
#> [448,]  72   5      0        180        0   120
#> [449,]  76   5      0        180        0   185
#> [450,]  76   5      1          0        1   167
#> [451,]  74   8      1          8        1   170
#> [452,]  77   5      1          0        0   123
#> [453,]  77  12      1          9        1   100
#> [454,]  77  12      0        180        0   130
#> [455,]  76  12      1         11        1   120
#> [456,]  78   5      1          0        1   170
#> [457,]  73   7      1          0        0   174
#> [458,]  74   6      0         79        1   140
#> [459,]  75   6      0        180        0   150
#> [460,]  79  10      1          8        0   190
#> [461,]  74   2      1          0        1   130
#> [462,]  77   3      0        180        0   110
#> [463,]  76  29      0         47        0    90
#> [464,]  73   8      1          1        1   162
#> [465,]  73  11      1          2        1   110
#> [466,]  78   7      0          7        1   133
#> [467,]  74  15      0        180        1   172
#> [468,]  78   8      1          6        1   110
#> [469,]  74   7      0          7        0   161
#> [470,]  76  13      1          1        1   170
#> [471,]  78  32      1          9        1   198
#> [472,]  80  10      1          6        1   147
#> [473,]  78   0      0        180        1   212
#> [474,]  78  13      1          5        0   130
#> [475,]  78  15      0        180        1   270
#> [476,]  80   8      0          8        1   120
#> [477,]  75  13      1          6        0   150
#> [478,]  74  10      1          8        0   135
#> [479,]  79   4      0         80        0   145
#> [480,]  78  12      1          9        0   150
#> [481,]  75   4      1          0        0   212
#> [482,]  77   2      1          0        1   143
#> [483,]  78  10      0        180        1   130
#> [484,]  76  11      1          0        0   120
#> [485,]  75  11      1          4        0   162
#> [486,]  75   3      0          3        0     0
#> [487,]  79   8      0         32        1   120
#> [488,]  80   9      0         23        1   128
#> [489,]  80   6      0          6        1   150
#> [490,]  78   6      1          0        1   240
#> [491,]  79  11      0        180        0   160
#> [492,]  79   2      1          0        1   121
#> [493,]  78  14      1          0        1   140
#> [494,]  76   4      0          4        1   160
#> [495,]  79   4      0          4        1   125
#> [496,]  76  10      1          8        0   180
#> [497,]  76  12      1         10        1   127
#> [498,]  77   6      0          6        1   107
#> [499,]  80   3      1          0        1   120
#> [500,]  75   2      1          1        1   204
#> [501,]  78  11      0        180        1   135
#> [502,]  76   1      0          1        1   140
#> [503,]  77  31      1          3        1   161
#> [504,]  78   7      1          0        1   110
#> [505,]  79   3      0          3        0   120
#> [506,]  77   7      0        180        1   170
#> [507,]  77   6      0          6        1   144
#> [508,]  79   4      1          0        1   120
#> [509,]  81   1      0        180        0   120
#> [510,]  78   4      0         59        1   112
#> [511,]  81   4      1          2        1   126
#> [512,]  79  28      0        164        0   100
#> [513,]  80   6      0        173        1   160
#> [514,]  78  32      0        180        1   130
#> [515,]  79   1      0         37        1   140
#> [516,]  81   3      0        180        0   184
#> [517,]  81   2      0        175        0   172
#> [518,]  78   7      0          7        1   147
#> [519,]  78  15      0         15        0   165
#> [520,]  78   4      0        180        0   175
#> [521,]  79   3      0          3        1   101
#> [522,]  81   4      1          1        1   104
#> [523,]  80   1      0          1        0   100
#> [524,]  78   3      1          1        1   152
#> [525,]  77  10      1          8        1   130
#> [526,]  77   5      0         85        0   188
#> [527,]  80   2      1          1        0   168
#> [528,]  80   6      1          0        1   119
#> [529,]  78   2      0        180        0   148
#> [530,]  80   5      0          5        1   130
#> [531,]  79  10      0        180        1   150
#> [532,]  81   1      0        108        0   129
#> [533,]  78  12      0        180        0   134
#> [534,]  79   1      0        125        0   193
#> [535,]  82  21      1          2        0   155
#> [536,]  84  22      1         10        0   180
#> [537,]  79   4      0          4        1   121
#> [538,]  80   6      0          6        1   110
#> [539,]  83   9      1          5        1   170
#> [540,]  79   7      1          6        0   130
#> [541,]  83   4      0        103        0    97
#> [542,]  81   5      0        177        0    41
#> [543,]  80  11      1          8        0   170
#> [544,]  79   4      0          4        1   183
#> [545,]  78   9      1          4        1   120
#> [546,]  82   8      1          1        0   128
#> [547,]  81  15      0        180        1   140
#> [548,]  80   7      1          0        1   146
#> [549,]  84   5      1          1        1    85
#> [550,]  80   6      1          0        1   150
#> [551,]  81   8      0        180        0   146
#> [552,]  80   8      1          7        0   160
#> [553,]  79   7      0        177        0   197
#> [554,]  85   4      0        180        0    90
#> [555,]  83   2      0          2        1   155
#> [556,]  82   6      0        128        1   100
#> [557,]  80   3      1          1        1   230
#> [558,]  82  23      1          0        0   110
#> [559,]  84   5      0        180        1   203
#> [560,]  84   4      0          4        1    85
#> [561,]  84   1      0         38        1   205
#> [562,]  83   3      0        180        0   174
#> [563,]  79   9      1          8        0   150
#> [564,]  85   3      1          2        1   160
#> [565,]  84   4      0         89        1   129
#> [566,]  80   2      1          0        1   130
#> [567,]  80   6      0         71        1   189
#> [568,]  83   1      0          1        1   100
#> [569,]  82  19      0         19        0   120
#> [570,]  80  30      1         13        0   220
#> [571,]  83   9      0        180        0   198
#> [572,]  83   3      0        114        0    98
#> [573,]  81  14      1         12        1   128
#> [574,]  83   2      0        154        0   130
#> [575,]  85   9      1          6        1   160
#> [576,]  83   1      0        180        0   160
#> [577,]  81   4      0          4        0   175
#> [578,]  84  15      1         13        1   110
#> [579,]  81  12      0         12        1   163
#> [580,]  82   5      1          0        1   146
#> [581,]  81   4      0          4        0   160
#> [582,]  86  12      0        180        1   120
#> [583,]  83  12      1          2        1   170
#> [584,]  81  19      1         14        0   120
#> [585,]  82   3      1          2        0   130
#> [586,]  82  15      1          0        0   183
#> [587,]  80   2      0         88        0   135
#> [588,]  83   7      0        126        0   135
#> [589,]  86   8      0          8        1   132
#> [590,]  86   3      0          3        1   140
#> [591,]  84   3      0        180        1   120
#> [592,]  81  13      0        180        0   152
#> [593,]  85   3      0          3        1   118
#> [594,]  81   2      1          0        1   118
#> [595,]  83   9      0        180        1   149
#> [596,]  82   1      0        180        1   193
#> [597,]  87   2      0          5        1   137
#> [598,]  86  12      1          0        1   132
#> [599,]  82  14      1         11        1   103
#> [600,]  86   6      1          0        1   140
#> [601,]  84  16      0         70        1   150
#> [602,]  83  19      0         43        0   150
#> [603,]  83  10      1          0        1   190
#> [604,]  84   3      0          3        1   121
#> [605,]  83  13      1         12        0   170
#> [606,]  87   2      0        180        0   113
#> [607,]  84   3      0        180        1   170
#> [608,]  86   4      0         38        1   122
#> [609,]  82   4      0          4        0   130
#> [610,]  86  13      0        177        0   163
#> [611,]  85   3      0          3        1   113
#> [612,]  86   6      0          6        1   117
#> [613,]  84  13      0         62        1   100
#> [614,]  86   6      1          1        0   112
#> [615,]  88   4      0          4        0   100
#> [616,]  83  20      1          3        1   150
#> [617,]  85  22      0         22        1   184
#> [618,]  83   9      0         65        1   150
#> [619,]  86   9      1          7        1   142
#> [620,]  87   2      0        180        1   130
#> [621,]  86   6      0         46        0   173
#> [622,]  88   3      0        115        0   110
#> [623,]  88   2      0        180        1    68
#> [624,]  87   8      0          8        1   157
#> [625,]  86  15      1          8        1   109
#> [626,]  89   4      0          4        1   153
#> [627,]  89   5      0        119        1   140
#> [628,]  87   6      0        180        1   110
#> [629,]  84   2      0        110        1   174
#> [630,]  87  15      1          9        1   138
#> [631,]  84   0      0        180        1   136
#> [632,]  90  14      0         14        1   100
#> [633,]  88   1      0          1        0   135
#> [634,]  86   4      0        180        1   145
#> [635,]  91   8      0          8        0   100
#> [636,]  88   7      0         24        0   119
#> [637,]  86  10      0        180        1   137
#> [638,]  91   1      0          1        1    74
#> [639,]  87  43      0        178        1   130
#> [640,]  87   5      0         36        1   150
#> [641,]  90   5      1          0        1   125
#> [642,]  88   3      1          2        0   159
#> [643,]  89   3      1          1        1   160
#> [644,]  92   1      0          1        1   167
#> [645,]  91   3      0         33        1   137
#> [646,]  88   5      0        158        0   100
#> [647,]  87   7      0         74        1   105
#> [648,]  89  12      1          0        1   130
#> [649,]  89   2      0        168        0   118
#> [650,]  91   5      0        169        1   176
#> [651,]  89  52      0         52        1   130
#> [652,]  91   0      0          0        0     0
#> [653,]  89  14      0        180        1    84
#> [654,]  90  19      1         11        1   129
#> [655,]  94   6      0         50        0    78
#> [656,]  90   1      0          1        1   118
#> [657,]  93   8      0        179        1   110
#> [658,]  94   8      0          8        1   142
#> [659,]  92   4      0         76        1   149
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  95   8      1          5        1   150
#> [663,]  94   3      0         26        1   144
#> [664,]  91   7      0          7        0   135
#> [665,]  93   0      1          0        1   122
#> [666,]  92   5      0         69        0   139
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+
#>  [11]   2.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+
#>  [21]   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [41] 161.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+   2.0    1.0  179.0+ 180.0+ 179.0+ 180.0+ 180.0+   4.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+   4.0+
#>  [81] 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+  85.0  180.0+ 166.0+  99.0 
#>  [91]  16.0+ 180.0+ 152.0+ 180.0+ 180.0+  13.0+ 180.0+ 174.0+   1.0  180.0+
#> [101] 180.0+ 180.0+ 175.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [111]  16.0  180.0+ 134.0+   8.0    2.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+
#> [131] 180.0+ 171.0+  15.0    5.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+   5.0+
#> [141] 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+
#> [151] 180.0+   0.5  180.0+ 161.0+ 171.0+ 180.0+ 180.0+   3.0    1.0  180.0+
#> [161] 180.0+  10.0+ 180.0+  17.0    3.0+ 180.0+ 180.0+   9.0+ 180.0+ 172.0+
#> [171] 172.0+ 180.0+   8.0  180.0+ 180.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+
#> [181] 170.0   94.0  169.0    7.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+   3.0+
#> [191] 180.0+  30.0  180.0+  28.0    5.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+   9.0 
#> [211] 180.0+ 180.0+ 180.0+   4.0+ 167.0    6.0+ 180.0+ 180.0+  17.0  180.0+
#> [221] 180.0+ 180.0+  14.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+
#> [231] 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0    3.0  180.0+ 180.0+
#> [241] 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0  180.0+   5.0+
#> [251]  13.0  180.0+ 179.0+ 166.0+  14.0+   0.5+ 180.0+ 180.0+ 180.0+ 180.0+
#> [261]   7.0+   5.0    1.0  180.0+ 123.0+   1.0+  11.0+ 180.0+  79.0   80.0 
#> [271] 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [281]   3.0  175.0   10.0  180.0+ 180.0+ 180.0+ 180.0+  19.0+  12.0  180.0+
#> [291] 179.0+ 180.0+   0.5  180.0+ 180.0+ 152.0+ 180.0+  93.0  180.0+   1.0 
#> [301]   4.0    5.0    7.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 171.0  174.0+
#> [311]   6.0  180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+
#> [321]   2.0    5.0+ 103.0    3.0+ 180.0+  36.0  180.0+ 180.0+   8.0+ 180.0+
#> [331]   2.0+ 180.0+  18.0  172.0+ 180.0+ 180.0+   7.0    8.0+ 180.0+ 180.0+
#> [341]  51.0   19.0    1.0   76.0  180.0+ 132.0  180.0+ 162.0    7.0+   7.0+
#> [351] 124.0    9.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 152.0  180.0+ 180.0+
#> [361] 173.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+  16.0+ 180.0+ 180.0+  16.0+
#> [371] 180.0+ 180.0+ 180.0+ 180.0+   7.0+  15.0    3.0+ 180.0+   3.0+ 180.0+
#> [381] 180.0+  20.0  180.0+ 180.0+ 180.0+   8.0   12.0  180.0+   4.0+  58.0 
#> [391] 180.0+ 180.0+ 180.0+ 175.0    2.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [401] 179.0+ 180.0+ 180.0+  13.0  180.0+   4.0+ 180.0+  10.0  104.0+  57.0 
#> [411]  11.0    5.0  180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 177.0+ 180.0+
#> [421]   5.0   11.0+   4.0+ 180.0+   7.0   15.0+ 180.0+  10.0  180.0+ 180.0+
#> [431] 180.0+ 180.0+ 180.0+ 180.0+  85.0  180.0+  17.0+ 174.0+   7.0  180.0+
#> [441]  12.0  180.0+  46.0  180.0+   4.0    1.0  180.0+ 180.0+ 180.0+ 180.0+
#> [451]   8.0    5.0  180.0+ 180.0+  12.0  180.0+   7.0+  79.0  180.0+ 180.0+
#> [461] 176.0+ 180.0+  47.0  180.0+  11.0    7.0  180.0+   8.0+   7.0  180.0+
#> [471]  32.0   10.0  180.0+ 172.0  180.0+   8.0  180.0+ 180.0+  80.0  180.0+
#> [481]   4.0+   2.0  180.0+  11.0  152.0+   3.0   32.0   23.0    6.0  180.0+
#> [491] 180.0+ 180.0+ 180.0+   4.0    4.0   10.0+ 180.0+   6.0    3.0+   2.0+
#> [501] 180.0+   1.0  171.0   43.0    3.0  180.0+   6.0  138.0  180.0+  59.0 
#> [511]  93.0  164.0  173.0  180.0+  37.0  180.0+ 175.0+   7.0+  15.0+ 180.0+
#> [521]   3.0   71.0    1.0    3.0+  10.0   85.0   10.0    6.0  180.0+   5.0 
#> [531] 180.0+ 108.0  180.0+ 125.0  180.0+ 180.0+   4.0    6.0    9.0+ 180.0+
#> [541] 103.0  177.0+ 169.0    4.0  180.0+ 180.0+ 180.0+   7.0+ 180.0+ 180.0+
#> [551] 180.0+ 180.0+ 177.0+ 180.0+   2.0  128.0    3.0+  62.0  180.0+   4.0 
#> [561]  38.0  180.0+ 180.0+ 180.0+  89.0  180.0+  71.0    1.0   19.0   30.0 
#> [571] 180.0+ 114.0  180.0+ 154.0  180.0+ 180.0+   4.0+ 180.0+  12.0    5.0+
#> [581]   4.0+ 180.0+  77.0  180.0+   3.0   83.0   88.0  126.0    8.0    3.0 
#> [591] 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 174.0    6.0 
#> [601]  70.0   43.0  180.0+   3.0   13.0  180.0+ 180.0+  38.0    4.0  177.0 
#> [611]   3.0+   6.0+  62.0    6.0+   4.0+  20.0   22.0   65.0   11.0  180.0+
#> [621]  46.0  115.0  180.0+   8.0+ 180.0+   4.0  119.0  180.0+ 110.0  180.0+
#> [631] 180.0+  14.0    1.0+ 180.0+   8.0   24.0  180.0+   1.0  178.0+  36.0 
#> [641]  89.0   75.0    3.0+   1.0   33.0  158.0   74.0  180.0+ 168.0  169.0 
#> [651]  52.0    0.5  180.0+ 180.0+  50.0    1.0+ 179.0+   8.0+  76.0   16.0 
#> [661]  67.0    8.0   26.0    7.0+   0.5   69.0    2.0  180.0+   3.0   15.0+
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
#>   0.8301411 
```
