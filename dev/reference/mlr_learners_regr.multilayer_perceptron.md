# Regression MultilayerPerceptron Learner

Regressor that uses backpropagation to learn a multi-layer perceptron.
Calls
[`RWeka::make_Weka_classifier()`](https://rdrr.io/pkg/RWeka/man/Weka_interfaces.html)
from [RWeka](https://CRAN.R-project.org/package=RWeka).

## Custom mlr3 parameters

- `output_debug_info`:

  - original id: output-debug-info

- `do_not_check_capabilities`:

  - original id: do-not-check-capabilities

- `num_decimal_places`:

  - original id: num-decimal-places

- `batch_size`:

  - original id: batch-size

- Reason for change: This learner contains changed ids of the following
  control arguments since their ids contain irregular pattern

- `G` removed:

  - GUI will be opened

- Reason for change: The parameter is removed because we don't want to
  launch GUI.

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("regr.multilayer_perceptron")

## Meta Information

- Task type: “regr”

- Predict Types: “response”

- Feature Types: “logical”, “integer”, “numeric”, “factor”, “ordered”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [RWeka](https://CRAN.R-project.org/package=RWeka)

## Parameters

|                           |         |         |             |                  |
|---------------------------|---------|---------|-------------|------------------|
| Id                        | Type    | Default | Levels      | Range            |
| subset                    | untyped | \-      |             | \-               |
| na.action                 | untyped | \-      |             | \-               |
| L                         | numeric | 0.3     |             | \\\[0, 1\]\\     |
| M                         | numeric | 0.2     |             | \\\[0, 1\]\\     |
| N                         | integer | 500     |             | \\\[1, \infty)\\ |
| V                         | numeric | 0       |             | \\\[0, 100\]\\   |
| S                         | integer | 0       |             | \\\[0, \infty)\\ |
| E                         | integer | 20      |             | \\\[1, \infty)\\ |
| A                         | logical | FALSE   | TRUE, FALSE | \-               |
| B                         | logical | FALSE   | TRUE, FALSE | \-               |
| H                         | untyped | "a"     |             | \-               |
| C                         | logical | FALSE   | TRUE, FALSE | \-               |
| I                         | logical | FALSE   | TRUE, FALSE | \-               |
| R                         | logical | FALSE   | TRUE, FALSE | \-               |
| D                         | logical | FALSE   | TRUE, FALSE | \-               |
| output_debug_info         | logical | FALSE   | TRUE, FALSE | \-               |
| do_not_check_capabilities | logical | FALSE   | TRUE, FALSE | \-               |
| num_decimal_places        | integer | 2       |             | \\\[1, \infty)\\ |
| batch_size                | integer | 100     |             | \\\[1, \infty)\\ |
| options                   | untyped | NULL    |             | \-               |

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

damirpolat

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerRegr`](https://mlr3.mlr-org.com/reference/LearnerRegr.html)
-\> `LearnerRegrMultilayerPerceptron`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerRegrMultilayerPerceptron$new()`](#method-LearnerRegrMultilayerPerceptron-new)

- [`LearnerRegrMultilayerPerceptron$marshal()`](#method-LearnerRegrMultilayerPerceptron-marshal)

- [`LearnerRegrMultilayerPerceptron$unmarshal()`](#method-LearnerRegrMultilayerPerceptron-unmarshal)

- [`LearnerRegrMultilayerPerceptron$clone()`](#method-LearnerRegrMultilayerPerceptron-clone)

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
- [`mlr3::LearnerRegr$predict_newdata_fast()`](https://mlr3.mlr-org.com/reference/LearnerRegr.html#method-predict_newdata_fast)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrMultilayerPerceptron$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerRegrMultilayerPerceptron$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerRegrMultilayerPerceptron$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerRegrMultilayerPerceptron$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("regr.multilayer_perceptron")
print(learner)
#> 
#> ── <LearnerRegrMultilayerPerceptron> (regr.multilayer_perceptron): MultilayerPer
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3 and RWeka
#> • Predict Types: [response]
#> • Feature Types: logical, integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: marshal and missings
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Linear Node 0
#>     Inputs    Weights
#>     Threshold    0.014454690904793309
#>     Node 1    -0.44339058880143395
#>     Node 2    -1.1565540354269408
#>     Node 3    -0.31403776721842536
#>     Node 4    1.6613166960637313
#>     Node 5    -0.5048509519486954
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -1.0376789116569338
#>     Attrib am    -0.1683839092025541
#>     Attrib carb    0.9321620315522728
#>     Attrib cyl    -0.6866386718805263
#>     Attrib disp    0.18864264455612767
#>     Attrib drat    -0.004121336161832022
#>     Attrib gear    0.4081208767420634
#>     Attrib hp    0.9772737179899397
#>     Attrib qsec    0.3153389596648309
#>     Attrib vs    0.5078983006979503
#>     Attrib wt    -0.12034829027810709
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.504487956648509
#>     Attrib am    -1.8895699433028146
#>     Attrib carb    2.2932723017234498
#>     Attrib cyl    -1.6283137715164335
#>     Attrib disp    0.03136371908648916
#>     Attrib drat    -1.686252568869937
#>     Attrib gear    -0.8253443449662213
#>     Attrib hp    -0.016306226012260776
#>     Attrib qsec    -0.5172635369324626
#>     Attrib vs    1.6135136759656832
#>     Attrib wt    -0.34987920299031783
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -1.2128422388231306
#>     Attrib am    -0.166394479379118
#>     Attrib carb    0.5721155015348852
#>     Attrib cyl    -0.01759510529426546
#>     Attrib disp    0.1261509660575656
#>     Attrib drat    0.055501364230138586
#>     Attrib gear    0.46241927489041373
#>     Attrib hp    0.4337790821947054
#>     Attrib qsec    0.4953766014206611
#>     Attrib vs    0.3344455840396428
#>     Attrib wt    -0.1659725579733204
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -2.2279263220859087
#>     Attrib am    -1.0496647141323414
#>     Attrib carb    -0.4903552417478639
#>     Attrib cyl    -4.6363265524700364E-4
#>     Attrib disp    -0.748572549715801
#>     Attrib drat    -0.31135377664618125
#>     Attrib gear    1.5244277278438292
#>     Attrib hp    -2.2036419379245205
#>     Attrib qsec    2.9473669237700557
#>     Attrib vs    0.41679192549617333
#>     Attrib wt    -0.2799268756019125
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -1.0578025905113768
#>     Attrib am    -0.3038390192999542
#>     Attrib carb    0.7706856526645613
#>     Attrib cyl    -0.1580185038313395
#>     Attrib disp    0.19425585345714472
#>     Attrib drat    0.09981947342276828
#>     Attrib gear    0.47354517092076576
#>     Attrib hp    0.6324085398700613
#>     Attrib qsec    0.606156668317078
#>     Attrib vs    0.45025233656203484
#>     Attrib wt    -0.12703400104686843
#> Class 
#>     Input
#>     Node 0
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 10.37209 
```
