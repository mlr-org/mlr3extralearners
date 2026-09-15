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
#>     Threshold    1.0530956298983092
#>     Node 1    -0.95453975837063
#>     Node 2    -2.4662596989793935
#>     Node 3    0.26253560930211783
#>     Node 4    1.2089204063725092
#>     Node 5    0.3161654134831273
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -1.3442328257741574
#>     Attrib am    0.6956215197825611
#>     Attrib carb    0.49479341717160863
#>     Attrib cyl    -1.7280266180729509
#>     Attrib disp    0.2550174855049447
#>     Attrib drat    -1.0272251824205139
#>     Attrib gear    -0.8516469902807225
#>     Attrib hp    0.2529731142500886
#>     Attrib qsec    -0.7987444042077757
#>     Attrib vs    0.29166601276774506
#>     Attrib wt    0.9582311046819392
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    2.068557831668529
#>     Attrib am    -0.6546907644525809
#>     Attrib carb    -0.09136809911415053
#>     Attrib cyl    -0.6142485876094583
#>     Attrib disp    -0.4625818079099755
#>     Attrib drat    1.5026370575707586
#>     Attrib gear    -0.9898048205054315
#>     Attrib hp    2.301232707126932
#>     Attrib qsec    -2.2168555165055395
#>     Attrib vs    0.04055197331314817
#>     Attrib wt    2.8057055220197857
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -1.3718453730271272
#>     Attrib am    -0.5485855672081461
#>     Attrib carb    0.32448308580876795
#>     Attrib cyl    -0.24658031540631664
#>     Attrib disp    0.23141633244140533
#>     Attrib drat    0.13647545017173196
#>     Attrib gear    -0.01055050529460853
#>     Attrib hp    0.2987182183341818
#>     Attrib qsec    -0.2461696204444098
#>     Attrib vs    0.15623968368441699
#>     Attrib wt    0.20881716914725823
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.9492496243737053
#>     Attrib am    -0.6715468475128427
#>     Attrib carb    0.5325665381452706
#>     Attrib cyl    0.08028108683254917
#>     Attrib disp    0.08370397010032604
#>     Attrib drat    1.1089113785267728
#>     Attrib gear    -0.07990224763675277
#>     Attrib hp    1.095361453117887
#>     Attrib qsec    -1.1600813023040961
#>     Attrib vs    -0.7044970357351849
#>     Attrib wt    0.3465931004810831
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -1.1626521197625626
#>     Attrib am    -0.5959956534645567
#>     Attrib carb    0.4076322800726781
#>     Attrib cyl    -0.14680735324263508
#>     Attrib disp    0.13141165326483517
#>     Attrib drat    0.44793410320546034
#>     Attrib gear    0.18020813768953786
#>     Attrib hp    0.3592926957409588
#>     Attrib qsec    -0.4115359495602228
#>     Attrib vs    -0.048618766689032845
#>     Attrib wt    0.38985453646346657
#> Class 
#>     Input
#>     Node 0
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 23.70632 
```
