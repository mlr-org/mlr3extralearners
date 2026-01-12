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
#> min 0.00341    45   2.936 0.1778       6
#> 1se 0.08067    11   3.108 0.1640       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  34   5      0          5        0   120
#>   [5,]  35   2      0        180        0   121
#>   [6,]  37   9      0        180        1   151
#>   [7,]  38  13      1          0        1   161
#>   [8,]  35   0      0        180        1   119
#>   [9,]  38  12      1          8        1   120
#>  [10,]  36   5      1          0        1   115
#>  [11,]  33   6      1          1        1   115
#>  [12,]  38  16      1         10        0   160
#>  [13,]  38  12      1         11        1    92
#>  [14,]  37   1      1          0        1   146
#>  [15,]  40   2      1          1        1   148
#>  [16,]  42   2      0        180        1   100
#>  [17,]  42   2      0          2        0   140
#>  [18,]  40   6      0        180        1   138
#>  [19,]  40  11      1         10        1   120
#>  [20,]  42   2      0        180        0   100
#>  [21,]  43   3      1          0        1   100
#>  [22,]  41   2      1          1        0   166
#>  [23,]  43   4      1          0        1   130
#>  [24,]  42   4      0        180        0   162
#>  [25,]  40   3      1          1        0   170
#>  [26,]  42  12      1         10        1   170
#>  [27,]  42   2      0        180        1   124
#>  [28,]  44   5      1          1        0   170
#>  [29,]  44   3      0        180        0   141
#>  [30,]  45   6      0        180        1   170
#>  [31,]  41   5      1          4        1   141
#>  [32,]  44   2      1          1        1   150
#>  [33,]  43   2      0        180        1   140
#>  [34,]  45   2      0        180        1   140
#>  [35,]  46  15      0        180        0   120
#>  [36,]  46   2      1          1        0   126
#>  [37,]  47   4      1          3        0   118
#>  [38,]  48  15      0        180        1   160
#>  [39,]  45   3      0        150        0   130
#>  [40,]  44   3      1          0        1   180
#>  [41,]  46   7      1          2        0   166
#>  [42,]  43  10      0        180        0   185
#>  [43,]  46  13      1         10        0   100
#>  [44,]  47   4      1          3        1   160
#>  [45,]  43   3      1          0        1   124
#>  [46,]  45   8      1          0        1   117
#>  [47,]  46   6      1          0        1   100
#>  [48,]  46   5      1          3        0   130
#>  [49,]  46   4      0        180        1   121
#>  [50,]  46  15      0        180        1   120
#>  [51,]  45   9      1          0        1   145
#>  [52,]  47   3      1          1        1   120
#>  [53,]  48   3      0        180        0   154
#>  [54,]  48  12      1         11        0   200
#>  [55,]  47   5      1          3        1   130
#>  [56,]  46   3      1          0        1   119
#>  [57,]  49   4      0        180        0   117
#>  [58,]  47  10      0         10        1   140
#>  [59,]  48   2      1          0        0   184
#>  [60,]  47   7      0        180        0   145
#>  [61,]  50   4      1          1        0   125
#>  [62,]  50   6      1          2        1   140
#>  [63,]  49   7      1          7        1   110
#>  [64,]  46   3      1          1        1   140
#>  [65,]  46   9      1          9        1   122
#>  [66,]  49   2      0          2        0   105
#>  [67,]  51   1      0          1        1   145
#>  [68,]  49  15      1         11        1   160
#>  [69,]  47   2      0        180        0   150
#>  [70,]  49  23      0        179        1   112
#>  [71,]  50   7      1          0        1    92
#>  [72,]  50   4      0          4        1   100
#>  [73,]  50   1      1          0        0   150
#>  [74,]  50   9      0        180        0   130
#>  [75,]  49   7      1          4        1    90
#>  [76,]  47   8      0        180        0   160
#>  [77,]  47   6      0        180        1   162
#>  [78,]  51   8      0        180        1   140
#>  [79,]  52   2      0        180        0   155
#>  [80,]  46   3      0        180        1   120
#>  [81,]  50   4      1          1        0   150
#>  [82,]  53   8      0         36        1   160
#>  [83,]  48  17      1         10        0   111
#>  [84,]  49   9      1          3        0   102
#>  [85,]  53   5      0        180        1   140
#>  [86,]  54  17      1         12        1   102
#>  [87,]  53   7      1          0        0   199
#>  [88,]  51   3      1          1        0   140
#>  [89,]  50  14      1         13        0   170
#>  [90,]  48   3      1          2        0   150
#>  [91,]  53   4      0          4        0   140
#>  [92,]  52  14      1          7        1   200
#>  [93,]  48  11      1         10        0   120
#>  [94,]  53   4      1          0        1   156
#>  [95,]  51  13      0         99        1   160
#>  [96,]  55   3      1          1        0   150
#>  [97,]  54  23      1         10        0   131
#>  [98,]  55   6      1          2        1   114
#>  [99,]  54   9      1          1        0   130
#> [100,]  55   4      1          2        0   150
#> [101,]  52   4      0        180        1   180
#> [102,]  51  13      1         11        0   145
#> [103,]  52   4      0        180        0   183
#> [104,]  50   3      0        174        1   153
#> [105,]  55  28      1         13        1   160
#> [106,]  49   6      1          0        1   130
#> [107,]  50   7      1          1        0   156
#> [108,]  53   9      0          9        1    95
#> [109,]  53   8      1          0        1   130
#> [110,]  50   7      1          0        1   127
#> [111,]  56   4      1          1        1   130
#> [112,]  55   2      0          2        0   145
#> [113,]  54   1      0        180        0   162
#> [114,]  56   2      0        180        0   132
#> [115,]  55   5      1          4        1   120
#> [116,]  52   8      0        180        0   119
#> [117,]  53  18      1          9        1   150
#> [118,]  54   3      0        180        1   180
#> [119,]  55   6      0        180        0   170
#> [120,]  53  10      1          9        0   172
#> [121,]  52  16      1         14        0   170
#> [122,]  53  15      0         15        1    90
#> [123,]  53   4      0        180        1   150
#> [124,]  55   6      0        180        1   100
#> [125,]  55   6      1          5        1   138
#> [126,]  55   2      0        134        1   140
#> [127,]  57   3      0          3        0   120
#> [128,]  54   7      1          2        0   129
#> [129,]  54   2      1          1        0   135
#> [130,]  52   9      1          3        0   170
#> [131,]  54   2      1          1        1   176
#> [132,]  57   5      1          3        1   138
#> [133,]  57   1      0        180        1   156
#> [134,]  57   1      0          1        1   100
#> [135,]  55  11      1          7        0   104
#> [136,]  57  10      0        180        1   170
#> [137,]  55   3      1          1        1   156
#> [138,]  57   0      0          0        1   150
#> [139,]  53  21      1         13        1   130
#> [140,]  58   6      1          0        1    90
#> [141,]  53  15      1         10        1   130
#> [142,]  54  17      1          8        1   227
#> [143,]  55   9      1          2        1   147
#> [144,]  55  13      0        166        1   140
#> [145,]  54  23      1          8        0   120
#> [146,]  57  11      1         10        1   129
#> [147,]  55   3      1          2        0   140
#> [148,]  55   5      0          5        1   131
#> [149,]  54   7      1          0        1   141
#> [150,]  56   4      0          4        0   164
#> [151,]  59  15      1         10        0   140
#> [152,]  58   9      1          0        1   180
#> [153,]  58   1      1          1        1   200
#> [154,]  55   5      1          0        0   140
#> [155,]  56   7      1          5        1   120
#> [156,]  55   2      0          2        0   106
#> [157,]  60  11      1          9        0   106
#> [158,]  59   3      0        180        0   120
#> [159,]  58   4      1          0        1   160
#> [160,]  57   2      0          2        1   120
#> [161,]  60   5      1          1        0   138
#> [162,]  58  11      1          9        1   124
#> [163,]  55   5      1          0        1   160
#> [164,]  57  10      1          9        0   103
#> [165,]  59   6      1          0        1   140
#> [166,]  59   5      0        180        1   155
#> [167,]  59   4      1          0        1   152
#> [168,]  58  26      1          0        1   189
#> [169,]  60   0      1          0        1    80
#> [170,]  59   2      1          1        0   140
#> [171,]  58   8      0        161        1   140
#> [172,]  58  14      1          6        0   190
#> [173,]  61   4      1          3        0   151
#> [174,]  61   9      1          8        0   150
#> [175,]  58   1      0          1        1   100
#> [176,]  57  13      1         10        0   110
#> [177,]  57   2      1          0        1   116
#> [178,]  58  10      0         10        1   150
#> [179,]  57   4      1          3        0   138
#> [180,]  61   3      0         17        0   143
#> [181,]  56  14      0         45        0   130
#> [182,]  58  19      1         13        1   140
#> [183,]  56  18      1         11        1   165
#> [184,]  59   9      1          0        1    80
#> [185,]  55   4      1          3        1   160
#> [186,]  60  12      1          0        1   114
#> [187,]  61   4      1          0        1   115
#> [188,]  56   8      1          8        0   120
#> [189,]  61  13      1         12        1   130
#> [190,]  59  11      1          8        1   190
#> [191,]  57   1      0          1        0   126
#> [192,]  57  15      1         13        1   110
#> [193,]  59  10      0        180        0   160
#> [194,]  61   8      0         77        0   120
#> [195,]  58   8      1          5        0   152
#> [196,]  57   3      1          0        0   100
#> [197,]  61  18      0        170        0   140
#> [198,]  57   7      0        169        0   180
#> [199,]  61   7      0          7        1   150
#> [200,]  60   7      0          7        0   147
#> [201,]  59  13      1          2        0   198
#> [202,]  62   4      1          3        0   173
#> [203,]  58   2      0         30        0   202
#> [204,]  59   1      0        180        0   155
#> [205,]  59  16      1          9        1   133
#> [206,]  63   6      0         28        1   120
#> [207,]  61  13      0         13        0   120
#> [208,]  61   5      0          5        1   110
#> [209,]  58  11      1          9        0   179
#> [210,]  57   2      1          1        0   159
#> [211,]  62   1      1          0        1   172
#> [212,]  63   3      1          1        0   180
#> [213,]  63   1      0        180        1   130
#> [214,]  62   3      0        180        1   105
#> [215,]  63   4      0        180        1   190
#> [216,]  63  15      1         10        1   126
#> [217,]  64   4      0        180        0   130
#> [218,]  60  18      1         13        0   132
#> [219,]  59   8      0        180        1   140
#> [220,]  61   9      1          9        1   150
#> [221,]  58   9      1          9        0   110
#> [222,]  62   7      0          7        0   150
#> [223,]  59   1      0         22        1   162
#> [224,]  58   2      0        180        0   127
#> [225,]  60   7      1          5        1   141
#> [226,]  59   5      1          1        0   148
#> [227,]  60   7      1          1        1    90
#> [228,]  65  13      0        180        1   100
#> [229,]  63   1      0          1        0   162
#> [230,]  63   1      0          1        0   130
#> [231,]  62   6      0        180        0   170
#> [232,]  61  15      1         13        0   170
#> [233,]  59   4      0          4        0   149
#> [234,]  60   3      0          3        0   168
#> [235,]  64  10      1          9        0   160
#> [236,]  62   6      0          6        0   120
#> [237,]  59  10      0        180        1   130
#> [238,]  60   8      0         17        1   130
#> [239,]  61   6      1          1        1   117
#> [240,]  64  12      1         11        0   160
#> [241,]  63  14      1          9        0   123
#> [242,]  65  36      1         11        0   140
#> [243,]  63   4      1          3        0   162
#> [244,]  61  10      1          2        1   194
#> [245,]  64  32      1          9        1   160
#> [246,]  63  12      1          9        0   114
#> [247,]  63   7      0        180        0   120
#> [248,]  65   8      1          0        0   168
#> [249,]  65  10      1          8        1   120
#> [250,]  64   0      0          0        1    90
#> [251,]  61  12      1         11        0   154
#> [252,]  61   4      0        180        1   113
#> [253,]  65   3      0        180        1   190
#> [254,]  63  16      1          7        1   110
#> [255,]  66   6      1          1        1   130
#> [256,]  63  12      0         12        1   150
#> [257,]  65   3      1          0        1    80
#> [258,]  63   5      1          4        0   170
#> [259,]  63   2      1          1        0   180
#> [260,]  62  13      1         11        0   180
#> [261,]  66  18      1          5        0   142
#> [262,]  66  16      1         11        1   169
#> [263,]  62   9      0        180        0   145
#> [264,]  61  14      1          5        0   140
#> [265,]  61  15      1         10        0   130
#> [266,]  63   9      1          8        1   160
#> [267,]  63   3      1          2        0   120
#> [268,]  63   2      1          0        0   140
#> [269,]  64  19      1          8        1   160
#> [270,]  65   8      1          0        1   140
#> [271,]  67   6      0        180        1   170
#> [272,]  68   5      1          4        1   150
#> [273,]  64  13      1         12        1   150
#> [274,]  64   6      1          0        1   125
#> [275,]  66   7      1          0        1   115
#> [276,]  66  13      1          0        0   118
#> [277,]  65   3      0          3        0   105
#> [278,]  64   0      0          0        1   148
#> [279,]  66   3      1          0        1   135
#> [280,]  66   6      1          0        1   140
#> [281,]  65   2      1          1        1   170
#> [282,]  64  10      1          9        1   110
#> [283,]  68   5      0          5        1    90
#> [284,]  64   1      0          1        1   120
#> [285,]  68  18      0        180        1   260
#> [286,]  65  17      1         14        1   100
#> [287,]  65  18      1          3        0   120
#> [288,]  63   1      1          0        1   155
#> [289,]  67  11      0         11        0   150
#> [290,]  68  11      0        180        0   160
#> [291,]  68  14      0         79        0   172
#> [292,]  65   4      1          2        1   145
#> [293,]  69  12      0         15        1   140
#> [294,]  66  15      1         13        1   160
#> [295,]  65  11      1          6        0   130
#> [296,]  69  21      1         10        0   180
#> [297,]  69   6      0        180        1   100
#> [298,]  66   9      1          8        0   130
#> [299,]  63   8      0        180        1   120
#> [300,]  68  14      1         13        1   140
#> [301,]  65   8      1          0        1    90
#> [302,]  66   3      0          3        1   138
#> [303,]  69   1      1          0        0   170
#> [304,]  68  10      1         10        1   150
#> [305,]  65   1      1          0        0   133
#> [306,]  63   2      1          0        0    99
#> [307,]  65   6      0          6        0    80
#> [308,]  65  10      1          1        1   148
#> [309,]  66  19      1         12        1   150
#> [310,]  64   4      0        179        0   160
#> [311,]  66   4      0        180        1   130
#> [312,]  70  15      1         12        1   132
#> [313,]  64  11      0         11        0   125
#> [314,]  64   4      0        180        1   140
#> [315,]  64   0      1          0        1   118
#> [316,]  66   4      0        180        0   177
#> [317,]  69   4      1          3        1   150
#> [318,]  69  17      1         10        0   140
#> [319,]  64  21      0         21        1   155
#> [320,]  66   6      0        180        0   140
#> [321,]  68  18      1          0        1   160
#> [322,]  65   6      0        101        1   115
#> [323,]  70   7      1          0        1   190
#> [324,]  68   7      0        150        0   210
#> [325,]  71  20      1          0        1   160
#> [326,]  66   1      1          1        1   165
#> [327,]  70   4      1          0        1   180
#> [328,]  69   8      0        180        1   153
#> [329,]  70  14      0        171        0   166
#> [330,]  66   4      0        180        0   130
#> [331,]  67   6      1          4        0   130
#> [332,]  68  18      1         14        1   170
#> [333,]  68   7      1          0        1   150
#> [334,]  69   3      1          2        0   151
#> [335,]  67  14      1         13        0   130
#> [336,]  69   8      0        180        1   180
#> [337,]  71   7      0          7        0   230
#> [338,]  71   6      0         45        1   158
#> [339,]  69   5      0          5        1   142
#> [340,]  71   3      0        103        0   133
#> [341,]  67   1      0         36        1   104
#> [342,]  67   5      0          5        0   130
#> [343,]  69   8      1          5        1   195
#> [344,]  69   6      1          4        1   174
#> [345,]  72   3      1          0        1   132
#> [346,]  67   3      0        180        0   110
#> [347,]  69  19      0        180        0   130
#> [348,]  68  18      0         18        1   100
#> [349,]  69  11      1          0        1   120
#> [350,]  66   2      0        180        0   130
#> [351,]  68   2      0          7        1   130
#> [352,]  69   8      1          2        0   121
#> [353,]  67  13      1          9        0   130
#> [354,]  70   9      0        180        1   142
#> [355,]  67  22      1          1        1   140
#> [356,]  68   3      0         19        0   135
#> [357,]  69   1      0          1        1   110
#> [358,]  67   1      0          1        1    60
#> [359,]  67   8      1          0        1   130
#> [360,]  72  13      1         11        1   195
#> [361,]  68  10      1          8        1   160
#> [362,]  66  24      1         13        0   130
#> [363,]  70  35      1          0        1   105
#> [364,]  73  20      1          0        1   170
#> [365,]  72  19      1          8        0   120
#> [366,]  72  12      1         10        0   170
#> [367,]  67   5      1          0        1   147
#> [368,]  67   9      0        180        0   158
#> [369,]  70   5      0        180        0   150
#> [370,]  72   2      0          2        1   100
#> [371,]  67   4      1          1        0   134
#> [372,]  71   1      0        173        1   188
#> [373,]  69   3      0        180        0   220
#> [374,]  68   4      1          3        0   210
#> [375,]  72   5      0         28        0   120
#> [376,]  73   6      0        180        1   117
#> [377,]  69  16      1         10        1   140
#> [378,]  68   7      0        180        1   130
#> [379,]  69   1      1          0        0   155
#> [380,]  73   6      1          0        1   270
#> [381,]  72   8      1          1        1   150
#> [382,]  68  15      1         13        1   130
#> [383,]  70   3      0          3        1   159
#> [384,]  70  13      1          9        0   100
#> [385,]  72   6      0        180        1   130
#> [386,]  73   0      0        180        1   161
#> [387,]  73   4      0        180        1   154
#> [388,]  69   2      1          0        1   110
#> [389,]  71  15      1         11        0   165
#> [390,]  74  20      0         20        1   180
#> [391,]  68   9      0        180        1   120
#> [392,]  73   3      1          0        1   136
#> [393,]  71  17      1         11        0   160
#> [394,]  71   8      1          7        0   149
#> [395,]  71   3      1          2        1   190
#> [396,]  73  10      1          8        0   106
#> [397,]  70  26      1         11        1   120
#> [398,]  73   4      0         58        1   160
#> [399,]  70   3      0        180        1   154
#> [400,]  73   6      0        180        0   110
#> [401,]  72  15      1          0        1   150
#> [402,]  72   8      1          0        1   140
#> [403,]  74   3      0          3        1   150
#> [404,]  71  13      1          8        0   121
#> [405,]  69   2      1          1        1    80
#> [406,]  74   7      1          0        1   117
#> [407,]  72  10      1          8        1   153
#> [408,]  69   7      0        180        1   144
#> [409,]  72  15      1         13        0   156
#> [410,]  75   1      0          1        0   133
#> [411,]  75   2      1          1        0   145
#> [412,]  72  10      1          9        1   160
#> [413,]  73  10      1         10        1   120
#> [414,]  73   1      0          1        1    80
#> [415,]  75   9      1          7        0   140
#> [416,]  75  13      1          1        1   130
#> [417,]  71  11      1          8        0   110
#> [418,]  72  15      1         12        1   120
#> [419,]  73  10      1          8        0   120
#> [420,]  72   1      1          1        0   168
#> [421,]  72   7      0         57        1   145
#> [422,]  73  10      0        180        0   162
#> [423,]  70   3      0          3        0   150
#> [424,]  73   5      1          3        1   112
#> [425,]  76  25      1         12        1   170
#> [426,]  73  12      1         12        1   140
#> [427,]  71   3      1          0        0   144
#> [428,]  73   5      0        180        0   126
#> [429,]  73   4      0        180        0   124
#> [430,]  74  34      1          8        1   233
#> [431,]  76   3      1          0        1   120
#> [432,]  72   3      0        180        0   160
#> [433,]  76   5      0          5        1   130
#> [434,]  77  11      0         11        1   150
#> [435,]  77   4      0          4        0   185
#> [436,]  75   3      1          1        0   180
#> [437,]  73  15      0         15        1   160
#> [438,]  71  16      0        180        0   140
#> [439,]  73  10      1         10        0   124
#> [440,]  74   3      0          3        1   128
#> [441,]  74   2      1          1        0   140
#> [442,]  76   8      1          0        1   141
#> [443,]  74  19      1          4        1   200
#> [444,]  73   6      0          6        1   114
#> [445,]  74   2      0        180        0   190
#> [446,]  72   4      0         85        1   120
#> [447,]  72   4      1          3        0   160
#> [448,]  76  17      1          0        1   200
#> [449,]  75   4      1          0        1   122
#> [450,]  75   0      0          0        1   130
#> [451,]  73  13      1         11        0   195
#> [452,]  75  12      0         12        1   160
#> [453,]  74   8      1          0        1   105
#> [454,]  76  13      1          8        1   148
#> [455,]  75   4      1          2        1   188
#> [456,]  76   4      0          4        1   155
#> [457,]  74   2      0        180        0   111
#> [458,]  73   0      0        180        0   156
#> [459,]  72   5      0        180        0   120
#> [460,]  78  12      1         11        1   160
#> [461,]  76   5      0        180        0   185
#> [462,]  75   9      0        180        1   140
#> [463,]  73  33      1         12        1   175
#> [464,]  77   5      1          0        0   123
#> [465,]  77  12      1          9        1   100
#> [466,]  77   1      1          0        1    90
#> [467,]  76  12      1         11        1   120
#> [468,]  78   5      1          0        1   170
#> [469,]  73   7      1          0        0   174
#> [470,]  74   6      0         79        1   140
#> [471,]  75   3      1          1        1   171
#> [472,]  74   9      1          8        0   200
#> [473,]  79  10      1          8        0   190
#> [474,]  77   3      0        180        0   110
#> [475,]  73   8      1          1        1   162
#> [476,]  73  11      1          2        1   110
#> [477,]  78   7      0          7        1   133
#> [478,]  74  15      0        180        1   172
#> [479,]  78   8      1          6        1   110
#> [480,]  79   6      0        180        0   170
#> [481,]  80  10      1          6        1   147
#> [482,]  78  13      1          5        0   130
#> [483,]  75   5      0        119        1   150
#> [484,]  75  12      1          1        1   120
#> [485,]  78  15      0        180        1   270
#> [486,]  74  10      1          8        0   135
#> [487,]  76   1      0          1        1    83
#> [488,]  79   4      0         80        0   145
#> [489,]  78  12      1          9        0   150
#> [490,]  78   2      1          1        0   130
#> [491,]  75   4      1          0        0   212
#> [492,]  78  10      0        180        1   130
#> [493,]  76  11      1          0        0   120
#> [494,]  75  11      1          4        0   162
#> [495,]  75   3      0          3        0     0
#> [496,]  76   7      0         29        1   150
#> [497,]  80   9      0         23        1   128
#> [498,]  80   6      0          6        1   150
#> [499,]  78   6      1          0        1   240
#> [500,]  76   3      1          0        1   140
#> [501,]  78  11      1          1        1   140
#> [502,]  79  11      0        180        0   160
#> [503,]  78  14      1          0        1   140
#> [504,]  81   1      0          1        0   130
#> [505,]  76   4      0          4        1   160
#> [506,]  76  10      1          8        0   180
#> [507,]  76  12      1         10        1   127
#> [508,]  80   3      1          0        1   120
#> [509,]  75   2      1          1        1   204
#> [510,]  76   1      0          1        1   140
#> [511,]  77  31      1          3        1   161
#> [512,]  76   1      0          1        1    90
#> [513,]  78   7      1          0        1   110
#> [514,]  79   3      0          3        0   120
#> [515,]  81   1      0        180        0   120
#> [516,]  80  15      1         12        1   150
#> [517,]  77   9      1          4        0   141
#> [518,]  82   5      0          8        1   120
#> [519,]  80  40      1          0        1   138
#> [520,]  78   4      0         59        1   112
#> [521,]  81   4      1          2        1   126
#> [522,]  79  28      0        164        0   100
#> [523,]  80   9      0        118        1   186
#> [524,]  80   6      0        173        1   160
#> [525,]  78  32      0        180        1   130
#> [526,]  79   1      0         37        1   140
#> [527,]  81   3      0        180        0   184
#> [528,]  78   7      0          7        1   147
#> [529,]  77  13      1          0        1   190
#> [530,]  78  15      0         15        0   165
#> [531,]  80   5      1          1        1   108
#> [532,]  79   3      0          3        1   101
#> [533,]  78  26      1          5        0   194
#> [534,]  76   1      0        166        0   131
#> [535,]  81   4      1          1        1   104
#> [536,]  77  10      1          8        1   130
#> [537,]  82   3      1          1        1   144
#> [538,]  77   5      0         85        0   188
#> [539,]  80   2      1          1        0   168
#> [540,]  79   6      0          6        0   152
#> [541,]  80   6      1          0        1   119
#> [542,]  80   5      0          5        1   130
#> [543,]  79  10      0        180        1   150
#> [544,]  81   1      0        108        0   129
#> [545,]  78  12      0        180        0   134
#> [546,]  84  22      1         10        0   180
#> [547,]  79   4      0          4        1   121
#> [548,]  83   9      1          5        1   170
#> [549,]  82   5      0        180        0   110
#> [550,]  79   7      1          6        0   130
#> [551,]  83   4      0        103        0    97
#> [552,]  81   5      0        177        0    41
#> [553,]  80  11      1          8        0   170
#> [554,]  79   4      0          4        1   183
#> [555,]  78   9      1          4        1   120
#> [556,]  82   8      1          1        0   128
#> [557,]  79   1      0        180        1   170
#> [558,]  81  15      0        180        1   140
#> [559,]  80   7      1          0        1   146
#> [560,]  81  20      1          9        0   170
#> [561,]  83   8      0          8        0   115
#> [562,]  81  16      0         16        1   110
#> [563,]  80   6      1          0        1   150
#> [564,]  80  11      1          8        0   110
#> [565,]  79   7      0        177        0   197
#> [566,]  79   0      1          0        1    96
#> [567,]  85   4      0        180        0    90
#> [568,]  83   2      0          2        1   155
#> [569,]  81   1      0          1        1   150
#> [570,]  84   1      0         38        1   205
#> [571,]  83   3      0        180        0   174
#> [572,]  81   4      0         90        1   138
#> [573,]  79   9      1          8        0   150
#> [574,]  84   4      0         89        1   129
#> [575,]  80   2      1          0        1   130
#> [576,]  79   4      0          4        1    60
#> [577,]  80   6      0         71        1   189
#> [578,]  83   1      0          1        1   100
#> [579,]  82  19      0         19        0   120
#> [580,]  80  30      1         13        0   220
#> [581,]  81  14      1         12        1   128
#> [582,]  83   2      0        154        0   130
#> [583,]  82   0      0          2        1   100
#> [584,]  85   9      1          6        1   160
#> [585,]  81   4      0          4        0   175
#> [586,]  81   1      0          1        1   145
#> [587,]  81   4      0          4        0   160
#> [588,]  81  19      1         14        0   120
#> [589,]  82   3      1          2        0   130
#> [590,]  82  15      1          0        0   183
#> [591,]  80   2      0         88        0   135
#> [592,]  86   8      0          8        1   132
#> [593,]  81  16      1          9        0   180
#> [594,]  84   6      0        165        0   145
#> [595,]  86   3      0          3        1   140
#> [596,]  82   9      0        180        1   134
#> [597,]  84   3      0        180        1   120
#> [598,]  81  13      0        180        0   152
#> [599,]  85   3      0          3        1   118
#> [600,]  81   2      1          0        1   118
#> [601,]  81   4      0        180        0   160
#> [602,]  83   9      0        180        1   149
#> [603,]  82   1      0        180        1   193
#> [604,]  83   4      0          4        0   130
#> [605,]  87   2      0          5        1   137
#> [606,]  86  12      1          0        1   132
#> [607,]  82  14      1         11        1   103
#> [608,]  84  16      0         70        1   150
#> [609,]  83  19      0         43        0   150
#> [610,]  84   3      1          2        0   125
#> [611,]  83  10      1          0        1   190
#> [612,]  84   3      0          3        1   121
#> [613,]  83  13      1         12        0   170
#> [614,]  84   9      0         92        1   110
#> [615,]  84   3      0        180        1   170
#> [616,]  86   6      0          6        1   117
#> [617,]  84  13      0         62        1   100
#> [618,]  86   6      1          1        0   112
#> [619,]  88   4      0          4        0   100
#> [620,]  88   4      0          4        1   115
#> [621,]  85  22      0         22        1   184
#> [622,]  83   9      0         65        1   150
#> [623,]  86   9      1          7        1   142
#> [624,]  88   3      0        115        0   110
#> [625,]  88   2      0        180        1    68
#> [626,]  83   3      0          3        1   130
#> [627,]  87   8      0          8        1   157
#> [628,]  86  15      1          8        1   109
#> [629,]  89   4      0          4        1   153
#> [630,]  89   5      0        119        1   140
#> [631,]  87   1      0          1        0   170
#> [632,]  85   8      0          8        1   136
#> [633,]  84   2      0        110        1   174
#> [634,]  87  15      1          9        1   138
#> [635,]  89  10      0         46        1   170
#> [636,]  90  14      0         14        1   100
#> [637,]  88   1      0          1        0   135
#> [638,]  91   8      0          8        0   100
#> [639,]  87   2      0        180        0   160
#> [640,]  87   6      1          0        0   125
#> [641,]  86   3      1          0        1    80
#> [642,]  88   7      0         24        0   119
#> [643,]  90  11      1         10        1   186
#> [644,]  86   9      1          7        0   130
#> [645,]  90   4      1          0        0   121
#> [646,]  87  43      0        178        1   130
#> [647,]  90   5      1          0        1   125
#> [648,]  88   3      1          2        0   159
#> [649,]  92   1      0          1        1   167
#> [650,]  91   3      0         33        1   137
#> [651,]  88   5      0        158        0   100
#> [652,]  87   7      0         74        1   105
#> [653,]  89   2      0        168        0   118
#> [654,]  91   5      0        169        1   176
#> [655,]  89  52      0         52        1   130
#> [656,]  89   4      0          4        1   159
#> [657,]  89  14      0        180        1    84
#> [658,]  90  18      0        180        0   188
#> [659,]  91   4      1          0        1   120
#> [660,]  93   8      0        179        1   110
#> [661,]  94   8      0          8        1   142
#> [662,]  92   4      0         76        1   149
#> [663,]  91   1      0        180        0   158
#> [664,]  90   3      0         67        0   162
#> [665,]  96   3      0         12        1    97
#> [666,]  94   3      0         26        1   144
#> [667,]  91   7      0          7        0   135
#> [668,]  92   5      0         69        0   139
#> [669,]  92   2      0          2        0   112
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   2.0+   5.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0    5.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [21]   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+
#>  [31]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0  180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+
#>  [51] 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+   7.0  180.0+ 180.0+   2.0    1.0  179.0+ 180.0+ 179.0+
#>  [71] 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+  36.0   88.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91]   4.0+  85.0  180.0+ 166.0+  99.0  180.0+ 152.0+   6.0+ 180.0+ 180.0+
#> [101] 180.0+  13.0+ 180.0+ 174.0+  28.0    6.0+ 180.0+   9.0+ 180.0+ 180.0+
#> [111] 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121]  16.0   15.0+ 180.0+ 180.0+ 180.0+ 134.0+   3.0+ 180.0+ 180.0+ 180.0+
#> [131] 180.0+ 140.0  180.0+   1.0  180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+
#> [141] 180.0+ 171.0+  15.0  166.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+   4.0+
#> [151] 180.0+   9.0+   1.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [161] 180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+ 180.0+   0.5  180.0+
#> [171] 161.0+ 171.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+  10.0+ 180.0+  17.0 
#> [181]  45.0   19.0  180.0+   9.0+ 180.0+ 172.0+ 180.0+   8.0  180.0+ 180.0+
#> [191]   1.0+  15.0  180.0+  77.0    8.0+ 180.0+ 170.0  169.0    7.0    7.0+
#> [201] 180.0+ 180.0+  30.0  180.0+ 180.0+  28.0   13.0+   5.0  180.0+ 180.0+
#> [211]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [221]   9.0    7.0+  22.0  180.0+  84.0  180.0+ 180.0+ 180.0+   1.0    1.0 
#> [231] 180.0+ 180.0+   4.0+   3.0+ 167.0    6.0+ 180.0+  17.0  180.0+  12.0 
#> [241]  14.0+  36.0  180.0+  88.0  180.0+  12.0  180.0+ 180.0+ 180.0+   0.5 
#> [251]  12.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0    3.0  180.0+ 180.0+ 180.0+
#> [261]  18.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0 
#> [271] 180.0+   5.0+  13.0  180.0+ 179.0+ 166.0+   3.0    0.5+   3.0+ 180.0+
#> [281] 175.0+ 180.0+   5.0    1.0  180.0+ 180.0+ 123.0+   1.0+  11.0+ 180.0+
#> [291]  79.0    4.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [301]   8.0+   3.0  175.0   10.0  180.0+ 180.0+   6.0  180.0+  19.0+ 179.0+
#> [311] 180.0+ 180.0+  11.0+ 180.0+   0.5  180.0+ 152.0+ 180.0+  21.0+ 180.0+
#> [321]  18.0+ 101.0    7.0+ 150.0  180.0+   1.0  180.0+ 180.0+ 171.0  180.0+
#> [331]   6.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0+  45.0    5.0+ 103.0 
#> [341]  36.0    5.0+ 180.0+  97.0  180.0+ 180.0+ 180.0+  18.0  180.0+ 180.0+
#> [351]   7.0    8.0+  13.0+ 180.0+  51.0   19.0    1.0    1.0  180.0+ 132.0 
#> [361]  10.0+ 180.0+ 180.0+ 124.0  180.0+  12.0  180.0+ 180.0+ 180.0+   2.0 
#> [371]  76.0  173.0+ 180.0+ 180.0+  28.0  180.0+  16.0+ 180.0+ 180.0+   6.0 
#> [381] 180.0+  15.0    3.0+  13.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+  20.0 
#> [391] 180.0+ 180.0+ 180.0+   8.0    3.0   87.0  180.0+  58.0  180.0+ 180.0+
#> [401] 180.0+ 180.0+   3.0  175.0    2.0  180.0+  10.0+ 180.0+ 180.0+   1.0 
#> [411] 180.0+ 159.0   15.0    1.0  180.0+  13.0  180.0+ 180.0+  10.0    1.0 
#> [421]  57.0  180.0+   3.0+   5.0  180.0+  12.0  180.0+ 180.0+ 180.0+  34.0 
#> [431] 180.0+ 180.0+   5.0   11.0+   4.0+ 180.0+  15.0+ 180.0+  10.0    3.0 
#> [441] 180.0+ 180.0+ 180.0+   6.0  180.0+  85.0  180.0+  17.0+   4.0    0.5 
#> [451] 180.0+  12.0  180.0+ 180.0+  46.0    4.0  180.0+ 180.0+ 180.0+  12.0 
#> [461] 180.0+ 180.0+  33.0    5.0  180.0+   1.0   12.0  180.0+   7.0+  79.0 
#> [471]   3.0  168.0+ 180.0+ 180.0+ 180.0+  11.0    7.0  180.0+   8.0+ 180.0+
#> [481]  10.0  172.0  119.0   12.0  180.0+ 180.0+   1.0   80.0  180.0+ 180.0+
#> [491]   4.0+ 180.0+  11.0  152.0+   3.0   29.0   23.0    6.0  180.0+   3.0+
#> [501] 180.0+ 180.0+ 180.0+   1.0    4.0   10.0+ 180.0+   3.0+   2.0+   1.0 
#> [511] 171.0    1.0   43.0    3.0  180.0+ 180.0+  71.0    8.0   40.0   59.0 
#> [521]  93.0  164.0  118.0  173.0  180.0+  37.0  180.0+   7.0+  22.0   15.0+
#> [531]   5.0+   3.0  171.0+ 166.0+  71.0   10.0  180.0+  85.0   10.0    6.0+
#> [541]   6.0    5.0  180.0+ 108.0  180.0+ 180.0+   4.0    9.0+ 180.0+ 180.0+
#> [551] 103.0  177.0+ 169.0    4.0  180.0+ 180.0+ 180.0+ 180.0+   7.0+  20.0 
#> [561]   8.0+  16.0  180.0+ 180.0+ 177.0+   0.5  180.0+   2.0    1.0   38.0 
#> [571] 180.0+  90.0  180.0+  89.0  180.0+   4.0   71.0    1.0   19.0   30.0 
#> [581] 180.0+ 154.0    2.0  180.0+   4.0+   1.0    4.0+ 180.0+   3.0   83.0 
#> [591]  88.0    8.0  180.0+ 165.0    3.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+
#> [601] 180.0+ 180.0+ 180.0+   4.0+   5.0  180.0+ 174.0   70.0   43.0  180.0+
#> [611] 180.0+   3.0   13.0   92.0  180.0+   6.0+  62.0    6.0+   4.0+   4.0 
#> [621]  22.0   65.0   11.0  115.0  180.0+   3.0+   8.0+ 180.0+   4.0  119.0 
#> [631]   1.0+   8.0  110.0  180.0+  46.0   14.0    1.0+   8.0  180.0+  25.0 
#> [641]   3.0   24.0   11.0  180.0+   4.0  178.0+  89.0   75.0    1.0   33.0 
#> [651] 158.0   74.0  168.0  169.0   52.0    4.0  180.0+ 180.0+   4.0  179.0+
#> [661]   8.0+  76.0  180.0+  67.0   12.0   26.0    7.0+  69.0    2.0    3.0 
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
#>   0.8562937 
```
