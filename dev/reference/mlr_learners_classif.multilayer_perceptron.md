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

- [`LearnerClassifMultilayerPerceptron$new()`](#method-LearnerClassifMultilayerPerceptron-initialize)

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

### `LearnerClassifMultilayerPerceptron$new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class.

#### Usage

    LearnerClassifMultilayerPerceptron$new()

------------------------------------------------------------------------

### `LearnerClassifMultilayerPerceptron$marshal()`

Marshal the learner's model.

#### Usage

    LearnerClassifMultilayerPerceptron$marshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::marshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifMultilayerPerceptron$unmarshal()`

Unmarshal the learner's model.

#### Usage

    LearnerClassifMultilayerPerceptron$unmarshal(...)

#### Arguments

- `...`:

  (any)  
  Additional arguments passed to
  [`mlr3::unmarshal_model()`](https://mlr3.mlr-org.com/reference/marshaling.html).

------------------------------------------------------------------------

### `LearnerClassifMultilayerPerceptron$clone()`

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
#>     Threshold    -0.7872959552671407
#>     Node 2    1.4610146944590152
#>     Node 3    1.1912775043954078
#>     Node 4    0.8035653853949977
#>     Node 5    -2.0768364782488145
#>     Node 6    1.1354049097782817
#>     Node 7    2.671280223309077
#>     Node 8    1.5114420415827508
#>     Node 9    2.807441379736326
#>     Node 10    -1.0898444735788515
#>     Node 11    1.3015916637984823
#>     Node 12    1.1035802416946388
#>     Node 13    0.751033004493715
#>     Node 14    1.1231972855496293
#>     Node 15    -3.0499672110929335
#>     Node 16    -0.4765505496997594
#>     Node 17    1.1493408882348433
#>     Node 18    0.5392233747745714
#>     Node 19    2.5125510303665677
#>     Node 20    1.5248813444874694
#>     Node 21    -2.602926301083543
#>     Node 22    0.09079853347346802
#>     Node 23    1.5831982290407436
#>     Node 24    -2.498754208227873
#>     Node 25    4.491214896919304
#>     Node 26    0.1104034252513818
#>     Node 27    2.9617582241855613
#>     Node 28    -1.8628365853625894
#>     Node 29    1.030880551318526
#>     Node 30    -0.9315955284581665
#>     Node 31    1.6144997668434238
#>     Node 32    0.6386210684905401
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7777488499922938
#>     Node 2    -1.5249649192225763
#>     Node 3    -1.1829957633745622
#>     Node 4    -0.7622663863052405
#>     Node 5    2.0961515242219932
#>     Node 6    -1.1263534924688012
#>     Node 7    -2.648538448760393
#>     Node 8    -1.533534015967982
#>     Node 9    -2.785131000092394
#>     Node 10    1.0321939356509486
#>     Node 11    -1.2770725923184385
#>     Node 12    -1.1838961551558587
#>     Node 13    -0.7034134597326698
#>     Node 14    -1.0610622269984085
#>     Node 15    3.028376259007911
#>     Node 16    0.4626295834321857
#>     Node 17    -1.120543481923685
#>     Node 18    -0.49717298431400214
#>     Node 19    -2.5012084465879827
#>     Node 20    -1.5216305664110987
#>     Node 21    2.6585156984482383
#>     Node 22    -0.1382832135218724
#>     Node 23    -1.6450576443811535
#>     Node 24    2.4755432869768406
#>     Node 25    -4.475209639837563
#>     Node 26    -0.18909137313901878
#>     Node 27    -2.9962072294651625
#>     Node 28    1.8466770213897223
#>     Node 29    -1.0634972316070652
#>     Node 30    1.0075577229548185
#>     Node 31    -1.565147356076871
#>     Node 32    -0.655053012526339
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.14380568736075125
#>     Attrib V1    0.20511807459534165
#>     Attrib V10    0.07945393768594668
#>     Attrib V11    -0.18934014675072008
#>     Attrib V12    -0.19194100678321657
#>     Attrib V13    -0.05217662253699136
#>     Attrib V14    -0.15683347212871254
#>     Attrib V15    -0.05789381872864397
#>     Attrib V16    -0.12373499932671685
#>     Attrib V17    -0.052801654259876825
#>     Attrib V18    0.3684069412390437
#>     Attrib V19    0.7059747911853254
#>     Attrib V2    0.12602249910110558
#>     Attrib V20    0.09978525985482584
#>     Attrib V21    0.15394360700133172
#>     Attrib V22    0.36402857146525114
#>     Attrib V23    0.44405125480156776
#>     Attrib V24    0.37759488952145337
#>     Attrib V25    0.14907361887948506
#>     Attrib V26    -0.47841785936415027
#>     Attrib V27    -0.914387092586381
#>     Attrib V28    -0.10209608077603612
#>     Attrib V29    -0.06553168436884525
#>     Attrib V3    -0.34017038760301804
#>     Attrib V30    0.2203936514364015
#>     Attrib V31    -0.9036599754188234
#>     Attrib V32    -0.1108541449902152
#>     Attrib V33    0.06925850296427412
#>     Attrib V34    -0.08995969151701091
#>     Attrib V35    0.26653860377711996
#>     Attrib V36    -0.2337100851704466
#>     Attrib V37    -0.6670226525719328
#>     Attrib V38    0.23148476140466553
#>     Attrib V39    0.13613915043314284
#>     Attrib V4    -0.08058146231604653
#>     Attrib V40    -0.3062356450792541
#>     Attrib V41    0.018399301188960705
#>     Attrib V42    0.5011116378126437
#>     Attrib V43    0.44212795648014075
#>     Attrib V44    0.4503076078865667
#>     Attrib V45    0.4926915009007756
#>     Attrib V46    0.04127669134957122
#>     Attrib V47    -0.04249938148622804
#>     Attrib V48    -0.05643431879352422
#>     Attrib V49    0.5935450124816294
#>     Attrib V5    -0.1915525665442971
#>     Attrib V50    -0.32255794031829027
#>     Attrib V51    0.42614253252629786
#>     Attrib V52    0.485968011705672
#>     Attrib V53    0.3860382020868556
#>     Attrib V54    0.4947531031394232
#>     Attrib V55    -0.3143137262764825
#>     Attrib V56    0.12736185206731332
#>     Attrib V57    -0.8334100979538194
#>     Attrib V58    0.33755338035650806
#>     Attrib V59    0.32299419993084905
#>     Attrib V6    -0.3913306942411263
#>     Attrib V60    0.35531946866817743
#>     Attrib V7    -0.1410782140568039
#>     Attrib V8    0.1477423431032104
#>     Attrib V9    0.3420652737570991
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.1317175090434695
#>     Attrib V1    0.1388431349627436
#>     Attrib V10    0.03893385783640952
#>     Attrib V11    -0.18742493079603573
#>     Attrib V12    -0.13591699010539857
#>     Attrib V13    -0.0025185501068573984
#>     Attrib V14    -0.1382801372747982
#>     Attrib V15    0.02513121644381737
#>     Attrib V16    -0.09575653721154065
#>     Attrib V17    -0.04344641144034279
#>     Attrib V18    0.21246727451323844
#>     Attrib V19    0.5786964217633942
#>     Attrib V2    0.12897459688295543
#>     Attrib V20    0.07738672044141132
#>     Attrib V21    0.06641494032729009
#>     Attrib V22    0.31454792634862827
#>     Attrib V23    0.38420420382248893
#>     Attrib V24    0.3352498005241366
#>     Attrib V25    0.17190403342250687
#>     Attrib V26    -0.422604370219082
#>     Attrib V27    -0.8342503699406353
#>     Attrib V28    -0.27475008382520405
#>     Attrib V29    -0.3285742371307928
#>     Attrib V3    -0.24836555682477152
#>     Attrib V30    0.10139752570404365
#>     Attrib V31    -0.5832382995434874
#>     Attrib V32    -0.024896134957183534
#>     Attrib V33    0.1616022409341405
#>     Attrib V34    0.013845719453268535
#>     Attrib V35    0.3028541178307286
#>     Attrib V36    -0.14521212958677526
#>     Attrib V37    -0.5045426672042763
#>     Attrib V38    0.10226957110814634
#>     Attrib V39    0.08095268665817626
#>     Attrib V4    -0.08007027447678094
#>     Attrib V40    -0.25686856003884706
#>     Attrib V41    -0.06676136375053589
#>     Attrib V42    0.3521811684152792
#>     Attrib V43    0.34090684293148016
#>     Attrib V44    0.33971660244653595
#>     Attrib V45    0.3634370531605477
#>     Attrib V46    0.04978136417653725
#>     Attrib V47    0.02156934669814333
#>     Attrib V48    -0.06435921939971764
#>     Attrib V49    0.42661732187101603
#>     Attrib V5    -0.21078723897936097
#>     Attrib V50    -0.18688268818037995
#>     Attrib V51    0.29852541872263
#>     Attrib V52    0.37577414303116846
#>     Attrib V53    0.2543009142568892
#>     Attrib V54    0.5011443137892821
#>     Attrib V55    -0.12962680216672157
#>     Attrib V56    0.15344211492134155
#>     Attrib V57    -0.5607060914865541
#>     Attrib V58    0.3318426167945105
#>     Attrib V59    0.23609378914688792
#>     Attrib V6    -0.3343837079641315
#>     Attrib V60    0.25860491477642567
#>     Attrib V7    -0.14440737004148252
#>     Attrib V8    0.10695338602522049
#>     Attrib V9    0.21575301523466914
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.09185600502272356
#>     Attrib V1    0.15646974218386522
#>     Attrib V10    -0.02635765872950351
#>     Attrib V11    -0.12134139632180553
#>     Attrib V12    -0.12449128124492402
#>     Attrib V13    0.01868922731502537
#>     Attrib V14    -0.0049933206584380505
#>     Attrib V15    0.09095668369607739
#>     Attrib V16    -0.04472960947486803
#>     Attrib V17    -0.03200996501804527
#>     Attrib V18    0.12013840668113472
#>     Attrib V19    0.3262820705568037
#>     Attrib V2    0.1169283019534587
#>     Attrib V20    0.07962769397264895
#>     Attrib V21    0.1869958855546783
#>     Attrib V22    0.2076728779447207
#>     Attrib V23    0.21375016613983552
#>     Attrib V24    0.11139818724504455
#>     Attrib V25    -0.057549986794143394
#>     Attrib V26    -0.3276507833009585
#>     Attrib V27    -0.5820715302226676
#>     Attrib V28    -0.0659675385078152
#>     Attrib V29    0.025129795595605544
#>     Attrib V3    -0.12999544725477713
#>     Attrib V30    0.13425379750567432
#>     Attrib V31    -0.4603849045991426
#>     Attrib V32    -0.1403072378969452
#>     Attrib V33    0.026711511904922332
#>     Attrib V34    -0.04188141891175804
#>     Attrib V35    0.12795806303637325
#>     Attrib V36    -0.1377671104302028
#>     Attrib V37    -0.3163478114886045
#>     Attrib V38    0.06275307158071955
#>     Attrib V39    0.1021785256594591
#>     Attrib V4    -0.022161385351367344
#>     Attrib V40    -0.16334402591118022
#>     Attrib V41    -0.054376059283481375
#>     Attrib V42    0.2790917324964007
#>     Attrib V43    0.22919929579934578
#>     Attrib V44    0.2538499589418454
#>     Attrib V45    0.33665248383876906
#>     Attrib V46    0.015414636527529219
#>     Attrib V47    -0.042442675530906346
#>     Attrib V48    -0.02311195486590154
#>     Attrib V49    0.365893581011432
#>     Attrib V5    -0.056617309661505785
#>     Attrib V50    -0.09635179233572234
#>     Attrib V51    0.2604266352217534
#>     Attrib V52    0.24914078246493407
#>     Attrib V53    0.2774017997474674
#>     Attrib V54    0.3047510602161158
#>     Attrib V55    -0.11940939296408921
#>     Attrib V56    0.09535854593497112
#>     Attrib V57    -0.39421958680658015
#>     Attrib V58    0.21030502414214283
#>     Attrib V59    0.20724233507856918
#>     Attrib V6    -0.23608246270141145
#>     Attrib V60    0.1826286162281125
#>     Attrib V7    -0.10589507496518757
#>     Attrib V8    0.026272481533829665
#>     Attrib V9    0.15042424208454355
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.053279100125276015
#>     Attrib V1    -0.06914788630238997
#>     Attrib V10    -0.7287219729459564
#>     Attrib V11    -0.36394456771620054
#>     Attrib V12    -0.3054493818208205
#>     Attrib V13    -0.5088630695935822
#>     Attrib V14    0.21452565007578211
#>     Attrib V15    0.40956978938922317
#>     Attrib V16    0.6941416634634722
#>     Attrib V17    0.9229855497913642
#>     Attrib V18    0.3065552764650159
#>     Attrib V19    -0.674637676761679
#>     Attrib V2    -0.07636340146637524
#>     Attrib V20    -0.08928238371792105
#>     Attrib V21    -0.1445114939842236
#>     Attrib V22    -0.540478322160856
#>     Attrib V23    -0.43275983858213024
#>     Attrib V24    -0.21460281808502424
#>     Attrib V25    0.2678140683659805
#>     Attrib V26    0.13876760229604923
#>     Attrib V27    0.48234992312317077
#>     Attrib V28    -0.18698846565038135
#>     Attrib V29    0.348187140304604
#>     Attrib V3    0.3913095111369061
#>     Attrib V30    0.25137491589016103
#>     Attrib V31    1.2629916175884484
#>     Attrib V32    0.30329549753710244
#>     Attrib V33    0.12446661008730216
#>     Attrib V34    0.13765657782283502
#>     Attrib V35    -0.02732831432430246
#>     Attrib V36    0.7743187993320999
#>     Attrib V37    1.1554822953244066
#>     Attrib V38    -0.21446954380766906
#>     Attrib V39    -0.13386024124667922
#>     Attrib V4    -0.09476116040156635
#>     Attrib V40    0.29764030602938113
#>     Attrib V41    -0.08645465782316354
#>     Attrib V42    0.12445969236888992
#>     Attrib V43    -0.11784783546258182
#>     Attrib V44    0.09996972169832143
#>     Attrib V45    -0.267175060319559
#>     Attrib V46    0.054665799457121134
#>     Attrib V47    0.2835587089947733
#>     Attrib V48    0.20074139600565385
#>     Attrib V49    -1.016897332697407
#>     Attrib V5    0.10367948219938138
#>     Attrib V50    0.605214218264729
#>     Attrib V51    -0.48311832106450414
#>     Attrib V52    -0.7604976278018725
#>     Attrib V53    -0.3822085649406969
#>     Attrib V54    -0.30181631818095056
#>     Attrib V55    0.656710166866895
#>     Attrib V56    0.2414952088737978
#>     Attrib V57    0.7639328280545745
#>     Attrib V58    -0.5609882049313382
#>     Attrib V59    -0.29417414713916185
#>     Attrib V6    0.6023580280071139
#>     Attrib V60    -0.049930099705922576
#>     Attrib V7    0.2633635445107838
#>     Attrib V8    -0.03739533155274389
#>     Attrib V9    -0.772442890742285
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.04013331209884554
#>     Attrib V1    0.14133822525039405
#>     Attrib V10    0.07371083032747178
#>     Attrib V11    -0.07682437644773113
#>     Attrib V12    -0.042323234793306054
#>     Attrib V13    -0.07400595287483826
#>     Attrib V14    -0.21528012362375512
#>     Attrib V15    -0.09722826631984899
#>     Attrib V16    -0.07341043009268568
#>     Attrib V17    -0.08001751473703171
#>     Attrib V18    0.27883061871103365
#>     Attrib V19    0.5532689611603571
#>     Attrib V2    0.10813323974098223
#>     Attrib V20    0.009007534824828531
#>     Attrib V21    0.08237819348788089
#>     Attrib V22    0.30031978635577466
#>     Attrib V23    0.3839343267430179
#>     Attrib V24    0.4086160260666873
#>     Attrib V25    0.2996183946655459
#>     Attrib V26    -0.22314098988917677
#>     Attrib V27    -0.6229251783663073
#>     Attrib V28    -0.14461377741556122
#>     Attrib V29    -0.1378613027046016
#>     Attrib V3    -0.2873335408393561
#>     Attrib V30    0.14686951811618235
#>     Attrib V31    -0.6325320421053431
#>     Attrib V32    -0.00677883590970911
#>     Attrib V33    0.12709470313414747
#>     Attrib V34    6.000320914217274E-4
#>     Attrib V35    0.2809336739460049
#>     Attrib V36    -0.22425079334965842
#>     Attrib V37    -0.542230391947936
#>     Attrib V38    0.06894234180876119
#>     Attrib V39    0.05740009685555057
#>     Attrib V4    -0.032157383949404
#>     Attrib V40    -0.2420035923695234
#>     Attrib V41    0.0532854518579217
#>     Attrib V42    0.34759206270049253
#>     Attrib V43    0.3205361609827346
#>     Attrib V44    0.34311909190486
#>     Attrib V45    0.4205241864840148
#>     Attrib V46    0.08050515889300221
#>     Attrib V47    -0.017190317082268713
#>     Attrib V48    -0.02856891824470602
#>     Attrib V49    0.5392617692766855
#>     Attrib V5    -0.16020773621409126
#>     Attrib V50    -0.21867214875308427
#>     Attrib V51    0.3420388789158444
#>     Attrib V52    0.3710554000874872
#>     Attrib V53    0.3251579410588829
#>     Attrib V54    0.34361966891075185
#>     Attrib V55    -0.2991325698673504
#>     Attrib V56    0.1278512652029267
#>     Attrib V57    -0.5925430971016561
#>     Attrib V58    0.3165646226272318
#>     Attrib V59    0.25987858434610367
#>     Attrib V6    -0.23074151573010146
#>     Attrib V60    0.2936273310196566
#>     Attrib V7    -0.13041901228833072
#>     Attrib V8    0.059292729860398276
#>     Attrib V9    0.33499839377036245
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.24393937635569302
#>     Attrib V1    0.616575567058053
#>     Attrib V10    0.9008935366222008
#>     Attrib V11    1.0133307489430805
#>     Attrib V12    0.3495407336944967
#>     Attrib V13    0.09118235609998045
#>     Attrib V14    -0.1626751861425765
#>     Attrib V15    -0.0490481483894796
#>     Attrib V16    -0.20452506068948273
#>     Attrib V17    -0.5853123821050539
#>     Attrib V18    -0.5291772219721634
#>     Attrib V19    -0.2839589311345241
#>     Attrib V2    0.5018606928305489
#>     Attrib V20    -0.4386005200027853
#>     Attrib V21    0.5042593957012972
#>     Attrib V22    0.5920288263229982
#>     Attrib V23    -0.14615923407872608
#>     Attrib V24    -0.34360051613884984
#>     Attrib V25    -0.04605513444935527
#>     Attrib V26    0.8919402864200031
#>     Attrib V27    0.6959556644349721
#>     Attrib V28    1.4010486470381633
#>     Attrib V29    1.5612789908932843
#>     Attrib V3    -0.14360903305848438
#>     Attrib V30    1.0897298404485478
#>     Attrib V31    -0.6296591602441814
#>     Attrib V32    -0.10103795265570516
#>     Attrib V33    -0.39091778788829123
#>     Attrib V34    -0.46439238925610304
#>     Attrib V35    -0.3172847141571324
#>     Attrib V36    -0.522894285316936
#>     Attrib V37    -0.24507134761686536
#>     Attrib V38    0.04492009744909293
#>     Attrib V39    0.5913772610389102
#>     Attrib V4    0.314986970238444
#>     Attrib V40    0.5164844711477725
#>     Attrib V41    0.5309968456620375
#>     Attrib V42    -0.31489212565659647
#>     Attrib V43    -0.17320802423938159
#>     Attrib V44    0.40898502285376365
#>     Attrib V45    0.6998754454141818
#>     Attrib V46    0.42042564019076334
#>     Attrib V47    0.003974719948068988
#>     Attrib V48    0.03085758067794205
#>     Attrib V49    1.198896879097806
#>     Attrib V5    0.3027294730088891
#>     Attrib V50    -0.45011017804975006
#>     Attrib V51    0.40829689545859743
#>     Attrib V52    0.6517911650568832
#>     Attrib V53    0.45767504792889513
#>     Attrib V54    -0.2604263157056204
#>     Attrib V55    -0.6930637976886557
#>     Attrib V56    -0.4216370109823322
#>     Attrib V57    -0.896245660136924
#>     Attrib V58    0.27624440288261987
#>     Attrib V59    0.02349772819492462
#>     Attrib V6    -0.2170065522646068
#>     Attrib V60    0.14014374996709175
#>     Attrib V7    -0.29379576942765295
#>     Attrib V8    0.11502671584108054
#>     Attrib V9    0.9237802928381892
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.07543328992215563
#>     Attrib V1    0.2169685747489306
#>     Attrib V10    0.6848949947766342
#>     Attrib V11    0.5953557236787068
#>     Attrib V12    0.16885628435181851
#>     Attrib V13    0.006928863243639966
#>     Attrib V14    -0.3091395231157826
#>     Attrib V15    -0.21170802125438362
#>     Attrib V16    -0.19048066743931258
#>     Attrib V17    -0.45986110223319915
#>     Attrib V18    -0.3474046476493263
#>     Attrib V19    0.08259706506521265
#>     Attrib V2    0.22714920925104148
#>     Attrib V20    -0.28049931163088465
#>     Attrib V21    0.1656308118902188
#>     Attrib V22    0.3342193255185753
#>     Attrib V23    0.03038555449975239
#>     Attrib V24    0.0750809394450178
#>     Attrib V25    0.3114015281217472
#>     Attrib V26    0.6019308369351856
#>     Attrib V27    0.23669760971612075
#>     Attrib V28    0.8114043356155393
#>     Attrib V29    0.7609713251680676
#>     Attrib V3    -0.25235741061118355
#>     Attrib V30    0.7075332798288376
#>     Attrib V31    -0.32628672142018433
#>     Attrib V32    0.1836346755738767
#>     Attrib V33    0.07589304133278102
#>     Attrib V34    -0.023494578437692988
#>     Attrib V35    0.04402034999656554
#>     Attrib V36    -0.23722199930349616
#>     Attrib V37    -0.42345221110402986
#>     Attrib V38    0.03672553941563964
#>     Attrib V39    0.3353895302384029
#>     Attrib V4    0.18280666325414968
#>     Attrib V40    0.18985730871209852
#>     Attrib V41    0.24107329193535568
#>     Attrib V42    -0.25657559683478737
#>     Attrib V43    -0.10701877682254778
#>     Attrib V44    0.3136500659275601
#>     Attrib V45    0.48038691945194467
#>     Attrib V46    0.22975323453552332
#>     Attrib V47    0.0676464993424349
#>     Attrib V48    0.18821987808571056
#>     Attrib V49    0.9472370563293131
#>     Attrib V5    0.0880666211664216
#>     Attrib V50    -0.36050331594349216
#>     Attrib V51    0.33315009749244684
#>     Attrib V52    0.41774836748697647
#>     Attrib V53    0.21561165469852067
#>     Attrib V54    -0.06892843766724853
#>     Attrib V55    -0.4163414200248388
#>     Attrib V56    -0.19862110281966164
#>     Attrib V57    -0.5765921763179097
#>     Attrib V58    0.21735666873820986
#>     Attrib V59    0.10820853721521562
#>     Attrib V6    -0.2677417522021279
#>     Attrib V60    0.11787212838416349
#>     Attrib V7    -0.1928494763942957
#>     Attrib V8    0.136880105720693
#>     Attrib V9    0.6667388122104236
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.24849277518609716
#>     Attrib V1    0.6572307679421229
#>     Attrib V10    1.049106945012949
#>     Attrib V11    1.1835094020684644
#>     Attrib V12    0.6963110335400926
#>     Attrib V13    0.25231433236529116
#>     Attrib V14    -0.2452582726193875
#>     Attrib V15    -0.13474596153042195
#>     Attrib V16    -0.33722622381627676
#>     Attrib V17    -0.6595665393205253
#>     Attrib V18    -0.692718493161057
#>     Attrib V19    -0.5320715602951883
#>     Attrib V2    0.5661448161730973
#>     Attrib V20    -0.5699788346211737
#>     Attrib V21    0.3912757972806482
#>     Attrib V22    0.48327412125544833
#>     Attrib V23    -0.3145303142288097
#>     Attrib V24    -0.3623359371594293
#>     Attrib V25    0.032606787881312174
#>     Attrib V26    1.0699008865661919
#>     Attrib V27    0.7825470288173397
#>     Attrib V28    1.2251015413010493
#>     Attrib V29    1.2588550874286322
#>     Attrib V3    -0.10813290062840412
#>     Attrib V30    1.0462635818257675
#>     Attrib V31    -0.45465317969234537
#>     Attrib V32    -0.040061096413585164
#>     Attrib V33    -0.37627811364895974
#>     Attrib V34    -0.2543650492166487
#>     Attrib V35    -0.24397207878597318
#>     Attrib V36    -0.4356860485477782
#>     Attrib V37    -0.17844571629826642
#>     Attrib V38    0.06382172155754301
#>     Attrib V39    0.636125554111098
#>     Attrib V4    0.29954739555671694
#>     Attrib V40    0.537304904209898
#>     Attrib V41    0.45299564585381263
#>     Attrib V42    -0.5329831286480674
#>     Attrib V43    -0.16772065017323926
#>     Attrib V44    0.19372244710075928
#>     Attrib V45    0.5902442661606236
#>     Attrib V46    0.37736597986807824
#>     Attrib V47    -0.037425361652287575
#>     Attrib V48    0.08532661932579719
#>     Attrib V49    1.3053943088065307
#>     Attrib V5    0.2200551778324078
#>     Attrib V50    -0.35081970292065995
#>     Attrib V51    0.4430010777091387
#>     Attrib V52    0.6412963906653584
#>     Attrib V53    0.54697329336853
#>     Attrib V54    -0.2004565511384394
#>     Attrib V55    -0.5621661051598257
#>     Attrib V56    -0.40971364237090596
#>     Attrib V57    -0.8866874214819335
#>     Attrib V58    0.20387026118608192
#>     Attrib V59    0.011033669058854669
#>     Attrib V6    -0.2812362174118621
#>     Attrib V60    0.09974151494456397
#>     Attrib V7    -0.37062290709149737
#>     Attrib V8    0.05634241822321361
#>     Attrib V9    0.8685653861320101
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.0249397761061369
#>     Attrib V1    -0.07482344877479576
#>     Attrib V10    -0.2030183653212523
#>     Attrib V11    -0.139682376480771
#>     Attrib V12    -0.1745548894079011
#>     Attrib V13    -0.1613351692771592
#>     Attrib V14    0.1945342417751151
#>     Attrib V15    0.11249206357747138
#>     Attrib V16    0.3036744863777514
#>     Attrib V17    0.1975817779926686
#>     Attrib V18    -0.017173664130982435
#>     Attrib V19    -0.30324230057585194
#>     Attrib V2    -0.15471854654403489
#>     Attrib V20    0.2627293649087942
#>     Attrib V21    0.11768068869831731
#>     Attrib V22    -0.3006084044079556
#>     Attrib V23    -0.22132244939591383
#>     Attrib V24    -0.2445586091099252
#>     Attrib V25    -0.15509633302119924
#>     Attrib V26    0.06451044394526494
#>     Attrib V27    0.3576276409627268
#>     Attrib V28    0.02076811246105119
#>     Attrib V29    0.07639355908271382
#>     Attrib V3    0.17150506448443398
#>     Attrib V30    -0.09055895739824657
#>     Attrib V31    0.4081947871100925
#>     Attrib V32    -0.1468113461729841
#>     Attrib V33    8.241279838558396E-4
#>     Attrib V34    0.08912137878697818
#>     Attrib V35    -0.06878241926723366
#>     Attrib V36    0.3775857174829465
#>     Attrib V37    0.5303962069750283
#>     Attrib V38    -0.03293453256904539
#>     Attrib V39    -0.07815910838090097
#>     Attrib V4    0.04155191130645044
#>     Attrib V40    0.18642582994076973
#>     Attrib V41    -0.0072025533752978176
#>     Attrib V42    -0.11338886798808762
#>     Attrib V43    -0.18076116811395396
#>     Attrib V44    -0.08365075827006303
#>     Attrib V45    -0.2201263943508336
#>     Attrib V46    -0.09771912707324479
#>     Attrib V47    0.02656746406023758
#>     Attrib V48    -0.009967880313601749
#>     Attrib V49    -0.562246032212062
#>     Attrib V5    0.12299465392291187
#>     Attrib V50    0.34334493407151173
#>     Attrib V51    -0.2910420193609791
#>     Attrib V52    -0.4245075444060882
#>     Attrib V53    -0.28149268627946317
#>     Attrib V54    -0.19888141023124392
#>     Attrib V55    0.315253265610005
#>     Attrib V56    -0.027820937954314222
#>     Attrib V57    0.5518496577492246
#>     Attrib V58    -0.26824438015461366
#>     Attrib V59    -0.10616259006658041
#>     Attrib V6    0.3548030680812917
#>     Attrib V60    -0.10232962778453886
#>     Attrib V7    0.25419675651805396
#>     Attrib V8    0.21142847664207154
#>     Attrib V9    -0.26077658223351896
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.07222578026917363
#>     Attrib V1    0.038229843605689776
#>     Attrib V10    0.17053104444108752
#>     Attrib V11    -0.041390927455131184
#>     Attrib V12    -0.07428920930196171
#>     Attrib V13    -0.12004828796109779
#>     Attrib V14    -0.30715297423516674
#>     Attrib V15    -0.14646014928524345
#>     Attrib V16    -0.11273962107274518
#>     Attrib V17    -0.048408271672572216
#>     Attrib V18    0.2462412615804915
#>     Attrib V19    0.6116829895512598
#>     Attrib V2    0.022475142087504077
#>     Attrib V20    0.06599826709447335
#>     Attrib V21    0.05182067529553642
#>     Attrib V22    0.30350034047687485
#>     Attrib V23    0.406071358522483
#>     Attrib V24    0.41770687239512233
#>     Attrib V25    0.3523521879091333
#>     Attrib V26    -0.25565179812957683
#>     Attrib V27    -0.7075936735360495
#>     Attrib V28    -0.04328643953555215
#>     Attrib V29    -0.1133384712853315
#>     Attrib V3    -0.4316185358086102
#>     Attrib V30    0.20251002451618846
#>     Attrib V31    -0.7113818268168041
#>     Attrib V32    -0.06239165914260607
#>     Attrib V33    0.1386029200341008
#>     Attrib V34    0.10869904055878733
#>     Attrib V35    0.4023519485170136
#>     Attrib V36    -0.11799693441425169
#>     Attrib V37    -0.5341731282061434
#>     Attrib V38    0.21674230240757172
#>     Attrib V39    0.11719884995673671
#>     Attrib V4    -0.12493973224272886
#>     Attrib V40    -0.2242389651284318
#>     Attrib V41    -0.04087347512538813
#>     Attrib V42    0.2864012054035144
#>     Attrib V43    0.32646258170242354
#>     Attrib V44    0.4837444095469547
#>     Attrib V45    0.5775487131521982
#>     Attrib V46    0.11479602706293987
#>     Attrib V47    0.04797706195227602
#>     Attrib V48    0.033652196733396166
#>     Attrib V49    0.5999257563979673
#>     Attrib V5    -0.1605414241851829
#>     Attrib V50    -0.2586945533984673
#>     Attrib V51    0.41164928425198316
#>     Attrib V52    0.3561111768233302
#>     Attrib V53    0.2510675831965136
#>     Attrib V54    0.476382028579096
#>     Attrib V55    -0.27676406691734423
#>     Attrib V56    0.09170147230492497
#>     Attrib V57    -0.6648250824876589
#>     Attrib V58    0.301388598423468
#>     Attrib V59    0.14310969772488125
#>     Attrib V6    -0.2925773416044374
#>     Attrib V60    0.24256472926081918
#>     Attrib V7    -0.14975833079008927
#>     Attrib V8    0.1180739587843997
#>     Attrib V9    0.39737709854678716
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.06321968711216526
#>     Attrib V1    0.16038825693979683
#>     Attrib V10    -0.0975723030739934
#>     Attrib V11    -0.18322971745053063
#>     Attrib V12    -0.25363373003714673
#>     Attrib V13    -0.04362865071622049
#>     Attrib V14    -0.0684600283502784
#>     Attrib V15    0.03123898756992253
#>     Attrib V16    -0.002508895716034856
#>     Attrib V17    -0.015000135958612746
#>     Attrib V18    0.24438690052543044
#>     Attrib V19    0.5594183574391668
#>     Attrib V2    0.1730782543061286
#>     Attrib V20    0.07640548722818204
#>     Attrib V21    0.11719722854231553
#>     Attrib V22    0.2975942905976569
#>     Attrib V23    0.32797033770179784
#>     Attrib V24    0.2081565184277387
#>     Attrib V25    -0.016935431234711574
#>     Attrib V26    -0.5072249512246553
#>     Attrib V27    -0.7656236231379895
#>     Attrib V28    -0.22596715340711365
#>     Attrib V29    -0.08652502376145522
#>     Attrib V3    -0.2773123357294148
#>     Attrib V30    0.11134924025558032
#>     Attrib V31    -0.6786484455423761
#>     Attrib V32    -0.17955861425046166
#>     Attrib V33    0.10168368965568621
#>     Attrib V34    -0.016839802724576122
#>     Attrib V35    0.22751135724583432
#>     Attrib V36    -0.14367489578626746
#>     Attrib V37    -0.439410119643582
#>     Attrib V38    0.19097961107865397
#>     Attrib V39    0.06068850813379459
#>     Attrib V4    -0.025875255053505904
#>     Attrib V40    -0.22872330941230787
#>     Attrib V41    -0.05983259991477439
#>     Attrib V42    0.3420946220438247
#>     Attrib V43    0.36945753132049586
#>     Attrib V44    0.2644293106638984
#>     Attrib V45    0.3904879980681298
#>     Attrib V46    0.10592144175308069
#>     Attrib V47    -0.02538511347825487
#>     Attrib V48    -0.03034416951984884
#>     Attrib V49    0.3531926247164246
#>     Attrib V5    -0.17224875351299382
#>     Attrib V50    -0.20710506771796186
#>     Attrib V51    0.3204148852940986
#>     Attrib V52    0.36098863474054693
#>     Attrib V53    0.33811315969518735
#>     Attrib V54    0.4902063822703995
#>     Attrib V55    -0.153327757117932
#>     Attrib V56    0.15802635281960203
#>     Attrib V57    -0.5024020326228378
#>     Attrib V58    0.31764744747299756
#>     Attrib V59    0.2933715589698269
#>     Attrib V6    -0.31240853278093333
#>     Attrib V60    0.28934828875866336
#>     Attrib V7    -0.08048332534265293
#>     Attrib V8    0.11724311792076125
#>     Attrib V9    0.19726474531690383
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.1268564336258938
#>     Attrib V1    0.13823890643699135
#>     Attrib V10    -0.04476723042987495
#>     Attrib V11    -0.09731511415423875
#>     Attrib V12    -0.07692771985991648
#>     Attrib V13    0.053456403577733944
#>     Attrib V14    -0.06807435363694896
#>     Attrib V15    -0.021573125439747938
#>     Attrib V16    -0.08993319365818853
#>     Attrib V17    -0.009619060241872684
#>     Attrib V18    0.17352684599940546
#>     Attrib V19    0.340856732008322
#>     Attrib V2    0.09238713773732707
#>     Attrib V20    0.06973138070620796
#>     Attrib V21    0.09886482011335548
#>     Attrib V22    0.18239204106325044
#>     Attrib V23    0.27357853242834196
#>     Attrib V24    0.22789247610111368
#>     Attrib V25    0.1342407101551057
#>     Attrib V26    -0.2685831653812621
#>     Attrib V27    -0.4622619139356454
#>     Attrib V28    -0.16876179695782415
#>     Attrib V29    -0.07880081017573375
#>     Attrib V3    -0.10696140596710327
#>     Attrib V30    0.08037254497552347
#>     Attrib V31    -0.48553355312163915
#>     Attrib V32    -0.08051913704908369
#>     Attrib V33    0.02932660399373856
#>     Attrib V34    0.030496344518314095
#>     Attrib V35    0.14124869102954365
#>     Attrib V36    -0.13449281521682818
#>     Attrib V37    -0.3083858165045417
#>     Attrib V38    0.07321280325378213
#>     Attrib V39    0.10699094080755242
#>     Attrib V4    -0.009929710047850772
#>     Attrib V40    -0.13703589027337187
#>     Attrib V41    -0.01252929593121
#>     Attrib V42    0.2528931972295268
#>     Attrib V43    0.20203340134788328
#>     Attrib V44    0.19792657024045887
#>     Attrib V45    0.20981271027745566
#>     Attrib V46    0.056962095818761785
#>     Attrib V47    0.023304661627403703
#>     Attrib V48    -0.027063693591459832
#>     Attrib V49    0.3521431995624791
#>     Attrib V5    -0.0839535189793607
#>     Attrib V50    -0.1369737714658077
#>     Attrib V51    0.21393929933423303
#>     Attrib V52    0.2260327978956936
#>     Attrib V53    0.24132170720050322
#>     Attrib V54    0.308793361842588
#>     Attrib V55    -0.12531173602651488
#>     Attrib V56    0.09260887952191485
#>     Attrib V57    -0.3734705351814007
#>     Attrib V58    0.2020836739617308
#>     Attrib V59    0.23349760969797964
#>     Attrib V6    -0.1709404950663216
#>     Attrib V60    0.24434740066626545
#>     Attrib V7    -0.07017360345292892
#>     Attrib V8    -0.027967504511811198
#>     Attrib V9    0.11652837188585051
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.06874619768173673
#>     Attrib V1    0.18353760886712955
#>     Attrib V10    0.08389578452722109
#>     Attrib V11    -0.021632005087167297
#>     Attrib V12    -0.047182295034142493
#>     Attrib V13    -0.05009082506960717
#>     Attrib V14    -0.22844995562155526
#>     Attrib V15    -0.03151355142369133
#>     Attrib V16    -0.12649163715565517
#>     Attrib V17    -0.057061108044025484
#>     Attrib V18    0.1943250250326575
#>     Attrib V19    0.4571617730935272
#>     Attrib V2    0.10209133799600474
#>     Attrib V20    0.02978321563964997
#>     Attrib V21    0.05736486053753273
#>     Attrib V22    0.25000532364355404
#>     Attrib V23    0.35780495626602404
#>     Attrib V24    0.2998043679554445
#>     Attrib V25    0.2043215586463379
#>     Attrib V26    -0.2609201738453369
#>     Attrib V27    -0.7237314593475338
#>     Attrib V28    -0.2652235014431351
#>     Attrib V29    -0.2862241858155233
#>     Attrib V3    -0.3381551201539305
#>     Attrib V30    0.09466698147342713
#>     Attrib V31    -0.5352847862488868
#>     Attrib V32    -0.06015341553716333
#>     Attrib V33    0.13900415394389953
#>     Attrib V34    0.05425256724263056
#>     Attrib V35    0.34389358539058423
#>     Attrib V36    -0.13035845291917417
#>     Attrib V37    -0.4020157221375519
#>     Attrib V38    0.1142808093355326
#>     Attrib V39    0.08927944643773023
#>     Attrib V4    -0.09869004400085443
#>     Attrib V40    -0.23410145833336907
#>     Attrib V41    -0.09519727377543638
#>     Attrib V42    0.2137779633194861
#>     Attrib V43    0.2846519088308054
#>     Attrib V44    0.3639031553822059
#>     Attrib V45    0.3353984858155471
#>     Attrib V46    0.0876805019379706
#>     Attrib V47    -0.01970492978726797
#>     Attrib V48    0.013125048839486843
#>     Attrib V49    0.49241721254637805
#>     Attrib V5    -0.22015020572140853
#>     Attrib V50    -0.17974825441954995
#>     Attrib V51    0.2664936349325441
#>     Attrib V52    0.3087472389792286
#>     Attrib V53    0.23599631310863697
#>     Attrib V54    0.5016414970297157
#>     Attrib V55    -0.13231384792989867
#>     Attrib V56    0.11992393640579306
#>     Attrib V57    -0.5250126479887786
#>     Attrib V58    0.29343256100856874
#>     Attrib V59    0.19142252711585386
#>     Attrib V6    -0.30169627758779305
#>     Attrib V60    0.3010234875242081
#>     Attrib V7    -0.10779190590974615
#>     Attrib V8    0.025645635658146537
#>     Attrib V9    0.2577964510741646
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.3198935272895263
#>     Attrib V1    -0.2795350486468767
#>     Attrib V10    -0.3795283677269463
#>     Attrib V11    0.21574959525880744
#>     Attrib V12    0.2743433478555771
#>     Attrib V13    0.027667978434218886
#>     Attrib V14    0.4388414813547768
#>     Attrib V15    0.18394070329393183
#>     Attrib V16    0.3495171366354942
#>     Attrib V17    0.24892023983958164
#>     Attrib V18    -0.6283264141432423
#>     Attrib V19    -1.361096604013596
#>     Attrib V2    -0.22585105528026653
#>     Attrib V20    -0.033871982233619244
#>     Attrib V21    0.10540093665326676
#>     Attrib V22    -0.4718825238778973
#>     Attrib V23    -0.7171549283612039
#>     Attrib V24    -0.6786845198642829
#>     Attrib V25    -0.4041556456277512
#>     Attrib V26    0.815153074198607
#>     Attrib V27    1.5942723271597308
#>     Attrib V28    0.5335050082768574
#>     Attrib V29    0.691444413570771
#>     Attrib V3    0.6915332172731422
#>     Attrib V30    -0.09937929630001768
#>     Attrib V31    1.4124591559781092
#>     Attrib V32    0.044907032176388924
#>     Attrib V33    -0.35916169273084503
#>     Attrib V34    0.0021000685218126353
#>     Attrib V35    -0.6515200070949175
#>     Attrib V36    0.5617029058224831
#>     Attrib V37    1.4875851281960255
#>     Attrib V38    -0.38558530986018175
#>     Attrib V39    -0.02235181648477045
#>     Attrib V4    0.223525252638231
#>     Attrib V40    0.7210470079528697
#>     Attrib V41    0.2175498594540726
#>     Attrib V42    -0.8042143467523156
#>     Attrib V43    -0.6940332718154456
#>     Attrib V44    -0.5770994221299545
#>     Attrib V45    -0.891457570049318
#>     Attrib V46    -0.18030113842967607
#>     Attrib V47    -0.10653379310227643
#>     Attrib V48    0.011150459769675538
#>     Attrib V49    -1.073144220311602
#>     Attrib V5    0.5077433523215468
#>     Attrib V50    0.6093445591815738
#>     Attrib V51    -0.6751760936428355
#>     Attrib V52    -0.8387337469914808
#>     Attrib V53    -0.5075251879565783
#>     Attrib V54    -0.9421786297065039
#>     Attrib V55    0.6100558885936218
#>     Attrib V56    -0.2513917155123137
#>     Attrib V57    1.4807571051572246
#>     Attrib V58    -0.6553279998457969
#>     Attrib V59    -0.24458231339900918
#>     Attrib V6    0.6525753621073005
#>     Attrib V60    -0.5482601679132333
#>     Attrib V7    -0.03141209568527394
#>     Attrib V8    -0.19827099715237745
#>     Attrib V9    -0.801990053117135
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.10836051474965784
#>     Attrib V1    -0.05395005238711317
#>     Attrib V10    0.053858481203098114
#>     Attrib V11    0.03753697681255629
#>     Attrib V12    0.016017860590111857
#>     Attrib V13    0.012610572242675889
#>     Attrib V14    0.07652730690783854
#>     Attrib V15    0.07044616920981706
#>     Attrib V16    0.2182419551597468
#>     Attrib V17    0.23027940758262652
#>     Attrib V18    0.11847779367087448
#>     Attrib V19    -0.04304757825390707
#>     Attrib V2    -0.06021299962293174
#>     Attrib V20    0.03307229728418671
#>     Attrib V21    -0.005716019323677975
#>     Attrib V22    -0.09768064556137511
#>     Attrib V23    -0.12016467931857326
#>     Attrib V24    -0.05994835508170035
#>     Attrib V25    0.003263828116290851
#>     Attrib V26    -0.007269286691497023
#>     Attrib V27    0.07704381614115269
#>     Attrib V28    -0.005296255914701073
#>     Attrib V29    -0.008771745005887456
#>     Attrib V3    0.16150243941625048
#>     Attrib V30    -0.09918294670192848
#>     Attrib V31    0.09580079835262549
#>     Attrib V32    -0.012749188899252296
#>     Attrib V33    -0.006431505753104552
#>     Attrib V34    0.07829479751616897
#>     Attrib V35    -0.020884102057625885
#>     Attrib V36    0.1406846256950149
#>     Attrib V37    0.22145675507427845
#>     Attrib V38    -0.03210407190511836
#>     Attrib V39    0.03250203922577327
#>     Attrib V4    0.1118699428445938
#>     Attrib V40    0.1466604349416585
#>     Attrib V41    0.12117501991778583
#>     Attrib V42    0.055284654264140316
#>     Attrib V43    -0.04090746325609354
#>     Attrib V44    -0.040812907731157026
#>     Attrib V45    -0.07701797751942804
#>     Attrib V46    0.017400807045207113
#>     Attrib V47    0.05055938896766604
#>     Attrib V48    0.0251176385796239
#>     Attrib V49    -0.18535954603499913
#>     Attrib V5    0.1389549916872488
#>     Attrib V50    0.13439221952605776
#>     Attrib V51    -0.008888853064621987
#>     Attrib V52    -0.06971017859482156
#>     Attrib V53    -0.06404336861930819
#>     Attrib V54    -0.14503112429333795
#>     Attrib V55    0.12232879093384731
#>     Attrib V56    0.045882921613831576
#>     Attrib V57    0.3200820302403019
#>     Attrib V58    -0.005154754656135235
#>     Attrib V59    -0.031059274354173834
#>     Attrib V6    0.21786098387329195
#>     Attrib V60    -0.008631360429446639
#>     Attrib V7    0.12276857594265271
#>     Attrib V8    0.11960534695280028
#>     Attrib V9    0.057129785803867246
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.0725759930972122
#>     Attrib V1    0.18229617216307611
#>     Attrib V10    0.03132868554319742
#>     Attrib V11    -0.14284823132758143
#>     Attrib V12    -0.18785082693224026
#>     Attrib V13    -0.08153331406035734
#>     Attrib V14    -0.18378186267515662
#>     Attrib V15    0.030852064474002145
#>     Attrib V16    -0.06158554131646252
#>     Attrib V17    -0.04430273161535257
#>     Attrib V18    0.21094210425503557
#>     Attrib V19    0.5349315970408884
#>     Attrib V2    0.16470662493941265
#>     Attrib V20    0.07130678769885507
#>     Attrib V21    0.09965043219534649
#>     Attrib V22    0.3099414617459579
#>     Attrib V23    0.3144613379296678
#>     Attrib V24    0.33185938422170297
#>     Attrib V25    0.08911525536061186
#>     Attrib V26    -0.43101324308576744
#>     Attrib V27    -0.7838613169266367
#>     Attrib V28    -0.2774251902498317
#>     Attrib V29    -0.2860472130522417
#>     Attrib V3    -0.27255647449853726
#>     Attrib V30    0.07497957925041258
#>     Attrib V31    -0.5573747646307475
#>     Attrib V32    -0.11088012253467278
#>     Attrib V33    0.16461865786774177
#>     Attrib V34    0.023593394389173884
#>     Attrib V35    0.32569151547374653
#>     Attrib V36    -0.15408633768158156
#>     Attrib V37    -0.49001147264347344
#>     Attrib V38    0.17774093981299904
#>     Attrib V39    0.0922736851975136
#>     Attrib V4    -0.07635133459465496
#>     Attrib V40    -0.30123761640636615
#>     Attrib V41    -0.08290346049636951
#>     Attrib V42    0.3028259632757505
#>     Attrib V43    0.37411909124402576
#>     Attrib V44    0.34201915663358423
#>     Attrib V45    0.40657623350602795
#>     Attrib V46    0.04516835417111845
#>     Attrib V47    -0.04586687263396363
#>     Attrib V48    0.01888555879593207
#>     Attrib V49    0.4008951499558019
#>     Attrib V5    -0.20155515071237756
#>     Attrib V50    -0.15704157899686166
#>     Attrib V51    0.314419959179341
#>     Attrib V52    0.30432357090268014
#>     Attrib V53    0.2657367577709467
#>     Attrib V54    0.45534264331721075
#>     Attrib V55    -0.09649860896884739
#>     Attrib V56    0.15453618608319974
#>     Attrib V57    -0.49981232127799907
#>     Attrib V58    0.24301637245194696
#>     Attrib V59    0.19246237399261706
#>     Attrib V6    -0.2819474928389201
#>     Attrib V60    0.28118108556377114
#>     Attrib V7    -0.1415339230666457
#>     Attrib V8    0.09986582164321602
#>     Attrib V9    0.21991290777580627
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.12301841897908831
#>     Attrib V1    0.18346086336867484
#>     Attrib V10    -0.019875041060898206
#>     Attrib V11    -0.054701727972713915
#>     Attrib V12    -0.05692297557305419
#>     Attrib V13    0.009059827936945035
#>     Attrib V14    -0.014831460060282912
#>     Attrib V15    0.01596965340133005
#>     Attrib V16    -0.02217297861046721
#>     Attrib V17    -0.0704360487098566
#>     Attrib V18    0.13308786168399567
#>     Attrib V19    0.16433742880287197
#>     Attrib V2    0.13217887438286918
#>     Attrib V20    0.06298720887707497
#>     Attrib V21    0.10115424552524142
#>     Attrib V22    0.10465768732364812
#>     Attrib V23    0.10690165615257562
#>     Attrib V24    0.056325373139502206
#>     Attrib V25    0.006567204602275203
#>     Attrib V26    -0.188758565442384
#>     Attrib V27    -0.37173648200179243
#>     Attrib V28    -0.1493712464071638
#>     Attrib V29    -0.08160040092476799
#>     Attrib V3    -0.034167757964931086
#>     Attrib V30    0.014285447435757614
#>     Attrib V31    -0.3309085348298486
#>     Attrib V32    -0.10099499373776911
#>     Attrib V33    0.012094598479601667
#>     Attrib V34    0.033868227205737074
#>     Attrib V35    0.09718079835482629
#>     Attrib V36    -0.0020886195147854915
#>     Attrib V37    -0.19396761858558112
#>     Attrib V38    0.06436866036633605
#>     Attrib V39    0.1000968835476711
#>     Attrib V4    -0.018045353997130437
#>     Attrib V40    -0.12975027347725884
#>     Attrib V41    -0.07998475397625754
#>     Attrib V42    0.15760333612748553
#>     Attrib V43    0.16663872119731749
#>     Attrib V44    0.1666627303591295
#>     Attrib V45    0.13482649824896592
#>     Attrib V46    0.014577424594925907
#>     Attrib V47    0.04145175475079218
#>     Attrib V48    0.002837540659861207
#>     Attrib V49    0.23977740229791059
#>     Attrib V5    -0.060358870490206176
#>     Attrib V50    -0.06255611326641518
#>     Attrib V51    0.2267689362264967
#>     Attrib V52    0.16415731730380737
#>     Attrib V53    0.20011147035809312
#>     Attrib V54    0.2684669198566289
#>     Attrib V55    0.013427481330550219
#>     Attrib V56    0.110620942862092
#>     Attrib V57    -0.28536527062306294
#>     Attrib V58    0.17056889092373378
#>     Attrib V59    0.19323867677907966
#>     Attrib V6    -0.17041538110137558
#>     Attrib V60    0.21269928295634147
#>     Attrib V7    -0.04079724020767476
#>     Attrib V8    0.044445116075903665
#>     Attrib V9    0.07341726709019927
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.19127901407523035
#>     Attrib V1    0.5241012435358249
#>     Attrib V10    0.8818562975484641
#>     Attrib V11    0.8603455006256144
#>     Attrib V12    0.3892884366921383
#>     Attrib V13    0.0962971260929188
#>     Attrib V14    -0.14907487654481713
#>     Attrib V15    0.006329009138907846
#>     Attrib V16    -0.2741124282490386
#>     Attrib V17    -0.5752821250270584
#>     Attrib V18    -0.5123104079681878
#>     Attrib V19    -0.20713650761781996
#>     Attrib V2    0.48180939584293453
#>     Attrib V20    -0.45588438296797446
#>     Attrib V21    0.42598978109461544
#>     Attrib V22    0.6392555666807015
#>     Attrib V23    -0.1475100019573347
#>     Attrib V24    -0.2939450767756333
#>     Attrib V25    0.04047904054886502
#>     Attrib V26    0.8277882449559142
#>     Attrib V27    0.6227329259493396
#>     Attrib V28    1.3294474218135561
#>     Attrib V29    1.4025392037630933
#>     Attrib V3    -0.2147654162511526
#>     Attrib V30    1.0648888570011827
#>     Attrib V31    -0.6055541949389545
#>     Attrib V32    -0.07453273866490746
#>     Attrib V33    -0.30184540993694525
#>     Attrib V34    -0.4116159571692054
#>     Attrib V35    -0.20851072668817722
#>     Attrib V36    -0.4743381456166007
#>     Attrib V37    -0.3582588823925517
#>     Attrib V38    0.008476293522228081
#>     Attrib V39    0.5758291789171724
#>     Attrib V4    0.3516877213224652
#>     Attrib V40    0.47490438286802805
#>     Attrib V41    0.4704351164545386
#>     Attrib V42    -0.2780977570198803
#>     Attrib V43    -0.17643687249645257
#>     Attrib V44    0.36242140490275876
#>     Attrib V45    0.7285477343850079
#>     Attrib V46    0.3651618509555016
#>     Attrib V47    -0.056392249271850985
#>     Attrib V48    0.04883978904195811
#>     Attrib V49    1.266823479917373
#>     Attrib V5    0.3064045126447286
#>     Attrib V50    -0.49944410720328103
#>     Attrib V51    0.39065258837108113
#>     Attrib V52    0.640673726580684
#>     Attrib V53    0.45941144669654493
#>     Attrib V54    -0.2556967327318396
#>     Attrib V55    -0.6551844647210782
#>     Attrib V56    -0.4275133381963492
#>     Attrib V57    -0.9179902060908538
#>     Attrib V58    0.3297878045368287
#>     Attrib V59    0.00905303682780119
#>     Attrib V6    -0.2170170944594561
#>     Attrib V60    0.1279396976113443
#>     Attrib V7    -0.2643524324555659
#>     Attrib V8    0.12733365876241554
#>     Attrib V9    0.8470284188947937
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.02994080759913605
#>     Attrib V1    0.11094689876247962
#>     Attrib V10    0.5638307410586817
#>     Attrib V11    0.3262469638787967
#>     Attrib V12    0.08772548815474807
#>     Attrib V13    -0.11050506879863482
#>     Attrib V14    -0.30022966891406927
#>     Attrib V15    -0.29124119216042943
#>     Attrib V16    -0.356049492872078
#>     Attrib V17    -0.3732443291385695
#>     Attrib V18    -0.005588021838673788
#>     Attrib V19    0.4790662713744314
#>     Attrib V2    0.17215206706637876
#>     Attrib V20    -0.25100509572512403
#>     Attrib V21    0.11016077593863197
#>     Attrib V22    0.5135942754228161
#>     Attrib V23    0.36660457712817585
#>     Attrib V24    0.31366771076519295
#>     Attrib V25    0.44985114406279975
#>     Attrib V26    0.43287911775228544
#>     Attrib V27    0.004682413686723491
#>     Attrib V28    0.6475111677982744
#>     Attrib V29    0.7141552223285667
#>     Attrib V3    -0.3440947654631153
#>     Attrib V30    0.70418146695228
#>     Attrib V31    -0.5196536048086972
#>     Attrib V32    0.06345648155138046
#>     Attrib V33    0.05251381988368145
#>     Attrib V34    -0.11422293233930761
#>     Attrib V35    0.08905156822279707
#>     Attrib V36    -0.32600242353903053
#>     Attrib V37    -0.6728136460969945
#>     Attrib V38    -0.031627817842082455
#>     Attrib V39    0.27941875705059405
#>     Attrib V4    0.11437951882261199
#>     Attrib V40    0.1282144324511517
#>     Attrib V41    0.3880204756793665
#>     Attrib V42    0.06112635279908496
#>     Attrib V43    0.14386407133638857
#>     Attrib V44    0.5185944743359654
#>     Attrib V45    0.5266038764025047
#>     Attrib V46    0.13892371360836886
#>     Attrib V47    0.01102384170056344
#>     Attrib V48    0.13997631318019466
#>     Attrib V49    1.0122067991092851
#>     Attrib V5    0.09849581925721224
#>     Attrib V50    -0.49548985870181894
#>     Attrib V51    0.4977379734796717
#>     Attrib V52    0.5879692760436778
#>     Attrib V53    0.22906034168654033
#>     Attrib V54    -0.07304642083037728
#>     Attrib V55    -0.5922420974242938
#>     Attrib V56    -0.06965055803288848
#>     Attrib V57    -0.7670702884396706
#>     Attrib V58    0.3685164701969294
#>     Attrib V59    0.1924816202077127
#>     Attrib V6    -0.19567390675941848
#>     Attrib V60    0.13190373606050174
#>     Attrib V7    -0.18750042445533383
#>     Attrib V8    0.044595995599461584
#>     Attrib V9    0.673849848354684
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.38509241560979846
#>     Attrib V1    -0.1299269009959388
#>     Attrib V10    -0.32044738264247724
#>     Attrib V11    0.15883273234222384
#>     Attrib V12    0.019018460044686478
#>     Attrib V13    -0.10085598445794165
#>     Attrib V14    0.3023519368521969
#>     Attrib V15    0.1324614921200825
#>     Attrib V16    0.3562974654148411
#>     Attrib V17    0.15074527521545145
#>     Attrib V18    -0.6279339310107043
#>     Attrib V19    -1.2836813702824588
#>     Attrib V2    -0.22652975403321363
#>     Attrib V20    0.15249819412726637
#>     Attrib V21    0.2353142478848703
#>     Attrib V22    -0.5912915605845265
#>     Attrib V23    -0.7556289216198916
#>     Attrib V24    -0.6878853628226659
#>     Attrib V25    -0.4559970082873464
#>     Attrib V26    0.5451031897461226
#>     Attrib V27    1.2544451975448998
#>     Attrib V28    0.3795487523828703
#>     Attrib V29    0.5635478216191766
#>     Attrib V3    0.45132674935655015
#>     Attrib V30    -0.038628089145664894
#>     Attrib V31    1.2523334173168525
#>     Attrib V32    -0.006119990367839201
#>     Attrib V33    -0.18141937380333945
#>     Attrib V34    0.10477093647091755
#>     Attrib V35    -0.4215159216054659
#>     Attrib V36    0.6529782285110777
#>     Attrib V37    1.4504637004816192
#>     Attrib V38    -0.21986470688364376
#>     Attrib V39    -0.03441458324624133
#>     Attrib V4    0.14108041297552637
#>     Attrib V40    0.5460579337544847
#>     Attrib V41    0.023720204898784673
#>     Attrib V42    -0.7917496035330751
#>     Attrib V43    -0.6543295976099938
#>     Attrib V44    -0.4488509252759272
#>     Attrib V45    -0.7016357218794007
#>     Attrib V46    -0.15615536780181868
#>     Attrib V47    -0.11958215605894244
#>     Attrib V48    -0.01494767643238419
#>     Attrib V49    -1.0893520194305142
#>     Attrib V5    0.3272426808169952
#>     Attrib V50    0.595177225100332
#>     Attrib V51    -0.679060133706277
#>     Attrib V52    -0.8054398946908315
#>     Attrib V53    -0.6041082701431364
#>     Attrib V54    -0.6153399019643703
#>     Attrib V55    0.6908991950622746
#>     Attrib V56    -0.2793446602591467
#>     Attrib V57    1.3156395703913737
#>     Attrib V58    -0.6148485498686156
#>     Attrib V59    -0.2463974297834152
#>     Attrib V6    0.5089985585435555
#>     Attrib V60    -0.43638944932218116
#>     Attrib V7    0.1727612735371874
#>     Attrib V8    0.018314033363700837
#>     Attrib V9    -0.599532018091402
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.1469106146119032
#>     Attrib V1    0.15233117926313736
#>     Attrib V10    0.03527647243508114
#>     Attrib V11    0.022834944331355453
#>     Attrib V12    0.010291918052049891
#>     Attrib V13    0.0011192815256150835
#>     Attrib V14    0.06006178110140356
#>     Attrib V15    -0.00558569081413289
#>     Attrib V16    0.049869003489449386
#>     Attrib V17    0.0018721987249666725
#>     Attrib V18    0.01377404399083811
#>     Attrib V19    0.010115779316541285
#>     Attrib V2    0.12970191217827112
#>     Attrib V20    -0.009198488792543372
#>     Attrib V21    -0.038313618199964455
#>     Attrib V22    -0.044274132892080584
#>     Attrib V23    -0.04173838167516925
#>     Attrib V24    0.027679024206914003
#>     Attrib V25    -0.02119236835250594
#>     Attrib V26    -0.09559100731123592
#>     Attrib V27    -0.15302486305761492
#>     Attrib V28    -0.10740827820077828
#>     Attrib V29    -0.002067783600726154
#>     Attrib V3    0.03273744613014197
#>     Attrib V30    -0.014165159254173767
#>     Attrib V31    -0.0575488522931402
#>     Attrib V32    -0.028425055538595104
#>     Attrib V33    -0.027324296441751553
#>     Attrib V34    0.003889000779337787
#>     Attrib V35    0.07603147324327753
#>     Attrib V36    0.034364343926605666
#>     Attrib V37    -0.011374808878801091
#>     Attrib V38    5.083044543975169E-4
#>     Attrib V39    0.025929904318095203
#>     Attrib V4    0.09333719733296428
#>     Attrib V40    0.03938120925373237
#>     Attrib V41    -0.016480125519277848
#>     Attrib V42    0.0616797391122855
#>     Attrib V43    0.14139739282733726
#>     Attrib V44    0.07130449504090512
#>     Attrib V45    0.02760900114892336
#>     Attrib V46    0.08317740634734667
#>     Attrib V47    0.03001412649530638
#>     Attrib V48    0.09294898350277893
#>     Attrib V49    0.11964283528990427
#>     Attrib V5    0.06340875843933436
#>     Attrib V50    0.06404227833620274
#>     Attrib V51    0.11063877159873732
#>     Attrib V52    0.11791285506208236
#>     Attrib V53    0.09971591490990706
#>     Attrib V54    0.15382750505292556
#>     Attrib V55    0.08288047097194505
#>     Attrib V56    0.13696216485198678
#>     Attrib V57    0.012181431660329126
#>     Attrib V58    0.16721819326537957
#>     Attrib V59    0.1252168521415949
#>     Attrib V6    0.014310357660665882
#>     Attrib V60    0.1429647218050442
#>     Attrib V7    2.1275678537099172E-4
#>     Attrib V8    -0.021463799977600524
#>     Attrib V9    0.06939538975742006
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.20001500766884717
#>     Attrib V1    0.11977656886965161
#>     Attrib V10    -0.05146603301810302
#>     Attrib V11    -0.2541168457531372
#>     Attrib V12    -0.15323687350967904
#>     Attrib V13    -0.034757009234686456
#>     Attrib V14    -0.1963479674930398
#>     Attrib V15    -0.08065254645822001
#>     Attrib V16    -0.1413943993064747
#>     Attrib V17    0.024125988852226048
#>     Attrib V18    0.3787290451703587
#>     Attrib V19    0.7505438234608865
#>     Attrib V2    0.05683621606750625
#>     Attrib V20    0.07652746119216657
#>     Attrib V21    0.0012779979550247137
#>     Attrib V22    0.29817295422935053
#>     Attrib V23    0.5182960343999607
#>     Attrib V24    0.47950385455617184
#>     Attrib V25    0.28068002619955884
#>     Attrib V26    -0.4910631944206806
#>     Attrib V27    -1.0928462870473679
#>     Attrib V28    -0.5388685098482044
#>     Attrib V29    -0.5769817206104358
#>     Attrib V3    -0.2974850277988103
#>     Attrib V30    -0.06513207139212605
#>     Attrib V31    -0.7123367445598456
#>     Attrib V32    -0.041978147160877784
#>     Attrib V33    0.23074647574583257
#>     Attrib V34    0.08697304152187872
#>     Attrib V35    0.46095184153228336
#>     Attrib V36    -0.1534004568390345
#>     Attrib V37    -0.622101114908021
#>     Attrib V38    0.15704438189765174
#>     Attrib V39    0.01870418802531944
#>     Attrib V4    -0.09611611266697831
#>     Attrib V40    -0.3958961175546806
#>     Attrib V41    -0.16285998655782188
#>     Attrib V42    0.4114086544567878
#>     Attrib V43    0.46281338009663203
#>     Attrib V44    0.3221069951107035
#>     Attrib V45    0.4335493940722302
#>     Attrib V46    0.06803949728455806
#>     Attrib V47    0.07423814845054195
#>     Attrib V48    -0.0058918356192465045
#>     Attrib V49    0.5102021585317678
#>     Attrib V5    -0.2946596919328416
#>     Attrib V50    -0.18866272188129196
#>     Attrib V51    0.39925216574777833
#>     Attrib V52    0.4683639520598122
#>     Attrib V53    0.3719667536618552
#>     Attrib V54    0.6145274397226063
#>     Attrib V55    -0.1133061905911062
#>     Attrib V56    0.30059862888865807
#>     Attrib V57    -0.6518045778105345
#>     Attrib V58    0.34362920681536346
#>     Attrib V59    0.316565264664185
#>     Attrib V6    -0.310820100891315
#>     Attrib V60    0.3356409054648514
#>     Attrib V7    -0.05870306640169594
#>     Attrib V8    0.0844444878981206
#>     Attrib V9    0.2999413879325182
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    0.11201830725501011
#>     Attrib V1    -0.3564378656098138
#>     Attrib V10    -0.47960665279621356
#>     Attrib V11    -0.0060816603550999234
#>     Attrib V12    -0.042985138454545505
#>     Attrib V13    -0.19769727827138595
#>     Attrib V14    0.32839633302588433
#>     Attrib V15    0.11747127447447828
#>     Attrib V16    0.43258706641744077
#>     Attrib V17    0.4756432100394378
#>     Attrib V18    -0.33587437981295487
#>     Attrib V19    -1.0091472915528745
#>     Attrib V2    -0.32691573929824497
#>     Attrib V20    0.12491605700423139
#>     Attrib V21    0.0021310385098064146
#>     Attrib V22    -0.5861731285197963
#>     Attrib V23    -0.43125832532871483
#>     Attrib V24    -0.40036633781439823
#>     Attrib V25    -0.1534083380423424
#>     Attrib V26    0.5619282938816181
#>     Attrib V27    1.2270218751396265
#>     Attrib V28    0.3212899366561997
#>     Attrib V29    0.4161119022378072
#>     Attrib V3    0.527378605122151
#>     Attrib V30    -0.26168366958891465
#>     Attrib V31    1.2261786391347982
#>     Attrib V32    0.15424696483774336
#>     Attrib V33    -0.16685227412438153
#>     Attrib V34    -0.0032851283414881503
#>     Attrib V35    -0.5537587515247625
#>     Attrib V36    0.5881651861389485
#>     Attrib V37    1.1672815050633263
#>     Attrib V38    -0.3480714373749764
#>     Attrib V39    -0.15825361468349006
#>     Attrib V4    0.17757479508007604
#>     Attrib V40    0.5023033669706797
#>     Attrib V41    0.08585428754180975
#>     Attrib V42    -0.6177979022356535
#>     Attrib V43    -0.5477895186427982
#>     Attrib V44    -0.45519576552482716
#>     Attrib V45    -0.8171010120558385
#>     Attrib V46    -0.12158212337613337
#>     Attrib V47    0.06949741104264792
#>     Attrib V48    0.07871810749622657
#>     Attrib V49    -1.134124601881838
#>     Attrib V5    0.3880445886752152
#>     Attrib V50    0.7068942122500884
#>     Attrib V51    -0.5473008752222691
#>     Attrib V52    -0.6805692856262643
#>     Attrib V53    -0.5683346874963667
#>     Attrib V54    -0.6895295594983779
#>     Attrib V55    0.7256390609658001
#>     Attrib V56    -0.04480903920158991
#>     Attrib V57    1.4951578484117918
#>     Attrib V58    -0.5295600909768211
#>     Attrib V59    -0.1661020498278706
#>     Attrib V6    0.7214502426483372
#>     Attrib V60    -0.3842362413778287
#>     Attrib V7    0.1398518372940801
#>     Attrib V8    -0.018279839306048946
#>     Attrib V9    -0.6930541248739079
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.07165948294073272
#>     Attrib V1    0.4060868343802875
#>     Attrib V10    1.0126795185498692
#>     Attrib V11    1.2593531790409633
#>     Attrib V12    0.6267633067058003
#>     Attrib V13    0.19943896812948084
#>     Attrib V14    -0.06783684120993404
#>     Attrib V15    -0.08549723309474104
#>     Attrib V16    -0.27992074176204096
#>     Attrib V17    -0.35720485570642396
#>     Attrib V18    -0.375499540921227
#>     Attrib V19    -0.19930070045307086
#>     Attrib V2    0.6770364790144124
#>     Attrib V20    -0.8253176156992988
#>     Attrib V21    0.6642779709471822
#>     Attrib V22    1.2714993998264947
#>     Attrib V23    0.37832994939787973
#>     Attrib V24    -0.16619514204135236
#>     Attrib V25    -0.11998654872375081
#>     Attrib V26    1.170439155970072
#>     Attrib V27    1.2739452349705276
#>     Attrib V28    2.0500400618510244
#>     Attrib V29    2.277020302784891
#>     Attrib V3    0.1597228419014264
#>     Attrib V30    1.3787563848775712
#>     Attrib V31    -0.996064766296004
#>     Attrib V32    -0.12146450864772784
#>     Attrib V33    -0.836386908646931
#>     Attrib V34    -0.8384319259703876
#>     Attrib V35    -0.7572820024240977
#>     Attrib V36    -1.0182335432563154
#>     Attrib V37    -0.5494180911458786
#>     Attrib V38    -0.1968023860568931
#>     Attrib V39    0.869464277469981
#>     Attrib V4    0.680879842973732
#>     Attrib V40    1.0011624539744162
#>     Attrib V41    1.198780737094727
#>     Attrib V42    -0.2480206652941056
#>     Attrib V43    -0.10846187127140042
#>     Attrib V44    0.767396624996217
#>     Attrib V45    0.9755286963231504
#>     Attrib V46    0.7792824820756843
#>     Attrib V47    0.04843959545865475
#>     Attrib V48    -0.00418138262831842
#>     Attrib V49    1.8138055145486016
#>     Attrib V5    0.8202282415518898
#>     Attrib V50    -0.6894446568121219
#>     Attrib V51    0.7852447136530714
#>     Attrib V52    1.2437496634871807
#>     Attrib V53    0.9634156102312321
#>     Attrib V54    -0.9223114486294476
#>     Attrib V55    -1.1710046315525005
#>     Attrib V56    -0.5482640819069388
#>     Attrib V57    -1.2936624157854903
#>     Attrib V58    0.39110694169492044
#>     Attrib V59    -0.09820181242000253
#>     Attrib V6    0.007838504038745664
#>     Attrib V60    0.06399590882739775
#>     Attrib V7    -0.5783455005601861
#>     Attrib V8    -0.37455295162049457
#>     Attrib V9    0.9469500837161797
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.18520151399795334
#>     Attrib V1    0.14234318229671797
#>     Attrib V10    -0.0015639652646695183
#>     Attrib V11    -0.023669919358418993
#>     Attrib V12    0.025551388699698245
#>     Attrib V13    0.001276321450495759
#>     Attrib V14    0.08701702437768892
#>     Attrib V15    0.02824436447822802
#>     Attrib V16    -5.279947265296826E-4
#>     Attrib V17    0.006281122051556139
#>     Attrib V18    -0.02172153249998831
#>     Attrib V19    0.0984773175549188
#>     Attrib V2    0.13858393049544027
#>     Attrib V20    0.0023529311180955476
#>     Attrib V21    0.00794114127606155
#>     Attrib V22    -0.009557667602498047
#>     Attrib V23    -5.54806521713809E-4
#>     Attrib V24    -0.018097690103013913
#>     Attrib V25    -0.014435514064207487
#>     Attrib V26    -0.10694292963683306
#>     Attrib V27    -0.12420201062047195
#>     Attrib V28    -0.021374740569685736
#>     Attrib V29    0.007964230096506325
#>     Attrib V3    0.01731513997332535
#>     Attrib V30    0.006816498648489239
#>     Attrib V31    -0.1615609429655206
#>     Attrib V32    -0.06466680642118716
#>     Attrib V33    0.034089029980747115
#>     Attrib V34    -0.0019902895427400535
#>     Attrib V35    0.11397884146799724
#>     Attrib V36    0.05748429827307206
#>     Attrib V37    0.01660264943716735
#>     Attrib V38    0.03482527481971992
#>     Attrib V39    0.08611861301146341
#>     Attrib V4    0.1229418934534195
#>     Attrib V40    4.714410232063378E-4
#>     Attrib V41    0.006889469556342795
#>     Attrib V42    0.11048266031591925
#>     Attrib V43    0.10840041611646772
#>     Attrib V44    0.09311840338261067
#>     Attrib V45    0.09665789089157346
#>     Attrib V46    0.03477305337957925
#>     Attrib V47    0.03394332748756809
#>     Attrib V48    0.09465483174393913
#>     Attrib V49    0.11225674318615722
#>     Attrib V5    0.005135469662188716
#>     Attrib V50    0.07386319801704759
#>     Attrib V51    0.11448388978689543
#>     Attrib V52    0.10802680873180591
#>     Attrib V53    0.11952080562349203
#>     Attrib V54    0.15568066198017755
#>     Attrib V55    0.06690662950921539
#>     Attrib V56    0.12300535271959558
#>     Attrib V57    0.008798010940615704
#>     Attrib V58    0.13771268424214983
#>     Attrib V59    0.159566111020312
#>     Attrib V6    0.020500617844088753
#>     Attrib V60    0.17488332915351937
#>     Attrib V7    -0.039295760482634064
#>     Attrib V8    0.05452413585574113
#>     Attrib V9    0.038450932909025744
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3144795806052245
#>     Attrib V1    0.7402449052569334
#>     Attrib V10    1.0268128867480435
#>     Attrib V11    1.113247214109322
#>     Attrib V12    0.5015806409174515
#>     Attrib V13    0.16430108377678773
#>     Attrib V14    -0.22318613646992952
#>     Attrib V15    -0.031129338387035656
#>     Attrib V16    -0.2715751861549928
#>     Attrib V17    -0.6374218841405254
#>     Attrib V18    -0.5524374891228779
#>     Attrib V19    -0.39259147971981834
#>     Attrib V2    0.5600036997401556
#>     Attrib V20    -0.568370950390661
#>     Attrib V21    0.539440058838209
#>     Attrib V22    0.6646473438915763
#>     Attrib V23    -0.24120800153142952
#>     Attrib V24    -0.3423364482765992
#>     Attrib V25    -0.033383832640468125
#>     Attrib V26    1.054492505659322
#>     Attrib V27    0.7439823836478653
#>     Attrib V28    1.3858985140502242
#>     Attrib V29    1.5724576211259782
#>     Attrib V3    -0.18918613892164818
#>     Attrib V30    1.1791220505942799
#>     Attrib V31    -0.6678587186191378
#>     Attrib V32    -0.11120256739004314
#>     Attrib V33    -0.47503246633058993
#>     Attrib V34    -0.4369287819495591
#>     Attrib V35    -0.30972010211605966
#>     Attrib V36    -0.5324841925731248
#>     Attrib V37    -0.24135610219586523
#>     Attrib V38    0.04317569639653307
#>     Attrib V39    0.6732146441307632
#>     Attrib V4    0.3430622310587938
#>     Attrib V40    0.5141024664410458
#>     Attrib V41    0.5454468759402695
#>     Attrib V42    -0.43420704683354044
#>     Attrib V43    -0.22792946552641294
#>     Attrib V44    0.4366917013930048
#>     Attrib V45    0.8067830459837306
#>     Attrib V46    0.376361016995292
#>     Attrib V47    -0.08591353683814552
#>     Attrib V48    0.07273224835354794
#>     Attrib V49    1.2910932845522762
#>     Attrib V5    0.31695919100378617
#>     Attrib V50    -0.4234220135652512
#>     Attrib V51    0.4652039576607871
#>     Attrib V52    0.678504443968323
#>     Attrib V53    0.5844612390289393
#>     Attrib V54    -0.2366911769999414
#>     Attrib V55    -0.7031376740383626
#>     Attrib V56    -0.4879357343359192
#>     Attrib V57    -0.9643067109083293
#>     Attrib V58    0.2876214154100521
#>     Attrib V59    0.04192375245467408
#>     Attrib V6    -0.21880153529496982
#>     Attrib V60    0.14080784142246994
#>     Attrib V7    -0.40974519537640636
#>     Attrib V8    0.08910240192494424
#>     Attrib V9    0.9399310400928267
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.14713292736838343
#>     Attrib V1    -0.07792856003688892
#>     Attrib V10    -0.6194417252290684
#>     Attrib V11    -0.4750979123404167
#>     Attrib V12    -0.641347302401002
#>     Attrib V13    -0.5201004667101715
#>     Attrib V14    0.09177462845558637
#>     Attrib V15    0.21507627145649114
#>     Attrib V16    0.40605769809111564
#>     Attrib V17    0.09547591147755792
#>     Attrib V18    -0.289078241505942
#>     Attrib V19    -0.6326422343439628
#>     Attrib V2    -0.1962949301427436
#>     Attrib V20    0.3710207020253251
#>     Attrib V21    0.10317876963929282
#>     Attrib V22    -0.5998833269803423
#>     Attrib V23    -0.4812408963488977
#>     Attrib V24    -0.26935329227775673
#>     Attrib V25    -0.2582243663651292
#>     Attrib V26    -0.10558369683089813
#>     Attrib V27    0.5442807711746015
#>     Attrib V28    0.2089573332482338
#>     Attrib V29    0.41766369840864237
#>     Attrib V3    0.230420656784275
#>     Attrib V30    -0.10427812425956115
#>     Attrib V31    0.6664490003942949
#>     Attrib V32    0.10525512035945887
#>     Attrib V33    -0.0641690896285491
#>     Attrib V34    0.25278669728442077
#>     Attrib V35    0.3114962092781299
#>     Attrib V36    0.9682958344994202
#>     Attrib V37    1.354392665190179
#>     Attrib V38    0.19575882753965854
#>     Attrib V39    -0.0038462958390402717
#>     Attrib V4    -0.11005523464322246
#>     Attrib V40    0.17227681442582224
#>     Attrib V41    -0.24084322432137437
#>     Attrib V42    -0.2514741958735842
#>     Attrib V43    -0.3161032905283674
#>     Attrib V44    -0.10636548034070369
#>     Attrib V45    -0.17368456810119856
#>     Attrib V46    0.021757010037804687
#>     Attrib V47    0.07333777674505673
#>     Attrib V48    0.03436559953961852
#>     Attrib V49    -0.8780631559376478
#>     Attrib V5    -0.16493791034447983
#>     Attrib V50    0.6757291509895037
#>     Attrib V51    -0.5498590354649467
#>     Attrib V52    -0.45920201034768837
#>     Attrib V53    -0.26091953329798434
#>     Attrib V54    -0.10063353575227932
#>     Attrib V55    0.6984814930827413
#>     Attrib V56    0.11357403788364845
#>     Attrib V57    0.685362810227951
#>     Attrib V58    -0.3203638344426458
#>     Attrib V59    -0.1759643751602367
#>     Attrib V6    0.2976368182519588
#>     Attrib V60    -0.24222934932585594
#>     Attrib V7    0.1787026276947337
#>     Attrib V8    0.04708501349637425
#>     Attrib V9    -0.5691028913695154
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.020880267958993427
#>     Attrib V1    0.06353659407838642
#>     Attrib V10    0.3518354803821206
#>     Attrib V11    0.2872383335494708
#>     Attrib V12    0.08124740511096389
#>     Attrib V13    -0.06180162067530492
#>     Attrib V14    -0.26954373975690255
#>     Attrib V15    -0.24401569893015404
#>     Attrib V16    -0.2801139538163004
#>     Attrib V17    -0.30590363516037355
#>     Attrib V18    -0.056872889950431244
#>     Attrib V19    0.2502960114109195
#>     Attrib V2    0.08835757408857393
#>     Attrib V20    -0.11362758720412544
#>     Attrib V21    0.07494177320727544
#>     Attrib V22    0.33956529054708146
#>     Attrib V23    0.21500191156071435
#>     Attrib V24    0.3276449781025325
#>     Attrib V25    0.43873302721827556
#>     Attrib V26    0.20480349061861863
#>     Attrib V27    -0.1750374455834364
#>     Attrib V28    0.3285882969717171
#>     Attrib V29    0.32289237265643017
#>     Attrib V3    -0.2833984444939354
#>     Attrib V30    0.3635633728116622
#>     Attrib V31    -0.3974120756545797
#>     Attrib V32    0.07185355548009807
#>     Attrib V33    0.11262502638105475
#>     Attrib V34    0.040057842950174505
#>     Attrib V35    0.19179961715259178
#>     Attrib V36    -0.2061296493040394
#>     Attrib V37    -0.42645856756272743
#>     Attrib V38    0.042831412545106674
#>     Attrib V39    0.18532691387286418
#>     Attrib V4    -0.04016898103821621
#>     Attrib V40    -0.0325355939845181
#>     Attrib V41    0.12974092237245774
#>     Attrib V42    0.03650150322887789
#>     Attrib V43    0.1977637346305362
#>     Attrib V44    0.33275924873383744
#>     Attrib V45    0.48141490075834303
#>     Attrib V46    0.13748575379018946
#>     Attrib V47    0.06118836368504935
#>     Attrib V48    0.08705805773638721
#>     Attrib V49    0.672485150144353
#>     Attrib V5    -0.0937096563045202
#>     Attrib V50    -0.2790082944867016
#>     Attrib V51    0.3186352784794401
#>     Attrib V52    0.3802183821737922
#>     Attrib V53    0.16053183807789137
#>     Attrib V54    0.1264949035821207
#>     Attrib V55    -0.3249938834681862
#>     Attrib V56    -0.028837678156916832
#>     Attrib V57    -0.5780318301543343
#>     Attrib V58    0.18642434917836417
#>     Attrib V59    0.07692177584368198
#>     Attrib V6    -0.22732105589295096
#>     Attrib V60    0.15685282220391428
#>     Attrib V7    -0.16434051002859923
#>     Attrib V8    0.0944940333909387
#>     Attrib V9    0.47682936985717816
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.05736021060701092
#>     Attrib V1    -0.10270160307305562
#>     Attrib V10    -0.09471682796139273
#>     Attrib V11    -0.0644326389257582
#>     Attrib V12    -0.09278286977169606
#>     Attrib V13    -0.12173951390146061
#>     Attrib V14    0.16853945421255823
#>     Attrib V15    0.19720269093631482
#>     Attrib V16    0.3650730902649046
#>     Attrib V17    0.39969906087440027
#>     Attrib V18    0.053044971092031976
#>     Attrib V19    -0.2551398325611867
#>     Attrib V2    -0.11032153187719562
#>     Attrib V20    0.1825572381497083
#>     Attrib V21    0.08680031007857655
#>     Attrib V22    -0.24586612235205477
#>     Attrib V23    -0.2108868604963166
#>     Attrib V24    -0.18917722172963433
#>     Attrib V25    -0.0030664691537669935
#>     Attrib V26    0.12690313455447835
#>     Attrib V27    0.3036083343003759
#>     Attrib V28    -0.005219295491633315
#>     Attrib V29    0.014692220777220391
#>     Attrib V3    0.18307010399144943
#>     Attrib V30    -0.07088801514636328
#>     Attrib V31    0.4289114143270421
#>     Attrib V32    -0.10766981524437191
#>     Attrib V33    -0.056127288950689684
#>     Attrib V34    0.04056809268315231
#>     Attrib V35    -0.06909074595982671
#>     Attrib V36    0.30448747729602976
#>     Attrib V37    0.47428235270220176
#>     Attrib V38    -0.13374405956779745
#>     Attrib V39    -0.01260471056375262
#>     Attrib V4    0.11222067185895453
#>     Attrib V40    0.18464013524920703
#>     Attrib V41    -0.011214920934980398
#>     Attrib V42    -0.034938936927606926
#>     Attrib V43    -0.1678358825902234
#>     Attrib V44    -0.127328797671773
#>     Attrib V45    -0.2182353962455429
#>     Attrib V46    -0.039720362984899414
#>     Attrib V47    0.03999737939311618
#>     Attrib V48    0.06629894724001589
#>     Attrib V49    -0.5009571635694537
#>     Attrib V5    0.12221096309157164
#>     Attrib V50    0.23047670998025552
#>     Attrib V51    -0.24046702569524908
#>     Attrib V52    -0.3557857059761224
#>     Attrib V53    -0.2985210477774402
#>     Attrib V54    -0.20612696188761478
#>     Attrib V55    0.29484455680219795
#>     Attrib V56    0.06786873990847789
#>     Attrib V57    0.5201438775923309
#>     Attrib V58    -0.19791009352917469
#>     Attrib V59    -0.030175438671079045
#>     Attrib V6    0.32334537369721267
#>     Attrib V60    -0.028243212787604333
#>     Attrib V7    0.17764284331832975
#>     Attrib V8    0.18189005971184935
#>     Attrib V9    -0.17980521004436756
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.20022254108926776
#>     Attrib V1    0.16596477638960033
#>     Attrib V10    -0.06129475456691722
#>     Attrib V11    -0.2488171617051985
#>     Attrib V12    -0.2551746432840997
#>     Attrib V13    -0.029195700112050516
#>     Attrib V14    -0.1694998117320593
#>     Attrib V15    -0.021366437101786102
#>     Attrib V16    -0.07568846013600414
#>     Attrib V17    -0.0323559638637635
#>     Attrib V18    0.2816712813032242
#>     Attrib V19    0.6328878246457542
#>     Attrib V2    0.15045711698674122
#>     Attrib V20    0.17704186278492512
#>     Attrib V21    -0.0020397356291780816
#>     Attrib V22    0.2435891087233802
#>     Attrib V23    0.4363821927667097
#>     Attrib V24    0.4644826644858927
#>     Attrib V25    0.15411779797974
#>     Attrib V26    -0.5853959364824036
#>     Attrib V27    -1.1392131016600227
#>     Attrib V28    -0.6174889384576401
#>     Attrib V29    -0.6521901436599071
#>     Attrib V3    -0.3467407131812406
#>     Attrib V30    -0.12157626414532698
#>     Attrib V31    -0.5927094204948281
#>     Attrib V32    -0.05903889853204633
#>     Attrib V33    0.29901579473252704
#>     Attrib V34    0.20636113932908726
#>     Attrib V35    0.4905278493534406
#>     Attrib V36    -0.10628149189313167
#>     Attrib V37    -0.5245307579796973
#>     Attrib V38    0.25719494899698914
#>     Attrib V39    0.0044683348119147715
#>     Attrib V4    -0.15495256590131384
#>     Attrib V40    -0.3745809465143048
#>     Attrib V41    -0.2602476459458539
#>     Attrib V42    0.35848980372555755
#>     Attrib V43    0.41787820286607047
#>     Attrib V44    0.28323995461791657
#>     Attrib V45    0.3354381974084734
#>     Attrib V46    0.05922602660837363
#>     Attrib V47    0.02436565225758362
#>     Attrib V48    0.013900189805366009
#>     Attrib V49    0.39971462133884045
#>     Attrib V5    -0.35624682451422
#>     Attrib V50    -0.11657373327038505
#>     Attrib V51    0.3482629837093457
#>     Attrib V52    0.35467454583180236
#>     Attrib V53    0.3495383687436673
#>     Attrib V54    0.7231164817583986
#>     Attrib V55    0.022191164355152615
#>     Attrib V56    0.2075419576546463
#>     Attrib V57    -0.5317290807211552
#>     Attrib V58    0.2645604556598733
#>     Attrib V59    0.26629217637188796
#>     Attrib V6    -0.358081897672586
#>     Attrib V60    0.369948897146014
#>     Attrib V7    -0.03823858312895312
#>     Attrib V8    0.1284479999409334
#>     Attrib V9    0.2769710759650947
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.11379471943759444
#>     Attrib V1    0.2415166313636585
#>     Attrib V10    -0.14816421801501636
#>     Attrib V11    -0.1403301500953114
#>     Attrib V12    -0.10818676855102366
#>     Attrib V13    -0.01669954872177943
#>     Attrib V14    0.08066707421891255
#>     Attrib V15    0.12329187677709523
#>     Attrib V16    0.04608853576585308
#>     Attrib V17    -0.026985807738488726
#>     Attrib V18    0.18296599081709886
#>     Attrib V19    0.20450448671680926
#>     Attrib V2    0.14006484600650518
#>     Attrib V20    0.07928282775382069
#>     Attrib V21    0.11923139416980802
#>     Attrib V22    0.11907649906295203
#>     Attrib V23    0.14108010142289773
#>     Attrib V24    0.0460147172854667
#>     Attrib V25    -0.1409009480517622
#>     Attrib V26    -0.3684447191380285
#>     Attrib V27    -0.5096242648614456
#>     Attrib V28    -0.18181836783949007
#>     Attrib V29    -0.09690612687831084
#>     Attrib V3    -0.03670199320241731
#>     Attrib V30    0.052205334641491824
#>     Attrib V31    -0.4120723972339329
#>     Attrib V32    -0.1569485476422503
#>     Attrib V33    0.010730115327443328
#>     Attrib V34    -0.031220550941468934
#>     Attrib V35    0.12904649319680797
#>     Attrib V36    -0.016821910292707767
#>     Attrib V37    -0.18771837823909088
#>     Attrib V38    0.06790915426721231
#>     Attrib V39    0.083191342004512
#>     Attrib V4    -0.006869419466033469
#>     Attrib V40    -0.1638780483852223
#>     Attrib V41    -0.10294826241327962
#>     Attrib V42    0.2338955515568417
#>     Attrib V43    0.16716635901611632
#>     Attrib V44    0.15190776455649335
#>     Attrib V45    0.2086053707151823
#>     Attrib V46    0.033150847426627404
#>     Attrib V47    -0.014544618446166129
#>     Attrib V48    -0.06168569791578817
#>     Attrib V49    0.23406551453512586
#>     Attrib V5    -0.07515876282949248
#>     Attrib V50    -0.04601360483691036
#>     Attrib V51    0.20796484112469335
#>     Attrib V52    0.222229451995802
#>     Attrib V53    0.24249155433184694
#>     Attrib V54    0.3222538087610633
#>     Attrib V55    -0.011825025623078383
#>     Attrib V56    0.11616909959827658
#>     Attrib V57    -0.24892660616174397
#>     Attrib V58    0.25462037507155055
#>     Attrib V59    0.19369958269683807
#>     Attrib V6    -0.13559084900801843
#>     Attrib V60    0.1984066674050673
#>     Attrib V7    -0.06853131995353695
#>     Attrib V8    0.04206805257276359
#>     Attrib V9    0.05108609981119527
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
#>  0.2173913 
```
