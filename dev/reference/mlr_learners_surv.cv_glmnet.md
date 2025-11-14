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
#> min 0.00343    44   2.633 0.1082       6
#> 1se 0.06132    13   2.740 0.1012       4
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      1          1        1   112
#>   [7,]  38  13      1          0        1   161
#>   [8,]  38   2      0        115        0   150
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  12      1          8        1   120
#>  [12,]  36   5      1          0        1   115
#>  [13,]  33   6      1          1        1   115
#>  [14,]  38  16      1         10        0   160
#>  [15,]  38  12      1         11        1    92
#>  [16,]  40  12      1          9        0   153
#>  [17,]  37   1      1          0        1   146
#>  [18,]  40   2      1          1        1   148
#>  [19,]  38   5      1          3        0   125
#>  [20,]  42   2      0          2        0   140
#>  [21,]  40  11      1         10        1   120
#>  [22,]  42   2      0        180        0   100
#>  [23,]  43   3      1          0        1   100
#>  [24,]  41   2      1          1        0   166
#>  [25,]  43   4      1          0        1   130
#>  [26,]  42  15      1         13        1   125
#>  [27,]  42  12      1         10        1   170
#>  [28,]  42   2      0        180        1   124
#>  [29,]  45   3      0        180        1   154
#>  [30,]  41  10      1          8        0   150
#>  [31,]  41  13      1          1        0   140
#>  [32,]  45   9      1          7        0   110
#>  [33,]  45   6      0        180        1   170
#>  [34,]  41   5      1          4        1   141
#>  [35,]  44   2      1          1        1   150
#>  [36,]  43   2      0        180        1   140
#>  [37,]  45   2      0        180        1   140
#>  [38,]  46  15      0        180        0   120
#>  [39,]  46   2      1          1        0   126
#>  [40,]  45   3      0        150        0   130
#>  [41,]  44   3      1          0        1   180
#>  [42,]  46   7      1          2        0   166
#>  [43,]  43  29      0        180        1   180
#>  [44,]  45   4      1          0        0   124
#>  [45,]  43  10      0        180        0   185
#>  [46,]  47   6      1          0        1   116
#>  [47,]  44   0      1          0        1    96
#>  [48,]  47   4      1          3        1   160
#>  [49,]  43   3      1          0        1   124
#>  [50,]  45   5      0          5        0   141
#>  [51,]  46   2      1          1        1   122
#>  [52,]  44   4      1          0        1   114
#>  [53,]  47   2      0        180        0   108
#>  [54,]  44   9      1          8        1   135
#>  [55,]  46   4      0        180        1   121
#>  [56,]  44   2      0        180        0   142
#>  [57,]  46  15      0        180        1   120
#>  [58,]  45   9      1          0        1   145
#>  [59,]  47   3      1          1        1   120
#>  [60,]  47   5      1          3        1   130
#>  [61,]  47   9      1          6        0   170
#>  [62,]  46   3      1          0        1   119
#>  [63,]  49   4      0        180        0   117
#>  [64,]  47  10      0         10        1   140
#>  [65,]  50   1      1          0        1   129
#>  [66,]  50   6      1          2        1   140
#>  [67,]  49   7      1          7        1   110
#>  [68,]  46   3      1          1        1   140
#>  [69,]  46   9      1          9        1   122
#>  [70,]  50   7      0        180        1   110
#>  [71,]  51   1      0          1        1   145
#>  [72,]  47   2      0        180        0   150
#>  [73,]  49  23      0        179        1   112
#>  [74,]  50   7      1          0        1    92
#>  [75,]  50   4      0          4        1   100
#>  [76,]  51   3      1          2        0   113
#>  [77,]  50   9      0        180        0   130
#>  [78,]  49   7      1          4        1    90
#>  [79,]  51   8      0        180        1   140
#>  [80,]  52   2      0        180        0   155
#>  [81,]  46   3      0        180        1   120
#>  [82,]  46   1      1          1        0   145
#>  [83,]  53   8      0         36        1   160
#>  [84,]  48  17      1         10        0   111
#>  [85,]  47   2      1          1        0   110
#>  [86,]  52   4      1          4        0   152
#>  [87,]  49   9      1          3        0   102
#>  [88,]  49  15      0        180        1   160
#>  [89,]  54  17      1         12        1   102
#>  [90,]  54   6      1          3        0   129
#>  [91,]  51   3      1          1        0   140
#>  [92,]  48   3      1          2        0   150
#>  [93,]  51  25      1          1        0   202
#>  [94,]  49   5      1          2        1   150
#>  [95,]  53   4      0          4        0   140
#>  [96,]  52  14      1          7        1   200
#>  [97,]  48   6      0        180        0   160
#>  [98,]  48  11      1         10        0   120
#>  [99,]  54   9      1          0        1   138
#> [100,]  55   3      1          1        0   150
#> [101,]  54  23      1         10        0   131
#> [102,]  52   7      1          2        0   154
#> [103,]  55   6      1          2        1   114
#> [104,]  52   4      0        180        1   180
#> [105,]  51  13      1         11        0   145
#> [106,]  50   5      1          4        1   150
#> [107,]  55  28      1         13        1   160
#> [108,]  49   6      1          0        1   130
#> [109,]  49   1      0          1        1   110
#> [110,]  50   7      1          1        0   156
#> [111,]  53   9      0          9        1    95
#> [112,]  53   8      1          0        1   130
#> [113,]  52   5      0        175        1   117
#> [114,]  55   1      0        180        0   127
#> [115,]  55   2      0          2        0   145
#> [116,]  54   1      0        180        0   162
#> [117,]  54   7      1          0        1   100
#> [118,]  55   5      1          4        1   120
#> [119,]  52   8      0        180        0   119
#> [120,]  53  18      1          9        1   150
#> [121,]  54   3      0        180        1   180
#> [122,]  55   6      0        180        0   170
#> [123,]  53   4      0        180        1   150
#> [124,]  55   6      0        180        1   100
#> [125,]  55   6      1          5        1   138
#> [126,]  54   3      0        180        0   128
#> [127,]  56   3      0          8        1   139
#> [128,]  55   1      0          2        0   130
#> [129,]  57   3      0          3        0   120
#> [130,]  54   7      1          2        0   129
#> [131,]  54   2      1          1        0   135
#> [132,]  52   9      1          3        0   170
#> [133,]  54   2      1          1        1   176
#> [134,]  57   1      0          1        1   100
#> [135,]  56   4      1          0        1   140
#> [136,]  55  11      1          7        0   104
#> [137,]  52  15      1         14        0   130
#> [138,]  56  14      1         11        0   130
#> [139,]  57  10      0        180        1   170
#> [140,]  58   8      0          8        1   130
#> [141,]  54   5      0        180        1   108
#> [142,]  55   3      1          1        1   156
#> [143,]  57   0      0          0        1   150
#> [144,]  53  21      1         13        1   130
#> [145,]  59   3      1          1        0   172
#> [146,]  57   4      0        180        1   119
#> [147,]  58   6      1          0        1    90
#> [148,]  53  15      1         10        1   130
#> [149,]  54  17      1          8        1   227
#> [150,]  55  13      0        166        1   140
#> [151,]  56   5      0          5        1   150
#> [152,]  54  23      1          8        0   120
#> [153,]  57   4      1          2        1   185
#> [154,]  53   4      0        147        1   145
#> [155,]  53   7      1          0        1   120
#> [156,]  57  11      1         10        1   129
#> [157,]  55   3      1          2        0   140
#> [158,]  54   7      1          0        1   141
#> [159,]  56   4      0          4        0   164
#> [160,]  59  15      1         10        0   140
#> [161,]  58   1      1          1        1   200
#> [162,]  55   5      1          0        0   140
#> [163,]  56   7      1          5        1   120
#> [164,]  55   2      0          2        0   106
#> [165,]  59   9      1          1        1   125
#> [166,]  57   1      0        180        0   148
#> [167,]  60  11      1          9        0   106
#> [168,]  59   3      0        180        0   120
#> [169,]  58   4      1          0        1   160
#> [170,]  57   2      0          2        1   120
#> [171,]  60   5      1          1        0   138
#> [172,]  55   5      1          0        1   160
#> [173,]  59   5      0        180        1   155
#> [174,]  59   4      1          0        1   152
#> [175,]  58  26      1          0        1   189
#> [176,]  61   9      0          9        1   160
#> [177,]  59   2      1          1        0   140
#> [178,]  61   3      1          2        1   102
#> [179,]  58   1      0          1        1   100
#> [180,]  61  20      1         13        0   130
#> [181,]  57  13      1         10        0   110
#> [182,]  57   2      1          0        1   116
#> [183,]  58  10      0         10        1   150
#> [184,]  57   4      1          3        0   138
#> [185,]  61   3      0         17        0   143
#> [186,]  56  14      0         45        0   130
#> [187,]  58  19      1         13        1   140
#> [188,]  56  18      1         11        1   165
#> [189,]  59   9      1          0        1    80
#> [190,]  60  12      1          0        1   114
#> [191,]  55   9      1          7        1   135
#> [192,]  56   8      1          8        0   120
#> [193,]  61  13      1         12        1   130
#> [194,]  59  11      1          8        1   190
#> [195,]  57   1      0          1        0   126
#> [196,]  59  10      0        180        0   160
#> [197,]  61   8      0         77        0   120
#> [198,]  61  13      0         13        0   210
#> [199,]  58   8      1          5        0   152
#> [200,]  62  10      1          0        1   153
#> [201,]  62   7      1          2        1   180
#> [202,]  61  18      0        170        0   140
#> [203,]  61  28      1          7        0   133
#> [204,]  58   8      1          3        1   150
#> [205,]  57   7      0        169        0   180
#> [206,]  61   7      0          7        1   150
#> [207,]  61   6      0          6        0   134
#> [208,]  59  13      1          2        0   198
#> [209,]  57  12      1          9        1   120
#> [210,]  58   3      1          0        1   146
#> [211,]  58   2      0         30        0   202
#> [212,]  59  16      1          9        1   133
#> [213,]  61  13      0         13        0   120
#> [214,]  61   5      0          5        1   110
#> [215,]  57  18      1          9        1    93
#> [216,]  62  17      1         10        1   180
#> [217,]  62   1      1          0        1   172
#> [218,]  63   3      1          1        0   180
#> [219,]  61   7      0        180        0   135
#> [220,]  63   4      1          3        0   222
#> [221,]  62   3      0        180        1   105
#> [222,]  63   4      0        180        1   190
#> [223,]  63  15      1         10        1   126
#> [224,]  64   4      0        180        0   130
#> [225,]  59   8      0        180        1   140
#> [226,]  61   9      1          9        1   150
#> [227,]  58   9      1          9        0   110
#> [228,]  62   7      0          7        0   150
#> [229,]  59   1      0         22        1   162
#> [230,]  59   4      0        180        0   196
#> [231,]  60   7      0          7        0   140
#> [232,]  59   5      1          1        0   148
#> [233,]  60   7      1          1        1    90
#> [234,]  65  13      0        180        1   100
#> [235,]  63   1      0          1        0   162
#> [236,]  63   1      0          1        0   130
#> [237,]  63  12      1         10        0   200
#> [238,]  59  10      0        180        1   130
#> [239,]  61   6      1          1        1   117
#> [240,]  64  12      1         11        0   160
#> [241,]  64   6      1          0        1   140
#> [242,]  63  10      1          0        1   148
#> [243,]  63  14      1          9        0   123
#> [244,]  63   4      1          3        0   162
#> [245,]  66   3      1          1        0   127
#> [246,]  61  10      1          2        1   194
#> [247,]  64  32      1          9        1   160
#> [248,]  63  12      1          9        0   114
#> [249,]  63   7      0        180        0   120
#> [250,]  65  10      1          8        1   120
#> [251,]  64   0      0          0        1    90
#> [252,]  60   6      0        180        0   130
#> [253,]  64  21      1         10        0   190
#> [254,]  61  12      1         11        0   154
#> [255,]  61   4      0        180        1   113
#> [256,]  65   3      0        180        1   190
#> [257,]  63  16      1          7        1   110
#> [258,]  66   6      1          1        1   130
#> [259,]  63  12      0         12        1   150
#> [260,]  62   3      1          1        1   199
#> [261,]  65   6      0          9        0   112
#> [262,]  63   5      1          4        0   170
#> [263,]  62  13      1         11        0   180
#> [264,]  67  11      0         11        1   100
#> [265,]  64   2      0          2        0   201
#> [266,]  61  14      1          5        0   140
#> [267,]  61  15      1         10        0   130
#> [268,]  63   9      1          8        1   160
#> [269,]  63   2      1          0        0   140
#> [270,]  65   8      1          0        1   140
#> [271,]  65  15      1         11        1   160
#> [272,]  68   5      1          4        1   150
#> [273,]  66   7      1          0        1   115
#> [274,]  66  13      1          0        0   118
#> [275,]  65   3      0          3        0   105
#> [276,]  67   4      1          3        0   130
#> [277,]  66   6      1          0        1   140
#> [278,]  65   2      1          1        1   170
#> [279,]  68   1      0        180        1   166
#> [280,]  64  10      1          9        1   110
#> [281,]  66  14      0        180        0   130
#> [282,]  65  17      1         14        1   100
#> [283,]  63   8      1          1        1   162
#> [284,]  65  18      1          3        0   120
#> [285,]  63  10      0         18        1   130
#> [286,]  68  11      0        180        0   160
#> [287,]  66  12      1         10        1   150
#> [288,]  65  15      1         12        1   150
#> [289,]  66  11      1          0        0   100
#> [290,]  69  12      0         15        1   140
#> [291,]  66  15      1         13        1   160
#> [292,]  63   2      0        180        0   150
#> [293,]  69  21      1         10        0   180
#> [294,]  66   9      1          8        0   130
#> [295,]  63   8      0        180        1   120
#> [296,]  67   7      1          4        1   130
#> [297,]  63   2      1          0        0    99
#> [298,]  67   2      0        180        0   184
#> [299,]  65  10      1          1        1   148
#> [300,]  66  19      1         12        1   150
#> [301,]  65   4      1          1        0   130
#> [302,]  64   4      0        179        0   160
#> [303,]  66   4      0        180        1   130
#> [304,]  70  15      1         12        1   132
#> [305,]  64  11      0         11        0   125
#> [306,]  64   4      0        180        1   140
#> [307,]  64   0      1          0        1   118
#> [308,]  67   2      0         18        0   131
#> [309,]  66   7      1          5        1   131
#> [310,]  66   4      0        180        0   177
#> [311,]  68   4      1          0        1   160
#> [312,]  69   4      1          3        1   150
#> [313,]  65  13      1         12        1   130
#> [314,]  69   8      0         93        0   140
#> [315,]  64  21      0         21        1   155
#> [316,]  66   6      0        180        0   140
#> [317,]  65   1      0          1        1   120
#> [318,]  68  18      1          0        1   160
#> [319,]  65   6      0        101        1   115
#> [320,]  70   7      1          0        1   190
#> [321,]  68   7      0        150        0   210
#> [322,]  71  20      1          0        1   160
#> [323,]  67   2      0        180        0   128
#> [324,]  66   1      1          1        1   165
#> [325,]  70   4      1          0        1   180
#> [326,]  69   8      0        180        1   153
#> [327,]  66   4      0        180        0   130
#> [328,]  67  10      1          9        0   200
#> [329,]  68  18      1         14        1   170
#> [330,]  69   0      0          0        1   148
#> [331,]  68   7      1          0        1   150
#> [332,]  69   3      1          2        0   151
#> [333,]  67  14      1         13        0   130
#> [334,]  69   8      0        180        1   180
#> [335,]  71   7      0          7        0   230
#> [336,]  71   6      0         45        1   158
#> [337,]  69   5      0          5        1   142
#> [338,]  71   3      0        103        0   133
#> [339,]  69   3      0          3        1   130
#> [340,]  70  22      1         13        0   103
#> [341,]  67   1      0         36        1   104
#> [342,]  67   5      0          5        0   130
#> [343,]  68   6      0        180        0   145
#> [344,]  69   8      1          5        1   195
#> [345,]  69   6      1          4        1   174
#> [346,]  72   3      1          0        1   132
#> [347,]  72   7      0          7        1   110
#> [348,]  69   8      1          7        1   108
#> [349,]  67   3      0        180        0   110
#> [350,]  69  19      0        180        0   130
#> [351,]  68  18      0         18        1   100
#> [352,]  69  11      1          0        1   120
#> [353,]  67   7      1          4        0   122
#> [354,]  69   4      1          3        0   132
#> [355,]  68   2      0          7        1   130
#> [356,]  69   8      1          2        0   121
#> [357,]  67  13      1          9        0   130
#> [358,]  70   3      0        123        0   130
#> [359,]  72   5      1          4        0   170
#> [360,]  69   1      0          1        1   110
#> [361,]  67   1      0          1        1    60
#> [362,]  67   4      0         60        1   136
#> [363,]  69   5      0         76        0   120
#> [364,]  67   8      1          0        1   130
#> [365,]  68  10      1          8        1   160
#> [366,]  66  24      1         13        0   130
#> [367,]  70  35      1          0        1   105
#> [368,]  72  30      1          0        1   145
#> [369,]  70   7      0          7        0   102
#> [370,]  68   7      1          2        0   135
#> [371,]  73  20      1          0        1   170
#> [372,]  72  12      1         10        0   170
#> [373,]  67   5      1          0        1   147
#> [374,]  73  13      0        152        1   130
#> [375,]  70   5      0        180        0   150
#> [376,]  72   2      0          2        1   100
#> [377,]  67   4      1          1        0   134
#> [378,]  72   6      1          5        0   115
#> [379,]  71   1      0        173        1   188
#> [380,]  68  23      0        180        1   220
#> [381,]  70   3      0        180        0   121
#> [382,]  69   3      0        180        0   220
#> [383,]  71   3      1          2        0   150
#> [384,]  72   5      0         28        0   120
#> [385,]  71   5      0        180        0   191
#> [386,]  73   6      0        180        1   117
#> [387,]  72  16      1          1        1   130
#> [388,]  73   6      1          0        1   270
#> [389,]  72   8      1          1        1   150
#> [390,]  71   2      1          0        1   180
#> [391,]  72   6      0        180        1   130
#> [392,]  73   0      0        180        1   161
#> [393,]  74   8      1          0        1    85
#> [394,]  73   4      0        180        1   154
#> [395,]  69   2      1          0        1   110
#> [396,]  71   3      1          1        0   150
#> [397,]  71  15      1         11        0   165
#> [398,]  74  20      0         20        1   180
#> [399,]  68   9      0        180        1   120
#> [400,]  71  20      1         10        0   140
#> [401,]  74   0      1          0        1    90
#> [402,]  73   3      1          0        1   136
#> [403,]  71  17      1         11        0   160
#> [404,]  71   8      1          7        0   149
#> [405,]  73  10      1          8        0   106
#> [406,]  69  12      1          1        1   149
#> [407,]  74   4      0          4        0   120
#> [408,]  73   4      0         58        1   160
#> [409,]  72   5      1          3        1   160
#> [410,]  70   3      0        180        1   154
#> [411,]  73   6      0        180        0   110
#> [412,]  72  15      1          0        1   150
#> [413,]  71   7      1          2        0   143
#> [414,]  74   3      0          3        1   150
#> [415,]  70   4      1          0        1   140
#> [416,]  71  14      1         13        1   170
#> [417,]  74   7      1          0        1   117
#> [418,]  72  10      1          8        1   153
#> [419,]  69   7      0        180        1   144
#> [420,]  72  15      1         13        0   156
#> [421,]  71  10      1          9        1   120
#> [422,]  75   2      1          1        0   145
#> [423,]  72  10      1          9        1   160
#> [424,]  73  10      1         10        1   120
#> [425,]  74  15      1          9        1   179
#> [426,]  75  13      1          1        1   130
#> [427,]  71  11      1          8        0   110
#> [428,]  71   4      0          4        0   134
#> [429,]  72  15      1         12        1   120
#> [430,]  73  10      1          8        0   120
#> [431,]  70   7      1          4        0   184
#> [432,]  72   1      1          1        0   168
#> [433,]  73   5      1          3        1   112
#> [434,]  76  25      1         12        1   170
#> [435,]  73  12      1         12        1   140
#> [436,]  72   2      0        180        0   120
#> [437,]  75   1      0        180        1   140
#> [438,]  71   3      1          0        0   144
#> [439,]  73   5      0        180        0   126
#> [440,]  71  32      1         12        1   107
#> [441,]  72   5      0        180        0   154
#> [442,]  76   5      0          5        1   130
#> [443,]  77  11      0         11        1   150
#> [444,]  77   4      0          4        0   185
#> [445,]  75   3      1          1        0   180
#> [446,]  72   7      1          2        0   142
#> [447,]  71  16      0        180        0   140
#> [448,]  74   7      0        180        1   150
#> [449,]  76   1      0        180        0   114
#> [450,]  74   2      1          1        0   140
#> [451,]  76   8      1          0        1   141
#> [452,]  74  19      1          4        1   200
#> [453,]  73   6      0          6        1   114
#> [454,]  72   4      0         85        1   120
#> [455,]  72   4      1          3        0   160
#> [456,]  76  17      1          0        1   200
#> [457,]  73   4      1          3        1   125
#> [458,]  76  13      1         10        0   110
#> [459,]  75   4      1          0        1   122
#> [460,]  75   0      0          0        1   130
#> [461,]  73  13      1         11        0   195
#> [462,]  74   8      1          0        1   105
#> [463,]  76  13      1          8        1   148
#> [464,]  74   6      0        180        0   160
#> [465,]  76   4      0          4        1   155
#> [466,]  75   1      0          1        1   125
#> [467,]  74   2      0        180        0   111
#> [468,]  78  12      1         11        1   160
#> [469,]  76  44      1         10        0   105
#> [470,]  74  10      1          0        1   135
#> [471,]  74   8      1          8        1   170
#> [472,]  75   9      0        180        1   140
#> [473,]  73  33      1         12        1   175
#> [474,]  77   5      1          0        0   123
#> [475,]  77  12      1          9        1   100
#> [476,]  73  10      1          9        0   146
#> [477,]  77  12      0        180        0   130
#> [478,]  77   1      1          0        1    90
#> [479,]  76  12      1         11        1   120
#> [480,]  78   5      1          0        1   170
#> [481,]  74   6      0         79        1   140
#> [482,]  75   3      1          1        1   171
#> [483,]  79  10      1          8        0   190
#> [484,]  77   3      0        180        0   110
#> [485,]  76  29      0         47        0    90
#> [486,]  73   8      1          1        1   162
#> [487,]  73  11      1          2        1   110
#> [488,]  78   7      0          7        1   133
#> [489,]  74  15      0        180        1   172
#> [490,]  78   8      1          6        1   110
#> [491,]  74   7      0          7        0   161
#> [492,]  76  13      1          1        1   170
#> [493,]  78  32      1          9        1   198
#> [494,]  79   6      0        180        0   170
#> [495,]  78   0      0        180        1   212
#> [496,]  78  13      1          5        0   130
#> [497,]  75   5      0        119        1   150
#> [498,]  75  12      1          1        1   120
#> [499,]  78  15      0        180        1   270
#> [500,]  80   8      0          8        1   120
#> [501,]  75  13      1          6        0   150
#> [502,]  76   1      0          1        1    83
#> [503,]  75   4      1          0        0   212
#> [504,]  78  10      0        180        1   130
#> [505,]  75  11      1          4        0   162
#> [506,]  75   3      0          3        0     0
#> [507,]  77  24      0         24        1   160
#> [508,]  80   9      0         23        1   128
#> [509,]  78   6      1          0        1   240
#> [510,]  78  11      1          1        1   140
#> [511,]  79  11      0        180        0   160
#> [512,]  78  14      1          0        1   140
#> [513,]  81   1      0          1        0   130
#> [514,]  76   4      0          4        1   160
#> [515,]  79   4      0          4        1   125
#> [516,]  76  12      1         10        1   127
#> [517,]  77   6      0          6        1   107
#> [518,]  80   3      1          0        1   120
#> [519,]  78  11      0        180        1   135
#> [520,]  76   1      0          1        1   140
#> [521,]  77  31      1          3        1   161
#> [522,]  76   1      0          1        1    90
#> [523,]  78   7      1          0        1   110
#> [524,]  79   3      0          3        0   120
#> [525,]  77   6      0          6        1   144
#> [526,]  77   9      1          4        0   141
#> [527,]  82   5      0          8        1   120
#> [528,]  80  40      1          0        1   138
#> [529,]  78   4      0         59        1   112
#> [530,]  80  17      1         12        0   100
#> [531,]  76   7      0        161        0   151
#> [532,]  79  10      0         10        1   120
#> [533,]  80  15      1          0        1    90
#> [534,]  79  28      0        164        0   100
#> [535,]  80   9      0        118        1   186
#> [536,]  78  32      0        180        1   130
#> [537,]  79   1      0         37        1   140
#> [538,]  81   3      0        180        0   184
#> [539,]  78   7      0          7        1   147
#> [540,]  77  13      1          0        1   190
#> [541,]  80   5      1          1        1   108
#> [542,]  78   4      0        180        0   175
#> [543,]  79   3      0          3        1   101
#> [544,]  78  26      1          5        0   194
#> [545,]  76   1      0        166        0   131
#> [546,]  81   4      1          1        1   104
#> [547,]  80   1      0          1        0   100
#> [548,]  78   3      1          1        1   152
#> [549,]  79   6      0          6        0   152
#> [550,]  80   6      1          0        1   119
#> [551,]  82   1      1          0        1    82
#> [552,]  77   4      0        180        1    98
#> [553,]  81   1      0        108        0   129
#> [554,]  78  12      0        180        0   134
#> [555,]  79   1      0        125        0   193
#> [556,]  84  22      1         10        0   180
#> [557,]  79   4      0          4        1   121
#> [558,]  80   6      0          6        1   110
#> [559,]  82   5      0        180        0   110
#> [560,]  83   4      0        103        0    97
#> [561,]  81   5      0        177        0    41
#> [562,]  79   4      0          4        1   183
#> [563,]  78   9      1          4        1   120
#> [564,]  82   8      1          1        0   128
#> [565,]  79   1      0        180        1   170
#> [566,]  81  15      0        180        1   140
#> [567,]  84   5      1          1        1    85
#> [568,]  81  16      0         16        1   110
#> [569,]  80  11      1          8        0   110
#> [570,]  81   8      0        180        0   146
#> [571,]  80   8      1          7        0   160
#> [572,]  85   4      0        180        0    90
#> [573,]  81   2      1          1        0   198
#> [574,]  83   2      0          2        1   155
#> [575,]  84   4      0        167        0   198
#> [576,]  80   3      1          1        1   230
#> [577,]  82  23      1          0        0   110
#> [578,]  84   5      0        180        1   203
#> [579,]  84   4      0          4        1    85
#> [580,]  81   1      0          1        1   150
#> [581,]  84   1      0         38        1   205
#> [582,]  81   4      0         90        1   138
#> [583,]  79   9      1          8        0   150
#> [584,]  80  13      1          8        1   140
#> [585,]  84   4      0         89        1   129
#> [586,]  80   2      1          0        1   130
#> [587,]  79   4      0          4        1    60
#> [588,]  80   6      0         71        1   189
#> [589,]  82  19      0         19        0   120
#> [590,]  83   9      0        180        0   198
#> [591,]  79  14      1          0        0   110
#> [592,]  81  14      1         12        1   128
#> [593,]  82   0      0          2        1   100
#> [594,]  85   9      1          6        1   160
#> [595,]  81  12      0         12        1   163
#> [596,]  82   5      1          0        1   146
#> [597,]  81   4      0          4        0   160
#> [598,]  86  12      0        180        1   120
#> [599,]  82  15      1          0        0   183
#> [600,]  80   2      0         88        0   135
#> [601,]  86   8      0          8        1   132
#> [602,]  84   3      0        180        1   120
#> [603,]  81  13      0        180        0   152
#> [604,]  85   3      0          3        1   118
#> [605,]  81   2      1          0        1   118
#> [606,]  83   4      0          4        0   130
#> [607,]  87   2      0          5        1   137
#> [608,]  86   2      0        180        1   169
#> [609,]  88  14      1          3        1   130
#> [610,]  84   7      1          2        0   148
#> [611,]  87   2      0        180        0   113
#> [612,]  84   9      0         92        1   110
#> [613,]  84   3      0        180        1   170
#> [614,]  86   4      0         38        1   122
#> [615,]  82   4      0          4        0   130
#> [616,]  86  13      0        177        0   163
#> [617,]  85   3      0          3        1   113
#> [618,]  86   6      0          6        1   117
#> [619,]  84  13      0         62        1   100
#> [620,]  88   4      0          4        0   100
#> [621,]  83  20      1          3        1   150
#> [622,]  88   4      0          4        1   115
#> [623,]  85  22      0         22        1   184
#> [624,]  86   9      1          7        1   142
#> [625,]  87   2      0        180        1   130
#> [626,]  88   3      0        115        0   110
#> [627,]  88   2      0        180        1    68
#> [628,]  87   8      0          8        1   157
#> [629,]  86  15      1          8        1   109
#> [630,]  88   4      0          4        0    86
#> [631,]  89   4      0          4        1   153
#> [632,]  89   5      0        119        1   140
#> [633,]  87  29      0         29        1    97
#> [634,]  87  15      1          9        1   138
#> [635,]  84   0      0        180        1   136
#> [636,]  90  14      0         14        1   100
#> [637,]  91   8      0          8        0   100
#> [638,]  87   2      0        180        0   160
#> [639,]  91  10      0        145        0   135
#> [640,]  86   3      1          0        1    80
#> [641,]  88   8      0         50        1   154
#> [642,]  86   9      1          7        0   130
#> [643,]  90   4      1          0        0   121
#> [644,]  91   1      0          1        1    74
#> [645,]  87   5      0         36        1   150
#> [646,]  90   5      1          0        1   125
#> [647,]  89   3      1          1        1   160
#> [648,]  92   1      0          1        1   167
#> [649,]  88   5      0        158        0   100
#> [650,]  89  12      1          0        1   130
#> [651,]  89   2      0        168        0   118
#> [652,]  89   4      0          4        1   159
#> [653,]  91   0      0          0        0     0
#> [654,]  91   4      1          0        1   120
#> [655,]  90  19      1         11        1   129
#> [656,]  94   6      0         50        0    78
#> [657,]  91   2      0          2        1   116
#> [658,]  93   8      0        179        1   110
#> [659,]  94   8      0          8        1   142
#> [660,]  92   4      0         76        1   149
#> [661,]  91   1      0        180        0   158
#> [662,]  90  16      0         16        1   106
#> [663,]  90   3      0         67        0   162
#> [664,]  96   3      0         12        1    97
#> [665,]  91  12      0         53        1   212
#> [666,]  91   7      0          7        0   135
#> [667,]  93   0      1          0        1   122
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   2.0+   5.0+ 180.0+   5.0+   2.0+ 180.0+ 115.0  180.0+ 180.0+
#>  [11]  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+   5.0+   2.0+
#>  [21] 180.0+ 180.0+   3.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0 
#>  [41] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   6.0+ 180.0+ 180.0+ 180.0+   5.0+
#>  [51] 161.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+
#>  [71]   1.0  180.0+ 179.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81] 180.0+ 180.0+  36.0   88.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [91] 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 180.0+ 180.0+ 180.0+
#> [101] 152.0+   7.0+   6.0+ 180.0+  13.0+ 171.0+  28.0    6.0+   1.0  180.0+
#> [111]   9.0+ 180.0+ 175.0+ 180.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0    2.0    3.0+ 180.0+
#> [131] 180.0+ 180.0+ 180.0+   1.0  165.0  180.0+ 180.0+ 180.0+ 180.0+   8.0+
#> [141] 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 171.0+ 166.0+
#> [151]   5.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 180.0+
#> [161]   1.0  180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0 
#> [171] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0+ 180.0+   3.0    1.0  180.0+
#> [181] 180.0+ 180.0+  10.0+ 180.0+  17.0   45.0   19.0  180.0+   9.0+ 172.0+
#> [191]  24.0    8.0  180.0+ 180.0+   1.0+ 180.0+  77.0   13.0+   8.0+ 180.0+
#> [201] 180.0+ 170.0   94.0  180.0+ 169.0    7.0    6.0  180.0+ 180.0+   3.0+
#> [211]  30.0  180.0+  13.0+   5.0   18.0  180.0+   1.0  180.0+ 180.0+ 180.0+
#> [221] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+
#> [231]   7.0+ 180.0+ 180.0+ 180.0+   1.0    1.0  180.0+ 180.0+ 180.0+  12.0 
#> [241] 180.0+ 180.0+  14.0+ 180.0+   3.0+  88.0  180.0+  12.0  180.0+ 180.0+
#> [251]   0.5  180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+
#> [261]   9.0  180.0+ 180.0+  11.0+   2.0+ 180.0+ 180.0+ 180.0+   2.0+  15.0 
#> [271] 180.0+   5.0+ 179.0+ 166.0+   3.0  180.0+ 180.0+ 175.0+ 180.0+ 180.0+
#> [281] 180.0+ 180.0+ 180.0+ 123.0+  18.0  180.0+  80.0   15.0+ 180.0+  15.0 
#> [291] 180.0+ 180.0+ 174.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  19.0+
#> [301] 180.0+ 179.0+ 180.0+ 180.0+  11.0+ 180.0+   0.5   18.0    7.0+ 180.0+
#> [311] 180.0+ 152.0+ 180.0+  93.0   21.0+ 180.0+   1.0   18.0+ 101.0    7.0+
#> [321] 150.0  180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 174.0+ 180.0+   0.5 
#> [331] 180.0+ 180.0+ 180.0+ 180.0+   7.0+  45.0    5.0+ 103.0    3.0+ 180.0+
#> [341]  36.0    5.0+ 180.0+ 180.0+  97.0  180.0+   7.0    8.0+ 180.0+ 180.0+
#> [351]  18.0  180.0+   7.0  180.0+   7.0    8.0+  13.0+ 123.0  180.0+   1.0 
#> [361]   1.0   60.0   76.0  180.0+  10.0+ 180.0+ 180.0+ 162.0    7.0+   7.0+
#> [371] 124.0   12.0  180.0+ 152.0  180.0+   2.0   76.0  180.0+ 173.0+ 180.0+
#> [381] 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+  16.0+   6.0  180.0+ 180.0+
#> [391] 180.0+ 180.0+ 180.0+ 180.0+   2.0    3.0+ 180.0+  20.0  180.0+  20.0 
#> [401]   0.5  180.0+ 180.0+   8.0   87.0   12.0    4.0+  58.0  180.0+ 180.0+
#> [411] 180.0+ 180.0+ 180.0+   3.0  180.0+  14.0+ 180.0+  10.0+ 180.0+ 180.0+
#> [421] 179.0+ 180.0+ 159.0   15.0  180.0+  13.0  180.0+   4.0+ 180.0+  10.0 
#> [431] 104.0+   1.0    5.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 177.0+
#> [441] 180.0+   5.0   11.0+   4.0+ 180.0+   7.0  180.0+ 180.0+ 180.0+ 180.0+
#> [451] 180.0+ 180.0+   6.0   85.0  180.0+  17.0+ 180.0+ 174.0+   4.0    0.5 
#> [461] 180.0+ 180.0+ 180.0+ 180.0+   4.0    1.0  180.0+  12.0  180.0+ 180.0+
#> [471]   8.0  180.0+  33.0    5.0  180.0+ 180.0+ 180.0+   1.0   12.0  180.0+
#> [481]  79.0    3.0  180.0+ 180.0+  47.0  180.0+  11.0    7.0  180.0+   8.0+
#> [491]   7.0  180.0+  32.0  180.0+ 180.0+ 172.0  119.0   12.0  180.0+   8.0 
#> [501] 180.0+   1.0    4.0+ 180.0+ 152.0+   3.0   24.0   23.0  180.0+ 180.0+
#> [511] 180.0+ 180.0+   1.0    4.0    4.0  180.0+   6.0    3.0+ 180.0+   1.0 
#> [521] 171.0    1.0   43.0    3.0    6.0   71.0    8.0   40.0   59.0   17.0 
#> [531] 161.0   10.0+ 180.0+ 164.0  118.0  180.0+  37.0  180.0+   7.0+  22.0 
#> [541]   5.0+ 180.0+   3.0  171.0+ 166.0+  71.0    1.0    3.0+   6.0+   6.0 
#> [551]   1.0  180.0+ 108.0  180.0+ 125.0  180.0+   4.0    6.0  180.0+ 103.0 
#> [561] 177.0+   4.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  16.0  180.0+ 180.0+
#> [571] 180.0+ 180.0+ 180.0+   2.0  167.0    3.0+  62.0  180.0+   4.0    1.0 
#> [581]  38.0   90.0  180.0+ 180.0+  89.0  180.0+   4.0   71.0   19.0  180.0+
#> [591] 180.0+ 180.0+   2.0  180.0+  12.0    5.0+   4.0+ 180.0+  83.0   88.0 
#> [601]   8.0  180.0+ 180.0+   3.0+ 180.0+   4.0+   5.0  180.0+  14.0  180.0+
#> [611] 180.0+  92.0  180.0+  38.0    4.0  177.0    3.0+   6.0+  62.0    4.0+
#> [621]  20.0    4.0   22.0   11.0  180.0+ 115.0  180.0+   8.0+ 180.0+   4.0 
#> [631]   4.0  119.0   29.0  180.0+ 180.0+  14.0    8.0  180.0+ 145.0    3.0 
#> [641]  50.0  180.0+   4.0    1.0   36.0   89.0    3.0+   1.0  158.0  180.0+
#> [651] 168.0    4.0    0.5    4.0  180.0+  50.0    2.0  179.0+   8.0+  76.0 
#> [661] 180.0+  16.0   67.0   12.0   53.0    7.0+   0.5  180.0+   3.0   15.0+
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
#>   0.8346093 
```
