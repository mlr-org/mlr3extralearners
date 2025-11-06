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
#>     Threshold    0.011735147793714082
#>     Node 1    0.06518465226530339
#>     Node 2    -1.8452800820560427
#>     Node 3    0.9861919079703404
#>     Node 4    1.3229498056118587
#>     Node 5    -1.194842156368316
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.375539221177133
#>     Attrib am    -0.06296115231344838
#>     Attrib carb    0.4176382075745593
#>     Attrib cyl    -0.022315010456998532
#>     Attrib disp    0.11960964250269852
#>     Attrib drat    0.06525281196243761
#>     Attrib gear    0.18032522940082354
#>     Attrib hp    0.2964876789769221
#>     Attrib qsec    -0.4118334479600527
#>     Attrib vs    -0.2015356502607879
#>     Attrib wt    0.6106823806187213
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -1.2470480351488835
#>     Attrib am    0.4125386592671341
#>     Attrib carb    1.126749930589593
#>     Attrib cyl    -0.3848412557588821
#>     Attrib disp    0.10195657202286158
#>     Attrib drat    0.24346987682308754
#>     Attrib gear    -0.2090588831524391
#>     Attrib hp    0.6706578559866656
#>     Attrib qsec    -0.16698316153960405
#>     Attrib vs    1.801847824983822
#>     Attrib wt    2.5178777636212617
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -1.0890894054189784
#>     Attrib am    -0.034911971992286996
#>     Attrib carb    0.869382564688446
#>     Attrib cyl    0.417075928077063
#>     Attrib disp    0.25818331176751064
#>     Attrib drat    -0.1649123991919307
#>     Attrib gear    0.4761490469389581
#>     Attrib hp    0.5219424482449969
#>     Attrib qsec    -0.1190100990013896
#>     Attrib vs    0.05246011188089429
#>     Attrib wt    -0.2950149911737192
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -2.4056508868200353
#>     Attrib am    0.15172701906684016
#>     Attrib carb    2.0911202816611834
#>     Attrib cyl    0.46512135640700303
#>     Attrib disp    -0.7677641142932531
#>     Attrib drat    1.483092496043277
#>     Attrib gear    1.8926136858776843
#>     Attrib hp    -0.25923555780266266
#>     Attrib qsec    2.7572219848121073
#>     Attrib vs    0.7243263968517839
#>     Attrib wt    -1.6024703860335183
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    0.6573962967350814
#>     Attrib am    -0.6639144632595738
#>     Attrib carb    1.150870761650135
#>     Attrib cyl    0.5175558994118332
#>     Attrib disp    -0.24196702165426445
#>     Attrib drat    0.676358880084815
#>     Attrib gear    0.9343552798095005
#>     Attrib hp    1.3076989624444206
#>     Attrib qsec    -0.4970565521051816
#>     Attrib vs    -0.17865994435540664
#>     Attrib wt    1.0327566901765477
#> Class 
#>     Input
#>     Node 0
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 19.03458 
```
