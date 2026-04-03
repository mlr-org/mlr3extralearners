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
#>      Lambda Index Measure    SE Nonzero
#> min 0.00339    45   2.971 0.117       6
#> 1se 0.06646    13   3.082 0.131       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35   2      0        180        0   121
#>   [5,]  35   2      1          1        1   112
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  33   6      1          1        1   115
#>  [12,]  38  16      1         10        0   160
#>  [13,]  40  12      1          9        0   153
#>  [14,]  42   2      0        180        1   100
#>  [15,]  40   6      0        180        1   138
#>  [16,]  40  11      1         10        1   120
#>  [17,]  42   2      0        180        0   100
#>  [18,]  41   2      1          1        0   166
#>  [19,]  40   1      1          0        1   145
#>  [20,]  43   4      1          0        1   130
#>  [21,]  40   3      1          1        0   170
#>  [22,]  42  12      1         10        1   170
#>  [23,]  43   2      1          1        1   116
#>  [24,]  44   5      1          1        0   170
#>  [25,]  41  13      1          1        0   140
#>  [26,]  45   9      1          7        0   110
#>  [27,]  41   5      1          4        1   141
#>  [28,]  44   2      1          1        1   150
#>  [29,]  43   2      0        180        1   140
#>  [30,]  45   2      0        180        1   140
#>  [31,]  46  15      0        180        0   120
#>  [32,]  46   2      1          1        0   126
#>  [33,]  47   4      1          3        0   118
#>  [34,]  48  15      0        180        1   160
#>  [35,]  45   3      0        150        0   130
#>  [36,]  44   3      1          0        1   180
#>  [37,]  46   7      1          2        0   166
#>  [38,]  43  29      0        180        1   180
#>  [39,]  47   6      1          0        1   116
#>  [40,]  46  13      1         10        0   100
#>  [41,]  44   0      1          0        1    96
#>  [42,]  43   3      1          0        1   124
#>  [43,]  45   8      1          0        1   117
#>  [44,]  49   5      0         73        1   136
#>  [45,]  45   5      0          5        0   141
#>  [46,]  46   6      1          0        1   100
#>  [47,]  44   4      1          0        1   114
#>  [48,]  44   9      1          8        1   135
#>  [49,]  45   5      0        180        1   190
#>  [50,]  46   5      1          3        0   130
#>  [51,]  46   4      0        180        1   121
#>  [52,]  44   2      0        180        0   142
#>  [53,]  46  15      0        180        1   120
#>  [54,]  45   9      1          0        1   145
#>  [55,]  47   3      1          1        1   120
#>  [56,]  46   3      1          0        1   119
#>  [57,]  49   4      0        180        0   117
#>  [58,]  50   4      1          1        0   125
#>  [59,]  50   6      1          2        1   140
#>  [60,]  49   7      1          7        1   110
#>  [61,]  46   9      1          9        1   122
#>  [62,]  50   7      0        180        1   110
#>  [63,]  49   2      0          2        0   105
#>  [64,]  51   1      0          1        1   145
#>  [65,]  49  15      1         11        1   160
#>  [66,]  47   2      0        180        0   150
#>  [67,]  49  23      0        179        1   112
#>  [68,]  46   6      1          0        1   156
#>  [69,]  52   2      0        180        1   170
#>  [70,]  50   7      1          0        1    92
#>  [71,]  50   4      0          4        1   100
#>  [72,]  51   3      1          2        0   113
#>  [73,]  50   1      1          0        0   150
#>  [74,]  49   7      1          4        1    90
#>  [75,]  47   8      0        180        0   160
#>  [76,]  46   3      0        180        1   120
#>  [77,]  46   1      1          1        0   145
#>  [78,]  50   4      1          1        0   150
#>  [79,]  48   7      1          0        1   110
#>  [80,]  53   8      0         36        1   160
#>  [81,]  48  17      1         10        0   111
#>  [82,]  52   4      1          4        0   152
#>  [83,]  49  15      0        180        1   160
#>  [84,]  54  17      1         12        1   102
#>  [85,]  53   7      1          0        0   199
#>  [86,]  50   2      0          5        1   106
#>  [87,]  50  10      1          6        0   122
#>  [88,]  51  25      1          1        0   202
#>  [89,]  49   5      1          2        1   150
#>  [90,]  53   4      0          4        0   140
#>  [91,]  52  14      1          7        1   200
#>  [92,]  48   6      0        180        0   160
#>  [93,]  48  11      1         10        0   120
#>  [94,]  53   4      1          0        1   156
#>  [95,]  51  13      0         99        1   160
#>  [96,]  54   9      1          0        1   138
#>  [97,]  49  16      0         16        0   125
#>  [98,]  55   3      1          1        0   150
#>  [99,]  54  23      1         10        0   131
#> [100,]  52   7      1          2        0   154
#> [101,]  55   6      1          2        1   114
#> [102,]  55   4      1          2        0   150
#> [103,]  51  13      1         11        0   145
#> [104,]  54   4      1          0        1   121
#> [105,]  52   4      0        180        0   183
#> [106,]  50   3      0        174        1   153
#> [107,]  55  28      1         13        1   160
#> [108,]  49   6      1          0        1   130
#> [109,]  53   9      0          9        1    95
#> [110,]  50   7      1          0        1   127
#> [111,]  56   4      1          1        1   130
#> [112,]  52   5      0        175        1   117
#> [113,]  54   7      1          0        1   100
#> [114,]  56   3      0        180        1   193
#> [115,]  56   2      0        180        0   132
#> [116,]  55   5      1          4        1   120
#> [117,]  52   8      0        180        0   119
#> [118,]  53  18      1          9        1   150
#> [119,]  54   3      0        180        1   180
#> [120,]  55   6      0        180        0   170
#> [121,]  52  16      0         16        0   152
#> [122,]  52  16      1         14        0   170
#> [123,]  53  15      0         15        1    90
#> [124,]  53   4      0        180        1   150
#> [125,]  55   6      1          5        1   138
#> [126,]  55   2      0        134        1   140
#> [127,]  54   3      0        180        0   128
#> [128,]  56   3      0          8        1   139
#> [129,]  55   1      0          2        0   130
#> [130,]  52   9      1          3        0   170
#> [131,]  57   5      1          3        1   138
#> [132,]  57   1      0        180        1   156
#> [133,]  57   1      0          1        1   100
#> [134,]  52  15      1         14        0   130
#> [135,]  56  14      1         11        0   130
#> [136,]  53   3      1          0        1   200
#> [137,]  57  10      0        180        1   170
#> [138,]  54   5      0        180        1   108
#> [139,]  55   3      1          1        1   156
#> [140,]  57   0      0          0        1   150
#> [141,]  59   3      1          1        0   172
#> [142,]  53  15      1         10        1   130
#> [143,]  54  17      1          8        1   227
#> [144,]  55   9      1          2        1   147
#> [145,]  55  13      0        166        1   140
#> [146,]  54  23      1          8        0   120
#> [147,]  53   4      0        147        1   145
#> [148,]  53   7      1          0        1   120
#> [149,]  57  11      1         10        1   129
#> [150,]  55   3      1          2        0   140
#> [151,]  55   5      0          5        1   131
#> [152,]  54   7      1          0        1   141
#> [153,]  56   4      0          4        0   164
#> [154,]  59  15      1         10        0   140
#> [155,]  58   9      1          0        1   180
#> [156,]  58   1      1          1        1   200
#> [157,]  55   5      1          0        0   140
#> [158,]  56   7      1          5        1   120
#> [159,]  57   1      0        180        0   148
#> [160,]  59   3      0        180        0   120
#> [161,]  58   4      1          0        1   160
#> [162,]  57   5      0        180        1   130
#> [163,]  58  11      1          9        1   124
#> [164,]  57  10      1          9        0   103
#> [165,]  59   6      1          0        1   140
#> [166,]  59   5      0        180        1   155
#> [167,]  59   4      1          0        1   152
#> [168,]  58  26      1          0        1   189
#> [169,]  59   2      1          1        0   140
#> [170,]  58   8      0        161        1   140
#> [171,]  58  14      1          6        0   190
#> [172,]  61   4      1          3        0   151
#> [173,]  61   9      1          8        0   150
#> [174,]  61   3      1          2        1   102
#> [175,]  61  20      1         13        0   130
#> [176,]  57   2      1          0        1   116
#> [177,]  58  10      0         10        1   150
#> [178,]  57   4      1          3        0   138
#> [179,]  57  11      0        180        1   150
#> [180,]  57   3      1          2        0   120
#> [181,]  58  19      1         13        1   140
#> [182,]  56  18      1         11        1   165
#> [183,]  59   9      1          0        1    80
#> [184,]  58  11      0        172        1   135
#> [185,]  56   8      1          8        0   120
#> [186,]  59  11      1          8        1   190
#> [187,]  57   1      0          1        0   126
#> [188,]  57  15      1         13        1   110
#> [189,]  58   5      1          1        1   135
#> [190,]  59  10      0        180        0   160
#> [191,]  57   3      1          0        0   100
#> [192,]  61  18      0        170        0   140
#> [193,]  58   8      1          3        1   150
#> [194,]  57   7      0        169        0   180
#> [195,]  61   7      0          7        1   150
#> [196,]  60   7      0          7        0   147
#> [197,]  61   6      0          6        0   134
#> [198,]  59  13      1          2        0   198
#> [199,]  57  12      1          9        1   120
#> [200,]  62   4      1          0        0   160
#> [201,]  58   3      1          0        1   146
#> [202,]  62   4      1          3        0   173
#> [203,]  59   1      0        180        0   155
#> [204,]  59  16      1          9        1   133
#> [205,]  63   6      0         28        1   120
#> [206,]  58  11      1          9        0   179
#> [207,]  57   2      1          1        0   159
#> [208,]  62  17      1         10        1   180
#> [209,]  62   1      1          0        1   172
#> [210,]  58   7      0        180        1   150
#> [211,]  63   3      1          1        0   180
#> [212,]  63   1      0        180        1   130
#> [213,]  61   7      0        180        0   135
#> [214,]  62   3      0        180        1   105
#> [215,]  63   4      0        180        1   190
#> [216,]  63  15      1         10        1   126
#> [217,]  63   4      1          1        0   155
#> [218,]  60  18      1         13        0   132
#> [219,]  59   8      0        180        1   140
#> [220,]  58   9      1          9        0   110
#> [221,]  62   7      0          7        0   150
#> [222,]  59   1      0         22        1   162
#> [223,]  59   4      0        180        0   196
#> [224,]  60   7      1          1        1    90
#> [225,]  63   1      0          1        0   162
#> [226,]  62   6      0        180        0   170
#> [227,]  61  15      1         13        0   170
#> [228,]  59   4      0          4        0   149
#> [229,]  60   3      0          3        0   168
#> [230,]  64  10      1          9        0   160
#> [231,]  62   6      0          6        0   120
#> [232,]  59  10      0        180        1   130
#> [233,]  60   8      0         17        1   130
#> [234,]  61   6      1          1        1   117
#> [235,]  64  12      1         11        0   160
#> [236,]  66   1      1          0        1   120
#> [237,]  64   6      1          0        1   140
#> [238,]  63  14      1          9        0   123
#> [239,]  65  36      1         11        0   140
#> [240,]  66   3      1          1        0   127
#> [241,]  61  10      1          2        1   194
#> [242,]  64  32      1          9        1   160
#> [243,]  63  12      1          9        0   114
#> [244,]  66   5      1          0        1   110
#> [245,]  65   8      1          0        0   168
#> [246,]  64   0      0          0        1    90
#> [247,]  60   6      0        180        0   130
#> [248,]  61  12      1         11        0   154
#> [249,]  64   9      0        180        0   150
#> [250,]  61   4      0        180        1   113
#> [251,]  62   3      1          1        1   199
#> [252,]  65   6      0          9        0   112
#> [253,]  65   3      1          0        1    80
#> [254,]  63   5      1          4        0   170
#> [255,]  63   2      1          1        0   180
#> [256,]  67  11      0         11        1   100
#> [257,]  64   2      0          2        0   201
#> [258,]  66  18      1          5        0   142
#> [259,]  66  16      1         11        1   169
#> [260,]  63   9      1          8        1   160
#> [261,]  63   3      1          2        0   120
#> [262,]  65   8      1          0        1   140
#> [263,]  67   6      0        180        1   170
#> [264,]  64  13      1         12        1   150
#> [265,]  66   7      1          0        1   115
#> [266,]  64  14      1         13        1   150
#> [267,]  64   0      0          0        1   148
#> [268,]  67   4      1          3        0   130
#> [269,]  65   2      1          1        1   170
#> [270,]  68   1      0        180        1   166
#> [271,]  64  10      1          9        1   110
#> [272,]  63   7      1          0        0   162
#> [273,]  67   8      1          1        1   130
#> [274,]  68   5      0          5        1    90
#> [275,]  63  10      0         16        1   160
#> [276,]  66  14      0        180        0   130
#> [277,]  68  18      0        180        1   260
#> [278,]  63   8      1          1        1   162
#> [279,]  67  11      0         11        0   150
#> [280,]  66  12      1         10        1   150
#> [281,]  65  15      1         12        1   150
#> [282,]  66  11      1          0        0   100
#> [283,]  65   4      1          2        1   145
#> [284,]  69  12      0         15        1   140
#> [285,]  66  15      1         13        1   160
#> [286,]  65  11      1          6        0   130
#> [287,]  69   6      0        180        1   100
#> [288,]  66   9      1          8        0   130
#> [289,]  68  14      1         13        1   140
#> [290,]  66   3      0          3        1   138
#> [291,]  69   1      1          0        0   170
#> [292,]  67   1      0        180        1   160
#> [293,]  68  10      1         10        1   150
#> [294,]  67   7      1          4        1   130
#> [295,]  65   6      0          6        0    80
#> [296,]  66  19      1         12        1   150
#> [297,]  67  12      1         12        0   160
#> [298,]  69   6      0         99        1   140
#> [299,]  65   4      1          1        0   130
#> [300,]  64   4      0        179        0   160
#> [301,]  66   4      0        180        1   130
#> [302,]  70  15      1         12        1   132
#> [303,]  64  11      0         11        0   125
#> [304,]  64   4      0        180        1   140
#> [305,]  64   0      1          0        1   118
#> [306,]  67   2      0         18        0   131
#> [307,]  66   7      1          5        1   131
#> [308,]  68   4      1          0        1   160
#> [309,]  69   8      0         93        0   140
#> [310,]  64  21      0         21        1   155
#> [311,]  68  18      1          0        1   160
#> [312,]  68   4      0          4        1   190
#> [313,]  70   7      1          0        1   190
#> [314,]  68   7      0        150        0   210
#> [315,]  71  20      1          0        1   160
#> [316,]  67   2      0        180        0   128
#> [317,]  66   9      1          3        1   151
#> [318,]  69   8      0        180        1   153
#> [319,]  70  14      0        171        0   166
#> [320,]  66   4      0        180        0   130
#> [321,]  67  10      1          9        0   200
#> [322,]  67   6      1          4        0   130
#> [323,]  69   0      0          0        1   148
#> [324,]  68   7      1          0        1   150
#> [325,]  67  14      1         13        0   130
#> [326,]  65  14      1         13        1   150
#> [327,]  69   8      0        180        1   180
#> [328,]  71   6      0         45        1   158
#> [329,]  70  22      1         13        0   103
#> [330,]  67   1      0         36        1   104
#> [331,]  67   5      0          5        0   130
#> [332,]  68   6      0        180        0   145
#> [333,]  69   6      1          4        1   174
#> [334,]  72   3      1          0        1   132
#> [335,]  72   7      0          7        1   110
#> [336,]  69   8      1          7        1   108
#> [337,]  67   3      0        180        0   110
#> [338,]  69  19      0        180        0   130
#> [339,]  69  11      1          0        1   120
#> [340,]  66   2      0        180        0   130
#> [341,]  67   7      1          4        0   122
#> [342,]  69   4      1          3        0   132
#> [343,]  68   2      0          7        1   130
#> [344,]  69   8      1          2        0   121
#> [345,]  67  13      1          9        0   130
#> [346,]  70   3      0        123        0   130
#> [347,]  72   5      1          4        0   170
#> [348,]  67  22      1          1        1   140
#> [349,]  69   1      0          1        1   110
#> [350,]  67   4      0         60        1   136
#> [351,]  69   5      0         76        0   120
#> [352,]  68  10      1          8        1   160
#> [353,]  66  24      1         13        0   130
#> [354,]  70  35      1          0        1   105
#> [355,]  68   7      1          2        0   135
#> [356,]  71   6      0          9        0   120
#> [357,]  70  11      0        180        1   210
#> [358,]  72  19      1          8        0   120
#> [359,]  72  12      1         10        0   170
#> [360,]  67   5      1          0        1   147
#> [361,]  67   9      0        180        0   158
#> [362,]  73  13      0        152        1   130
#> [363,]  72   2      0          2        1   100
#> [364,]  67   4      1          1        0   134
#> [365,]  72   6      1          5        0   115
#> [366,]  71   1      0        173        1   188
#> [367,]  68  23      0        180        1   220
#> [368,]  69   3      0        180        0   220
#> [369,]  71   3      1          2        0   150
#> [370,]  73   6      0        180        1   117
#> [371,]  69  16      1         10        1   140
#> [372,]  70   4      0        180        0   180
#> [373,]  69   1      1          0        0   155
#> [374,]  73   6      1          0        1   270
#> [375,]  72   8      1          1        1   150
#> [376,]  73   7      0          7        1   140
#> [377,]  68  15      1         13        1   130
#> [378,]  70   3      0          3        1   159
#> [379,]  70  13      1          9        0   100
#> [380,]  72   6      0        180        1   130
#> [381,]  73   4      0        180        1   154
#> [382,]  69   2      1          0        1   110
#> [383,]  71   3      1          1        0   150
#> [384,]  71  15      1         11        0   165
#> [385,]  74  20      0         20        1   180
#> [386,]  74   0      1          0        1    90
#> [387,]  73   3      1          0        1   136
#> [388,]  70   5      1          0        1   190
#> [389,]  71  17      1         11        0   160
#> [390,]  71   8      1          7        0   149
#> [391,]  71   3      1          2        1   190
#> [392,]  73  10      1          8        0   106
#> [393,]  70  26      1         11        1   120
#> [394,]  73   4      0         58        1   160
#> [395,]  72   5      1          3        1   160
#> [396,]  70   3      0        180        1   154
#> [397,]  73   6      0        180        0   110
#> [398,]  71   7      1          2        0   143
#> [399,]  72   8      1          0        1   140
#> [400,]  74   3      0          3        1   150
#> [401,]  73  17      1         11        0   140
#> [402,]  71  13      1          8        0   121
#> [403,]  74   7      1          0        1   117
#> [404,]  72  10      1          8        1   153
#> [405,]  69   7      0        180        1   144
#> [406,]  72  15      1         13        0   156
#> [407,]  70   8      0          8        0   120
#> [408,]  71  10      1          9        1   120
#> [409,]  75   1      0          1        0   133
#> [410,]  75   2      1          1        0   145
#> [411,]  72  10      1          9        1   160
#> [412,]  73  10      1         10        1   120
#> [413,]  73   1      0          1        1    80
#> [414,]  75  13      1          1        1   130
#> [415,]  71   4      0          4        0   134
#> [416,]  72  15      1         12        1   120
#> [417,]  73  10      1          8        0   120
#> [418,]  72   1      1          1        0   168
#> [419,]  73  10      0        180        0   162
#> [420,]  72  11      0         11        1   140
#> [421,]  70   3      0          3        0   150
#> [422,]  76  25      1         12        1   170
#> [423,]  73  12      1         12        1   140
#> [424,]  72   2      0        180        0   120
#> [425,]  73   4      0        180        0   124
#> [426,]  74  34      1          8        1   233
#> [427,]  72   5      0        180        0   154
#> [428,]  72   3      0        180        0   160
#> [429,]  76   5      0          5        1   130
#> [430,]  77  11      0         11        1   150
#> [431,]  77   4      0          4        0   185
#> [432,]  75   3      1          1        0   180
#> [433,]  72   7      1          2        0   142
#> [434,]  71  16      0        180        0   140
#> [435,]  73  10      1         10        0   124
#> [436,]  74   7      0        180        1   150
#> [437,]  74   3      0          3        1   128
#> [438,]  76   1      0        180        0   114
#> [439,]  74   2      1          1        0   140
#> [440,]  74  19      1          4        1   200
#> [441,]  73   6      0          6        1   114
#> [442,]  74   2      0        180        0   190
#> [443,]  76  17      1          0        1   200
#> [444,]  76  13      1         10        0   110
#> [445,]  75   0      0          0        1   130
#> [446,]  75  12      0         12        1   160
#> [447,]  74   8      1          0        1   105
#> [448,]  76  13      1          8        1   148
#> [449,]  75   4      1          2        1   188
#> [450,]  73   1      0         52        1   105
#> [451,]  73   0      0        180        0   156
#> [452,]  78  12      1         11        1   160
#> [453,]  76  44      1         10        0   105
#> [454,]  76   5      0        180        0   185
#> [455,]  74  10      1          0        1   135
#> [456,]  76   5      1          0        1   167
#> [457,]  75   9      0        180        1   140
#> [458,]  73  33      1         12        1   175
#> [459,]  77   5      1          0        0   123
#> [460,]  77  12      1          9        1   100
#> [461,]  77  12      0        180        0   130
#> [462,]  77   1      1          0        1    90
#> [463,]  76  12      1         11        1   120
#> [464,]  78   5      1          0        1   170
#> [465,]  73   7      1          0        0   174
#> [466,]  74   9      1          8        0   200
#> [467,]  75   6      0        180        0   150
#> [468,]  79  10      1          8        0   190
#> [469,]  74   2      1          0        1   130
#> [470,]  78  18      0         18        1   144
#> [471,]  77   3      0        180        0   110
#> [472,]  76  29      0         47        0    90
#> [473,]  73   8      1          1        1   162
#> [474,]  73  11      1          2        1   110
#> [475,]  74   2      0        180        0   100
#> [476,]  78   7      0          7        1   133
#> [477,]  74  15      0        180        1   172
#> [478,]  78   8      1          6        1   110
#> [479,]  78  32      1          9        1   198
#> [480,]  79   6      0        180        0   170
#> [481,]  80  10      1          6        1   147
#> [482,]  78   0      0        180        1   212
#> [483,]  78  13      1          5        0   130
#> [484,]  75   5      0        119        1   150
#> [485,]  75  12      1          1        1   120
#> [486,]  80   8      0          8        1   120
#> [487,]  75  13      1          6        0   150
#> [488,]  79   4      0         80        0   145
#> [489,]  78   2      1          1        0   130
#> [490,]  77   2      1          0        1   143
#> [491,]  78  10      0        180        1   130
#> [492,]  76  11      1          0        0   120
#> [493,]  75   3      0          3        0     0
#> [494,]  76   7      0         29        1   150
#> [495,]  77  24      0         24        1   160
#> [496,]  79   8      0         32        1   120
#> [497,]  78  11      1          1        1   140
#> [498,]  79   2      1          0        1   121
#> [499,]  78  14      1          0        1   140
#> [500,]  81   1      0          1        0   130
#> [501,]  78  11      1          8        1   118
#> [502,]  79   4      0          4        1   125
#> [503,]  76  10      1          8        0   180
#> [504,]  77   6      0          6        1   107
#> [505,]  80   3      1          0        1   120
#> [506,]  76   1      0          1        1   140
#> [507,]  76   1      0          1        1    90
#> [508,]  78   7      1          0        1   110
#> [509,]  79   3      0          3        0   120
#> [510,]  77   6      0          6        1   144
#> [511,]  79   4      1          0        1   120
#> [512,]  80  15      1         12        1   150
#> [513,]  82   5      0          8        1   120
#> [514,]  80  40      1          0        1   138
#> [515,]  78   4      0         59        1   112
#> [516,]  80  17      1         12        0   100
#> [517,]  76   7      0        161        0   151
#> [518,]  79  10      0         10        1   120
#> [519,]  81   4      1          2        1   126
#> [520,]  79  28      0        164        0   100
#> [521,]  80   6      0        173        1   160
#> [522,]  79   1      0         37        1   140
#> [523,]  81   3      0        180        0   184
#> [524,]  81   2      0        175        0   172
#> [525,]  78   7      0          7        1   147
#> [526,]  77  13      1          0        1   190
#> [527,]  78  15      0         15        0   165
#> [528,]  80   5      1          1        1   108
#> [529,]  79   3      0          3        1   101
#> [530,]  76   1      0        166        0   131
#> [531,]  81   4      1          1        1   104
#> [532,]  82   3      1          1        1   144
#> [533,]  77   5      0         85        0   188
#> [534,]  79   6      0          6        0   152
#> [535,]  78   2      0        180        0   148
#> [536,]  77   4      0        180        1    98
#> [537,]  78  12      0        180        0   134
#> [538,]  82  21      1          2        0   155
#> [539,]  84  22      1         10        0   180
#> [540,]  80   6      0          6        1   110
#> [541,]  83   9      1          5        1   170
#> [542,]  83   4      0        103        0    97
#> [543,]  81  11      1          8        0   160
#> [544,]  80  11      1          8        0   170
#> [545,]  78  23      1         10        1   145
#> [546,]  79   4      0          4        1   183
#> [547,]  78   9      1          4        1   120
#> [548,]  82   8      1          1        0   128
#> [549,]  79   1      0        180        1   170
#> [550,]  81  15      0        180        1   140
#> [551,]  80   7      1          0        1   146
#> [552,]  84   5      1          1        1    85
#> [553,]  81  20      1          9        0   170
#> [554,]  81  16      0         16        1   110
#> [555,]  80   6      1          0        1   150
#> [556,]  81   8      0        180        0   146
#> [557,]  79   0      1          0        1    96
#> [558,]  81   2      1          1        0   198
#> [559,]  83   2      0          2        1   155
#> [560,]  84   4      0        167        0   198
#> [561,]  82  23      1          0        0   110
#> [562,]  81   4      0         90        1   138
#> [563,]  79   9      1          8        0   150
#> [564,]  80  13      1          8        1   140
#> [565,]  84   4      0         89        1   129
#> [566,]  80   2      1          0        1   130
#> [567,]  79   4      0          4        1    60
#> [568,]  80   6      0         71        1   189
#> [569,]  83   1      0          1        1   100
#> [570,]  80  30      1         13        0   220
#> [571,]  83   9      0        180        0   198
#> [572,]  79  14      1          0        0   110
#> [573,]  83   2      0        154        0   130
#> [574,]  82   0      0          2        1   100
#> [575,]  85   9      1          6        1   160
#> [576,]  84  15      1         13        1   110
#> [577,]  82   5      1          0        1   146
#> [578,]  81   4      0          4        0   160
#> [579,]  86  12      0        180        1   120
#> [580,]  83  12      1          2        1   170
#> [581,]  81  19      1         14        0   120
#> [582,]  82   3      1          2        0   130
#> [583,]  82  15      1          0        0   183
#> [584,]  80   2      0         88        0   135
#> [585,]  86   8      0          8        1   132
#> [586,]  84   6      0        165        0   145
#> [587,]  82   9      0        180        1   134
#> [588,]  85   3      0          3        1   118
#> [589,]  81   2      1          0        1   118
#> [590,]  82   1      0        180        1   193
#> [591,]  83   4      0          4        0   130
#> [592,]  87   2      0          5        1   137
#> [593,]  86  12      1          0        1   132
#> [594,]  82  14      1         11        1   103
#> [595,]  86   6      1          0        1   140
#> [596,]  84  16      0         70        1   150
#> [597,]  83  19      0         43        0   150
#> [598,]  84   3      1          2        0   125
#> [599,]  83  10      1          0        1   190
#> [600,]  88  14      1          3        1   130
#> [601,]  84   3      0          3        1   121
#> [602,]  84   7      1          2        0   148
#> [603,]  87   2      0        180        0   113
#> [604,]  84   3      0        180        1   170
#> [605,]  86   4      0         38        1   122
#> [606,]  82   4      0          4        0   130
#> [607,]  86  13      0        177        0   163
#> [608,]  86   6      0          6        1   117
#> [609,]  84  13      0         62        1   100
#> [610,]  88   4      0          4        0   100
#> [611,]  83  20      1          3        1   150
#> [612,]  83   9      0         65        1   150
#> [613,]  86   9      1          7        1   142
#> [614,]  86   6      0         46        0   173
#> [615,]  88   3      0        115        0   110
#> [616,]  88   2      0        180        1    68
#> [617,]  83   3      0          3        1   130
#> [618,]  86  15      1          8        1   109
#> [619,]  88   4      0          4        0    86
#> [620,]  89   4      0          4        1   153
#> [621,]  89   5      0        119        1   140
#> [622,]  87   6      0        180        1   110
#> [623,]  84   8      0        180        1   119
#> [624,]  84   2      0        110        1   174
#> [625,]  87  29      0         29        1    97
#> [626,]  87  15      1          9        1   138
#> [627,]  89  10      0         46        1   170
#> [628,]  90  14      0         14        1   100
#> [629,]  88   1      0          1        0   135
#> [630,]  91   8      0          8        0   100
#> [631,]  87   2      0        180        0   160
#> [632,]  87   6      1          0        0   125
#> [633,]  91  10      0        145        0   135
#> [634,]  86   3      1          0        1    80
#> [635,]  88   7      0         24        0   119
#> [636,]  90  11      1         10        1   186
#> [637,]  87   6      0        126        1   168
#> [638,]  86  10      0        180        1   137
#> [639,]  86   9      1          7        0   130
#> [640,]  87  43      0        178        1   130
#> [641,]  87   5      0         36        1   150
#> [642,]  90   5      1          0        1   125
#> [643,]  89   3      1          1        1   160
#> [644,]  92   1      0          1        1   167
#> [645,]  88   5      0        158        0   100
#> [646,]  87   7      0         74        1   105
#> [647,]  89  12      1          0        1   130
#> [648,]  89   2      0        168        0   118
#> [649,]  89  52      0         52        1   130
#> [650,]  92   7      0          7        1   110
#> [651,]  89   4      0          4        1   159
#> [652,]  91   0      0          0        0     0
#> [653,]  89  14      0        180        1    84
#> [654,]  90  18      0        180        0   188
#> [655,]  90  19      1         11        1   129
#> [656,]  94   6      0         50        0    78
#> [657,]  90   1      0          1        1   118
#> [658,]  91   2      0          2        1   116
#> [659,]  93   8      0        179        1   110
#> [660,]  94   8      0          8        1   142
#> [661,]  91   1      0        180        0   158
#> [662,]  90  16      0         16        1   106
#> [663,]  96   3      0         12        1    97
#> [664,]  91  12      0         53        1   212
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+   2.0+ 155.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+   6.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+  73.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [51] 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0 
#>  [61] 180.0+ 180.0+   2.0    1.0  179.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+
#>  [71]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0 
#>  [81]  88.0+   4.0+ 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+   4.0+
#>  [91]  85.0  180.0+ 180.0+ 166.0+  99.0  180.0+  16.0+ 180.0+ 152.0+   7.0+
#> [101]   6.0+ 180.0+  13.0+ 180.0+ 180.0+ 174.0+  28.0    6.0+   9.0+ 180.0+
#> [111] 180.0+ 175.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121]  16.0+  16.0   15.0+ 180.0+ 180.0+ 134.0+ 180.0+   8.0    2.0  180.0+
#> [131] 140.0  180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5 
#> [141] 180.0+ 180.0+ 171.0+  15.0  166.0+ 180.0+ 147.0+ 180.0+ 180.0+ 180.0+
#> [151]   5.0+ 180.0+   4.0+ 180.0+   9.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+ 180.0+ 161.0+
#> [171] 171.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+  10.0+ 180.0+ 180.0+   3.0+
#> [181]  19.0  180.0+   9.0+ 172.0+   8.0  180.0+   1.0+  15.0  180.0+ 180.0+
#> [191] 180.0+ 170.0  180.0+ 169.0    7.0    7.0+   6.0  180.0+ 180.0+ 180.0+
#> [201]   3.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+ 180.0+   1.0  180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0 
#> [221]   7.0+  22.0  180.0+ 180.0+   1.0  180.0+ 180.0+   4.0+   3.0+ 167.0 
#> [231]   6.0+ 180.0+  17.0  180.0+  12.0  180.0+ 180.0+  14.0+  36.0    3.0+
#> [241]  88.0  180.0+  12.0  180.0+ 180.0+   0.5  180.0+  12.0+ 180.0+ 180.0+
#> [251] 180.0+   9.0    3.0  180.0+ 180.0+  11.0+   2.0+  18.0+ 180.0+ 180.0+
#> [261]   3.0+  15.0  180.0+  13.0  179.0+  14.0+   0.5+ 180.0+ 175.0+ 180.0+
#> [271] 180.0+   7.0+   8.0    5.0   16.0  180.0+ 180.0+ 180.0+  11.0+  80.0 
#> [281]  15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0 
#> [291] 175.0  180.0+  10.0  180.0+   6.0   19.0+  12.0   99.0  180.0+ 179.0+
#> [301] 180.0+ 180.0+  11.0+ 180.0+   0.5   18.0    7.0+ 180.0+  93.0   21.0+
#> [311]  18.0+   4.0    7.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 171.0  180.0+
#> [321] 174.0+   6.0    0.5  180.0+ 180.0+  14.0+ 180.0+  45.0  180.0+  36.0 
#> [331]   5.0+ 180.0+  97.0  180.0+   7.0    8.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [341]   7.0  180.0+   7.0    8.0+  13.0+ 123.0  180.0+  51.0    1.0   60.0 
#> [351]  76.0   10.0+ 180.0+ 180.0+   7.0+   9.0  180.0+ 180.0+  12.0  180.0+
#> [361] 180.0+ 152.0    2.0   76.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [371]  16.0+ 180.0+ 180.0+   6.0  180.0+   7.0+  15.0    3.0+  13.0+ 180.0+
#> [381] 180.0+   2.0    3.0+ 180.0+  20.0    0.5  180.0+ 180.0+ 180.0+   8.0 
#> [391]   3.0   87.0  180.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0 
#> [401] 180.0+ 175.0  180.0+  10.0+ 180.0+ 180.0+   8.0+ 179.0+   1.0  180.0+
#> [411] 159.0   15.0    1.0   13.0    4.0+ 180.0+  10.0    1.0  180.0+  11.0 
#> [421]   3.0+ 180.0+  12.0  180.0+ 180.0+  34.0  180.0+ 180.0+   5.0   11.0+
#> [431]   4.0+ 180.0+   7.0  180.0+  10.0  180.0+   3.0  180.0+ 180.0+ 180.0+
#> [441]   6.0  180.0+  17.0+ 174.0+   0.5   12.0  180.0+ 180.0+  46.0   52.0 
#> [451] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  33.0    5.0  180.0+
#> [461] 180.0+   1.0   12.0  180.0+   7.0+ 168.0+ 180.0+ 180.0+ 176.0+  18.0 
#> [471] 180.0+  47.0  180.0+  11.0  180.0+   7.0  180.0+   8.0+  32.0  180.0+
#> [481]  10.0  180.0+ 172.0  119.0   12.0    8.0  180.0+  80.0  180.0+   2.0 
#> [491] 180.0+  11.0    3.0   29.0   24.0   32.0  180.0+ 180.0+ 180.0+   1.0 
#> [501]  11.0    4.0   10.0+   6.0    3.0+   1.0    1.0   43.0    3.0    6.0 
#> [511] 138.0  180.0+   8.0   40.0   59.0   17.0  161.0   10.0+  93.0  164.0 
#> [521] 173.0   37.0  180.0+ 175.0+   7.0+  22.0   15.0+   5.0+   3.0  166.0+
#> [531]  71.0  180.0+  85.0    6.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0 
#> [541]   9.0+ 103.0  180.0+ 169.0   70.0    4.0  180.0+ 180.0+ 180.0+ 180.0+
#> [551]   7.0+ 180.0+  20.0   16.0  180.0+ 180.0+   0.5  180.0+   2.0  167.0 
#> [561]  62.0   90.0  180.0+ 180.0+  89.0  180.0+   4.0   71.0    1.0   30.0 
#> [571] 180.0+ 180.0+ 154.0    2.0  180.0+ 180.0+   5.0+   4.0+ 180.0+  77.0 
#> [581] 180.0+   3.0   83.0   88.0    8.0  165.0  180.0+   3.0+ 180.0+ 180.0+
#> [591]   4.0+   5.0  180.0+ 174.0    6.0   70.0   43.0  180.0+ 180.0+  14.0 
#> [601]   3.0  180.0+ 180.0+ 180.0+  38.0    4.0  177.0    6.0+  62.0    4.0+
#> [611]  20.0   65.0   11.0   46.0  115.0  180.0+   3.0+ 180.0+   4.0    4.0 
#> [621] 119.0  180.0+ 180.0+ 110.0   29.0  180.0+  46.0   14.0    1.0+   8.0 
#> [631] 180.0+  25.0  145.0    3.0   24.0   11.0  126.0  180.0+ 180.0+ 178.0+
#> [641]  36.0   89.0    3.0+   1.0  158.0   74.0  180.0+ 168.0   52.0    7.0 
#> [651]   4.0    0.5  180.0+ 180.0+ 180.0+  50.0    1.0+   2.0  179.0+   8.0+
#> [661] 180.0+  16.0   12.0   53.0    7.0+   0.5    2.0  180.0+   3.0   15.0+
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
#>   0.8680736 
```
