# Boosted Generalized Linear Classification Learner

Fit a generalized linear classification model using a boosting
algorithm. Calls
[`mboost::glmboost()`](https://rdrr.io/pkg/mboost/man/glmboost.html)
from [mboost](https://CRAN.R-project.org/package=mboost).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.glmboost")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [mboost](https://CRAN.R-project.org/package=mboost)

## Parameters

|               |           |                |                               |                       |
|---------------|-----------|----------------|-------------------------------|-----------------------|
| Id            | Type      | Default        | Levels                        | Range                 |
| family        | character | Binomial       | Binomial, AdaExp, AUC, custom | \-                    |
| custom.family | untyped   | \-             |                               | \-                    |
| link          | character | logit          | logit, probit                 | \-                    |
| type          | character | adaboost       | glm, adaboost                 | \-                    |
| center        | logical   | TRUE           | TRUE, FALSE                   | \-                    |
| mstop         | integer   | 100            |                               | \\(-\infty, \infty)\\ |
| nu            | numeric   | 0.1            |                               | \\(-\infty, \infty)\\ |
| risk          | character | inbag          | inbag, oobag, none            | \-                    |
| oobweights    | untyped   | NULL           |                               | \-                    |
| trace         | logical   | FALSE          | TRUE, FALSE                   | \-                    |
| stopintern    | untyped   | FALSE          |                               | \-                    |
| na.action     | untyped   | stats::na.omit |                               | \-                    |
| contrasts.arg | untyped   | \-             |                               | \-                    |

## Offset

If a `Task` contains a column with the `offset` role, it is
automatically incorporated via the `offset` argument in `mboost`'s
training function. No offset is applied during prediction for this
learner.

## References

Bühlmann, Peter, Yu, Bin (2003). “Boosting with the L 2 loss: regression
and classification.” *Journal of the American Statistical Association*,
**98**(462), 324–339.

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
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifGLMBoost`

## Methods

### Public methods

- [`LearnerClassifGLMBoost$new()`](#method-LearnerClassifGLMBoost-new)

- [`LearnerClassifGLMBoost$clone()`](#method-LearnerClassifGLMBoost-clone)

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
- [`mlr3::Learner$selected_features()`](https://mlr3.mlr-org.com/reference/Learner.html#method-selected_features)
- [`mlr3::Learner$train()`](https://mlr3.mlr-org.com/reference/Learner.html#method-train)
- [`mlr3::LearnerClassif$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerClassif.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### Method `new()`

Create a `LearnerClassifGLMBoost` object.

#### Usage

    LearnerClassifGLMBoost$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifGLMBoost$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.glmboost")
print(learner)
#> 
#> ── <LearnerClassifGLMBoost> (classif.glmboost): Boosted Generalized Linear Model
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and mboost
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: offset, twoclass, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> 
#>   Generalized Linear Models Fitted via Gradient Boosting
#> 
#> Call:
#> glmboost.formula(formula = f, data = data, family = new("boost_family_glm",     fW = function (f)     {        f <- pmin(abs(f), 36) * sign(f)        p <- exp(f)/(exp(f) + exp(-f))        4 * p * (1 - p)    }, ngradient = function (y, f, w = 1)     {        exp2yf <- exp(-2 * y * f)        -(-2 * y * exp2yf)/(log(2) * (1 + exp2yf))    }, risk = function (y, f, w = 1)     sum(w * loss(y, f), na.rm = TRUE), offset = function (y,         w)     {        p <- weighted.mean(y > 0, w)        1/2 * log(p/(1 - p))    }, check_y = function (y)     {        if (!is.factor(y))             stop("response is not a factor but ", sQuote("family = Binomial()"))        if (nlevels(y) != 2)             stop("response is not a factor at two levels but ",                 sQuote("family = Binomial()"))        return(c(-1, 1)[as.integer(y)])    }, weights = function (w)     {        switch(weights, any = TRUE, none = isTRUE(all.equal(unique(w),             1)), zeroone = isTRUE(all.equal(unique(w + abs(w -             1)), 1)), case = isTRUE(all.equal(unique(w - floor(w)),             0)))    }, nuisance = function ()     return(NA), response = function (f)     {        f <- pmin(abs(f), 36) * sign(f)        p <- exp(f)/(exp(f) + exp(-f))        return(p)    }, rclass = function (f)     (f > 0) + 1, name = "Negative Binomial Likelihood (logit link)",     charloss = c("{ \n", "    f <- pmin(abs(f), 36) * sign(f) \n",     "    p <- exp(f)/(exp(f) + exp(-f)) \n", "    y <- (y + 1)/2 \n",     "    -y * log(p) - (1 - y) * log(1 - p) \n", "} \n")), control = ctrl)
#> 
#> 
#>   Negative Binomial Likelihood (logit link) 
#> 
#> Loss function: { 
#>      f <- pmin(abs(f), 36) * sign(f) 
#>      p <- exp(f)/(exp(f) + exp(-f)) 
#>      y <- (y + 1)/2 
#>      -y * log(p) - (1 - y) * log(1 - p) 
#>  } 
#>  
#> 
#> Number of boosting iterations: mstop = 100 
#> Step size:  0.1 
#> Offset:  -0.06483891 
#> 
#> Coefficients: 
#> 
#> NOTE: Coefficients from a Binomial model are half the size of coefficients
#>  from a model fitted via glm(... , family = 'binomial').
#> See Warning section in ?coef.mboost
#>  (Intercept)          V11          V12          V14          V15          V19 
#>   2.26691507  -1.79374383  -1.67545707   0.06424148   0.44521221  -0.13481787 
#>          V20          V21          V22          V28          V36          V37 
#>  -0.04760566  -0.79051204  -0.04192079  -0.60518772   0.59651050   0.29174599 
#>           V4          V44          V45          V47          V49          V52 
#>  -4.04661733  -0.08907182  -0.89949399  -2.19720741  -1.06459150 -11.89795776 
#>          V59 
#>  -3.34947506 
#> attr(,"offset")
#> [1] -0.06483891
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2028986 
```
