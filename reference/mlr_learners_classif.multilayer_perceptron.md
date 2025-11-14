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
#>     Threshold    -0.03429798948717357
#>     Node 2    2.2839294708183835
#>     Node 3    1.4244391542591952
#>     Node 4    0.6452258772244405
#>     Node 5    -2.4878120014306324
#>     Node 6    1.2926491790710417
#>     Node 7    3.406704239023705
#>     Node 8    0.8295688656473258
#>     Node 9    3.0296722040878517
#>     Node 10    -1.7066881387522996
#>     Node 11    0.9881442541232296
#>     Node 12    1.8550990208417313
#>     Node 13    1.7084681656729719
#>     Node 14    1.1065864753922414
#>     Node 15    -2.425801423435717
#>     Node 16    -1.0118043553489413
#>     Node 17    0.29823238103642774
#>     Node 18    0.16773227558409953
#>     Node 19    2.3936828899143268
#>     Node 20    2.080960130164738
#>     Node 21    -1.9586772132603356
#>     Node 22    0.47116947782969004
#>     Node 23    1.3529429556606813
#>     Node 24    -1.5542329022933035
#>     Node 25    3.1120478362603134
#>     Node 26    -0.7754673932312586
#>     Node 27    1.8675002799261744
#>     Node 28    -3.0988033630167005
#>     Node 29    1.1814468357772938
#>     Node 30    0.5859190179450272
#>     Node 31    0.9134749785351444
#>     Node 32    0.7008957370219094
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.07106875104118072
#>     Node 2    -2.3240627743124653
#>     Node 3    -1.4013235739685321
#>     Node 4    -0.6147598404759534
#>     Node 5    2.516062219538099
#>     Node 6    -1.2670746526614682
#>     Node 7    -3.418062609365118
#>     Node 8    -0.8735877667298401
#>     Node 9    -3.0423571650768415
#>     Node 10    1.6486735165258988
#>     Node 11    -0.9638225193604739
#>     Node 12    -1.9231433481335807
#>     Node 13    -1.6435968234269136
#>     Node 14    -1.039084543330696
#>     Node 15    2.4344835135896026
#>     Node 16    1.0030387427476883
#>     Node 17    -0.2840349376575093
#>     Node 18    -0.14220815882875157
#>     Node 19    -2.3750584779494326
#>     Node 20    -2.0626674762875954
#>     Node 21    2.0134560537581336
#>     Node 22    -0.5325211263292332
#>     Node 23    -1.3927215653089091
#>     Node 24    1.5452928257333078
#>     Node 25    -3.112227017952906
#>     Node 26    0.6952606414929579
#>     Node 27    -1.8993736800300607
#>     Node 28    3.0639167550042146
#>     Node 29    -1.213788656505299
#>     Node 30    -0.5199603897647134
#>     Node 31    -0.8653571535904848
#>     Node 32    -0.728155199614448
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.04557870265734125
#>     Attrib V1    0.6872529931763369
#>     Attrib V10    0.051951721963791934
#>     Attrib V11    0.341923448771799
#>     Attrib V12    0.208005326081359
#>     Attrib V13    0.2317289191072164
#>     Attrib V14    0.13070824719769042
#>     Attrib V15    0.1956767517704458
#>     Attrib V16    -0.2616238333392658
#>     Attrib V17    0.16479800773218042
#>     Attrib V18    -0.053325614182453664
#>     Attrib V19    -0.019833332208034123
#>     Attrib V2    -0.10866127437428519
#>     Attrib V20    0.7581671542926892
#>     Attrib V21    0.6989714843478998
#>     Attrib V22    0.3634423686397135
#>     Attrib V23    0.8564605442191486
#>     Attrib V24    0.8321082275973757
#>     Attrib V25    -0.2588694787451675
#>     Attrib V26    -0.5486137547803001
#>     Attrib V27    -0.15992737701881424
#>     Attrib V28    -0.27348447464548425
#>     Attrib V29    -0.27608714500328674
#>     Attrib V3    0.5825013237854403
#>     Attrib V30    0.4435441355339948
#>     Attrib V31    -1.2136993802851943
#>     Attrib V32    -0.17429230721935354
#>     Attrib V33    0.4685000171866564
#>     Attrib V34    0.0014523349827467531
#>     Attrib V35    -0.11076315697201972
#>     Attrib V36    -1.0429618245605958
#>     Attrib V37    -1.2836649019302335
#>     Attrib V38    0.5574743683234263
#>     Attrib V39    0.6117869653480853
#>     Attrib V4    0.38684514877745463
#>     Attrib V40    -0.020163489374651265
#>     Attrib V41    0.17418613715072398
#>     Attrib V42    0.6126511537387154
#>     Attrib V43    0.7770881291340199
#>     Attrib V44    -0.08447461829456922
#>     Attrib V45    -0.13272250859081172
#>     Attrib V46    0.08825151084987495
#>     Attrib V47    -0.009108069741201751
#>     Attrib V48    0.12725709404671015
#>     Attrib V49    0.5315635234765531
#>     Attrib V5    0.40677701201537336
#>     Attrib V50    -0.40106533989952486
#>     Attrib V51    -0.1121548421513059
#>     Attrib V52    -0.5136923308168027
#>     Attrib V53    -0.0835290002046062
#>     Attrib V54    0.3610450292364754
#>     Attrib V55    -0.28110846663618194
#>     Attrib V56    0.4686466198866332
#>     Attrib V57    -0.28499753756373036
#>     Attrib V58    0.5358674270209861
#>     Attrib V59    0.42621251469871113
#>     Attrib V6    -0.4537986221621662
#>     Attrib V60    0.0018993020241727602
#>     Attrib V7    -0.5375232348600495
#>     Attrib V8    -0.2929402083030724
#>     Attrib V9    0.7181935803353657
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.009937426810273847
#>     Attrib V1    0.45737432917446336
#>     Attrib V10    0.014146450654004954
#>     Attrib V11    0.16927766766012495
#>     Attrib V12    0.11772017496830935
#>     Attrib V13    0.1995713711699146
#>     Attrib V14    0.1276153205828135
#>     Attrib V15    0.23806897283344633
#>     Attrib V16    -0.1229972217665386
#>     Attrib V17    0.12210435363649998
#>     Attrib V18    -0.07808964628547078
#>     Attrib V19    0.05093401476408511
#>     Attrib V2    0.02402305563985829
#>     Attrib V20    0.5375006015522478
#>     Attrib V21    0.44314632407358706
#>     Attrib V22    0.2510711280669427
#>     Attrib V23    0.4947015684927878
#>     Attrib V24    0.46122291308275176
#>     Attrib V25    -0.18682855268138276
#>     Attrib V26    -0.41285040798456507
#>     Attrib V27    -0.20162198018271635
#>     Attrib V28    -0.3006322326356887
#>     Attrib V29    -0.34689817435242526
#>     Attrib V3    0.388831344869648
#>     Attrib V30    0.2796236682742479
#>     Attrib V31    -0.714997226994974
#>     Attrib V32    -0.11636598937258545
#>     Attrib V33    0.34701736310912823
#>     Attrib V34    0.012820119348031586
#>     Attrib V35    0.005902247008828126
#>     Attrib V36    -0.6206993745977265
#>     Attrib V37    -0.7610994747801001
#>     Attrib V38    0.33398463816610713
#>     Attrib V39    0.38082281453932143
#>     Attrib V4    0.2799414709958649
#>     Attrib V40    -0.03248341122281718
#>     Attrib V41    0.059513237608055686
#>     Attrib V42    0.32373513621715483
#>     Attrib V43    0.4382542822589283
#>     Attrib V44    -0.0368444308910111
#>     Attrib V45    -0.058854425673129936
#>     Attrib V46    0.028781650622216763
#>     Attrib V47    -0.024257668715906046
#>     Attrib V48    -6.804327377763207E-4
#>     Attrib V49    0.2631880463927635
#>     Attrib V5    0.2135744228877186
#>     Attrib V50    -0.2684919207141438
#>     Attrib V51    -0.09845318374317669
#>     Attrib V52    -0.31540180460081946
#>     Attrib V53    -0.06819774316340009
#>     Attrib V54    0.3477560593814638
#>     Attrib V55    -0.0677254582335719
#>     Attrib V56    0.36651532968728257
#>     Attrib V57    -0.12949732208984546
#>     Attrib V58    0.39768155114133114
#>     Attrib V59    0.2909372902972651
#>     Attrib V6    -0.3308288373631712
#>     Attrib V60    0.04304286565922347
#>     Attrib V7    -0.3382209855274366
#>     Attrib V8    -0.15737138573386555
#>     Attrib V9    0.4400813448933102
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.0522014233338283
#>     Attrib V1    0.17304985154393618
#>     Attrib V10    0.019680671643959594
#>     Attrib V11    0.11161552123563435
#>     Attrib V12    0.09537700435274038
#>     Attrib V13    0.11500859049461602
#>     Attrib V14    0.03829774545752152
#>     Attrib V15    0.07465235880499785
#>     Attrib V16    -0.09176238908310373
#>     Attrib V17    0.04799639914399611
#>     Attrib V18    -0.038881356036501565
#>     Attrib V19    -0.033592801462091905
#>     Attrib V2    -0.022912665464087878
#>     Attrib V20    0.2283231451931631
#>     Attrib V21    0.20001675463578794
#>     Attrib V22    -0.014339115693965518
#>     Attrib V23    0.15329383370483055
#>     Attrib V24    0.1309560593404939
#>     Attrib V25    -0.17491441229124674
#>     Attrib V26    -0.20413028774050493
#>     Attrib V27    -0.06810580555577733
#>     Attrib V28    -0.020222658942324542
#>     Attrib V29    -0.04431235432914532
#>     Attrib V3    0.18678116777530243
#>     Attrib V30    0.1702946206948635
#>     Attrib V31    -0.27622162766790137
#>     Attrib V32    -0.015537249772237438
#>     Attrib V33    0.21678150929128315
#>     Attrib V34    0.13841810572506918
#>     Attrib V35    0.1248378121995232
#>     Attrib V36    -0.2609864800672611
#>     Attrib V37    -0.26759644660373516
#>     Attrib V38    0.19599937909612236
#>     Attrib V39    0.18270172134158097
#>     Attrib V4    0.1192360556350213
#>     Attrib V40    -0.004428369179958672
#>     Attrib V41    0.008372439135572264
#>     Attrib V42    0.09758781476471327
#>     Attrib V43    0.14434860797272406
#>     Attrib V44    0.015100599470952306
#>     Attrib V45    0.07716266886830978
#>     Attrib V46    0.020416149282985005
#>     Attrib V47    -0.05463964266093783
#>     Attrib V48    0.04461928022347219
#>     Attrib V49    0.1305518616467131
#>     Attrib V5    0.1207776906483235
#>     Attrib V50    -0.1346490308117491
#>     Attrib V51    0.022529901603317137
#>     Attrib V52    -0.11875984745216867
#>     Attrib V53    0.002993637655473386
#>     Attrib V54    0.08161264845180063
#>     Attrib V55    -0.07228399063586229
#>     Attrib V56    0.12039499292104132
#>     Attrib V57    -0.05777249868518362
#>     Attrib V58    0.08424689104409926
#>     Attrib V59    0.026788460546950884
#>     Attrib V6    -0.14723200220266203
#>     Attrib V60    -0.07749715262624389
#>     Attrib V7    -0.16950777292092392
#>     Attrib V8    -0.1685275698243782
#>     Attrib V9    0.265360029064977
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.6712235787962152
#>     Attrib V1    -0.38716288202981913
#>     Attrib V10    -0.743308719844285
#>     Attrib V11    -0.7860673967359667
#>     Attrib V12    -0.6198529152598174
#>     Attrib V13    -0.2444855588992434
#>     Attrib V14    0.447929642962168
#>     Attrib V15    0.4314452939987648
#>     Attrib V16    0.43675408950434014
#>     Attrib V17    0.3460142929833866
#>     Attrib V18    0.11367764273426106
#>     Attrib V19    0.23306652949617057
#>     Attrib V2    0.06585711298656298
#>     Attrib V20    -0.2446545251237571
#>     Attrib V21    -0.22622500247329902
#>     Attrib V22    0.04858870278590046
#>     Attrib V23    -0.4256283263315426
#>     Attrib V24    -0.5419423643035927
#>     Attrib V25    0.17078385452331596
#>     Attrib V26    -0.15586889689967484
#>     Attrib V27    -0.9159759848999777
#>     Attrib V28    -1.1563680649164663
#>     Attrib V29    -0.6903509082000915
#>     Attrib V3    -0.037439878484685614
#>     Attrib V30    -0.5757479110446846
#>     Attrib V31    0.7361205200316214
#>     Attrib V32    0.15479311548558664
#>     Attrib V33    -0.0745400167388262
#>     Attrib V34    -0.1304033941175363
#>     Attrib V35    -0.33197041276777894
#>     Attrib V36    0.9321279937767656
#>     Attrib V37    0.3449840581900551
#>     Attrib V38    -0.519776933864598
#>     Attrib V39    0.05226146962899275
#>     Attrib V4    -0.5455637168908685
#>     Attrib V40    0.045872000685003744
#>     Attrib V41    -0.7503295058063121
#>     Attrib V42    -8.921348734111339E-4
#>     Attrib V43    -0.32710410308084403
#>     Attrib V44    -0.2485050146828339
#>     Attrib V45    -0.41244149148390613
#>     Attrib V46    -0.729284743573702
#>     Attrib V47    -0.34293175900810796
#>     Attrib V48    -0.45918951184703405
#>     Attrib V49    -0.6119543645376995
#>     Attrib V5    -0.4504789638230948
#>     Attrib V50    0.10299264301864616
#>     Attrib V51    -0.43135453046689953
#>     Attrib V52    -0.5821202383535893
#>     Attrib V53    -0.35319240284325304
#>     Attrib V54    -0.27256224054957706
#>     Attrib V55    0.3485876136816922
#>     Attrib V56    0.6098055377103677
#>     Attrib V57    0.2154707962039774
#>     Attrib V58    0.1717357937193257
#>     Attrib V59    0.3612291685275346
#>     Attrib V6    -0.366321061632208
#>     Attrib V60    0.3196158050468232
#>     Attrib V7    0.26846469008254553
#>     Attrib V8    0.3227171076818172
#>     Attrib V9    -0.9100374804669841
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.04353051906036608
#>     Attrib V1    0.45584503204299687
#>     Attrib V10    -0.014328425846625246
#>     Attrib V11    0.19282831370263362
#>     Attrib V12    0.15544525749946564
#>     Attrib V13    0.12713675467717078
#>     Attrib V14    0.06587556885210583
#>     Attrib V15    0.1402568953981712
#>     Attrib V16    -0.0575902244017227
#>     Attrib V17    0.09765511267743182
#>     Attrib V18    -0.00574946858427407
#>     Attrib V19    -0.008886284988755115
#>     Attrib V2    0.0037297564547105573
#>     Attrib V20    0.48127851819355943
#>     Attrib V21    0.43698288304672434
#>     Attrib V22    0.15618020028414786
#>     Attrib V23    0.4230544748169259
#>     Attrib V24    0.4608252010609243
#>     Attrib V25    -0.14479623513918063
#>     Attrib V26    -0.37597248108434084
#>     Attrib V27    -0.14437702179171666
#>     Attrib V28    -0.293039444186654
#>     Attrib V29    -0.26214975638913873
#>     Attrib V3    0.33271119045033115
#>     Attrib V30    0.2507597605337002
#>     Attrib V31    -0.655312065524662
#>     Attrib V32    -0.0745357665172423
#>     Attrib V33    0.34813204394523717
#>     Attrib V34    0.0557271700737752
#>     Attrib V35    0.02998075529803112
#>     Attrib V36    -0.5998285957227601
#>     Attrib V37    -0.682770035232531
#>     Attrib V38    0.34024113202979794
#>     Attrib V39    0.32074625203892443
#>     Attrib V4    0.2833303942054255
#>     Attrib V40    -0.07554413581914114
#>     Attrib V41    0.0992054101281524
#>     Attrib V42    0.2983968131821319
#>     Attrib V43    0.37253930628541604
#>     Attrib V44    -0.07975544156913232
#>     Attrib V45    -0.03006738128632582
#>     Attrib V46    0.04776688489992729
#>     Attrib V47    -0.0785995271673484
#>     Attrib V48    -0.011613162634360262
#>     Attrib V49    0.2318151804064316
#>     Attrib V5    0.1978379642406497
#>     Attrib V50    -0.23251972672494245
#>     Attrib V51    -0.05217622940746363
#>     Attrib V52    -0.33159726047040144
#>     Attrib V53    0.006775675443039152
#>     Attrib V54    0.2428509665131252
#>     Attrib V55    -0.11953279679159379
#>     Attrib V56    0.3058000955151908
#>     Attrib V57    -0.12286568776471765
#>     Attrib V58    0.32954232040978004
#>     Attrib V59    0.26873613113990436
#>     Attrib V6    -0.21697204242823065
#>     Attrib V60    0.07351812748806867
#>     Attrib V7    -0.2478589767952681
#>     Attrib V8    -0.12355565604001666
#>     Attrib V9    0.4984507800742321
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.936217871253609
#>     Attrib V1    0.4521072207245718
#>     Attrib V10    0.9943745121223141
#>     Attrib V11    1.0278158001092867
#>     Attrib V12    0.7004389210952178
#>     Attrib V13    0.22660370777007816
#>     Attrib V14    -0.6043611580091376
#>     Attrib V15    -0.4586127036030471
#>     Attrib V16    -0.37019350227572506
#>     Attrib V17    -0.39046916837786394
#>     Attrib V18    -0.09937255038661004
#>     Attrib V19    -0.27676974616811384
#>     Attrib V2    0.12431439873214387
#>     Attrib V20    0.28437602609725
#>     Attrib V21    0.34836816704489043
#>     Attrib V22    -0.11514521278389635
#>     Attrib V23    0.3980314282486727
#>     Attrib V24    0.38655940264192684
#>     Attrib V25    -0.25146522595711457
#>     Attrib V26    0.3891101657096866
#>     Attrib V27    1.3569920387297296
#>     Attrib V28    1.6256384238971706
#>     Attrib V29    1.0010364776223861
#>     Attrib V3    0.08247613492235895
#>     Attrib V30    0.5314984920410303
#>     Attrib V31    -1.021525509331641
#>     Attrib V32    -0.515466166652204
#>     Attrib V33    -0.41180741847709046
#>     Attrib V34    -0.2062360078513543
#>     Attrib V35    0.2948934530910454
#>     Attrib V36    -1.1230695379164124
#>     Attrib V37    -0.08059364917096454
#>     Attrib V38    0.5651074309497047
#>     Attrib V39    -0.3361083783653262
#>     Attrib V4    0.5153696753056531
#>     Attrib V40    -0.0168178869227561
#>     Attrib V41    0.9133155845924691
#>     Attrib V42    -0.046325277728359274
#>     Attrib V43    0.3397178571617665
#>     Attrib V44    0.5231035611502016
#>     Attrib V45    0.6739238599792808
#>     Attrib V46    1.0405660561100543
#>     Attrib V47    0.5031039688509693
#>     Attrib V48    0.443499011489197
#>     Attrib V49    0.506967564949256
#>     Attrib V5    0.5724508355931692
#>     Attrib V50    0.051992176675597385
#>     Attrib V51    0.5412888369461579
#>     Attrib V52    0.9275040209750997
#>     Attrib V53    0.6424884938620345
#>     Attrib V54    0.5859769782856707
#>     Attrib V55    -0.41068269582640127
#>     Attrib V56    -0.8294911320627648
#>     Attrib V57    -0.14905351981699025
#>     Attrib V58    -0.3966240315553501
#>     Attrib V59    -0.6110369461988113
#>     Attrib V6    0.770420287683314
#>     Attrib V60    -0.17305648379884211
#>     Attrib V7    0.01444429709804295
#>     Attrib V8    -0.4184987418132962
#>     Attrib V9    1.0257119295550365
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.10342325484781899
#>     Attrib V1    0.23741244734673947
#>     Attrib V10    0.07080218876829106
#>     Attrib V11    0.20441543467189008
#>     Attrib V12    0.12569533513872536
#>     Attrib V13    0.12396077928747336
#>     Attrib V14    -0.09212777157571356
#>     Attrib V15    -0.010615489577441973
#>     Attrib V16    -0.09140729035208081
#>     Attrib V17    0.026416674931924688
#>     Attrib V18    -0.0883585079527651
#>     Attrib V19    -0.055323874069476815
#>     Attrib V2    -0.006426342129220829
#>     Attrib V20    0.23395872738078582
#>     Attrib V21    0.2042575658194443
#>     Attrib V22    -0.014055868230378231
#>     Attrib V23    0.20319653265737916
#>     Attrib V24    0.25365495862447945
#>     Attrib V25    -0.17410631973023283
#>     Attrib V26    -0.22694550129578747
#>     Attrib V27    0.0024367039568925714
#>     Attrib V28    -1.7797316570182243E-4
#>     Attrib V29    -0.03764456360518017
#>     Attrib V3    0.18022965916639408
#>     Attrib V30    0.26865124886637093
#>     Attrib V31    -0.3995233186336339
#>     Attrib V32    -0.017123212968504053
#>     Attrib V33    0.27266739303756277
#>     Attrib V34    0.140963152269133
#>     Attrib V35    0.1355918317084572
#>     Attrib V36    -0.3251697567937961
#>     Attrib V37    -0.3567511136729962
#>     Attrib V38    0.3515844268666591
#>     Attrib V39    0.19994745127359126
#>     Attrib V4    0.21906668814655939
#>     Attrib V40    -0.05127164078072007
#>     Attrib V41    0.05391094547839105
#>     Attrib V42    0.03172095300678169
#>     Attrib V43    0.20453929205079385
#>     Attrib V44    0.04255863756930111
#>     Attrib V45    0.06207044321432719
#>     Attrib V46    0.10565251658138591
#>     Attrib V47    -0.022143648993106908
#>     Attrib V48    0.09746749265423779
#>     Attrib V49    0.17659006370440777
#>     Attrib V5    0.09785803508591569
#>     Attrib V50    -0.27153734750197345
#>     Attrib V51    -0.0276736048784422
#>     Attrib V52    -0.1528239451978925
#>     Attrib V53    -0.003424789650805745
#>     Attrib V54    0.16077247728013525
#>     Attrib V55    -0.16917509220169033
#>     Attrib V56    0.04495921969298197
#>     Attrib V57    -0.10416942434473508
#>     Attrib V58    0.06968203222297917
#>     Attrib V59    0.04274077235954154
#>     Attrib V6    -0.16626084835648186
#>     Attrib V60    -0.06708405218655501
#>     Attrib V7    -0.2240822405353006
#>     Attrib V8    -0.2276097319741735
#>     Attrib V9    0.3308767682411714
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.718694227299787
#>     Attrib V1    0.4293005916258289
#>     Attrib V10    0.9513038461904533
#>     Attrib V11    0.9489666317015518
#>     Attrib V12    0.7722861540897984
#>     Attrib V13    0.2993494153529803
#>     Attrib V14    -0.5913314426543166
#>     Attrib V15    -0.4461909243537618
#>     Attrib V16    -0.4010859807665475
#>     Attrib V17    -0.34515340733729455
#>     Attrib V18    -0.13501573622396343
#>     Attrib V19    -0.37256179732344746
#>     Attrib V2    0.12079728183160428
#>     Attrib V20    0.16334644123224926
#>     Attrib V21    0.26194871913299633
#>     Attrib V22    -0.14945293169558638
#>     Attrib V23    0.32563661263926086
#>     Attrib V24    0.3747920263737368
#>     Attrib V25    -0.19202860262851443
#>     Attrib V26    0.3150286929634339
#>     Attrib V27    1.2368451554787165
#>     Attrib V28    1.4670675107622677
#>     Attrib V29    0.8385356696163574
#>     Attrib V3    0.05416181227662562
#>     Attrib V30    0.5503035723889669
#>     Attrib V31    -0.8611470303305409
#>     Attrib V32    -0.3530746247313731
#>     Attrib V33    -0.22547896761836644
#>     Attrib V34    -0.024357412052309783
#>     Attrib V35    0.31219673302083323
#>     Attrib V36    -0.9854702024512593
#>     Attrib V37    -0.1382525320366366
#>     Attrib V38    0.5483663290059572
#>     Attrib V39    -0.18492803268970595
#>     Attrib V4    0.4828685158522193
#>     Attrib V40    -0.05562025675277398
#>     Attrib V41    0.7556900296051706
#>     Attrib V42    -0.14773584803566053
#>     Attrib V43    0.31765080371783294
#>     Attrib V44    0.40671863906048733
#>     Attrib V45    0.5870263962976339
#>     Attrib V46    0.9148412305748842
#>     Attrib V47    0.43278918557430085
#>     Attrib V48    0.4134839511013694
#>     Attrib V49    0.5107192159813259
#>     Attrib V5    0.47799894429375045
#>     Attrib V50    -0.010311994887253269
#>     Attrib V51    0.5329330657215577
#>     Attrib V52    0.8344191720228608
#>     Attrib V53    0.5069242669822791
#>     Attrib V54    0.4478113566262313
#>     Attrib V55    -0.2986370856574045
#>     Attrib V56    -0.7031936815950061
#>     Attrib V57    -0.21284876644128614
#>     Attrib V58    -0.36472555905481385
#>     Attrib V59    -0.5246216583050624
#>     Attrib V6    0.63563937020926
#>     Attrib V60    -0.2099139889030307
#>     Attrib V7    -0.07293121543238833
#>     Attrib V8    -0.36089201174902247
#>     Attrib V9    0.9249501935873236
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.5741243894526151
#>     Attrib V1    -0.39896028888688634
#>     Attrib V10    -0.2771529062435768
#>     Attrib V11    -0.5192530307283515
#>     Attrib V12    -0.35616116160242356
#>     Attrib V13    -0.19241143121899854
#>     Attrib V14    0.29118997168173405
#>     Attrib V15    0.10896986673715046
#>     Attrib V16    0.3942566295600416
#>     Attrib V17    0.06535345228306581
#>     Attrib V18    0.2592550584495032
#>     Attrib V19    0.2886469251573618
#>     Attrib V2    0.07664199282933705
#>     Attrib V20    -0.3141309150443427
#>     Attrib V21    -0.2942324106745969
#>     Attrib V22    -0.01319398897132736
#>     Attrib V23    -0.3609873277217275
#>     Attrib V24    -0.4644514907505164
#>     Attrib V25    0.2960570680227105
#>     Attrib V26    0.29581059345270083
#>     Attrib V27    -0.30542173866342975
#>     Attrib V28    -0.28829625607302767
#>     Attrib V29    -0.14987442458357125
#>     Attrib V3    -0.1952574609014567
#>     Attrib V30    -0.47257819994086997
#>     Attrib V31    0.7809589902224601
#>     Attrib V32    0.04779672371524679
#>     Attrib V33    -0.3093354034907054
#>     Attrib V34    -0.1405840386684399
#>     Attrib V35    -0.23752723450438587
#>     Attrib V36    0.764484854074544
#>     Attrib V37    0.580650729348665
#>     Attrib V38    -0.5092425636661156
#>     Attrib V39    -0.29207442208482187
#>     Attrib V4    -0.29950696396756454
#>     Attrib V40    0.10505880013910911
#>     Attrib V41    -0.29052575501440236
#>     Attrib V42    -0.23516946581228199
#>     Attrib V43    -0.4550865627330087
#>     Attrib V44    -0.01743575436779308
#>     Attrib V45    -0.11175778992887465
#>     Attrib V46    -0.36608069938165017
#>     Attrib V47    -0.12294345611656507
#>     Attrib V48    -0.32870318290176165
#>     Attrib V49    -0.48293812551994514
#>     Attrib V5    -0.2641408675118152
#>     Attrib V50    0.4359069742918665
#>     Attrib V51    -0.04837359727961884
#>     Attrib V52    0.10209626031348766
#>     Attrib V53    0.11446560425915212
#>     Attrib V54    -0.17049396947264017
#>     Attrib V55    0.40770700100633217
#>     Attrib V56    0.0877319372182776
#>     Attrib V57    0.38325065653062806
#>     Attrib V58    -0.07313078108345579
#>     Attrib V59    0.09355426442729349
#>     Attrib V6    0.16973862897506561
#>     Attrib V60    0.23802684616107142
#>     Attrib V7    0.5468442275851723
#>     Attrib V8    0.4442873386076042
#>     Attrib V9    -0.6850719106471348
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.040841934695320194
#>     Attrib V1    0.28907600795420785
#>     Attrib V10    0.034460771833536366
#>     Attrib V11    0.18754011520110192
#>     Attrib V12    0.1662819431394887
#>     Attrib V13    0.07620251204722778
#>     Attrib V14    -0.03896639045332719
#>     Attrib V15    0.02992039805706121
#>     Attrib V16    -0.13340807271652694
#>     Attrib V17    0.09018295880882654
#>     Attrib V18    -0.041167388836452344
#>     Attrib V19    -0.06642356651850917
#>     Attrib V2    -0.05086147219236904
#>     Attrib V20    0.36591097179591175
#>     Attrib V21    0.24640107940990486
#>     Attrib V22    0.024809866419418552
#>     Attrib V23    0.25992014802436797
#>     Attrib V24    0.2489872614179706
#>     Attrib V25    -0.1928255861222361
#>     Attrib V26    -0.34130068585261397
#>     Attrib V27    -0.050247163306543656
#>     Attrib V28    -0.061058696584079204
#>     Attrib V29    -0.1315084104500448
#>     Attrib V3    0.1747885665942473
#>     Attrib V30    0.2656736132331385
#>     Attrib V31    -0.5186868815980062
#>     Attrib V32    -0.08024378030081818
#>     Attrib V33    0.27264679818661874
#>     Attrib V34    0.1889069219006174
#>     Attrib V35    0.1757324003902312
#>     Attrib V36    -0.38905249677386466
#>     Attrib V37    -0.4509236060664473
#>     Attrib V38    0.39257112701961877
#>     Attrib V39    0.24777270621945482
#>     Attrib V4    0.1719764275264921
#>     Attrib V40    -0.06370677763058995
#>     Attrib V41    -0.0033740318514742947
#>     Attrib V42    0.13572071112557785
#>     Attrib V43    0.26616121446602403
#>     Attrib V44    0.016969723918254045
#>     Attrib V45    0.08155731803963431
#>     Attrib V46    0.07288248928797644
#>     Attrib V47    -0.00803675741869804
#>     Attrib V48    0.07595208718071976
#>     Attrib V49    0.1668269486442857
#>     Attrib V5    0.1536214262221128
#>     Attrib V50    -0.23770676383296419
#>     Attrib V51    0.027523638073084444
#>     Attrib V52    -0.23314300956623732
#>     Attrib V53    -0.08360518818062782
#>     Attrib V54    0.22296143408261201
#>     Attrib V55    -0.12907150229460942
#>     Attrib V56    0.14451562993995054
#>     Attrib V57    -0.14074470621677837
#>     Attrib V58    0.16627356027646908
#>     Attrib V59    0.011904142151501765
#>     Attrib V6    -0.18250594354650646
#>     Attrib V60    -0.07825648460722566
#>     Attrib V7    -0.3093931978702276
#>     Attrib V8    -0.18606329308065625
#>     Attrib V9    0.37396541638496417
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.16298291089765568
#>     Attrib V1    0.5385927018958102
#>     Attrib V10    -5.603894069693686E-4
#>     Attrib V11    0.36196396908486567
#>     Attrib V12    0.17073932156419686
#>     Attrib V13    0.22009401275026164
#>     Attrib V14    0.0755063253610968
#>     Attrib V15    0.1410981259662439
#>     Attrib V16    -0.20844719342486345
#>     Attrib V17    0.10873990411518242
#>     Attrib V18    -0.08362158250385264
#>     Attrib V19    0.026923982632674266
#>     Attrib V2    -0.012902326107772994
#>     Attrib V20    0.6179959795130168
#>     Attrib V21    0.5646877043648356
#>     Attrib V22    0.3352611231953059
#>     Attrib V23    0.7227584102620278
#>     Attrib V24    0.6400461946797971
#>     Attrib V25    -0.28360519069036433
#>     Attrib V26    -0.48320828668069365
#>     Attrib V27    -0.06973780112422119
#>     Attrib V28    -0.22762954881056138
#>     Attrib V29    -0.205861605283818
#>     Attrib V3    0.41211467209602637
#>     Attrib V30    0.3593670873208022
#>     Attrib V31    -1.0661301538617993
#>     Attrib V32    -0.2261762471586247
#>     Attrib V33    0.4327267383891086
#>     Attrib V34    0.06407807887762615
#>     Attrib V35    -0.006315010597934031
#>     Attrib V36    -0.8681288583062023
#>     Attrib V37    -1.036165966373377
#>     Attrib V38    0.5197754521934415
#>     Attrib V39    0.45186222895453204
#>     Attrib V4    0.39535350675377356
#>     Attrib V40    -0.028187616791400416
#>     Attrib V41    0.1247586927956075
#>     Attrib V42    0.4155050254627336
#>     Attrib V43    0.6684501780561228
#>     Attrib V44    -0.10014629889423327
#>     Attrib V45    -0.02195191399308164
#>     Attrib V46    0.1783852389406272
#>     Attrib V47    8.511865226786314E-4
#>     Attrib V48    0.13593083372575548
#>     Attrib V49    0.42734793152470024
#>     Attrib V5    0.3218445209441353
#>     Attrib V50    -0.3775514211202638
#>     Attrib V51    -0.08270622850539476
#>     Attrib V52    -0.40202692249265165
#>     Attrib V53    -0.055186694383740596
#>     Attrib V54    0.37028966277056174
#>     Attrib V55    -0.2553472368073733
#>     Attrib V56    0.3863549794909886
#>     Attrib V57    -0.1931175496583563
#>     Attrib V58    0.44910207616348924
#>     Attrib V59    0.3282489479101268
#>     Attrib V6    -0.40059482514419475
#>     Attrib V60    -0.01564919762689517
#>     Attrib V7    -0.4508842371687767
#>     Attrib V8    -0.2936486413164134
#>     Attrib V9    0.6321519968761726
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.05204913721892667
#>     Attrib V1    0.5080778300910117
#>     Attrib V10    -0.016428635023226515
#>     Attrib V11    0.2320145363784325
#>     Attrib V12    0.13253133999303082
#>     Attrib V13    0.23715347363055053
#>     Attrib V14    0.09963744494970006
#>     Attrib V15    0.15549142528590162
#>     Attrib V16    -0.19144331583705393
#>     Attrib V17    0.1564817838368056
#>     Attrib V18    -0.03957438556044357
#>     Attrib V19    0.0054869040379826334
#>     Attrib V2    -0.060148076206764114
#>     Attrib V20    0.609061950047737
#>     Attrib V21    0.5411896519744616
#>     Attrib V22    0.2551300924207677
#>     Attrib V23    0.6486944895982859
#>     Attrib V24    0.6093202265658795
#>     Attrib V25    -0.16136912502853398
#>     Attrib V26    -0.454780920443078
#>     Attrib V27    -0.1298721298136489
#>     Attrib V28    -0.3269689617520176
#>     Attrib V29    -0.2678985213568051
#>     Attrib V3    0.4655042126657257
#>     Attrib V30    0.2986333543625565
#>     Attrib V31    -0.9046256813950087
#>     Attrib V32    -0.15581460665091268
#>     Attrib V33    0.36169790736587015
#>     Attrib V34    0.07062060362806116
#>     Attrib V35    -0.045011142184112084
#>     Attrib V36    -0.7544975062732213
#>     Attrib V37    -0.8946408244573401
#>     Attrib V38    0.41661646780549955
#>     Attrib V39    0.4854609446927562
#>     Attrib V4    0.3285143338723366
#>     Attrib V40    -0.027809460081431408
#>     Attrib V41    0.09214474339542388
#>     Attrib V42    0.39790046314002997
#>     Attrib V43    0.48650593157237476
#>     Attrib V44    -0.09015409276070623
#>     Attrib V45    -0.09717249468005884
#>     Attrib V46    0.10049499884848537
#>     Attrib V47    0.011464788002411162
#>     Attrib V48    0.05278517193824282
#>     Attrib V49    0.40754280697185524
#>     Attrib V5    0.29524116074599266
#>     Attrib V50    -0.3056691631809231
#>     Attrib V51    -0.08686762316895759
#>     Attrib V52    -0.43151320512973157
#>     Attrib V53    -0.03590214610372936
#>     Attrib V54    0.28481293021574394
#>     Attrib V55    -0.18210819178180992
#>     Attrib V56    0.3718049766936543
#>     Attrib V57    -0.16285407969289692
#>     Attrib V58    0.40768417897363707
#>     Attrib V59    0.3251937418674119
#>     Attrib V6    -0.3037037773096247
#>     Attrib V60    0.07364903435600291
#>     Attrib V7    -0.3300257961932569
#>     Attrib V8    -0.25455439922782
#>     Attrib V9    0.5524910228902067
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.001218007549726625
#>     Attrib V1    0.41285500878946635
#>     Attrib V10    0.027746274434445446
#>     Attrib V11    0.21364328104721955
#>     Attrib V12    0.11549670536436991
#>     Attrib V13    0.10623254799239394
#>     Attrib V14    0.031821856512731624
#>     Attrib V15    0.16962679969500266
#>     Attrib V16    -0.10597386549756427
#>     Attrib V17    0.11116366131778423
#>     Attrib V18    -0.03092579290569754
#>     Attrib V19    -0.021353783199243737
#>     Attrib V2    0.04585189702787298
#>     Attrib V20    0.3994749951755913
#>     Attrib V21    0.33024419593020193
#>     Attrib V22    0.12651956142447784
#>     Attrib V23    0.3728819013223662
#>     Attrib V24    0.2999616896655795
#>     Attrib V25    -0.18767218557145526
#>     Attrib V26    -0.29949446566190385
#>     Attrib V27    -0.14142221123693996
#>     Attrib V28    -0.24952755807070692
#>     Attrib V29    -0.2676448936003906
#>     Attrib V3    0.22788321598470254
#>     Attrib V30    0.20420361081614827
#>     Attrib V31    -0.5627672839480042
#>     Attrib V32    -0.13032222652093026
#>     Attrib V33    0.27554622831681425
#>     Attrib V34    0.04983931437829752
#>     Attrib V35    0.08161032547060944
#>     Attrib V36    -0.4846579347360961
#>     Attrib V37    -0.5084192449234969
#>     Attrib V38    0.3014132202616783
#>     Attrib V39    0.2805656897255697
#>     Attrib V4    0.22014263878687668
#>     Attrib V40    -0.06182541296727254
#>     Attrib V41    -0.013453350681128302
#>     Attrib V42    0.14260650630775035
#>     Attrib V43    0.2943397276733032
#>     Attrib V44    0.00989561623175321
#>     Attrib V45    -0.048171566452491925
#>     Attrib V46    0.06506842868767745
#>     Attrib V47    -0.06213222607157179
#>     Attrib V48    0.05704679755336674
#>     Attrib V49    0.24559390733188505
#>     Attrib V5    0.13149797502841734
#>     Attrib V50    -0.22592006288298283
#>     Attrib V51    -0.06199541121728435
#>     Attrib V52    -0.2459687099960523
#>     Attrib V53    -0.052119016535691745
#>     Attrib V54    0.3187882994592587
#>     Attrib V55    -0.04379132904985314
#>     Attrib V56    0.2696335529430764
#>     Attrib V57    -0.10930632466334005
#>     Attrib V58    0.27896565145571495
#>     Attrib V59    0.17674678117100742
#>     Attrib V6    -0.24526261648264341
#>     Attrib V60    0.0860536984826705
#>     Attrib V7    -0.24550527525679605
#>     Attrib V8    -0.20391097785405732
#>     Attrib V9    0.3808591491844175
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6243217540368456
#>     Attrib V1    -0.42583719490211785
#>     Attrib V10    -0.7476413180966764
#>     Attrib V11    -0.8842524584514995
#>     Attrib V12    -0.484084028468693
#>     Attrib V13    -0.24385577730601585
#>     Attrib V14    0.4480589665565621
#>     Attrib V15    0.5213267173800263
#>     Attrib V16    0.5632794640664011
#>     Attrib V17    0.295860015531128
#>     Attrib V18    0.1357353430129873
#>     Attrib V19    0.2537376061709754
#>     Attrib V2    0.10132169876369651
#>     Attrib V20    -0.2773577155820934
#>     Attrib V21    -0.3333850237766116
#>     Attrib V22    0.033413604104282665
#>     Attrib V23    -0.6172361036015995
#>     Attrib V24    -0.6303097003119922
#>     Attrib V25    0.16434143103789822
#>     Attrib V26    -0.006899300832757116
#>     Attrib V27    -0.7917475714433968
#>     Attrib V28    -0.8738528827873839
#>     Attrib V29    -0.5218103827888806
#>     Attrib V3    -0.08315655877985392
#>     Attrib V30    -0.7401657806656
#>     Attrib V31    0.6891882168692693
#>     Attrib V32    -0.019700874257285853
#>     Attrib V33    -0.42841081825850785
#>     Attrib V34    -0.31286459401568345
#>     Attrib V35    -0.4252907256207216
#>     Attrib V36    0.976004847502453
#>     Attrib V37    0.6257472867281902
#>     Attrib V38    -0.5345095854808397
#>     Attrib V39    -0.06258293294912269
#>     Attrib V4    -0.5124793328697943
#>     Attrib V40    0.014724520989990776
#>     Attrib V41    -0.7823257440672323
#>     Attrib V42    -0.17350627603313973
#>     Attrib V43    -0.3812453628362628
#>     Attrib V44    -0.14231651117765076
#>     Attrib V45    -0.22845182649562362
#>     Attrib V46    -0.569947783444411
#>     Attrib V47    -0.2910879645841866
#>     Attrib V48    -0.5291087019108979
#>     Attrib V49    -0.7193022185502451
#>     Attrib V5    -0.43174800214006936
#>     Attrib V50    0.2103115881290395
#>     Attrib V51    -0.42144409924333853
#>     Attrib V52    -0.4220509151164648
#>     Attrib V53    -0.05270295968918483
#>     Attrib V54    -0.10880924736955808
#>     Attrib V55    0.33202820109972014
#>     Attrib V56    0.5572225045274027
#>     Attrib V57    0.3715392564166434
#>     Attrib V58    0.0704006252169124
#>     Attrib V59    0.26032314586211397
#>     Attrib V6    -0.17709624625016118
#>     Attrib V60    0.426388962818927
#>     Attrib V7    0.4129631707539368
#>     Attrib V8    0.29466345771519226
#>     Attrib V9    -1.041552509593361
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.3183130064387089
#>     Attrib V1    -0.30659406919379406
#>     Attrib V10    -0.11028616438695416
#>     Attrib V11    -0.32984119499430475
#>     Attrib V12    -0.26214500929506196
#>     Attrib V13    -0.14626858212654933
#>     Attrib V14    0.07589822704344394
#>     Attrib V15    0.02834110032478091
#>     Attrib V16    0.24836317138187988
#>     Attrib V17    0.055719876319675524
#>     Attrib V18    0.15846121815114206
#>     Attrib V19    0.15021422710816748
#>     Attrib V2    -0.011850830116253448
#>     Attrib V20    -0.2648277579720909
#>     Attrib V21    -0.22971732488274024
#>     Attrib V22    -0.018105222264930713
#>     Attrib V23    -0.27160285941301304
#>     Attrib V24    -0.2513521276353682
#>     Attrib V25    0.23605127008503435
#>     Attrib V26    0.2200929837335456
#>     Attrib V27    -0.09580006485126348
#>     Attrib V28    -0.0309356201758476
#>     Attrib V29    0.014062598353971003
#>     Attrib V3    -0.13505104453457037
#>     Attrib V30    -0.3081167467764259
#>     Attrib V31    0.42866085595358594
#>     Attrib V32    0.07362111726852989
#>     Attrib V33    -0.2564113598900989
#>     Attrib V34    -0.118498051919486
#>     Attrib V35    -0.20092398017601637
#>     Attrib V36    0.41456338304435303
#>     Attrib V37    0.38499919820265865
#>     Attrib V38    -0.3618329068106359
#>     Attrib V39    -0.21555056877173345
#>     Attrib V4    -0.16993253067361683
#>     Attrib V40    0.0194639119460492
#>     Attrib V41    -0.15645059105882286
#>     Attrib V42    -0.11429198817581133
#>     Attrib V43    -0.3034113635643221
#>     Attrib V44    -0.050548375240823
#>     Attrib V45    -0.07818831052224744
#>     Attrib V46    -0.17588538507191237
#>     Attrib V47    -0.03158694792838179
#>     Attrib V48    -0.17518327748358456
#>     Attrib V49    -0.31696346881084375
#>     Attrib V5    -0.14565186754135734
#>     Attrib V50    0.3145247092352278
#>     Attrib V51    0.039556470445862
#>     Attrib V52    0.1350476093333926
#>     Attrib V53    0.08636476191085753
#>     Attrib V54    -0.13160165803497664
#>     Attrib V55    0.22684591432701365
#>     Attrib V56    0.03411988304668645
#>     Attrib V57    0.2730019347250716
#>     Attrib V58    -0.028934093261200746
#>     Attrib V59    -0.03449938363656793
#>     Attrib V6    0.13497573840084026
#>     Attrib V60    0.18159615912886498
#>     Attrib V7    0.32056768974892436
#>     Attrib V8    0.22924639102149
#>     Attrib V9    -0.3538355798435362
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.07129554177063785
#>     Attrib V1    0.12849079827083806
#>     Attrib V10    0.057333979172119215
#>     Attrib V11    0.07204556309784614
#>     Attrib V12    0.011676529593217624
#>     Attrib V13    -0.016565183423926183
#>     Attrib V14    -0.017924987824835554
#>     Attrib V15    0.07670542636520691
#>     Attrib V16    -0.016580989782524612
#>     Attrib V17    0.035897129108501624
#>     Attrib V18    -0.011834479902667287
#>     Attrib V19    -0.012667894104418154
#>     Attrib V2    0.07467227580930685
#>     Attrib V20    0.0484714814192864
#>     Attrib V21    0.0031090219077277927
#>     Attrib V22    -0.011750318174348942
#>     Attrib V23    -0.012177070168022709
#>     Attrib V24    0.04256607624249596
#>     Attrib V25    -0.10860958081785704
#>     Attrib V26    -0.13121773921677177
#>     Attrib V27    -0.02472931961357838
#>     Attrib V28    -0.03608386096378163
#>     Attrib V29    -0.06827917648722129
#>     Attrib V3    0.08783652289791265
#>     Attrib V30    0.11067599246375359
#>     Attrib V31    -0.048821406591543576
#>     Attrib V32    -0.007095146119540066
#>     Attrib V33    0.1534159526763421
#>     Attrib V34    0.06941501252091539
#>     Attrib V35    0.13336719891005555
#>     Attrib V36    -0.08788487566370198
#>     Attrib V37    -0.09038032598519452
#>     Attrib V38    0.16936438069193424
#>     Attrib V39    0.12872619570687135
#>     Attrib V4    0.07714029819034644
#>     Attrib V40    -0.0035451592355524664
#>     Attrib V41    0.050777776022091374
#>     Attrib V42    0.009510696373536923
#>     Attrib V43    0.1044612061126612
#>     Attrib V44    0.055383186923073764
#>     Attrib V45    0.07291401708387431
#>     Attrib V46    -0.0013901480818559353
#>     Attrib V47    -0.056012001722328154
#>     Attrib V48    0.05583473804630631
#>     Attrib V49    2.494781596301997E-5
#>     Attrib V5    0.04950092125361485
#>     Attrib V50    -0.04990044179827354
#>     Attrib V51    0.024699734247778507
#>     Attrib V52    -0.07972221299202104
#>     Attrib V53    -0.01480333858507471
#>     Attrib V54    0.04319749280219789
#>     Attrib V55    0.032606450627611513
#>     Attrib V56    0.0955579534351126
#>     Attrib V57    0.061735613324326304
#>     Attrib V58    0.027309493202489057
#>     Attrib V59    -0.03358034846141549
#>     Attrib V6    -0.005558239530774217
#>     Attrib V60    0.006140561016200601
#>     Attrib V7    -0.07298673006030826
#>     Attrib V8    -0.007098735732244647
#>     Attrib V9    0.13917275783355929
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.18708888773748644
#>     Attrib V1    0.08709836872112509
#>     Attrib V10    0.02974279246960115
#>     Attrib V11    0.028776062005544556
#>     Attrib V12    0.008982440188844407
#>     Attrib V13    0.010726925296542804
#>     Attrib V14    0.025246607686278406
#>     Attrib V15    0.0042186248655665184
#>     Attrib V16    0.006063290041264304
#>     Attrib V17    0.0028725477576342488
#>     Attrib V18    0.05860985613264255
#>     Attrib V19    -0.05215936372121125
#>     Attrib V2    0.049922624334220615
#>     Attrib V20    0.058681240777517775
#>     Attrib V21    0.030523059915487878
#>     Attrib V22    -0.05938006668353882
#>     Attrib V23    -0.005175417259141092
#>     Attrib V24    -0.021934360835200704
#>     Attrib V25    -0.040397939805666895
#>     Attrib V26    -0.051798206674461444
#>     Attrib V27    -0.016920478293675375
#>     Attrib V28    -0.03785772411686799
#>     Attrib V29    -0.04596312486331719
#>     Attrib V3    0.1429360928280223
#>     Attrib V30    0.0015597156526308495
#>     Attrib V31    -0.08319571881013565
#>     Attrib V32    0.010877479634330266
#>     Attrib V33    0.07690585343378514
#>     Attrib V34    0.09674028956245828
#>     Attrib V35    0.04855129059958532
#>     Attrib V36    0.03530722576505046
#>     Attrib V37    -0.043516122147763334
#>     Attrib V38    0.06690566585373961
#>     Attrib V39    0.11210016695749658
#>     Attrib V4    0.05027787245127935
#>     Attrib V40    0.013132363059266652
#>     Attrib V41    -0.01653046112583808
#>     Attrib V42    0.02087155977890656
#>     Attrib V43    0.043475409538282245
#>     Attrib V44    0.07211972971642193
#>     Attrib V45    -0.001787485950346834
#>     Attrib V46    0.011597505129718104
#>     Attrib V47    0.047137491441800725
#>     Attrib V48    0.028721133257399282
#>     Attrib V49    0.0538255568993775
#>     Attrib V5    0.06684355130691186
#>     Attrib V50    -0.046130054305878875
#>     Attrib V51    0.08787124478050318
#>     Attrib V52    -0.027379512683032424
#>     Attrib V53    0.034737930875364344
#>     Attrib V54    0.028347935281788122
#>     Attrib V55    0.057729994865147925
#>     Attrib V56    0.10971080767196864
#>     Attrib V57    0.007794022226460519
#>     Attrib V58    0.06836873176145622
#>     Attrib V59    0.04834793156405792
#>     Attrib V6    -0.016939988134617032
#>     Attrib V60    0.06705298306192325
#>     Attrib V7    0.03690145987426087
#>     Attrib V8    0.027632878242164618
#>     Attrib V9    0.1027558450621214
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.34000167791052566
#>     Attrib V1    0.6249748754566093
#>     Attrib V10    0.05092637748784475
#>     Attrib V11    0.4496815394568767
#>     Attrib V12    0.46623130763313025
#>     Attrib V13    0.33787104282209457
#>     Attrib V14    -0.0019178183068300182
#>     Attrib V15    0.14521986500669007
#>     Attrib V16    -0.43135712853600156
#>     Attrib V17    0.051795566645362084
#>     Attrib V18    -0.18522124508296056
#>     Attrib V19    -0.1257079905600482
#>     Attrib V2    -0.048814919975728614
#>     Attrib V20    0.583992940692141
#>     Attrib V21    0.5686046619852703
#>     Attrib V22    0.28453659425538214
#>     Attrib V23    0.8254786894158035
#>     Attrib V24    0.8953886779246426
#>     Attrib V25    -0.24914481346306896
#>     Attrib V26    -0.5128258960558649
#>     Attrib V27    0.04109407815862109
#>     Attrib V28    -0.06410801432200565
#>     Attrib V29    -0.14662057105365078
#>     Attrib V3    0.5112193030846036
#>     Attrib V30    0.4498968558503597
#>     Attrib V31    -1.311577841894753
#>     Attrib V32    -0.2857493821904535
#>     Attrib V33    0.44396294238783746
#>     Attrib V34    -0.010025226316079407
#>     Attrib V35    -0.02892757808789893
#>     Attrib V36    -1.3112128039985596
#>     Attrib V37    -1.416770646436544
#>     Attrib V38    0.5012620024190689
#>     Attrib V39    0.5031099950347937
#>     Attrib V4    0.4737466948250637
#>     Attrib V40    -0.04236662398322738
#>     Attrib V41    0.3227560562911639
#>     Attrib V42    0.619937857038269
#>     Attrib V43    0.7503621601746793
#>     Attrib V44    -0.18219629208767638
#>     Attrib V45    -0.06682794962757288
#>     Attrib V46    0.28648696208541263
#>     Attrib V47    0.09973123292774197
#>     Attrib V48    0.25325125598189346
#>     Attrib V49    0.6791655064982717
#>     Attrib V5    0.45154273554512164
#>     Attrib V50    -0.49540143805228093
#>     Attrib V51    -0.06751429975904444
#>     Attrib V52    -0.4550262552349726
#>     Attrib V53    -0.09209308194628468
#>     Attrib V54    0.40928169010672655
#>     Attrib V55    -0.3749041047492203
#>     Attrib V56    0.2925439134900644
#>     Attrib V57    -0.40333126709377526
#>     Attrib V58    0.49182558941609883
#>     Attrib V59    0.24649628922441333
#>     Attrib V6    -0.29100355116555476
#>     Attrib V60    -0.08225963039541938
#>     Attrib V7    -0.6252633774662988
#>     Attrib V8    -0.5867580433384888
#>     Attrib V9    0.7104291243666989
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3095220975244971
#>     Attrib V1    0.6049386599687466
#>     Attrib V10    0.08130140810228817
#>     Attrib V11    0.4261809737116202
#>     Attrib V12    0.39512421066149
#>     Attrib V13    0.29312473790627835
#>     Attrib V14    -9.180627164715121E-4
#>     Attrib V15    0.07632218338731434
#>     Attrib V16    -0.38883514008721065
#>     Attrib V17    0.051576294205751154
#>     Attrib V18    -0.1051906710923372
#>     Attrib V19    -0.09043434213783992
#>     Attrib V2    -0.06794182093257325
#>     Attrib V20    0.6179233488519917
#>     Attrib V21    0.6155554050302315
#>     Attrib V22    0.29728258982473554
#>     Attrib V23    0.8066764198581109
#>     Attrib V24    0.7697300115285542
#>     Attrib V25    -0.29779011584370735
#>     Attrib V26    -0.4408697406566428
#>     Attrib V27    0.0879754472082769
#>     Attrib V28    -0.07303232786333026
#>     Attrib V29    -0.0952374242815642
#>     Attrib V3    0.4240148959560793
#>     Attrib V30    0.45690248602152694
#>     Attrib V31    -1.205306694669577
#>     Attrib V32    -0.30723980839911236
#>     Attrib V33    0.3805647459007896
#>     Attrib V34    0.01815705134839082
#>     Attrib V35    0.031338860189069756
#>     Attrib V36    -0.9984570120382277
#>     Attrib V37    -1.068687001041298
#>     Attrib V38    0.5918841129254405
#>     Attrib V39    0.45718270428713004
#>     Attrib V4    0.3997522681897524
#>     Attrib V40    -0.06387220889347726
#>     Attrib V41    0.27065158076526935
#>     Attrib V42    0.42659537189574537
#>     Attrib V43    0.7304161842550425
#>     Attrib V44    -0.01572534373506499
#>     Attrib V45    -0.006996620333865901
#>     Attrib V46    0.22051820223150714
#>     Attrib V47    0.04756446292338687
#>     Attrib V48    0.23568909418252953
#>     Attrib V49    0.562771962190431
#>     Attrib V5    0.39945829160480295
#>     Attrib V50    -0.42149141454884126
#>     Attrib V51    0.0025195908291347985
#>     Attrib V52    -0.3817084120304366
#>     Attrib V53    -0.12395433267378081
#>     Attrib V54    0.36900653415867884
#>     Attrib V55    -0.3268125048742053
#>     Attrib V56    0.28286420938409806
#>     Attrib V57    -0.34614173898615525
#>     Attrib V58    0.3867040503283022
#>     Attrib V59    0.2380140252312821
#>     Attrib V6    -0.29087145393280084
#>     Attrib V60    -0.10920736222168721
#>     Attrib V7    -0.5360532896017317
#>     Attrib V8    -0.5325905489643452
#>     Attrib V9    0.6751808177169266
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.39262602111704564
#>     Attrib V1    -0.5612990750086083
#>     Attrib V10    -0.1641538596501623
#>     Attrib V11    -0.5394087375753506
#>     Attrib V12    -0.39826517148081486
#>     Attrib V13    -0.340028949203179
#>     Attrib V14    0.08712504718093098
#>     Attrib V15    -0.012385671970801438
#>     Attrib V16    0.3743710933970903
#>     Attrib V17    0.029147673625948684
#>     Attrib V18    0.2089036323989866
#>     Attrib V19    0.16227475569396985
#>     Attrib V2    0.04723733277187749
#>     Attrib V20    -0.5279603126276753
#>     Attrib V21    -0.47495957910137165
#>     Attrib V22    -0.22657589362873481
#>     Attrib V23    -0.6795024011786327
#>     Attrib V24    -0.6809034288858988
#>     Attrib V25    0.32611194923631714
#>     Attrib V26    0.49896185161052
#>     Attrib V27    -0.090613371792778
#>     Attrib V28    -0.0678626555803908
#>     Attrib V29    0.09248537700841852
#>     Attrib V3    -0.3810356837246404
#>     Attrib V30    -0.39074748758237066
#>     Attrib V31    1.1413990746309335
#>     Attrib V32    0.2585272305462364
#>     Attrib V33    -0.3797774669710599
#>     Attrib V34    -0.1360951884990872
#>     Attrib V35    -0.19642789774430525
#>     Attrib V36    0.9295744888294114
#>     Attrib V37    0.9509775863113552
#>     Attrib V38    -0.6350624521804968
#>     Attrib V39    -0.4438251536961078
#>     Attrib V4    -0.3144079991840832
#>     Attrib V40    0.1566358428167463
#>     Attrib V41    -0.20820200028266472
#>     Attrib V42    -0.4030547906715871
#>     Attrib V43    -0.5867279387438485
#>     Attrib V44    0.05733834789935993
#>     Attrib V45    -0.09322401530959454
#>     Attrib V46    -0.3582521157694643
#>     Attrib V47    -0.1455542882463235
#>     Attrib V48    -0.2095338886255641
#>     Attrib V49    -0.5486076145823856
#>     Attrib V5    -0.3062280248760749
#>     Attrib V50    0.4930830371489561
#>     Attrib V51    0.06004700523118053
#>     Attrib V52    0.40034932642444165
#>     Attrib V53    0.14872177701592043
#>     Attrib V54    -0.2360784048997617
#>     Attrib V55    0.3377024387514011
#>     Attrib V56    -0.12669845315330516
#>     Attrib V57    0.4464920427029298
#>     Attrib V58    -0.27369647346816156
#>     Attrib V59    -0.09727945688980111
#>     Attrib V6    0.2601121752576421
#>     Attrib V60    0.21443887242791346
#>     Attrib V7    0.5803905166665454
#>     Attrib V8    0.4348788058451346
#>     Attrib V9    -0.645786612194191
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.06366025934237994
#>     Attrib V1    0.23145047975178343
#>     Attrib V10    0.04291668602598796
#>     Attrib V11    0.10968953567440821
#>     Attrib V12    0.07988355179661649
#>     Attrib V13    0.056180243761685844
#>     Attrib V14    0.04039688198125147
#>     Attrib V15    0.019840282835676487
#>     Attrib V16    0.013377639710268842
#>     Attrib V17    0.0796163946683324
#>     Attrib V18    0.0016563426893929406
#>     Attrib V19    -0.0378355609259058
#>     Attrib V2    0.05027650343579656
#>     Attrib V20    0.18725918470926362
#>     Attrib V21    0.10044919479802446
#>     Attrib V22    -0.03806874928748358
#>     Attrib V23    0.063570281638316
#>     Attrib V24    0.15323567543274993
#>     Attrib V25    -0.11705397632421338
#>     Attrib V26    -0.18670292903357333
#>     Attrib V27    -0.058255862907001923
#>     Attrib V28    -0.12135454609218001
#>     Attrib V29    -0.07129734663003554
#>     Attrib V3    0.1299577869412388
#>     Attrib V30    0.10198736400024348
#>     Attrib V31    -0.19563726715711377
#>     Attrib V32    -0.027651302893629093
#>     Attrib V33    0.10057048601433409
#>     Attrib V34    0.05784293255980007
#>     Attrib V35    0.07991474419276608
#>     Attrib V36    -0.20177191238053888
#>     Attrib V37    -0.20712129905000695
#>     Attrib V38    0.15501342792698466
#>     Attrib V39    0.0993942586396145
#>     Attrib V4    0.14663128800199596
#>     Attrib V40    -0.017651377649387734
#>     Attrib V41    -0.05256859707155674
#>     Attrib V42    0.01964953198595545
#>     Attrib V43    0.1781928546736638
#>     Attrib V44    0.005335769344438925
#>     Attrib V45    -0.022366044116159438
#>     Attrib V46    0.05602163350558602
#>     Attrib V47    -0.06748498299015349
#>     Attrib V48    0.05287531493093518
#>     Attrib V49    0.08712487346212514
#>     Attrib V5    0.11336418997375503
#>     Attrib V50    -0.11892475368437698
#>     Attrib V51    -0.009844633298430171
#>     Attrib V52    -0.0787838888552611
#>     Attrib V53    -0.005398442987378718
#>     Attrib V54    0.1649308966378178
#>     Attrib V55    -4.450983719125454E-4
#>     Attrib V56    0.15705818557821744
#>     Attrib V57    -0.019388166930515077
#>     Attrib V58    0.15202061438101996
#>     Attrib V59    0.04759018976210419
#>     Attrib V6    -0.06890652092115276
#>     Attrib V60    0.03209310635769366
#>     Attrib V7    -0.09664497762358876
#>     Attrib V8    -0.15786816463538866
#>     Attrib V9    0.2240620677878655
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.014372228402101835
#>     Attrib V1    0.4900366705169511
#>     Attrib V10    -0.0513270238532196
#>     Attrib V11    0.21634631008546543
#>     Attrib V12    0.15471174946675015
#>     Attrib V13    0.1753937399195708
#>     Attrib V14    0.1118506411878358
#>     Attrib V15    0.17665227205194645
#>     Attrib V16    -0.14099616574333096
#>     Attrib V17    0.17542208274782448
#>     Attrib V18    -0.016464473599121312
#>     Attrib V19    0.02540458863580154
#>     Attrib V2    -0.018181637320650965
#>     Attrib V20    0.5021173507039585
#>     Attrib V21    0.42927595560413684
#>     Attrib V22    0.2304350589865504
#>     Attrib V23    0.5021097436747668
#>     Attrib V24    0.4274455650508202
#>     Attrib V25    -0.2036406844436913
#>     Attrib V26    -0.35250229293029023
#>     Attrib V27    -0.18188641122733618
#>     Attrib V28    -0.31233499392481184
#>     Attrib V29    -0.2848987218201202
#>     Attrib V3    0.38257470564385815
#>     Attrib V30    0.22811622383533012
#>     Attrib V31    -0.7536063233529261
#>     Attrib V32    -0.1856359097295516
#>     Attrib V33    0.2756150502730582
#>     Attrib V34    0.0015243198630136515
#>     Attrib V35    0.05449788171789626
#>     Attrib V36    -0.5627978078390522
#>     Attrib V37    -0.6592006478947463
#>     Attrib V38    0.3916131159655082
#>     Attrib V39    0.3627840858876655
#>     Attrib V4    0.32099543108395506
#>     Attrib V40    -0.10700737786702373
#>     Attrib V41    -0.011181896721428988
#>     Attrib V42    0.24746769254979809
#>     Attrib V43    0.47814331964849566
#>     Attrib V44    -0.02928382162205469
#>     Attrib V45    0.026651621172853586
#>     Attrib V46    0.06188241142431542
#>     Attrib V47    -0.005315487277679392
#>     Attrib V48    0.0044641970786252335
#>     Attrib V49    0.28846737748350626
#>     Attrib V5    0.21771691557629483
#>     Attrib V50    -0.27859754409446247
#>     Attrib V51    -0.10382737867006517
#>     Attrib V52    -0.3004455863543305
#>     Attrib V53    0.006515725004746551
#>     Attrib V54    0.32434925845855456
#>     Attrib V55    -0.09608800364094938
#>     Attrib V56    0.3906418617232267
#>     Attrib V57    -0.15601839536387516
#>     Attrib V58    0.34376761083625756
#>     Attrib V59    0.2825856381602477
#>     Attrib V6    -0.29065300992878096
#>     Attrib V60    0.044578546076732416
#>     Attrib V7    -0.2802932748008847
#>     Attrib V8    -0.23033755908503656
#>     Attrib V9    0.4493565397063101
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.39010422400623535
#>     Attrib V1    -0.46242905248173316
#>     Attrib V10    -0.18324435837295758
#>     Attrib V11    -0.4623391488217622
#>     Attrib V12    -0.3458376377430902
#>     Attrib V13    -0.2796831453331637
#>     Attrib V14    0.1338786485353796
#>     Attrib V15    0.07628793038599269
#>     Attrib V16    0.301796491951839
#>     Attrib V17    0.08426543029509187
#>     Attrib V18    0.1708695579886303
#>     Attrib V19    0.1885554075896326
#>     Attrib V2    0.03784306785538857
#>     Attrib V20    -0.38981145404538575
#>     Attrib V21    -0.35680455723354354
#>     Attrib V22    -0.10314335280927552
#>     Attrib V23    -0.4254313886376589
#>     Attrib V24    -0.514241582697939
#>     Attrib V25    0.28809070688758187
#>     Attrib V26    0.3938019074188673
#>     Attrib V27    -0.14361444950038882
#>     Attrib V28    -0.0695802323205958
#>     Attrib V29    0.016693172608333258
#>     Attrib V3    -0.2713933626080174
#>     Attrib V30    -0.38714933810442315
#>     Attrib V31    0.7933128717178253
#>     Attrib V32    0.2178565597575954
#>     Attrib V33    -0.3563577275180754
#>     Attrib V34    -0.16700477187878576
#>     Attrib V35    -0.2296141464242801
#>     Attrib V36    0.7306351309730267
#>     Attrib V37    0.6046133402703681
#>     Attrib V38    -0.5323417016708746
#>     Attrib V39    -0.3543300277354801
#>     Attrib V4    -0.24255777446365895
#>     Attrib V40    0.12021576617532703
#>     Attrib V41    -0.18539669631142403
#>     Attrib V42    -0.2663474912547228
#>     Attrib V43    -0.4039095845014801
#>     Attrib V44    -0.0063141202941276835
#>     Attrib V45    -0.13936155766615282
#>     Attrib V46    -0.27408380950358535
#>     Attrib V47    -0.034355179810866235
#>     Attrib V48    -0.19968706824853588
#>     Attrib V49    -0.4442089422023463
#>     Attrib V5    -0.2643354664677939
#>     Attrib V50    0.4471226983301888
#>     Attrib V51    0.04493557329538643
#>     Attrib V52    0.2799132041467807
#>     Attrib V53    0.06341498956873527
#>     Attrib V54    -0.19070766808759979
#>     Attrib V55    0.3365117178199186
#>     Attrib V56    0.01817761356081257
#>     Attrib V57    0.3993798210983619
#>     Attrib V58    -0.13093620680449328
#>     Attrib V59    -0.018011690316401142
#>     Attrib V6    0.22769558601929846
#>     Attrib V60    0.1906039141569017
#>     Attrib V7    0.4388356698287943
#>     Attrib V8    0.3999427953686352
#>     Attrib V9    -0.5121218273586703
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.7849528898317415
#>     Attrib V1    0.42649108040266925
#>     Attrib V10    0.907823758935224
#>     Attrib V11    0.9847930341549492
#>     Attrib V12    0.7899576461737515
#>     Attrib V13    0.21900861689828124
#>     Attrib V14    -0.5611476112206986
#>     Attrib V15    -0.4565894758427484
#>     Attrib V16    -0.3862711336354736
#>     Attrib V17    -0.31882743424792037
#>     Attrib V18    -0.12368579132382912
#>     Attrib V19    -0.3685632864342886
#>     Attrib V2    0.18711323596275803
#>     Attrib V20    0.16170147153557843
#>     Attrib V21    0.20867895284208235
#>     Attrib V22    -0.1406722668915347
#>     Attrib V23    0.29457300519942703
#>     Attrib V24    0.2369004602832441
#>     Attrib V25    -0.3399182910147746
#>     Attrib V26    0.26258469050693783
#>     Attrib V27    1.244983397693413
#>     Attrib V28    1.531500052476036
#>     Attrib V29    0.8920182585029065
#>     Attrib V3    0.10660647172992611
#>     Attrib V30    0.5668907134016149
#>     Attrib V31    -0.8728917659501669
#>     Attrib V32    -0.3200350349999092
#>     Attrib V33    -0.24303679123923055
#>     Attrib V34    -0.04248579193632334
#>     Attrib V35    0.32691827799575407
#>     Attrib V36    -1.0058913121053443
#>     Attrib V37    -0.11101993004476905
#>     Attrib V38    0.5163302474813698
#>     Attrib V39    -0.23841495388175887
#>     Attrib V4    0.49158352913130154
#>     Attrib V40    -0.11803660444477679
#>     Attrib V41    0.7276965786434773
#>     Attrib V42    -0.10280356273470442
#>     Attrib V43    0.26192361318593027
#>     Attrib V44    0.5078138889503864
#>     Attrib V45    0.6527517826711184
#>     Attrib V46    0.9101122058304096
#>     Attrib V47    0.38746462732551046
#>     Attrib V48    0.41284756290784497
#>     Attrib V49    0.5519843476609543
#>     Attrib V5    0.5091058197080391
#>     Attrib V50    -0.037108635687352585
#>     Attrib V51    0.4954941321647984
#>     Attrib V52    0.9148071573463445
#>     Attrib V53    0.4180940783518272
#>     Attrib V54    0.49128427515350037
#>     Attrib V55    -0.3146175043404978
#>     Attrib V56    -0.7093064758034363
#>     Attrib V57    -0.1554055875146508
#>     Attrib V58    -0.3644788236980919
#>     Attrib V59    -0.5621948250374966
#>     Attrib V6    0.6140322482145134
#>     Attrib V60    -0.187987030736382
#>     Attrib V7    -0.16526677757917288
#>     Attrib V8    -0.4610581863130464
#>     Attrib V9    0.9103004271445849
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.28472539955869025
#>     Attrib V1    -0.20468925978304214
#>     Attrib V10    -0.12026898820351943
#>     Attrib V11    -0.2841015326316538
#>     Attrib V12    -0.18249801778525407
#>     Attrib V13    -0.15140961131967007
#>     Attrib V14    0.13238935142444877
#>     Attrib V15    0.034879988473746966
#>     Attrib V16    0.14746331794338052
#>     Attrib V17    0.04365157720299222
#>     Attrib V18    0.053997919812318
#>     Attrib V19    0.15760114791070845
#>     Attrib V2    0.04112690164714503
#>     Attrib V20    -0.13590494760401367
#>     Attrib V21    -0.10912519656352083
#>     Attrib V22    0.011698850065893131
#>     Attrib V23    -0.14610967517579704
#>     Attrib V24    -0.20468853524116504
#>     Attrib V25    0.15342967834771376
#>     Attrib V26    0.13653802700830106
#>     Attrib V27    -0.05077369709028091
#>     Attrib V28    -0.01957678518609196
#>     Attrib V29    0.014209978457364221
#>     Attrib V3    -0.1295527337848262
#>     Attrib V30    -0.22306999767676636
#>     Attrib V31    0.25937609259741173
#>     Attrib V32    -0.008786329889572113
#>     Attrib V33    -0.1529797784229226
#>     Attrib V34    -0.1272060922301299
#>     Attrib V35    -0.1054223472422907
#>     Attrib V36    0.34320561463291377
#>     Attrib V37    0.2864884702225132
#>     Attrib V38    -0.2834222727927804
#>     Attrib V39    -0.13716781406443146
#>     Attrib V4    -0.09246620848131222
#>     Attrib V40    0.015535228035894638
#>     Attrib V41    -0.15722958307243745
#>     Attrib V42    -0.0946312514971696
#>     Attrib V43    -0.20289855234452883
#>     Attrib V44    -0.010347330862616038
#>     Attrib V45    -0.07914262533700826
#>     Attrib V46    -0.18321777614592574
#>     Attrib V47    -0.06040169779448015
#>     Attrib V48    -0.09711151556500322
#>     Attrib V49    -0.2343708084922272
#>     Attrib V5    -0.15095988313933115
#>     Attrib V50    0.21376254708579517
#>     Attrib V51    -0.036525649329257615
#>     Attrib V52    0.041645822394332926
#>     Attrib V53    0.009292788285213875
#>     Attrib V54    -0.07885691475344067
#>     Attrib V55    0.16138234642473023
#>     Attrib V56    0.06483175762647066
#>     Attrib V57    0.2265890643260583
#>     Attrib V58    -0.029446775820520014
#>     Attrib V59    0.031132019591194143
#>     Attrib V6    0.1004087841368508
#>     Attrib V60    0.18726637413880376
#>     Attrib V7    0.20997763624538893
#>     Attrib V8    0.20605930791871396
#>     Attrib V9    -0.30166555024521763
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.203791361359102
#>     Attrib V1    0.6483923490512729
#>     Attrib V10    0.08504165647010986
#>     Attrib V11    0.34199717643975563
#>     Attrib V12    0.21196631970456498
#>     Attrib V13    0.2501247162788202
#>     Attrib V14    0.004542144849129132
#>     Attrib V15    0.15418452792903786
#>     Attrib V16    -0.24989047543805046
#>     Attrib V17    0.06365661019472864
#>     Attrib V18    -0.05281897602326139
#>     Attrib V19    -0.03576793873852317
#>     Attrib V2    -0.033319674326905316
#>     Attrib V20    0.5931813417305934
#>     Attrib V21    0.604344820607126
#>     Attrib V22    0.29720626193760563
#>     Attrib V23    0.6744639085867185
#>     Attrib V24    0.69916961843296
#>     Attrib V25    -0.26197187130312766
#>     Attrib V26    -0.40837933052546926
#>     Attrib V27    -0.11708387043003847
#>     Attrib V28    -0.26881182801078035
#>     Attrib V29    -0.23279495231402736
#>     Attrib V3    0.42039755060352035
#>     Attrib V30    0.37512662405090136
#>     Attrib V31    -1.0308223502289988
#>     Attrib V32    -0.21661975886127996
#>     Attrib V33    0.393832868166389
#>     Attrib V34    0.0757948020394368
#>     Attrib V35    0.0037663305570085205
#>     Attrib V36    -0.8912351411375187
#>     Attrib V37    -1.0251525048137868
#>     Attrib V38    0.5318369222172593
#>     Attrib V39    0.5141124723960376
#>     Attrib V4    0.37182777827789654
#>     Attrib V40    -0.1125493929699382
#>     Attrib V41    0.12490809304180413
#>     Attrib V42    0.4173753353753828
#>     Attrib V43    0.5728292610531337
#>     Attrib V44    -0.04918260520473508
#>     Attrib V45    0.016974511205471454
#>     Attrib V46    0.11607749639855723
#>     Attrib V47    -0.032898538226312335
#>     Attrib V48    0.1403769237228147
#>     Attrib V49    0.43506566537599056
#>     Attrib V5    0.3140069917209695
#>     Attrib V50    -0.32461436701724333
#>     Attrib V51    -0.08561702743414032
#>     Attrib V52    -0.42390038666152774
#>     Attrib V53    -0.0710238041978712
#>     Attrib V54    0.39756676472258556
#>     Attrib V55    -0.2080511060616528
#>     Attrib V56    0.2910440015787389
#>     Attrib V57    -0.2666570954150449
#>     Attrib V58    0.4173581668257246
#>     Attrib V59    0.3054774163290635
#>     Attrib V6    -0.3102424688928373
#>     Attrib V60    0.0053294718747674595
#>     Attrib V7    -0.45930073343446715
#>     Attrib V8    -0.29976004942210044
#>     Attrib V9    0.669879999763795
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.8600285114050686
#>     Attrib V1    -0.38765021757441387
#>     Attrib V10    -0.9897770528683539
#>     Attrib V11    -0.9662698181374992
#>     Attrib V12    -0.7057451237998534
#>     Attrib V13    -0.24728122513631776
#>     Attrib V14    0.4974008699461774
#>     Attrib V15    0.4509202251542675
#>     Attrib V16    0.4533641215989479
#>     Attrib V17    0.34482840919231794
#>     Attrib V18    0.15463785855187637
#>     Attrib V19    0.2505040613711054
#>     Attrib V2    -0.08574460966339778
#>     Attrib V20    -0.23099598340914226
#>     Attrib V21    -0.2750604988662866
#>     Attrib V22    0.05825415498101359
#>     Attrib V23    -0.46501957154955326
#>     Attrib V24    -0.461419714898684
#>     Attrib V25    0.14132482596532076
#>     Attrib V26    -0.3272499853318889
#>     Attrib V27    -1.2201126898729107
#>     Attrib V28    -1.500241264948178
#>     Attrib V29    -0.8699364221280341
#>     Attrib V3    -0.002602140007631387
#>     Attrib V30    -0.5406939466771632
#>     Attrib V31    0.8959012276608233
#>     Attrib V32    0.43433917985583054
#>     Attrib V33    0.2533386950635841
#>     Attrib V34    0.13293025064711467
#>     Attrib V35    -0.29959037437128516
#>     Attrib V36    1.0412351796085786
#>     Attrib V37    0.14844348677428512
#>     Attrib V38    -0.5385414779315584
#>     Attrib V39    0.2219906781586668
#>     Attrib V4    -0.4790430701493962
#>     Attrib V40    0.033702865290046194
#>     Attrib V41    -0.8156661861749266
#>     Attrib V42    0.034067229179495825
#>     Attrib V43    -0.35142660310721535
#>     Attrib V44    -0.4794659626993808
#>     Attrib V45    -0.5470052361097449
#>     Attrib V46    -0.8839918968843726
#>     Attrib V47    -0.4700752157400293
#>     Attrib V48    -0.48689644033739615
#>     Attrib V49    -0.6401648569022306
#>     Attrib V5    -0.5711189402587769
#>     Attrib V50    0.0068872712211976725
#>     Attrib V51    -0.6059278898776945
#>     Attrib V52    -0.7904305431899417
#>     Attrib V53    -0.6277078055262527
#>     Attrib V54    -0.45153272127350436
#>     Attrib V55    0.3078478414198076
#>     Attrib V56    0.7618140715085507
#>     Attrib V57    0.1694532883566248
#>     Attrib V58    0.2921373368165218
#>     Attrib V59    0.5135455443736632
#>     Attrib V6    -0.6301560890968817
#>     Attrib V60    0.2224370170424083
#>     Attrib V7    0.06722773406485615
#>     Attrib V8    0.3617096898657383
#>     Attrib V9    -0.8927473016617586
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.05228433706713186
#>     Attrib V1    0.375749113408883
#>     Attrib V10    0.004248115402650674
#>     Attrib V11    0.2645388006261096
#>     Attrib V12    0.1776831604970679
#>     Attrib V13    0.16257161829593017
#>     Attrib V14    0.08409985969678184
#>     Attrib V15    0.11824098523865037
#>     Attrib V16    -0.14895543896390104
#>     Attrib V17    0.06684696287046057
#>     Attrib V18    -0.057267219583450914
#>     Attrib V19    -0.045282243217643854
#>     Attrib V2    -0.016999457769674018
#>     Attrib V20    0.4947447078536671
#>     Attrib V21    0.43279931918904635
#>     Attrib V22    0.1979496632669622
#>     Attrib V23    0.38049334312003735
#>     Attrib V24    0.4385156825297795
#>     Attrib V25    -0.15991006621384654
#>     Attrib V26    -0.3802641373103303
#>     Attrib V27    -0.10122481118621934
#>     Attrib V28    -0.190870936526321
#>     Attrib V29    -0.15549215587746312
#>     Attrib V3    0.31735178309458284
#>     Attrib V30    0.20186326924235135
#>     Attrib V31    -0.6403490118458663
#>     Attrib V32    -0.10928769745436262
#>     Attrib V33    0.3149840165502895
#>     Attrib V34    0.11888708627532163
#>     Attrib V35    0.10346279744484815
#>     Attrib V36    -0.5541576005391402
#>     Attrib V37    -0.5917890561039563
#>     Attrib V38    0.3889816844183616
#>     Attrib V39    0.3361098944894733
#>     Attrib V4    0.22022171827190626
#>     Attrib V40    -0.05674221130924722
#>     Attrib V41    0.06746709126288077
#>     Attrib V42    0.1934201515852349
#>     Attrib V43    0.4157148962283985
#>     Attrib V44    -0.08118854966671593
#>     Attrib V45    0.049806024736524734
#>     Attrib V46    0.1011119721462696
#>     Attrib V47    9.951260661105363E-5
#>     Attrib V48    0.04700916231562365
#>     Attrib V49    0.23458796196548337
#>     Attrib V5    0.1617371366372405
#>     Attrib V50    -0.237734437942458
#>     Attrib V51    -0.025289124119633712
#>     Attrib V52    -0.23960656406502986
#>     Attrib V53    -0.06658808049813326
#>     Attrib V54    0.2219361592155802
#>     Attrib V55    -0.07738917305336043
#>     Attrib V56    0.24801370532279846
#>     Attrib V57    -0.15558484251087706
#>     Attrib V58    0.22839860602811252
#>     Attrib V59    0.1407123975904146
#>     Attrib V6    -0.2185535565826229
#>     Attrib V60    0.0031733549517626056
#>     Attrib V7    -0.2939763469342481
#>     Attrib V8    -0.20239012240587967
#>     Attrib V9    0.43805660112854167
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.043528935108458316
#>     Attrib V1    0.2388452176954067
#>     Attrib V10    0.0742864569177925
#>     Attrib V11    0.12220787397870077
#>     Attrib V12    0.13299963604085682
#>     Attrib V13    0.12774849239883526
#>     Attrib V14    0.01284192185919117
#>     Attrib V15    0.05527046038506242
#>     Attrib V16    -0.05504323880024458
#>     Attrib V17    0.08768835072620841
#>     Attrib V18    -0.01416009257172167
#>     Attrib V19    -0.051105048203239245
#>     Attrib V2    0.03943554264307979
#>     Attrib V20    0.16857953660919758
#>     Attrib V21    0.15411252244255347
#>     Attrib V22    -0.01167624883847194
#>     Attrib V23    0.13339792026351383
#>     Attrib V24    0.12535197832788095
#>     Attrib V25    -0.08437160582263371
#>     Attrib V26    -0.14047351672317662
#>     Attrib V27    -0.03887783251214905
#>     Attrib V28    -0.04055118659336387
#>     Attrib V29    -0.11755042302379613
#>     Attrib V3    0.12976804194783959
#>     Attrib V30    0.1565445370725935
#>     Attrib V31    -0.21013013227474772
#>     Attrib V32    -0.040529787003021255
#>     Attrib V33    0.13149825142524746
#>     Attrib V34    0.07288179134771104
#>     Attrib V35    0.12018630556227622
#>     Attrib V36    -0.23896953335599325
#>     Attrib V37    -0.20669562874565542
#>     Attrib V38    0.17953389798835023
#>     Attrib V39    0.20567933016445364
#>     Attrib V4    0.1686155901251729
#>     Attrib V40    -0.010951509198970685
#>     Attrib V41    0.01310483723900153
#>     Attrib V42    0.08319678432512431
#>     Attrib V43    0.12466674764503394
#>     Attrib V44    -0.03527297843785801
#>     Attrib V45    0.032228307623352014
#>     Attrib V46    0.028464959091333415
#>     Attrib V47    -0.06654783813834612
#>     Attrib V48    0.04726212334784604
#>     Attrib V49    0.0678111546685154
#>     Attrib V5    0.046767240172537444
#>     Attrib V50    -0.1477170742694912
#>     Attrib V51    -0.013622384995078651
#>     Attrib V52    -0.09193607817260563
#>     Attrib V53    0.007010337190907633
#>     Attrib V54    0.13233794346753905
#>     Attrib V55    -0.06254386377167764
#>     Attrib V56    0.1485918762537451
#>     Attrib V57    -0.07642456062521945
#>     Attrib V58    0.13047732374109397
#>     Attrib V59    0.08494202010775988
#>     Attrib V6    -0.08463056341288505
#>     Attrib V60    0.002364426918389295
#>     Attrib V7    -0.16038841045079388
#>     Attrib V8    -0.12884754455077418
#>     Attrib V9    0.2107572830763999
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.039197050630048885
#>     Attrib V1    0.33630732891001164
#>     Attrib V10    0.008773938570814058
#>     Attrib V11    0.18373579504674342
#>     Attrib V12    0.05654248215843052
#>     Attrib V13    0.13576418508595536
#>     Attrib V14    0.07403369054146294
#>     Attrib V15    0.11725278020218256
#>     Attrib V16    -0.07079012852773928
#>     Attrib V17    0.11678600238805191
#>     Attrib V18    -0.0014615507000023677
#>     Attrib V19    -0.01449931696763635
#>     Attrib V2    0.0711098432396004
#>     Attrib V20    0.37445198495671594
#>     Attrib V21    0.23219538557683683
#>     Attrib V22    0.1143647301564317
#>     Attrib V23    0.28887819095282863
#>     Attrib V24    0.2807499330946383
#>     Attrib V25    -0.21218570295883254
#>     Attrib V26    -0.2850902821026266
#>     Attrib V27    -0.14614865357737591
#>     Attrib V28    -0.23801606322948063
#>     Attrib V29    -0.21906243178203746
#>     Attrib V3    0.19576895678106546
#>     Attrib V30    0.16317064486109095
#>     Attrib V31    -0.41123354408217033
#>     Attrib V32    -0.08136588350886637
#>     Attrib V33    0.2729901805729539
#>     Attrib V34    0.13466606075468518
#>     Attrib V35    0.1383849057566109
#>     Attrib V36    -0.3527744443448123
#>     Attrib V37    -0.3872333964343541
#>     Attrib V38    0.34708123676182473
#>     Attrib V39    0.21566945562231546
#>     Attrib V4    0.2180552173675307
#>     Attrib V40    -0.05421334540587669
#>     Attrib V41    -0.040132831107346736
#>     Attrib V42    0.10048984181101482
#>     Attrib V43    0.27738753203164834
#>     Attrib V44    0.01972778777303353
#>     Attrib V45    -0.00878468601548851
#>     Attrib V46    0.0255708525342501
#>     Attrib V47    -0.06609348573057855
#>     Attrib V48    0.021140474670167293
#>     Attrib V49    0.15756232010157564
#>     Attrib V5    0.10870572818018903
#>     Attrib V50    -0.22372301144652315
#>     Attrib V51    -0.06542069039852005
#>     Attrib V52    -0.21325244540117164
#>     Attrib V53    -0.003401194713458135
#>     Attrib V54    0.2560838981432015
#>     Attrib V55    -0.025900315975049815
#>     Attrib V56    0.1760390313542487
#>     Attrib V57    -0.10225902299514943
#>     Attrib V58    0.16551040468681993
#>     Attrib V59    0.12458991741568916
#>     Attrib V6    -0.1902087788686467
#>     Attrib V60    0.024863489296817982
#>     Attrib V7    -0.17349380294268255
#>     Attrib V8    -0.13464477549791204
#>     Attrib V9    0.36610766190910915
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.03313680604283706
#>     Attrib V1    0.28403781834568814
#>     Attrib V10    -0.023168985718982238
#>     Attrib V11    0.14048405396395142
#>     Attrib V12    0.09601674102540256
#>     Attrib V13    0.06250227566303923
#>     Attrib V14    0.06591177110376871
#>     Attrib V15    0.08011666876546021
#>     Attrib V16    -0.036888406646820956
#>     Attrib V17    0.049919810805135204
#>     Attrib V18    0.04892924339244293
#>     Attrib V19    -0.046440349037392095
#>     Attrib V2    -2.9582273029047827E-4
#>     Attrib V20    0.28562407340257295
#>     Attrib V21    0.23450337078714814
#>     Attrib V22    0.039034765360641946
#>     Attrib V23    0.21483518443748556
#>     Attrib V24    0.1775867423662664
#>     Attrib V25    -0.19776702165457655
#>     Attrib V26    -0.2585800885523868
#>     Attrib V27    -0.07845609021982251
#>     Attrib V28    -0.09569669444606789
#>     Attrib V29    -0.1310672289376922
#>     Attrib V3    0.20942066744125531
#>     Attrib V30    0.18711676396278126
#>     Attrib V31    -0.3931102729940384
#>     Attrib V32    -0.06405532983595014
#>     Attrib V33    0.22431166759991641
#>     Attrib V34    0.11499598137213309
#>     Attrib V35    0.11421169528040677
#>     Attrib V36    -0.21766334709826798
#>     Attrib V37    -0.2895147297340816
#>     Attrib V38    0.2400292435296238
#>     Attrib V39    0.21740463797773807
#>     Attrib V4    0.13840946405519988
#>     Attrib V40    -0.061674943607770365
#>     Attrib V41    -0.03612349578423045
#>     Attrib V42    0.11174069861601085
#>     Attrib V43    0.16158522634182373
#>     Attrib V44    0.029005005506130412
#>     Attrib V45    0.06851948030312614
#>     Attrib V46    0.048820231916841275
#>     Attrib V47    -0.05515027933466569
#>     Attrib V48    -0.014931841983803675
#>     Attrib V49    0.15297886718647996
#>     Attrib V5    0.11181703618976147
#>     Attrib V50    -0.2019858979338299
#>     Attrib V51    -0.013228126879920367
#>     Attrib V52    -0.13682054883581296
#>     Attrib V53    -0.016725142626629726
#>     Attrib V54    0.12531871946689094
#>     Attrib V55    -0.0791466638182424
#>     Attrib V56    0.14122447133483096
#>     Attrib V57    -0.08911124043639504
#>     Attrib V58    0.19009075431500058
#>     Attrib V59    0.053961236310023794
#>     Attrib V6    -0.12090011110743129
#>     Attrib V60    -0.015633827134414618
#>     Attrib V7    -0.15446172803267438
#>     Attrib V8    -0.10880893794507396
#>     Attrib V9    0.29753470191343806
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
#>  0.2608696 
```
