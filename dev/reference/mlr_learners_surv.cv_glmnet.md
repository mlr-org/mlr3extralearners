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
#> min 0.00363    44   2.928 0.1040       6
#> 1se 0.05916    14   3.022 0.1049       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  33   2      0          2        0   150
#>   [2,]  34   5      0          5        0   120
#>   [3,]  35   2      0        180        0   121
#>   [4,]  38   2      0        115        0   150
#>   [5,]  35   0      0        180        1   119
#>   [6,]  36   5      1          0        1   115
#>   [7,]  40  12      1          9        0   153
#>   [8,]  42   3      1          1        1   130
#>   [9,]  37   1      1          0        1   146
#>  [10,]  42   2      0        180        1   100
#>  [11,]  38   5      1          3        0   125
#>  [12,]  42   2      0          2        0   140
#>  [13,]  40   6      0        180        1   138
#>  [14,]  40  11      1         10        1   120
#>  [15,]  42   2      0        180        0   100
#>  [16,]  41   2      1          1        0   166
#>  [17,]  40   3      1          1        0   170
#>  [18,]  42  12      1         10        1   170
#>  [19,]  44   5      1          1        0   170
#>  [20,]  45   3      0        180        1   154
#>  [21,]  41  10      1          8        0   150
#>  [22,]  44   3      0        180        0   141
#>  [23,]  45   9      1          7        0   110
#>  [24,]  45   6      0        180        1   170
#>  [25,]  41   5      1          4        1   141
#>  [26,]  45   2      0        180        1   140
#>  [27,]  46   2      1          1        0   126
#>  [28,]  47   4      1          3        0   118
#>  [29,]  48  15      0        180        1   160
#>  [30,]  45   3      0        150        0   130
#>  [31,]  46   7      1          2        0   166
#>  [32,]  43  29      0        180        1   180
#>  [33,]  43  10      0        180        0   185
#>  [34,]  47   6      1          0        1   116
#>  [35,]  46  13      1         10        0   100
#>  [36,]  44   0      1          0        1    96
#>  [37,]  47   4      1          3        1   160
#>  [38,]  45   8      1          0        1   117
#>  [39,]  45   5      0          5        0   141
#>  [40,]  46   6      1          0        1   100
#>  [41,]  44   4      1          0        1   114
#>  [42,]  47   2      0        180        0   108
#>  [43,]  44   9      1          8        1   135
#>  [44,]  45   5      0        180        1   190
#>  [45,]  46   5      1          3        0   130
#>  [46,]  44   2      0        180        0   142
#>  [47,]  45   9      1          0        1   145
#>  [48,]  47   3      1          1        1   120
#>  [49,]  48   3      0        180        0   154
#>  [50,]  48  12      1         11        0   200
#>  [51,]  46   3      1          0        1   119
#>  [52,]  49   4      0        180        0   117
#>  [53,]  50   1      1          0        1   129
#>  [54,]  48   2      1          0        0   184
#>  [55,]  50   6      1          2        1   140
#>  [56,]  49   7      1          7        1   110
#>  [57,]  46   9      1          9        1   122
#>  [58,]  51   1      0          1        1   145
#>  [59,]  47   2      0        180        0   150
#>  [60,]  49  23      0        179        1   112
#>  [61,]  52   2      0        180        1   170
#>  [62,]  50   7      1          0        1    92
#>  [63,]  50   4      0          4        1   100
#>  [64,]  50   1      1          0        0   150
#>  [65,]  49   7      1          4        1    90
#>  [66,]  47   8      0        180        0   160
#>  [67,]  51   8      0        180        1   140
#>  [68,]  52   2      0        180        0   155
#>  [69,]  46   3      0        180        1   120
#>  [70,]  46   1      1          1        0   145
#>  [71,]  47   2      1          1        0   110
#>  [72,]  52   4      1          4        0   152
#>  [73,]  49  15      0        180        1   160
#>  [74,]  54  17      1         12        1   102
#>  [75,]  53   5      0         77        0   159
#>  [76,]  53   7      1          0        0   199
#>  [77,]  54   6      1          3        0   129
#>  [78,]  51   3      1          1        0   140
#>  [79,]  50   2      0          5        1   106
#>  [80,]  50  10      1          6        0   122
#>  [81,]  50  14      1         13        0   170
#>  [82,]  48   3      1          2        0   150
#>  [83,]  51  25      1          1        0   202
#>  [84,]  53   4      0          4        0   140
#>  [85,]  52  14      1          7        1   200
#>  [86,]  48   6      0        180        0   160
#>  [87,]  53   4      1          0        1   156
#>  [88,]  51  13      0         99        1   160
#>  [89,]  54   9      1          0        1   138
#>  [90,]  49  16      0         16        0   125
#>  [91,]  55   3      1          1        0   150
#>  [92,]  54  23      1         10        0   131
#>  [93,]  52   7      1          2        0   154
#>  [94,]  54   9      1          1        0   130
#>  [95,]  55   4      1          2        0   150
#>  [96,]  52   4      0        180        1   180
#>  [97,]  50   5      1          4        1   150
#>  [98,]  55  28      1         13        1   160
#>  [99,]  49   1      0          1        1   110
#> [100,]  50   7      1          1        0   156
#> [101,]  53   9      0          9        1    95
#> [102,]  50   7      1          0        1   127
#> [103,]  56   4      1          1        1   130
#> [104,]  52   5      0        175        1   117
#> [105,]  55   2      0          2        0   145
#> [106,]  54   7      1          0        1   100
#> [107,]  56   3      0        180        1   193
#> [108,]  55   5      1          4        1   120
#> [109,]  52   8      0        180        0   119
#> [110,]  53  18      1          9        1   150
#> [111,]  54   3      0        180        1   180
#> [112,]  52  16      0         16        0   152
#> [113,]  53  10      1          9        0   172
#> [114,]  52  16      1         14        0   170
#> [115,]  53   4      0        180        1   150
#> [116,]  55   6      0        180        1   100
#> [117,]  55   2      0        134        1   140
#> [118,]  54   3      0        180        0   128
#> [119,]  56   3      0          8        1   139
#> [120,]  57   3      0          3        0   120
#> [121,]  52   9      1          3        0   170
#> [122,]  54   2      1          1        1   176
#> [123,]  57   5      1          3        1   138
#> [124,]  57   1      0        180        1   156
#> [125,]  57   1      0          1        1   100
#> [126,]  56   4      1          0        1   140
#> [127,]  52   2      0        180        0   140
#> [128,]  56  14      1         11        0   130
#> [129,]  57  10      0        180        1   170
#> [130,]  58   8      0          8        1   130
#> [131,]  55   3      1          1        1   156
#> [132,]  57   0      0          0        1   150
#> [133,]  59   3      1          1        0   172
#> [134,]  57   4      0        180        1   119
#> [135,]  54  17      1          8        1   227
#> [136,]  55   9      1          2        1   147
#> [137,]  55  13      0        166        1   140
#> [138,]  56   5      0          5        1   150
#> [139,]  57   4      1          2        1   185
#> [140,]  53   4      0        147        1   145
#> [141,]  53   7      1          0        1   120
#> [142,]  57  11      1         10        1   129
#> [143,]  56   4      0          4        0   164
#> [144,]  59  15      1         10        0   140
#> [145,]  55   5      1          0        0   140
#> [146,]  56   7      1          5        1   120
#> [147,]  55   2      0          2        0   106
#> [148,]  59   9      1          1        1   125
#> [149,]  57   1      0        180        0   148
#> [150,]  60  11      1          9        0   106
#> [151,]  57   2      0          2        1   120
#> [152,]  57   5      0        180        1   130
#> [153,]  58  11      1          9        1   124
#> [154,]  55   5      1          0        1   160
#> [155,]  59   6      1          0        1   140
#> [156,]  59   5      0        180        1   155
#> [157,]  59   4      1          0        1   152
#> [158,]  58  26      1          0        1   189
#> [159,]  58   4      1          3        0   120
#> [160,]  60   0      1          0        1    80
#> [161,]  58  14      1          6        0   190
#> [162,]  61   4      1          3        0   151
#> [163,]  58   1      0          1        1   100
#> [164,]  61  20      1         13        0   130
#> [165,]  57  13      1         10        0   110
#> [166,]  58  10      0         10        1   150
#> [167,]  57   4      1          3        0   138
#> [168,]  57  11      0        180        1   150
#> [169,]  61   3      0         17        0   143
#> [170,]  56  14      0         45        0   130
#> [171,]  57   3      1          2        0   120
#> [172,]  58  19      1         13        1   140
#> [173,]  59   9      1          0        1    80
#> [174,]  58  11      0        172        1   135
#> [175,]  60  12      1          0        1   114
#> [176,]  55   9      1          7        1   135
#> [177,]  61   4      1          0        1   115
#> [178,]  56   8      1          8        0   120
#> [179,]  59  11      1          8        1   190
#> [180,]  57   1      0          1        0   126
#> [181,]  57  15      1         13        1   110
#> [182,]  59   5      1          2        0   182
#> [183,]  59  10      0        180        0   160
#> [184,]  61  13      0         13        0   210
#> [185,]  62   7      1          2        1   180
#> [186,]  57   3      1          0        0   100
#> [187,]  61  18      0        170        0   140
#> [188,]  61  28      1          7        0   133
#> [189,]  57   7      0        169        0   180
#> [190,]  61   6      0          6        0   134
#> [191,]  59  13      1          2        0   198
#> [192,]  62   4      1          0        0   160
#> [193,]  58   3      1          0        1   146
#> [194,]  62   4      1          3        0   173
#> [195,]  59  16      1          9        1   133
#> [196,]  61   5      0          5        1   110
#> [197,]  57  18      1          9        1    93
#> [198,]  61   5      0          5        1   160
#> [199,]  58  11      1          9        0   179
#> [200,]  57   2      1          1        0   159
#> [201,]  58   7      0        180        1   150
#> [202,]  63   3      1          1        0   180
#> [203,]  63   1      0        180        1   130
#> [204,]  61   7      0        180        0   135
#> [205,]  63   4      1          3        0   222
#> [206,]  63   4      0        180        1   190
#> [207,]  63  15      1         10        1   126
#> [208,]  64   4      0        180        0   130
#> [209,]  63   4      1          1        0   155
#> [210,]  60  18      1         13        0   132
#> [211,]  61   9      1          9        1   150
#> [212,]  58   9      1          9        0   110
#> [213,]  62   7      0          7        0   150
#> [214,]  58   2      0        180        0   127
#> [215,]  60   7      1          5        1   141
#> [216,]  59   5      1          1        0   148
#> [217,]  65  13      0        180        1   100
#> [218,]  63   1      0          1        0   162
#> [219,]  63   1      0          1        0   130
#> [220,]  62   6      0        180        0   170
#> [221,]  61  15      1         13        0   170
#> [222,]  60   3      0          3        0   168
#> [223,]  63  12      1         10        0   200
#> [224,]  59  10      0        180        1   130
#> [225,]  61   6      1          1        1   117
#> [226,]  64  12      1         11        0   160
#> [227,]  63  14      1          9        0   123
#> [228,]  63   4      1          3        0   162
#> [229,]  66   3      1          1        0   127
#> [230,]  61  10      1          2        1   194
#> [231,]  64  32      1          9        1   160
#> [232,]  63  12      1          9        0   114
#> [233,]  63   7      0        180        0   120
#> [234,]  66   5      1          0        1   110
#> [235,]  65   8      1          0        0   168
#> [236,]  64   0      0          0        1    90
#> [237,]  61  12      1         11        0   154
#> [238,]  64   9      0        180        0   150
#> [239,]  61   4      0        180        1   113
#> [240,]  65   3      0        180        1   190
#> [241,]  66   6      1          1        1   130
#> [242,]  62   3      1          1        1   199
#> [243,]  65   6      0          9        0   112
#> [244,]  65   3      1          0        1    80
#> [245,]  63   5      1          4        0   170
#> [246,]  63   2      1          1        0   180
#> [247,]  62  13      1         11        0   180
#> [248,]  67  11      0         11        1   100
#> [249,]  64   2      0          2        0   201
#> [250,]  66  18      1          5        0   142
#> [251,]  66  16      1         11        1   169
#> [252,]  61  14      1          5        0   140
#> [253,]  63   9      1          8        1   160
#> [254,]  63   3      1          2        0   120
#> [255,]  63   2      1          0        0   140
#> [256,]  64  19      1          8        1   160
#> [257,]  66  13      1          0        0   118
#> [258,]  65   3      0          3        0   105
#> [259,]  67   4      1          3        0   130
#> [260,]  66   6      1          0        1   140
#> [261,]  65   2      1          1        1   170
#> [262,]  68   1      0        180        1   166
#> [263,]  63   7      1          0        0   162
#> [264,]  67   8      1          1        1   130
#> [265,]  68   5      0          5        1    90
#> [266,]  63  10      0         16        1   160
#> [267,]  66  14      0        180        0   130
#> [268,]  64   1      0          1        1   120
#> [269,]  68  18      0        180        1   260
#> [270,]  65  17      1         14        1   100
#> [271,]  65  18      1          3        0   120
#> [272,]  63   1      1          0        1   155
#> [273,]  63  10      0         18        1   130
#> [274,]  67  11      0         11        0   150
#> [275,]  68  11      0        180        0   160
#> [276,]  68  14      0         79        0   172
#> [277,]  65  15      1         12        1   150
#> [278,]  66  11      1          0        0   100
#> [279,]  66  15      1         13        1   160
#> [280,]  65  11      1          6        0   130
#> [281,]  69   6      0        180        1   100
#> [282,]  66   9      1          8        0   130
#> [283,]  63   8      0        180        1   120
#> [284,]  68  14      1         13        1   140
#> [285,]  65   8      1          0        1    90
#> [286,]  66   3      0          3        1   138
#> [287,]  69   1      1          0        0   170
#> [288,]  67   1      0        180        1   160
#> [289,]  68  10      1         10        1   150
#> [290,]  65   1      1          0        0   133
#> [291,]  67   7      1          4        1   130
#> [292,]  63   2      1          0        0    99
#> [293,]  67   2      0        180        0   184
#> [294,]  65   6      0          6        0    80
#> [295,]  65  10      1          1        1   148
#> [296,]  66  19      1         12        1   150
#> [297,]  67  12      1         12        0   160
#> [298,]  69   6      0         99        1   140
#> [299,]  65   4      1          1        0   130
#> [300,]  64   4      0        179        0   160
#> [301,]  64  11      0         11        0   125
#> [302,]  64   4      0        180        1   140
#> [303,]  66   7      1          5        1   131
#> [304,]  68   4      1          0        1   160
#> [305,]  69   4      1          3        1   150
#> [306,]  65  13      1         12        1   130
#> [307,]  69  17      1         10        0   140
#> [308,]  69   8      0         93        0   140
#> [309,]  65   1      0          1        1   120
#> [310,]  68   4      0          4        1   190
#> [311,]  71   3      0          5        0   112
#> [312,]  70   7      1          0        1   190
#> [313,]  68   7      0        150        0   210
#> [314,]  66   9      1          3        1   151
#> [315,]  66   1      1          1        1   165
#> [316,]  70   4      1          0        1   180
#> [317,]  69   8      0        180        1   153
#> [318,]  70  14      0        171        0   166
#> [319,]  66   4      0        180        0   130
#> [320,]  67  10      1          9        0   200
#> [321,]  67   6      1          4        0   130
#> [322,]  68  18      1         14        1   170
#> [323,]  65   2      0        180        0   130
#> [324,]  68   7      1          0        1   150
#> [325,]  67  14      1         13        0   130
#> [326,]  69   8      0        180        1   180
#> [327,]  71   7      0          7        0   230
#> [328,]  66   2      0          2        1   228
#> [329,]  71   6      0         45        1   158
#> [330,]  69   5      0          5        1   142
#> [331,]  71   3      0        103        0   133
#> [332,]  69   3      0          3        1   130
#> [333,]  67   1      0         36        1   104
#> [334,]  67   5      0          5        0   130
#> [335,]  72   3      1          0        1   132
#> [336,]  72   7      0          7        1   110
#> [337,]  69   8      1          7        1   108
#> [338,]  67   3      0        180        0   110
#> [339,]  66   2      1          1        0   123
#> [340,]  69  19      0        180        0   130
#> [341,]  69  11      1          0        1   120
#> [342,]  67   7      1          4        0   122
#> [343,]  69   4      1          3        0   132
#> [344,]  69   8      1          2        0   121
#> [345,]  70   3      0        123        0   130
#> [346,]  70   9      0        180        1   142
#> [347,]  72   5      1          4        0   170
#> [348,]  67  22      1          1        1   140
#> [349,]  68   3      0         19        0   135
#> [350,]  67  12      1          8        0   120
#> [351,]  69   1      0          1        1   110
#> [352,]  67   1      0          1        1    60
#> [353,]  67   4      0         60        1   136
#> [354,]  72  13      1         11        1   195
#> [355,]  66  24      1         13        0   130
#> [356,]  70  35      1          0        1   105
#> [357,]  72  30      1          0        1   145
#> [358,]  70   7      0          7        0   102
#> [359,]  71   6      0          9        0   120
#> [360,]  69  10      1          6        1   120
#> [361,]  70  11      0        180        1   210
#> [362,]  72  19      1          8        0   120
#> [363,]  72  12      1         10        0   170
#> [364,]  67   8      0        180        1   170
#> [365,]  67   9      0        180        0   158
#> [366,]  73  13      0        152        1   130
#> [367,]  67   4      1          1        0   134
#> [368,]  68  23      0        180        1   220
#> [369,]  70   3      0        180        0   121
#> [370,]  69   3      0        180        0   220
#> [371,]  71   3      1          2        0   150
#> [372,]  68   4      1          3        0   210
#> [373,]  71   5      0        180        0   191
#> [374,]  73   6      0        180        1   117
#> [375,]  69  16      1         10        1   140
#> [376,]  72  16      1          1        1   130
#> [377,]  70   4      0        180        0   180
#> [378,]  69   1      1          0        0   155
#> [379,]  72   8      1          1        1   150
#> [380,]  71   2      1          0        1   180
#> [381,]  73   7      0          7        1   140
#> [382,]  68  15      1         13        1   130
#> [383,]  70   3      0          3        1   159
#> [384,]  70  13      1          9        0   100
#> [385,]  72   6      0        180        1   130
#> [386,]  73   0      0        180        1   161
#> [387,]  71   3      1          1        0   150
#> [388,]  71  15      1         11        0   165
#> [389,]  74  20      0         20        1   180
#> [390,]  71  20      1         10        0   140
#> [391,]  74   0      1          0        1    90
#> [392,]  73   3      1          0        1   136
#> [393,]  70   5      1          0        1   190
#> [394,]  71   8      1          7        0   149
#> [395,]  71   3      1          2        1   190
#> [396,]  73  10      1          8        0   106
#> [397,]  70  26      1         11        1   120
#> [398,]  73   4      0         58        1   160
#> [399,]  72   5      1          3        1   160
#> [400,]  72   8      1          0        1   140
#> [401,]  74   3      0          3        1   150
#> [402,]  69   2      1          1        1    80
#> [403,]  72  10      1          8        1   153
#> [404,]  69   7      0        180        1   144
#> [405,]  72  15      1         13        0   156
#> [406,]  70   8      0          8        0   120
#> [407,]  73  10      1          9        1   146
#> [408,]  73  10      1         10        1   120
#> [409,]  74  15      1          9        1   179
#> [410,]  71   2      0         10        1   112
#> [411,]  75   9      1          7        0   140
#> [412,]  75  13      1          1        1   130
#> [413,]  72  15      1         12        1   120
#> [414,]  72   1      1          1        0   168
#> [415,]  73  10      0        180        0   162
#> [416,]  72  11      0         11        1   140
#> [417,]  73   5      1          3        1   112
#> [418,]  76  25      1         12        1   170
#> [419,]  73  12      1         12        1   140
#> [420,]  72   2      0        180        0   120
#> [421,]  75   1      0        180        1   140
#> [422,]  72   4      1          0        1   197
#> [423,]  71   3      1          0        0   144
#> [424,]  73   5      0        180        0   126
#> [425,]  73   4      0        180        0   124
#> [426,]  74  34      1          8        1   233
#> [427,]  76   3      1          0        1   120
#> [428,]  72   3      0        180        0   160
#> [429,]  76   5      0          5        1   130
#> [430,]  77  11      0         11        1   150
#> [431,]  77   4      0          4        0   185
#> [432,]  72   7      1          2        0   142
#> [433,]  73  15      0         15        1   160
#> [434,]  74   7      0        180        1   150
#> [435,]  74   3      0          3        1   128
#> [436,]  74   2      1          1        0   140
#> [437,]  73   6      0          6        1   114
#> [438,]  75  23      1         14        1   110
#> [439,]  74   2      0        180        0   190
#> [440,]  73   4      1          3        1   125
#> [441,]  75   4      1          0        1   122
#> [442,]  75   0      0          0        1   130
#> [443,]  73  13      1         11        0   195
#> [444,]  74   8      1          0        1   105
#> [445,]  76  13      1          8        1   148
#> [446,]  75   4      1          2        1   188
#> [447,]  74   6      0        180        0   160
#> [448,]  76   4      0          4        1   155
#> [449,]  75   1      0          1        1   125
#> [450,]  74   2      0        180        0   111
#> [451,]  73   1      0         52        1   105
#> [452,]  73   0      0        180        0   156
#> [453,]  72   5      0        180        0   120
#> [454,]  76  44      1         10        0   105
#> [455,]  76   5      0        180        0   185
#> [456,]  74  10      1          0        1   135
#> [457,]  76   5      1          0        1   167
#> [458,]  75   9      0        180        1   140
#> [459,]  77  12      1          9        1   100
#> [460,]  73  10      1          9        0   146
#> [461,]  77   1      1          0        1    90
#> [462,]  76  12      1         11        1   120
#> [463,]  75   3      1          1        1   171
#> [464,]  74   2      1          0        1   130
#> [465,]  74  15      0        180        1   172
#> [466,]  78   8      1          6        1   110
#> [467,]  74   7      0          7        0   161
#> [468,]  78  32      1          9        1   198
#> [469,]  80  10      1          6        1   147
#> [470,]  78  13      1          5        0   130
#> [471,]  75   5      0        119        1   150
#> [472,]  78  15      0        180        1   270
#> [473,]  80   8      0          8        1   120
#> [474,]  75  13      1          6        0   150
#> [475,]  74  10      1          8        0   135
#> [476,]  76   1      0          1        1    83
#> [477,]  79   4      0         80        0   145
#> [478,]  78  12      1          9        0   150
#> [479,]  78   2      1          1        0   130
#> [480,]  75   4      1          0        0   212
#> [481,]  78  10      0        180        1   130
#> [482,]  76  11      1          0        0   120
#> [483,]  75   3      0          3        0     0
#> [484,]  76   7      0         29        1   150
#> [485,]  80   9      0         23        1   128
#> [486,]  80   6      0          6        1   150
#> [487,]  78   6      1          0        1   240
#> [488,]  78  11      1          1        1   140
#> [489,]  79  11      0        180        0   160
#> [490,]  81   1      0          1        0   130
#> [491,]  78  11      1          8        1   118
#> [492,]  76   4      0          4        1   160
#> [493,]  76  10      1          8        0   180
#> [494,]  76  12      1         10        1   127
#> [495,]  80   3      1          0        1   120
#> [496,]  75   2      1          1        1   204
#> [497,]  78  11      0        180        1   135
#> [498,]  76   1      0          1        1   140
#> [499,]  77  31      1          3        1   161
#> [500,]  76   1      0          1        1    90
#> [501,]  78   7      1          0        1   110
#> [502,]  77   7      0        180        1   170
#> [503,]  77   6      0          6        1   144
#> [504,]  79   4      1          0        1   120
#> [505,]  81   1      0        180        0   120
#> [506,]  77   9      1          4        0   141
#> [507,]  82   5      0          8        1   120
#> [508,]  80  40      1          0        1   138
#> [509,]  78   4      0         59        1   112
#> [510,]  80  17      1         12        0   100
#> [511,]  79  10      0         10        1   120
#> [512,]  80  15      1          0        1    90
#> [513,]  81   4      1          2        1   126
#> [514,]  79  28      0        164        0   100
#> [515,]  78  32      0        180        1   130
#> [516,]  79   1      0         37        1   140
#> [517,]  81   3      0        180        0   184
#> [518,]  78   7      0          7        1   147
#> [519,]  77  13      1          0        1   190
#> [520,]  78  15      0         15        0   165
#> [521,]  80   5      1          1        1   108
#> [522,]  78   4      0        180        0   175
#> [523,]  79   3      0          3        1   101
#> [524,]  76   1      0        166        0   131
#> [525,]  81   4      1          1        1   104
#> [526,]  78  20      1          0        1   109
#> [527,]  80   1      0          1        0   100
#> [528,]  82   3      1          1        1   144
#> [529,]  77   5      0         85        0   188
#> [530,]  79   6      0          6        0   152
#> [531,]  80   6      1          0        1   119
#> [532,]  78   2      0        180        0   148
#> [533,]  80   5      0          5        1   130
#> [534,]  82   1      1          0        1    82
#> [535,]  81   1      0        108        0   129
#> [536,]  78  12      0        180        0   134
#> [537,]  79   1      0        125        0   193
#> [538,]  82  21      1          2        0   155
#> [539,]  84  22      1         10        0   180
#> [540,]  79   4      0          4        1   121
#> [541,]  80   6      0          6        1   110
#> [542,]  83   5      0        180        0   148
#> [543,]  79   7      1          6        0   130
#> [544,]  83   4      0        103        0    97
#> [545,]  81  11      1          8        0   160
#> [546,]  81   5      0        177        0    41
#> [547,]  78  23      1         10        1   145
#> [548,]  78   9      1          4        1   120
#> [549,]  82   8      1          1        0   128
#> [550,]  81  15      0        180        1   140
#> [551,]  80   7      1          0        1   146
#> [552,]  83   8      0          8        0   115
#> [553,]  81  16      0         16        1   110
#> [554,]  80   6      1          0        1   150
#> [555,]  80  11      1          8        0   110
#> [556,]  81   8      0        180        0   146
#> [557,]  80   8      1          7        0   160
#> [558,]  83   2      0          2        1   155
#> [559,]  82   6      0        128        1   100
#> [560,]  82  23      1          0        0   110
#> [561,]  84   5      0        180        1   203
#> [562,]  84   4      0          4        1    85
#> [563,]  84   1      0         38        1   205
#> [564,]  83   3      0        180        0   174
#> [565,]  81   4      0         90        1   138
#> [566,]  79   9      1          8        0   150
#> [567,]  85   3      1          2        1   160
#> [568,]  80  13      1          8        1   140
#> [569,]  84   4      0         89        1   129
#> [570,]  79   4      0          4        1    60
#> [571,]  80   6      0         71        1   189
#> [572,]  82  19      0         19        0   120
#> [573,]  80  30      1         13        0   220
#> [574,]  83   3      0        114        0    98
#> [575,]  81  14      1         12        1   128
#> [576,]  82   0      0          2        1   100
#> [577,]  85   9      1          6        1   160
#> [578,]  81   4      0          4        0   175
#> [579,]  84  15      1         13        1   110
#> [580,]  81   1      0          1        1   145
#> [581,]  81  12      0         12        1   163
#> [582,]  82  16      1          8        0   103
#> [583,]  81   4      0          4        0   160
#> [584,]  86  12      0        180        1   120
#> [585,]  83  12      1          2        1   170
#> [586,]  82   3      1          2        0   130
#> [587,]  82  15      1          0        0   183
#> [588,]  80   2      0         88        0   135
#> [589,]  83   7      0        126        0   135
#> [590,]  86   8      0          8        1   132
#> [591,]  81  16      1          9        0   180
#> [592,]  84   6      0        165        0   145
#> [593,]  86   3      0          3        1   140
#> [594,]  82   9      0        180        1   134
#> [595,]  84   3      0        180        1   120
#> [596,]  81  13      0        180        0   152
#> [597,]  85   3      0          3        1   118
#> [598,]  81   2      1          0        1   118
#> [599,]  81   4      0        180        0   160
#> [600,]  83   9      0        180        1   149
#> [601,]  82   1      0        180        1   193
#> [602,]  87   2      0          5        1   137
#> [603,]  84  16      0         70        1   150
#> [604,]  83  19      0         43        0   150
#> [605,]  83  10      1          0        1   190
#> [606,]  86   2      0        180        1   169
#> [607,]  88  14      1          3        1   130
#> [608,]  84   3      0          3        1   121
#> [609,]  83  13      1         12        0   170
#> [610,]  84   9      0         92        1   110
#> [611,]  84   3      0        180        1   170
#> [612,]  86   4      0         38        1   122
#> [613,]  86  13      0        177        0   163
#> [614,]  85   3      0          3        1   113
#> [615,]  86   6      0          6        1   117
#> [616,]  88   4      0          4        0   100
#> [617,]  83  20      1          3        1   150
#> [618,]  88   4      0          4        1   115
#> [619,]  83   9      0         65        1   150
#> [620,]  86   9      1          7        1   142
#> [621,]  87   2      0        180        1   130
#> [622,]  86   6      0         46        0   173
#> [623,]  88   3      0        115        0   110
#> [624,]  86  15      1          8        1   109
#> [625,]  88   4      0          4        0    86
#> [626,]  89   4      0          4        1   153
#> [627,]  89   5      0        119        1   140
#> [628,]  87   6      0        180        1   110
#> [629,]  84   8      0        180        1   119
#> [630,]  85   8      0          8        1   136
#> [631,]  84   2      0        110        1   174
#> [632,]  87  15      1          9        1   138
#> [633,]  84   0      0        180        1   136
#> [634,]  89  10      0         46        1   170
#> [635,]  88   1      0          1        0   135
#> [636,]  87   6      1          0        0   125
#> [637,]  91  10      0        145        0   135
#> [638,]  86   3      1          0        1    80
#> [639,]  88   7      0         24        0   119
#> [640,]  90  11      1         10        1   186
#> [641,]  86  10      0        180        1   137
#> [642,]  86   9      1          7        0   130
#> [643,]  90   4      1          0        0   121
#> [644,]  91   1      0          1        1    74
#> [645,]  87   5      0         36        1   150
#> [646,]  92   1      0          1        1   167
#> [647,]  88   5      0        158        0   100
#> [648,]  87   7      0         74        1   105
#> [649,]  89   2      0        168        0   118
#> [650,]  91   5      0        169        1   176
#> [651,]  89  52      0         52        1   130
#> [652,]  92   7      0          7        1   110
#> [653,]  91   0      0          0        0     0
#> [654,]  89  14      0        180        1    84
#> [655,]  90  18      0        180        0   188
#> [656,]  90  19      1         11        1   129
#> [657,]  90   1      0          1        1   118
#> [658,]  93   8      0        179        1   110
#> [659,]  91   1      0        180        0   158
#> [660,]  90  16      0         16        1   106
#> [661,]  90   3      0         67        0   162
#> [662,]  95   8      1          5        1   150
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
#>   [1]   2.0+   5.0+ 180.0+ 115.0  180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [11]   5.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0 
#>  [31] 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+ 172.0+ 180.0+ 180.0+   7.0  180.0+   1.0  180.0+ 179.0+
#>  [61] 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+   4.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+   5.0  180.0+
#>  [81] 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 166.0+  99.0  180.0+  16.0+
#>  [91] 180.0+ 152.0+   7.0+ 180.0+ 180.0+ 180.0+ 171.0+  28.0    1.0  180.0+
#> [101]   9.0+ 180.0+ 180.0+ 175.0+   2.0    7.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [111] 180.0+  16.0+ 180.0+  16.0  180.0+ 180.0+ 134.0+ 180.0+   8.0    3.0+
#> [121] 180.0+ 180.0+ 140.0  180.0+   1.0  165.0  180.0+ 180.0+ 180.0+   8.0+
#> [131] 180.0+   0.5  180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+   4.0+ 147.0+
#> [141] 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [151]   2.0  180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+ 180.0+   0.5 
#> [161] 171.0+ 180.0+   1.0  180.0+ 180.0+  10.0+ 180.0+ 180.0+  17.0   45.0 
#> [171]   3.0+  19.0    9.0+ 172.0+ 172.0+  24.0  180.0+   8.0  180.0+   1.0+
#> [181]  15.0  180.0+ 180.0+  13.0+ 180.0+ 180.0+ 170.0   94.0  169.0    6.0 
#> [191] 180.0+ 180.0+   3.0+ 180.0+ 180.0+   5.0   18.0    5.0+ 180.0+ 180.0+
#> [201] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [211] 180.0+   9.0    7.0+ 180.0+  84.0  180.0+ 180.0+   1.0    1.0  180.0+
#> [221] 180.0+   3.0+ 180.0+ 180.0+ 180.0+  12.0   14.0+ 180.0+   3.0+  88.0 
#> [231] 180.0+  12.0  180.0+ 180.0+ 180.0+   0.5   12.0+ 180.0+ 180.0+ 180.0+
#> [241] 180.0+ 180.0+   9.0    3.0  180.0+ 180.0+ 180.0+  11.0+   2.0+  18.0+
#> [251] 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0  166.0+   3.0  180.0+ 180.0+
#> [261] 175.0+ 180.0+   7.0+   8.0    5.0   16.0  180.0+   1.0  180.0+ 180.0+
#> [271] 123.0+   1.0+  18.0   11.0+ 180.0+  79.0   15.0+ 180.0+ 180.0+ 180.0+
#> [281] 180.0+ 180.0+ 180.0+ 180.0+   8.0+   3.0  175.0  180.0+  10.0  180.0+
#> [291] 180.0+ 180.0+ 180.0+   6.0  180.0+  19.0+  12.0   99.0  180.0+ 179.0+
#> [301]  11.0+ 180.0+   7.0+ 180.0+ 152.0+ 180.0+ 180.0+  93.0    1.0    4.0 
#> [311]   5.0    7.0+ 150.0  180.0+   1.0  180.0+ 180.0+ 171.0  180.0+ 174.0+
#> [321]   6.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+   2.0   45.0    5.0+
#> [331] 103.0    3.0+  36.0    5.0+ 180.0+   7.0    8.0+ 180.0+   2.0+ 180.0+
#> [341] 180.0+   7.0  180.0+   8.0+ 123.0  180.0+ 180.0+  51.0   19.0  180.0+
#> [351]   1.0    1.0   60.0  132.0  180.0+ 180.0+ 162.0    7.0+   9.0  180.0+
#> [361] 180.0+ 180.0+  12.0  180.0+ 180.0+ 152.0   76.0  180.0+ 180.0+ 180.0+
#> [371] 180.0+ 180.0+ 180.0+ 180.0+  16.0+  16.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [381]   7.0+  15.0    3.0+  13.0+ 180.0+ 180.0+   3.0+ 180.0+  20.0   20.0 
#> [391]   0.5  180.0+ 180.0+   8.0    3.0   87.0  180.0+  58.0  180.0+ 180.0+
#> [401]   3.0    2.0   10.0+ 180.0+ 180.0+   8.0+ 180.0+  15.0  180.0+  10.0 
#> [411] 180.0+  13.0  180.0+   1.0  180.0+  11.0    5.0  180.0+  12.0  180.0+
#> [421] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 180.0+   5.0   11.0+
#> [431]   4.0+   7.0   15.0+ 180.0+   3.0  180.0+   6.0  180.0+ 180.0+ 180.0+
#> [441]   4.0    0.5  180.0+ 180.0+ 180.0+  46.0  180.0+   4.0    1.0  180.0+
#> [451]  52.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [461]   1.0   12.0    3.0  176.0+ 180.0+   8.0+   7.0   32.0   10.0  172.0 
#> [471] 119.0  180.0+   8.0  180.0+ 180.0+   1.0   80.0  180.0+ 180.0+   4.0+
#> [481] 180.0+  11.0    3.0   29.0   23.0    6.0  180.0+ 180.0+ 180.0+   1.0 
#> [491]  11.0    4.0   10.0+ 180.0+   3.0+   2.0+ 180.0+   1.0  171.0    1.0 
#> [501]  43.0  180.0+   6.0  138.0  180.0+  71.0    8.0   40.0   59.0   17.0 
#> [511]  10.0+ 180.0+  93.0  164.0  180.0+  37.0  180.0+   7.0+  22.0   15.0+
#> [521]   5.0+ 180.0+   3.0  166.0+  71.0   20.0+   1.0  180.0+  85.0    6.0+
#> [531]   6.0  180.0+   5.0    1.0  108.0  180.0+ 125.0  180.0+ 180.0+   4.0 
#> [541]   6.0  180.0+ 180.0+ 103.0  180.0+ 177.0+  70.0  180.0+ 180.0+ 180.0+
#> [551]   7.0+   8.0+  16.0  180.0+ 180.0+ 180.0+ 180.0+   2.0  128.0   62.0 
#> [561] 180.0+   4.0   38.0  180.0+  90.0  180.0+ 180.0+ 180.0+  89.0    4.0 
#> [571]  71.0   19.0   30.0  114.0  180.0+   2.0  180.0+   4.0+ 180.0+   1.0 
#> [581]  12.0   16.0+   4.0+ 180.0+  77.0    3.0   83.0   88.0  126.0    8.0 
#> [591] 180.0+ 165.0    3.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+
#> [601] 180.0+   5.0   70.0   43.0  180.0+ 180.0+  14.0    3.0   13.0   92.0 
#> [611] 180.0+  38.0  177.0    3.0+   6.0+   4.0+  20.0    4.0   65.0   11.0 
#> [621] 180.0+  46.0  115.0  180.0+   4.0    4.0  119.0  180.0+ 180.0+   8.0 
#> [631] 110.0  180.0+ 180.0+  46.0    1.0+  25.0  145.0    3.0   24.0   11.0 
#> [641] 180.0+ 180.0+   4.0    1.0   36.0    1.0  158.0   74.0  168.0  169.0 
#> [651]  52.0    7.0    0.5  180.0+ 180.0+ 180.0+   1.0+ 179.0+ 180.0+  16.0 
#> [661]  67.0    8.0   26.0   53.0    7.0+   0.5   69.0    2.0    3.0   15.0+
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
#>   0.8358299 
```
