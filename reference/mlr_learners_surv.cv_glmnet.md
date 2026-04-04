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
#> min 0.00342    44   2.641 0.1159       6
#> 1se 0.06118    13   2.753 0.1280       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  36   1      0        180        1   155
#>   [9,]  35   0      0        180        1   119
#>  [10,]  38  12      1          8        1   120
#>  [11,]  33   6      1          1        1   115
#>  [12,]  38  16      1         10        0   160
#>  [13,]  38  12      1         11        1    92
#>  [14,]  40  12      1          9        0   153
#>  [15,]  42   3      1          1        1   130
#>  [16,]  37   1      1          0        1   146
#>  [17,]  40   2      1          1        1   148
#>  [18,]  42   2      0        180        1   100
#>  [19,]  38   5      1          3        0   125
#>  [20,]  42   2      0          2        0   140
#>  [21,]  40   6      0        180        1   138
#>  [22,]  40  11      1         10        1   120
#>  [23,]  43   3      1          0        1   100
#>  [24,]  41   2      1          1        0   166
#>  [25,]  42   4      0        180        0   162
#>  [26,]  42  12      1         10        1   170
#>  [27,]  43   2      1          1        1   116
#>  [28,]  42   2      0        180        1   124
#>  [29,]  45   3      0        180        1   154
#>  [30,]  41  10      1          8        0   150
#>  [31,]  45   6      0        180        1   170
#>  [32,]  41   5      1          4        1   141
#>  [33,]  44   2      1          1        1   150
#>  [34,]  45   2      0        180        1   140
#>  [35,]  46  15      0        180        0   120
#>  [36,]  46   2      1          1        0   126
#>  [37,]  47   4      1          3        0   118
#>  [38,]  48  15      0        180        1   160
#>  [39,]  46   7      1          2        0   166
#>  [40,]  45   4      1          0        0   124
#>  [41,]  43  10      0        180        0   185
#>  [42,]  47   6      1          0        1   116
#>  [43,]  46  13      1         10        0   100
#>  [44,]  44   0      1          0        1    96
#>  [45,]  43   3      1          0        1   124
#>  [46,]  45   8      1          0        1   117
#>  [47,]  49   5      0         73        1   136
#>  [48,]  45   5      0          5        0   141
#>  [49,]  46   2      1          1        1   122
#>  [50,]  46   6      1          0        1   100
#>  [51,]  44   4      1          0        1   114
#>  [52,]  47   2      0        180        0   108
#>  [53,]  45   5      0        180        1   190
#>  [54,]  46   5      1          3        0   130
#>  [55,]  44   2      0        180        0   142
#>  [56,]  47   3      1          1        1   120
#>  [57,]  47   9      1          6        0   170
#>  [58,]  49   4      0        180        0   117
#>  [59,]  48   2      1          0        0   184
#>  [60,]  47   7      0        180        0   145
#>  [61,]  50   4      1          1        0   125
#>  [62,]  50   6      1          2        1   140
#>  [63,]  46   3      1          1        1   140
#>  [64,]  46   9      1          9        1   122
#>  [65,]  49   2      0          2        0   105
#>  [66,]  51   1      0          1        1   145
#>  [67,]  49  15      1         11        1   160
#>  [68,]  47   2      0        180        0   150
#>  [69,]  49  23      0        179        1   112
#>  [70,]  46   6      1          0        1   156
#>  [71,]  50   7      1          0        1    92
#>  [72,]  51   3      1          2        0   113
#>  [73,]  50   9      0        180        0   130
#>  [74,]  47   6      0        180        1   162
#>  [75,]  51   8      0        180        1   140
#>  [76,]  46   3      0        180        1   120
#>  [77,]  46   1      1          1        0   145
#>  [78,]  50   4      1          1        0   150
#>  [79,]  53   8      0         36        1   160
#>  [80,]  48  17      1         10        0   111
#>  [81,]  47   2      1          1        0   110
#>  [82,]  49   9      1          3        0   102
#>  [83,]  49  15      0        180        1   160
#>  [84,]  53   5      0        180        1   140
#>  [85,]  54  17      1         12        1   102
#>  [86,]  53   5      0         77        0   159
#>  [87,]  53   7      1          0        0   199
#>  [88,]  50   2      0          5        1   106
#>  [89,]  50  10      1          6        0   122
#>  [90,]  53   8      1          7        0   160
#>  [91,]  51  25      1          1        0   202
#>  [92,]  53   4      0          4        0   140
#>  [93,]  52  14      1          7        1   200
#>  [94,]  48   6      0        180        0   160
#>  [95,]  48  11      1         10        0   120
#>  [96,]  53   4      1          0        1   156
#>  [97,]  52   7      1          2        0   154
#>  [98,]  55   6      1          2        1   114
#>  [99,]  55   4      1          2        0   150
#> [100,]  52   4      0        180        1   180
#> [101,]  51  13      1         11        0   145
#> [102,]  50   5      1          4        1   150
#> [103,]  52   4      0        180        0   183
#> [104,]  50   3      0        174        1   153
#> [105,]  55  28      1         13        1   160
#> [106,]  49   6      1          0        1   130
#> [107,]  49   1      0          1        1   110
#> [108,]  50   7      1          1        0   156
#> [109,]  52   5      0        175        1   117
#> [110,]  55   1      0        180        0   127
#> [111,]  55   2      0          2        0   145
#> [112,]  54   1      0        180        0   162
#> [113,]  54   7      1          0        1   100
#> [114,]  55   5      1          4        1   120
#> [115,]  52   8      0        180        0   119
#> [116,]  55   6      0        180        0   170
#> [117,]  52  16      1         14        0   170
#> [118,]  53   4      0        180        1   150
#> [119,]  55   6      1          5        1   138
#> [120,]  54  12      1          0        1   190
#> [121,]  55   2      0        134        1   140
#> [122,]  56   3      0          8        1   139
#> [123,]  55   1      0          2        0   130
#> [124,]  57   3      0          3        0   120
#> [125,]  54   2      1          1        0   135
#> [126,]  52   9      1          3        0   170
#> [127,]  54   2      1          1        1   176
#> [128,]  57   1      0        180        1   156
#> [129,]  57   1      0          1        1   100
#> [130,]  55  11      1          7        0   104
#> [131,]  52  15      1         14        0   130
#> [132,]  56  14      1         11        0   130
#> [133,]  53   3      1          0        1   200
#> [134,]  58   8      0          8        1   130
#> [135,]  54   5      0        180        1   108
#> [136,]  53  21      1         13        1   130
#> [137,]  59   3      1          1        0   172
#> [138,]  57   4      0        180        1   119
#> [139,]  58   6      1          0        1    90
#> [140,]  53  15      1         10        1   130
#> [141,]  54  17      1          8        1   227
#> [142,]  55  13      0        166        1   140
#> [143,]  56   5      0          5        1   150
#> [144,]  53   7      1          0        1   120
#> [145,]  57  11      1         10        1   129
#> [146,]  55   5      0          5        1   131
#> [147,]  58   1      1          1        1   200
#> [148,]  55   5      1          0        0   140
#> [149,]  56   7      1          5        1   120
#> [150,]  55   2      0          2        0   106
#> [151,]  59   9      1          1        1   125
#> [152,]  57   1      0        180        0   148
#> [153,]  60  11      1          9        0   106
#> [154,]  59   3      0        180        0   120
#> [155,]  58   4      1          0        1   160
#> [156,]  57   2      0          2        1   120
#> [157,]  60   5      1          1        0   138
#> [158,]  57   5      0        180        1   130
#> [159,]  55   5      1          0        1   160
#> [160,]  57  10      1          9        0   103
#> [161,]  59   6      1          0        1   140
#> [162,]  59   5      0        180        1   155
#> [163,]  59   4      1          0        1   152
#> [164,]  58  26      1          0        1   189
#> [165,]  58   4      1          3        0   120
#> [166,]  59   2      1          1        0   140
#> [167,]  58  14      1          6        0   190
#> [168,]  61   4      1          3        0   151
#> [169,]  61   9      1          8        0   150
#> [170,]  61   3      1          2        1   102
#> [171,]  61  20      1         13        0   130
#> [172,]  57  13      1         10        0   110
#> [173,]  57   2      1          0        1   116
#> [174,]  58  10      0         10        1   150
#> [175,]  57   4      1          3        0   138
#> [176,]  57  11      0        180        1   150
#> [177,]  56  14      0         45        0   130
#> [178,]  57   3      1          2        0   120
#> [179,]  56  13      1          6        1   158
#> [180,]  56  18      1         11        1   165
#> [181,]  59   9      1          0        1    80
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
#> [192,]  61   8      0         77        0   120
#> [193,]  61  13      0         13        0   210
#> [194,]  58   8      1          5        0   152
#> [195,]  62  10      1          0        1   153
#> [196,]  57   3      1          0        0   100
#> [197,]  61  18      0        170        0   140
#> [198,]  61  28      1          7        0   133
#> [199,]  58   8      1          3        1   150
#> [200,]  57   7      0        169        0   180
#> [201,]  61   7      0          7        1   150
#> [202,]  60   7      0          7        0   147
#> [203,]  59  13      1          2        0   198
#> [204,]  62   4      1          0        0   160
#> [205,]  60  17      1          8        1   140
#> [206,]  58   3      1          0        1   146
#> [207,]  62   4      1          3        0   173
#> [208,]  58   2      0         30        0   202
#> [209,]  59  16      1          9        1   133
#> [210,]  63   6      0         28        1   120
#> [211,]  61   5      0          5        1   110
#> [212,]  62  17      1         10        1   180
#> [213,]  58   7      0        180        1   150
#> [214,]  63   3      1          1        0   180
#> [215,]  61   7      0        180        0   135
#> [216,]  62   3      0        180        1   105
#> [217,]  63   4      0        180        1   190
#> [218,]  63  15      1         10        1   126
#> [219,]  64   4      0        180        0   130
#> [220,]  63   4      1          1        0   155
#> [221,]  59   8      0        180        1   140
#> [222,]  61   9      1          9        1   150
#> [223,]  62   7      0          7        0   150
#> [224,]  59   1      0         22        1   162
#> [225,]  59   4      0        180        0   196
#> [226,]  60   7      0          7        0   140
#> [227,]  59   5      1          1        0   148
#> [228,]  65  13      0        180        1   100
#> [229,]  63   1      0          1        0   162
#> [230,]  62   6      0        180        0   170
#> [231,]  61  15      1         13        0   170
#> [232,]  59   4      0          4        0   149
#> [233,]  60   3      0          3        0   168
#> [234,]  64  10      1          9        0   160
#> [235,]  62   6      0          6        0   120
#> [236,]  63  12      1         10        0   200
#> [237,]  59  10      0        180        1   130
#> [238,]  60   8      0         17        1   130
#> [239,]  61   6      1          1        1   117
#> [240,]  66   1      1          0        1   120
#> [241,]  63  10      1          0        1   148
#> [242,]  63  14      1          9        0   123
#> [243,]  65  36      1         11        0   140
#> [244,]  63   4      1          3        0   162
#> [245,]  66   3      1          1        0   127
#> [246,]  61  10      1          2        1   194
#> [247,]  63  12      1          9        0   114
#> [248,]  66   5      1          0        1   110
#> [249,]  64   0      0          0        1    90
#> [250,]  60   6      0        180        0   130
#> [251,]  64  21      1         10        0   190
#> [252,]  61  12      1         11        0   154
#> [253,]  64   9      0        180        0   150
#> [254,]  61   4      0        180        1   113
#> [255,]  65   3      0        180        1   190
#> [256,]  63  16      1          7        1   110
#> [257,]  64   7      0        180        1   120
#> [258,]  66   6      1          1        1   130
#> [259,]  63  12      0         12        1   150
#> [260,]  62   3      1          1        1   199
#> [261,]  65   6      0          9        0   112
#> [262,]  64   2      0          2        0   201
#> [263,]  66  18      1          5        0   142
#> [264,]  62   9      0        180        0   145
#> [265,]  61  15      1         10        0   130
#> [266,]  63   9      1          8        1   160
#> [267,]  63   3      1          2        0   120
#> [268,]  65   8      1          0        1   140
#> [269,]  65  15      1         11        1   160
#> [270,]  68   5      1          4        1   150
#> [271,]  64  13      1         12        1   150
#> [272,]  66   7      1          0        1   115
#> [273,]  66  13      1          0        0   118
#> [274,]  64  14      1         13        1   150
#> [275,]  64   0      0          0        1   148
#> [276,]  66   6      1          0        1   140
#> [277,]  65   2      1          1        1   170
#> [278,]  68   1      0        180        1   166
#> [279,]  64  10      1          9        1   110
#> [280,]  68   5      0          5        1    90
#> [281,]  63  10      0         16        1   160
#> [282,]  66  14      0        180        0   130
#> [283,]  68  18      0        180        1   260
#> [284,]  65  17      1         14        1   100
#> [285,]  63   8      1          1        1   162
#> [286,]  63   1      1          0        1   155
#> [287,]  68  11      0        180        0   160
#> [288,]  68  14      0         79        0   172
#> [289,]  66  11      1          0        0   100
#> [290,]  69  12      0         15        1   140
#> [291,]  66  15      1         13        1   160
#> [292,]  63   2      0        180        0   150
#> [293,]  69  21      1         10        0   180
#> [294,]  69   6      0        180        1   100
#> [295,]  63   8      0        180        1   120
#> [296,]  65   8      1          0        1    90
#> [297,]  66   3      0          3        1   138
#> [298,]  69   1      1          0        0   170
#> [299,]  68  10      1         10        1   150
#> [300,]  63   2      1          0        0    99
#> [301,]  67   2      0        180        0   184
#> [302,]  65   6      0          6        0    80
#> [303,]  66  19      1         12        1   150
#> [304,]  67  12      1         12        0   160
#> [305,]  69   6      0         99        1   140
#> [306,]  64   4      0        179        0   160
#> [307,]  66   4      0        180        1   130
#> [308,]  64  11      0         11        0   125
#> [309,]  64   4      0        180        1   140
#> [310,]  67   2      0         18        0   131
#> [311,]  66   7      1          5        1   131
#> [312,]  68   4      1          0        1   160
#> [313,]  69   4      1          3        1   150
#> [314,]  65  13      1         12        1   130
#> [315,]  69  17      1         10        0   140
#> [316,]  69   8      0         93        0   140
#> [317,]  64  21      0         21        1   155
#> [318,]  66   6      0        180        0   140
#> [319,]  65   1      0          1        1   120
#> [320,]  68  18      1          0        1   160
#> [321,]  65   6      0        101        1   115
#> [322,]  68   4      0          4        1   190
#> [323,]  71   3      0          5        0   112
#> [324,]  68   7      0        150        0   210
#> [325,]  71  20      1          0        1   160
#> [326,]  67   2      0        180        0   128
#> [327,]  70   4      1          0        1   180
#> [328,]  69   8      0        180        1   153
#> [329,]  70  14      0        171        0   166
#> [330,]  66   4      0        180        0   130
#> [331,]  68   7      1          0        1   150
#> [332,]  69   3      1          2        0   151
#> [333,]  67  14      1         13        0   130
#> [334,]  65  14      1         13        1   150
#> [335,]  69   8      0        180        1   180
#> [336,]  71   7      0          7        0   230
#> [337,]  69   3      0          3        1   130
#> [338,]  70  22      1         13        0   103
#> [339,]  67   1      0         36        1   104
#> [340,]  67   5      0          5        0   130
#> [341,]  68   6      0        180        0   145
#> [342,]  69   8      1          5        1   195
#> [343,]  72   3      1          0        1   132
#> [344,]  67   3      0        180        0   110
#> [345,]  69  19      0        180        0   130
#> [346,]  68  18      0         18        1   100
#> [347,]  69  11      1          0        1   120
#> [348,]  66   2      0        180        0   130
#> [349,]  69   4      1          3        0   132
#> [350,]  69   8      1          2        0   121
#> [351,]  70   9      0        180        1   142
#> [352,]  72   5      1          4        0   170
#> [353,]  69   1      0          1        1   110
#> [354,]  67   1      0          1        1    60
#> [355,]  67   4      0         60        1   136
#> [356,]  69   5      0         76        0   120
#> [357,]  72  13      1         11        1   195
#> [358,]  68  10      1          8        1   160
#> [359,]  66  24      1         13        0   130
#> [360,]  70  35      1          0        1   105
#> [361,]  72  30      1          0        1   145
#> [362,]  70   7      0          7        0   102
#> [363,]  73  20      1          0        1   170
#> [364,]  71   6      0          9        0   120
#> [365,]  70  11      0        180        1   210
#> [366,]  72  19      1          8        0   120
#> [367,]  67   5      1          0        1   147
#> [368,]  70   5      0        180        0   150
#> [369,]  72   2      0          2        1   100
#> [370,]  67   4      1          1        0   134
#> [371,]  72   6      1          5        0   115
#> [372,]  70   3      0        180        0   121
#> [373,]  68   4      1          3        0   210
#> [374,]  69  16      1         10        1   140
#> [375,]  69   8      1          1        0   164
#> [376,]  72  16      1          1        1   130
#> [377,]  70   4      0        180        0   180
#> [378,]  69   1      1          0        0   155
#> [379,]  72   8      1          1        1   150
#> [380,]  71   2      1          0        1   180
#> [381,]  73   7      0          7        1   140
#> [382,]  68  15      1         13        1   130
#> [383,]  70   3      0          3        1   159
#> [384,]  70  13      1          9        0   100
#> [385,]  71   3      1          1        0   150
#> [386,]  68   9      0        180        1   120
#> [387,]  71  20      1         10        0   140
#> [388,]  74   0      1          0        1    90
#> [389,]  71  17      1         11        0   160
#> [390,]  71   8      1          7        0   149
#> [391,]  71   3      1          2        1   190
#> [392,]  74   4      0          4        0   120
#> [393,]  73   4      0         58        1   160
#> [394,]  72   5      1          3        1   160
#> [395,]  70   3      0        180        1   154
#> [396,]  73   6      0        180        0   110
#> [397,]  71   7      1          2        0   143
#> [398,]  72   8      1          0        1   140
#> [399,]  74   3      0          3        1   150
#> [400,]  73  17      1         11        0   140
#> [401,]  71  13      1          8        0   121
#> [402,]  69   2      1          1        1    80
#> [403,]  70   4      1          0        1   140
#> [404,]  71  14      1         13        1   170
#> [405,]  72  10      1          8        1   153
#> [406,]  69   7      0        180        1   144
#> [407,]  72  15      1         13        0   156
#> [408,]  70   8      0          8        0   120
#> [409,]  71  10      1          9        1   120
#> [410,]  75   1      0          1        0   133
#> [411,]  75   2      1          1        0   145
#> [412,]  72  10      1          9        1   160
#> [413,]  73  10      1         10        1   120
#> [414,]  73   1      0          1        1    80
#> [415,]  75   9      1          7        0   140
#> [416,]  75  13      1          1        1   130
#> [417,]  71  11      1          8        0   110
#> [418,]  71   4      0          4        0   134
#> [419,]  72  15      1         12        1   120
#> [420,]  73  10      1          8        0   120
#> [421,]  70   7      1          4        0   184
#> [422,]  73  10      0        180        0   162
#> [423,]  73   5      1          3        1   112
#> [424,]  73  12      1         12        1   140
#> [425,]  72   2      0        180        0   120
#> [426,]  75   1      0        180        1   140
#> [427,]  73   5      0        180        0   126
#> [428,]  73   4      0        180        0   124
#> [429,]  76   3      1          0        1   120
#> [430,]  71  32      1         12        1   107
#> [431,]  72   5      0        180        0   154
#> [432,]  72   3      0        180        0   160
#> [433,]  77  11      0         11        1   150
#> [434,]  75   3      1          1        0   180
#> [435,]  72   7      1          2        0   142
#> [436,]  73  15      0         15        1   160
#> [437,]  71  16      0        180        0   140
#> [438,]  74   7      0        180        1   150
#> [439,]  74   3      0          3        1   128
#> [440,]  74   2      1          1        0   140
#> [441,]  75  23      1         14        1   110
#> [442,]  74   2      0        180        0   190
#> [443,]  72   4      0         85        1   120
#> [444,]  72   4      1          3        0   160
#> [445,]  76  17      1          0        1   200
#> [446,]  73   4      1          3        1   125
#> [447,]  76  13      1         10        0   110
#> [448,]  75   7      0          7        0   190
#> [449,]  75   0      0          0        1   130
#> [450,]  75  12      0         12        1   160
#> [451,]  74   6      0        180        0   160
#> [452,]  76   4      0          4        1   155
#> [453,]  73   1      0         52        1   105
#> [454,]  73   0      0        180        0   156
#> [455,]  74  10      1          0        1   135
#> [456,]  77   5      1          0        0   123
#> [457,]  73  10      1          9        0   146
#> [458,]  77  12      0        180        0   130
#> [459,]  77   1      1          0        1    90
#> [460,]  76  12      1         11        1   120
#> [461,]  78   5      1          0        1   170
#> [462,]  73   7      1          0        0   174
#> [463,]  74   6      0         79        1   140
#> [464,]  75   3      1          1        1   171
#> [465,]  74   9      1          8        0   200
#> [466,]  75   6      0        180        0   150
#> [467,]  74   2      1          0        1   130
#> [468,]  76  29      0         47        0    90
#> [469,]  73   8      1          1        1   162
#> [470,]  74   2      0        180        0   100
#> [471,]  78   7      0          7        1   133
#> [472,]  74  15      0        180        1   172
#> [473,]  78   8      1          6        1   110
#> [474,]  74   7      0          7        0   161
#> [475,]  76  13      1          1        1   170
#> [476,]  79   6      0        180        0   170
#> [477,]  80  10      1          6        1   147
#> [478,]  78   0      0        180        1   212
#> [479,]  78  15      0        180        1   270
#> [480,]  80   8      0          8        1   120
#> [481,]  75  13      1          6        0   150
#> [482,]  76   1      0          1        1    83
#> [483,]  79   4      0         80        0   145
#> [484,]  78  12      1          9        0   150
#> [485,]  78   2      1          1        0   130
#> [486,]  77   2      1          0        1   143
#> [487,]  78  10      0        180        1   130
#> [488,]  75  11      1          4        0   162
#> [489,]  75   3      0          3        0     0
#> [490,]  76   7      0         29        1   150
#> [491,]  77  24      0         24        1   160
#> [492,]  80   9      0         23        1   128
#> [493,]  80   6      0          6        1   150
#> [494,]  78   6      1          0        1   240
#> [495,]  78  11      1          1        1   140
#> [496,]  79   2      1          0        1   121
#> [497,]  78  14      1          0        1   140
#> [498,]  76   4      0          4        1   160
#> [499,]  79   4      0          4        1   125
#> [500,]  76  12      1         10        1   127
#> [501,]  80   3      1          0        1   120
#> [502,]  75   2      1          1        1   204
#> [503,]  78  11      0        180        1   135
#> [504,]  78   7      1          0        1   110
#> [505,]  77   7      0        180        1   170
#> [506,]  77   6      0          6        1   144
#> [507,]  79   4      1          0        1   120
#> [508,]  81   1      0        180        0   120
#> [509,]  80  15      1         12        1   150
#> [510,]  77   9      1          4        0   141
#> [511,]  82   5      0          8        1   120
#> [512,]  80  40      1          0        1   138
#> [513,]  80  17      1         12        0   100
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
#> [531,]  80   1      0          1        0   100
#> [532,]  77  10      1          8        1   130
#> [533,]  77   5      0         85        0   188
#> [534,]  80   2      1          1        0   168
#> [535,]  79   6      0          6        0   152
#> [536,]  80   6      1          0        1   119
#> [537,]  80   5      0          5        1   130
#> [538,]  82   1      1          0        1    82
#> [539,]  79  10      0        180        1   150
#> [540,]  77   4      0        180        1    98
#> [541,]  84  22      1         10        0   180
#> [542,]  79   4      0          4        1   121
#> [543,]  80   6      0          6        1   110
#> [544,]  82   5      0        180        0   110
#> [545,]  83   5      0        180        0   148
#> [546,]  81   5      0        177        0    41
#> [547,]  78  23      1         10        1   145
#> [548,]  79   4      0          4        1   183
#> [549,]  78   9      1          4        1   120
#> [550,]  79   1      0        180        1   170
#> [551,]  81  15      0        180        1   140
#> [552,]  80   7      1          0        1   146
#> [553,]  84   5      1          1        1    85
#> [554,]  83   8      0          8        0   115
#> [555,]  81  16      0         16        1   110
#> [556,]  80   6      1          0        1   150
#> [557,]  80  11      1          8        0   110
#> [558,]  81   8      0        180        0   146
#> [559,]  80   8      1          7        0   160
#> [560,]  79   0      1          0        1    96
#> [561,]  85   4      0        180        0    90
#> [562,]  83   2      0          2        1   155
#> [563,]  84   4      0        167        0   198
#> [564,]  80   3      1          1        1   230
#> [565,]  82  23      1          0        0   110
#> [566,]  84   4      0          4        1    85
#> [567,]  81   1      0          1        1   150
#> [568,]  84   1      0         38        1   205
#> [569,]  83   3      0        180        0   174
#> [570,]  85   3      1          2        1   160
#> [571,]  80  13      1          8        1   140
#> [572,]  84   4      0         89        1   129
#> [573,]  80   6      0         71        1   189
#> [574,]  83   1      0          1        1   100
#> [575,]  80  30      1         13        0   220
#> [576,]  83   9      0        180        0   198
#> [577,]  79  14      1          0        0   110
#> [578,]  83   3      0        114        0    98
#> [579,]  83   2      0        154        0   130
#> [580,]  85   9      1          6        1   160
#> [581,]  83   1      0        180        0   160
#> [582,]  81   1      0          1        1   145
#> [583,]  81  12      0         12        1   163
#> [584,]  82  16      1          8        0   103
#> [585,]  82   5      1          0        1   146
#> [586,]  81   4      0          4        0   160
#> [587,]  82   3      1          2        0   130
#> [588,]  82  15      1          0        0   183
#> [589,]  86   8      0          8        1   132
#> [590,]  81  16      1          9        0   180
#> [591,]  84   6      0        165        0   145
#> [592,]  82   9      0        180        1   134
#> [593,]  84   3      0        180        1   120
#> [594,]  81  13      0        180        0   152
#> [595,]  85   3      0          3        1   118
#> [596,]  81   4      0        180        0   160
#> [597,]  83   9      0        180        1   149
#> [598,]  82   1      0        180        1   193
#> [599,]  86  12      1          0        1   132
#> [600,]  86   6      1          0        1   140
#> [601,]  84  16      0         70        1   150
#> [602,]  84   3      1          2        0   125
#> [603,]  86   2      0        180        1   169
#> [604,]  84   3      0          3        1   121
#> [605,]  83  13      1         12        0   170
#> [606,]  84   7      1          2        0   148
#> [607,]  87   2      0        180        0   113
#> [608,]  84   9      0         92        1   110
#> [609,]  84   3      0        180        1   170
#> [610,]  82   4      0          4        0   130
#> [611,]  86  13      0        177        0   163
#> [612,]  86   6      0          6        1   117
#> [613,]  86   6      1          1        0   112
#> [614,]  88   4      0          4        0   100
#> [615,]  83  20      1          3        1   150
#> [616,]  85  22      0         22        1   184
#> [617,]  83   9      0         65        1   150
#> [618,]  86   9      1          7        1   142
#> [619,]  87   2      0        180        1   130
#> [620,]  86   6      0         46        0   173
#> [621,]  88   3      0        115        0   110
#> [622,]  88   2      0        180        1    68
#> [623,]  83   3      0          3        1   130
#> [624,]  89   4      0          4        1   153
#> [625,]  87   6      0        180        1   110
#> [626,]  84   8      0        180        1   119
#> [627,]  85   8      0          8        1   136
#> [628,]  84   2      0        110        1   174
#> [629,]  87  29      0         29        1    97
#> [630,]  87  15      1          9        1   138
#> [631,]  89  10      0         46        1   170
#> [632,]  90  14      0         14        1   100
#> [633,]  88   1      0          1        0   135
#> [634,]  86   4      0        180        1   145
#> [635,]  87   6      1          0        0   125
#> [636,]  91  10      0        145        0   135
#> [637,]  86   3      1          0        1    80
#> [638,]  88   7      0         24        0   119
#> [639,]  88   8      0         50        1   154
#> [640,]  90  11      1         10        1   186
#> [641,]  87   6      0        126        1   168
#> [642,]  86  10      0        180        1   137
#> [643,]  87   5      0         36        1   150
#> [644,]  90   5      1          0        1   125
#> [645,]  89   3      1          1        1   160
#> [646,]  88   5      0        158        0   100
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
#> [657,]  90  19      1         11        1   129
#> [658,]  90   1      0          1        1   118
#> [659,]  91   2      0          2        1   116
#> [660,]  91   1      0        180        0   158
#> [661,]  90   3      0         67        0   162
#> [662,]  96   3      0         12        1    97
#> [663,]  95   8      1          5        1   150
#> [664,]  94   3      0         26        1   144
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+  12.0 
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+
#>  [21] 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+   2.0    1.0  179.0+ 180.0+ 179.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  36.0   88.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+   5.0  180.0+ 180.0+
#>  [91] 180.0+   4.0+  85.0  180.0+ 180.0+ 166.0+   7.0+   6.0+ 180.0+ 180.0+
#> [101]  13.0+ 171.0+ 180.0+ 174.0+  28.0    6.0+   1.0  180.0+ 175.0+ 180.0+
#> [111]   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+  16.0  180.0+ 180.0+  12.0+
#> [121] 134.0+   8.0    2.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+
#> [131] 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [141] 171.0+ 166.0+   5.0+ 180.0+ 180.0+   5.0+   1.0  180.0+ 180.0+   2.0+
#> [151] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+
#> [161]  64.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+ 180.0+ 180.0+   3.0 
#> [171] 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+  45.0    3.0+ 180.0+ 180.0+
#> [181]   9.0+ 172.0+ 172.0+  24.0  180.0+   8.0  180.0+ 180.0+  15.0  180.0+
#> [191] 180.0+  77.0   13.0+   8.0+ 180.0+ 180.0+ 170.0   94.0  180.0+ 169.0 
#> [201]   7.0    7.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+  30.0  180.0+  28.0 
#> [211]   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [221] 180.0+ 180.0+   7.0+  22.0  180.0+   7.0+ 180.0+ 180.0+   1.0  180.0+
#> [231] 180.0+   4.0+   3.0+ 167.0    6.0+ 180.0+ 180.0+  17.0  180.0+ 180.0+
#> [241] 180.0+  14.0+  36.0  180.0+   3.0+  88.0   12.0  180.0+   0.5  180.0+
#> [251] 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+
#> [261]   9.0    2.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+  15.0  180.0+   5.0+
#> [271]  13.0  179.0+ 166.0+  14.0+   0.5+ 180.0+ 175.0+ 180.0+ 180.0+   5.0 
#> [281]  16.0  180.0+ 180.0+ 180.0+ 180.0+   1.0+ 180.0+  79.0  180.0+  15.0 
#> [291] 180.0+ 180.0+ 174.0+ 180.0+ 180.0+   8.0+   3.0  175.0   10.0  180.0+
#> [301] 180.0+   6.0   19.0+  12.0   99.0  179.0+ 180.0+  11.0+ 180.0+  18.0 
#> [311]   7.0+ 180.0+ 152.0+ 180.0+ 180.0+  93.0   21.0+ 180.0+   1.0   18.0+
#> [321] 101.0    4.0    5.0  150.0  180.0+ 180.0+ 180.0+ 180.0+ 171.0  180.0+
#> [331] 180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+   3.0+ 180.0+  36.0    5.0+
#> [341] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  18.0  180.0+ 180.0+ 180.0+   8.0+
#> [351] 180.0+ 180.0+   1.0    1.0   60.0   76.0  132.0   10.0+ 180.0+ 180.0+
#> [361] 162.0    7.0+ 124.0    9.0  180.0+ 180.0+ 180.0+ 180.0+   2.0   76.0 
#> [371] 180.0+ 180.0+ 180.0+  16.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [381]   7.0+  15.0    3.0+  13.0+   3.0+ 180.0+  20.0    0.5  180.0+   8.0 
#> [391]   3.0    4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+
#> [401] 175.0    2.0  180.0+  14.0+  10.0+ 180.0+ 180.0+   8.0+ 179.0+   1.0 
#> [411] 180.0+ 159.0   15.0    1.0  180.0+  13.0  180.0+   4.0+ 180.0+  10.0 
#> [421] 104.0+ 180.0+   5.0   12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+
#> [431] 180.0+ 180.0+  11.0+ 180.0+   7.0   15.0+ 180.0+ 180.0+   3.0  180.0+
#> [441] 180.0+ 180.0+  85.0  180.0+  17.0+ 180.0+ 174.0+   7.0    0.5   12.0 
#> [451] 180.0+   4.0   52.0  180.0+ 180.0+   5.0  180.0+ 180.0+   1.0   12.0 
#> [461] 180.0+   7.0+  79.0    3.0  168.0+ 180.0+ 176.0+  47.0  180.0+ 180.0+
#> [471]   7.0  180.0+   8.0+   7.0  180.0+ 180.0+  10.0  180.0+ 180.0+   8.0 
#> [481] 180.0+   1.0   80.0  180.0+ 180.0+   2.0  180.0+ 152.0+   3.0   29.0 
#> [491]  24.0   23.0    6.0  180.0+ 180.0+ 180.0+ 180.0+   4.0    4.0  180.0+
#> [501]   3.0+   2.0+ 180.0+  43.0  180.0+   6.0  138.0  180.0+ 180.0+  71.0 
#> [511]   8.0   40.0   17.0  161.0   10.0+ 180.0+  93.0  118.0  173.0  180.0+
#> [521]  37.0  175.0+  22.0   15.0+   5.0+ 180.0+   3.0  171.0+ 166.0+  20.0+
#> [531]   1.0   10.0   85.0   10.0    6.0+   6.0    5.0    1.0  180.0+ 180.0+
#> [541] 180.0+   4.0    6.0  180.0+ 180.0+ 177.0+  70.0    4.0  180.0+ 180.0+
#> [551] 180.0+   7.0+ 180.0+   8.0+  16.0  180.0+ 180.0+ 180.0+ 180.0+   0.5 
#> [561] 180.0+   2.0  167.0    3.0+  62.0    4.0    1.0   38.0  180.0+ 180.0+
#> [571] 180.0+  89.0   71.0    1.0   30.0  180.0+ 180.0+ 114.0  154.0  180.0+
#> [581] 180.0+   1.0   12.0   16.0+   5.0+   4.0+   3.0   83.0    8.0  180.0+
#> [591] 165.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0 
#> [601]  70.0  180.0+ 180.0+   3.0   13.0  180.0+ 180.0+  92.0  180.0+   4.0 
#> [611] 177.0    6.0+   6.0+   4.0+  20.0   22.0   65.0   11.0  180.0+  46.0 
#> [621] 115.0  180.0+   3.0+   4.0  180.0+ 180.0+   8.0  110.0   29.0  180.0+
#> [631]  46.0   14.0    1.0+ 180.0+  25.0  145.0    3.0   24.0   50.0   11.0 
#> [641] 126.0  180.0+  36.0   89.0    3.0+ 158.0  180.0+ 168.0  169.0   52.0 
#> [651]   7.0    4.0    0.5  180.0+ 180.0+   4.0  180.0+   1.0+   2.0  180.0+
#> [661]  67.0   12.0    8.0   26.0   53.0    7.0+   0.5    2.0  180.0+   3.0 
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
#>   0.8067564 
```
