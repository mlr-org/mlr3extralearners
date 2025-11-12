# Classification MultilayerPerceptron Learner

Classifier that uses backpropagation to learn a multi-layer perceptron.
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

    lrn("classif.multilayer_perceptron")

## Meta Information

- Task type: “classif”

- Predict Types: “response”, “prob”

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
[`mlr3::LearnerClassif`](https://mlr3.mlr-org.com/reference/LearnerClassif.html)
-\> `LearnerClassifMultilayerPerceptron`

## Active bindings

- `marshaled`:

  (`logical(1)`)  
  Whether the learner has been marshaled.

## Methods

### Public methods

- [`LearnerClassifMultilayerPerceptron$new()`](#method-LearnerClassifMultilayerPerceptron-new)

- [`LearnerClassifMultilayerPerceptron$marshal()`](#method-LearnerClassifMultilayerPerceptron-marshal)

- [`LearnerClassifMultilayerPerceptron$unmarshal()`](#method-LearnerClassifMultilayerPerceptron-unmarshal)

- [`LearnerClassifMultilayerPerceptron$clone()`](#method-LearnerClassifMultilayerPerceptron-clone)

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

    LearnerClassifMultilayerPerceptron$new()

------------------------------------------------------------------------

### Method `marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifMultilayerPerceptron$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifMultilayerPerceptron$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    LearnerClassifMultilayerPerceptron$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
# Define the Learner
learner = lrn("classif.multilayer_perceptron")
print(learner)
#> 
#> ── <LearnerClassifMultilayerPerceptron> (classif.multilayer_perceptron): Multila
#> • Model: -
#> • Parameters: list()
#> • Packages: mlr3 and RWeka
#> • Predict Types: [response] and prob
#> • Feature Types: logical, integer, numeric, factor, and ordered
#> • Encapsulation: none (fallback: -)
#> • Properties: marshal, missings, multiclass, and twoclass
#> • Other settings: use_weights = 'error'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Sigmoid Node 0
#>     Inputs    Weights
#>     Threshold    -0.441572722609077
#>     Node 2    2.184053244601689
#>     Node 3    1.7987238436583468
#>     Node 4    0.6704161341465547
#>     Node 5    -1.4482027993336433
#>     Node 6    1.8007059880742189
#>     Node 7    2.5625620357386203
#>     Node 8    0.6316565691338448
#>     Node 9    3.628460072572883
#>     Node 10    -1.1894736667693966
#>     Node 11    1.48083719292553
#>     Node 12    1.6624098717265001
#>     Node 13    0.5290114099683915
#>     Node 14    1.7033260679356634
#>     Node 15    -2.7673736984745387
#>     Node 16    -0.19119813480867315
#>     Node 17    0.3168484127898484
#>     Node 18    -0.537449490910905
#>     Node 19    1.3889432753718354
#>     Node 20    1.4614319426791265
#>     Node 21    -1.6525236384031181
#>     Node 22    0.9858662529769173
#>     Node 23    1.1741827924868145
#>     Node 24    -1.1655772990974054
#>     Node 25    4.054981810516969
#>     Node 26    -0.591794050357827
#>     Node 27    2.002629780850194
#>     Node 28    -3.518975894564919
#>     Node 29    1.1630693727269334
#>     Node 30    -0.9264778552118266
#>     Node 31    1.9368275911904322
#>     Node 32    -0.015606831125401692
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.4819661512347345
#>     Node 2    -2.2321148640967547
#>     Node 3    -1.7765083420278864
#>     Node 4    -0.6285799799024269
#>     Node 5    1.4388384049384892
#>     Node 6    -1.7724292450248604
#>     Node 7    -2.565446284189096
#>     Node 8    -0.6665754061781868
#>     Node 9    -3.6434464389778363
#>     Node 10    1.1213527454336902
#>     Node 11    -1.443513831272224
#>     Node 12    -1.7354946211037234
#>     Node 13    -0.474413080520828
#>     Node 14    -1.6318117992955143
#>     Node 15    2.773357585708634
#>     Node 16    0.16944672953172363
#>     Node 17    -0.2860145882174409
#>     Node 18    0.5730181535162417
#>     Node 19    -1.3843419719407875
#>     Node 20    -1.4501866812377482
#>     Node 21    1.6928916008691108
#>     Node 22    -1.0345534165624173
#>     Node 23    -1.2137728205558578
#>     Node 24    1.1510924173368062
#>     Node 25    -4.060914679214848
#>     Node 26    0.5012895584465284
#>     Node 27    -2.0388344437102632
#>     Node 28    3.4930996807061683
#>     Node 29    -1.1921040724772387
#>     Node 30    0.9970931227152939
#>     Node 31    -1.8729380313525354
#>     Node 32    -0.007470620314582094
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.14525381079362523
#>     Attrib V1    0.7769391461266713
#>     Attrib V10    -0.4940034390086948
#>     Attrib V11    -0.07249697152156277
#>     Attrib V12    -0.3606492360885188
#>     Attrib V13    -0.6151312833209434
#>     Attrib V14    0.17374504567660887
#>     Attrib V15    0.0967745004564471
#>     Attrib V16    0.3216881245576233
#>     Attrib V17    0.2669530986427425
#>     Attrib V18    0.4004651814957011
#>     Attrib V19    0.44144505812734935
#>     Attrib V2    0.7104778437847814
#>     Attrib V20    0.45238694233862775
#>     Attrib V21    0.5524565113393255
#>     Attrib V22    0.515015964165631
#>     Attrib V23    0.23564185164792895
#>     Attrib V24    0.6100613385507908
#>     Attrib V25    -0.3223487771223543
#>     Attrib V26    -0.9396272098860693
#>     Attrib V27    -1.2802478458574873
#>     Attrib V28    -0.38866676800214134
#>     Attrib V29    0.17172711490160275
#>     Attrib V3    -0.35302075558143114
#>     Attrib V30    0.2625803495521079
#>     Attrib V31    -0.9166248039960492
#>     Attrib V32    0.5562133120579079
#>     Attrib V33    0.6195993140542045
#>     Attrib V34    -0.19271730122713732
#>     Attrib V35    -0.679380940547284
#>     Attrib V36    -0.9979716023993985
#>     Attrib V37    -1.231165962349553
#>     Attrib V38    0.3161570887041434
#>     Attrib V39    0.6894995454369033
#>     Attrib V4    -0.05865316161109741
#>     Attrib V40    -0.06504949037616965
#>     Attrib V41    -0.09838673209943002
#>     Attrib V42    0.5975418758230986
#>     Attrib V43    0.4924800736984773
#>     Attrib V44    0.834268678115816
#>     Attrib V45    0.2016287206830807
#>     Attrib V46    0.2669436029006938
#>     Attrib V47    -0.5315790753098129
#>     Attrib V48    0.193917824766099
#>     Attrib V49    0.4739665987846653
#>     Attrib V5    -0.12045709389935645
#>     Attrib V50    -0.6955810607784598
#>     Attrib V51    0.2559952342023069
#>     Attrib V52    0.31211617979106826
#>     Attrib V53    0.44895174809739036
#>     Attrib V54    0.6031891781776412
#>     Attrib V55    -0.048244195109598674
#>     Attrib V56    0.40416995095382113
#>     Attrib V57    0.48374416907805723
#>     Attrib V58    0.4194845601617775
#>     Attrib V59    0.7494827899168818
#>     Attrib V6    -0.11149974932165797
#>     Attrib V60    0.033834843566324414
#>     Attrib V7    -0.07198939009170821
#>     Attrib V8    -0.15945003616073922
#>     Attrib V9    0.0825977489021646
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.03606676020280897
#>     Attrib V1    0.6731464218559229
#>     Attrib V10    -0.4275067115952628
#>     Attrib V11    -0.1950551691507577
#>     Attrib V12    -0.3715613939977898
#>     Attrib V13    -0.49057760611728746
#>     Attrib V14    0.13413786759921711
#>     Attrib V15    0.2304477688177465
#>     Attrib V16    0.3470589765394633
#>     Attrib V17    0.24748886381760618
#>     Attrib V18    0.2245362317332291
#>     Attrib V19    0.3366068218473756
#>     Attrib V2    0.6248939911156005
#>     Attrib V20    0.3216560996187701
#>     Attrib V21    0.3731225420654637
#>     Attrib V22    0.42220208582267593
#>     Attrib V23    0.1579855411809855
#>     Attrib V24    0.39829761525737917
#>     Attrib V25    -0.3148441023297723
#>     Attrib V26    -0.8599110125540355
#>     Attrib V27    -1.1399134009957494
#>     Attrib V28    -0.4664922227581618
#>     Attrib V29    -0.05825410678090781
#>     Attrib V3    -0.24488599066860395
#>     Attrib V30    0.18623882564801464
#>     Attrib V31    -0.5735156403964511
#>     Attrib V32    0.5166535518671443
#>     Attrib V33    0.5545493057585876
#>     Attrib V34    -0.16133578648597835
#>     Attrib V35    -0.5511399274477142
#>     Attrib V36    -0.774638289857336
#>     Attrib V37    -0.9243844598128911
#>     Attrib V38    0.15465996108811705
#>     Attrib V39    0.509586160908857
#>     Attrib V4    -0.020643234460705057
#>     Attrib V40    -0.05243294341463396
#>     Attrib V41    -0.10913187993638518
#>     Attrib V42    0.372211926144948
#>     Attrib V43    0.2775046042245752
#>     Attrib V44    0.5653181408239243
#>     Attrib V45    0.09120835302269123
#>     Attrib V46    0.17133482165432742
#>     Attrib V47    -0.4060800278772604
#>     Attrib V48    0.08155684980650896
#>     Attrib V49    0.3324925383502238
#>     Attrib V5    -0.16061697679603998
#>     Attrib V50    -0.4608907811226199
#>     Attrib V51    0.14479246959098135
#>     Attrib V52    0.17176822496714245
#>     Attrib V53    0.24793665129733572
#>     Attrib V54    0.4840376720945931
#>     Attrib V55    0.09493438936695693
#>     Attrib V56    0.3969907244544168
#>     Attrib V57    0.48527961425138827
#>     Attrib V58    0.4514190624856713
#>     Attrib V59    0.6165305482721164
#>     Attrib V6    -0.09416206451604625
#>     Attrib V60    0.10821859604727087
#>     Attrib V7    -0.016580072912675155
#>     Attrib V8    -0.11119999813405854
#>     Attrib V9    0.018538366539449184
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.06639059587831649
#>     Attrib V1    0.2948765961481368
#>     Attrib V10    -0.1758402635212319
#>     Attrib V11    -0.03432051197685695
#>     Attrib V12    -0.11053958687869604
#>     Attrib V13    -0.16034269253526756
#>     Attrib V14    0.17946238750794918
#>     Attrib V15    0.11614293841990228
#>     Attrib V16    0.07918960174565814
#>     Attrib V17    0.050199427839481184
#>     Attrib V18    0.09178427269672984
#>     Attrib V19    0.06952381111005485
#>     Attrib V2    0.18247965029113397
#>     Attrib V20    0.05305466261590805
#>     Attrib V21    0.1411272718423336
#>     Attrib V22    0.06126797452192157
#>     Attrib V23    -0.013246533283940475
#>     Attrib V24    0.13511805636146895
#>     Attrib V25    -0.12731062929156112
#>     Attrib V26    -0.2477576766106838
#>     Attrib V27    -0.37159271580691056
#>     Attrib V28    -0.12795950042080606
#>     Attrib V29    0.08358592322341246
#>     Attrib V3    -0.07300690544545506
#>     Attrib V30    0.05610775050366891
#>     Attrib V31    -0.292258542249296
#>     Attrib V32    0.10108499535532262
#>     Attrib V33    0.1783241913497435
#>     Attrib V34    -0.0036224370703773863
#>     Attrib V35    -0.07010379148283682
#>     Attrib V36    -0.21306549326684432
#>     Attrib V37    -0.3842972779906343
#>     Attrib V38    3.696658338538305E-4
#>     Attrib V39    0.1870011754089221
#>     Attrib V4    0.05944740070840029
#>     Attrib V40    -0.029718296472651843
#>     Attrib V41    -0.10038305009643451
#>     Attrib V42    0.09206166714125127
#>     Attrib V43    0.10479928361470267
#>     Attrib V44    0.3289589437910379
#>     Attrib V45    0.19473347035645241
#>     Attrib V46    0.09219857457685636
#>     Attrib V47    -0.16153562680269187
#>     Attrib V48    0.13922046514173367
#>     Attrib V49    0.15037227513433923
#>     Attrib V5    0.04235052093917833
#>     Attrib V50    -0.17884107877192632
#>     Attrib V51    0.15258527724284987
#>     Attrib V52    0.09885133572530248
#>     Attrib V53    0.21086489437915948
#>     Attrib V54    0.18118816922939604
#>     Attrib V55    0.0848692505749582
#>     Attrib V56    0.18133696578688902
#>     Attrib V57    0.2563239243980051
#>     Attrib V58    0.19313337824652305
#>     Attrib V59    0.41257033035034113
#>     Attrib V6    -0.018365400800799545
#>     Attrib V60    0.17978555802312202
#>     Attrib V7    -0.017823550479427516
#>     Attrib V8    -0.11546141090658817
#>     Attrib V9    0.0574541375594215
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.39498484671814643
#>     Attrib V1    -0.4552072733409829
#>     Attrib V10    -0.018540406360378972
#>     Attrib V11    -0.35526396259607085
#>     Attrib V12    -0.32307008840842044
#>     Attrib V13    0.02528028174243805
#>     Attrib V14    -0.09429889389013427
#>     Attrib V15    0.24626597044357784
#>     Attrib V16    0.4007953545458209
#>     Attrib V17    0.6973787396225603
#>     Attrib V18    0.4901827419034925
#>     Attrib V19    0.037969380395213574
#>     Attrib V2    -0.4097768199055595
#>     Attrib V20    -0.29508672481930703
#>     Attrib V21    -0.3053743659727805
#>     Attrib V22    -0.14960866740480688
#>     Attrib V23    0.025520512292557515
#>     Attrib V24    -0.44945920511236326
#>     Attrib V25    0.18878653323663638
#>     Attrib V26    0.10918693496435689
#>     Attrib V27    0.20577148307203363
#>     Attrib V28    -0.01827797415222602
#>     Attrib V29    -0.25179430125714314
#>     Attrib V3    0.21886279382123952
#>     Attrib V30    0.3114263737621073
#>     Attrib V31    1.1982952749249056
#>     Attrib V32    0.135998030137551
#>     Attrib V33    0.13234578309685957
#>     Attrib V34    0.2586796560350498
#>     Attrib V35    0.4582011784129636
#>     Attrib V36    0.8296982882430342
#>     Attrib V37    0.8028038915923982
#>     Attrib V38    -0.226034622720589
#>     Attrib V39    -0.49818433035233156
#>     Attrib V4    -0.03926659613901691
#>     Attrib V40    0.2677338637338217
#>     Attrib V41    0.3290910445618807
#>     Attrib V42    0.09559455722813325
#>     Attrib V43    -0.045484121956912565
#>     Attrib V44    -0.274529405423912
#>     Attrib V45    -0.18456737656376895
#>     Attrib V46    -0.49150771059659126
#>     Attrib V47    0.1932844450450373
#>     Attrib V48    -0.28430969771431236
#>     Attrib V49    -0.3387524124265521
#>     Attrib V5    0.012322410991283162
#>     Attrib V50    0.6949446526408466
#>     Attrib V51    -0.19981009048377188
#>     Attrib V52    -0.3927152723434524
#>     Attrib V53    -0.3918057584591528
#>     Attrib V54    -0.07141697337019787
#>     Attrib V55    0.3496290468470244
#>     Attrib V56    0.09121020428522023
#>     Attrib V57    -0.07597544670427339
#>     Attrib V58    -0.14199182707327143
#>     Attrib V59    -0.35117281798923494
#>     Attrib V6    0.16285114689237043
#>     Attrib V60    0.3229392985878488
#>     Attrib V7    0.40669328232630847
#>     Attrib V8    0.39421429494736404
#>     Attrib V9    -0.25233341978812995
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.04246612674537028
#>     Attrib V1    0.711950104814669
#>     Attrib V10    -0.5121113206389079
#>     Attrib V11    -0.28740311434310306
#>     Attrib V12    -0.4194639924720247
#>     Attrib V13    -0.5836316081413494
#>     Attrib V14    0.09296840574051114
#>     Attrib V15    0.2170947440674108
#>     Attrib V16    0.4673780394241099
#>     Attrib V17    0.24520457939223447
#>     Attrib V18    0.2503346780535049
#>     Attrib V19    0.2523996306314605
#>     Attrib V2    0.5956749582452691
#>     Attrib V20    0.2856862018832009
#>     Attrib V21    0.3978599591734404
#>     Attrib V22    0.3529395870437695
#>     Attrib V23    0.0689704009870543
#>     Attrib V24    0.3446479023684501
#>     Attrib V25    -0.33370522247006745
#>     Attrib V26    -0.8691541448338518
#>     Attrib V27    -1.0903090206209634
#>     Attrib V28    -0.5413069409731407
#>     Attrib V29    -0.12180412547829352
#>     Attrib V3    -0.23720425047077207
#>     Attrib V30    0.0753618015938113
#>     Attrib V31    -0.6177262796504944
#>     Attrib V32    0.4578367645801722
#>     Attrib V33    0.5218841055401444
#>     Attrib V34    -0.15870311016180502
#>     Attrib V35    -0.5285236635489337
#>     Attrib V36    -0.7165558506614319
#>     Attrib V37    -0.7909166820576848
#>     Attrib V38    0.2091791293797609
#>     Attrib V39    0.4337264691337763
#>     Attrib V4    0.004107940634848926
#>     Attrib V40    -0.11347877324597669
#>     Attrib V41    -0.06840897909578285
#>     Attrib V42    0.37290849291849737
#>     Attrib V43    0.23197153310477303
#>     Attrib V44    0.46285732994595885
#>     Attrib V45    0.08500122196520017
#>     Attrib V46    0.1534686102122214
#>     Attrib V47    -0.47258433625916896
#>     Attrib V48    0.020320943985345022
#>     Attrib V49    0.25416712523309104
#>     Attrib V5    -0.180182036481488
#>     Attrib V50    -0.39997143943491753
#>     Attrib V51    0.1437673937863961
#>     Attrib V52    0.04953153105310971
#>     Attrib V53    0.2967673562303995
#>     Attrib V54    0.4151178761456233
#>     Attrib V55    0.06223498210250399
#>     Attrib V56    0.4278353443927143
#>     Attrib V57    0.5564022024585127
#>     Attrib V58    0.43210652288706203
#>     Attrib V59    0.679770090538783
#>     Attrib V6    -9.316283971893774E-4
#>     Attrib V60    0.30720403430842025
#>     Attrib V7    0.10914813664789405
#>     Attrib V8    -0.13436208931746924
#>     Attrib V9    0.048019801197654706
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.3795300957745414
#>     Attrib V1    0.5288019010996187
#>     Attrib V10    0.4851066020613417
#>     Attrib V11    1.0423830872231432
#>     Attrib V12    0.9885188642097732
#>     Attrib V13    0.3022942738030886
#>     Attrib V14    0.170440632608277
#>     Attrib V15    -0.6275131654145198
#>     Attrib V16    -0.7150973940208349
#>     Attrib V17    -0.6111164515229712
#>     Attrib V18    -0.049314800266506725
#>     Attrib V19    -0.31489579259864586
#>     Attrib V2    0.2638441251302775
#>     Attrib V20    -0.5007347111498219
#>     Attrib V21    -0.14428930153384298
#>     Attrib V22    0.15910213088992395
#>     Attrib V23    -0.00518612264888217
#>     Attrib V24    0.2992397918311069
#>     Attrib V25    0.4181444739183896
#>     Attrib V26    0.9950674674091957
#>     Attrib V27    1.0585992977527048
#>     Attrib V28    0.9385605790916607
#>     Attrib V29    1.2628688521234184
#>     Attrib V3    -0.042944951015048555
#>     Attrib V30    0.399876551571576
#>     Attrib V31    -0.7649428357458663
#>     Attrib V32    -0.1669085593437432
#>     Attrib V33    -0.1816029778697744
#>     Attrib V34    -0.10506511097051639
#>     Attrib V35    0.13166979929677886
#>     Attrib V36    -0.14321242857019847
#>     Attrib V37    -0.30263112948825177
#>     Attrib V38    -0.09472296607324819
#>     Attrib V39    0.43179564991655145
#>     Attrib V4    0.394499328106351
#>     Attrib V40    0.45136039977367304
#>     Attrib V41    0.3336747090967929
#>     Attrib V42    -0.00517972335800443
#>     Attrib V43    0.03633776113036307
#>     Attrib V44    0.42226959767774586
#>     Attrib V45    0.13976653737222255
#>     Attrib V46    0.5300112495103653
#>     Attrib V47    0.2036189641244244
#>     Attrib V48    0.8050164598363325
#>     Attrib V49    0.35817178757777995
#>     Attrib V5    0.3928296130967965
#>     Attrib V50    -0.7298245802458829
#>     Attrib V51    0.5284774493144913
#>     Attrib V52    0.5962418657190592
#>     Attrib V53    0.31076762765023724
#>     Attrib V54    0.29932894786998643
#>     Attrib V55    -0.8170254287777328
#>     Attrib V56    -0.3048313225559985
#>     Attrib V57    -0.20650350973460713
#>     Attrib V58    -0.06252322505949198
#>     Attrib V59    0.7854256073476606
#>     Attrib V6    0.4695322964341612
#>     Attrib V60    0.5124445895209789
#>     Attrib V7    -0.31182479990917616
#>     Attrib V8    -0.4844007544661385
#>     Attrib V9    0.5366622158246445
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.004618381936483766
#>     Attrib V1    0.3020566062043621
#>     Attrib V10    -0.07964440575278044
#>     Attrib V11    0.07014739188350398
#>     Attrib V12    -0.03784229259914556
#>     Attrib V13    -0.12516258874845237
#>     Attrib V14    0.09703152098752307
#>     Attrib V15    0.011517430948468917
#>     Attrib V16    0.055956659991002425
#>     Attrib V17    -0.04986279473029056
#>     Attrib V18    -0.010001297750905325
#>     Attrib V19    -0.011960733788135967
#>     Attrib V2    0.16928879314254852
#>     Attrib V20    -0.08773563929128626
#>     Attrib V21    0.014072881048866578
#>     Attrib V22    -0.03425634922854173
#>     Attrib V23    -0.1054761976500425
#>     Attrib V24    0.15309344859607515
#>     Attrib V25    -0.03288149393045281
#>     Attrib V26    -0.06867043916068369
#>     Attrib V27    -0.12150771675858668
#>     Attrib V28    2.024373174330094E-4
#>     Attrib V29    0.16345008085314636
#>     Attrib V3    -0.09180166407924302
#>     Attrib V30    0.12109644997617075
#>     Attrib V31    -0.26266238479608706
#>     Attrib V32    0.06407365793821879
#>     Attrib V33    0.1280005216637982
#>     Attrib V34    0.008488468837795228
#>     Attrib V35    0.030828799852929602
#>     Attrib V36    -0.035981148858195575
#>     Attrib V37    -0.2823386510665323
#>     Attrib V38    0.08685074867445888
#>     Attrib V39    0.14800569868345553
#>     Attrib V4    0.167875083316601
#>     Attrib V40    -0.06218212810214764
#>     Attrib V41    -0.09674350582957011
#>     Attrib V42    -0.04501763344522253
#>     Attrib V43    0.14041967803877756
#>     Attrib V44    0.42462708744175737
#>     Attrib V45    0.24283195514130096
#>     Attrib V46    0.20825138250452266
#>     Attrib V47    -0.05517730475295301
#>     Attrib V48    0.2228736235455027
#>     Attrib V49    0.14819884955311574
#>     Attrib V5    0.05164672187396247
#>     Attrib V50    -0.21168054422257274
#>     Attrib V51    0.11312627272838667
#>     Attrib V52    0.11833645069534716
#>     Attrib V53    0.22479155354117247
#>     Attrib V54    0.2232200014042816
#>     Attrib V55    0.041973865904302604
#>     Attrib V56    0.07887246943859844
#>     Attrib V57    0.29505603035933875
#>     Attrib V58    0.15076714033101238
#>     Attrib V59    0.46154153107134605
#>     Attrib V6    -1.5639891018578956E-4
#>     Attrib V60    0.28504763719866294
#>     Attrib V7    -0.03161680037068321
#>     Attrib V8    -0.11762386623840831
#>     Attrib V9    0.07999922002043541
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.33956132481849954
#>     Attrib V1    0.5205947753382933
#>     Attrib V10    0.8283008439792395
#>     Attrib V11    1.3270891794782373
#>     Attrib V12    1.502171000457501
#>     Attrib V13    0.7028150788510547
#>     Attrib V14    0.1640713702248238
#>     Attrib V15    -0.876125236425975
#>     Attrib V16    -1.0022680906470705
#>     Attrib V17    -0.7290692415138056
#>     Attrib V18    -0.09371593409303361
#>     Attrib V19    -0.4655294375708158
#>     Attrib V2    0.2786526943202562
#>     Attrib V20    -0.7039234504089843
#>     Attrib V21    -0.19538462552599684
#>     Attrib V22    0.35862284818690926
#>     Attrib V23    0.1145765232471018
#>     Attrib V24    0.37513047966075114
#>     Attrib V25    0.6437198101969954
#>     Attrib V26    1.357670867963785
#>     Attrib V27    1.446799794526007
#>     Attrib V28    1.1363089464231673
#>     Attrib V29    1.4006153330335138
#>     Attrib V3    0.05798116514719141
#>     Attrib V30    0.36500712776781913
#>     Attrib V31    -0.907913075986465
#>     Attrib V32    -0.11397171093985582
#>     Attrib V33    -0.18488693570451203
#>     Attrib V34    -0.01499945840062269
#>     Attrib V35    0.16950373457110027
#>     Attrib V36    -0.13741485553729377
#>     Attrib V37    -0.3057823704440694
#>     Attrib V38    -0.19728737144117453
#>     Attrib V39    0.5932354991567058
#>     Attrib V4    0.5350416043944575
#>     Attrib V40    0.7552787087339826
#>     Attrib V41    0.6673419716550787
#>     Attrib V42    -0.06231112640083702
#>     Attrib V43    -0.15862530196822472
#>     Attrib V44    0.17863397955628932
#>     Attrib V45    0.04932033241836458
#>     Attrib V46    0.6603877377100292
#>     Attrib V47    0.35800555236729037
#>     Attrib V48    1.0134040096081474
#>     Attrib V49    0.49453712290744706
#>     Attrib V5    0.5566599801402908
#>     Attrib V50    -0.7968976866485787
#>     Attrib V51    0.6817954928757245
#>     Attrib V52    0.6349302589234905
#>     Attrib V53    0.38775183207614683
#>     Attrib V54    0.2565484763621612
#>     Attrib V55    -1.141147267759465
#>     Attrib V56    -0.4462143773556322
#>     Attrib V57    -0.5274888913949268
#>     Attrib V58    -0.17824219465102742
#>     Attrib V59    0.9430985258240766
#>     Attrib V6    0.727794451166803
#>     Attrib V60    0.6911694630404913
#>     Attrib V7    -0.3495263089558367
#>     Attrib V8    -0.6207751419878851
#>     Attrib V9    0.652220708467045
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.33977073785935513
#>     Attrib V1    -0.40650089578763415
#>     Attrib V10    -0.03919267890875738
#>     Attrib V11    -0.3781360120177341
#>     Attrib V12    -0.2270932865856703
#>     Attrib V13    0.14294699313085585
#>     Attrib V14    0.09903921144093722
#>     Attrib V15    0.1710276137871352
#>     Attrib V16    0.1373418157187058
#>     Attrib V17    0.14404677770290064
#>     Attrib V18    0.06629363316982761
#>     Attrib V19    0.014977264126858613
#>     Attrib V2    -0.5041576255449709
#>     Attrib V20    -0.012150442811627868
#>     Attrib V21    -0.08611966435521816
#>     Attrib V22    -0.1764147538420238
#>     Attrib V23    0.07408834149016452
#>     Attrib V24    -0.24006332015408485
#>     Attrib V25    0.12111596882026593
#>     Attrib V26    0.18150970059504687
#>     Attrib V27    0.29717208235591164
#>     Attrib V28    -0.029790655568293963
#>     Attrib V29    -0.46768963118306767
#>     Attrib V3    0.1884913292489652
#>     Attrib V30    -0.2302882610226313
#>     Attrib V31    0.627215653166824
#>     Attrib V32    -0.44349617406557634
#>     Attrib V33    -0.22309637323187012
#>     Attrib V34    0.20607590250972407
#>     Attrib V35    0.4123972221506032
#>     Attrib V36    0.5877912150560376
#>     Attrib V37    0.49145165408513614
#>     Attrib V38    -0.2153338638996383
#>     Attrib V39    -0.5138531644251167
#>     Attrib V4    0.007533998816763389
#>     Attrib V40    0.005990412737473902
#>     Attrib V41    0.09200451609716043
#>     Attrib V42    -0.12913239860312847
#>     Attrib V43    -0.056952923720970855
#>     Attrib V44    -0.3523428908892301
#>     Attrib V45    -0.09810644471316571
#>     Attrib V46    -0.30645617356038285
#>     Attrib V47    0.2475408283428103
#>     Attrib V48    -0.2681425115330244
#>     Attrib V49    -0.3254715071041119
#>     Attrib V5    0.09028566553669619
#>     Attrib V50    0.7439388281929074
#>     Attrib V51    -0.20490518433334512
#>     Attrib V52    -0.33249601012857977
#>     Attrib V53    -0.13276456322597088
#>     Attrib V54    -0.07111553291330462
#>     Attrib V55    0.4294847259760123
#>     Attrib V56    -0.030783006872800497
#>     Attrib V57    0.02082341499354352
#>     Attrib V58    -0.11296161865330315
#>     Attrib V59    -0.20160349548545065
#>     Attrib V6    0.010575004855937759
#>     Attrib V60    0.2606064261702367
#>     Attrib V7    0.1417850269567246
#>     Attrib V8    0.19472950329876182
#>     Attrib V9    -0.35255734381678
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.0415209550468875
#>     Attrib V1    0.5750490675139333
#>     Attrib V10    -0.3799333702345862
#>     Attrib V11    -0.11806726112973939
#>     Attrib V12    -0.29362629181866323
#>     Attrib V13    -0.5284059734267953
#>     Attrib V14    0.06523319501126082
#>     Attrib V15    0.10549857758481102
#>     Attrib V16    0.3063444401749912
#>     Attrib V17    0.2674352569740017
#>     Attrib V18    0.2579961833421814
#>     Attrib V19    0.24068372474815172
#>     Attrib V2    0.43871087099300826
#>     Attrib V20    0.29264868173158975
#>     Attrib V21    0.3374478632905886
#>     Attrib V22    0.3194651901525316
#>     Attrib V23    0.08132828198765274
#>     Attrib V24    0.3091697835240217
#>     Attrib V25    -0.2952624538788097
#>     Attrib V26    -0.7540969177962169
#>     Attrib V27    -0.9381161764896144
#>     Attrib V28    -0.3752988962445974
#>     Attrib V29    0.0044485202672508726
#>     Attrib V3    -0.3127196372095933
#>     Attrib V30    0.15917865060294475
#>     Attrib V31    -0.6317373205116518
#>     Attrib V32    0.34909234203960965
#>     Attrib V33    0.41592256060219923
#>     Attrib V34    -0.09950644743082297
#>     Attrib V35    -0.3720876227377389
#>     Attrib V36    -0.5404093239733497
#>     Attrib V37    -0.7562265868611737
#>     Attrib V38    0.25031724165043023
#>     Attrib V39    0.39553512928707707
#>     Attrib V4    0.0074052840348510255
#>     Attrib V40    -0.16642103974496283
#>     Attrib V41    -0.23130370065056635
#>     Attrib V42    0.23736704955647453
#>     Attrib V43    0.25816894562040005
#>     Attrib V44    0.6261839164779801
#>     Attrib V45    0.23481347557676624
#>     Attrib V46    0.17026961169975474
#>     Attrib V47    -0.3665544398241829
#>     Attrib V48    0.13992300002125127
#>     Attrib V49    0.2552428695083957
#>     Attrib V5    -0.08809690930294231
#>     Attrib V50    -0.44804701202325176
#>     Attrib V51    0.21955917728513327
#>     Attrib V52    0.10258008878060527
#>     Attrib V53    0.2076213776517392
#>     Attrib V54    0.4184680653580205
#>     Attrib V55    0.030886971468175137
#>     Attrib V56    0.3142671889875615
#>     Attrib V57    0.46863113486492025
#>     Attrib V58    0.3558069470205196
#>     Attrib V59    0.5293724051432764
#>     Attrib V6    -0.03598046630209972
#>     Attrib V60    0.1449364690460588
#>     Attrib V7    -0.02893897835033915
#>     Attrib V8    -0.1268277952985085
#>     Attrib V9    0.07635441479071171
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.07545610810088478
#>     Attrib V1    0.6460421668798153
#>     Attrib V10    -0.4730345416338051
#>     Attrib V11    -0.1548786335089039
#>     Attrib V12    -0.43894008734745865
#>     Attrib V13    -0.554300694140064
#>     Attrib V14    0.10282390200723954
#>     Attrib V15    0.15648407008254292
#>     Attrib V16    0.39513275212518545
#>     Attrib V17    0.24993084984293132
#>     Attrib V18    0.21450357422173497
#>     Attrib V19    0.3128312831337881
#>     Attrib V2    0.5938777552519741
#>     Attrib V20    0.24765242902248893
#>     Attrib V21    0.34227504928469743
#>     Attrib V22    0.39127414503584
#>     Attrib V23    0.10880430149722145
#>     Attrib V24    0.30845535052864104
#>     Attrib V25    -0.3853710648372875
#>     Attrib V26    -0.8347164702202027
#>     Attrib V27    -1.0169627708884386
#>     Attrib V28    -0.4717842334741663
#>     Attrib V29    -0.014974569712333711
#>     Attrib V3    -0.298391675994633
#>     Attrib V30    0.11177475096916295
#>     Attrib V31    -0.6409263250454469
#>     Attrib V32    0.4129071652362982
#>     Attrib V33    0.5296435984656908
#>     Attrib V34    -0.10709118407548068
#>     Attrib V35    -0.5041983614200719
#>     Attrib V36    -0.672276951110069
#>     Attrib V37    -0.819974856541397
#>     Attrib V38    0.23304923565550625
#>     Attrib V39    0.41092268392668463
#>     Attrib V4    0.031027783272649344
#>     Attrib V40    -0.07821488347382931
#>     Attrib V41    -0.1420028291299857
#>     Attrib V42    0.28822854334490455
#>     Attrib V43    0.29738825738633423
#>     Attrib V44    0.49608941880567925
#>     Attrib V45    0.12432228856385756
#>     Attrib V46    0.2040297325619713
#>     Attrib V47    -0.4552958339868333
#>     Attrib V48    0.1069001071966435
#>     Attrib V49    0.2427975960761275
#>     Attrib V5    -0.1404506899677006
#>     Attrib V50    -0.5056715488119531
#>     Attrib V51    0.17747279884749095
#>     Attrib V52    0.1413763247429861
#>     Attrib V53    0.278621807394789
#>     Attrib V54    0.39739739297039905
#>     Attrib V55    0.030995288431909306
#>     Attrib V56    0.394866388512908
#>     Attrib V57    0.5399178957335802
#>     Attrib V58    0.420306768638898
#>     Attrib V59    0.6551297922963699
#>     Attrib V6    -0.07866815580624491
#>     Attrib V60    0.20921483273478036
#>     Attrib V7    0.059643891374061744
#>     Attrib V8    -0.13417205424103218
#>     Attrib V9    0.06125497246320019
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.1480326061844666
#>     Attrib V1    0.2814626774779763
#>     Attrib V10    -0.15694177154761574
#>     Attrib V11    -0.0088211528527459
#>     Attrib V12    -0.04767258184464769
#>     Attrib V13    -0.04482538149571246
#>     Attrib V14    0.16492290594571643
#>     Attrib V15    0.05700996557529535
#>     Attrib V16    0.025621766430206437
#>     Attrib V17    0.03148913722639839
#>     Attrib V18    0.0844426414412067
#>     Attrib V19    0.021676891059411278
#>     Attrib V2    0.15996662498913986
#>     Attrib V20    0.026794905794805743
#>     Attrib V21    0.058149544862572476
#>     Attrib V22    0.010528383327546824
#>     Attrib V23    0.004425653678024526
#>     Attrib V24    0.15320374185864497
#>     Attrib V25    0.022611491358834498
#>     Attrib V26    -0.15998461235134773
#>     Attrib V27    -0.16362487280771806
#>     Attrib V28    -0.12736758344046786
#>     Attrib V29    0.055321856574574446
#>     Attrib V3    0.004785233800324656
#>     Attrib V30    0.01955857276902766
#>     Attrib V31    -0.3095281483990517
#>     Attrib V32    0.045943855197681537
#>     Attrib V33    0.09778352549717824
#>     Attrib V34    0.045678616629095316
#>     Attrib V35    -0.009266100242926716
#>     Attrib V36    -0.10735321440567155
#>     Attrib V37    -0.23197696628350786
#>     Attrib V38    0.046158042104226304
#>     Attrib V39    0.18870393091709312
#>     Attrib V4    0.10670353154737125
#>     Attrib V40    0.004238349894607422
#>     Attrib V41    -0.024933592015247617
#>     Attrib V42    0.09049909973551727
#>     Attrib V43    0.08309339708013536
#>     Attrib V44    0.2509342848685353
#>     Attrib V45    0.11387432933680337
#>     Attrib V46    0.14859509836240875
#>     Attrib V47    -0.04568177458626465
#>     Attrib V48    0.09242668368817318
#>     Attrib V49    0.11752208696832121
#>     Attrib V5    0.06858130313074362
#>     Attrib V50    -0.15054323581167306
#>     Attrib V51    0.10880650212169254
#>     Attrib V52    0.07962953487587837
#>     Attrib V53    0.19599699525649364
#>     Attrib V54    0.2045872136238502
#>     Attrib V55    0.0994887994380715
#>     Attrib V56    0.1592525771318037
#>     Attrib V57    0.22385161193581196
#>     Attrib V58    0.1741914138061095
#>     Attrib V59    0.42440298917246655
#>     Attrib V6    0.07179190015175137
#>     Attrib V60    0.3086324948036712
#>     Attrib V7    0.04541064597762211
#>     Attrib V8    -0.10796393652429538
#>     Attrib V9    0.024521887440138296
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.014400405592520335
#>     Attrib V1    0.7143952487622287
#>     Attrib V10    -0.4032801517077173
#>     Attrib V11    -0.16199941067977555
#>     Attrib V12    -0.37164046322945027
#>     Attrib V13    -0.538466810537047
#>     Attrib V14    0.058412651159477885
#>     Attrib V15    0.23374052579796137
#>     Attrib V16    0.3595939389518597
#>     Attrib V17    0.2505047617686243
#>     Attrib V18    0.18080553222990556
#>     Attrib V19    0.18251068213964958
#>     Attrib V2    0.5414906701294979
#>     Attrib V20    0.22701322015053033
#>     Attrib V21    0.31738892211268815
#>     Attrib V22    0.30049229887956536
#>     Attrib V23    0.07212197839573961
#>     Attrib V24    0.261059032676574
#>     Attrib V25    -0.3626152950353527
#>     Attrib V26    -0.8074414382912971
#>     Attrib V27    -1.085835782586823
#>     Attrib V28    -0.5332803005702578
#>     Attrib V29    -0.13482233930933418
#>     Attrib V3    -0.29506010789666015
#>     Attrib V30    0.11129183055662986
#>     Attrib V31    -0.510151988437739
#>     Attrib V32    0.4397626823165622
#>     Attrib V33    0.4972206881374151
#>     Attrib V34    -0.14222745904450113
#>     Attrib V35    -0.4523979712993601
#>     Attrib V36    -0.6474361651790139
#>     Attrib V37    -0.7407595455769401
#>     Attrib V38    0.15860989415454982
#>     Attrib V39    0.4122841341543462
#>     Attrib V4    0.015343982140923286
#>     Attrib V40    -0.13703518132461115
#>     Attrib V41    -0.2017926213252373
#>     Attrib V42    0.18612070674556166
#>     Attrib V43    0.18488701701920854
#>     Attrib V44    0.5264901958477365
#>     Attrib V45    0.04671900351884015
#>     Attrib V46    0.16084142475773222
#>     Attrib V47    -0.43994118909652485
#>     Attrib V48    0.12182227456791567
#>     Attrib V49    0.30105418089437774
#>     Attrib V5    -0.18208827490636564
#>     Attrib V50    -0.43415004043463534
#>     Attrib V51    0.11016609889284225
#>     Attrib V52    0.03851608287211844
#>     Attrib V53    0.15445192124616808
#>     Attrib V54    0.4152480416473576
#>     Attrib V55    0.1330523178190537
#>     Attrib V56    0.3969278817281638
#>     Attrib V57    0.5465300353506535
#>     Attrib V58    0.4220866110060034
#>     Attrib V59    0.6206278854443049
#>     Attrib V6    -0.06539571777805925
#>     Attrib V60    0.27273436349682334
#>     Attrib V7    0.07407316376264629
#>     Attrib V8    -0.16930658494345124
#>     Attrib V9    0.04428880256364596
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.4473008226440511
#>     Attrib V1    -0.391456488688135
#>     Attrib V10    -0.39447896870871607
#>     Attrib V11    -1.0217585947099983
#>     Attrib V12    -0.6674971896356615
#>     Attrib V13    -0.2853738804094691
#>     Attrib V14    -0.47655455333974156
#>     Attrib V15    0.48372917445789404
#>     Attrib V16    0.5959541741027518
#>     Attrib V17    0.35229289347202436
#>     Attrib V18    -0.6204893073534171
#>     Attrib V19    -0.3346008254404943
#>     Attrib V2    -0.6645780975888592
#>     Attrib V20    0.004275908639935379
#>     Attrib V21    -0.16635895958688882
#>     Attrib V22    -0.5268365390459637
#>     Attrib V23    -0.4144225300218808
#>     Attrib V24    -0.5821863020835978
#>     Attrib V25    -0.3850188519900042
#>     Attrib V26    -0.8377595637428769
#>     Attrib V27    -0.7391263110188435
#>     Attrib V28    -0.7916274851845504
#>     Attrib V29    -1.545417785420535
#>     Attrib V3    0.23497080972980877
#>     Attrib V30    -0.6536238317338215
#>     Attrib V31    1.087959897921351
#>     Attrib V32    0.2412155499179142
#>     Attrib V33    0.06667039336435357
#>     Attrib V34    0.23422725051882154
#>     Attrib V35    0.11545105064636299
#>     Attrib V36    0.592732881730158
#>     Attrib V37    0.7104044512308133
#>     Attrib V38    -0.10060481104036098
#>     Attrib V39    -0.8205912141837686
#>     Attrib V4    0.09677455117169777
#>     Attrib V40    -0.6511508592631723
#>     Attrib V41    -0.30835031772295485
#>     Attrib V42    -0.37595637671551607
#>     Attrib V43    -0.5621249975141703
#>     Attrib V44    -0.9008841892940186
#>     Attrib V45    -0.19575140116332193
#>     Attrib V46    -0.5676047315442005
#>     Attrib V47    -0.06751341695211967
#>     Attrib V48    -0.7244071963376624
#>     Attrib V49    -0.7803426912008525
#>     Attrib V5    -0.0066818395936677
#>     Attrib V50    0.8138269106783094
#>     Attrib V51    -0.5962630450266502
#>     Attrib V52    -1.0383950825767259
#>     Attrib V53    -0.8779458947580311
#>     Attrib V54    -0.39616000345511687
#>     Attrib V55    0.80276308219704
#>     Attrib V56    0.2068271901585367
#>     Attrib V57    0.5721952215756386
#>     Attrib V58    -0.0935666474561439
#>     Attrib V59    -0.2617247744882091
#>     Attrib V6    -0.35620258234542956
#>     Attrib V60    0.3355579980346028
#>     Attrib V7    0.5557469024358938
#>     Attrib V8    0.4136418089625375
#>     Attrib V9    -0.5704889057241358
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.2128388144814712
#>     Attrib V1    -0.003804837481399519
#>     Attrib V10    0.0812439991617697
#>     Attrib V11    0.02246268567057228
#>     Attrib V12    0.0239516948411705
#>     Attrib V13    0.06556206474957063
#>     Attrib V14    0.02134611361986577
#>     Attrib V15    0.04562581870461476
#>     Attrib V16    0.11778327626936905
#>     Attrib V17    0.11801882447525844
#>     Attrib V18    0.08512035746859249
#>     Attrib V19    0.01239110570657879
#>     Attrib V2    -0.0368097169494319
#>     Attrib V20    -0.08766672603082402
#>     Attrib V21    -0.10086482721636673
#>     Attrib V22    -0.06325721628807081
#>     Attrib V23    -0.05616220097206107
#>     Attrib V24    -0.04131817367120307
#>     Attrib V25    -0.018447373038081697
#>     Attrib V26    -0.09007257948418788
#>     Attrib V27    -0.08550962039769706
#>     Attrib V28    -0.03229919633823858
#>     Attrib V29    -0.0864756559926215
#>     Attrib V3    0.11067513788610436
#>     Attrib V30    -0.07164137497901411
#>     Attrib V31    0.040579634837554335
#>     Attrib V32    0.051659583055478124
#>     Attrib V33    0.036495579149605176
#>     Attrib V34    0.10927487955544932
#>     Attrib V35    0.10057098299820398
#>     Attrib V36    0.12895104331007606
#>     Attrib V37    0.17104625061908815
#>     Attrib V38    0.07145009410382555
#>     Attrib V39    0.044404598631509216
#>     Attrib V4    0.10945536028683545
#>     Attrib V40    0.07513412416289336
#>     Attrib V41    0.12402905719185778
#>     Attrib V42    0.0961486725463621
#>     Attrib V43    0.014508810715451636
#>     Attrib V44    -0.029835879684419548
#>     Attrib V45    0.037138973406094525
#>     Attrib V46    0.0343817401207853
#>     Attrib V47    0.07192505615182904
#>     Attrib V48    -0.018902745454014207
#>     Attrib V49    -0.03599871739623395
#>     Attrib V5    0.09274787377728774
#>     Attrib V50    0.13323441497526076
#>     Attrib V51    0.11516864533090666
#>     Attrib V52    0.07178228059831053
#>     Attrib V53    0.052530748966321685
#>     Attrib V54    -0.062105507274237394
#>     Attrib V55    0.10416486075860938
#>     Attrib V56    0.0852056910253226
#>     Attrib V57    0.10637644025808204
#>     Attrib V58    0.1171733879365693
#>     Attrib V59    0.0019442063898639072
#>     Attrib V6    0.12051318512669675
#>     Attrib V60    0.15168970526701483
#>     Attrib V7    0.10284531954395555
#>     Attrib V8    0.06849151964993765
#>     Attrib V9    0.06704884776610455
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.1155327079600145
#>     Attrib V1    0.22420243405915646
#>     Attrib V10    -0.0016439566978978324
#>     Attrib V11    0.050921772395501726
#>     Attrib V12    -0.04755380568548709
#>     Attrib V13    -0.1084112269380594
#>     Attrib V14    0.08894609008129072
#>     Attrib V15    0.10511051019927731
#>     Attrib V16    0.03268870972401236
#>     Attrib V17    -0.014381893667069429
#>     Attrib V18    -0.0037933328933049087
#>     Attrib V19    -0.014244739875755271
#>     Attrib V2    0.16914237754263453
#>     Attrib V20    -0.08062803800684258
#>     Attrib V21    -0.047630649582575554
#>     Attrib V22    0.02332799911646492
#>     Attrib V23    -0.0857150519329798
#>     Attrib V24    0.07047007929644644
#>     Attrib V25    -0.05053024602176626
#>     Attrib V26    -0.0884638493408862
#>     Attrib V27    -0.09624090016627133
#>     Attrib V28    -0.06453091024082373
#>     Attrib V29    -0.005873820542779866
#>     Attrib V3    -0.02153702830165214
#>     Attrib V30    0.0386598676896214
#>     Attrib V31    -0.10120914232983526
#>     Attrib V32    0.006804240830055767
#>     Attrib V33    0.11351135216625452
#>     Attrib V34    0.004650032273047249
#>     Attrib V35    0.09491714478251959
#>     Attrib V36    -0.01329764396154681
#>     Attrib V37    -0.12718948702111313
#>     Attrib V38    0.08629553626894201
#>     Attrib V39    0.1142142695388204
#>     Attrib V4    0.10292284212092671
#>     Attrib V40    -0.03537018183077529
#>     Attrib V41    0.005192170807339444
#>     Attrib V42    0.017410020842145477
#>     Attrib V43    0.12350306704031307
#>     Attrib V44    0.23137985602103298
#>     Attrib V45    0.17899114109560785
#>     Attrib V46    0.08716458194941572
#>     Attrib V47    -0.05761767817827466
#>     Attrib V48    0.13614715157965476
#>     Attrib V49    0.03636112282983659
#>     Attrib V5    0.056574551993636035
#>     Attrib V50    -0.043021752736828865
#>     Attrib V51    0.11860490402980048
#>     Attrib V52    0.05915474832933604
#>     Attrib V53    0.0914464477895514
#>     Attrib V54    0.09545576950476112
#>     Attrib V55    0.12892019172652436
#>     Attrib V56    0.13495297464839404
#>     Attrib V57    0.22263138532729063
#>     Attrib V58    0.10728402622456863
#>     Attrib V59    0.2327897896198217
#>     Attrib V6    0.05324358049181645
#>     Attrib V60    0.24299465631750553
#>     Attrib V7    -0.02959162104425166
#>     Attrib V8    -0.012314930481511225
#>     Attrib V9    0.05700059923249915
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.25800765747123144
#>     Attrib V1    -0.22248771184425564
#>     Attrib V10    -0.010394008203331783
#>     Attrib V11    -0.21538155056143787
#>     Attrib V12    -0.19700399638747434
#>     Attrib V13    -0.01926676569908231
#>     Attrib V14    -0.006315073707815973
#>     Attrib V15    0.0543982647144488
#>     Attrib V16    0.07437585457955494
#>     Attrib V17    0.07406631525452685
#>     Attrib V18    0.09101472114944661
#>     Attrib V19    -0.0610754909312444
#>     Attrib V2    -0.20632383176308278
#>     Attrib V20    -0.05302366604951807
#>     Attrib V21    -0.08047110403286963
#>     Attrib V22    -0.09283831646140567
#>     Attrib V23    0.06588492596357272
#>     Attrib V24    -0.10054020050500177
#>     Attrib V25    0.08236547211875885
#>     Attrib V26    0.048848218770239725
#>     Attrib V27    0.06311430883432881
#>     Attrib V28    -0.07951597699265907
#>     Attrib V29    -0.24912608127755195
#>     Attrib V3    0.1711992913780679
#>     Attrib V30    -0.1700154274564717
#>     Attrib V31    0.3113302240661575
#>     Attrib V32    -0.07276512086169881
#>     Attrib V33    -0.017948164308563663
#>     Attrib V34    0.18306108621028544
#>     Attrib V35    0.2322255626791615
#>     Attrib V36    0.4215248488753195
#>     Attrib V37    0.3225767922994564
#>     Attrib V38    -0.0905526097091843
#>     Attrib V39    -0.1713890482261384
#>     Attrib V4    -0.01582808183294345
#>     Attrib V40    0.06038073819359849
#>     Attrib V41    0.09363794269220828
#>     Attrib V42    0.03441227575831701
#>     Attrib V43    -0.012405727899631801
#>     Attrib V44    -0.1415328634405855
#>     Attrib V45    -0.14565133855153148
#>     Attrib V46    -0.1917367929761204
#>     Attrib V47    0.13354421986899667
#>     Attrib V48    -0.15396143673019574
#>     Attrib V49    -0.14737429130421284
#>     Attrib V5    0.03362364511358315
#>     Attrib V50    0.25810909510773405
#>     Attrib V51    -0.00590750585079483
#>     Attrib V52    -0.10149758018125771
#>     Attrib V53    -0.05829260538411011
#>     Attrib V54    -0.11287662290856984
#>     Attrib V55    0.18991614608049753
#>     Attrib V56    0.04704011234876857
#>     Attrib V57    -0.030426246946414735
#>     Attrib V58    -0.006015571764975128
#>     Attrib V59    -0.07821622410581136
#>     Attrib V6    0.0021168095690946827
#>     Attrib V60    0.18110007831084968
#>     Attrib V7    0.126171119161672
#>     Attrib V8    0.15215925026267024
#>     Attrib V9    -0.14090562117229555
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.46618063773859164
#>     Attrib V1    0.2274131934051652
#>     Attrib V10    -0.2431046901928725
#>     Attrib V11    0.2122068420230928
#>     Attrib V12    0.29155159818230925
#>     Attrib V13    -0.020225958184529314
#>     Attrib V14    0.3216495322016255
#>     Attrib V15    -0.05520466091098698
#>     Attrib V16    -0.14955840201660142
#>     Attrib V17    -0.06088313647937003
#>     Attrib V18    0.3437031746465194
#>     Attrib V19    0.25978992061553086
#>     Attrib V2    0.22524873449129157
#>     Attrib V20    -0.032698445623788756
#>     Attrib V21    0.012745303882643553
#>     Attrib V22    0.1499721484570751
#>     Attrib V23    0.09794052765221413
#>     Attrib V24    0.4875559290436272
#>     Attrib V25    0.1629234542874694
#>     Attrib V26    0.13605235788972
#>     Attrib V27    0.13697371868905878
#>     Attrib V28    0.3836841473609291
#>     Attrib V29    0.6771188908904091
#>     Attrib V3    -0.34850093527836734
#>     Attrib V30    0.27015513851563133
#>     Attrib V31    -0.6220442750715407
#>     Attrib V32    -0.04765797227824074
#>     Attrib V33    0.14062446847620932
#>     Attrib V34    0.0011086248832156075
#>     Attrib V35    0.029575522682193094
#>     Attrib V36    -0.3193663698535547
#>     Attrib V37    -0.6475309478061657
#>     Attrib V38    0.09019694943301919
#>     Attrib V39    0.43963405535230815
#>     Attrib V4    0.09108594050683014
#>     Attrib V40    0.1543080216411702
#>     Attrib V41    -2.9669924308359594E-4
#>     Attrib V42    0.31699366955109715
#>     Attrib V43    0.5270576331224112
#>     Attrib V44    0.7619669614835762
#>     Attrib V45    0.2760945737128376
#>     Attrib V46    0.3142647937232389
#>     Attrib V47    -0.2516999624877063
#>     Attrib V48    0.3158700506046813
#>     Attrib V49    0.37837723839701426
#>     Attrib V5    0.11761707336663466
#>     Attrib V50    -0.6224737095815932
#>     Attrib V51    0.10673833721615267
#>     Attrib V52    0.4566435288471074
#>     Attrib V53    0.6172147323853209
#>     Attrib V54    0.5249260318432333
#>     Attrib V55    -0.1580603944607151
#>     Attrib V56    -0.05602013577080234
#>     Attrib V57    0.024046989617272644
#>     Attrib V58    0.19279612706671764
#>     Attrib V59    0.5850454748234133
#>     Attrib V6    0.11528023473425184
#>     Attrib V60    0.06723361148616842
#>     Attrib V7    -0.21094805671541678
#>     Attrib V8    -0.25736357572804675
#>     Attrib V9    0.045578238432381284
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.33521896974855436
#>     Attrib V1    0.44475622556580474
#>     Attrib V10    -0.30343333473148904
#>     Attrib V11    0.06566432118241262
#>     Attrib V12    -0.0351642447493125
#>     Attrib V13    -0.24677884835785632
#>     Attrib V14    0.28258489898502154
#>     Attrib V15    -0.016061864204832278
#>     Attrib V16    0.022413015230718498
#>     Attrib V17    0.11507659623866408
#>     Attrib V18    0.44469065195500074
#>     Attrib V19    0.4451220266643059
#>     Attrib V2    0.31324063525212326
#>     Attrib V20    0.2871982165329045
#>     Attrib V21    0.3890113163173125
#>     Attrib V22    0.418111648239722
#>     Attrib V23    0.22897519721031204
#>     Attrib V24    0.4940583602525822
#>     Attrib V25    -0.026097442012598074
#>     Attrib V26    -0.11391379423343333
#>     Attrib V27    -0.2185376816745677
#>     Attrib V28    0.16075425178549593
#>     Attrib V29    0.5548676875248924
#>     Attrib V3    -0.3966917045610179
#>     Attrib V30    0.30905409459261696
#>     Attrib V31    -0.8112761572493288
#>     Attrib V32    -0.08886992766794678
#>     Attrib V33    0.2042510486281824
#>     Attrib V34    -0.048979708231226195
#>     Attrib V35    0.006197702051981685
#>     Attrib V36    -0.19084415818487818
#>     Attrib V37    -0.5459184356376745
#>     Attrib V38    0.35911931185653767
#>     Attrib V39    0.5287386569882896
#>     Attrib V4    -0.007095374654349873
#>     Attrib V40    -0.04373813999509555
#>     Attrib V41    -0.11225637402306887
#>     Attrib V42    0.3217794643817996
#>     Attrib V43    0.6846333517877808
#>     Attrib V44    1.0761528895128385
#>     Attrib V45    0.4353941164280342
#>     Attrib V46    0.3509840064837704
#>     Attrib V47    -0.3195748312302346
#>     Attrib V48    0.2423855350657501
#>     Attrib V49    0.3527774959539871
#>     Attrib V5    0.10185364602975436
#>     Attrib V50    -0.5637820116483705
#>     Attrib V51    0.2177481256539801
#>     Attrib V52    0.3297101225958323
#>     Attrib V53    0.46843155798729946
#>     Attrib V54    0.5586035492805049
#>     Attrib V55    -0.10261082437931121
#>     Attrib V56    0.1330960085807524
#>     Attrib V57    0.14603590110082879
#>     Attrib V58    0.19535563292393432
#>     Attrib V59    0.6469887169852557
#>     Attrib V6    0.07454465746726345
#>     Attrib V60    0.11075294183507374
#>     Attrib V7    -0.12875739436699468
#>     Attrib V8    -0.32051729220557396
#>     Attrib V9    0.05637230060596498
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3885320807772097
#>     Attrib V1    -0.6701764826736083
#>     Attrib V10    0.015522187337846957
#>     Attrib V11    -0.5412517831773621
#>     Attrib V12    -0.2831760791349925
#>     Attrib V13    0.1713998767208904
#>     Attrib V14    -0.05470452149389399
#>     Attrib V15    0.23867876246420777
#>     Attrib V16    0.3578240338092809
#>     Attrib V17    0.6166676333105604
#>     Attrib V18    0.43117485944707096
#>     Attrib V19    0.01766468273172325
#>     Attrib V2    -0.7495000969773686
#>     Attrib V20    -0.18839567843595403
#>     Attrib V21    -0.16926890909265743
#>     Attrib V22    -0.16663698776709834
#>     Attrib V23    -0.07561778512288948
#>     Attrib V24    -0.6231291419182026
#>     Attrib V25    0.08696919933346695
#>     Attrib V26    0.15612499254128906
#>     Attrib V27    0.2496929294155415
#>     Attrib V28    -0.12617449863126148
#>     Attrib V29    -0.4924882509134629
#>     Attrib V3    0.1881459476152402
#>     Attrib V30    0.04234554439604547
#>     Attrib V31    1.2589919279104067
#>     Attrib V32    -0.24439868743381107
#>     Attrib V33    -0.022230065471003847
#>     Attrib V34    0.3519954991576759
#>     Attrib V35    0.45853584592146557
#>     Attrib V36    0.9332411490743118
#>     Attrib V37    0.9228213645195754
#>     Attrib V38    -0.35752519815672057
#>     Attrib V39    -0.6492600861801008
#>     Attrib V4    0.18280576257530373
#>     Attrib V40    0.24192382587237574
#>     Attrib V41    0.39910423756415714
#>     Attrib V42    -0.11553299511549554
#>     Attrib V43    -0.08217191861168485
#>     Attrib V44    -0.518682480551939
#>     Attrib V45    -0.2938727136798007
#>     Attrib V46    -0.5364745330595847
#>     Attrib V47    0.269275290809854
#>     Attrib V48    -0.312378978043204
#>     Attrib V49    -0.4464945392077715
#>     Attrib V5    0.1617428354055583
#>     Attrib V50    0.9539827372851559
#>     Attrib V51    -0.2661959633385192
#>     Attrib V52    -0.4523931719576024
#>     Attrib V53    -0.5035160509221341
#>     Attrib V54    -0.1293524105485232
#>     Attrib V55    0.4262600048159023
#>     Attrib V56    -0.10632086247365223
#>     Attrib V57    0.11937918408962325
#>     Attrib V58    -0.18507687059426117
#>     Attrib V59    -0.24875779260230113
#>     Attrib V6    0.148572456799537
#>     Attrib V60    0.5615779763259678
#>     Attrib V7    0.4199879221793241
#>     Attrib V8    0.3804147347221297
#>     Attrib V9    -0.29660863876068444
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.02289872598852154
#>     Attrib V1    0.4813434417997492
#>     Attrib V10    -0.266606715466669
#>     Attrib V11    -0.13721881750958173
#>     Attrib V12    -0.24220783839718496
#>     Attrib V13    -0.3397568318029624
#>     Attrib V14    0.11069900894650156
#>     Attrib V15    0.1022200738729115
#>     Attrib V16    0.27894612863465157
#>     Attrib V17    0.14076737463461717
#>     Attrib V18    0.11648700145476679
#>     Attrib V19    0.07816373698236168
#>     Attrib V2    0.32345892668656084
#>     Attrib V20    0.11959010490286784
#>     Attrib V21    0.17014735349906512
#>     Attrib V22    0.1306098067058718
#>     Attrib V23    -0.054968035462533336
#>     Attrib V24    0.203205216030221
#>     Attrib V25    -0.24161753877707273
#>     Attrib V26    -0.5440874936846007
#>     Attrib V27    -0.6965147283300016
#>     Attrib V28    -0.4506107504287735
#>     Attrib V29    -0.09642014060008805
#>     Attrib V3    -0.18087437990673802
#>     Attrib V30    -0.020945536705061184
#>     Attrib V31    -0.32608344259344596
#>     Attrib V32    0.2283595155198489
#>     Attrib V33    0.2236199893695385
#>     Attrib V34    -0.07518897243881847
#>     Attrib V35    -0.23625954573841781
#>     Attrib V36    -0.32242386261403894
#>     Attrib V37    -0.45183950391462224
#>     Attrib V38    0.06390431887428084
#>     Attrib V39    0.18955969999859465
#>     Attrib V4    0.07067057517287349
#>     Attrib V40    -0.08482251958980276
#>     Attrib V41    -0.17992304770263703
#>     Attrib V42    0.043421897955820875
#>     Attrib V43    0.13004441973795625
#>     Attrib V44    0.27797210257182
#>     Attrib V45    0.01403289820101171
#>     Attrib V46    0.10394555504332062
#>     Attrib V47    -0.30790428444357765
#>     Attrib V48    0.09752961556996449
#>     Attrib V49    0.12704029712932188
#>     Attrib V5    -0.05814570421110954
#>     Attrib V50    -0.27455261198604036
#>     Attrib V51    0.08914201737079515
#>     Attrib V52    0.04557164107212451
#>     Attrib V53    0.11461400173976258
#>     Attrib V54    0.28384858932932744
#>     Attrib V55    0.1458825182922173
#>     Attrib V56    0.2714480605482802
#>     Attrib V57    0.37307827201809096
#>     Attrib V58    0.319773133657263
#>     Attrib V59    0.4705676588672479
#>     Attrib V6    1.4250556563371526E-4
#>     Attrib V60    0.2749680682921323
#>     Attrib V7    0.06809696697858149
#>     Attrib V8    -0.14997663236893213
#>     Attrib V9    0.0253965252909272
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.0024530557423265327
#>     Attrib V1    0.538471134013008
#>     Attrib V10    -0.4307420913401797
#>     Attrib V11    -0.17979853388847233
#>     Attrib V12    -0.2604452877976322
#>     Attrib V13    -0.36080193680473366
#>     Attrib V14    0.11105138635447041
#>     Attrib V15    0.1611501507673528
#>     Attrib V16    0.27338779712054717
#>     Attrib V17    0.2465706805477101
#>     Attrib V18    0.19782041391267915
#>     Attrib V19    0.18548347362608514
#>     Attrib V2    0.3812327775367941
#>     Attrib V20    0.15137330989837408
#>     Attrib V21    0.22296234540388388
#>     Attrib V22    0.25312383231483976
#>     Attrib V23    0.053841766402879375
#>     Attrib V24    0.20900580821065265
#>     Attrib V25    -0.25215614739600783
#>     Attrib V26    -0.5918389407075842
#>     Attrib V27    -0.85086979846106
#>     Attrib V28    -0.4832426647556866
#>     Attrib V29    -0.16010896646258044
#>     Attrib V3    -0.15955448603746492
#>     Attrib V30    -0.010514292718665273
#>     Attrib V31    -0.4942337772857361
#>     Attrib V32    0.25760060900592385
#>     Attrib V33    0.32477644630850305
#>     Attrib V34    -0.11467809474915051
#>     Attrib V35    -0.2818364443454613
#>     Attrib V36    -0.3992993028992266
#>     Attrib V37    -0.4778682549441989
#>     Attrib V38    0.1645041803113635
#>     Attrib V39    0.2897594007903362
#>     Attrib V4    0.06812006581571739
#>     Attrib V40    -0.14585786439025358
#>     Attrib V41    -0.13231701455987455
#>     Attrib V42    0.15771784980815617
#>     Attrib V43    0.1706616781854306
#>     Attrib V44    0.34712918486302824
#>     Attrib V45    0.11539739240371581
#>     Attrib V46    0.10049028761160361
#>     Attrib V47    -0.32118145393861985
#>     Attrib V48    -0.013116640531812765
#>     Attrib V49    0.14273197208675975
#>     Attrib V5    -0.1023365009243463
#>     Attrib V50    -0.36078396682642744
#>     Attrib V51    0.09646777173957198
#>     Attrib V52    0.09566300412030662
#>     Attrib V53    0.21943499198061872
#>     Attrib V54    0.3570976652049417
#>     Attrib V55    0.13599621059658248
#>     Attrib V56    0.3431651266084841
#>     Attrib V57    0.3773064229305654
#>     Attrib V58    0.3040818683488104
#>     Attrib V59    0.5576904852510864
#>     Attrib V6    0.009937213346748562
#>     Attrib V60    0.2543126616603497
#>     Attrib V7    0.09538192385859104
#>     Attrib V8    -0.14304255326833062
#>     Attrib V9    -0.01859209106538655
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.30413444974751574
#>     Attrib V1    -0.4703153439259674
#>     Attrib V10    -0.06670345362489977
#>     Attrib V11    -0.4090578677422144
#>     Attrib V12    -0.2558892304407996
#>     Attrib V13    0.08837975456660117
#>     Attrib V14    0.05546522612008529
#>     Attrib V15    0.25749037162002714
#>     Attrib V16    0.12761876875384162
#>     Attrib V17    0.2460875394552527
#>     Attrib V18    0.0296050363358856
#>     Attrib V19    -0.009982495265677765
#>     Attrib V2    -0.5244620711417969
#>     Attrib V20    -0.0250347626054049
#>     Attrib V21    -0.11306704897738272
#>     Attrib V22    -0.20734002054406586
#>     Attrib V23    0.06262800110007725
#>     Attrib V24    -0.2488500462784295
#>     Attrib V25    0.1660206060882375
#>     Attrib V26    0.21573107851608617
#>     Attrib V27    0.27207854299895795
#>     Attrib V28    -0.0027109742486867766
#>     Attrib V29    -0.44551636403308487
#>     Attrib V3    0.19144664445532023
#>     Attrib V30    -0.25832533837188926
#>     Attrib V31    0.6084871892569907
#>     Attrib V32    -0.3577864512368016
#>     Attrib V33    -0.2943366465861972
#>     Attrib V34    0.1739985527551955
#>     Attrib V35    0.3854080121728993
#>     Attrib V36    0.6214346482359209
#>     Attrib V37    0.47801499970896
#>     Attrib V38    -0.26637779443705634
#>     Attrib V39    -0.527589277820715
#>     Attrib V4    0.038393615706762536
#>     Attrib V40    0.010314284223253353
#>     Attrib V41    0.09908742156174846
#>     Attrib V42    -0.12875000418879962
#>     Attrib V43    -0.005687793530523365
#>     Attrib V44    -0.4023561939745438
#>     Attrib V45    -0.17729511488303498
#>     Attrib V46    -0.28632581392964646
#>     Attrib V47    0.2991636576384336
#>     Attrib V48    -0.25498473513490855
#>     Attrib V49    -0.35706553080157144
#>     Attrib V5    0.03514683544628671
#>     Attrib V50    0.7586734972583437
#>     Attrib V51    -0.1809427749750365
#>     Attrib V52    -0.2633984972888331
#>     Attrib V53    -0.18957224784406118
#>     Attrib V54    -0.06123503953683728
#>     Attrib V55    0.4742140763457121
#>     Attrib V56    0.03168469094461738
#>     Attrib V57    0.10234359199705505
#>     Attrib V58    -0.07670665549180379
#>     Attrib V59    -0.17849519703179081
#>     Attrib V6    -0.02157873926178562
#>     Attrib V60    0.26989070347583133
#>     Attrib V7    0.08530423569821229
#>     Attrib V8    0.21088165413771237
#>     Attrib V9    -0.277177126828893
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.46444291798194776
#>     Attrib V1    0.5119154438321136
#>     Attrib V10    0.858566424695399
#>     Attrib V11    1.4876445668456617
#>     Attrib V12    1.671680224617622
#>     Attrib V13    0.7428903741398837
#>     Attrib V14    0.21285073203462018
#>     Attrib V15    -0.9883185525847752
#>     Attrib V16    -1.1232791028737055
#>     Attrib V17    -0.7825805090860231
#>     Attrib V18    -0.16490994284349816
#>     Attrib V19    -0.4879467144793579
#>     Attrib V2    0.29651147007739087
#>     Attrib V20    -0.7399379570970227
#>     Attrib V21    -0.2700663636687679
#>     Attrib V22    0.4066959606253515
#>     Attrib V23    0.20287379960554752
#>     Attrib V24    0.3994307182947822
#>     Attrib V25    0.6124822173031454
#>     Attrib V26    1.4060480663142854
#>     Attrib V27    1.537545590089298
#>     Attrib V28    1.2163262251250917
#>     Attrib V29    1.4373489240532513
#>     Attrib V3    0.17547399098716676
#>     Attrib V30    0.32628346817249426
#>     Attrib V31    -0.9133789717602053
#>     Attrib V32    -0.0470907267808722
#>     Attrib V33    -0.18660826373689982
#>     Attrib V34    0.02972444122785929
#>     Attrib V35    0.1831759738258056
#>     Attrib V36    -0.22633052757380914
#>     Attrib V37    -0.36638524989843646
#>     Attrib V38    -0.270602517957182
#>     Attrib V39    0.60622223249868
#>     Attrib V4    0.6137173226721953
#>     Attrib V40    0.8307174204361504
#>     Attrib V41    0.789616023525884
#>     Attrib V42    0.007468611371925843
#>     Attrib V43    -0.2906041441092548
#>     Attrib V44    0.2000057563686027
#>     Attrib V45    0.06765944645124526
#>     Attrib V46    0.6983881445725797
#>     Attrib V47    0.3485203158883966
#>     Attrib V48    1.1001205919049075
#>     Attrib V49    0.6116546697708781
#>     Attrib V5    0.6971353565316476
#>     Attrib V50    -0.8537646905433199
#>     Attrib V51    0.6484285490064456
#>     Attrib V52    0.6596765990048418
#>     Attrib V53    0.33514389457152605
#>     Attrib V54    0.2736691130353004
#>     Attrib V55    -1.2180432169354622
#>     Attrib V56    -0.5360375524208979
#>     Attrib V57    -0.5460895068676002
#>     Attrib V58    -0.15793236433230182
#>     Attrib V59    1.059200667998908
#>     Attrib V6    0.7888737943747323
#>     Attrib V60    0.7367728585049446
#>     Attrib V7    -0.4413626184821264
#>     Attrib V8    -0.7145415845821766
#>     Attrib V9    0.6944917751960773
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.24400975654303492
#>     Attrib V1    -0.20712981902106137
#>     Attrib V10    -0.013051108973667713
#>     Attrib V11    -0.21236624462645012
#>     Attrib V12    -0.11530351675834435
#>     Attrib V13    0.009677475992211877
#>     Attrib V14    0.04651716316407836
#>     Attrib V15    0.08553477500291007
#>     Attrib V16    0.10198354927705111
#>     Attrib V17    0.17359330306748058
#>     Attrib V18    0.050491890856158794
#>     Attrib V19    0.05766258463833942
#>     Attrib V2    -0.1896433762128906
#>     Attrib V20    -0.04861749886798343
#>     Attrib V21    -0.08807849598008793
#>     Attrib V22    -0.07910983813266947
#>     Attrib V23    0.04003306616545081
#>     Attrib V24    -0.1317885324782835
#>     Attrib V25    0.05324219791903899
#>     Attrib V26    -0.014515462032401012
#>     Attrib V27    0.0658075909416473
#>     Attrib V28    -0.01881413765396913
#>     Attrib V29    -0.18333927279008932
#>     Attrib V3    0.08707333032833009
#>     Attrib V30    -0.0898155698014412
#>     Attrib V31    0.3214804725769692
#>     Attrib V32    -0.08325224985864264
#>     Attrib V33    0.0018719855168771293
#>     Attrib V34    0.11703281108775965
#>     Attrib V35    0.2762195784931588
#>     Attrib V36    0.3864111822926904
#>     Attrib V37    0.37901029938109776
#>     Attrib V38    -0.09107004217288632
#>     Attrib V39    -0.18690019965230498
#>     Attrib V4    0.05417864662271351
#>     Attrib V40    0.07505285719905742
#>     Attrib V41    0.13039657882425457
#>     Attrib V42    0.047293267649076084
#>     Attrib V43    -0.01815176590233046
#>     Attrib V44    -0.1823059062986288
#>     Attrib V45    -0.11129880740467941
#>     Attrib V46    -0.20923527981427062
#>     Attrib V47    0.07287258099651353
#>     Attrib V48    -0.10943966056619332
#>     Attrib V49    -0.1803036311276718
#>     Attrib V5    -0.01209388582839774
#>     Attrib V50    0.3107245974506026
#>     Attrib V51    -0.07924776604600073
#>     Attrib V52    -0.12201592721337158
#>     Attrib V53    -0.1047294437279756
#>     Attrib V54    -0.0931214885815424
#>     Attrib V55    0.16452147344354254
#>     Attrib V56    0.04813220703969184
#>     Attrib V57    0.05365305367131561
#>     Attrib V58    0.002901548956567631
#>     Attrib V59    -0.08091468928295806
#>     Attrib V6    0.08251519752413676
#>     Attrib V60    0.20111719209618867
#>     Attrib V7    0.10393335513668638
#>     Attrib V8    0.1600010665291986
#>     Attrib V9    -0.1456265292876153
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.15428574907442288
#>     Attrib V1    0.8211014732940145
#>     Attrib V10    -0.4875872409038569
#>     Attrib V11    -0.1806490397678137
#>     Attrib V12    -0.4283445984360774
#>     Attrib V13    -0.6017501989217433
#>     Attrib V14    0.05329443610001581
#>     Attrib V15    0.17936773094385539
#>     Attrib V16    0.41638832985436286
#>     Attrib V17    0.26975655215914524
#>     Attrib V18    0.3267064690471185
#>     Attrib V19    0.33484592593336315
#>     Attrib V2    0.6718380201313057
#>     Attrib V20    0.29971059036119013
#>     Attrib V21    0.4802877443004022
#>     Attrib V22    0.46661632576736184
#>     Attrib V23    0.11226224218590264
#>     Attrib V24    0.4734933585599669
#>     Attrib V25    -0.3756287861140493
#>     Attrib V26    -0.8622817982226384
#>     Attrib V27    -1.2237237808257446
#>     Attrib V28    -0.507177585216002
#>     Attrib V29    0.013146695878663406
#>     Attrib V3    -0.3577181605448857
#>     Attrib V30    0.17446962072853556
#>     Attrib V31    -0.731773537958036
#>     Attrib V32    0.4809342645945064
#>     Attrib V33    0.5434080442635632
#>     Attrib V34    -0.16514632411528773
#>     Attrib V35    -0.5919337675649923
#>     Attrib V36    -0.7982122085157916
#>     Attrib V37    -0.9716466827743645
#>     Attrib V38    0.2983420672738548
#>     Attrib V39    0.6022175773569918
#>     Attrib V4    -0.03941196387469147
#>     Attrib V40    -0.18366729714236318
#>     Attrib V41    -0.1861965711665986
#>     Attrib V42    0.3924796975410288
#>     Attrib V43    0.33362095595179364
#>     Attrib V44    0.7422055380546466
#>     Attrib V45    0.2294476272214598
#>     Attrib V46    0.20833858892223317
#>     Attrib V47    -0.5494188333416496
#>     Attrib V48    0.14841722137657584
#>     Attrib V49    0.35026030214849924
#>     Attrib V5    -0.19305148740847308
#>     Attrib V50    -0.5286213332051249
#>     Attrib V51    0.19267769073567836
#>     Attrib V52    0.1435800242577525
#>     Attrib V53    0.3321308451648497
#>     Attrib V54    0.5586700416793652
#>     Attrib V55    0.07191822872984817
#>     Attrib V56    0.37430613686444436
#>     Attrib V57    0.5978718574433878
#>     Attrib V58    0.44398067349949677
#>     Attrib V59    0.7118861738460872
#>     Attrib V6    -0.04143317466991201
#>     Attrib V60    0.18285101365300813
#>     Attrib V7    0.014067698018135379
#>     Attrib V8    -0.17375329208679618
#>     Attrib V9    0.07707134502133364
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.33888115179141165
#>     Attrib V1    -0.34719166910968313
#>     Attrib V10    -0.6022828237703985
#>     Attrib V11    -1.2244664095450006
#>     Attrib V12    -1.1750458783725894
#>     Attrib V13    -0.5428995182189987
#>     Attrib V14    -0.41501897753519795
#>     Attrib V15    0.7286457079313408
#>     Attrib V16    0.872298226681369
#>     Attrib V17    0.4410224297092906
#>     Attrib V18    -0.5966530661159923
#>     Attrib V19    -0.3126296521908875
#>     Attrib V2    -0.6809897317949833
#>     Attrib V20    0.14833836906014986
#>     Attrib V21    -0.04857249387472111
#>     Attrib V22    -0.7009363680581152
#>     Attrib V23    -0.5213071716161694
#>     Attrib V24    -0.5533108165384695
#>     Attrib V25    -0.6121391660139471
#>     Attrib V26    -1.2326206151244834
#>     Attrib V27    -1.0374747291401125
#>     Attrib V28    -0.9007021892497293
#>     Attrib V29    -1.6290617776873433
#>     Attrib V3    0.0865478007030592
#>     Attrib V30    -0.5624299665755916
#>     Attrib V31    1.106257078822908
#>     Attrib V32    0.3974613675420532
#>     Attrib V33    0.1508351054777969
#>     Attrib V34    0.1739282078420149
#>     Attrib V35    0.0817731341415972
#>     Attrib V36    0.507268968679431
#>     Attrib V37    0.4681744800577769
#>     Attrib V38    0.06765149111009452
#>     Attrib V39    -0.8371481619783886
#>     Attrib V4    -0.025799785144818208
#>     Attrib V40    -0.9885340166977112
#>     Attrib V41    -0.6454129100398162
#>     Attrib V42    -0.36582516061375214
#>     Attrib V43    -0.27777000435594656
#>     Attrib V44    -0.5653806687574087
#>     Attrib V45    -0.043050515785227624
#>     Attrib V46    -0.5961429691612226
#>     Attrib V47    -0.2576849415305659
#>     Attrib V48    -0.9014181674464941
#>     Attrib V49    -0.7842627849893736
#>     Attrib V5    -0.2296649888037344
#>     Attrib V50    0.7855316624920683
#>     Attrib V51    -0.8668215349492595
#>     Attrib V52    -1.0926671660902898
#>     Attrib V53    -0.9201011576906307
#>     Attrib V54    -0.46024304497654583
#>     Attrib V55    1.1175382889729948
#>     Attrib V56    0.36301777658172607
#>     Attrib V57    0.8178457209041037
#>     Attrib V58    0.158615333748593
#>     Attrib V59    -0.26482287461048376
#>     Attrib V6    -0.5835052615853528
#>     Attrib V60    0.027080500187688337
#>     Attrib V7    0.6441598392024033
#>     Attrib V8    0.5813879562985581
#>     Attrib V9    -0.5494065641787673
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.13138392497045107
#>     Attrib V1    0.46650724649412045
#>     Attrib V10    -0.3429411016732104
#>     Attrib V11    0.017355470613863937
#>     Attrib V12    -0.1524141770228767
#>     Attrib V13    -0.34493222016005237
#>     Attrib V14    0.1620668011867868
#>     Attrib V15    0.060587142316434195
#>     Attrib V16    0.16886186167236386
#>     Attrib V17    0.166378933006016
#>     Attrib V18    0.29075063721693606
#>     Attrib V19    0.22546437508178685
#>     Attrib V2    0.372096339256359
#>     Attrib V20    0.26491675111896096
#>     Attrib V21    0.35617701985909467
#>     Attrib V22    0.35874982924895016
#>     Attrib V23    0.07663066618858803
#>     Attrib V24    0.3780335905236361
#>     Attrib V25    -0.13153636926428489
#>     Attrib V26    -0.5263191374659102
#>     Attrib V27    -0.7000575077464222
#>     Attrib V28    -0.2733482953203188
#>     Attrib V29    0.17293408502604424
#>     Attrib V3    -0.2361707661466868
#>     Attrib V30    0.11659864646021156
#>     Attrib V31    -0.5664275002699489
#>     Attrib V32    0.24244968747633763
#>     Attrib V33    0.31932611370842473
#>     Attrib V34    -0.0976031305469291
#>     Attrib V35    -0.2493377720394708
#>     Attrib V36    -0.44792704841160247
#>     Attrib V37    -0.62527223045754
#>     Attrib V38    0.17640358859643998
#>     Attrib V39    0.41006236345317
#>     Attrib V4    -0.018712263724382137
#>     Attrib V40    -0.08007962731663434
#>     Attrib V41    -0.12826343505754348
#>     Attrib V42    0.17322228925736416
#>     Attrib V43    0.3036975286833914
#>     Attrib V44    0.5136291219115644
#>     Attrib V45    0.23917578275537946
#>     Attrib V46    0.20519552044575917
#>     Attrib V47    -0.2870522055645221
#>     Attrib V48    0.14219337878690266
#>     Attrib V49    0.23609246523407182
#>     Attrib V5    -0.09667521362507717
#>     Attrib V50    -0.40720966391286684
#>     Attrib V51    0.175819751230244
#>     Attrib V52    0.19632719255360948
#>     Attrib V53    0.2398138548483318
#>     Attrib V54    0.37775859093967024
#>     Attrib V55    0.0363751093139092
#>     Attrib V56    0.22224585968044636
#>     Attrib V57    0.31042596288572893
#>     Attrib V58    0.2407064851635896
#>     Attrib V59    0.5034139326248073
#>     Attrib V6    -0.0022201369702319522
#>     Attrib V60    0.13655130760081421
#>     Attrib V7    -0.04980577063813168
#>     Attrib V8    -0.14372810102318329
#>     Attrib V9    0.052020486722965865
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.27931364045531304
#>     Attrib V1    -0.3661028589978377
#>     Attrib V10    0.013970214823465287
#>     Attrib V11    -0.322014419704879
#>     Attrib V12    -0.20834446409041985
#>     Attrib V13    0.10924692717617018
#>     Attrib V14    0.020264642291159984
#>     Attrib V15    0.1999827574495627
#>     Attrib V16    0.18458067453409288
#>     Attrib V17    0.3118021181941921
#>     Attrib V18    0.14144090104533047
#>     Attrib V19    0.011252995773371985
#>     Attrib V2    -0.40149021640397137
#>     Attrib V20    -0.059231601176342547
#>     Attrib V21    -0.07555232342441938
#>     Attrib V22    -0.1076882064855084
#>     Attrib V23    0.04587324373123758
#>     Attrib V24    -0.2418731960676239
#>     Attrib V25    0.1501315471091046
#>     Attrib V26    0.1362502682010903
#>     Attrib V27    0.1668709690106426
#>     Attrib V28    -0.03393883496149395
#>     Attrib V29    -0.38357848936571953
#>     Attrib V3    0.1320877076400527
#>     Attrib V30    -0.11547972236281151
#>     Attrib V31    0.6347043197764076
#>     Attrib V32    -0.266945387606309
#>     Attrib V33    -0.17693175478201667
#>     Attrib V34    0.146197637611804
#>     Attrib V35    0.3613209489485796
#>     Attrib V36    0.5219809091083574
#>     Attrib V37    0.5044025818619493
#>     Attrib V38    -0.2415795265402373
#>     Attrib V39    -0.37676628363755116
#>     Attrib V4    0.03348216929133567
#>     Attrib V40    0.044091176764244476
#>     Attrib V41    0.11830800070275174
#>     Attrib V42    -0.012335480674132766
#>     Attrib V43    -0.06671027030988523
#>     Attrib V44    -0.3571484320100267
#>     Attrib V45    -0.1241128859084893
#>     Attrib V46    -0.2853933719036814
#>     Attrib V47    0.17236917293176363
#>     Attrib V48    -0.20271703076886843
#>     Attrib V49    -0.30419592426344083
#>     Attrib V5    0.007669810048411399
#>     Attrib V50    0.5481468870447866
#>     Attrib V51    -0.18291718237890978
#>     Attrib V52    -0.2566144906608881
#>     Attrib V53    -0.1805078580130735
#>     Attrib V54    -0.08577868338027977
#>     Attrib V55    0.312305156965371
#>     Attrib V56    0.044523398340031
#>     Attrib V57    -0.004601677903952006
#>     Attrib V58    -0.046423660212812405
#>     Attrib V59    -0.13815901141902098
#>     Attrib V6    0.003189605404506234
#>     Attrib V60    0.2606945728106347
#>     Attrib V7    0.09676123696561172
#>     Attrib V8    0.18061449729404877
#>     Attrib V9    -0.27178539527624573
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.058343455406690975
#>     Attrib V1    0.7205735329661752
#>     Attrib V10    -0.5234521164852202
#>     Attrib V11    -0.2991416534548853
#>     Attrib V12    -0.5401197547110735
#>     Attrib V13    -0.5447512278337346
#>     Attrib V14    0.14034553036281516
#>     Attrib V15    0.29576129171752846
#>     Attrib V16    0.4943906633437719
#>     Attrib V17    0.323972572745909
#>     Attrib V18    0.21657221677709232
#>     Attrib V19    0.2518528451207204
#>     Attrib V2    0.6813676827004829
#>     Attrib V20    0.3082597909787503
#>     Attrib V21    0.32747786840117044
#>     Attrib V22    0.40598218301127226
#>     Attrib V23    0.10719903929666483
#>     Attrib V24    0.3574318383477586
#>     Attrib V25    -0.4095695119864836
#>     Attrib V26    -0.8972442524436225
#>     Attrib V27    -1.1829340975638587
#>     Attrib V28    -0.5830612377351287
#>     Attrib V29    -0.20728811242195147
#>     Attrib V3    -0.26267455460579
#>     Attrib V30    0.012410871972942371
#>     Attrib V31    -0.5693331532151007
#>     Attrib V32    0.4129647477573919
#>     Attrib V33    0.5344990194882406
#>     Attrib V34    -0.1312247701421008
#>     Attrib V35    -0.5278095736254788
#>     Attrib V36    -0.6995372317138054
#>     Attrib V37    -0.7391579411018527
#>     Attrib V38    0.2963020701082149
#>     Attrib V39    0.41428237455833444
#>     Attrib V4    -0.02501754597722918
#>     Attrib V40    -0.1255223352035056
#>     Attrib V41    -0.16526269686017794
#>     Attrib V42    0.32750093223278276
#>     Attrib V43    0.28222129711512856
#>     Attrib V44    0.5158766168226888
#>     Attrib V45    0.040058611543074066
#>     Attrib V46    0.13109769016305187
#>     Attrib V47    -0.49138394657246615
#>     Attrib V48    0.017611838572103394
#>     Attrib V49    0.25848012339175247
#>     Attrib V5    -0.23064022719704305
#>     Attrib V50    -0.4202314328244087
#>     Attrib V51    0.11046003192134841
#>     Attrib V52    0.039485401603000625
#>     Attrib V53    0.2967550578835545
#>     Attrib V54    0.5117155091874709
#>     Attrib V55    0.18000824876022223
#>     Attrib V56    0.4241063103309914
#>     Attrib V57    0.6153698798226827
#>     Attrib V58    0.4065048838390061
#>     Attrib V59    0.6289017529240448
#>     Attrib V6    -0.04053418112825999
#>     Attrib V60    0.31592401163917344
#>     Attrib V7    0.13196545089766107
#>     Attrib V8    -0.1576417584444364
#>     Attrib V9    0.028314836399618095
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.18762533050236138
#>     Attrib V1    0.09475915456409466
#>     Attrib V10    -0.013532218038039664
#>     Attrib V11    0.04135859522661107
#>     Attrib V12    0.016670517896947044
#>     Attrib V13    -0.031001476628228313
#>     Attrib V14    0.11858897385818541
#>     Attrib V15    0.07420496736874582
#>     Attrib V16    0.07481727883570427
#>     Attrib V17    0.004043010106119403
#>     Attrib V18    0.05741838898566988
#>     Attrib V19    -0.07632721313129956
#>     Attrib V2    0.021392466632075707
#>     Attrib V20    -0.06429384401969682
#>     Attrib V21    -0.05640487317076904
#>     Attrib V22    -0.05509919612746006
#>     Attrib V23    0.005157081198695927
#>     Attrib V24    -0.023917483769830144
#>     Attrib V25    -0.06605673135576211
#>     Attrib V26    -0.07118560159195228
#>     Attrib V27    -0.0665818306469616
#>     Attrib V28    -0.012536741917345292
#>     Attrib V29    -0.03697880442080459
#>     Attrib V3    0.08455946206863847
#>     Attrib V30    0.004372391028807969
#>     Attrib V31    -0.030512928166079978
#>     Attrib V32    0.016374915445484375
#>     Attrib V33    0.06896393976543792
#>     Attrib V34    0.0743947168042409
#>     Attrib V35    0.1067353130569759
#>     Attrib V36    0.15827835654018216
#>     Attrib V37    0.08050643128843724
#>     Attrib V38    0.011347142823461833
#>     Attrib V39    0.05307203944169762
#>     Attrib V4    0.07284927037371598
#>     Attrib V40    0.041345141489073235
#>     Attrib V41    0.029598450125059787
#>     Attrib V42    0.06673569369837012
#>     Attrib V43    0.002800743815125515
#>     Attrib V44    0.0832035897484185
#>     Attrib V45    0.0881267994029807
#>     Attrib V46    0.04690630540030122
#>     Attrib V47    0.03242514697192796
#>     Attrib V48    -0.00973459829876474
#>     Attrib V49    0.04486515795160991
#>     Attrib V5    0.07809122574654892
#>     Attrib V50    0.02332749563440471
#>     Attrib V51    0.09491602598869286
#>     Attrib V52    0.08954650310392219
#>     Attrib V53    0.04973098507692693
#>     Attrib V54    -0.036262991590429894
#>     Attrib V55    0.06905546151307612
#>     Attrib V56    0.08523707419640682
#>     Attrib V57    0.10163869999953329
#>     Attrib V58    0.14707952758606688
#>     Attrib V59    0.08990410191821872
#>     Attrib V6    0.10928413017687189
#>     Attrib V60    0.17091293859323958
#>     Attrib V7    0.08327164879235252
#>     Attrib V8    0.08192472112926623
#>     Attrib V9    0.06111859286367598
#> Class M
#>     Input
#>     Node 0
#> Class R
#>     Input
#>     Node 1
#> 


# Make predictions for the test rows
predictions = learner$predict(task, row_ids = ids$test)

# Score the predictions
predictions$score()
#> classif.ce 
#>  0.1594203 
```
