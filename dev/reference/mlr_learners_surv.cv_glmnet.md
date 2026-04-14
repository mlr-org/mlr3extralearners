# Cross-Validated GLM with Elastic Net Regularization Survival Learner

Generalized linear models with elastic net regularization. Calls
[`glmnet::cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/cv.glmnet.html)
from package [glmnet](https://CRAN.R-project.org/package=glmnet).

## Initial parameter values

- `family` is set to `"cox"` and cannot be changed.

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`glmnet::predict.cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.cv.glmnet.html).

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    [`glmnet::survfit.cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/survfit.cv.glmnet.html).
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
[`glmnet::glmnet()`](https://rdrr.io/pkg/glmnet/man/glmnet.html). During
prediction, the offset column from the test set is used only if
`use_pred_offset = TRUE` (default), passed via the `newoffset` argument
in
[`glmnet::predict.coxnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html).
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
[`glmnet::predict.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html)
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
#>      Lambda Index Measure     SE Nonzero
#> min 0.00363    44   2.818 0.2540       6
#> 1se 0.09427     9   3.037 0.2465       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      0        180        0   121
#>   [7,]  35   2      1          1        1   112
#>   [8,]  37   9      0        180        1   151
#>   [9,]  38  13      1          0        1   161
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  12      1          8        1   120
#>  [12,]  36   5      1          0        1   115
#>  [13,]  38  16      1         10        0   160
#>  [14,]  38  12      1         11        1    92
#>  [15,]  42   3      1          1        1   130
#>  [16,]  37   1      1          0        1   146
#>  [17,]  42   2      0          2        0   140
#>  [18,]  40   6      0        180        1   138
#>  [19,]  42   2      0        180        0   100
#>  [20,]  43   3      1          0        1   100
#>  [21,]  41   2      1          1        0   166
#>  [22,]  40   1      1          0        1   145
#>  [23,]  43   4      1          0        1   130
#>  [24,]  42   4      0        180        0   162
#>  [25,]  42  15      1         13        1   125
#>  [26,]  43   2      1          1        1   116
#>  [27,]  42   2      0        180        1   124
#>  [28,]  44   5      1          1        0   170
#>  [29,]  45   3      0        180        1   154
#>  [30,]  41  10      1          8        0   150
#>  [31,]  44   3      0        180        0   141
#>  [32,]  45   9      1          7        0   110
#>  [33,]  45   6      0        180        1   170
#>  [34,]  41   5      1          4        1   141
#>  [35,]  44   2      1          1        1   150
#>  [36,]  43   2      0        180        1   140
#>  [37,]  45   2      0        180        1   140
#>  [38,]  46  15      0        180        0   120
#>  [39,]  46   2      1          1        0   126
#>  [40,]  47   4      1          3        0   118
#>  [41,]  48  15      0        180        1   160
#>  [42,]  45   3      0        150        0   130
#>  [43,]  44   3      1          0        1   180
#>  [44,]  46   7      1          2        0   166
#>  [45,]  43  10      0        180        0   185
#>  [46,]  46  13      1         10        0   100
#>  [47,]  44   0      1          0        1    96
#>  [48,]  47   4      1          3        1   160
#>  [49,]  43   3      1          0        1   124
#>  [50,]  45   8      1          0        1   117
#>  [51,]  45   5      0          5        0   141
#>  [52,]  46   6      1          0        1   100
#>  [53,]  44   4      1          0        1   114
#>  [54,]  44   9      1          8        1   135
#>  [55,]  46   5      1          3        0   130
#>  [56,]  46   4      0        180        1   121
#>  [57,]  44   2      0        180        0   142
#>  [58,]  46  15      0        180        1   120
#>  [59,]  48   3      0        180        0   154
#>  [60,]  48  12      1         11        0   200
#>  [61,]  47   5      1          3        1   130
#>  [62,]  47   9      1          6        0   170
#>  [63,]  46   3      1          0        1   119
#>  [64,]  47  10      0         10        1   140
#>  [65,]  48   2      1          0        0   184
#>  [66,]  50   4      1          1        0   125
#>  [67,]  50   6      1          2        1   140
#>  [68,]  46   3      1          1        1   140
#>  [69,]  46   9      1          9        1   122
#>  [70,]  50   7      0        180        1   110
#>  [71,]  49   2      0          2        0   105
#>  [72,]  51   1      0          1        1   145
#>  [73,]  49  15      1         11        1   160
#>  [74,]  47   2      0        180        0   150
#>  [75,]  49  23      0        179        1   112
#>  [76,]  52   2      0        180        1   170
#>  [77,]  50   1      1          0        0   150
#>  [78,]  50   9      0        180        0   130
#>  [79,]  47   6      0        180        1   162
#>  [80,]  46   3      0        180        1   120
#>  [81,]  53   8      0         36        1   160
#>  [82,]  48  17      1         10        0   111
#>  [83,]  47   2      1          1        0   110
#>  [84,]  49  15      0        180        1   160
#>  [85,]  53   5      0        180        1   140
#>  [86,]  54  17      1         12        1   102
#>  [87,]  51   3      1          1        0   140
#>  [88,]  50   2      0          5        1   106
#>  [89,]  50  10      1          6        0   122
#>  [90,]  50  14      1         13        0   170
#>  [91,]  53   8      1          7        0   160
#>  [92,]  49   5      1          2        1   150
#>  [93,]  52  14      1          7        1   200
#>  [94,]  48   6      0        180        0   160
#>  [95,]  53   4      1          0        1   156
#>  [96,]  54   9      1          0        1   138
#>  [97,]  49  16      0         16        0   125
#>  [98,]  55   3      1          1        0   150
#>  [99,]  54  23      1         10        0   131
#> [100,]  55   6      1          2        1   114
#> [101,]  52   4      0        180        1   180
#> [102,]  50   5      1          4        1   150
#> [103,]  54   4      1          0        1   121
#> [104,]  50   3      0        174        1   153
#> [105,]  55  28      1         13        1   160
#> [106,]  49   6      1          0        1   130
#> [107,]  50   7      1          1        0   156
#> [108,]  53   9      0          9        1    95
#> [109,]  53   8      1          0        1   130
#> [110,]  56   4      1          1        1   130
#> [111,]  52   5      0        175        1   117
#> [112,]  55   1      0        180        0   127
#> [113,]  55   2      0          2        0   145
#> [114,]  54   1      0        180        0   162
#> [115,]  56   3      0        180        1   193
#> [116,]  55   5      1          4        1   120
#> [117,]  53  10      1          9        0   172
#> [118,]  52  16      1         14        0   170
#> [119,]  53  15      0         15        1    90
#> [120,]  55   6      1          5        1   138
#> [121,]  54  12      1          0        1   190
#> [122,]  54   3      0        180        0   128
#> [123,]  56   3      0          8        1   139
#> [124,]  55   1      0          2        0   130
#> [125,]  54   7      1          2        0   129
#> [126,]  54   2      1          1        0   135
#> [127,]  52   9      1          3        0   170
#> [128,]  54   2      1          1        1   176
#> [129,]  57   5      1          3        1   138
#> [130,]  57   1      0          1        1   100
#> [131,]  56   4      1          0        1   140
#> [132,]  52   2      0        180        0   140
#> [133,]  55  11      1          7        0   104
#> [134,]  52  15      1         14        0   130
#> [135,]  56  14      1         11        0   130
#> [136,]  53   3      1          0        1   200
#> [137,]  57  10      0        180        1   170
#> [138,]  58   8      0          8        1   130
#> [139,]  53  21      1         13        1   130
#> [140,]  59   3      1          1        0   172
#> [141,]  57   4      0        180        1   119
#> [142,]  58   6      1          0        1    90
#> [143,]  53  15      1         10        1   130
#> [144,]  54  17      1          8        1   227
#> [145,]  55   9      1          2        1   147
#> [146,]  55  13      0        166        1   140
#> [147,]  54  23      1          8        0   120
#> [148,]  57   4      1          2        1   185
#> [149,]  53   4      0        147        1   145
#> [150,]  53   7      1          0        1   120
#> [151,]  57  11      1         10        1   129
#> [152,]  56   4      0          4        0   164
#> [153,]  58   1      1          1        1   200
#> [154,]  56   7      1          5        1   120
#> [155,]  55   2      0          2        0   106
#> [156,]  59   9      1          1        1   125
#> [157,]  59   3      0        180        0   120
#> [158,]  57   5      0        180        1   130
#> [159,]  58  11      1          9        1   124
#> [160,]  55   5      1          0        1   160
#> [161,]  57  10      1          9        0   103
#> [162,]  59   6      1          0        1   140
#> [163,]  59   5      0        180        1   155
#> [164,]  59   4      1          0        1   152
#> [165,]  61   9      0          9        1   160
#> [166,]  60   0      1          0        1    80
#> [167,]  59   2      1          1        0   140
#> [168,]  58  14      1          6        0   190
#> [169,]  61   4      1          3        0   151
#> [170,]  61   9      1          8        0   150
#> [171,]  58   1      0          1        1   100
#> [172,]  61  20      1         13        0   130
#> [173,]  57   4      1          3        0   138
#> [174,]  57  11      0        180        1   150
#> [175,]  61   3      0         17        0   143
#> [176,]  56  14      0         45        0   130
#> [177,]  57   3      1          2        0   120
#> [178,]  56  13      1          6        1   158
#> [179,]  56  18      1         11        1   165
#> [180,]  59   9      1          0        1    80
#> [181,]  55   4      1          3        1   160
#> [182,]  58  11      0        172        1   135
#> [183,]  60  12      1          0        1   114
#> [184,]  55   9      1          7        1   135
#> [185,]  59  11      1          8        1   190
#> [186,]  57   1      0          1        0   126
#> [187,]  57  15      1         13        1   110
#> [188,]  59   5      1          2        0   182
#> [189,]  61   8      0         77        0   120
#> [190,]  61  13      0         13        0   210
#> [191,]  62  10      1          0        1   153
#> [192,]  62   7      1          2        1   180
#> [193,]  57   3      1          0        0   100
#> [194,]  61  18      0        170        0   140
#> [195,]  61  28      1          7        0   133
#> [196,]  58   8      1          3        1   150
#> [197,]  60   7      0          7        0   147
#> [198,]  61   6      0          6        0   134
#> [199,]  59  13      1          2        0   198
#> [200,]  57  12      1          9        1   120
#> [201,]  62   4      1          0        0   160
#> [202,]  62   4      1          3        0   173
#> [203,]  58   2      0         30        0   202
#> [204,]  59  16      1          9        1   133
#> [205,]  63   6      0         28        1   120
#> [206,]  61  13      0         13        0   120
#> [207,]  61   5      0          5        1   110
#> [208,]  61   5      0          5        1   160
#> [209,]  58  11      1          9        0   179
#> [210,]  62   1      1          0        1   172
#> [211,]  58   7      0        180        1   150
#> [212,]  61   7      0        180        0   135
#> [213,]  62   3      0        180        1   105
#> [214,]  63   4      0        180        1   190
#> [215,]  63  15      1         10        1   126
#> [216,]  63   4      1          1        0   155
#> [217,]  59   8      0        180        1   140
#> [218,]  61   9      1          9        1   150
#> [219,]  58   9      1          9        0   110
#> [220,]  59   1      0         22        1   162
#> [221,]  58   2      0        180        0   127
#> [222,]  59   4      0        180        0   196
#> [223,]  60   7      1          5        1   141
#> [224,]  59   5      1          1        0   148
#> [225,]  63   1      0          1        0   162
#> [226,]  62   6      0        180        0   170
#> [227,]  61  15      1         13        0   170
#> [228,]  63  12      1         10        0   200
#> [229,]  59  10      0        180        1   130
#> [230,]  60   8      0         17        1   130
#> [231,]  61   6      1          1        1   117
#> [232,]  64  12      1         11        0   160
#> [233,]  63  10      1          0        1   148
#> [234,]  63   4      1          3        0   162
#> [235,]  66   3      1          1        0   127
#> [236,]  61  10      1          2        1   194
#> [237,]  64  32      1          9        1   160
#> [238,]  63  12      1          9        0   114
#> [239,]  66   5      1          0        1   110
#> [240,]  65   8      1          0        0   168
#> [241,]  65  10      1          8        1   120
#> [242,]  64   0      0          0        1    90
#> [243,]  60   6      0        180        0   130
#> [244,]  64  21      1         10        0   190
#> [245,]  61  12      1         11        0   154
#> [246,]  64   9      0        180        0   150
#> [247,]  61   4      0        180        1   113
#> [248,]  65   3      0        180        1   190
#> [249,]  63  16      1          7        1   110
#> [250,]  65   6      0          9        0   112
#> [251,]  65   3      1          0        1    80
#> [252,]  63   5      1          4        0   170
#> [253,]  67  11      0         11        1   100
#> [254,]  64   2      0          2        0   201
#> [255,]  66  16      1         11        1   169
#> [256,]  62   9      0        180        0   145
#> [257,]  61  14      1          5        0   140
#> [258,]  61  15      1         10        0   130
#> [259,]  63   9      1          8        1   160
#> [260,]  63   3      1          2        0   120
#> [261,]  63   2      1          0        0   140
#> [262,]  64  19      1          8        1   160
#> [263,]  65   8      1          0        1   140
#> [264,]  68   5      1          4        1   150
#> [265,]  64  13      1         12        1   150
#> [266,]  64   6      1          0        1   125
#> [267,]  66   7      1          0        1   115
#> [268,]  66  13      1          0        0   118
#> [269,]  64  14      1         13        1   150
#> [270,]  65   3      0          3        0   105
#> [271,]  67   4      1          3        0   130
#> [272,]  66   3      1          0        1   135
#> [273,]  63   7      1          0        0   162
#> [274,]  67   8      1          1        1   130
#> [275,]  68   5      0          5        1    90
#> [276,]  63  10      0         16        1   160
#> [277,]  66  14      0        180        0   130
#> [278,]  64   1      0          1        1   120
#> [279,]  65  17      1         14        1   100
#> [280,]  65  18      1          3        0   120
#> [281,]  63   1      1          0        1   155
#> [282,]  63  10      0         18        1   130
#> [283,]  67  11      0         11        0   150
#> [284,]  68  14      0         79        0   172
#> [285,]  66  12      1         10        1   150
#> [286,]  65  15      1         12        1   150
#> [287,]  66  11      1          0        0   100
#> [288,]  69  12      0         15        1   140
#> [289,]  63   2      0        180        0   150
#> [290,]  65  11      1          6        0   130
#> [291,]  66   9      1          8        0   130
#> [292,]  68  14      1         13        1   140
#> [293,]  65   8      1          0        1    90
#> [294,]  66   3      0          3        1   138
#> [295,]  69   1      1          0        0   170
#> [296,]  67   1      0        180        1   160
#> [297,]  68  10      1         10        1   150
#> [298,]  67   7      1          4        1   130
#> [299,]  63   2      1          0        0    99
#> [300,]  67   2      0        180        0   184
#> [301,]  65  10      1          1        1   148
#> [302,]  66  19      1         12        1   150
#> [303,]  67  12      1         12        0   160
#> [304,]  69   6      0         99        1   140
#> [305,]  65   4      1          1        0   130
#> [306,]  66   4      0        180        1   130
#> [307,]  70  15      1         12        1   132
#> [308,]  64  11      0         11        0   125
#> [309,]  66   7      1          5        1   131
#> [310,]  68   4      1          0        1   160
#> [311,]  69   4      1          3        1   150
#> [312,]  65  13      1         12        1   130
#> [313,]  69  17      1         10        0   140
#> [314,]  69   8      0         93        0   140
#> [315,]  65   1      0          1        1   120
#> [316,]  65   6      0        101        1   115
#> [317,]  68   4      0          4        1   190
#> [318,]  68   7      0        150        0   210
#> [319,]  71  20      1          0        1   160
#> [320,]  67   2      0        180        0   128
#> [321,]  66   9      1          3        1   151
#> [322,]  70   4      1          0        1   180
#> [323,]  69   8      0        180        1   153
#> [324,]  70  14      0        171        0   166
#> [325,]  66   4      0        180        0   130
#> [326,]  67  10      1          9        0   200
#> [327,]  67   6      1          4        0   130
#> [328,]  69   0      0          0        1   148
#> [329,]  65   2      0        180        0   130
#> [330,]  68   7      1          0        1   150
#> [331,]  69   3      1          2        0   151
#> [332,]  67  14      1         13        0   130
#> [333,]  69   8      0        180        1   180
#> [334,]  71   7      0          7        0   230
#> [335,]  66   2      0          2        1   228
#> [336,]  71   6      0         45        1   158
#> [337,]  69   5      0          5        1   142
#> [338,]  71   3      0        103        0   133
#> [339,]  69   3      0          3        1   130
#> [340,]  67   5      0          5        0   130
#> [341,]  68   6      0        180        0   145
#> [342,]  69   8      1          5        1   195
#> [343,]  72   3      1          0        1   132
#> [344,]  72   7      0          7        1   110
#> [345,]  69   8      1          7        1   108
#> [346,]  67   3      0        180        0   110
#> [347,]  66   2      1          1        0   123
#> [348,]  69  19      0        180        0   130
#> [349,]  67  14      0        172        1   140
#> [350,]  69  11      1          0        1   120
#> [351,]  66   2      0        180        0   130
#> [352,]  67   7      1          4        0   122
#> [353,]  69   4      1          3        0   132
#> [354,]  68   2      0          7        1   130
#> [355,]  69   8      1          2        0   121
#> [356,]  67  13      1          9        0   130
#> [357,]  70   3      0        123        0   130
#> [358,]  70   9      0        180        1   142
#> [359,]  72   5      1          4        0   170
#> [360,]  67  22      1          1        1   140
#> [361,]  68   3      0         19        0   135
#> [362,]  67  12      1          8        0   120
#> [363,]  67   1      0          1        1    60
#> [364,]  67   4      0         60        1   136
#> [365,]  69   5      0         76        0   120
#> [366,]  67   8      1          0        1   130
#> [367,]  66  24      1         13        0   130
#> [368,]  72  30      1          0        1   145
#> [369,]  70   7      0          7        0   102
#> [370,]  71   6      0          9        0   120
#> [371,]  70  11      0        180        1   210
#> [372,]  67   8      0        180        1   170
#> [373,]  67   5      1          0        1   147
#> [374,]  73  13      0        152        1   130
#> [375,]  72   2      0          2        1   100
#> [376,]  67   4      1          1        0   134
#> [377,]  71   1      0        173        1   188
#> [378,]  68  23      0        180        1   220
#> [379,]  70   3      0        180        0   121
#> [380,]  69   3      0        180        0   220
#> [381,]  71   3      1          2        0   150
#> [382,]  72   5      0         28        0   120
#> [383,]  73   6      0        180        1   117
#> [384,]  69  16      1         10        1   140
#> [385,]  72  16      1          1        1   130
#> [386,]  70   4      0        180        0   180
#> [387,]  69   1      1          0        0   155
#> [388,]  73   6      1          0        1   270
#> [389,]  72   8      1          1        1   150
#> [390,]  73   7      0          7        1   140
#> [391,]  70   3      0          3        1   159
#> [392,]  70  13      1          9        0   100
#> [393,]  72   6      0        180        1   130
#> [394,]  73   0      0        180        1   161
#> [395,]  69   2      1          0        1   110
#> [396,]  71   3      1          1        0   150
#> [397,]  74  20      0         20        1   180
#> [398,]  68   9      0        180        1   120
#> [399,]  71  20      1         10        0   140
#> [400,]  70   5      1          0        1   190
#> [401,]  69  12      1          1        1   149
#> [402,]  70  26      1         11        1   120
#> [403,]  74   4      0          4        0   120
#> [404,]  72   5      1          3        1   160
#> [405,]  70   3      0        180        1   154
#> [406,]  73   6      0        180        0   110
#> [407,]  72  15      1          0        1   150
#> [408,]  72   8      1          0        1   140
#> [409,]  73  17      1         11        0   140
#> [410,]  71  13      1          8        0   121
#> [411,]  69   2      1          1        1    80
#> [412,]  74   7      1          0        1   117
#> [413,]  69   7      0        180        1   144
#> [414,]  72  15      1         13        0   156
#> [415,]  71  10      1          9        1   120
#> [416,]  75   1      0          1        0   133
#> [417,]  75   2      1          1        0   145
#> [418,]  73  10      1          9        1   146
#> [419,]  73  10      1         10        1   120
#> [420,]  71   2      0         10        1   112
#> [421,]  75   9      1          7        0   140
#> [422,]  75  13      1          1        1   130
#> [423,]  71   4      0          4        0   134
#> [424,]  72  15      1         12        1   120
#> [425,]  70   7      1          4        0   184
#> [426,]  72   1      1          1        0   168
#> [427,]  72   7      0         57        1   145
#> [428,]  73  10      0        180        0   162
#> [429,]  70   3      0          3        0   150
#> [430,]  76  25      1         12        1   170
#> [431,]  75   1      0        180        1   140
#> [432,]  72   4      1          0        1   197
#> [433,]  73   5      0        180        0   126
#> [434,]  74  34      1          8        1   233
#> [435,]  76   3      1          0        1   120
#> [436,]  71  32      1         12        1   107
#> [437,]  72   5      0        180        0   154
#> [438,]  76   5      0          5        1   130
#> [439,]  77  11      0         11        1   150
#> [440,]  77   4      0          4        0   185
#> [441,]  75   3      1          1        0   180
#> [442,]  72   7      1          2        0   142
#> [443,]  73  15      0         15        1   160
#> [444,]  71  16      0        180        0   140
#> [445,]  73  10      1         10        0   124
#> [446,]  76   1      0        180        0   114
#> [447,]  74   2      1          1        0   140
#> [448,]  76   8      1          0        1   141
#> [449,]  74  19      1          4        1   200
#> [450,]  74   2      0        180        0   190
#> [451,]  72   4      0         85        1   120
#> [452,]  73   4      1          3        1   125
#> [453,]  76  13      1         10        0   110
#> [454,]  75   7      0          7        0   190
#> [455,]  73  13      1         11        0   195
#> [456,]  75  12      0         12        1   160
#> [457,]  74   8      1          0        1   105
#> [458,]  74   6      0        180        0   160
#> [459,]  76   4      0          4        1   155
#> [460,]  74   2      0        180        0   111
#> [461,]  73   1      0         52        1   105
#> [462,]  72   5      0        180        0   120
#> [463,]  76  44      1         10        0   105
#> [464,]  76   5      0        180        0   185
#> [465,]  74  10      1          0        1   135
#> [466,]  76   5      1          0        1   167
#> [467,]  74   8      1          8        1   170
#> [468,]  75   9      0        180        1   140
#> [469,]  77   5      1          0        0   123
#> [470,]  77  12      1          9        1   100
#> [471,]  77  12      0        180        0   130
#> [472,]  77   1      1          0        1    90
#> [473,]  76  12      1         11        1   120
#> [474,]  73   7      1          0        0   174
#> [475,]  74   6      0         79        1   140
#> [476,]  75   6      0        180        0   150
#> [477,]  79  10      1          8        0   190
#> [478,]  74   2      1          0        1   130
#> [479,]  78  18      0         18        1   144
#> [480,]  77   3      0        180        0   110
#> [481,]  76  29      0         47        0    90
#> [482,]  73   8      1          1        1   162
#> [483,]  73  11      1          2        1   110
#> [484,]  74   2      0        180        0   100
#> [485,]  78   7      0          7        1   133
#> [486,]  78   8      1          6        1   110
#> [487,]  74   7      0          7        0   161
#> [488,]  78  32      1          9        1   198
#> [489,]  79   6      0        180        0   170
#> [490,]  80  10      1          6        1   147
#> [491,]  78  13      1          5        0   130
#> [492,]  75   5      0        119        1   150
#> [493,]  75  12      1          1        1   120
#> [494,]  75  13      1          6        0   150
#> [495,]  74  10      1          8        0   135
#> [496,]  76   1      0          1        1    83
#> [497,]  79   4      0         80        0   145
#> [498,]  77   2      1          0        1   143
#> [499,]  75   3      0          3        0     0
#> [500,]  77  24      0         24        1   160
#> [501,]  79   8      0         32        1   120
#> [502,]  80   9      0         23        1   128
#> [503,]  80   6      0          6        1   150
#> [504,]  78   6      1          0        1   240
#> [505,]  76   3      1          0        1   140
#> [506,]  81   1      0          1        0   130
#> [507,]  78  11      1          8        1   118
#> [508,]  76   4      0          4        1   160
#> [509,]  76  10      1          8        0   180
#> [510,]  77   6      0          6        1   107
#> [511,]  80   3      1          0        1   120
#> [512,]  77  31      1          3        1   161
#> [513,]  78   7      1          0        1   110
#> [514,]  79   3      0          3        0   120
#> [515,]  81   1      0        180        0   120
#> [516,]  80  15      1         12        1   150
#> [517,]  82   5      0          8        1   120
#> [518,]  80  15      1          0        1    90
#> [519,]  81   4      1          2        1   126
#> [520,]  79  28      0        164        0   100
#> [521,]  80   9      0        118        1   186
#> [522,]  78  32      0        180        1   130
#> [523,]  81   3      0        180        0   184
#> [524,]  78   7      0          7        1   147
#> [525,]  77  13      1          0        1   190
#> [526,]  78  15      0         15        0   165
#> [527,]  80   5      1          1        1   108
#> [528,]  78   4      0        180        0   175
#> [529,]  78  26      1          5        0   194
#> [530,]  76   1      0        166        0   131
#> [531,]  78  20      1          0        1   109
#> [532,]  80   1      0          1        0   100
#> [533,]  77  10      1          8        1   130
#> [534,]  82   3      1          1        1   144
#> [535,]  80   2      1          1        0   168
#> [536,]  80   6      1          0        1   119
#> [537,]  78   2      0        180        0   148
#> [538,]  77   4      0        180        1    98
#> [539,]  78  12      0        180        0   134
#> [540,]  79   1      0        125        0   193
#> [541,]  84  22      1         10        0   180
#> [542,]  79   4      0          4        1   121
#> [543,]  80   6      0          6        1   110
#> [544,]  82   5      0        180        0   110
#> [545,]  83   5      0        180        0   148
#> [546,]  79   7      1          6        0   130
#> [547,]  81   5      0        177        0    41
#> [548,]  80  11      1          8        0   170
#> [549,]  78   9      1          4        1   120
#> [550,]  82   8      1          1        0   128
#> [551,]  79   1      0        180        1   170
#> [552,]  81  15      0        180        1   140
#> [553,]  81  20      1          9        0   170
#> [554,]  81  16      0         16        1   110
#> [555,]  81   8      0        180        0   146
#> [556,]  80   8      1          7        0   160
#> [557,]  79   7      0        177        0   197
#> [558,]  85   4      0        180        0    90
#> [559,]  81   2      1          1        0   198
#> [560,]  83   2      0          2        1   155
#> [561,]  84   4      0        167        0   198
#> [562,]  82  23      1          0        0   110
#> [563,]  84   5      0        180        1   203
#> [564,]  84   4      0          4        1    85
#> [565,]  81   1      0          1        1   150
#> [566,]  83   3      0        180        0   174
#> [567,]  81   4      0         90        1   138
#> [568,]  85   3      1          2        1   160
#> [569,]  84   4      0         89        1   129
#> [570,]  80   2      1          0        1   130
#> [571,]  79   4      0          4        1    60
#> [572,]  83   1      0          1        1   100
#> [573,]  80  30      1         13        0   220
#> [574,]  83   9      0        180        0   198
#> [575,]  83   3      0        114        0    98
#> [576,]  83   2      0        154        0   130
#> [577,]  82   0      0          2        1   100
#> [578,]  85   9      1          6        1   160
#> [579,]  81   4      0          4        0   175
#> [580,]  81   1      0          1        1   145
#> [581,]  81  12      0         12        1   163
#> [582,]  81   4      0          4        0   160
#> [583,]  81  19      1         14        0   120
#> [584,]  82  15      1          0        0   183
#> [585,]  80   2      0         88        0   135
#> [586,]  83   7      0        126        0   135
#> [587,]  84   6      0        165        0   145
#> [588,]  86   3      0          3        1   140
#> [589,]  82   9      0        180        1   134
#> [590,]  84   3      0        180        1   120
#> [591,]  83   9      0        180        1   149
#> [592,]  82   1      0        180        1   193
#> [593,]  87   2      0          5        1   137
#> [594,]  86  12      1          0        1   132
#> [595,]  86   6      1          0        1   140
#> [596,]  84  16      0         70        1   150
#> [597,]  83  19      0         43        0   150
#> [598,]  84   3      1          2        0   125
#> [599,]  83  10      1          0        1   190
#> [600,]  88  14      1          3        1   130
#> [601,]  84   3      0          3        1   121
#> [602,]  87   2      0        180        0   113
#> [603,]  84   9      0         92        1   110
#> [604,]  84   3      0        180        1   170
#> [605,]  86   4      0         38        1   122
#> [606,]  82   4      0          4        0   130
#> [607,]  85   3      0          3        1   113
#> [608,]  84  13      0         62        1   100
#> [609,]  86   6      1          1        0   112
#> [610,]  83  20      1          3        1   150
#> [611,]  85  22      0         22        1   184
#> [612,]  83   9      0         65        1   150
#> [613,]  87   2      0        180        1   130
#> [614,]  88   3      0        115        0   110
#> [615,]  88   2      0        180        1    68
#> [616,]  83   3      0          3        1   130
#> [617,]  87   8      0          8        1   157
#> [618,]  86  15      1          8        1   109
#> [619,]  88   4      0          4        0    86
#> [620,]  89   4      0          4        1   153
#> [621,]  87   6      0        180        1   110
#> [622,]  87   1      0          1        0   170
#> [623,]  84   2      0        110        1   174
#> [624,]  87  15      1          9        1   138
#> [625,]  84   0      0        180        1   136
#> [626,]  90  14      0         14        1   100
#> [627,]  88   1      0          1        0   135
#> [628,]  86   4      0        180        1   145
#> [629,]  91   8      0          8        0   100
#> [630,]  87   2      0        180        0   160
#> [631,]  87   6      1          0        0   125
#> [632,]  91  10      0        145        0   135
#> [633,]  88   7      0         24        0   119
#> [634,]  88   8      0         50        1   154
#> [635,]  87   6      0        126        1   168
#> [636,]  86   9      1          7        0   130
#> [637,]  90   4      1          0        0   121
#> [638,]  91   1      0          1        1    74
#> [639,]  87  43      0        178        1   130
#> [640,]  90   5      1          0        1   125
#> [641,]  88   3      1          2        0   159
#> [642,]  92   1      0          1        1   167
#> [643,]  91   3      0         33        1   137
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
#> [656,]  91   2      0          2        1   116
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
#> [667,]  91   7      0          7        0   135
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [11]  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+   3.0 
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51]   5.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71]   2.0    1.0  179.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81]  36.0   88.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+
#>  [91] 180.0+ 180.0+  85.0  180.0+ 166.0+ 180.0+  16.0+ 180.0+ 152.0+   6.0+
#> [101] 180.0+ 171.0+ 180.0+ 174.0+  28.0    6.0+ 180.0+   9.0+ 180.0+ 180.0+
#> [111] 175.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+  16.0   15.0+ 180.0+
#> [121]  12.0+ 180.0+   8.0    2.0  180.0+ 180.0+ 180.0+ 180.0+ 140.0    1.0 
#> [131] 165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+
#> [141] 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+ 180.0+   4.0+ 147.0+ 180.0+
#> [151] 180.0+   4.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+  64.0  180.0+ 180.0+   9.0+   0.5  180.0+ 171.0+ 180.0+ 180.0+
#> [171]   1.0  180.0+ 180.0+ 180.0+  17.0   45.0    3.0+ 180.0+ 180.0+   9.0+
#> [181] 180.0+ 172.0+ 172.0+  24.0  180.0+   1.0+  15.0  180.0+  77.0   13.0+
#> [191] 180.0+ 180.0+ 180.0+ 170.0   94.0  180.0+   7.0+   6.0  180.0+ 180.0+
#> [201] 180.0+ 180.0+  30.0  180.0+  28.0   13.0+   5.0    5.0+ 180.0+   1.0 
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0   22.0 
#> [221] 180.0+ 180.0+  84.0  180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+  17.0 
#> [231] 180.0+  12.0  180.0+ 180.0+   3.0+  88.0  180.0+  12.0  180.0+ 180.0+
#> [241] 180.0+   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0 
#> [251]   3.0  180.0+  11.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+
#> [261]   2.0+ 103.0   15.0    5.0+  13.0  180.0+ 179.0+ 166.0+  14.0+   3.0 
#> [271] 180.0+   3.0+   7.0+   8.0    5.0   16.0  180.0+   1.0  180.0+ 123.0+
#> [281]   1.0+  18.0   11.0+  79.0   80.0   15.0+ 180.0+  15.0  180.0+ 180.0+
#> [291] 180.0+ 180.0+   8.0+   3.0  175.0  180.0+  10.0  180.0+ 180.0+ 180.0+
#> [301] 180.0+  19.0+  12.0   99.0  180.0+ 180.0+ 180.0+  11.0+   7.0+ 180.0+
#> [311] 152.0+ 180.0+ 180.0+  93.0    1.0  101.0    4.0  150.0  180.0+ 180.0+
#> [321] 180.0+ 180.0+ 180.0+ 171.0  180.0+ 174.0+   6.0    0.5  180.0+ 180.0+
#> [331] 180.0+ 180.0+ 180.0+   7.0+   2.0   45.0    5.0+ 103.0    3.0+   5.0+
#> [341] 180.0+ 180.0+ 180.0+   7.0    8.0+ 180.0+   2.0+ 180.0+ 172.0+ 180.0+
#> [351] 180.0+   7.0  180.0+   7.0    8.0+  13.0+ 123.0  180.0+ 180.0+  51.0 
#> [361]  19.0  180.0+   1.0   60.0   76.0  180.0+ 180.0+ 162.0    7.0+   9.0 
#> [371] 180.0+ 180.0+ 180.0+ 152.0    2.0   76.0  173.0+ 180.0+ 180.0+ 180.0+
#> [381] 180.0+  28.0  180.0+  16.0+  16.0+ 180.0+ 180.0+   6.0  180.0+   7.0+
#> [391]   3.0+  13.0+ 180.0+ 180.0+   2.0    3.0+  20.0  180.0+  20.0  180.0+
#> [401]  12.0  180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 175.0 
#> [411]   2.0  180.0+ 180.0+ 180.0+ 179.0+   1.0  180.0+ 180.0+  15.0   10.0 
#> [421] 180.0+  13.0    4.0+ 180.0+ 104.0+   1.0   57.0  180.0+   3.0+ 180.0+
#> [431] 180.0+ 180.0+ 180.0+  34.0  180.0+ 177.0+ 180.0+   5.0   11.0+   4.0+
#> [441] 180.0+   7.0   15.0+ 180.0+  10.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [451]  85.0  180.0+ 174.0+   7.0  180.0+  12.0  180.0+ 180.0+   4.0  180.0+
#> [461]  52.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+   5.0  180.0+
#> [471] 180.0+   1.0   12.0    7.0+  79.0  180.0+ 180.0+ 176.0+  18.0  180.0+
#> [481]  47.0  180.0+  11.0  180.0+   7.0    8.0+   7.0   32.0  180.0+  10.0 
#> [491] 172.0  119.0   12.0  180.0+ 180.0+   1.0   80.0    2.0    3.0   24.0 
#> [501]  32.0   23.0    6.0  180.0+   3.0+   1.0   11.0    4.0   10.0+   6.0 
#> [511]   3.0+ 171.0   43.0    3.0  180.0+ 180.0+   8.0  180.0+  93.0  164.0 
#> [521] 118.0  180.0+ 180.0+   7.0+  22.0   15.0+   5.0+ 180.0+ 171.0+ 166.0+
#> [531]  20.0+   1.0   10.0  180.0+  10.0    6.0  180.0+ 180.0+ 180.0+ 125.0 
#> [541] 180.0+   4.0    6.0  180.0+ 180.0+ 180.0+ 177.0+ 169.0  180.0+ 180.0+
#> [551] 180.0+ 180.0+  20.0   16.0  180.0+ 180.0+ 177.0+ 180.0+ 180.0+   2.0 
#> [561] 167.0   62.0  180.0+   4.0    1.0  180.0+  90.0  180.0+  89.0  180.0+
#> [571]   4.0    1.0   30.0  180.0+ 114.0  154.0    2.0  180.0+   4.0+   1.0 
#> [581]  12.0    4.0+ 180.0+  83.0   88.0  126.0  165.0    3.0  180.0+ 180.0+
#> [591] 180.0+ 180.0+   5.0  180.0+   6.0   70.0   43.0  180.0+ 180.0+  14.0 
#> [601]   3.0  180.0+  92.0  180.0+  38.0    4.0    3.0+  62.0    6.0+  20.0 
#> [611]  22.0   65.0  180.0+ 115.0  180.0+   3.0+   8.0+ 180.0+   4.0    4.0 
#> [621] 180.0+   1.0+ 110.0  180.0+ 180.0+  14.0    1.0+ 180.0+   8.0  180.0+
#> [631]  25.0  145.0   24.0   50.0  126.0  180.0+   4.0    1.0  178.0+  89.0 
#> [641]  75.0    1.0   33.0   74.0  180.0+ 168.0  169.0   52.0    7.0    4.0 
#> [651]   0.5  180.0+   4.0  180.0+  50.0    2.0  179.0+   8.0+  76.0  180.0+
#> [661]  16.0   67.0   12.0    8.0   26.0   53.0    7.0+   2.0  180.0+   3.0 
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
#>   0.8188534 
```
