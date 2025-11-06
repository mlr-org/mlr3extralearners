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
#> min 0.00329    44   2.844 0.1494       6
#> 1se 0.07086    11   2.981 0.1537       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   5      1          2        0   172
#>   [5,]  35  10      1          9        0   106
#>   [6,]  34   5      0          5        0   120
#>   [7,]  35   2      0        180        0   121
#>   [8,]  35   2      1          1        1   112
#>   [9,]  37   9      0        180        1   151
#>  [10,]  38  13      1          0        1   161
#>  [11,]  36   1      0        180        1   155
#>  [12,]  35   0      0        180        1   119
#>  [13,]  38  12      1          8        1   120
#>  [14,]  36   5      1          0        1   115
#>  [15,]  33   6      1          1        1   115
#>  [16,]  38  16      1         10        0   160
#>  [17,]  38  12      1         11        1    92
#>  [18,]  42   3      1          1        1   130
#>  [19,]  40  11      1         10        1   120
#>  [20,]  42   2      0        180        0   100
#>  [21,]  43   3      1          0        1   100
#>  [22,]  41   2      1          1        0   166
#>  [23,]  40   1      1          0        1   145
#>  [24,]  43   4      1          0        1   130
#>  [25,]  42   4      0        180        0   162
#>  [26,]  42  15      1         13        1   125
#>  [27,]  40   3      1          1        0   170
#>  [28,]  42  12      1         10        1   170
#>  [29,]  43   2      1          1        1   116
#>  [30,]  42   2      0        180        1   124
#>  [31,]  44   5      1          1        0   170
#>  [32,]  45   3      0        180        1   154
#>  [33,]  41  10      1          8        0   150
#>  [34,]  44   3      0        180        0   141
#>  [35,]  41  13      1          1        0   140
#>  [36,]  45   9      1          7        0   110
#>  [37,]  45   6      0        180        1   170
#>  [38,]  43   2      0        180        1   140
#>  [39,]  45   2      0        180        1   140
#>  [40,]  46  15      0        180        0   120
#>  [41,]  46   2      1          1        0   126
#>  [42,]  47   4      1          3        0   118
#>  [43,]  48  15      0        180        1   160
#>  [44,]  45   3      0        150        0   130
#>  [45,]  44   3      1          0        1   180
#>  [46,]  45   4      1          0        0   124
#>  [47,]  43  10      0        180        0   185
#>  [48,]  47   6      1          0        1   116
#>  [49,]  46  13      1         10        0   100
#>  [50,]  44   0      1          0        1    96
#>  [51,]  43   3      1          0        1   124
#>  [52,]  45   8      1          0        1   117
#>  [53,]  49   5      0         73        1   136
#>  [54,]  46   2      1          1        1   122
#>  [55,]  46   6      1          0        1   100
#>  [56,]  44   4      1          0        1   114
#>  [57,]  47   2      0        180        0   108
#>  [58,]  44   9      1          8        1   135
#>  [59,]  45   5      0        180        1   190
#>  [60,]  46   5      1          3        0   130
#>  [61,]  46   4      0        180        1   121
#>  [62,]  47   3      1          1        1   120
#>  [63,]  48  12      1         11        0   200
#>  [64,]  47   5      1          3        1   130
#>  [65,]  47   9      1          6        0   170
#>  [66,]  46   3      1          0        1   119
#>  [67,]  47  10      0         10        1   140
#>  [68,]  50   1      1          0        1   129
#>  [69,]  47   7      0        180        0   145
#>  [70,]  50   4      1          1        0   125
#>  [71,]  50   6      1          2        1   140
#>  [72,]  49   7      1          7        1   110
#>  [73,]  46   9      1          9        1   122
#>  [74,]  51   1      0          1        1   145
#>  [75,]  49  23      0        179        1   112
#>  [76,]  50   4      0          4        1   100
#>  [77,]  51   3      1          2        0   113
#>  [78,]  50   9      0        180        0   130
#>  [79,]  49   7      1          4        1    90
#>  [80,]  47   6      0        180        1   162
#>  [81,]  51   8      0        180        1   140
#>  [82,]  52   2      0        180        0   155
#>  [83,]  50   4      1          1        0   150
#>  [84,]  48   7      1          0        1   110
#>  [85,]  53   8      0         36        1   160
#>  [86,]  48  17      1         10        0   111
#>  [87,]  49   9      1          3        0   102
#>  [88,]  49  15      0        180        1   160
#>  [89,]  51   3      1          1        0   140
#>  [90,]  50   2      0          5        1   106
#>  [91,]  50  10      1          6        0   122
#>  [92,]  53   8      1          7        0   160
#>  [93,]  51  25      1          1        0   202
#>  [94,]  49   5      1          2        1   150
#>  [95,]  53   4      0          4        0   140
#>  [96,]  48   6      0        180        0   160
#>  [97,]  48  11      1         10        0   120
#>  [98,]  53   4      1          0        1   156
#>  [99,]  51  13      0         99        1   160
#> [100,]  54   9      1          0        1   138
#> [101,]  49  16      0         16        0   125
#> [102,]  55   3      1          1        0   150
#> [103,]  52   7      1          2        0   154
#> [104,]  52   4      0        180        1   180
#> [105,]  51  13      1         11        0   145
#> [106,]  54   4      1          0        1   121
#> [107,]  55  28      1         13        1   160
#> [108,]  49   6      1          0        1   130
#> [109,]  50   7      1          1        0   156
#> [110,]  53   9      0          9        1    95
#> [111,]  56   4      1          1        1   130
#> [112,]  55   2      0          2        0   145
#> [113,]  54   1      0        180        0   162
#> [114,]  54   7      1          0        1   100
#> [115,]  56   3      0        180        1   193
#> [116,]  55   5      1          4        1   120
#> [117,]  52   8      0        180        0   119
#> [118,]  53  18      1          9        1   150
#> [119,]  54   3      0        180        1   180
#> [120,]  55   6      0        180        0   170
#> [121,]  52  16      0         16        0   152
#> [122,]  52  16      1         14        0   170
#> [123,]  53  15      0         15        1    90
#> [124,]  53   4      0        180        1   150
#> [125,]  55   6      0        180        1   100
#> [126,]  54  12      1          0        1   190
#> [127,]  55   2      0        134        1   140
#> [128,]  55   1      0          2        0   130
#> [129,]  57   3      0          3        0   120
#> [130,]  54   7      1          2        0   129
#> [131,]  54   2      1          1        0   135
#> [132,]  57   5      1          3        1   138
#> [133,]  57   1      0        180        1   156
#> [134,]  57   1      0          1        1   100
#> [135,]  52   2      0        180        0   140
#> [136,]  55  11      1          7        0   104
#> [137,]  56  14      1         11        0   130
#> [138,]  57  10      0        180        1   170
#> [139,]  54   5      0        180        1   108
#> [140,]  55   3      1          1        1   156
#> [141,]  57   0      0          0        1   150
#> [142,]  53  21      1         13        1   130
#> [143,]  57   4      0        180        1   119
#> [144,]  53  15      1         10        1   130
#> [145,]  54  17      1          8        1   227
#> [146,]  55   9      1          2        1   147
#> [147,]  55  13      0        166        1   140
#> [148,]  56   5      0          5        1   150
#> [149,]  57   4      1          2        1   185
#> [150,]  53   4      0        147        1   145
#> [151,]  53   7      1          0        1   120
#> [152,]  57  11      1         10        1   129
#> [153,]  55   5      0          5        1   131
#> [154,]  56   4      0          4        0   164
#> [155,]  59  15      1         10        0   140
#> [156,]  58   9      1          0        1   180
#> [157,]  56   7      1          5        1   120
#> [158,]  55   2      0          2        0   106
#> [159,]  59   9      1          1        1   125
#> [160,]  57   1      0        180        0   148
#> [161,]  59   3      0        180        0   120
#> [162,]  57   2      0          2        1   120
#> [163,]  60   5      1          1        0   138
#> [164,]  57   5      0        180        1   130
#> [165,]  55   5      1          0        1   160
#> [166,]  57  10      1          9        0   103
#> [167,]  59   5      0        180        1   155
#> [168,]  61   9      0          9        1   160
#> [169,]  58   4      1          3        0   120
#> [170,]  60   0      1          0        1    80
#> [171,]  59   2      1          1        0   140
#> [172,]  58  14      1          6        0   190
#> [173,]  61   4      1          3        0   151
#> [174,]  61   9      1          8        0   150
#> [175,]  61   3      1          2        1   102
#> [176,]  58   1      0          1        1   100
#> [177,]  61  20      1         13        0   130
#> [178,]  57  13      1         10        0   110
#> [179,]  57   4      1          3        0   138
#> [180,]  57  11      0        180        1   150
#> [181,]  57   3      1          2        0   120
#> [182,]  58  19      1         13        1   140
#> [183,]  56  13      1          6        1   158
#> [184,]  56  18      1         11        1   165
#> [185,]  55   4      1          3        1   160
#> [186,]  60  12      1          0        1   114
#> [187,]  55   9      1          7        1   135
#> [188,]  61   4      1          0        1   115
#> [189,]  56   8      1          8        0   120
#> [190,]  59  11      1          8        1   190
#> [191,]  57  15      1         13        1   110
#> [192,]  59   5      1          2        0   182
#> [193,]  58   5      1          1        1   135
#> [194,]  61   8      0         77        0   120
#> [195,]  61  13      0         13        0   210
#> [196,]  58   8      1          5        0   152
#> [197,]  62  10      1          0        1   153
#> [198,]  62   7      1          2        1   180
#> [199,]  57   3      1          0        0   100
#> [200,]  61  18      0        170        0   140
#> [201,]  61  28      1          7        0   133
#> [202,]  58   8      1          3        1   150
#> [203,]  57   7      0        169        0   180
#> [204,]  60   7      0          7        0   147
#> [205,]  61   6      0          6        0   134
#> [206,]  57  12      1          9        1   120
#> [207,]  62   4      1          0        0   160
#> [208,]  60  17      1          8        1   140
#> [209,]  58   3      1          0        1   146
#> [210,]  62   4      1          3        0   173
#> [211,]  58   2      0         30        0   202
#> [212,]  59   1      0        180        0   155
#> [213,]  59  16      1          9        1   133
#> [214,]  57  18      1          9        1    93
#> [215,]  61   5      0          5        1   160
#> [216,]  62  17      1         10        1   180
#> [217,]  62   1      1          0        1   172
#> [218,]  61   7      0        180        0   135
#> [219,]  63   4      1          3        0   222
#> [220,]  62   3      0        180        1   105
#> [221,]  63  15      1         10        1   126
#> [222,]  58   9      1          9        0   110
#> [223,]  62   7      0          7        0   150
#> [224,]  58   2      0        180        0   127
#> [225,]  59   4      0        180        0   196
#> [226,]  60   7      1          5        1   141
#> [227,]  59   5      1          1        0   148
#> [228,]  60   7      1          1        1    90
#> [229,]  65  13      0        180        1   100
#> [230,]  63   1      0          1        0   162
#> [231,]  62   6      0        180        0   170
#> [232,]  59   4      0          4        0   149
#> [233,]  64  10      1          9        0   160
#> [234,]  62   6      0          6        0   120
#> [235,]  63  12      1         10        0   200
#> [236,]  59  10      0        180        1   130
#> [237,]  66   1      1          0        1   120
#> [238,]  64   6      1          0        1   140
#> [239,]  63  10      1          0        1   148
#> [240,]  63  14      1          9        0   123
#> [241,]  65  36      1         11        0   140
#> [242,]  63   4      1          3        0   162
#> [243,]  66   3      1          1        0   127
#> [244,]  61  10      1          2        1   194
#> [245,]  63  12      1          9        0   114
#> [246,]  63   7      0        180        0   120
#> [247,]  60   6      0        180        0   130
#> [248,]  64  21      1         10        0   190
#> [249,]  61  12      1         11        0   154
#> [250,]  65   3      0        180        1   190
#> [251,]  64   7      0        180        1   120
#> [252,]  66   6      1          1        1   130
#> [253,]  63  12      0         12        1   150
#> [254,]  62   3      1          1        1   199
#> [255,]  65   3      1          0        1    80
#> [256,]  63   5      1          4        0   170
#> [257,]  63   2      1          1        0   180
#> [258,]  62  13      1         11        0   180
#> [259,]  67  11      0         11        1   100
#> [260,]  64   2      0          2        0   201
#> [261,]  62   9      0        180        0   145
#> [262,]  61  14      1          5        0   140
#> [263,]  63   9      1          8        1   160
#> [264,]  63   3      1          2        0   120
#> [265,]  63   2      1          0        0   140
#> [266,]  64  19      1          8        1   160
#> [267,]  65   8      1          0        1   140
#> [268,]  68   5      1          4        1   150
#> [269,]  64   6      1          0        1   125
#> [270,]  66   7      1          0        1   115
#> [271,]  66  13      1          0        0   118
#> [272,]  64  14      1         13        1   150
#> [273,]  64   0      0          0        1   148
#> [274,]  67   4      1          3        0   130
#> [275,]  65   2      1          1        1   170
#> [276,]  68   1      0        180        1   166
#> [277,]  63  10      0         16        1   160
#> [278,]  66  14      0        180        0   130
#> [279,]  64   1      0          1        1   120
#> [280,]  68  18      0        180        1   260
#> [281,]  63   1      1          0        1   155
#> [282,]  67  11      0         11        0   150
#> [283,]  68  11      0        180        0   160
#> [284,]  68  14      0         79        0   172
#> [285,]  66  12      1         10        1   150
#> [286,]  65  15      1         12        1   150
#> [287,]  66  11      1          0        0   100
#> [288,]  65   4      1          2        1   145
#> [289,]  69  12      0         15        1   140
#> [290,]  66  15      1         13        1   160
#> [291,]  63   2      0        180        0   150
#> [292,]  65  11      1          6        0   130
#> [293,]  69   6      0        180        1   100
#> [294,]  66   9      1          8        0   130
#> [295,]  63   8      0        180        1   120
#> [296,]  68  14      1         13        1   140
#> [297,]  66   3      0          3        1   138
#> [298,]  69   1      1          0        0   170
#> [299,]  67   1      0        180        1   160
#> [300,]  67   7      1          4        1   130
#> [301,]  63   2      1          0        0    99
#> [302,]  65   6      0          6        0    80
#> [303,]  67  12      1         12        0   160
#> [304,]  69   6      0         99        1   140
#> [305,]  65   4      1          1        0   130
#> [306,]  64   4      0        179        0   160
#> [307,]  66   4      0        180        1   130
#> [308,]  70  15      1         12        1   132
#> [309,]  64   0      1          0        1   118
#> [310,]  67   2      0         18        0   131
#> [311,]  66   7      1          5        1   131
#> [312,]  69   4      1          3        1   150
#> [313,]  65  13      1         12        1   130
#> [314,]  69  17      1         10        0   140
#> [315,]  69   8      0         93        0   140
#> [316,]  64  21      0         21        1   155
#> [317,]  66   6      0        180        0   140
#> [318,]  68  18      1          0        1   160
#> [319,]  65   6      0        101        1   115
#> [320,]  68   4      0          4        1   190
#> [321,]  71   3      0          5        0   112
#> [322,]  68   7      0        150        0   210
#> [323,]  66   9      1          3        1   151
#> [324,]  70   4      1          0        1   180
#> [325,]  70  14      0        171        0   166
#> [326,]  66   4      0        180        0   130
#> [327,]  69   0      0          0        1   148
#> [328,]  65   2      0        180        0   130
#> [329,]  68   7      1          0        1   150
#> [330,]  69   3      1          2        0   151
#> [331,]  67  14      1         13        0   130
#> [332,]  65  14      1         13        1   150
#> [333,]  69   8      0        180        1   180
#> [334,]  71   7      0          7        0   230
#> [335,]  66   2      0          2        1   228
#> [336,]  71   6      0         45        1   158
#> [337,]  69   5      0          5        1   142
#> [338,]  69   3      0          3        1   130
#> [339,]  70  22      1         13        0   103
#> [340,]  67   1      0         36        1   104
#> [341,]  67   5      0          5        0   130
#> [342,]  68   6      0        180        0   145
#> [343,]  69   8      1          5        1   195
#> [344,]  69   6      1          4        1   174
#> [345,]  72   3      1          0        1   132
#> [346,]  67   3      0        180        0   110
#> [347,]  67  14      0        172        1   140
#> [348,]  66   2      0        180        0   130
#> [349,]  67   7      1          4        0   122
#> [350,]  69   4      1          3        0   132
#> [351,]  68   2      0          7        1   130
#> [352,]  67  13      1          9        0   130
#> [353,]  70   3      0        123        0   130
#> [354,]  70   9      0        180        1   142
#> [355,]  72   5      1          4        0   170
#> [356,]  67  22      1          1        1   140
#> [357,]  68   3      0         19        0   135
#> [358,]  67   4      0         60        1   136
#> [359,]  67   8      1          0        1   130
#> [360,]  72  13      1         11        1   195
#> [361,]  68  10      1          8        1   160
#> [362,]  73  20      1          0        1   170
#> [363,]  69  10      1          6        1   120
#> [364,]  70  11      0        180        1   210
#> [365,]  72  19      1          8        0   120
#> [366,]  67   8      0        180        1   170
#> [367,]  67   5      1          0        1   147
#> [368,]  67   9      0        180        0   158
#> [369,]  73  13      0        152        1   130
#> [370,]  72   2      0          2        1   100
#> [371,]  67   4      1          1        0   134
#> [372,]  71   1      0        173        1   188
#> [373,]  71   3      1          2        0   150
#> [374,]  72   5      0         28        0   120
#> [375,]  71   5      0        180        0   191
#> [376,]  73   6      0        180        1   117
#> [377,]  69   8      1          1        0   164
#> [378,]  68   7      0        180        1   130
#> [379,]  72  16      1          1        1   130
#> [380,]  69   1      1          0        0   155
#> [381,]  73   6      1          0        1   270
#> [382,]  71   2      1          0        1   180
#> [383,]  68  15      1         13        1   130
#> [384,]  70  13      1          9        0   100
#> [385,]  72   6      0        180        1   130
#> [386,]  73   0      0        180        1   161
#> [387,]  74   8      1          0        1    85
#> [388,]  69   2      1          0        1   110
#> [389,]  71   3      1          1        0   150
#> [390,]  71  15      1         11        0   165
#> [391,]  74  20      0         20        1   180
#> [392,]  68   9      0        180        1   120
#> [393,]  71  20      1         10        0   140
#> [394,]  71  17      1         11        0   160
#> [395,]  69  12      1          1        1   149
#> [396,]  70  26      1         11        1   120
#> [397,]  74   4      0          4        0   120
#> [398,]  73   4      0         58        1   160
#> [399,]  73   6      0        180        0   110
#> [400,]  72  15      1          0        1   150
#> [401,]  71   7      1          2        0   143
#> [402,]  72   8      1          0        1   140
#> [403,]  74   3      0          3        1   150
#> [404,]  71  13      1          8        0   121
#> [405,]  71  14      1         13        1   170
#> [406,]  74   7      1          0        1   117
#> [407,]  72  10      1          8        1   153
#> [408,]  72  15      1         13        0   156
#> [409,]  71  10      1          9        1   120
#> [410,]  75   1      0          1        0   133
#> [411,]  75   2      1          1        0   145
#> [412,]  72  10      1          9        1   160
#> [413,]  73  10      1         10        1   120
#> [414,]  74  15      1          9        1   179
#> [415,]  71   2      0         10        1   112
#> [416,]  75   9      1          7        0   140
#> [417,]  71  11      1          8        0   110
#> [418,]  72  15      1         12        1   120
#> [419,]  73  10      1          8        0   120
#> [420,]  72   7      0         57        1   145
#> [421,]  73  10      0        180        0   162
#> [422,]  70   3      0          3        0   150
#> [423,]  76  25      1         12        1   170
#> [424,]  72   2      0        180        0   120
#> [425,]  75   1      0        180        1   140
#> [426,]  72   4      1          0        1   197
#> [427,]  71   3      1          0        0   144
#> [428,]  73   5      0        180        0   126
#> [429,]  74  34      1          8        1   233
#> [430,]  76   3      1          0        1   120
#> [431,]  71  32      1         12        1   107
#> [432,]  77  11      0         11        1   150
#> [433,]  77   4      0          4        0   185
#> [434,]  75   3      1          1        0   180
#> [435,]  71  16      0        180        0   140
#> [436,]  73  10      1         10        0   124
#> [437,]  74   3      0          3        1   128
#> [438,]  76   1      0        180        0   114
#> [439,]  74   2      1          1        0   140
#> [440,]  76   8      1          0        1   141
#> [441,]  74  19      1          4        1   200
#> [442,]  73   6      0          6        1   114
#> [443,]  75  23      1         14        1   110
#> [444,]  74   2      0        180        0   190
#> [445,]  72   4      0         85        1   120
#> [446,]  72   4      1          3        0   160
#> [447,]  76  17      1          0        1   200
#> [448,]  73   4      1          3        1   125
#> [449,]  76  13      1         10        0   110
#> [450,]  75   4      1          0        1   122
#> [451,]  75   7      0          7        0   190
#> [452,]  75   0      0          0        1   130
#> [453,]  75  12      0         12        1   160
#> [454,]  76  13      1          8        1   148
#> [455,]  75   4      1          2        1   188
#> [456,]  74   6      0        180        0   160
#> [457,]  76   4      0          4        1   155
#> [458,]  75   1      0          1        1   125
#> [459,]  74   2      0        180        0   111
#> [460,]  73   1      0         52        1   105
#> [461,]  73   0      0        180        0   156
#> [462,]  78  12      1         11        1   160
#> [463,]  76  44      1         10        0   105
#> [464,]  76   5      0        180        0   185
#> [465,]  74  10      1          0        1   135
#> [466,]  76   5      1          0        1   167
#> [467,]  74   8      1          8        1   170
#> [468,]  75   9      0        180        1   140
#> [469,]  77   5      1          0        0   123
#> [470,]  77  12      1          9        1   100
#> [471,]  77   1      1          0        1    90
#> [472,]  78   5      1          0        1   170
#> [473,]  74   6      0         79        1   140
#> [474,]  75   3      1          1        1   171
#> [475,]  75   6      0        180        0   150
#> [476,]  74   2      1          0        1   130
#> [477,]  77   3      0        180        0   110
#> [478,]  73   8      1          1        1   162
#> [479,]  73  11      1          2        1   110
#> [480,]  74   2      0        180        0   100
#> [481,]  74  15      0        180        1   172
#> [482,]  78   8      1          6        1   110
#> [483,]  74   7      0          7        0   161
#> [484,]  78  32      1          9        1   198
#> [485,]  79   6      0        180        0   170
#> [486,]  80  10      1          6        1   147
#> [487,]  78   0      0        180        1   212
#> [488,]  78  13      1          5        0   130
#> [489,]  75   5      0        119        1   150
#> [490,]  75  12      1          1        1   120
#> [491,]  80   8      0          8        1   120
#> [492,]  75  13      1          6        0   150
#> [493,]  78   2      1          1        0   130
#> [494,]  75   4      1          0        0   212
#> [495,]  77   2      1          0        1   143
#> [496,]  78  10      0        180        1   130
#> [497,]  76  11      1          0        0   120
#> [498,]  75   3      0          3        0     0
#> [499,]  76   7      0         29        1   150
#> [500,]  77  24      0         24        1   160
#> [501,]  80   9      0         23        1   128
#> [502,]  80   6      0          6        1   150
#> [503,]  78   6      1          0        1   240
#> [504,]  76   3      1          0        1   140
#> [505,]  78  14      1          0        1   140
#> [506,]  81   1      0          1        0   130
#> [507,]  78  11      1          8        1   118
#> [508,]  76   4      0          4        1   160
#> [509,]  76  12      1         10        1   127
#> [510,]  80   3      1          0        1   120
#> [511,]  75   2      1          1        1   204
#> [512,]  76   1      0          1        1    90
#> [513,]  78   7      1          0        1   110
#> [514,]  79   3      0          3        0   120
#> [515,]  77   7      0        180        1   170
#> [516,]  79   4      1          0        1   120
#> [517,]  81   1      0        180        0   120
#> [518,]  80  15      1         12        1   150
#> [519,]  82   5      0          8        1   120
#> [520,]  80  40      1          0        1   138
#> [521,]  78   4      0         59        1   112
#> [522,]  80  17      1         12        0   100
#> [523,]  76   7      0        161        0   151
#> [524,]  79  10      0         10        1   120
#> [525,]  80  15      1          0        1    90
#> [526,]  81   4      1          2        1   126
#> [527,]  79  28      0        164        0   100
#> [528,]  80   6      0        173        1   160
#> [529,]  78  32      0        180        1   130
#> [530,]  81   3      0        180        0   184
#> [531,]  81   2      0        175        0   172
#> [532,]  78   7      0          7        1   147
#> [533,]  77  13      1          0        1   190
#> [534,]  78  15      0         15        0   165
#> [535,]  80   5      1          1        1   108
#> [536,]  78   4      0        180        0   175
#> [537,]  79   3      0          3        1   101
#> [538,]  78  26      1          5        0   194
#> [539,]  81   4      1          1        1   104
#> [540,]  80   1      0          1        0   100
#> [541,]  78   3      1          1        1   152
#> [542,]  82   3      1          1        1   144
#> [543,]  77   5      0         85        0   188
#> [544,]  78   2      0        180        0   148
#> [545,]  82   1      1          0        1    82
#> [546,]  79  10      0        180        1   150
#> [547,]  77   4      0        180        1    98
#> [548,]  84  22      1         10        0   180
#> [549,]  83   9      1          5        1   170
#> [550,]  82   5      0        180        0   110
#> [551,]  83   5      0        180        0   148
#> [552,]  81   5      0        177        0    41
#> [553,]  79   4      0          4        1   183
#> [554,]  78   9      1          4        1   120
#> [555,]  82   8      1          1        0   128
#> [556,]  81  15      0        180        1   140
#> [557,]  81  20      1          9        0   170
#> [558,]  81  16      0         16        1   110
#> [559,]  80  11      1          8        0   110
#> [560,]  81   8      0        180        0   146
#> [561,]  80   8      1          7        0   160
#> [562,]  79   7      0        177        0   197
#> [563,]  79   0      1          0        1    96
#> [564,]  83   2      0          2        1   155
#> [565,]  82   6      0        128        1   100
#> [566,]  84   4      0        167        0   198
#> [567,]  80   3      1          1        1   230
#> [568,]  84   5      0        180        1   203
#> [569,]  84   4      0          4        1    85
#> [570,]  83   3      0        180        0   174
#> [571,]  81   4      0         90        1   138
#> [572,]  79   9      1          8        0   150
#> [573,]  85   3      1          2        1   160
#> [574,]  80  13      1          8        1   140
#> [575,]  79   4      0          4        1    60
#> [576,]  83   1      0          1        1   100
#> [577,]  82  19      0         19        0   120
#> [578,]  81  14      1         12        1   128
#> [579,]  83   2      0        154        0   130
#> [580,]  82   0      0          2        1   100
#> [581,]  85   9      1          6        1   160
#> [582,]  83   1      0        180        0   160
#> [583,]  84  15      1         13        1   110
#> [584,]  81   1      0          1        1   145
#> [585,]  81  12      0         12        1   163
#> [586,]  82  16      1          8        0   103
#> [587,]  82   5      1          0        1   146
#> [588,]  81   4      0          4        0   160
#> [589,]  86  12      0        180        1   120
#> [590,]  83  12      1          2        1   170
#> [591,]  82   3      1          2        0   130
#> [592,]  82  15      1          0        0   183
#> [593,]  80   2      0         88        0   135
#> [594,]  83   7      0        126        0   135
#> [595,]  86   8      0          8        1   132
#> [596,]  81  16      1          9        0   180
#> [597,]  86   3      0          3        1   140
#> [598,]  84   3      0        180        1   120
#> [599,]  81  13      0        180        0   152
#> [600,]  81   2      1          0        1   118
#> [601,]  81   4      0        180        0   160
#> [602,]  83   9      0        180        1   149
#> [603,]  82   1      0        180        1   193
#> [604,]  83   4      0          4        0   130
#> [605,]  82  14      1         11        1   103
#> [606,]  86   6      1          0        1   140
#> [607,]  84  16      0         70        1   150
#> [608,]  83  19      0         43        0   150
#> [609,]  84   3      1          2        0   125
#> [610,]  83  10      1          0        1   190
#> [611,]  88  14      1          3        1   130
#> [612,]  87   2      0        180        0   113
#> [613,]  84   9      0         92        1   110
#> [614,]  84   3      0        180        1   170
#> [615,]  86   4      0         38        1   122
#> [616,]  82   4      0          4        0   130
#> [617,]  86  13      0        177        0   163
#> [618,]  85   3      0          3        1   113
#> [619,]  86   6      0          6        1   117
#> [620,]  86   6      1          1        0   112
#> [621,]  88   4      0          4        0   100
#> [622,]  83  20      1          3        1   150
#> [623,]  88   4      0          4        1   115
#> [624,]  83   9      0         65        1   150
#> [625,]  86   9      1          7        1   142
#> [626,]  88   3      0        115        0   110
#> [627,]  87   8      0          8        1   157
#> [628,]  86  15      1          8        1   109
#> [629,]  89   5      0        119        1   140
#> [630,]  87   6      0        180        1   110
#> [631,]  87   1      0          1        0   170
#> [632,]  84   8      0        180        1   119
#> [633,]  85   8      0          8        1   136
#> [634,]  84   2      0        110        1   174
#> [635,]  84   0      0        180        1   136
#> [636,]  89  10      0         46        1   170
#> [637,]  90  14      0         14        1   100
#> [638,]  87   6      1          0        0   125
#> [639,]  86   3      1          0        1    80
#> [640,]  88   7      0         24        0   119
#> [641,]  88   8      0         50        1   154
#> [642,]  90  11      1         10        1   186
#> [643,]  86  10      0        180        1   137
#> [644,]  86   9      1          7        0   130
#> [645,]  91   1      0          1        1    74
#> [646,]  87  43      0        178        1   130
#> [647,]  90   5      1          0        1   125
#> [648,]  88   3      1          2        0   159
#> [649,]  89   3      1          1        1   160
#> [650,]  92   1      0          1        1   167
#> [651,]  91   3      0         33        1   137
#> [652,]  88   5      0        158        0   100
#> [653,]  87   7      0         74        1   105
#> [654,]  89  12      1          0        1   130
#> [655,]  92   7      0          7        1   110
#> [656,]  91   0      0          0        0     0
#> [657,]  90  18      0        180        0   188
#> [658,]  94   6      0         50        0    78
#> [659,]  90   1      0          1        1   118
#> [660,]  93   8      0        179        1   110
#> [661,]  91   1      0        180        0   158
#> [662,]  90   3      0         67        0   162
#> [663,]  96   3      0         12        1    97
#> [664,]  94   3      0         26        1   144
#> [665,]  91   7      0          7        0   135
#> [666,]  93   0      1          0        1   122
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+   5.0+ 180.0+   2.0+ 180.0+ 180.0+
#>  [11] 180.0+ 180.0+  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21]   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+
#>  [31] 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+
#>  [51] 180.0+ 180.0+  73.0  161.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [61] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+ 180.0+
#>  [71] 180.0+   7.0  180.0+   1.0  179.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+ 180.0+   7.0   36.0   88.0+ 180.0+ 180.0+ 180.0+   5.0 
#>  [91] 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+ 180.0+ 166.0+  99.0  180.0+
#> [101]  16.0+ 180.0+   7.0+ 180.0+  13.0+ 180.0+  28.0    6.0+ 180.0+   9.0+
#> [111] 180.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121]  16.0+  16.0   15.0+ 180.0+ 180.0+  12.0+ 134.0+   2.0    3.0+ 180.0+
#> [131] 180.0+ 140.0  180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [141]   0.5  180.0+ 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+   4.0+ 147.0+
#> [151] 180.0+ 180.0+   5.0+   4.0+ 180.0+   9.0+ 180.0+   2.0+ 180.0+ 180.0+
#> [161] 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+   0.5 
#> [171] 180.0+ 171.0+ 180.0+ 180.0+   3.0    1.0  180.0+ 180.0+ 180.0+ 180.0+
#> [181]   3.0+  19.0  180.0+ 180.0+ 180.0+ 172.0+  24.0  180.0+   8.0  180.0+
#> [191]  15.0  180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 180.0+ 180.0+ 170.0 
#> [201]  94.0  180.0+ 169.0    7.0+   6.0  180.0+ 180.0+ 180.0+   3.0+ 180.0+
#> [211]  30.0  180.0+ 180.0+  18.0    5.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+
#> [221] 180.0+   9.0    7.0+ 180.0+ 180.0+  84.0  180.0+ 180.0+ 180.0+   1.0 
#> [231] 180.0+   4.0+ 167.0    6.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  14.0+
#> [241]  36.0  180.0+   3.0+  88.0   12.0  180.0+ 180.0+ 180.0+  12.0+ 180.0+
#> [251] 180.0+ 180.0+  12.0  180.0+   3.0  180.0+ 180.0+ 180.0+  11.0+   2.0+
#> [261] 180.0+ 180.0+ 180.0+   3.0+   2.0+ 103.0   15.0    5.0+ 180.0+ 179.0+
#> [271] 166.0+  14.0+   0.5+ 180.0+ 175.0+ 180.0+  16.0  180.0+   1.0  180.0+
#> [281]   1.0+  11.0+ 180.0+  79.0   80.0   15.0+ 180.0+   4.0+  15.0  180.0+
#> [291] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  175.0  180.0+ 180.0+
#> [301] 180.0+   6.0   12.0   99.0  180.0+ 179.0+ 180.0+ 180.0+   0.5   18.0 
#> [311]   7.0+ 152.0+ 180.0+ 180.0+  93.0   21.0+ 180.0+  18.0+ 101.0    4.0 
#> [321]   5.0  150.0  180.0+ 180.0+ 171.0  180.0+   0.5  180.0+ 180.0+ 180.0+
#> [331] 180.0+  14.0+ 180.0+   7.0+   2.0   45.0    5.0+   3.0+ 180.0+  36.0 
#> [341]   5.0+ 180.0+ 180.0+  97.0  180.0+ 180.0+ 172.0+ 180.0+   7.0  180.0+
#> [351]   7.0   13.0+ 123.0  180.0+ 180.0+  51.0   19.0   60.0  180.0+ 132.0 
#> [361]  10.0+ 124.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 152.0    2.0 
#> [371]  76.0  173.0+ 180.0+  28.0  180.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [381]   6.0  180.0+  15.0   13.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+
#> [391]  20.0  180.0+  20.0  180.0+  12.0  180.0+   4.0+  58.0  180.0+ 180.0+
#> [401] 180.0+ 180.0+   3.0  175.0   14.0+ 180.0+  10.0+ 180.0+ 179.0+   1.0 
#> [411] 180.0+ 159.0   15.0  180.0+  10.0  180.0+ 180.0+ 180.0+  10.0   57.0 
#> [421] 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+
#> [431] 177.0+  11.0+   4.0+ 180.0+ 180.0+  10.0    3.0  180.0+ 180.0+ 180.0+
#> [441] 180.0+   6.0  180.0+ 180.0+  85.0  180.0+  17.0+ 180.0+ 174.0+   4.0 
#> [451]   7.0    0.5   12.0  180.0+  46.0  180.0+   4.0    1.0  180.0+  52.0 
#> [461] 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+   5.0  180.0+
#> [471]   1.0  180.0+  79.0    3.0  180.0+ 176.0+ 180.0+ 180.0+  11.0  180.0+
#> [481] 180.0+   8.0+   7.0   32.0  180.0+  10.0  180.0+ 172.0  119.0   12.0 
#> [491]   8.0  180.0+ 180.0+   4.0+   2.0  180.0+  11.0    3.0   29.0   24.0 
#> [501]  23.0    6.0  180.0+   3.0+ 180.0+   1.0   11.0    4.0  180.0+   3.0+
#> [511]   2.0+   1.0   43.0    3.0  180.0+ 138.0  180.0+ 180.0+   8.0   40.0 
#> [521]  59.0   17.0  161.0   10.0+ 180.0+  93.0  164.0  173.0  180.0+ 180.0+
#> [531] 175.0+   7.0+  22.0   15.0+   5.0+ 180.0+   3.0  171.0+  71.0    1.0 
#> [541]   3.0+ 180.0+  85.0  180.0+   1.0  180.0+ 180.0+ 180.0+   9.0+ 180.0+
#> [551] 180.0+ 177.0+   4.0  180.0+ 180.0+ 180.0+  20.0   16.0  180.0+ 180.0+
#> [561] 180.0+ 177.0+   0.5    2.0  128.0  167.0    3.0+ 180.0+   4.0  180.0+
#> [571]  90.0  180.0+ 180.0+ 180.0+   4.0    1.0   19.0  180.0+ 154.0    2.0 
#> [581] 180.0+ 180.0+ 180.0+   1.0   12.0   16.0+   5.0+   4.0+ 180.0+  77.0 
#> [591]   3.0   83.0   88.0  126.0    8.0  180.0+   3.0  180.0+ 180.0+ 180.0+
#> [601] 180.0+ 180.0+ 180.0+   4.0+ 174.0    6.0   70.0   43.0  180.0+ 180.0+
#> [611]  14.0  180.0+  92.0  180.0+  38.0    4.0  177.0    3.0+   6.0+   6.0+
#> [621]   4.0+  20.0    4.0   65.0   11.0  115.0    8.0+ 180.0+ 119.0  180.0+
#> [631]   1.0+ 180.0+   8.0  110.0  180.0+  46.0   14.0   25.0    3.0   24.0 
#> [641]  50.0   11.0  180.0+ 180.0+   1.0  178.0+  89.0   75.0    3.0+   1.0 
#> [651]  33.0  158.0   74.0  180.0+   7.0    0.5  180.0+  50.0    1.0+ 179.0+
#> [661] 180.0+  67.0   12.0   26.0    7.0+   0.5    2.0  180.0+   3.0   15.0+
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
#>   0.8532524 
```
