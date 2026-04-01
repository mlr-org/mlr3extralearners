# GLM with Elastic Net Regularization Survival Learner

Generalized linear models with elastic net regularization. Calls
[`glmnet::glmnet()`](https://glmnet.stanford.edu/reference/glmnet.html)
from package [glmnet](https://CRAN.R-project.org/package=glmnet).

## Initial parameter values

- `family` is set to `"cox"` and cannot be changed.

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`glmnet::predict.coxnet()`](https://glmnet.stanford.edu/reference/predict.glmnet.html).

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    [`glmnet::survfit.coxnet()`](https://glmnet.stanford.edu/reference/survfit.coxnet.html).
    Parameters `stype` and `ctype` relate to how `lp` predictions are
    transformed into survival predictions and are described in
    [`survival::survfit.coxph()`](https://rdrr.io/pkg/survival/man/survfit.coxph.html).
    By default the Breslow estimator is used for computing the baseline
    hazard.

**Caution**: This learner is different to learners calling
[`glmnet::cv.glmnet()`](https://glmnet.stanford.edu/reference/cv.glmnet.html)
in that it does not use the internal optimization of parameter `lambda`.
Instead, `lambda` needs to be tuned by the user (e.g., via
[mlr3tuning](https://CRAN.R-project.org/package=mlr3tuning)). When
`lambda` is tuned, the `glmnet` will be trained for each tuning
iteration. While fitting the whole path of `lambda`s would be more
efficient, as is done by default in
[`glmnet::glmnet()`](https://glmnet.stanford.edu/reference/glmnet.html),
tuning/selecting the parameter at prediction time (using parameter `s`)
is currently not supported in
[mlr3](https://CRAN.R-project.org/package=mlr3) (at least not in
efficient manner). Tuning the `s` parameter is, therefore, currently
discouraged.

When the data are i.i.d. and efficiency is key, we recommend using the
respective auto-tuning counterpart in
[`mlr_learners_surv.cv_glmnet()`](https://mlr3extralearners.mlr-org.com/reference/mlr_learners_surv.cv_glmnet.md).
However, in some situations this is not applicable, usually when data
are imbalanced or not i.i.d. (longitudinal, time-series) and tuning
requires custom resampling strategies (blocked design, stratification).

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

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("surv.glmnet")

## Meta Information

- Task type: “surv”

- Predict Types: “crank”, “distr”, “lp”

- Feature Types: “logical”, “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3proba](https://CRAN.R-project.org/package=mlr3proba),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [glmnet](https://CRAN.R-project.org/package=glmnet)

## Parameters

|                  |           |           |                         |                       |
|------------------|-----------|-----------|-------------------------|-----------------------|
| Id               | Type      | Default   | Levels                  | Range                 |
| alignment        | character | lambda    | lambda, fraction        | \-                    |
| alpha            | numeric   | 1         |                         | \\\[0, 1\]\\          |
| big              | numeric   | 9.9e+35   |                         | \\(-\infty, \infty)\\ |
| devmax           | numeric   | 0.999     |                         | \\\[0, 1\]\\          |
| dfmax            | integer   | \-        |                         | \\\[0, \infty)\\      |
| eps              | numeric   | 1e-06     |                         | \\\[0, 1\]\\          |
| epsnr            | numeric   | 1e-08     |                         | \\\[0, 1\]\\          |
| exact            | logical   | FALSE     | TRUE, FALSE             | \-                    |
| exclude          | untyped   | \-        |                         | \-                    |
| exmx             | numeric   | 250       |                         | \\(-\infty, \infty)\\ |
| fdev             | numeric   | 1e-05     |                         | \\\[0, 1\]\\          |
| gamma            | untyped   | \-        |                         | \-                    |
| grouped          | logical   | TRUE      | TRUE, FALSE             | \-                    |
| intercept        | logical   | TRUE      | TRUE, FALSE             | \-                    |
| keep             | logical   | FALSE     | TRUE, FALSE             | \-                    |
| lambda           | untyped   | \-        |                         | \-                    |
| lambda.min.ratio | numeric   | \-        |                         | \\\[0, 1\]\\          |
| lower.limits     | untyped   | -Inf      |                         | \-                    |
| maxit            | integer   | 100000    |                         | \\\[1, \infty)\\      |
| mnlam            | integer   | 5         |                         | \\\[1, \infty)\\      |
| mxit             | integer   | 100       |                         | \\\[1, \infty)\\      |
| mxitnr           | integer   | 25        |                         | \\\[1, \infty)\\      |
| nlambda          | integer   | 100       |                         | \\\[1, \infty)\\      |
| use_pred_offset  | logical   | TRUE      | TRUE, FALSE             | \-                    |
| parallel         | logical   | FALSE     | TRUE, FALSE             | \-                    |
| penalty.factor   | untyped   | \-        |                         | \-                    |
| pmax             | integer   | \-        |                         | \\\[0, \infty)\\      |
| pmin             | numeric   | 1e-09     |                         | \\\[0, 1\]\\          |
| prec             | numeric   | 1e-10     |                         | \\(-\infty, \infty)\\ |
| predict.gamma    | numeric   | gamma.1se |                         | \\(-\infty, \infty)\\ |
| relax            | logical   | FALSE     | TRUE, FALSE             | \-                    |
| s                | numeric   | 0.01      |                         | \\\[0, \infty)\\      |
| standardize      | logical   | TRUE      | TRUE, FALSE             | \-                    |
| thresh           | numeric   | 1e-07     |                         | \\\[0, \infty)\\      |
| trace.it         | integer   | 0         |                         | \\\[0, 1\]\\          |
| type.logistic    | character | Newton    | Newton, modified.Newton | \-                    |
| type.multinomial | character | ungrouped | ungrouped, grouped      | \-                    |
| upper.limits     | untyped   | Inf       |                         | \-                    |
| stype            | integer   | 2         |                         | \\\[1, 2\]\\          |
| ctype            | integer   | \-        |                         | \\\[1, 2\]\\          |

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
-\> `LearnerSurvGlmnet`

## Methods

### Public methods

- [`LearnerSurvGlmnet$new()`](#method-LearnerSurvGlmnet-new)

- [`LearnerSurvGlmnet$selected_features()`](#method-LearnerSurvGlmnet-selected_features)

- [`LearnerSurvGlmnet$clone()`](#method-LearnerSurvGlmnet-clone)

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

    LearnerSurvGlmnet$new()

------------------------------------------------------------------------

### Method `selected_features()`

Returns the set of selected features as reported by
[`glmnet::predict.glmnet()`](https://glmnet.stanford.edu/reference/predict.glmnet.html)
with `type` set to `"nonzero"`.

#### Usage

    LearnerSurvGlmnet$selected_features(lambda = NULL)

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

    LearnerSurvGlmnet$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("surv.glmnet")
print(learner)
#> 
#> ── <LearnerSurvGlmnet> (surv.glmnet): Regularized Generalized Linear Model ─────
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
#>    Df  %Dev   Lambda
#> 1   0  0.00 0.192200
#> 2   1  0.67 0.175100
#> 3   2  1.73 0.159500
#> 4   2  2.71 0.145400
#> 5   3  4.67 0.132400
#> 6   3  7.66 0.120700
#> 7   3  9.89 0.110000
#> 8   3 11.63 0.100200
#> 9   3 13.03 0.091290
#> 10  3 14.17 0.083180
#> 11  3 15.12 0.075790
#> 12  4 15.93 0.069060
#> 13  4 16.64 0.062920
#> 14  5 17.25 0.057330
#> 15  5 17.79 0.052240
#> 16  6 18.28 0.047600
#> 17  6 18.71 0.043370
#> 18  6 19.07 0.039520
#> 19  6 19.38 0.036010
#> 20  6 19.64 0.032810
#> 21  6 19.87 0.029890
#> 22  6 20.06 0.027240
#> 23  6 20.22 0.024820
#> 24  6 20.35 0.022610
#> 25  6 20.47 0.020600
#> 26  6 20.57 0.018770
#> 27  6 20.65 0.017110
#> 28  6 20.72 0.015590
#> 29  6 20.78 0.014200
#> 30  6 20.83 0.012940
#> 31  6 20.87 0.011790
#> 32  6 20.91 0.010740
#> 33  6 20.94 0.009788
#> 34  6 20.96 0.008919
#> 35  6 20.99 0.008127
#> 36  6 21.00 0.007405
#> 37  6 21.02 0.006747
#> 38  6 21.03 0.006147
#> 39  6 21.04 0.005601
#> 40  6 21.05 0.005104
#> 41  6 21.06 0.004650
#> 42  6 21.06 0.004237
#> 43  6 21.07 0.003861
#> 44  6 21.07 0.003518
#> 45  6 21.08 0.003205
#> 
#> $x
#>        age los revasc revascdays stchange sysbp
#>   [1,]  28   9      0        180        1   107
#>   [2,]  32   5      1          0        1   121
#>   [3,]  33   2      0          2        0   150
#>   [4,]  35   5      1          2        0   172
#>   [5,]  35  10      1          9        0   106
#>   [6,]  35   2      0        180        0   121
#>   [7,]  37   9      0        180        1   151
#>   [8,]  38  13      1          0        1   161
#>   [9,]  36   1      0        180        1   155
#>  [10,]  35   0      0        180        1   119
#>  [11,]  38  12      1          8        1   120
#>  [12,]  36   5      1          0        1   115
#>  [13,]  33   6      1          1        1   115
#>  [14,]  38  16      1         10        0   160
#>  [15,]  38  12      1         11        1    92
#>  [16,]  42   3      1          1        1   130
#>  [17,]  37   1      1          0        1   146
#>  [18,]  42   2      0        180        1   100
#>  [19,]  38   5      1          3        0   125
#>  [20,]  40  11      1         10        1   120
#>  [21,]  42   2      0        180        0   100
#>  [22,]  41   2      1          1        0   166
#>  [23,]  40   1      1          0        1   145
#>  [24,]  43   4      1          0        1   130
#>  [25,]  42   4      0        180        0   162
#>  [26,]  42  12      1         10        1   170
#>  [27,]  43   2      1          1        1   116
#>  [28,]  42   2      0        180        1   124
#>  [29,]  41  10      1          8        0   150
#>  [30,]  44   3      0        180        0   141
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
#>  [41,]  46   7      1          2        0   166
#>  [42,]  43  29      0        180        1   180
#>  [43,]  43  10      0        180        0   185
#>  [44,]  47   6      1          0        1   116
#>  [45,]  43   3      1          0        1   124
#>  [46,]  45   5      0          5        0   141
#>  [47,]  46   2      1          1        1   122
#>  [48,]  46   6      1          0        1   100
#>  [49,]  44   4      1          0        1   114
#>  [50,]  45   5      0        180        1   190
#>  [51,]  46   5      1          3        0   130
#>  [52,]  46   4      0        180        1   121
#>  [53,]  44   2      0        180        0   142
#>  [54,]  46  15      0        180        1   120
#>  [55,]  45   9      1          0        1   145
#>  [56,]  47   3      1          1        1   120
#>  [57,]  48   3      0        180        0   154
#>  [58,]  48  12      1         11        0   200
#>  [59,]  46   3      1          0        1   119
#>  [60,]  49   4      0        180        0   117
#>  [61,]  47  10      0         10        1   140
#>  [62,]  50   1      1          0        1   129
#>  [63,]  48   2      1          0        0   184
#>  [64,]  47   7      0        180        0   145
#>  [65,]  50   6      1          2        1   140
#>  [66,]  46   3      1          1        1   140
#>  [67,]  50   7      0        180        1   110
#>  [68,]  49   2      0          2        0   105
#>  [69,]  51   1      0          1        1   145
#>  [70,]  49  23      0        179        1   112
#>  [71,]  52   2      0        180        1   170
#>  [72,]  50   7      1          0        1    92
#>  [73,]  51   3      1          2        0   113
#>  [74,]  49   7      1          4        1    90
#>  [75,]  47   8      0        180        0   160
#>  [76,]  47   6      0        180        1   162
#>  [77,]  51   8      0        180        1   140
#>  [78,]  46   3      0        180        1   120
#>  [79,]  46   1      1          1        0   145
#>  [80,]  50   4      1          1        0   150
#>  [81,]  48  17      1         10        0   111
#>  [82,]  47   2      1          1        0   110
#>  [83,]  52   4      1          4        0   152
#>  [84,]  49   9      1          3        0   102
#>  [85,]  49  15      0        180        1   160
#>  [86,]  54  17      1         12        1   102
#>  [87,]  53   5      0         77        0   159
#>  [88,]  53   7      1          0        0   199
#>  [89,]  54   6      1          3        0   129
#>  [90,]  51   3      1          1        0   140
#>  [91,]  50   2      0          5        1   106
#>  [92,]  50  10      1          6        0   122
#>  [93,]  50  14      1         13        0   170
#>  [94,]  53   8      1          7        0   160
#>  [95,]  48   3      1          2        0   150
#>  [96,]  53   4      0          4        0   140
#>  [97,]  52  14      1          7        1   200
#>  [98,]  48  11      1         10        0   120
#>  [99,]  53   4      1          0        1   156
#> [100,]  54   9      1          0        1   138
#> [101,]  49  16      0         16        0   125
#> [102,]  55   3      1          1        0   150
#> [103,]  52   7      1          2        0   154
#> [104,]  55   6      1          2        1   114
#> [105,]  54   9      1          1        0   130
#> [106,]  55   4      1          2        0   150
#> [107,]  52   4      0        180        1   180
#> [108,]  50   5      1          4        1   150
#> [109,]  54   4      1          0        1   121
#> [110,]  52   4      0        180        0   183
#> [111,]  55  28      1         13        1   160
#> [112,]  49   6      1          0        1   130
#> [113,]  50   7      1          1        0   156
#> [114,]  53   9      0          9        1    95
#> [115,]  53   8      1          0        1   130
#> [116,]  50   7      1          0        1   127
#> [117,]  56   4      1          1        1   130
#> [118,]  52   5      0        175        1   117
#> [119,]  55   2      0          2        0   145
#> [120,]  54   7      1          0        1   100
#> [121,]  56   2      0        180        0   132
#> [122,]  53  18      1          9        1   150
#> [123,]  55   6      0        180        0   170
#> [124,]  52  16      0         16        0   152
#> [125,]  53  10      1          9        0   172
#> [126,]  53  15      0         15        1    90
#> [127,]  53   4      0        180        1   150
#> [128,]  55   6      1          5        1   138
#> [129,]  54  12      1          0        1   190
#> [130,]  55   2      0        134        1   140
#> [131,]  56   3      0          8        1   139
#> [132,]  57   3      0          3        0   120
#> [133,]  54   7      1          2        0   129
#> [134,]  54   2      1          1        0   135
#> [135,]  52   9      1          3        0   170
#> [136,]  54   2      1          1        1   176
#> [137,]  57   1      0          1        1   100
#> [138,]  56   4      1          0        1   140
#> [139,]  52   2      0        180        0   140
#> [140,]  52  15      1         14        0   130
#> [141,]  56  14      1         11        0   130
#> [142,]  53   3      1          0        1   200
#> [143,]  57  10      0        180        1   170
#> [144,]  54   5      0        180        1   108
#> [145,]  57   0      0          0        1   150
#> [146,]  53  21      1         13        1   130
#> [147,]  59   3      1          1        0   172
#> [148,]  57   4      0        180        1   119
#> [149,]  58   6      1          0        1    90
#> [150,]  53  15      1         10        1   130
#> [151,]  54  17      1          8        1   227
#> [152,]  55   9      1          2        1   147
#> [153,]  54  23      1          8        0   120
#> [154,]  57   4      1          2        1   185
#> [155,]  53   4      0        147        1   145
#> [156,]  57  11      1         10        1   129
#> [157,]  55   3      1          2        0   140
#> [158,]  55   5      0          5        1   131
#> [159,]  54   7      1          0        1   141
#> [160,]  56   4      0          4        0   164
#> [161,]  58   9      1          0        1   180
#> [162,]  58   1      1          1        1   200
#> [163,]  55   2      0          2        0   106
#> [164,]  59   9      1          1        1   125
#> [165,]  57   1      0        180        0   148
#> [166,]  60  11      1          9        0   106
#> [167,]  59   3      0        180        0   120
#> [168,]  58   4      1          0        1   160
#> [169,]  57   2      0          2        1   120
#> [170,]  60   5      1          1        0   138
#> [171,]  57   5      0        180        1   130
#> [172,]  58  11      1          9        1   124
#> [173,]  59   6      1          0        1   140
#> [174,]  59   5      0        180        1   155
#> [175,]  58  26      1          0        1   189
#> [176,]  61   9      0          9        1   160
#> [177,]  58   4      1          3        0   120
#> [178,]  60   0      1          0        1    80
#> [179,]  59   2      1          1        0   140
#> [180,]  58   8      0        161        1   140
#> [181,]  58  14      1          6        0   190
#> [182,]  61   4      1          3        0   151
#> [183,]  61   9      1          8        0   150
#> [184,]  61   3      1          2        1   102
#> [185,]  58   1      0          1        1   100
#> [186,]  58  10      0         10        1   150
#> [187,]  57   4      1          3        0   138
#> [188,]  57  11      0        180        1   150
#> [189,]  61   3      0         17        0   143
#> [190,]  57   3      1          2        0   120
#> [191,]  58  19      1         13        1   140
#> [192,]  56  18      1         11        1   165
#> [193,]  55   4      1          3        1   160
#> [194,]  60  12      1          0        1   114
#> [195,]  55   9      1          7        1   135
#> [196,]  61   4      1          0        1   115
#> [197,]  57   1      0          1        0   126
#> [198,]  59   5      1          2        0   182
#> [199,]  58   5      1          1        1   135
#> [200,]  59  10      0        180        0   160
#> [201,]  61   8      0         77        0   120
#> [202,]  61  13      0         13        0   210
#> [203,]  58   8      1          5        0   152
#> [204,]  62   7      1          2        1   180
#> [205,]  61  28      1          7        0   133
#> [206,]  58   8      1          3        1   150
#> [207,]  61   7      0          7        1   150
#> [208,]  60   7      0          7        0   147
#> [209,]  61   6      0          6        0   134
#> [210,]  57  12      1          9        1   120
#> [211,]  62   4      1          0        0   160
#> [212,]  58   3      1          0        1   146
#> [213,]  62   4      1          3        0   173
#> [214,]  58   2      0         30        0   202
#> [215,]  59   1      0        180        0   155
#> [216,]  63   6      0         28        1   120
#> [217,]  61  13      0         13        0   120
#> [218,]  61   5      0          5        1   110
#> [219,]  61   5      0          5        1   160
#> [220,]  62  17      1         10        1   180
#> [221,]  58   7      0        180        1   150
#> [222,]  63   3      1          1        0   180
#> [223,]  63   1      0        180        1   130
#> [224,]  61   7      0        180        0   135
#> [225,]  63  15      1         10        1   126
#> [226,]  64   4      0        180        0   130
#> [227,]  61   9      1          9        1   150
#> [228,]  58   9      1          9        0   110
#> [229,]  62   7      0          7        0   150
#> [230,]  59   1      0         22        1   162
#> [231,]  58   2      0        180        0   127
#> [232,]  60   7      1          5        1   141
#> [233,]  60   7      1          1        1    90
#> [234,]  63   1      0          1        0   162
#> [235,]  63   1      0          1        0   130
#> [236,]  62   6      0        180        0   170
#> [237,]  61  15      1         13        0   170
#> [238,]  59   4      0          4        0   149
#> [239,]  60   3      0          3        0   168
#> [240,]  62   6      0          6        0   120
#> [241,]  63  12      1         10        0   200
#> [242,]  59  10      0        180        1   130
#> [243,]  60   8      0         17        1   130
#> [244,]  61   6      1          1        1   117
#> [245,]  64  12      1         11        0   160
#> [246,]  64   6      1          0        1   140
#> [247,]  63  10      1          0        1   148
#> [248,]  63  14      1          9        0   123
#> [249,]  65  36      1         11        0   140
#> [250,]  66   3      1          1        0   127
#> [251,]  66   5      1          0        1   110
#> [252,]  65   8      1          0        0   168
#> [253,]  65  10      1          8        1   120
#> [254,]  64   0      0          0        1    90
#> [255,]  64  21      1         10        0   190
#> [256,]  61   4      0        180        1   113
#> [257,]  65   3      0        180        1   190
#> [258,]  63  16      1          7        1   110
#> [259,]  64   7      0        180        1   120
#> [260,]  62   3      1          1        1   199
#> [261,]  65   6      0          9        0   112
#> [262,]  65   3      1          0        1    80
#> [263,]  63   5      1          4        0   170
#> [264,]  63   2      1          1        0   180
#> [265,]  62  13      1         11        0   180
#> [266,]  64   2      0          2        0   201
#> [267,]  66  18      1          5        0   142
#> [268,]  66  16      1         11        1   169
#> [269,]  62   9      0        180        0   145
#> [270,]  63   3      1          2        0   120
#> [271,]  64  19      1          8        1   160
#> [272,]  65   8      1          0        1   140
#> [273,]  68   5      1          4        1   150
#> [274,]  67   4      1          3        0   130
#> [275,]  66   3      1          0        1   135
#> [276,]  65   2      1          1        1   170
#> [277,]  68   1      0        180        1   166
#> [278,]  63   7      1          0        0   162
#> [279,]  63  10      0         16        1   160
#> [280,]  65  17      1         14        1   100
#> [281,]  63  10      0         18        1   130
#> [282,]  67  11      0         11        0   150
#> [283,]  68  11      0        180        0   160
#> [284,]  68  14      0         79        0   172
#> [285,]  65  15      1         12        1   150
#> [286,]  66  11      1          0        0   100
#> [287,]  65   4      1          2        1   145
#> [288,]  69  12      0         15        1   140
#> [289,]  66  15      1         13        1   160
#> [290,]  65  11      1          6        0   130
#> [291,]  69  21      1         10        0   180
#> [292,]  69   6      0        180        1   100
#> [293,]  66   9      1          8        0   130
#> [294,]  63   8      0        180        1   120
#> [295,]  68  14      1         13        1   140
#> [296,]  65   8      1          0        1    90
#> [297,]  69   1      1          0        0   170
#> [298,]  67   1      0        180        1   160
#> [299,]  65   1      1          0        0   133
#> [300,]  67   7      1          4        1   130
#> [301,]  63   2      1          0        0    99
#> [302,]  69   6      0         99        1   140
#> [303,]  70  15      1         12        1   132
#> [304,]  64  11      0         11        0   125
#> [305,]  64   4      0        180        1   140
#> [306,]  64   0      1          0        1   118
#> [307,]  67   2      0         18        0   131
#> [308,]  65  13      1         12        1   130
#> [309,]  69  17      1         10        0   140
#> [310,]  69   8      0         93        0   140
#> [311,]  64  21      0         21        1   155
#> [312,]  65   1      0          1        1   120
#> [313,]  68  18      1          0        1   160
#> [314,]  68   4      0          4        1   190
#> [315,]  70   7      1          0        1   190
#> [316,]  71  20      1          0        1   160
#> [317,]  66   1      1          1        1   165
#> [318,]  70   4      1          0        1   180
#> [319,]  68  18      1         14        1   170
#> [320,]  69   0      0          0        1   148
#> [321,]  65   2      0        180        0   130
#> [322,]  68   7      1          0        1   150
#> [323,]  69   3      1          2        0   151
#> [324,]  67  14      1         13        0   130
#> [325,]  69   8      0        180        1   180
#> [326,]  66   2      0          2        1   228
#> [327,]  71   6      0         45        1   158
#> [328,]  69   5      0          5        1   142
#> [329,]  71   3      0        103        0   133
#> [330,]  69   3      0          3        1   130
#> [331,]  70  22      1         13        0   103
#> [332,]  67   1      0         36        1   104
#> [333,]  67   5      0          5        0   130
#> [334,]  68   6      0        180        0   145
#> [335,]  69   6      1          4        1   174
#> [336,]  72   7      0          7        1   110
#> [337,]  66   2      1          1        0   123
#> [338,]  68  18      0         18        1   100
#> [339,]  67  14      0        172        1   140
#> [340,]  69  11      1          0        1   120
#> [341,]  66   2      0        180        0   130
#> [342,]  69   4      1          3        0   132
#> [343,]  68   2      0          7        1   130
#> [344,]  69   8      1          2        0   121
#> [345,]  70   3      0        123        0   130
#> [346,]  72   5      1          4        0   170
#> [347,]  67  22      1          1        1   140
#> [348,]  68   3      0         19        0   135
#> [349,]  67  12      1          8        0   120
#> [350,]  69   1      0          1        1   110
#> [351,]  67   1      0          1        1    60
#> [352,]  67   4      0         60        1   136
#> [353,]  67   8      1          0        1   130
#> [354,]  72  13      1         11        1   195
#> [355,]  68  10      1          8        1   160
#> [356,]  68   7      1          2        0   135
#> [357,]  73  20      1          0        1   170
#> [358,]  71   6      0          9        0   120
#> [359,]  70  11      0        180        1   210
#> [360,]  72  19      1          8        0   120
#> [361,]  72  12      1         10        0   170
#> [362,]  67   8      0        180        1   170
#> [363,]  67   5      1          0        1   147
#> [364,]  70   5      0        180        0   150
#> [365,]  72   2      0          2        1   100
#> [366,]  67   4      1          1        0   134
#> [367,]  72   6      1          5        0   115
#> [368,]  71   1      0        173        1   188
#> [369,]  68  23      0        180        1   220
#> [370,]  69   3      0        180        0   220
#> [371,]  71   3      1          2        0   150
#> [372,]  68   4      1          3        0   210
#> [373,]  73   6      0        180        1   117
#> [374,]  69  16      1         10        1   140
#> [375,]  69   8      1          1        0   164
#> [376,]  68   7      0        180        1   130
#> [377,]  70   4      0        180        0   180
#> [378,]  73   6      1          0        1   270
#> [379,]  71   2      1          0        1   180
#> [380,]  73   7      0          7        1   140
#> [381,]  70   3      0          3        1   159
#> [382,]  72   6      0        180        1   130
#> [383,]  73   0      0        180        1   161
#> [384,]  73   4      0        180        1   154
#> [385,]  71   3      1          1        0   150
#> [386,]  71  15      1         11        0   165
#> [387,]  74  20      0         20        1   180
#> [388,]  68   9      0        180        1   120
#> [389,]  71  20      1         10        0   140
#> [390,]  73   3      1          0        1   136
#> [391,]  70   5      1          0        1   190
#> [392,]  71   3      1          2        1   190
#> [393,]  69  12      1          1        1   149
#> [394,]  74   4      0          4        0   120
#> [395,]  73   4      0         58        1   160
#> [396,]  72   5      1          3        1   160
#> [397,]  70   3      0        180        1   154
#> [398,]  73   6      0        180        0   110
#> [399,]  72  15      1          0        1   150
#> [400,]  71   7      1          2        0   143
#> [401,]  72   8      1          0        1   140
#> [402,]  73  17      1         11        0   140
#> [403,]  69   2      1          1        1    80
#> [404,]  69   7      0        180        1   144
#> [405,]  72  15      1         13        0   156
#> [406,]  70   8      0          8        0   120
#> [407,]  75   1      0          1        0   133
#> [408,]  75   2      1          1        0   145
#> [409,]  73  10      1         10        1   120
#> [410,]  74  15      1          9        1   179
#> [411,]  73   1      0          1        1    80
#> [412,]  75   9      1          7        0   140
#> [413,]  75  13      1          1        1   130
#> [414,]  71  11      1          8        0   110
#> [415,]  71   4      0          4        0   134
#> [416,]  72  15      1         12        1   120
#> [417,]  70   7      1          4        0   184
#> [418,]  72   1      1          1        0   168
#> [419,]  72   7      0         57        1   145
#> [420,]  72  11      0         11        1   140
#> [421,]  73   5      1          3        1   112
#> [422,]  76  25      1         12        1   170
#> [423,]  73  12      1         12        1   140
#> [424,]  72   2      0        180        0   120
#> [425,]  75   1      0        180        1   140
#> [426,]  71   3      1          0        0   144
#> [427,]  73   5      0        180        0   126
#> [428,]  73   4      0        180        0   124
#> [429,]  74  34      1          8        1   233
#> [430,]  76   3      1          0        1   120
#> [431,]  71  32      1         12        1   107
#> [432,]  72   5      0        180        0   154
#> [433,]  72   3      0        180        0   160
#> [434,]  77   4      0          4        0   185
#> [435,]  75   3      1          1        0   180
#> [436,]  72   7      1          2        0   142
#> [437,]  71  16      0        180        0   140
#> [438,]  73  10      1         10        0   124
#> [439,]  74   7      0        180        1   150
#> [440,]  74   3      0          3        1   128
#> [441,]  74   2      1          1        0   140
#> [442,]  76   8      1          0        1   141
#> [443,]  74  19      1          4        1   200
#> [444,]  73   6      0          6        1   114
#> [445,]  74   2      0        180        0   190
#> [446,]  72   4      0         85        1   120
#> [447,]  73   4      1          3        1   125
#> [448,]  76  13      1         10        0   110
#> [449,]  75   0      0          0        1   130
#> [450,]  75  12      0         12        1   160
#> [451,]  74   8      1          0        1   105
#> [452,]  75   4      1          2        1   188
#> [453,]  74   6      0        180        0   160
#> [454,]  76   4      0          4        1   155
#> [455,]  75   1      0          1        1   125
#> [456,]  74   2      0        180        0   111
#> [457,]  73   0      0        180        0   156
#> [458,]  72   5      0        180        0   120
#> [459,]  78  12      1         11        1   160
#> [460,]  76  44      1         10        0   105
#> [461,]  74  10      1          0        1   135
#> [462,]  74   8      1          8        1   170
#> [463,]  75   9      0        180        1   140
#> [464,]  73  33      1         12        1   175
#> [465,]  77   5      1          0        0   123
#> [466,]  77  12      1          9        1   100
#> [467,]  73  10      1          9        0   146
#> [468,]  77  12      0        180        0   130
#> [469,]  76  12      1         11        1   120
#> [470,]  78   5      1          0        1   170
#> [471,]  73   7      1          0        0   174
#> [472,]  74   6      0         79        1   140
#> [473,]  74   2      1          0        1   130
#> [474,]  78  18      0         18        1   144
#> [475,]  77   3      0        180        0   110
#> [476,]  76  29      0         47        0    90
#> [477,]  73  11      1          2        1   110
#> [478,]  74   2      0        180        0   100
#> [479,]  78   7      0          7        1   133
#> [480,]  74  15      0        180        1   172
#> [481,]  74   7      0          7        0   161
#> [482,]  76  13      1          1        1   170
#> [483,]  79   6      0        180        0   170
#> [484,]  80  10      1          6        1   147
#> [485,]  75   5      0        119        1   150
#> [486,]  75  12      1          1        1   120
#> [487,]  78  15      0        180        1   270
#> [488,]  80   8      0          8        1   120
#> [489,]  75  13      1          6        0   150
#> [490,]  74  10      1          8        0   135
#> [491,]  76   1      0          1        1    83
#> [492,]  79   4      0         80        0   145
#> [493,]  78  12      1          9        0   150
#> [494,]  78   2      1          1        0   130
#> [495,]  75   4      1          0        0   212
#> [496,]  77   2      1          0        1   143
#> [497,]  78  10      0        180        1   130
#> [498,]  76  11      1          0        0   120
#> [499,]  75  11      1          4        0   162
#> [500,]  75   3      0          3        0     0
#> [501,]  77  24      0         24        1   160
#> [502,]  79   8      0         32        1   120
#> [503,]  78   6      1          0        1   240
#> [504,]  79  11      0        180        0   160
#> [505,]  78  14      1          0        1   140
#> [506,]  81   1      0          1        0   130
#> [507,]  78  11      1          8        1   118
#> [508,]  76   4      0          4        1   160
#> [509,]  77   6      0          6        1   107
#> [510,]  75   2      1          1        1   204
#> [511,]  78  11      0        180        1   135
#> [512,]  76   1      0          1        1   140
#> [513,]  78   7      1          0        1   110
#> [514,]  79   3      0          3        0   120
#> [515,]  77   7      0        180        1   170
#> [516,]  79   4      1          0        1   120
#> [517,]  81   1      0        180        0   120
#> [518,]  82   5      0          8        1   120
#> [519,]  78   4      0         59        1   112
#> [520,]  76   7      0        161        0   151
#> [521,]  79  10      0         10        1   120
#> [522,]  80  15      1          0        1    90
#> [523,]  79  28      0        164        0   100
#> [524,]  80   9      0        118        1   186
#> [525,]  78  32      0        180        1   130
#> [526,]  81   3      0        180        0   184
#> [527,]  81   2      0        175        0   172
#> [528,]  77  13      1          0        1   190
#> [529,]  80   5      1          1        1   108
#> [530,]  79   3      0          3        1   101
#> [531,]  76   1      0        166        0   131
#> [532,]  81   4      1          1        1   104
#> [533,]  78  20      1          0        1   109
#> [534,]  78   3      1          1        1   152
#> [535,]  77  10      1          8        1   130
#> [536,]  82   3      1          1        1   144
#> [537,]  79   6      0          6        0   152
#> [538,]  80   6      1          0        1   119
#> [539,]  78   2      0        180        0   148
#> [540,]  79  10      0        180        1   150
#> [541,]  77   4      0        180        1    98
#> [542,]  81   1      0        108        0   129
#> [543,]  78  12      0        180        0   134
#> [544,]  79   1      0        125        0   193
#> [545,]  84  22      1         10        0   180
#> [546,]  80   6      0          6        1   110
#> [547,]  82   5      0        180        0   110
#> [548,]  83   5      0        180        0   148
#> [549,]  79   7      1          6        0   130
#> [550,]  83   4      0        103        0    97
#> [551,]  81  11      1          8        0   160
#> [552,]  78   9      1          4        1   120
#> [553,]  81  15      0        180        1   140
#> [554,]  80   7      1          0        1   146
#> [555,]  84   5      1          1        1    85
#> [556,]  81  20      1          9        0   170
#> [557,]  81  16      0         16        1   110
#> [558,]  80   6      1          0        1   150
#> [559,]  80  11      1          8        0   110
#> [560,]  79   0      1          0        1    96
#> [561,]  85   4      0        180        0    90
#> [562,]  84   5      0        180        1   203
#> [563,]  84   4      0          4        1    85
#> [564,]  81   1      0          1        1   150
#> [565,]  84   1      0         38        1   205
#> [566,]  79   9      1          8        0   150
#> [567,]  85   3      1          2        1   160
#> [568,]  80  13      1          8        1   140
#> [569,]  84   4      0         89        1   129
#> [570,]  80   2      1          0        1   130
#> [571,]  79   4      0          4        1    60
#> [572,]  80   6      0         71        1   189
#> [573,]  82  19      0         19        0   120
#> [574,]  83   9      0        180        0   198
#> [575,]  79  14      1          0        0   110
#> [576,]  83   3      0        114        0    98
#> [577,]  81  14      1         12        1   128
#> [578,]  85   9      1          6        1   160
#> [579,]  83   1      0        180        0   160
#> [580,]  84  15      1         13        1   110
#> [581,]  81   1      0          1        1   145
#> [582,]  82  16      1          8        0   103
#> [583,]  82   5      1          0        1   146
#> [584,]  83  12      1          2        1   170
#> [585,]  82   3      1          2        0   130
#> [586,]  86   8      0          8        1   132
#> [587,]  81  16      1          9        0   180
#> [588,]  86   3      0          3        1   140
#> [589,]  82   9      0        180        1   134
#> [590,]  84   3      0        180        1   120
#> [591,]  81  13      0        180        0   152
#> [592,]  85   3      0          3        1   118
#> [593,]  81   4      0        180        0   160
#> [594,]  83   9      0        180        1   149
#> [595,]  82   1      0        180        1   193
#> [596,]  87   2      0          5        1   137
#> [597,]  82  14      1         11        1   103
#> [598,]  86   6      1          0        1   140
#> [599,]  84  16      0         70        1   150
#> [600,]  83  19      0         43        0   150
#> [601,]  83  10      1          0        1   190
#> [602,]  88  14      1          3        1   130
#> [603,]  84   3      0          3        1   121
#> [604,]  84   7      1          2        0   148
#> [605,]  84   3      0        180        1   170
#> [606,]  82   4      0          4        0   130
#> [607,]  86  13      0        177        0   163
#> [608,]  85   3      0          3        1   113
#> [609,]  86   6      0          6        1   117
#> [610,]  84  13      0         62        1   100
#> [611,]  86   6      1          1        0   112
#> [612,]  88   4      0          4        0   100
#> [613,]  88   4      0          4        1   115
#> [614,]  85  22      0         22        1   184
#> [615,]  83   9      0         65        1   150
#> [616,]  86   9      1          7        1   142
#> [617,]  87   2      0        180        1   130
#> [618,]  86   6      0         46        0   173
#> [619,]  88   3      0        115        0   110
#> [620,]  88   2      0        180        1    68
#> [621,]  83   3      0          3        1   130
#> [622,]  87   8      0          8        1   157
#> [623,]  86  15      1          8        1   109
#> [624,]  88   4      0          4        0    86
#> [625,]  89   5      0        119        1   140
#> [626,]  87   6      0        180        1   110
#> [627,]  87   1      0          1        0   170
#> [628,]  84   0      0        180        1   136
#> [629,]  89  10      0         46        1   170
#> [630,]  90  14      0         14        1   100
#> [631,]  88   1      0          1        0   135
#> [632,]  86   4      0        180        1   145
#> [633,]  87   2      0        180        0   160
#> [634,]  91  10      0        145        0   135
#> [635,]  86   3      1          0        1    80
#> [636,]  88   7      0         24        0   119
#> [637,]  90  11      1         10        1   186
#> [638,]  86  10      0        180        1   137
#> [639,]  86   9      1          7        0   130
#> [640,]  90   4      1          0        0   121
#> [641,]  91   1      0          1        1    74
#> [642,]  87  43      0        178        1   130
#> [643,]  87   5      0         36        1   150
#> [644,]  90   5      1          0        1   125
#> [645,]  88   3      1          2        0   159
#> [646,]  89   3      1          1        1   160
#> [647,]  92   1      0          1        1   167
#> [648,]  91   3      0         33        1   137
#> [649,]  87   7      0         74        1   105
#> [650,]  89  12      1          0        1   130
#> [651,]  89   2      0        168        0   118
#> [652,]  89  52      0         52        1   130
#> [653,]  89   4      0          4        1   159
#> [654,]  91   0      0          0        0     0
#> [655,]  90  18      0        180        0   188
#> [656,]  94   6      0         50        0    78
#> [657,]  92   4      0         76        1   149
#> [658,]  91   1      0        180        0   158
#> [659,]  90   3      0         67        0   162
#> [660,]  96   3      0         12        1    97
#> [661,]  95   8      1          5        1   150
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
#>   [1] 180.0+   5.0+   2.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [11]  12.0    5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   5.0+ 180.0+
#>  [21] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0+ 180.0+ 180.0+ 180.0+
#>  [31] 180.0+ 180.0+ 180.0+   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 150.0 
#>  [41] 180.0+ 180.0+ 180.0+   6.0+ 180.0+   5.0+ 161.0+ 180.0+ 180.0+ 180.0+
#>  [51]   5.0+ 180.0+ 180.0+ 180.0+ 177.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [61]  10.0+ 172.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0    1.0  179.0+
#>  [71] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#>  [81]  88.0+ 180.0+   4.0+ 180.0+ 180.0+ 180.0+  77.0  180.0+ 180.0+ 180.0+
#>  [91]   5.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 166.0+ 180.0+
#> [101]  16.0+ 180.0+   7.0+   6.0+ 180.0+ 180.0+ 180.0+ 171.0+ 180.0+ 180.0+
#> [111]  28.0    6.0+ 180.0+   9.0+ 180.0+ 180.0+ 180.0+ 175.0+   2.0    7.0+
#> [121] 180.0+ 180.0+ 180.0+  16.0+ 180.0+  15.0+ 180.0+ 180.0+  12.0+ 134.0+
#> [131]   8.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0  165.0  180.0+ 180.0+
#> [141] 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [151] 171.0+  15.0  180.0+   4.0+ 147.0+ 180.0+ 180.0+   5.0+ 180.0+   4.0+
#> [161]   9.0+   1.0    2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0  180.0+
#> [171] 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+ 180.0+   0.5  180.0+ 161.0+
#> [181] 171.0+ 180.0+ 180.0+   3.0    1.0   10.0+ 180.0+ 180.0+  17.0    3.0+
#> [191]  19.0  180.0+ 180.0+ 172.0+  24.0  180.0+   1.0+ 180.0+ 180.0+ 180.0+
#> [201]  77.0   13.0+   8.0+ 180.0+  94.0  180.0+   7.0    7.0+   6.0  180.0+
#> [211] 180.0+   3.0+ 180.0+  30.0  180.0+  28.0   13.0+   5.0    5.0+ 180.0+
#> [221] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0    7.0+  22.0 
#> [231] 180.0+  84.0  180.0+   1.0    1.0  180.0+ 180.0+   4.0+   3.0+   6.0+
#> [241] 180.0+ 180.0+  17.0  180.0+  12.0  180.0+ 180.0+  14.0+  36.0    3.0+
#> [251] 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [261]   9.0    3.0  180.0+ 180.0+ 180.0+   2.0+  18.0+ 180.0+ 180.0+   3.0+
#> [271] 103.0   15.0    5.0+ 180.0+   3.0+ 175.0+ 180.0+   7.0+  16.0  180.0+
#> [281]  18.0   11.0+ 180.0+  79.0   15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+
#> [291] 174.0+ 180.0+ 180.0+ 180.0+ 180.0+   8.0+ 175.0  180.0+ 180.0+ 180.0+
#> [301] 180.0+  99.0  180.0+  11.0+ 180.0+   0.5   18.0  180.0+ 180.0+  93.0 
#> [311]  21.0+   1.0   18.0+   4.0    7.0+ 180.0+   1.0  180.0+ 180.0+   0.5 
#> [321] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0   45.0    5.0+ 103.0    3.0+
#> [331] 180.0+  36.0    5.0+ 180.0+  97.0    7.0    2.0+  18.0  172.0+ 180.0+
#> [341] 180.0+ 180.0+   7.0    8.0+ 123.0  180.0+  51.0   19.0  180.0+   1.0 
#> [351]   1.0   60.0  180.0+ 132.0   10.0+   7.0+ 124.0    9.0  180.0+ 180.0+
#> [361]  12.0  180.0+ 180.0+ 180.0+   2.0   76.0  180.0+ 173.0+ 180.0+ 180.0+
#> [371] 180.0+ 180.0+ 180.0+  16.0+ 180.0+ 180.0+ 180.0+   6.0  180.0+   7.0+
#> [381]   3.0+ 180.0+ 180.0+ 180.0+   3.0+ 180.0+  20.0  180.0+  20.0  180.0+
#> [391] 180.0+   3.0   12.0    4.0+  58.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [401] 180.0+ 180.0+   2.0  180.0+ 180.0+   8.0+   1.0  180.0+  15.0  180.0+
#> [411]   1.0  180.0+  13.0  180.0+   4.0+ 180.0+ 104.0+   1.0   57.0   11.0 
#> [421]   5.0  180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+  34.0  180.0+
#> [431] 177.0+ 180.0+ 180.0+   4.0+ 180.0+   7.0  180.0+  10.0  180.0+   3.0 
#> [441] 180.0+ 180.0+ 180.0+   6.0  180.0+  85.0  180.0+ 174.0+   0.5   12.0 
#> [451] 180.0+  46.0  180.0+   4.0    1.0  180.0+ 180.0+ 180.0+  12.0  180.0+
#> [461] 180.0+   8.0  180.0+  33.0    5.0  180.0+ 180.0+ 180.0+  12.0  180.0+
#> [471]   7.0+  79.0  176.0+  18.0  180.0+  47.0   11.0  180.0+   7.0  180.0+
#> [481]   7.0  180.0+ 180.0+  10.0  119.0   12.0  180.0+   8.0  180.0+ 180.0+
#> [491]   1.0   80.0  180.0+ 180.0+   4.0+   2.0  180.0+  11.0  152.0+   3.0 
#> [501]  24.0   32.0  180.0+ 180.0+ 180.0+   1.0   11.0    4.0    6.0    2.0+
#> [511] 180.0+   1.0   43.0    3.0  180.0+ 138.0  180.0+   8.0   59.0  161.0 
#> [521]  10.0+ 180.0+ 164.0  118.0  180.0+ 180.0+ 175.0+  22.0    5.0+   3.0 
#> [531] 166.0+  71.0   20.0+   3.0+  10.0  180.0+   6.0+   6.0  180.0+ 180.0+
#> [541] 180.0+ 108.0  180.0+ 125.0  180.0+   6.0  180.0+ 180.0+ 180.0+ 103.0 
#> [551] 180.0+ 180.0+ 180.0+   7.0+ 180.0+  20.0   16.0  180.0+ 180.0+   0.5 
#> [561] 180.0+ 180.0+   4.0    1.0   38.0  180.0+ 180.0+ 180.0+  89.0  180.0+
#> [571]   4.0   71.0   19.0  180.0+ 180.0+ 114.0  180.0+ 180.0+ 180.0+ 180.0+
#> [581]   1.0   16.0+   5.0+  77.0    3.0    8.0  180.0+   3.0  180.0+ 180.0+
#> [591] 180.0+   3.0+ 180.0+ 180.0+ 180.0+   5.0  174.0    6.0   70.0   43.0 
#> [601] 180.0+  14.0    3.0  180.0+ 180.0+   4.0  177.0    3.0+   6.0+  62.0 
#> [611]   6.0+   4.0+   4.0   22.0   65.0   11.0  180.0+  46.0  115.0  180.0+
#> [621]   3.0+   8.0+ 180.0+   4.0  119.0  180.0+   1.0+ 180.0+  46.0   14.0 
#> [631]   1.0+ 180.0+ 180.0+ 145.0    3.0   24.0   11.0  180.0+ 180.0+   4.0 
#> [641]   1.0  178.0+  36.0   89.0   75.0    3.0+   1.0   33.0   74.0  180.0+
#> [651] 168.0   52.0    4.0    0.5  180.0+  50.0   76.0  180.0+  67.0   12.0 
#> [661]   8.0   26.0   53.0    7.0+   0.5   69.0    2.0  180.0+   3.0   15.0+
#> 
#> $weights
#> NULL
#> 
#> $offset
#> NULL
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)
#> Warning: Multiple lambdas have been fit. Lambda will be set to 0.01 (see parameter 's').

# Score the predictions
predictions$score()
#> surv.cindex 
#>   0.7917082 
```
