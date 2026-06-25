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

- [`LearnerRegrMultilayerPerceptron$new()`](#method-LearnerRegrMultilayerPerceptron-initialize)

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

### `LearnerRegrMultilayerPerceptron$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerRegrMultilayerPerceptron$new()

------------------------------------------------------------------------

### `LearnerRegrMultilayerPerceptron$marshal()`

Marshal the learner's model.

#### Usage

    LearnerRegrMultilayerPerceptron$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerRegrMultilayerPerceptron$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerRegrMultilayerPerceptron$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerRegrMultilayerPerceptron$clone()`

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
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

# Define a Task
task = tsk("mtcars")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Linear Node 0
#>     Inputs    Weights
#>     Threshold    0.12153052290792182
#>     Node 1    -0.6996573110810674
#>     Node 2    -1.0742003675434737
#>     Node 3    -0.2951833239222686
#>     Node 4    2.023792077584543
#>     Node 5    -0.21306948487293
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.829480988157026
#>     Attrib am    -0.3034009851120371
#>     Attrib carb    1.2711791958910665
#>     Attrib cyl    -0.6923816635097296
#>     Attrib disp    -0.0019285103763241455
#>     Attrib drat    0.5885121964356859
#>     Attrib gear    -0.2441041818799354
#>     Attrib hp    0.6852278277067472
#>     Attrib qsec    -0.8379171302019598
#>     Attrib vs    0.20160425371650473
#>     Attrib wt    0.2970165535383807
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.8159397867236902
#>     Attrib am    -0.555957338864938
#>     Attrib carb    1.8107155673589403
#>     Attrib cyl    -1.5163025469505649
#>     Attrib disp    -0.7767849607885747
#>     Attrib drat    -0.6293559297555611
#>     Attrib gear    -2.4508801179499984
#>     Attrib hp    1.2675394976159875
#>     Attrib qsec    1.0820263363947535
#>     Attrib vs    1.6509160449394922
#>     Attrib wt    0.01816237114937735
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -1.0390728877318418
#>     Attrib am    -0.01234020287539841
#>     Attrib carb    0.7643619552538232
#>     Attrib cyl    -0.26507529735845686
#>     Attrib disp    0.21632320993307438
#>     Attrib drat    0.03741750025023379
#>     Attrib gear    0.22061865908613326
#>     Attrib hp    0.4271150663148605
#>     Attrib qsec    -0.16048396510814625
#>     Attrib vs    0.32714002600882597
#>     Attrib wt    0.21410708323689645
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -2.8658988643236607
#>     Attrib am    -0.04895560092505023
#>     Attrib carb    0.481275634950262
#>     Attrib cyl    1.088569515259426
#>     Attrib disp    -0.64935810874297
#>     Attrib drat    0.47311708640687794
#>     Attrib gear    1.11400759185916
#>     Attrib hp    -0.8580511543148287
#>     Attrib qsec    2.8705099048329683
#>     Attrib vs    0.7313177011064036
#>     Attrib wt    -2.2599438258316256
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.9873924990948186
#>     Attrib am    0.07950356147217046
#>     Attrib carb    0.7687218360201955
#>     Attrib cyl    -0.1405452477589928
#>     Attrib disp    0.20516722802874557
#>     Attrib drat    0.11455528799945944
#>     Attrib gear    0.29372150468718944
#>     Attrib hp    0.3819174496959884
#>     Attrib qsec    -0.08892932518299558
#>     Attrib vs    0.29670636937243416
#>     Attrib wt    0.2266375866274196
#> Class 
#>     Input
#>     Node 0
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 20.78102 
```
