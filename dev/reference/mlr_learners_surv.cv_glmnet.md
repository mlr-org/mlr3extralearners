# Cross-Validated GLM with Elastic Net Regularization Survival Learner

Generalized linear models with elastic net regularization. Calls
[`glmnet::cv.glmnet()`](https://glmnet.stanford.edu/reference/cv.glmnet.html)
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
    [`glmnet::predict.cv.glmnet()`](https://glmnet.stanford.edu/reference/predict.cv.glmnet.html).

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
[`glmnet::glmnet()`](https://glmnet.stanford.edu/reference/glmnet.html).
During prediction, the offset column from the test set is used only if
`use_pred_offset = TRUE` (default), passed via the `newoffset` argument
in
[`glmnet::predict.glmnet()`](https://glmnet.stanford.edu/reference/predict.glmnet.html).
Otherwise, if the user sets `use_pred_offset = FALSE`, a zero offset is
applied, effectively disabling the offset adjustment during prediction.

## Stratification

Parameter `strata` can be set to the name of one task column used as the
stratification variable. During training, the column is removed from the
data, converted to an integer, and is attached to the survival response
via
[`glmnet::stratifySurv()`](https://glmnet.stanford.edu/reference/stratifySurv.html).
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
#> min 0.00313    45   2.763 0.1356       6
#> 1se 0.06742    12   2.890 0.1290       3
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  33   2      0          2        0   150
#>   [3,]  35   5      1          2        0   172
#>   [4,]  35  10      1          9        0   106
#>   [5,]  34   5      0          5        0   120
#>   [6,]  35   2      1          1        1   112
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  38   2      0        115        0   150
#>  [10,]  36   1      0        180        1   155
#>  [11,]  35   0      0        180        1   119
#>  [12,]  38  12      1          8        1   120
#>  [13,]  36   5      1          0        1   115
#>  [14,]  33   6      1          1        1   115
#>  [15,]  38  16      1         10        0   160
#>  [16,]  40  12      1          9        0   153
#>  [17,]  37   1      1          0        1   146
#>  [18,]  38   5      1          3        0   125
#>  [19,]  42   2      0          2        0   140
#>  [20,]  40  11      1         10        1   120
#>  [21,]  42   2      0        180        0   100
#>  [22,]  41   2      1          1        0   166
#>  [23,]  40   1      1          0        1   145
#>  [24,]  42   4      0        180        0   162
#>  [25,]  42  15      1         13        1   125
#>  [26,]  40   3      1          1        0   170
#>  [27,]  42  12      1         10        1   170
#>  [28,]  43   2      1          1        1   116
#>  [29,]  42   2      0        180        1   124
#>  [30,]  44   5      1          1        0   170
#>  [31,]  41  13      1          1        0   140
#>  [32,]  45   9      1          7        0   110
#>  [33,]  41   5      1          4        1   141
#>  [34,]  44   2      1          1        1   150
#>  [35,]  48  15      0        180        1   160
#>  [36,]  45   3      0        150        0   130
#>  [37,]  43  29      0        180        1   180
#>  [38,]  45   4      1          0        0   124
#>  [39,]  43  10      0        180        0   185
#>  [40,]  47   6      1          0        1   116
#>  [41,]  46  13      1         10        0   100
#>  [42,]  44   0      1          0        1    96
#>  [43,]  49   5      0         73        1   136
#>  [44,]  46   2      1          1        1   122
#>  [45,]  46   6      1          0        1   100
#>  [46,]  44   4      1          0        1   114
#>  [47,]  47   2      0        180        0   108
#>  [48,]  45   5      0        180        1   190
#>  [49,]  46   5      1          3        0   130
#>  [50,]  46   4      0        180        1   121
#>  [51,]  44   2      0        180        0   142
#>  [52,]  46  15      0        180        1   120
#>  [53,]  47   3      1          1        1   120
#>  [54,]  48   3      0        180        0   154
#>  [55,]  47   5      1          3        1   130
#>  [56,]  47   9      1          6        0   170
#>  [57,]  49   4      0        180        0   117
#>  [58,]  47  10      0         10        1   140
#>  [59,]  50   1      1          0        1   129
#>  [60,]  48   2      1          0        0   184
#>  [61,]  50   4      1          1        0   125
#>  [62,]  50   6      1          2        1   140
#>  [63,]  49   7      1          7        1   110
#>  [64,]  46   3      1          1        1   140
#>  [65,]  46   9      1          9        1   122
#>  [66,]  49   2      0          2        0   105
#>  [67,]  49  15      1         11        1   160
#>  [68,]  47   2      0        180        0   150
#>  [69,]  49  23      0        179        1   112
#>  [70,]  46   6      1          0        1   156
#>  [71,]  52   2      0        180        1   170
#>  [72,]  50   7      1          0        1    92
#>  [73,]  51   3      1          2        0   113
#>  [74,]  50   9      0        180        0   130
#>  [75,]  49   7      1          4        1    90
#>  [76,]  47   8      0        180        0   160
#>  [77,]  47   6      0        180        1   162
#>  [78,]  52   2      0        180        0   155
#>  [79,]  46   3      0        180        1   120
#>  [80,]  46   1      1          1        0   145
#>  [81,]  48  17      1         10        0   111
#>  [82,]  47   2      1          1        0   110
#>  [83,]  52   4      1          4        0   152
#>  [84,]  49   9      1          3        0   102
#>  [85,]  53   5      0         77        0   159
#>  [86,]  54   6      1          3        0   129
#>  [87,]  51   3      1          1        0   140
#>  [88,]  50   2      0          5        1   106
#>  [89,]  50  14      1         13        0   170
#>  [90,]  48   3      1          2        0   150
#>  [91,]  51  25      1          1        0   202
#>  [92,]  49   5      1          2        1   150
#>  [93,]  53   4      0          4        0   140
#>  [94,]  52  14      1          7        1   200
#>  [95,]  48   6      0        180        0   160
#>  [96,]  48  11      1         10        0   120
#>  [97,]  53   4      1          0        1   156
#>  [98,]  54   9      1          0        1   138
#>  [99,]  49  16      0         16        0   125
#> [100,]  55   3      1          1        0   150
#> [101,]  54  23      1         10        0   131
#> [102,]  55   6      1          2        1   114
#> [103,]  54   9      1          1        0   130
#> [104,]  55   4      1          2        0   150
#> [105,]  52   4      0        180        1   180
#> [106,]  51  13      1         11        0   145
#> [107,]  50   5      1          4        1   150
#> [108,]  52   4      0        180        0   183
#> [109,]  53   8      1          0        1   130
#> [110,]  50   7      1          0        1   127
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
#> [121,]  53  10      1          9        0   172
#> [122,]  55   6      0        180        1   100
#> [123,]  55   6      1          5        1   138
#> [124,]  54  12      1          0        1   190
#> [125,]  55   2      0        134        1   140
#> [126,]  54   3      0        180        0   128
#> [127,]  56   3      0          8        1   139
#> [128,]  57   3      0          3        0   120
#> [129,]  54   7      1          2        0   129
#> [130,]  54   2      1          1        0   135
#> [131,]  52   9      1          3        0   170
#> [132,]  54   2      1          1        1   176
#> [133,]  57   5      1          3        1   138
#> [134,]  57   1      0          1        1   100
#> [135,]  52  15      1         14        0   130
#> [136,]  53   3      1          0        1   200
#> [137,]  58   8      0          8        1   130
#> [138,]  57   0      0          0        1   150
#> [139,]  53  21      1         13        1   130
#> [140,]  59   3      1          1        0   172
#> [141,]  58   6      1          0        1    90
#> [142,]  53  15      1         10        1   130
#> [143,]  54  17      1          8        1   227
#> [144,]  55   9      1          2        1   147
#> [145,]  56   5      0          5        1   150
#> [146,]  57   4      1          2        1   185
#> [147,]  53   4      0        147        1   145
#> [148,]  55   3      1          2        0   140
#> [149,]  55   5      0          5        1   131
#> [150,]  56   4      0          4        0   164
#> [151,]  59  15      1         10        0   140
#> [152,]  58   9      1          0        1   180
#> [153,]  55   5      1          0        0   140
#> [154,]  56   7      1          5        1   120
#> [155,]  55   2      0          2        0   106
#> [156,]  59   9      1          1        1   125
#> [157,]  59   3      0        180        0   120
#> [158,]  58   4      1          0        1   160
#> [159,]  60   5      1          1        0   138
#> [160,]  57   5      0        180        1   130
#> [161,]  57  10      1          9        0   103
#> [162,]  59   5      0        180        1   155
#> [163,]  58  26      1          0        1   189
#> [164,]  58   4      1          3        0   120
#> [165,]  60   0      1          0        1    80
#> [166,]  59   2      1          1        0   140
#> [167,]  58   8      0        161        1   140
#> [168,]  58  14      1          6        0   190
#> [169,]  61   4      1          3        0   151
#> [170,]  61   3      1          2        1   102
#> [171,]  58   1      0          1        1   100
#> [172,]  61  20      1         13        0   130
#> [173,]  57  13      1         10        0   110
#> [174,]  57   2      1          0        1   116
#> [175,]  57   4      1          3        0   138
#> [176,]  57  11      0        180        1   150
#> [177,]  61   3      0         17        0   143
#> [178,]  56  14      0         45        0   130
#> [179,]  57   3      1          2        0   120
#> [180,]  56  13      1          6        1   158
#> [181,]  55   4      1          3        1   160
#> [182,]  60  12      1          0        1   114
#> [183,]  61   4      1          0        1   115
#> [184,]  56   8      1          8        0   120
#> [185,]  59  11      1          8        1   190
#> [186,]  57   1      0          1        0   126
#> [187,]  57  15      1         13        1   110
#> [188,]  59   5      1          2        0   182
#> [189,]  59  10      0        180        0   160
#> [190,]  61  13      0         13        0   210
#> [191,]  58   8      1          5        0   152
#> [192,]  62   7      1          2        1   180
#> [193,]  57   3      1          0        0   100
#> [194,]  61  18      0        170        0   140
#> [195,]  58   8      1          3        1   150
#> [196,]  60   7      0          7        0   147
#> [197,]  61   6      0          6        0   134
#> [198,]  60  17      1          8        1   140
#> [199,]  58   3      1          0        1   146
#> [200,]  62   4      1          3        0   173
#> [201,]  58   2      0         30        0   202
#> [202,]  59  16      1          9        1   133
#> [203,]  61   5      0          5        1   110
#> [204,]  61   5      0          5        1   160
#> [205,]  58  11      1          9        0   179
#> [206,]  57   2      1          1        0   159
#> [207,]  62   1      1          0        1   172
#> [208,]  63   3      1          1        0   180
#> [209,]  63   1      0        180        1   130
#> [210,]  63   4      1          3        0   222
#> [211,]  62   3      0        180        1   105
#> [212,]  63  15      1         10        1   126
#> [213,]  64   4      0        180        0   130
#> [214,]  61   9      1          9        1   150
#> [215,]  58   9      1          9        0   110
#> [216,]  62   7      0          7        0   150
#> [217,]  59   1      0         22        1   162
#> [218,]  59   4      0        180        0   196
#> [219,]  60   7      1          5        1   141
#> [220,]  60   7      1          1        1    90
#> [221,]  65  13      0        180        1   100
#> [222,]  63   1      0          1        0   162
#> [223,]  63   1      0          1        0   130
#> [224,]  62   6      0        180        0   170
#> [225,]  64  10      1          9        0   160
#> [226,]  62   6      0          6        0   120
#> [227,]  63  12      1         10        0   200
#> [228,]  60   8      0         17        1   130
#> [229,]  61   6      1          1        1   117
#> [230,]  66   1      1          0        1   120
#> [231,]  63  10      1          0        1   148
#> [232,]  63  14      1          9        0   123
#> [233,]  65  36      1         11        0   140
#> [234,]  63   4      1          3        0   162
#> [235,]  61  10      1          2        1   194
#> [236,]  63  12      1          9        0   114
#> [237,]  63   7      0        180        0   120
#> [238,]  66   5      1          0        1   110
#> [239,]  65   8      1          0        0   168
#> [240,]  65  10      1          8        1   120
#> [241,]  60   6      0        180        0   130
#> [242,]  64  21      1         10        0   190
#> [243,]  61  12      1         11        0   154
#> [244,]  64   9      0        180        0   150
#> [245,]  61   4      0        180        1   113
#> [246,]  63  16      1          7        1   110
#> [247,]  64   7      0        180        1   120
#> [248,]  66   6      1          1        1   130
#> [249,]  62   3      1          1        1   199
#> [250,]  65   6      0          9        0   112
#> [251,]  63   5      1          4        0   170
#> [252,]  62  13      1         11        0   180
#> [253,]  67  11      0         11        1   100
#> [254,]  64   2      0          2        0   201
#> [255,]  66  18      1          5        0   142
#> [256,]  66  16      1         11        1   169
#> [257,]  63   9      1          8        1   160
#> [258,]  63   3      1          2        0   120
#> [259,]  63   2      1          0        0   140
#> [260,]  67   6      0        180        1   170
#> [261,]  68   5      1          4        1   150
#> [262,]  64  13      1         12        1   150
#> [263,]  66   7      1          0        1   115
#> [264,]  66  13      1          0        0   118
#> [265,]  65   3      0          3        0   105
#> [266,]  67   4      1          3        0   130
#> [267,]  66   6      1          0        1   140
#> [268,]  65   2      1          1        1   170
#> [269,]  68   1      0        180        1   166
#> [270,]  64  10      1          9        1   110
#> [271,]  63  10      0         16        1   160
#> [272,]  66  14      0        180        0   130
#> [273,]  68  18      0        180        1   260
#> [274,]  65  17      1         14        1   100
#> [275,]  65  18      1          3        0   120
#> [276,]  63   1      1          0        1   155
#> [277,]  63  10      0         18        1   130
#> [278,]  67  11      0         11        0   150
#> [279,]  68  14      0         79        0   172
#> [280,]  65  15      1         12        1   150
#> [281,]  66  11      1          0        0   100
#> [282,]  69  12      0         15        1   140
#> [283,]  63   2      0        180        0   150
#> [284,]  65  11      1          6        0   130
#> [285,]  69  21      1         10        0   180
#> [286,]  66   9      1          8        0   130
#> [287,]  65   8      1          0        1    90
#> [288,]  67   1      0        180        1   160
#> [289,]  68  10      1         10        1   150
#> [290,]  65   1      1          0        0   133
#> [291,]  63   2      1          0        0    99
#> [292,]  66  19      1         12        1   150
#> [293,]  69   6      0         99        1   140
#> [294,]  64   4      0        179        0   160
#> [295,]  70  15      1         12        1   132
#> [296,]  64  11      0         11        0   125
#> [297,]  67   2      0         18        0   131
#> [298,]  66   4      0        180        0   177
#> [299,]  68   4      1          0        1   160
#> [300,]  69   4      1          3        1   150
#> [301,]  69   8      0         93        0   140
#> [302,]  64  21      0         21        1   155
#> [303,]  66   6      0        180        0   140
#> [304,]  68  18      1          0        1   160
#> [305,]  65   6      0        101        1   115
#> [306,]  68   4      0          4        1   190
#> [307,]  70   7      1          0        1   190
#> [308,]  69   8      0        180        1   153
#> [309,]  66   4      0        180        0   130
#> [310,]  67  10      1          9        0   200
#> [311,]  68  18      1         14        1   170
#> [312,]  69   0      0          0        1   148
#> [313,]  65   2      0        180        0   130
#> [314,]  68   7      1          0        1   150
#> [315,]  67  14      1         13        0   130
#> [316,]  65  14      1         13        1   150
#> [317,]  71   7      0          7        0   230
#> [318,]  66   2      0          2        1   228
#> [319,]  71   3      0        103        0   133
#> [320,]  69   3      0          3        1   130
#> [321,]  70  22      1         13        0   103
#> [322,]  67   5      0          5        0   130
#> [323,]  68   6      0        180        0   145
#> [324,]  69   8      1          5        1   195
#> [325,]  72   3      1          0        1   132
#> [326,]  72   7      0          7        1   110
#> [327,]  69   8      1          7        1   108
#> [328,]  66   2      1          1        0   123
#> [329,]  69  19      0        180        0   130
#> [330,]  69  11      1          0        1   120
#> [331,]  66   2      0        180        0   130
#> [332,]  67   7      1          4        0   122
#> [333,]  69   8      1          2        0   121
#> [334,]  67  13      1          9        0   130
#> [335,]  70   3      0        123        0   130
#> [336,]  70   9      0        180        1   142
#> [337,]  72   5      1          4        0   170
#> [338,]  67  22      1          1        1   140
#> [339,]  68   3      0         19        0   135
#> [340,]  67  12      1          8        0   120
#> [341,]  69   1      0          1        1   110
#> [342,]  67   1      0          1        1    60
#> [343,]  67   4      0         60        1   136
#> [344,]  69   5      0         76        0   120
#> [345,]  67   8      1          0        1   130
#> [346,]  72  13      1         11        1   195
#> [347,]  68  10      1          8        1   160
#> [348,]  70  35      1          0        1   105
#> [349,]  72  30      1          0        1   145
#> [350,]  70   7      0          7        0   102
#> [351,]  68   7      1          2        0   135
#> [352,]  73  20      1          0        1   170
#> [353,]  71   6      0          9        0   120
#> [354,]  69  10      1          6        1   120
#> [355,]  67   8      0        180        1   170
#> [356,]  73  13      0        152        1   130
#> [357,]  72   2      0          2        1   100
#> [358,]  72   6      1          5        0   115
#> [359,]  71   1      0        173        1   188
#> [360,]  68  23      0        180        1   220
#> [361,]  70   3      0        180        0   121
#> [362,]  71   3      1          2        0   150
#> [363,]  68   4      1          3        0   210
#> [364,]  72   5      0         28        0   120
#> [365,]  69   8      1          1        0   164
#> [366,]  68   7      0        180        1   130
#> [367,]  72  16      1          1        1   130
#> [368,]  73   7      0          7        1   140
#> [369,]  68  15      1         13        1   130
#> [370,]  70   3      0          3        1   159
#> [371,]  72   6      0        180        1   130
#> [372,]  73   0      0        180        1   161
#> [373,]  74   8      1          0        1    85
#> [374,]  73   4      0        180        1   154
#> [375,]  71   3      1          1        0   150
#> [376,]  74  20      0         20        1   180
#> [377,]  71  20      1         10        0   140
#> [378,]  73   3      1          0        1   136
#> [379,]  70   5      1          0        1   190
#> [380,]  71   3      1          2        1   190
#> [381,]  73  10      1          8        0   106
#> [382,]  69  12      1          1        1   149
#> [383,]  74   4      0          4        0   120
#> [384,]  72   5      1          3        1   160
#> [385,]  70   3      0        180        1   154
#> [386,]  72  15      1          0        1   150
#> [387,]  71   7      1          2        0   143
#> [388,]  71  13      1          8        0   121
#> [389,]  69   2      1          1        1    80
#> [390,]  70   4      1          0        1   140
#> [391,]  74   7      1          0        1   117
#> [392,]  72  10      1          8        1   153
#> [393,]  69   7      0        180        1   144
#> [394,]  72  15      1         13        0   156
#> [395,]  75   2      1          1        0   145
#> [396,]  72  10      1          9        1   160
#> [397,]  73  10      1         10        1   120
#> [398,]  73   1      0          1        1    80
#> [399,]  75   9      1          7        0   140
#> [400,]  71   4      0          4        0   134
#> [401,]  72  15      1         12        1   120
#> [402,]  70   7      1          4        0   184
#> [403,]  72   1      1          1        0   168
#> [404,]  72   7      0         57        1   145
#> [405,]  73  10      0        180        0   162
#> [406,]  72  11      0         11        1   140
#> [407,]  70   3      0          3        0   150
#> [408,]  76  25      1         12        1   170
#> [409,]  73  12      1         12        1   140
#> [410,]  72   2      0        180        0   120
#> [411,]  75   1      0        180        1   140
#> [412,]  72   4      1          0        1   197
#> [413,]  71   3      1          0        0   144
#> [414,]  73   5      0        180        0   126
#> [415,]  74  34      1          8        1   233
#> [416,]  76   3      1          0        1   120
#> [417,]  72   5      0        180        0   154
#> [418,]  76   5      0          5        1   130
#> [419,]  77  11      0         11        1   150
#> [420,]  77   4      0          4        0   185
#> [421,]  72   7      1          2        0   142
#> [422,]  73  15      0         15        1   160
#> [423,]  71  16      0        180        0   140
#> [424,]  73  10      1         10        0   124
#> [425,]  74   7      0        180        1   150
#> [426,]  76   1      0        180        0   114
#> [427,]  76   8      1          0        1   141
#> [428,]  73   6      0          6        1   114
#> [429,]  75  23      1         14        1   110
#> [430,]  72   4      0         85        1   120
#> [431,]  76  17      1          0        1   200
#> [432,]  73   4      1          3        1   125
#> [433,]  76  13      1         10        0   110
#> [434,]  75   4      1          0        1   122
#> [435,]  75   7      0          7        0   190
#> [436,]  75   0      0          0        1   130
#> [437,]  75  12      0         12        1   160
#> [438,]  74   8      1          0        1   105
#> [439,]  76  13      1          8        1   148
#> [440,]  74   6      0        180        0   160
#> [441,]  75   1      0          1        1   125
#> [442,]  74   2      0        180        0   111
#> [443,]  72   5      0        180        0   120
#> [444,]  78  12      1         11        1   160
#> [445,]  76  44      1         10        0   105
#> [446,]  76   5      0        180        0   185
#> [447,]  74  10      1          0        1   135
#> [448,]  76   5      1          0        1   167
#> [449,]  74   8      1          8        1   170
#> [450,]  75   9      0        180        1   140
#> [451,]  73  33      1         12        1   175
#> [452,]  77   5      1          0        0   123
#> [453,]  73  10      1          9        0   146
#> [454,]  77  12      0        180        0   130
#> [455,]  77   1      1          0        1    90
#> [456,]  76  12      1         11        1   120
#> [457,]  73   7      1          0        0   174
#> [458,]  74   6      0         79        1   140
#> [459,]  75   3      1          1        1   171
#> [460,]  74   9      1          8        0   200
#> [461,]  75   6      0        180        0   150
#> [462,]  79  10      1          8        0   190
#> [463,]  78  18      0         18        1   144
#> [464,]  76  29      0         47        0    90
#> [465,]  74   2      0        180        0   100
#> [466,]  78   8      1          6        1   110
#> [467,]  74   7      0          7        0   161
#> [468,]  76  13      1          1        1   170
#> [469,]  78  32      1          9        1   198
#> [470,]  79   6      0        180        0   170
#> [471,]  80  10      1          6        1   147
#> [472,]  78   0      0        180        1   212
#> [473,]  78  13      1          5        0   130
#> [474,]  75   5      0        119        1   150
#> [475,]  78  15      0        180        1   270
#> [476,]  80   8      0          8        1   120
#> [477,]  74  10      1          8        0   135
#> [478,]  78  12      1          9        0   150
#> [479,]  75   4      1          0        0   212
#> [480,]  77   2      1          0        1   143
#> [481,]  75  11      1          4        0   162
#> [482,]  75   3      0          3        0     0
#> [483,]  76   7      0         29        1   150
#> [484,]  80   9      0         23        1   128
#> [485,]  80   6      0          6        1   150
#> [486,]  78  11      1          1        1   140
#> [487,]  79  11      0        180        0   160
#> [488,]  78  14      1          0        1   140
#> [489,]  78  11      1          8        1   118
#> [490,]  76   4      0          4        1   160
#> [491,]  76  10      1          8        0   180
#> [492,]  75   2      1          1        1   204
#> [493,]  78  11      0        180        1   135
#> [494,]  76   1      0          1        1   140
#> [495,]  77  31      1          3        1   161
#> [496,]  76   1      0          1        1    90
#> [497,]  78   7      1          0        1   110
#> [498,]  79   3      0          3        0   120
#> [499,]  77   7      0        180        1   170
#> [500,]  77   6      0          6        1   144
#> [501,]  79   4      1          0        1   120
#> [502,]  77   9      1          4        0   141
#> [503,]  82   5      0          8        1   120
#> [504,]  80  40      1          0        1   138
#> [505,]  78   4      0         59        1   112
#> [506,]  79  10      0         10        1   120
#> [507,]  80  15      1          0        1    90
#> [508,]  81   4      1          2        1   126
#> [509,]  79  28      0        164        0   100
#> [510,]  78  32      0        180        1   130
#> [511,]  81   3      0        180        0   184
#> [512,]  81   2      0        175        0   172
#> [513,]  80   5      1          1        1   108
#> [514,]  78   4      0        180        0   175
#> [515,]  79   3      0          3        1   101
#> [516,]  78  26      1          5        0   194
#> [517,]  81   4      1          1        1   104
#> [518,]  77   5      0         85        0   188
#> [519,]  80   2      1          1        0   168
#> [520,]  79   6      0          6        0   152
#> [521,]  80   6      1          0        1   119
#> [522,]  78   2      0        180        0   148
#> [523,]  80   5      0          5        1   130
#> [524,]  79  10      0        180        1   150
#> [525,]  78  12      0        180        0   134
#> [526,]  79   1      0        125        0   193
#> [527,]  84  22      1         10        0   180
#> [528,]  79   4      0          4        1   121
#> [529,]  80   6      0          6        1   110
#> [530,]  83   9      1          5        1   170
#> [531,]  82   5      0        180        0   110
#> [532,]  83   5      0        180        0   148
#> [533,]  79   7      1          6        0   130
#> [534,]  81   5      0        177        0    41
#> [535,]  80  11      1          8        0   170
#> [536,]  79   4      0          4        1   183
#> [537,]  78   9      1          4        1   120
#> [538,]  82   8      1          1        0   128
#> [539,]  79   1      0        180        1   170
#> [540,]  81  15      0        180        1   140
#> [541,]  81  20      1          9        0   170
#> [542,]  83   8      0          8        0   115
#> [543,]  80   6      1          0        1   150
#> [544,]  80  11      1          8        0   110
#> [545,]  81   8      0        180        0   146
#> [546,]  80   8      1          7        0   160
#> [547,]  79   7      0        177        0   197
#> [548,]  79   0      1          0        1    96
#> [549,]  85   4      0        180        0    90
#> [550,]  81   2      1          1        0   198
#> [551,]  83   2      0          2        1   155
#> [552,]  82   6      0        128        1   100
#> [553,]  84   4      0        167        0   198
#> [554,]  80   3      1          1        1   230
#> [555,]  82  23      1          0        0   110
#> [556,]  84   5      0        180        1   203
#> [557,]  81   1      0          1        1   150
#> [558,]  84   1      0         38        1   205
#> [559,]  83   3      0        180        0   174
#> [560,]  81   4      0         90        1   138
#> [561,]  79   9      1          8        0   150
#> [562,]  85   3      1          2        1   160
#> [563,]  84   4      0         89        1   129
#> [564,]  80   6      0         71        1   189
#> [565,]  83   1      0          1        1   100
#> [566,]  83   9      0        180        0   198
#> [567,]  83   3      0        114        0    98
#> [568,]  81  14      1         12        1   128
#> [569,]  83   2      0        154        0   130
#> [570,]  85   9      1          6        1   160
#> [571,]  81   4      0          4        0   175
#> [572,]  84  15      1         13        1   110
#> [573,]  81   1      0          1        1   145
#> [574,]  81  12      0         12        1   163
#> [575,]  81   4      0          4        0   160
#> [576,]  86  12      0        180        1   120
#> [577,]  81  19      1         14        0   120
#> [578,]  82   3      1          2        0   130
#> [579,]  82  15      1          0        0   183
#> [580,]  80   2      0         88        0   135
#> [581,]  83   7      0        126        0   135
#> [582,]  81  16      1          9        0   180
#> [583,]  82   9      0        180        1   134
#> [584,]  84   3      0        180        1   120
#> [585,]  81  13      0        180        0   152
#> [586,]  85   3      0          3        1   118
#> [587,]  81   2      1          0        1   118
#> [588,]  81   4      0        180        0   160
#> [589,]  83   9      0        180        1   149
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
#> [600,]  86   2      0        180        1   169
#> [601,]  83  13      1         12        0   170
#> [602,]  84   7      1          2        0   148
#> [603,]  87   2      0        180        0   113
#> [604,]  84   3      0        180        1   170
#> [605,]  86   4      0         38        1   122
#> [606,]  82   4      0          4        0   130
#> [607,]  86  13      0        177        0   163
#> [608,]  85   3      0          3        1   113
#> [609,]  86   6      0          6        1   117
#> [610,]  88   4      0          4        0   100
#> [611,]  83  20      1          3        1   150
#> [612,]  88   4      0          4        1   115
#> [613,]  83   9      0         65        1   150
#> [614,]  86   9      1          7        1   142
#> [615,]  87   2      0        180        1   130
#> [616,]  86   6      0         46        0   173
#> [617,]  88   3      0        115        0   110
#> [618,]  88   2      0        180        1    68
#> [619,]  88   4      0          4        0    86
#> [620,]  89   4      0          4        1   153
#> [621,]  89   5      0        119        1   140
#> [622,]  87   6      0        180        1   110
#> [623,]  87   1      0          1        0   170
#> [624,]  84   8      0        180        1   119
#> [625,]  85   8      0          8        1   136
#> [626,]  84   2      0        110        1   174
#> [627,]  87  15      1          9        1   138
#> [628,]  84   0      0        180        1   136
#> [629,]  89  10      0         46        1   170
#> [630,]  90  14      0         14        1   100
#> [631,]  88   1      0          1        0   135
#> [632,]  91   8      0          8        0   100
#> [633,]  87   2      0        180        0   160
#> [634,]  87   6      1          0        0   125
#> [635,]  91  10      0        145        0   135
#> [636,]  88   7      0         24        0   119
#> [637,]  90  11      1         10        1   186
#> [638,]  87   6      0        126        1   168
#> [639,]  86  10      0        180        1   137
#> [640,]  86   9      1          7        0   130
#> [641,]  90   4      1          0        0   121
#> [642,]  91   1      0          1        1    74
#> [643,]  87   5      0         36        1   150
#> [644,]  90   5      1          0        1   125
#> [645,]  88   3      1          2        0   159
#> [646,]  89   3      1          1        1   160
#> [647,]  92   1      0          1        1   167
#> [648,]  88   5      0        158        0   100
#> [649,]  87   7      0         74        1   105
#> [650,]  89  12      1          0        1   130
#> [651,]  91   5      0        169        1   176
#> [652,]  89  52      0         52        1   130
#> [653,]  92   7      0          7        1   110
#> [654,]  89   4      0          4        1   159
#> [655,]  91   0      0          0        0     0
#> [656,]  90  18      0        180        0   188
#> [657,]  90  19      1         11        1   129
#> [658,]  94   6      0         50        0    78
#> [659,]  90   1      0          1        1   118
#> [660,]  91   2      0          2        1   116
#> [661,]  93   8      0        179        1   110
#> [662,]  94   8      0          8        1   142
#> [663,]  91   1      0        180        0   158
#> [664,]  94   3      0         26        1   144
#> [665,]  91  12      0         53        1   212
#> [666,]  93   0      1          0        1   122
#> [667,]  92   2      0          2        0   112
#> [668,]  93   4      0        180        1   135
#> [669,]  96   3      1          0        1   104
#> [670,]  96  15      1          0        1   140
#> 
#> $y
#>   [1] 180.0+   2.0+   5.0+ 180.0+   5.0+   2.0+ 180.0+ 180.0+ 115.0  180.0+
#>  [11] 180.0+  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+   2.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 155.0+
#>  [31] 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 150.0  180.0+ 180.0+ 180.0+   6.0+
#>  [41] 180.0+ 180.0+  73.0  161.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [51] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  10.0+ 172.0+ 180.0+
#>  [61] 180.0+ 180.0+   7.0  180.0+ 180.0+   2.0  179.0+ 180.0+ 179.0+ 180.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81]  88.0+ 180.0+   4.0+ 180.0+  77.0  180.0+ 180.0+   5.0  180.0+ 180.0+
#>  [91] 180.0+ 180.0+   4.0+  85.0  180.0+ 180.0+ 166.0+ 180.0+  16.0+ 180.0+
#> [101] 152.0+   6.0+ 180.0+ 180.0+ 180.0+  13.0+ 171.0+ 180.0+ 180.0+ 180.0+
#> [111] 180.0+   2.0  180.0+   7.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [121] 180.0+ 180.0+ 180.0+  12.0+ 134.0+ 180.0+   8.0    3.0+ 180.0+ 180.0+
#> [131] 180.0+ 180.0+ 140.0    1.0  180.0+ 180.0+   8.0+   0.5  180.0+ 180.0+
#> [141] 180.0+ 180.0+ 171.0+  15.0    5.0+   4.0+ 147.0+ 180.0+   5.0+   4.0+
#> [151] 180.0+   9.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [161] 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 161.0+ 171.0+ 180.0+   3.0 
#> [171]   1.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  17.0   45.0    3.0+ 180.0+
#> [181] 180.0+ 172.0+ 180.0+   8.0  180.0+   1.0+  15.0  180.0+ 180.0+  13.0+
#> [191]   8.0+ 180.0+ 180.0+ 170.0  180.0+   7.0+   6.0  180.0+   3.0+ 180.0+
#> [201]  30.0  180.0+   5.0    5.0+ 180.0+ 180.0+   1.0  180.0+ 180.0+ 180.0+
#> [211] 180.0+ 180.0+ 180.0+ 180.0+   9.0    7.0+  22.0  180.0+  84.0  180.0+
#> [221] 180.0+   1.0    1.0  180.0+ 167.0    6.0+ 180.0+  17.0  180.0+ 180.0+
#> [231] 180.0+  14.0+  36.0  180.0+  88.0   12.0  180.0+ 180.0+ 180.0+ 180.0+
#> [241] 180.0+ 180.0+  12.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0 
#> [251] 180.0+ 180.0+  11.0+   2.0+  18.0+ 180.0+ 180.0+   3.0+   2.0+ 180.0+
#> [261]   5.0+  13.0  179.0+ 166.0+   3.0  180.0+ 180.0+ 175.0+ 180.0+ 180.0+
#> [271]  16.0  180.0+ 180.0+ 180.0+ 123.0+   1.0+  18.0   11.0+  79.0   15.0+
#> [281] 180.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+   8.0+ 180.0+  10.0  180.0+
#> [291] 180.0+  19.0+  99.0  179.0+ 180.0+  11.0+  18.0  180.0+ 180.0+ 152.0+
#> [301]  93.0   21.0+ 180.0+  18.0+ 101.0    4.0    7.0+ 180.0+ 180.0+ 174.0+
#> [311] 180.0+   0.5  180.0+ 180.0+ 180.0+  14.0+   7.0+   2.0  103.0    3.0+
#> [321] 180.0+   5.0+ 180.0+ 180.0+ 180.0+   7.0    8.0+   2.0+ 180.0+ 180.0+
#> [331] 180.0+   7.0    8.0+  13.0+ 123.0  180.0+ 180.0+  51.0   19.0  180.0+
#> [341]   1.0    1.0   60.0   76.0  180.0+ 132.0   10.0+ 180.0+ 162.0    7.0+
#> [351]   7.0+ 124.0    9.0  180.0+ 180.0+ 152.0    2.0  180.0+ 173.0+ 180.0+
#> [361] 180.0+ 180.0+ 180.0+  28.0  180.0+ 180.0+  16.0+   7.0+  15.0    3.0+
#> [371] 180.0+ 180.0+ 180.0+ 180.0+   3.0+  20.0   20.0  180.0+ 180.0+   3.0 
#> [381]  87.0   12.0    4.0+ 180.0+ 180.0+ 180.0+ 180.0+ 175.0    2.0  180.0+
#> [391] 180.0+  10.0+ 180.0+ 180.0+ 180.0+ 159.0   15.0    1.0  180.0+   4.0+
#> [401] 180.0+ 104.0+   1.0   57.0  180.0+  11.0    3.0+ 180.0+  12.0  180.0+
#> [411] 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+ 180.0+   5.0   11.0+   4.0+
#> [421]   7.0   15.0+ 180.0+  10.0  180.0+ 180.0+ 180.0+   6.0  180.0+  85.0 
#> [431]  17.0+ 180.0+ 174.0+   4.0    7.0    0.5   12.0  180.0+ 180.0+ 180.0+
#> [441]   1.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+   8.0  180.0+
#> [451]  33.0    5.0  180.0+ 180.0+   1.0   12.0    7.0+  79.0    3.0  168.0+
#> [461] 180.0+ 180.0+  18.0   47.0  180.0+   8.0+   7.0  180.0+  32.0  180.0+
#> [471]  10.0  180.0+ 172.0  119.0  180.0+   8.0  180.0+ 180.0+   4.0+   2.0 
#> [481] 152.0+   3.0   29.0   23.0    6.0  180.0+ 180.0+ 180.0+  11.0    4.0 
#> [491]  10.0+   2.0+ 180.0+   1.0  171.0    1.0   43.0    3.0  180.0+   6.0 
#> [501] 138.0   71.0    8.0   40.0   59.0   10.0+ 180.0+  93.0  164.0  180.0+
#> [511] 180.0+ 175.0+   5.0+ 180.0+   3.0  171.0+  71.0   85.0   10.0    6.0+
#> [521]   6.0  180.0+   5.0  180.0+ 180.0+ 125.0  180.0+   4.0    6.0    9.0+
#> [531] 180.0+ 180.0+ 180.0+ 177.0+ 169.0    4.0  180.0+ 180.0+ 180.0+ 180.0+
#> [541]  20.0    8.0+ 180.0+ 180.0+ 180.0+ 180.0+ 177.0+   0.5  180.0+ 180.0+
#> [551]   2.0  128.0  167.0    3.0+  62.0  180.0+   1.0   38.0  180.0+  90.0 
#> [561] 180.0+ 180.0+  89.0   71.0    1.0  180.0+ 114.0  180.0+ 154.0  180.0+
#> [571]   4.0+ 180.0+   1.0   12.0    4.0+ 180.0+ 180.0+   3.0   83.0   88.0 
#> [581] 126.0  180.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [591]   4.0+   5.0  180.0+ 174.0    6.0   70.0   43.0  180.0+ 180.0+ 180.0+
#> [601]  13.0  180.0+ 180.0+ 180.0+  38.0    4.0  177.0    3.0+   6.0+   4.0+
#> [611]  20.0    4.0   65.0   11.0  180.0+  46.0  115.0  180.0+   4.0    4.0 
#> [621] 119.0  180.0+   1.0+ 180.0+   8.0  110.0  180.0+ 180.0+  46.0   14.0 
#> [631]   1.0+   8.0  180.0+  25.0  145.0   24.0   11.0  126.0  180.0+ 180.0+
#> [641]   4.0    1.0   36.0   89.0   75.0    3.0+   1.0  158.0   74.0  180.0+
#> [651] 169.0   52.0    7.0    4.0    0.5  180.0+ 180.0+  50.0    1.0+   2.0 
#> [661] 179.0+   8.0+ 180.0+  26.0   53.0    0.5    2.0  180.0+   3.0   15.0+
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
#>   0.8101081 
```
