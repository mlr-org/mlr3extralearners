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
#>     Threshold    0.7486397179935194
#>     Node 2    1.9810784942983064
#>     Node 3    1.6300862385047354
#>     Node 4    0.25756891424225015
#>     Node 5    -2.228371920842237
#>     Node 6    1.6339418626867386
#>     Node 7    2.2054519674454056
#>     Node 8    0.8787968275879803
#>     Node 9    2.998782985812488
#>     Node 10    -3.271047581972331
#>     Node 11    0.8526962056949032
#>     Node 12    1.7539863189348166
#>     Node 13    1.2125398099740192
#>     Node 14    1.853594939809722
#>     Node 15    -1.912790601348438
#>     Node 16    0.2171554463795403
#>     Node 17    -0.18452454480769978
#>     Node 18    0.891746638971008
#>     Node 19    1.785240947539669
#>     Node 20    2.041248636907877
#>     Node 21    -2.063824174397698
#>     Node 22    1.6242733224416153
#>     Node 23    2.17529585600561
#>     Node 24    -0.3269065278672607
#>     Node 25    3.069661561312729
#>     Node 26    -0.334204244188048
#>     Node 27    1.8609903256636777
#>     Node 28    -3.979588984969348
#>     Node 29    1.1061374871890968
#>     Node 30    1.0547563784226233
#>     Node 31    1.4732794418447874
#>     Node 32    0.8616332535857645
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.7423984065846397
#>     Node 2    -2.0287983350292715
#>     Node 3    -1.6087311386613115
#>     Node 4    -0.21787861702454062
#>     Node 5    2.250618168669768
#>     Node 6    -1.6076559145342584
#>     Node 7    -2.2106160458524755
#>     Node 8    -0.9190021534787622
#>     Node 9    -3.0077653313142885
#>     Node 10    3.223725773099638
#>     Node 11    -0.8243174537874395
#>     Node 12    -1.830797369740324
#>     Node 13    -1.1596491818088952
#>     Node 14    -1.790940497104565
#>     Node 15    1.911000305526005
#>     Node 16    -0.23473627619543158
#>     Node 17    0.21747020634405773
#>     Node 18    -0.8561069119112523
#>     Node 19    -1.7777906938234085
#>     Node 20    -2.02300159256689
#>     Node 21    2.130466918220329
#>     Node 22    -1.6770611883338518
#>     Node 23    -2.210593710377638
#>     Node 24    0.31562602261545675
#>     Node 25    -3.0635358967069464
#>     Node 26    0.2527952236528867
#>     Node 27    -1.9028008339448068
#>     Node 28    3.9511467734971197
#>     Node 29    -1.1420968699518508
#>     Node 30    -0.9819270010239034
#>     Node 31    -1.4166408915943078
#>     Node 32    -0.8837742069658748
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.19713250669685953
#>     Attrib V1    0.7499424192243548
#>     Attrib V10    -0.4216076982740158
#>     Attrib V11    -0.19294246333268236
#>     Attrib V12    -0.19036963507737417
#>     Attrib V13    -0.576412377258535
#>     Attrib V14    -0.09316221879564764
#>     Attrib V15    0.3466255276834374
#>     Attrib V16    0.36413685299588155
#>     Attrib V17    0.33455756400439585
#>     Attrib V18    0.026930798879505443
#>     Attrib V19    -0.08907456117073272
#>     Attrib V2    -0.07841805922719362
#>     Attrib V20    0.6080049830258315
#>     Attrib V21    0.714802585656597
#>     Attrib V22    0.10124443873193244
#>     Attrib V23    0.027655867414923575
#>     Attrib V24    -0.19417252800902737
#>     Attrib V25    -0.7305949627575515
#>     Attrib V26    -0.6214314636507234
#>     Attrib V27    -0.7595441641416191
#>     Attrib V28    -0.35490901047726314
#>     Attrib V29    -0.33134504774302903
#>     Attrib V3    0.17368308196063073
#>     Attrib V30    -0.13265903155013906
#>     Attrib V31    -1.3422888302377063
#>     Attrib V32    0.18116262207285516
#>     Attrib V33    0.1917375104898527
#>     Attrib V34    -0.5165720664350097
#>     Attrib V35    -0.6740521200133783
#>     Attrib V36    -0.5869973649403811
#>     Attrib V37    -0.5104095967356191
#>     Attrib V38    0.029497559629029176
#>     Attrib V39    0.26835795713573657
#>     Attrib V4    0.697081833483169
#>     Attrib V40    0.11644923098050712
#>     Attrib V41    0.2466700633858717
#>     Attrib V42    0.10567348979357868
#>     Attrib V43    0.24531605974914517
#>     Attrib V44    0.21570096381443016
#>     Attrib V45    -0.09710169850191791
#>     Attrib V46    -0.08548915674954696
#>     Attrib V47    -0.37921811351804463
#>     Attrib V48    0.20330630579069023
#>     Attrib V49    0.33049954741846116
#>     Attrib V5    0.15976667883793338
#>     Attrib V50    -0.37542629934959043
#>     Attrib V51    0.06329024803596281
#>     Attrib V52    -0.2842989307817984
#>     Attrib V53    0.12725964597076506
#>     Attrib V54    0.600843690346037
#>     Attrib V55    -0.4447039415473812
#>     Attrib V56    0.36197877683370644
#>     Attrib V57    0.43299313471368256
#>     Attrib V58    0.6108942431794115
#>     Attrib V59    0.7142992470588114
#>     Attrib V6    -0.25916687030929325
#>     Attrib V60    0.5107408810845967
#>     Attrib V7    0.11812678298127746
#>     Attrib V8    0.48547977651068575
#>     Attrib V9    0.06156848096052183
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.16781977620295027
#>     Attrib V1    0.5950863953326657
#>     Attrib V10    -0.3498525861692743
#>     Attrib V11    -0.15892006927980426
#>     Attrib V12    -0.09693616539634786
#>     Attrib V13    -0.4276926658288109
#>     Attrib V14    -0.09132732068579051
#>     Attrib V15    0.3216120146719624
#>     Attrib V16    0.2482447043828226
#>     Attrib V17    0.25292795040719773
#>     Attrib V18    -0.049489082436506994
#>     Attrib V19    -0.043910933466914055
#>     Attrib V2    -0.004096964580790851
#>     Attrib V20    0.46278595954059343
#>     Attrib V21    0.493330584244929
#>     Attrib V22    0.06495575823663569
#>     Attrib V23    0.0033232349459726227
#>     Attrib V24    -0.19871752411459678
#>     Attrib V25    -0.6101880059079354
#>     Attrib V26    -0.5633316828270067
#>     Attrib V27    -0.7222577543700953
#>     Attrib V28    -0.38999085099484493
#>     Attrib V29    -0.37821247732575686
#>     Attrib V3    0.13999627450974453
#>     Attrib V30    -0.10477231906514706
#>     Attrib V31    -1.0360411909011378
#>     Attrib V32    0.18620352613876012
#>     Attrib V33    0.20199707872091924
#>     Attrib V34    -0.4332761925050681
#>     Attrib V35    -0.5383241915371727
#>     Attrib V36    -0.5005638830661399
#>     Attrib V37    -0.4037403360098283
#>     Attrib V38    -0.0398460396692068
#>     Attrib V39    0.24746506032288426
#>     Attrib V4    0.5908203796986887
#>     Attrib V40    0.0999740940063147
#>     Attrib V41    0.17945880246539814
#>     Attrib V42    0.01390196334880595
#>     Attrib V43    0.14845123349550898
#>     Attrib V44    0.15590581894345185
#>     Attrib V45    -0.07857439167846911
#>     Attrib V46    -0.07826178544978757
#>     Attrib V47    -0.2836990181712531
#>     Attrib V48    0.15769588990725322
#>     Attrib V49    0.2835124193771087
#>     Attrib V5    0.10439877835966097
#>     Attrib V50    -0.306398518389728
#>     Attrib V51    0.01698242186831905
#>     Attrib V52    -0.19909956472465903
#>     Attrib V53    0.02381794176226998
#>     Attrib V54    0.5227316564876485
#>     Attrib V55    -0.27377103247081963
#>     Attrib V56    0.32754004361075517
#>     Attrib V57    0.4163484569154207
#>     Attrib V58    0.5759518940485638
#>     Attrib V59    0.59091448649735
#>     Attrib V6    -0.22555970516033927
#>     Attrib V60    0.40791753035081557
#>     Attrib V7    0.015122076991705567
#>     Attrib V8    0.36654463811706334
#>     Attrib V9    0.02554845815513064
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.18593818709824506
#>     Attrib V1    0.03509919923758742
#>     Attrib V10    -0.043200334294526146
#>     Attrib V11    -0.05302188617668623
#>     Attrib V12    -0.025491307451634745
#>     Attrib V13    -0.031248286801955745
#>     Attrib V14    0.06150504667377456
#>     Attrib V15    0.07759885764931494
#>     Attrib V16    0.02697194412895417
#>     Attrib V17    0.07579155208703581
#>     Attrib V18    0.03596119601807888
#>     Attrib V19    0.005728603283564535
#>     Attrib V2    0.0512423151795026
#>     Attrib V20    0.0517725332421519
#>     Attrib V21    0.02713324939053028
#>     Attrib V22    -0.09891031014404214
#>     Attrib V23    -0.04116164498714332
#>     Attrib V24    -0.10835895670339774
#>     Attrib V25    -0.1197312021398765
#>     Attrib V26    -0.0810237193344228
#>     Attrib V27    -0.14923663726961112
#>     Attrib V28    -0.0064417881825325
#>     Attrib V29    0.00857757708000847
#>     Attrib V3    0.12553423990458124
#>     Attrib V30    -0.03531499763109442
#>     Attrib V31    -0.10169535568019315
#>     Attrib V32    0.04606885165530716
#>     Attrib V33    0.08098938061389312
#>     Attrib V34    0.04096744262771756
#>     Attrib V35    0.07669734607901121
#>     Attrib V36    0.043118403609192515
#>     Attrib V37    0.06642290302882607
#>     Attrib V38    0.013081625631263801
#>     Attrib V39    0.10465267710666466
#>     Attrib V4    0.11689341281970661
#>     Attrib V40    0.0727187824676807
#>     Attrib V41    -0.015115244442504587
#>     Attrib V42    -0.009130626844446977
#>     Attrib V43    -7.131364325471848E-6
#>     Attrib V44    0.06825961289546643
#>     Attrib V45    0.06495893460849479
#>     Attrib V46    -0.025537965695380672
#>     Attrib V47    -0.035884041948481715
#>     Attrib V48    0.03500507488395103
#>     Attrib V49    0.060206915374347136
#>     Attrib V5    0.10580004616488863
#>     Attrib V50    0.03905009281378816
#>     Attrib V51    0.058391635846211674
#>     Attrib V52    -0.052327294075409814
#>     Attrib V53    0.08968336306133924
#>     Attrib V54    0.011393249572869584
#>     Attrib V55    -0.008423354848225213
#>     Attrib V56    0.11021561038006154
#>     Attrib V57    0.14633899045435833
#>     Attrib V58    0.08309353634598962
#>     Attrib V59    0.05310605036203988
#>     Attrib V6    -0.018581520121026172
#>     Attrib V60    0.08355724757183323
#>     Attrib V7    -0.016622378878189726
#>     Attrib V8    0.004634772878687583
#>     Attrib V9    0.05799391526258492
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3261156172305134
#>     Attrib V1    -0.10243649208182122
#>     Attrib V10    -0.44172778110869887
#>     Attrib V11    -0.7427777313716938
#>     Attrib V12    -1.2132491662450455
#>     Attrib V13    -0.25201682805926606
#>     Attrib V14    0.4786210225548177
#>     Attrib V15    0.5060109233751086
#>     Attrib V16    0.6209637699892095
#>     Attrib V17    0.5255019485725478
#>     Attrib V18    0.31254708511765183
#>     Attrib V19    0.48287273211697385
#>     Attrib V2    -0.12465156161052522
#>     Attrib V20    0.2904015466269103
#>     Attrib V21    0.1822306867898672
#>     Attrib V22    0.10861712241505701
#>     Attrib V23    -0.8682356224775309
#>     Attrib V24    -0.6183471785472425
#>     Attrib V25    0.004752072620177943
#>     Attrib V26    -0.836012513773275
#>     Attrib V27    -0.7504624198690308
#>     Attrib V28    -1.234546621412096
#>     Attrib V29    -0.9690838015104463
#>     Attrib V3    0.04902031959585164
#>     Attrib V30    -0.20446620369806473
#>     Attrib V31    0.7598505930614128
#>     Attrib V32    -0.1789935881867829
#>     Attrib V33    0.3100203808492165
#>     Attrib V34    0.029750888163183428
#>     Attrib V35    -0.20366421065091592
#>     Attrib V36    0.6749892589660618
#>     Attrib V37    0.011277023668130316
#>     Attrib V38    0.4827658216303959
#>     Attrib V39    -0.21792559317908514
#>     Attrib V4    -0.676596764755196
#>     Attrib V40    -0.1340694215744965
#>     Attrib V41    -0.8847048332946112
#>     Attrib V42    0.5165610750724988
#>     Attrib V43    0.14885598560981092
#>     Attrib V44    0.021514009474875015
#>     Attrib V45    -0.4576719798852091
#>     Attrib V46    -0.7843315222086633
#>     Attrib V47    -0.3073677536069529
#>     Attrib V48    -0.7003492034307837
#>     Attrib V49    -0.7878943658810716
#>     Attrib V5    -0.6233852500307799
#>     Attrib V50    0.8987588183503982
#>     Attrib V51    -0.7396533702049269
#>     Attrib V52    -0.9511160362315259
#>     Attrib V53    -0.27163811044419883
#>     Attrib V54    0.08912220259446538
#>     Attrib V55    0.4319509031695297
#>     Attrib V56    0.4393821603300081
#>     Attrib V57    0.031119558352204958
#>     Attrib V58    -0.5125158812685929
#>     Attrib V59    -0.05197311669322376
#>     Attrib V6    -0.27137869467211656
#>     Attrib V60    -0.6205492643335973
#>     Attrib V7    0.3642932643580366
#>     Attrib V8    0.307684442830382
#>     Attrib V9    -0.6198422010369333
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.20031348154415932
#>     Attrib V1    0.6029179402256266
#>     Attrib V10    -0.3810134480852022
#>     Attrib V11    -0.15736917320522753
#>     Attrib V12    -0.1072113360628052
#>     Attrib V13    -0.5184460402278979
#>     Attrib V14    -0.13588615942070242
#>     Attrib V15    0.25665814273679166
#>     Attrib V16    0.3471374514033965
#>     Attrib V17    0.2686476961290333
#>     Attrib V18    0.06769693926415833
#>     Attrib V19    -0.0549615339870303
#>     Attrib V2    -0.05009067749442352
#>     Attrib V20    0.4897648555733125
#>     Attrib V21    0.5600771292681525
#>     Attrib V22    0.05042285206518037
#>     Attrib V23    0.024509265658795656
#>     Attrib V24    -0.13774510960493683
#>     Attrib V25    -0.5554783847174373
#>     Attrib V26    -0.4960318363092393
#>     Attrib V27    -0.6142855929620165
#>     Attrib V28    -0.36866324779582865
#>     Attrib V29    -0.3062777124325125
#>     Attrib V3    0.10860184576954632
#>     Attrib V30    -0.14403352511446407
#>     Attrib V31    -1.0828968734650302
#>     Attrib V32    0.1754917720811986
#>     Attrib V33    0.19506101499059353
#>     Attrib V34    -0.4160190282600704
#>     Attrib V35    -0.5011762326160052
#>     Attrib V36    -0.5017116683426691
#>     Attrib V37    -0.4010990970695145
#>     Attrib V38    -0.029007360958336822
#>     Attrib V39    0.21239250996649742
#>     Attrib V4    0.6172777805642864
#>     Attrib V40    0.051789171611985846
#>     Attrib V41    0.21023797090595636
#>     Attrib V42    0.06124865677215053
#>     Attrib V43    0.16662955641278573
#>     Attrib V44    0.14140873828056838
#>     Attrib V45    -0.05367382230290087
#>     Attrib V46    -0.04566251923725206
#>     Attrib V47    -0.32193069059827345
#>     Attrib V48    0.11933110540460033
#>     Attrib V49    0.24665404751854128
#>     Attrib V5    0.11874025509142544
#>     Attrib V50    -0.2803542432408794
#>     Attrib V51    0.07011538890850098
#>     Attrib V52    -0.26836345861221633
#>     Attrib V53    0.15266879784695606
#>     Attrib V54    0.4702424586057118
#>     Attrib V55    -0.3861234845636172
#>     Attrib V56    0.305004421593394
#>     Attrib V57    0.3988023794368237
#>     Attrib V58    0.5510068891355707
#>     Attrib V59    0.6024137475845827
#>     Attrib V6    -0.1456763790884178
#>     Attrib V60    0.4869406617143917
#>     Attrib V7    0.08689732718641704
#>     Attrib V8    0.3846186343254096
#>     Attrib V9    0.11300840767047557
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4818600545553605
#>     Attrib V1    0.5703539864403521
#>     Attrib V10    0.0427730389136545
#>     Attrib V11    0.4025992089762214
#>     Attrib V12    0.5307762151370489
#>     Attrib V13    -0.33851329744929193
#>     Attrib V14    -0.6586921872629485
#>     Attrib V15    -0.2893670951482567
#>     Attrib V16    -0.2727423747997903
#>     Attrib V17    -0.1851297491796186
#>     Attrib V18    -0.12130078624397787
#>     Attrib V19    -0.2491226716620031
#>     Attrib V2    0.11328329556861526
#>     Attrib V20    0.5773576224490722
#>     Attrib V21    0.647571681782557
#>     Attrib V22    0.32025745942396583
#>     Attrib V23    1.2103591474600972
#>     Attrib V24    0.5655528654547797
#>     Attrib V25    -0.2868338750024242
#>     Attrib V26    0.3620752554263697
#>     Attrib V27    0.0580387458491472
#>     Attrib V28    0.886171701205705
#>     Attrib V29    1.013162572994888
#>     Attrib V3    0.007498770520223939
#>     Attrib V30    0.35300244250884505
#>     Attrib V31    -1.4120072547277915
#>     Attrib V32    0.2759273790196078
#>     Attrib V33    -0.020549461054229293
#>     Attrib V34    -0.22313582325613368
#>     Attrib V35    0.09080219447906682
#>     Attrib V36    -0.5091458050653849
#>     Attrib V37    0.17582154956853815
#>     Attrib V38    -0.026489104323638428
#>     Attrib V39    0.4150966227403069
#>     Attrib V4    0.6488565386183276
#>     Attrib V40    0.2438020192179492
#>     Attrib V41    0.8432415578271457
#>     Attrib V42    -0.35923095068107164
#>     Attrib V43    0.13901939243390232
#>     Attrib V44    0.27853635793388154
#>     Attrib V45    0.33960720759189555
#>     Attrib V46    0.5078746493618302
#>     Attrib V47    -0.0689228088308661
#>     Attrib V48    0.28769548143357127
#>     Attrib V49    0.5726021463282814
#>     Attrib V5    0.29100846995860313
#>     Attrib V50    -0.9798830707462958
#>     Attrib V51    0.5444078910661162
#>     Attrib V52    0.3116359276711025
#>     Attrib V53    0.05580625052967877
#>     Attrib V54    0.47632479312023485
#>     Attrib V55    -0.7720914783297099
#>     Attrib V56    -0.028964759534647982
#>     Attrib V57    -0.08598632066181354
#>     Attrib V58    0.44084044116547355
#>     Attrib V59    0.19804789389583707
#>     Attrib V6    -0.21170277890820136
#>     Attrib V60    0.4501531774273617
#>     Attrib V7    -0.6209863822881779
#>     Attrib V8    -0.15436061259547307
#>     Attrib V9    0.5834026681476299
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.14928457684261687
#>     Attrib V1    0.16982312189883944
#>     Attrib V10    -0.12160541448386028
#>     Attrib V11    0.016450256387177543
#>     Attrib V12    0.09453875447146005
#>     Attrib V13    -0.20281286254969827
#>     Attrib V14    -0.2098008894553224
#>     Attrib V15    -0.05216179986733803
#>     Attrib V16    -0.022677285046507525
#>     Attrib V17    -0.01466083759716063
#>     Attrib V18    -0.12856279188964373
#>     Attrib V19    -0.18838447858638965
#>     Attrib V2    0.006659861698001386
#>     Attrib V20    0.04013678802145116
#>     Attrib V21    0.03304459819265146
#>     Attrib V22    -0.24688372153111326
#>     Attrib V23    -0.08911405704518736
#>     Attrib V24    -0.13598783846289683
#>     Attrib V25    -0.3047687373246029
#>     Attrib V26    -0.14732313734345073
#>     Attrib V27    -0.20031200652261644
#>     Attrib V28    0.07488963101380458
#>     Attrib V29    0.0874450914337631
#>     Attrib V3    0.018027683725814595
#>     Attrib V30    0.01784776924815316
#>     Attrib V31    -0.5166615427267425
#>     Attrib V32    0.1646062462147826
#>     Attrib V33    0.14321362312477737
#>     Attrib V34    -0.0749131452497923
#>     Attrib V35    -0.0648526698065698
#>     Attrib V36    -0.1632736112123197
#>     Attrib V37    -0.06008519005124788
#>     Attrib V38    0.03837112805806332
#>     Attrib V39    0.1787764102593591
#>     Attrib V4    0.31804350546435756
#>     Attrib V40    0.02196025553295986
#>     Attrib V41    0.013807590442973553
#>     Attrib V42    -0.31977286570227126
#>     Attrib V43    -0.052076317363630546
#>     Attrib V44    0.07652350859348458
#>     Attrib V45    0.06367851465254964
#>     Attrib V46    0.07272452628741795
#>     Attrib V47    -0.0713406182509858
#>     Attrib V48    0.2772389973603092
#>     Attrib V49    0.26313059353842744
#>     Attrib V5    0.0366066315902497
#>     Attrib V50    -0.24532856436897293
#>     Attrib V51    0.018380591941097302
#>     Attrib V52    -0.04795770517101691
#>     Attrib V53    0.05831669228210618
#>     Attrib V54    0.11512460686256377
#>     Attrib V55    -0.23003699050523094
#>     Attrib V56    0.04863611849329339
#>     Attrib V57    0.2462731754663452
#>     Attrib V58    0.19848360389833905
#>     Attrib V59    0.1637281401499663
#>     Attrib V6    -0.168109377707292
#>     Attrib V60    0.24946653530774618
#>     Attrib V7    -0.13586711214225075
#>     Attrib V8    -0.05287205710002119
#>     Attrib V9    0.08379820055706248
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.23713789153555792
#>     Attrib V1    0.017385877451902607
#>     Attrib V10    0.6481105138171203
#>     Attrib V11    0.7247075090121392
#>     Attrib V12    1.0047225631251657
#>     Attrib V13    0.24404592521880905
#>     Attrib V14    -0.5110347389029731
#>     Attrib V15    -0.36056672087050334
#>     Attrib V16    -0.4328308415254279
#>     Attrib V17    -0.32674922791649297
#>     Attrib V18    -0.0811057493056812
#>     Attrib V19    -0.32870156524816546
#>     Attrib V2    0.17427082408662029
#>     Attrib V20    -0.0626028527820352
#>     Attrib V21    0.10356211959357596
#>     Attrib V22    0.14496461163008012
#>     Attrib V23    1.5005390713617999
#>     Attrib V24    0.7332331842931685
#>     Attrib V25    -0.1348097500231434
#>     Attrib V26    0.8906873116292126
#>     Attrib V27    0.732064986865669
#>     Attrib V28    1.5637768745716722
#>     Attrib V29    1.5156049036470896
#>     Attrib V3    -0.040621476688153066
#>     Attrib V30    0.41046468623619525
#>     Attrib V31    -1.0882374939140738
#>     Attrib V32    0.16032963885280332
#>     Attrib V33    -0.392313803607483
#>     Attrib V34    -0.12275012324878193
#>     Attrib V35    0.27428972210430896
#>     Attrib V36    -0.9766210673420274
#>     Attrib V37    -0.2356790769181255
#>     Attrib V38    -0.813988381074516
#>     Attrib V39    0.190001581618133
#>     Attrib V4    0.7344247050205404
#>     Attrib V40    0.13550889746418116
#>     Attrib V41    1.0778184616006548
#>     Attrib V42    -0.56491558001472
#>     Attrib V43    -0.08172419778671211
#>     Attrib V44    0.2036609659056956
#>     Attrib V45    0.7435575930855832
#>     Attrib V46    1.0881985076357419
#>     Attrib V47    0.4491989005672541
#>     Attrib V48    0.6663291444306837
#>     Attrib V49    0.9255321557672991
#>     Attrib V5    0.7702762612791195
#>     Attrib V50    -1.0960734693368204
#>     Attrib V51    0.9618613916190607
#>     Attrib V52    1.093968365370353
#>     Attrib V53    0.2842834182021291
#>     Attrib V54    -0.25808289182316874
#>     Attrib V55    -0.5962160472783797
#>     Attrib V56    -0.4365609098239782
#>     Attrib V57    -0.5086826515626633
#>     Attrib V58    0.6030248624288386
#>     Attrib V59    -0.28632830669932513
#>     Attrib V6    0.32293380521517046
#>     Attrib V60    0.43252443262539564
#>     Attrib V7    -0.3971060090334513
#>     Attrib V8    -0.07628761691037515
#>     Attrib V9    0.8964176887055076
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.30722105972780256
#>     Attrib V1    -0.06708485959846673
#>     Attrib V10    -0.7521334574196269
#>     Attrib V11    -0.988781785697205
#>     Attrib V12    -1.3867271506204546
#>     Attrib V13    -0.3500054056533459
#>     Attrib V14    0.6758083974269636
#>     Attrib V15    0.6301650220729894
#>     Attrib V16    0.7389824750375754
#>     Attrib V17    0.4727396024256822
#>     Attrib V18    0.2321546271126453
#>     Attrib V19    0.27633285657461704
#>     Attrib V2    -0.33286677931752684
#>     Attrib V20    0.16531059474023507
#>     Attrib V21    0.121555867755525
#>     Attrib V22    -0.037954297013313765
#>     Attrib V23    -1.433198379720303
#>     Attrib V24    -0.9552802877279027
#>     Attrib V25    -0.14918445914582296
#>     Attrib V26    -1.1555320245786072
#>     Attrib V27    -1.0092943637222116
#>     Attrib V28    -1.7153007656323958
#>     Attrib V29    -1.4723471706449647
#>     Attrib V3    0.004860089377512237
#>     Attrib V30    -0.2059013915082433
#>     Attrib V31    0.8771809353897916
#>     Attrib V32    -0.27690028487528173
#>     Attrib V33    0.5735597626376708
#>     Attrib V34    0.050741574493854996
#>     Attrib V35    -0.42776785831655684
#>     Attrib V36    0.9430264389977016
#>     Attrib V37    0.0520989338157152
#>     Attrib V38    0.7692165059492077
#>     Attrib V39    -0.3710390485573511
#>     Attrib V4    -0.7448889010207703
#>     Attrib V40    -0.32668979536006987
#>     Attrib V41    -1.2728110461953728
#>     Attrib V42    0.5595891100938565
#>     Attrib V43    0.26626789037081366
#>     Attrib V44    -0.0037327116970154116
#>     Attrib V45    -0.6620738475202702
#>     Attrib V46    -1.1933097482709842
#>     Attrib V47    -0.6025607200905313
#>     Attrib V48    -0.8455986267565894
#>     Attrib V49    -1.0393302921609981
#>     Attrib V5    -0.9347510673743991
#>     Attrib V50    1.126499354931173
#>     Attrib V51    -1.0823501816777905
#>     Attrib V52    -1.2701354618089093
#>     Attrib V53    -0.31981853967101664
#>     Attrib V54    0.28764434649404813
#>     Attrib V55    0.5275446631750448
#>     Attrib V56    0.5794975727436081
#>     Attrib V57    0.3171778704512656
#>     Attrib V58    -0.5579651543115337
#>     Attrib V59    0.17171444257982796
#>     Attrib V6    -0.4338326618194302
#>     Attrib V60    -0.6971146497007561
#>     Attrib V7    0.47172484469155834
#>     Attrib V8    0.41130017150680953
#>     Attrib V9    -0.8685024292687475
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.03838827482126247
#>     Attrib V1    0.2153645546030928
#>     Attrib V10    -0.16828561237661643
#>     Attrib V11    -0.020947737952604985
#>     Attrib V12    0.0978762881320671
#>     Attrib V13    -0.26310965319704355
#>     Attrib V14    -0.11812115143003375
#>     Attrib V15    0.001190261507258084
#>     Attrib V16    0.002844774291656716
#>     Attrib V17    0.10320790019229051
#>     Attrib V18    -0.004100956501255568
#>     Attrib V19    -0.12317087449073302
#>     Attrib V2    -0.027705026693242846
#>     Attrib V20    0.17819151474501968
#>     Attrib V21    0.06921650483798729
#>     Attrib V22    -0.2303267652030429
#>     Attrib V23    -0.13253487063908495
#>     Attrib V24    -0.1742811110758861
#>     Attrib V25    -0.26074499942840146
#>     Attrib V26    -0.2567172082636051
#>     Attrib V27    -0.28929392425034917
#>     Attrib V28    -0.058296568707126524
#>     Attrib V29    -0.08503063094162976
#>     Attrib V3    0.012054136551297851
#>     Attrib V30    -0.08317106220645402
#>     Attrib V31    -0.5780912215233104
#>     Attrib V32    0.07749314734115545
#>     Attrib V33    0.09208144759929325
#>     Attrib V34    -0.058976177983433214
#>     Attrib V35    -0.04873517663986631
#>     Attrib V36    -0.13629162603562575
#>     Attrib V37    -0.0882709666531797
#>     Attrib V38    0.08738437452521373
#>     Attrib V39    0.17629752132475054
#>     Attrib V4    0.28091245975805124
#>     Attrib V40    0.012190657951950748
#>     Attrib V41    -0.06023119526323498
#>     Attrib V42    -0.19693984899615796
#>     Attrib V43    -0.010934398144527405
#>     Attrib V44    0.08736233921787988
#>     Attrib V45    0.07423599323723215
#>     Attrib V46    -0.006508439547810345
#>     Attrib V47    -0.07067286524846286
#>     Attrib V48    0.2554717966443826
#>     Attrib V49    0.21206797609457337
#>     Attrib V5    0.08766087367177866
#>     Attrib V50    -0.10017826479526296
#>     Attrib V51    0.08517613211747317
#>     Attrib V52    -0.09342182902495871
#>     Attrib V53    0.0437288548619437
#>     Attrib V54    0.2489911129380809
#>     Attrib V55    -0.10499494022706021
#>     Attrib V56    0.15654144135222253
#>     Attrib V57    0.27934679971734155
#>     Attrib V58    0.2750572162213911
#>     Attrib V59    0.18825254317225273
#>     Attrib V6    -0.09664273505448434
#>     Attrib V60    0.24118468206186985
#>     Attrib V7    -0.11525617054981438
#>     Attrib V8    0.055287045671068354
#>     Attrib V9    0.05411889260396858
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.27869060392718925
#>     Attrib V1    0.6037586313903862
#>     Attrib V10    -0.4192964057401845
#>     Attrib V11    -0.09363637097844872
#>     Attrib V12    -0.15537474537497456
#>     Attrib V13    -0.5245518186990743
#>     Attrib V14    -0.13296474072729922
#>     Attrib V15    0.2655738603643355
#>     Attrib V16    0.3280225984314943
#>     Attrib V17    0.30391047505856145
#>     Attrib V18    -0.01390174034254908
#>     Attrib V19    -0.03562105709149485
#>     Attrib V2    -0.038275863090944176
#>     Attrib V20    0.4785547569158005
#>     Attrib V21    0.5583702235002462
#>     Attrib V22    0.08524698209452188
#>     Attrib V23    0.06419842501386842
#>     Attrib V24    -0.20221933321866054
#>     Attrib V25    -0.7039918895864853
#>     Attrib V26    -0.5826048054580987
#>     Attrib V27    -0.6750850410774221
#>     Attrib V28    -0.3338472945906342
#>     Attrib V29    -0.24672952819320393
#>     Attrib V3    0.07062033935901839
#>     Attrib V30    -0.1397524556487641
#>     Attrib V31    -1.2371307358706813
#>     Attrib V32    0.16104514538105402
#>     Attrib V33    0.2289562881353527
#>     Attrib V34    -0.431252597947189
#>     Attrib V35    -0.6122009212106863
#>     Attrib V36    -0.5734338708374049
#>     Attrib V37    -0.47379350801535197
#>     Attrib V38    -0.011368436849275144
#>     Attrib V39    0.2104847949636873
#>     Attrib V4    0.6966270255049881
#>     Attrib V40    0.10990772347072579
#>     Attrib V41    0.20319317711728674
#>     Attrib V42    -0.027477402776278307
#>     Attrib V43    0.18522046321494862
#>     Attrib V44    0.11568295188006139
#>     Attrib V45    -0.017361448780646306
#>     Attrib V46    0.014966806291522862
#>     Attrib V47    -0.3259993091151484
#>     Attrib V48    0.2709252132426175
#>     Attrib V49    0.33605509320039123
#>     Attrib V5    0.156720224431211
#>     Attrib V50    -0.40178440152384126
#>     Attrib V51    0.07254272716287108
#>     Attrib V52    -0.21149028219785684
#>     Attrib V53    0.0677602348196527
#>     Attrib V54    0.4945126270417707
#>     Attrib V55    -0.4322769079493702
#>     Attrib V56    0.32674988850672465
#>     Attrib V57    0.46194775611243377
#>     Attrib V58    0.6131412348862543
#>     Attrib V59    0.6558030427824392
#>     Attrib V6    -0.22308096348411038
#>     Attrib V60    0.47479097332131537
#>     Attrib V7    0.08801957074606027
#>     Attrib V8    0.4200140562458478
#>     Attrib V9    0.10665606868855282
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.055301871237279185
#>     Attrib V1    0.4285754253397868
#>     Attrib V10    -0.2834303034357946
#>     Attrib V11    -0.09131821649244497
#>     Attrib V12    -0.04810873744116669
#>     Attrib V13    -0.301920683571435
#>     Attrib V14    -0.11908517012164666
#>     Attrib V15    0.13619542435986795
#>     Attrib V16    0.15223042766473951
#>     Attrib V17    0.2360884810186653
#>     Attrib V18    0.044019312827359096
#>     Attrib V19    -0.06117587771116869
#>     Attrib V2    -0.046689428123880994
#>     Attrib V20    0.3774790976818401
#>     Attrib V21    0.38215803412052324
#>     Attrib V22    -0.016285758363099062
#>     Attrib V23    0.06132722514206052
#>     Attrib V24    -0.10878874781340508
#>     Attrib V25    -0.394510924348161
#>     Attrib V26    -0.4225928074032472
#>     Attrib V27    -0.4755806788149499
#>     Attrib V28    -0.2559326424704874
#>     Attrib V29    -0.17512304452949246
#>     Attrib V3    0.1230729745682506
#>     Attrib V30    -0.11076984541927158
#>     Attrib V31    -0.8870626592123004
#>     Attrib V32    0.12221450671897482
#>     Attrib V33    0.11533659807474107
#>     Attrib V34    -0.24294175262440915
#>     Attrib V35    -0.3406678576694301
#>     Attrib V36    -0.33865974417740313
#>     Attrib V37    -0.21735307111950236
#>     Attrib V38    0.02172761625649661
#>     Attrib V39    0.2549192722969655
#>     Attrib V4    0.46794958480739146
#>     Attrib V40    0.079235870970467
#>     Attrib V41    0.12037210334343744
#>     Attrib V42    -0.05896692370423172
#>     Attrib V43    0.044083689021272146
#>     Attrib V44    0.08661118582223956
#>     Attrib V45    -0.07200189893344869
#>     Attrib V46    -0.011388920754953307
#>     Attrib V47    -0.18160206563614112
#>     Attrib V48    0.1526517295882723
#>     Attrib V49    0.25282194689522847
#>     Attrib V5    0.11575872850963868
#>     Attrib V50    -0.27068735880685524
#>     Attrib V51    0.05425245816143337
#>     Attrib V52    -0.18179877859120155
#>     Attrib V53    0.08445709850890626
#>     Attrib V54    0.349076180869663
#>     Attrib V55    -0.24989397331377616
#>     Attrib V56    0.2269149505908484
#>     Attrib V57    0.33155943140549593
#>     Attrib V58    0.394729431943186
#>     Attrib V59    0.4589871008253049
#>     Attrib V6    -0.12271467484756358
#>     Attrib V60    0.4157985989385135
#>     Attrib V7    0.04379427586432657
#>     Attrib V8    0.16600082004839156
#>     Attrib V9    0.05817009832477051
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.32417047101318686
#>     Attrib V1    0.6826160559849321
#>     Attrib V10    -0.3191383612978089
#>     Attrib V11    -0.015257167799005817
#>     Attrib V12    -0.0027981308222459816
#>     Attrib V13    -0.5140718570049847
#>     Attrib V14    -0.24728834290293922
#>     Attrib V15    0.28140030291554935
#>     Attrib V16    0.2131556139770983
#>     Attrib V17    0.24377105648114747
#>     Attrib V18    -0.0667700859853554
#>     Attrib V19    -0.1630165468159009
#>     Attrib V2    -0.08373902620008816
#>     Attrib V20    0.4244833166469288
#>     Attrib V21    0.5220083248877845
#>     Attrib V22    0.05273562161901271
#>     Attrib V23    0.1137589549808992
#>     Attrib V24    -0.21394067926544547
#>     Attrib V25    -0.7009335480748766
#>     Attrib V26    -0.532664087919631
#>     Attrib V27    -0.7315349693474009
#>     Attrib V28    -0.33047213398246666
#>     Attrib V29    -0.2654384527594523
#>     Attrib V3    0.01659944586903237
#>     Attrib V30    -0.05397218121049007
#>     Attrib V31    -1.2035332379909591
#>     Attrib V32    0.24922228706660265
#>     Attrib V33    0.24715192060270608
#>     Attrib V34    -0.4550831446904355
#>     Attrib V35    -0.6435827212721151
#>     Attrib V36    -0.7260943900128155
#>     Attrib V37    -0.505012840588375
#>     Attrib V38    -0.10830987844486646
#>     Attrib V39    0.22432201016973644
#>     Attrib V4    0.6635602916722452
#>     Attrib V40    0.08777613274780387
#>     Attrib V41    0.27266549059566847
#>     Attrib V42    -0.08397404470248158
#>     Attrib V43    0.08439888355275718
#>     Attrib V44    0.1665363117487665
#>     Attrib V45    -0.040408426957116376
#>     Attrib V46    0.018621756947483938
#>     Attrib V47    -0.29961519962517336
#>     Attrib V48    0.3876305749854281
#>     Attrib V49    0.4780457015143543
#>     Attrib V5    0.11484095890370438
#>     Attrib V50    -0.46911709261536916
#>     Attrib V51    0.07771837180461222
#>     Attrib V52    -0.1421846172892477
#>     Attrib V53    -0.1157353019420362
#>     Attrib V54    0.4940177609564329
#>     Attrib V55    -0.42853378889758986
#>     Attrib V56    0.2979077885720366
#>     Attrib V57    0.3891455565486852
#>     Attrib V58    0.6308435072744445
#>     Attrib V59    0.592455201184025
#>     Attrib V6    -0.19237815687739845
#>     Attrib V60    0.5123371924899311
#>     Attrib V7    0.048601358224281445
#>     Attrib V8    0.3179273496309367
#>     Attrib V9    0.12585252950265385
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.30750109235726225
#>     Attrib V1    -0.05343026073221217
#>     Attrib V10    -0.34305773964465397
#>     Attrib V11    -0.6992171623781595
#>     Attrib V12    -0.9916336271625644
#>     Attrib V13    -0.1712001726043874
#>     Attrib V14    0.4117156594441997
#>     Attrib V15    0.4609864680254157
#>     Attrib V16    0.5632098970240628
#>     Attrib V17    0.40450317103411637
#>     Attrib V18    0.2248722350299225
#>     Attrib V19    0.46378452184731717
#>     Attrib V2    -0.06959485429512
#>     Attrib V20    0.24595775591535288
#>     Attrib V21    0.04127345998250671
#>     Attrib V22    0.05563856939844015
#>     Attrib V23    -0.8909898475075949
#>     Attrib V24    -0.4881357360169379
#>     Attrib V25    0.044124823307963676
#>     Attrib V26    -0.6691148554681128
#>     Attrib V27    -0.6874760267267304
#>     Attrib V28    -1.0650921990555604
#>     Attrib V29    -0.864527616557639
#>     Attrib V3    0.06041989360345666
#>     Attrib V30    -0.2621528948578513
#>     Attrib V31    0.763758536164679
#>     Attrib V32    -0.1817407924522529
#>     Attrib V33    0.24150420541765427
#>     Attrib V34    0.14765298567462837
#>     Attrib V35    -0.06734808243033891
#>     Attrib V36    0.6708803632083669
#>     Attrib V37    0.1459519782925674
#>     Attrib V38    0.49972728897818797
#>     Attrib V39    -0.13055914773533453
#>     Attrib V4    -0.6457077874796027
#>     Attrib V40    -0.07379238540517187
#>     Attrib V41    -0.7452653889468619
#>     Attrib V42    0.3461345181932901
#>     Attrib V43    0.01603295902610991
#>     Attrib V44    -0.12907999528996214
#>     Attrib V45    -0.37366621240923914
#>     Attrib V46    -0.6303354766352584
#>     Attrib V47    -0.2506220464332393
#>     Attrib V48    -0.6555654546900319
#>     Attrib V49    -0.7212883801625275
#>     Attrib V5    -0.5769966165521017
#>     Attrib V50    0.8542546146146969
#>     Attrib V51    -0.6267856183203415
#>     Attrib V52    -0.8881448533823452
#>     Attrib V53    -0.20484128086861192
#>     Attrib V54    0.023957090488295057
#>     Attrib V55    0.4687812088704885
#>     Attrib V56    0.3991692457162129
#>     Attrib V57    0.04083016001225299
#>     Attrib V58    -0.4965716661872153
#>     Attrib V59    -0.060984581384668515
#>     Attrib V6    -0.21439554167843247
#>     Attrib V60    -0.535740111733415
#>     Attrib V7    0.2768461871016853
#>     Attrib V8    0.19715217976429542
#>     Attrib V9    -0.540599240767
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1744447536942059
#>     Attrib V1    0.0663561400163632
#>     Attrib V10    -0.02646827904168324
#>     Attrib V11    -0.05671894822606798
#>     Attrib V12    -0.040863860225714796
#>     Attrib V13    -0.043344962519757065
#>     Attrib V14    -0.016849950732041697
#>     Attrib V15    0.011104523358338501
#>     Attrib V16    0.0909662188943266
#>     Attrib V17    0.1147628810409496
#>     Attrib V18    0.09465171634042209
#>     Attrib V19    0.0234923071545306
#>     Attrib V2    0.027633227260615997
#>     Attrib V20    4.0258219079485E-5
#>     Attrib V21    -0.05616631430134819
#>     Attrib V22    -0.10689666738062843
#>     Attrib V23    -0.08650685246202133
#>     Attrib V24    -0.047974758217620185
#>     Attrib V25    -0.05396828790169057
#>     Attrib V26    -0.100979061382078
#>     Attrib V27    -0.12561191765599677
#>     Attrib V28    -0.029967274489983046
#>     Attrib V29    -0.0392584659665658
#>     Attrib V3    0.10777704307472502
#>     Attrib V30    -0.08109912583072965
#>     Attrib V31    -0.14242694143666995
#>     Attrib V32    0.0611831447592965
#>     Attrib V33    0.04295666852393142
#>     Attrib V34    0.04923077006962637
#>     Attrib V35    0.05819002923870386
#>     Attrib V36    0.03972443327264045
#>     Attrib V37    0.08725739631578022
#>     Attrib V38    0.052023466709922646
#>     Attrib V39    0.09420702547417874
#>     Attrib V4    0.14713488890269805
#>     Attrib V40    0.022286037529277186
#>     Attrib V41    0.006924082976795429
#>     Attrib V42    -0.0048783115249788275
#>     Attrib V43    0.0012186508564801788
#>     Attrib V44    0.016802282001756815
#>     Attrib V45    0.02154018625536138
#>     Attrib V46    0.014182775978249528
#>     Attrib V47    -0.017206510296230042
#>     Attrib V48    0.005025616230315955
#>     Attrib V49    0.0020431892230516383
#>     Attrib V5    0.07511079151845526
#>     Attrib V50    0.04749849753164107
#>     Attrib V51    0.07610163391654098
#>     Attrib V52    -0.022799677310140203
#>     Attrib V53    0.10343366268100017
#>     Attrib V54    0.02463850095751102
#>     Attrib V55    0.011358294167490374
#>     Attrib V56    0.09509084821860657
#>     Attrib V57    0.14546629332199937
#>     Attrib V58    0.14196267931185494
#>     Attrib V59    0.02115654297471982
#>     Attrib V6    0.03687729144948032
#>     Attrib V60    0.12768307023490072
#>     Attrib V7    -0.008498537932391727
#>     Attrib V8    0.003574845210454812
#>     Attrib V9    0.06782283727090847
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.2006719095650966
#>     Attrib V1    0.030105497358454907
#>     Attrib V10    0.07204067886083006
#>     Attrib V11    -0.06645134563419433
#>     Attrib V12    -0.17821361974136604
#>     Attrib V13    -0.006196124307291689
#>     Attrib V14    0.11932488612828714
#>     Attrib V15    0.1893456874012978
#>     Attrib V16    0.15922902040851797
#>     Attrib V17    0.15730846923277017
#>     Attrib V18    0.1345058919178076
#>     Attrib V19    0.09740714278611823
#>     Attrib V2    0.16607652906014475
#>     Attrib V20    -0.06150805738768417
#>     Attrib V21    -0.1038400920145233
#>     Attrib V22    0.04924168095080105
#>     Attrib V23    -0.08357480161420185
#>     Attrib V24    -0.08228656844559287
#>     Attrib V25    -0.05478372272472308
#>     Attrib V26    -0.14684755306660802
#>     Attrib V27    -0.11607495024507648
#>     Attrib V28    -0.1407741693635337
#>     Attrib V29    -0.11046599978772823
#>     Attrib V3    0.1116372682715788
#>     Attrib V30    0.022817849447349523
#>     Attrib V31    0.22289428116099103
#>     Attrib V32    -0.08282285720767735
#>     Attrib V33    0.09715366906422454
#>     Attrib V34    0.10620775820336067
#>     Attrib V35    0.22099170836329574
#>     Attrib V36    0.20203607500193527
#>     Attrib V37    0.12332922614782552
#>     Attrib V38    0.11602122337209521
#>     Attrib V39    0.03079496136460676
#>     Attrib V4    0.012490744183286297
#>     Attrib V40    0.06265845757929268
#>     Attrib V41    0.07269563057307961
#>     Attrib V42    0.11550757663752781
#>     Attrib V43    0.06224695387999968
#>     Attrib V44    0.04359969503957464
#>     Attrib V45    0.01844824928906431
#>     Attrib V46    -0.0510709444620568
#>     Attrib V47    -0.01431479025238756
#>     Attrib V48    -0.11309781892248101
#>     Attrib V49    -0.16901681783961442
#>     Attrib V5    0.06672889542915886
#>     Attrib V50    0.15580225708420617
#>     Attrib V51    0.0386615810017108
#>     Attrib V52    -0.05785548933815963
#>     Attrib V53    0.02225776360960447
#>     Attrib V54    -0.0691217373769452
#>     Attrib V55    0.1392039518145943
#>     Attrib V56    0.07503271213901408
#>     Attrib V57    0.1171302941080998
#>     Attrib V58    -0.0546585576107616
#>     Attrib V59    -0.05970331707995718
#>     Attrib V6    0.1459268872557342
#>     Attrib V60    0.016049386161493994
#>     Attrib V7    0.06597548396389806
#>     Attrib V8    0.13570947836790007
#>     Attrib V9    0.021897236267446583
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    2.3288389247960273E-4
#>     Attrib V1    0.31623171258212995
#>     Attrib V10    -0.15732990840684705
#>     Attrib V11    -0.034239354603139587
#>     Attrib V12    0.007331945598269471
#>     Attrib V13    -0.25253199270069643
#>     Attrib V14    -0.09590018665416655
#>     Attrib V15    0.05551233947659238
#>     Attrib V16    0.08493033313241936
#>     Attrib V17    0.09259412299724706
#>     Attrib V18    0.061588682667612075
#>     Attrib V19    -0.10229600696323217
#>     Attrib V2    0.018261006145430393
#>     Attrib V20    0.23621877785367298
#>     Attrib V21    0.23122112429334363
#>     Attrib V22    -0.08892419861253559
#>     Attrib V23    -0.05033211705438883
#>     Attrib V24    -0.16025331964403328
#>     Attrib V25    -0.31118291508102564
#>     Attrib V26    -0.2616250917854506
#>     Attrib V27    -0.3514518996555866
#>     Attrib V28    -0.17725270505965512
#>     Attrib V29    -0.1598688086402235
#>     Attrib V3    0.11610742695761152
#>     Attrib V30    -0.15058042879773953
#>     Attrib V31    -0.6289684000445332
#>     Attrib V32    0.0713228968703096
#>     Attrib V33    0.09127264648136982
#>     Attrib V34    -0.12184230725553077
#>     Attrib V35    -0.18641385200542018
#>     Attrib V36    -0.14115216801671657
#>     Attrib V37    -0.1346892727229933
#>     Attrib V38    0.026419928440377924
#>     Attrib V39    0.21734632033774784
#>     Attrib V4    0.3020401899530017
#>     Attrib V40    0.013658974009689644
#>     Attrib V41    -0.01680643666548034
#>     Attrib V42    -0.14603850365221635
#>     Attrib V43    0.015560345439830404
#>     Attrib V44    0.09006776680371463
#>     Attrib V45    -0.05450971250720307
#>     Attrib V46    -0.04360211150725328
#>     Attrib V47    -0.10833129269088358
#>     Attrib V48    0.1696099762621864
#>     Attrib V49    0.2082754032630814
#>     Attrib V5    0.07463527422381531
#>     Attrib V50    -0.188232264330588
#>     Attrib V51    0.10252162835064324
#>     Attrib V52    -0.10355303106306082
#>     Attrib V53    0.06941369667224641
#>     Attrib V54    0.21852938161969843
#>     Attrib V55    -0.10065273104840543
#>     Attrib V56    0.19463023219075107
#>     Attrib V57    0.22397117546955256
#>     Attrib V58    0.2979846546498726
#>     Attrib V59    0.314491240175684
#>     Attrib V6    -0.12144054159579352
#>     Attrib V60    0.33099312726157476
#>     Attrib V7    0.01369001628758369
#>     Attrib V8    0.12314589344379512
#>     Attrib V9    0.06004314205725565
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3221442673952301
#>     Attrib V1    0.5529980110909312
#>     Attrib V10    -0.3374807458251056
#>     Attrib V11    -0.01475425387658372
#>     Attrib V12    0.15596574282438286
#>     Attrib V13    -0.5103564954467048
#>     Attrib V14    -0.27771439958759064
#>     Attrib V15    0.2293307763587656
#>     Attrib V16    0.2119076650329115
#>     Attrib V17    0.24780926344058787
#>     Attrib V18    0.021275908473004264
#>     Attrib V19    -0.041309342293325106
#>     Attrib V2    -0.1501040262088929
#>     Attrib V20    0.45114310863305607
#>     Attrib V21    0.5125716029318609
#>     Attrib V22    0.18839839194938798
#>     Attrib V23    0.4020330187851873
#>     Attrib V24    0.0994855993749357
#>     Attrib V25    -0.4832068401295182
#>     Attrib V26    -0.2607010170104408
#>     Attrib V27    -0.4537510876489097
#>     Attrib V28    -0.036238551268330116
#>     Attrib V29    -0.03505054382591262
#>     Attrib V3    -0.006362180291319964
#>     Attrib V30    0.02252694132109159
#>     Attrib V31    -1.2288374718743191
#>     Attrib V32    0.26593726417241204
#>     Attrib V33    0.19532354807854813
#>     Attrib V34    -0.5020291956302667
#>     Attrib V35    -0.670621926496847
#>     Attrib V36    -0.7852074022496113
#>     Attrib V37    -0.6050418657174444
#>     Attrib V38    -0.19166121897490968
#>     Attrib V39    0.18288222503745574
#>     Attrib V4    0.8072692533845893
#>     Attrib V40    0.18605377407102586
#>     Attrib V41    0.5080888122949366
#>     Attrib V42    0.12501964517448022
#>     Attrib V43    0.18433514751754132
#>     Attrib V44    0.09902291398208651
#>     Attrib V45    -0.033508010959772724
#>     Attrib V46    -0.007743870069468069
#>     Attrib V47    -0.4009099960079622
#>     Attrib V48    0.21501538141897433
#>     Attrib V49    0.42060504637194385
#>     Attrib V5    0.24024790323269096
#>     Attrib V50    -0.7240147457890667
#>     Attrib V51    0.2262522488750301
#>     Attrib V52    0.06667168062035646
#>     Attrib V53    0.21267754005197698
#>     Attrib V54    0.5787293717749055
#>     Attrib V55    -0.5421723212185295
#>     Attrib V56    0.19689547296684057
#>     Attrib V57    0.25702102326503445
#>     Attrib V58    0.704063310702136
#>     Attrib V59    0.6268134581172684
#>     Attrib V6    -0.17060809011342412
#>     Attrib V60    0.5379156124968992
#>     Attrib V7    0.01862684417110912
#>     Attrib V8    0.3694482269446309
#>     Attrib V9    0.14253330666705258
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.20144859441747556
#>     Attrib V1    0.6460228693196767
#>     Attrib V10    -0.4037840781353892
#>     Attrib V11    -0.08903138119023028
#>     Attrib V12    0.055433565834171875
#>     Attrib V13    -0.5744756791006962
#>     Attrib V14    -0.2225023920416983
#>     Attrib V15    0.2579044706718554
#>     Attrib V16    0.31079264821239355
#>     Attrib V17    0.3038150156762697
#>     Attrib V18    0.09477571786112156
#>     Attrib V19    -0.011243198962290025
#>     Attrib V2    -0.19565960303934202
#>     Attrib V20    0.5779529995505961
#>     Attrib V21    0.6756246175966303
#>     Attrib V22    0.28584129598966196
#>     Attrib V23    0.5040520949902951
#>     Attrib V24    0.09802324467765472
#>     Attrib V25    -0.5415994594307524
#>     Attrib V26    -0.21434061239831695
#>     Attrib V27    -0.3895489922434576
#>     Attrib V28    -0.10146331014646513
#>     Attrib V29    -0.0605602427236113
#>     Attrib V3    0.04678038822193732
#>     Attrib V30    0.024201033665082163
#>     Attrib V31    -1.345284493116053
#>     Attrib V32    0.20349148195120761
#>     Attrib V33    0.13191907879330184
#>     Attrib V34    -0.6750569722675429
#>     Attrib V35    -0.8399516216583219
#>     Attrib V36    -0.7214794537990513
#>     Attrib V37    -0.5492758703640027
#>     Attrib V38    -0.06773151928415211
#>     Attrib V39    0.1919287652628866
#>     Attrib V4    0.8753520867711376
#>     Attrib V40    0.1322495317862406
#>     Attrib V41    0.4836108057727141
#>     Attrib V42    0.18206184610021475
#>     Attrib V43    0.3893189900865665
#>     Attrib V44    0.3097657538010431
#>     Attrib V45    -0.12263532732494005
#>     Attrib V46    -0.1304638822001004
#>     Attrib V47    -0.5010766868932349
#>     Attrib V48    0.08670159261193432
#>     Attrib V49    0.28432306574291777
#>     Attrib V5    0.3165323446135084
#>     Attrib V50    -0.6805753883642877
#>     Attrib V51    0.32645829967969425
#>     Attrib V52    -0.035874143798182496
#>     Attrib V53    0.30462442082251745
#>     Attrib V54    0.7475147189602688
#>     Attrib V55    -0.6144898467162934
#>     Attrib V56    0.36316794890309606
#>     Attrib V57    0.2778987134153143
#>     Attrib V58    0.7380992278885572
#>     Attrib V59    0.7869192864455135
#>     Attrib V6    -0.18341277339527626
#>     Attrib V60    0.590090663123439
#>     Attrib V7    0.08924030406779447
#>     Attrib V8    0.44948439798602224
#>     Attrib V9    0.13917428344611943
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.21262629930688923
#>     Attrib V1    -0.018232801165117742
#>     Attrib V10    -0.4611191910942965
#>     Attrib V11    -0.8017895415576449
#>     Attrib V12    -1.1419387270461179
#>     Attrib V13    -0.27153122564325
#>     Attrib V14    0.4467282908233474
#>     Attrib V15    0.4802889539930579
#>     Attrib V16    0.6038406327620287
#>     Attrib V17    0.4587017405970552
#>     Attrib V18    0.2712769435772451
#>     Attrib V19    0.40029860938834694
#>     Attrib V2    -0.1419668792533226
#>     Attrib V20    0.27283337903637
#>     Attrib V21    0.18508986028350072
#>     Attrib V22    0.01689508141943616
#>     Attrib V23    -0.9882488184312207
#>     Attrib V24    -0.5858453769183212
#>     Attrib V25    -0.02581333543560404
#>     Attrib V26    -0.7842730379378741
#>     Attrib V27    -0.7350677287854697
#>     Attrib V28    -1.192717798678164
#>     Attrib V29    -0.9343399848490489
#>     Attrib V3    0.010646468050692321
#>     Attrib V30    -0.23039413655561494
#>     Attrib V31    0.737155783880305
#>     Attrib V32    -0.22412496533447332
#>     Attrib V33    0.2831691148537393
#>     Attrib V34    0.05197732062308883
#>     Attrib V35    -0.19626529737977574
#>     Attrib V36    0.6689291969877118
#>     Attrib V37    0.10848508954000588
#>     Attrib V38    0.489623612928568
#>     Attrib V39    -0.1647194491366393
#>     Attrib V4    -0.5779235701624363
#>     Attrib V40    -0.09299172867345595
#>     Attrib V41    -0.7629332506093635
#>     Attrib V42    0.3872091082983782
#>     Attrib V43    0.10281681231098375
#>     Attrib V44    -0.06700654600821242
#>     Attrib V45    -0.490053479686596
#>     Attrib V46    -0.7628598765954778
#>     Attrib V47    -0.3517112872073913
#>     Attrib V48    -0.6725904413799058
#>     Attrib V49    -0.7879504325168286
#>     Attrib V5    -0.5960617562226695
#>     Attrib V50    0.8449854048138336
#>     Attrib V51    -0.715256139356516
#>     Attrib V52    -0.9391069371457583
#>     Attrib V53    -0.22416770896467886
#>     Attrib V54    0.07380245415840445
#>     Attrib V55    0.35451142388632456
#>     Attrib V56    0.34166232337805824
#>     Attrib V57    0.19778946230818736
#>     Attrib V58    -0.4878163668904149
#>     Attrib V59    0.05372207651014398
#>     Attrib V6    -0.2546345044672821
#>     Attrib V60    -0.4532833111000401
#>     Attrib V7    0.37565635683428117
#>     Attrib V8    0.20312886426742127
#>     Attrib V9    -0.5699741296237419
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.19026516046192962
#>     Attrib V1    0.6556844722597828
#>     Attrib V10    -0.3868703472935896
#>     Attrib V11    -0.12066689932890028
#>     Attrib V12    -0.041107728741687555
#>     Attrib V13    -0.4432169447070832
#>     Attrib V14    -0.09774363432997119
#>     Attrib V15    0.2131500424784551
#>     Attrib V16    0.2751412076693409
#>     Attrib V17    0.24392100859461666
#>     Attrib V18    -0.04140248374343027
#>     Attrib V19    -0.12146908133232388
#>     Attrib V2    0.015354126665091361
#>     Attrib V20    0.42147834716029636
#>     Attrib V21    0.43479024321413867
#>     Attrib V22    -0.049414574766434405
#>     Attrib V23    -0.12018291388889521
#>     Attrib V24    -0.19132386748571578
#>     Attrib V25    -0.6378330481227484
#>     Attrib V26    -0.6259776782218635
#>     Attrib V27    -0.7647581812488711
#>     Attrib V28    -0.5274315535960964
#>     Attrib V29    -0.39436998778350985
#>     Attrib V3    0.09886508084441825
#>     Attrib V30    -0.21913909652191454
#>     Attrib V31    -0.9647062469579065
#>     Attrib V32    0.16821789519492233
#>     Attrib V33    0.1610809188277788
#>     Attrib V34    -0.35568439263004437
#>     Attrib V35    -0.49352950959461706
#>     Attrib V36    -0.4566684741256004
#>     Attrib V37    -0.35049853311226464
#>     Attrib V38    0.009609515075782766
#>     Attrib V39    0.2141099033052388
#>     Attrib V4    0.5701531056218174
#>     Attrib V40    0.09109757272203882
#>     Attrib V41    0.07387467143923293
#>     Attrib V42    -0.08064120647961881
#>     Attrib V43    0.18695611155460864
#>     Attrib V44    0.09560387274626489
#>     Attrib V45    -0.14990813383312135
#>     Attrib V46    -0.08985734052837777
#>     Attrib V47    -0.34889987298136377
#>     Attrib V48    0.2586887143651329
#>     Attrib V49    0.308692765203406
#>     Attrib V5    0.11095001230347663
#>     Attrib V50    -0.2552428893984038
#>     Attrib V51    0.002346092564768428
#>     Attrib V52    -0.23837642220161165
#>     Attrib V53    -0.0018555061996048852
#>     Attrib V54    0.5332209041163721
#>     Attrib V55    -0.24040242148456745
#>     Attrib V56    0.3801477326844088
#>     Attrib V57    0.4609564632103651
#>     Attrib V58    0.5466078621423448
#>     Attrib V59    0.5901500718923387
#>     Attrib V6    -0.16976562084398572
#>     Attrib V60    0.4903898267554049
#>     Attrib V7    0.04504115396961326
#>     Attrib V8    0.19257698661227637
#>     Attrib V9    0.013888418242354914
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.3148526512176324
#>     Attrib V1    0.7733097605608009
#>     Attrib V10    -0.4621549466490567
#>     Attrib V11    -0.11965385014475714
#>     Attrib V12    -0.13505320272109525
#>     Attrib V13    -0.6821831111264628
#>     Attrib V14    -0.23034980990873982
#>     Attrib V15    0.3117188523108867
#>     Attrib V16    0.3477354310187811
#>     Attrib V17    0.362494246653868
#>     Attrib V18    0.026278362588378183
#>     Attrib V19    -0.06429985643801174
#>     Attrib V2    -0.2232176944141624
#>     Attrib V20    0.6230637004054376
#>     Attrib V21    0.7151877587497131
#>     Attrib V22    0.19580436700908416
#>     Attrib V23    0.24967629063001862
#>     Attrib V24    -0.12470455510481251
#>     Attrib V25    -0.738655983849589
#>     Attrib V26    -0.47130269112979356
#>     Attrib V27    -0.6764391962926026
#>     Attrib V28    -0.3013287132445247
#>     Attrib V29    -0.29471786596644195
#>     Attrib V3    0.11822119073604331
#>     Attrib V30    -0.08751622344625726
#>     Attrib V31    -1.4709295825451847
#>     Attrib V32    0.1742766637064094
#>     Attrib V33    0.19047193897819928
#>     Attrib V34    -0.6335162952388496
#>     Attrib V35    -0.7609704931379048
#>     Attrib V36    -0.7062248675802983
#>     Attrib V37    -0.585417076249982
#>     Attrib V38    -0.07475877147304627
#>     Attrib V39    0.26666053896487896
#>     Attrib V4    0.8636863818524964
#>     Attrib V40    0.11035690857816965
#>     Attrib V41    0.3391751383621199
#>     Attrib V42    0.16168363572991057
#>     Attrib V43    0.34231473049044997
#>     Attrib V44    0.23286551934600025
#>     Attrib V45    -0.06921189326749025
#>     Attrib V46    -0.07868355475345482
#>     Attrib V47    -0.39025680930283524
#>     Attrib V48    0.1389607019037661
#>     Attrib V49    0.36682700466259327
#>     Attrib V5    0.18207625499901975
#>     Attrib V50    -0.549946819359456
#>     Attrib V51    0.12703965828719216
#>     Attrib V52    -0.1642289887637121
#>     Attrib V53    0.26103173746364305
#>     Attrib V54    0.7206514882916808
#>     Attrib V55    -0.612594263115295
#>     Attrib V56    0.4007785317946818
#>     Attrib V57    0.40605218619884975
#>     Attrib V58    0.7430052171394006
#>     Attrib V59    0.799502623901837
#>     Attrib V6    -0.2133539883210883
#>     Attrib V60    0.5355768673874511
#>     Attrib V7    0.19128138869600247
#>     Attrib V8    0.5909014722184751
#>     Attrib V9    0.13429321864635857
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.24700637094497985
#>     Attrib V1    -0.024600610932316292
#>     Attrib V10    0.004505226914008678
#>     Attrib V11    -0.16168482062465367
#>     Attrib V12    -0.23204934562090632
#>     Attrib V13    0.022348236942678807
#>     Attrib V14    0.19902140388626846
#>     Attrib V15    0.2265218193228014
#>     Attrib V16    0.19690008631332387
#>     Attrib V17    0.2514162197718672
#>     Attrib V18    0.16893684824709343
#>     Attrib V19    0.10234146302648547
#>     Attrib V2    0.09842403635982837
#>     Attrib V20    -0.06149053050669424
#>     Attrib V21    -0.11495478620662032
#>     Attrib V22    -0.009569946762641036
#>     Attrib V23    -0.07177054911814489
#>     Attrib V24    -0.17157020840585352
#>     Attrib V25    -0.026746917919325215
#>     Attrib V26    -0.12480085827057515
#>     Attrib V27    -0.16517662684804452
#>     Attrib V28    -0.18087730726202
#>     Attrib V29    -0.1120961914027091
#>     Attrib V3    0.10900923938089209
#>     Attrib V30    -0.014102266628332942
#>     Attrib V31    0.24421170217110041
#>     Attrib V32    -0.09931639655007347
#>     Attrib V33    -0.002120436598334991
#>     Attrib V34    0.15345511107344648
#>     Attrib V35    0.20195364591003004
#>     Attrib V36    0.3183792258472399
#>     Attrib V37    0.13164057577859947
#>     Attrib V38    0.05329425403721406
#>     Attrib V39    -0.07770118393263059
#>     Attrib V4    -0.027617058157930884
#>     Attrib V40    0.08207170048207643
#>     Attrib V41    0.01575074746358845
#>     Attrib V42    0.1123095799613026
#>     Attrib V43    0.019463079290702925
#>     Attrib V44    -0.06505888220697065
#>     Attrib V45    -0.1118907667155018
#>     Attrib V46    -0.055941329463832755
#>     Attrib V47    0.06969231022802377
#>     Attrib V48    -0.22156813996079075
#>     Attrib V49    -0.23886117304119603
#>     Attrib V5    -0.008799393987202789
#>     Attrib V50    0.275271683562526
#>     Attrib V51    0.05138897602396733
#>     Attrib V52    0.010974420926899101
#>     Attrib V53    0.003421547633956431
#>     Attrib V54    -0.09880929977292899
#>     Attrib V55    0.17640907651433319
#>     Attrib V56    0.0693867387006445
#>     Attrib V57    0.0986813423112477
#>     Attrib V58    -0.07794033961568585
#>     Attrib V59    -0.059434942595436496
#>     Attrib V6    0.1661272563358833
#>     Attrib V60    -0.061708498111686876
#>     Attrib V7    0.09091700489020108
#>     Attrib V8    0.0975958555814432
#>     Attrib V9    0.019463496669840052
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.3352030925637693
#>     Attrib V1    -0.050627431017516294
#>     Attrib V10    0.5110307073163083
#>     Attrib V11    0.7116943210634106
#>     Attrib V12    1.0614443488823417
#>     Attrib V13    0.18586828547128853
#>     Attrib V14    -0.4392359437882262
#>     Attrib V15    -0.38016666334762206
#>     Attrib V16    -0.45814700865801833
#>     Attrib V17    -0.3101920963697268
#>     Attrib V18    -0.06104611448727629
#>     Attrib V19    -0.28456117693821115
#>     Attrib V2    0.1381533834227526
#>     Attrib V20    -0.07232787203059253
#>     Attrib V21    -0.002454799349153128
#>     Attrib V22    0.13464057777020533
#>     Attrib V23    1.5905775675144906
#>     Attrib V24    0.7528884694798894
#>     Attrib V25    -0.20115741206323784
#>     Attrib V26    0.8606196073895993
#>     Attrib V27    0.7864245021726046
#>     Attrib V28    1.6281835379531895
#>     Attrib V29    1.5311888971618386
#>     Attrib V3    0.01227382161932304
#>     Attrib V30    0.37923322922478364
#>     Attrib V31    -1.0692751209159292
#>     Attrib V32    0.16684943524985354
#>     Attrib V33    -0.4463482724119937
#>     Attrib V34    -0.14155509313654288
#>     Attrib V35    0.2867259712490664
#>     Attrib V36    -0.9884791721658412
#>     Attrib V37    -0.20347076173863965
#>     Attrib V38    -0.83098610529261
#>     Attrib V39    0.15115121213228377
#>     Attrib V4    0.8049565572694256
#>     Attrib V40    0.10219817255500906
#>     Attrib V41    1.1604167235255243
#>     Attrib V42    -0.45543058521335367
#>     Attrib V43    -0.13425866220663682
#>     Attrib V44    0.2548012772918157
#>     Attrib V45    0.7401208593629294
#>     Attrib V46    1.048630064602242
#>     Attrib V47    0.3629714538239138
#>     Attrib V48    0.6336133073129266
#>     Attrib V49    0.9724209692869947
#>     Attrib V5    0.8901379023965836
#>     Attrib V50    -1.1836943063017908
#>     Attrib V51    0.9105093097773141
#>     Attrib V52    1.183944030461787
#>     Attrib V53    0.2963819165685737
#>     Attrib V54    -0.24998267170080338
#>     Attrib V55    -0.6306401153158591
#>     Attrib V56    -0.48491846406387645
#>     Attrib V57    -0.374238378896704
#>     Attrib V58    0.653140589550136
#>     Attrib V59    -0.1747899311849382
#>     Attrib V6    0.32716939915069054
#>     Attrib V60    0.5283932178162222
#>     Attrib V7    -0.4879460880139056
#>     Attrib V8    -0.1602073495524107
#>     Attrib V9    0.8399567479140402
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.300560621696847
#>     Attrib V1    -0.018640456093198837
#>     Attrib V10    0.009826719829956278
#>     Attrib V11    -0.18217530223808945
#>     Attrib V12    -0.2181572945816723
#>     Attrib V13    0.032533780923765465
#>     Attrib V14    0.2416984787139585
#>     Attrib V15    0.15833084140198053
#>     Attrib V16    0.18770832197634316
#>     Attrib V17    0.21314791553279494
#>     Attrib V18    0.13605720219100326
#>     Attrib V19    0.15191306378709837
#>     Attrib V2    0.12566794976656334
#>     Attrib V20    -0.04887337139613999
#>     Attrib V21    -0.09068819224889216
#>     Attrib V22    0.01994791694343703
#>     Attrib V23    -0.09493039501601505
#>     Attrib V24    -0.14099328869819888
#>     Attrib V25    0.0033384683660075735
#>     Attrib V26    -0.16134955580178575
#>     Attrib V27    -0.09389110730321358
#>     Attrib V28    -0.15640316664757542
#>     Attrib V29    -0.0857568133158203
#>     Attrib V3    0.08927741434539403
#>     Attrib V30    -0.02144361295121502
#>     Attrib V31    0.23086991093875778
#>     Attrib V32    -0.15765475777718918
#>     Attrib V33    0.059979490716503055
#>     Attrib V34    0.12921497143315563
#>     Attrib V35    0.23401582315673908
#>     Attrib V36    0.30858129169735277
#>     Attrib V37    0.18333920427358044
#>     Attrib V38    0.01994098511090461
#>     Attrib V39    -0.05723053939455571
#>     Attrib V4    -0.027439627224972844
#>     Attrib V40    0.03502178242686028
#>     Attrib V41    -0.038999304660830444
#>     Attrib V42    0.1508252360848889
#>     Attrib V43    -0.017279868562620523
#>     Attrib V44    -0.040319659216513495
#>     Attrib V45    -0.07796596696448962
#>     Attrib V46    -0.10153585922283849
#>     Attrib V47    -0.004300985190115272
#>     Attrib V48    -0.18400429715374325
#>     Attrib V49    -0.22177232977379002
#>     Attrib V5    -0.01572326385090633
#>     Attrib V50    0.24350312180706954
#>     Attrib V51    -0.012025368761114718
#>     Attrib V52    -0.07407575822670522
#>     Attrib V53    0.018827590063377635
#>     Attrib V54    -0.08979411605981286
#>     Attrib V55    0.15530826334039013
#>     Attrib V56    0.057235961983145754
#>     Attrib V57    0.07993369750459905
#>     Attrib V58    -0.07769853251675705
#>     Attrib V59    -0.0429019918460436
#>     Attrib V6    0.16527392721849132
#>     Attrib V60    0.01576747481958391
#>     Attrib V7    0.08758161034038918
#>     Attrib V8    0.10198887523472981
#>     Attrib V9    -0.0491028142809092
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.37687781532115994
#>     Attrib V1    0.7500741997274791
#>     Attrib V10    -0.31644428588821355
#>     Attrib V11    -0.051703901642937616
#>     Attrib V12    -0.06684984855303916
#>     Attrib V13    -0.5581198049292142
#>     Attrib V14    -0.2841102105091832
#>     Attrib V15    0.26499657452547315
#>     Attrib V16    0.28890015349581594
#>     Attrib V17    0.2546299202639967
#>     Attrib V18    0.038643845613434494
#>     Attrib V19    -0.09267480699340996
#>     Attrib V2    -0.11911503363734001
#>     Attrib V20    0.49674464349354364
#>     Attrib V21    0.6739525719362494
#>     Attrib V22    0.152578469886824
#>     Attrib V23    0.15045955975470698
#>     Attrib V24    -0.10370077319969956
#>     Attrib V25    -0.7162309934800565
#>     Attrib V26    -0.440052905807691
#>     Attrib V27    -0.679059565881501
#>     Attrib V28    -0.29037933265051696
#>     Attrib V29    -0.19479684428078436
#>     Attrib V3    0.03739940618067575
#>     Attrib V30    -0.061101837882681684
#>     Attrib V31    -1.3406079836826987
#>     Attrib V32    0.2018054762936368
#>     Attrib V33    0.17295658107055664
#>     Attrib V34    -0.48870823637207705
#>     Attrib V35    -0.6865337194323052
#>     Attrib V36    -0.6815083728553561
#>     Attrib V37    -0.524353610222168
#>     Attrib V38    -0.04003976309009217
#>     Attrib V39    0.2790852274777691
#>     Attrib V4    0.7243898505241605
#>     Attrib V40    0.06196846639781508
#>     Attrib V41    0.3257642494619781
#>     Attrib V42    0.007637091461293545
#>     Attrib V43    0.13855809014641893
#>     Attrib V44    0.21472447614432047
#>     Attrib V45    0.055053709844000494
#>     Attrib V46    -0.026643795922704137
#>     Attrib V47    -0.3715972018698855
#>     Attrib V48    0.31677472714936333
#>     Attrib V49    0.3933868868755059
#>     Attrib V5    0.14958465581977037
#>     Attrib V50    -0.46206817242346343
#>     Attrib V51    0.15871953564914482
#>     Attrib V52    -0.13826286304493093
#>     Attrib V53    0.04451963716140417
#>     Attrib V54    0.5891055454657583
#>     Attrib V55    -0.48669632888916264
#>     Attrib V56    0.2419262291693988
#>     Attrib V57    0.38495069447340213
#>     Attrib V58    0.6728687615972279
#>     Attrib V59    0.6601290787016613
#>     Attrib V6    -0.16236666621149534
#>     Attrib V60    0.49824863778726786
#>     Attrib V7    0.0591203738463255
#>     Attrib V8    0.44459800570932584
#>     Attrib V9    0.17153689737892458
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.2217935199847627
#>     Attrib V1    0.046195724397340716
#>     Attrib V10    -0.8940686881712596
#>     Attrib V11    -0.9913493446701728
#>     Attrib V12    -1.2972139200583477
#>     Attrib V13    -0.4219801125426941
#>     Attrib V14    0.5766875123126531
#>     Attrib V15    0.6664052521077822
#>     Attrib V16    0.6016107006100159
#>     Attrib V17    0.24489786812387065
#>     Attrib V18    -0.03769478525690433
#>     Attrib V19    -0.030081621834767095
#>     Attrib V2    -0.3609568726211923
#>     Attrib V20    -0.04580072376005534
#>     Attrib V21    -0.056347545942267374
#>     Attrib V22    -0.25376010909876
#>     Attrib V23    -2.057518990726375
#>     Attrib V24    -1.1344079842410024
#>     Attrib V25    -0.04594027540643431
#>     Attrib V26    -1.2394431207637782
#>     Attrib V27    -1.0361167334845403
#>     Attrib V28    -2.0731774765699824
#>     Attrib V29    -1.9125496404410918
#>     Attrib V3    0.06622370905025983
#>     Attrib V30    -0.35224929442253905
#>     Attrib V31    1.0106302648606231
#>     Attrib V32    -0.12793972803144282
#>     Attrib V33    0.6884200125179682
#>     Attrib V34    0.16167765814219062
#>     Attrib V35    -0.41903379378440775
#>     Attrib V36    1.2542557042930473
#>     Attrib V37    0.23710313130885016
#>     Attrib V38    1.1436024362935722
#>     Attrib V39    -0.3306586757580727
#>     Attrib V4    -0.8251194547433558
#>     Attrib V40    -0.44551611861042084
#>     Attrib V41    -1.5832669293565829
#>     Attrib V42    0.48695887510528024
#>     Attrib V43    0.2875992525332533
#>     Attrib V44    -0.2154931245818015
#>     Attrib V45    -0.920356034488441
#>     Attrib V46    -1.496947599922617
#>     Attrib V47    -0.8007000955702266
#>     Attrib V48    -0.8665449808096028
#>     Attrib V49    -1.296711987110699
#>     Attrib V5    -1.1975437941776288
#>     Attrib V50    1.3276623555936171
#>     Attrib V51    -1.2949242499638405
#>     Attrib V52    -1.3944269481203628
#>     Attrib V53    -0.4186449102392019
#>     Attrib V54    0.5533420864362677
#>     Attrib V55    0.7218799972973512
#>     Attrib V56    0.7998685692932419
#>     Attrib V57    0.6609859463678454
#>     Attrib V58    -0.6496472614413468
#>     Attrib V59    0.48421754219602214
#>     Attrib V6    -0.5562975053820394
#>     Attrib V60    -0.5338432702885012
#>     Attrib V7    0.46909838032963996
#>     Attrib V8    0.24804814005126494
#>     Attrib V9    -1.0118260728184532
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.1325403817359098
#>     Attrib V1    0.3890231272490886
#>     Attrib V10    -0.2630633710931296
#>     Attrib V11    0.011429607082750542
#>     Attrib V12    0.06725131720296712
#>     Attrib V13    -0.30989575357435806
#>     Attrib V14    -0.07197386480419907
#>     Attrib V15    0.1226948216716929
#>     Attrib V16    0.07344671331307356
#>     Attrib V17    0.1137134070123348
#>     Attrib V18    -0.04456164804468736
#>     Attrib V19    -0.17168182579047558
#>     Attrib V2    -0.01175199199369799
#>     Attrib V20    0.2722159902229115
#>     Attrib V21    0.29798369187793544
#>     Attrib V22    -0.05858970215709875
#>     Attrib V23    -0.11009762827642766
#>     Attrib V24    -0.1474682121661621
#>     Attrib V25    -0.40611503150261613
#>     Attrib V26    -0.4186858545616741
#>     Attrib V27    -0.5135965325684154
#>     Attrib V28    -0.2688195041992557
#>     Attrib V29    -0.1532323258953574
#>     Attrib V3    0.10268867936248234
#>     Attrib V30    -0.15765351934567484
#>     Attrib V31    -0.7558034669562218
#>     Attrib V32    0.14870308069383711
#>     Attrib V33    0.12989948055710465
#>     Attrib V34    -0.24499602827180492
#>     Attrib V35    -0.3146479987388032
#>     Attrib V36    -0.3731702072567172
#>     Attrib V37    -0.22818717714716152
#>     Attrib V38    -0.0057909607144448275
#>     Attrib V39    0.21014545891216982
#>     Attrib V4    0.3978993049702567
#>     Attrib V40    0.03640116606880513
#>     Attrib V41    0.07528140317911312
#>     Attrib V42    -0.1757859615125383
#>     Attrib V43    0.07941497463843007
#>     Attrib V44    0.007870366274605325
#>     Attrib V45    0.017684237910552427
#>     Attrib V46    -0.025134384722566468
#>     Attrib V47    -0.17152721042013405
#>     Attrib V48    0.24198794605220145
#>     Attrib V49    0.24431738481945636
#>     Attrib V5    0.05260582083237321
#>     Attrib V50    -0.2009764193732151
#>     Attrib V51    0.07680528741715344
#>     Attrib V52    -0.05817493131725868
#>     Attrib V53    0.01397112676280928
#>     Attrib V54    0.298109144468829
#>     Attrib V55    -0.1169937739586922
#>     Attrib V56    0.23923225113667676
#>     Attrib V57    0.3295537875688037
#>     Attrib V58    0.37463745061481624
#>     Attrib V59    0.362548475867535
#>     Attrib V6    -0.10743300096001863
#>     Attrib V60    0.3648531045234412
#>     Attrib V7    -0.01595507615000684
#>     Attrib V8    0.16046503343498492
#>     Attrib V9    0.0542904557668904
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.10232025954885499
#>     Attrib V1    0.4102877856772172
#>     Attrib V10    -0.1764521593239621
#>     Attrib V11    -0.038586556968749415
#>     Attrib V12    0.07572991550395151
#>     Attrib V13    -0.24321810572847946
#>     Attrib V14    -0.11061547305399272
#>     Attrib V15    0.10700487979636215
#>     Attrib V16    0.067792030511361
#>     Attrib V17    0.13729945441628422
#>     Attrib V18    -0.030630463863172076
#>     Attrib V19    -0.124946602340221
#>     Attrib V2    0.025610223897341054
#>     Attrib V20    0.21607926331239338
#>     Attrib V21    0.26492825392813785
#>     Attrib V22    -0.09472230895734059
#>     Attrib V23    -0.04415968393771698
#>     Attrib V24    -0.1608080025287157
#>     Attrib V25    -0.3494039796295876
#>     Attrib V26    -0.279627371640459
#>     Attrib V27    -0.44434188941597397
#>     Attrib V28    -0.21212990699153428
#>     Attrib V29    -0.21117874650984936
#>     Attrib V3    0.05028751235557808
#>     Attrib V30    -0.09196947505794695
#>     Attrib V31    -0.6424185652457428
#>     Attrib V32    0.09168037280676661
#>     Attrib V33    0.0864988883180265
#>     Attrib V34    -0.21138733884378694
#>     Attrib V35    -0.21787938635165027
#>     Attrib V36    -0.3009090439192681
#>     Attrib V37    -0.1643763169765346
#>     Attrib V38    -0.017059469758869013
#>     Attrib V39    0.24842080185444018
#>     Attrib V4    0.4129426314245197
#>     Attrib V40    0.06162389912575087
#>     Attrib V41    0.059599347687735844
#>     Attrib V42    -0.11424635680727815
#>     Attrib V43    0.012658886494935602
#>     Attrib V44    -0.004579397217167655
#>     Attrib V45    -0.04579821117326434
#>     Attrib V46    -0.05708282800695832
#>     Attrib V47    -0.21943837445817252
#>     Attrib V48    0.2207201077298098
#>     Attrib V49    0.1971484087188978
#>     Attrib V5    0.03160294991016387
#>     Attrib V50    -0.2071826471518021
#>     Attrib V51    0.03809265875842874
#>     Attrib V52    -0.07294336328274661
#>     Attrib V53    0.0927740724380852
#>     Attrib V54    0.3053524089107544
#>     Attrib V55    -0.17317641169796535
#>     Attrib V56    0.23536484005324665
#>     Attrib V57    0.2687621816804876
#>     Attrib V58    0.37525944180924153
#>     Attrib V59    0.3940346798498041
#>     Attrib V6    -0.11009228423161331
#>     Attrib V60    0.35517989546418016
#>     Attrib V7    -0.06914113551099796
#>     Attrib V8    0.08273929456594861
#>     Attrib V9    0.0199095289473563
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.13609103140580453
#>     Attrib V1    0.5612580982404313
#>     Attrib V10    -0.3563990612282469
#>     Attrib V11    -0.06954217133056587
#>     Attrib V12    -0.0749751640575097
#>     Attrib V13    -0.37175355015414313
#>     Attrib V14    -0.08022953300185358
#>     Attrib V15    0.23469717400235449
#>     Attrib V16    0.22343798030959533
#>     Attrib V17    0.25073710513176467
#>     Attrib V18    0.021426432027934084
#>     Attrib V19    -0.0697418885534619
#>     Attrib V2    0.04053728038197454
#>     Attrib V20    0.4290881008106346
#>     Attrib V21    0.37687721507783284
#>     Attrib V22    0.0059197129853110365
#>     Attrib V23    -0.03890255165782166
#>     Attrib V24    -0.15589870595951041
#>     Attrib V25    -0.5676369499774298
#>     Attrib V26    -0.49611120507773226
#>     Attrib V27    -0.6943875856027759
#>     Attrib V28    -0.4650908575056926
#>     Attrib V29    -0.3849096486703179
#>     Attrib V3    0.0582063096183238
#>     Attrib V30    -0.21068364495826616
#>     Attrib V31    -0.9072942442937912
#>     Attrib V32    0.12520235537485605
#>     Attrib V33    0.1793230495698378
#>     Attrib V34    -0.2955443829745842
#>     Attrib V35    -0.38269608638490604
#>     Attrib V36    -0.407029516365993
#>     Attrib V37    -0.3021451691218922
#>     Attrib V38    0.0820979489632699
#>     Attrib V39    0.21846819602756287
#>     Attrib V4    0.5316963496235274
#>     Attrib V40    0.06051196669431699
#>     Attrib V41    0.05022738680882805
#>     Attrib V42    -0.07925719188631138
#>     Attrib V43    0.1756853870812197
#>     Attrib V44    0.16389935068361067
#>     Attrib V45    -0.09406280901906397
#>     Attrib V46    -0.10250473798596071
#>     Attrib V47    -0.28735984653195445
#>     Attrib V48    0.19336150709114325
#>     Attrib V49    0.2539744807730266
#>     Attrib V5    0.06889544516516742
#>     Attrib V50    -0.24890963835136742
#>     Attrib V51    0.006372615866760563
#>     Attrib V52    -0.2334746198117038
#>     Attrib V53    0.09772289924334462
#>     Attrib V54    0.5493311095005423
#>     Attrib V55    -0.18380452027241234
#>     Attrib V56    0.2946020771272663
#>     Attrib V57    0.39033732222563494
#>     Attrib V58    0.4441202836002732
#>     Attrib V59    0.5408746291726827
#>     Attrib V6    -0.17862207781760223
#>     Attrib V60    0.42651700581475055
#>     Attrib V7    0.04615239609739291
#>     Attrib V8    0.25369900580248317
#>     Attrib V9    0.05220204982692851
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.023137531786465344
#>     Attrib V1    0.31906932479731226
#>     Attrib V10    -0.23608280451855954
#>     Attrib V11    -0.04415788718444173
#>     Attrib V12    0.006802944786577348
#>     Attrib V13    -0.2765883851882762
#>     Attrib V14    -0.03447451588842204
#>     Attrib V15    0.09559125572654187
#>     Attrib V16    0.10920654979512429
#>     Attrib V17    0.09587315971387073
#>     Attrib V18    0.058499928118465265
#>     Attrib V19    -0.09907992923227918
#>     Attrib V2    -0.0011417594327884969
#>     Attrib V20    0.22809708069918352
#>     Attrib V21    0.21600762496501075
#>     Attrib V22    -0.10592177544888243
#>     Attrib V23    -0.03773523508513694
#>     Attrib V24    -0.15644963411858331
#>     Attrib V25    -0.3739205061996894
#>     Attrib V26    -0.28882895693807265
#>     Attrib V27    -0.3668962365933973
#>     Attrib V28    -0.1426431821265683
#>     Attrib V29    -0.1309965087586755
#>     Attrib V3    0.105785129315908
#>     Attrib V30    -0.08074838527408597
#>     Attrib V31    -0.6279143153747748
#>     Attrib V32    0.06264423828787992
#>     Attrib V33    0.10631729247968365
#>     Attrib V34    -0.15277361085832944
#>     Attrib V35    -0.16445431007509836
#>     Attrib V36    -0.1546822769424356
#>     Attrib V37    -0.12064704677600672
#>     Attrib V38    -0.006555360182376102
#>     Attrib V39    0.19527519182810507
#>     Attrib V4    0.3159978532710702
#>     Attrib V40    5.891746939409232E-6
#>     Attrib V41    -0.037004948659684886
#>     Attrib V42    -0.11315381952069428
#>     Attrib V43    -0.011021289680086527
#>     Attrib V44    0.09381699830229112
#>     Attrib V45    0.03122321404505858
#>     Attrib V46    -0.014669609928831113
#>     Attrib V47    -0.15425762414696367
#>     Attrib V48    0.11633447443276919
#>     Attrib V49    0.210345835732411
#>     Attrib V5    0.08546980392806017
#>     Attrib V50    -0.17680917455705977
#>     Attrib V51    0.05080867389090268
#>     Attrib V52    -0.0780571002011933
#>     Attrib V53    0.07178153835977671
#>     Attrib V54    0.1913834522919948
#>     Attrib V55    -0.14579498725327372
#>     Attrib V56    0.17235303765053162
#>     Attrib V57    0.2473432375196875
#>     Attrib V58    0.35381861228706596
#>     Attrib V59    0.26508484248364367
#>     Attrib V6    -0.0759164827722924
#>     Attrib V60    0.2761194565935946
#>     Attrib V7    -0.033747766016855536
#>     Attrib V8    0.12177827403390634
#>     Attrib V9    0.07068783188105293
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
