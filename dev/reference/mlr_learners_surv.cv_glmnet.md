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
#>      Lambda Index Measure      SE Nonzero
#> min 0.00330    44   2.646 0.09653       6
#> 1se 0.05384    14   2.732 0.08732       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  35   5      1          2        0   172
#>   [3,]  35  10      1          9        0   106
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  38   2      0        115        0   150
#>  [10,]  36   5      1          0        1   115
#>  [11,]  38  12      1         11        1    92
#>  [12,]  40  12      1          9        0   153
#>  [13,]  42   3      1          1        1   130
#>  [14,]  40   2      1          1        1   148
#>  [15,]  42   2      0        180        1   100
#>  [16,]  38   5      1          3        0   125
#>  [17,]  42   2      0          2        0   140
#>  [18,]  40   6      0        180        1   138
#>  [19,]  40  11      1         10        1   120
#>  [20,]  43   3      1          0        1   100
#>  [21,]  41   2      1          1        0   166
#>  [22,]  40   1      1          0        1   145
#>  [23,]  43   4      1          0        1   130
#>  [24,]  42   4      0        180        0   162
#>  [25,]  42  15      1         13        1   125
#>  [26,]  40   3      1          1        0   170
#>  [27,]  42  12      1         10        1   170
#>  [28,]  43   2      1          1        1   116
#>  [29,]  42   2      0        180        1   124
#>  [30,]  44   5      1          1        0   170
#>  [31,]  41  10      1          8        0   150
#>  [32,]  44   3      0        180        0   141
#>  [33,]  45   9      1          7        0   110
#>  [34,]  45   6      0        180        1   170
#>  [35,]  44   2      1          1        1   150
#>  [36,]  43   2      0        180        1   140
#>  [37,]  46  15      0        180        0   120
#>  [38,]  46   2      1          1        0   126
#>  [39,]  47   4      1          3        0   118
#>  [40,]  48  15      0        180        1   160
#>  [41,]  44   3      1          0        1   180
#>  [42,]  46   7      1          2        0   166
#>  [43,]  43  29      0        180        1   180
#>  [44,]  45   4      1          0        0   124
#>  [45,]  43  10      0        180        0   185
#>  [46,]  47   6      1          0        1   116
#>  [47,]  43   3      1          0        1   124
#>  [48,]  45   8      1          0        1   117
#>  [49,]  45   5      0          5        0   141
#>  [50,]  46   6      1          0        1   100
#>  [51,]  44   4      1          0        1   114
#>  [52,]  47   2      0        180        0   108
#>  [53,]  44   9      1          8        1   135
#>  [54,]  45   5      0        180        1   190
#>  [55,]  46   4      0        180        1   121
#>  [56,]  44   2      0        180        0   142
#>  [57,]  46  15      0        180        1   120
#>  [58,]  45   9      1          0        1   145
#>  [59,]  47   3      1          1        1   120
#>  [60,]  48   3      0        180        0   154
#>  [61,]  48  12      1         11        0   200
#>  [62,]  47   5      1          3        1   130
#>  [63,]  47   9      1          6        0   170
#>  [64,]  46   3      1          0        1   119
#>  [65,]  49   4      0        180        0   117
#>  [66,]  50   1      1          0        1   129
#>  [67,]  50   4      1          1        0   125
#>  [68,]  50   6      1          2        1   140
#>  [69,]  46   9      1          9        1   122
#>  [70,]  50   7      0        180        1   110
#>  [71,]  49   2      0          2        0   105
#>  [72,]  51   1      0          1        1   145
#>  [73,]  52   2      0        180        1   170
#>  [74,]  51   3      1          2        0   113
#>  [75,]  50   1      1          0        0   150
#>  [76,]  50   9      0        180        0   130
#>  [77,]  49   7      1          4        1    90
#>  [78,]  47   8      0        180        0   160
#>  [79,]  51   8      0        180        1   140
#>  [80,]  46   3      0        180        1   120
#>  [81,]  46   1      1          1        0   145
#>  [82,]  50   4      1          1        0   150
#>  [83,]  53   8      0         36        1   160
#>  [84,]  48  17      1         10        0   111
#>  [85,]  47   2      1          1        0   110
#>  [86,]  52   4      1          4        0   152
#>  [87,]  49   9      1          3        0   102
#>  [88,]  53   5      0        180        1   140
#>  [89,]  54  17      1         12        1   102
#>  [90,]  53   5      0         77        0   159
#>  [91,]  54   6      1          3        0   129
#>  [92,]  51   3      1          1        0   140
#>  [93,]  50  14      1         13        0   170
#>  [94,]  53   8      1          7        0   160
#>  [95,]  53   4      0          4        0   140
#>  [96,]  52  14      1          7        1   200
#>  [97,]  48   6      0        180        0   160
#>  [98,]  53   4      1          0        1   156
#>  [99,]  51  13      0         99        1   160
#> [100,]  54   9      1          0        1   138
#> [101,]  49  16      0         16        0   125
#> [102,]  55   3      1          1        0   150
#> [103,]  54  23      1         10        0   131
#> [104,]  52   7      1          2        0   154
#> [105,]  55   6      1          2        1   114
#> [106,]  55   4      1          2        0   150
#> [107,]  51  13      1         11        0   145
#> [108,]  54   4      1          0        1   121
#> [109,]  52   4      0        180        0   183
#> [110,]  50   3      0        174        1   153
#> [111,]  55  28      1         13        1   160
#> [112,]  49   1      0          1        1   110
#> [113,]  50   7      1          1        0   156
#> [114,]  53   9      0          9        1    95
#> [115,]  53   8      1          0        1   130
#> [116,]  50   7      1          0        1   127
#> [117,]  56   4      1          1        1   130
#> [118,]  55   1      0        180        0   127
#> [119,]  54   1      0        180        0   162
#> [120,]  54   7      1          0        1   100
#> [121,]  56   3      0        180        1   193
#> [122,]  56   2      0        180        0   132
#> [123,]  55   5      1          4        1   120
#> [124,]  52   8      0        180        0   119
#> [125,]  53  18      1          9        1   150
#> [126,]  54   3      0        180        1   180
#> [127,]  52  16      0         16        0   152
#> [128,]  53  10      1          9        0   172
#> [129,]  52  16      1         14        0   170
#> [130,]  53  15      0         15        1    90
#> [131,]  53   4      0        180        1   150
#> [132,]  55   6      0        180        1   100
#> [133,]  54  12      1          0        1   190
#> [134,]  55   2      0        134        1   140
#> [135,]  54   3      0        180        0   128
#> [136,]  56   3      0          8        1   139
#> [137,]  57   3      0          3        0   120
#> [138,]  54   7      1          2        0   129
#> [139,]  54   2      1          1        0   135
#> [140,]  52   9      1          3        0   170
#> [141,]  54   2      1          1        1   176
#> [142,]  57   5      1          3        1   138
#> [143,]  56   4      1          0        1   140
#> [144,]  55  11      1          7        0   104
#> [145,]  52  15      1         14        0   130
#> [146,]  56  14      1         11        0   130
#> [147,]  57  10      0        180        1   170
#> [148,]  58   8      0          8        1   130
#> [149,]  55   3      1          1        1   156
#> [150,]  57   0      0          0        1   150
#> [151,]  53  21      1         13        1   130
#> [152,]  57   4      0        180        1   119
#> [153,]  58   6      1          0        1    90
#> [154,]  53  15      1         10        1   130
#> [155,]  54  17      1          8        1   227
#> [156,]  55   9      1          2        1   147
#> [157,]  55  13      0        166        1   140
#> [158,]  56   5      0          5        1   150
#> [159,]  57   4      1          2        1   185
#> [160,]  53   4      0        147        1   145
#> [161,]  53   7      1          0        1   120
#> [162,]  55   5      0          5        1   131
#> [163,]  59  15      1         10        0   140
#> [164,]  58   9      1          0        1   180
#> [165,]  58   1      1          1        1   200
#> [166,]  56   7      1          5        1   120
#> [167,]  55   2      0          2        0   106
#> [168,]  59   9      1          1        1   125
#> [169,]  57   1      0        180        0   148
#> [170,]  60  11      1          9        0   106
#> [171,]  59   3      0        180        0   120
#> [172,]  58   4      1          0        1   160
#> [173,]  57   5      0        180        1   130
#> [174,]  58  11      1          9        1   124
#> [175,]  55   5      1          0        1   160
#> [176,]  57  10      1          9        0   103
#> [177,]  59   6      1          0        1   140
#> [178,]  59   4      1          0        1   152
#> [179,]  58  26      1          0        1   189
#> [180,]  61   9      0          9        1   160
#> [181,]  58   4      1          3        0   120
#> [182,]  60   0      1          0        1    80
#> [183,]  58   8      0        161        1   140
#> [184,]  61   9      1          8        0   150
#> [185,]  61   3      1          2        1   102
#> [186,]  61  20      1         13        0   130
#> [187,]  57  13      1         10        0   110
#> [188,]  57   2      1          0        1   116
#> [189,]  58  10      0         10        1   150
#> [190,]  57   4      1          3        0   138
#> [191,]  61   3      0         17        0   143
#> [192,]  56  14      0         45        0   130
#> [193,]  56  18      1         11        1   165
#> [194,]  55   4      1          3        1   160
#> [195,]  60  12      1          0        1   114
#> [196,]  55   9      1          7        1   135
#> [197,]  61   4      1          0        1   115
#> [198,]  61  13      1         12        1   130
#> [199,]  59  11      1          8        1   190
#> [200,]  57  15      1         13        1   110
#> [201,]  59   5      1          2        0   182
#> [202,]  58   5      1          1        1   135
#> [203,]  59  10      0        180        0   160
#> [204,]  61   8      0         77        0   120
#> [205,]  61  13      0         13        0   210
#> [206,]  62  10      1          0        1   153
#> [207,]  61  18      0        170        0   140
#> [208,]  61  28      1          7        0   133
#> [209,]  58   8      1          3        1   150
#> [210,]  57   7      0        169        0   180
#> [211,]  61   7      0          7        1   150
#> [212,]  60   7      0          7        0   147
#> [213,]  59  13      1          2        0   198
#> [214,]  62   4      1          0        0   160
#> [215,]  60  17      1          8        1   140
#> [216,]  58   3      1          0        1   146
#> [217,]  62   4      1          3        0   173
#> [218,]  58   2      0         30        0   202
#> [219,]  59   1      0        180        0   155
#> [220,]  59  16      1          9        1   133
#> [221,]  63   6      0         28        1   120
#> [222,]  61  13      0         13        0   120
#> [223,]  57  18      1          9        1    93
#> [224,]  61   5      0          5        1   160
#> [225,]  58  11      1          9        0   179
#> [226,]  57   2      1          1        0   159
#> [227,]  62   1      1          0        1   172
#> [228,]  58   7      0        180        1   150
#> [229,]  63   3      1          1        0   180
#> [230,]  63   1      0        180        1   130
#> [231,]  61   7      0        180        0   135
#> [232,]  63   4      1          3        0   222
#> [233,]  62   3      0        180        1   105
#> [234,]  63  15      1         10        1   126
#> [235,]  63   4      1          1        0   155
#> [236,]  60  18      1         13        0   132
#> [237,]  59   8      0        180        1   140
#> [238,]  61   9      1          9        1   150
#> [239,]  62   7      0          7        0   150
#> [240,]  59   1      0         22        1   162
#> [241,]  58   2      0        180        0   127
#> [242,]  59   4      0        180        0   196
#> [243,]  60   7      0          7        0   140
#> [244,]  59   5      1          1        0   148
#> [245,]  63   1      0          1        0   162
#> [246,]  62   6      0        180        0   170
#> [247,]  59   4      0          4        0   149
#> [248,]  60   3      0          3        0   168
#> [249,]  64  10      1          9        0   160
#> [250,]  63  12      1         10        0   200
#> [251,]  61   6      1          1        1   117
#> [252,]  64  12      1         11        0   160
#> [253,]  66   1      1          0        1   120
#> [254,]  64   6      1          0        1   140
#> [255,]  63   4      1          3        0   162
#> [256,]  63  12      1          9        0   114
#> [257,]  66   5      1          0        1   110
#> [258,]  65  10      1          8        1   120
#> [259,]  64   0      0          0        1    90
#> [260,]  60   6      0        180        0   130
#> [261,]  61  12      1         11        0   154
#> [262,]  64   9      0        180        0   150
#> [263,]  61   4      0        180        1   113
#> [264,]  65   3      0        180        1   190
#> [265,]  63  16      1          7        1   110
#> [266,]  64   7      0        180        1   120
#> [267,]  66   6      1          1        1   130
#> [268,]  63  12      0         12        1   150
#> [269,]  65   3      1          0        1    80
#> [270,]  63   2      1          1        0   180
#> [271,]  62  13      1         11        0   180
#> [272,]  64   2      0          2        0   201
#> [273,]  62   9      0        180        0   145
#> [274,]  61  14      1          5        0   140
#> [275,]  63   9      1          8        1   160
#> [276,]  63   3      1          2        0   120
#> [277,]  64  19      1          8        1   160
#> [278,]  65   8      1          0        1   140
#> [279,]  67   6      0        180        1   170
#> [280,]  65  15      1         11        1   160
#> [281,]  68   5      1          4        1   150
#> [282,]  64   6      1          0        1   125
#> [283,]  66   7      1          0        1   115
#> [284,]  64  14      1         13        1   150
#> [285,]  64   0      0          0        1   148
#> [286,]  67   4      1          3        0   130
#> [287,]  66   3      1          0        1   135
#> [288,]  66   6      1          0        1   140
#> [289,]  63   7      1          0        0   162
#> [290,]  67   8      1          1        1   130
#> [291,]  68   5      0          5        1    90
#> [292,]  63  10      0         16        1   160
#> [293,]  66  14      0        180        0   130
#> [294,]  64   1      0          1        1   120
#> [295,]  68  18      0        180        1   260
#> [296,]  63   8      1          1        1   162
#> [297,]  65  18      1          3        0   120
#> [298,]  63   1      1          0        1   155
#> [299,]  63  10      0         18        1   130
#> [300,]  67  11      0         11        0   150
#> [301,]  68  11      0        180        0   160
#> [302,]  66  12      1         10        1   150
#> [303,]  66  11      1          0        0   100
#> [304,]  69  12      0         15        1   140
#> [305,]  66  15      1         13        1   160
#> [306,]  65  11      1          6        0   130
#> [307,]  69  21      1         10        0   180
#> [308,]  66   9      1          8        0   130
#> [309,]  63   8      0        180        1   120
#> [310,]  68  14      1         13        1   140
#> [311,]  65   8      1          0        1    90
#> [312,]  66   3      0          3        1   138
#> [313,]  67   1      0        180        1   160
#> [314,]  68  10      1         10        1   150
#> [315,]  65   1      1          0        0   133
#> [316,]  67   7      1          4        1   130
#> [317,]  63   2      1          0        0    99
#> [318,]  65   6      0          6        0    80
#> [319,]  66  19      1         12        1   150
#> [320,]  65   4      1          1        0   130
#> [321,]  70  15      1         12        1   132
#> [322,]  64  11      0         11        0   125
#> [323,]  64   4      0        180        1   140
#> [324,]  67   2      0         18        0   131
#> [325,]  66   7      1          5        1   131
#> [326,]  66   4      0        180        0   177
#> [327,]  68   4      1          0        1   160
#> [328,]  69   4      1          3        1   150
#> [329,]  65  13      1         12        1   130
#> [330,]  69   8      0         93        0   140
#> [331,]  68  18      1          0        1   160
#> [332,]  65   6      0        101        1   115
#> [333,]  68   4      0          4        1   190
#> [334,]  68   7      0        150        0   210
#> [335,]  67   2      0        180        0   128
#> [336,]  66   1      1          1        1   165
#> [337,]  70   4      1          0        1   180
#> [338,]  70  14      0        171        0   166
#> [339,]  68  18      1         14        1   170
#> [340,]  69   0      0          0        1   148
#> [341,]  65   2      0        180        0   130
#> [342,]  68   7      1          0        1   150
#> [343,]  67  14      1         13        0   130
#> [344,]  65  14      1         13        1   150
#> [345,]  69   8      0        180        1   180
#> [346,]  71   7      0          7        0   230
#> [347,]  66   2      0          2        1   228
#> [348,]  71   6      0         45        1   158
#> [349,]  69   5      0          5        1   142
#> [350,]  71   3      0        103        0   133
#> [351,]  69   3      0          3        1   130
#> [352,]  67   5      0          5        0   130
#> [353,]  68   6      0        180        0   145
#> [354,]  69   8      1          5        1   195
#> [355,]  69   6      1          4        1   174
#> [356,]  69   8      1          7        1   108
#> [357,]  67   3      0        180        0   110
#> [358,]  66   2      1          1        0   123
#> [359,]  69  19      0        180        0   130
#> [360,]  68  18      0         18        1   100
#> [361,]  67  14      0        172        1   140
#> [362,]  66   2      0        180        0   130
#> [363,]  69   4      1          3        0   132
#> [364,]  69   8      1          2        0   121
#> [365,]  67  13      1          9        0   130
#> [366,]  70   3      0        123        0   130
#> [367,]  67  22      1          1        1   140
#> [368,]  68   3      0         19        0   135
#> [369,]  69   1      0          1        1   110
#> [370,]  67   8      1          0        1   130
#> [371,]  72  13      1         11        1   195
#> [372,]  68  10      1          8        1   160
#> [373,]  70   7      0          7        0   102
#> [374,]  68   7      1          2        0   135
#> [375,]  73  20      1          0        1   170
#> [376,]  71   6      0          9        0   120
#> [377,]  67   5      1          0        1   147
#> [378,]  67   9      0        180        0   158
#> [379,]  73  13      0        152        1   130
#> [380,]  70   5      0        180        0   150
#> [381,]  67   4      1          1        0   134
#> [382,]  71   1      0        173        1   188
#> [383,]  68  23      0        180        1   220
#> [384,]  70   3      0        180        0   121
#> [385,]  71   3      1          2        0   150
#> [386,]  68   4      1          3        0   210
#> [387,]  73   6      0        180        1   117
#> [388,]  69  16      1         10        1   140
#> [389,]  68   7      0        180        1   130
#> [390,]  72  16      1          1        1   130
#> [391,]  70   4      0        180        0   180
#> [392,]  69   1      1          0        0   155
#> [393,]  72   8      1          1        1   150
#> [394,]  71   2      1          0        1   180
#> [395,]  73   7      0          7        1   140
#> [396,]  70   3      0          3        1   159
#> [397,]  73   0      0        180        1   161
#> [398,]  74   8      1          0        1    85
#> [399,]  73   4      0        180        1   154
#> [400,]  69   2      1          0        1   110
#> [401,]  71   3      1          1        0   150
#> [402,]  71  15      1         11        0   165
#> [403,]  74  20      0         20        1   180
#> [404,]  71  20      1         10        0   140
#> [405,]  73   3      1          0        1   136
#> [406,]  71  17      1         11        0   160
#> [407,]  71   8      1          7        0   149
#> [408,]  71   3      1          2        1   190
#> [409,]  69  12      1          1        1   149
#> [410,]  74   4      0          4        0   120
#> [411,]  73   4      0         58        1   160
#> [412,]  70   3      0        180        1   154
#> [413,]  73   6      0        180        0   110
#> [414,]  72  15      1          0        1   150
#> [415,]  71   7      1          2        0   143
#> [416,]  72   8      1          0        1   140
#> [417,]  74   3      0          3        1   150
#> [418,]  73  17      1         11        0   140
#> [419,]  71  13      1          8        0   121
#> [420,]  69   2      1          1        1    80
#> [421,]  70   4      1          0        1   140
#> [422,]  71  14      1         13        1   170
#> [423,]  74   7      1          0        1   117
#> [424,]  72  10      1          8        1   153
#> [425,]  69   7      0        180        1   144
#> [426,]  72  15      1         13        0   156
#> [427,]  70   8      0          8        0   120
#> [428,]  75   2      1          1        0   145
#> [429,]  73  10      1          9        1   146
#> [430,]  72  10      1          9        1   160
#> [431,]  73  10      1         10        1   120
#> [432,]  71   2      0         10        1   112
#> [433,]  75  13      1          1        1   130
#> [434,]  71  11      1          8        0   110
#> [435,]  71   4      0          4        0   134
#> [436,]  73  10      1          8        0   120
#> [437,]  70   7      1          4        0   184
#> [438,]  72   1      1          1        0   168
#> [439,]  73   5      1          3        1   112
#> [440,]  76  25      1         12        1   170
#> [441,]  75   1      0        180        1   140
#> [442,]  72   4      1          0        1   197
#> [443,]  73   5      0        180        0   126
#> [444,]  73   4      0        180        0   124
#> [445,]  74  34      1          8        1   233
#> [446,]  72   5      0        180        0   154
#> [447,]  72   3      0        180        0   160
#> [448,]  76   5      0          5        1   130
#> [449,]  77  11      0         11        1   150
#> [450,]  77   4      0          4        0   185
#> [451,]  75   3      1          1        0   180
#> [452,]  72   7      1          2        0   142
#> [453,]  73  15      0         15        1   160
#> [454,]  74   7      0        180        1   150
#> [455,]  74   2      1          1        0   140
#> [456,]  76   8      1          0        1   141
#> [457,]  74  19      1          4        1   200
#> [458,]  75  23      1         14        1   110
#> [459,]  76  17      1          0        1   200
#> [460,]  73   4      1          3        1   125
#> [461,]  76  13      1         10        0   110
#> [462,]  75   4      1          0        1   122
#> [463,]  75   7      0          7        0   190
#> [464,]  75   0      0          0        1   130
#> [465,]  73  13      1         11        0   195
#> [466,]  75  12      0         12        1   160
#> [467,]  74   8      1          0        1   105
#> [468,]  76  13      1          8        1   148
#> [469,]  74   6      0        180        0   160
#> [470,]  76   4      0          4        1   155
#> [471,]  75   1      0          1        1   125
#> [472,]  74   2      0        180        0   111
#> [473,]  73   1      0         52        1   105
#> [474,]  72   5      0        180        0   120
#> [475,]  76   5      0        180        0   185
#> [476,]  74  10      1          0        1   135
#> [477,]  76   5      1          0        1   167
#> [478,]  75   9      0        180        1   140
#> [479,]  73  33      1         12        1   175
#> [480,]  77   5      1          0        0   123
#> [481,]  73  10      1          9        0   146
#> [482,]  77  12      0        180        0   130
#> [483,]  76  12      1         11        1   120
#> [484,]  78   5      1          0        1   170
#> [485,]  73   7      1          0        0   174
#> [486,]  74   6      0         79        1   140
#> [487,]  75   3      1          1        1   171
#> [488,]  75   6      0        180        0   150
#> [489,]  74   2      1          0        1   130
#> [490,]  73   8      1          1        1   162
#> [491,]  74   7      0          7        0   161
#> [492,]  78  32      1          9        1   198
#> [493,]  80  10      1          6        1   147
#> [494,]  78  15      0        180        1   270
#> [495,]  75  13      1          6        0   150
#> [496,]  74  10      1          8        0   135
#> [497,]  78  12      1          9        0   150
#> [498,]  75   4      1          0        0   212
#> [499,]  77   2      1          0        1   143
#> [500,]  78  10      0        180        1   130
#> [501,]  75  11      1          4        0   162
#> [502,]  75   3      0          3        0     0
#> [503,]  76   7      0         29        1   150
#> [504,]  77  24      0         24        1   160
#> [505,]  79   8      0         32        1   120
#> [506,]  80   9      0         23        1   128
#> [507,]  80   6      0          6        1   150
#> [508,]  76   3      1          0        1   140
#> [509,]  79  11      0        180        0   160
#> [510,]  81   1      0          1        0   130
#> [511,]  79   4      0          4        1   125
#> [512,]  76  12      1         10        1   127
#> [513,]  77   6      0          6        1   107
#> [514,]  78  11      0        180        1   135
#> [515,]  76   1      0          1        1   140
#> [516,]  78   7      1          0        1   110
#> [517,]  79   3      0          3        0   120
#> [518,]  77   7      0        180        1   170
#> [519,]  81   1      0        180        0   120
#> [520,]  80  40      1          0        1   138
#> [521,]  76   7      0        161        0   151
#> [522,]  79  10      0         10        1   120
#> [523,]  80  15      1          0        1    90
#> [524,]  79  28      0        164        0   100
#> [525,]  80   9      0        118        1   186
#> [526,]  79   1      0         37        1   140
#> [527,]  81   3      0        180        0   184
#> [528,]  78   7      0          7        1   147
#> [529,]  77  13      1          0        1   190
#> [530,]  78  15      0         15        0   165
#> [531,]  78   4      0        180        0   175
#> [532,]  79   3      0          3        1   101
#> [533,]  76   1      0        166        0   131
#> [534,]  78   3      1          1        1   152
#> [535,]  80   2      1          1        0   168
#> [536,]  80   5      0          5        1   130
#> [537,]  82   1      1          0        1    82
#> [538,]  79  10      0        180        1   150
#> [539,]  78  12      0        180        0   134
#> [540,]  82  21      1          2        0   155
#> [541,]  84  22      1         10        0   180
#> [542,]  79   4      0          4        1   121
#> [543,]  80   6      0          6        1   110
#> [544,]  83   9      1          5        1   170
#> [545,]  83   5      0        180        0   148
#> [546,]  83   4      0        103        0    97
#> [547,]  81  11      1          8        0   160
#> [548,]  81   5      0        177        0    41
#> [549,]  80  11      1          8        0   170
#> [550,]  78  23      1         10        1   145
#> [551,]  78   9      1          4        1   120
#> [552,]  82   8      1          1        0   128
#> [553,]  81  15      0        180        1   140
#> [554,]  80   7      1          0        1   146
#> [555,]  84   5      1          1        1    85
#> [556,]  81  20      1          9        0   170
#> [557,]  80   8      1          7        0   160
#> [558,]  79   7      0        177        0   197
#> [559,]  85   4      0        180        0    90
#> [560,]  81   2      1          1        0   198
#> [561,]  82   6      0        128        1   100
#> [562,]  84   4      0        167        0   198
#> [563,]  80   3      1          1        1   230
#> [564,]  84   5      0        180        1   203
#> [565,]  84   4      0          4        1    85
#> [566,]  81   1      0          1        1   150
#> [567,]  84   1      0         38        1   205
#> [568,]  83   3      0        180        0   174
#> [569,]  79   9      1          8        0   150
#> [570,]  85   3      1          2        1   160
#> [571,]  80  13      1          8        1   140
#> [572,]  84   4      0         89        1   129
#> [573,]  80   2      1          0        1   130
#> [574,]  79   4      0          4        1    60
#> [575,]  80   6      0         71        1   189
#> [576,]  83   1      0          1        1   100
#> [577,]  82  19      0         19        0   120
#> [578,]  80  30      1         13        0   220
#> [579,]  79  14      1          0        0   110
#> [580,]  83   3      0        114        0    98
#> [581,]  81  14      1         12        1   128
#> [582,]  83   2      0        154        0   130
#> [583,]  82   0      0          2        1   100
#> [584,]  85   9      1          6        1   160
#> [585,]  81   4      0          4        0   175
#> [586,]  84  15      1         13        1   110
#> [587,]  81   1      0          1        1   145
#> [588,]  81   4      0          4        0   160
#> [589,]  86  12      0        180        1   120
#> [590,]  83  12      1          2        1   170
#> [591,]  81  19      1         14        0   120
#> [592,]  82   3      1          2        0   130
#> [593,]  82  15      1          0        0   183
#> [594,]  80   2      0         88        0   135
#> [595,]  81  16      1          9        0   180
#> [596,]  84   6      0        165        0   145
#> [597,]  86   3      0          3        1   140
#> [598,]  82   9      0        180        1   134
#> [599,]  81  13      0        180        0   152
#> [600,]  85   3      0          3        1   118
#> [601,]  81   2      1          0        1   118
#> [602,]  81   4      0        180        0   160
#> [603,]  83   9      0        180        1   149
#> [604,]  87   2      0          5        1   137
#> [605,]  82  14      1         11        1   103
#> [606,]  86   6      1          0        1   140
#> [607,]  84  16      0         70        1   150
#> [608,]  83  19      0         43        0   150
#> [609,]  83  10      1          0        1   190
#> [610,]  84   7      1          2        0   148
#> [611,]  87   2      0        180        0   113
#> [612,]  84   9      0         92        1   110
#> [613,]  84   3      0        180        1   170
#> [614,]  82   4      0          4        0   130
#> [615,]  85   3      0          3        1   113
#> [616,]  84  13      0         62        1   100
#> [617,]  86   6      1          1        0   112
#> [618,]  88   4      0          4        0   100
#> [619,]  83  20      1          3        1   150
#> [620,]  85  22      0         22        1   184
#> [621,]  87   2      0        180        1   130
#> [622,]  88   2      0        180        1    68
#> [623,]  83   3      0          3        1   130
#> [624,]  86  15      1          8        1   109
#> [625,]  88   4      0          4        0    86
#> [626,]  89   4      0          4        1   153
#> [627,]  89   5      0        119        1   140
#> [628,]  87   6      0        180        1   110
#> [629,]  87   1      0          1        0   170
#> [630,]  84   8      0        180        1   119
#> [631,]  84   2      0        110        1   174
#> [632,]  87  29      0         29        1    97
#> [633,]  87  15      1          9        1   138
#> [634,]  88   1      0          1        0   135
#> [635,]  86   4      0        180        1   145
#> [636,]  87   2      0        180        0   160
#> [637,]  87   6      1          0        0   125
#> [638,]  86   3      1          0        1    80
#> [639,]  88   7      0         24        0   119
#> [640,]  90  11      1         10        1   186
#> [641,]  87   6      0        126        1   168
#> [642,]  86   9      1          7        0   130
#> [643,]  87  43      0        178        1   130
#> [644,]  87   5      0         36        1   150
#> [645,]  88   3      1          2        0   159
#> [646,]  89   3      1          1        1   160
#> [647,]  92   1      0          1        1   167
#> [648,]  91   3      0         33        1   137
#> [649,]  88   5      0        158        0   100
#> [650,]  89  12      1          0        1   130
#> [651,]  89   2      0        168        0   118
#> [652,]  91   5      0        169        1   176
#> [653,]  89  52      0         52        1   130
#> [654,]  92   7      0          7        1   110
#> [655,]  89   4      0          4        1   159
#> [656,]  91   0      0          0        0     0
#> [657,]  90  18      0        180        0   188
#> [658,]  94   6      0         50        0    78
#> [659,]  90   1      0          1        1   118
#> [660,]  93   8      0        179        1   110
#> [661,]  94   8      0          8        1   142
#> [662,]  92   4      0         76        1   149
#> [663,]  91   1      0        180        0   158
#> [664,]  90  16      0         16        1   106
#> [665,]  94   3      0         26        1   144
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  93   4      0        180        1   135
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0    5.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+   3.0 
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 172.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71]   2.0    1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+  36.0   88.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+  77.0 
#>  [91] 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 166.0+  99.0  180.0+
#> [101]  16.0+ 180.0+ 152.0+   7.0+   6.0+ 180.0+  13.0+ 180.0+ 180.0+ 174.0+
#> [111]  28.0    1.0  180.0+   9.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+
#> [121] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0   15.0+
#> [131] 180.0+ 180.0+  12.0+ 134.0+ 180.0+   8.0    3.0+ 180.0+ 180.0+ 180.0+
#> [141] 180.0+ 140.0  165.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+   0.5 
#> [151] 180.0+ 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+   4.0+ 147.0+
#> [161] 180.0+   5.0+ 180.0+   9.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [171] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+
#> [181] 180.0+   0.5  161.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+  10.0+ 180.0+
#> [191]  17.0   45.0  180.0+ 180.0+ 172.0+  24.0  180.0+ 180.0+ 180.0+  15.0 
#> [201] 180.0+ 180.0+ 180.0+  77.0   13.0+ 180.0+ 170.0   94.0  180.0+ 169.0 
#> [211]   7.0    7.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+  30.0  180.0+ 180.0+
#> [221]  28.0   13.0+  18.0    5.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+
#> [231] 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+   7.0+  22.0 
#> [241] 180.0+ 180.0+   7.0+ 180.0+   1.0  180.0+   4.0+   3.0+ 167.0  180.0+
#> [251] 180.0+  12.0  180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+   0.5  180.0+
#> [261]  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0    3.0  180.0+
#> [271] 180.0+   2.0+ 180.0+ 180.0+ 180.0+   3.0+ 103.0   15.0  180.0+ 180.0+
#> [281]   5.0+ 180.0+ 179.0+  14.0+   0.5+ 180.0+   3.0+ 180.0+   7.0+   8.0 
#> [291]   5.0   16.0  180.0+   1.0  180.0+ 180.0+ 123.0+   1.0+  18.0   11.0+
#> [301] 180.0+  80.0  180.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+
#> [311]   8.0+   3.0  180.0+  10.0  180.0+ 180.0+ 180.0+   6.0   19.0+ 180.0+
#> [321] 180.0+  11.0+ 180.0+  18.0    7.0+ 180.0+ 180.0+ 152.0+ 180.0+  93.0 
#> [331]  18.0+ 101.0    4.0  150.0  180.0+   1.0  180.0+ 171.0  180.0+   0.5 
#> [341] 180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+   2.0   45.0    5.0+ 103.0 
#> [351]   3.0+   5.0+ 180.0+ 180.0+  97.0    8.0+ 180.0+   2.0+ 180.0+  18.0 
#> [361] 172.0+ 180.0+ 180.0+   8.0+  13.0+ 123.0   51.0   19.0    1.0  180.0+
#> [371] 132.0   10.0+   7.0+   7.0+ 124.0    9.0  180.0+ 180.0+ 152.0  180.0+
#> [381]  76.0  173.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0+
#> [391] 180.0+ 180.0+ 180.0+ 180.0+   7.0+   3.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [401]   3.0+ 180.0+  20.0   20.0  180.0+ 180.0+   8.0    3.0   12.0    4.0+
#> [411]  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0    2.0 
#> [421] 180.0+  14.0+ 180.0+  10.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 159.0 
#> [431]  15.0   10.0   13.0  180.0+   4.0+  10.0  104.0+   1.0    5.0  180.0+
#> [441] 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 180.0+   5.0   11.0+   4.0+
#> [451] 180.0+   7.0   15.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0+ 180.0+
#> [461] 174.0+   4.0    7.0    0.5  180.0+  12.0  180.0+ 180.0+ 180.0+   4.0 
#> [471]   1.0  180.0+  52.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  33.0    5.0 
#> [481] 180.0+ 180.0+  12.0  180.0+   7.0+  79.0    3.0  180.0+ 176.0+ 180.0+
#> [491]   7.0   32.0   10.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+   2.0  180.0+
#> [501] 152.0+   3.0   29.0   24.0   32.0   23.0    6.0    3.0+ 180.0+   1.0 
#> [511]   4.0  180.0+   6.0  180.0+   1.0   43.0    3.0  180.0+ 180.0+  40.0 
#> [521] 161.0   10.0+ 180.0+ 164.0  118.0   37.0  180.0+   7.0+  22.0   15.0+
#> [531] 180.0+   3.0  166.0+   3.0+  10.0    5.0    1.0  180.0+ 180.0+ 180.0+
#> [541] 180.0+   4.0    6.0    9.0+ 180.0+ 103.0  180.0+ 177.0+ 169.0   70.0 
#> [551] 180.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0  180.0+ 177.0+ 180.0+ 180.0+
#> [561] 128.0  167.0    3.0+ 180.0+   4.0    1.0   38.0  180.0+ 180.0+ 180.0+
#> [571] 180.0+  89.0  180.0+   4.0   71.0    1.0   19.0   30.0  180.0+ 114.0 
#> [581] 180.0+ 154.0    2.0  180.0+   4.0+ 180.0+   1.0    4.0+ 180.0+  77.0 
#> [591] 180.0+   3.0   83.0   88.0  180.0+ 165.0    3.0  180.0+ 180.0+   3.0+
#> [601] 180.0+ 180.0+ 180.0+   5.0  174.0    6.0   70.0   43.0  180.0+ 180.0+
#> [611] 180.0+  92.0  180.0+   4.0    3.0+  62.0    6.0+   4.0+  20.0   22.0 
#> [621] 180.0+ 180.0+   3.0+ 180.0+   4.0    4.0  119.0  180.0+   1.0+ 180.0+
#> [631] 110.0   29.0  180.0+   1.0+ 180.0+ 180.0+  25.0    3.0   24.0   11.0 
#> [641] 126.0  180.0+ 178.0+  36.0   75.0    3.0+   1.0   33.0  158.0  180.0+
#> [651] 168.0  169.0   52.0    7.0    4.0    0.5  180.0+  50.0    1.0+ 179.0+
#> [661]   8.0+  76.0  180.0+  16.0   26.0    7.0+   0.5   69.0  180.0+   3.0 
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
#>    0.834585 
```
