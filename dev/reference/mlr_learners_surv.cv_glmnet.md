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
#> min 0.00326    45   2.713 0.1164       6
#> 1se 0.06401    13   2.829 0.1120       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      0        180        0   121
#>   [7,]  35   2      1          1        1   112
#>   [8,]  37   9      0        180        1   151
#>   [9,]  38  13      1          0        1   161
#>  [10,]  38   2      0        115        0   150
#>  [11,]  36   1      0        180        1   155
#>  [12,]  35   0      0        180        1   119
#>  [13,]  36   5      1          0        1   115
#>  [14,]  33   6      1          1        1   115
#>  [15,]  38  12      1         11        1    92
#>  [16,]  40  12      1          9        0   153
#>  [17,]  42   3      1          1        1   130
#>  [18,]  40   2      1          1        1   148
#>  [19,]  38   5      1          3        0   125
#>  [20,]  42   2      0          2        0   140
#>  [21,]  40  11      1         10        1   120
#>  [22,]  42   2      0        180        0   100
#>  [23,]  43   3      1          0        1   100
#>  [24,]  41   2      1          1        0   166
#>  [25,]  40   1      1          0        1   145
#>  [26,]  42  15      1         13        1   125
#>  [27,]  40   3      1          1        0   170
#>  [28,]  42  12      1         10        1   170
#>  [29,]  42   2      0        180        1   124
#>  [30,]  44   5      1          1        0   170
#>  [31,]  41  10      1          8        0   150
#>  [32,]  44   3      0        180        0   141
#>  [33,]  41  13      1          1        0   140
#>  [34,]  45   9      1          7        0   110
#>  [35,]  45   6      0        180        1   170
#>  [36,]  41   5      1          4        1   141
#>  [37,]  44   2      1          1        1   150
#>  [38,]  43   2      0        180        1   140
#>  [39,]  46  15      0        180        0   120
#>  [40,]  46   2      1          1        0   126
#>  [41,]  47   4      1          3        0   118
#>  [42,]  45   3      0        150        0   130
#>  [43,]  44   3      1          0        1   180
#>  [44,]  46   7      1          2        0   166
#>  [45,]  43  29      0        180        1   180
#>  [46,]  43  10      0        180        0   185
#>  [47,]  47   4      1          3        1   160
#>  [48,]  43   3      1          0        1   124
#>  [49,]  49   5      0         73        1   136
#>  [50,]  45   5      0          5        0   141
#>  [51,]  46   2      1          1        1   122
#>  [52,]  46   6      1          0        1   100
#>  [53,]  44   4      1          0        1   114
#>  [54,]  44   9      1          8        1   135
#>  [55,]  45   5      0        180        1   190
#>  [56,]  46   5      1          3        0   130
#>  [57,]  46   4      0        180        1   121
#>  [58,]  46  15      0        180        1   120
#>  [59,]  45   9      1          0        1   145
#>  [60,]  48   3      0        180        0   154
#>  [61,]  47   5      1          3        1   130
#>  [62,]  47   9      1          6        0   170
#>  [63,]  46   3      1          0        1   119
#>  [64,]  49   4      0        180        0   117
#>  [65,]  47  10      0         10        1   140
#>  [66,]  50   4      1          1        0   125
#>  [67,]  50   6      1          2        1   140
#>  [68,]  46   9      1          9        1   122
#>  [69,]  50   7      0        180        1   110
#>  [70,]  49  15      1         11        1   160
#>  [71,]  47   2      0        180        0   150
#>  [72,]  49  23      0        179        1   112
#>  [73,]  46   6      1          0        1   156
#>  [74,]  52   2      0        180        1   170
#>  [75,]  50   7      1          0        1    92
#>  [76,]  50   4      0          4        1   100
#>  [77,]  51   3      1          2        0   113
#>  [78,]  50   1      1          0        0   150
#>  [79,]  50   9      0        180        0   130
#>  [80,]  49   7      1          4        1    90
#>  [81,]  47   8      0        180        0   160
#>  [82,]  52   2      0        180        0   155
#>  [83,]  46   3      0        180        1   120
#>  [84,]  46   1      1          1        0   145
#>  [85,]  50   4      1          1        0   150
#>  [86,]  48   7      1          0        1   110
#>  [87,]  53   8      0         36        1   160
#>  [88,]  48  17      1         10        0   111
#>  [89,]  52   4      1          4        0   152
#>  [90,]  49  15      0        180        1   160
#>  [91,]  53   7      1          0        0   199
#>  [92,]  54   6      1          3        0   129
#>  [93,]  51   3      1          1        0   140
#>  [94,]  50  10      1          6        0   122
#>  [95,]  50  14      1         13        0   170
#>  [96,]  53   8      1          7        0   160
#>  [97,]  51  25      1          1        0   202
#>  [98,]  48  11      1         10        0   120
#>  [99,]  53   4      1          0        1   156
#> [100,]  51  13      0         99        1   160
#> [101,]  54   9      1          0        1   138
#> [102,]  49  16      0         16        0   125
#> [103,]  55   3      1          1        0   150
#> [104,]  54  23      1         10        0   131
#> [105,]  52   7      1          2        0   154
#> [106,]  55   6      1          2        1   114
#> [107,]  54   9      1          1        0   130
#> [108,]  55   4      1          2        0   150
#> [109,]  52   4      0        180        1   180
#> [110,]  51  13      1         11        0   145
#> [111,]  52   4      0        180        0   183
#> [112,]  55  28      1         13        1   160
#> [113,]  49   1      0          1        1   110
#> [114,]  50   7      1          1        0   156
#> [115,]  53   8      1          0        1   130
#> [116,]  56   4      1          1        1   130
#> [117,]  55   1      0        180        0   127
#> [118,]  55   2      0          2        0   145
#> [119,]  54   1      0        180        0   162
#> [120,]  54   7      1          0        1   100
#> [121,]  55   5      1          4        1   120
#> [122,]  54   3      0        180        1   180
#> [123,]  55   6      0        180        0   170
#> [124,]  53  15      0         15        1    90
#> [125,]  53   4      0        180        1   150
#> [126,]  55   6      0        180        1   100
#> [127,]  55   6      1          5        1   138
#> [128,]  54  12      1          0        1   190
#> [129,]  55   2      0        134        1   140
#> [130,]  56   3      0          8        1   139
#> [131,]  57   3      0          3        0   120
#> [132,]  54   7      1          2        0   129
#> [133,]  54   2      1          1        0   135
#> [134,]  57   5      1          3        1   138
#> [135,]  57   1      0          1        1   100
#> [136,]  52   2      0        180        0   140
#> [137,]  55  11      1          7        0   104
#> [138,]  53   3      1          0        1   200
#> [139,]  57  10      0        180        1   170
#> [140,]  58   8      0          8        1   130
#> [141,]  54   5      0        180        1   108
#> [142,]  55   3      1          1        1   156
#> [143,]  53  21      1         13        1   130
#> [144,]  59   3      1          1        0   172
#> [145,]  57   4      0        180        1   119
#> [146,]  58   6      1          0        1    90
#> [147,]  53  15      1         10        1   130
#> [148,]  54  17      1          8        1   227
#> [149,]  55  13      0        166        1   140
#> [150,]  56   5      0          5        1   150
#> [151,]  57   4      1          2        1   185
#> [152,]  53   7      1          0        1   120
#> [153,]  57  11      1         10        1   129
#> [154,]  55   3      1          2        0   140
#> [155,]  54   7      1          0        1   141
#> [156,]  59  15      1         10        0   140
#> [157,]  58   1      1          1        1   200
#> [158,]  55   5      1          0        0   140
#> [159,]  56   7      1          5        1   120
#> [160,]  55   2      0          2        0   106
#> [161,]  59   9      1          1        1   125
#> [162,]  57   1      0        180        0   148
#> [163,]  60  11      1          9        0   106
#> [164,]  57   2      0          2        1   120
#> [165,]  60   5      1          1        0   138
#> [166,]  55   5      1          0        1   160
#> [167,]  57  10      1          9        0   103
#> [168,]  58  26      1          0        1   189
#> [169,]  61   9      0          9        1   160
#> [170,]  58   4      1          3        0   120
#> [171,]  60   0      1          0        1    80
#> [172,]  59   2      1          1        0   140
#> [173,]  58   8      0        161        1   140
#> [174,]  58  14      1          6        0   190
#> [175,]  61   9      1          8        0   150
#> [176,]  61   3      1          2        1   102
#> [177,]  58   1      0          1        1   100
#> [178,]  61  20      1         13        0   130
#> [179,]  57  13      1         10        0   110
#> [180,]  58  10      0         10        1   150
#> [181,]  57  11      0        180        1   150
#> [182,]  56  14      0         45        0   130
#> [183,]  56  13      1          6        1   158
#> [184,]  56  18      1         11        1   165
#> [185,]  55   4      1          3        1   160
#> [186,]  55   9      1          7        1   135
#> [187,]  61   4      1          0        1   115
#> [188,]  59  11      1          8        1   190
#> [189,]  57  15      1         13        1   110
#> [190,]  59  10      0        180        0   160
#> [191,]  61   8      0         77        0   120
#> [192,]  61  13      0         13        0   210
#> [193,]  58   8      1          5        0   152
#> [194,]  62  10      1          0        1   153
#> [195,]  62   7      1          2        1   180
#> [196,]  57   3      1          0        0   100
#> [197,]  61  18      0        170        0   140
#> [198,]  61  28      1          7        0   133
#> [199,]  58   8      1          3        1   150
#> [200,]  57   7      0        169        0   180
#> [201,]  61   7      0          7        1   150
#> [202,]  60   7      0          7        0   147
#> [203,]  61   6      0          6        0   134
#> [204,]  59  13      1          2        0   198
#> [205,]  60  17      1          8        1   140
#> [206,]  58   3      1          0        1   146
#> [207,]  62   4      1          3        0   173
#> [208,]  58   2      0         30        0   202
#> [209,]  63   6      0         28        1   120
#> [210,]  61  13      0         13        0   120
#> [211,]  61   5      0          5        1   110
#> [212,]  57  18      1          9        1    93
#> [213,]  57   2      1          1        0   159
#> [214,]  62  17      1         10        1   180
#> [215,]  62   1      1          0        1   172
#> [216,]  58   7      0        180        1   150
#> [217,]  63   3      1          1        0   180
#> [218,]  63   1      0        180        1   130
#> [219,]  61   7      0        180        0   135
#> [220,]  63   4      1          3        0   222
#> [221,]  62   3      0        180        1   105
#> [222,]  63   4      0        180        1   190
#> [223,]  63   4      1          1        0   155
#> [224,]  61   9      1          9        1   150
#> [225,]  58   9      1          9        0   110
#> [226,]  59   1      0         22        1   162
#> [227,]  59   4      0        180        0   196
#> [228,]  60   7      0          7        0   140
#> [229,]  65  13      0        180        1   100
#> [230,]  63   1      0          1        0   162
#> [231,]  63   1      0          1        0   130
#> [232,]  59   4      0          4        0   149
#> [233,]  60   3      0          3        0   168
#> [234,]  64  10      1          9        0   160
#> [235,]  62   6      0          6        0   120
#> [236,]  60   8      0         17        1   130
#> [237,]  61   6      1          1        1   117
#> [238,]  66   1      1          0        1   120
#> [239,]  64   6      1          0        1   140
#> [240,]  63  10      1          0        1   148
#> [241,]  63  14      1          9        0   123
#> [242,]  61  10      1          2        1   194
#> [243,]  64  32      1          9        1   160
#> [244,]  66   5      1          0        1   110
#> [245,]  65   8      1          0        0   168
#> [246,]  65  10      1          8        1   120
#> [247,]  64   0      0          0        1    90
#> [248,]  60   6      0        180        0   130
#> [249,]  64  21      1         10        0   190
#> [250,]  61  12      1         11        0   154
#> [251,]  61   4      0        180        1   113
#> [252,]  64   7      0        180        1   120
#> [253,]  66   6      1          1        1   130
#> [254,]  62   3      1          1        1   199
#> [255,]  65   6      0          9        0   112
#> [256,]  63   5      1          4        0   170
#> [257,]  63   2      1          1        0   180
#> [258,]  62  13      1         11        0   180
#> [259,]  67  11      0         11        1   100
#> [260,]  64   2      0          2        0   201
#> [261,]  66  16      1         11        1   169
#> [262,]  62   9      0        180        0   145
#> [263,]  61  15      1         10        0   130
#> [264,]  63   9      1          8        1   160
#> [265,]  63   3      1          2        0   120
#> [266,]  63   2      1          0        0   140
#> [267,]  64  19      1          8        1   160
#> [268,]  65  15      1         11        1   160
#> [269,]  64   6      1          0        1   125
#> [270,]  64  14      1         13        1   150
#> [271,]  65   3      0          3        0   105
#> [272,]  67   4      1          3        0   130
#> [273,]  66   3      1          0        1   135
#> [274,]  66   6      1          0        1   140
#> [275,]  65   2      1          1        1   170
#> [276,]  64  10      1          9        1   110
#> [277,]  63   7      1          0        0   162
#> [278,]  68   5      0          5        1    90
#> [279,]  63  10      0         16        1   160
#> [280,]  66  14      0        180        0   130
#> [281,]  64   1      0          1        1   120
#> [282,]  65  17      1         14        1   100
#> [283,]  63   8      1          1        1   162
#> [284,]  65  18      1          3        0   120
#> [285,]  63   1      1          0        1   155
#> [286,]  63  10      0         18        1   130
#> [287,]  67  11      0         11        0   150
#> [288,]  68  11      0        180        0   160
#> [289,]  68  14      0         79        0   172
#> [290,]  66  12      1         10        1   150
#> [291,]  65  15      1         12        1   150
#> [292,]  66  11      1          0        0   100
#> [293,]  63   2      0        180        0   150
#> [294,]  65  11      1          6        0   130
#> [295,]  69   6      0        180        1   100
#> [296,]  66   9      1          8        0   130
#> [297,]  68  14      1         13        1   140
#> [298,]  66   3      0          3        1   138
#> [299,]  69   1      1          0        0   170
#> [300,]  67   1      0        180        1   160
#> [301,]  68  10      1         10        1   150
#> [302,]  63   2      1          0        0    99
#> [303,]  67   2      0        180        0   184
#> [304,]  65  10      1          1        1   148
#> [305,]  66  19      1         12        1   150
#> [306,]  67  12      1         12        0   160
#> [307,]  69   6      0         99        1   140
#> [308,]  65   4      1          1        0   130
#> [309,]  64   4      0        179        0   160
#> [310,]  66   4      0        180        1   130
#> [311,]  64  11      0         11        0   125
#> [312,]  64   4      0        180        1   140
#> [313,]  64   0      1          0        1   118
#> [314,]  67   2      0         18        0   131
#> [315,]  66   7      1          5        1   131
#> [316,]  66   4      0        180        0   177
#> [317,]  68   4      1          0        1   160
#> [318,]  69   4      1          3        1   150
#> [319,]  65  13      1         12        1   130
#> [320,]  64  21      0         21        1   155
#> [321,]  66   6      0        180        0   140
#> [322,]  65   1      0          1        1   120
#> [323,]  65   6      0        101        1   115
#> [324,]  71   3      0          5        0   112
#> [325,]  70   7      1          0        1   190
#> [326,]  68   7      0        150        0   210
#> [327,]  71  20      1          0        1   160
#> [328,]  66   9      1          3        1   151
#> [329,]  66   1      1          1        1   165
#> [330,]  70   4      1          0        1   180
#> [331,]  69   8      0        180        1   153
#> [332,]  67   6      1          4        0   130
#> [333,]  68  18      1         14        1   170
#> [334,]  65   2      0        180        0   130
#> [335,]  68   7      1          0        1   150
#> [336,]  69   3      1          2        0   151
#> [337,]  69   8      0        180        1   180
#> [338,]  71   7      0          7        0   230
#> [339,]  66   2      0          2        1   228
#> [340,]  71   6      0         45        1   158
#> [341,]  69   5      0          5        1   142
#> [342,]  71   3      0        103        0   133
#> [343,]  70  22      1         13        0   103
#> [344,]  67   1      0         36        1   104
#> [345,]  68   6      0        180        0   145
#> [346,]  72   3      1          0        1   132
#> [347,]  72   7      0          7        1   110
#> [348,]  69   8      1          7        1   108
#> [349,]  67   3      0        180        0   110
#> [350,]  69  19      0        180        0   130
#> [351,]  68  18      0         18        1   100
#> [352,]  67  14      0        172        1   140
#> [353,]  66   2      0        180        0   130
#> [354,]  67   7      1          4        0   122
#> [355,]  69   4      1          3        0   132
#> [356,]  69   8      1          2        0   121
#> [357,]  70   9      0        180        1   142
#> [358,]  72   5      1          4        0   170
#> [359,]  67  22      1          1        1   140
#> [360,]  68   3      0         19        0   135
#> [361,]  69   1      0          1        1   110
#> [362,]  67   1      0          1        1    60
#> [363,]  67   4      0         60        1   136
#> [364,]  69   5      0         76        0   120
#> [365,]  67   8      1          0        1   130
#> [366,]  68  10      1          8        1   160
#> [367,]  66  24      1         13        0   130
#> [368,]  70   7      0          7        0   102
#> [369,]  73  20      1          0        1   170
#> [370,]  69  10      1          6        1   120
#> [371,]  70  11      0        180        1   210
#> [372,]  72  19      1          8        0   120
#> [373,]  72  12      1         10        0   170
#> [374,]  67   8      0        180        1   170
#> [375,]  72   2      0          2        1   100
#> [376,]  67   4      1          1        0   134
#> [377,]  70   3      0        180        0   121
#> [378,]  71   3      1          2        0   150
#> [379,]  68   4      1          3        0   210
#> [380,]  69  16      1         10        1   140
#> [381,]  72  16      1          1        1   130
#> [382,]  69   1      1          0        0   155
#> [383,]  72   8      1          1        1   150
#> [384,]  71   2      1          0        1   180
#> [385,]  68  15      1         13        1   130
#> [386,]  70   3      0          3        1   159
#> [387,]  70  13      1          9        0   100
#> [388,]  74   8      1          0        1    85
#> [389,]  73   4      0        180        1   154
#> [390,]  69   2      1          0        1   110
#> [391,]  74  20      0         20        1   180
#> [392,]  74   0      1          0        1    90
#> [393,]  73   3      1          0        1   136
#> [394,]  70   5      1          0        1   190
#> [395,]  71  17      1         11        0   160
#> [396,]  69  12      1          1        1   149
#> [397,]  70  26      1         11        1   120
#> [398,]  73   4      0         58        1   160
#> [399,]  72   5      1          3        1   160
#> [400,]  70   3      0        180        1   154
#> [401,]  73   6      0        180        0   110
#> [402,]  72  15      1          0        1   150
#> [403,]  71   7      1          2        0   143
#> [404,]  72   8      1          0        1   140
#> [405,]  74   3      0          3        1   150
#> [406,]  71  13      1          8        0   121
#> [407,]  69   2      1          1        1    80
#> [408,]  70   4      1          0        1   140
#> [409,]  71  14      1         13        1   170
#> [410,]  74   7      1          0        1   117
#> [411,]  72  10      1          8        1   153
#> [412,]  69   7      0        180        1   144
#> [413,]  72  15      1         13        0   156
#> [414,]  70   8      0          8        0   120
#> [415,]  71  10      1          9        1   120
#> [416,]  75   1      0          1        0   133
#> [417,]  73  10      1          9        1   146
#> [418,]  75   9      1          7        0   140
#> [419,]  71  11      1          8        0   110
#> [420,]  71   4      0          4        0   134
#> [421,]  72  15      1         12        1   120
#> [422,]  70   7      1          4        0   184
#> [423,]  72   1      1          1        0   168
#> [424,]  73  10      0        180        0   162
#> [425,]  72  11      0         11        1   140
#> [426,]  70   3      0          3        0   150
#> [427,]  73   5      1          3        1   112
#> [428,]  76  25      1         12        1   170
#> [429,]  73  12      1         12        1   140
#> [430,]  75   1      0        180        1   140
#> [431,]  72   4      1          0        1   197
#> [432,]  71   3      1          0        0   144
#> [433,]  73   5      0        180        0   126
#> [434,]  73   4      0        180        0   124
#> [435,]  74  34      1          8        1   233
#> [436,]  72   5      0        180        0   154
#> [437,]  72   3      0        180        0   160
#> [438,]  76   5      0          5        1   130
#> [439,]  72   7      1          2        0   142
#> [440,]  73  15      0         15        1   160
#> [441,]  71  16      0        180        0   140
#> [442,]  73  10      1         10        0   124
#> [443,]  74   3      0          3        1   128
#> [444,]  76   1      0        180        0   114
#> [445,]  76   8      1          0        1   141
#> [446,]  74  19      1          4        1   200
#> [447,]  73   6      0          6        1   114
#> [448,]  74   2      0        180        0   190
#> [449,]  72   4      0         85        1   120
#> [450,]  76  17      1          0        1   200
#> [451,]  75   7      0          7        0   190
#> [452,]  75   0      0          0        1   130
#> [453,]  73  13      1         11        0   195
#> [454,]  75  12      0         12        1   160
#> [455,]  74   8      1          0        1   105
#> [456,]  75   4      1          2        1   188
#> [457,]  74   6      0        180        0   160
#> [458,]  76   4      0          4        1   155
#> [459,]  74   2      0        180        0   111
#> [460,]  72   5      0        180        0   120
#> [461,]  76  44      1         10        0   105
#> [462,]  76   5      0        180        0   185
#> [463,]  74  10      1          0        1   135
#> [464,]  76   5      1          0        1   167
#> [465,]  74   8      1          8        1   170
#> [466,]  75   9      0        180        1   140
#> [467,]  77  12      1          9        1   100
#> [468,]  77   1      1          0        1    90
#> [469,]  76  12      1         11        1   120
#> [470,]  78   5      1          0        1   170
#> [471,]  73   7      1          0        0   174
#> [472,]  74   6      0         79        1   140
#> [473,]  75   3      1          1        1   171
#> [474,]  74   9      1          8        0   200
#> [475,]  75   6      0        180        0   150
#> [476,]  79  10      1          8        0   190
#> [477,]  77   3      0        180        0   110
#> [478,]  73   8      1          1        1   162
#> [479,]  73  11      1          2        1   110
#> [480,]  74   2      0        180        0   100
#> [481,]  78   7      0          7        1   133
#> [482,]  74  15      0        180        1   172
#> [483,]  78   8      1          6        1   110
#> [484,]  76  13      1          1        1   170
#> [485,]  78  32      1          9        1   198
#> [486,]  79   6      0        180        0   170
#> [487,]  80  10      1          6        1   147
#> [488,]  78   0      0        180        1   212
#> [489,]  78  13      1          5        0   130
#> [490,]  75   5      0        119        1   150
#> [491,]  78  15      0        180        1   270
#> [492,]  74  10      1          8        0   135
#> [493,]  76   1      0          1        1    83
#> [494,]  79   4      0         80        0   145
#> [495,]  78  12      1          9        0   150
#> [496,]  78   2      1          1        0   130
#> [497,]  77   2      1          0        1   143
#> [498,]  76  11      1          0        0   120
#> [499,]  75  11      1          4        0   162
#> [500,]  75   3      0          3        0     0
#> [501,]  76   7      0         29        1   150
#> [502,]  79   8      0         32        1   120
#> [503,]  80   9      0         23        1   128
#> [504,]  80   6      0          6        1   150
#> [505,]  76   3      1          0        1   140
#> [506,]  78  11      1          1        1   140
#> [507,]  79  11      0        180        0   160
#> [508,]  79   2      1          0        1   121
#> [509,]  78  14      1          0        1   140
#> [510,]  81   1      0          1        0   130
#> [511,]  78  11      1          8        1   118
#> [512,]  77   6      0          6        1   107
#> [513,]  80   3      1          0        1   120
#> [514,]  76   1      0          1        1   140
#> [515,]  77  31      1          3        1   161
#> [516,]  77   7      0        180        1   170
#> [517,]  81   1      0        180        0   120
#> [518,]  80  15      1         12        1   150
#> [519,]  77   9      1          4        0   141
#> [520,]  82   5      0          8        1   120
#> [521,]  80  40      1          0        1   138
#> [522,]  78   4      0         59        1   112
#> [523,]  80  17      1         12        0   100
#> [524,]  76   7      0        161        0   151
#> [525,]  79  10      0         10        1   120
#> [526,]  80  15      1          0        1    90
#> [527,]  80   6      0        173        1   160
#> [528,]  81   3      0        180        0   184
#> [529,]  81   2      0        175        0   172
#> [530,]  78   7      0          7        1   147
#> [531,]  77  13      1          0        1   190
#> [532,]  78  15      0         15        0   165
#> [533,]  80   5      1          1        1   108
#> [534,]  78   4      0        180        0   175
#> [535,]  79   3      0          3        1   101
#> [536,]  78  26      1          5        0   194
#> [537,]  76   1      0        166        0   131
#> [538,]  78  20      1          0        1   109
#> [539,]  80   1      0          1        0   100
#> [540,]  78   3      1          1        1   152
#> [541,]  77  10      1          8        1   130
#> [542,]  82   3      1          1        1   144
#> [543,]  77   5      0         85        0   188
#> [544,]  80   2      1          1        0   168
#> [545,]  79   6      0          6        0   152
#> [546,]  78   2      0        180        0   148
#> [547,]  80   5      0          5        1   130
#> [548,]  77   4      0        180        1    98
#> [549,]  81   1      0        108        0   129
#> [550,]  78  12      0        180        0   134
#> [551,]  84  22      1         10        0   180
#> [552,]  79   4      0          4        1   121
#> [553,]  80   6      0          6        1   110
#> [554,]  82   5      0        180        0   110
#> [555,]  83   5      0        180        0   148
#> [556,]  81  11      1          8        0   160
#> [557,]  81   5      0        177        0    41
#> [558,]  80  11      1          8        0   170
#> [559,]  79   4      0          4        1   183
#> [560,]  82   8      1          1        0   128
#> [561,]  81  20      1          9        0   170
#> [562,]  83   8      0          8        0   115
#> [563,]  81  16      0         16        1   110
#> [564,]  80   6      1          0        1   150
#> [565,]  80  11      1          8        0   110
#> [566,]  81   8      0        180        0   146
#> [567,]  80   8      1          7        0   160
#> [568,]  79   7      0        177        0   197
#> [569,]  79   0      1          0        1    96
#> [570,]  81   2      1          1        0   198
#> [571,]  83   2      0          2        1   155
#> [572,]  82   6      0        128        1   100
#> [573,]  82  23      1          0        0   110
#> [574,]  84   4      0          4        1    85
#> [575,]  83   3      0        180        0   174
#> [576,]  81   4      0         90        1   138
#> [577,]  79   9      1          8        0   150
#> [578,]  85   3      1          2        1   160
#> [579,]  80  13      1          8        1   140
#> [580,]  84   4      0         89        1   129
#> [581,]  80   2      1          0        1   130
#> [582,]  80   6      0         71        1   189
#> [583,]  83   1      0          1        1   100
#> [584,]  82  19      0         19        0   120
#> [585,]  80  30      1         13        0   220
#> [586,]  83   9      0        180        0   198
#> [587,]  83   3      0        114        0    98
#> [588,]  81  14      1         12        1   128
#> [589,]  82   0      0          2        1   100
#> [590,]  81   4      0          4        0   175
#> [591,]  84  15      1         13        1   110
#> [592,]  81   1      0          1        1   145
#> [593,]  81  12      0         12        1   163
#> [594,]  82  16      1          8        0   103
#> [595,]  83  12      1          2        1   170
#> [596,]  82   3      1          2        0   130
#> [597,]  82  15      1          0        0   183
#> [598,]  80   2      0         88        0   135
#> [599,]  83   7      0        126        0   135
#> [600,]  86   8      0          8        1   132
#> [601,]  84   6      0        165        0   145
#> [602,]  86   3      0          3        1   140
#> [603,]  82   9      0        180        1   134
#> [604,]  81  13      0        180        0   152
#> [605,]  85   3      0          3        1   118
#> [606,]  81   2      1          0        1   118
#> [607,]  83   9      0        180        1   149
#> [608,]  82  14      1         11        1   103
#> [609,]  86   6      1          0        1   140
#> [610,]  83  19      0         43        0   150
#> [611,]  83  10      1          0        1   190
#> [612,]  88  14      1          3        1   130
#> [613,]  83  13      1         12        0   170
#> [614,]  84   9      0         92        1   110
#> [615,]  84   3      0        180        1   170
#> [616,]  82   4      0          4        0   130
#> [617,]  86  13      0        177        0   163
#> [618,]  86   6      0          6        1   117
#> [619,]  86   6      1          1        0   112
#> [620,]  88   4      0          4        0   100
#> [621,]  88   4      0          4        1   115
#> [622,]  88   3      0        115        0   110
#> [623,]  88   2      0        180        1    68
#> [624,]  83   3      0          3        1   130
#> [625,]  86  15      1          8        1   109
#> [626,]  89   4      0          4        1   153
#> [627,]  87   6      0        180        1   110
#> [628,]  87   1      0          1        0   170
#> [629,]  84   8      0        180        1   119
#> [630,]  85   8      0          8        1   136
#> [631,]  87  29      0         29        1    97
#> [632,]  87  15      1          9        1   138
#> [633,]  89  10      0         46        1   170
#> [634,]  90  14      0         14        1   100
#> [635,]  88   1      0          1        0   135
#> [636,]  86   4      0        180        1   145
#> [637,]  91   8      0          8        0   100
#> [638,]  91  10      0        145        0   135
#> [639,]  86   3      1          0        1    80
#> [640,]  88   7      0         24        0   119
#> [641,]  87   6      0        126        1   168
#> [642,]  86  10      0        180        1   137
#> [643,]  91   1      0          1        1    74
#> [644,]  87  43      0        178        1   130
#> [645,]  87   5      0         36        1   150
#> [646,]  88   3      1          2        0   159
#> [647,]  92   1      0          1        1   167
#> [648,]  91   3      0         33        1   137
#> [649,]  88   5      0        158        0   100
#> [650,]  87   7      0         74        1   105
#> [651,]  89   2      0        168        0   118
#> [652,]  91   5      0        169        1   176
#> [653,]  89  52      0         52        1   130
#> [654,]  89   4      0          4        1   159
#> [655,]  91   0      0          0        0     0
#> [656,]  89  14      0        180        1    84
#> [657,]  91   4      1          0        1   120
#> [658,]  90  19      1         11        1   129
#> [659,]  94   6      0         50        0    78
#> [660,]  90   1      0          1        1   118
#> [661,]  91   2      0          2        1   116
#> [662,]  93   8      0        179        1   110
#> [663,]  90  16      0         16        1   106
#> [664,]  91  12      0         53        1   212
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0 
#>  [11] 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+   5.0+   2.0+
#>  [21] 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 155.0+
#>  [31] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  73.0    5.0+
#>  [51] 161.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 177.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+ 180.0+ 180.0+ 179.0+
#>  [71] 180.0+ 179.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+   4.0+ 180.0+
#>  [91] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 166.0+  99.0 
#> [101] 180.0+  16.0+ 180.0+ 152.0+   7.0+   6.0+ 180.0+ 180.0+ 180.0+  13.0+
#> [111] 180.0+  28.0    1.0  180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+   7.0+
#> [121] 180.0+ 180.0+ 180.0+  15.0+ 180.0+ 180.0+ 180.0+  12.0+ 134.0+   8.0 
#> [131]   3.0+ 180.0+ 180.0+ 140.0    1.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [141] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+ 166.0+   5.0+
#> [151]   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+   2.0+
#> [161] 180.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+
#> [171]   0.5  180.0+ 161.0+ 171.0+ 180.0+   3.0    1.0  180.0+ 180.0+  10.0+
#> [181] 180.0+  45.0  180.0+ 180.0+ 180.0+  24.0  180.0+ 180.0+  15.0  180.0+
#> [191]  77.0   13.0+   8.0+ 180.0+ 180.0+ 180.0+ 170.0   94.0  180.0+ 169.0 
#> [201]   7.0    7.0+   6.0  180.0+ 180.0+   3.0+ 180.0+  30.0   28.0   13.0+
#> [211]   5.0   18.0  180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221] 180.0+ 180.0+   4.0+ 180.0+   9.0   22.0  180.0+   7.0+ 180.0+   1.0 
#> [231]   1.0    4.0+   3.0+ 167.0    6.0+  17.0  180.0+ 180.0+ 180.0+ 180.0+
#> [241]  14.0+  88.0  180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+  12.0+
#> [251] 180.0+ 180.0+ 180.0+ 180.0+   9.0  180.0+ 180.0+ 180.0+  11.0+   2.0+
#> [261] 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0  180.0+ 180.0+  14.0+
#> [271]   3.0  180.0+   3.0+ 180.0+ 175.0+ 180.0+   7.0+   5.0   16.0  180.0+
#> [281]   1.0  180.0+ 180.0+ 123.0+   1.0+  18.0   11.0+ 180.0+  79.0   80.0 
#> [291]  15.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  175.0  180.0+
#> [301]  10.0  180.0+ 180.0+ 180.0+  19.0+  12.0   99.0  180.0+ 179.0+ 180.0+
#> [311]  11.0+ 180.0+   0.5   18.0    7.0+ 180.0+ 180.0+ 152.0+ 180.0+  21.0+
#> [321] 180.0+   1.0  101.0    5.0    7.0+ 150.0  180.0+ 180.0+   1.0  180.0+
#> [331] 180.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+   2.0   45.0 
#> [341]   5.0+ 103.0  180.0+  36.0  180.0+ 180.0+   7.0    8.0+ 180.0+ 180.0+
#> [351]  18.0  172.0+ 180.0+   7.0  180.0+   8.0+ 180.0+ 180.0+  51.0   19.0 
#> [361]   1.0    1.0   60.0   76.0  180.0+  10.0+ 180.0+   7.0+ 124.0  180.0+
#> [371] 180.0+ 180.0+  12.0  180.0+   2.0   76.0  180.0+ 180.0+ 180.0+  16.0+
#> [381]  16.0+ 180.0+ 180.0+ 180.0+  15.0    3.0+  13.0+ 180.0+ 180.0+   2.0 
#> [391]  20.0    0.5  180.0+ 180.0+ 180.0+  12.0  180.0+  58.0  180.0+ 180.0+
#> [401] 180.0+ 180.0+ 180.0+ 180.0+   3.0  175.0    2.0  180.0+  14.0+ 180.0+
#> [411]  10.0+ 180.0+ 180.0+   8.0+ 179.0+   1.0  180.0+ 180.0+ 180.0+   4.0+
#> [421] 180.0+ 104.0+   1.0  180.0+  11.0    3.0+   5.0  180.0+  12.0  180.0+
#> [431] 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 180.0+   5.0    7.0   15.0+
#> [441] 180.0+  10.0    3.0  180.0+ 180.0+ 180.0+   6.0  180.0+  85.0   17.0+
#> [451]   7.0    0.5  180.0+  12.0  180.0+  46.0  180.0+   4.0  180.0+ 180.0+
#> [461] 180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+ 180.0+   1.0   12.0  180.0+
#> [471]   7.0+  79.0    3.0  168.0+ 180.0+ 180.0+ 180.0+ 180.0+  11.0  180.0+
#> [481]   7.0  180.0+   8.0+ 180.0+  32.0  180.0+  10.0  180.0+ 172.0  119.0 
#> [491] 180.0+ 180.0+   1.0   80.0  180.0+ 180.0+   2.0   11.0  152.0+   3.0 
#> [501]  29.0   32.0   23.0    6.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0 
#> [511]  11.0    6.0    3.0+   1.0  171.0  180.0+ 180.0+ 180.0+  71.0    8.0 
#> [521]  40.0   59.0   17.0  161.0   10.0+ 180.0+ 173.0  180.0+ 175.0+   7.0+
#> [531]  22.0   15.0+   5.0+ 180.0+   3.0  171.0+ 166.0+  20.0+   1.0    3.0+
#> [541]  10.0  180.0+  85.0   10.0    6.0+ 180.0+   5.0  180.0+ 108.0  180.0+
#> [551] 180.0+   4.0    6.0  180.0+ 180.0+ 180.0+ 177.0+ 169.0    4.0  180.0+
#> [561]  20.0    8.0+  16.0  180.0+ 180.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+
#> [571]   2.0  128.0   62.0    4.0  180.0+  90.0  180.0+ 180.0+ 180.0+  89.0 
#> [581] 180.0+  71.0    1.0   19.0   30.0  180.0+ 114.0  180.0+   2.0    4.0+
#> [591] 180.0+   1.0   12.0   16.0+  77.0    3.0   83.0   88.0  126.0    8.0 
#> [601] 165.0    3.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+ 174.0    6.0   43.0 
#> [611] 180.0+  14.0   13.0   92.0  180.0+   4.0  177.0    6.0+   6.0+   4.0+
#> [621]   4.0  115.0  180.0+   3.0+ 180.0+   4.0  180.0+   1.0+ 180.0+   8.0 
#> [631]  29.0  180.0+  46.0   14.0    1.0+ 180.0+   8.0  145.0    3.0   24.0 
#> [641] 126.0  180.0+   1.0  178.0+  36.0   75.0    1.0   33.0  158.0   74.0 
#> [651] 168.0  169.0   52.0    4.0    0.5  180.0+   4.0  180.0+  50.0    1.0+
#> [661]   2.0  179.0+  16.0   53.0    7.0+   0.5    2.0  180.0+   3.0   15.0+
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
#>   0.8257683 
```
