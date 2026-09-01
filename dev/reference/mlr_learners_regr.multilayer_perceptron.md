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
#>     Threshold    0.2273926607783704
#>     Node 1    -0.11949441841849612
#>     Node 2    -1.052704776069885
#>     Node 3    2.495817838485823
#>     Node 4    0.31576803021450645
#>     Node 5    -0.8458188109837742
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -1.210538534029601
#>     Attrib am    0.16055782555093204
#>     Attrib carb    0.11833490843662209
#>     Attrib cyl    -0.12690676070641455
#>     Attrib disp    0.19424945663400797
#>     Attrib drat    0.49758368736006703
#>     Attrib gear    0.5837141116804279
#>     Attrib hp    0.5715831767172214
#>     Attrib qsec    -0.007377920965543085
#>     Attrib vs    0.29025552157762746
#>     Attrib wt    -0.08656000671564709
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.605661739221484
#>     Attrib am    0.43058491108772723
#>     Attrib carb    -0.156940026687373
#>     Attrib cyl    0.8168680291210942
#>     Attrib disp    -2.365566620849451
#>     Attrib drat    -0.7674186849922502
#>     Attrib gear    0.07334677725526281
#>     Attrib hp    2.3035358848675886
#>     Attrib qsec    0.06129243805872367
#>     Attrib vs    -0.5578652144848463
#>     Attrib wt    0.04672047757614422
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -2.2849367078358336
#>     Attrib am    1.8417250687604458
#>     Attrib carb    -0.6699089223190334
#>     Attrib cyl    0.7986388674384927
#>     Attrib disp    -0.13782706743223017
#>     Attrib drat    0.7509954941996281
#>     Attrib gear    1.1860883269905547
#>     Attrib hp    0.019602333903341065
#>     Attrib qsec    3.035242444449743
#>     Attrib vs    -1.2292667914412048
#>     Attrib wt    -0.9436210131364071
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -1.4592992825965383
#>     Attrib am    0.5950450788453175
#>     Attrib carb    -0.28571251553006793
#>     Attrib cyl    0.09384222651418747
#>     Attrib disp    0.3554299434560937
#>     Attrib drat    0.3377094784701335
#>     Attrib gear    0.7785494289346779
#>     Attrib hp    0.12480253950548839
#>     Attrib qsec    0.6225543372232483
#>     Attrib vs    -0.2096678462446104
#>     Attrib wt    -0.31217035637834134
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -1.0896239973417667
#>     Attrib am    0.1049558484915124
#>     Attrib carb    0.6256309555596931
#>     Attrib cyl    -0.30045092176899196
#>     Attrib disp    0.34505132677975275
#>     Attrib drat    1.3330878963683084
#>     Attrib gear    0.4460215758267737
#>     Attrib hp    1.3747162095809387
#>     Attrib qsec    -0.26618638979167486
#>     Attrib vs    0.3545274026166709
#>     Attrib wt    -0.09872908059503788
#> Class 
#>     Input
#>     Node 0
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> regr.mse 
#> 42.31375 
```
