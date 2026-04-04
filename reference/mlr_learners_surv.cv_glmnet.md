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
#>      Lambda Index Measure     SE Nonzero
#> min 0.00336    43   2.837 0.2099       6
#> 1se 0.07944     9   3.016 0.2242       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  38   2      0        115        0   150
#>   [8,]  35   0      0        180        1   119
#>   [9,]  36   5      1          0        1   115
#>  [10,]  33   6      1          1        1   115
#>  [11,]  38  16      1         10        0   160
#>  [12,]  38  12      1         11        1    92
#>  [13,]  42   2      0        180        1   100
#>  [14,]  42   2      0          2        0   140
#>  [15,]  40  11      1         10        1   120
#>  [16,]  42   2      0        180        0   100
#>  [17,]  43   3      1          0        1   100
#>  [18,]  41   2      1          1        0   166
#>  [19,]  40   1      1          0        1   145
#>  [20,]  43   4      1          0        1   130
#>  [21,]  40   3      1          1        0   170
#>  [22,]  43   2      1          1        1   116
#>  [23,]  42   2      0        180        1   124
#>  [24,]  44   5      1          1        0   170
#>  [25,]  45   3      0        180        1   154
#>  [26,]  41  10      1          8        0   150
#>  [27,]  44   3      0        180        0   141
#>  [28,]  41  13      1          1        0   140
#>  [29,]  45   6      0        180        1   170
#>  [30,]  41   5      1          4        1   141
#>  [31,]  44   2      1          1        1   150
#>  [32,]  43   2      0        180        1   140
#>  [33,]  46  15      0        180        0   120
#>  [34,]  46   2      1          1        0   126
#>  [35,]  48  15      0        180        1   160
#>  [36,]  45   3      0        150        0   130
#>  [37,]  45   4      1          0        0   124
#>  [38,]  43  10      0        180        0   185
#>  [39,]  47   6      1          0        1   116
#>  [40,]  46  13      1         10        0   100
#>  [41,]  44   0      1          0        1    96
#>  [42,]  43   3      1          0        1   124
#>  [43,]  45   5      0          5        0   141
#>  [44,]  46   2      1          1        1   122
#>  [45,]  46   6      1          0        1   100
#>  [46,]  44   4      1          0        1   114
#>  [47,]  47   2      0        180        0   108
#>  [48,]  46   5      1          3        0   130
#>  [49,]  45   9      1          0        1   145
#>  [50,]  48   3      0        180        0   154
#>  [51,]  47   5      1          3        1   130
#>  [52,]  47  10      0         10        1   140
#>  [53,]  50   1      1          0        1   129
#>  [54,]  47   7      0        180        0   145
#>  [55,]  50   6      1          2        1   140
#>  [56,]  49   7      1          7        1   110
#>  [57,]  46   3      1          1        1   140
#>  [58,]  50   7      0        180        1   110
#>  [59,]  49   2      0          2        0   105
#>  [60,]  49  23      0        179        1   112
#>  [61,]  50   7      1          0        1    92
#>  [62,]  51   3      1          2        0   113
#>  [63,]  50   9      0        180        0   130
#>  [64,]  49   7      1          4        1    90
#>  [65,]  47   8      0        180        0   160
#>  [66,]  51   8      0        180        1   140
#>  [67,]  52   2      0        180        0   155
#>  [68,]  46   3      0        180        1   120
#>  [69,]  46   1      1          1        0   145
#>  [70,]  50   4      1          1        0   150
#>  [71,]  48   7      1          0        1   110
#>  [72,]  53   8      0         36        1   160
#>  [73,]  47   2      1          1        0   110
#>  [74,]  52   4      1          4        0   152
#>  [75,]  53   5      0        180        1   140
#>  [76,]  54  17      1         12        1   102
#>  [77,]  53   5      0         77        0   159
#>  [78,]  51   3      1          1        0   140
#>  [79,]  50   2      0          5        1   106
#>  [80,]  53   8      1          7        0   160
#>  [81,]  51  25      1          1        0   202
#>  [82,]  49   5      1          2        1   150
#>  [83,]  53   4      0          4        0   140
#>  [84,]  52  14      1          7        1   200
#>  [85,]  48   6      0        180        0   160
#>  [86,]  51  13      0         99        1   160
#>  [87,]  49  16      0         16        0   125
#>  [88,]  55   3      1          1        0   150
#>  [89,]  54  23      1         10        0   131
#>  [90,]  52   7      1          2        0   154
#>  [91,]  55   6      1          2        1   114
#>  [92,]  55   4      1          2        0   150
#>  [93,]  52   4      0        180        1   180
#>  [94,]  50   5      1          4        1   150
#>  [95,]  54   4      1          0        1   121
#>  [96,]  52   4      0        180        0   183
#>  [97,]  55  28      1         13        1   160
#>  [98,]  49   1      0          1        1   110
#>  [99,]  53   9      0          9        1    95
#> [100,]  53   8      1          0        1   130
#> [101,]  56   4      1          1        1   130
#> [102,]  52   5      0        175        1   117
#> [103,]  55   1      0        180        0   127
#> [104,]  56   2      0        180        0   132
#> [105,]  55   5      1          4        1   120
#> [106,]  52   8      0        180        0   119
#> [107,]  53  18      1          9        1   150
#> [108,]  55   6      0        180        0   170
#> [109,]  52  16      0         16        0   152
#> [110,]  52  16      1         14        0   170
#> [111,]  53  15      0         15        1    90
#> [112,]  55   6      0        180        1   100
#> [113,]  55   6      1          5        1   138
#> [114,]  54  12      1          0        1   190
#> [115,]  55   2      0        134        1   140
#> [116,]  56   3      0          8        1   139
#> [117,]  55   1      0          2        0   130
#> [118,]  57   3      0          3        0   120
#> [119,]  54   7      1          2        0   129
#> [120,]  54   2      1          1        0   135
#> [121,]  54   2      1          1        1   176
#> [122,]  57   5      1          3        1   138
#> [123,]  56   4      1          0        1   140
#> [124,]  52   2      0        180        0   140
#> [125,]  52  15      1         14        0   130
#> [126,]  53   3      1          0        1   200
#> [127,]  58   8      0          8        1   130
#> [128,]  54   5      0        180        1   108
#> [129,]  55   3      1          1        1   156
#> [130,]  53  21      1         13        1   130
#> [131,]  57   4      0        180        1   119
#> [132,]  58   6      1          0        1    90
#> [133,]  54  17      1          8        1   227
#> [134,]  55  13      0        166        1   140
#> [135,]  54  23      1          8        0   120
#> [136,]  57   4      1          2        1   185
#> [137,]  55   3      1          2        0   140
#> [138,]  54   7      1          0        1   141
#> [139,]  58   9      1          0        1   180
#> [140,]  58   1      1          1        1   200
#> [141,]  55   5      1          0        0   140
#> [142,]  59   9      1          1        1   125
#> [143,]  57   1      0        180        0   148
#> [144,]  59   3      0        180        0   120
#> [145,]  57   2      0          2        1   120
#> [146,]  57   5      0        180        1   130
#> [147,]  58  11      1          9        1   124
#> [148,]  59   6      1          0        1   140
#> [149,]  59   5      0        180        1   155
#> [150,]  59   4      1          0        1   152
#> [151,]  58  26      1          0        1   189
#> [152,]  61   9      0          9        1   160
#> [153,]  58   8      0        161        1   140
#> [154,]  61   4      1          3        0   151
#> [155,]  61   3      1          2        1   102
#> [156,]  58   1      0          1        1   100
#> [157,]  61  20      1         13        0   130
#> [158,]  57  13      1         10        0   110
#> [159,]  57   2      1          0        1   116
#> [160,]  58  10      0         10        1   150
#> [161,]  57  11      0        180        1   150
#> [162,]  56  14      0         45        0   130
#> [163,]  57   3      1          2        0   120
#> [164,]  58  19      1         13        1   140
#> [165,]  56  18      1         11        1   165
#> [166,]  55   4      1          3        1   160
#> [167,]  58  11      0        172        1   135
#> [168,]  60  12      1          0        1   114
#> [169,]  61   4      1          0        1   115
#> [170,]  61  13      1         12        1   130
#> [171,]  59  11      1          8        1   190
#> [172,]  57   1      0          1        0   126
#> [173,]  57  15      1         13        1   110
#> [174,]  59   5      1          2        0   182
#> [175,]  58   5      1          1        1   135
#> [176,]  59  10      0        180        0   160
#> [177,]  61   8      0         77        0   120
#> [178,]  61  13      0         13        0   210
#> [179,]  58   8      1          5        0   152
#> [180,]  62   7      1          2        1   180
#> [181,]  61  18      0        170        0   140
#> [182,]  61  28      1          7        0   133
#> [183,]  57   7      0        169        0   180
#> [184,]  61   7      0          7        1   150
#> [185,]  60   7      0          7        0   147
#> [186,]  61   6      0          6        0   134
#> [187,]  59  13      1          2        0   198
#> [188,]  57  12      1          9        1   120
#> [189,]  62   4      1          0        0   160
#> [190,]  58   3      1          0        1   146
#> [191,]  58   2      0         30        0   202
#> [192,]  59   1      0        180        0   155
#> [193,]  59  16      1          9        1   133
#> [194,]  63   6      0         28        1   120
#> [195,]  61   5      0          5        1   110
#> [196,]  57  18      1          9        1    93
#> [197,]  58  11      1          9        0   179
#> [198,]  57   2      1          1        0   159
#> [199,]  62  17      1         10        1   180
#> [200,]  62   1      1          0        1   172
#> [201,]  58   7      0        180        1   150
#> [202,]  63   3      1          1        0   180
#> [203,]  63   1      0        180        1   130
#> [204,]  63   4      1          3        0   222
#> [205,]  62   3      0        180        1   105
#> [206,]  64   4      0        180        0   130
#> [207,]  60  18      1         13        0   132
#> [208,]  59   8      0        180        1   140
#> [209,]  61   9      1          9        1   150
#> [210,]  62   7      0          7        0   150
#> [211,]  59   1      0         22        1   162
#> [212,]  58   2      0        180        0   127
#> [213,]  59   4      0        180        0   196
#> [214,]  60   7      1          5        1   141
#> [215,]  60   7      0          7        0   140
#> [216,]  59   5      1          1        0   148
#> [217,]  60   7      1          1        1    90
#> [218,]  65  13      0        180        1   100
#> [219,]  63   1      0          1        0   130
#> [220,]  61  15      1         13        0   170
#> [221,]  59   4      0          4        0   149
#> [222,]  60   3      0          3        0   168
#> [223,]  62   6      0          6        0   120
#> [224,]  63  12      1         10        0   200
#> [225,]  59  10      0        180        1   130
#> [226,]  61   6      1          1        1   117
#> [227,]  64  12      1         11        0   160
#> [228,]  66   1      1          0        1   120
#> [229,]  64   6      1          0        1   140
#> [230,]  65  36      1         11        0   140
#> [231,]  63   4      1          3        0   162
#> [232,]  66   3      1          1        0   127
#> [233,]  63   7      0        180        0   120
#> [234,]  66   5      1          0        1   110
#> [235,]  65   8      1          0        0   168
#> [236,]  60   6      0        180        0   130
#> [237,]  64  21      1         10        0   190
#> [238,]  61  12      1         11        0   154
#> [239,]  64   7      0        180        1   120
#> [240,]  63  12      0         12        1   150
#> [241,]  62   3      1          1        1   199
#> [242,]  65   3      1          0        1    80
#> [243,]  63   5      1          4        0   170
#> [244,]  62  13      1         11        0   180
#> [245,]  64   2      0          2        0   201
#> [246,]  66  18      1          5        0   142
#> [247,]  62   9      0        180        0   145
#> [248,]  61  15      1         10        0   130
#> [249,]  63   9      1          8        1   160
#> [250,]  63   3      1          2        0   120
#> [251,]  63   2      1          0        0   140
#> [252,]  64  19      1          8        1   160
#> [253,]  65   8      1          0        1   140
#> [254,]  68   5      1          4        1   150
#> [255,]  64  13      1         12        1   150
#> [256,]  66   7      1          0        1   115
#> [257,]  66  13      1          0        0   118
#> [258,]  64  14      1         13        1   150
#> [259,]  65   3      0          3        0   105
#> [260,]  64   0      0          0        1   148
#> [261,]  67   4      1          3        0   130
#> [262,]  66   3      1          0        1   135
#> [263,]  66   6      1          0        1   140
#> [264,]  64  10      1          9        1   110
#> [265,]  63   7      1          0        0   162
#> [266,]  67   8      1          1        1   130
#> [267,]  68   5      0          5        1    90
#> [268,]  63  10      0         16        1   160
#> [269,]  64   1      0          1        1   120
#> [270,]  65  18      1          3        0   120
#> [271,]  63   1      1          0        1   155
#> [272,]  68  11      0        180        0   160
#> [273,]  68  14      0         79        0   172
#> [274,]  66  12      1         10        1   150
#> [275,]  65  15      1         12        1   150
#> [276,]  66  11      1          0        0   100
#> [277,]  66  15      1         13        1   160
#> [278,]  63   2      0        180        0   150
#> [279,]  65  11      1          6        0   130
#> [280,]  69  21      1         10        0   180
#> [281,]  69   6      0        180        1   100
#> [282,]  66   9      1          8        0   130
#> [283,]  63   8      0        180        1   120
#> [284,]  68  14      1         13        1   140
#> [285,]  66   3      0          3        1   138
#> [286,]  69   1      1          0        0   170
#> [287,]  68  10      1         10        1   150
#> [288,]  65   1      1          0        0   133
#> [289,]  67   7      1          4        1   130
#> [290,]  63   2      1          0        0    99
#> [291,]  65   6      0          6        0    80
#> [292,]  65  10      1          1        1   148
#> [293,]  66  19      1         12        1   150
#> [294,]  67  12      1         12        0   160
#> [295,]  65   4      1          1        0   130
#> [296,]  64   4      0        179        0   160
#> [297,]  66   4      0        180        1   130
#> [298,]  70  15      1         12        1   132
#> [299,]  64  11      0         11        0   125
#> [300,]  64   0      1          0        1   118
#> [301,]  66   7      1          5        1   131
#> [302,]  66   4      0        180        0   177
#> [303,]  68   4      1          0        1   160
#> [304,]  69   4      1          3        1   150
#> [305,]  65  13      1         12        1   130
#> [306,]  69  17      1         10        0   140
#> [307,]  66   6      0        180        0   140
#> [308,]  65   1      0          1        1   120
#> [309,]  65   6      0        101        1   115
#> [310,]  70   7      1          0        1   190
#> [311,]  68   7      0        150        0   210
#> [312,]  67   2      0        180        0   128
#> [313,]  66   9      1          3        1   151
#> [314,]  66   1      1          1        1   165
#> [315,]  70   4      1          0        1   180
#> [316,]  70  14      0        171        0   166
#> [317,]  67  10      1          9        0   200
#> [318,]  67   6      1          4        0   130
#> [319,]  68  18      1         14        1   170
#> [320,]  69   0      0          0        1   148
#> [321,]  69   3      1          2        0   151
#> [322,]  67  14      1         13        0   130
#> [323,]  65  14      1         13        1   150
#> [324,]  69   8      0        180        1   180
#> [325,]  71   6      0         45        1   158
#> [326,]  69   5      0          5        1   142
#> [327,]  71   3      0        103        0   133
#> [328,]  69   3      0          3        1   130
#> [329,]  70  22      1         13        0   103
#> [330,]  67   5      0          5        0   130
#> [331,]  68   6      0        180        0   145
#> [332,]  69   6      1          4        1   174
#> [333,]  72   3      1          0        1   132
#> [334,]  72   7      0          7        1   110
#> [335,]  69   8      1          7        1   108
#> [336,]  66   2      1          1        0   123
#> [337,]  67  14      0        172        1   140
#> [338,]  69  11      1          0        1   120
#> [339,]  66   2      0        180        0   130
#> [340,]  67   7      1          4        0   122
#> [341,]  69   8      1          2        0   121
#> [342,]  70   3      0        123        0   130
#> [343,]  68   3      0         19        0   135
#> [344,]  67  12      1          8        0   120
#> [345,]  69   1      0          1        1   110
#> [346,]  67   1      0          1        1    60
#> [347,]  67   4      0         60        1   136
#> [348,]  69   5      0         76        0   120
#> [349,]  67   8      1          0        1   130
#> [350,]  72  13      1         11        1   195
#> [351,]  68  10      1          8        1   160
#> [352,]  72  30      1          0        1   145
#> [353,]  70  11      0        180        1   210
#> [354,]  72  12      1         10        0   170
#> [355,]  67   9      0        180        0   158
#> [356,]  70   5      0        180        0   150
#> [357,]  72   2      0          2        1   100
#> [358,]  68  23      0        180        1   220
#> [359,]  70   3      0        180        0   121
#> [360,]  69   3      0        180        0   220
#> [361,]  71   3      1          2        0   150
#> [362,]  68   4      1          3        0   210
#> [363,]  72   5      0         28        0   120
#> [364,]  71   5      0        180        0   191
#> [365,]  69   8      1          1        0   164
#> [366,]  68   7      0        180        1   130
#> [367,]  70   4      0        180        0   180
#> [368,]  69   1      1          0        0   155
#> [369,]  73   6      1          0        1   270
#> [370,]  72   8      1          1        1   150
#> [371,]  71   2      1          0        1   180
#> [372,]  68  15      1         13        1   130
#> [373,]  70   3      0          3        1   159
#> [374,]  70  13      1          9        0   100
#> [375,]  72   6      0        180        1   130
#> [376,]  73   0      0        180        1   161
#> [377,]  73   4      0        180        1   154
#> [378,]  69   2      1          0        1   110
#> [379,]  71  15      1         11        0   165
#> [380,]  74  20      0         20        1   180
#> [381,]  74   0      1          0        1    90
#> [382,]  73   3      1          0        1   136
#> [383,]  71  17      1         11        0   160
#> [384,]  71   8      1          7        0   149
#> [385,]  73  10      1          8        0   106
#> [386,]  69  12      1          1        1   149
#> [387,]  70  26      1         11        1   120
#> [388,]  74   4      0          4        0   120
#> [389,]  73   4      0         58        1   160
#> [390,]  72   5      1          3        1   160
#> [391,]  70   3      0        180        1   154
#> [392,]  73   6      0        180        0   110
#> [393,]  71   7      1          2        0   143
#> [394,]  72   8      1          0        1   140
#> [395,]  73  17      1         11        0   140
#> [396,]  71  13      1          8        0   121
#> [397,]  70   4      1          0        1   140
#> [398,]  74   7      1          0        1   117
#> [399,]  69   7      0        180        1   144
#> [400,]  72  15      1         13        0   156
#> [401,]  70   8      0          8        0   120
#> [402,]  75   1      0          1        0   133
#> [403,]  75   2      1          1        0   145
#> [404,]  73  10      1          9        1   146
#> [405,]  74  15      1          9        1   179
#> [406,]  75   9      1          7        0   140
#> [407,]  75  13      1          1        1   130
#> [408,]  71  11      1          8        0   110
#> [409,]  71   4      0          4        0   134
#> [410,]  72  15      1         12        1   120
#> [411,]  70   7      1          4        0   184
#> [412,]  72   1      1          1        0   168
#> [413,]  73  10      0        180        0   162
#> [414,]  73   5      1          3        1   112
#> [415,]  76  25      1         12        1   170
#> [416,]  75   1      0        180        1   140
#> [417,]  72   4      1          0        1   197
#> [418,]  76   3      1          0        1   120
#> [419,]  71  32      1         12        1   107
#> [420,]  72   3      0        180        0   160
#> [421,]  77   4      0          4        0   185
#> [422,]  75   3      1          1        0   180
#> [423,]  72   7      1          2        0   142
#> [424,]  74   7      0        180        1   150
#> [425,]  74   3      0          3        1   128
#> [426,]  76   8      1          0        1   141
#> [427,]  74  19      1          4        1   200
#> [428,]  73   6      0          6        1   114
#> [429,]  75  23      1         14        1   110
#> [430,]  74   2      0        180        0   190
#> [431,]  76  17      1          0        1   200
#> [432,]  73   4      1          3        1   125
#> [433,]  76  13      1         10        0   110
#> [434,]  75   4      1          0        1   122
#> [435,]  75   7      0          7        0   190
#> [436,]  75   0      0          0        1   130
#> [437,]  75  12      0         12        1   160
#> [438,]  76  13      1          8        1   148
#> [439,]  75   4      1          2        1   188
#> [440,]  74   6      0        180        0   160
#> [441,]  76   4      0          4        1   155
#> [442,]  74   2      0        180        0   111
#> [443,]  73   0      0        180        0   156
#> [444,]  72   5      0        180        0   120
#> [445,]  78  12      1         11        1   160
#> [446,]  76  44      1         10        0   105
#> [447,]  76   5      0        180        0   185
#> [448,]  74  10      1          0        1   135
#> [449,]  76   5      1          0        1   167
#> [450,]  74   8      1          8        1   170
#> [451,]  75   9      0        180        1   140
#> [452,]  73  33      1         12        1   175
#> [453,]  77   5      1          0        0   123
#> [454,]  73  10      1          9        0   146
#> [455,]  77  12      0        180        0   130
#> [456,]  77   1      1          0        1    90
#> [457,]  76  12      1         11        1   120
#> [458,]  74   9      1          8        0   200
#> [459,]  79  10      1          8        0   190
#> [460,]  74   2      1          0        1   130
#> [461,]  78  18      0         18        1   144
#> [462,]  77   3      0        180        0   110
#> [463,]  76  29      0         47        0    90
#> [464,]  73   8      1          1        1   162
#> [465,]  73  11      1          2        1   110
#> [466,]  78   7      0          7        1   133
#> [467,]  74  15      0        180        1   172
#> [468,]  78   8      1          6        1   110
#> [469,]  76  13      1          1        1   170
#> [470,]  78  32      1          9        1   198
#> [471,]  79   6      0        180        0   170
#> [472,]  80  10      1          6        1   147
#> [473,]  78   0      0        180        1   212
#> [474,]  78  13      1          5        0   130
#> [475,]  75   5      0        119        1   150
#> [476,]  75  12      1          1        1   120
#> [477,]  78  15      0        180        1   270
#> [478,]  80   8      0          8        1   120
#> [479,]  75  13      1          6        0   150
#> [480,]  74  10      1          8        0   135
#> [481,]  78  12      1          9        0   150
#> [482,]  75   4      1          0        0   212
#> [483,]  77   2      1          0        1   143
#> [484,]  78  10      0        180        1   130
#> [485,]  76  11      1          0        0   120
#> [486,]  75  11      1          4        0   162
#> [487,]  75   3      0          3        0     0
#> [488,]  76   7      0         29        1   150
#> [489,]  77  24      0         24        1   160
#> [490,]  80   6      0          6        1   150
#> [491,]  78   6      1          0        1   240
#> [492,]  76   3      1          0        1   140
#> [493,]  78  11      1          1        1   140
#> [494,]  79  11      0        180        0   160
#> [495,]  79   2      1          0        1   121
#> [496,]  78  14      1          0        1   140
#> [497,]  81   1      0          1        0   130
#> [498,]  78  11      1          8        1   118
#> [499,]  79   4      0          4        1   125
#> [500,]  76  10      1          8        0   180
#> [501,]  76  12      1         10        1   127
#> [502,]  80   3      1          0        1   120
#> [503,]  75   2      1          1        1   204
#> [504,]  78  11      0        180        1   135
#> [505,]  76   1      0          1        1   140
#> [506,]  78   7      1          0        1   110
#> [507,]  79   3      0          3        0   120
#> [508,]  77   7      0        180        1   170
#> [509,]  79   4      1          0        1   120
#> [510,]  82   5      0          8        1   120
#> [511,]  78   4      0         59        1   112
#> [512,]  80  17      1         12        0   100
#> [513,]  76   7      0        161        0   151
#> [514,]  79  10      0         10        1   120
#> [515,]  80  15      1          0        1    90
#> [516,]  81   4      1          2        1   126
#> [517,]  80   9      0        118        1   186
#> [518,]  78  32      0        180        1   130
#> [519,]  79   1      0         37        1   140
#> [520,]  81   3      0        180        0   184
#> [521,]  81   2      0        175        0   172
#> [522,]  78   7      0          7        1   147
#> [523,]  77  13      1          0        1   190
#> [524,]  78  15      0         15        0   165
#> [525,]  80   5      1          1        1   108
#> [526,]  78   4      0        180        0   175
#> [527,]  79   3      0          3        1   101
#> [528,]  81   4      1          1        1   104
#> [529,]  78  20      1          0        1   109
#> [530,]  80   1      0          1        0   100
#> [531,]  77  10      1          8        1   130
#> [532,]  82   3      1          1        1   144
#> [533,]  77   5      0         85        0   188
#> [534,]  80   2      1          1        0   168
#> [535,]  80   6      1          0        1   119
#> [536,]  78   2      0        180        0   148
#> [537,]  80   5      0          5        1   130
#> [538,]  82   1      1          0        1    82
#> [539,]  79  10      0        180        1   150
#> [540,]  77   4      0        180        1    98
#> [541,]  81   1      0        108        0   129
#> [542,]  78  12      0        180        0   134
#> [543,]  79   1      0        125        0   193
#> [544,]  80   6      0          6        1   110
#> [545,]  82   5      0        180        0   110
#> [546,]  83   5      0        180        0   148
#> [547,]  79   7      1          6        0   130
#> [548,]  83   4      0        103        0    97
#> [549,]  81  11      1          8        0   160
#> [550,]  81   5      0        177        0    41
#> [551,]  78  23      1         10        1   145
#> [552,]  82   8      1          1        0   128
#> [553,]  79   1      0        180        1   170
#> [554,]  84   5      1          1        1    85
#> [555,]  81  20      1          9        0   170
#> [556,]  83   8      0          8        0   115
#> [557,]  80  11      1          8        0   110
#> [558,]  81   8      0        180        0   146
#> [559,]  80   8      1          7        0   160
#> [560,]  79   7      0        177        0   197
#> [561,]  79   0      1          0        1    96
#> [562,]  85   4      0        180        0    90
#> [563,]  81   2      1          1        0   198
#> [564,]  83   2      0          2        1   155
#> [565,]  80   3      1          1        1   230
#> [566,]  82  23      1          0        0   110
#> [567,]  84   5      0        180        1   203
#> [568,]  81   1      0          1        1   150
#> [569,]  83   3      0        180        0   174
#> [570,]  81   4      0         90        1   138
#> [571,]  85   3      1          2        1   160
#> [572,]  80  13      1          8        1   140
#> [573,]  84   4      0         89        1   129
#> [574,]  83   1      0          1        1   100
#> [575,]  79  14      1          0        0   110
#> [576,]  81  14      1         12        1   128
#> [577,]  83   2      0        154        0   130
#> [578,]  82   0      0          2        1   100
#> [579,]  85   9      1          6        1   160
#> [580,]  83   1      0        180        0   160
#> [581,]  81   4      0          4        0   175
#> [582,]  81  12      0         12        1   163
#> [583,]  82   5      1          0        1   146
#> [584,]  81   4      0          4        0   160
#> [585,]  83  12      1          2        1   170
#> [586,]  82  15      1          0        0   183
#> [587,]  80   2      0         88        0   135
#> [588,]  83   7      0        126        0   135
#> [589,]  86   8      0          8        1   132
#> [590,]  81  16      1          9        0   180
#> [591,]  82   9      0        180        1   134
#> [592,]  84   3      0        180        1   120
#> [593,]  85   3      0          3        1   118
#> [594,]  81   4      0        180        0   160
#> [595,]  83   9      0        180        1   149
#> [596,]  83   4      0          4        0   130
#> [597,]  86  12      1          0        1   132
#> [598,]  82  14      1         11        1   103
#> [599,]  86   6      1          0        1   140
#> [600,]  84  16      0         70        1   150
#> [601,]  83  19      0         43        0   150
#> [602,]  84   3      1          2        0   125
#> [603,]  83  10      1          0        1   190
#> [604,]  86   2      0        180        1   169
#> [605,]  84   3      0          3        1   121
#> [606,]  83  13      1         12        0   170
#> [607,]  87   2      0        180        0   113
#> [608,]  82   4      0          4        0   130
#> [609,]  86  13      0        177        0   163
#> [610,]  85   3      0          3        1   113
#> [611,]  86   6      0          6        1   117
#> [612,]  84  13      0         62        1   100
#> [613,]  86   6      1          1        0   112
#> [614,]  88   4      0          4        0   100
#> [615,]  83  20      1          3        1   150
#> [616,]  88   4      0          4        1   115
#> [617,]  83   9      0         65        1   150
#> [618,]  87   2      0        180        1   130
#> [619,]  88   3      0        115        0   110
#> [620,]  88   2      0        180        1    68
#> [621,]  83   3      0          3        1   130
#> [622,]  87   8      0          8        1   157
#> [623,]  86  15      1          8        1   109
#> [624,]  88   4      0          4        0    86
#> [625,]  89   5      0        119        1   140
#> [626,]  87   6      0        180        1   110
#> [627,]  87   1      0          1        0   170
#> [628,]  84   8      0        180        1   119
#> [629,]  85   8      0          8        1   136
#> [630,]  84   2      0        110        1   174
#> [631,]  87  29      0         29        1    97
#> [632,]  87  15      1          9        1   138
#> [633,]  84   0      0        180        1   136
#> [634,]  90  14      0         14        1   100
#> [635,]  86   4      0        180        1   145
#> [636,]  87   2      0        180        0   160
#> [637,]  91  10      0        145        0   135
#> [638,]  86   3      1          0        1    80
#> [639,]  88   7      0         24        0   119
#> [640,]  88   8      0         50        1   154
#> [641,]  90  11      1         10        1   186
#> [642,]  87   6      0        126        1   168
#> [643,]  86   9      1          7        0   130
#> [644,]  90   4      1          0        0   121
#> [645,]  87  43      0        178        1   130
#> [646,]  87   5      0         36        1   150
#> [647,]  90   5      1          0        1   125
#> [648,]  88   3      1          2        0   159
#> [649,]  92   1      0          1        1   167
#> [650,]  91   3      0         33        1   137
#> [651,]  88   5      0        158        0   100
#> [652,]  89   2      0        168        0   118
#> [653,]  91   5      0        169        1   176
#> [654,]  92   7      0          7        1   110
#> [655,]  89  14      0        180        1    84
#> [656,]  90  18      0        180        0   188
#> [657,]  91   4      1          0        1   120
#> [658,]  90  19      1         11        1   129
#> [659,]  90   1      0          1        1   118
#> [660,]  92   4      0         76        1   149
#> [661,]  90  16      0         16        1   106
#> [662,]  90   3      0         67        0   162
#> [663,]  96   3      0         12        1    97
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   2.0+   5.0+ 180.0+ 180.0+   2.0+ 115.0  180.0+   5.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+
#>  [21] 180.0+   2.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+   6.0+ 180.0+
#>  [41] 180.0+ 180.0+   5.0+ 161.0+ 180.0+ 180.0+ 180.0+   5.0+ 177.0+ 180.0+
#>  [51] 180.0+  10.0+ 172.0+ 180.0+ 180.0+   7.0  180.0+ 180.0+   2.0  179.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71]   7.0   36.0  180.0+   4.0+ 180.0+ 180.0+  77.0  180.0+   5.0  180.0+
#>  [81] 180.0+ 180.0+   4.0+  85.0  180.0+  99.0   16.0+ 180.0+ 152.0+   7.0+
#>  [91]   6.0+ 180.0+ 180.0+ 171.0+ 180.0+ 180.0+  28.0    1.0    9.0+ 180.0+
#> [101] 180.0+ 175.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0+  16.0 
#> [111]  15.0+ 180.0+ 180.0+  12.0+ 134.0+   8.0    2.0    3.0+ 180.0+ 180.0+
#> [121] 180.0+ 140.0  165.0  180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+
#> [131] 180.0+ 180.0+ 171.0+ 166.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0+   1.0 
#> [141] 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+  64.0  180.0+ 180.0+
#> [151] 180.0+   9.0+ 161.0+ 180.0+   3.0    1.0  180.0+ 180.0+ 180.0+  10.0+
#> [161] 180.0+  45.0    3.0+  19.0  180.0+ 180.0+ 172.0+ 172.0+ 180.0+ 180.0+
#> [171] 180.0+   1.0+  15.0  180.0+ 180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+
#> [181] 170.0   94.0  169.0    7.0    7.0+   6.0  180.0+ 180.0+ 180.0+   3.0+
#> [191]  30.0  180.0+ 180.0+  28.0    5.0   18.0  180.0+ 180.0+ 180.0+   1.0 
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+
#> [211]  22.0  180.0+ 180.0+  84.0    7.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+
#> [221]   4.0+   3.0+   6.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+  36.0 
#> [231] 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0+ 180.0+  12.0 
#> [241] 180.0+   3.0  180.0+ 180.0+   2.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+
#> [251]   2.0+ 103.0   15.0    5.0+  13.0  179.0+ 166.0+  14.0+   3.0    0.5+
#> [261] 180.0+   3.0+ 180.0+ 180.0+   7.0+   8.0    5.0   16.0    1.0  123.0+
#> [271]   1.0+ 180.0+  79.0   80.0   15.0+ 180.0+ 180.0+ 180.0+ 180.0+ 174.0+
#> [281] 180.0+ 180.0+ 180.0+ 180.0+   3.0  175.0   10.0  180.0+ 180.0+ 180.0+
#> [291]   6.0  180.0+  19.0+  12.0  180.0+ 179.0+ 180.0+ 180.0+  11.0+   0.5 
#> [301]   7.0+ 180.0+ 180.0+ 152.0+ 180.0+ 180.0+ 180.0+   1.0  101.0    7.0+
#> [311] 150.0  180.0+ 180.0+   1.0  180.0+ 171.0  174.0+   6.0  180.0+   0.5 
#> [321] 180.0+ 180.0+  14.0+ 180.0+  45.0    5.0+ 103.0    3.0+ 180.0+   5.0+
#> [331] 180.0+  97.0  180.0+   7.0    8.0+   2.0+ 172.0+ 180.0+ 180.0+   7.0 
#> [341]   8.0+ 123.0   19.0  180.0+   1.0    1.0   60.0   76.0  180.0+ 132.0 
#> [351]  10.0+ 162.0  180.0+  12.0  180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+
#> [361] 180.0+ 180.0+  28.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+
#> [371] 180.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+  20.0 
#> [381]   0.5  180.0+ 180.0+   8.0   87.0   12.0  180.0+   4.0+  58.0  180.0+
#> [391] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 175.0  180.0+ 180.0+ 180.0+ 180.0+
#> [401]   8.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+  13.0  180.0+   4.0+ 180.0+
#> [411] 104.0+   1.0  180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+
#> [421]   4.0+ 180.0+   7.0  180.0+   3.0  180.0+ 180.0+   6.0  180.0+ 180.0+
#> [431]  17.0+ 180.0+ 174.0+   4.0    7.0    0.5   12.0  180.0+  46.0  180.0+
#> [441]   4.0  180.0+ 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+   8.0 
#> [451] 180.0+  33.0    5.0  180.0+ 180.0+   1.0   12.0  168.0+ 180.0+ 176.0+
#> [461]  18.0  180.0+  47.0  180.0+  11.0    7.0  180.0+   8.0+ 180.0+  32.0 
#> [471] 180.0+  10.0  180.0+ 172.0  119.0   12.0  180.0+   8.0  180.0+ 180.0+
#> [481] 180.0+   4.0+   2.0  180.0+  11.0  152.0+   3.0   29.0   24.0    6.0 
#> [491] 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0   11.0    4.0   10.0+
#> [501] 180.0+   3.0+   2.0+ 180.0+   1.0   43.0    3.0  180.0+ 138.0    8.0 
#> [511]  59.0   17.0  161.0   10.0+ 180.0+  93.0  118.0  180.0+  37.0  180.0+
#> [521] 175.0+   7.0+  22.0   15.0+   5.0+ 180.0+   3.0   71.0   20.0+   1.0 
#> [531]  10.0  180.0+  85.0   10.0    6.0  180.0+   5.0    1.0  180.0+ 180.0+
#> [541] 108.0  180.0+ 125.0    6.0  180.0+ 180.0+ 180.0+ 103.0  180.0+ 177.0+
#> [551]  70.0  180.0+ 180.0+ 180.0+  20.0    8.0+ 180.0+ 180.0+ 180.0+ 177.0+
#> [561]   0.5  180.0+ 180.0+   2.0    3.0+  62.0  180.0+   1.0  180.0+  90.0 
#> [571] 180.0+ 180.0+  89.0    1.0  180.0+ 180.0+ 154.0    2.0  180.0+ 180.0+
#> [581]   4.0+  12.0    5.0+   4.0+  77.0   83.0   88.0  126.0    8.0  180.0+
#> [591] 180.0+ 180.0+   3.0+ 180.0+ 180.0+   4.0+ 180.0+ 174.0    6.0   70.0 
#> [601]  43.0  180.0+ 180.0+ 180.0+   3.0   13.0  180.0+   4.0  177.0    3.0+
#> [611]   6.0+  62.0    6.0+   4.0+  20.0    4.0   65.0  180.0+ 115.0  180.0+
#> [621]   3.0+   8.0+ 180.0+   4.0  119.0  180.0+   1.0+ 180.0+   8.0  110.0 
#> [631]  29.0  180.0+ 180.0+  14.0  180.0+ 180.0+ 145.0    3.0   24.0   50.0 
#> [641]  11.0  126.0  180.0+   4.0  178.0+  36.0   89.0   75.0    1.0   33.0 
#> [651] 158.0  168.0  169.0    7.0  180.0+ 180.0+   4.0  180.0+   1.0+  76.0 
#> [661]  16.0   67.0   12.0    8.0   26.0    7.0+   0.5    2.0  180.0+  15.0+
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
#>   0.8677055 
```
