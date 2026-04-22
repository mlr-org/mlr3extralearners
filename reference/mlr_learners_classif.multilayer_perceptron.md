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
#>     Threshold    -0.5351847249211046
#>     Node 2    1.99559635212339
#>     Node 3    1.723549238504111
#>     Node 4    1.0422966686138828
#>     Node 5    -3.4848930240785982
#>     Node 6    1.8919376397109955
#>     Node 7    3.3155935191354433
#>     Node 8    1.1413839435361013
#>     Node 9    1.9676185046006547
#>     Node 10    -3.452728016520766
#>     Node 11    1.579826036859004
#>     Node 12    1.6343972624303518
#>     Node 13    -0.41255430459439746
#>     Node 14    1.307089731190563
#>     Node 15    -1.4922646639216297
#>     Node 16    1.1412915632700495
#>     Node 17    0.7959259714405322
#>     Node 18    -0.531073779760149
#>     Node 19    1.532275442783862
#>     Node 20    1.7452655800838783
#>     Node 21    -1.6694413316555892
#>     Node 22    0.14248817496091853
#>     Node 23    1.7372842442951768
#>     Node 24    -0.8922578601239427
#>     Node 25    4.0556107786886155
#>     Node 26    -1.639032491237714
#>     Node 27    1.3587601603497919
#>     Node 28    -2.671204712988086
#>     Node 29    0.9979005556081988
#>     Node 30    -0.7888739296505458
#>     Node 31    1.7979365753779741
#>     Node 32    0.2872782498464182
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5859059016686068
#>     Node 2    -2.014441836638727
#>     Node 3    -1.7189568018604529
#>     Node 4    -1.0115247232336353
#>     Node 5    3.5187134747895863
#>     Node 6    -1.876431252137312
#>     Node 7    -3.337247702860588
#>     Node 8    -1.1671397702446151
#>     Node 9    -1.9586140998222619
#>     Node 10    3.4132939457855223
#>     Node 11    -1.549634854235202
#>     Node 12    -1.688845940052887
#>     Node 13    0.4543980625900668
#>     Node 14    -1.252454877655413
#>     Node 15    1.471732664193071
#>     Node 16    -1.1694354983397424
#>     Node 17    -0.774201405946198
#>     Node 18    0.5592493901875308
#>     Node 19    -1.5068143646162553
#>     Node 20    -1.73958911854675
#>     Node 21    1.7205653512452521
#>     Node 22    -0.206204186176404
#>     Node 23    -1.7905966214004836
#>     Node 24    0.8613328365844187
#>     Node 25    -4.0686463284834025
#>     Node 26    1.5612714754537478
#>     Node 27    -1.381750911215589
#>     Node 28    2.6422267337575023
#>     Node 29    -1.0383002813764273
#>     Node 30    0.8475994954333943
#>     Node 31    -1.7562421405311697
#>     Node 32    -0.31587240493680335
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.3143039145673508
#>     Attrib V1    0.19516758980066562
#>     Attrib V10    0.679987859066566
#>     Attrib V11    0.48543790501547174
#>     Attrib V12    -0.13073361922329302
#>     Attrib V13    0.1525600809720914
#>     Attrib V14    -0.2754433903623395
#>     Attrib V15    -0.42427275053950025
#>     Attrib V16    -0.18412105963627592
#>     Attrib V17    0.37032188089509605
#>     Attrib V18    0.6497483561414864
#>     Attrib V19    0.4591629065375574
#>     Attrib V2    -0.4797413287120848
#>     Attrib V20    0.8520043619033005
#>     Attrib V21    0.7764263765471547
#>     Attrib V22    0.8179707059463872
#>     Attrib V23    0.681568538239662
#>     Attrib V24    0.2509820744196917
#>     Attrib V25    0.2825340228784055
#>     Attrib V26    -0.2704536460372356
#>     Attrib V27    -0.23378817853919878
#>     Attrib V28    0.015177747591863083
#>     Attrib V29    -0.5978438823263795
#>     Attrib V3    -0.22214764851501737
#>     Attrib V30    0.10198500568878781
#>     Attrib V31    -1.5153308542108241
#>     Attrib V32    0.11403403555413207
#>     Attrib V33    0.8442572313594138
#>     Attrib V34    -0.13805264841749856
#>     Attrib V35    0.47955989129236704
#>     Attrib V36    -0.15795691904326636
#>     Attrib V37    -0.3272579841097286
#>     Attrib V38    0.48260847588852596
#>     Attrib V39    0.23647962135478265
#>     Attrib V4    0.3554664018211833
#>     Attrib V40    -0.5394082165174714
#>     Attrib V41    -0.1302809607737921
#>     Attrib V42    0.210716902924732
#>     Attrib V43    0.49282638521250566
#>     Attrib V44    0.4961067013251062
#>     Attrib V45    1.0649150824111842
#>     Attrib V46    -0.09582407771192622
#>     Attrib V47    -0.31349324007129814
#>     Attrib V48    0.1277959812176212
#>     Attrib V49    0.15614212981081818
#>     Attrib V5    -0.1798833043965523
#>     Attrib V50    -1.2064897063822129
#>     Attrib V51    0.018546757150499277
#>     Attrib V52    0.3600364929788397
#>     Attrib V53    0.7761500517728244
#>     Attrib V54    0.4261668411986296
#>     Attrib V55    -0.6233789704344234
#>     Attrib V56    0.2720551706628979
#>     Attrib V57    -0.5431613421358132
#>     Attrib V58    0.4479132787257672
#>     Attrib V59    0.07244562170288281
#>     Attrib V6    -0.13291661119432469
#>     Attrib V60    0.05676537298239617
#>     Attrib V7    -0.19119255614515154
#>     Attrib V8    0.27648271178455225
#>     Attrib V9    1.2793326102915148
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.2191614344411857
#>     Attrib V1    0.5403308952024447
#>     Attrib V10    -0.2507569535288298
#>     Attrib V11    -0.4619740621736932
#>     Attrib V12    -0.7382237862317758
#>     Attrib V13    -0.01474938168413813
#>     Attrib V14    0.29385562753572037
#>     Attrib V15    0.5536499035153253
#>     Attrib V16    0.3372329033523611
#>     Attrib V17    0.3038481542827617
#>     Attrib V18    0.1847146705379771
#>     Attrib V19    0.18622839363380722
#>     Attrib V2    0.17372310499372734
#>     Attrib V20    0.7723840740398851
#>     Attrib V21    0.671694968545277
#>     Attrib V22    0.4124891482460923
#>     Attrib V23    0.201323864044732
#>     Attrib V24    -0.14733977406553203
#>     Attrib V25    -0.4549959788393437
#>     Attrib V26    -0.9607224350858437
#>     Attrib V27    -0.5858651510143781
#>     Attrib V28    -0.1506905435732699
#>     Attrib V29    -0.14002177640738356
#>     Attrib V3    0.22499229390636416
#>     Attrib V30    0.15854239257108907
#>     Attrib V31    -0.8955847182718615
#>     Attrib V32    -0.10411714072028465
#>     Attrib V33    0.3878049832898203
#>     Attrib V34    -0.38042659268297063
#>     Attrib V35    -0.054312792195730486
#>     Attrib V36    -0.5349864930823074
#>     Attrib V37    -0.39806943594836847
#>     Attrib V38    0.2361577530834328
#>     Attrib V39    0.1783557011044587
#>     Attrib V4    0.10452354266311512
#>     Attrib V40    -0.284656195528731
#>     Attrib V41    -0.14146250229306756
#>     Attrib V42    0.342908699630192
#>     Attrib V43    0.32578158492748494
#>     Attrib V44    0.24676901138194254
#>     Attrib V45    0.5466462985651198
#>     Attrib V46    -0.08783173235441742
#>     Attrib V47    -0.06486428748626755
#>     Attrib V48    0.07793943362163613
#>     Attrib V49    -0.029407147758899823
#>     Attrib V5    -0.5185528781073439
#>     Attrib V50    -0.4862211283945969
#>     Attrib V51    -0.19418644417980538
#>     Attrib V52    0.10466147039110041
#>     Attrib V53    0.6665388583812548
#>     Attrib V54    0.5442244993766331
#>     Attrib V55    -0.050278197520496795
#>     Attrib V56    0.7767415942105569
#>     Attrib V57    -0.030096397230306795
#>     Attrib V58    0.6722240074033178
#>     Attrib V59    0.4131293330078364
#>     Attrib V6    -0.26158771966353417
#>     Attrib V60    0.18909416766614504
#>     Attrib V7    -0.20490285091627794
#>     Attrib V8    0.09293752981739055
#>     Attrib V9    0.33909729731356075
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.23686259522527317
#>     Attrib V1    0.3304727592184616
#>     Attrib V10    -0.1645025426138254
#>     Attrib V11    -0.27343487763763435
#>     Attrib V12    -0.42488603358098026
#>     Attrib V13    0.027083673403032957
#>     Attrib V14    0.2025721906874894
#>     Attrib V15    0.3129352027973675
#>     Attrib V16    0.17999924128917852
#>     Attrib V17    0.22021432180804437
#>     Attrib V18    0.17423840607469246
#>     Attrib V19    0.1364378567378422
#>     Attrib V2    0.09965141385432527
#>     Attrib V20    0.5020885163969019
#>     Attrib V21    0.4555025954083381
#>     Attrib V22    0.22260732682584336
#>     Attrib V23    0.15313287995898756
#>     Attrib V24    -0.08905583138296876
#>     Attrib V25    -0.3030728819936619
#>     Attrib V26    -0.6185844775817697
#>     Attrib V27    -0.4562823178392282
#>     Attrib V28    -0.12435159962934128
#>     Attrib V29    -0.11310873946635848
#>     Attrib V3    0.17725098366099176
#>     Attrib V30    0.040546384867536076
#>     Attrib V31    -0.5946748577382575
#>     Attrib V32    -0.07042158979640507
#>     Attrib V33    0.24871713204224605
#>     Attrib V34    -0.20710753062658793
#>     Attrib V35    0.0052721722753272995
#>     Attrib V36    -0.34874431634869724
#>     Attrib V37    -0.27600991597132135
#>     Attrib V38    0.1588700719609788
#>     Attrib V39    0.13568576526949333
#>     Attrib V4    0.05360536644912421
#>     Attrib V40    -0.20518169584982376
#>     Attrib V41    -0.13341000692269614
#>     Attrib V42    0.20271452194768433
#>     Attrib V43    0.2036675117413825
#>     Attrib V44    0.14002806615163582
#>     Attrib V45    0.43141152474610495
#>     Attrib V46    -0.07286216817454061
#>     Attrib V47    -0.06309602231639998
#>     Attrib V48    0.14103966883570376
#>     Attrib V49    0.09932225344814724
#>     Attrib V5    -0.33110927751337144
#>     Attrib V50    -0.23270238402832993
#>     Attrib V51    -0.02130519965277722
#>     Attrib V52    0.09444866204839897
#>     Attrib V53    0.5146737307344014
#>     Attrib V54    0.30212160845597763
#>     Attrib V55    -0.01683360116739563
#>     Attrib V56    0.5212546742528175
#>     Attrib V57    -0.009208216325505544
#>     Attrib V58    0.4108817259387155
#>     Attrib V59    0.26692098365118994
#>     Attrib V6    -0.19044573903166048
#>     Attrib V60    0.15042330677189983
#>     Attrib V7    -0.14831939897520136
#>     Attrib V8    -0.023065697310612785
#>     Attrib V9    0.2779466244601248
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    0.5784436885668507
#>     Attrib V1    0.054088227110091446
#>     Attrib V10    -1.031726588631101
#>     Attrib V11    -0.6019158396705636
#>     Attrib V12    -0.5038948917388009
#>     Attrib V13    -0.8531207336350243
#>     Attrib V14    0.4066013487767462
#>     Attrib V15    1.1442133526336666
#>     Attrib V16    0.8931660290572063
#>     Attrib V17    0.5457375585406057
#>     Attrib V18    -0.47682471633825535
#>     Attrib V19    -0.6436277823391702
#>     Attrib V2    -0.03317381294261636
#>     Attrib V20    0.1832250888802651
#>     Attrib V21    0.8100237763660447
#>     Attrib V22    -0.31083801330122524
#>     Attrib V23    -1.2014229483215895
#>     Attrib V24    -1.2602379392216387
#>     Attrib V25    -1.5007329319534113
#>     Attrib V26    -1.0228440202640319
#>     Attrib V27    -0.8568551440483504
#>     Attrib V28    -1.4858207804463124
#>     Attrib V29    -0.2176857349700734
#>     Attrib V3    -0.052576598428572686
#>     Attrib V30    -0.23666917173723942
#>     Attrib V31    1.1685890244265342
#>     Attrib V32    -0.5115009883371463
#>     Attrib V33    -0.8067598689756295
#>     Attrib V34    -0.03094486108264463
#>     Attrib V35    -0.7428954263380558
#>     Attrib V36    1.05659942886815
#>     Attrib V37    1.2942452656440477
#>     Attrib V38    0.5966667238395847
#>     Attrib V39    -0.13315247177259518
#>     Attrib V4    -0.15584712287116104
#>     Attrib V40    0.0947145079515185
#>     Attrib V41    -1.1981060196201523
#>     Attrib V42    -0.35970145941586934
#>     Attrib V43    -0.23861688395674302
#>     Attrib V44    0.15870211021244945
#>     Attrib V45    -1.3491768515681861
#>     Attrib V46    -0.6247941222843416
#>     Attrib V47    -0.5034135594455565
#>     Attrib V48    -1.0905869356128384
#>     Attrib V49    -1.3735878138705744
#>     Attrib V5    -0.4016949701137802
#>     Attrib V50    1.4046310058200275
#>     Attrib V51    -1.0287010896431377
#>     Attrib V52    -1.4062451543604522
#>     Attrib V53    -1.014594841234168
#>     Attrib V54    0.48103036642541225
#>     Attrib V55    0.6303101568815507
#>     Attrib V56    0.2575930978902541
#>     Attrib V57    0.686657243334503
#>     Attrib V58    -0.2656387347542776
#>     Attrib V59    0.28585890519386653
#>     Attrib V6    -0.07633873085678287
#>     Attrib V60    -0.3755700771323022
#>     Attrib V7    0.611411448510365
#>     Attrib V8    0.14161545908968318
#>     Attrib V9    -1.7297243615033084
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.2593409127772398
#>     Attrib V1    0.5933301219703431
#>     Attrib V10    -0.36193932732801537
#>     Attrib V11    -0.5242264996039857
#>     Attrib V12    -0.7703302543872151
#>     Attrib V13    -0.03576837908966323
#>     Attrib V14    0.29490681856032325
#>     Attrib V15    0.5443771780429842
#>     Attrib V16    0.4279545058549469
#>     Attrib V17    0.33813404311432754
#>     Attrib V18    0.2781812394908674
#>     Attrib V19    0.15502629611640123
#>     Attrib V2    0.09241430421895913
#>     Attrib V20    0.8324043657824355
#>     Attrib V21    0.7848687808984444
#>     Attrib V22    0.4482673775012992
#>     Attrib V23    0.2889520253883171
#>     Attrib V24    -0.03213567626149679
#>     Attrib V25    -0.3973698342282833
#>     Attrib V26    -0.9669983598987819
#>     Attrib V27    -0.5665149021095759
#>     Attrib V28    -0.21373695017284172
#>     Attrib V29    -0.13201983417730648
#>     Attrib V3    0.2366423433607827
#>     Attrib V30    0.11079904476943594
#>     Attrib V31    -0.9889131261032499
#>     Attrib V32    -0.12926702987375838
#>     Attrib V33    0.4237846162379077
#>     Attrib V34    -0.35013044652844244
#>     Attrib V35    -0.028294882583375043
#>     Attrib V36    -0.5895760524197421
#>     Attrib V37    -0.4416952552002783
#>     Attrib V38    0.2762951004312666
#>     Attrib V39    0.13975509884206655
#>     Attrib V4    0.0751266654198632
#>     Attrib V40    -0.3579673430643796
#>     Attrib V41    -0.1379760414115232
#>     Attrib V42    0.37743015635871857
#>     Attrib V43    0.3752122523375796
#>     Attrib V44    0.26177222734463584
#>     Attrib V45    0.5956454858707493
#>     Attrib V46    -0.04928838521645673
#>     Attrib V47    -0.09686353062071802
#>     Attrib V48    0.07867232711078455
#>     Attrib V49    -0.02547124389407295
#>     Attrib V5    -0.522645751114764
#>     Attrib V50    -0.49663172055686056
#>     Attrib V51    -0.2214823128340174
#>     Attrib V52    0.07806776379129426
#>     Attrib V53    0.8287223929342598
#>     Attrib V54    0.5123525293337571
#>     Attrib V55    -0.14926416632152809
#>     Attrib V56    0.8878624885023209
#>     Attrib V57    -0.012751513437390567
#>     Attrib V58    0.7434886036265509
#>     Attrib V59    0.4920020674995805
#>     Attrib V6    -0.15363536661066612
#>     Attrib V60    0.30805607831428816
#>     Attrib V7    -0.12982101139372332
#>     Attrib V8    0.06863886774926192
#>     Attrib V9    0.43833027016038995
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    -0.03823201584628731
#>     Attrib V1    0.5892328246860951
#>     Attrib V10    1.5112014677099175
#>     Attrib V11    1.2042876014604453
#>     Attrib V12    0.5635300074454077
#>     Attrib V13    0.43521983293977085
#>     Attrib V14    -0.5399659040521457
#>     Attrib V15    -0.8757987248526162
#>     Attrib V16    -0.7575350406757845
#>     Attrib V17    -0.8743893266647962
#>     Attrib V18    -0.19620208782498438
#>     Attrib V19    0.11285291506609099
#>     Attrib V2    0.8527089190223015
#>     Attrib V20    -0.17484352879280604
#>     Attrib V21    -0.44690961751038916
#>     Attrib V22    0.03517878133892189
#>     Attrib V23    0.14935774132686844
#>     Attrib V24    -0.04539324554141874
#>     Attrib V25    0.26391070969602437
#>     Attrib V26    0.6892489637832975
#>     Attrib V27    1.028627997109063
#>     Attrib V28    2.05058273524495
#>     Attrib V29    1.3154055629733223
#>     Attrib V3    0.2580382415525769
#>     Attrib V30    0.49874077793338256
#>     Attrib V31    -1.1630965920805798
#>     Attrib V32    0.44887857783028756
#>     Attrib V33    0.5410599460978347
#>     Attrib V34    -0.19212239936892006
#>     Attrib V35    0.6435238306632339
#>     Attrib V36    -0.446299756554798
#>     Attrib V37    -0.1651163643771295
#>     Attrib V38    -0.08799477327613336
#>     Attrib V39    0.2487981806874116
#>     Attrib V4    0.09047128199579994
#>     Attrib V40    0.004743763098160088
#>     Attrib V41    1.086401971883767
#>     Attrib V42    0.024689484796469686
#>     Attrib V43    -0.2703915521222666
#>     Attrib V44    -0.5163991234158296
#>     Attrib V45    1.2022927066539353
#>     Attrib V46    0.7276144715592707
#>     Attrib V47    0.34924348881480877
#>     Attrib V48    0.6074359564442778
#>     Attrib V49    0.769472647502826
#>     Attrib V5    0.2710017914353145
#>     Attrib V50    -0.829050949113825
#>     Attrib V51    1.1042778794740609
#>     Attrib V52    1.2339433140541716
#>     Attrib V53    0.807515067560895
#>     Attrib V54    -0.30602854531291795
#>     Attrib V55    -0.47137177904082084
#>     Attrib V56    -0.8613832911009592
#>     Attrib V57    -0.46725304050651467
#>     Attrib V58    -0.12463920095748607
#>     Attrib V59    -0.5550011006362482
#>     Attrib V6    -0.033544444088643176
#>     Attrib V60    0.19137724893654912
#>     Attrib V7    -0.5158623430112226
#>     Attrib V8    0.054352583445189395
#>     Attrib V9    1.6850120974461382
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.26227082169239535
#>     Attrib V1    0.26618146603283854
#>     Attrib V10    0.036877469384253306
#>     Attrib V11    -0.1391930180672641
#>     Attrib V12    -0.3886143615403885
#>     Attrib V13    0.03911398125991946
#>     Attrib V14    -0.08168597987496014
#>     Attrib V15    0.023219976844393437
#>     Attrib V16    0.07036249964545377
#>     Attrib V17    0.18767638228425826
#>     Attrib V18    0.23491316073553636
#>     Attrib V19    0.21844137091206514
#>     Attrib V2    -0.10023550207714067
#>     Attrib V20    0.4612673721423497
#>     Attrib V21    0.37625326468708536
#>     Attrib V22    0.37954772270273374
#>     Attrib V23    0.42549370716321344
#>     Attrib V24    0.2375643916820604
#>     Attrib V25    0.04947479844719449
#>     Attrib V26    -0.4068253505965291
#>     Attrib V27    -0.3722956137973376
#>     Attrib V28    -0.1939786640286907
#>     Attrib V29    -0.42359289183594295
#>     Attrib V3    -0.012877183668059693
#>     Attrib V30    0.050043075319778065
#>     Attrib V31    -0.7663268749122379
#>     Attrib V32    0.07424883299555526
#>     Attrib V33    0.5191899847430114
#>     Attrib V34    -0.1145898452257994
#>     Attrib V35    0.16575046830740892
#>     Attrib V36    -0.37113840486660493
#>     Attrib V37    -0.4953789247228002
#>     Attrib V38    0.19172035550190586
#>     Attrib V39    0.025821228489219798
#>     Attrib V4    -0.03455275903644883
#>     Attrib V40    -0.3634688833919772
#>     Attrib V41    -0.14164404166952216
#>     Attrib V42    0.13628392345173393
#>     Attrib V43    0.3212644604058317
#>     Attrib V44    0.25773297692854075
#>     Attrib V45    0.6198543865653903
#>     Attrib V46    0.016225156341002522
#>     Attrib V47    0.0012372643869320212
#>     Attrib V48    0.2858417797762872
#>     Attrib V49    0.1793492573570353
#>     Attrib V5    -0.47232025835038305
#>     Attrib V50    -0.5388828841432132
#>     Attrib V51    -0.01714867322409405
#>     Attrib V52    0.16846236124298875
#>     Attrib V53    0.5801475694119372
#>     Attrib V54    0.3628268463496513
#>     Attrib V55    -0.24848399828635226
#>     Attrib V56    0.49325121807762945
#>     Attrib V57    -0.1577249276977121
#>     Attrib V58    0.40457908541724474
#>     Attrib V59    0.19730254514509743
#>     Attrib V6    -0.24043000791157984
#>     Attrib V60    0.2436229760110388
#>     Attrib V7    -0.19283431771165196
#>     Attrib V8    -0.029424615623208274
#>     Attrib V9    0.5546017059110482
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    -0.42727747746613504
#>     Attrib V1    0.21917829157891008
#>     Attrib V10    0.7568065537593549
#>     Attrib V11    0.27388652642411615
#>     Attrib V12    -0.05071628234126203
#>     Attrib V13    0.2754759503408082
#>     Attrib V14    -0.5191113676616235
#>     Attrib V15    -0.6901708410172985
#>     Attrib V16    -0.4947057101553919
#>     Attrib V17    -0.256412396633967
#>     Attrib V18    0.1598793564730668
#>     Attrib V19    0.14757076607397707
#>     Attrib V2    0.09492974468662788
#>     Attrib V20    0.02307609788425203
#>     Attrib V21    -0.1870614434592745
#>     Attrib V22    0.3262135972427349
#>     Attrib V23    0.7160756963630778
#>     Attrib V24    0.522084430243705
#>     Attrib V25    0.5687107186377411
#>     Attrib V26    0.18627456509218962
#>     Attrib V27    0.4168929346352145
#>     Attrib V28    0.9731659782636807
#>     Attrib V29    0.109864743776972
#>     Attrib V3    0.06482754802114613
#>     Attrib V30    0.2926728401888658
#>     Attrib V31    -0.99910796227962
#>     Attrib V32    0.4517111132397223
#>     Attrib V33    0.7735831776104821
#>     Attrib V34    -0.10110780544334123
#>     Attrib V35    0.3871182569406927
#>     Attrib V36    -0.755904598518627
#>     Attrib V37    -0.8124976312987966
#>     Attrib V38    -0.19731763100910793
#>     Attrib V39    0.08145071934253786
#>     Attrib V4    -0.041275016877232645
#>     Attrib V40    -0.3369297713090998
#>     Attrib V41    0.5547985044115193
#>     Attrib V42    0.29847595891440787
#>     Attrib V43    0.2583902364543394
#>     Attrib V44    -0.022462389302848676
#>     Attrib V45    1.1861131346416394
#>     Attrib V46    0.4218995718414845
#>     Attrib V47    0.288557856555257
#>     Attrib V48    0.725372850686358
#>     Attrib V49    0.7407235188917337
#>     Attrib V5    -0.029262205288432836
#>     Attrib V50    -1.2016027217353231
#>     Attrib V51    0.4204895088675881
#>     Attrib V52    0.7667530756043424
#>     Attrib V53    0.5986894998637001
#>     Attrib V54    -0.1978167481235081
#>     Attrib V55    -0.6508711664859462
#>     Attrib V56    -0.03938549255573244
#>     Attrib V57    -0.6276248624156047
#>     Attrib V58    0.13951544979515193
#>     Attrib V59    -0.28782491361294843
#>     Attrib V6    -0.014073249825259588
#>     Attrib V60    0.19570578180873135
#>     Attrib V7    -0.46596070664128486
#>     Attrib V8    0.026681846133708123
#>     Attrib V9    1.3777060804834373
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    0.4703948902262544
#>     Attrib V1    0.12351467305906697
#>     Attrib V10    -1.199104304183879
#>     Attrib V11    -0.7830213433750005
#>     Attrib V12    -0.5497594092392822
#>     Attrib V13    -0.7164728866722329
#>     Attrib V14    0.4918868671876536
#>     Attrib V15    1.08575634824748
#>     Attrib V16    0.9115173022046029
#>     Attrib V17    0.5608093651659811
#>     Attrib V18    -0.34209530811117567
#>     Attrib V19    -0.6321998696707412
#>     Attrib V2    -0.0680109920216093
#>     Attrib V20    0.2766633193771927
#>     Attrib V21    0.7887207901659596
#>     Attrib V22    -0.3198203955964261
#>     Attrib V23    -1.0600060464720449
#>     Attrib V24    -1.1211112303031983
#>     Attrib V25    -1.4674744898915628
#>     Attrib V26    -1.1596571878357194
#>     Attrib V27    -0.9510948590881342
#>     Attrib V28    -1.3821846852568116
#>     Attrib V29    -0.18064581014508674
#>     Attrib V3    0.00549967112795025
#>     Attrib V30    -0.093307209528326
#>     Attrib V31    1.0103379901638612
#>     Attrib V32    -0.6280710841860364
#>     Attrib V33    -0.5932357656876768
#>     Attrib V34    0.020258396116612523
#>     Attrib V35    -0.747303032545019
#>     Attrib V36    0.8828762429610096
#>     Attrib V37    1.1376762327164023
#>     Attrib V38    0.644732638803832
#>     Attrib V39    -0.1305523281923803
#>     Attrib V4    -0.05843284929284898
#>     Attrib V40    0.049551138541066464
#>     Attrib V41    -1.1173010144445765
#>     Attrib V42    -0.24744943632674474
#>     Attrib V43    -0.17876655696354124
#>     Attrib V44    0.19932963770142892
#>     Attrib V45    -1.1435580421852398
#>     Attrib V46    -0.5823358208414863
#>     Attrib V47    -0.5453703673999273
#>     Attrib V48    -1.125501345769743
#>     Attrib V49    -1.3857567390488204
#>     Attrib V5    -0.44173998551503746
#>     Attrib V50    1.1373494306294885
#>     Attrib V51    -1.1662450729773894
#>     Attrib V52    -1.3749524690871109
#>     Attrib V53    -0.8974443401375165
#>     Attrib V54    0.482387935525306
#>     Attrib V55    0.4576666963399777
#>     Attrib V56    0.31190984050168935
#>     Attrib V57    0.6263584067212131
#>     Attrib V58    -0.28382831197690017
#>     Attrib V59    0.3201638074518462
#>     Attrib V6    -0.007564890456442296
#>     Attrib V60    -0.4362147161537272
#>     Attrib V7    0.6039916590861426
#>     Attrib V8    0.1030263523814175
#>     Attrib V9    -1.6631525519588244
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.35708260070639564
#>     Attrib V1    0.397083033618363
#>     Attrib V10    -0.14012111258337012
#>     Attrib V11    -0.3367265144372979
#>     Attrib V12    -0.58156619507735
#>     Attrib V13    -0.04592091114914377
#>     Attrib V14    0.09272188393191057
#>     Attrib V15    0.2723073486964503
#>     Attrib V16    0.18617985840013515
#>     Attrib V17    0.30722719895707096
#>     Attrib V18    0.2567444732663118
#>     Attrib V19    0.1394510275115524
#>     Attrib V2    -0.10854101841933976
#>     Attrib V20    0.679508640161413
#>     Attrib V21    0.5358784776299957
#>     Attrib V22    0.3800378892129453
#>     Attrib V23    0.349046619123484
#>     Attrib V24    0.0919602330466925
#>     Attrib V25    -0.1354487483701646
#>     Attrib V26    -0.7577884963086589
#>     Attrib V27    -0.5645736511926832
#>     Attrib V28    -0.3039852855515373
#>     Attrib V29    -0.453609473590358
#>     Attrib V3    0.02887391095753656
#>     Attrib V30    0.04193249286633506
#>     Attrib V31    -0.9149851005156556
#>     Attrib V32    -0.03934585007512988
#>     Attrib V33    0.5285709052498475
#>     Attrib V34    -0.13601550284978683
#>     Attrib V35    0.11881576414606171
#>     Attrib V36    -0.517911921735721
#>     Attrib V37    -0.5565508914614671
#>     Attrib V38    0.24018135652597652
#>     Attrib V39    0.04369809863367445
#>     Attrib V4    -0.10972678270265959
#>     Attrib V40    -0.38557176485405814
#>     Attrib V41    -0.2504293114993973
#>     Attrib V42    0.26457731121186095
#>     Attrib V43    0.3674417185746195
#>     Attrib V44    0.2997838576327948
#>     Attrib V45    0.6551394126573188
#>     Attrib V46    -0.06772219769210534
#>     Attrib V47    -0.01846799552774399
#>     Attrib V48    0.25150866514484566
#>     Attrib V49    0.05658893662366863
#>     Attrib V5    -0.5341269262032364
#>     Attrib V50    -0.5384174604787452
#>     Attrib V51    -0.07327415889746657
#>     Attrib V52    0.06164362062437197
#>     Attrib V53    0.6572297703770578
#>     Attrib V54    0.5454098553432717
#>     Attrib V55    -0.1569336418771671
#>     Attrib V56    0.7634493761313144
#>     Attrib V57    -0.10811224041036013
#>     Attrib V58    0.6327701263703973
#>     Attrib V59    0.2596180634315938
#>     Attrib V6    -0.1949157197673151
#>     Attrib V60    0.24691949890854614
#>     Attrib V7    -0.17828776477176295
#>     Attrib V8    0.06328016896536347
#>     Attrib V9    0.547400684675489
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.3523690243016519
#>     Attrib V1    0.3130593713955964
#>     Attrib V10    0.21570424002986963
#>     Attrib V11    0.029738079602845656
#>     Attrib V12    -0.4182912441244133
#>     Attrib V13    0.05840169384605348
#>     Attrib V14    -0.1658590614199816
#>     Attrib V15    -0.17914952046067548
#>     Attrib V16    -0.10232056408849001
#>     Attrib V17    0.2009248609273655
#>     Attrib V18    0.37923595865009724
#>     Attrib V19    0.3834067663962075
#>     Attrib V2    -0.2141717312217836
#>     Attrib V20    0.5906039224557131
#>     Attrib V21    0.3865902346032739
#>     Attrib V22    0.5456299984709515
#>     Attrib V23    0.6003255899477897
#>     Attrib V24    0.3243303512566611
#>     Attrib V25    0.22147147707123552
#>     Attrib V26    -0.3707840219228181
#>     Attrib V27    -0.3047533512014603
#>     Attrib V28    -0.11905529399040544
#>     Attrib V29    -0.5007750225205251
#>     Attrib V3    -0.14794029242665865
#>     Attrib V30    0.13540423441363791
#>     Attrib V31    -1.1351296746979114
#>     Attrib V32    0.12263750893136827
#>     Attrib V33    0.7952444524574798
#>     Attrib V34    -0.14653906933883662
#>     Attrib V35    0.2921904377419351
#>     Attrib V36    -0.6164697140144377
#>     Attrib V37    -0.7639421238779697
#>     Attrib V38    0.21989171603763508
#>     Attrib V39    0.0022057112016584473
#>     Attrib V4    -0.07671118454700392
#>     Attrib V40    -0.4980897970639886
#>     Attrib V41    -0.1221919630516767
#>     Attrib V42    0.2879181814814271
#>     Attrib V43    0.5081933513043866
#>     Attrib V44    0.25970779261984234
#>     Attrib V45    0.9605236741199552
#>     Attrib V46    0.0563782910911811
#>     Attrib V47    -0.009793455886257043
#>     Attrib V48    0.4549632316314478
#>     Attrib V49    0.2906672945231721
#>     Attrib V5    -0.5255580971437783
#>     Attrib V50    -0.933154069296348
#>     Attrib V51    0.10667455881011907
#>     Attrib V52    0.33783162598020056
#>     Attrib V53    0.8538436119144721
#>     Attrib V54    0.40525736335800727
#>     Attrib V55    -0.48227236209356505
#>     Attrib V56    0.642522809452699
#>     Attrib V57    -0.35187164712920954
#>     Attrib V58    0.549662342425766
#>     Attrib V59    0.18824479772869043
#>     Attrib V6    -0.3389546442579667
#>     Attrib V60    0.2365195868378798
#>     Attrib V7    -0.32657314413538313
#>     Attrib V8    0.04587555831128375
#>     Attrib V9    0.9952567444793553
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.1928405267202518
#>     Attrib V1    -0.02050065476488748
#>     Attrib V10    0.06731310295631834
#>     Attrib V11    0.01325402629815566
#>     Attrib V12    0.046330355530627636
#>     Attrib V13    0.04043136343124762
#>     Attrib V14    0.056707490241063425
#>     Attrib V15    0.014843745649618593
#>     Attrib V16    0.02184669049309816
#>     Attrib V17    0.06793951214095945
#>     Attrib V18    0.09153851102270213
#>     Attrib V19    0.04364648046662185
#>     Attrib V2    -0.014135216987445135
#>     Attrib V20    -0.011790548464819917
#>     Attrib V21    0.03972891606000844
#>     Attrib V22    0.01996959954302105
#>     Attrib V23    0.062403372434498526
#>     Attrib V24    -0.05234541273970115
#>     Attrib V25    -0.0846935299619986
#>     Attrib V26    -0.11772910028748601
#>     Attrib V27    -0.05868080218317405
#>     Attrib V28    -0.17685515298759483
#>     Attrib V29    -0.06767086057958131
#>     Attrib V3    0.05264719929132219
#>     Attrib V30    -0.10605447716355351
#>     Attrib V31    0.11241883395832084
#>     Attrib V32    0.07518404413182846
#>     Attrib V33    0.05355570969712206
#>     Attrib V34    0.19233300938581935
#>     Attrib V35    0.0312714563090227
#>     Attrib V36    0.1957220264251835
#>     Attrib V37    0.20826536057025874
#>     Attrib V38    0.01593941970750413
#>     Attrib V39    0.07316682549366305
#>     Attrib V4    0.15330204301879058
#>     Attrib V40    0.2386832434984618
#>     Attrib V41    0.2012835594809429
#>     Attrib V42    0.10555078960552122
#>     Attrib V43    0.03179307437317166
#>     Attrib V44    0.09574286908078278
#>     Attrib V45    -0.16548839766194492
#>     Attrib V46    0.019723125728714652
#>     Attrib V47    0.058592840388773125
#>     Attrib V48    -0.09225702056795233
#>     Attrib V49    -0.004702215414385651
#>     Attrib V5    0.25556258860303777
#>     Attrib V50    0.22788300700848416
#>     Attrib V51    0.04064440489299299
#>     Attrib V52    -0.023238102651626572
#>     Attrib V53    -0.10353258722382637
#>     Attrib V54    0.025612020943303768
#>     Attrib V55    0.07369983987560098
#>     Attrib V56    -0.023104847934012813
#>     Attrib V57    0.1834165862376107
#>     Attrib V58    0.025749551298531532
#>     Attrib V59    0.07654098151201003
#>     Attrib V6    0.2074516145591118
#>     Attrib V60    0.09167572267831531
#>     Attrib V7    0.19430129650312236
#>     Attrib V8    0.07312368790625104
#>     Attrib V9    -0.04740913806742541
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.16225438184496355
#>     Attrib V1    0.4684021746710038
#>     Attrib V10    -0.1341939880800461
#>     Attrib V11    -0.225161159615251
#>     Attrib V12    -0.48388811744639637
#>     Attrib V13    -0.0549424412075445
#>     Attrib V14    0.1363411582784576
#>     Attrib V15    0.3507999072027898
#>     Attrib V16    0.18741493083504282
#>     Attrib V17    0.2377538321524589
#>     Attrib V18    0.1936023892241091
#>     Attrib V19    0.09296455863259226
#>     Attrib V2    0.14621640437864752
#>     Attrib V20    0.5452418914075332
#>     Attrib V21    0.45047519814130005
#>     Attrib V22    0.2396940695036764
#>     Attrib V23    0.16148454170268137
#>     Attrib V24    -0.13277048785501055
#>     Attrib V25    -0.3314967476055682
#>     Attrib V26    -0.6923874329091559
#>     Attrib V27    -0.5214751172248236
#>     Attrib V28    -0.2922801901955496
#>     Attrib V29    -0.29772597080965546
#>     Attrib V3    0.07113619094670404
#>     Attrib V30    0.054156792447699546
#>     Attrib V31    -0.7174410890575579
#>     Attrib V32    -0.09176973891078659
#>     Attrib V33    0.336116084327267
#>     Attrib V34    -0.24711382225633785
#>     Attrib V35    0.036951677835487445
#>     Attrib V36    -0.44831688464037284
#>     Attrib V37    -0.33804940706724146
#>     Attrib V38    0.19525572128120655
#>     Attrib V39    0.13906948370485434
#>     Attrib V4    0.05055023892424066
#>     Attrib V40    -0.279396857542949
#>     Attrib V41    -0.19905866752950385
#>     Attrib V42    0.17011828042254695
#>     Attrib V43    0.2661299976604581
#>     Attrib V44    0.19863875544854664
#>     Attrib V45    0.4186478552789814
#>     Attrib V46    -0.05797770723937264
#>     Attrib V47    -0.08211864394808639
#>     Attrib V48    0.20057551352295053
#>     Attrib V49    0.08603251445668093
#>     Attrib V5    -0.5161898962930128
#>     Attrib V50    -0.34587551909756553
#>     Attrib V51    -0.059364889495286684
#>     Attrib V52    0.06430343124007144
#>     Attrib V53    0.5164894917380639
#>     Attrib V54    0.5162525377287472
#>     Attrib V55    0.01961536202673921
#>     Attrib V56    0.6108664486530819
#>     Attrib V57    -0.07048521107391968
#>     Attrib V58    0.509198867672745
#>     Attrib V59    0.28121228753302085
#>     Attrib V6    -0.23497882225402034
#>     Attrib V60    0.2095995475065234
#>     Attrib V7    -0.17110715231299264
#>     Attrib V8    0.003844305216192952
#>     Attrib V9    0.3389880370674721
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.13444685713295226
#>     Attrib V1    -0.19598959318052672
#>     Attrib V10    -0.3115039281256112
#>     Attrib V11    -0.37030946789543556
#>     Attrib V12    -0.08613597514580812
#>     Attrib V13    -0.3554672734308063
#>     Attrib V14    0.186090365608792
#>     Attrib V15    0.35688049779374476
#>     Attrib V16    0.3773721129804042
#>     Attrib V17    0.20242709533923828
#>     Attrib V18    0.13560706747687915
#>     Attrib V19    0.05831605660505176
#>     Attrib V2    -0.10797242078589796
#>     Attrib V20    -0.3171353447468151
#>     Attrib V21    -0.07459594313653904
#>     Attrib V22    0.01826507736290161
#>     Attrib V23    -0.271822478724369
#>     Attrib V24    -0.2954242107258126
#>     Attrib V25    -0.1365332103787726
#>     Attrib V26    0.3421002068600038
#>     Attrib V27    -0.005155467717547562
#>     Attrib V28    -0.3837043407925702
#>     Attrib V29    0.026213617013855023
#>     Attrib V3    -0.08733439725754842
#>     Attrib V30    -0.26522300463139625
#>     Attrib V31    0.8829160913525139
#>     Attrib V32    -0.1755932502293476
#>     Attrib V33    -0.5652373761732521
#>     Attrib V34    0.12953278434419188
#>     Attrib V35    -0.21316285622172304
#>     Attrib V36    0.7151500190717565
#>     Attrib V37    0.5311678177543879
#>     Attrib V38    -0.1819900231448632
#>     Attrib V39    -0.33926302481233084
#>     Attrib V4    0.04154963445419204
#>     Attrib V40    0.30133479939764046
#>     Attrib V41    -0.03346167361255578
#>     Attrib V42    -0.24061318805829074
#>     Attrib V43    -0.2142001204472935
#>     Attrib V44    0.07940644117887703
#>     Attrib V45    -0.8046361687211678
#>     Attrib V46    -0.15696827870989444
#>     Attrib V47    0.08354041432533914
#>     Attrib V48    -0.3383588127234054
#>     Attrib V49    -0.33577858931932936
#>     Attrib V5    0.2893955291839743
#>     Attrib V50    1.229189541823703
#>     Attrib V51    -0.044007158220331445
#>     Attrib V52    -0.5937675419109184
#>     Attrib V53    -0.6797307600076143
#>     Attrib V54    0.1270766922352789
#>     Attrib V55    0.45845681084353485
#>     Attrib V56    -0.12626352035628788
#>     Attrib V57    0.4741083921428896
#>     Attrib V58    -0.17417952900585304
#>     Attrib V59    0.07976537753316137
#>     Attrib V6    0.2956954703995369
#>     Attrib V60    0.09066237996215752
#>     Attrib V7    0.5407235962788975
#>     Attrib V8    0.18788141072484987
#>     Attrib V9    -0.8361043492660832
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.20728609381049376
#>     Attrib V1    0.3989500501405038
#>     Attrib V10    -0.20081592939319623
#>     Attrib V11    -0.30962244030564146
#>     Attrib V12    -0.46342509653789915
#>     Attrib V13    0.02820781465352757
#>     Attrib V14    0.15016726379505937
#>     Attrib V15    0.30063377318311396
#>     Attrib V16    0.2657802100528815
#>     Attrib V17    0.2672883201003042
#>     Attrib V18    0.23509749044706593
#>     Attrib V19    0.14715893388879892
#>     Attrib V2    0.09121810715393512
#>     Attrib V20    0.5145371843939527
#>     Attrib V21    0.44749079600240915
#>     Attrib V22    0.24697709871320103
#>     Attrib V23    0.10810303439941832
#>     Attrib V24    -0.03900364719763857
#>     Attrib V25    -0.26938684531205986
#>     Attrib V26    -0.685316917534814
#>     Attrib V27    -0.4688282875346949
#>     Attrib V28    -0.18803482854836373
#>     Attrib V29    -0.1791432720145594
#>     Attrib V3    0.1677607720684202
#>     Attrib V30    0.008819573623607172
#>     Attrib V31    -0.6735158612837057
#>     Attrib V32    -0.07497529124065136
#>     Attrib V33    0.22695573634504554
#>     Attrib V34    -0.19112704056495367
#>     Attrib V35    -6.862170867284431E-4
#>     Attrib V36    -0.3784626323380599
#>     Attrib V37    -0.28563337125833604
#>     Attrib V38    0.21772027506876535
#>     Attrib V39    0.15012898365313673
#>     Attrib V4    0.06336178362763883
#>     Attrib V40    -0.24878992254156573
#>     Attrib V41    -0.14002807995888125
#>     Attrib V42    0.21570315411078392
#>     Attrib V43    0.24712112888185261
#>     Attrib V44    0.11498266223067032
#>     Attrib V45    0.4159533320971368
#>     Attrib V46    -0.03329811791044736
#>     Attrib V47    -0.054702806097622396
#>     Attrib V48    0.10694309135482442
#>     Attrib V49    0.020181245888709853
#>     Attrib V5    -0.41285005990935164
#>     Attrib V50    -0.24471409767451513
#>     Attrib V51    -0.06546793402975651
#>     Attrib V52    0.08685948777618438
#>     Attrib V53    0.5815663499596981
#>     Attrib V54    0.3924163374594354
#>     Attrib V55    0.009700560263007045
#>     Attrib V56    0.578971028447755
#>     Attrib V57    5.759614397960044E-4
#>     Attrib V58    0.505502682828291
#>     Attrib V59    0.27008377021348545
#>     Attrib V6    -0.1459205824599377
#>     Attrib V60    0.20132779639943116
#>     Attrib V7    -0.12429223954806476
#>     Attrib V8    -0.018367919932099224
#>     Attrib V9    0.28219255858750475
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.1777619382518862
#>     Attrib V1    0.3342994990739675
#>     Attrib V10    -0.07195372773392732
#>     Attrib V11    -0.14500850726285147
#>     Attrib V12    -0.28777160283167297
#>     Attrib V13    5.749405935282166E-4
#>     Attrib V14    0.12150491362520593
#>     Attrib V15    0.27312986304551035
#>     Attrib V16    0.15534922899317372
#>     Attrib V17    0.17991623269134352
#>     Attrib V18    0.15009726792827413
#>     Attrib V19    0.11798617378882112
#>     Attrib V2    0.1965966199910199
#>     Attrib V20    0.3560107880900826
#>     Attrib V21    0.2638556491440067
#>     Attrib V22    0.20310164515966633
#>     Attrib V23    0.07741203655340248
#>     Attrib V24    -0.052097692421231453
#>     Attrib V25    -0.24736528749593809
#>     Attrib V26    -0.5129784949378561
#>     Attrib V27    -0.3591934033595511
#>     Attrib V28    -0.20868315536529092
#>     Attrib V29    -0.2565494434314673
#>     Attrib V3    0.11737196481312032
#>     Attrib V30    -0.0033246174829981994
#>     Attrib V31    -0.4427243026424196
#>     Attrib V32    -0.08264542892317546
#>     Attrib V33    0.21418766426797878
#>     Attrib V34    -0.1658629988159599
#>     Attrib V35    0.08324814210599617
#>     Attrib V36    -0.2581303042390817
#>     Attrib V37    -0.2256869516279452
#>     Attrib V38    0.22357252210201825
#>     Attrib V39    0.13597568573756358
#>     Attrib V4    0.0437584648737989
#>     Attrib V40    -0.22883257280844257
#>     Attrib V41    -0.1206386843416618
#>     Attrib V42    0.07379209259829053
#>     Attrib V43    0.22417096719311772
#>     Attrib V44    0.11679863439050776
#>     Attrib V45    0.3351743696246717
#>     Attrib V46    -0.058772736677254155
#>     Attrib V47    -0.07224132226795602
#>     Attrib V48    0.15909364303663648
#>     Attrib V49    0.05882753348302594
#>     Attrib V5    -0.33605450676975446
#>     Attrib V50    -0.1346782714563527
#>     Attrib V51    -0.017357980201180984
#>     Attrib V52    0.07224331374397178
#>     Attrib V53    0.3683866055988444
#>     Attrib V54    0.3039316738195897
#>     Attrib V55    0.10458361822550248
#>     Attrib V56    0.43841762620806246
#>     Attrib V57    0.02827526263181977
#>     Attrib V58    0.3284416118604872
#>     Attrib V59    0.18203813853067977
#>     Attrib V6    -0.11232154698479585
#>     Attrib V60    0.18434092548350167
#>     Attrib V7    -0.15071727761951592
#>     Attrib V8    0.027086918715303533
#>     Attrib V9    0.22237308571328515
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.17762276411009986
#>     Attrib V1    -0.03628593374661068
#>     Attrib V10    0.04797942629610895
#>     Attrib V11    -0.050037664217301624
#>     Attrib V12    -0.012846640749455136
#>     Attrib V13    -0.06956054705222546
#>     Attrib V14    0.03411260932097337
#>     Attrib V15    -0.008646968630696734
#>     Attrib V16    0.045557930755429576
#>     Attrib V17    -0.006962155273183841
#>     Attrib V18    0.13092757927118737
#>     Attrib V19    -0.009175965841456683
#>     Attrib V2    -0.006321332584479489
#>     Attrib V20    -0.0888879434550119
#>     Attrib V21    0.02790344130348081
#>     Attrib V22    0.05266006602328244
#>     Attrib V23    0.0499897394128238
#>     Attrib V24    -0.08711565031839245
#>     Attrib V25    -0.1265104944181743
#>     Attrib V26    -0.08992226969522132
#>     Attrib V27    -0.10486369968024856
#>     Attrib V28    -0.17401894827226214
#>     Attrib V29    -0.08006216987506423
#>     Attrib V3    0.020140568392377278
#>     Attrib V30    -0.18773379026517548
#>     Attrib V31    0.2122998580153824
#>     Attrib V32    0.09567904722477426
#>     Attrib V33    0.05242184839945654
#>     Attrib V34    0.19475132592710412
#>     Attrib V35    0.03725144681310302
#>     Attrib V36    0.35995292220811154
#>     Attrib V37    0.24041051683219838
#>     Attrib V38    -0.017389846004800938
#>     Attrib V39    0.031874719672965034
#>     Attrib V4    0.11717106875509567
#>     Attrib V40    0.255815899248464
#>     Attrib V41    0.2149078510294031
#>     Attrib V42    0.11565815691712102
#>     Attrib V43    0.07123424641080155
#>     Attrib V44    0.15397089313267195
#>     Attrib V45    -0.2603915411620745
#>     Attrib V46    -0.058515123601602985
#>     Attrib V47    0.052437326382607036
#>     Attrib V48    -0.12557999563676017
#>     Attrib V49    -0.048751833374343544
#>     Attrib V5    0.2698058629064503
#>     Attrib V50    0.2840149470433801
#>     Attrib V51    0.14048432385973306
#>     Attrib V52    0.0057812194236206964
#>     Attrib V53    -0.1002077110756041
#>     Attrib V54    0.017272777797290844
#>     Attrib V55    0.09766894580117169
#>     Attrib V56    -0.012941394427813889
#>     Attrib V57    0.15772050730376275
#>     Attrib V58    0.048779074541050925
#>     Attrib V59    0.08014095964706393
#>     Attrib V6    0.194453813032749
#>     Attrib V60    0.09030815429025243
#>     Attrib V7    0.22737239205810206
#>     Attrib V8    0.14574945044365162
#>     Attrib V9    -0.11604715180856906
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    -0.37146018673801484
#>     Attrib V1    0.3044484843508188
#>     Attrib V10    0.07517343667287973
#>     Attrib V11    -0.17183301900119094
#>     Attrib V12    -0.34983674336317205
#>     Attrib V13    0.03419500445792168
#>     Attrib V14    -0.08322285723148967
#>     Attrib V15    0.0023933118087166565
#>     Attrib V16    -0.05508659841173077
#>     Attrib V17    0.2078491189774818
#>     Attrib V18    0.34669509026756035
#>     Attrib V19    0.3077534154014021
#>     Attrib V2    -0.1872501258325039
#>     Attrib V20    0.5106175690972304
#>     Attrib V21    0.3279416413421221
#>     Attrib V22    0.4929966850184854
#>     Attrib V23    0.5425732304074614
#>     Attrib V24    0.3469021753530428
#>     Attrib V25    0.21680038640797944
#>     Attrib V26    -0.4122891784971482
#>     Attrib V27    -0.36493531708679505
#>     Attrib V28    -0.21410596513914798
#>     Attrib V29    -0.5853907317377578
#>     Attrib V3    -0.08343702821478138
#>     Attrib V30    0.04785788933619726
#>     Attrib V31    -0.8624366033360005
#>     Attrib V32    0.14140045027799622
#>     Attrib V33    0.6910927413898381
#>     Attrib V34    -0.17213476686208237
#>     Attrib V35    0.19975611944241506
#>     Attrib V36    -0.6642609766460634
#>     Attrib V37    -0.842389229293442
#>     Attrib V38    0.03953428773623147
#>     Attrib V39    -0.051717077273763436
#>     Attrib V4    -0.07018794615918487
#>     Attrib V40    -0.40182940232573267
#>     Attrib V41    -0.07929505110888883
#>     Attrib V42    0.3536624223424065
#>     Attrib V43    0.41754267055480304
#>     Attrib V44    0.2038051449781999
#>     Attrib V45    0.7723583447220607
#>     Attrib V46    -0.011204931703227571
#>     Attrib V47    -0.02597929498547492
#>     Attrib V48    0.38606414549350865
#>     Attrib V49    0.3214438570934195
#>     Attrib V5    -0.4790410569682788
#>     Attrib V50    -0.7593742400967861
#>     Attrib V51    0.06765792124997093
#>     Attrib V52    0.3148078277830658
#>     Attrib V53    0.7825046586097129
#>     Attrib V54    0.4450115443568221
#>     Attrib V55    -0.3359907406760434
#>     Attrib V56    0.6337117306475966
#>     Attrib V57    -0.32317664262571594
#>     Attrib V58    0.5894039255424438
#>     Attrib V59    0.19266077658391023
#>     Attrib V6    -0.2513345730187613
#>     Attrib V60    0.2854384363346571
#>     Attrib V7    -0.265143256130188
#>     Attrib V8    -0.013028912816878483
#>     Attrib V9    0.7658120585927045
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.2871528359559042
#>     Attrib V1    0.6067060882728028
#>     Attrib V10    -0.23334488984491797
#>     Attrib V11    -0.4339890732732022
#>     Attrib V12    -0.6789019073528465
#>     Attrib V13    1.734729541396105E-6
#>     Attrib V14    0.27118039372740366
#>     Attrib V15    0.4587878201996325
#>     Attrib V16    0.2738481020037517
#>     Attrib V17    0.329243937730118
#>     Attrib V18    0.29610229449655834
#>     Attrib V19    0.21622646943134552
#>     Attrib V2    0.06730033662908359
#>     Attrib V20    0.8073626250633681
#>     Attrib V21    0.7681404574037791
#>     Attrib V22    0.49861080180053885
#>     Attrib V23    0.3673031494944298
#>     Attrib V24    0.02477526068369182
#>     Attrib V25    -0.3235868995426938
#>     Attrib V26    -0.8212272185278051
#>     Attrib V27    -0.46533099265629246
#>     Attrib V28    -0.15510362272015107
#>     Attrib V29    -0.07509835474400656
#>     Attrib V3    0.16694810021768436
#>     Attrib V30    0.1585015554354124
#>     Attrib V31    -0.9760194436043069
#>     Attrib V32    -0.1780610747399693
#>     Attrib V33    0.40975891679648263
#>     Attrib V34    -0.3830634790477484
#>     Attrib V35    -0.028918183463000287
#>     Attrib V36    -0.5170403392304893
#>     Attrib V37    -0.4295425764721591
#>     Attrib V38    0.3036714740693855
#>     Attrib V39    0.112207531409904
#>     Attrib V4    0.06612516565834418
#>     Attrib V40    -0.36307548862884653
#>     Attrib V41    -0.1371648333907146
#>     Attrib V42    0.33614988008619934
#>     Attrib V43    0.4546277152818732
#>     Attrib V44    0.33953253929469124
#>     Attrib V45    0.6437817485763925
#>     Attrib V46    -0.0889252564808048
#>     Attrib V47    -0.124724369220561
#>     Attrib V48    0.15817780921754457
#>     Attrib V49    0.0076562996493204204
#>     Attrib V5    -0.4604385505003328
#>     Attrib V50    -0.5469206187811678
#>     Attrib V51    -0.08263557171572751
#>     Attrib V52    0.16545353856077205
#>     Attrib V53    0.7820418762899494
#>     Attrib V54    0.5687669692887307
#>     Attrib V55    -0.16131792089660763
#>     Attrib V56    0.8293648725209644
#>     Attrib V57    -0.09093503690164355
#>     Attrib V58    0.6889552653017835
#>     Attrib V59    0.44639766418920507
#>     Attrib V6    -0.19422340217621373
#>     Attrib V60    0.28320156930779244
#>     Attrib V7    -0.1410670649207996
#>     Attrib V8    -0.022558222227064093
#>     Attrib V9    0.46454204858613285
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.23376613114935993
#>     Attrib V1    -0.0877627361871401
#>     Attrib V10    -0.5368991159688062
#>     Attrib V11    -0.6427437117979921
#>     Attrib V12    -0.45778704755222627
#>     Attrib V13    -0.4723103116312957
#>     Attrib V14    0.07896540185511454
#>     Attrib V15    0.07677549748496089
#>     Attrib V16    0.09306903546247476
#>     Attrib V17    0.011318138858452346
#>     Attrib V18    0.2062759541506458
#>     Attrib V19    -0.25204233144273586
#>     Attrib V2    -0.12120010910965037
#>     Attrib V20    -0.726306267899896
#>     Attrib V21    -0.20734414682902952
#>     Attrib V22    -0.02705573946129645
#>     Attrib V23    -0.007779218687294894
#>     Attrib V24    -0.15095970603481412
#>     Attrib V25    -0.21510488261859215
#>     Attrib V26    -0.09077296624634437
#>     Attrib V27    -0.18742070367148989
#>     Attrib V28    -0.3588169540572801
#>     Attrib V29    0.04555841660998579
#>     Attrib V3    -0.2034605338402334
#>     Attrib V30    -0.296049750258034
#>     Attrib V31    0.9381874200553159
#>     Attrib V32    0.20914516722931362
#>     Attrib V33    -0.20385265276167513
#>     Attrib V34    0.08619425208865711
#>     Attrib V35    -0.008073447259459557
#>     Attrib V36    0.949785278385876
#>     Attrib V37    0.7211128618094265
#>     Attrib V38    -0.24998443962913844
#>     Attrib V39    -0.459331202826975
#>     Attrib V4    0.017813399010582234
#>     Attrib V40    0.4005229775709431
#>     Attrib V41    0.3247272121464945
#>     Attrib V42    -0.01040038484660946
#>     Attrib V43    0.011147024306190445
#>     Attrib V44    0.3008225955194069
#>     Attrib V45    -0.9665421011769432
#>     Attrib V46    -0.41019772624677897
#>     Attrib V47    -0.09700896833840085
#>     Attrib V48    -0.48030322529603126
#>     Attrib V49    -0.48320597990742603
#>     Attrib V5    0.11825647038764565
#>     Attrib V50    1.1999163852409138
#>     Attrib V51    0.1944623332098201
#>     Attrib V52    -0.25285906181915097
#>     Attrib V53    -0.4596431253231784
#>     Attrib V54    0.2779623839076675
#>     Attrib V55    0.33053486789011516
#>     Attrib V56    -0.003575045934077585
#>     Attrib V57    0.5075584505811325
#>     Attrib V58    0.21792487423290072
#>     Attrib V59    0.2530937207628453
#>     Attrib V6    0.42861554920382205
#>     Attrib V60    0.36861067534888403
#>     Attrib V7    0.7171310810453003
#>     Attrib V8    0.16020617446668042
#>     Attrib V9    -0.8189289277947438
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.207100259295282
#>     Attrib V1    0.21127180291762943
#>     Attrib V10    0.08971526347630446
#>     Attrib V11    0.04397162888268211
#>     Attrib V12    0.01380765155981639
#>     Attrib V13    0.03381436282464414
#>     Attrib V14    0.0875115584535748
#>     Attrib V15    0.016149545172196755
#>     Attrib V16    0.07551823604148898
#>     Attrib V17    0.06729398270569803
#>     Attrib V18    0.060317037495252065
#>     Attrib V19    0.020017967902440783
#>     Attrib V2    0.14262937706276407
#>     Attrib V20    0.11603422439031719
#>     Attrib V21    0.02985011843377476
#>     Attrib V22    -0.03367079048977801
#>     Attrib V23    -0.03892725141735349
#>     Attrib V24    -0.015574657249102387
#>     Attrib V25    -0.09629014447327983
#>     Attrib V26    -0.20087055960795297
#>     Attrib V27    -0.1596791330701988
#>     Attrib V28    -0.12812578599048985
#>     Attrib V29    -0.09549833694360345
#>     Attrib V3    0.09352294439369976
#>     Attrib V30    -0.05885300197340124
#>     Attrib V31    -0.10693307909785195
#>     Attrib V32    0.0026397812545543146
#>     Attrib V33    0.02651477806073276
#>     Attrib V34    -0.03559135640904731
#>     Attrib V35    0.049813213085175126
#>     Attrib V36    -0.0469828057319122
#>     Attrib V37    -0.025890635426571388
#>     Attrib V38    0.06592893730505839
#>     Attrib V39    0.05916272909851527
#>     Attrib V4    0.11460181806146262
#>     Attrib V40    -0.020184277180113272
#>     Attrib V41    -0.05916943962606915
#>     Attrib V42    0.01146381396894939
#>     Attrib V43    0.13070728392066672
#>     Attrib V44    0.05484276400751409
#>     Attrib V45    0.09438033499090866
#>     Attrib V46    0.08238867478708428
#>     Attrib V47    0.015235965692262083
#>     Attrib V48    0.13247026794304864
#>     Attrib V49    0.11523255429452693
#>     Attrib V5    -0.029630926805830612
#>     Attrib V50    0.051427770176739655
#>     Attrib V51    0.03814877896145231
#>     Attrib V52    0.11244467655757824
#>     Attrib V53    0.15165049453523413
#>     Attrib V54    0.1689862541912462
#>     Attrib V55    0.13057487851420144
#>     Attrib V56    0.1983063793303606
#>     Attrib V57    0.09467353367568153
#>     Attrib V58    0.2150008899513514
#>     Attrib V59    0.11818886388230296
#>     Attrib V6    0.01827708719806777
#>     Attrib V60    0.16272960131500547
#>     Attrib V7    -0.011268517056181973
#>     Attrib V8    -0.02252417568274078
#>     Attrib V9    0.16241938675503423
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.2802418229026494
#>     Attrib V1    0.5557200176585932
#>     Attrib V10    -0.3053125166418023
#>     Attrib V11    -0.4012582570393236
#>     Attrib V12    -0.6590197534304263
#>     Attrib V13    0.026670896285180542
#>     Attrib V14    0.2454790305884126
#>     Attrib V15    0.4390584478381295
#>     Attrib V16    0.26043817273781733
#>     Attrib V17    0.3762640113654926
#>     Attrib V18    0.2647611703703712
#>     Attrib V19    0.15324980651581757
#>     Attrib V2    0.01895794168473706
#>     Attrib V20    0.7337385250827323
#>     Attrib V21    0.6645576418547874
#>     Attrib V22    0.46271833202866597
#>     Attrib V23    0.3566777745822466
#>     Attrib V24    -0.006668622196578436
#>     Attrib V25    -0.3041651786721767
#>     Attrib V26    -0.817477370317408
#>     Attrib V27    -0.6090907249203623
#>     Attrib V28    -0.3202407874308731
#>     Attrib V29    -0.30271847297486104
#>     Attrib V3    0.19369602199210037
#>     Attrib V30    0.0719920969441073
#>     Attrib V31    -0.9534141014948943
#>     Attrib V32    -0.14105489488942224
#>     Attrib V33    0.44191755394883075
#>     Attrib V34    -0.28097268890546295
#>     Attrib V35    0.06466661801846182
#>     Attrib V36    -0.5287506010016025
#>     Attrib V37    -0.43642883330027726
#>     Attrib V38    0.25342830617090173
#>     Attrib V39    0.10780970388519233
#>     Attrib V4    0.038918062523320654
#>     Attrib V40    -0.3973331884897687
#>     Attrib V41    -0.23623515045259288
#>     Attrib V42    0.27879758159261453
#>     Attrib V43    0.44118605571016606
#>     Attrib V44    0.27788681699161766
#>     Attrib V45    0.6382147178047302
#>     Attrib V46    -0.049809043063858874
#>     Attrib V47    -0.031469296525898006
#>     Attrib V48    0.13458167544325533
#>     Attrib V49    0.025235682977116352
#>     Attrib V5    -0.5666259771501864
#>     Attrib V50    -0.5421350062223395
#>     Attrib V51    -0.21028359224680832
#>     Attrib V52    0.12956801417336541
#>     Attrib V53    0.7806934875188521
#>     Attrib V54    0.5698626738014972
#>     Attrib V55    -0.09968900105206052
#>     Attrib V56    0.8864772201349091
#>     Attrib V57    -0.09653389734835634
#>     Attrib V58    0.6767675818418919
#>     Attrib V59    0.43958604959021463
#>     Attrib V6    -0.18824805687912838
#>     Attrib V60    0.2497429250650319
#>     Attrib V7    -0.1204074979768196
#>     Attrib V8    0.016341431793190163
#>     Attrib V9    0.4488414835208655
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.06825434805034129
#>     Attrib V1    -0.09168474312722219
#>     Attrib V10    -1.6899112209287925E-4
#>     Attrib V11    -0.08350922334544329
#>     Attrib V12    0.010911436284496761
#>     Attrib V13    -0.12184667715891451
#>     Attrib V14    0.02506796026876614
#>     Attrib V15    0.04893251846492684
#>     Attrib V16    0.054869028364795194
#>     Attrib V17    0.10826219178993722
#>     Attrib V18    0.17036570222771089
#>     Attrib V19    0.026559137218367102
#>     Attrib V2    -0.09393801348371207
#>     Attrib V20    -0.204447133067852
#>     Attrib V21    -0.007221668170677839
#>     Attrib V22    0.09410660332426037
#>     Attrib V23    0.12813133679797414
#>     Attrib V24    -0.11363988572090984
#>     Attrib V25    -0.20238696378927784
#>     Attrib V26    -0.13734657194886996
#>     Attrib V27    -0.2375117439175035
#>     Attrib V28    -0.22236472025158002
#>     Attrib V29    -0.06613948711728075
#>     Attrib V3    -0.14246667270391902
#>     Attrib V30    -0.17105676617688162
#>     Attrib V31    0.3645729310758374
#>     Attrib V32    0.2285672008820505
#>     Attrib V33    0.06804372234159757
#>     Attrib V34    0.2343483107037282
#>     Attrib V35    0.08286768959444471
#>     Attrib V36    0.5000021478460589
#>     Attrib V37    0.3199194431850611
#>     Attrib V38    -0.04420454357733657
#>     Attrib V39    -0.06572555455665492
#>     Attrib V4    0.22927672432777588
#>     Attrib V40    0.42296364812280407
#>     Attrib V41    0.40830803666271787
#>     Attrib V42    0.1380723567903979
#>     Attrib V43    0.16447321057407838
#>     Attrib V44    0.1534488038843773
#>     Attrib V45    -0.3937216773942706
#>     Attrib V46    -0.09468257666979678
#>     Attrib V47    0.028234302135161267
#>     Attrib V48    -0.21442099212043308
#>     Attrib V49    -0.17873309420272585
#>     Attrib V5    0.29073035882402776
#>     Attrib V50    0.4974654009848359
#>     Attrib V51    0.1849868922563927
#>     Attrib V52    0.055771438590093654
#>     Attrib V53    -0.22333464604219674
#>     Attrib V54    0.03596363210957826
#>     Attrib V55    0.058341310094026516
#>     Attrib V56    -0.06336988586848519
#>     Attrib V57    0.30711463897527114
#>     Attrib V58    0.0592693404865619
#>     Attrib V59    0.06932446218005077
#>     Attrib V6    0.32808664602344256
#>     Attrib V60    0.02467598375172718
#>     Attrib V7    0.29375225503752683
#>     Attrib V8    0.19803385458955516
#>     Attrib V9    -0.15767854071331175
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.08716021330616486
#>     Attrib V1    0.5897455106376036
#>     Attrib V10    1.701826348094854
#>     Attrib V11    1.3022485520412848
#>     Attrib V12    0.701558118035234
#>     Attrib V13    0.5545520964693378
#>     Attrib V14    -0.5901018225649841
#>     Attrib V15    -0.9041548795043359
#>     Attrib V16    -0.7230120818033476
#>     Attrib V17    -0.9166100126254922
#>     Attrib V18    -0.07704954730755577
#>     Attrib V19    0.32861771083656965
#>     Attrib V2    0.9088013161948819
#>     Attrib V20    -0.1712647021779969
#>     Attrib V21    -0.45001733511404485
#>     Attrib V22    0.3137311460000919
#>     Attrib V23    0.36823239788336865
#>     Attrib V24    0.10925353258706665
#>     Attrib V25    0.4281000796913788
#>     Attrib V26    0.8882383424971776
#>     Attrib V27    1.3116669069878903
#>     Attrib V28    2.4851466135620757
#>     Attrib V29    1.572327027552724
#>     Attrib V3    0.2664425940759765
#>     Attrib V30    0.5550088159283351
#>     Attrib V31    -1.305486644160167
#>     Attrib V32    0.5873123937749979
#>     Attrib V33    0.5083925025909658
#>     Attrib V34    -0.31643011085832845
#>     Attrib V35    0.6566744790815471
#>     Attrib V36    -0.5470185096501909
#>     Attrib V37    -0.19274251722036564
#>     Attrib V38    -0.15218213476352108
#>     Attrib V39    0.34086002857896236
#>     Attrib V4    -0.03257354083992318
#>     Attrib V40    0.1472025556842908
#>     Attrib V41    1.520136751993808
#>     Attrib V42    0.081921600396165
#>     Attrib V43    -0.3437747576551014
#>     Attrib V44    -0.5425586825593104
#>     Attrib V45    1.3585213805710454
#>     Attrib V46    0.786548669476428
#>     Attrib V47    0.33295874908449435
#>     Attrib V48    0.5392961948269969
#>     Attrib V49    0.9478293036322594
#>     Attrib V5    0.520095590789142
#>     Attrib V50    -0.8809975607164652
#>     Attrib V51    1.3471029862432016
#>     Attrib V52    1.6077984296423227
#>     Attrib V53    1.1112143952097242
#>     Attrib V54    -0.42093239451751163
#>     Attrib V55    -0.5824821206382147
#>     Attrib V56    -1.075294558102392
#>     Attrib V57    -0.5128772741582769
#>     Attrib V58    -0.1436023799185783
#>     Attrib V59    -0.5491270057630456
#>     Attrib V6    -0.019494992233979852
#>     Attrib V60    0.25692991661521697
#>     Attrib V7    -0.6169899915188065
#>     Attrib V8    0.08428017990958347
#>     Attrib V9    1.8499886304955866
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.3459662142926778
#>     Attrib V1    0.014088624200604345
#>     Attrib V10    -0.6711945999648027
#>     Attrib V11    -0.7952413222347469
#>     Attrib V12    -0.5731334183378473
#>     Attrib V13    -0.49846188806992364
#>     Attrib V14    0.13983878495721852
#>     Attrib V15    0.009192870168595515
#>     Attrib V16    -0.10160416373268505
#>     Attrib V17    -0.2708317730939328
#>     Attrib V18    -0.19034509404808558
#>     Attrib V19    -0.33743047326172404
#>     Attrib V2    -0.013314057426026954
#>     Attrib V20    -0.6895926057636091
#>     Attrib V21    -0.30625781246849965
#>     Attrib V22    -0.1972501200806801
#>     Attrib V23    0.02247287522473944
#>     Attrib V24    -0.0304034676552748
#>     Attrib V25    -0.20749064058540975
#>     Attrib V26    -0.1720411119150166
#>     Attrib V27    -0.04949868332136909
#>     Attrib V28    -0.1966362318902154
#>     Attrib V29    -0.03128339530739663
#>     Attrib V3    -0.08888188733050523
#>     Attrib V30    -0.43566877272644483
#>     Attrib V31    0.6664348697578965
#>     Attrib V32    -3.495527665482318E-5
#>     Attrib V33    -0.33870032489420876
#>     Attrib V34    -0.1073689906105786
#>     Attrib V35    -0.052920942484959155
#>     Attrib V36    0.8112868895478937
#>     Attrib V37    0.5334987620413654
#>     Attrib V38    -0.11363595283376599
#>     Attrib V39    -0.38720747841019976
#>     Attrib V4    -0.06745286457680394
#>     Attrib V40    0.16432990471613515
#>     Attrib V41    0.07628050120485935
#>     Attrib V42    0.06573512198591337
#>     Attrib V43    0.07113093874831851
#>     Attrib V44    0.2916976375101034
#>     Attrib V45    -0.8645723918452115
#>     Attrib V46    -0.42120762636587916
#>     Attrib V47    -0.16698148697121248
#>     Attrib V48    -0.5250432020743939
#>     Attrib V49    -0.46584811949843885
#>     Attrib V5    -0.1437166703726909
#>     Attrib V50    1.2388644148628687
#>     Attrib V51    0.16268917542398692
#>     Attrib V52    -0.26664792435340406
#>     Attrib V53    -0.3506818840673299
#>     Attrib V54    0.29014791977076015
#>     Attrib V55    0.45022492980550727
#>     Attrib V56    0.16690321526339003
#>     Attrib V57    0.5046249397104247
#>     Attrib V58    0.3028403592483781
#>     Attrib V59    0.3341982628679476
#>     Attrib V6    0.3363552677245856
#>     Attrib V60    0.41527497946444664
#>     Attrib V7    0.6346405150480862
#>     Attrib V8    0.17375972828497097
#>     Attrib V9    -0.9157202064897777
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    -0.17577301948524054
#>     Attrib V1    0.32844673627272053
#>     Attrib V10    0.3158859957200452
#>     Attrib V11    0.08232813722373825
#>     Attrib V12    -0.25849476120338666
#>     Attrib V13    0.10951119859073946
#>     Attrib V14    -0.29937915665453035
#>     Attrib V15    -0.30058443076946884
#>     Attrib V16    -0.2349621841819146
#>     Attrib V17    0.0692534980642812
#>     Attrib V18    0.3455313958976855
#>     Attrib V19    0.26385580816925924
#>     Attrib V2    -0.14382234215371661
#>     Attrib V20    0.43739487962650847
#>     Attrib V21    0.28505721404367546
#>     Attrib V22    0.4175121195590437
#>     Attrib V23    0.4507285679900683
#>     Attrib V24    0.24653129624197423
#>     Attrib V25    0.14823694739791776
#>     Attrib V26    -0.25132669461458446
#>     Attrib V27    -0.22493440299531792
#>     Attrib V28    0.04687270585857943
#>     Attrib V29    -0.2962084959898846
#>     Attrib V3    -0.10920866170644407
#>     Attrib V30    0.21603148398196842
#>     Attrib V31    -0.99606798411417
#>     Attrib V32    0.15199442199926208
#>     Attrib V33    0.6511303892962403
#>     Attrib V34    -0.10799071525954737
#>     Attrib V35    0.3735579657406654
#>     Attrib V36    -0.45602077235975097
#>     Attrib V37    -0.5246392666741397
#>     Attrib V38    0.25067296852255333
#>     Attrib V39    0.11703890097249484
#>     Attrib V4    -0.029244006597270084
#>     Attrib V40    -0.5295391063279546
#>     Attrib V41    -0.06354676065305448
#>     Attrib V42    0.23223773293416355
#>     Attrib V43    0.3631697335479598
#>     Attrib V44    0.27823214201544405
#>     Attrib V45    1.0498190701888146
#>     Attrib V46    0.09571047348440047
#>     Attrib V47    -0.02018064154158573
#>     Attrib V48    0.44073714485198684
#>     Attrib V49    0.33101817458718025
#>     Attrib V5    -0.4511723057883133
#>     Attrib V50    -0.8356518200236963
#>     Attrib V51    0.1476189301992483
#>     Attrib V52    0.3651629569893877
#>     Attrib V53    0.6923716557444847
#>     Attrib V54    0.21611819837926605
#>     Attrib V55    -0.4628815469671539
#>     Attrib V56    0.3209196586619525
#>     Attrib V57    -0.4462276490055699
#>     Attrib V58    0.34037191457427474
#>     Attrib V59    0.018070667113032467
#>     Attrib V6    -0.27038119030131114
#>     Attrib V60    0.11884876013969026
#>     Attrib V7    -0.4357504365760427
#>     Attrib V8    -0.06063921062112804
#>     Attrib V9    0.9095056668604784
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.28448917569661336
#>     Attrib V1    -0.13420792901744472
#>     Attrib V10    -0.003711490386567424
#>     Attrib V11    0.09207305624262982
#>     Attrib V12    0.1291391003539121
#>     Attrib V13    -0.3932464769362962
#>     Attrib V14    0.4329430668995507
#>     Attrib V15    0.9276189383869895
#>     Attrib V16    0.7082868075359807
#>     Attrib V17    0.20510451975707597
#>     Attrib V18    -0.17802695751766986
#>     Attrib V19    0.09750967613513867
#>     Attrib V2    -0.06098522805616528
#>     Attrib V20    0.1522842928419849
#>     Attrib V21    0.08666518975847294
#>     Attrib V22    -0.43502915820543864
#>     Attrib V23    -1.0588013751335348
#>     Attrib V24    -0.9977363519927144
#>     Attrib V25    -0.953808859366
#>     Attrib V26    -0.08177953867535037
#>     Attrib V27    -0.24825927659684954
#>     Attrib V28    -0.9101483755054269
#>     Attrib V29    -0.3128764057162726
#>     Attrib V3    -0.14334283853247243
#>     Attrib V30    -0.6046596506053474
#>     Attrib V31    1.0301797994267965
#>     Attrib V32    -0.40114997703244837
#>     Attrib V33    -1.1659219656834279
#>     Attrib V34    0.2652653100422617
#>     Attrib V35    -0.09241135363355157
#>     Attrib V36    1.0487723395773534
#>     Attrib V37    0.9519790599670216
#>     Attrib V38    0.13815013332428633
#>     Attrib V39    -0.33479093114346564
#>     Attrib V4    0.02622811495076955
#>     Attrib V40    -0.04023631330682376
#>     Attrib V41    -1.0245589107174682
#>     Attrib V42    -1.100122583098651
#>     Attrib V43    -0.9447557338904774
#>     Attrib V44    -0.5116635216038056
#>     Attrib V45    -1.3646516987328012
#>     Attrib V46    -0.34579957994945393
#>     Attrib V47    -0.13327647513265875
#>     Attrib V48    -0.6498947050354167
#>     Attrib V49    -0.5246230513832244
#>     Attrib V5    0.01954711846375393
#>     Attrib V50    1.7488873134812593
#>     Attrib V51    0.05896172046650887
#>     Attrib V52    -0.2128874596433433
#>     Attrib V53    -0.858345356757089
#>     Attrib V54    0.0720061872081674
#>     Attrib V55    1.0104480507862204
#>     Attrib V56    -0.24773527165486575
#>     Attrib V57    0.6158532933624735
#>     Attrib V58    -0.06039313549720982
#>     Attrib V59    -0.25655032396247446
#>     Attrib V6    -0.04213629296774428
#>     Attrib V60    -0.15206988423098167
#>     Attrib V7    0.5488259999867545
#>     Attrib V8    -0.007924157251694345
#>     Attrib V9    -1.1437889405938741
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.1826725384306078
#>     Attrib V1    0.33192941725721753
#>     Attrib V10    -0.16406975751322825
#>     Attrib V11    -0.16803399245415876
#>     Attrib V12    -0.3371626730904824
#>     Attrib V13    0.012454060419935596
#>     Attrib V14    0.17862532677457102
#>     Attrib V15    0.23269139529588168
#>     Attrib V16    0.14006431653854567
#>     Attrib V17    0.20791987647530924
#>     Attrib V18    0.21788663156966168
#>     Attrib V19    0.09927716135958534
#>     Attrib V2    0.09158091777434207
#>     Attrib V20    0.5169319576017051
#>     Attrib V21    0.42611606845818434
#>     Attrib V22    0.28659055310135106
#>     Attrib V23    0.15452630342604778
#>     Attrib V24    0.020385897060871978
#>     Attrib V25    -0.15546185151003453
#>     Attrib V26    -0.5939468002566717
#>     Attrib V27    -0.41209519636143865
#>     Attrib V28    -0.2202654656319053
#>     Attrib V29    -0.20058590898936318
#>     Attrib V3    0.15817407772481926
#>     Attrib V30    -0.019046217424039637
#>     Attrib V31    -0.6230438449858784
#>     Attrib V32    -0.05499359729917202
#>     Attrib V33    0.25439125203349344
#>     Attrib V34    -0.2008944201318822
#>     Attrib V35    0.05311278869735558
#>     Attrib V36    -0.3540920293644614
#>     Attrib V37    -0.27803427202279396
#>     Attrib V38    0.20382661995224538
#>     Attrib V39    0.12777280983687167
#>     Attrib V4    0.024464847943418768
#>     Attrib V40    -0.25224926763056116
#>     Attrib V41    -0.12440536582194807
#>     Attrib V42    0.14485944775451423
#>     Attrib V43    0.30812845984830817
#>     Attrib V44    0.09239249691801212
#>     Attrib V45    0.46549246077262146
#>     Attrib V46    -0.033063916299767425
#>     Attrib V47    -0.01820828332920525
#>     Attrib V48    0.15081442152284022
#>     Attrib V49    0.05835007336239168
#>     Attrib V5    -0.43939316376831583
#>     Attrib V50    -0.25636552592812994
#>     Attrib V51    -0.001688182467576219
#>     Attrib V52    0.15181124212548255
#>     Attrib V53    0.4964591400876197
#>     Attrib V54    0.37361225160567546
#>     Attrib V55    0.03178869138465212
#>     Attrib V56    0.5301086765570155
#>     Attrib V57    -0.04804379703127999
#>     Attrib V58    0.39700722241482517
#>     Attrib V59    0.23973076152791992
#>     Attrib V6    -0.15234993520275839
#>     Attrib V60    0.19714147626325765
#>     Attrib V7    -0.15273072302633642
#>     Attrib V8    0.022808811946538176
#>     Attrib V9    0.2975196488002535
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.08607448303640282
#>     Attrib V1    -0.0772067691148647
#>     Attrib V10    0.10540346846741279
#>     Attrib V11    -0.009697343742264946
#>     Attrib V12    0.08219812515378108
#>     Attrib V13    -0.022099731741438877
#>     Attrib V14    0.06665925155540701
#>     Attrib V15    0.10533029543124571
#>     Attrib V16    0.19053905821550693
#>     Attrib V17    0.2477698625573517
#>     Attrib V18    0.26747557561144125
#>     Attrib V19    0.05007426008840474
#>     Attrib V2    -0.04915445072283134
#>     Attrib V20    -0.19321245495732098
#>     Attrib V21    0.04947063086378623
#>     Attrib V22    0.13869774756336797
#>     Attrib V23    0.017592488544554957
#>     Attrib V24    -0.17358096253482963
#>     Attrib V25    -0.1154741458517366
#>     Attrib V26    -0.013288768487298687
#>     Attrib V27    -0.15706090599468814
#>     Attrib V28    -0.23756690087847288
#>     Attrib V29    -0.06789705335912968
#>     Attrib V3    -0.1356310311607279
#>     Attrib V30    -0.05897319757292161
#>     Attrib V31    0.4493677457998282
#>     Attrib V32    0.09790950233526294
#>     Attrib V33    0.03452176222081282
#>     Attrib V34    0.20714342333766445
#>     Attrib V35    0.06997642797667102
#>     Attrib V36    0.4106182617464427
#>     Attrib V37    0.37970637088161074
#>     Attrib V38    -0.11346067696187916
#>     Attrib V39    -0.03616963919468703
#>     Attrib V4    0.19628027201241316
#>     Attrib V40    0.39243027555358134
#>     Attrib V41    0.35305749943239834
#>     Attrib V42    0.19004267075480763
#>     Attrib V43    0.048419425908403604
#>     Attrib V44    0.08066398049751304
#>     Attrib V45    -0.31103570547897086
#>     Attrib V46    -0.05479042688300674
#>     Attrib V47    0.01949464033574422
#>     Attrib V48    -0.10555661050546968
#>     Attrib V49    -0.12975237976990234
#>     Attrib V5    0.2895637947056119
#>     Attrib V50    0.41246570810270566
#>     Attrib V51    0.058971882917755965
#>     Attrib V52    -0.10426524382078814
#>     Attrib V53    -0.2864741641116944
#>     Attrib V54    0.035428720791211434
#>     Attrib V55    0.04409982727962089
#>     Attrib V56    -0.08194357893193734
#>     Attrib V57    0.23838180034445772
#>     Attrib V58    -2.811491274707804E-4
#>     Attrib V59    0.07167658047820116
#>     Attrib V6    0.28287467242925457
#>     Attrib V60    0.04640240505454461
#>     Attrib V7    0.24235309049074666
#>     Attrib V8    0.1635231216323809
#>     Attrib V9    -0.1982505484319874
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.2732859411511292
#>     Attrib V1    0.548803121531842
#>     Attrib V10    -0.3572041050549729
#>     Attrib V11    -0.433632425206424
#>     Attrib V12    -0.75627192253748
#>     Attrib V13    0.03286328018019489
#>     Attrib V14    0.34068575008156604
#>     Attrib V15    0.5651772524179897
#>     Attrib V16    0.37530017091917395
#>     Attrib V17    0.36453578708644224
#>     Attrib V18    0.22431541045467374
#>     Attrib V19    0.11568622327960137
#>     Attrib V2    0.19213920184953284
#>     Attrib V20    0.7883578866906572
#>     Attrib V21    0.6404906252257228
#>     Attrib V22    0.4040567591263359
#>     Attrib V23    0.2230498374978132
#>     Attrib V24    -0.08973597090879895
#>     Attrib V25    -0.4895087258129875
#>     Attrib V26    -0.9342474484507429
#>     Attrib V27    -0.6748934748016431
#>     Attrib V28    -0.3549958572964522
#>     Attrib V29    -0.23093197991840392
#>     Attrib V3    0.18190482557649626
#>     Attrib V30    0.02899579236227187
#>     Attrib V31    -0.8680627084968116
#>     Attrib V32    -0.197125400339259
#>     Attrib V33    0.3907506201006405
#>     Attrib V34    -0.22883398891002701
#>     Attrib V35    0.05425489355720522
#>     Attrib V36    -0.4723348230323458
#>     Attrib V37    -0.33777884825243315
#>     Attrib V38    0.3333750738929692
#>     Attrib V39    0.12514484230397013
#>     Attrib V4    0.04088267415724232
#>     Attrib V40    -0.31644026271535197
#>     Attrib V41    -0.27877861198188636
#>     Attrib V42    0.2224163758957716
#>     Attrib V43    0.3712197036458625
#>     Attrib V44    0.28624062841821546
#>     Attrib V45    0.5042057513013122
#>     Attrib V46    -0.07136384468398307
#>     Attrib V47    -0.09266494028024984
#>     Attrib V48    0.10776567998316174
#>     Attrib V49    -0.02239513375806147
#>     Attrib V5    -0.5667134891657347
#>     Attrib V50    -0.47822166996209
#>     Attrib V51    -0.26788361782152037
#>     Attrib V52    0.02510892325488832
#>     Attrib V53    0.7335216461639616
#>     Attrib V54    0.5940705120280564
#>     Attrib V55    0.009102503558312616
#>     Attrib V56    0.7917433195955164
#>     Attrib V57    -0.03939493867405844
#>     Attrib V58    0.6342164440818435
#>     Attrib V59    0.41086058113517
#>     Attrib V6    -0.18648389481710592
#>     Attrib V60    0.25417902678490817
#>     Attrib V7    -0.09187602451353441
#>     Attrib V8    0.024197159169444968
#>     Attrib V9    0.3559681260239869
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.21530281868876588
#>     Attrib V1    0.231092117199356
#>     Attrib V10    -0.030635862070004904
#>     Attrib V11    -0.008684665155640583
#>     Attrib V12    -0.03290761791791557
#>     Attrib V13    0.027108371554947063
#>     Attrib V14    0.13548928118634548
#>     Attrib V15    0.1042102240957047
#>     Attrib V16    0.07858096109617636
#>     Attrib V17    0.049682780481411296
#>     Attrib V18    0.1311076888133244
#>     Attrib V19    0.016436880854086913
#>     Attrib V2    0.12126544720116947
#>     Attrib V20    0.17312408677121852
#>     Attrib V21    0.11856333313265074
#>     Attrib V22    0.029523986974663376
#>     Attrib V23    0.060226734887905
#>     Attrib V24    -0.051236031923972185
#>     Attrib V25    -0.1481583552997734
#>     Attrib V26    -0.25419615158216585
#>     Attrib V27    -0.18322878022688568
#>     Attrib V28    -0.07008996916308767
#>     Attrib V29    -0.13075102007417008
#>     Attrib V3    0.14769325860331944
#>     Attrib V30    -0.01822828852158339
#>     Attrib V31    -0.25127750022328005
#>     Attrib V32    -0.027274996629800912
#>     Attrib V33    0.09000014286348594
#>     Attrib V34    -0.03316529893989757
#>     Attrib V35    0.06660824403446712
#>     Attrib V36    -0.021464838687840573
#>     Attrib V37    -0.04110250308965291
#>     Attrib V38    0.09241835553775592
#>     Attrib V39    0.11219172724669618
#>     Attrib V4    0.05382775573718966
#>     Attrib V40    -0.09662007082933302
#>     Attrib V41    -0.08543259453498549
#>     Attrib V42    0.058159597300516196
#>     Attrib V43    0.06276486330514668
#>     Attrib V44    0.08388292535954159
#>     Attrib V45    0.21229280207647838
#>     Attrib V46    0.049648092084531054
#>     Attrib V47    0.023466358181877485
#>     Attrib V48    0.061504542816804904
#>     Attrib V49    0.14188925667484786
#>     Attrib V5    -0.09931649879940355
#>     Attrib V50    -0.004861906457225804
#>     Attrib V51    0.02603978461765333
#>     Attrib V52    0.12782499785450832
#>     Attrib V53    0.21647126239476727
#>     Attrib V54    0.14142558220829565
#>     Attrib V55    0.09165530613345552
#>     Attrib V56    0.2073485745180464
#>     Attrib V57    0.05298335186552789
#>     Attrib V58    0.2586834623294063
#>     Attrib V59    0.11882756972078859
#>     Attrib V6    0.011325976597573296
#>     Attrib V60    0.1381608300954029
#>     Attrib V7    -0.024823861505884524
#>     Attrib V8    0.04838797269751419
#>     Attrib V9    0.16781670334543855
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
#>  0.1884058 
```
