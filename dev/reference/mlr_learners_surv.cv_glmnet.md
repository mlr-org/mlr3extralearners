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
#> min 0.00339    45   2.960 0.07024       6
#> 1se 0.05038    16   3.029 0.08404       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35  10      1          9        0   106
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  12      1          8        1   120
#>  [12,]  36   5      1          0        1   115
#>  [13,]  40  12      1          9        0   153
#>  [14,]  42   3      1          1        1   130
#>  [15,]  37   1      1          0        1   146
#>  [16,]  42   2      0        180        1   100
#>  [17,]  38   5      1          3        0   125
#>  [18,]  42   2      0          2        0   140
#>  [19,]  40   6      0        180        1   138
#>  [20,]  40  11      1         10        1   120
#>  [21,]  42   2      0        180        0   100
#>  [22,]  40   1      1          0        1   145
#>  [23,]  43   4      1          0        1   130
#>  [24,]  42  15      1         13        1   125
#>  [25,]  40   3      1          1        0   170
#>  [26,]  44   5      1          1        0   170
#>  [27,]  41  10      1          8        0   150
#>  [28,]  44   3      0        180        0   141
#>  [29,]  45   6      0        180        1   170
#>  [30,]  41   5      1          4        1   141
#>  [31,]  44   2      1          1        1   150
#>  [32,]  43   2      0        180        1   140
#>  [33,]  45   2      0        180        1   140
#>  [34,]  46  15      0        180        0   120
#>  [35,]  46   2      1          1        0   126
#>  [36,]  47   4      1          3        0   118
#>  [37,]  48  15      0        180        1   160
#>  [38,]  45   3      0        150        0   130
#>  [39,]  46   7      1          2        0   166
#>  [40,]  43  29      0        180        1   180
#>  [41,]  45   4      1          0        0   124
#>  [42,]  46  13      1         10        0   100
#>  [43,]  44   0      1          0        1    96
#>  [44,]  49   5      0         73        1   136
#>  [45,]  45   5      0          5        0   141
#>  [46,]  47   2      0        180        0   108
#>  [47,]  44   9      1          8        1   135
#>  [48,]  45   5      0        180        1   190
#>  [49,]  46   5      1          3        0   130
#>  [50,]  46  15      0        180        1   120
#>  [51,]  48   3      0        180        0   154
#>  [52,]  48  12      1         11        0   200
#>  [53,]  47   5      1          3        1   130
#>  [54,]  47   9      1          6        0   170
#>  [55,]  46   3      1          0        1   119
#>  [56,]  49   4      0        180        0   117
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
#>  [68,]  47   2      0        180        0   150
#>  [69,]  52   2      0        180        1   170
#>  [70,]  50   4      0          4        1   100
#>  [71,]  51   3      1          2        0   113
#>  [72,]  50   1      1          0        0   150
#>  [73,]  50   9      0        180        0   130
#>  [74,]  49   7      1          4        1    90
#>  [75,]  47   6      0        180        1   162
#>  [76,]  52   2      0        180        0   155
#>  [77,]  46   3      0        180        1   120
#>  [78,]  46   1      1          1        0   145
#>  [79,]  48  17      1         10        0   111
#>  [80,]  47   2      1          1        0   110
#>  [81,]  52   4      1          4        0   152
#>  [82,]  49  15      0        180        1   160
#>  [83,]  53   5      0        180        1   140
#>  [84,]  54  17      1         12        1   102
#>  [85,]  54   6      1          3        0   129
#>  [86,]  51   3      1          1        0   140
#>  [87,]  50   2      0          5        1   106
#>  [88,]  50  10      1          6        0   122
#>  [89,]  50  14      1         13        0   170
#>  [90,]  48   3      1          2        0   150
#>  [91,]  53   4      0          4        0   140
#>  [92,]  52  14      1          7        1   200
#>  [93,]  48  11      1         10        0   120
#>  [94,]  53   4      1          0        1   156
#>  [95,]  51  13      0         99        1   160
#>  [96,]  54   9      1          0        1   138
#>  [97,]  49  16      0         16        0   125
#>  [98,]  52   7      1          2        0   154
#>  [99,]  55   6      1          2        1   114
#> [100,]  54   9      1          1        0   130
#> [101,]  55   4      1          2        0   150
#> [102,]  52   4      0        180        1   180
#> [103,]  51  13      1         11        0   145
#> [104,]  50   5      1          4        1   150
#> [105,]  52   4      0        180        0   183
#> [106,]  50   3      0        174        1   153
#> [107,]  55  28      1         13        1   160
#> [108,]  49   1      0          1        1   110
#> [109,]  53   9      0          9        1    95
#> [110,]  53   8      1          0        1   130
#> [111,]  50   7      1          0        1   127
#> [112,]  56   4      1          1        1   130
#> [113,]  52   5      0        175        1   117
#> [114,]  54   1      0        180        0   162
#> [115,]  54   7      1          0        1   100
#> [116,]  53  18      1          9        1   150
#> [117,]  54   3      0        180        1   180
#> [118,]  55   6      0        180        0   170
#> [119,]  52  16      0         16        0   152
#> [120,]  53  10      1          9        0   172
#> [121,]  53  15      0         15        1    90
#> [122,]  55   6      0        180        1   100
#> [123,]  55   6      1          5        1   138
#> [124,]  55   2      0        134        1   140
#> [125,]  54   3      0        180        0   128
#> [126,]  56   3      0          8        1   139
#> [127,]  57   3      0          3        0   120
#> [128,]  54   7      1          2        0   129
#> [129,]  52   9      1          3        0   170
#> [130,]  54   2      1          1        1   176
#> [131,]  57   5      1          3        1   138
#> [132,]  57   1      0          1        1   100
#> [133,]  56   4      1          0        1   140
#> [134,]  52   2      0        180        0   140
#> [135,]  52  15      1         14        0   130
#> [136,]  53   3      1          0        1   200
#> [137,]  57  10      0        180        1   170
#> [138,]  54   5      0        180        1   108
#> [139,]  57   0      0          0        1   150
#> [140,]  53  21      1         13        1   130
#> [141,]  59   3      1          1        0   172
#> [142,]  53  15      1         10        1   130
#> [143,]  54  17      1          8        1   227
#> [144,]  55  13      0        166        1   140
#> [145,]  56   5      0          5        1   150
#> [146,]  57   4      1          2        1   185
#> [147,]  53   4      0        147        1   145
#> [148,]  53   7      1          0        1   120
#> [149,]  55   5      0          5        1   131
#> [150,]  54   7      1          0        1   141
#> [151,]  56   4      0          4        0   164
#> [152,]  58   1      1          1        1   200
#> [153,]  55   5      1          0        0   140
#> [154,]  56   7      1          5        1   120
#> [155,]  59   9      1          1        1   125
#> [156,]  59   3      0        180        0   120
#> [157,]  58   4      1          0        1   160
#> [158,]  60   5      1          1        0   138
#> [159,]  57   5      0        180        1   130
#> [160,]  58  11      1          9        1   124
#> [161,]  55   5      1          0        1   160
#> [162,]  57  10      1          9        0   103
#> [163,]  59   5      0        180        1   155
#> [164,]  59   4      1          0        1   152
#> [165,]  61   9      0          9        1   160
#> [166,]  58   4      1          3        0   120
#> [167,]  59   2      1          1        0   140
#> [168,]  58  14      1          6        0   190
#> [169,]  61   4      1          3        0   151
#> [170,]  61   3      1          2        1   102
#> [171,]  61  20      1         13        0   130
#> [172,]  57  13      1         10        0   110
#> [173,]  57   2      1          0        1   116
#> [174,]  58  10      0         10        1   150
#> [175,]  61   3      0         17        0   143
#> [176,]  56  14      0         45        0   130
#> [177,]  57   3      1          2        0   120
#> [178,]  58  19      1         13        1   140
#> [179,]  56  18      1         11        1   165
#> [180,]  59   9      1          0        1    80
#> [181,]  55   4      1          3        1   160
#> [182,]  58  11      0        172        1   135
#> [183,]  55   9      1          7        1   135
#> [184,]  61   4      1          0        1   115
#> [185,]  56   8      1          8        0   120
#> [186,]  57   1      0          1        0   126
#> [187,]  57  15      1         13        1   110
#> [188,]  59   5      1          2        0   182
#> [189,]  58   5      1          1        1   135
#> [190,]  59  10      0        180        0   160
#> [191,]  58   8      1          5        0   152
#> [192,]  62  10      1          0        1   153
#> [193,]  62   7      1          2        1   180
#> [194,]  57   3      1          0        0   100
#> [195,]  61  18      0        170        0   140
#> [196,]  61  28      1          7        0   133
#> [197,]  58   8      1          3        1   150
#> [198,]  60   7      0          7        0   147
#> [199,]  61   6      0          6        0   134
#> [200,]  57  12      1          9        1   120
#> [201,]  60  17      1          8        1   140
#> [202,]  58   3      1          0        1   146
#> [203,]  62   4      1          3        0   173
#> [204,]  59   1      0        180        0   155
#> [205,]  59  16      1          9        1   133
#> [206,]  63   6      0         28        1   120
#> [207,]  61  13      0         13        0   120
#> [208,]  57  18      1          9        1    93
#> [209,]  61   5      0          5        1   160
#> [210,]  58  11      1          9        0   179
#> [211,]  62  17      1         10        1   180
#> [212,]  62   1      1          0        1   172
#> [213,]  63   3      1          1        0   180
#> [214,]  63   1      0        180        1   130
#> [215,]  63   4      1          3        0   222
#> [216,]  63   4      0        180        1   190
#> [217,]  63  15      1         10        1   126
#> [218,]  63   4      1          1        0   155
#> [219,]  60  18      1         13        0   132
#> [220,]  58   9      1          9        0   110
#> [221,]  59   1      0         22        1   162
#> [222,]  58   2      0        180        0   127
#> [223,]  59   4      0        180        0   196
#> [224,]  60   7      1          5        1   141
#> [225,]  60   7      1          1        1    90
#> [226,]  63   1      0          1        0   162
#> [227,]  63   1      0          1        0   130
#> [228,]  62   6      0        180        0   170
#> [229,]  61  15      1         13        0   170
#> [230,]  59   4      0          4        0   149
#> [231,]  60   3      0          3        0   168
#> [232,]  64  10      1          9        0   160
#> [233,]  60   8      0         17        1   130
#> [234,]  61   6      1          1        1   117
#> [235,]  64  12      1         11        0   160
#> [236,]  66   1      1          0        1   120
#> [237,]  64   6      1          0        1   140
#> [238,]  66   3      1          1        0   127
#> [239,]  61  10      1          2        1   194
#> [240,]  64  32      1          9        1   160
#> [241,]  63  12      1          9        0   114
#> [242,]  65  10      1          8        1   120
#> [243,]  64   0      0          0        1    90
#> [244,]  60   6      0        180        0   130
#> [245,]  64   9      0        180        0   150
#> [246,]  61   4      0        180        1   113
#> [247,]  63  16      1          7        1   110
#> [248,]  64   7      0        180        1   120
#> [249,]  63  12      0         12        1   150
#> [250,]  62   3      1          1        1   199
#> [251,]  65   6      0          9        0   112
#> [252,]  65   3      1          0        1    80
#> [253,]  63   5      1          4        0   170
#> [254,]  63   2      1          1        0   180
#> [255,]  62  13      1         11        0   180
#> [256,]  67  11      0         11        1   100
#> [257,]  66  18      1          5        0   142
#> [258,]  66  16      1         11        1   169
#> [259,]  61  14      1          5        0   140
#> [260,]  61  15      1         10        0   130
#> [261,]  63   2      1          0        0   140
#> [262,]  65   8      1          0        1   140
#> [263,]  65  15      1         11        1   160
#> [264,]  68   5      1          4        1   150
#> [265,]  64  13      1         12        1   150
#> [266,]  64   6      1          0        1   125
#> [267,]  66   7      1          0        1   115
#> [268,]  66  13      1          0        0   118
#> [269,]  64  14      1         13        1   150
#> [270,]  65   3      0          3        0   105
#> [271,]  64   0      0          0        1   148
#> [272,]  66   3      1          0        1   135
#> [273,]  66   6      1          0        1   140
#> [274,]  65   2      1          1        1   170
#> [275,]  63   7      1          0        0   162
#> [276,]  67   8      1          1        1   130
#> [277,]  68   5      0          5        1    90
#> [278,]  66  14      0        180        0   130
#> [279,]  68  18      0        180        1   260
#> [280,]  63   8      1          1        1   162
#> [281,]  67  11      0         11        0   150
#> [282,]  68  11      0        180        0   160
#> [283,]  68  14      0         79        0   172
#> [284,]  66  12      1         10        1   150
#> [285,]  65  15      1         12        1   150
#> [286,]  65   4      1          2        1   145
#> [287,]  63   2      0        180        0   150
#> [288,]  69   6      0        180        1   100
#> [289,]  66   9      1          8        0   130
#> [290,]  63   8      0        180        1   120
#> [291,]  68  14      1         13        1   140
#> [292,]  65   8      1          0        1    90
#> [293,]  66   3      0          3        1   138
#> [294,]  69   1      1          0        0   170
#> [295,]  67   1      0        180        1   160
#> [296,]  68  10      1         10        1   150
#> [297,]  65   1      1          0        0   133
#> [298,]  63   2      1          0        0    99
#> [299,]  66  19      1         12        1   150
#> [300,]  67  12      1         12        0   160
#> [301,]  65   4      1          1        0   130
#> [302,]  66   4      0        180        1   130
#> [303,]  70  15      1         12        1   132
#> [304,]  64  11      0         11        0   125
#> [305,]  66   7      1          5        1   131
#> [306,]  66   4      0        180        0   177
#> [307,]  68   4      1          0        1   160
#> [308,]  69   4      1          3        1   150
#> [309,]  69  17      1         10        0   140
#> [310,]  69   8      0         93        0   140
#> [311,]  64  21      0         21        1   155
#> [312,]  68  18      1          0        1   160
#> [313,]  65   6      0        101        1   115
#> [314,]  70   7      1          0        1   190
#> [315,]  68   7      0        150        0   210
#> [316,]  71  20      1          0        1   160
#> [317,]  67   2      0        180        0   128
#> [318,]  66   9      1          3        1   151
#> [319,]  66   1      1          1        1   165
#> [320,]  70   4      1          0        1   180
#> [321,]  70  14      0        171        0   166
#> [322,]  66   4      0        180        0   130
#> [323,]  67  10      1          9        0   200
#> [324,]  67   6      1          4        0   130
#> [325,]  68  18      1         14        1   170
#> [326,]  69   0      0          0        1   148
#> [327,]  65   2      0        180        0   130
#> [328,]  68   7      1          0        1   150
#> [329,]  69   3      1          2        0   151
#> [330,]  65  14      1         13        1   150
#> [331,]  69   8      0        180        1   180
#> [332,]  71   7      0          7        0   230
#> [333,]  69   5      0          5        1   142
#> [334,]  69   3      0          3        1   130
#> [335,]  67   1      0         36        1   104
#> [336,]  68   6      0        180        0   145
#> [337,]  69   8      1          5        1   195
#> [338,]  72   7      0          7        1   110
#> [339,]  67   3      0        180        0   110
#> [340,]  66   2      1          1        0   123
#> [341,]  69  19      0        180        0   130
#> [342,]  69  11      1          0        1   120
#> [343,]  67   7      1          4        0   122
#> [344,]  69   4      1          3        0   132
#> [345,]  68   2      0          7        1   130
#> [346,]  67  13      1          9        0   130
#> [347,]  70   3      0        123        0   130
#> [348,]  69   1      0          1        1   110
#> [349,]  67   4      0         60        1   136
#> [350,]  69   5      0         76        0   120
#> [351,]  67   8      1          0        1   130
#> [352,]  72  13      1         11        1   195
#> [353,]  70  35      1          0        1   105
#> [354,]  72  30      1          0        1   145
#> [355,]  68   7      1          2        0   135
#> [356,]  73  20      1          0        1   170
#> [357,]  71   6      0          9        0   120
#> [358,]  72  19      1          8        0   120
#> [359,]  72  12      1         10        0   170
#> [360,]  67   8      0        180        1   170
#> [361,]  67   9      0        180        0   158
#> [362,]  73  13      0        152        1   130
#> [363,]  70   5      0        180        0   150
#> [364,]  72   2      0          2        1   100
#> [365,]  67   4      1          1        0   134
#> [366,]  72   6      1          5        0   115
#> [367,]  68  23      0        180        1   220
#> [368,]  71   3      1          2        0   150
#> [369,]  72   5      0         28        0   120
#> [370,]  71   5      0        180        0   191
#> [371,]  73   6      0        180        1   117
#> [372,]  69  16      1         10        1   140
#> [373,]  69   8      1          1        0   164
#> [374,]  68   7      0        180        1   130
#> [375,]  72  16      1          1        1   130
#> [376,]  70   4      0        180        0   180
#> [377,]  69   1      1          0        0   155
#> [378,]  72   8      1          1        1   150
#> [379,]  71   2      1          0        1   180
#> [380,]  73   7      0          7        1   140
#> [381,]  68  15      1         13        1   130
#> [382,]  70   3      0          3        1   159
#> [383,]  72   6      0        180        1   130
#> [384,]  73   0      0        180        1   161
#> [385,]  73   4      0        180        1   154
#> [386,]  69   2      1          0        1   110
#> [387,]  71   3      1          1        0   150
#> [388,]  71  15      1         11        0   165
#> [389,]  74  20      0         20        1   180
#> [390,]  68   9      0        180        1   120
#> [391,]  71  20      1         10        0   140
#> [392,]  74   0      1          0        1    90
#> [393,]  73   3      1          0        1   136
#> [394,]  71  17      1         11        0   160
#> [395,]  71   3      1          2        1   190
#> [396,]  73  10      1          8        0   106
#> [397,]  70  26      1         11        1   120
#> [398,]  74   4      0          4        0   120
#> [399,]  72   5      1          3        1   160
#> [400,]  73   6      0        180        0   110
#> [401,]  72  15      1          0        1   150
#> [402,]  71   7      1          2        0   143
#> [403,]  74   3      0          3        1   150
#> [404,]  73  17      1         11        0   140
#> [405,]  69   2      1          1        1    80
#> [406,]  74   7      1          0        1   117
#> [407,]  72  10      1          8        1   153
#> [408,]  69   7      0        180        1   144
#> [409,]  72  15      1         13        0   156
#> [410,]  70   8      0          8        0   120
#> [411,]  71  10      1          9        1   120
#> [412,]  75   2      1          1        0   145
#> [413,]  73  10      1          9        1   146
#> [414,]  72  10      1          9        1   160
#> [415,]  73  10      1         10        1   120
#> [416,]  74  15      1          9        1   179
#> [417,]  73   1      0          1        1    80
#> [418,]  75  13      1          1        1   130
#> [419,]  71   4      0          4        0   134
#> [420,]  72  15      1         12        1   120
#> [421,]  73  10      1          8        0   120
#> [422,]  70   7      1          4        0   184
#> [423,]  72   1      1          1        0   168
#> [424,]  72   7      0         57        1   145
#> [425,]  73  10      0        180        0   162
#> [426,]  72  11      0         11        1   140
#> [427,]  75   1      0        180        1   140
#> [428,]  72   4      1          0        1   197
#> [429,]  73   5      0        180        0   126
#> [430,]  73   4      0        180        0   124
#> [431,]  74  34      1          8        1   233
#> [432,]  76   3      1          0        1   120
#> [433,]  76   5      0          5        1   130
#> [434,]  77   4      0          4        0   185
#> [435,]  72   7      1          2        0   142
#> [436,]  71  16      0        180        0   140
#> [437,]  74   7      0        180        1   150
#> [438,]  76   1      0        180        0   114
#> [439,]  76   8      1          0        1   141
#> [440,]  74  19      1          4        1   200
#> [441,]  73   6      0          6        1   114
#> [442,]  74   2      0        180        0   190
#> [443,]  72   4      1          3        0   160
#> [444,]  73   4      1          3        1   125
#> [445,]  76  13      1         10        0   110
#> [446,]  75   4      1          0        1   122
#> [447,]  75   7      0          7        0   190
#> [448,]  73  13      1         11        0   195
#> [449,]  75  12      0         12        1   160
#> [450,]  74   8      1          0        1   105
#> [451,]  76  13      1          8        1   148
#> [452,]  75   1      0          1        1   125
#> [453,]  73   1      0         52        1   105
#> [454,]  72   5      0        180        0   120
#> [455,]  78  12      1         11        1   160
#> [456,]  76   5      0        180        0   185
#> [457,]  74  10      1          0        1   135
#> [458,]  75   9      0        180        1   140
#> [459,]  73  33      1         12        1   175
#> [460,]  77   5      1          0        0   123
#> [461,]  77  12      1          9        1   100
#> [462,]  73  10      1          9        0   146
#> [463,]  77  12      0        180        0   130
#> [464,]  77   1      1          0        1    90
#> [465,]  78   5      1          0        1   170
#> [466,]  74   6      0         79        1   140
#> [467,]  75   3      1          1        1   171
#> [468,]  74   9      1          8        0   200
#> [469,]  79  10      1          8        0   190
#> [470,]  74   2      1          0        1   130
#> [471,]  78  18      0         18        1   144
#> [472,]  77   3      0        180        0   110
#> [473,]  73   8      1          1        1   162
#> [474,]  78   7      0          7        1   133
#> [475,]  74  15      0        180        1   172
#> [476,]  74   7      0          7        0   161
#> [477,]  76  13      1          1        1   170
#> [478,]  79   6      0        180        0   170
#> [479,]  80  10      1          6        1   147
#> [480,]  78   0      0        180        1   212
#> [481,]  78  13      1          5        0   130
#> [482,]  75   5      0        119        1   150
#> [483,]  75  12      1          1        1   120
#> [484,]  78  15      0        180        1   270
#> [485,]  80   8      0          8        1   120
#> [486,]  79   4      0         80        0   145
#> [487,]  78  12      1          9        0   150
#> [488,]  75   4      1          0        0   212
#> [489,]  77   2      1          0        1   143
#> [490,]  76  11      1          0        0   120
#> [491,]  75  11      1          4        0   162
#> [492,]  76   7      0         29        1   150
#> [493,]  77  24      0         24        1   160
#> [494,]  80   9      0         23        1   128
#> [495,]  80   6      0          6        1   150
#> [496,]  78   6      1          0        1   240
#> [497,]  76   3      1          0        1   140
#> [498,]  79  11      0        180        0   160
#> [499,]  81   1      0          1        0   130
#> [500,]  78  11      1          8        1   118
#> [501,]  76   4      0          4        1   160
#> [502,]  80   3      1          0        1   120
#> [503,]  76   1      0          1        1   140
#> [504,]  76   1      0          1        1    90
#> [505,]  78   7      1          0        1   110
#> [506,]  79   3      0          3        0   120
#> [507,]  77   7      0        180        1   170
#> [508,]  77   6      0          6        1   144
#> [509,]  79   4      1          0        1   120
#> [510,]  81   1      0        180        0   120
#> [511,]  77   9      1          4        0   141
#> [512,]  82   5      0          8        1   120
#> [513,]  80  40      1          0        1   138
#> [514,]  78   4      0         59        1   112
#> [515,]  80  17      1         12        0   100
#> [516,]  76   7      0        161        0   151
#> [517,]  81   4      1          2        1   126
#> [518,]  80   9      0        118        1   186
#> [519,]  80   6      0        173        1   160
#> [520,]  78  32      0        180        1   130
#> [521,]  79   1      0         37        1   140
#> [522,]  81   3      0        180        0   184
#> [523,]  81   2      0        175        0   172
#> [524,]  77  13      1          0        1   190
#> [525,]  76   1      0        166        0   131
#> [526,]  78  20      1          0        1   109
#> [527,]  80   1      0          1        0   100
#> [528,]  78   3      1          1        1   152
#> [529,]  77  10      1          8        1   130
#> [530,]  82   3      1          1        1   144
#> [531,]  77   5      0         85        0   188
#> [532,]  80   2      1          1        0   168
#> [533,]  79   6      0          6        0   152
#> [534,]  80   6      1          0        1   119
#> [535,]  78   2      0        180        0   148
#> [536,]  82   1      1          0        1    82
#> [537,]  79  10      0        180        1   150
#> [538,]  77   4      0        180        1    98
#> [539,]  78  12      0        180        0   134
#> [540,]  79   1      0        125        0   193
#> [541,]  84  22      1         10        0   180
#> [542,]  79   4      0          4        1   121
#> [543,]  83   9      1          5        1   170
#> [544,]  82   5      0        180        0   110
#> [545,]  79   7      1          6        0   130
#> [546,]  83   4      0        103        0    97
#> [547,]  78  23      1         10        1   145
#> [548,]  79   4      0          4        1   183
#> [549,]  78   9      1          4        1   120
#> [550,]  82   8      1          1        0   128
#> [551,]  79   1      0        180        1   170
#> [552,]  81  15      0        180        1   140
#> [553,]  80   7      1          0        1   146
#> [554,]  84   5      1          1        1    85
#> [555,]  81  20      1          9        0   170
#> [556,]  83   8      0          8        0   115
#> [557,]  79   7      0        177        0   197
#> [558,]  79   0      1          0        1    96
#> [559,]  85   4      0        180        0    90
#> [560,]  81   2      1          1        0   198
#> [561,]  83   2      0          2        1   155
#> [562,]  82   6      0        128        1   100
#> [563,]  84   4      0          4        1    85
#> [564,]  81   1      0          1        1   150
#> [565,]  83   3      0        180        0   174
#> [566,]  80  13      1          8        1   140
#> [567,]  84   4      0         89        1   129
#> [568,]  79   4      0          4        1    60
#> [569,]  83   1      0          1        1   100
#> [570,]  80  30      1         13        0   220
#> [571,]  83   9      0        180        0   198
#> [572,]  79  14      1          0        0   110
#> [573,]  83   3      0        114        0    98
#> [574,]  81  14      1         12        1   128
#> [575,]  83   2      0        154        0   130
#> [576,]  83   1      0        180        0   160
#> [577,]  81   1      0          1        1   145
#> [578,]  81  12      0         12        1   163
#> [579,]  82  16      1          8        0   103
#> [580,]  82   5      1          0        1   146
#> [581,]  81   4      0          4        0   160
#> [582,]  86  12      0        180        1   120
#> [583,]  83  12      1          2        1   170
#> [584,]  81  19      1         14        0   120
#> [585,]  82   3      1          2        0   130
#> [586,]  82  15      1          0        0   183
#> [587,]  83   7      0        126        0   135
#> [588,]  86   8      0          8        1   132
#> [589,]  81  16      1          9        0   180
#> [590,]  84   6      0        165        0   145
#> [591,]  82   9      0        180        1   134
#> [592,]  81  13      0        180        0   152
#> [593,]  81   4      0        180        0   160
#> [594,]  83   9      0        180        1   149
#> [595,]  82   1      0        180        1   193
#> [596,]  83   4      0          4        0   130
#> [597,]  87   2      0          5        1   137
#> [598,]  82  14      1         11        1   103
#> [599,]  86   6      1          0        1   140
#> [600,]  84  16      0         70        1   150
#> [601,]  83  19      0         43        0   150
#> [602,]  84   3      1          2        0   125
#> [603,]  86   2      0        180        1   169
#> [604,]  88  14      1          3        1   130
#> [605,]  84   3      0          3        1   121
#> [606,]  83  13      1         12        0   170
#> [607,]  84   7      1          2        0   148
#> [608,]  84   9      0         92        1   110
#> [609,]  84   3      0        180        1   170
#> [610,]  86   4      0         38        1   122
#> [611,]  82   4      0          4        0   130
#> [612,]  86  13      0        177        0   163
#> [613,]  86   6      0          6        1   117
#> [614,]  88   4      0          4        0   100
#> [615,]  83  20      1          3        1   150
#> [616,]  88   4      0          4        1   115
#> [617,]  83   9      0         65        1   150
#> [618,]  88   2      0        180        1    68
#> [619,]  83   3      0          3        1   130
#> [620,]  87   8      0          8        1   157
#> [621,]  86  15      1          8        1   109
#> [622,]  89   4      0          4        1   153
#> [623,]  89   5      0        119        1   140
#> [624,]  87   6      0        180        1   110
#> [625,]  84   8      0        180        1   119
#> [626,]  85   8      0          8        1   136
#> [627,]  84   2      0        110        1   174
#> [628,]  88   1      0          1        0   135
#> [629,]  86   4      0        180        1   145
#> [630,]  91   8      0          8        0   100
#> [631,]  87   2      0        180        0   160
#> [632,]  87   6      1          0        0   125
#> [633,]  88   7      0         24        0   119
#> [634,]  88   8      0         50        1   154
#> [635,]  90  11      1         10        1   186
#> [636,]  87   6      0        126        1   168
#> [637,]  86   9      1          7        0   130
#> [638,]  90   4      1          0        0   121
#> [639,]  91   1      0          1        1    74
#> [640,]  87  43      0        178        1   130
#> [641,]  90   5      1          0        1   125
#> [642,]  88   3      1          2        0   159
#> [643,]  89   3      1          1        1   160
#> [644,]  92   1      0          1        1   167
#> [645,]  88   5      0        158        0   100
#> [646,]  87   7      0         74        1   105
#> [647,]  89  12      1          0        1   130
#> [648,]  89   2      0        168        0   118
#> [649,]  91   5      0        169        1   176
#> [650,]  89  52      0         52        1   130
#> [651,]  92   7      0          7        1   110
#> [652,]  89   4      0          4        1   159
#> [653,]  91   0      0          0        0     0
#> [654,]  89  14      0        180        1    84
#> [655,]  90  18      0        180        0   188
#> [656,]  91   4      1          0        1   120
#> [657,]  90   1      0          1        1   118
#> [658,]  91   2      0          2        1   116
#> [659,]  93   8      0        179        1   110
#> [660,]  92   4      0         76        1   149
#> [661,]  91   1      0        180        0   158
#> [662,]  90  16      0         16        1   106
#> [663,]  90   3      0         67        0   162
#> [664,]  96   3      0         12        1    97
#> [665,]  95   8      1          5        1   150
#> [666,]  91  12      0         53        1   212
#> [667,]  93   0      1          0        1   122
#> [668,]  92   5      0         69        0   139
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+ 180.0+ 180.0+   2.0+ 180.0+ 115.0  180.0+ 180.0+
#>  [11]  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+  73.0    5.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+   7.0  180.0+ 180.0+   2.0    1.0  179.0+ 180.0+ 180.0+   4.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  88.0+ 180.0+
#>  [81]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+
#>  [91]   4.0+  85.0  180.0+ 166.0+  99.0  180.0+  16.0+   7.0+   6.0+ 180.0+
#> [101] 180.0+ 180.0+  13.0+ 171.0+ 180.0+ 174.0+  28.0    1.0    9.0+ 180.0+
#> [111] 180.0+ 180.0+ 175.0+ 180.0+   7.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [121]  15.0+ 180.0+ 180.0+ 134.0+ 180.0+   8.0    3.0+ 180.0+ 180.0+ 180.0+
#> [131] 140.0    1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+
#> [141] 180.0+ 180.0+ 171.0+ 166.0+   5.0+   4.0+ 147.0+ 180.0+   5.0+ 180.0+
#> [151]   4.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+ 180.0+ 171.0+ 180.0+   3.0 
#> [171] 180.0+ 180.0+ 180.0+  10.0+  17.0   45.0    3.0+  19.0  180.0+   9.0+
#> [181] 180.0+ 172.0+  24.0  180.0+   8.0    1.0+  15.0  180.0+ 180.0+ 180.0+
#> [191]   8.0+ 180.0+ 180.0+ 180.0+ 170.0   94.0  180.0+   7.0+   6.0  180.0+
#> [201] 180.0+   3.0+ 180.0+ 180.0+ 180.0+  28.0   13.0+  18.0    5.0+ 180.0+
#> [211] 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+   9.0 
#> [221]  22.0  180.0+ 180.0+  84.0  180.0+   1.0    1.0  180.0+ 180.0+   4.0+
#> [231]   3.0+ 167.0   17.0  180.0+  12.0  180.0+ 180.0+   3.0+  88.0  180.0+
#> [241]  12.0  180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+
#> [251]   9.0    3.0  180.0+ 180.0+ 180.0+  11.0+  18.0+ 180.0+ 180.0+ 180.0+
#> [261]   2.0+  15.0  180.0+   5.0+  13.0  180.0+ 179.0+ 166.0+  14.0+   3.0 
#> [271]   0.5+   3.0+ 180.0+ 175.0+   7.0+   8.0    5.0  180.0+ 180.0+ 180.0+
#> [281]  11.0+ 180.0+  79.0   80.0   15.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [291] 180.0+   8.0+   3.0  175.0  180.0+  10.0  180.0+ 180.0+  19.0+  12.0 
#> [301] 180.0+ 180.0+ 180.0+  11.0+   7.0+ 180.0+ 180.0+ 152.0+ 180.0+  93.0 
#> [311]  21.0+  18.0+ 101.0    7.0+ 150.0  180.0+ 180.0+ 180.0+   1.0  180.0+
#> [321] 171.0  180.0+ 174.0+   6.0  180.0+   0.5  180.0+ 180.0+ 180.0+  14.0+
#> [331] 180.0+   7.0+   5.0+   3.0+  36.0  180.0+ 180.0+   7.0  180.0+   2.0+
#> [341] 180.0+ 180.0+   7.0  180.0+   7.0   13.0+ 123.0    1.0   60.0   76.0 
#> [351] 180.0+ 132.0  180.0+ 162.0    7.0+ 124.0    9.0  180.0+  12.0  180.0+
#> [361] 180.0+ 152.0  180.0+   2.0   76.0  180.0+ 180.0+ 180.0+  28.0  180.0+
#> [371] 180.0+  16.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+
#> [381]  15.0    3.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0  180.0+
#> [391]  20.0    0.5  180.0+ 180.0+   3.0   87.0  180.0+   4.0+ 180.0+ 180.0+
#> [401] 180.0+ 180.0+   3.0  180.0+   2.0  180.0+  10.0+ 180.0+ 180.0+   8.0+
#> [411] 179.0+ 180.0+ 180.0+ 159.0   15.0  180.0+   1.0   13.0    4.0+ 180.0+
#> [421]  10.0  104.0+   1.0   57.0  180.0+  11.0  180.0+ 180.0+ 180.0+ 180.0+
#> [431]  34.0  180.0+   5.0    4.0+   7.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [441]   6.0  180.0+ 180.0+ 180.0+ 174.0+   4.0    7.0  180.0+  12.0  180.0+
#> [451] 180.0+   1.0   52.0  180.0+  12.0  180.0+ 180.0+ 180.0+  33.0    5.0 
#> [461] 180.0+ 180.0+ 180.0+   1.0  180.0+  79.0    3.0  168.0+ 180.0+ 176.0+
#> [471]  18.0  180.0+ 180.0+   7.0  180.0+   7.0  180.0+ 180.0+  10.0  180.0+
#> [481] 172.0  119.0   12.0  180.0+   8.0   80.0  180.0+   4.0+   2.0   11.0 
#> [491] 152.0+  29.0   24.0   23.0    6.0  180.0+   3.0+ 180.0+   1.0   11.0 
#> [501]   4.0    3.0+   1.0    1.0   43.0    3.0  180.0+   6.0  138.0  180.0+
#> [511]  71.0    8.0   40.0   59.0   17.0  161.0   93.0  118.0  173.0  180.0+
#> [521]  37.0  180.0+ 175.0+  22.0  166.0+  20.0+   1.0    3.0+  10.0  180.0+
#> [531]  85.0   10.0    6.0+   6.0  180.0+   1.0  180.0+ 180.0+ 180.0+ 125.0 
#> [541] 180.0+   4.0    9.0+ 180.0+ 180.0+ 103.0   70.0    4.0  180.0+ 180.0+
#> [551] 180.0+ 180.0+   7.0+ 180.0+  20.0    8.0+ 177.0+   0.5  180.0+ 180.0+
#> [561]   2.0  128.0    4.0    1.0  180.0+ 180.0+  89.0    4.0    1.0   30.0 
#> [571] 180.0+ 180.0+ 114.0  180.0+ 154.0  180.0+   1.0   12.0   16.0+   5.0+
#> [581]   4.0+ 180.0+  77.0  180.0+   3.0   83.0  126.0    8.0  180.0+ 165.0 
#> [591] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0  174.0    6.0   70.0 
#> [601]  43.0  180.0+ 180.0+  14.0    3.0   13.0  180.0+  92.0  180.0+  38.0 
#> [611]   4.0  177.0    6.0+   4.0+  20.0    4.0   65.0  180.0+   3.0+   8.0+
#> [621] 180.0+   4.0  119.0  180.0+ 180.0+   8.0  110.0    1.0+ 180.0+   8.0 
#> [631] 180.0+  25.0   24.0   50.0   11.0  126.0  180.0+   4.0    1.0  178.0+
#> [641]  89.0   75.0    3.0+   1.0  158.0   74.0  180.0+ 168.0  169.0   52.0 
#> [651]   7.0    4.0    0.5  180.0+ 180.0+   4.0    1.0+   2.0  179.0+  76.0 
#> [661] 180.0+  16.0   67.0   12.0    8.0   53.0    0.5   69.0  180.0+  15.0+
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
#>   0.8454039 
```
