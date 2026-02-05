# GLM with Elastic Net Regularization Survival Learner

Generalized linear models with elastic net regularization. Calls
[`glmnet::glmnet()`](https://rdrr.io/pkg/glmnet/man/glmnet.html) from
package [glmnet](https://CRAN.R-project.org/package=glmnet).

## Initial parameter values

- `family` is set to `"cox"` and cannot be changed.

## Prediction types

This learner returns three prediction types:

1.  `lp`: a vector containing the linear predictors (relative risk
    scores), where each score corresponds to a specific test
    observation. Calculated using
    [`glmnet::predict.coxnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html).

2.  `crank`: same as `lp`.

3.  `distr`: a survival matrix in two dimensions, where observations are
    represented in rows and time points in columns. Calculated using
    [`glmnet::survfit.coxnet()`](https://rdrr.io/pkg/glmnet/man/survfit.coxnet.html).
    Parameters `stype` and `ctype` relate to how `lp` predictions are
    transformed into survival predictions and are described in
    [`survival::survfit.coxph()`](https://rdrr.io/pkg/survival/man/survfit.coxph.html).
    By default the Breslow estimator is used for computing the baseline
    hazard.

**Caution**: This learner is different to learners calling
[`glmnet::cv.glmnet()`](https://rdrr.io/pkg/glmnet/man/cv.glmnet.html)
in that it does not use the internal optimization of parameter `lambda`.
Instead, `lambda` needs to be tuned by the user (e.g., via
[mlr3tuning](https://CRAN.R-project.org/package=mlr3tuning)). When
`lambda` is tuned, the `glmnet` will be trained for each tuning
iteration. While fitting the whole path of `lambda`s would be more
efficient, as is done by default in
[`glmnet::glmnet()`](https://rdrr.io/pkg/glmnet/man/glmnet.html),
tuning/selecting the parameter at prediction time (using parameter `s`)
is currently not supported in
[mlr3](https://CRAN.R-project.org/package=mlr3) (at least not in
efficient manner). Tuning the `s` parameter is, therefore, currently
discouraged.

When the data are i.i.d. and efficiency is key, we recommend using the
respective auto-tuning counterpart in
[`mlr_learners_surv.cv_glmnet()`](https://mlr3extralearners.mlr-org.com/dev/reference/mlr_learners_surv.cv_glmnet.md).
However, in some situations this is not applicable, usually when data
are imbalanced or not i.i.d. (longitudinal, time-series) and tuning
requires custom resampling strategies (blocked design, stratification).

## Offset

If a `Task` contains a column with the `offset` role, it is
automatically incorporated during training via the `offset` argument in
[`glmnet::glmnet()`](https://rdrr.io/pkg/glmnet/man/glmnet.html). During
prediction, the offset column from the test set is used only if
`use_pred_offset = TRUE` (default), passed via the `newoffset` argument
in
[`glmnet::predict.coxnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html).
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
[`glmnet::predict.glmnet()`](https://rdrr.io/pkg/glmnet/man/predict.glmnet.html)
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
#> 1   0  0.00 0.191700
#> 2   1  0.64 0.174700
#> 3   2  1.23 0.159100
#> 4   2  2.14 0.145000
#> 5   3  3.47 0.132100
#> 6   3  6.51 0.120400
#> 7   3  8.75 0.109700
#> 8   3 10.49 0.099950
#> 9   3 11.87 0.091070
#> 10  3 12.99 0.082980
#> 11  3 13.92 0.075610
#> 12  3 14.70 0.068890
#> 13  5 15.36 0.062770
#> 14  5 15.98 0.057190
#> 15  6 16.54 0.052110
#> 16  6 17.02 0.047480
#> 17  6 17.44 0.043260
#> 18  6 17.79 0.039420
#> 19  6 18.09 0.035920
#> 20  6 18.35 0.032730
#> 21  6 18.56 0.029820
#> 22  6 18.75 0.027170
#> 23  6 18.90 0.024760
#> 24  6 19.03 0.022560
#> 25  6 19.14 0.020550
#> 26  6 19.24 0.018730
#> 27  6 19.32 0.017060
#> 28  6 19.39 0.015550
#> 29  6 19.44 0.014170
#> 30  6 19.49 0.012910
#> 31  6 19.53 0.011760
#> 32  6 19.56 0.010720
#> 33  6 19.59 0.009765
#> 34  6 19.62 0.008897
#> 35  6 19.64 0.008107
#> 36  6 19.65 0.007387
#> 37  6 19.67 0.006731
#> 38  6 19.68 0.006133
#> 39  6 19.69 0.005588
#> 40  6 19.70 0.005091
#> 41  6 19.70 0.004639
#> 42  6 19.71 0.004227
#> 43  6 19.72 0.003852
#> 44  6 19.72 0.003509
#> 45  6 19.72 0.003198
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
#>  [96,]  49   5      1          2        1   150
#>  [97,]  53   4      0          4        0   140
#>  [98,]  52  14      1          7        1   200
#>  [99,]  48  11      1         10        0   120
#> [100,]  53   4      1          0        1   156
#> [101,]  54   9      1          0        1   138
#> [102,]  49  16      0         16        0   125
#> [103,]  55   3      1          1        0   150
#> [104,]  52   7      1          2        0   154
#> [105,]  55   6      1          2        1   114
#> [106,]  54   9      1          1        0   130
#> [107,]  55   4      1          2        0   150
#> [108,]  52   4      0        180        1   180
#> [109,]  50   5      1          4        1   150
#> [110,]  54   4      1          0        1   121
#> [111,]  52   4      0        180        0   183
#> [112,]  55  28      1         13        1   160
#> [113,]  49   6      1          0        1   130
#> [114,]  50   7      1          1        0   156
#> [115,]  53   9      0          9        1    95
#> [116,]  53   8      1          0        1   130
#> [117,]  50   7      1          0        1   127
#> [118,]  56   4      1          1        1   130
#> [119,]  52   5      0        175        1   117
#> [120,]  55   2      0          2        0   145
#> [121,]  54   7      1          0        1   100
#> [122,]  56   2      0        180        0   132
#> [123,]  53  18      1          9        1   150
#> [124,]  55   6      0        180        0   170
#> [125,]  52  16      0         16        0   152
#> [126,]  53  10      1          9        0   172
#> [127,]  53  15      0         15        1    90
#> [128,]  53   4      0        180        1   150
#> [129,]  55   6      1          5        1   138
#> [130,]  54  12      1          0        1   190
#> [131,]  55   2      0        134        1   140
#> [132,]  56   3      0          8        1   139
#> [133,]  57   3      0          3        0   120
#> [134,]  54   7      1          2        0   129
#> [135,]  54   2      1          1        0   135
#> [136,]  52   9      1          3        0   170
#> [137,]  54   2      1          1        1   176
#> [138,]  57   1      0          1        1   100
#> [139,]  56   4      1          0        1   140
#> [140,]  52   2      0        180        0   140
#> [141,]  52  15      1         14        0   130
#> [142,]  56  14      1         11        0   130
#> [143,]  53   3      1          0        1   200
#> [144,]  57  10      0        180        1   170
#> [145,]  54   5      0        180        1   108
#> [146,]  57   0      0          0        1   150
#> [147,]  53  21      1         13        1   130
#> [148,]  59   3      1          1        0   172
#> [149,]  57   4      0        180        1   119
#> [150,]  58   6      1          0        1    90
#> [151,]  53  15      1         10        1   130
#> [152,]  54  17      1          8        1   227
#> [153,]  55   9      1          2        1   147
#> [154,]  56   5      0          5        1   150
#> [155,]  54  23      1          8        0   120
#> [156,]  57   4      1          2        1   185
#> [157,]  53   4      0        147        1   145
#> [158,]  57  11      1         10        1   129
#> [159,]  55   3      1          2        0   140
#> [160,]  55   5      0          5        1   131
#> [161,]  54   7      1          0        1   141
#> [162,]  56   4      0          4        0   164
#> [163,]  58   9      1          0        1   180
#> [164,]  58   1      1          1        1   200
#> [165,]  55   2      0          2        0   106
#> [166,]  59   9      1          1        1   125
#> [167,]  57   1      0        180        0   148
#> [168,]  60  11      1          9        0   106
#> [169,]  59   3      0        180        0   120
#> [170,]  58   4      1          0        1   160
#> [171,]  57   2      0          2        1   120
#> [172,]  60   5      1          1        0   138
#> [173,]  57   5      0        180        1   130
#> [174,]  58  11      1          9        1   124
#> [175,]  59   6      1          0        1   140
#> [176,]  59   5      0        180        1   155
#> [177,]  58  26      1          0        1   189
#> [178,]  61   9      0          9        1   160
#> [179,]  58   4      1          3        0   120
#> [180,]  60   0      1          0        1    80
#> [181,]  59   2      1          1        0   140
#> [182,]  58   8      0        161        1   140
#> [183,]  58  14      1          6        0   190
#> [184,]  61   4      1          3        0   151
#> [185,]  61   9      1          8        0   150
#> [186,]  61   3      1          2        1   102
#> [187,]  58   1      0          1        1   100
#> [188,]  58  10      0         10        1   150
#> [189,]  57   4      1          3        0   138
#> [190,]  57  11      0        180        1   150
#> [191,]  61   3      0         17        0   143
#> [192,]  57   3      1          2        0   120
#> [193,]  58  19      1         13        1   140
#> [194,]  56  18      1         11        1   165
#> [195,]  55   4      1          3        1   160
#> [196,]  60  12      1          0        1   114
#> [197,]  55   9      1          7        1   135
#> [198,]  61   4      1          0        1   115
#> [199,]  57   1      0          1        0   126
#> [200,]  59   5      1          2        0   182
#> [201,]  58   5      1          1        1   135
#> [202,]  59  10      0        180        0   160
#> [203,]  61   8      0         77        0   120
#> [204,]  61  13      0         13        0   210
#> [205,]  58   8      1          5        0   152
#> [206,]  62   7      1          2        1   180
#> [207,]  61  28      1          7        0   133
#> [208,]  58   8      1          3        1   150
#> [209,]  61   7      0          7        1   150
#> [210,]  60   7      0          7        0   147
#> [211,]  61   6      0          6        0   134
#> [212,]  57  12      1          9        1   120
#> [213,]  62   4      1          0        0   160
#> [214,]  58   3      1          0        1   146
#> [215,]  62   4      1          3        0   173
#> [216,]  58   2      0         30        0   202
#> [217,]  59   1      0        180        0   155
#> [218,]  63   6      0         28        1   120
#> [219,]  61  13      0         13        0   120
#> [220,]  61   5      0          5        1   110
#> [221,]  61   5      0          5        1   160
#> [222,]  62  17      1         10        1   180
#> [223,]  58   7      0        180        1   150
#> [224,]  63   3      1          1        0   180
#> [225,]  63   1      0        180        1   130
#> [226,]  61   7      0        180        0   135
#> [227,]  63  15      1         10        1   126
#> [228,]  64   4      0        180        0   130
#> [229,]  61   9      1          9        1   150
#> [230,]  58   9      1          9        0   110
#> [231,]  62   7      0          7        0   150
#> [232,]  59   1      0         22        1   162
#> [233,]  58   2      0        180        0   127
#> [234,]  60   7      1          5        1   141
#> [235,]  60   7      1          1        1    90
#> [236,]  63   1      0          1        0   162
#> [237,]  63   1      0          1        0   130
#> [238,]  62   6      0        180        0   170
#> [239,]  61  15      1         13        0   170
#> [240,]  59   4      0          4        0   149
#> [241,]  60   3      0          3        0   168
#> [242,]  64  10      1          9        0   160
#> [243,]  62   6      0          6        0   120
#> [244,]  63  12      1         10        0   200
#> [245,]  59  10      0        180        1   130
#> [246,]  60   8      0         17        1   130
#> [247,]  61   6      1          1        1   117
#> [248,]  64  12      1         11        0   160
#> [249,]  64   6      1          0        1   140
#> [250,]  63  10      1          0        1   148
#> [251,]  63  14      1          9        0   123
#> [252,]  65  36      1         11        0   140
#> [253,]  63   4      1          3        0   162
#> [254,]  66   3      1          1        0   127
#> [255,]  66   5      1          0        1   110
#> [256,]  65   8      1          0        0   168
#> [257,]  65  10      1          8        1   120
#> [258,]  64   0      0          0        1    90
#> [259,]  64  21      1         10        0   190
#> [260,]  64   9      0        180        0   150
#> [261,]  61   4      0        180        1   113
#> [262,]  65   3      0        180        1   190
#> [263,]  63  16      1          7        1   110
#> [264,]  64   7      0        180        1   120
#> [265,]  63  12      0         12        1   150
#> [266,]  62   3      1          1        1   199
#> [267,]  65   6      0          9        0   112
#> [268,]  65   3      1          0        1    80
#> [269,]  63   5      1          4        0   170
#> [270,]  63   2      1          1        0   180
#> [271,]  64   2      0          2        0   201
#> [272,]  66  18      1          5        0   142
#> [273,]  66  16      1         11        1   169
#> [274,]  62   9      0        180        0   145
#> [275,]  63   9      1          8        1   160
#> [276,]  63   3      1          2        0   120
#> [277,]  64  19      1          8        1   160
#> [278,]  65   8      1          0        1   140
#> [279,]  68   5      1          4        1   150
#> [280,]  67   4      1          3        0   130
#> [281,]  65   2      1          1        1   170
#> [282,]  68   1      0        180        1   166
#> [283,]  64  10      1          9        1   110
#> [284,]  63   7      1          0        0   162
#> [285,]  63  10      0         16        1   160
#> [286,]  66  14      0        180        0   130
#> [287,]  65  17      1         14        1   100
#> [288,]  63  10      0         18        1   130
#> [289,]  67  11      0         11        0   150
#> [290,]  68  11      0        180        0   160
#> [291,]  68  14      0         79        0   172
#> [292,]  66  12      1         10        1   150
#> [293,]  65  15      1         12        1   150
#> [294,]  66  11      1          0        0   100
#> [295,]  65   4      1          2        1   145
#> [296,]  69  12      0         15        1   140
#> [297,]  66  15      1         13        1   160
#> [298,]  65  11      1          6        0   130
#> [299,]  69  21      1         10        0   180
#> [300,]  66   9      1          8        0   130
#> [301,]  63   8      0        180        1   120
#> [302,]  68  14      1         13        1   140
#> [303,]  65   8      1          0        1    90
#> [304,]  66   3      0          3        1   138
#> [305,]  69   1      1          0        0   170
#> [306,]  67   1      0        180        1   160
#> [307,]  65   1      1          0        0   133
#> [308,]  67   7      1          4        1   130
#> [309,]  63   2      1          0        0    99
#> [310,]  65   6      0          6        0    80
#> [311,]  69   6      0         99        1   140
#> [312,]  70  15      1         12        1   132
#> [313,]  64  11      0         11        0   125
#> [314,]  64   4      0        180        1   140
#> [315,]  64   0      1          0        1   118
#> [316,]  67   2      0         18        0   131
#> [317,]  68   4      1          0        1   160
#> [318,]  65  13      1         12        1   130
#> [319,]  69  17      1         10        0   140
#> [320,]  69   8      0         93        0   140
#> [321,]  64  21      0         21        1   155
#> [322,]  65   1      0          1        1   120
#> [323,]  68  18      1          0        1   160
#> [324,]  65   6      0        101        1   115
#> [325,]  68   4      0          4        1   190
#> [326,]  70   7      1          0        1   190
#> [327,]  66   9      1          3        1   151
#> [328,]  70   4      1          0        1   180
#> [329,]  66   4      0        180        0   130
#> [330,]  67  10      1          9        0   200
#> [331,]  68  18      1         14        1   170
#> [332,]  69   0      0          0        1   148
#> [333,]  65   2      0        180        0   130
#> [334,]  68   7      1          0        1   150
#> [335,]  69   3      1          2        0   151
#> [336,]  67  14      1         13        0   130
#> [337,]  69   8      0        180        1   180
#> [338,]  66   2      0          2        1   228
#> [339,]  69   5      0          5        1   142
#> [340,]  71   3      0        103        0   133
#> [341,]  70  22      1         13        0   103
#> [342,]  67   5      0          5        0   130
#> [343,]  68   6      0        180        0   145
#> [344,]  69   6      1          4        1   174
#> [345,]  72   3      1          0        1   132
#> [346,]  66   2      1          1        0   123
#> [347,]  69  11      1          0        1   120
#> [348,]  67   7      1          4        0   122
#> [349,]  69   4      1          3        0   132
#> [350,]  68   2      0          7        1   130
#> [351,]  69   8      1          2        0   121
#> [352,]  67  13      1          9        0   130
#> [353,]  70   3      0        123        0   130
#> [354,]  72   5      1          4        0   170
#> [355,]  67  22      1          1        1   140
#> [356,]  68   3      0         19        0   135
#> [357,]  67  12      1          8        0   120
#> [358,]  69   1      0          1        1   110
#> [359,]  67   1      0          1        1    60
#> [360,]  67   4      0         60        1   136
#> [361,]  67   8      1          0        1   130
#> [362,]  72  13      1         11        1   195
#> [363,]  68  10      1          8        1   160
#> [364,]  71   6      0          9        0   120
#> [365,]  70  11      0        180        1   210
#> [366,]  72  19      1          8        0   120
#> [367,]  72  12      1         10        0   170
#> [368,]  67   8      0        180        1   170
#> [369,]  67   5      1          0        1   147
#> [370,]  70   5      0        180        0   150
#> [371,]  72   2      0          2        1   100
#> [372,]  67   4      1          1        0   134
#> [373,]  72   6      1          5        0   115
#> [374,]  71   1      0        173        1   188
#> [375,]  68  23      0        180        1   220
#> [376,]  70   3      0        180        0   121
#> [377,]  69   3      0        180        0   220
#> [378,]  71   3      1          2        0   150
#> [379,]  68   4      1          3        0   210
#> [380,]  72   5      0         28        0   120
#> [381,]  69  16      1         10        1   140
#> [382,]  69   8      1          1        0   164
#> [383,]  68   7      0        180        1   130
#> [384,]  73   6      1          0        1   270
#> [385,]  71   2      1          0        1   180
#> [386,]  70   3      0          3        1   159
#> [387,]  72   6      0        180        1   130
#> [388,]  73   0      0        180        1   161
#> [389,]  73   4      0        180        1   154
#> [390,]  71   3      1          1        0   150
#> [391,]  71  15      1         11        0   165
#> [392,]  68   9      0        180        1   120
#> [393,]  71  20      1         10        0   140
#> [394,]  74   0      1          0        1    90
#> [395,]  71  17      1         11        0   160
#> [396,]  71   3      1          2        1   190
#> [397,]  69  12      1          1        1   149
#> [398,]  70  26      1         11        1   120
#> [399,]  73   4      0         58        1   160
#> [400,]  72   5      1          3        1   160
#> [401,]  70   3      0        180        1   154
#> [402,]  72  15      1          0        1   150
#> [403,]  71   7      1          2        0   143
#> [404,]  72   8      1          0        1   140
#> [405,]  74   3      0          3        1   150
#> [406,]  73  17      1         11        0   140
#> [407,]  69   2      1          1        1    80
#> [408,]  71  14      1         13        1   170
#> [409,]  69   7      0        180        1   144
#> [410,]  70   8      0          8        0   120
#> [411,]  71  10      1          9        1   120
#> [412,]  75   2      1          1        0   145
#> [413,]  72  10      1          9        1   160
#> [414,]  73  10      1         10        1   120
#> [415,]  74  15      1          9        1   179
#> [416,]  73   1      0          1        1    80
#> [417,]  75   9      1          7        0   140
#> [418,]  75  13      1          1        1   130
#> [419,]  71  11      1          8        0   110
#> [420,]  71   4      0          4        0   134
#> [421,]  72  15      1         12        1   120
#> [422,]  70   7      1          4        0   184
#> [423,]  72   7      0         57        1   145
#> [424,]  72  11      0         11        1   140
#> [425,]  73   5      1          3        1   112
#> [426,]  76  25      1         12        1   170
#> [427,]  73  12      1         12        1   140
#> [428,]  72   2      0        180        0   120
#> [429,]  75   1      0        180        1   140
#> [430,]  71   3      1          0        0   144
#> [431,]  73   5      0        180        0   126
#> [432,]  74  34      1          8        1   233
#> [433,]  76   3      1          0        1   120
#> [434,]  71  32      1         12        1   107
#> [435,]  72   5      0        180        0   154
#> [436,]  72   3      0        180        0   160
#> [437,]  76   5      0          5        1   130
#> [438,]  77  11      0         11        1   150
#> [439,]  77   4      0          4        0   185
#> [440,]  72   7      1          2        0   142
#> [441,]  73  15      0         15        1   160
#> [442,]  71  16      0        180        0   140
#> [443,]  73  10      1         10        0   124
#> [444,]  74   7      0        180        1   150
#> [445,]  74   3      0          3        1   128
#> [446,]  74   2      1          1        0   140
#> [447,]  76   8      1          0        1   141
#> [448,]  74  19      1          4        1   200
#> [449,]  73   6      0          6        1   114
#> [450,]  75  23      1         14        1   110
#> [451,]  74   2      0        180        0   190
#> [452,]  72   4      0         85        1   120
#> [453,]  76  13      1         10        0   110
#> [454,]  75   4      1          0        1   122
#> [455,]  76  13      1          8        1   148
#> [456,]  75   4      1          2        1   188
#> [457,]  76   4      0          4        1   155
#> [458,]  75   1      0          1        1   125
#> [459,]  74   2      0        180        0   111
#> [460,]  73   1      0         52        1   105
#> [461,]  73   0      0        180        0   156
#> [462,]  72   5      0        180        0   120
#> [463,]  78  12      1         11        1   160
#> [464,]  76  44      1         10        0   105
#> [465,]  76   5      0        180        0   185
#> [466,]  74  10      1          0        1   135
#> [467,]  75   9      0        180        1   140
#> [468,]  73  33      1         12        1   175
#> [469,]  77   5      1          0        0   123
#> [470,]  77  12      1          9        1   100
#> [471,]  73  10      1          9        0   146
#> [472,]  77   1      1          0        1    90
#> [473,]  73   7      1          0        0   174
#> [474,]  74   6      0         79        1   140
#> [475,]  75   3      1          1        1   171
#> [476,]  74   9      1          8        0   200
#> [477,]  74   2      1          0        1   130
#> [478,]  77   3      0        180        0   110
#> [479,]  76  29      0         47        0    90
#> [480,]  73   8      1          1        1   162
#> [481,]  73  11      1          2        1   110
#> [482,]  74  15      0        180        1   172
#> [483,]  78   8      1          6        1   110
#> [484,]  74   7      0          7        0   161
#> [485,]  78  32      1          9        1   198
#> [486,]  79   6      0        180        0   170
#> [487,]  78   0      0        180        1   212
#> [488,]  78  13      1          5        0   130
#> [489,]  78  15      0        180        1   270
#> [490,]  80   8      0          8        1   120
#> [491,]  75  13      1          6        0   150
#> [492,]  74  10      1          8        0   135
#> [493,]  76   1      0          1        1    83
#> [494,]  79   4      0         80        0   145
#> [495,]  78  12      1          9        0   150
#> [496,]  78   2      1          1        0   130
#> [497,]  75   4      1          0        0   212
#> [498,]  77   2      1          0        1   143
#> [499,]  76  11      1          0        0   120
#> [500,]  75  11      1          4        0   162
#> [501,]  75   3      0          3        0     0
#> [502,]  76   7      0         29        1   150
#> [503,]  77  24      0         24        1   160
#> [504,]  79   8      0         32        1   120
#> [505,]  76   3      1          0        1   140
#> [506,]  78  11      1          1        1   140
#> [507,]  78  14      1          0        1   140
#> [508,]  78  11      1          8        1   118
#> [509,]  76   4      0          4        1   160
#> [510,]  79   4      0          4        1   125
#> [511,]  77   6      0          6        1   107
#> [512,]  78  11      0        180        1   135
#> [513,]  79   3      0          3        0   120
#> [514,]  77   7      0        180        1   170
#> [515,]  79   4      1          0        1   120
#> [516,]  81   1      0        180        0   120
#> [517,]  80  15      1         12        1   150
#> [518,]  77   9      1          4        0   141
#> [519,]  78   4      0         59        1   112
#> [520,]  80  17      1         12        0   100
#> [521,]  79  10      0         10        1   120
#> [522,]  80  15      1          0        1    90
#> [523,]  81   4      1          2        1   126
#> [524,]  79  28      0        164        0   100
#> [525,]  80   6      0        173        1   160
#> [526,]  78  32      0        180        1   130
#> [527,]  81   3      0        180        0   184
#> [528,]  81   2      0        175        0   172
#> [529,]  78   7      0          7        1   147
#> [530,]  77  13      1          0        1   190
#> [531,]  80   5      1          1        1   108
#> [532,]  79   3      0          3        1   101
#> [533,]  78  26      1          5        0   194
#> [534,]  78  20      1          0        1   109
#> [535,]  80   1      0          1        0   100
#> [536,]  82   3      1          1        1   144
#> [537,]  77   5      0         85        0   188
#> [538,]  80   2      1          1        0   168
#> [539,]  79   6      0          6        0   152
#> [540,]  80   6      1          0        1   119
#> [541,]  78   2      0        180        0   148
#> [542,]  80   5      0          5        1   130
#> [543,]  82   1      1          0        1    82
#> [544,]  79  10      0        180        1   150
#> [545,]  77   4      0        180        1    98
#> [546,]  81   1      0        108        0   129
#> [547,]  78  12      0        180        0   134
#> [548,]  79   1      0        125        0   193
#> [549,]  82  21      1          2        0   155
#> [550,]  80   6      0          6        1   110
#> [551,]  83   5      0        180        0   148
#> [552,]  79   7      1          6        0   130
#> [553,]  81  11      1          8        0   160
#> [554,]  81   5      0        177        0    41
#> [555,]  80  11      1          8        0   170
#> [556,]  79   4      0          4        1   183
#> [557,]  79   1      0        180        1   170
#> [558,]  84   5      1          1        1    85
#> [559,]  83   8      0          8        0   115
#> [560,]  81  16      0         16        1   110
#> [561,]  80  11      1          8        0   110
#> [562,]  80   8      1          7        0   160
#> [563,]  81   2      1          1        0   198
#> [564,]  83   2      0          2        1   155
#> [565,]  80   3      1          1        1   230
#> [566,]  81   1      0          1        1   150
#> [567,]  84   1      0         38        1   205
#> [568,]  83   3      0        180        0   174
#> [569,]  81   4      0         90        1   138
#> [570,]  79   9      1          8        0   150
#> [571,]  85   3      1          2        1   160
#> [572,]  80  13      1          8        1   140
#> [573,]  84   4      0         89        1   129
#> [574,]  80   2      1          0        1   130
#> [575,]  79   4      0          4        1    60
#> [576,]  80   6      0         71        1   189
#> [577,]  83   1      0          1        1   100
#> [578,]  82  19      0         19        0   120
#> [579,]  83   9      0        180        0   198
#> [580,]  83   3      0        114        0    98
#> [581,]  81  14      1         12        1   128
#> [582,]  83   2      0        154        0   130
#> [583,]  82   0      0          2        1   100
#> [584,]  85   9      1          6        1   160
#> [585,]  81   4      0          4        0   175
#> [586,]  84  15      1         13        1   110
#> [587,]  81  12      0         12        1   163
#> [588,]  82  16      1          8        0   103
#> [589,]  81   4      0          4        0   160
#> [590,]  86  12      0        180        1   120
#> [591,]  82   3      1          2        0   130
#> [592,]  80   2      0         88        0   135
#> [593,]  84   6      0        165        0   145
#> [594,]  86   3      0          3        1   140
#> [595,]  82   9      0        180        1   134
#> [596,]  81   2      1          0        1   118
#> [597,]  81   4      0        180        0   160
#> [598,]  82   1      0        180        1   193
#> [599,]  83   4      0          4        0   130
#> [600,]  87   2      0          5        1   137
#> [601,]  82  14      1         11        1   103
#> [602,]  84  16      0         70        1   150
#> [603,]  83  19      0         43        0   150
#> [604,]  84   3      1          2        0   125
#> [605,]  83  10      1          0        1   190
#> [606,]  86   2      0        180        1   169
#> [607,]  88  14      1          3        1   130
#> [608,]  83  13      1         12        0   170
#> [609,]  84   7      1          2        0   148
#> [610,]  84   9      0         92        1   110
#> [611,]  82   4      0          4        0   130
#> [612,]  86  13      0        177        0   163
#> [613,]  85   3      0          3        1   113
#> [614,]  84  13      0         62        1   100
#> [615,]  86   6      1          1        0   112
#> [616,]  88   4      0          4        0   100
#> [617,]  83  20      1          3        1   150
#> [618,]  88   4      0          4        1   115
#> [619,]  83   9      0         65        1   150
#> [620,]  86   9      1          7        1   142
#> [621,]  87   2      0        180        1   130
#> [622,]  86   6      0         46        0   173
#> [623,]  88   3      0        115        0   110
#> [624,]  88   2      0        180        1    68
#> [625,]  83   3      0          3        1   130
#> [626,]  87   8      0          8        1   157
#> [627,]  86  15      1          8        1   109
#> [628,]  88   4      0          4        0    86
#> [629,]  89   5      0        119        1   140
#> [630,]  87   1      0          1        0   170
#> [631,]  84   8      0        180        1   119
#> [632,]  85   8      0          8        1   136
#> [633,]  84   0      0        180        1   136
#> [634,]  90  14      0         14        1   100
#> [635,]  88   1      0          1        0   135
#> [636,]  86   4      0        180        1   145
#> [637,]  91   8      0          8        0   100
#> [638,]  87   2      0        180        0   160
#> [639,]  91  10      0        145        0   135
#> [640,]  86   3      1          0        1    80
#> [641,]  88   7      0         24        0   119
#> [642,]  88   8      0         50        1   154
#> [643,]  90  11      1         10        1   186
#> [644,]  86   9      1          7        0   130
#> [645,]  90   4      1          0        0   121
#> [646,]  91   1      0          1        1    74
#> [647,]  87  43      0        178        1   130
#> [648,]  87   5      0         36        1   150
#> [649,]  90   5      1          0        1   125
#> [650,]  88   3      1          2        0   159
#> [651,]  92   1      0          1        1   167
#> [652,]  91   3      0         33        1   137
#> [653,]  88   5      0        158        0   100
#> [654,]  87   7      0         74        1   105
#> [655,]  91   5      0        169        1   176
#> [656,]  89  14      0        180        1    84
#> [657,]  90  18      0        180        0   188
#> [658,]  91   4      1          0        1   120
#> [659,]  90  19      1         11        1   129
#> [660,]  91   2      0          2        1   116
#> [661,]  93   8      0        179        1   110
#> [662,]  94   8      0          8        1   142
#> [663,]  91   1      0        180        0   158
#> [664,]  90  16      0         16        1   106
#> [665,]  90   3      0         67        0   162
#> [666,]  94   3      0         26        1   144
#> [667,]  93   0      1          0        1   122
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
#>  [91]   5.0  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   4.0+  85.0  180.0+ 166.0+
#> [101] 180.0+  16.0+ 180.0+   7.0+   6.0+ 180.0+ 180.0+ 180.0+ 171.0+ 180.0+
#> [111] 180.0+  28.0    6.0+ 180.0+   9.0+ 180.0+ 180.0+ 180.0+ 175.0+   2.0 
#> [121]   7.0+ 180.0+ 180.0+ 180.0+  16.0+ 180.0+  15.0+ 180.0+ 180.0+  12.0+
#> [131] 134.0+   8.0    3.0+ 180.0+ 180.0+ 180.0+ 180.0+   1.0  165.0  180.0+
#> [141] 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+
#> [151] 180.0+ 171.0+  15.0    5.0+ 180.0+   4.0+ 147.0+ 180.0+ 180.0+   5.0+
#> [161] 180.0+   4.0+   9.0+   1.0    2.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+
#> [171]   2.0  180.0+ 180.0+ 180.0+  64.0  180.0+ 180.0+   9.0+ 180.0+   0.5 
#> [181] 180.0+ 161.0+ 171.0+ 180.0+ 180.0+   3.0    1.0   10.0+ 180.0+ 180.0+
#> [191]  17.0    3.0+  19.0  180.0+ 180.0+ 172.0+  24.0  180.0+   1.0+ 180.0+
#> [201] 180.0+ 180.0+  77.0   13.0+   8.0+ 180.0+  94.0  180.0+   7.0    7.0+
#> [211]   6.0  180.0+ 180.0+   3.0+ 180.0+  30.0  180.0+  28.0   13.0+   5.0 
#> [221]   5.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+   9.0 
#> [231]   7.0+  22.0  180.0+  84.0  180.0+   1.0    1.0  180.0+ 180.0+   4.0+
#> [241]   3.0+ 167.0    6.0+ 180.0+ 180.0+  17.0  180.0+  12.0  180.0+ 180.0+
#> [251]  14.0+  36.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   0.5  180.0+ 180.0+
#> [261] 180.0+ 180.0+ 180.0+ 180.0+  12.0  180.0+   9.0    3.0  180.0+ 180.0+
#> [271]   2.0+  18.0+ 180.0+ 180.0+ 180.0+   3.0+ 103.0   15.0    5.0+ 180.0+
#> [281] 175.0+ 180.0+ 180.0+   7.0+  16.0  180.0+ 180.0+  18.0   11.0+ 180.0+
#> [291]  79.0   80.0   15.0+ 180.0+   4.0+  15.0  180.0+ 180.0+ 174.0+ 180.0+
#> [301] 180.0+ 180.0+   8.0+   3.0  175.0  180.0+ 180.0+ 180.0+ 180.0+   6.0 
#> [311]  99.0  180.0+  11.0+ 180.0+   0.5   18.0  180.0+ 180.0+ 180.0+  93.0 
#> [321]  21.0+   1.0   18.0+ 101.0    4.0    7.0+ 180.0+ 180.0+ 180.0+ 174.0+
#> [331] 180.0+   0.5  180.0+ 180.0+ 180.0+ 180.0+ 180.0+   2.0    5.0+ 103.0 
#> [341] 180.0+   5.0+ 180.0+  97.0  180.0+   2.0+ 180.0+   7.0  180.0+   7.0 
#> [351]   8.0+  13.0+ 123.0  180.0+  51.0   19.0  180.0+   1.0    1.0   60.0 
#> [361] 180.0+ 132.0   10.0+   9.0  180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+
#> [371]   2.0   76.0  180.0+ 173.0+ 180.0+ 180.0+ 180.0+ 180.0+ 180.0+  28.0 
#> [381]  16.0+ 180.0+ 180.0+   6.0  180.0+   3.0+ 180.0+ 180.0+ 180.0+   3.0+
#> [391] 180.0+ 180.0+  20.0    0.5  180.0+   3.0   12.0  180.0+  58.0  180.0+
#> [401] 180.0+ 180.0+ 180.0+ 180.0+   3.0  180.0+   2.0   14.0+ 180.0+   8.0+
#> [411] 179.0+ 180.0+ 159.0   15.0  180.0+   1.0  180.0+  13.0  180.0+   4.0+
#> [421] 180.0+ 104.0+  57.0   11.0    5.0  180.0+  12.0  180.0+ 180.0+ 180.0+
#> [431] 180.0+  34.0  180.0+ 177.0+ 180.0+ 180.0+   5.0   11.0+   4.0+   7.0 
#> [441]  15.0+ 180.0+  10.0  180.0+   3.0  180.0+ 180.0+ 180.0+   6.0  180.0+
#> [451] 180.0+  85.0  174.0+   4.0  180.0+  46.0    4.0    1.0  180.0+  52.0 
#> [461] 180.0+ 180.0+  12.0  180.0+ 180.0+ 180.0+ 180.0+  33.0    5.0  180.0+
#> [471] 180.0+   1.0    7.0+  79.0    3.0  168.0+ 176.0+ 180.0+  47.0  180.0+
#> [481]  11.0  180.0+   8.0+   7.0   32.0  180.0+ 180.0+ 172.0  180.0+   8.0 
#> [491] 180.0+ 180.0+   1.0   80.0  180.0+ 180.0+   4.0+   2.0   11.0  152.0+
#> [501]   3.0   29.0   24.0   32.0    3.0+ 180.0+ 180.0+  11.0    4.0    4.0 
#> [511]   6.0  180.0+   3.0  180.0+ 138.0  180.0+ 180.0+  71.0   59.0   17.0 
#> [521]  10.0+ 180.0+  93.0  164.0  173.0  180.0+ 180.0+ 175.0+   7.0+  22.0 
#> [531]   5.0+   3.0  171.0+  20.0+   1.0  180.0+  85.0   10.0    6.0+   6.0 
#> [541] 180.0+   5.0    1.0  180.0+ 180.0+ 108.0  180.0+ 125.0  180.0+   6.0 
#> [551] 180.0+ 180.0+ 180.0+ 177.0+ 169.0    4.0  180.0+ 180.0+   8.0+  16.0 
#> [561] 180.0+ 180.0+ 180.0+   2.0    3.0+   1.0   38.0  180.0+  90.0  180.0+
#> [571] 180.0+ 180.0+  89.0  180.0+   4.0   71.0    1.0   19.0  180.0+ 114.0 
#> [581] 180.0+ 154.0    2.0  180.0+   4.0+ 180.0+  12.0   16.0+   4.0+ 180.0+
#> [591]   3.0   88.0  165.0    3.0  180.0+ 180.0+ 180.0+ 180.0+   4.0+   5.0 
#> [601] 174.0   70.0   43.0  180.0+ 180.0+ 180.0+  14.0   13.0  180.0+  92.0 
#> [611]   4.0  177.0    3.0+  62.0    6.0+   4.0+  20.0    4.0   65.0   11.0 
#> [621] 180.0+  46.0  115.0  180.0+   3.0+   8.0+ 180.0+   4.0  119.0    1.0+
#> [631] 180.0+   8.0  180.0+  14.0    1.0+ 180.0+   8.0  180.0+ 145.0    3.0 
#> [641]  24.0   50.0   11.0  180.0+   4.0    1.0  178.0+  36.0   89.0   75.0 
#> [651]   1.0   33.0  158.0   74.0  169.0  180.0+ 180.0+   4.0  180.0+   2.0 
#> [661] 179.0+   8.0+ 180.0+  16.0   67.0   26.0    0.5  180.0+   3.0   15.0+
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
#>   0.8140894 
```
