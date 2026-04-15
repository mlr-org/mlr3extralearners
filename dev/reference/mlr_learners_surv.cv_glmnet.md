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
  <https://mlr3book.mlr-org.com/chapters/chapter2/data_and_basic_modeling.html#sec-learners>

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
#> • Other settings: use_weights = 'use', predict_raw = 'FALSE'

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
#>      Lambda Index Measure      SE Nonzero
#> min 0.00327    44   2.647 0.08433       6
#> 1se 0.05330    14   2.725 0.08884       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  34   5      0          5        0   120
#>   [3,]  35   2      0        180        0   121
#>   [4,]  35   2      1          1        1   112
#>   [5,]  37   9      0        180        1   151
#>   [6,]  38   2      0        115        0   150
#>   [7,]  36   1      0        180        1   155
#>   [8,]  38  12      1          8        1   120
#>   [9,]  36   5      1          0        1   115
#>  [10,]  38  16      1         10        0   160
#>  [11,]  38  12      1         11        1    92
#>  [12,]  40  12      1          9        0   153
#>  [13,]  42   3      1          1        1   130
#>  [14,]  37   1      1          0        1   146
#>  [15,]  40   2      1          1        1   148
#>  [16,]  38   5      1          3        0   125
#>  [17,]  42   2      0          2        0   140
#>  [18,]  40   6      0        180        1   138
#>  [19,]  40  11      1         10        1   120
#>  [20,]  42   2      0        180        0   100
#>  [21,]  43   3      1          0        1   100
#>  [22,]  41   2      1          1        0   166
#>  [23,]  40   1      1          0        1   145
#>  [24,]  42   4      0        180        0   162
#>  [25,]  42  15      1         13        1   125
#>  [26,]  40   3      1          1        0   170
#>  [27,]  42  12      1         10        1   170
#>  [28,]  43   2      1          1        1   116
#>  [29,]  44   5      1          1        0   170
#>  [30,]  45   3      0        180        1   154
#>  [31,]  41  10      1          8        0   150
#>  [32,]  44   3      0        180        0   141
#>  [33,]  45   9      1          7        0   110
#>  [34,]  45   6      0        180        1   170
#>  [35,]  41   5      1          4        1   141
#>  [36,]  43   2      0        180        1   140
#>  [37,]  45   2      0        180        1   140
#>  [38,]  46  15      0        180        0   120
#>  [39,]  46   2      1          1        0   126
#>  [40,]  47   4      1          3        0   118
#>  [41,]  45   3      0        150        0   130
#>  [42,]  44   3      1          0        1   180
#>  [43,]  46   7      1          2        0   166
#>  [44,]  43  29      0        180        1   180
#>  [45,]  45   4      1          0        0   124
#>  [46,]  43  10      0        180        0   185
#>  [47,]  47   6      1          0        1   116
#>  [48,]  46  13      1         10        0   100
#>  [49,]  44   0      1          0        1    96
#>  [50,]  43   3      1          0        1   124
#>  [51,]  49   5      0         73        1   136
#>  [52,]  45   5      0          5        0   141
#>  [53,]  46   2      1          1        1   122
#>  [54,]  46   6      1          0        1   100
#>  [55,]  47   2      0        180        0   108
#>  [56,]  44   9      1          8        1   135
#>  [57,]  46   5      1          3        0   130
#>  [58,]  46   4      0        180        1   121
#>  [59,]  44   2      0        180        0   142
#>  [60,]  46  15      0        180        1   120
#>  [61,]  45   9      1          0        1   145
#>  [62,]  47   3      1          1        1   120
#>  [63,]  48  12      1         11        0   200
#>  [64,]  47   5      1          3        1   130
#>  [65,]  46   3      1          0        1   119
#>  [66,]  49   4      0        180        0   117
#>  [67,]  47  10      0         10        1   140
#>  [68,]  50   1      1          0        1   129
#>  [69,]  48   2      1          0        0   184
#>  [70,]  47   7      0        180        0   145
#>  [71,]  50   4      1          1        0   125
#>  [72,]  50   6      1          2        1   140
#>  [73,]  49   7      1          7        1   110
#>  [74,]  46   9      1          9        1   122
#>  [75,]  49   2      0          2        0   105
#>  [76,]  51   1      0          1        1   145
#>  [77,]  49  15      1         11        1   160
#>  [78,]  47   2      0        180        0   150
#>  [79,]  51   3      1          2        0   113
#>  [80,]  50   1      1          0        0   150
#>  [81,]  47   8      0        180        0   160
#>  [82,]  47   6      0        180        1   162
#>  [83,]  51   8      0        180        1   140
#>  [84,]  52   2      0        180        0   155
#>  [85,]  50   4      1          1        0   150
#>  [86,]  48   7      1          0        1   110
#>  [87,]  53   8      0         36        1   160
#>  [88,]  48  17      1         10        0   111
#>  [89,]  52   4      1          4        0   152
#>  [90,]  49   9      1          3        0   102
#>  [91,]  54  17      1         12        1   102
#>  [92,]  53   5      0         77        0   159
#>  [93,]  54   6      1          3        0   129
#>  [94,]  51   3      1          1        0   140
#>  [95,]  50   2      0          5        1   106
#>  [96,]  50  10      1          6        0   122
#>  [97,]  50  14      1         13        0   170
#>  [98,]  53   8      1          7        0   160
#>  [99,]  48   3      1          2        0   150
#> [100,]  51  25      1          1        0   202
#> [101,]  53   4      0          4        0   140
#> [102,]  52  14      1          7        1   200
#> [103,]  48   6      0        180        0   160
#> [104,]  48  11      1         10        0   120
#> [105,]  53   4      1          0        1   156
#> [106,]  49  16      0         16        0   125
#> [107,]  52   7      1          2        0   154
#> [108,]  55   6      1          2        1   114
#> [109,]  54   9      1          1        0   130
#> [110,]  55   4      1          2        0   150
#> [111,]  54   4      1          0        1   121
#> [112,]  52   4      0        180        0   183
#> [113,]  55  28      1         13        1   160
#> [114,]  49   1      0          1        1   110
#> [115,]  53   9      0          9        1    95
#> [116,]  53   8      1          0        1   130
#> [117,]  50   7      1          0        1   127
#> [118,]  55   1      0        180        0   127
#> [119,]  55   2      0          2        0   145
#> [120,]  54   1      0        180        0   162
#> [121,]  54   7      1          0        1   100
#> [122,]  56   3      0        180        1   193
#> [123,]  56   2      0        180        0   132
#> [124,]  55   5      1          4        1   120
#> [125,]  52   8      0        180        0   119
#> [126,]  53  18      1          9        1   150
#> [127,]  54   3      0        180        1   180
#> [128,]  52  16      0         16        0   152
#> [129,]  52  16      1         14        0   170
#> [130,]  53   4      0        180        1   150
#> [131,]  55   6      0        180        1   100
#> [132,]  55   6      1          5        1   138
#> [133,]  54  12      1          0        1   190
#> [134,]  55   2      0        134        1   140
#> [135,]  54   3      0        180        0   128
#> [136,]  57   3      0          3        0   120
#> [137,]  54   7      1          2        0   129
#> [138,]  54   2      1          1        0   135
#> [139,]  52   9      1          3        0   170
#> [140,]  54   2      1          1        1   176
#> [141,]  57   1      0        180        1   156
#> [142,]  57   1      0          1        1   100
#> [143,]  56   4      1          0        1   140
#> [144,]  52   2      0        180        0   140
#> [145,]  55  11      1          7        0   104
#> [146,]  53   3      1          0        1   200
#> [147,]  57  10      0        180        1   170
#> [148,]  54   5      0        180        1   108
#> [149,]  55   3      1          1        1   156
#> [150,]  59   3      1          1        0   172
#> [151,]  57   4      0        180        1   119
#> [152,]  53  15      1         10        1   130
#> [153,]  54  17      1          8        1   227
#> [154,]  55   9      1          2        1   147
#> [155,]  55  13      0        166        1   140
#> [156,]  56   5      0          5        1   150
#> [157,]  54  23      1          8        0   120
#> [158,]  57   4      1          2        1   185
#> [159,]  57  11      1         10        1   129
#> [160,]  55   3      1          2        0   140
#> [161,]  55   5      0          5        1   131
#> [162,]  54   7      1          0        1   141
#> [163,]  56   4      0          4        0   164
#> [164,]  59  15      1         10        0   140
#> [165,]  58   1      1          1        1   200
#> [166,]  56   7      1          5        1   120
#> [167,]  55   2      0          2        0   106
#> [168,]  57   1      0        180        0   148
#> [169,]  60  11      1          9        0   106
#> [170,]  59   3      0        180        0   120
#> [171,]  58   4      1          0        1   160
#> [172,]  60   5      1          1        0   138
#> [173,]  57   5      0        180        1   130
#> [174,]  58  11      1          9        1   124
#> [175,]  57  10      1          9        0   103
#> [176,]  59   6      1          0        1   140
#> [177,]  59   5      0        180        1   155
#> [178,]  59   4      1          0        1   152
#> [179,]  58   4      1          3        0   120
#> [180,]  59   2      1          1        0   140
#> [181,]  58   8      0        161        1   140
#> [182,]  61   9      1          8        0   150
#> [183,]  61  20      1         13        0   130
#> [184,]  57  13      1         10        0   110
#> [185,]  58  10      0         10        1   150
#> [186,]  57   4      1          3        0   138
#> [187,]  57  11      0        180        1   150
#> [188,]  56  14      0         45        0   130
#> [189,]  58  19      1         13        1   140
#> [190,]  56  13      1          6        1   158
#> [191,]  56  18      1         11        1   165
#> [192,]  59   9      1          0        1    80
#> [193,]  60  12      1          0        1   114
#> [194,]  55   9      1          7        1   135
#> [195,]  61   4      1          0        1   115
#> [196,]  56   8      1          8        0   120
#> [197,]  61  13      1         12        1   130
#> [198,]  57   1      0          1        0   126
#> [199,]  59   5      1          2        0   182
#> [200,]  58   5      1          1        1   135
#> [201,]  62   7      1          2        1   180
#> [202,]  58   8      1          3        1   150
#> [203,]  57   7      0        169        0   180
#> [204,]  61   7      0          7        1   150
#> [205,]  60   7      0          7        0   147
#> [206,]  59  13      1          2        0   198
#> [207,]  58   3      1          0        1   146
#> [208,]  62   4      1          3        0   173
#> [209,]  59   1      0        180        0   155
#> [210,]  59  16      1          9        1   133
#> [211,]  63   6      0         28        1   120
#> [212,]  61  13      0         13        0   120
#> [213,]  61   5      0          5        1   110
#> [214,]  61   5      0          5        1   160
#> [215,]  58  11      1          9        0   179
#> [216,]  57   2      1          1        0   159
#> [217,]  62   1      1          0        1   172
#> [218,]  61   7      0        180        0   135
#> [219,]  62   3      0        180        1   105
#> [220,]  63  15      1         10        1   126
#> [221,]  64   4      0        180        0   130
#> [222,]  60  18      1         13        0   132
#> [223,]  59   8      0        180        1   140
#> [224,]  61   9      1          9        1   150
#> [225,]  58   9      1          9        0   110
#> [226,]  59   1      0         22        1   162
#> [227,]  58   2      0        180        0   127
#> [228,]  59   4      0        180        0   196
#> [229,]  60   7      1          5        1   141
#> [230,]  59   5      1          1        0   148
#> [231,]  60   7      1          1        1    90
#> [232,]  65  13      0        180        1   100
#> [233,]  63   1      0          1        0   162
#> [234,]  61  15      1         13        0   170
#> [235,]  59   4      0          4        0   149
#> [236,]  64  10      1          9        0   160
#> [237,]  62   6      0          6        0   120
#> [238,]  59  10      0        180        1   130
#> [239,]  61   6      1          1        1   117
#> [240,]  64   6      1          0        1   140
#> [241,]  63   4      1          3        0   162
#> [242,]  66   3      1          1        0   127
#> [243,]  61  10      1          2        1   194
#> [244,]  64  32      1          9        1   160
#> [245,]  63  12      1          9        0   114
#> [246,]  63   7      0        180        0   120
#> [247,]  66   5      1          0        1   110
#> [248,]  65   8      1          0        0   168
#> [249,]  65  10      1          8        1   120
#> [250,]  64   0      0          0        1    90
#> [251,]  60   6      0        180        0   130
#> [252,]  64  21      1         10        0   190
#> [253,]  61  12      1         11        0   154
#> [254,]  64   9      0        180        0   150
#> [255,]  63  16      1          7        1   110
#> [256,]  66   6      1          1        1   130
#> [257,]  63  12      0         12        1   150
#> [258,]  62   3      1          1        1   199
#> [259,]  65   6      0          9        0   112
#> [260,]  65   3      1          0        1    80
#> [261,]  63   5      1          4        0   170
#> [262,]  63   2      1          1        0   180
#> [263,]  64   2      0          2        0   201
#> [264,]  66  16      1         11        1   169
#> [265,]  62   9      0        180        0   145
#> [266,]  61  14      1          5        0   140
#> [267,]  63   9      1          8        1   160
#> [268,]  63   3      1          2        0   120
#> [269,]  63   2      1          0        0   140
#> [270,]  65   8      1          0        1   140
#> [271,]  67   6      0        180        1   170
#> [272,]  65  15      1         11        1   160
#> [273,]  68   5      1          4        1   150
#> [274,]  64  13      1         12        1   150
#> [275,]  64   6      1          0        1   125
#> [276,]  66   7      1          0        1   115
#> [277,]  66  13      1          0        0   118
#> [278,]  64  14      1         13        1   150
#> [279,]  64   0      0          0        1   148
#> [280,]  67   4      1          3        0   130
#> [281,]  66   3      1          0        1   135
#> [282,]  66   6      1          0        1   140
#> [283,]  68   1      0        180        1   166
#> [284,]  64  10      1          9        1   110
#> [285,]  63   7      1          0        0   162
#> [286,]  63  10      0         16        1   160
#> [287,]  64   1      0          1        1   120
#> [288,]  68  18      0        180        1   260
#> [289,]  65  17      1         14        1   100
#> [290,]  65  18      1          3        0   120
#> [291,]  63   1      1          0        1   155
#> [292,]  63  10      0         18        1   130
#> [293,]  68  11      0        180        0   160
#> [294,]  68  14      0         79        0   172
#> [295,]  66  11      1          0        0   100
#> [296,]  69  12      0         15        1   140
#> [297,]  66  15      1         13        1   160
#> [298,]  63   2      0        180        0   150
#> [299,]  65  11      1          6        0   130
#> [300,]  66   9      1          8        0   130
#> [301,]  63   8      0        180        1   120
#> [302,]  68  14      1         13        1   140
#> [303,]  65   8      1          0        1    90
#> [304,]  69   1      1          0        0   170
#> [305,]  67   1      0        180        1   160
#> [306,]  68  10      1         10        1   150
#> [307,]  67   7      1          4        1   130
#> [308,]  63   2      1          0        0    99
#> [309,]  67   2      0        180        0   184
#> [310,]  65  10      1          1        1   148
#> [311,]  66  19      1         12        1   150
#> [312,]  67  12      1         12        0   160
#> [313,]  64   4      0        179        0   160
#> [314,]  66   4      0        180        1   130
#> [315,]  66   4      0        180        0   177
#> [316,]  69   4      1          3        1   150
#> [317,]  65  13      1         12        1   130
#> [318,]  69   8      0         93        0   140
#> [319,]  64  21      0         21        1   155
#> [320,]  66   6      0        180        0   140
#> [321,]  65   1      0          1        1   120
#> [322,]  68  18      1          0        1   160
#> [323,]  68   4      0          4        1   190
#> [324,]  71   3      0          5        0   112
#> [325,]  68   7      0        150        0   210
#> [326,]  66   9      1          3        1   151
#> [327,]  66   1      1          1        1   165
#> [328,]  69   8      0        180        1   153
#> [329,]  70  14      0        171        0   166
#> [330,]  67  10      1          9        0   200
#> [331,]  67   6      1          4        0   130
#> [332,]  68  18      1         14        1   170
#> [333,]  69   0      0          0        1   148
#> [334,]  65   2      0        180        0   130
#> [335,]  69   3      1          2        0   151
#> [336,]  67  14      1         13        0   130
#> [337,]  65  14      1         13        1   150
#> [338,]  69   8      0        180        1   180
#> [339,]  71   7      0          7        0   230
#> [340,]  69   5      0          5        1   142
#> [341,]  71   3      0        103        0   133
#> [342,]  69   3      0          3        1   130
#> [343,]  67   1      0         36        1   104
#> [344,]  67   5      0          5        0   130
#> [345,]  69   8      1          5        1   195
#> [346,]  69   6      1          4        1   174
#> [347,]  72   3      1          0        1   132
#> [348,]  72   7      0          7        1   110
#> [349,]  67  14      0        172        1   140
#> [350,]  69  11      1          0        1   120
#> [351,]  66   2      0        180        0   130
#> [352,]  69   8      1          2        0   121
#> [353,]  67  13      1          9        0   130
#> [354,]  70   3      0        123        0   130
#> [355,]  70   9      0        180        1   142
#> [356,]  72   5      1          4        0   170
#> [357,]  67  22      1          1        1   140
#> [358,]  68   3      0         19        0   135
#> [359,]  69   1      0          1        1   110
#> [360,]  67   1      0          1        1    60
#> [361,]  67   4      0         60        1   136
#> [362,]  67   8      1          0        1   130
#> [363,]  72  13      1         11        1   195
#> [364,]  66  24      1         13        0   130
#> [365,]  72  30      1          0        1   145
#> [366,]  68   7      1          2        0   135
#> [367,]  73  20      1          0        1   170
#> [368,]  72  19      1          8        0   120
#> [369,]  67   9      0        180        0   158
#> [370,]  72   2      0          2        1   100
#> [371,]  72   6      1          5        0   115
#> [372,]  68  23      0        180        1   220
#> [373,]  69   3      0        180        0   220
#> [374,]  71   3      1          2        0   150
#> [375,]  72   5      0         28        0   120
#> [376,]  71   5      0        180        0   191
#> [377,]  73   6      0        180        1   117
#> [378,]  68   7      0        180        1   130
#> [379,]  72  16      1          1        1   130
#> [380,]  70   4      0        180        0   180
#> [381,]  69   1      1          0        0   155
#> [382,]  73   6      1          0        1   270
#> [383,]  72   8      1          1        1   150
#> [384,]  71   2      1          0        1   180
#> [385,]  73   7      0          7        1   140
#> [386,]  68  15      1         13        1   130
#> [387,]  70  13      1          9        0   100
#> [388,]  72   6      0        180        1   130
#> [389,]  73   0      0        180        1   161
#> [390,]  74   8      1          0        1    85
#> [391,]  71  15      1         11        0   165
#> [392,]  74  20      0         20        1   180
#> [393,]  68   9      0        180        1   120
#> [394,]  71  20      1         10        0   140
#> [395,]  73   3      1          0        1   136
#> [396,]  71   8      1          7        0   149
#> [397,]  71   3      1          2        1   190
#> [398,]  70  26      1         11        1   120
#> [399,]  74   4      0          4        0   120
#> [400,]  73   4      0         58        1   160
#> [401,]  72   5      1          3        1   160
#> [402,]  72  15      1          0        1   150
#> [403,]  71   7      1          2        0   143
#> [404,]  72   8      1          0        1   140
#> [405,]  74   3      0          3        1   150
#> [406,]  71  13      1          8        0   121
#> [407,]  74   7      1          0        1   117
#> [408,]  72  10      1          8        1   153
#> [409,]  69   7      0        180        1   144
#> [410,]  70   8      0          8        0   120
#> [411,]  75   1      0          1        0   133
#> [412,]  73  10      1          9        1   146
#> [413,]  73  10      1         10        1   120
#> [414,]  71   2      0         10        1   112
#> [415,]  73   1      0          1        1    80
#> [416,]  75  13      1          1        1   130
#> [417,]  71  11      1          8        0   110
#> [418,]  71   4      0          4        0   134
#> [419,]  72  15      1         12        1   120
#> [420,]  73  10      1          8        0   120
#> [421,]  70   7      1          4        0   184
#> [422,]  72   7      0         57        1   145
#> [423,]  72  11      0         11        1   140
#> [424,]  73   5      1          3        1   112
#> [425,]  76  25      1         12        1   170
#> [426,]  73  12      1         12        1   140
#> [427,]  72   2      0        180        0   120
#> [428,]  75   1      0        180        1   140
#> [429,]  72   4      1          0        1   197
#> [430,]  73   5      0        180        0   126
#> [431,]  73   4      0        180        0   124
#> [432,]  76   3      1          0        1   120
#> [433,]  72   3      0        180        0   160
#> [434,]  76   5      0          5        1   130
#> [435,]  77  11      0         11        1   150
#> [436,]  75   3      1          1        0   180
#> [437,]  72   7      1          2        0   142
#> [438,]  73  15      0         15        1   160
#> [439,]  73  10      1         10        0   124
#> [440,]  74   7      0        180        1   150
#> [441,]  74   3      0          3        1   128
#> [442,]  76   8      1          0        1   141
#> [443,]  73   6      0          6        1   114
#> [444,]  75  23      1         14        1   110
#> [445,]  74   2      0        180        0   190
#> [446,]  72   4      0         85        1   120
#> [447,]  72   4      1          3        0   160
#> [448,]  76  17      1          0        1   200
#> [449,]  73   4      1          3        1   125
#> [450,]  76  13      1         10        0   110
#> [451,]  75   4      1          0        1   122
#> [452,]  75   7      0          7        0   190
#> [453,]  73  13      1         11        0   195
#> [454,]  75  12      0         12        1   160
#> [455,]  74   8      1          0        1   105
#> [456,]  76  13      1          8        1   148
#> [457,]  74   6      0        180        0   160
#> [458,]  76   4      0          4        1   155
#> [459,]  75   1      0          1        1   125
#> [460,]  74   2      0        180        0   111
#> [461,]  73   0      0        180        0   156
#> [462,]  72   5      0        180        0   120
#> [463,]  78  12      1         11        1   160
#> [464,]  76  44      1         10        0   105
#> [465,]  76   5      0        180        0   185
#> [466,]  74  10      1          0        1   135
#> [467,]  76   5      1          0        1   167
#> [468,]  74   8      1          8        1   170
#> [469,]  73  33      1         12        1   175
#> [470,]  77  12      1          9        1   100
#> [471,]  73  10      1          9        0   146
#> [472,]  77  12      0        180        0   130
#> [473,]  78   5      1          0        1   170
#> [474,]  75   3      1          1        1   171
#> [475,]  74   9      1          8        0   200
#> [476,]  79  10      1          8        0   190
#> [477,]  74   2      1          0        1   130
#> [478,]  77   3      0        180        0   110
#> [479,]  76  29      0         47        0    90
#> [480,]  74   2      0        180        0   100
#> [481,]  78   7      0          7        1   133
#> [482,]  74  15      0        180        1   172
#> [483,]  78   8      1          6        1   110
#> [484,]  74   7      0          7        0   161
#> [485,]  76  13      1          1        1   170
#> [486,]  78  32      1          9        1   198
#> [487,]  78   0      0        180        1   212
#> [488,]  78  13      1          5        0   130
#> [489,]  78  15      0        180        1   270
#> [490,]  80   8      0          8        1   120
#> [491,]  75  13      1          6        0   150
#> [492,]  74  10      1          8        0   135
#> [493,]  76   1      0          1        1    83
#> [494,]  79   4      0         80        0   145
#> [495,]  76  11      1          0        0   120
#> [496,]  75  11      1          4        0   162
#> [497,]  80   6      0          6        1   150
#> [498,]  78   6      1          0        1   240
#> [499,]  78  11      1          1        1   140
#> [500,]  79  11      0        180        0   160
#> [501,]  79   2      1          0        1   121
#> [502,]  78  14      1          0        1   140
#> [503,]  81   1      0          1        0   130
#> [504,]  78  11      1          8        1   118
#> [505,]  76   4      0          4        1   160
#> [506,]  76  10      1          8        0   180
#> [507,]  76  12      1         10        1   127
#> [508,]  77   6      0          6        1   107
#> [509,]  80   3      1          0        1   120
#> [510,]  75   2      1          1        1   204
#> [511,]  76   1      0          1        1   140
#> [512,]  77  31      1          3        1   161
#> [513,]  76   1      0          1        1    90
#> [514,]  78   7      1          0        1   110
#> [515,]  79   3      0          3        0   120
#> [516,]  77   7      0        180        1   170
#> [517,]  79   4      1          0        1   120
#> [518,]  81   1      0        180        0   120
#> [519,]  80  15      1         12        1   150
#> [520,]  80  40      1          0        1   138
#> [521,]  76   7      0        161        0   151
#> [522,]  79  10      0         10        1   120
#> [523,]  81   4      1          2        1   126
#> [524,]  79  28      0        164        0   100
#> [525,]  80   6      0        173        1   160
#> [526,]  81   3      0        180        0   184
#> [527,]  78   7      0          7        1   147
#> [528,]  77  13      1          0        1   190
#> [529,]  80   5      1          1        1   108
#> [530,]  79   3      0          3        1   101
#> [531,]  78  26      1          5        0   194
#> [532,]  81   4      1          1        1   104
#> [533,]  78  20      1          0        1   109
#> [534,]  78   3      1          1        1   152
#> [535,]  82   3      1          1        1   144
#> [536,]  79   6      0          6        0   152
#> [537,]  82   1      1          0        1    82
#> [538,]  79  10      0        180        1   150
#> [539,]  81   1      0        108        0   129
#> [540,]  78  12      0        180        0   134
#> [541,]  79   1      0        125        0   193
#> [542,]  82  21      1          2        0   155
#> [543,]  84  22      1         10        0   180
#> [544,]  80   6      0          6        1   110
#> [545,]  83   9      1          5        1   170
#> [546,]  82   5      0        180        0   110
#> [547,]  83   5      0        180        0   148
#> [548,]  79   7      1          6        0   130
#> [549,]  81  11      1          8        0   160
#> [550,]  81   5      0        177        0    41
#> [551,]  80  11      1          8        0   170
#> [552,]  78  23      1         10        1   145
#> [553,]  79   4      0          4        1   183
#> [554,]  82   8      1          1        0   128
#> [555,]  79   1      0        180        1   170
#> [556,]  81  15      0        180        1   140
#> [557,]  84   5      1          1        1    85
#> [558,]  81  20      1          9        0   170
#> [559,]  80   6      1          0        1   150
#> [560,]  80  11      1          8        0   110
#> [561,]  80   8      1          7        0   160
#> [562,]  79   7      0        177        0   197
#> [563,]  79   0      1          0        1    96
#> [564,]  85   4      0        180        0    90
#> [565,]  83   2      0          2        1   155
#> [566,]  82   6      0        128        1   100
#> [567,]  84   4      0        167        0   198
#> [568,]  80   3      1          1        1   230
#> [569,]  81   1      0          1        1   150
#> [570,]  84   1      0         38        1   205
#> [571,]  83   3      0        180        0   174
#> [572,]  81   4      0         90        1   138
#> [573,]  79   9      1          8        0   150
#> [574,]  85   3      1          2        1   160
#> [575,]  84   4      0         89        1   129
#> [576,]  80   2      1          0        1   130
#> [577,]  79   4      0          4        1    60
#> [578,]  83   1      0          1        1   100
#> [579,]  82  19      0         19        0   120
#> [580,]  83   9      0        180        0   198
#> [581,]  79  14      1          0        0   110
#> [582,]  83   3      0        114        0    98
#> [583,]  82   0      0          2        1   100
#> [584,]  85   9      1          6        1   160
#> [585,]  83   1      0        180        0   160
#> [586,]  81   4      0          4        0   175
#> [587,]  81   1      0          1        1   145
#> [588,]  81  12      0         12        1   163
#> [589,]  82  16      1          8        0   103
#> [590,]  82   5      1          0        1   146
#> [591,]  81   4      0          4        0   160
#> [592,]  86  12      0        180        1   120
#> [593,]  83  12      1          2        1   170
#> [594,]  81  19      1         14        0   120
#> [595,]  82   3      1          2        0   130
#> [596,]  82  15      1          0        0   183
#> [597,]  80   2      0         88        0   135
#> [598,]  83   7      0        126        0   135
#> [599,]  86   8      0          8        1   132
#> [600,]  81  16      1          9        0   180
#> [601,]  84   6      0        165        0   145
#> [602,]  86   3      0          3        1   140
#> [603,]  84   3      0        180        1   120
#> [604,]  85   3      0          3        1   118
#> [605,]  81   2      1          0        1   118
#> [606,]  81   4      0        180        0   160
#> [607,]  83   9      0        180        1   149
#> [608,]  87   2      0          5        1   137
#> [609,]  86  12      1          0        1   132
#> [610,]  84  16      0         70        1   150
#> [611,]  83  10      1          0        1   190
#> [612,]  86   2      0        180        1   169
#> [613,]  88  14      1          3        1   130
#> [614,]  84   3      0          3        1   121
#> [615,]  83  13      1         12        0   170
#> [616,]  87   2      0        180        0   113
#> [617,]  84   3      0        180        1   170
#> [618,]  86   4      0         38        1   122
#> [619,]  82   4      0          4        0   130
#> [620,]  86  13      0        177        0   163
#> [621,]  86   6      0          6        1   117
#> [622,]  84  13      0         62        1   100
#> [623,]  88   4      0          4        0   100
#> [624,]  83   9      0         65        1   150
#> [625,]  87   2      0        180        1   130
#> [626,]  88   2      0        180        1    68
#> [627,]  83   3      0          3        1   130
#> [628,]  87   8      0          8        1   157
#> [629,]  88   4      0          4        0    86
#> [630,]  87   6      0        180        1   110
#> [631,]  85   8      0          8        1   136
#> [632,]  87  29      0         29        1    97
#> [633,]  87  15      1          9        1   138
#> [634,]  84   0      0        180        1   136
#> [635,]  90  14      0         14        1   100
#> [636,]  88   1      0          1        0   135
#> [637,]  86   4      0        180        1   145
#> [638,]  87   6      1          0        0   125
#> [639,]  86   3      1          0        1    80
#> [640,]  88   7      0         24        0   119
#> [641,]  88   8      0         50        1   154
#> [642,]  90  11      1         10        1   186
#> [643,]  87   6      0        126        1   168
#> [644,]  86  10      0        180        1   137
#> [645,]  86   9      1          7        0   130
#> [646,]  90   4      1          0        0   121
#> [647,]  91   1      0          1        1    74
#> [648,]  87   5      0         36        1   150
#> [649,]  90   5      1          0        1   125
#> [650,]  92   1      0          1        1   167
#> [651,]  88   5      0        158        0   100
#> [652,]  87   7      0         74        1   105
#> [653,]  89  12      1          0        1   130
#> [654,]  92   7      0          7        1   110
#> [655,]  89   4      0          4        1   159
#> [656,]  91   0      0          0        0     0
#> [657,]  90  18      0        180        0   188
#> [658,]  90  19      1         11        1   129
#> [659,]  94   6      0         50        0    78
#> [660,]  91   2      0          2        1   116
#> [661,]  93   8      0        179        1   110
#> [662,]  92   4      0         76        1   149
#> [663,]  90   3      0         67        0   162
#> [664,]  96   3      0         12        1    97
#> [665,]  94   3      0         26        1   144
#> [666,]  93   0      1          0        1   122
#> [667,]  92   5      0         69        0   139
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+  12.0    5.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+   2.0+   5.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [21]   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 155.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+
#>  [51]  73.0    5.0+ 161.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+
#>  [61] 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+   7.0  180.0+   2.0    1.0  179.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+   4.0+ 180.0+
#>  [91] 180.0+  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [101]   4.0+  85.0  180.0+ 180.0+ 166.0+  16.0+   7.0+   6.0+ 180.0+ 180.0+
#> [111] 180.0+ 180.0+  28.0    1.0    9.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+
#> [121]   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+  16.0  180.0+
#> [131] 180.0+ 180.0+  12.0+ 134.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [141] 180.0+   1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [151] 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+ 180.0+   4.0+ 180.0+ 180.0+
#> [161]   5.0+ 180.0+   4.0+ 180.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [171] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+ 180.0+
#> [181] 161.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+  45.0   19.0  180.0+
#> [191] 180.0+   9.0+ 172.0+  24.0  180.0+   8.0  180.0+   1.0+ 180.0+ 180.0+
#> [201] 180.0+ 180.0+ 169.0    7.0    7.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+
#> [211]  28.0   13.0+   5.0    5.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+
#> [221] 180.0+ 180.0+ 180.0+ 180.0+   9.0   22.0  180.0+ 180.0+  84.0  180.0+
#> [231] 180.0+ 180.0+   1.0  180.0+   4.0+ 167.0    6.0+ 180.0+ 180.0+ 180.0+
#> [241] 180.0+   3.0+  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+   0.5 
#> [251] 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0    3.0 
#> [261] 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+  15.0 
#> [271] 180.0+ 180.0+   5.0+  13.0  180.0+ 179.0+ 166.0+  14.0+   0.5+ 180.0+
#> [281]   3.0+ 180.0+ 180.0+ 180.0+   7.0+  16.0    1.0  180.0+ 180.0+ 123.0+
#> [291]   1.0+  18.0  180.0+  79.0  180.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+
#> [301] 180.0+ 180.0+   8.0+ 175.0  180.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+
#> [311]  19.0+  12.0  179.0+ 180.0+ 180.0+ 152.0+ 180.0+  93.0   21.0+ 180.0+
#> [321]   1.0   18.0+   4.0    5.0  150.0  180.0+   1.0  180.0+ 171.0  174.0+
#> [331]   6.0  180.0+   0.5  180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+   5.0+
#> [341] 103.0    3.0+  36.0    5.0+ 180.0+  97.0  180.0+   7.0  172.0+ 180.0+
#> [351] 180.0+   8.0+  13.0+ 123.0  180.0+ 180.0+  51.0   19.0    1.0    1.0 
#> [361]  60.0  180.0+ 132.0  180.0+ 162.0    7.0+ 124.0  180.0+ 180.0+   2.0 
#> [371] 180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [381] 180.0+   6.0  180.0+ 180.0+   7.0+  15.0   13.0+ 180.0+ 180.0+ 180.0+
#> [391] 180.0+  20.0  180.0+  20.0  180.0+   8.0    3.0  180.0+   4.0+  58.0 
#> [401] 180.0+ 180.0+ 180.0+ 180.0+   3.0  175.0  180.0+  10.0+ 180.0+   8.0+
#> [411]   1.0  180.0+  15.0   10.0    1.0   13.0  180.0+   4.0+ 180.0+  10.0 
#> [421] 104.0+  57.0   11.0    5.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [431] 180.0+ 180.0+ 180.0+   5.0   11.0+ 180.0+   7.0   15.0+  10.0  180.0+
#> [441]   3.0  180.0+   6.0  180.0+ 180.0+  85.0  180.0+  17.0+ 180.0+ 174.0+
#> [451]   4.0    7.0  180.0+  12.0  180.0+ 180.0+ 180.0+   4.0    1.0  180.0+
#> [461] 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+   8.0   33.0  180.0+
#> [471] 180.0+ 180.0+ 180.0+   3.0  168.0+ 180.0+ 176.0+ 180.0+  47.0  180.0+
#> [481]   7.0  180.0+   8.0+   7.0  180.0+  32.0  180.0+ 172.0  180.0+   8.0 
#> [491] 180.0+ 180.0+   1.0   80.0   11.0  152.0+   6.0  180.0+ 180.0+ 180.0+
#> [501] 180.0+ 180.0+   1.0   11.0    4.0   10.0+ 180.0+   6.0    3.0+   2.0+
#> [511]   1.0  171.0    1.0   43.0    3.0  180.0+ 138.0  180.0+ 180.0+  40.0 
#> [521] 161.0   10.0+  93.0  164.0  173.0  180.0+   7.0+  22.0    5.0+   3.0 
#> [531] 171.0+  71.0   20.0+   3.0+ 180.0+   6.0+   1.0  180.0+ 108.0  180.0+
#> [541] 125.0  180.0+ 180.0+   6.0    9.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+
#> [551] 169.0   70.0    4.0  180.0+ 180.0+ 180.0+ 180.0+  20.0  180.0+ 180.0+
#> [561] 180.0+ 177.0+   0.5  180.0+   2.0  128.0  167.0    3.0+   1.0   38.0 
#> [571] 180.0+  90.0  180.0+ 180.0+  89.0  180.0+   4.0    1.0   19.0  180.0+
#> [581] 180.0+ 114.0    2.0  180.0+ 180.0+   4.0+   1.0   12.0   16.0+   5.0+
#> [591]   4.0+ 180.0+  77.0  180.0+   3.0   83.0   88.0  126.0    8.0  180.0+
#> [601] 165.0    3.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+  70.0 
#> [611] 180.0+ 180.0+  14.0    3.0   13.0  180.0+ 180.0+  38.0    4.0  177.0 
#> [621]   6.0+  62.0    4.0+  65.0  180.0+ 180.0+   3.0+   8.0+   4.0  180.0+
#> [631]   8.0   29.0  180.0+ 180.0+  14.0    1.0+ 180.0+  25.0    3.0   24.0 
#> [641]  50.0   11.0  126.0  180.0+ 180.0+   4.0    1.0   36.0   89.0    1.0 
#> [651] 158.0   74.0  180.0+   7.0    4.0    0.5  180.0+ 180.0+  50.0    2.0 
#> [661] 179.0+  76.0   67.0   12.0   26.0    0.5   69.0  180.0+   3.0   15.0+
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
#>   0.8412035 
```
