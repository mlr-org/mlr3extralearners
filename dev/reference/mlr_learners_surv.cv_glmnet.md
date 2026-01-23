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
#> min 0.00349    43   2.788 0.1182       6
#> 1se 0.06841    11   2.905 0.1198       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  32   5      1          0        1   121
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  35   2      0        180        0   121
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  38   2      0        115        0   150
#>  [10,]  36   1      0        180        1   155
#>  [11,]  35   0      0        180        1   119
#>  [12,]  36   5      1          0        1   115
#>  [13,]  38  16      1         10        0   160
#>  [14,]  40  12      1          9        0   153
#>  [15,]  37   1      1          0        1   146
#>  [16,]  40   2      1          1        1   148
#>  [17,]  42   2      0        180        1   100
#>  [18,]  38   5      1          3        0   125
#>  [19,]  42   2      0          2        0   140
#>  [20,]  40  11      1         10        1   120
#>  [21,]  42   2      0        180        0   100
#>  [22,]  43   3      1          0        1   100
#>  [23,]  43   4      1          0        1   130
#>  [24,]  42   4      0        180        0   162
#>  [25,]  40   3      1          1        0   170
#>  [26,]  42  12      1         10        1   170
#>  [27,]  43   2      1          1        1   116
#>  [28,]  42   2      0        180        1   124
#>  [29,]  44   5      1          1        0   170
#>  [30,]  41  10      1          8        0   150
#>  [31,]  44   3      0        180        0   141
#>  [32,]  45   9      1          7        0   110
#>  [33,]  45   6      0        180        1   170
#>  [34,]  41   5      1          4        1   141
#>  [35,]  43   2      0        180        1   140
#>  [36,]  45   2      0        180        1   140
#>  [37,]  46  15      0        180        0   120
#>  [38,]  46   2      1          1        0   126
#>  [39,]  48  15      0        180        1   160
#>  [40,]  45   3      0        150        0   130
#>  [41,]  44   3      1          0        1   180
#>  [42,]  46   7      1          2        0   166
#>  [43,]  43  29      0        180        1   180
#>  [44,]  45   4      1          0        0   124
#>  [45,]  47   6      1          0        1   116
#>  [46,]  46  13      1         10        0   100
#>  [47,]  44   0      1          0        1    96
#>  [48,]  47   4      1          3        1   160
#>  [49,]  43   3      1          0        1   124
#>  [50,]  45   8      1          0        1   117
#>  [51,]  49   5      0         73        1   136
#>  [52,]  45   5      0          5        0   141
#>  [53,]  46   2      1          1        1   122
#>  [54,]  46   6      1          0        1   100
#>  [55,]  44   9      1          8        1   135
#>  [56,]  45   5      0        180        1   190
#>  [57,]  46   5      1          3        0   130
#>  [58,]  46   4      0        180        1   121
#>  [59,]  45   9      1          0        1   145
#>  [60,]  47   3      1          1        1   120
#>  [61,]  48  12      1         11        0   200
#>  [62,]  47   5      1          3        1   130
#>  [63,]  47   9      1          6        0   170
#>  [64,]  46   3      1          0        1   119
#>  [65,]  50   1      1          0        1   129
#>  [66,]  48   2      1          0        0   184
#>  [67,]  50   6      1          2        1   140
#>  [68,]  46   3      1          1        1   140
#>  [69,]  49   2      0          2        0   105
#>  [70,]  51   1      0          1        1   145
#>  [71,]  49  15      1         11        1   160
#>  [72,]  47   2      0        180        0   150
#>  [73,]  49  23      0        179        1   112
#>  [74,]  52   2      0        180        1   170
#>  [75,]  50   7      1          0        1    92
#>  [76,]  50   4      0          4        1   100
#>  [77,]  51   3      1          2        0   113
#>  [78,]  50   1      1          0        0   150
#>  [79,]  49   7      1          4        1    90
#>  [80,]  47   8      0        180        0   160
#>  [81,]  47   6      0        180        1   162
#>  [82,]  50   4      1          1        0   150
#>  [83,]  48   7      1          0        1   110
#>  [84,]  53   8      0         36        1   160
#>  [85,]  48  17      1         10        0   111
#>  [86,]  47   2      1          1        0   110
#>  [87,]  52   4      1          4        0   152
#>  [88,]  49  15      0        180        1   160
#>  [89,]  53   5      0        180        1   140
#>  [90,]  53   5      0         77        0   159
#>  [91,]  53   7      1          0        0   199
#>  [92,]  54   6      1          3        0   129
#>  [93,]  51   3      1          1        0   140
#>  [94,]  50   2      0          5        1   106
#>  [95,]  50  10      1          6        0   122
#>  [96,]  50  14      1         13        0   170
#>  [97,]  53   8      1          7        0   160
#>  [98,]  51  25      1          1        0   202
#>  [99,]  49   5      1          2        1   150
#> [100,]  53   4      0          4        0   140
#> [101,]  52  14      1          7        1   200
#> [102,]  53   4      1          0        1   156
#> [103,]  51  13      0         99        1   160
#> [104,]  55   3      1          1        0   150
#> [105,]  54  23      1         10        0   131
#> [106,]  52   7      1          2        0   154
#> [107,]  55   6      1          2        1   114
#> [108,]  54   9      1          1        0   130
#> [109,]  51  13      1         11        0   145
#> [110,]  52   4      0        180        0   183
#> [111,]  50   3      0        174        1   153
#> [112,]  49   1      0          1        1   110
#> [113,]  50   7      1          0        1   127
#> [114,]  52   5      0        175        1   117
#> [115,]  55   1      0        180        0   127
#> [116,]  55   2      0          2        0   145
#> [117,]  54   1      0        180        0   162
#> [118,]  54   7      1          0        1   100
#> [119,]  56   2      0        180        0   132
#> [120,]  52   8      0        180        0   119
#> [121,]  53  18      1          9        1   150
#> [122,]  52  16      0         16        0   152
#> [123,]  52  16      1         14        0   170
#> [124,]  53  15      0         15        1    90
#> [125,]  55   6      0        180        1   100
#> [126,]  55   6      1          5        1   138
#> [127,]  54   3      0        180        0   128
#> [128,]  56   3      0          8        1   139
#> [129,]  54   7      1          2        0   129
#> [130,]  54   2      1          1        0   135
#> [131,]  57   5      1          3        1   138
#> [132,]  57   1      0          1        1   100
#> [133,]  52   2      0        180        0   140
#> [134,]  55  11      1          7        0   104
#> [135,]  56  14      1         11        0   130
#> [136,]  53   3      1          0        1   200
#> [137,]  57  10      0        180        1   170
#> [138,]  58   8      0          8        1   130
#> [139,]  54   5      0        180        1   108
#> [140,]  59   3      1          1        0   172
#> [141,]  57   4      0        180        1   119
#> [142,]  58   6      1          0        1    90
#> [143,]  53  15      1         10        1   130
#> [144,]  54  17      1          8        1   227
#> [145,]  55   9      1          2        1   147
#> [146,]  55  13      0        166        1   140
#> [147,]  56   5      0          5        1   150
#> [148,]  53   4      0        147        1   145
#> [149,]  53   7      1          0        1   120
#> [150,]  55   5      0          5        1   131
#> [151,]  56   4      0          4        0   164
#> [152,]  59  15      1         10        0   140
#> [153,]  58   1      1          1        1   200
#> [154,]  56   7      1          5        1   120
#> [155,]  55   2      0          2        0   106
#> [156,]  59   9      1          1        1   125
#> [157,]  57   1      0        180        0   148
#> [158,]  57   2      0          2        1   120
#> [159,]  57   5      0        180        1   130
#> [160,]  55   5      1          0        1   160
#> [161,]  57  10      1          9        0   103
#> [162,]  59   6      1          0        1   140
#> [163,]  59   5      0        180        1   155
#> [164,]  59   4      1          0        1   152
#> [165,]  58  26      1          0        1   189
#> [166,]  58   4      1          3        0   120
#> [167,]  60   0      1          0        1    80
#> [168,]  59   2      1          1        0   140
#> [169,]  61   4      1          3        0   151
#> [170,]  61   3      1          2        1   102
#> [171,]  58   1      0          1        1   100
#> [172,]  57  13      1         10        0   110
#> [173,]  57   2      1          0        1   116
#> [174,]  58  10      0         10        1   150
#> [175,]  57   4      1          3        0   138
#> [176,]  57  11      0        180        1   150
#> [177,]  61   3      0         17        0   143
#> [178,]  56  14      0         45        0   130
#> [179,]  57   3      1          2        0   120
#> [180,]  56  18      1         11        1   165
#> [181,]  59   9      1          0        1    80
#> [182,]  55   4      1          3        1   160
#> [183,]  58  11      0        172        1   135
#> [184,]  60  12      1          0        1   114
#> [185,]  55   9      1          7        1   135
#> [186,]  56   8      1          8        0   120
#> [187,]  61  13      1         12        1   130
#> [188,]  59  11      1          8        1   190
#> [189,]  57   1      0          1        0   126
#> [190,]  57  15      1         13        1   110
#> [191,]  61   8      0         77        0   120
#> [192,]  58   8      1          5        0   152
#> [193,]  62   7      1          2        1   180
#> [194,]  57   3      1          0        0   100
#> [195,]  58   8      1          3        1   150
#> [196,]  57   7      0        169        0   180
#> [197,]  60   7      0          7        0   147
#> [198,]  61   6      0          6        0   134
#> [199,]  58   3      1          0        1   146
#> [200,]  62   4      1          3        0   173
#> [201,]  58   2      0         30        0   202
#> [202,]  63   6      0         28        1   120
#> [203,]  61   5      0          5        1   110
#> [204,]  61   5      0          5        1   160
#> [205,]  58  11      1          9        0   179
#> [206,]  57   2      1          1        0   159
#> [207,]  62  17      1         10        1   180
#> [208,]  58   7      0        180        1   150
#> [209,]  63   3      1          1        0   180
#> [210,]  63   1      0        180        1   130
#> [211,]  63   4      1          3        0   222
#> [212,]  62   3      0        180        1   105
#> [213,]  63   4      0        180        1   190
#> [214,]  63  15      1         10        1   126
#> [215,]  63   4      1          1        0   155
#> [216,]  60  18      1         13        0   132
#> [217,]  61   9      1          9        1   150
#> [218,]  58   9      1          9        0   110
#> [219,]  62   7      0          7        0   150
#> [220,]  59   4      0        180        0   196
#> [221,]  60   7      1          5        1   141
#> [222,]  60   7      0          7        0   140
#> [223,]  60   7      1          1        1    90
#> [224,]  65  13      0        180        1   100
#> [225,]  63   1      0          1        0   162
#> [226,]  62   6      0        180        0   170
#> [227,]  61  15      1         13        0   170
#> [228,]  59   4      0          4        0   149
#> [229,]  60   3      0          3        0   168
#> [230,]  64  10      1          9        0   160
#> [231,]  62   6      0          6        0   120
#> [232,]  63  12      1         10        0   200
#> [233,]  59  10      0        180        1   130
#> [234,]  60   8      0         17        1   130
#> [235,]  61   6      1          1        1   117
#> [236,]  64  12      1         11        0   160
#> [237,]  66   1      1          0        1   120
#> [238,]  64   6      1          0        1   140
#> [239,]  63  10      1          0        1   148
#> [240,]  65  36      1         11        0   140
#> [241,]  63   4      1          3        0   162
#> [242,]  66   3      1          1        0   127
#> [243,]  61  10      1          2        1   194
#> [244,]  64  32      1          9        1   160
#> [245,]  63  12      1          9        0   114
#> [246,]  65  10      1          8        1   120
#> [247,]  60   6      0        180        0   130
#> [248,]  64  21      1         10        0   190
#> [249,]  64   9      0        180        0   150
#> [250,]  61   4      0        180        1   113
#> [251,]  63  16      1          7        1   110
#> [252,]  64   7      0        180        1   120
#> [253,]  66   6      1          1        1   130
#> [254,]  63  12      0         12        1   150
#> [255,]  65   6      0          9        0   112
#> [256,]  63   5      1          4        0   170
#> [257,]  62  13      1         11        0   180
#> [258,]  64   2      0          2        0   201
#> [259,]  62   9      0        180        0   145
#> [260,]  61  15      1         10        0   130
#> [261,]  63   3      1          2        0   120
#> [262,]  63   2      1          0        0   140
#> [263,]  67   6      0        180        1   170
#> [264,]  64  13      1         12        1   150
#> [265,]  64   6      1          0        1   125
#> [266,]  66   7      1          0        1   115
#> [267,]  64  14      1         13        1   150
#> [268,]  64   0      0          0        1   148
#> [269,]  67   4      1          3        0   130
#> [270,]  65   2      1          1        1   170
#> [271,]  68   1      0        180        1   166
#> [272,]  64  10      1          9        1   110
#> [273,]  67   8      1          1        1   130
#> [274,]  68   5      0          5        1    90
#> [275,]  63  10      0         16        1   160
#> [276,]  64   1      0          1        1   120
#> [277,]  63   8      1          1        1   162
#> [278,]  65  18      1          3        0   120
#> [279,]  67  11      0         11        0   150
#> [280,]  68  14      0         79        0   172
#> [281,]  66  12      1         10        1   150
#> [282,]  65  15      1         12        1   150
#> [283,]  66  15      1         13        1   160
#> [284,]  65  11      1          6        0   130
#> [285,]  69  21      1         10        0   180
#> [286,]  66   9      1          8        0   130
#> [287,]  63   8      0        180        1   120
#> [288,]  68  14      1         13        1   140
#> [289,]  65   8      1          0        1    90
#> [290,]  66   3      0          3        1   138
#> [291,]  69   1      1          0        0   170
#> [292,]  65   1      1          0        0   133
#> [293,]  67   7      1          4        1   130
#> [294,]  67   2      0        180        0   184
#> [295,]  65   6      0          6        0    80
#> [296,]  65  10      1          1        1   148
#> [297,]  67  12      1         12        0   160
#> [298,]  69   6      0         99        1   140
#> [299,]  65   4      1          1        0   130
#> [300,]  64   4      0        179        0   160
#> [301,]  66   4      0        180        1   130
#> [302,]  64   4      0        180        1   140
#> [303,]  64   0      1          0        1   118
#> [304,]  67   2      0         18        0   131
#> [305,]  66   7      1          5        1   131
#> [306,]  66   4      0        180        0   177
#> [307,]  68   4      1          0        1   160
#> [308,]  69   4      1          3        1   150
#> [309,]  65  13      1         12        1   130
#> [310,]  69   8      0         93        0   140
#> [311,]  64  21      0         21        1   155
#> [312,]  65   1      0          1        1   120
#> [313,]  68   4      0          4        1   190
#> [314,]  71  20      1          0        1   160
#> [315,]  67   2      0        180        0   128
#> [316,]  66   9      1          3        1   151
#> [317,]  66   1      1          1        1   165
#> [318,]  69   8      0        180        1   153
#> [319,]  70  14      0        171        0   166
#> [320,]  66   4      0        180        0   130
#> [321,]  67   6      1          4        0   130
#> [322,]  69   0      0          0        1   148
#> [323,]  65   2      0        180        0   130
#> [324,]  69   3      1          2        0   151
#> [325,]  65  14      1         13        1   150
#> [326,]  69   8      0        180        1   180
#> [327,]  71   7      0          7        0   230
#> [328,]  66   2      0          2        1   228
#> [329,]  69   3      0          3        1   130
#> [330,]  70  22      1         13        0   103
#> [331,]  67   5      0          5        0   130
#> [332,]  69   8      1          5        1   195
#> [333,]  69   6      1          4        1   174
#> [334,]  72   3      1          0        1   132
#> [335,]  72   7      0          7        1   110
#> [336,]  69   8      1          7        1   108
#> [337,]  66   2      1          1        0   123
#> [338,]  69  19      0        180        0   130
#> [339,]  68  18      0         18        1   100
#> [340,]  67  14      0        172        1   140
#> [341,]  69  11      1          0        1   120
#> [342,]  66   2      0        180        0   130
#> [343,]  67   7      1          4        0   122
#> [344,]  69   4      1          3        0   132
#> [345,]  68   2      0          7        1   130
#> [346,]  67  13      1          9        0   130
#> [347,]  70   3      0        123        0   130
#> [348,]  72   5      1          4        0   170
#> [349,]  67  22      1          1        1   140
#> [350,]  67   1      0          1        1    60
#> [351,]  67   4      0         60        1   136
#> [352,]  69   5      0         76        0   120
#> [353,]  67   8      1          0        1   130
#> [354,]  68  10      1          8        1   160
#> [355,]  66  24      1         13        0   130
#> [356,]  72  30      1          0        1   145
#> [357,]  70   7      0          7        0   102
#> [358,]  68   7      1          2        0   135
#> [359,]  73  20      1          0        1   170
#> [360,]  71   6      0          9        0   120
#> [361,]  70  11      0        180        1   210
#> [362,]  72  19      1          8        0   120
#> [363,]  72  12      1         10        0   170
#> [364,]  67   8      0        180        1   170
#> [365,]  67   5      1          0        1   147
#> [366,]  67   9      0        180        0   158
#> [367,]  70   5      0        180        0   150
#> [368,]  67   4      1          1        0   134
#> [369,]  71   1      0        173        1   188
#> [370,]  68  23      0        180        1   220
#> [371,]  70   3      0        180        0   121
#> [372,]  68   4      1          3        0   210
#> [373,]  71   5      0        180        0   191
#> [374,]  69   8      1          1        0   164
#> [375,]  72  16      1          1        1   130
#> [376,]  70   4      0        180        0   180
#> [377,]  73   6      1          0        1   270
#> [378,]  73   7      0          7        1   140
#> [379,]  68  15      1         13        1   130
#> [380,]  70  13      1          9        0   100
#> [381,]  72   6      0        180        1   130
#> [382,]  73   0      0        180        1   161
#> [383,]  74   8      1          0        1    85
#> [384,]  73   4      0        180        1   154
#> [385,]  71  15      1         11        0   165
#> [386,]  74   0      1          0        1    90
#> [387,]  73   3      1          0        1   136
#> [388,]  70   5      1          0        1   190
#> [389,]  71   3      1          2        1   190
#> [390,]  73   6      0        180        0   110
#> [391,]  72  15      1          0        1   150
#> [392,]  71   7      1          2        0   143
#> [393,]  72   8      1          0        1   140
#> [394,]  74   3      0          3        1   150
#> [395,]  73  17      1         11        0   140
#> [396,]  71  13      1          8        0   121
#> [397,]  69   2      1          1        1    80
#> [398,]  70   4      1          0        1   140
#> [399,]  71  14      1         13        1   170
#> [400,]  74   7      1          0        1   117
#> [401,]  72  10      1          8        1   153
#> [402,]  72  15      1         13        0   156
#> [403,]  70   8      0          8        0   120
#> [404,]  71  10      1          9        1   120
#> [405,]  75   2      1          1        0   145
#> [406,]  73  10      1          9        1   146
#> [407,]  72  10      1          9        1   160
#> [408,]  74  15      1          9        1   179
#> [409,]  73   1      0          1        1    80
#> [410,]  75  13      1          1        1   130
#> [411,]  71  11      1          8        0   110
#> [412,]  71   4      0          4        0   134
#> [413,]  73  10      1          8        0   120
#> [414,]  72   1      1          1        0   168
#> [415,]  72   7      0         57        1   145
#> [416,]  73  10      0        180        0   162
#> [417,]  72  11      0         11        1   140
#> [418,]  70   3      0          3        0   150
#> [419,]  73   5      1          3        1   112
#> [420,]  72   4      1          0        1   197
#> [421,]  73   4      0        180        0   124
#> [422,]  74  34      1          8        1   233
#> [423,]  76   3      1          0        1   120
#> [424,]  72   5      0        180        0   154
#> [425,]  72   3      0        180        0   160
#> [426,]  76   5      0          5        1   130
#> [427,]  77  11      0         11        1   150
#> [428,]  75   3      1          1        0   180
#> [429,]  73  15      0         15        1   160
#> [430,]  71  16      0        180        0   140
#> [431,]  74   7      0        180        1   150
#> [432,]  74   3      0          3        1   128
#> [433,]  76   1      0        180        0   114
#> [434,]  74   2      1          1        0   140
#> [435,]  76   8      1          0        1   141
#> [436,]  73   6      0          6        1   114
#> [437,]  75  23      1         14        1   110
#> [438,]  74   2      0        180        0   190
#> [439,]  72   4      1          3        0   160
#> [440,]  76  17      1          0        1   200
#> [441,]  76  13      1         10        0   110
#> [442,]  75   4      1          0        1   122
#> [443,]  75   7      0          7        0   190
#> [444,]  73  13      1         11        0   195
#> [445,]  75  12      0         12        1   160
#> [446,]  74   8      1          0        1   105
#> [447,]  76  13      1          8        1   148
#> [448,]  74   6      0        180        0   160
#> [449,]  76   4      0          4        1   155
#> [450,]  74   2      0        180        0   111
#> [451,]  73   0      0        180        0   156
#> [452,]  78  12      1         11        1   160
#> [453,]  76  44      1         10        0   105
#> [454,]  76   5      0        180        0   185
#> [455,]  74  10      1          0        1   135
#> [456,]  76   5      1          0        1   167
#> [457,]  74   8      1          8        1   170
#> [458,]  75   9      0        180        1   140
#> [459,]  73  33      1         12        1   175
#> [460,]  77   5      1          0        0   123
#> [461,]  77  12      1          9        1   100
#> [462,]  73  10      1          9        0   146
#> [463,]  77  12      0        180        0   130
#> [464,]  77   1      1          0        1    90
#> [465,]  78   5      1          0        1   170
#> [466,]  73   7      1          0        0   174
#> [467,]  74   6      0         79        1   140
#> [468,]  75   3      1          1        1   171
#> [469,]  74   9      1          8        0   200
#> [470,]  75   6      0        180        0   150
#> [471,]  79  10      1          8        0   190
#> [472,]  74   2      1          0        1   130
#> [473,]  78  18      0         18        1   144
#> [474,]  76  29      0         47        0    90
#> [475,]  78   8      1          6        1   110
#> [476,]  79   6      0        180        0   170
#> [477,]  80  10      1          6        1   147
#> [478,]  78   0      0        180        1   212
#> [479,]  78  13      1          5        0   130
#> [480,]  75  12      1          1        1   120
#> [481,]  78  15      0        180        1   270
#> [482,]  80   8      0          8        1   120
#> [483,]  75  13      1          6        0   150
#> [484,]  76   1      0          1        1    83
#> [485,]  79   4      0         80        0   145
#> [486,]  78  12      1          9        0   150
#> [487,]  77   2      1          0        1   143
#> [488,]  78  10      0        180        1   130
#> [489,]  76   7      0         29        1   150
#> [490,]  80   9      0         23        1   128
#> [491,]  79  11      0        180        0   160
#> [492,]  79   2      1          0        1   121
#> [493,]  78  14      1          0        1   140
#> [494,]  81   1      0          1        0   130
#> [495,]  76   4      0          4        1   160
#> [496,]  76  10      1          8        0   180
#> [497,]  76  12      1         10        1   127
#> [498,]  80   3      1          0        1   120
#> [499,]  75   2      1          1        1   204
#> [500,]  78  11      0        180        1   135
#> [501,]  76   1      0          1        1    90
#> [502,]  78   7      1          0        1   110
#> [503,]  79   3      0          3        0   120
#> [504,]  77   7      0        180        1   170
#> [505,]  77   6      0          6        1   144
#> [506,]  80  15      1         12        1   150
#> [507,]  77   9      1          4        0   141
#> [508,]  82   5      0          8        1   120
#> [509,]  80  40      1          0        1   138
#> [510,]  78   4      0         59        1   112
#> [511,]  76   7      0        161        0   151
#> [512,]  79  10      0         10        1   120
#> [513,]  80  15      1          0        1    90
#> [514,]  81   4      1          2        1   126
#> [515,]  79  28      0        164        0   100
#> [516,]  80   9      0        118        1   186
#> [517,]  78  32      0        180        1   130
#> [518,]  79   1      0         37        1   140
#> [519,]  81   3      0        180        0   184
#> [520,]  77  13      1          0        1   190
#> [521,]  79   3      0          3        1   101
#> [522,]  80   1      0          1        0   100
#> [523,]  78   3      1          1        1   152
#> [524,]  77  10      1          8        1   130
#> [525,]  82   3      1          1        1   144
#> [526,]  77   5      0         85        0   188
#> [527,]  79   6      0          6        0   152
#> [528,]  80   6      1          0        1   119
#> [529,]  78   2      0        180        0   148
#> [530,]  80   5      0          5        1   130
#> [531,]  82   1      1          0        1    82
#> [532,]  81   1      0        108        0   129
#> [533,]  79   1      0        125        0   193
#> [534,]  82  21      1          2        0   155
#> [535,]  80   6      0          6        1   110
#> [536,]  83   9      1          5        1   170
#> [537,]  82   5      0        180        0   110
#> [538,]  83   5      0        180        0   148
#> [539,]  79   7      1          6        0   130
#> [540,]  81   5      0        177        0    41
#> [541,]  80  11      1          8        0   170
#> [542,]  78  23      1         10        1   145
#> [543,]  79   4      0          4        1   183
#> [544,]  78   9      1          4        1   120
#> [545,]  82   8      1          1        0   128
#> [546,]  81  15      0        180        1   140
#> [547,]  80   7      1          0        1   146
#> [548,]  84   5      1          1        1    85
#> [549,]  81  20      1          9        0   170
#> [550,]  81  16      0         16        1   110
#> [551,]  80   6      1          0        1   150
#> [552,]  80  11      1          8        0   110
#> [553,]  80   8      1          7        0   160
#> [554,]  79   7      0        177        0   197
#> [555,]  85   4      0        180        0    90
#> [556,]  81   2      1          1        0   198
#> [557,]  83   2      0          2        1   155
#> [558,]  84   4      0        167        0   198
#> [559,]  80   3      1          1        1   230
#> [560,]  82  23      1          0        0   110
#> [561,]  84   5      0        180        1   203
#> [562,]  81   1      0          1        1   150
#> [563,]  84   1      0         38        1   205
#> [564,]  83   3      0        180        0   174
#> [565,]  85   3      1          2        1   160
#> [566,]  80   2      1          0        1   130
#> [567,]  79   4      0          4        1    60
#> [568,]  80   6      0         71        1   189
#> [569,]  83   1      0          1        1   100
#> [570,]  82  19      0         19        0   120
#> [571,]  80  30      1         13        0   220
#> [572,]  83   9      0        180        0   198
#> [573,]  79  14      1          0        0   110
#> [574,]  81  14      1         12        1   128
#> [575,]  83   2      0        154        0   130
#> [576,]  82   0      0          2        1   100
#> [577,]  83   1      0        180        0   160
#> [578,]  81   4      0          4        0   175
#> [579,]  84  15      1         13        1   110
#> [580,]  81   1      0          1        1   145
#> [581,]  82  16      1          8        0   103
#> [582,]  82   5      1          0        1   146
#> [583,]  81   4      0          4        0   160
#> [584,]  82   3      1          2        0   130
#> [585,]  82  15      1          0        0   183
#> [586,]  80   2      0         88        0   135
#> [587,]  86   8      0          8        1   132
#> [588,]  81  16      1          9        0   180
#> [589,]  86   3      0          3        1   140
#> [590,]  82   9      0        180        1   134
#> [591,]  84   3      0        180        1   120
#> [592,]  81  13      0        180        0   152
#> [593,]  85   3      0          3        1   118
#> [594,]  81   2      1          0        1   118
#> [595,]  83   9      0        180        1   149
#> [596,]  82   1      0        180        1   193
#> [597,]  86   6      1          0        1   140
#> [598,]  84  16      0         70        1   150
#> [599,]  84   3      1          2        0   125
#> [600,]  86   2      0        180        1   169
#> [601,]  88  14      1          3        1   130
#> [602,]  84   3      0          3        1   121
#> [603,]  83  13      1         12        0   170
#> [604,]  84   7      1          2        0   148
#> [605,]  84   9      0         92        1   110
#> [606,]  86   4      0         38        1   122
#> [607,]  82   4      0          4        0   130
#> [608,]  85   3      0          3        1   113
#> [609,]  86   6      0          6        1   117
#> [610,]  88   4      0          4        0   100
#> [611,]  83  20      1          3        1   150
#> [612,]  85  22      0         22        1   184
#> [613,]  86   9      1          7        1   142
#> [614,]  87   2      0        180        1   130
#> [615,]  86   6      0         46        0   173
#> [616,]  88   3      0        115        0   110
#> [617,]  88   2      0        180        1    68
#> [618,]  83   3      0          3        1   130
#> [619,]  87   8      0          8        1   157
#> [620,]  86  15      1          8        1   109
#> [621,]  88   4      0          4        0    86
#> [622,]  89   4      0          4        1   153
#> [623,]  87   6      0        180        1   110
#> [624,]  87   1      0          1        0   170
#> [625,]  84   8      0        180        1   119
#> [626,]  84   2      0        110        1   174
#> [627,]  84   0      0        180        1   136
#> [628,]  89  10      0         46        1   170
#> [629,]  90  14      0         14        1   100
#> [630,]  88   1      0          1        0   135
#> [631,]  86   4      0        180        1   145
#> [632,]  87   6      1          0        0   125
#> [633,]  86   3      1          0        1    80
#> [634,]  90  11      1         10        1   186
#> [635,]  87   6      0        126        1   168
#> [636,]  86  10      0        180        1   137
#> [637,]  86   9      1          7        0   130
#> [638,]  90   4      1          0        0   121
#> [639,]  91   1      0          1        1    74
#> [640,]  87  43      0        178        1   130
#> [641,]  90   5      1          0        1   125
#> [642,]  88   3      1          2        0   159
#> [643,]  89   3      1          1        1   160
#> [644,]  92   1      0          1        1   167
#> [645,]  91   3      0         33        1   137
#> [646,]  88   5      0        158        0   100
#> [647,]  89  12      1          0        1   130
#> [648,]  89   2      0        168        0   118
#> [649,]  89  52      0         52        1   130
#> [650,]  92   7      0          7        1   110
#> [651,]  91   0      0          0        0     0
#> [652,]  89  14      0        180        1    84
#> [653,]  90  18      0        180        0   188
#> [654,]  90  19      1         11        1   129
#> [655,]  91   2      0          2        1   116
#> [656,]  94   8      0          8        1   142
#> [657,]  92   4      0         76        1   149
#> [658,]  91   1      0        180        0   158
#> [659,]  90  16      0         16        1   106
#> [660,]  90   3      0         67        0   162
#> [661,]  96   3      0         12        1    97
#> [662,]  94   3      0         26        1   144
#> [663,]  91  12      0         53        1   212
#> [664,]  91   7      0          7        0   135
#> [665,]  93   0      1          0        1   122
#> [666,]  92   5      0         69        0   139
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   5.0+   2.0+   5.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+
#>  [11] 180.0+   5.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   5.0+   2.0+ 180.0+
#>  [21] 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0 
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51]  73.0    5.0+ 161.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 177.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+ 172.0+ 180.0+ 180.0+ 180.0+   2.0    1.0 
#>  [71] 179.0+ 180.0+ 179.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+   4.0+ 180.0+ 180.0+  77.0 
#>  [91] 180.0+ 180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [101]  85.0  166.0+  99.0  180.0+ 152.0+   7.0+   6.0+ 180.0+  13.0+ 180.0+
#> [111] 174.0+   1.0  180.0+ 175.0+ 180.0+   2.0  180.0+   7.0+ 180.0+ 180.0+
#> [121] 180.0+  16.0+  16.0   15.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+ 180.0+
#> [131] 140.0    1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 180.0+ 180.0+
#> [141] 180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+ 147.0+ 180.0+   5.0+
#> [151]   4.0+ 180.0+   1.0  180.0+   2.0+ 180.0+ 180.0+   2.0  180.0+ 180.0+
#> [161] 180.0+  64.0  180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+   3.0 
#> [171]   1.0  180.0+ 180.0+  10.0+ 180.0+ 180.0+  17.0   45.0    3.0+ 180.0+
#> [181]   9.0+ 180.0+ 172.0+ 172.0+  24.0    8.0  180.0+ 180.0+   1.0+  15.0 
#> [191]  77.0    8.0+ 180.0+ 180.0+ 180.0+ 169.0    7.0+   6.0    3.0+ 180.0+
#> [201]  30.0   28.0    5.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0    7.0+ 180.0+
#> [221]  84.0    7.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+   4.0+   3.0+ 167.0 
#> [231]   6.0+ 180.0+ 180.0+  17.0  180.0+  12.0  180.0+ 180.0+ 180.0+  36.0 
#> [241] 180.0+   3.0+  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [251] 180.0+ 180.0+ 180.0+  12.0    9.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+
#> [261]   3.0+   2.0+ 180.0+  13.0  180.0+ 179.0+  14.0+   0.5+ 180.0+ 175.0+
#> [271] 180.0+ 180.0+   8.0    5.0   16.0    1.0  180.0+ 123.0+  11.0+  79.0 
#> [281]  80.0   15.0+ 180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+   8.0+   3.0 
#> [291] 175.0  180.0+ 180.0+ 180.0+   6.0  180.0+  12.0   99.0  180.0+ 179.0+
#> [301] 180.0+ 180.0+   0.5   18.0    7.0+ 180.0+ 180.0+ 152.0+ 180.0+  93.0 
#> [311]  21.0+   1.0    4.0  180.0+ 180.0+ 180.0+   1.0  180.0+ 171.0  180.0+
#> [321]   6.0    0.5  180.0+ 180.0+  14.0+ 180.0+   7.0+   2.0    3.0+ 180.0+
#> [331]   5.0+ 180.0+  97.0  180.0+   7.0    8.0+   2.0+ 180.0+  18.0  172.0+
#> [341] 180.0+ 180.0+   7.0  180.0+   7.0   13.0+ 123.0  180.0+  51.0    1.0 
#> [351]  60.0   76.0  180.0+  10.0+ 180.0+ 162.0    7.0+   7.0+ 124.0    9.0 
#> [361] 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+  76.0  173.0+ 180.0+
#> [371] 180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+   6.0    7.0+  15.0   13.0+
#> [381] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+   3.0  180.0+
#> [391] 180.0+ 180.0+ 180.0+   3.0  180.0+ 175.0    2.0  180.0+  14.0+ 180.0+
#> [401]  10.0+ 180.0+   8.0+ 179.0+ 180.0+ 180.0+ 159.0  180.0+   1.0   13.0 
#> [411] 180.0+   4.0+  10.0    1.0   57.0  180.0+  11.0    3.0+   5.0  180.0+
#> [421] 180.0+  34.0  180.0+ 180.0+ 180.0+   5.0   11.0+ 180.0+  15.0+ 180.0+
#> [431] 180.0+   3.0  180.0+ 180.0+ 180.0+   6.0  180.0+ 180.0+ 180.0+  17.0+
#> [441] 174.0+   4.0    7.0  180.0+  12.0  180.0+ 180.0+ 180.0+   4.0  180.0+
#> [451] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+  33.0    5.0 
#> [461] 180.0+ 180.0+ 180.0+   1.0  180.0+   7.0+  79.0    3.0  168.0+ 180.0+
#> [471] 180.0+ 176.0+  18.0   47.0    8.0+ 180.0+  10.0  180.0+ 172.0   12.0 
#> [481] 180.0+   8.0  180.0+   1.0   80.0  180.0+   2.0  180.0+  29.0   23.0 
#> [491] 180.0+ 180.0+ 180.0+   1.0    4.0   10.0+ 180.0+   3.0+   2.0+ 180.0+
#> [501]   1.0   43.0    3.0  180.0+   6.0  180.0+  71.0    8.0   40.0   59.0 
#> [511] 161.0   10.0+ 180.0+  93.0  164.0  118.0  180.0+  37.0  180.0+  22.0 
#> [521]   3.0    1.0    3.0+  10.0  180.0+  85.0    6.0+   6.0  180.0+   5.0 
#> [531]   1.0  108.0  125.0  180.0+   6.0    9.0+ 180.0+ 180.0+ 180.0+ 177.0+
#> [541] 169.0   70.0    4.0  180.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0   16.0 
#> [551] 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+   2.0  167.0    3.0+  62.0 
#> [561] 180.0+   1.0   38.0  180.0+ 180.0+ 180.0+   4.0   71.0    1.0   19.0 
#> [571]  30.0  180.0+ 180.0+ 180.0+ 154.0    2.0  180.0+   4.0+ 180.0+   1.0 
#> [581]  16.0+   5.0+   4.0+   3.0   83.0   88.0    8.0  180.0+   3.0  180.0+
#> [591] 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+   6.0   70.0  180.0+ 180.0+
#> [601]  14.0    3.0   13.0  180.0+  92.0   38.0    4.0    3.0+   6.0+   4.0+
#> [611]  20.0   22.0   11.0  180.0+  46.0  115.0  180.0+   3.0+   8.0+ 180.0+
#> [621]   4.0    4.0  180.0+   1.0+ 180.0+ 110.0  180.0+  46.0   14.0    1.0+
#> [631] 180.0+  25.0    3.0   11.0  126.0  180.0+ 180.0+   4.0    1.0  178.0+
#> [641]  89.0   75.0    3.0+   1.0   33.0  158.0  180.0+ 168.0   52.0    7.0 
#> [651]   0.5  180.0+ 180.0+ 180.0+   2.0    8.0+  76.0  180.0+  16.0   67.0 
#> [661]  12.0   26.0   53.0    7.0+   0.5   69.0    2.0  180.0+   3.0   15.0+
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
#>    0.845924 
```
