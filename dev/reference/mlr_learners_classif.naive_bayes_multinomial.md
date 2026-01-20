# Classification Multinomial Naive Bayes Learner From Weka

Multinomial Naive Bayes classifier. Calls
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

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.naive_bayes_multinomial")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [RWeka](https://CRAN.R-project.org/package=RWeka)

## Parameters

|                           |         |         |             |                  |
|---------------------------|---------|---------|-------------|------------------|
| Id                        | Type    | Default | Levels      | Range            |
| subset                    | untyped | \-      |             | \-               |
| na.action                 | untyped | \-      |             | \-               |
| output_debug_info         | logical | FALSE   | TRUE, FALSE | \-               |
| do_not_check_capabilities | logical | FALSE   | TRUE, FALSE | \-               |
| num_decimal_places        | integer | 2       |             | \\\[1, \infty)\\ |
| batch_size                | integer | 100     |             | \\\[1, \infty)\\ |
| options                   | untyped | NULL    |             | \-               |

## References

Mccallum A, Nigam K (1998). “A Comparison of Event Models for Naive
Bayes Text Classification.” In *AAAI-98 Workshop on 'Learning for Text
Categorization'*.

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
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifNaiveBayesMultinomial`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifNaiveBayesMultinomial$new()`](#method-LearnerClassifNaiveBayesMultinomial-new)

- [`LearnerClassifNaiveBayesMultinomial$marshal()`](#method-LearnerClassifNaiveBayesMultinomial-marshal)

- [`LearnerClassifNaiveBayesMultinomial$unmarshal()`](#method-LearnerClassifNaiveBayesMultinomial-unmarshal)

- [`LearnerClassifNaiveBayesMultinomial$clone()`](#method-LearnerClassifNaiveBayesMultinomial-clone)

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

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifNaiveBayesMultinomial$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifNaiveBayesMultinomial$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifNaiveBayesMultinomial$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifNaiveBayesMultinomial$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.naive_bayes_multinomial")
print(learner)
#> 
#> ── <LearnerClassifNaiveBayesMultinomial> (classif.naive_bayes_multinomial): Mult
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3 and RWeka
#> • Predict Types: [response] and prob
#> • Feature Types: integer and numeric
#> • Encapsulation: none (fallback: -)
#> • Properties: marshal, multiclass, and twoclass
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> The independent probability of a class
#> --------------------------------------
#> M    0.52
#> R    0.48
#> 
#> The probability of a word given the class
#> -----------------------------------------
#>  M   R   
#> V1   0   0   
#> V10  0.01    0.01    
#> V11  0.02    0.01    
#> V12  0.02    0.01    
#> V13  0.02    0.01    
#> V14  0.02    0.02    
#> V15  0.02    0.02    
#> V16  0.02    0.02    
#> V17  0.02    0.02    
#> V18  0.02    0.03    
#> V19  0.03    0.03    
#> V2   0   0   
#> V20  0.03    0.03    
#> V21  0.04    0.03    
#> V22  0.04    0.03    
#> V23  0.04    0.04    
#> V24  0.04    0.04    
#> V25  0.04    0.04    
#> V26  0.04    0.04    
#> V27  0.04    0.04    
#> V28  0.04    0.04    
#> V29  0.03    0.04    
#> V3   0   0   
#> V30  0.03    0.03    
#> V31  0.03    0.03    
#> V32  0.02    0.03    
#> V33  0.02    0.03    
#> V34  0.02    0.03    
#> V35  0.02    0.03    
#> V36  0.02    0.03    
#> V37  0.02    0.03    
#> V38  0.02    0.02    
#> V39  0.02    0.02    
#> V4   0   0   
#> V40  0.02    0.02    
#> V41  0.02    0.02    
#> V42  0.02    0.02    
#> V43  0.02    0.01    
#> V44  0.01    0.01    
#> V45  0.02    0.01    
#> V46  0.01    0.01    
#> V47  0.01    0.01    
#> V48  0.01    0.01    
#> V49  0   0   
#> V5   0.01    0   
#> V50  0   0   
#> V51  0   0   
#> V52  0   0   
#> V53  0   0   
#> V54  0   0   
#> V55  0   0   
#> V56  0   0   
#> V57  0   0   
#> V58  0   0   
#> V59  0   0   
#> V6   0.01    0.01    
#> V60  0   0   
#> V7   0.01    0.01    
#> V8   0.01    0.01    
#> V9   0.01    0.01    
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.2608696 
```
