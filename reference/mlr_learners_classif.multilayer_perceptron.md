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
#> • Other settings: use_weights = 'error', predict_raw = 'FALSE'

# Define a Task
task = tsk("sonar")

# Create train and test set
ids = partition(task)

# Train the learner on the training ids
learner$train(task, row_ids = ids$train)

print(learner$model)
#> Sigmoid Node 0
#>     Inputs    Weights
#>     Threshold    -0.131106979171561
#>     Node 2    1.9785160605139747
#>     Node 3    1.7895027013918812
#>     Node 4    0.778785551250411
#>     Node 5    -2.328434617806277
#>     Node 6    1.1217480544180332
#>     Node 7    2.519937091456089
#>     Node 8    0.9659962454360989
#>     Node 9    3.8498559118900286
#>     Node 10    -1.6889490187811615
#>     Node 11    1.4198344010832429
#>     Node 12    1.648560637270969
#>     Node 13    0.1449565933551151
#>     Node 14    1.5229112903665707
#>     Node 15    -1.6892054908294107
#>     Node 16    0.5512030937459881
#>     Node 17    0.2084363332409242
#>     Node 18    -0.7861086821515909
#>     Node 19    1.6643372813644806
#>     Node 20    1.8771129663901587
#>     Node 21    -2.3231115497634383
#>     Node 22    0.9690099232192996
#>     Node 23    1.9973112983769676
#>     Node 24    -1.0229889762603328
#>     Node 25    3.8373066774447717
#>     Node 26    -0.9701292202222587
#>     Node 27    1.633340004941633
#>     Node 28    -2.4284701301885243
#>     Node 29    1.4034467238102124
#>     Node 30    -0.44570508602806036
#>     Node 31    1.5225343120873978
#>     Node 32    -0.7513918199367938
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.17514201339706098
#>     Node 2    -2.017477703996808
#>     Node 3    -1.7572985398936973
#>     Node 4    -0.7406389321434066
#>     Node 5    2.3591381146171653
#>     Node 6    -1.094270391438353
#>     Node 7    -2.521486373698017
#>     Node 8    -1.012366537922697
#>     Node 9    -3.8629880700086883
#>     Node 10    1.6395160865259162
#>     Node 11    -1.3851117671260846
#>     Node 12    -1.7170926470820778
#>     Node 13    -0.09792137191535726
#>     Node 14    -1.4724787609182697
#>     Node 15    1.6774303571511286
#>     Node 16    -0.5702045818208858
#>     Node 17    -0.18506994256378356
#>     Node 18    0.8248726943165321
#>     Node 19    -1.6449251219999492
#>     Node 20    -1.8549656705676605
#>     Node 21    2.353871223058882
#>     Node 22    -1.019967482537181
#>     Node 23    -2.029781406983814
#>     Node 24    1.0051663077591833
#>     Node 25    -3.833430936980016
#>     Node 26    0.8835402327555966
#>     Node 27    -1.6898385112138237
#>     Node 28    2.3809017629019045
#>     Node 29    -1.4305374272480649
#>     Node 30    0.519374408647523
#>     Node 31    -1.4596045863590332
#>     Node 32    0.7261197217438022
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.22510028488147324
#>     Attrib V1    0.005427534767470934
#>     Attrib V10    0.17572912445662822
#>     Attrib V11    0.44946498106231836
#>     Attrib V12    0.6128971891885632
#>     Attrib V13    0.5154563597611825
#>     Attrib V14    -0.6358042370076054
#>     Attrib V15    -0.46193378628156045
#>     Attrib V16    -0.3740136113496831
#>     Attrib V17    -0.015650550811381305
#>     Attrib V18    0.5815777991147779
#>     Attrib V19    0.54332884445508
#>     Attrib V2    -0.14406521842842557
#>     Attrib V20    -0.291530768029596
#>     Attrib V21    0.17186132000171958
#>     Attrib V22    0.8785513116339458
#>     Attrib V23    0.8521258533609032
#>     Attrib V24    0.5604440911216994
#>     Attrib V25    0.16401100145815006
#>     Attrib V26    -0.3815374931521864
#>     Attrib V27    -0.22837778280922194
#>     Attrib V28    0.4017280805567615
#>     Attrib V29    -0.30503001030440685
#>     Attrib V3    -0.1394299302242072
#>     Attrib V30    0.21416408850798402
#>     Attrib V31    -1.0739360607864015
#>     Attrib V32    -0.23018795505092698
#>     Attrib V33    0.1355586407836268
#>     Attrib V34    0.07961223537191833
#>     Attrib V35    -0.4123832482556009
#>     Attrib V36    -0.6123722824483626
#>     Attrib V37    -1.035782570926241
#>     Attrib V38    -0.3258019843727959
#>     Attrib V39    0.6725630088657065
#>     Attrib V4    0.3201995511865044
#>     Attrib V40    -0.2598028496325388
#>     Attrib V41    0.5267032136402675
#>     Attrib V42    0.33361655496094483
#>     Attrib V43    0.6726433956715266
#>     Attrib V44    0.49116060354575986
#>     Attrib V45    0.3064710467723508
#>     Attrib V46    0.05607498737210841
#>     Attrib V47    0.20027779258984102
#>     Attrib V48    0.14179700690832175
#>     Attrib V49    0.004738833214813815
#>     Attrib V5    0.33321442856057576
#>     Attrib V50    -0.7679792363506297
#>     Attrib V51    0.6172431893754952
#>     Attrib V52    0.30486929578317307
#>     Attrib V53    -0.1936111048265824
#>     Attrib V54    0.41881285831245363
#>     Attrib V55    -0.4077211896532198
#>     Attrib V56    0.00928312424879267
#>     Attrib V57    -0.42389116295529966
#>     Attrib V58    0.32400574554019984
#>     Attrib V59    0.5449787631397498
#>     Attrib V6    -0.06531519247434564
#>     Attrib V60    0.5891895706381949
#>     Attrib V7    -0.6919556784650538
#>     Attrib V8    -0.3332782514659692
#>     Attrib V9    0.4806885488978938
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.1465548481712728
#>     Attrib V1    0.5956759035013599
#>     Attrib V10    -0.07637930712822326
#>     Attrib V11    -0.013257400742594364
#>     Attrib V12    0.20521778163450108
#>     Attrib V13    0.37093726781281544
#>     Attrib V14    0.22869468104098575
#>     Attrib V15    0.27704817437320417
#>     Attrib V16    -0.06541012634749153
#>     Attrib V17    0.09112444033892084
#>     Attrib V18    0.4562183254645794
#>     Attrib V19    0.4787990036051898
#>     Attrib V2    0.15597573645381582
#>     Attrib V20    0.44727499486577577
#>     Attrib V21    0.6640884642022895
#>     Attrib V22    0.4913039119848366
#>     Attrib V23    -0.06317001042921998
#>     Attrib V24    -0.3399816432404668
#>     Attrib V25    -0.733159439756866
#>     Attrib V26    -0.8913154505961383
#>     Attrib V27    -0.7565201042179249
#>     Attrib V28    -0.28753679261104215
#>     Attrib V29    -0.24547640687107747
#>     Attrib V3    0.1514047244516759
#>     Attrib V30    0.10028327209199057
#>     Attrib V31    -0.8953067367604085
#>     Attrib V32    -0.696958242639574
#>     Attrib V33    -0.1569550066034673
#>     Attrib V34    -0.2379316543186475
#>     Attrib V35    -0.3286233656584395
#>     Attrib V36    -0.34017543558024327
#>     Attrib V37    -0.3845142865549557
#>     Attrib V38    0.06114556417069759
#>     Attrib V39    0.5566327935252203
#>     Attrib V4    0.1934079535416706
#>     Attrib V40    -0.12072516878749473
#>     Attrib V41    0.1511731807763571
#>     Attrib V42    0.23294320503611107
#>     Attrib V43    0.3650748967312643
#>     Attrib V44    0.1995889596347228
#>     Attrib V45    0.23773786326018878
#>     Attrib V46    0.006463723163945026
#>     Attrib V47    -0.03887812671336104
#>     Attrib V48    -0.09054100553373212
#>     Attrib V49    -0.0768641356492474
#>     Attrib V5    0.1569033399520051
#>     Attrib V50    -0.20312464373451036
#>     Attrib V51    0.12615684479727463
#>     Attrib V52    -0.022197073090735986
#>     Attrib V53    -0.213146497687765
#>     Attrib V54    0.6716409486264996
#>     Attrib V55    0.14958593394983014
#>     Attrib V56    0.2733375860526734
#>     Attrib V57    0.20875204306189515
#>     Attrib V58    0.32212139992384603
#>     Attrib V59    0.573600765024603
#>     Attrib V6    -0.004699676671990688
#>     Attrib V60    0.5227403173264192
#>     Attrib V7    -0.2271136694194618
#>     Attrib V8    0.030992044104489396
#>     Attrib V9    0.12384886377579227
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.03269719949952376
#>     Attrib V1    0.24683499140652648
#>     Attrib V10    0.07649477584980022
#>     Attrib V11    0.10635846541605394
#>     Attrib V12    0.1774672511681448
#>     Attrib V13    0.2224277527054205
#>     Attrib V14    0.13154276738839607
#>     Attrib V15    0.13836956324066585
#>     Attrib V16    -0.033392006869772894
#>     Attrib V17    0.01971748583916307
#>     Attrib V18    0.09702826544893463
#>     Attrib V19    0.0946048074138995
#>     Attrib V2    0.06620336039666048
#>     Attrib V20    0.08213952637645884
#>     Attrib V21    0.21606394567057277
#>     Attrib V22    -0.02023013741971903
#>     Attrib V23    -0.28780261550617464
#>     Attrib V24    -0.28511830118042103
#>     Attrib V25    -0.37454589326335713
#>     Attrib V26    -0.3756976010373482
#>     Attrib V27    -0.3818993051245195
#>     Attrib V28    -0.12481201914362362
#>     Attrib V29    -0.1082574809865647
#>     Attrib V3    0.10704945185412186
#>     Attrib V30    -0.004641678349789227
#>     Attrib V31    -0.3551857587414919
#>     Attrib V32    -0.2499364795936735
#>     Attrib V33    -0.05099911828622594
#>     Attrib V34    0.014400126353638961
#>     Attrib V35    0.017480237134019937
#>     Attrib V36    -0.027168457528105535
#>     Attrib V37    -0.0824173861792021
#>     Attrib V38    0.07162073736237701
#>     Attrib V39    0.27732280983641905
#>     Attrib V4    0.11568762929322417
#>     Attrib V40    -0.04622644463680677
#>     Attrib V41    -0.002370574116517035
#>     Attrib V42    0.03336208379751163
#>     Attrib V43    0.11458502132574856
#>     Attrib V44    0.10639597857295377
#>     Attrib V45    0.23376170258726434
#>     Attrib V46    0.0397707566091112
#>     Attrib V47    0.003445036739360696
#>     Attrib V48    0.13238526558278
#>     Attrib V49    0.10850666216512991
#>     Attrib V5    0.14167686006678645
#>     Attrib V50    -0.0019307116624605388
#>     Attrib V51    0.16122196836015912
#>     Attrib V52    0.012907412638150192
#>     Attrib V53    0.040258267310420065
#>     Attrib V54    0.198230113957026
#>     Attrib V55    0.11193211765193997
#>     Attrib V56    0.20530988007669976
#>     Attrib V57    0.18757654324144246
#>     Attrib V58    0.1842669057802974
#>     Attrib V59    0.34118806191497153
#>     Attrib V6    -0.028943511506321896
#>     Attrib V60    0.3119536030054128
#>     Attrib V7    -0.06494662865160215
#>     Attrib V8    -0.054671766833704005
#>     Attrib V9    0.12608622081303983
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    0.058398498452136065
#>     Attrib V1    0.11199534194532307
#>     Attrib V10    -0.6145623644123247
#>     Attrib V11    -0.6559063518472404
#>     Attrib V12    -0.7556686690886751
#>     Attrib V13    -0.427352059581848
#>     Attrib V14    0.9075365085067083
#>     Attrib V15    0.7349962573417462
#>     Attrib V16    0.4597137311085208
#>     Attrib V17    0.36947269698958624
#>     Attrib V18    -0.12670206249997304
#>     Attrib V19    -0.14714057812885692
#>     Attrib V2    0.07575171982471057
#>     Attrib V20    0.7625968485305489
#>     Attrib V21    0.015032628984037752
#>     Attrib V22    -0.8818548050936434
#>     Attrib V23    -0.6660507188587725
#>     Attrib V24    -0.5854901087613484
#>     Attrib V25    -0.384860537642668
#>     Attrib V26    -0.14222170057562566
#>     Attrib V27    -0.4284158346482298
#>     Attrib V28    -1.064199702937637
#>     Attrib V29    -0.09751749782279608
#>     Attrib V3    0.34502922782946993
#>     Attrib V30    -0.4838667602503656
#>     Attrib V31    0.9596556679349983
#>     Attrib V32    0.22574287623105593
#>     Attrib V33    -0.030471558395946185
#>     Attrib V34    0.02739743106316409
#>     Attrib V35    0.6579964860933721
#>     Attrib V36    0.6331232873470757
#>     Attrib V37    0.7824903374688288
#>     Attrib V38    0.363974753734718
#>     Attrib V39    -1.0144067276495294
#>     Attrib V4    -0.29260334128002213
#>     Attrib V40    -0.16709118502500506
#>     Attrib V41    -0.9169772167304392
#>     Attrib V42    -0.05166737214731217
#>     Attrib V43    -0.42458890460886495
#>     Attrib V44    -0.5730337728515317
#>     Attrib V45    -0.4032527733036587
#>     Attrib V46    -0.2863760419110366
#>     Attrib V47    -0.45429885529562003
#>     Attrib V48    -0.7446464798414636
#>     Attrib V49    -0.5434058895763125
#>     Attrib V5    -0.28726313095066736
#>     Attrib V50    0.8314202232433885
#>     Attrib V51    -0.6865281694297451
#>     Attrib V52    -0.6180734809184156
#>     Attrib V53    -0.115846236437932
#>     Attrib V54    0.08880225655143521
#>     Attrib V55    1.0255435577674927
#>     Attrib V56    0.3043207138111254
#>     Attrib V57    0.5446997007427798
#>     Attrib V58    -0.1247041752850308
#>     Attrib V59    -0.3283187689098629
#>     Attrib V6    -0.2338862901914607
#>     Attrib V60    -0.5592824512477766
#>     Attrib V7    0.5428331462829493
#>     Attrib V8    0.23755856035435938
#>     Attrib V9    -1.1158382796873854
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.0955499065305832
#>     Attrib V1    0.40670541688848066
#>     Attrib V10    -0.08975297239150187
#>     Attrib V11    0.016222906715994353
#>     Attrib V12    0.2195758377444679
#>     Attrib V13    0.21540694203414948
#>     Attrib V14    0.12689946758012452
#>     Attrib V15    0.15434043836535877
#>     Attrib V16    0.048461688243738456
#>     Attrib V17    0.06541158761984922
#>     Attrib V18    0.33651822104618356
#>     Attrib V19    0.26221891151552307
#>     Attrib V2    0.09863535255356741
#>     Attrib V20    0.2625949631429959
#>     Attrib V21    0.40386439327496587
#>     Attrib V22    0.1669176161737038
#>     Attrib V23    -0.1820257262868718
#>     Attrib V24    -0.20741604278222225
#>     Attrib V25    -0.4101780885738548
#>     Attrib V26    -0.5758319281700465
#>     Attrib V27    -0.5423799416765585
#>     Attrib V28    -0.34867176136097505
#>     Attrib V29    -0.30479838436655976
#>     Attrib V3    0.07950915728382445
#>     Attrib V30    -0.10806980642939655
#>     Attrib V31    -0.5993848803150311
#>     Attrib V32    -0.38275033745325404
#>     Attrib V33    -0.06669041987154752
#>     Attrib V34    -0.0431735820126355
#>     Attrib V35    -0.06524579382920315
#>     Attrib V36    -0.14734453659189867
#>     Attrib V37    -0.1821260204981794
#>     Attrib V38    0.08818899826844537
#>     Attrib V39    0.33980154876517293
#>     Attrib V4    0.1679385427167221
#>     Attrib V40    -0.11919502533862339
#>     Attrib V41    0.0859125766192288
#>     Attrib V42    0.1250475169921983
#>     Attrib V43    0.2206348200833574
#>     Attrib V44    0.06597229792939799
#>     Attrib V45    0.15277376622264233
#>     Attrib V46    0.014430722844301759
#>     Attrib V47    -0.06990451755770091
#>     Attrib V48    -0.023612494930950457
#>     Attrib V49    -0.050527917759872754
#>     Attrib V5    0.12084706932458904
#>     Attrib V50    -0.07005204565780519
#>     Attrib V51    0.112759047005041
#>     Attrib V52    -0.08741073442638926
#>     Attrib V53    -0.04468142525545774
#>     Attrib V54    0.45091410081664385
#>     Attrib V55    0.1691523107067128
#>     Attrib V56    0.2733657134297008
#>     Attrib V57    0.23524433825215685
#>     Attrib V58    0.24337552177231905
#>     Attrib V59    0.49444594238865547
#>     Attrib V6    0.01671583761811146
#>     Attrib V60    0.4842625043512836
#>     Attrib V7    -0.12320670999177073
#>     Attrib V8    -0.05023576970808238
#>     Attrib V9    0.0716462866567632
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.21067584940018783
#>     Attrib V1    0.31956125863689433
#>     Attrib V10    0.6791161691853218
#>     Attrib V11    0.6720308812068857
#>     Attrib V12    0.37333627641845896
#>     Attrib V13    0.23430861670391936
#>     Attrib V14    -0.44582592302573815
#>     Attrib V15    -0.4612884416026194
#>     Attrib V16    -0.4742200767216765
#>     Attrib V17    -0.6269586059709152
#>     Attrib V18    -0.33037089692607535
#>     Attrib V19    -0.14045147474324227
#>     Attrib V2    0.10848082444279997
#>     Attrib V20    -0.5192153350778648
#>     Attrib V21    0.35502931798997567
#>     Attrib V22    0.6764888278246698
#>     Attrib V23    0.17377546797289187
#>     Attrib V24    -0.03707601956227482
#>     Attrib V25    -0.23050545611053358
#>     Attrib V26    -0.010721779672021942
#>     Attrib V27    0.5434613154299731
#>     Attrib V28    1.468797952168292
#>     Attrib V29    1.198282680286916
#>     Attrib V3    -0.10185321881209847
#>     Attrib V30    1.0456751714509094
#>     Attrib V31    -0.9525726054026844
#>     Attrib V32    -0.5003887645843338
#>     Attrib V33    -0.3550925838991374
#>     Attrib V34    -0.400195204154286
#>     Attrib V35    -0.6408684253123247
#>     Attrib V36    -0.32036963100413157
#>     Attrib V37    -0.3558964472162625
#>     Attrib V38    -0.11721737852300455
#>     Attrib V39    1.0290381168884282
#>     Attrib V4    0.3067889404600776
#>     Attrib V40    0.1921805102953167
#>     Attrib V41    0.6301745329802039
#>     Attrib V42    -0.24755254696102408
#>     Attrib V43    0.008207178304673135
#>     Attrib V44    0.3927856670561231
#>     Attrib V45    0.514466927075766
#>     Attrib V46    0.48291367151500614
#>     Attrib V47    0.598851380109199
#>     Attrib V48    0.8024753725228085
#>     Attrib V49    0.6669342856001388
#>     Attrib V5    0.2636583777957628
#>     Attrib V50    -0.574718106460316
#>     Attrib V51    0.4897581377362889
#>     Attrib V52    0.5913186631883784
#>     Attrib V53    0.06104242988684115
#>     Attrib V54    -0.5561655544476957
#>     Attrib V55    -1.0036229184885244
#>     Attrib V56    -0.34699237816530587
#>     Attrib V57    -0.38729756829403694
#>     Attrib V58    0.09276027328384742
#>     Attrib V59    0.47705222767851163
#>     Attrib V6    0.2205281617915953
#>     Attrib V60    0.6018714501246248
#>     Attrib V7    -0.22065854331667517
#>     Attrib V8    -0.009084526205315682
#>     Attrib V9    1.04465080085097
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.14325552918520607
#>     Attrib V1    0.23027280021575486
#>     Attrib V10    0.23460698955422485
#>     Attrib V11    0.22421025442606574
#>     Attrib V12    0.17948109617857053
#>     Attrib V13    0.15082489538840615
#>     Attrib V14    -0.12163051989701341
#>     Attrib V15    -0.11351208590287755
#>     Attrib V16    -0.13715705115729554
#>     Attrib V17    -0.17255465870739095
#>     Attrib V18    -0.12848849873570686
#>     Attrib V19    -0.10777118424175701
#>     Attrib V2    0.036384345788886406
#>     Attrib V20    -0.23370614300300707
#>     Attrib V21    -0.012627883813047849
#>     Attrib V22    -0.1768576919323988
#>     Attrib V23    -0.4699698940980878
#>     Attrib V24    -0.2664816697171078
#>     Attrib V25    -0.24018118333622623
#>     Attrib V26    -0.12790209122436538
#>     Attrib V27    -0.07122539706781203
#>     Attrib V28    0.1640666305538653
#>     Attrib V29    0.13380220679059873
#>     Attrib V3    -0.03909787435684896
#>     Attrib V30    0.2746991837248411
#>     Attrib V31    -0.27309812621150986
#>     Attrib V32    -0.14164203222019792
#>     Attrib V33    -0.00853805199978873
#>     Attrib V34    0.053270932950715395
#>     Attrib V35    0.08892445433557672
#>     Attrib V36    0.16957182598665096
#>     Attrib V37    0.054804677488917417
#>     Attrib V38    0.23273421545555384
#>     Attrib V39    0.34356446549158154
#>     Attrib V4    0.15080034791184455
#>     Attrib V40    -0.045715452588733246
#>     Attrib V41    0.1064245364940099
#>     Attrib V42    -0.08663805015930992
#>     Attrib V43    0.22306607830222977
#>     Attrib V44    0.39302794344147074
#>     Attrib V45    0.41066402162696336
#>     Attrib V46    0.21834741342963196
#>     Attrib V47    0.12923073573362245
#>     Attrib V48    0.36872168514178455
#>     Attrib V49    0.2774798897574891
#>     Attrib V5    0.08965634252892066
#>     Attrib V50    -0.0787390281345541
#>     Attrib V51    0.14289906398835467
#>     Attrib V52    0.06977426983470147
#>     Attrib V53    0.0689240410681881
#>     Attrib V54    0.1363649742500572
#>     Attrib V55    -0.1093992333060614
#>     Attrib V56    0.022304917218810526
#>     Attrib V57    0.17221715347904532
#>     Attrib V58    0.09084056431420476
#>     Attrib V59    0.3683122953978299
#>     Attrib V6    -0.020771158353287404
#>     Attrib V60    0.3492416840146932
#>     Attrib V7    -0.06422436630545467
#>     Attrib V8    -0.07983796716042255
#>     Attrib V9    0.24505886548093034
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    -0.4963135404501792
#>     Attrib V1    -0.2816823235001656
#>     Attrib V10    1.3618293261510792
#>     Attrib V11    1.153253446596382
#>     Attrib V12    0.6917971902884507
#>     Attrib V13    0.19414868652363604
#>     Attrib V14    -1.6671708547977295
#>     Attrib V15    -1.200726011440472
#>     Attrib V16    -0.501603784050207
#>     Attrib V17    -0.3528949503852926
#>     Attrib V18    -0.131170275249433
#>     Attrib V19    -0.08024781160401719
#>     Attrib V2    -0.0412670769679195
#>     Attrib V20    -1.0622628851928109
#>     Attrib V21    0.24639032028537933
#>     Attrib V22    1.2481771523650695
#>     Attrib V23    0.8828239053508806
#>     Attrib V24    0.6702961755772164
#>     Attrib V25    0.7665260664795215
#>     Attrib V26    0.4767778105913785
#>     Attrib V27    0.7099033603598959
#>     Attrib V28    1.540091689141374
#>     Attrib V29    0.17176851428297066
#>     Attrib V3    -0.37190843286444447
#>     Attrib V30    0.4951246438521932
#>     Attrib V31    -1.2754120614993563
#>     Attrib V32    0.01098187114939892
#>     Attrib V33    -0.11539632140640241
#>     Attrib V34    -0.1075142002597404
#>     Attrib V35    -0.5697975167025733
#>     Attrib V36    -0.6113765217201677
#>     Attrib V37    -1.1934507417240934
#>     Attrib V38    -0.7947529566527136
#>     Attrib V39    1.104615062761601
#>     Attrib V4    0.53677381471153
#>     Attrib V40    0.13897599732555224
#>     Attrib V41    0.8451333833899899
#>     Attrib V42    -0.35228961067435177
#>     Attrib V43    0.1678626059355857
#>     Attrib V44    0.6757877304811138
#>     Attrib V45    0.5591887300472593
#>     Attrib V46    0.6368095258014159
#>     Attrib V47    1.0279944814113264
#>     Attrib V48    1.1886664928890467
#>     Attrib V49    0.8930003314899061
#>     Attrib V5    0.36922637093229677
#>     Attrib V50    -0.7575439698389793
#>     Attrib V51    1.0884803281253337
#>     Attrib V52    0.8361737379847755
#>     Attrib V53    0.3806795562404673
#>     Attrib V54    -0.8742062811051355
#>     Attrib V55    -1.38339948412156
#>     Attrib V56    -0.4127204816353766
#>     Attrib V57    -1.0071323094242937
#>     Attrib V58    0.27687715629256043
#>     Attrib V59    0.33589252336985403
#>     Attrib V6    0.21371749645478894
#>     Attrib V60    0.679306445961665
#>     Attrib V7    -0.5415765214920775
#>     Attrib V8    -0.0626901148508437
#>     Attrib V9    1.6850852114721717
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.05533313285901611
#>     Attrib V1    0.08032277173692771
#>     Attrib V10    -0.4274358278091755
#>     Attrib V11    -0.5050492822500816
#>     Attrib V12    -0.5278511949241043
#>     Attrib V13    -0.2740267359675416
#>     Attrib V14    0.7089003917498832
#>     Attrib V15    0.48072766776536663
#>     Attrib V16    0.3882195141969074
#>     Attrib V17    0.2531684202653402
#>     Attrib V18    -0.06944704170302746
#>     Attrib V19    -0.12523548074461158
#>     Attrib V2    0.058930643505998866
#>     Attrib V20    0.5328560376217609
#>     Attrib V21    -0.008855174534137351
#>     Attrib V22    -0.6439326789125733
#>     Attrib V23    -0.470107614047494
#>     Attrib V24    -0.443026695108894
#>     Attrib V25    -0.30103497741386004
#>     Attrib V26    -0.057118348481735935
#>     Attrib V27    -0.26054339557143197
#>     Attrib V28    -0.734122697226374
#>     Attrib V29    -0.10580426369013685
#>     Attrib V3    0.2604308476513482
#>     Attrib V30    -0.360613853021815
#>     Attrib V31    0.7346258872610104
#>     Attrib V32    0.0840630740315414
#>     Attrib V33    -0.03895400646550265
#>     Attrib V34    0.00931576058234836
#>     Attrib V35    0.4474262254147212
#>     Attrib V36    0.4242891375463797
#>     Attrib V37    0.5489889825755975
#>     Attrib V38    0.2391337086373732
#>     Attrib V39    -0.8386318133550748
#>     Attrib V4    -0.15721693495290553
#>     Attrib V40    -0.11472333329663408
#>     Attrib V41    -0.6105213211795208
#>     Attrib V42    -0.04558761055208058
#>     Attrib V43    -0.33190465072377723
#>     Attrib V44    -0.4297003437862271
#>     Attrib V45    -0.2810749676904517
#>     Attrib V46    -0.22279735733781228
#>     Attrib V47    -0.3320384624279494
#>     Attrib V48    -0.5684393926783566
#>     Attrib V49    -0.3922207862815259
#>     Attrib V5    -0.19580729059654575
#>     Attrib V50    0.6607389691179801
#>     Attrib V51    -0.5012680895049579
#>     Attrib V52    -0.42954284261173886
#>     Attrib V53    0.037428021538077165
#>     Attrib V54    -0.00990199986530171
#>     Attrib V55    0.6574557546450474
#>     Attrib V56    0.15209016812907022
#>     Attrib V57    0.40242215660765457
#>     Attrib V58    -0.09880411774796485
#>     Attrib V59    -0.28502782912791974
#>     Attrib V6    -0.10496837223288502
#>     Attrib V60    -0.4573319856409033
#>     Attrib V7    0.40178098361474246
#>     Attrib V8    0.20575796905518234
#>     Attrib V9    -0.8025014868519104
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.12996479490449925
#>     Attrib V1    0.2563050881230698
#>     Attrib V10    0.022856345615816166
#>     Attrib V11    0.1576997679040536
#>     Attrib V12    0.2033155435626344
#>     Attrib V13    0.18448981696021502
#>     Attrib V14    -0.2745863419118385
#>     Attrib V15    -0.13572994866257898
#>     Attrib V16    -0.16310724157206524
#>     Attrib V17    0.08840481465430841
#>     Attrib V18    0.47674281343597635
#>     Attrib V19    0.41943560746585806
#>     Attrib V2    -0.14737725138045746
#>     Attrib V20    0.20263031397379194
#>     Attrib V21    0.442639667387194
#>     Attrib V22    0.458698560871719
#>     Attrib V23    0.13305990549837063
#>     Attrib V24    0.005366161289884625
#>     Attrib V25    -0.26304942309030627
#>     Attrib V26    -0.5664284385570281
#>     Attrib V27    -0.4974391612380819
#>     Attrib V28    -0.05301991534977452
#>     Attrib V29    -0.26010472819514857
#>     Attrib V3    -0.175245556958651
#>     Attrib V30    0.15682382601191935
#>     Attrib V31    -0.9510942326321413
#>     Attrib V32    -0.5162200802613138
#>     Attrib V33    9.885784488520486E-4
#>     Attrib V34    0.04549948858811168
#>     Attrib V35    -0.08833641669629902
#>     Attrib V36    -0.20191499336421045
#>     Attrib V37    -0.5219740370856149
#>     Attrib V38    -0.03055104717799655
#>     Attrib V39    0.42812128452853904
#>     Attrib V4    0.10486951437181542
#>     Attrib V40    -0.27465097116806636
#>     Attrib V41    0.11398887815783329
#>     Attrib V42    0.13834961019284917
#>     Attrib V43    0.4640505251249943
#>     Attrib V44    0.4494557156460803
#>     Attrib V45    0.478434297411569
#>     Attrib V46    0.1298486142376021
#>     Attrib V47    0.11080562951667788
#>     Attrib V48    0.12441162181505595
#>     Attrib V49    0.019694591283568687
#>     Attrib V5    0.11927064110411176
#>     Attrib V50    -0.33893483915442885
#>     Attrib V51    0.29545513080475916
#>     Attrib V52    -0.05360775877281864
#>     Attrib V53    -0.27206587661704784
#>     Attrib V54    0.4709127578845393
#>     Attrib V55    -0.1359541545565888
#>     Attrib V56    0.10306308794335232
#>     Attrib V57    -0.03931351348697926
#>     Attrib V58    0.2617266893128608
#>     Attrib V59    0.40843481818989147
#>     Attrib V6    -0.061004446682133506
#>     Attrib V60    0.4598551375963998
#>     Attrib V7    -0.36067112973144333
#>     Attrib V8    -0.1217909359597728
#>     Attrib V9    0.2458102344169899
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.22486894100928873
#>     Attrib V1    0.5331332681041507
#>     Attrib V10    -0.16548345842275836
#>     Attrib V11    0.030749788907432477
#>     Attrib V12    0.18292208067731344
#>     Attrib V13    0.3245803745590559
#>     Attrib V14    0.24317335511915789
#>     Attrib V15    0.2165880187476075
#>     Attrib V16    -0.01501545105090402
#>     Attrib V17    0.08013350686294297
#>     Attrib V18    0.4291157987753729
#>     Attrib V19    0.4497792821225824
#>     Attrib V2    0.13986037441331395
#>     Attrib V20    0.37642698225813925
#>     Attrib V21    0.5973559660654164
#>     Attrib V22    0.40184716944702253
#>     Attrib V23    -0.11890269765225352
#>     Attrib V24    -0.3541226859271704
#>     Attrib V25    -0.7442932611969045
#>     Attrib V26    -0.8610038425769866
#>     Attrib V27    -0.6960556936416744
#>     Attrib V28    -0.32784573473525547
#>     Attrib V29    -0.17708169426074238
#>     Attrib V3    0.05477056217480438
#>     Attrib V30    0.007660630552316405
#>     Attrib V31    -0.8958677631259375
#>     Attrib V32    -0.7146790216886681
#>     Attrib V33    -0.13389413042647105
#>     Attrib V34    -0.11594638069213792
#>     Attrib V35    -0.2542993049114358
#>     Attrib V36    -0.24818517094300613
#>     Attrib V37    -0.31341128557804404
#>     Attrib V38    0.14655317538517956
#>     Attrib V39    0.49323441669225915
#>     Attrib V4    0.20753005833468097
#>     Attrib V40    -0.08800180530749287
#>     Attrib V41    0.11266239196218802
#>     Attrib V42    0.15486273385748278
#>     Attrib V43    0.3908690465639152
#>     Attrib V44    0.10800043502855072
#>     Attrib V45    0.23410415544541044
#>     Attrib V46    0.06794678116308121
#>     Attrib V47    -0.08403472228752537
#>     Attrib V48    -0.016214199165907578
#>     Attrib V49    -0.09261566496624361
#>     Attrib V5    0.1831175138039497
#>     Attrib V50    -0.21290941336416472
#>     Attrib V51    0.13856068039694786
#>     Attrib V52    -0.049550290183292295
#>     Attrib V53    -0.14142303797729616
#>     Attrib V54    0.6217399091730329
#>     Attrib V55    0.12826022113149202
#>     Attrib V56    0.2726565848534499
#>     Attrib V57    0.26181856466179554
#>     Attrib V58    0.2755790336243062
#>     Attrib V59    0.6298373870054532
#>     Attrib V6    -0.00731955360340517
#>     Attrib V60    0.6039872360103684
#>     Attrib V7    -0.15182007293208058
#>     Attrib V8    -0.032904892638427684
#>     Attrib V9    0.07664389499501831
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.20694322470389506
#>     Attrib V1    0.053559435251212845
#>     Attrib V10    0.010936526727517763
#>     Attrib V11    0.0195544090765171
#>     Attrib V12    -0.010458319584286698
#>     Attrib V13    0.09437871728011023
#>     Attrib V14    0.02198660435152452
#>     Attrib V15    0.013783352154698546
#>     Attrib V16    -0.014665077180281294
#>     Attrib V17    0.05219309750028719
#>     Attrib V18    0.039327735552887905
#>     Attrib V19    -0.0024218512205275225
#>     Attrib V2    0.06697539474902497
#>     Attrib V20    -0.007051046788521445
#>     Attrib V21    -0.01442149494940178
#>     Attrib V22    -0.06874078539565516
#>     Attrib V23    -0.03793594602390958
#>     Attrib V24    -0.05743923414845862
#>     Attrib V25    -0.035891915950540906
#>     Attrib V26    -0.1262583043467726
#>     Attrib V27    -0.05264015766196594
#>     Attrib V28    -0.06505159471409393
#>     Attrib V29    -0.024307022308387608
#>     Attrib V3    0.13861533194960926
#>     Attrib V30    0.016772370298783975
#>     Attrib V31    -0.08675748244002936
#>     Attrib V32    -0.0022327121551423924
#>     Attrib V33    0.002402024173969875
#>     Attrib V34    0.06780432494103492
#>     Attrib V35    0.03819825937290567
#>     Attrib V36    0.03883855247034455
#>     Attrib V37    0.05042120552839759
#>     Attrib V38    0.039128450416196774
#>     Attrib V39    0.12496360068815959
#>     Attrib V4    0.12657193041851234
#>     Attrib V40    0.05295721824018269
#>     Attrib V41    0.02704445193502577
#>     Attrib V42    0.05218254469469686
#>     Attrib V43    0.009294236102054045
#>     Attrib V44    0.03303315147198547
#>     Attrib V45    0.028160540945908138
#>     Attrib V46    0.05414381772122811
#>     Attrib V47    0.06335269375138429
#>     Attrib V48    0.03362050067946269
#>     Attrib V49    0.06087797977263305
#>     Attrib V5    0.12020485900485656
#>     Attrib V50    0.008364253612992352
#>     Attrib V51    0.049377387268997555
#>     Attrib V52    0.019401664645620625
#>     Attrib V53    0.04982199627629815
#>     Attrib V54    0.026757890192941246
#>     Attrib V55    0.0733200778328914
#>     Attrib V56    0.0958160744337768
#>     Attrib V57    0.10388612269645156
#>     Attrib V58    0.08307471490536827
#>     Attrib V59    0.1389895721933939
#>     Attrib V6    0.06700957418772102
#>     Attrib V60    0.16975921579583567
#>     Attrib V7    0.04137583434164258
#>     Attrib V8    -0.007994306112333066
#>     Attrib V9    0.03728096300973712
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.27268007120398285
#>     Attrib V1    0.36052868097475765
#>     Attrib V10    0.4068448659889614
#>     Attrib V11    0.4929128130240676
#>     Attrib V12    0.4612463616348664
#>     Attrib V13    0.1948021729692656
#>     Attrib V14    -0.22083299083923913
#>     Attrib V15    -0.22640568516618947
#>     Attrib V16    -0.43367782829714185
#>     Attrib V17    -0.37630872172457014
#>     Attrib V18    -0.24648414835581392
#>     Attrib V19    -0.2767963868345291
#>     Attrib V2    0.020711500020655006
#>     Attrib V20    -0.40164417750184417
#>     Attrib V21    -0.05701445939818356
#>     Attrib V22    -0.11641863615647667
#>     Attrib V23    -0.46832035486879575
#>     Attrib V24    -0.3337107348762519
#>     Attrib V25    -0.24060275167726203
#>     Attrib V26    0.011175389219692916
#>     Attrib V27    0.15473766647817136
#>     Attrib V28    0.40019847893803917
#>     Attrib V29    0.23248511325339535
#>     Attrib V3    -0.16214338027606845
#>     Attrib V30    0.48904490024901687
#>     Attrib V31    -0.41275165937012764
#>     Attrib V32    -0.25496203341806034
#>     Attrib V33    -0.09437524860078934
#>     Attrib V34    -0.04463556773617581
#>     Attrib V35    3.0352341000444927E-4
#>     Attrib V36    0.08075665857403391
#>     Attrib V37    0.007123111140790158
#>     Attrib V38    0.11137493182288369
#>     Attrib V39    0.503919338461004
#>     Attrib V4    0.12048191558978141
#>     Attrib V40    -0.10573621960558255
#>     Attrib V41    0.13806517282233857
#>     Attrib V42    -0.19036329469301516
#>     Attrib V43    0.2737818188557647
#>     Attrib V44    0.5310678576136317
#>     Attrib V45    0.47543243961064297
#>     Attrib V46    0.2671111812746554
#>     Attrib V47    0.21369940745427038
#>     Attrib V48    0.5735219047696793
#>     Attrib V49    0.49228447390178015
#>     Attrib V5    0.10497752031917859
#>     Attrib V50    -0.17183118976711964
#>     Attrib V51    0.20971033683948428
#>     Attrib V52    0.20405588373502076
#>     Attrib V53    -0.015322150748139848
#>     Attrib V54    0.053244354429910865
#>     Attrib V55    -0.33685144986092536
#>     Attrib V56    -0.04777285267441944
#>     Attrib V57    0.03800381640778263
#>     Attrib V58    0.14257050145591701
#>     Attrib V59    0.43311365257878076
#>     Attrib V6    0.01596067518659466
#>     Attrib V60    0.3611122152003795
#>     Attrib V7    -0.1567428446229146
#>     Attrib V8    -0.12399925121854447
#>     Attrib V9    0.4706803703519756
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.06194401097203691
#>     Attrib V1    0.002518199817840435
#>     Attrib V10    -0.2828657139713192
#>     Attrib V11    -0.5734481458810862
#>     Attrib V12    -0.7024206160666289
#>     Attrib V13    -0.5551564071299138
#>     Attrib V14    0.49882868888227777
#>     Attrib V15    0.46105282481256715
#>     Attrib V16    0.38663827650910776
#>     Attrib V17    0.22625146475000166
#>     Attrib V18    -0.3250516042006519
#>     Attrib V19    -0.3110502609983271
#>     Attrib V2    0.062966646624014
#>     Attrib V20    0.41861208877544975
#>     Attrib V21    -0.060645981553773785
#>     Attrib V22    -0.6361302981241083
#>     Attrib V23    -0.571045510648887
#>     Attrib V24    -0.429155105411631
#>     Attrib V25    -0.1832153850260994
#>     Attrib V26    0.22259053860758027
#>     Attrib V27    -0.08129695329106239
#>     Attrib V28    -0.6047800230277928
#>     Attrib V29    0.037455410379579175
#>     Attrib V3    0.28305436554752245
#>     Attrib V30    -0.31064019112964886
#>     Attrib V31    0.8325435837933338
#>     Attrib V32    0.16171003440677081
#>     Attrib V33    -0.10601199112475944
#>     Attrib V34    -0.007680688498400008
#>     Attrib V35    0.4572848151055342
#>     Attrib V36    0.5491841763465669
#>     Attrib V37    0.7442882159927627
#>     Attrib V38    0.2226023645995246
#>     Attrib V39    -0.8316947462519317
#>     Attrib V4    -0.13551854127047602
#>     Attrib V40    -0.0060776022506857435
#>     Attrib V41    -0.5640680411483591
#>     Attrib V42    -0.08268038583126469
#>     Attrib V43    -0.40827380161865195
#>     Attrib V44    -0.38770182925208746
#>     Attrib V45    -0.20247056625056944
#>     Attrib V46    -0.02169166763168316
#>     Attrib V47    -0.1573090014728597
#>     Attrib V48    -0.3658252150039731
#>     Attrib V49    -0.2328506544023751
#>     Attrib V5    -0.16188451482050906
#>     Attrib V50    0.8089894607060377
#>     Attrib V51    -0.45610888847263176
#>     Attrib V52    -0.44684225220778184
#>     Attrib V53    0.09799090630359897
#>     Attrib V54    -0.244639133412687
#>     Attrib V55    0.5122725884595981
#>     Attrib V56    0.10862680638115137
#>     Attrib V57    0.4260368092334906
#>     Attrib V58    -0.20650216963369628
#>     Attrib V59    -0.3470707597632685
#>     Attrib V6    -0.02163826988069398
#>     Attrib V60    -0.45889306219614007
#>     Attrib V7    0.5286198726132745
#>     Attrib V8    0.3477340510285506
#>     Attrib V9    -0.6133035095696906
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.08899585029616305
#>     Attrib V1    0.19758231956202557
#>     Attrib V10    0.06256070928033718
#>     Attrib V11    0.0626426173040272
#>     Attrib V12    0.1171121978556184
#>     Attrib V13    0.173571882650955
#>     Attrib V14    0.019660198818276027
#>     Attrib V15    0.04688198478497941
#>     Attrib V16    0.04433238504984932
#>     Attrib V17    0.06774426048257905
#>     Attrib V18    0.14769277352761845
#>     Attrib V19    0.11440470059528582
#>     Attrib V2    0.03830521952196632
#>     Attrib V20    0.021437569713906594
#>     Attrib V21    0.06925005565072079
#>     Attrib V22    -0.03768612501903748
#>     Attrib V23    -0.2447284850700724
#>     Attrib V24    -0.14612475925880347
#>     Attrib V25    -0.20296784176721794
#>     Attrib V26    -0.3055663608454073
#>     Attrib V27    -0.30172294682990963
#>     Attrib V28    -0.13727070561577345
#>     Attrib V29    -0.1645363705378755
#>     Attrib V3    0.08550871857052367
#>     Attrib V30    -0.08157125320017031
#>     Attrib V31    -0.309503805300444
#>     Attrib V32    -0.1418472723647404
#>     Attrib V33    -0.029373573749132027
#>     Attrib V34    0.07502136656508065
#>     Attrib V35    0.03252460029124015
#>     Attrib V36    -0.009501303838604584
#>     Attrib V37    -0.028534975811986715
#>     Attrib V38    0.09628878078919417
#>     Attrib V39    0.21913677807779328
#>     Attrib V4    0.13393307115469072
#>     Attrib V40    -0.05844311511609039
#>     Attrib V41    0.030853668989023447
#>     Attrib V42    0.05736678427711235
#>     Attrib V43    0.09546531506033604
#>     Attrib V44    0.027942268058182663
#>     Attrib V45    0.14257508475739317
#>     Attrib V46    0.07074793995352446
#>     Attrib V47    0.02282759559200092
#>     Attrib V48    0.08298921387202456
#>     Attrib V49    0.024776404587354577
#>     Attrib V5    0.10637895762794933
#>     Attrib V50    0.030749842935972847
#>     Attrib V51    0.16498447607519506
#>     Attrib V52    0.05215470179066537
#>     Attrib V53    0.07588505544143073
#>     Attrib V54    0.20168135567066064
#>     Attrib V55    0.14613152944578123
#>     Attrib V56    0.18285994859245192
#>     Attrib V57    0.17159125021630342
#>     Attrib V58    0.2081774878065336
#>     Attrib V59    0.230752584847863
#>     Attrib V6    0.03435312263741082
#>     Attrib V60    0.3053479104421161
#>     Attrib V7    -0.05189157614453162
#>     Attrib V8    -0.06895867362901957
#>     Attrib V9    0.10107529976951592
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.11656426777631884
#>     Attrib V1    0.10659700145753964
#>     Attrib V10    0.09267033796306055
#>     Attrib V11    0.06852630830288205
#>     Attrib V12    -0.01164119888124793
#>     Attrib V13    0.013834918517300314
#>     Attrib V14    -0.011816062093124073
#>     Attrib V15    0.08728684536059234
#>     Attrib V16    0.011693260254161016
#>     Attrib V17    0.022130617935751617
#>     Attrib V18    0.023674930670780216
#>     Attrib V19    0.028192133810087273
#>     Attrib V2    0.1441705590685656
#>     Attrib V20    -0.059302304625221756
#>     Attrib V21    -0.039228755801033736
#>     Attrib V22    0.004165485802915539
#>     Attrib V23    -0.12244659431645509
#>     Attrib V24    -0.07071504410717981
#>     Attrib V25    -0.11426061281693609
#>     Attrib V26    -0.12545762933147286
#>     Attrib V27    -0.09821693387802627
#>     Attrib V28    -0.04878408491613096
#>     Attrib V29    -0.07776852930180828
#>     Attrib V3    0.0769166179388513
#>     Attrib V30    0.0409735055666471
#>     Attrib V31    -0.020677040203568357
#>     Attrib V32    -0.05677750090945105
#>     Attrib V33    0.044720867102574564
#>     Attrib V34    0.008397000501158818
#>     Attrib V35    0.0976427440653357
#>     Attrib V36    0.03478842843083176
#>     Attrib V37    0.009635238336879227
#>     Attrib V38    0.10094272366791372
#>     Attrib V39    0.13572732929808987
#>     Attrib V4    0.12204577192242153
#>     Attrib V40    0.001781092167421406
#>     Attrib V41    0.0530285008865175
#>     Attrib V42    0.03055787671885564
#>     Attrib V43    0.10952149592814535
#>     Attrib V44    0.0920626669990492
#>     Attrib V45    0.12773873570594524
#>     Attrib V46    0.020918113903239607
#>     Attrib V47    2.1501149520256985E-5
#>     Attrib V48    0.1115521934351984
#>     Attrib V49    0.01776336006241735
#>     Attrib V5    0.1045363564427531
#>     Attrib V50    0.040230693804914536
#>     Attrib V51    0.08572417925370837
#>     Attrib V52    0.021054441030983848
#>     Attrib V53    0.031912900120179374
#>     Attrib V54    0.0473560614218574
#>     Attrib V55    0.11668967539687317
#>     Attrib V56    0.12526486948564391
#>     Attrib V57    0.15072742241269316
#>     Attrib V58    0.068134392728329
#>     Attrib V59    0.0873782082809336
#>     Attrib V6    0.05332217530258995
#>     Attrib V60    0.160559187192374
#>     Attrib V7    -0.04743083187279232
#>     Attrib V8    0.04997267209652281
#>     Attrib V9    0.06646840457214037
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.22989420879934636
#>     Attrib V1    -0.035727607199315586
#>     Attrib V10    -0.20421444932658936
#>     Attrib V11    -0.32929799139095833
#>     Attrib V12    -0.4625960324752913
#>     Attrib V13    -0.2750241788271487
#>     Attrib V14    0.23961375477025507
#>     Attrib V15    0.14460390655910793
#>     Attrib V16    0.13824611516260396
#>     Attrib V17    0.06469769165773831
#>     Attrib V18    -0.08938665624083938
#>     Attrib V19    -0.24700474065612338
#>     Attrib V2    0.07621490451771583
#>     Attrib V20    0.09177868564916353
#>     Attrib V21    -0.1042271852250357
#>     Attrib V22    -0.30568991341315477
#>     Attrib V23    -0.12419948110785899
#>     Attrib V24    -0.14243212223858454
#>     Attrib V25    0.019464944363988223
#>     Attrib V26    0.1529301973180481
#>     Attrib V27    0.06470755046570556
#>     Attrib V28    -0.2104159753768184
#>     Attrib V29    0.060829138739847737
#>     Attrib V3    0.25610208771528986
#>     Attrib V30    -0.15772704657181524
#>     Attrib V31    0.4191415920252933
#>     Attrib V32    0.09062117281329261
#>     Attrib V33    -0.04046169740784802
#>     Attrib V34    -0.04097855777619853
#>     Attrib V35    0.16437685014722422
#>     Attrib V36    0.30157168131733314
#>     Attrib V37    0.2779699128287067
#>     Attrib V38    -0.0029346270753935746
#>     Attrib V39    -0.47433808941171407
#>     Attrib V4    0.0031823962511904795
#>     Attrib V40    -0.0417501475455855
#>     Attrib V41    -0.24203459005754752
#>     Attrib V42    0.11529671357332068
#>     Attrib V43    -0.08577389076039574
#>     Attrib V44    -0.10590932271160339
#>     Attrib V45    -0.1901337210011689
#>     Attrib V46    -0.08875300962921233
#>     Attrib V47    -0.05658772084838763
#>     Attrib V48    -0.24416662312056758
#>     Attrib V49    -0.1357790475119209
#>     Attrib V5    -0.0012135337057825957
#>     Attrib V50    0.31940784947048895
#>     Attrib V51    -0.14355355101255377
#>     Attrib V52    -0.15324946770591946
#>     Attrib V53    0.07382098743267271
#>     Attrib V54    -0.12261441866190394
#>     Attrib V55    0.2994223585408281
#>     Attrib V56    0.11589484959752643
#>     Attrib V57    0.21310561517813514
#>     Attrib V58    -0.02101222708582341
#>     Attrib V59    -0.06898032112832059
#>     Attrib V6    -0.019581738229296902
#>     Attrib V60    -0.11062353057518343
#>     Attrib V7    0.25239118307298664
#>     Attrib V8    0.1846864617908303
#>     Attrib V9    -0.3447146383819629
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.17421748041088458
#>     Attrib V1    0.5289686193338862
#>     Attrib V10    -0.11104080857212369
#>     Attrib V11    0.0014154459732768348
#>     Attrib V12    0.28513132625838616
#>     Attrib V13    0.33419642778899267
#>     Attrib V14    0.12966662024433634
#>     Attrib V15    0.1969261405936764
#>     Attrib V16    -0.10215182416342673
#>     Attrib V17    0.09445541586603223
#>     Attrib V18    0.48224328507446895
#>     Attrib V19    0.4610166938421989
#>     Attrib V2    0.09764276280807188
#>     Attrib V20    0.3338811842492368
#>     Attrib V21    0.5784697574262156
#>     Attrib V22    0.4827012210088372
#>     Attrib V23    -0.031244536570828603
#>     Attrib V24    -0.23469874014949743
#>     Attrib V25    -0.6206733356442256
#>     Attrib V26    -0.8320730181331149
#>     Attrib V27    -0.7144307483749012
#>     Attrib V28    -0.25142599423838086
#>     Attrib V29    -0.2094980620045201
#>     Attrib V3    0.0334636963374212
#>     Attrib V30    0.04054508449633629
#>     Attrib V31    -0.935981508601057
#>     Attrib V32    -0.7211407931319145
#>     Attrib V33    -0.10775232157867981
#>     Attrib V34    -0.1355095942966303
#>     Attrib V35    -0.24097382058268396
#>     Attrib V36    -0.30544057793941864
#>     Attrib V37    -0.42541037072785204
#>     Attrib V38    0.07470976967682233
#>     Attrib V39    0.5312703118830322
#>     Attrib V4    0.22054172479228656
#>     Attrib V40    -0.1263556747220205
#>     Attrib V41    0.16781950047398855
#>     Attrib V42    0.2465797745744648
#>     Attrib V43    0.3753546651338278
#>     Attrib V44    0.16884559785370107
#>     Attrib V45    0.3188839139420374
#>     Attrib V46    0.08425741910254227
#>     Attrib V47    -0.06539287243884752
#>     Attrib V48    -0.01820591253998546
#>     Attrib V49    0.02074548961555734
#>     Attrib V5    0.15954587561167416
#>     Attrib V50    -0.26762152007880396
#>     Attrib V51    0.16845148774039456
#>     Attrib V52    0.008846759336515317
#>     Attrib V53    -0.1496792418545793
#>     Attrib V54    0.6798071219273216
#>     Attrib V55    0.10240584703864561
#>     Attrib V56    0.1867166672776613
#>     Attrib V57    0.11637694432379424
#>     Attrib V58    0.31459444620820887
#>     Attrib V59    0.5619027104821162
#>     Attrib V6    0.007312462267967395
#>     Attrib V60    0.6050124948285882
#>     Attrib V7    -0.1786252849937457
#>     Attrib V8    -0.09230541033513977
#>     Attrib V9    0.1301613596635122
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.22305594004905802
#>     Attrib V1    0.641619626892052
#>     Attrib V10    -0.138545895521215
#>     Attrib V11    -0.04018869444896674
#>     Attrib V12    0.25343833060075216
#>     Attrib V13    0.3457079937691435
#>     Attrib V14    0.26361895935268076
#>     Attrib V15    0.25116011119201864
#>     Attrib V16    -0.0780415195379522
#>     Attrib V17    0.08273136383465625
#>     Attrib V18    0.5139255744759446
#>     Attrib V19    0.48171898307116157
#>     Attrib V2    0.08755674504312681
#>     Attrib V20    0.4336428364734305
#>     Attrib V21    0.727115138339292
#>     Attrib V22    0.4854712594901553
#>     Attrib V23    -0.08048216474200141
#>     Attrib V24    -0.34387888136195055
#>     Attrib V25    -0.8078912832540589
#>     Attrib V26    -0.8869121051558414
#>     Attrib V27    -0.688841132943033
#>     Attrib V28    -0.29405975414563357
#>     Attrib V29    -0.10934261740426404
#>     Attrib V3    0.03864617228210673
#>     Attrib V30    0.11955241222360916
#>     Attrib V31    -0.9531528483034449
#>     Attrib V32    -0.8413536129940082
#>     Attrib V33    -0.21375038769292218
#>     Attrib V34    -0.2183175788592347
#>     Attrib V35    -0.32815798500704607
#>     Attrib V36    -0.26329713217914724
#>     Attrib V37    -0.32630843204440824
#>     Attrib V38    0.16117973878404834
#>     Attrib V39    0.5777393687736634
#>     Attrib V4    0.1830156905960438
#>     Attrib V40    -0.12057510762976564
#>     Attrib V41    0.16798463423825002
#>     Attrib V42    0.19438053771863
#>     Attrib V43    0.4682576880389162
#>     Attrib V44    0.2641372726882254
#>     Attrib V45    0.2813552070246927
#>     Attrib V46    0.03122032783670108
#>     Attrib V47    -0.09860676625547901
#>     Attrib V48    -0.028041822547268884
#>     Attrib V49    -0.06988940673924257
#>     Attrib V5    0.20410849452343124
#>     Attrib V50    -0.23614441175395076
#>     Attrib V51    0.2097828493823813
#>     Attrib V52    -0.03498049589027439
#>     Attrib V53    -0.1931814349422585
#>     Attrib V54    0.6984457790601069
#>     Attrib V55    0.12396536237319757
#>     Attrib V56    0.23714122803816134
#>     Attrib V57    0.16809157788434834
#>     Attrib V58    0.2755064086800464
#>     Attrib V59    0.6578009977061111
#>     Attrib V6    0.04730882993520333
#>     Attrib V60    0.6717578076196771
#>     Attrib V7    -0.13357839050254827
#>     Attrib V8    -0.10421971976626214
#>     Attrib V9    0.09004311420471528
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.2482585056633761
#>     Attrib V1    -0.04467848071404749
#>     Attrib V10    -0.3402893938989536
#>     Attrib V11    -0.8614863330941925
#>     Attrib V12    -1.053752979762993
#>     Attrib V13    -0.9449827456153687
#>     Attrib V14    0.4818221753775989
#>     Attrib V15    0.3717591829908153
#>     Attrib V16    0.48128088220238907
#>     Attrib V17    0.34979665527680515
#>     Attrib V18    -0.35732021405734854
#>     Attrib V19    -0.728801987751837
#>     Attrib V2    -0.09009679679151154
#>     Attrib V20    0.23528994173691806
#>     Attrib V21    -0.018380270415087156
#>     Attrib V22    -0.9629798809839497
#>     Attrib V23    -1.009467960716408
#>     Attrib V24    -0.6684750255871448
#>     Attrib V25    -0.15384045600199273
#>     Attrib V26    0.27036657087879634
#>     Attrib V27    -0.11680931967422521
#>     Attrib V28    -0.7316557375983795
#>     Attrib V29    0.149370603317421
#>     Attrib V3    0.033031848918223305
#>     Attrib V30    -0.15119458041559233
#>     Attrib V31    1.1031832240821444
#>     Attrib V32    0.13282072824712715
#>     Attrib V33    -0.10436389358434854
#>     Attrib V34    -0.1467489441935748
#>     Attrib V35    0.6271678569985546
#>     Attrib V36    1.0052934966209381
#>     Attrib V37    1.2568522149410501
#>     Attrib V38    0.3760079780395811
#>     Attrib V39    -0.9406289290560182
#>     Attrib V4    -0.22620210452731307
#>     Attrib V40    0.19583587447124043
#>     Attrib V41    -0.48083513603845784
#>     Attrib V42    -0.11149857598360789
#>     Attrib V43    -0.3360698894174232
#>     Attrib V44    -0.15500190246946852
#>     Attrib V45    -0.22343216108438277
#>     Attrib V46    -0.07743313932489879
#>     Attrib V47    -0.3230018532634467
#>     Attrib V48    -0.2830820518211777
#>     Attrib V49    -0.25209758327962395
#>     Attrib V5    -0.27284234200864027
#>     Attrib V50    0.9205189399103807
#>     Attrib V51    -0.6641037914497656
#>     Attrib V52    -0.6472740323951565
#>     Attrib V53    0.013146963550981333
#>     Attrib V54    -0.3471663876504107
#>     Attrib V55    0.4396513916543099
#>     Attrib V56    0.034363072833070024
#>     Attrib V57    0.7159318857850085
#>     Attrib V58    -0.4355755682957531
#>     Attrib V59    -0.30582767562406166
#>     Attrib V6    0.07911279419006295
#>     Attrib V60    -0.29919696328609324
#>     Attrib V7    0.9413571501555587
#>     Attrib V8    0.5974303556619366
#>     Attrib V9    -0.5871547325841194
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.04415592969411587
#>     Attrib V1    0.38468962373316096
#>     Attrib V10    0.014254972338582396
#>     Attrib V11    0.07715919540593959
#>     Attrib V12    0.21542659414464338
#>     Attrib V13    0.21154389476662627
#>     Attrib V14    0.16558353928427233
#>     Attrib V15    0.1187730205861658
#>     Attrib V16    0.0530050164076321
#>     Attrib V17    0.06474434803566911
#>     Attrib V18    0.19762433269915478
#>     Attrib V19    0.16468864718318438
#>     Attrib V2    0.10301015605304943
#>     Attrib V20    0.19329557580855702
#>     Attrib V21    0.2429488561886343
#>     Attrib V22    0.011787813849474383
#>     Attrib V23    -0.321350602096651
#>     Attrib V24    -0.2346333503457601
#>     Attrib V25    -0.428347278295594
#>     Attrib V26    -0.5239344374076657
#>     Attrib V27    -0.5219856611066959
#>     Attrib V28    -0.37306784633680257
#>     Attrib V29    -0.2620764161401865
#>     Attrib V3    0.046516351607285705
#>     Attrib V30    -0.13241146678639568
#>     Attrib V31    -0.41725467976751884
#>     Attrib V32    -0.3236231984184337
#>     Attrib V33    -0.11537528644714712
#>     Attrib V34    -0.0034506072229002972
#>     Attrib V35    0.0068698959119018665
#>     Attrib V36    -0.02848039322509451
#>     Attrib V37    -0.09254806337164592
#>     Attrib V38    0.09821178453875919
#>     Attrib V39    0.2720063919839659
#>     Attrib V4    0.1342722836049631
#>     Attrib V40    -0.0667961093824958
#>     Attrib V41    -0.06309987845794646
#>     Attrib V42    -0.02294142184155783
#>     Attrib V43    0.19773369078152478
#>     Attrib V44    0.03980210989096627
#>     Attrib V45    0.07964988847104641
#>     Attrib V46    0.045697838648471226
#>     Attrib V47    -0.06577644557044804
#>     Attrib V48    0.09893760535899648
#>     Attrib V49    0.02745630881918452
#>     Attrib V5    0.13637701255154822
#>     Attrib V50    -0.04798996145917898
#>     Attrib V51    0.0879928164868057
#>     Attrib V52    -0.03633631504461261
#>     Attrib V53    -0.05482946578306103
#>     Attrib V54    0.39951861703748354
#>     Attrib V55    0.2207727162375758
#>     Attrib V56    0.27492684923864924
#>     Attrib V57    0.22834798122439787
#>     Attrib V58    0.26016028785785655
#>     Attrib V59    0.41537849117979014
#>     Attrib V6    0.006319834004761927
#>     Attrib V60    0.44179357003995673
#>     Attrib V7    -0.07040169140958462
#>     Attrib V8    -0.13338278406233048
#>     Attrib V9    0.04937686817334542
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.28273787924956206
#>     Attrib V1    0.7209146183976696
#>     Attrib V10    -0.22420149092910602
#>     Attrib V11    -0.017616115110123978
#>     Attrib V12    0.3592168477044834
#>     Attrib V13    0.409922702518915
#>     Attrib V14    0.3325245291935717
#>     Attrib V15    0.2770576130477856
#>     Attrib V16    -0.12569304180974752
#>     Attrib V17    0.08213489703011712
#>     Attrib V18    0.4473440863143895
#>     Attrib V19    0.3751565703521324
#>     Attrib V2    0.12631300546778704
#>     Attrib V20    0.39867066987728134
#>     Attrib V21    0.6439591778062188
#>     Attrib V22    0.3792413807620229
#>     Attrib V23    -0.18648559689522817
#>     Attrib V24    -0.39755132332520055
#>     Attrib V25    -0.7895946675003958
#>     Attrib V26    -0.8713189926773942
#>     Attrib V27    -0.8769343824533369
#>     Attrib V28    -0.5486393458302871
#>     Attrib V29    -0.3936735047491045
#>     Attrib V3    0.13932457107884164
#>     Attrib V30    -0.11418770449019615
#>     Attrib V31    -0.9484511524538591
#>     Attrib V32    -0.801771202769704
#>     Attrib V33    -0.1821882650890705
#>     Attrib V34    -0.13597401746902718
#>     Attrib V35    -0.2109302062804869
#>     Attrib V36    -0.20733961628831493
#>     Attrib V37    -0.17443911407711507
#>     Attrib V38    0.20607134220823806
#>     Attrib V39    0.5994636937342934
#>     Attrib V4    0.19998496523274237
#>     Attrib V40    -0.10255505108782098
#>     Attrib V41    0.12253836608214697
#>     Attrib V42    0.1877713517945013
#>     Attrib V43    0.45676530338297294
#>     Attrib V44    0.10084023436851053
#>     Attrib V45    0.19404583161587738
#>     Attrib V46    -0.029932502652328934
#>     Attrib V47    -0.0965905742421079
#>     Attrib V48    -0.07224725645566817
#>     Attrib V49    -0.06682832065998223
#>     Attrib V5    0.15460711919085302
#>     Attrib V50    -0.16542597668448958
#>     Attrib V51    0.09339480080664915
#>     Attrib V52    -0.06036138398471462
#>     Attrib V53    -0.13031916431500457
#>     Attrib V54    0.811178226191354
#>     Attrib V55    0.23099212495486157
#>     Attrib V56    0.3695835360590662
#>     Attrib V57    0.30318052564316983
#>     Attrib V58    0.2446475796557313
#>     Attrib V59    0.7443425415361911
#>     Attrib V6    0.04540772262514955
#>     Attrib V60    0.6737753607664704
#>     Attrib V7    -0.14296894879994335
#>     Attrib V8    -0.11880629619580912
#>     Attrib V9    0.00978806028108239
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1629597563101114
#>     Attrib V1    -0.054423884655893824
#>     Attrib V10    -0.27202221213007394
#>     Attrib V11    -0.39494011457770256
#>     Attrib V12    -0.4985194591371356
#>     Attrib V13    -0.3518295630183097
#>     Attrib V14    0.301136779781244
#>     Attrib V15    0.26007214093760517
#>     Attrib V16    0.18294698016104627
#>     Attrib V17    0.19950595471806176
#>     Attrib V18    -0.1610844579173457
#>     Attrib V19    -0.24764557258861686
#>     Attrib V2    0.05382592406648719
#>     Attrib V20    0.12064954365438277
#>     Attrib V21    -0.13999563764151227
#>     Attrib V22    -0.3995391399331485
#>     Attrib V23    -0.16109680442389024
#>     Attrib V24    -0.20748834597156351
#>     Attrib V25    -0.008653481194980304
#>     Attrib V26    0.20697016806847537
#>     Attrib V27    0.02041794592611791
#>     Attrib V28    -0.26392439444500015
#>     Attrib V29    0.07199742862792657
#>     Attrib V3    0.21042997704685934
#>     Attrib V30    -0.14869012422842628
#>     Attrib V31    0.5340464745615545
#>     Attrib V32    0.16549712924635435
#>     Attrib V33    -0.08237152353523335
#>     Attrib V34    -0.08657698312297675
#>     Attrib V35    0.21289585623573415
#>     Attrib V36    0.32957723687557905
#>     Attrib V37    0.35027179997982966
#>     Attrib V38    0.029563406820530623
#>     Attrib V39    -0.6310118917804607
#>     Attrib V4    0.04876917871889376
#>     Attrib V40    0.005238972955465476
#>     Attrib V41    -0.23795090319488432
#>     Attrib V42    0.08490056181311667
#>     Attrib V43    -0.07950114327660729
#>     Attrib V44    -0.18918565246308167
#>     Attrib V45    -0.21910980487760284
#>     Attrib V46    -0.06883449415075579
#>     Attrib V47    -0.07159202038618709
#>     Attrib V48    -0.2814779720563091
#>     Attrib V49    -0.21281904178264033
#>     Attrib V5    -0.06540024013968218
#>     Attrib V50    0.4903512333298504
#>     Attrib V51    -0.22363916528283598
#>     Attrib V52    -0.13683704930633867
#>     Attrib V53    0.038993239158390286
#>     Attrib V54    -0.12861480396067757
#>     Attrib V55    0.3406098784036189
#>     Attrib V56    0.12734687178889528
#>     Attrib V57    0.3500083140040682
#>     Attrib V58    -0.052724257944890635
#>     Attrib V59    -0.13464456776895142
#>     Attrib V6    0.03854523917935965
#>     Attrib V60    -0.2310274823513992
#>     Attrib V7    0.26923883259678977
#>     Attrib V8    0.21426724679550088
#>     Attrib V9    -0.36767085615904027
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    -0.5051714841434293
#>     Attrib V1    -0.3416059682200028
#>     Attrib V10    1.2596415148088425
#>     Attrib V11    1.1376308269292237
#>     Attrib V12    0.7218922127194911
#>     Attrib V13    0.13343892207326113
#>     Attrib V14    -1.6009263736445332
#>     Attrib V15    -1.1843293777554849
#>     Attrib V16    -0.5052082072598523
#>     Attrib V17    -0.3163324399245281
#>     Attrib V18    -0.1120434175767945
#>     Attrib V19    -0.015110006310826441
#>     Attrib V2    -0.03413297922788296
#>     Attrib V20    -1.0544039206599796
#>     Attrib V21    0.15157246532496
#>     Attrib V22    1.2944935594645286
#>     Attrib V23    1.013526116298949
#>     Attrib V24    0.6444682114630143
#>     Attrib V25    0.6640686652904634
#>     Attrib V26    0.44808352097669873
#>     Attrib V27    0.7516919734706067
#>     Attrib V28    1.569036611173484
#>     Attrib V29    0.19304872008690374
#>     Attrib V3    -0.2720141797021631
#>     Attrib V30    0.5351759987797904
#>     Attrib V31    -1.1418267029694382
#>     Attrib V32    0.07780186065273152
#>     Attrib V33    -0.12343980693219524
#>     Attrib V34    -0.08595950728534082
#>     Attrib V35    -0.5793712157632509
#>     Attrib V36    -0.6992752056216099
#>     Attrib V37    -1.2723967959068117
#>     Attrib V38    -0.8572419186013703
#>     Attrib V39    1.050371011219886
#>     Attrib V4    0.629667154237881
#>     Attrib V40    0.047477899664677255
#>     Attrib V41    0.8304483086211771
#>     Attrib V42    -0.18073858203836768
#>     Attrib V43    0.2105288722731078
#>     Attrib V44    0.859731356465829
#>     Attrib V45    0.6180315182478481
#>     Attrib V46    0.6122665806580169
#>     Attrib V47    0.9386511846753541
#>     Attrib V48    1.0281458839667468
#>     Attrib V49    0.857744773375545
#>     Attrib V5    0.5178572187511029
#>     Attrib V50    -0.804705108974394
#>     Attrib V51    1.060856100974716
#>     Attrib V52    0.9096810156640898
#>     Attrib V53    0.32812896332709596
#>     Attrib V54    -0.9007566932024241
#>     Attrib V55    -1.3989286108220933
#>     Attrib V56    -0.463444625704796
#>     Attrib V57    -0.9757779883205382
#>     Attrib V58    0.2959316260003571
#>     Attrib V59    0.34338878591937827
#>     Attrib V6    0.22808507707816916
#>     Attrib V60    0.7038513555414925
#>     Attrib V7    -0.6456975798938395
#>     Attrib V8    -0.18041850516785593
#>     Attrib V9    1.6260495104858141
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.22337915228260022
#>     Attrib V1    -0.036725496655573876
#>     Attrib V10    -0.24995425626894394
#>     Attrib V11    -0.3965057312434602
#>     Attrib V12    -0.45185233923047674
#>     Attrib V13    -0.3127423701228853
#>     Attrib V14    0.3144921453875024
#>     Attrib V15    0.1707842216018437
#>     Attrib V16    0.1457149717410404
#>     Attrib V17    0.128388679121943
#>     Attrib V18    -0.19478772708540895
#>     Attrib V19    -0.19060970144627065
#>     Attrib V2    0.07822204586767317
#>     Attrib V20    0.09446243463531431
#>     Attrib V21    -0.1319413518007159
#>     Attrib V22    -0.34649780353781756
#>     Attrib V23    -0.15769405005725895
#>     Attrib V24    -0.15552351127731548
#>     Attrib V25    0.013033621134459142
#>     Attrib V26    0.136319241383414
#>     Attrib V27    0.08666919811624453
#>     Attrib V28    -0.20743508228040392
#>     Attrib V29    0.0774147228448069
#>     Attrib V3    0.1867636446291346
#>     Attrib V30    -0.1668582780797738
#>     Attrib V31    0.45767011128795826
#>     Attrib V32    0.08107537707508568
#>     Attrib V33    -0.02536427853901034
#>     Attrib V34    -0.1027671348945526
#>     Attrib V35    0.24950862139001428
#>     Attrib V36    0.3072632027727773
#>     Attrib V37    0.3667257929439914
#>     Attrib V38    -0.007914445606780004
#>     Attrib V39    -0.5642836507589507
#>     Attrib V4    0.05998836723797045
#>     Attrib V40    -0.0341728092764687
#>     Attrib V41    -0.23738488966108384
#>     Attrib V42    0.1444030421821283
#>     Attrib V43    -0.07733955234661664
#>     Attrib V44    -0.1493379539691506
#>     Attrib V45    -0.17263668352786576
#>     Attrib V46    -0.10389732957992034
#>     Attrib V47    -0.1277207867220663
#>     Attrib V48    -0.22567614013903842
#>     Attrib V49    -0.18484466678424996
#>     Attrib V5    -0.05402156420033747
#>     Attrib V50    0.4276196425758941
#>     Attrib V51    -0.247447108529244
#>     Attrib V52    -0.19007933394267293
#>     Attrib V53    0.06342642474907606
#>     Attrib V54    -0.10411177226901407
#>     Attrib V55    0.3033379096732282
#>     Attrib V56    0.12108982572064025
#>     Attrib V57    0.3171494363749713
#>     Attrib V58    -0.024514585163224432
#>     Attrib V59    -0.08037609489360026
#>     Attrib V6    0.04060845841327284
#>     Attrib V60    -0.10711080282132274
#>     Attrib V7    0.23163538553312735
#>     Attrib V8    0.19277030609762583
#>     Attrib V9    -0.40963257108251494
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.30527358486664063
#>     Attrib V1    0.36022694261300253
#>     Attrib V10    0.47939426363967663
#>     Attrib V11    0.551344953864677
#>     Attrib V12    0.5147435388716615
#>     Attrib V13    0.27037213958068196
#>     Attrib V14    -0.3264482097103741
#>     Attrib V15    -0.33986495257824717
#>     Attrib V16    -0.49785163157727574
#>     Attrib V17    -0.48754975770940084
#>     Attrib V18    -0.2072749310948883
#>     Attrib V19    -0.23106958783978146
#>     Attrib V2    0.030773180013159315
#>     Attrib V20    -0.5064197693040938
#>     Attrib V21    0.06543627968563694
#>     Attrib V22    0.165872512974076
#>     Attrib V23    -0.27221433555429525
#>     Attrib V24    -0.12755340724513148
#>     Attrib V25    -0.16989520603882702
#>     Attrib V26    0.12867997715023016
#>     Attrib V27    0.30517175341151986
#>     Attrib V28    0.632145456748485
#>     Attrib V29    0.42234871695624115
#>     Attrib V3    -0.17735960269427942
#>     Attrib V30    0.6113239825941694
#>     Attrib V31    -0.6217138831864395
#>     Attrib V32    -0.3582597228411909
#>     Attrib V33    -0.20780109293747856
#>     Attrib V34    -0.09831603576775225
#>     Attrib V35    -0.18851240485775667
#>     Attrib V36    0.0275036641494693
#>     Attrib V37    -0.0839900829881905
#>     Attrib V38    0.10946052396664266
#>     Attrib V39    0.7168581448772273
#>     Attrib V4    0.16020352329255322
#>     Attrib V40    -0.10412745317342094
#>     Attrib V41    0.2391460962626315
#>     Attrib V42    -0.2061366663271718
#>     Attrib V43    0.25986861851356613
#>     Attrib V44    0.5370855527349944
#>     Attrib V45    0.5838995100160154
#>     Attrib V46    0.2528484132003619
#>     Attrib V47    0.2691020993982447
#>     Attrib V48    0.6320199666620094
#>     Attrib V49    0.47008517655804094
#>     Attrib V5    0.14414970278783318
#>     Attrib V50    -0.27882913617642846
#>     Attrib V51    0.3328829542306542
#>     Attrib V52    0.3173690269882317
#>     Attrib V53    9.446348318008508E-4
#>     Attrib V54    -0.031947142641370524
#>     Attrib V55    -0.50099030598367
#>     Attrib V56    -0.2099274757358205
#>     Attrib V57    -0.08216835512894505
#>     Attrib V58    0.0905896171800774
#>     Attrib V59    0.45721972482297774
#>     Attrib V6    0.07136050634211549
#>     Attrib V60    0.35713058647325296
#>     Attrib V7    -0.2747337934651487
#>     Attrib V8    -0.12568507337448273
#>     Attrib V9    0.608279918739321
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.11230610641043592
#>     Attrib V1    0.2108727201000364
#>     Attrib V10    -0.5174939435803088
#>     Attrib V11    -0.7203287355753876
#>     Attrib V12    -0.9440710633854784
#>     Attrib V13    -0.5912282794418869
#>     Attrib V14    0.841280356301245
#>     Attrib V15    0.7447878524116086
#>     Attrib V16    0.5406639855184965
#>     Attrib V17    0.2533985229057519
#>     Attrib V18    -0.2571077368144315
#>     Attrib V19    -0.33098279407250936
#>     Attrib V2    0.010439627756550298
#>     Attrib V20    0.7743777797109439
#>     Attrib V21    0.1451110526405003
#>     Attrib V22    -0.8925905222791413
#>     Attrib V23    -0.907329401950541
#>     Attrib V24    -0.6069297256502578
#>     Attrib V25    -0.39606445439963084
#>     Attrib V26    -0.04022190779452266
#>     Attrib V27    -0.41038993649245753
#>     Attrib V28    -1.0816351363248369
#>     Attrib V29    -0.0962888075726564
#>     Attrib V3    0.27879346412603007
#>     Attrib V30    -0.4547163191293254
#>     Attrib V31    0.9146361242684364
#>     Attrib V32    0.21394239055803996
#>     Attrib V33    -0.08266163863175058
#>     Attrib V34    0.047155068059322604
#>     Attrib V35    0.7056726258114812
#>     Attrib V36    0.7336052938043204
#>     Attrib V37    0.7917551176751729
#>     Attrib V38    0.3645603939509782
#>     Attrib V39    -1.0180725647328217
#>     Attrib V4    -0.25918305104626316
#>     Attrib V40    -0.1567926974257342
#>     Attrib V41    -0.9088479181079079
#>     Attrib V42    -0.21302430238381825
#>     Attrib V43    -0.5623543678243089
#>     Attrib V44    -0.682788131733524
#>     Attrib V45    -0.32302447816360164
#>     Attrib V46    -0.15449913037838195
#>     Attrib V47    -0.38306493344870685
#>     Attrib V48    -0.5958406379342894
#>     Attrib V49    -0.4361884346308028
#>     Attrib V5    -0.42788169292843775
#>     Attrib V50    0.9602977079453808
#>     Attrib V51    -0.7129102936826508
#>     Attrib V52    -0.648615188225337
#>     Attrib V53    -0.10898165197698104
#>     Attrib V54    -0.029320682712847247
#>     Attrib V55    0.8843006487417044
#>     Attrib V56    0.2064751384899871
#>     Attrib V57    0.6280126753944002
#>     Attrib V58    -0.09480265972961344
#>     Attrib V59    -0.2947868292375339
#>     Attrib V6    -0.231949605128413
#>     Attrib V60    -0.5454135096057852
#>     Attrib V7    0.6657014484436978
#>     Attrib V8    0.36681806262555333
#>     Attrib V9    -0.9200242666910151
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.16382633621300055
#>     Attrib V1    0.44773733772520025
#>     Attrib V10    -0.06066647156648324
#>     Attrib V11    0.16704757856270408
#>     Attrib V12    0.2933816829348955
#>     Attrib V13    0.31771142440553435
#>     Attrib V14    0.11274217127301771
#>     Attrib V15    0.10626979378081101
#>     Attrib V16    -0.09258563498035302
#>     Attrib V17    0.08395971024166339
#>     Attrib V18    0.4510898591661008
#>     Attrib V19    0.37395690675270904
#>     Attrib V2    0.0356306902619271
#>     Attrib V20    0.3208104854243006
#>     Attrib V21    0.5421798714595987
#>     Attrib V22    0.4103853876076333
#>     Attrib V23    -0.09576078913794683
#>     Attrib V24    -0.16882952861123376
#>     Attrib V25    -0.4944711706593191
#>     Attrib V26    -0.7439547269861031
#>     Attrib V27    -0.633249446832244
#>     Attrib V28    -0.22740063358105841
#>     Attrib V29    -0.14765924316281065
#>     Attrib V3    0.054915430229620456
#>     Attrib V30    0.006109199340436934
#>     Attrib V31    -0.850975272750637
#>     Attrib V32    -0.5633489486685431
#>     Attrib V33    -0.11916301537754737
#>     Attrib V34    -0.10114565885755787
#>     Attrib V35    -0.18300260986394204
#>     Attrib V36    -0.23597901101544877
#>     Attrib V37    -0.31717548192478684
#>     Attrib V38    0.09569673780516229
#>     Attrib V39    0.510825858266785
#>     Attrib V4    0.13008979600975218
#>     Attrib V40    -0.17906086322809772
#>     Attrib V41    0.13733814771234362
#>     Attrib V42    0.0981494299163645
#>     Attrib V43    0.39818822056695397
#>     Attrib V44    0.19835636766661716
#>     Attrib V45    0.3553209656417649
#>     Attrib V46    0.06987207112709654
#>     Attrib V47    0.018357345664178883
#>     Attrib V48    0.03930065078027087
#>     Attrib V49    0.00805096088116408
#>     Attrib V5    0.10619896109020953
#>     Attrib V50    -0.20491850013375096
#>     Attrib V51    0.20942473390748043
#>     Attrib V52    0.014417943365982618
#>     Attrib V53    -0.1888363481995453
#>     Attrib V54    0.5352025929399934
#>     Attrib V55    0.12565714097534988
#>     Attrib V56    0.24097194860111792
#>     Attrib V57    0.13827994170080965
#>     Attrib V58    0.2589034962529146
#>     Attrib V59    0.5344586236997804
#>     Attrib V6    -0.007687117715899478
#>     Attrib V60    0.5258501645351706
#>     Attrib V7    -0.2398694881307034
#>     Attrib V8    -0.08344038920049433
#>     Attrib V9    0.1465084942500745
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1655043595268045
#>     Attrib V1    -0.004393792835579505
#>     Attrib V10    -0.08269370037865004
#>     Attrib V11    -0.18135445636220082
#>     Attrib V12    -0.2493351934332866
#>     Attrib V13    -0.12530649286206966
#>     Attrib V14    0.1402799577379055
#>     Attrib V15    0.1343346196392937
#>     Attrib V16    0.12191630465612949
#>     Attrib V17    0.16716831530334023
#>     Attrib V18    -0.04147298219665153
#>     Attrib V19    -0.1596683376444562
#>     Attrib V2    0.07154716000677212
#>     Attrib V20    -0.03060253663834413
#>     Attrib V21    -0.09242763800924414
#>     Attrib V22    -0.1779535243868033
#>     Attrib V23    -0.06584467849831695
#>     Attrib V24    -0.0989890987052329
#>     Attrib V25    0.06063476464632757
#>     Attrib V26    0.12935363583076304
#>     Attrib V27    0.0062070803112970144
#>     Attrib V28    -0.11484814031446906
#>     Attrib V29    0.019337501683518558
#>     Attrib V3    0.12054306962852579
#>     Attrib V30    -0.002619840019278531
#>     Attrib V31    0.34616454259701257
#>     Attrib V32    0.05333649730722725
#>     Attrib V33    -0.04286562575567805
#>     Attrib V34    -0.05144177138078549
#>     Attrib V35    0.1551582395007315
#>     Attrib V36    0.16772373198603355
#>     Attrib V37    0.2308923952028427
#>     Attrib V38    -0.04612131292284661
#>     Attrib V39    -0.2742479674144107
#>     Attrib V4    0.07166034646584771
#>     Attrib V40    0.010764030757900889
#>     Attrib V41    -0.1085708139715994
#>     Attrib V42    0.129913559123278
#>     Attrib V43    -0.0648932629766535
#>     Attrib V44    -0.12128889704944802
#>     Attrib V45    -0.07872413443387462
#>     Attrib V46    -0.0454370006588934
#>     Attrib V47    -0.06979609055866408
#>     Attrib V48    -0.11135151389906942
#>     Attrib V49    -0.12364136879353356
#>     Attrib V5    -0.028302871152288498
#>     Attrib V50    0.18444849863445617
#>     Attrib V51    -0.1297253667279696
#>     Attrib V52    -0.09127410597940698
#>     Attrib V53    0.033469425784540034
#>     Attrib V54    -0.07516392106689447
#>     Attrib V55    0.15269422141749367
#>     Attrib V56    0.10783628811581708
#>     Attrib V57    0.14455603468937395
#>     Attrib V58    0.02331942058204352
#>     Attrib V59    -0.015144048175466766
#>     Attrib V6    0.014543298480100894
#>     Attrib V60    -0.05267435127866009
#>     Attrib V7    0.08524695950750008
#>     Attrib V8    0.08962420774116735
#>     Attrib V9    -0.22167136720542394
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.10685219506607048
#>     Attrib V1    0.5222393682719612
#>     Attrib V10    -0.12286309412737904
#>     Attrib V11    0.03755635846623713
#>     Attrib V12    0.21643191718957883
#>     Attrib V13    0.3353673156124144
#>     Attrib V14    0.2583638818905343
#>     Attrib V15    0.24759483093550677
#>     Attrib V16    -0.008128402988385127
#>     Attrib V17    0.11307681207030697
#>     Attrib V18    0.3763217041788449
#>     Attrib V19    0.3049939322901035
#>     Attrib V2    0.17486722881134897
#>     Attrib V20    0.35924473414333985
#>     Attrib V21    0.4194907174103242
#>     Attrib V22    0.2269589215053942
#>     Attrib V23    -0.21009731760157077
#>     Attrib V24    -0.2671530131169911
#>     Attrib V25    -0.5947052038450107
#>     Attrib V26    -0.6929473555647774
#>     Attrib V27    -0.7397239847687372
#>     Attrib V28    -0.49149936308764364
#>     Attrib V29    -0.390441328174243
#>     Attrib V3    0.0518230509091471
#>     Attrib V30    -0.19067553837817514
#>     Attrib V31    -0.6924806374717549
#>     Attrib V32    -0.5677688778948342
#>     Attrib V33    -0.10012538636633457
#>     Attrib V34    -0.0218586578355019
#>     Attrib V35    -0.05955492141843463
#>     Attrib V36    -0.12710579111816545
#>     Attrib V37    -0.12414791403040319
#>     Attrib V38    0.2229302016709319
#>     Attrib V39    0.4064502105665148
#>     Attrib V4    0.16043831408009568
#>     Attrib V40    -0.09933251868476789
#>     Attrib V41    0.008899358861446906
#>     Attrib V42    0.08865658854355508
#>     Attrib V43    0.2999652698990478
#>     Attrib V44    0.09774839768899998
#>     Attrib V45    0.11886788404640485
#>     Attrib V46    -0.02233157337310428
#>     Attrib V47    -0.10591702501466414
#>     Attrib V48    -0.003195775423840361
#>     Attrib V49    -0.05027769181237639
#>     Attrib V5    0.11424825776520967
#>     Attrib V50    -0.10745844583336744
#>     Attrib V51    0.08055028663172709
#>     Attrib V52    -0.09541302517927278
#>     Attrib V53    -0.08508370032443581
#>     Attrib V54    0.6902657552056389
#>     Attrib V55    0.3225429129466424
#>     Attrib V56    0.28723107257527214
#>     Attrib V57    0.2927215233628414
#>     Attrib V58    0.20973995438095092
#>     Attrib V59    0.5590556239081474
#>     Attrib V6    -0.01898516698264767
#>     Attrib V60    0.5653349747818858
#>     Attrib V7    -0.12785088963039173
#>     Attrib V8    -0.11135116409219187
#>     Attrib V9    0.026179582443812296
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1722466446504748
#>     Attrib V1    -0.003508067755796964
#>     Attrib V10    -0.23258626077186437
#>     Attrib V11    -0.2640247898252383
#>     Attrib V12    -0.3858435445665847
#>     Attrib V13    -0.2866641471978532
#>     Attrib V14    0.24330657212834253
#>     Attrib V15    0.16510146797571368
#>     Attrib V16    0.1571803496996202
#>     Attrib V17    0.09981805100303337
#>     Attrib V18    -0.03083478864181243
#>     Attrib V19    -0.2387530506761079
#>     Attrib V2    0.03702386985522221
#>     Attrib V20    0.04113342339146266
#>     Attrib V21    -0.13159811011671216
#>     Attrib V22    -0.2756199253904522
#>     Attrib V23    -0.05301777361030839
#>     Attrib V24    -0.08557021711661864
#>     Attrib V25    -0.0075938897276582925
#>     Attrib V26    0.09074930830360807
#>     Attrib V27    6.484463048048214E-4
#>     Attrib V28    -0.17830855841214374
#>     Attrib V29    0.07672529119684675
#>     Attrib V3    0.20723463858672872
#>     Attrib V30    -0.017561208047951988
#>     Attrib V31    0.4208945248018718
#>     Attrib V32    0.11866987066578491
#>     Attrib V33    0.028380726921128425
#>     Attrib V34    -0.018330406424975527
#>     Attrib V35    0.19754567409171975
#>     Attrib V36    0.30721929293378314
#>     Attrib V37    0.2892536241345381
#>     Attrib V38    -0.032548149273379505
#>     Attrib V39    -0.4502452547156784
#>     Attrib V4    0.018047975236234814
#>     Attrib V40    -0.027864705361399098
#>     Attrib V41    -0.2070468261463229
#>     Attrib V42    0.1294811033945424
#>     Attrib V43    -0.10914932965600464
#>     Attrib V44    -0.09523911717019964
#>     Attrib V45    -0.10622328497269443
#>     Attrib V46    -0.07509262869722115
#>     Attrib V47    -0.09909384012935224
#>     Attrib V48    -0.25714258339547913
#>     Attrib V49    -0.11929809438857944
#>     Attrib V5    0.01077854670885324
#>     Attrib V50    0.27847010583657844
#>     Attrib V51    -0.15148847154270206
#>     Attrib V52    -0.08522403504704873
#>     Attrib V53    0.06359368295615613
#>     Attrib V54    -0.12300379007572763
#>     Attrib V55    0.2183447165676346
#>     Attrib V56    0.07857539181158997
#>     Attrib V57    0.22039770722688612
#>     Attrib V58    0.030925688170628036
#>     Attrib V59    -0.10447661980050729
#>     Attrib V6    0.06386251750549421
#>     Attrib V60    -0.14466971794753164
#>     Attrib V7    0.23890084083733173
#>     Attrib V8    0.21003168970048208
#>     Attrib V9    -0.2679773907313864
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
#>  0.2318841 
```
