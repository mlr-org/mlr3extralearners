# Cross-Validated GLM with Elastic Net Regularization Survival Learner

Generalized linear models with elastic net regularization. Calls
[`glmnet::cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/cv.glmnet.html)
from package [glmnet](https://CRAN.R-project.org/package=glmnet).

## Initial parameter values

- `family` is set to `"cox"` and cannot be changed.

- `cox.ties` is initialized to `"breslow"` to keep the tie-handling
  behavior of earlier glmnet versions, and to silence the glmnet v5.0
  warning about the upcoming default change to `"efron"`.

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`glmnet::predict.cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.cv.glmnet.html).

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    `glmnet:::survfit.cv.glmnet()`. Parameters `stype` and `ctype`
    relate to how `lp` predictions are transformed into survival
    predictions and are described in
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
  [glmnet](https://CRAN.R-project.org/package=glmnet),
  [survdistr](https://CRAN.R-project.org/package=survdistr)

## Parameters

|  |  |  |  |  |
|----|----|----|----|----|
| Id | Type | Default | Levels | Range |
| lambda | untyped | NULL |  | \- |
| type.measure | character | deviance | deviance, C | \- |
| nfolds | integer | 10 |  | \\\[3, \infty)\\ |
| foldid | untyped | NULL |  | \- |
| alignment | character | lambda | lambda, fraction | \- |
| grouped | logical | TRUE | TRUE, FALSE | \- |
| keep | logical | FALSE | TRUE, FALSE | \- |
| parallel | logical | FALSE | TRUE, FALSE | \- |
| gamma | untyped | c(0, 0.25, 0.5, 0.75, 1) |  | \- |
| relax | logical | FALSE | TRUE, FALSE | \- |
| trace.it | integer | 0 |  | \\\[0, 1\]\\ |
| alpha | numeric | 1 |  | \\\[0, 1\]\\ |
| nlambda | integer | 100 |  | \\\[1, \infty)\\ |
| lambda.min.ratio | numeric | \- |  | \\\[0, 1\]\\ |
| standardize | logical | TRUE | TRUE, FALSE | \- |
| intercept | logical | TRUE | TRUE, FALSE | \- |
| exclude | untyped | NULL |  | \- |
| penalty.factor | untyped | \- |  | \- |
| lower.limits | untyped | -Inf |  | \- |
| upper.limits | untyped | Inf |  | \- |
| cox.ties | character | breslow | breslow, efron | \- |
| maxp | integer | \- |  | \\\[1, \infty)\\ |
| path | logical | FALSE | TRUE, FALSE | \- |
| fdev | numeric | 1e-05 |  | \\\[0, 1\]\\ |
| devmax | numeric | 0.999 |  | \\\[0, 1\]\\ |
| eps | numeric | 1e-06 |  | \\\[0, 1\]\\ |
| big | numeric | 9.9e+35 |  | \\(-\infty, \infty)\\ |
| mnlam | integer | 5 |  | \\(-\infty, \infty)\\ |
| pmin | numeric | 1e-09 |  | \\\[0, 1\]\\ |
| exmx | numeric | 250 |  | \\(-\infty, \infty)\\ |
| prec | numeric | 1e-10 |  | \\(-\infty, \infty)\\ |
| mxit | integer | 100 |  | \\\[1, \infty)\\ |
| epsnr | numeric | 1e-06 |  | \\\[0, 1\]\\ |
| mxitnr | integer | 25 |  | \\\[1, \infty)\\ |
| thresh | numeric | 1e-07 |  | \\\[0, \infty)\\ |
| maxit | integer | 100000 |  | \\\[1, \infty)\\ |
| dfmax | integer | NULL |  | \\\[0, \infty)\\ |
| pmax | integer | NULL |  | \\\[0, \infty)\\ |
| s | numeric | lambda.1se |  | \\\[0, \infty)\\ |
| predict.gamma | numeric | gamma.1se |  | \\\[0, 1\]\\ |
| exact | logical | FALSE | TRUE, FALSE | \- |
| stype | integer | 2 |  | \\\[1, 2\]\\ |
| ctype | integer | \- |  | \\\[1, 2\]\\ |
| use_pred_offset | logical | \- | TRUE, FALSE | \- |
| strata | untyped | NULL |  | \- |

## Offset

If a `Task` contains a column with the `offset` role, it is
automatically incorporated during training via the `offset` argument in
[`glmnet::glmnet()`](https://rdrr.io/pkg/glmnet/man/glmnet.html). During
prediction, the offset column from the test set is used only if
`use_pred_offset = TRUE` (default), passed via the `newoffset` argument
in
[`glmnet::predict.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html).
Otherwise, if the user sets `use_pred_offset = FALSE`, a zero offset is
applied, effectively disabling the offset adjustment during prediction.

## Stratification

Parameter `strata` can be set to the name of one task column used as the
stratification variable. During training, the column is removed from the
data, converted to an integer, and is attached to the survival response
via
[`glmnet::stratifySurv()`](https://rdrr.io/pkg/glmnet/man/stratifySurv.html).
During prediction, the same task column is passed as `newstrata` for
survival distribution predictions (`distr`) in the `survfit` function.
Constant interpolation via `survdistr` is used to align the survival
probabilities to a common set of time points across all strata. Note
that if an observation in the test set has a stratum not present in the
training set, the prediction will fail, as the baseline hazard cannot be
estimated for unseen strata. The rest of the prediction types do not
depend on the strata column.

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

bblodfon

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3proba::LearnerSurv`](https://mlr3proba.mlr-org.com/reference/LearnerSurv.html)
-\> `LearnerSurvCVGlmnet`

## Active bindings

- `native_model`:

  (`cv.glmnet`)  
  The fitted model.

## Methods

### Public methods

- [`LearnerSurvCVGlmnet$new()`](#method-LearnerSurvCVGlmnet-initialize)

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

### `LearnerSurvCVGlmnet$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerSurvCVGlmnet$new()

------------------------------------------------------------------------

### `LearnerSurvCVGlmnet$selected_features()`

Returns the set of selected features as reported by
[`glmnet::predict.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html)
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

### `LearnerSurvCVGlmnet$clone()`

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
#> • Parameters: cox.ties=breslow, use_pred_offset=TRUE
#> • Packages: mlr3, mlr3proba, mlr3extralearners, glmnet, and survdistr
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
#> Call:  glmnet::cv.glmnet(x = data, y = target, cox.ties = "breslow",      family = "cox") 
#> 
#> Measure: Partial Likelihood Deviance 
#> 
#>      Lambda Index Measure     SE Nonzero
#> min 0.00280    47   2.692 0.2060       6
#> 1se 0.07985    11   2.870 0.1999       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  35   5      1          2        0   172
#>   [3,]  35  10      1          9        0   106
#>   [4,]  35   2      0        180        0   121
#>   [5,]  37   9      0        180        1   151
#>   [6,]  38  13      1          0        1   161
#>   [7,]  38   2      0        115        0   150
#>   [8,]  36   1      0        180        1   155
#>   [9,]  35   0      0        180        1   119
#>  [10,]  33   6      1          1        1   115
#>  [11,]  38  12      1         11        1    92
#>  [12,]  42   3      1          1        1   130
#>  [13,]  37   1      1          0        1   146
#>  [14,]  42   2      0        180        1   100
#>  [15,]  38   5      1          3        0   125
#>  [16,]  40   6      0        180        1   138
#>  [17,]  40  11      1         10        1   120
#>  [18,]  42   2      0        180        0   100
#>  [19,]  40   1      1          0        1   145
#>  [20,]  42   4      0        180        0   162
#>  [21,]  42  15      1         13        1   125
#>  [22,]  40   3      1          1        0   170
#>  [23,]  42  12      1         10        1   170
#>  [24,]  42   2      0        180        1   124
#>  [25,]  44   5      1          1        0   170
#>  [26,]  45   3      0        180        1   154
#>  [27,]  41  10      1          8        0   150
#>  [28,]  44   3      0        180        0   141
#>  [29,]  41  13      1          1        0   140
#>  [30,]  45   6      0        180        1   170
#>  [31,]  41   5      1          4        1   141
#>  [32,]  43   2      0        180        1   140
#>  [33,]  45   2      0        180        1   140
#>  [34,]  46  15      0        180        0   120
#>  [35,]  47   4      1          3        0   118
#>  [36,]  48  15      0        180        1   160
#>  [37,]  43  29      0        180        1   180
#>  [38,]  45   4      1          0        0   124
#>  [39,]  43  10      0        180        0   185
#>  [40,]  46  13      1         10        0   100
#>  [41,]  44   0      1          0        1    96
#>  [42,]  43   3      1          0        1   124
#>  [43,]  45   8      1          0        1   117
#>  [44,]  49   5      0         73        1   136
#>  [45,]  45   5      0          5        0   141
#>  [46,]  46   2      1          1        1   122
#>  [47,]  46   6      1          0        1   100
#>  [48,]  44   4      1          0        1   114
#>  [49,]  47   2      0        180        0   108
#>  [50,]  44   9      1          8        1   135
#>  [51,]  46   5      1          3        0   130
#>  [52,]  46   4      0        180        1   121
#>  [53,]  46  15      0        180        1   120
#>  [54,]  45   9      1          0        1   145
#>  [55,]  48   3      0        180        0   154
#>  [56,]  47   5      1          3        1   130
#>  [57,]  47   9      1          6        0   170
#>  [58,]  46   3      1          0        1   119
#>  [59,]  50   1      1          0        1   129
#>  [60,]  50   6      1          2        1   140
#>  [61,]  46   3      1          1        1   140
#>  [62,]  46   9      1          9        1   122
#>  [63,]  50   7      0        180        1   110
#>  [64,]  51   1      0          1        1   145
#>  [65,]  49  15      1         11        1   160
#>  [66,]  47   2      0        180        0   150
#>  [67,]  49  23      0        179        1   112
#>  [68,]  52   2      0        180        1   170
#>  [69,]  50   7      1          0        1    92
#>  [70,]  50   1      1          0        0   150
#>  [71,]  50   9      0        180        0   130
#>  [72,]  47   8      0        180        0   160
#>  [73,]  46   3      0        180        1   120
#>  [74,]  46   1      1          1        0   145
#>  [75,]  50   4      1          1        0   150
#>  [76,]  48   7      1          0        1   110
#>  [77,]  53   8      0         36        1   160
#>  [78,]  49   9      1          3        0   102
#>  [79,]  49  15      0        180        1   160
#>  [80,]  53   5      0        180        1   140
#>  [81,]  54  17      1         12        1   102
#>  [82,]  53   5      0         77        0   159
#>  [83,]  53   7      1          0        0   199
#>  [84,]  54   6      1          3        0   129
#>  [85,]  50   2      0          5        1   106
#>  [86,]  50  14      1         13        0   170
#>  [87,]  53   8      1          7        0   160
#>  [88,]  48   3      1          2        0   150
#>  [89,]  51  25      1          1        0   202
#>  [90,]  53   4      0          4        0   140
#>  [91,]  48   6      0        180        0   160
#>  [92,]  48  11      1         10        0   120
#>  [93,]  51  13      0         99        1   160
#>  [94,]  55   3      1          1        0   150
#>  [95,]  54  23      1         10        0   131
#>  [96,]  52   7      1          2        0   154
#>  [97,]  55   4      1          2        0   150
#>  [98,]  52   4      0        180        1   180
#>  [99,]  50   5      1          4        1   150
#> [100,]  54   4      1          0        1   121
#> [101,]  50   3      0        174        1   153
#> [102,]  55  28      1         13        1   160
#> [103,]  49   6      1          0        1   130
#> [104,]  50   7      1          1        0   156
#> [105,]  53   8      1          0        1   130
#> [106,]  50   7      1          0        1   127
#> [107,]  56   4      1          1        1   130
#> [108,]  52   5      0        175        1   117
#> [109,]  54   1      0        180        0   162
#> [110,]  54   7      1          0        1   100
#> [111,]  56   3      0        180        1   193
#> [112,]  55   5      1          4        1   120
#> [113,]  52   8      0        180        0   119
#> [114,]  53  18      1          9        1   150
#> [115,]  54   3      0        180        1   180
#> [116,]  53  15      0         15        1    90
#> [117,]  53   4      0        180        1   150
#> [118,]  55   6      0        180        1   100
#> [119,]  55   2      0        134        1   140
#> [120,]  54   3      0        180        0   128
#> [121,]  56   3      0          8        1   139
#> [122,]  54   7      1          2        0   129
#> [123,]  54   2      1          1        1   176
#> [124,]  57   5      1          3        1   138
#> [125,]  57   1      0        180        1   156
#> [126,]  57   1      0          1        1   100
#> [127,]  52   2      0        180        0   140
#> [128,]  56  14      1         11        0   130
#> [129,]  53   3      1          0        1   200
#> [130,]  54   5      0        180        1   108
#> [131,]  55   3      1          1        1   156
#> [132,]  59   3      1          1        0   172
#> [133,]  54  17      1          8        1   227
#> [134,]  55   9      1          2        1   147
#> [135,]  55  13      0        166        1   140
#> [136,]  56   5      0          5        1   150
#> [137,]  57   4      1          2        1   185
#> [138,]  53   4      0        147        1   145
#> [139,]  57  11      1         10        1   129
#> [140,]  55   5      0          5        1   131
#> [141,]  54   7      1          0        1   141
#> [142,]  56   4      0          4        0   164
#> [143,]  59  15      1         10        0   140
#> [144,]  58   9      1          0        1   180
#> [145,]  58   1      1          1        1   200
#> [146,]  55   5      1          0        0   140
#> [147,]  55   2      0          2        0   106
#> [148,]  59   9      1          1        1   125
#> [149,]  57   1      0        180        0   148
#> [150,]  60  11      1          9        0   106
#> [151,]  58   4      1          0        1   160
#> [152,]  57   2      0          2        1   120
#> [153,]  60   5      1          1        0   138
#> [154,]  57   5      0        180        1   130
#> [155,]  58  11      1          9        1   124
#> [156,]  57  10      1          9        0   103
#> [157,]  59   6      1          0        1   140
#> [158,]  59   4      1          0        1   152
#> [159,]  58  26      1          0        1   189
#> [160,]  61   9      0          9        1   160
#> [161,]  58   4      1          3        0   120
#> [162,]  60   0      1          0        1    80
#> [163,]  58   8      0        161        1   140
#> [164,]  58  14      1          6        0   190
#> [165,]  61   9      1          8        0   150
#> [166,]  61   3      1          2        1   102
#> [167,]  58   1      0          1        1   100
#> [168,]  61  20      1         13        0   130
#> [169,]  57  13      1         10        0   110
#> [170,]  57   2      1          0        1   116
#> [171,]  58  10      0         10        1   150
#> [172,]  57   3      1          2        0   120
#> [173,]  58  19      1         13        1   140
#> [174,]  56  18      1         11        1   165
#> [175,]  59   9      1          0        1    80
#> [176,]  58  11      0        172        1   135
#> [177,]  60  12      1          0        1   114
#> [178,]  55   9      1          7        1   135
#> [179,]  56   8      1          8        0   120
#> [180,]  59  11      1          8        1   190
#> [181,]  57   1      0          1        0   126
#> [182,]  57  15      1         13        1   110
#> [183,]  58   5      1          1        1   135
#> [184,]  59  10      0        180        0   160
#> [185,]  61   8      0         77        0   120
#> [186,]  61  13      0         13        0   210
#> [187,]  58   8      1          5        0   152
#> [188,]  62  10      1          0        1   153
#> [189,]  62   7      1          2        1   180
#> [190,]  58   8      1          3        1   150
#> [191,]  57   7      0        169        0   180
#> [192,]  60   7      0          7        0   147
#> [193,]  61   6      0          6        0   134
#> [194,]  57  12      1          9        1   120
#> [195,]  62   4      1          0        0   160
#> [196,]  60  17      1          8        1   140
#> [197,]  62   4      1          3        0   173
#> [198,]  59  16      1          9        1   133
#> [199,]  63   6      0         28        1   120
#> [200,]  61  13      0         13        0   120
#> [201,]  57  18      1          9        1    93
#> [202,]  61   5      0          5        1   160
#> [203,]  57   2      1          1        0   159
#> [204,]  62   1      1          0        1   172
#> [205,]  58   7      0        180        1   150
#> [206,]  63   3      1          1        0   180
#> [207,]  63   1      0        180        1   130
#> [208,]  61   7      0        180        0   135
#> [209,]  63   4      1          3        0   222
#> [210,]  63   4      0        180        1   190
#> [211,]  63  15      1         10        1   126
#> [212,]  64   4      0        180        0   130
#> [213,]  63   4      1          1        0   155
#> [214,]  60  18      1         13        0   132
#> [215,]  61   9      1          9        1   150
#> [216,]  58   9      1          9        0   110
#> [217,]  62   7      0          7        0   150
#> [218,]  59   1      0         22        1   162
#> [219,]  59   4      0        180        0   196
#> [220,]  60   7      1          5        1   141
#> [221,]  60   7      0          7        0   140
#> [222,]  60   7      1          1        1    90
#> [223,]  65  13      0        180        1   100
#> [224,]  62   6      0        180        0   170
#> [225,]  61  15      1         13        0   170
#> [226,]  59   4      0          4        0   149
#> [227,]  64  10      1          9        0   160
#> [228,]  62   6      0          6        0   120
#> [229,]  63  12      1         10        0   200
#> [230,]  59  10      0        180        1   130
#> [231,]  61   6      1          1        1   117
#> [232,]  63  10      1          0        1   148
#> [233,]  63  14      1          9        0   123
#> [234,]  63   4      1          3        0   162
#> [235,]  66   3      1          1        0   127
#> [236,]  61  10      1          2        1   194
#> [237,]  64  32      1          9        1   160
#> [238,]  63  12      1          9        0   114
#> [239,]  65  10      1          8        1   120
#> [240,]  64   0      0          0        1    90
#> [241,]  60   6      0        180        0   130
#> [242,]  64  21      1         10        0   190
#> [243,]  61  12      1         11        0   154
#> [244,]  61   4      0        180        1   113
#> [245,]  65   3      0        180        1   190
#> [246,]  64   7      0        180        1   120
#> [247,]  66   6      1          1        1   130
#> [248,]  65   3      1          0        1    80
#> [249,]  63   5      1          4        0   170
#> [250,]  63   2      1          1        0   180
#> [251,]  62  13      1         11        0   180
#> [252,]  66  18      1          5        0   142
#> [253,]  66  16      1         11        1   169
#> [254,]  62   9      0        180        0   145
#> [255,]  61  15      1         10        0   130
#> [256,]  63   9      1          8        1   160
#> [257,]  63   2      1          0        0   140
#> [258,]  65   8      1          0        1   140
#> [259,]  67   6      0        180        1   170
#> [260,]  65  15      1         11        1   160
#> [261,]  64  13      1         12        1   150
#> [262,]  64   6      1          0        1   125
#> [263,]  66   7      1          0        1   115
#> [264,]  66  13      1          0        0   118
#> [265,]  64  14      1         13        1   150
#> [266,]  65   3      0          3        0   105
#> [267,]  64   0      0          0        1   148
#> [268,]  67   4      1          3        0   130
#> [269,]  66   3      1          0        1   135
#> [270,]  66   6      1          0        1   140
#> [271,]  63   7      1          0        0   162
#> [272,]  63  10      0         16        1   160
#> [273,]  66  14      0        180        0   130
#> [274,]  65  18      1          3        0   120
#> [275,]  63   1      1          0        1   155
#> [276,]  63  10      0         18        1   130
#> [277,]  68  11      0        180        0   160
#> [278,]  68  14      0         79        0   172
#> [279,]  66  12      1         10        1   150
#> [280,]  65  15      1         12        1   150
#> [281,]  66  11      1          0        0   100
#> [282,]  65   4      1          2        1   145
#> [283,]  66  15      1         13        1   160
#> [284,]  63   2      0        180        0   150
#> [285,]  69   6      0        180        1   100
#> [286,]  66   9      1          8        0   130
#> [287,]  63   8      0        180        1   120
#> [288,]  65   8      1          0        1    90
#> [289,]  66   3      0          3        1   138
#> [290,]  67   1      0        180        1   160
#> [291,]  68  10      1         10        1   150
#> [292,]  65   1      1          0        0   133
#> [293,]  67   7      1          4        1   130
#> [294,]  63   2      1          0        0    99
#> [295,]  67   2      0        180        0   184
#> [296,]  65   6      0          6        0    80
#> [297,]  65  10      1          1        1   148
#> [298,]  67  12      1         12        0   160
#> [299,]  69   6      0         99        1   140
#> [300,]  65   4      1          1        0   130
#> [301,]  64   4      0        179        0   160
#> [302,]  66   4      0        180        1   130
#> [303,]  70  15      1         12        1   132
#> [304,]  64   4      0        180        1   140
#> [305,]  64   0      1          0        1   118
#> [306,]  67   2      0         18        0   131
#> [307,]  66   7      1          5        1   131
#> [308,]  66   4      0        180        0   177
#> [309,]  69   4      1          3        1   150
#> [310,]  65  13      1         12        1   130
#> [311,]  69  17      1         10        0   140
#> [312,]  69   8      0         93        0   140
#> [313,]  64  21      0         21        1   155
#> [314,]  66   6      0        180        0   140
#> [315,]  65   1      0          1        1   120
#> [316,]  65   6      0        101        1   115
#> [317,]  68   7      0        150        0   210
#> [318,]  67   2      0        180        0   128
#> [319,]  66   9      1          3        1   151
#> [320,]  66   1      1          1        1   165
#> [321,]  70   4      1          0        1   180
#> [322,]  70  14      0        171        0   166
#> [323,]  66   4      0        180        0   130
#> [324,]  65   2      0        180        0   130
#> [325,]  69   3      1          2        0   151
#> [326,]  67  14      1         13        0   130
#> [327,]  65  14      1         13        1   150
#> [328,]  69   8      0        180        1   180
#> [329,]  71   7      0          7        0   230
#> [330,]  71   6      0         45        1   158
#> [331,]  69   3      0          3        1   130
#> [332,]  67   1      0         36        1   104
#> [333,]  67   5      0          5        0   130
#> [334,]  72   3      1          0        1   132
#> [335,]  72   7      0          7        1   110
#> [336,]  69   8      1          7        1   108
#> [337,]  67   3      0        180        0   110
#> [338,]  69  19      0        180        0   130
#> [339,]  68  18      0         18        1   100
#> [340,]  67   7      1          4        0   122
#> [341,]  69   4      1          3        0   132
#> [342,]  68   2      0          7        1   130
#> [343,]  69   8      1          2        0   121
#> [344,]  67  13      1          9        0   130
#> [345,]  70   3      0        123        0   130
#> [346,]  70   9      0        180        1   142
#> [347,]  72   5      1          4        0   170
#> [348,]  67  22      1          1        1   140
#> [349,]  67  12      1          8        0   120
#> [350,]  69   1      0          1        1   110
#> [351,]  67   1      0          1        1    60
#> [352,]  69   5      0         76        0   120
#> [353,]  67   8      1          0        1   130
#> [354,]  72  13      1         11        1   195
#> [355,]  68  10      1          8        1   160
#> [356,]  66  24      1         13        0   130
#> [357,]  70  35      1          0        1   105
#> [358,]  73  20      1          0        1   170
#> [359,]  71   6      0          9        0   120
#> [360,]  69  10      1          6        1   120
#> [361,]  72  19      1          8        0   120
#> [362,]  67   8      0        180        1   170
#> [363,]  67   9      0        180        0   158
#> [364,]  73  13      0        152        1   130
#> [365,]  72   6      1          5        0   115
#> [366,]  71   1      0        173        1   188
#> [367,]  68  23      0        180        1   220
#> [368,]  70   3      0        180        0   121
#> [369,]  69  16      1         10        1   140
#> [370,]  69   8      1          1        0   164
#> [371,]  72  16      1          1        1   130
#> [372,]  70   4      0        180        0   180
#> [373,]  69   1      1          0        0   155
#> [374,]  72   8      1          1        1   150
#> [375,]  73   7      0          7        1   140
#> [376,]  68  15      1         13        1   130
#> [377,]  70   3      0          3        1   159
#> [378,]  73   0      0        180        1   161
#> [379,]  73   4      0        180        1   154
#> [380,]  69   2      1          0        1   110
#> [381,]  74  20      0         20        1   180
#> [382,]  71  20      1         10        0   140
#> [383,]  71  17      1         11        0   160
#> [384,]  71   8      1          7        0   149
#> [385,]  69  12      1          1        1   149
#> [386,]  74   4      0          4        0   120
#> [387,]  72   5      1          3        1   160
#> [388,]  70   3      0        180        1   154
#> [389,]  73   6      0        180        0   110
#> [390,]  72  15      1          0        1   150
#> [391,]  71   7      1          2        0   143
#> [392,]  72   8      1          0        1   140
#> [393,]  74   3      0          3        1   150
#> [394,]  73  17      1         11        0   140
#> [395,]  69   2      1          1        1    80
#> [396,]  70   4      1          0        1   140
#> [397,]  71  14      1         13        1   170
#> [398,]  74   7      1          0        1   117
#> [399,]  72  10      1          8        1   153
#> [400,]  70   8      0          8        0   120
#> [401,]  71  10      1          9        1   120
#> [402,]  75   1      0          1        0   133
#> [403,]  75   2      1          1        0   145
#> [404,]  73  10      1          9        1   146
#> [405,]  73  10      1         10        1   120
#> [406,]  74  15      1          9        1   179
#> [407,]  71   2      0         10        1   112
#> [408,]  75   9      1          7        0   140
#> [409,]  75  13      1          1        1   130
#> [410,]  71  11      1          8        0   110
#> [411,]  72  15      1         12        1   120
#> [412,]  73  10      1          8        0   120
#> [413,]  72   1      1          1        0   168
#> [414,]  72   7      0         57        1   145
#> [415,]  73  10      0        180        0   162
#> [416,]  70   3      0          3        0   150
#> [417,]  76  25      1         12        1   170
#> [418,]  73  12      1         12        1   140
#> [419,]  72   2      0        180        0   120
#> [420,]  75   1      0        180        1   140
#> [421,]  72   4      1          0        1   197
#> [422,]  71   3      1          0        0   144
#> [423,]  74  34      1          8        1   233
#> [424,]  76   3      1          0        1   120
#> [425,]  71  32      1         12        1   107
#> [426,]  72   5      0        180        0   154
#> [427,]  76   5      0          5        1   130
#> [428,]  77  11      0         11        1   150
#> [429,]  77   4      0          4        0   185
#> [430,]  75   3      1          1        0   180
#> [431,]  72   7      1          2        0   142
#> [432,]  73  15      0         15        1   160
#> [433,]  71  16      0        180        0   140
#> [434,]  73  10      1         10        0   124
#> [435,]  74   7      0        180        1   150
#> [436,]  74   3      0          3        1   128
#> [437,]  76   1      0        180        0   114
#> [438,]  73   6      0          6        1   114
#> [439,]  75  23      1         14        1   110
#> [440,]  74   2      0        180        0   190
#> [441,]  72   4      0         85        1   120
#> [442,]  72   4      1          3        0   160
#> [443,]  76  17      1          0        1   200
#> [444,]  73   4      1          3        1   125
#> [445,]  75   4      1          0        1   122
#> [446,]  75   7      0          7        0   190
#> [447,]  73  13      1         11        0   195
#> [448,]  75  12      0         12        1   160
#> [449,]  74   8      1          0        1   105
#> [450,]  75   4      1          2        1   188
#> [451,]  75   1      0          1        1   125
#> [452,]  74   2      0        180        0   111
#> [453,]  73   0      0        180        0   156
#> [454,]  72   5      0        180        0   120
#> [455,]  76  44      1         10        0   105
#> [456,]  74  10      1          0        1   135
#> [457,]  76   5      1          0        1   167
#> [458,]  74   8      1          8        1   170
#> [459,]  77   5      1          0        0   123
#> [460,]  77  12      1          9        1   100
#> [461,]  73  10      1          9        0   146
#> [462,]  77  12      0        180        0   130
#> [463,]  77   1      1          0        1    90
#> [464,]  76  12      1         11        1   120
#> [465,]  78   5      1          0        1   170
#> [466,]  73   7      1          0        0   174
#> [467,]  75   3      1          1        1   171
#> [468,]  79  10      1          8        0   190
#> [469,]  74   2      1          0        1   130
#> [470,]  78  18      0         18        1   144
#> [471,]  76  29      0         47        0    90
#> [472,]  73   8      1          1        1   162
#> [473,]  73  11      1          2        1   110
#> [474,]  74  15      0        180        1   172
#> [475,]  78   8      1          6        1   110
#> [476,]  74   7      0          7        0   161
#> [477,]  76  13      1          1        1   170
#> [478,]  78  32      1          9        1   198
#> [479,]  80  10      1          6        1   147
#> [480,]  78   0      0        180        1   212
#> [481,]  78  13      1          5        0   130
#> [482,]  75   5      0        119        1   150
#> [483,]  75  12      1          1        1   120
#> [484,]  78  15      0        180        1   270
#> [485,]  80   8      0          8        1   120
#> [486,]  74  10      1          8        0   135
#> [487,]  76   1      0          1        1    83
#> [488,]  79   4      0         80        0   145
#> [489,]  75   4      1          0        0   212
#> [490,]  78  10      0        180        1   130
#> [491,]  75  11      1          4        0   162
#> [492,]  75   3      0          3        0     0
#> [493,]  77  24      0         24        1   160
#> [494,]  79   8      0         32        1   120
#> [495,]  80   9      0         23        1   128
#> [496,]  80   6      0          6        1   150
#> [497,]  76   3      1          0        1   140
#> [498,]  79  11      0        180        0   160
#> [499,]  79   2      1          0        1   121
#> [500,]  78  14      1          0        1   140
#> [501,]  81   1      0          1        0   130
#> [502,]  76   4      0          4        1   160
#> [503,]  79   4      0          4        1   125
#> [504,]  77   6      0          6        1   107
#> [505,]  75   2      1          1        1   204
#> [506,]  78  11      0        180        1   135
#> [507,]  76   1      0          1        1    90
#> [508,]  78   7      1          0        1   110
#> [509,]  79   3      0          3        0   120
#> [510,]  77   6      0          6        1   144
#> [511,]  79   4      1          0        1   120
#> [512,]  77   9      1          4        0   141
#> [513,]  82   5      0          8        1   120
#> [514,]  80  40      1          0        1   138
#> [515,]  80  17      1         12        0   100
#> [516,]  79  10      0         10        1   120
#> [517,]  80  15      1          0        1    90
#> [518,]  81   4      1          2        1   126
#> [519,]  79  28      0        164        0   100
#> [520,]  80   6      0        173        1   160
#> [521,]  78  32      0        180        1   130
#> [522,]  79   1      0         37        1   140
#> [523,]  81   3      0        180        0   184
#> [524,]  78   7      0          7        1   147
#> [525,]  77  13      1          0        1   190
#> [526,]  78  15      0         15        0   165
#> [527,]  80   5      1          1        1   108
#> [528,]  78   4      0        180        0   175
#> [529,]  78  26      1          5        0   194
#> [530,]  78  20      1          0        1   109
#> [531,]  80   1      0          1        0   100
#> [532,]  77  10      1          8        1   130
#> [533,]  82   3      1          1        1   144
#> [534,]  77   5      0         85        0   188
#> [535,]  80   2      1          1        0   168
#> [536,]  79   6      0          6        0   152
#> [537,]  80   6      1          0        1   119
#> [538,]  78   2      0        180        0   148
#> [539,]  80   5      0          5        1   130
#> [540,]  82   1      1          0        1    82
#> [541,]  79  10      0        180        1   150
#> [542,]  77   4      0        180        1    98
#> [543,]  81   1      0        108        0   129
#> [544,]  78  12      0        180        0   134
#> [545,]  79   4      0          4        1   121
#> [546,]  80   6      0          6        1   110
#> [547,]  82   5      0        180        0   110
#> [548,]  79   7      1          6        0   130
#> [549,]  83   4      0        103        0    97
#> [550,]  81  11      1          8        0   160
#> [551,]  81   5      0        177        0    41
#> [552,]  80  11      1          8        0   170
#> [553,]  79   4      0          4        1   183
#> [554,]  78   9      1          4        1   120
#> [555,]  82   8      1          1        0   128
#> [556,]  79   1      0        180        1   170
#> [557,]  80   7      1          0        1   146
#> [558,]  84   5      1          1        1    85
#> [559,]  81  20      1          9        0   170
#> [560,]  83   8      0          8        0   115
#> [561,]  81  16      0         16        1   110
#> [562,]  80   6      1          0        1   150
#> [563,]  80  11      1          8        0   110
#> [564,]  81   8      0        180        0   146
#> [565,]  80   8      1          7        0   160
#> [566,]  79   7      0        177        0   197
#> [567,]  79   0      1          0        1    96
#> [568,]  85   4      0        180        0    90
#> [569,]  81   2      1          1        0   198
#> [570,]  83   2      0          2        1   155
#> [571,]  82   6      0        128        1   100
#> [572,]  80   3      1          1        1   230
#> [573,]  82  23      1          0        0   110
#> [574,]  84   5      0        180        1   203
#> [575,]  84   4      0          4        1    85
#> [576,]  81   1      0          1        1   150
#> [577,]  84   1      0         38        1   205
#> [578,]  83   3      0        180        0   174
#> [579,]  79   9      1          8        0   150
#> [580,]  84   4      0         89        1   129
#> [581,]  80   2      1          0        1   130
#> [582,]  83   9      0        180        0   198
#> [583,]  79  14      1          0        0   110
#> [584,]  83   3      0        114        0    98
#> [585,]  81  14      1         12        1   128
#> [586,]  83   2      0        154        0   130
#> [587,]  83   1      0        180        0   160
#> [588,]  81   4      0          4        0   175
#> [589,]  84  15      1         13        1   110
#> [590,]  81   1      0          1        1   145
#> [591,]  81  12      0         12        1   163
#> [592,]  82  16      1          8        0   103
#> [593,]  82   5      1          0        1   146
#> [594,]  86  12      0        180        1   120
#> [595,]  83  12      1          2        1   170
#> [596,]  81  19      1         14        0   120
#> [597,]  82  15      1          0        0   183
#> [598,]  80   2      0         88        0   135
#> [599,]  81  16      1          9        0   180
#> [600,]  84   6      0        165        0   145
#> [601,]  86   3      0          3        1   140
#> [602,]  84   3      0        180        1   120
#> [603,]  81  13      0        180        0   152
#> [604,]  85   3      0          3        1   118
#> [605,]  81   2      1          0        1   118
#> [606,]  83   9      0        180        1   149
#> [607,]  82   1      0        180        1   193
#> [608,]  86  12      1          0        1   132
#> [609,]  82  14      1         11        1   103
#> [610,]  86   6      1          0        1   140
#> [611,]  84  16      0         70        1   150
#> [612,]  83  19      0         43        0   150
#> [613,]  84   3      1          2        0   125
#> [614,]  86   2      0        180        1   169
#> [615,]  84   3      0          3        1   121
#> [616,]  83  13      1         12        0   170
#> [617,]  87   2      0        180        0   113
#> [618,]  86   4      0         38        1   122
#> [619,]  82   4      0          4        0   130
#> [620,]  86  13      0        177        0   163
#> [621,]  86   6      0          6        1   117
#> [622,]  88   4      0          4        0   100
#> [623,]  83  20      1          3        1   150
#> [624,]  88   4      0          4        1   115
#> [625,]  85  22      0         22        1   184
#> [626,]  86   9      1          7        1   142
#> [627,]  87   2      0        180        1   130
#> [628,]  88   3      0        115        0   110
#> [629,]  88   2      0        180        1    68
#> [630,]  83   3      0          3        1   130
#> [631,]  87   8      0          8        1   157
#> [632,]  88   4      0          4        0    86
#> [633,]  89   4      0          4        1   153
#> [634,]  89   5      0        119        1   140
#> [635,]  87   1      0          1        0   170
#> [636,]  84   8      0        180        1   119
#> [637,]  87  29      0         29        1    97
#> [638,]  84   0      0        180        1   136
#> [639,]  89  10      0         46        1   170
#> [640,]  88   1      0          1        0   135
#> [641,]  91   8      0          8        0   100
#> [642,]  87   2      0        180        0   160
#> [643,]  88   7      0         24        0   119
#> [644,]  86  10      0        180        1   137
#> [645,]  86   9      1          7        0   130
#> [646,]  90   4      1          0        0   121
#> [647,]  91   1      0          1        1    74
#> [648,]  87   5      0         36        1   150
#> [649,]  90   5      1          0        1   125
#> [650,]  88   3      1          2        0   159
#> [651,]  92   1      0          1        1   167
#> [652,]  91   3      0         33        1   137
#> [653,]  89  12      1          0        1   130
#> [654,]  91   5      0        169        1   176
#> [655,]  89  52      0         52        1   130
#> [656,]  92   7      0          7        1   110
#> [657,]  89   4      0          4        1   159
#> [658,]  89  14      0        180        1    84
#> [659,]  94   8      0          8        1   142
#> [660,]  92   4      0         76        1   149
#> [661,]  91   1      0        180        0   158
#> [662,]  90   3      0         67        0   162
#> [663,]  96   3      0         12        1    97
#> [664,]  95   8      1          5        1   150
#> [665,]  94   3      0         26        1   144
#> [666,]  91  12      0         53        1   212
#> [667,]  91   7      0          7        0   135
#> [668,]  92   2      0          2        0   112
#> [669,]  93   4      0        180        1   135
#> [670,]  96   3      1          0        1   104
#> 
#> $y
#>   [1] 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 115.0  180.0+ 180.0+ 180.0+
#>  [11] 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 155.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [31]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [41] 180.0+ 180.0+ 180.0+  73.0    5.0+ 161.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [51]   5.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 172.0+ 180.0+
#>  [61] 180.0+ 180.0+ 180.0+   1.0  179.0+ 180.0+ 179.0+ 180.0+ 180.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   7.0   36.0  180.0+ 180.0+ 180.0+
#>  [81] 180.0+  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+
#>  [91] 180.0+ 180.0+  99.0  180.0+ 152.0+   7.0+ 180.0+ 180.0+ 171.0+ 180.0+
#> [101] 174.0+  28.0    6.0+ 180.0+ 180.0+ 180.0+ 180.0+ 175.0+ 180.0+   7.0+
#> [111] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  15.0+ 180.0+ 180.0+ 134.0+ 180.0+
#> [121]   8.0  180.0+ 180.0+ 140.0  180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+
#> [131] 180.0+ 180.0+ 171.0+  15.0  166.0+   5.0+   4.0+ 147.0+ 180.0+   5.0+
#> [141] 180.0+   4.0+ 180.0+   9.0+   1.0  180.0+   2.0+ 180.0+ 180.0+ 180.0+
#> [151] 180.0+   2.0  180.0+ 180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+
#> [161] 180.0+   0.5  161.0+ 171.0+ 180.0+   3.0    1.0  180.0+ 180.0+ 180.0+
#> [171]  10.0+   3.0+  19.0  180.0+   9.0+ 172.0+ 172.0+  24.0    8.0  180.0+
#> [181]   1.0+  15.0  180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+ 180.0+ 180.0+
#> [191] 169.0    7.0+   6.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0   13.0+
#> [201]  18.0    5.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+   4.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+  84.0 
#> [221]   7.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+ 167.0    6.0+ 180.0+ 180.0+
#> [231] 180.0+ 180.0+  14.0+ 180.0+   3.0+  88.0  180.0+  12.0  180.0+   0.5 
#> [241] 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+ 180.0+
#> [251] 180.0+  18.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+  15.0  180.0+ 180.0+
#> [261]  13.0  180.0+ 179.0+ 166.0+  14.0+   3.0    0.5+ 180.0+   3.0+ 180.0+
#> [271]   7.0+  16.0  180.0+ 123.0+   1.0+  18.0  180.0+  79.0   80.0   15.0+
#> [281] 180.0+   4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+   3.0  180.0+
#> [291]  10.0  180.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+  12.0   99.0  180.0+
#> [301] 179.0+ 180.0+ 180.0+ 180.0+   0.5   18.0    7.0+ 180.0+ 152.0+ 180.0+
#> [311] 180.0+  93.0   21.0+ 180.0+   1.0  101.0  150.0  180.0+ 180.0+   1.0 
#> [321] 180.0+ 171.0  180.0+ 180.0+ 180.0+ 180.0+  14.0+ 180.0+   7.0+  45.0 
#> [331]   3.0+  36.0    5.0+ 180.0+   7.0    8.0+ 180.0+ 180.0+  18.0    7.0 
#> [341] 180.0+   7.0    8.0+  13.0+ 123.0  180.0+ 180.0+  51.0  180.0+   1.0 
#> [351]   1.0   76.0  180.0+ 132.0   10.0+ 180.0+ 180.0+ 124.0    9.0  180.0+
#> [361] 180.0+ 180.0+ 180.0+ 152.0  180.0+ 173.0+ 180.0+ 180.0+  16.0+ 180.0+
#> [371]  16.0+ 180.0+ 180.0+ 180.0+   7.0+  15.0    3.0+ 180.0+ 180.0+   2.0 
#> [381]  20.0   20.0  180.0+   8.0   12.0    4.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [391] 180.0+ 180.0+   3.0  180.0+   2.0  180.0+  14.0+ 180.0+  10.0+   8.0+
#> [401] 179.0+   1.0  180.0+ 180.0+  15.0  180.0+  10.0  180.0+  13.0  180.0+
#> [411] 180.0+  10.0    1.0   57.0  180.0+   3.0+ 180.0+  12.0  180.0+ 180.0+
#> [421] 180.0+ 180.0+  34.0  180.0+ 177.0+ 180.0+   5.0   11.0+   4.0+ 180.0+
#> [431]   7.0   15.0+ 180.0+  10.0  180.0+   3.0  180.0+   6.0  180.0+ 180.0+
#> [441]  85.0  180.0+  17.0+ 180.0+   4.0    7.0  180.0+  12.0  180.0+  46.0 
#> [451]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0    5.0  180.0+
#> [461] 180.0+ 180.0+   1.0   12.0  180.0+   7.0+   3.0  180.0+ 176.0+  18.0 
#> [471]  47.0  180.0+  11.0  180.0+   8.0+   7.0  180.0+  32.0   10.0  180.0+
#> [481] 172.0  119.0   12.0  180.0+   8.0  180.0+   1.0   80.0    4.0+ 180.0+
#> [491] 152.0+   3.0   24.0   32.0   23.0    6.0    3.0+ 180.0+ 180.0+ 180.0+
#> [501]   1.0    4.0    4.0    6.0    2.0+ 180.0+   1.0   43.0    3.0    6.0 
#> [511] 138.0   71.0    8.0   40.0   17.0   10.0+ 180.0+  93.0  164.0  173.0 
#> [521] 180.0+  37.0  180.0+   7.0+  22.0   15.0+   5.0+ 180.0+ 171.0+  20.0+
#> [531]   1.0   10.0  180.0+  85.0   10.0    6.0+   6.0  180.0+   5.0    1.0 
#> [541] 180.0+ 180.0+ 108.0  180.0+   4.0    6.0  180.0+ 180.0+ 103.0  180.0+
#> [551] 177.0+ 169.0    4.0  180.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0    8.0+
#> [561]  16.0  180.0+ 180.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+ 180.0+   2.0 
#> [571] 128.0    3.0+  62.0  180.0+   4.0    1.0   38.0  180.0+ 180.0+  89.0 
#> [581] 180.0+ 180.0+ 180.0+ 114.0  180.0+ 154.0  180.0+   4.0+ 180.0+   1.0 
#> [591]  12.0   16.0+   5.0+ 180.0+  77.0  180.0+  83.0   88.0  180.0+ 165.0 
#> [601]   3.0  180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+ 174.0    6.0 
#> [611]  70.0   43.0  180.0+ 180.0+   3.0   13.0  180.0+  38.0    4.0  177.0 
#> [621]   6.0+   4.0+  20.0    4.0   22.0   11.0  180.0+ 115.0  180.0+   3.0+
#> [631]   8.0+   4.0    4.0  119.0    1.0+ 180.0+  29.0  180.0+  46.0    1.0+
#> [641]   8.0  180.0+  24.0  180.0+ 180.0+   4.0    1.0   36.0   89.0   75.0 
#> [651]   1.0   33.0  180.0+ 169.0   52.0    7.0    4.0  180.0+   8.0+  76.0 
#> [661] 180.0+  67.0   12.0    8.0   26.0   53.0    7.0+   2.0  180.0+   3.0 
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
#>   0.8336853 
```
