# Classification H2O Deep Learning Learner

Classification feed-forward multilayer artificial neural network
learner. Class
[`h2o::h2o.deeplearning()`](https://rdrr.io/pkg/h2o/man/h2o.deeplearning.html)
from package [h2o](https://CRAN.R-project.org/package=h2o).

## Dictionary

This [Learner](https://mlr3.mlr-org.com/reference/Learner.html) can be
instantiated via
[lrn()](https://mlr3.mlr-org.com/reference/mlr_sugar.html):

    lrn("classif.h2o.deeplearning")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

- Feature Types: “integer”, “numeric”, “factor”

- Required Packages: [mlr3](https://CRAN.R-project.org/package=mlr3),
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
  [h2o](https://CRAN.R-project.org/package=h2o)

## Parameters

|                                  |           |                 |                                                                                                      |                       |
|----------------------------------|-----------|-----------------|------------------------------------------------------------------------------------------------------|-----------------------|
| Id                               | Type      | Default         | Levels                                                                                               | Range                 |
| activation                       | character | Rectifier       | Rectifier, Tanh, TanhWithDropout, RectifierWithDropout, Maxout, MaxoutWithDropout                    | \-                    |
| adaptive_rate                    | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| auc_type                         | character | AUTO            | AUTO, NONE, MACRO_OVR, WEIGHTED_OVR, MACRO_OVO, WEIGHTED_OVO                                         | \-                    |
| autoencoder                      | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| average_activation               | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| balance_classes                  | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| categorical_encoding             | character | AUTO            | AUTO, Enum, OneHotInternal, OneHotExplicit, Binary, Eigen, LabelEncoder, SortByResponse, EnumLimited | \-                    |
| checkpoint                       | untyped   | NULL            |                                                                                                      | \-                    |
| class_sampling_factors           | untyped   | NULL            |                                                                                                      | \-                    |
| classification_stop              | numeric   | 0               |                                                                                                      | \\\[-1, \infty)\\     |
| diagnostics                      | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| distribution                     | character | AUTO            | AUTO, bernoulli, multinomial                                                                         | \-                    |
| elastic_averaging                | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| elastic_averaging_moving_rate    | numeric   | 0.9             |                                                                                                      | \\(-\infty, \infty)\\ |
| elastic_averaging_regularization | numeric   | 0.001           |                                                                                                      | \\(-\infty, \infty)\\ |
| epochs                           | numeric   | 10              |                                                                                                      | \\\[1, \infty)\\      |
| epsilon                          | numeric   | 1e-08           |                                                                                                      | \\\[1e-10, 1e-04\]\\  |
| export_checkpoints_dir           | untyped   | NULL            |                                                                                                      | \-                    |
| export_weights_and_biases        | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| fast_mode                        | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| force_load_balance               | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| gainslift_bins                   | integer   | -1              |                                                                                                      | \\\[-1, \infty)\\     |
| hidden                           | untyped   | c(200L, 200L)   |                                                                                                      | \-                    |
| hidden_dropout_ratios            | numeric   | 0.5             |                                                                                                      | \\(-\infty, \infty)\\ |
| ignore_const_cols                | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| initial_weight_distribution      | character | UniformAdaptive | UniformAdaptive, Uniform, Normal                                                                     | \-                    |
| initial_weight_scale             | numeric   | 1               |                                                                                                      | \\(-\infty, \infty)\\ |
| input_dropout_ratio              | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| l1                               | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| l2                               | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| loss                             | character | Automatic       | Automatic, CrossEntropy, Quadratic                                                                   | \-                    |
| max_after_balance_size           | numeric   | 5               |                                                                                                      | \\(-\infty, \infty)\\ |
| max_categorical_features         | integer   | NULL            |                                                                                                      | \\(-\infty, \infty)\\ |
| max_runtime_secs                 | numeric   | 0               |                                                                                                      | \\\[0, \infty)\\      |
| max_w2                           | numeric   | 3.402823e+38    |                                                                                                      | \\(-\infty, \infty)\\ |
| mini_batch_size                  | integer   | 1               |                                                                                                      | \\(-\infty, \infty)\\ |
| missing_values_handling          | character | MeanImputation  | MeanImputation, Skip                                                                                 | \-                    |
| momentum_ramp                    | numeric   | 1e+06           |                                                                                                      | \\(-\infty, \infty)\\ |
| momentum_stable                  | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| momentum_start                   | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| nesterov_accelerated_gradient    | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| overwrite_with_best_model        | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| pretrained_autoencoder           | untyped   | NULL            |                                                                                                      | \-                    |
| quiet_mode                       | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| rate                             | numeric   | 0.005           |                                                                                                      | \\\[0, 1\]\\          |
| rate_annealing                   | numeric   | 1e-06           |                                                                                                      | \\\[0, \infty)\\      |
| rate_decay                       | numeric   | 1               |                                                                                                      | \\\[0, \infty)\\      |
| replicate_training_data          | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| reproducible                     | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| rho                              | numeric   | 0.99            |                                                                                                      | \\\[0, \infty)\\      |
| score_duty_cycle                 | numeric   | 0.1             |                                                                                                      | \\(-\infty, \infty)\\ |
| score_each_iteration             | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| score_interval                   | numeric   | 5               |                                                                                                      | \\(-\infty, \infty)\\ |
| score_training_samples           | integer   | 10000           |                                                                                                      | \\(-\infty, \infty)\\ |
| score_validation_samples         | integer   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| score_validation_sampling        | character | Uniform         | Uniform, Stratified                                                                                  | \-                    |
| seed                             | integer   | -1              |                                                                                                      | \\(-\infty, \infty)\\ |
| shuffle_training_data            | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| single_node_mode                 | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| sparse                           | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |
| sparsity_beta                    | numeric   | 0               |                                                                                                      | \\(-\infty, \infty)\\ |
| standardize                      | logical   | TRUE            | TRUE, FALSE                                                                                          | \-                    |
| stopping_metric                  | character | AUTO            | AUTO, logloss, AUC, lift_top_group, misclassification, AUCPR, mean_per_class_error                   | \-                    |
| stopping_rounds                  | integer   | 5               |                                                                                                      | \\\[0, \infty)\\      |
| stopping_tolerance               | numeric   | 0               |                                                                                                      | \\\[0, \infty)\\      |
| target_ratio_comm_to_comp        | numeric   | 0.05            |                                                                                                      | \\(-\infty, \infty)\\ |
| train_samples_per_iteration      | integer   | -2              |                                                                                                      | \\\[-2, \infty)\\     |
| verbose                          | logical   | FALSE           | TRUE, FALSE                                                                                          | \-                    |

## References

Fryda T, LeDell E, Gill N, Aiello S, Fu A, Candel A, Click C, Kraljevic
T, Nykodym T, Aboyoun P, Kurka M, Malohlava M, Poirier S, Wong W (2025).
*h2o: R Interface for the 'H2O' Scalable Machine Learning Platform*. R
package version 3.46.0.9, <https://github.com/h2oai/h2o-3>.

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

awinterstetter

## Super classes

[`mlr3::Learner`](https://mlr3.mlr-org.com/reference/Learner.html) -\>
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifH2ODeeplearning`

## Methods

### Public methods

- [`LearnerClassifH2ODeeplearning$new()`](#method-LearnerClassifH2ODeeplearning-new)

- [`LearnerClassifH2ODeeplearning$clone()`](#method-LearnerClassifH2ODeeplearning-clone)

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

    LearnerClassifH2ODeeplearning$new()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifH2ODeeplearning$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.h2o.deeplearning")
print(learner)
#> 
#> ── <LearnerClassifH2ODeeplearning> (classif.h2o.deeplearning): H2O Deep Learning
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3, mlr3extralearners, and h2o
#> • Predict Types: [response] and prob
#> • Feature Types: integer, numeric, and factor
#> • Encapsulation: none (fallback: -)
#> • Properties: missings, multiclass, twoclass, and weights
#> • Other settings: use_weights = 'use'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)
#> Warning: 
#> Your H2O cluster version is (2 years, 3 months and 2 days) old. There may be a newer version available.
#> Please download and install the latest version from: https://h2o-release.s3.amazonaws.com/h2o/latest_stable.html

print(learner$model)
#> Model Details:
#> ==============
#> 
#> H2OBinomialModel: deeplearning
#> Model ID:  DeepLearning_model_R_1774259022333_1 
#> Status of Neuron Layers: predicting Class, 2-class classification, bernoulli distribution, CrossEntropy loss, 52,802 weights/biases, 632.9 KB, 1,390 training samples, mini-batch size 1
#>   layer units      type dropout       l1       l2 mean_rate rate_rms momentum
#> 1     1    60     Input  0.00 %       NA       NA        NA       NA       NA
#> 2     2   200 Rectifier  0.00 % 0.000000 0.000000  0.003930 0.002524 0.000000
#> 3     3   200 Rectifier  0.00 % 0.000000 0.000000  0.016919 0.048838 0.000000
#> 4     4     2   Softmax      NA 0.000000 0.000000  0.001729 0.001063 0.000000
#>   mean_weight weight_rms mean_bias bias_rms
#> 1          NA         NA        NA       NA
#> 2   -0.000375   0.092083  0.492272 0.009171
#> 3   -0.001215   0.069767  0.997426 0.005454
#> 4    0.022452   0.399199  0.000120 0.002462
#> 
#> 
#> H2OBinomialMetrics: deeplearning
#> ** Reported on training data. **
#> ** Metrics reported on full training frame **
#> 
#> MSE:  0.02331499
#> RMSE:  0.1526925
#> LogLoss:  0.07805237
#> Mean Per-Class Error:  0.006756757
#> AUC:  0.9995842
#> AUCPR:  0.9995266
#> Gini:  0.9991684
#> 
#> Confusion Matrix (vertical: actual; across: predicted) for F1-optimal threshold:
#>         M  R    Error    Rate
#> M      73  1 0.013514   =1/74
#> R       0 65 0.000000   =0/65
#> Totals 73 66 0.007194  =1/139
#> 
#> Maximum Metrics: Maximum metrics at their respective thresholds
#>                         metric threshold     value idx
#> 1                       max f1  0.857955  0.992366  43
#> 2                       max f2  0.857955  0.996933  43
#> 3                 max f0point5  0.973182  0.993691  40
#> 4                 max accuracy  0.857955  0.992806  43
#> 5                max precision  1.000000  1.000000   0
#> 6                   max recall  0.857955  1.000000  43
#> 7              max specificity  1.000000  1.000000   0
#> 8             max absolute_mcc  0.857955  0.985667  43
#> 9   max min_per_class_accuracy  0.857955  0.986486  43
#> 10 max mean_per_class_accuracy  0.857955  0.993243  43
#> 11                     max tns  1.000000 74.000000   0
#> 12                     max fns  1.000000 47.000000   0
#> 13                     max fps  0.000000 74.000000 116
#> 14                     max tps  0.857955 65.000000  43
#> 15                     max tnr  1.000000  1.000000   0
#> 16                     max fnr  1.000000  0.723077   0
#> 17                     max fpr  0.000000  1.000000 116
#> 18                     max tpr  0.857955  1.000000  43
#> 
#> Gains/Lift Table: Extract with `h2o.gainsLift(<model>, <data>)` or `h2o.gainsLift(<model>, valid=<T/F>, xval=<T/F>)`
#> 
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1884058 
```
