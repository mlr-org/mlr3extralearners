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
#> min 0.00334    45   2.777 0.1709       6
#> 1se 0.07188    12   2.925 0.1641       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  33   2      0          2        0   150
#>   [2,]  35   5      1          2        0   172
#>   [3,]  35  10      1          9        0   106
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      1          1        1   112
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  38  12      1          8        1   120
#>  [10,]  36   5      1          0        1   115
#>  [11,]  38  12      1         11        1    92
#>  [12,]  42   3      1          1        1   130
#>  [13,]  40   2      1          1        1   148
#>  [14,]  42   2      0        180        1   100
#>  [15,]  42   2      0          2        0   140
#>  [16,]  40   6      0        180        1   138
#>  [17,]  40  11      1         10        1   120
#>  [18,]  42   2      0        180        0   100
#>  [19,]  41   2      1          1        0   166
#>  [20,]  42   4      0        180        0   162
#>  [21,]  42  15      1         13        1   125
#>  [22,]  40   3      1          1        0   170
#>  [23,]  42  12      1         10        1   170
#>  [24,]  43   2      1          1        1   116
#>  [25,]  42   2      0        180        1   124
#>  [26,]  45   3      0        180        1   154
#>  [27,]  41  13      1          1        0   140
#>  [28,]  45   9      1          7        0   110
#>  [29,]  41   5      1          4        1   141
#>  [30,]  43   2      0        180        1   140
#>  [31,]  45   2      0        180        1   140
#>  [32,]  47   4      1          3        0   118
#>  [33,]  48  15      0        180        1   160
#>  [34,]  45   3      0        150        0   130
#>  [35,]  44   3      1          0        1   180
#>  [36,]  46   7      1          2        0   166
#>  [37,]  43  29      0        180        1   180
#>  [38,]  45   4      1          0        0   124
#>  [39,]  46  13      1         10        0   100
#>  [40,]  44   0      1          0        1    96
#>  [41,]  43   3      1          0        1   124
#>  [42,]  45   5      0          5        0   141
#>  [43,]  46   6      1          0        1   100
#>  [44,]  44   4      1          0        1   114
#>  [45,]  47   2      0        180        0   108
#>  [46,]  44   9      1          8        1   135
#>  [47,]  45   5      0        180        1   190
#>  [48,]  46   5      1          3        0   130
#>  [49,]  44   2      0        180        0   142
#>  [50,]  45   9      1          0        1   145
#>  [51,]  48   3      0        180        0   154
#>  [52,]  48  12      1         11        0   200
#>  [53,]  47   9      1          6        0   170
#>  [54,]  46   3      1          0        1   119
#>  [55,]  49   4      0        180        0   117
#>  [56,]  50   1      1          0        1   129
#>  [57,]  50   6      1          2        1   140
#>  [58,]  46   3      1          1        1   140
#>  [59,]  49   2      0          2        0   105
#>  [60,]  51   1      0          1        1   145
#>  [61,]  49  15      1         11        1   160
#>  [62,]  47   2      0        180        0   150
#>  [63,]  46   6      1          0        1   156
#>  [64,]  52   2      0        180        1   170
#>  [65,]  50   7      1          0        1    92
#>  [66,]  51   3      1          2        0   113
#>  [67,]  50   1      1          0        0   150
#>  [68,]  50   9      0        180        0   130
#>  [69,]  49   7      1          4        1    90
#>  [70,]  47   8      0        180        0   160
#>  [71,]  51   8      0        180        1   140
#>  [72,]  52   2      0        180        0   155
#>  [73,]  46   1      1          1        0   145
#>  [74,]  50   4      1          1        0   150
#>  [75,]  48   7      1          0        1   110
#>  [76,]  48  17      1         10        0   111
#>  [77,]  47   2      1          1        0   110
#>  [78,]  52   4      1          4        0   152
#>  [79,]  49   9      1          3        0   102
#>  [80,]  53   5      0        180        1   140
#>  [81,]  53   5      0         77        0   159
#>  [82,]  51   3      1          1        0   140
#>  [83,]  50  10      1          6        0   122
#>  [84,]  53   8      1          7        0   160
#>  [85,]  48   3      1          2        0   150
#>  [86,]  51  25      1          1        0   202
#>  [87,]  53   4      0          4        0   140
#>  [88,]  52  14      1          7        1   200
#>  [89,]  48   6      0        180        0   160
#>  [90,]  51  13      0         99        1   160
#>  [91,]  54   9      1          0        1   138
#>  [92,]  49  16      0         16        0   125
#>  [93,]  55   3      1          1        0   150
#>  [94,]  54  23      1         10        0   131
#>  [95,]  55   6      1          2        1   114
#>  [96,]  55   4      1          2        0   150
#>  [97,]  52   4      0        180        1   180
#>  [98,]  50   5      1          4        1   150
#>  [99,]  54   4      1          0        1   121
#> [100,]  50   3      0        174        1   153
#> [101,]  55  28      1         13        1   160
#> [102,]  49   6      1          0        1   130
#> [103,]  49   1      0          1        1   110
#> [104,]  53   9      0          9        1    95
#> [105,]  53   8      1          0        1   130
#> [106,]  50   7      1          0        1   127
#> [107,]  56   4      1          1        1   130
#> [108,]  52   5      0        175        1   117
#> [109,]  55   1      0        180        0   127
#> [110,]  54   1      0        180        0   162
#> [111,]  54   7      1          0        1   100
#> [112,]  55   5      1          4        1   120
#> [113,]  53  18      1          9        1   150
#> [114,]  55   6      0        180        0   170
#> [115,]  52  16      0         16        0   152
#> [116,]  53  10      1          9        0   172
#> [117,]  53  15      0         15        1    90
#> [118,]  53   4      0        180        1   150
#> [119,]  55   6      0        180        1   100
#> [120,]  55   6      1          5        1   138
#> [121,]  54  12      1          0        1   190
#> [122,]  54   3      0        180        0   128
#> [123,]  54   7      1          2        0   129
#> [124,]  54   2      1          1        0   135
#> [125,]  54   2      1          1        1   176
#> [126,]  57   1      0          1        1   100
#> [127,]  56   4      1          0        1   140
#> [128,]  55  11      1          7        0   104
#> [129,]  52  15      1         14        0   130
#> [130,]  56  14      1         11        0   130
#> [131,]  57  10      0        180        1   170
#> [132,]  58   8      0          8        1   130
#> [133,]  55   3      1          1        1   156
#> [134,]  57   0      0          0        1   150
#> [135,]  53  21      1         13        1   130
#> [136,]  59   3      1          1        0   172
#> [137,]  57   4      0        180        1   119
#> [138,]  58   6      1          0        1    90
#> [139,]  54  17      1          8        1   227
#> [140,]  55  13      0        166        1   140
#> [141,]  56   5      0          5        1   150
#> [142,]  54  23      1          8        0   120
#> [143,]  57   4      1          2        1   185
#> [144,]  53   7      1          0        1   120
#> [145,]  57  11      1         10        1   129
#> [146,]  55   3      1          2        0   140
#> [147,]  59  15      1         10        0   140
#> [148,]  58   9      1          0        1   180
#> [149,]  55   5      1          0        0   140
#> [150,]  55   2      0          2        0   106
#> [151,]  59   9      1          1        1   125
#> [152,]  57   1      0        180        0   148
#> [153,]  58   4      1          0        1   160
#> [154,]  57   5      0        180        1   130
#> [155,]  59   5      0        180        1   155
#> [156,]  59   4      1          0        1   152
#> [157,]  58  26      1          0        1   189
#> [158,]  61   9      0          9        1   160
#> [159,]  58   4      1          3        0   120
#> [160,]  59   2      1          1        0   140
#> [161,]  58   8      0        161        1   140
#> [162,]  58  14      1          6        0   190
#> [163,]  61   9      1          8        0   150
#> [164,]  61   3      1          2        1   102
#> [165,]  61  20      1         13        0   130
#> [166,]  57  13      1         10        0   110
#> [167,]  57   2      1          0        1   116
#> [168,]  58  10      0         10        1   150
#> [169,]  61   3      0         17        0   143
#> [170,]  56  14      0         45        0   130
#> [171,]  57   3      1          2        0   120
#> [172,]  56  18      1         11        1   165
#> [173,]  59   9      1          0        1    80
#> [174,]  55   4      1          3        1   160
#> [175,]  58  11      0        172        1   135
#> [176,]  60  12      1          0        1   114
#> [177,]  61  13      1         12        1   130
#> [178,]  59  11      1          8        1   190
#> [179,]  57  15      1         13        1   110
#> [180,]  59   5      1          2        0   182
#> [181,]  58   5      1          1        1   135
#> [182,]  59  10      0        180        0   160
#> [183,]  61   8      0         77        0   120
#> [184,]  58   8      1          5        0   152
#> [185,]  62   7      1          2        1   180
#> [186,]  61  18      0        170        0   140
#> [187,]  61  28      1          7        0   133
#> [188,]  57   7      0        169        0   180
#> [189,]  61   7      0          7        1   150
#> [190,]  60   7      0          7        0   147
#> [191,]  61   6      0          6        0   134
#> [192,]  57  12      1          9        1   120
#> [193,]  60  17      1          8        1   140
#> [194,]  58   3      1          0        1   146
#> [195,]  62   4      1          3        0   173
#> [196,]  59   1      0        180        0   155
#> [197,]  59  16      1          9        1   133
#> [198,]  63   6      0         28        1   120
#> [199,]  61  13      0         13        0   120
#> [200,]  58  11      1          9        0   179
#> [201,]  57   2      1          1        0   159
#> [202,]  62  17      1         10        1   180
#> [203,]  62   1      1          0        1   172
#> [204,]  58   7      0        180        1   150
#> [205,]  63   1      0        180        1   130
#> [206,]  61   7      0        180        0   135
#> [207,]  63   4      1          3        0   222
#> [208,]  63  15      1         10        1   126
#> [209,]  64   4      0        180        0   130
#> [210,]  63   4      1          1        0   155
#> [211,]  60  18      1         13        0   132
#> [212,]  59   8      0        180        1   140
#> [213,]  61   9      1          9        1   150
#> [214,]  58   9      1          9        0   110
#> [215,]  62   7      0          7        0   150
#> [216,]  59   1      0         22        1   162
#> [217,]  58   2      0        180        0   127
#> [218,]  59   4      0        180        0   196
#> [219,]  60   7      0          7        0   140
#> [220,]  59   5      1          1        0   148
#> [221,]  60   7      1          1        1    90
#> [222,]  65  13      0        180        1   100
#> [223,]  63   1      0          1        0   162
#> [224,]  63   1      0          1        0   130
#> [225,]  59   4      0          4        0   149
#> [226,]  60   3      0          3        0   168
#> [227,]  62   6      0          6        0   120
#> [228,]  63  12      1         10        0   200
#> [229,]  59  10      0        180        1   130
#> [230,]  64  12      1         11        0   160
#> [231,]  64   6      1          0        1   140
#> [232,]  63   4      1          3        0   162
#> [233,]  66   3      1          1        0   127
#> [234,]  64  32      1          9        1   160
#> [235,]  63  12      1          9        0   114
#> [236,]  63   7      0        180        0   120
#> [237,]  65   8      1          0        0   168
#> [238,]  64   0      0          0        1    90
#> [239,]  60   6      0        180        0   130
#> [240,]  64   9      0        180        0   150
#> [241,]  63  16      1          7        1   110
#> [242,]  64   7      0        180        1   120
#> [243,]  66   6      1          1        1   130
#> [244,]  63  12      0         12        1   150
#> [245,]  65   6      0          9        0   112
#> [246,]  65   3      1          0        1    80
#> [247,]  67  11      0         11        1   100
#> [248,]  64   2      0          2        0   201
#> [249,]  66  18      1          5        0   142
#> [250,]  62   9      0        180        0   145
#> [251,]  61  15      1         10        0   130
#> [252,]  63   3      1          2        0   120
#> [253,]  63   2      1          0        0   140
#> [254,]  64  19      1          8        1   160
#> [255,]  67   6      0        180        1   170
#> [256,]  65  15      1         11        1   160
#> [257,]  68   5      1          4        1   150
#> [258,]  64  13      1         12        1   150
#> [259,]  64   6      1          0        1   125
#> [260,]  66  13      1          0        0   118
#> [261,]  64  14      1         13        1   150
#> [262,]  65   3      0          3        0   105
#> [263,]  64   0      0          0        1   148
#> [264,]  67   4      1          3        0   130
#> [265,]  66   3      1          0        1   135
#> [266,]  66   6      1          0        1   140
#> [267,]  65   2      1          1        1   170
#> [268,]  64  10      1          9        1   110
#> [269,]  63   7      1          0        0   162
#> [270,]  67   8      1          1        1   130
#> [271,]  68   5      0          5        1    90
#> [272,]  63  10      0         16        1   160
#> [273,]  66  14      0        180        0   130
#> [274,]  64   1      0          1        1   120
#> [275,]  65  17      1         14        1   100
#> [276,]  63   1      1          0        1   155
#> [277,]  68  11      0        180        0   160
#> [278,]  68  14      0         79        0   172
#> [279,]  66  12      1         10        1   150
#> [280,]  65   4      1          2        1   145
#> [281,]  69  12      0         15        1   140
#> [282,]  66  15      1         13        1   160
#> [283,]  65  11      1          6        0   130
#> [284,]  69  21      1         10        0   180
#> [285,]  69   6      0        180        1   100
#> [286,]  66   9      1          8        0   130
#> [287,]  68  14      1         13        1   140
#> [288,]  68  10      1         10        1   150
#> [289,]  65   1      1          0        0   133
#> [290,]  65   6      0          6        0    80
#> [291,]  65  10      1          1        1   148
#> [292,]  66  19      1         12        1   150
#> [293,]  67  12      1         12        0   160
#> [294,]  69   6      0         99        1   140
#> [295,]  65   4      1          1        0   130
#> [296,]  70  15      1         12        1   132
#> [297,]  64   0      1          0        1   118
#> [298,]  67   2      0         18        0   131
#> [299,]  66   7      1          5        1   131
#> [300,]  66   4      0        180        0   177
#> [301,]  69  17      1         10        0   140
#> [302,]  69   8      0         93        0   140
#> [303,]  66   6      0        180        0   140
#> [304,]  65   1      0          1        1   120
#> [305,]  68  18      1          0        1   160
#> [306,]  65   6      0        101        1   115
#> [307,]  70   7      1          0        1   190
#> [308,]  68   7      0        150        0   210
#> [309,]  71  20      1          0        1   160
#> [310,]  67   2      0        180        0   128
#> [311,]  69   8      0        180        1   153
#> [312,]  66   4      0        180        0   130
#> [313,]  67  10      1          9        0   200
#> [314,]  69   0      0          0        1   148
#> [315,]  68   7      1          0        1   150
#> [316,]  69   3      1          2        0   151
#> [317,]  65  14      1         13        1   150
#> [318,]  69   8      0        180        1   180
#> [319,]  71   6      0         45        1   158
#> [320,]  69   5      0          5        1   142
#> [321,]  71   3      0        103        0   133
#> [322,]  69   3      0          3        1   130
#> [323,]  70  22      1         13        0   103
#> [324,]  67   1      0         36        1   104
#> [325,]  68   6      0        180        0   145
#> [326,]  69   8      1          5        1   195
#> [327,]  69   6      1          4        1   174
#> [328,]  72   3      1          0        1   132
#> [329,]  72   7      0          7        1   110
#> [330,]  69   8      1          7        1   108
#> [331,]  67   3      0        180        0   110
#> [332,]  69  19      0        180        0   130
#> [333,]  68  18      0         18        1   100
#> [334,]  67  14      0        172        1   140
#> [335,]  69  11      1          0        1   120
#> [336,]  66   2      0        180        0   130
#> [337,]  68   2      0          7        1   130
#> [338,]  69   8      1          2        0   121
#> [339,]  67  13      1          9        0   130
#> [340,]  70   3      0        123        0   130
#> [341,]  72   5      1          4        0   170
#> [342,]  67  22      1          1        1   140
#> [343,]  67   1      0          1        1    60
#> [344,]  67   4      0         60        1   136
#> [345,]  69   5      0         76        0   120
#> [346,]  72  13      1         11        1   195
#> [347,]  68  10      1          8        1   160
#> [348,]  70  35      1          0        1   105
#> [349,]  72  30      1          0        1   145
#> [350,]  70   7      0          7        0   102
#> [351,]  68   7      1          2        0   135
#> [352,]  71   6      0          9        0   120
#> [353,]  70  11      0        180        1   210
#> [354,]  72  19      1          8        0   120
#> [355,]  72  12      1         10        0   170
#> [356,]  67   8      0        180        1   170
#> [357,]  67   5      1          0        1   147
#> [358,]  70   5      0        180        0   150
#> [359,]  72   2      0          2        1   100
#> [360,]  67   4      1          1        0   134
#> [361,]  72   6      1          5        0   115
#> [362,]  68  23      0        180        1   220
#> [363,]  69   3      0        180        0   220
#> [364,]  71   3      1          2        0   150
#> [365,]  68   4      1          3        0   210
#> [366,]  72   5      0         28        0   120
#> [367,]  71   5      0        180        0   191
#> [368,]  69  16      1         10        1   140
#> [369,]  69   8      1          1        0   164
#> [370,]  72  16      1          1        1   130
#> [371,]  73   6      1          0        1   270
#> [372,]  71   2      1          0        1   180
#> [373,]  73   7      0          7        1   140
#> [374,]  70   3      0          3        1   159
#> [375,]  72   6      0        180        1   130
#> [376,]  73   0      0        180        1   161
#> [377,]  74   8      1          0        1    85
#> [378,]  69   2      1          0        1   110
#> [379,]  71   3      1          1        0   150
#> [380,]  71  15      1         11        0   165
#> [381,]  74   0      1          0        1    90
#> [382,]  73   3      1          0        1   136
#> [383,]  70   5      1          0        1   190
#> [384,]  70  26      1         11        1   120
#> [385,]  74   4      0          4        0   120
#> [386,]  73   4      0         58        1   160
#> [387,]  72   5      1          3        1   160
#> [388,]  73   6      0        180        0   110
#> [389,]  72  15      1          0        1   150
#> [390,]  72   8      1          0        1   140
#> [391,]  74   3      0          3        1   150
#> [392,]  73  17      1         11        0   140
#> [393,]  71  13      1          8        0   121
#> [394,]  71  14      1         13        1   170
#> [395,]  74   7      1          0        1   117
#> [396,]  72  10      1          8        1   153
#> [397,]  69   7      0        180        1   144
#> [398,]  72  15      1         13        0   156
#> [399,]  70   8      0          8        0   120
#> [400,]  75   1      0          1        0   133
#> [401,]  75   2      1          1        0   145
#> [402,]  73  10      1          9        1   146
#> [403,]  72  10      1          9        1   160
#> [404,]  73  10      1         10        1   120
#> [405,]  74  15      1          9        1   179
#> [406,]  71   2      0         10        1   112
#> [407,]  73   1      0          1        1    80
#> [408,]  75   9      1          7        0   140
#> [409,]  75  13      1          1        1   130
#> [410,]  71  11      1          8        0   110
#> [411,]  71   4      0          4        0   134
#> [412,]  73  10      1          8        0   120
#> [413,]  70   7      1          4        0   184
#> [414,]  73  10      0        180        0   162
#> [415,]  70   3      0          3        0   150
#> [416,]  73  12      1         12        1   140
#> [417,]  75   1      0        180        1   140
#> [418,]  72   4      1          0        1   197
#> [419,]  71   3      1          0        0   144
#> [420,]  73   5      0        180        0   126
#> [421,]  73   4      0        180        0   124
#> [422,]  74  34      1          8        1   233
#> [423,]  76   3      1          0        1   120
#> [424,]  71  32      1         12        1   107
#> [425,]  72   5      0        180        0   154
#> [426,]  72   3      0        180        0   160
#> [427,]  76   5      0          5        1   130
#> [428,]  77   4      0          4        0   185
#> [429,]  75   3      1          1        0   180
#> [430,]  72   7      1          2        0   142
#> [431,]  73  15      0         15        1   160
#> [432,]  71  16      0        180        0   140
#> [433,]  73  10      1         10        0   124
#> [434,]  74   7      0        180        1   150
#> [435,]  74   3      0          3        1   128
#> [436,]  76   1      0        180        0   114
#> [437,]  73   6      0          6        1   114
#> [438,]  75  23      1         14        1   110
#> [439,]  76  17      1          0        1   200
#> [440,]  73   4      1          3        1   125
#> [441,]  76  13      1         10        0   110
#> [442,]  75   7      0          7        0   190
#> [443,]  75   0      0          0        1   130
#> [444,]  75  12      0         12        1   160
#> [445,]  76  13      1          8        1   148
#> [446,]  75   4      1          2        1   188
#> [447,]  76   4      0          4        1   155
#> [448,]  75   1      0          1        1   125
#> [449,]  73   1      0         52        1   105
#> [450,]  73   0      0        180        0   156
#> [451,]  78  12      1         11        1   160
#> [452,]  76   5      0        180        0   185
#> [453,]  74  10      1          0        1   135
#> [454,]  76   5      1          0        1   167
#> [455,]  74   8      1          8        1   170
#> [456,]  75   9      0        180        1   140
#> [457,]  73  33      1         12        1   175
#> [458,]  77   5      1          0        0   123
#> [459,]  77  12      1          9        1   100
#> [460,]  73  10      1          9        0   146
#> [461,]  77  12      0        180        0   130
#> [462,]  77   1      1          0        1    90
#> [463,]  76  12      1         11        1   120
#> [464,]  78   5      1          0        1   170
#> [465,]  74   6      0         79        1   140
#> [466,]  74   9      1          8        0   200
#> [467,]  75   6      0        180        0   150
#> [468,]  79  10      1          8        0   190
#> [469,]  74   2      1          0        1   130
#> [470,]  78  18      0         18        1   144
#> [471,]  76  29      0         47        0    90
#> [472,]  74   2      0        180        0   100
#> [473,]  78   7      0          7        1   133
#> [474,]  74  15      0        180        1   172
#> [475,]  78   8      1          6        1   110
#> [476,]  74   7      0          7        0   161
#> [477,]  78  32      1          9        1   198
#> [478,]  78   0      0        180        1   212
#> [479,]  75   5      0        119        1   150
#> [480,]  75  12      1          1        1   120
#> [481,]  78  15      0        180        1   270
#> [482,]  80   8      0          8        1   120
#> [483,]  75  13      1          6        0   150
#> [484,]  74  10      1          8        0   135
#> [485,]  78  12      1          9        0   150
#> [486,]  78   2      1          1        0   130
#> [487,]  75   4      1          0        0   212
#> [488,]  77   2      1          0        1   143
#> [489,]  78  10      0        180        1   130
#> [490,]  76  11      1          0        0   120
#> [491,]  75  11      1          4        0   162
#> [492,]  76   7      0         29        1   150
#> [493,]  77  24      0         24        1   160
#> [494,]  78   6      1          0        1   240
#> [495,]  78  11      1          1        1   140
#> [496,]  79  11      0        180        0   160
#> [497,]  81   1      0          1        0   130
#> [498,]  78  11      1          8        1   118
#> [499,]  76   4      0          4        1   160
#> [500,]  79   4      0          4        1   125
#> [501,]  76  12      1         10        1   127
#> [502,]  77   6      0          6        1   107
#> [503,]  80   3      1          0        1   120
#> [504,]  75   2      1          1        1   204
#> [505,]  76   1      0          1        1   140
#> [506,]  77  31      1          3        1   161
#> [507,]  76   1      0          1        1    90
#> [508,]  79   3      0          3        0   120
#> [509,]  77   7      0        180        1   170
#> [510,]  80  15      1         12        1   150
#> [511,]  77   9      1          4        0   141
#> [512,]  82   5      0          8        1   120
#> [513,]  80  40      1          0        1   138
#> [514,]  78   4      0         59        1   112
#> [515,]  76   7      0        161        0   151
#> [516,]  79  28      0        164        0   100
#> [517,]  80   9      0        118        1   186
#> [518,]  80   6      0        173        1   160
#> [519,]  79   1      0         37        1   140
#> [520,]  81   2      0        175        0   172
#> [521,]  78   7      0          7        1   147
#> [522,]  77  13      1          0        1   190
#> [523,]  78  15      0         15        0   165
#> [524,]  80   5      1          1        1   108
#> [525,]  78   4      0        180        0   175
#> [526,]  79   3      0          3        1   101
#> [527,]  78  26      1          5        0   194
#> [528,]  81   4      1          1        1   104
#> [529,]  78  20      1          0        1   109
#> [530,]  80   1      0          1        0   100
#> [531,]  78   3      1          1        1   152
#> [532,]  77  10      1          8        1   130
#> [533,]  82   3      1          1        1   144
#> [534,]  77   5      0         85        0   188
#> [535,]  78   2      0        180        0   148
#> [536,]  82   1      1          0        1    82
#> [537,]  77   4      0        180        1    98
#> [538,]  81   1      0        108        0   129
#> [539,]  78  12      0        180        0   134
#> [540,]  82  21      1          2        0   155
#> [541,]  84  22      1         10        0   180
#> [542,]  79   4      0          4        1   121
#> [543,]  80   6      0          6        1   110
#> [544,]  79   7      1          6        0   130
#> [545,]  83   4      0        103        0    97
#> [546,]  80  11      1          8        0   170
#> [547,]  78  23      1         10        1   145
#> [548,]  79   4      0          4        1   183
#> [549,]  78   9      1          4        1   120
#> [550,]  82   8      1          1        0   128
#> [551,]  79   1      0        180        1   170
#> [552,]  81  15      0        180        1   140
#> [553,]  81  20      1          9        0   170
#> [554,]  81  16      0         16        1   110
#> [555,]  80  11      1          8        0   110
#> [556,]  79   0      1          0        1    96
#> [557,]  83   2      0          2        1   155
#> [558,]  80   3      1          1        1   230
#> [559,]  84   5      0        180        1   203
#> [560,]  84   1      0         38        1   205
#> [561,]  83   3      0        180        0   174
#> [562,]  81   4      0         90        1   138
#> [563,]  79   9      1          8        0   150
#> [564,]  85   3      1          2        1   160
#> [565,]  80  13      1          8        1   140
#> [566,]  84   4      0         89        1   129
#> [567,]  80   2      1          0        1   130
#> [568,]  79   4      0          4        1    60
#> [569,]  80   6      0         71        1   189
#> [570,]  83   1      0          1        1   100
#> [571,]  82  19      0         19        0   120
#> [572,]  83   9      0        180        0   198
#> [573,]  79  14      1          0        0   110
#> [574,]  83   3      0        114        0    98
#> [575,]  81  14      1         12        1   128
#> [576,]  83   2      0        154        0   130
#> [577,]  82   0      0          2        1   100
#> [578,]  85   9      1          6        1   160
#> [579,]  81   4      0          4        0   175
#> [580,]  81   1      0          1        1   145
#> [581,]  81  12      0         12        1   163
#> [582,]  82   5      1          0        1   146
#> [583,]  86  12      0        180        1   120
#> [584,]  83  12      1          2        1   170
#> [585,]  81  19      1         14        0   120
#> [586,]  82  15      1          0        0   183
#> [587,]  80   2      0         88        0   135
#> [588,]  83   7      0        126        0   135
#> [589,]  86   8      0          8        1   132
#> [590,]  81  16      1          9        0   180
#> [591,]  84   6      0        165        0   145
#> [592,]  82   9      0        180        1   134
#> [593,]  84   3      0        180        1   120
#> [594,]  81  13      0        180        0   152
#> [595,]  81   2      1          0        1   118
#> [596,]  81   4      0        180        0   160
#> [597,]  82   1      0        180        1   193
#> [598,]  83   4      0          4        0   130
#> [599,]  82  14      1         11        1   103
#> [600,]  86   6      1          0        1   140
#> [601,]  84  16      0         70        1   150
#> [602,]  83  19      0         43        0   150
#> [603,]  84   3      1          2        0   125
#> [604,]  83  10      1          0        1   190
#> [605,]  86   2      0        180        1   169
#> [606,]  88  14      1          3        1   130
#> [607,]  84   3      0          3        1   121
#> [608,]  83  13      1         12        0   170
#> [609,]  84   7      1          2        0   148
#> [610,]  87   2      0        180        0   113
#> [611,]  86  13      0        177        0   163
#> [612,]  86   6      0          6        1   117
#> [613,]  84  13      0         62        1   100
#> [614,]  88   4      0          4        0   100
#> [615,]  88   4      0          4        1   115
#> [616,]  85  22      0         22        1   184
#> [617,]  83   9      0         65        1   150
#> [618,]  86   9      1          7        1   142
#> [619,]  87   2      0        180        1   130
#> [620,]  86   6      0         46        0   173
#> [621,]  88   2      0        180        1    68
#> [622,]  87   8      0          8        1   157
#> [623,]  86  15      1          8        1   109
#> [624,]  87   6      0        180        1   110
#> [625,]  87   1      0          1        0   170
#> [626,]  84   8      0        180        1   119
#> [627,]  85   8      0          8        1   136
#> [628,]  84   2      0        110        1   174
#> [629,]  87  29      0         29        1    97
#> [630,]  87  15      1          9        1   138
#> [631,]  84   0      0        180        1   136
#> [632,]  90  14      0         14        1   100
#> [633,]  88   1      0          1        0   135
#> [634,]  86   4      0        180        1   145
#> [635,]  91   8      0          8        0   100
#> [636,]  87   2      0        180        0   160
#> [637,]  87   6      1          0        0   125
#> [638,]  91  10      0        145        0   135
#> [639,]  88   7      0         24        0   119
#> [640,]  88   8      0         50        1   154
#> [641,]  87   6      0        126        1   168
#> [642,]  86  10      0        180        1   137
#> [643,]  86   9      1          7        0   130
#> [644,]  90   4      1          0        0   121
#> [645,]  87  43      0        178        1   130
#> [646,]  87   5      0         36        1   150
#> [647,]  90   5      1          0        1   125
#> [648,]  88   3      1          2        0   159
#> [649,]  92   1      0          1        1   167
#> [650,]  91   3      0         33        1   137
#> [651,]  87   7      0         74        1   105
#> [652,]  89   2      0        168        0   118
#> [653,]  91   5      0        169        1   176
#> [654,]  92   7      0          7        1   110
#> [655,]  89   4      0          4        1   159
#> [656,]  91   0      0          0        0     0
#> [657,]  90  18      0        180        0   188
#> [658,]  90  19      1         11        1   129
#> [659,]  90   1      0          1        1   118
#> [660,]  91   2      0          2        1   116
#> [661,]  91   1      0        180        0   158
#> [662,]  90  16      0         16        1   106
#> [663,]  90   3      0         67        0   162
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91   7      0          7        0   135
#> [667,]  92   5      0         69        0   139
#> [668,]  92   2      0          2        0   112
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1]   2.0+   5.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 115.0   12.0    5.0+
#>  [11] 180.0+ 180.0+   2.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 177.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 172.0+ 180.0+ 180.0+   2.0    1.0 
#>  [61] 179.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+   7.0   88.0+ 180.0+   4.0+ 180.0+ 180.0+
#>  [81]  77.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+  99.0 
#>  [91] 180.0+  16.0+ 180.0+ 152.0+   6.0+ 180.0+ 180.0+ 171.0+ 180.0+ 174.0+
#> [101]  28.0    6.0+   1.0    9.0+ 180.0+ 180.0+ 180.0+ 175.0+ 180.0+ 180.0+
#> [111]   7.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  15.0+ 180.0+ 180.0+ 180.0+
#> [121]  12.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0  165.0  180.0+ 180.0+ 180.0+
#> [131] 180.0+   8.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 171.0+ 166.0+
#> [141]   5.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+   2.0+
#> [151] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+ 180.0+
#> [161] 161.0+ 171.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+  10.0+  17.0   45.0 
#> [171]   3.0+ 180.0+   9.0+ 180.0+ 172.0+ 172.0+ 180.0+ 180.0+  15.0  180.0+
#> [181] 180.0+ 180.0+  77.0    8.0+ 180.0+ 170.0   94.0  169.0    7.0    7.0+
#> [191]   6.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+  28.0   13.0+ 180.0+
#> [201] 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+
#> [211] 180.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+ 180.0+   7.0+ 180.0+
#> [221] 180.0+ 180.0+   1.0    1.0    4.0+   3.0+   6.0+ 180.0+ 180.0+  12.0 
#> [231] 180.0+ 180.0+   3.0+ 180.0+  12.0  180.0+ 180.0+   0.5  180.0+ 180.0+
#> [241] 180.0+ 180.0+ 180.0+  12.0    9.0    3.0   11.0+   2.0+  18.0+ 180.0+
#> [251] 180.0+   3.0+   2.0+ 103.0  180.0+ 180.0+   5.0+  13.0  180.0+ 166.0+
#> [261]  14.0+   3.0    0.5+ 180.0+   3.0+ 180.0+ 175.0+ 180.0+   7.0+   8.0 
#> [271]   5.0   16.0  180.0+   1.0  180.0+   1.0+ 180.0+  79.0   80.0    4.0+
#> [281]  15.0  180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+  10.0  180.0+   6.0 
#> [291] 180.0+  19.0+  12.0   99.0  180.0+ 180.0+   0.5   18.0    7.0+ 180.0+
#> [301] 180.0+  93.0  180.0+   1.0   18.0+ 101.0    7.0+ 150.0  180.0+ 180.0+
#> [311] 180.0+ 180.0+ 174.0+   0.5  180.0+ 180.0+  14.0+ 180.0+  45.0    5.0+
#> [321] 103.0    3.0+ 180.0+  36.0  180.0+ 180.0+  97.0  180.0+   7.0    8.0+
#> [331] 180.0+ 180.0+  18.0  172.0+ 180.0+ 180.0+   7.0    8.0+  13.0+ 123.0 
#> [341] 180.0+  51.0    1.0   60.0   76.0  132.0   10.0+ 180.0+ 162.0    7.0+
#> [351]   7.0+   9.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+   2.0   76.0 
#> [361] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0  180.0+  16.0+ 180.0+  16.0+
#> [371]   6.0  180.0+   7.0+   3.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+
#> [381]   0.5  180.0+ 180.0+ 180.0+   4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+
#> [391]   3.0  180.0+ 175.0   14.0+ 180.0+  10.0+ 180.0+ 180.0+   8.0+   1.0 
#> [401] 180.0+ 180.0+ 159.0   15.0  180.0+  10.0    1.0  180.0+  13.0  180.0+
#> [411]   4.0+  10.0  104.0+ 180.0+   3.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [421] 180.0+  34.0  180.0+ 177.0+ 180.0+ 180.0+   5.0    4.0+ 180.0+   7.0 
#> [431]  15.0+ 180.0+  10.0  180.0+   3.0  180.0+   6.0  180.0+  17.0+ 180.0+
#> [441] 174.0+   7.0    0.5   12.0  180.0+  46.0    4.0    1.0   52.0  180.0+
#> [451]  12.0  180.0+ 180.0+ 180.0+   8.0  180.0+  33.0    5.0  180.0+ 180.0+
#> [461] 180.0+   1.0   12.0  180.0+  79.0  168.0+ 180.0+ 180.0+ 176.0+  18.0 
#> [471]  47.0  180.0+   7.0  180.0+   8.0+   7.0   32.0  180.0+ 119.0   12.0 
#> [481] 180.0+   8.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+   2.0  180.0+  11.0 
#> [491] 152.0+  29.0   24.0  180.0+ 180.0+ 180.0+   1.0   11.0    4.0    4.0 
#> [501] 180.0+   6.0    3.0+   2.0+   1.0  171.0    1.0    3.0  180.0+ 180.0+
#> [511]  71.0    8.0   40.0   59.0  161.0  164.0  118.0  173.0   37.0  175.0+
#> [521]   7.0+  22.0   15.0+   5.0+ 180.0+   3.0  171.0+  71.0   20.0+   1.0 
#> [531]   3.0+  10.0  180.0+  85.0  180.0+   1.0  180.0+ 108.0  180.0+ 180.0+
#> [541] 180.0+   4.0    6.0  180.0+ 103.0  169.0   70.0    4.0  180.0+ 180.0+
#> [551] 180.0+ 180.0+  20.0   16.0  180.0+   0.5    2.0    3.0+ 180.0+  38.0 
#> [561] 180.0+  90.0  180.0+ 180.0+ 180.0+  89.0  180.0+   4.0   71.0    1.0 
#> [571]  19.0  180.0+ 180.0+ 114.0  180.0+ 154.0    2.0  180.0+   4.0+   1.0 
#> [581]  12.0    5.0+ 180.0+  77.0  180.0+  83.0   88.0  126.0    8.0  180.0+
#> [591] 165.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 174.0    6.0 
#> [601]  70.0   43.0  180.0+ 180.0+ 180.0+  14.0    3.0   13.0  180.0+ 180.0+
#> [611] 177.0    6.0+  62.0    4.0+   4.0   22.0   65.0   11.0  180.0+  46.0 
#> [621] 180.0+   8.0+ 180.0+ 180.0+   1.0+ 180.0+   8.0  110.0   29.0  180.0+
#> [631] 180.0+  14.0    1.0+ 180.0+   8.0  180.0+  25.0  145.0   24.0   50.0 
#> [641] 126.0  180.0+ 180.0+   4.0  178.0+  36.0   89.0   75.0    1.0   33.0 
#> [651]  74.0  168.0  169.0    7.0    4.0    0.5  180.0+ 180.0+   1.0+   2.0 
#> [661] 180.0+  16.0   67.0    8.0   26.0    7.0+  69.0    2.0    3.0   15.0+
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
#>   0.8101449 
```
