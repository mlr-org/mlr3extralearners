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
#>     Threshold    -0.16786985531831525
#>     Node 2    2.07842429704579
#>     Node 3    1.4753722023584022
#>     Node 4    0.5300089472348225
#>     Node 5    -1.916177847931349
#>     Node 6    1.594933820260336
#>     Node 7    3.388467321569235
#>     Node 8    1.089255963745559
#>     Node 9    2.9813045215298795
#>     Node 10    -2.2396623518648715
#>     Node 11    1.8052038645851587
#>     Node 12    1.6814569553820224
#>     Node 13    0.9720722268395154
#>     Node 14    1.905162833829302
#>     Node 15    -2.977882537029416
#>     Node 16    0.2882566258808982
#>     Node 17    0.5483516467308891
#>     Node 18    -0.9326116846794172
#>     Node 19    2.5867998303541677
#>     Node 20    1.9658840922872294
#>     Node 21    -2.686336277403733
#>     Node 22    1.4296916675292584
#>     Node 23    1.26453197398128
#>     Node 24    -1.3503681638757519
#>     Node 25    3.0008985235173395
#>     Node 26    -0.20947092566761902
#>     Node 27    1.7345122315249268
#>     Node 28    -2.2236460663966704
#>     Node 29    1.076193660928754
#>     Node 30    -0.5614132946707321
#>     Node 31    1.5426997119740122
#>     Node 32    0.6068921536581613
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.19382183437063738
#>     Node 2    -2.129013363062723
#>     Node 3    -1.4584628178732002
#>     Node 4    -0.48423003685761506
#>     Node 5    1.9160692686259857
#>     Node 6    -1.5687626127105667
#>     Node 7    -3.395259540601804
#>     Node 8    -1.1164382513969096
#>     Node 9    -2.9882708694019664
#>     Node 10    2.162270479335711
#>     Node 11    -1.7677195694553245
#>     Node 12    -1.7538486959930717
#>     Node 13    -0.9136884642120254
#>     Node 14    -1.8428554678730156
#>     Node 15    2.959642086628741
#>     Node 16    -0.3000413262191345
#>     Node 17    -0.5094656304503266
#>     Node 18    0.9750667314452904
#>     Node 19    -2.598318175359616
#>     Node 20    -1.9528293648067692
#>     Node 21    2.7392424420378223
#>     Node 22    -1.4776019523850346
#>     Node 23    -1.3059421734611731
#>     Node 24    1.330984568845442
#>     Node 25    -2.9944928814205127
#>     Node 26    0.13024297382276062
#>     Node 27    -1.7795373622357027
#>     Node 28    2.1983258121385485
#>     Node 29    -1.1051107321665539
#>     Node 30    0.6344144574491298
#>     Node 31    -1.4833249692936221
#>     Node 32    -0.6205937493002215
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.2590666863353786
#>     Attrib V1    0.2748269012255571
#>     Attrib V10    -0.16026679714220984
#>     Attrib V11    -0.22100476923182497
#>     Attrib V12    -0.24755731326794012
#>     Attrib V13    -0.2944973703017708
#>     Attrib V14    0.22249083209841472
#>     Attrib V15    0.13635126283570317
#>     Attrib V16    0.134358677960072
#>     Attrib V17    -0.09593504679454812
#>     Attrib V18    0.31523875721291866
#>     Attrib V19    0.18983770868524083
#>     Attrib V2    -0.20088090827002797
#>     Attrib V20    0.6456966279311861
#>     Attrib V21    0.48788128944873227
#>     Attrib V22    -0.029001963156657082
#>     Attrib V23    0.15547065357829867
#>     Attrib V24    -0.20081270412087748
#>     Attrib V25    -1.1695491106051192
#>     Attrib V26    -0.9829800673164213
#>     Attrib V27    -0.02338234196264399
#>     Attrib V28    0.07227070491973193
#>     Attrib V29    -0.2941152252990422
#>     Attrib V3    -0.2923868420751651
#>     Attrib V30    0.27093053406721745
#>     Attrib V31    -1.4330078535219637
#>     Attrib V32    -0.23425792378597954
#>     Attrib V33    0.6392901608908587
#>     Attrib V34    -0.15396400053185863
#>     Attrib V35    -0.14129221916879506
#>     Attrib V36    -0.5524285812001407
#>     Attrib V37    -0.959002119890107
#>     Attrib V38    0.43725828514802045
#>     Attrib V39    0.21999205183285178
#>     Attrib V4    1.2032124193321971
#>     Attrib V40    -0.13760331778902374
#>     Attrib V41    0.10533138651665863
#>     Attrib V42    -0.005821417825360904
#>     Attrib V43    0.42740322008844733
#>     Attrib V44    0.3901755094302058
#>     Attrib V45    0.21387874564225637
#>     Attrib V46    -0.26465003255594466
#>     Attrib V47    -0.5028611707945824
#>     Attrib V48    0.5927456893757024
#>     Attrib V49    0.4242766942608559
#>     Attrib V5    -0.052102576996971316
#>     Attrib V50    -0.47959295193982954
#>     Attrib V51    0.09035322769044235
#>     Attrib V52    -0.42581884586032215
#>     Attrib V53    -0.03883429085533843
#>     Attrib V54    0.8335977778241008
#>     Attrib V55    0.08755949689623321
#>     Attrib V56    0.11006724357307471
#>     Attrib V57    0.04743973423417642
#>     Attrib V58    0.22916892547301557
#>     Attrib V59    0.6777469649117523
#>     Attrib V6    -0.1801597547356925
#>     Attrib V60    0.439188859290639
#>     Attrib V7    -0.020300994321221098
#>     Attrib V8    0.030588861574568683
#>     Attrib V9    0.2494798613845477
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.2849835986920037
#>     Attrib V1    0.031162794709924987
#>     Attrib V10    0.1315440548850021
#>     Attrib V11    0.14964832419204807
#>     Attrib V12    0.23189993613295845
#>     Attrib V13    0.05791270715326352
#>     Attrib V14    -0.09345614896714166
#>     Attrib V15    -0.079532483316109
#>     Attrib V16    -0.16604731162886416
#>     Attrib V17    -0.36165888804858826
#>     Attrib V18    0.019543669181343832
#>     Attrib V19    -0.16277592561120424
#>     Attrib V2    -0.13939583829882857
#>     Attrib V20    -0.03586760824012292
#>     Attrib V21    -0.04346416806756627
#>     Attrib V22    -0.07408843154968375
#>     Attrib V23    0.2827106725807085
#>     Attrib V24    0.20631394009637238
#>     Attrib V25    -0.33409931870181214
#>     Attrib V26    -0.23593965380442486
#>     Attrib V27    0.2347103855970358
#>     Attrib V28    0.028332758242320476
#>     Attrib V29    -0.4869612259024982
#>     Attrib V3    -0.43868660001263865
#>     Attrib V30    0.2517610440079628
#>     Attrib V31    -0.44697314489155315
#>     Attrib V32    0.2239438866722576
#>     Attrib V33    0.534642161656314
#>     Attrib V34    -0.1697424485602977
#>     Attrib V35    -0.2327191117237826
#>     Attrib V36    -0.7923864524983968
#>     Attrib V37    -1.0344295930985024
#>     Attrib V38    -0.27594642682696957
#>     Attrib V39    -0.2258545794177584
#>     Attrib V4    0.77228362724142
#>     Attrib V40    -0.20737961166678162
#>     Attrib V41    0.21591977200734735
#>     Attrib V42    0.017822160361596555
#>     Attrib V43    0.19494926366572204
#>     Attrib V44    0.13245435806535918
#>     Attrib V45    0.1397618865066859
#>     Attrib V46    -0.05440974648282096
#>     Attrib V47    -0.11064530020120572
#>     Attrib V48    0.56486574028926
#>     Attrib V49    0.32208674110401386
#>     Attrib V5    -0.020956949316376733
#>     Attrib V50    -0.4774258405859739
#>     Attrib V51    0.26357300558717967
#>     Attrib V52    -0.07767929932447587
#>     Attrib V53    -0.07914657577842305
#>     Attrib V54    0.4892111225457885
#>     Attrib V55    0.15664021066300446
#>     Attrib V56    0.043056744128150415
#>     Attrib V57    0.0849713180994973
#>     Attrib V58    0.20138697281991969
#>     Attrib V59    0.38571190994902754
#>     Attrib V6    0.08310671881338622
#>     Attrib V60    0.20307366925730927
#>     Attrib V7    -0.02300593311717962
#>     Attrib V8    -0.02036630646515556
#>     Attrib V9    0.26980032307641244
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.12404463024185244
#>     Attrib V1    0.10272368187356529
#>     Attrib V10    -0.057261743691373525
#>     Attrib V11    -0.041709559749741276
#>     Attrib V12    0.009918950646748794
#>     Attrib V13    -0.01383450059669007
#>     Attrib V14    0.11587049132164537
#>     Attrib V15    0.10395736003520747
#>     Attrib V16    0.009866534227102364
#>     Attrib V17    -0.04977193223779431
#>     Attrib V18    -0.0298893523103779
#>     Attrib V19    -0.1077655807167685
#>     Attrib V2    0.0010856206561242142
#>     Attrib V20    0.012366361821180682
#>     Attrib V21    -0.001346643583961599
#>     Attrib V22    -0.1734763413865132
#>     Attrib V23    -0.07387592131500424
#>     Attrib V24    -0.11969434853441147
#>     Attrib V25    -0.29789434665570813
#>     Attrib V26    -0.2738678668429314
#>     Attrib V27    -0.1147820997554404
#>     Attrib V28    -0.0392505908847749
#>     Attrib V29    -0.1451508766841766
#>     Attrib V3    0.040460196390041336
#>     Attrib V30    -0.03126229147333521
#>     Attrib V31    -0.24618045502913913
#>     Attrib V32    0.008106055518257611
#>     Attrib V33    0.20503013318212204
#>     Attrib V34    0.03260962474078545
#>     Attrib V35    -0.002740923242290165
#>     Attrib V36    -0.13247186011900686
#>     Attrib V37    -0.20864256641579465
#>     Attrib V38    0.01733480321424461
#>     Attrib V39    0.06412018624426101
#>     Attrib V4    0.28920789717405637
#>     Attrib V40    -0.0020702606029313958
#>     Attrib V41    -0.00877322340202737
#>     Attrib V42    -0.017776377767132763
#>     Attrib V43    0.00799157119145562
#>     Attrib V44    0.01584989538489887
#>     Attrib V45    0.07724436198653806
#>     Attrib V46    -0.02984485002867088
#>     Attrib V47    -0.06806525358965437
#>     Attrib V48    0.18538859354152257
#>     Attrib V49    0.1495050501987476
#>     Attrib V5    0.07528602170750276
#>     Attrib V50    0.00608212929291748
#>     Attrib V51    0.1302721804392622
#>     Attrib V52    0.005290531029195129
#>     Attrib V53    0.06957199914600913
#>     Attrib V54    0.20401935218293665
#>     Attrib V55    0.1570621080401368
#>     Attrib V56    0.0501125250266817
#>     Attrib V57    0.2466107411377762
#>     Attrib V58    0.10470162149277927
#>     Attrib V59    0.21268879495459278
#>     Attrib V6    -0.06370637349540847
#>     Attrib V60    0.1661232917368191
#>     Attrib V7    -0.005222784948691637
#>     Attrib V8    -0.0016112136379485798
#>     Attrib V9    0.08774146392276952
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.4637646313316058
#>     Attrib V1    -0.06111965124227421
#>     Attrib V10    -0.2931747515362496
#>     Attrib V11    -0.3875074566328935
#>     Attrib V12    -0.3641513069708472
#>     Attrib V13    0.10413207271817851
#>     Attrib V14    0.5335875942259383
#>     Attrib V15    0.4756092217778005
#>     Attrib V16    0.29599259918564624
#>     Attrib V17    0.3562000951277204
#>     Attrib V18    -0.21393219384806256
#>     Attrib V19    0.1040491034384009
#>     Attrib V2    0.24573943524144215
#>     Attrib V20    -0.30833706895011803
#>     Attrib V21    -0.2041180884527258
#>     Attrib V22    -0.18200943616458043
#>     Attrib V23    -0.6146231458457605
#>     Attrib V24    -0.23001701087299392
#>     Attrib V25    0.7423990417743286
#>     Attrib V26    0.4137108671313493
#>     Attrib V27    -0.43878620832075016
#>     Attrib V28    -0.2886280775004433
#>     Attrib V29    0.5145121625105837
#>     Attrib V3    0.6766504981566813
#>     Attrib V30    -0.48704447168069565
#>     Attrib V31    1.0815860760602058
#>     Attrib V32    0.2043722702025066
#>     Attrib V33    -0.5286682928941127
#>     Attrib V34    0.056272530868789
#>     Attrib V35    -0.13035554272766933
#>     Attrib V36    0.5771534822475253
#>     Attrib V37    0.8021010929269942
#>     Attrib V38    -0.37530413081092684
#>     Attrib V39    -0.055723381237021634
#>     Attrib V4    -1.1205427020857512
#>     Attrib V40    0.2268733783246429
#>     Attrib V41    -0.3403180726732999
#>     Attrib V42    0.03698190803251051
#>     Attrib V43    -0.4936390528812229
#>     Attrib V44    -0.41696889023318184
#>     Attrib V45    -0.5848563038019328
#>     Attrib V46    -0.13236265341607106
#>     Attrib V47    0.13714913179142887
#>     Attrib V48    -0.7353689616723135
#>     Attrib V49    -0.46772734497518675
#>     Attrib V5    0.2556613565546138
#>     Attrib V50    0.7957367215113154
#>     Attrib V51    -0.40287499177482283
#>     Attrib V52    0.1962347782082554
#>     Attrib V53    0.18829937290182341
#>     Attrib V54    -0.4768264958654822
#>     Attrib V55    0.2791567933539296
#>     Attrib V56    -0.04869843057396334
#>     Attrib V57    0.32139410055501294
#>     Attrib V58    0.04282209945767183
#>     Attrib V59    -0.19789281509026604
#>     Attrib V6    0.10851091927123648
#>     Attrib V60    -0.1476086540890247
#>     Attrib V7    0.2788647686651114
#>     Attrib V8    0.1623818255766999
#>     Attrib V9    -0.6399401576574276
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.2633323866887569
#>     Attrib V1    0.14819296483098832
#>     Attrib V10    -0.048664379675706346
#>     Attrib V11    -0.03275802116529908
#>     Attrib V12    0.046127628891886194
#>     Attrib V13    -0.1784112364525333
#>     Attrib V14    -0.060401310561317034
#>     Attrib V15    -0.06888375487044313
#>     Attrib V16    0.021659565258815575
#>     Attrib V17    -0.19978202358982483
#>     Attrib V18    0.19499884728905192
#>     Attrib V19    -0.06096848484461917
#>     Attrib V2    -0.24985004566475966
#>     Attrib V20    0.2141757491616469
#>     Attrib V21    0.18956331614049637
#>     Attrib V22    -0.11142497054930574
#>     Attrib V23    0.17570324935293194
#>     Attrib V24    0.13678418325660935
#>     Attrib V25    -0.48648834997558404
#>     Attrib V26    -0.5376856884505479
#>     Attrib V27    6.650295352003895E-4
#>     Attrib V28    -0.2395132733568915
#>     Attrib V29    -0.6507399019853753
#>     Attrib V3    -0.4037232656320668
#>     Attrib V30    0.1489702398226047
#>     Attrib V31    -0.7455300460182296
#>     Attrib V32    0.11719068285832503
#>     Attrib V33    0.6857003292817746
#>     Attrib V34    -0.009517701396623637
#>     Attrib V35    -0.09542674156065319
#>     Attrib V36    -0.6643583670380514
#>     Attrib V37    -0.9954330779012637
#>     Attrib V38    -2.8510035707914776E-4
#>     Attrib V39    -0.03710625469250415
#>     Attrib V4    0.8554291689349681
#>     Attrib V40    -0.1582268884635784
#>     Attrib V41    0.16690422931841783
#>     Attrib V42    0.010897390147639748
#>     Attrib V43    0.27404799993297374
#>     Attrib V44    0.17448127221151447
#>     Attrib V45    0.13085156264418749
#>     Attrib V46    -0.17815699803811724
#>     Attrib V47    -0.31862771585604427
#>     Attrib V48    0.5220452808577211
#>     Attrib V49    0.2906448817604067
#>     Attrib V5    -0.07255880692963339
#>     Attrib V50    -0.4623135426668774
#>     Attrib V51    0.13458702811309414
#>     Attrib V52    -0.38523028042406304
#>     Attrib V53    -0.06537767380506511
#>     Attrib V54    0.5944684688306302
#>     Attrib V55    0.03032125988098846
#>     Attrib V56    0.08603680664884004
#>     Attrib V57    0.06844925700666096
#>     Attrib V58    0.16284814163990022
#>     Attrib V59    0.47472701443787835
#>     Attrib V6    0.02591156191376449
#>     Attrib V60    0.33390693859987824
#>     Attrib V7    0.04156418146624872
#>     Attrib V8    0.027379973393956057
#>     Attrib V9    0.3482171849703987
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.15100609660534006
#>     Attrib V1    0.7562087179888869
#>     Attrib V10    0.9535838755891812
#>     Attrib V11    1.1078146358079175
#>     Attrib V12    1.0163755467063116
#>     Attrib V13    0.5387172535737783
#>     Attrib V14    -0.6224849413797228
#>     Attrib V15    -0.6285327102058421
#>     Attrib V16    -0.6300590837346083
#>     Attrib V17    -0.7541168823851401
#>     Attrib V18    0.021107642956854276
#>     Attrib V19    -0.4118948324632408
#>     Attrib V2    0.6694664374410908
#>     Attrib V20    0.06443569795259498
#>     Attrib V21    0.2747321851830421
#>     Attrib V22    0.6789228661650119
#>     Attrib V23    1.1556526491926953
#>     Attrib V24    0.25508497204197983
#>     Attrib V25    -0.292838934764982
#>     Attrib V26    0.9566605557844362
#>     Attrib V27    1.5148693758601175
#>     Attrib V28    1.6171095579166406
#>     Attrib V29    1.1544365888293313
#>     Attrib V3    -0.3969778689633972
#>     Attrib V30    0.8613573370531433
#>     Attrib V31    -0.6796044886330551
#>     Attrib V32    -0.2643497751980797
#>     Attrib V33    -0.18537061741406688
#>     Attrib V34    -0.5656921097724052
#>     Attrib V35    -0.033591470772459095
#>     Attrib V36    -0.7258332723770733
#>     Attrib V37    -0.29107154549378866
#>     Attrib V38    -0.0573647669181809
#>     Attrib V39    -0.40007551186855783
#>     Attrib V4    1.04635295773462
#>     Attrib V40    -0.28307475243958774
#>     Attrib V41    0.9270942663876462
#>     Attrib V42    -0.021233381451466624
#>     Attrib V43    0.004463731770004266
#>     Attrib V44    0.45389827638816016
#>     Attrib V45    1.119917577307116
#>     Attrib V46    1.1985328470949346
#>     Attrib V47    0.6746096392381381
#>     Attrib V48    0.761848725412911
#>     Attrib V49    0.7205466833245197
#>     Attrib V5    0.23970135888782299
#>     Attrib V50    -0.27822446707029835
#>     Attrib V51    1.1904044601159214
#>     Attrib V52    0.8356193683494505
#>     Attrib V53    0.3545454968956094
#>     Attrib V54    0.007107508136410397
#>     Attrib V55    -0.5349205459739856
#>     Attrib V56    -0.5375097660659655
#>     Attrib V57    -0.2859591626050804
#>     Attrib V58    -0.33799627536218385
#>     Attrib V59    -0.04698948845023403
#>     Attrib V6    0.42664447871990374
#>     Attrib V60    0.11862469003868904
#>     Attrib V7    -0.3041888408775208
#>     Attrib V8    -0.42019180361683145
#>     Attrib V9    0.893879965597532
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.18204430835114227
#>     Attrib V1    0.12611287292598394
#>     Attrib V10    -0.03696772250984367
#>     Attrib V11    -3.0371762236191955E-4
#>     Attrib V12    0.003292167154139323
#>     Attrib V13    -0.09485033271424001
#>     Attrib V14    -0.035501055522329114
#>     Attrib V15    -0.010057681637256545
#>     Attrib V16    0.0221556903763084
#>     Attrib V17    -0.1606967597090317
#>     Attrib V18    0.01612538308541252
#>     Attrib V19    -0.08752852875252636
#>     Attrib V2    -0.11698001296731192
#>     Attrib V20    0.07566734420984716
#>     Attrib V21    0.07012181385922021
#>     Attrib V22    -0.17038373135295568
#>     Attrib V23    -0.010968201087760632
#>     Attrib V24    -0.0279169628256207
#>     Attrib V25    -0.45831858430728767
#>     Attrib V26    -0.40647190986552323
#>     Attrib V27    -0.031830888917949635
#>     Attrib V28    -0.0923505110179867
#>     Attrib V29    -0.3360906383895081
#>     Attrib V3    -0.21950888479533032
#>     Attrib V30    0.08840467708648975
#>     Attrib V31    -0.5260051358228096
#>     Attrib V32    0.04341762734245116
#>     Attrib V33    0.4550866496328503
#>     Attrib V34    0.017810679522422004
#>     Attrib V35    -0.06359626391763912
#>     Attrib V36    -0.35991805664195586
#>     Attrib V37    -0.6134717194768837
#>     Attrib V38    0.06898670514512337
#>     Attrib V39    8.261459828301608E-4
#>     Attrib V4    0.6264746141637749
#>     Attrib V40    -0.11220232013805122
#>     Attrib V41    0.017107847652049556
#>     Attrib V42    -0.1654309283280186
#>     Attrib V43    0.07727909637164841
#>     Attrib V44    0.08597937401321071
#>     Attrib V45    0.10459529746160841
#>     Attrib V46    -0.030809496716417393
#>     Attrib V47    -0.12478104655504395
#>     Attrib V48    0.4635904327616304
#>     Attrib V49    0.25819442558978073
#>     Attrib V5    -0.05235424740099701
#>     Attrib V50    -0.2686766729297931
#>     Attrib V51    0.09246169320217801
#>     Attrib V52    -0.17698711120250968
#>     Attrib V53    -0.030691623892258938
#>     Attrib V54    0.40764788370975774
#>     Attrib V55    0.0936240585283434
#>     Attrib V56    -0.011271919387320257
#>     Attrib V57    0.2560686824050338
#>     Attrib V58    0.08959282708068456
#>     Attrib V59    0.3388478979251161
#>     Attrib V6    -0.05488539556897156
#>     Attrib V60    0.25153846904453603
#>     Attrib V7    0.0030151752041720063
#>     Attrib V8    -0.05368385500327102
#>     Attrib V9    0.15948923066821227
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.01502785796898157
#>     Attrib V1    0.32968788692357837
#>     Attrib V10    1.1745006036262
#>     Attrib V11    1.164347941822757
#>     Attrib V12    1.1629223301235858
#>     Attrib V13    0.5381740370886237
#>     Attrib V14    -0.9001164449773483
#>     Attrib V15    -0.9109296638749762
#>     Attrib V16    -0.693043542617106
#>     Attrib V17    -0.6140537561863767
#>     Attrib V18    0.19503540359256546
#>     Attrib V19    -0.44562312110204155
#>     Attrib V2    0.18736564936118325
#>     Attrib V20    -0.1636331824420114
#>     Attrib V21    0.10691219461808016
#>     Attrib V22    0.6624314524551052
#>     Attrib V23    1.2353991634757153
#>     Attrib V24    0.6144303721711754
#>     Attrib V25    0.2384589725713335
#>     Attrib V26    0.8743776224555918
#>     Attrib V27    1.1788847972081402
#>     Attrib V28    0.8628649176002813
#>     Attrib V29    -0.11492638026985787
#>     Attrib V3    -0.6615648227119373
#>     Attrib V30    0.34485522444249084
#>     Attrib V31    -0.5717386003889453
#>     Attrib V32    0.012515417205626378
#>     Attrib V33    0.1381856124311784
#>     Attrib V34    -0.1438973824741155
#>     Attrib V35    0.2663387954693065
#>     Attrib V36    -0.5512379365680088
#>     Attrib V37    -0.45509608935387263
#>     Attrib V38    -0.11742667779565118
#>     Attrib V39    -0.34699868398769473
#>     Attrib V4    0.7606143308846014
#>     Attrib V40    -0.2162701504271523
#>     Attrib V41    0.8226394299537491
#>     Attrib V42    -0.18180809742188014
#>     Attrib V43    0.15754043971023848
#>     Attrib V44    0.4817663734161518
#>     Attrib V45    0.9897538336534175
#>     Attrib V46    0.9723122216898769
#>     Attrib V47    0.646711017018792
#>     Attrib V48    0.8970707473721368
#>     Attrib V49    0.6944623782824172
#>     Attrib V5    0.04969704646850517
#>     Attrib V50    -0.3831933619265656
#>     Attrib V51    1.11460360290922
#>     Attrib V52    0.6250590928172425
#>     Attrib V53    0.1860865285781522
#>     Attrib V54    -0.013500353295922802
#>     Attrib V55    -0.4679205704246033
#>     Attrib V56    -0.5292444589519378
#>     Attrib V57    -0.420398420000892
#>     Attrib V58    -0.31285340874019807
#>     Attrib V59    -0.23743660693724752
#>     Attrib V6    0.4161416176588255
#>     Attrib V60    -0.0012633721649507974
#>     Attrib V7    -0.15781648724104702
#>     Attrib V8    -0.3512933012916041
#>     Attrib V9    1.0727264522981508
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.5564356447147266
#>     Attrib V1    -0.09442917081884764
#>     Attrib V10    -0.45413933520548383
#>     Attrib V11    -0.5477006397651593
#>     Attrib V12    -0.40352131493624865
#>     Attrib V13    0.11489141411693196
#>     Attrib V14    0.6826560523859981
#>     Attrib V15    0.5020646430181825
#>     Attrib V16    0.4209345984717909
#>     Attrib V17    0.3792776375355916
#>     Attrib V18    -0.2130758832950513
#>     Attrib V19    0.1348721869938935
#>     Attrib V2    0.18251658217789635
#>     Attrib V20    -0.33109147910209635
#>     Attrib V21    -0.23545542304509479
#>     Attrib V22    -0.287770642753702
#>     Attrib V23    -0.8545992409837576
#>     Attrib V24    -0.29879749789670995
#>     Attrib V25    0.7729658184506623
#>     Attrib V26    0.4120378943830889
#>     Attrib V27    -0.5730414147292238
#>     Attrib V28    -0.40136601976725456
#>     Attrib V29    0.4558638683300949
#>     Attrib V3    0.7354166481917588
#>     Attrib V30    -0.6139579953766715
#>     Attrib V31    1.208328388297787
#>     Attrib V32    0.125414893186894
#>     Attrib V33    -0.5545913073955671
#>     Attrib V34    0.14121883994896714
#>     Attrib V35    -0.16267161260136528
#>     Attrib V36    0.6526651328961077
#>     Attrib V37    0.9006808938666856
#>     Attrib V38    -0.3666068221903388
#>     Attrib V39    -0.016017133166354187
#>     Attrib V4    -1.289329004242722
#>     Attrib V40    0.33756871343591727
#>     Attrib V41    -0.34155478345237594
#>     Attrib V42    0.006887412341148283
#>     Attrib V43    -0.5786091913887726
#>     Attrib V44    -0.5015739671889916
#>     Attrib V45    -0.6156029184676817
#>     Attrib V46    -0.11381500991432793
#>     Attrib V47    0.1185384498621261
#>     Attrib V48    -0.8670815135218506
#>     Attrib V49    -0.5345806456745369
#>     Attrib V5    0.2255953275336878
#>     Attrib V50    0.9114627160859107
#>     Attrib V51    -0.5832495679827236
#>     Attrib V52    0.11732887975177916
#>     Attrib V53    0.2614814432652924
#>     Attrib V54    -0.5286819902543999
#>     Attrib V55    0.3587483872565718
#>     Attrib V56    -0.15815516794765608
#>     Attrib V57    0.49289514005904145
#>     Attrib V58    0.08862842602608931
#>     Attrib V59    -0.22388920583811756
#>     Attrib V6    0.06659038129334988
#>     Attrib V60    -0.18756480719048807
#>     Attrib V7    0.31716347810812295
#>     Attrib V8    0.20378938169445565
#>     Attrib V9    -0.7739112147904779
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.12995837221162249
#>     Attrib V1    0.21581531810291735
#>     Attrib V10    -0.24752877571706186
#>     Attrib V11    -0.2695978065969276
#>     Attrib V12    -0.23360943188075706
#>     Attrib V13    -0.3276233318363005
#>     Attrib V14    0.2102900916685535
#>     Attrib V15    0.22342895159999523
#>     Attrib V16    0.2418714386134204
#>     Attrib V17    0.07660990378089445
#>     Attrib V18    0.23955218666815317
#>     Attrib V19    0.13790601248162962
#>     Attrib V2    -0.19951110732059243
#>     Attrib V20    0.5097093270261414
#>     Attrib V21    0.30077760770397566
#>     Attrib V22    -0.14965801919544774
#>     Attrib V23    -0.015514528045939259
#>     Attrib V24    -0.15908014338051035
#>     Attrib V25    -0.850142736713938
#>     Attrib V26    -0.9268829731224054
#>     Attrib V27    -0.276782178895263
#>     Attrib V28    -0.2745067905917513
#>     Attrib V29    -0.545584091736701
#>     Attrib V3    -0.24209421303385828
#>     Attrib V30    0.004028264813945356
#>     Attrib V31    -1.05540784684777
#>     Attrib V32    -0.19199421721279883
#>     Attrib V33    0.527591101461281
#>     Attrib V34    0.03173951860009201
#>     Attrib V35    -0.024109425849488567
#>     Attrib V36    -0.3831661939781965
#>     Attrib V37    -0.7811486303251393
#>     Attrib V38    0.3152701352854839
#>     Attrib V39    0.19527109075052104
#>     Attrib V4    0.8545584760860554
#>     Attrib V40    -0.06991415971643009
#>     Attrib V41    -0.06626369515416562
#>     Attrib V42    -0.0889345236709955
#>     Attrib V43    0.27542502228846294
#>     Attrib V44    0.24368188406717017
#>     Attrib V45    0.1088342443583556
#>     Attrib V46    -0.2513465545923196
#>     Attrib V47    -0.37612945359422106
#>     Attrib V48    0.45297147299824614
#>     Attrib V49    0.2928665278435847
#>     Attrib V5    0.0029623557005521253
#>     Attrib V50    -0.2608510707770838
#>     Attrib V51    0.09091511411759504
#>     Attrib V52    -0.4513164234228702
#>     Attrib V53    -3.688712964879254E-4
#>     Attrib V54    0.8276093673317242
#>     Attrib V55    0.25590826229765706
#>     Attrib V56    0.1935075403721097
#>     Attrib V57    0.23835214027907767
#>     Attrib V58    0.31004612007370086
#>     Attrib V59    0.5725844134589523
#>     Attrib V6    -0.11408605708734969
#>     Attrib V60    0.42369043045103544
#>     Attrib V7    -0.0019380084383483645
#>     Attrib V8    0.10880022557572971
#>     Attrib V9    0.16272228405845438
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.47424217410763225
#>     Attrib V1    0.024344736122654732
#>     Attrib V10    0.055000577026208926
#>     Attrib V11    0.2153671982611114
#>     Attrib V12    0.18230756958658675
#>     Attrib V13    -0.11278479697369764
#>     Attrib V14    -0.27829077898743904
#>     Attrib V15    -0.27426949430361025
#>     Attrib V16    -0.16267685651236846
#>     Attrib V17    -0.3318910211477233
#>     Attrib V18    0.15925840755070378
#>     Attrib V19    -0.10172937966671723
#>     Attrib V2    -0.17156265930618883
#>     Attrib V20    0.1483805844698668
#>     Attrib V21    0.09584453499693187
#>     Attrib V22    -0.011208157832640408
#>     Attrib V23    0.4311234207526344
#>     Attrib V24    0.14265225731031564
#>     Attrib V25    -0.6642690589931155
#>     Attrib V26    -0.4672664533664815
#>     Attrib V27    0.3735921707347205
#>     Attrib V28    0.18952379817087422
#>     Attrib V29    -0.4375758176258358
#>     Attrib V3    -0.6301224433426253
#>     Attrib V30    0.31929845829617237
#>     Attrib V31    -0.9252743260915784
#>     Attrib V32    -0.015622336627499232
#>     Attrib V33    0.6510478279377097
#>     Attrib V34    -0.06567013071096339
#>     Attrib V35    -0.010762641926105272
#>     Attrib V36    -0.6924577968685801
#>     Attrib V37    -0.9810569341518346
#>     Attrib V38    0.07437406686177853
#>     Attrib V39    -0.16283820368919855
#>     Attrib V4    1.0197035467842916
#>     Attrib V40    -0.18475453485811064
#>     Attrib V41    0.2532415611603649
#>     Attrib V42    -0.08380674269094476
#>     Attrib V43    0.3678292880918236
#>     Attrib V44    0.23624011443280288
#>     Attrib V45    0.3356453398269131
#>     Attrib V46    0.018178464223569443
#>     Attrib V47    -0.2019995977669174
#>     Attrib V48    0.7554957899629315
#>     Attrib V49    0.3821959928666019
#>     Attrib V5    -0.14464710275077014
#>     Attrib V50    -0.6747559936092343
#>     Attrib V51    0.30258559267013385
#>     Attrib V52    -0.20559799208510593
#>     Attrib V53    -0.13082581277015828
#>     Attrib V54    0.544782518551704
#>     Attrib V55    -0.07176084594314963
#>     Attrib V56    0.0670096763979819
#>     Attrib V57    0.03136033339499433
#>     Attrib V58    0.03382369981090852
#>     Attrib V59    0.347105813540877
#>     Attrib V6    -0.013722685356307924
#>     Attrib V60    0.16543435412547242
#>     Attrib V7    -0.11531468586360016
#>     Attrib V8    -0.10841315711917601
#>     Attrib V9    0.4334439622850118
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.02168579873414217
#>     Attrib V1    0.15615854126388
#>     Attrib V10    -0.16826609575584778
#>     Attrib V11    -0.10966266708545841
#>     Attrib V12    -0.06012275015514384
#>     Attrib V13    -0.040813424537468584
#>     Attrib V14    0.13969641398017268
#>     Attrib V15    0.09910312000685023
#>     Attrib V16    0.06512087468825438
#>     Attrib V17    -2.5726158393986294E-4
#>     Attrib V18    0.11068860347773686
#>     Attrib V19    -0.02126649622170719
#>     Attrib V2    -0.08128245107814298
#>     Attrib V20    0.1850011788823899
#>     Attrib V21    0.1045841724372167
#>     Attrib V22    -0.16825086026573663
#>     Attrib V23    -0.023923326748831592
#>     Attrib V24    -0.0791355996645383
#>     Attrib V25    -0.41016817333650213
#>     Attrib V26    -0.505613364095725
#>     Attrib V27    -0.1300570455560408
#>     Attrib V28    -0.22134577900865712
#>     Attrib V29    -0.31059440629760315
#>     Attrib V3    -0.05869157605791579
#>     Attrib V30    -0.033991421326763575
#>     Attrib V31    -0.5580661038617697
#>     Attrib V32    -0.044005221845477685
#>     Attrib V33    0.2894416877497884
#>     Attrib V34    0.04482422232199668
#>     Attrib V35    -0.0520861049747319
#>     Attrib V36    -0.25220229905715696
#>     Attrib V37    -0.42525613761157766
#>     Attrib V38    0.09506987935142382
#>     Attrib V39    0.13472560881898496
#>     Attrib V4    0.5181119704993733
#>     Attrib V40    -0.028517158966080473
#>     Attrib V41    -0.005622649685437937
#>     Attrib V42    -0.07839441810003482
#>     Attrib V43    0.05620582614635742
#>     Attrib V44    0.040618029857515094
#>     Attrib V45    -0.007880770488211465
#>     Attrib V46    -0.07844278245629317
#>     Attrib V47    -0.1615580948357933
#>     Attrib V48    0.24039693778522098
#>     Attrib V49    0.19748410820649598
#>     Attrib V5    0.034288134089979945
#>     Attrib V50    -0.1512770642308034
#>     Attrib V51    0.052352062408218505
#>     Attrib V52    -0.17229151632707454
#>     Attrib V53    0.045149631193861665
#>     Attrib V54    0.4073044103399076
#>     Attrib V55    0.228504266111974
#>     Attrib V56    0.08100858956920766
#>     Attrib V57    0.24159680858741545
#>     Attrib V58    0.1758601590718174
#>     Attrib V59    0.4250499963057101
#>     Attrib V6    -0.033071926151754305
#>     Attrib V60    0.32216611745888174
#>     Attrib V7    0.06975576521981551
#>     Attrib V8    0.020411826340463683
#>     Attrib V9    0.06686583049942578
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.4713391505567604
#>     Attrib V1    0.23530842244799963
#>     Attrib V10    0.5054728762547246
#>     Attrib V11    0.6254218433741059
#>     Attrib V12    0.5578867633521586
#>     Attrib V13    -0.048677541021127
#>     Attrib V14    -0.4647069911516521
#>     Attrib V15    -0.3331823587833512
#>     Attrib V16    -0.4575973459626927
#>     Attrib V17    -0.6513318037222807
#>     Attrib V18    -0.2645821351765215
#>     Attrib V19    -0.6494427695906302
#>     Attrib V2    0.053193071846916615
#>     Attrib V20    -0.4364505631991633
#>     Attrib V21    -0.26311142839403
#>     Attrib V22    -0.31174312332716714
#>     Attrib V23    -0.05247635353179744
#>     Attrib V24    0.002917868694795642
#>     Attrib V25    -0.22919359437471507
#>     Attrib V26    0.13573583702080358
#>     Attrib V27    0.43770435368492056
#>     Attrib V28    -0.061118650867876156
#>     Attrib V29    -0.6037528449040162
#>     Attrib V3    -0.4134254937348019
#>     Attrib V30    0.2065330593097304
#>     Attrib V31    -0.21959717342072904
#>     Attrib V32    0.22255041858736166
#>     Attrib V33    0.48461530710897516
#>     Attrib V34    0.031185208694710947
#>     Attrib V35    0.013012241291644243
#>     Attrib V36    -0.6643656481491128
#>     Attrib V37    -0.7954536289801852
#>     Attrib V38    -0.42323528640779184
#>     Attrib V39    -0.3721726133305845
#>     Attrib V4    0.6442172312856979
#>     Attrib V40    -0.2457277822214613
#>     Attrib V41    0.13639555181924012
#>     Attrib V42    -0.1927214637940985
#>     Attrib V43    -0.06372017664613532
#>     Attrib V44    -0.07310684885988082
#>     Attrib V45    0.3161132060554361
#>     Attrib V46    0.41707243032043423
#>     Attrib V47    0.21178934637165645
#>     Attrib V48    0.8731365588392992
#>     Attrib V49    0.5424189557223145
#>     Attrib V5    -0.10560176178449392
#>     Attrib V50    -0.20671298004506647
#>     Attrib V51    0.34324902297172777
#>     Attrib V52    0.17596294442654586
#>     Attrib V53    -0.09448983196439745
#>     Attrib V54    0.22127026563004687
#>     Attrib V55    -0.015395976687859364
#>     Attrib V56    -0.3400389490099206
#>     Attrib V57    0.4330051720241555
#>     Attrib V58    0.11525330589935315
#>     Attrib V59    0.17792878908197596
#>     Attrib V6    0.2892907090517348
#>     Attrib V60    0.24781277549731476
#>     Attrib V7    0.15117807606789785
#>     Attrib V8    -0.07093055896980897
#>     Attrib V9    0.5198726294330085
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.06797815236859414
#>     Attrib V1    -0.399067793031414
#>     Attrib V10    -0.7716672344034095
#>     Attrib V11    -0.6853214984011872
#>     Attrib V12    -0.29146779633747694
#>     Attrib V13    0.05393687323269404
#>     Attrib V14    0.5763585817273793
#>     Attrib V15    0.6870073351486202
#>     Attrib V16    0.43678099694488587
#>     Attrib V17    0.21273076425328913
#>     Attrib V18    -0.6502021450390947
#>     Attrib V19    -0.11599389718481232
#>     Attrib V2    0.22220020767362192
#>     Attrib V20    -0.8288152040560343
#>     Attrib V21    -0.7071254782241462
#>     Attrib V22    -0.7823014683589614
#>     Attrib V23    -1.4218280432301411
#>     Attrib V24    -0.3871798616282371
#>     Attrib V25    0.6918274850636712
#>     Attrib V26    0.37634996104758084
#>     Attrib V27    -0.674664002433735
#>     Attrib V28    -0.46893000640930543
#>     Attrib V29    0.678796019039427
#>     Attrib V3    0.8195280499367634
#>     Attrib V30    -0.7500693998907162
#>     Attrib V31    1.7194348347118462
#>     Attrib V32    0.34670941557259366
#>     Attrib V33    -0.7756219915794037
#>     Attrib V34    0.15057798234174627
#>     Attrib V35    -0.4181030376558633
#>     Attrib V36    0.43907887893366204
#>     Attrib V37    0.8377897209169263
#>     Attrib V38    -0.9551560379523888
#>     Attrib V39    -0.28668188281114027
#>     Attrib V4    -1.435884177962717
#>     Attrib V40    0.3372792524539561
#>     Attrib V41    -0.31859533114212973
#>     Attrib V42    0.12444567202687559
#>     Attrib V43    -0.8271335676014175
#>     Attrib V44    -0.9505874556121429
#>     Attrib V45    -0.8404260275150649
#>     Attrib V46    0.08531855533752983
#>     Attrib V47    0.33598941922756304
#>     Attrib V48    -0.8384504576570604
#>     Attrib V49    -0.5869008125244177
#>     Attrib V5    0.2825805625771125
#>     Attrib V50    0.96028961425268
#>     Attrib V51    -0.6951695397980578
#>     Attrib V52    0.4134790423967384
#>     Attrib V53    0.27258226030655147
#>     Attrib V54    -0.8337733633412888
#>     Attrib V55    0.43243250327451366
#>     Attrib V56    -0.20363492324038726
#>     Attrib V57    0.9466155976117689
#>     Attrib V58    0.19337811797889431
#>     Attrib V59    -0.06615747646397588
#>     Attrib V6    0.3036780659325144
#>     Attrib V60    -0.24312125860984035
#>     Attrib V7    0.31156750432587393
#>     Attrib V8    0.2263389707748332
#>     Attrib V9    -1.1698187887680491
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.17748563220426847
#>     Attrib V1    0.10586113889988402
#>     Attrib V10    -0.01991606560796803
#>     Attrib V11    -0.034596467089670416
#>     Attrib V12    0.025800526419171837
#>     Attrib V13    0.0071655301386268685
#>     Attrib V14    0.011424415348338846
#>     Attrib V15    0.010344551707900725
#>     Attrib V16    0.06216052851466885
#>     Attrib V17    0.016350368374139675
#>     Attrib V18    0.024383615956160884
#>     Attrib V19    -0.09082364491019831
#>     Attrib V2    0.004289932083070086
#>     Attrib V20    -0.08885478136217355
#>     Attrib V21    -0.12341049217977719
#>     Attrib V22    -0.15568758885036088
#>     Attrib V23    -0.09785620252498704
#>     Attrib V24    -0.026529300856023376
#>     Attrib V25    -0.10858518929694759
#>     Attrib V26    -0.19249700352745594
#>     Attrib V27    -0.08483683078246161
#>     Attrib V28    -0.046204873693861934
#>     Attrib V29    -0.15415648643158986
#>     Attrib V3    0.059733928701656246
#>     Attrib V30    -0.08076167077039366
#>     Attrib V31    -0.1540018661897239
#>     Attrib V32    0.06778843706389194
#>     Attrib V33    0.12622972208170233
#>     Attrib V34    0.06566657198168704
#>     Attrib V35    0.010887772696900616
#>     Attrib V36    -0.05442152119893468
#>     Attrib V37    -0.05873807245943761
#>     Attrib V38    0.0563985745001043
#>     Attrib V39    0.055784792267061296
#>     Attrib V4    0.20941300829915704
#>     Attrib V40    -0.011704603838149304
#>     Attrib V41    0.04449201958862189
#>     Attrib V42    0.024574577977277075
#>     Attrib V43    0.015976224701917063
#>     Attrib V44    -0.021575879940834822
#>     Attrib V45    0.029702257447855686
#>     Attrib V46    0.039427124033141726
#>     Attrib V47    -0.0034105078368888617
#>     Attrib V48    0.0909372649832742
#>     Attrib V49    0.05666971683035175
#>     Attrib V5    0.0640804630867588
#>     Attrib V50    0.05824988201401215
#>     Attrib V51    0.14098767135050846
#>     Attrib V52    0.06504096099056972
#>     Attrib V53    0.10131098126767892
#>     Attrib V54    0.1560355273787498
#>     Attrib V55    0.14896618380386276
#>     Attrib V56    0.045111096519385156
#>     Attrib V57    0.21186315405408504
#>     Attrib V58    0.12510024396044506
#>     Attrib V59    0.10997971513689132
#>     Attrib V6    0.003507748158180082
#>     Attrib V60    0.17811536653135937
#>     Attrib V7    -0.004918439831068329
#>     Attrib V8    8.21122065407287E-4
#>     Attrib V9    0.08930977901647387
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.06535854900399363
#>     Attrib V1    0.15614025487637215
#>     Attrib V10    -0.024849855055546117
#>     Attrib V11    -0.014530288926738046
#>     Attrib V12    -0.007753950252259401
#>     Attrib V13    -0.09287901497708823
#>     Attrib V14    0.024525131846868373
#>     Attrib V15    0.1009369582354207
#>     Attrib V16    0.033011781032262086
#>     Attrib V17    -0.03273301738527988
#>     Attrib V18    -0.006383298671972561
#>     Attrib V19    -0.09877490628642194
#>     Attrib V2    0.059433640992636205
#>     Attrib V20    -0.026033265812464894
#>     Attrib V21    -0.0715341901703007
#>     Attrib V22    -0.101973365907778
#>     Attrib V23    -0.070042585502233
#>     Attrib V24    -0.043335324062049506
#>     Attrib V25    -0.2622707633672319
#>     Attrib V26    -0.2863793169140013
#>     Attrib V27    -0.0881847799194396
#>     Attrib V28    -0.12357959469825283
#>     Attrib V29    -0.2723828551663145
#>     Attrib V3    -0.02753947041768181
#>     Attrib V30    -0.020709830203674756
#>     Attrib V31    -0.20652479526108158
#>     Attrib V32    -0.003918852311961699
#>     Attrib V33    0.24604382867835808
#>     Attrib V34    0.015797088074008973
#>     Attrib V35    0.04129982532850982
#>     Attrib V36    -0.14671631689386166
#>     Attrib V37    -0.2369640592874513
#>     Attrib V38    0.0971278292280063
#>     Attrib V39    0.07124749745281334
#>     Attrib V4    0.2966808209223335
#>     Attrib V40    -0.0538614076086746
#>     Attrib V41    0.025369417800822892
#>     Attrib V42    -0.07459512325922549
#>     Attrib V43    0.07376100246782111
#>     Attrib V44    0.03019179598337022
#>     Attrib V45    0.05341684096204985
#>     Attrib V46    -0.03855157030395079
#>     Attrib V47    -0.10539098056096517
#>     Attrib V48    0.20129819210267882
#>     Attrib V49    0.08383468623452006
#>     Attrib V5    0.027018856950745754
#>     Attrib V50    -0.025612225866011716
#>     Attrib V51    0.10233153426669313
#>     Attrib V52    -0.03178402663242045
#>     Attrib V53    0.01238462426839921
#>     Attrib V54    0.22676772400007048
#>     Attrib V55    0.19482998146213076
#>     Attrib V56    0.04530753157307603
#>     Attrib V57    0.26028921645022995
#>     Attrib V58    0.06265900152342756
#>     Attrib V59    0.1605413991101882
#>     Attrib V6    -0.033603634430187705
#>     Attrib V60    0.20375028047998484
#>     Attrib V7    -0.05491510977929549
#>     Attrib V8    0.05981372899159873
#>     Attrib V9    0.08275246527154297
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.3340614358808515
#>     Attrib V1    -0.04083305928905446
#>     Attrib V10    -0.1494627268298318
#>     Attrib V11    -0.29441760849246057
#>     Attrib V12    -0.2789317661007091
#>     Attrib V13    0.0485414062185653
#>     Attrib V14    0.2917305804117826
#>     Attrib V15    0.1865714853992431
#>     Attrib V16    0.1508916514179926
#>     Attrib V17    0.14431936780181867
#>     Attrib V18    -0.041974452204281115
#>     Attrib V19    -4.2785731478297163E-4
#>     Attrib V2    0.13870505383103462
#>     Attrib V20    -0.11722232122393672
#>     Attrib V21    -0.060253783275780945
#>     Attrib V22    -0.05274289534240212
#>     Attrib V23    -0.28381627062360126
#>     Attrib V24    -0.1167079991538313
#>     Attrib V25    0.4019615764332284
#>     Attrib V26    0.18143944803717726
#>     Attrib V27    -0.22913915130630827
#>     Attrib V28    -0.0870106053986041
#>     Attrib V29    0.2675217546414891
#>     Attrib V3    0.40936680137860565
#>     Attrib V30    -0.26683630694461996
#>     Attrib V31    0.543394321653994
#>     Attrib V32    0.12961687870119223
#>     Attrib V33    -0.2237527540319253
#>     Attrib V34    0.03273567746428917
#>     Attrib V35    -0.08305140110877013
#>     Attrib V36    0.428612245121446
#>     Attrib V37    0.4920639009016806
#>     Attrib V38    -0.13128623474739912
#>     Attrib V39    0.051729959240412564
#>     Attrib V4    -0.5778244339595636
#>     Attrib V40    0.1233164679135662
#>     Attrib V41    -0.17508316985021907
#>     Attrib V42    0.03573959080803094
#>     Attrib V43    -0.24468723734134018
#>     Attrib V44    -0.18790603334518627
#>     Attrib V45    -0.3743533861841818
#>     Attrib V46    -0.15414442989531207
#>     Attrib V47    0.05555970820783985
#>     Attrib V48    -0.4157935813694332
#>     Attrib V49    -0.23523228645106845
#>     Attrib V5    0.13645985267830732
#>     Attrib V50    0.31025167674685
#>     Attrib V51    -0.18136087316005398
#>     Attrib V52    0.04660042390188472
#>     Attrib V53    0.077412598491104
#>     Attrib V54    -0.250490549904359
#>     Attrib V55    0.09868103851148996
#>     Attrib V56    -0.011416712512896525
#>     Attrib V57    0.12136861547404446
#>     Attrib V58    -0.012162991064374304
#>     Attrib V59    -0.12885362986531346
#>     Attrib V6    0.005761944104955734
#>     Attrib V60    -0.06482029413869017
#>     Attrib V7    0.1751384707949166
#>     Attrib V8    0.1082322116120536
#>     Attrib V9    -0.28405692986060743
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.18374117203228238
#>     Attrib V1    0.28677289433755143
#>     Attrib V10    0.9351370050823978
#>     Attrib V11    0.9159730482140834
#>     Attrib V12    1.0724673128590456
#>     Attrib V13    0.39539108397327244
#>     Attrib V14    -0.753028088140139
#>     Attrib V15    -0.7357485680499998
#>     Attrib V16    -0.6675433398665591
#>     Attrib V17    -0.6120751923456812
#>     Attrib V18    0.12365705193225728
#>     Attrib V19    -0.38345511947715244
#>     Attrib V2    0.15510938244378375
#>     Attrib V20    -0.1996045596655717
#>     Attrib V21    -0.0015198041041366605
#>     Attrib V22    0.5549685507977684
#>     Attrib V23    0.9670359809794228
#>     Attrib V24    0.4674712694319306
#>     Attrib V25    0.1446831111110988
#>     Attrib V26    0.7403007859700457
#>     Attrib V27    1.119458972896968
#>     Attrib V28    0.8135424758772016
#>     Attrib V29    -0.10367653648982464
#>     Attrib V3    -0.6120253076487715
#>     Attrib V30    0.36484954767049704
#>     Attrib V31    -0.509719329440811
#>     Attrib V32    -0.006205810841981282
#>     Attrib V33    0.1966457290854069
#>     Attrib V34    -0.14096558661573652
#>     Attrib V35    0.31350452281029784
#>     Attrib V36    -0.47870798840080214
#>     Attrib V37    -0.43512819074198933
#>     Attrib V38    -0.11594613660633624
#>     Attrib V39    -0.4147524884069268
#>     Attrib V4    0.8596734709668974
#>     Attrib V40    -0.2323064340381184
#>     Attrib V41    0.6939512860770384
#>     Attrib V42    -0.10895588599291893
#>     Attrib V43    0.06955877368401142
#>     Attrib V44    0.33634555770298497
#>     Attrib V45    0.911107936214398
#>     Attrib V46    0.8565806957973973
#>     Attrib V47    0.47653738990623534
#>     Attrib V48    0.8433917310488419
#>     Attrib V49    0.6484624052252661
#>     Attrib V5    0.10798488862468446
#>     Attrib V50    -0.3943372295776245
#>     Attrib V51    0.8862162891577093
#>     Attrib V52    0.49722840053421785
#>     Attrib V53    0.14743347634531875
#>     Attrib V54    0.0502629693723876
#>     Attrib V55    -0.47013334225298586
#>     Attrib V56    -0.5558510077866937
#>     Attrib V57    -0.21495484308427146
#>     Attrib V58    -0.26425025835783916
#>     Attrib V59    -0.057924702849146165
#>     Attrib V6    0.38343570447764064
#>     Attrib V60    0.20484109459309
#>     Attrib V7    -0.10389841379692885
#>     Attrib V8    -0.40089566144237615
#>     Attrib V9    0.8851954356935153
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.23066607174920944
#>     Attrib V1    0.3452264666423712
#>     Attrib V10    -0.2844720385142024
#>     Attrib V11    -0.3204267292149569
#>     Attrib V12    -0.26831673643538106
#>     Attrib V13    -0.2949705250428959
#>     Attrib V14    0.3131077748368751
#>     Attrib V15    0.2892418780478567
#>     Attrib V16    0.22286930852142753
#>     Attrib V17    -0.020054442269792652
#>     Attrib V18    0.2496449243897728
#>     Attrib V19    0.22545970490040526
#>     Attrib V2    -0.11093465140384275
#>     Attrib V20    0.5947883253642366
#>     Attrib V21    0.46831471093561255
#>     Attrib V22    -0.06156735083592585
#>     Attrib V23    0.010383324381903845
#>     Attrib V24    -0.24737494058702633
#>     Attrib V25    -1.1038904395520288
#>     Attrib V26    -0.9482950988452657
#>     Attrib V27    -0.13892397210265156
#>     Attrib V28    -0.16749645858485307
#>     Attrib V29    -0.30800901160531885
#>     Attrib V3    -0.2748435981127298
#>     Attrib V30    0.12119174601928172
#>     Attrib V31    -1.1692252513009047
#>     Attrib V32    -0.29675632523688805
#>     Attrib V33    0.5051311008696477
#>     Attrib V34    -0.15061423428078627
#>     Attrib V35    -0.15198793060461988
#>     Attrib V36    -0.40136517698299934
#>     Attrib V37    -0.7848894541106223
#>     Attrib V38    0.33563913836873993
#>     Attrib V39    0.2059630441121512
#>     Attrib V4    1.003620407847802
#>     Attrib V40    -0.09431018249721662
#>     Attrib V41    0.010840818602869937
#>     Attrib V42    -0.09746289435293506
#>     Attrib V43    0.3517876310931971
#>     Attrib V44    0.2933226584617278
#>     Attrib V45    0.09281787010614415
#>     Attrib V46    -0.2858520033737373
#>     Attrib V47    -0.5069631914620865
#>     Attrib V48    0.45204248294443805
#>     Attrib V49    0.348816940475506
#>     Attrib V5    -7.367018760517145E-4
#>     Attrib V50    -0.3074909987426074
#>     Attrib V51    0.09281142305276482
#>     Attrib V52    -0.40931737930916107
#>     Attrib V53    0.023126909410463792
#>     Attrib V54    0.8545199608066841
#>     Attrib V55    0.245686298563063
#>     Attrib V56    0.1639256895020082
#>     Attrib V57    0.16896830629490703
#>     Attrib V58    0.33272160274820795
#>     Attrib V59    0.7308776351441751
#>     Attrib V6    -0.12365155084676781
#>     Attrib V60    0.4936162955783474
#>     Attrib V7    0.046776602442749754
#>     Attrib V8    0.013249114712926
#>     Attrib V9    0.12059824021728134
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.01732308674644122
#>     Attrib V1    -0.3570727592682627
#>     Attrib V10    -0.7414496368898493
#>     Attrib V11    -0.723703169877522
#>     Attrib V12    -0.36360760905575945
#>     Attrib V13    0.041582217840148095
#>     Attrib V14    0.6418116842451342
#>     Attrib V15    0.6707960296536666
#>     Attrib V16    0.4188097205243817
#>     Attrib V17    0.21552607114250236
#>     Attrib V18    -0.5629923824452591
#>     Attrib V19    -0.13665442323714777
#>     Attrib V2    0.10624593126667219
#>     Attrib V20    -0.7707991554242088
#>     Attrib V21    -0.5750489863782609
#>     Attrib V22    -0.7895492246184226
#>     Attrib V23    -1.3682739105725068
#>     Attrib V24    -0.39164172529345903
#>     Attrib V25    0.6480322455177967
#>     Attrib V26    0.31022620914711746
#>     Attrib V27    -0.6014275538964278
#>     Attrib V28    -0.44622391166781816
#>     Attrib V29    0.6018533377158064
#>     Attrib V3    0.7152063293122197
#>     Attrib V30    -0.7530094181022826
#>     Attrib V31    1.520002765872064
#>     Attrib V32    0.27546631504416036
#>     Attrib V33    -0.6343683527577737
#>     Attrib V34    0.1743407078629125
#>     Attrib V35    -0.35965612993862467
#>     Attrib V36    0.44595924758000627
#>     Attrib V37    0.7774709191845377
#>     Attrib V38    -0.8526645912769661
#>     Attrib V39    -0.21417348204175682
#>     Attrib V4    -1.2778320883846421
#>     Attrib V40    0.3794926711730177
#>     Attrib V41    -0.2546587781303892
#>     Attrib V42    0.06324905448328944
#>     Attrib V43    -0.7418633982320202
#>     Attrib V44    -0.842069507825912
#>     Attrib V45    -0.8799855445681675
#>     Attrib V46    -0.04216154447535278
#>     Attrib V47    0.20587394783421226
#>     Attrib V48    -0.7377278797508058
#>     Attrib V49    -0.5668645722865955
#>     Attrib V5    0.28124048601805546
#>     Attrib V50    0.8754275313945054
#>     Attrib V51    -0.723066924817027
#>     Attrib V52    0.3214191597789557
#>     Attrib V53    0.17116805175134078
#>     Attrib V54    -0.720260895047671
#>     Attrib V55    0.37768381796064027
#>     Attrib V56    -0.24668109069676175
#>     Attrib V57    1.0196819607087861
#>     Attrib V58    0.2047885295651085
#>     Attrib V59    4.6171374140442916E-4
#>     Attrib V6    0.31619016680242923
#>     Attrib V60    -0.12000603891229568
#>     Attrib V7    0.4571446421769681
#>     Attrib V8    0.12776114232774988
#>     Attrib V9    -1.0729184416611584
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.12220227992915474
#>     Attrib V1    0.287597104172295
#>     Attrib V10    -0.21284892208523848
#>     Attrib V11    -0.185699447494587
#>     Attrib V12    -0.16749379691780786
#>     Attrib V13    -0.20192114110036036
#>     Attrib V14    0.25288039232156995
#>     Attrib V15    0.20667834103675334
#>     Attrib V16    0.24600020798207597
#>     Attrib V17    0.012457211263542005
#>     Attrib V18    0.14315939956701781
#>     Attrib V19    0.0601101120726584
#>     Attrib V2    -0.0669836380244026
#>     Attrib V20    0.3364377887743727
#>     Attrib V21    0.2101252023858401
#>     Attrib V22    -0.18659408385466722
#>     Attrib V23    -0.1494271469304951
#>     Attrib V24    -0.10472984519562165
#>     Attrib V25    -0.6679693710432545
#>     Attrib V26    -0.6859180193161653
#>     Attrib V27    -0.3053561180218877
#>     Attrib V28    -0.4214467955310214
#>     Attrib V29    -0.4577128577378715
#>     Attrib V3    -0.17990984635611926
#>     Attrib V30    -0.10173062215269252
#>     Attrib V31    -0.703731236988147
#>     Attrib V32    -0.1230812961154729
#>     Attrib V33    0.35477106433742983
#>     Attrib V34    -0.009967632948817789
#>     Attrib V35    -0.06493513585117124
#>     Attrib V36    -0.29898768232542317
#>     Attrib V37    -0.5806269419974848
#>     Attrib V38    0.13886546294529056
#>     Attrib V39    0.14457449059246988
#>     Attrib V4    0.676571588193827
#>     Attrib V40    -0.02824785139480336
#>     Attrib V41    -0.10046281275836605
#>     Attrib V42    -0.13963625643571181
#>     Attrib V43    0.21803882626248133
#>     Attrib V44    0.07845258181938955
#>     Attrib V45    -0.05746788229686288
#>     Attrib V46    -0.15856629899614996
#>     Attrib V47    -0.3385794083818164
#>     Attrib V48    0.37910597341272817
#>     Attrib V49    0.2542540332923002
#>     Attrib V5    0.027018807946633215
#>     Attrib V50    -0.14482390696276104
#>     Attrib V51    0.03364115251849875
#>     Attrib V52    -0.29104390436056354
#>     Attrib V53    0.061655104920604546
#>     Attrib V54    0.6528797629174579
#>     Attrib V55    0.37361511760578275
#>     Attrib V56    0.2186094874682814
#>     Attrib V57    0.3113288980466321
#>     Attrib V58    0.3467233774443885
#>     Attrib V59    0.5762124079056131
#>     Attrib V6    -0.07206032127244881
#>     Attrib V60    0.42794579298282837
#>     Attrib V7    0.05581540770111458
#>     Attrib V8    0.015484698645180645
#>     Attrib V9    0.05963555148147315
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.09619593154662977
#>     Attrib V1    0.24550265007625058
#>     Attrib V10    -0.2631032179222459
#>     Attrib V11    -0.1464401317056304
#>     Attrib V12    -0.06770740497679756
#>     Attrib V13    -0.14262043371369748
#>     Attrib V14    0.21390356390520301
#>     Attrib V15    0.19010341955642562
#>     Attrib V16    0.14344858543157304
#>     Attrib V17    0.07463510754045405
#>     Attrib V18    0.17607988999266158
#>     Attrib V19    0.06888341731397636
#>     Attrib V2    -0.125877594826831
#>     Attrib V20    0.2531549295666415
#>     Attrib V21    0.13865429901440948
#>     Attrib V22    -0.15513187987160412
#>     Attrib V23    -0.06232123055681181
#>     Attrib V24    -0.1386166102793954
#>     Attrib V25    -0.5748052218183705
#>     Attrib V26    -0.5883610883069854
#>     Attrib V27    -0.2915367254780155
#>     Attrib V28    -0.38899480159643884
#>     Attrib V29    -0.5261112420674293
#>     Attrib V3    -0.11341807745022127
#>     Attrib V30    -0.11748851760912116
#>     Attrib V31    -0.704949812777646
#>     Attrib V32    -0.11643803362885828
#>     Attrib V33    0.3558928788262719
#>     Attrib V34    -0.0036910188176188094
#>     Attrib V35    0.0164249697733425
#>     Attrib V36    -0.2486806130603986
#>     Attrib V37    -0.49652086914446353
#>     Attrib V38    0.15617786240676085
#>     Attrib V39    0.15147891708118472
#>     Attrib V4    0.6696134735897848
#>     Attrib V40    -0.07089810088306266
#>     Attrib V41    -0.05671265700780115
#>     Attrib V42    -0.1255017752011872
#>     Attrib V43    0.2198972105718012
#>     Attrib V44    0.08309240881195523
#>     Attrib V45    0.024634913329768866
#>     Attrib V46    -0.17134722590639295
#>     Attrib V47    -0.2509123194774833
#>     Attrib V48    0.26162478504655934
#>     Attrib V49    0.2013125736412328
#>     Attrib V5    0.015520675307960806
#>     Attrib V50    -0.17447941439444944
#>     Attrib V51    0.019994940380008312
#>     Attrib V52    -0.230773531436217
#>     Attrib V53    0.11213010723416274
#>     Attrib V54    0.6087990093268981
#>     Attrib V55    0.3330566220176806
#>     Attrib V56    0.20536021544211255
#>     Attrib V57    0.23291248284373378
#>     Attrib V58    0.25657323698025936
#>     Attrib V59    0.5680581775265421
#>     Attrib V6    -0.10724558110061047
#>     Attrib V60    0.3614486574000164
#>     Attrib V7    0.016776638178392315
#>     Attrib V8    0.05641799232162218
#>     Attrib V9    0.06537821210202213
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.3036799948280414
#>     Attrib V1    -0.07383034730676355
#>     Attrib V10    -0.2844210423852161
#>     Attrib V11    -0.35755533789768434
#>     Attrib V12    -0.2711641777760314
#>     Attrib V13    0.04810229614244495
#>     Attrib V14    0.3939038844733409
#>     Attrib V15    0.3662612988467026
#>     Attrib V16    0.2215428910933809
#>     Attrib V17    0.29792199895397725
#>     Attrib V18    -0.1614783326597043
#>     Attrib V19    0.038855773053191336
#>     Attrib V2    0.14520290670774533
#>     Attrib V20    -0.2224025712432731
#>     Attrib V21    -0.1846644435670214
#>     Attrib V22    -0.19371184805279598
#>     Attrib V23    -0.47366838630096175
#>     Attrib V24    -0.1884691754353151
#>     Attrib V25    0.5062009380376966
#>     Attrib V26    0.29096091917929046
#>     Attrib V27    -0.3513104029543159
#>     Attrib V28    -0.15092409577049712
#>     Attrib V29    0.36115805978190285
#>     Attrib V3    0.47656554364343945
#>     Attrib V30    -0.3423675428254068
#>     Attrib V31    0.7491922377820133
#>     Attrib V32    0.17966522472479127
#>     Attrib V33    -0.38366205801114867
#>     Attrib V34    0.02797536516007282
#>     Attrib V35    -0.1310400849035233
#>     Attrib V36    0.4412103548560742
#>     Attrib V37    0.569618324523206
#>     Attrib V38    -0.2397459219746765
#>     Attrib V39    -0.038486511983820706
#>     Attrib V4    -0.7258079087720839
#>     Attrib V40    0.19192717300154605
#>     Attrib V41    -0.195118572279757
#>     Attrib V42    -0.00723230036979727
#>     Attrib V43    -0.3287747974192825
#>     Attrib V44    -0.37287320360361337
#>     Attrib V45    -0.4674130591514753
#>     Attrib V46    -0.09203258785693613
#>     Attrib V47    0.10978130718410575
#>     Attrib V48    -0.5236811821928934
#>     Attrib V49    -0.3676235485806531
#>     Attrib V5    0.1320199528650872
#>     Attrib V50    0.5383850224263972
#>     Attrib V51    -0.30632470261465183
#>     Attrib V52    0.16224776934318091
#>     Attrib V53    0.08158313137240705
#>     Attrib V54    -0.33802215764825966
#>     Attrib V55    0.19044659395675237
#>     Attrib V56    -0.04056484218926548
#>     Attrib V57    0.34331587755085075
#>     Attrib V58    0.029937060568535394
#>     Attrib V59    -0.1620590606867266
#>     Attrib V6    0.07268990204919258
#>     Attrib V60    -0.16941614465246105
#>     Attrib V7    0.14833730543178125
#>     Attrib V8    0.12434833803884245
#>     Attrib V9    -0.3928748556446581
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.1590744781899735
#>     Attrib V1    0.509442517309968
#>     Attrib V10    0.8409179644578685
#>     Attrib V11    1.009952830591509
#>     Attrib V12    1.0638817795511797
#>     Attrib V13    0.5028436109180688
#>     Attrib V14    -0.5397167300466732
#>     Attrib V15    -0.6008763310814182
#>     Attrib V16    -0.5845842456997948
#>     Attrib V17    -0.6663639765706586
#>     Attrib V18    0.03680952911162231
#>     Attrib V19    -0.4272507973426858
#>     Attrib V2    0.5479153671713158
#>     Attrib V20    -0.07983109446050793
#>     Attrib V21    0.05551072492240751
#>     Attrib V22    0.5669087806426638
#>     Attrib V23    1.036539309265111
#>     Attrib V24    0.2803777860045785
#>     Attrib V25    -0.15813890553021498
#>     Attrib V26    0.9135517051469262
#>     Attrib V27    1.4813485910643631
#>     Attrib V28    1.4545364779202985
#>     Attrib V29    0.8321704884613366
#>     Attrib V3    -0.3692041397084284
#>     Attrib V30    0.7317151354859432
#>     Attrib V31    -0.5336104988960094
#>     Attrib V32    -0.1567429966680263
#>     Attrib V33    -0.16118321103756472
#>     Attrib V34    -0.47218881874534735
#>     Attrib V35    -0.025138077334980257
#>     Attrib V36    -0.6655936670833891
#>     Attrib V37    -0.33147195341377783
#>     Attrib V38    -0.05181679969224749
#>     Attrib V39    -0.3037617822411392
#>     Attrib V4    0.9960618531823271
#>     Attrib V40    -0.340102746999483
#>     Attrib V41    0.8017623219412345
#>     Attrib V42    0.013455931607207849
#>     Attrib V43    0.06799829006849006
#>     Attrib V44    0.4581222984218407
#>     Attrib V45    1.0135544713421465
#>     Attrib V46    1.0138288657309562
#>     Attrib V47    0.5630066397191715
#>     Attrib V48    0.7454887246845783
#>     Attrib V49    0.7800097492732725
#>     Attrib V5    0.2338395133886812
#>     Attrib V50    -0.30049718196498787
#>     Attrib V51    1.054075278583915
#>     Attrib V52    0.7629416467663929
#>     Attrib V53    0.3532161417434154
#>     Attrib V54    0.04378937123784154
#>     Attrib V55    -0.36794553316822753
#>     Attrib V56    -0.4389020619038496
#>     Attrib V57    -0.12857374706912159
#>     Attrib V58    -0.26645751777647503
#>     Attrib V59    0.05041782153922563
#>     Attrib V6    0.31278458708523027
#>     Attrib V60    0.12345268011400985
#>     Attrib V7    -0.4020120389866486
#>     Attrib V8    -0.44431610077580314
#>     Attrib V9    0.7383639170836499
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.258874303407539
#>     Attrib V1    0.0476069683419359
#>     Attrib V10    -0.07045681989401505
#>     Attrib V11    -0.12727479604617326
#>     Attrib V12    -0.02031356305583685
#>     Attrib V13    0.014431908074582953
#>     Attrib V14    0.107622216240543
#>     Attrib V15    0.020730954373998144
#>     Attrib V16    0.023502211318322266
#>     Attrib V17    0.052064479824845494
#>     Attrib V18    -0.06072178627347724
#>     Attrib V19    -0.024713362786683717
#>     Attrib V2    0.1271654948609533
#>     Attrib V20    -0.12566871153797496
#>     Attrib V21    -0.09725205766271146
#>     Attrib V22    -0.06758067385415331
#>     Attrib V23    -0.05788436568861792
#>     Attrib V24    -0.02623853148209874
#>     Attrib V25    0.08282712472151846
#>     Attrib V26    -0.04295588467728813
#>     Attrib V27    -0.09287413395507794
#>     Attrib V28    -0.01691589459237733
#>     Attrib V29    0.025711714749050273
#>     Attrib V3    0.08793807300465757
#>     Attrib V30    -0.04507570229759316
#>     Attrib V31    0.1537505576044834
#>     Attrib V32    0.11311983886765856
#>     Attrib V33    0.07158183995550448
#>     Attrib V34    0.025661273729107877
#>     Attrib V35    0.0984325456264957
#>     Attrib V36    0.1891386793646325
#>     Attrib V37    0.22174452490652283
#>     Attrib V38    -0.010250086248094167
#>     Attrib V39    0.057234933124529555
#>     Attrib V4    -0.03593342860993204
#>     Attrib V40    0.10615064117665218
#>     Attrib V41    0.07323612077595998
#>     Attrib V42    0.11313987944885748
#>     Attrib V43    0.05124022665570225
#>     Attrib V44    0.04947012639875507
#>     Attrib V45    -0.054066575948631214
#>     Attrib V46    -0.03571319139816726
#>     Attrib V47    0.0040307420157531595
#>     Attrib V48    -0.03876019234404995
#>     Attrib V49    -0.031944060057649756
#>     Attrib V5    0.045502841802128255
#>     Attrib V50    0.10625132355169875
#>     Attrib V51    0.009352825794267059
#>     Attrib V52    0.03173212293475146
#>     Attrib V53    0.06654282349643006
#>     Attrib V54    0.037875392744061896
#>     Attrib V55    0.094062305937267
#>     Attrib V56    0.08673480564155162
#>     Attrib V57    0.1425948032276344
#>     Attrib V58    0.05767837541815534
#>     Attrib V59    0.04409696755026151
#>     Attrib V6    0.06512278892945862
#>     Attrib V60    0.12019784798881665
#>     Attrib V7    0.014726583215572419
#>     Attrib V8    0.08079231109030009
#>     Attrib V9    -0.05460510701289329
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5087662987456957
#>     Attrib V1    0.23844719621005714
#>     Attrib V10    0.5225085831529168
#>     Attrib V11    0.5506372204283628
#>     Attrib V12    0.4706262667469283
#>     Attrib V13    -0.002534206599178231
#>     Attrib V14    -0.46566513183429253
#>     Attrib V15    -0.3825838842720368
#>     Attrib V16    -0.432213656903487
#>     Attrib V17    -0.6589152779721158
#>     Attrib V18    -0.13270778662438165
#>     Attrib V19    -0.551014063026756
#>     Attrib V2    0.012036012215305824
#>     Attrib V20    -0.3729790718300226
#>     Attrib V21    -0.1390522642517416
#>     Attrib V22    -0.184885283175927
#>     Attrib V23    0.022796947521579614
#>     Attrib V24    0.07557511053813293
#>     Attrib V25    -0.28883251059037396
#>     Attrib V26    0.13840078668674918
#>     Attrib V27    0.47950781641771906
#>     Attrib V28    0.02883168530075688
#>     Attrib V29    -0.48405893313907516
#>     Attrib V3    -0.4440998995989794
#>     Attrib V30    0.23067084857431255
#>     Attrib V31    -0.37058096040687866
#>     Attrib V32    0.14872629174594856
#>     Attrib V33    0.4495764129967456
#>     Attrib V34    0.06198178332499571
#>     Attrib V35    0.04098394176240092
#>     Attrib V36    -0.5820631144884184
#>     Attrib V37    -0.769621075923068
#>     Attrib V38    -0.2727157454586139
#>     Attrib V39    -0.3024452276619879
#>     Attrib V4    0.6864579784694156
#>     Attrib V40    -0.2996673120443189
#>     Attrib V41    0.19014995563025008
#>     Attrib V42    -0.1863337387136475
#>     Attrib V43    -0.06283913037318017
#>     Attrib V44    0.013785487952329789
#>     Attrib V45    0.48517971677757
#>     Attrib V46    0.3628925652350722
#>     Attrib V47    0.14233711376080105
#>     Attrib V48    0.853261189545264
#>     Attrib V49    0.47400829965011315
#>     Attrib V5    -0.10265904463944406
#>     Attrib V50    -0.22121411766846363
#>     Attrib V51    0.3997904450608794
#>     Attrib V52    0.1455540106227859
#>     Attrib V53    -0.08275966668343945
#>     Attrib V54    0.203941745555632
#>     Attrib V55    -0.030990816513750224
#>     Attrib V56    -0.4394949546269495
#>     Attrib V57    0.31382224816254745
#>     Attrib V58    0.06909750421652804
#>     Attrib V59    0.17267420456354127
#>     Attrib V6    0.32642444097616263
#>     Attrib V60    0.18459873873345659
#>     Attrib V7    0.14753855331802218
#>     Attrib V8    -0.047756444115785224
#>     Attrib V9    0.5795385602277283
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.3989431125035495
#>     Attrib V1    -0.05050251112190992
#>     Attrib V10    -0.6437286723013513
#>     Attrib V11    -0.9916188136039908
#>     Attrib V12    -0.7493117650438283
#>     Attrib V13    -0.15981128761816835
#>     Attrib V14    0.5713441343040893
#>     Attrib V15    0.36315674296298855
#>     Attrib V16    0.11142659898658752
#>     Attrib V17    -0.3087971767449049
#>     Attrib V18    -0.7575529556306319
#>     Attrib V19    -0.4508098925009151
#>     Attrib V2    0.23755103734891903
#>     Attrib V20    -0.7823056714108527
#>     Attrib V21    -0.5469214502795884
#>     Attrib V22    -0.6369718908261703
#>     Attrib V23    -0.7358043900229673
#>     Attrib V24    0.11729129292581111
#>     Attrib V25    0.5966112423637605
#>     Attrib V26    -0.11656982441651309
#>     Attrib V27    -0.4499804526821424
#>     Attrib V28    -0.07092537786895999
#>     Attrib V29    0.18772274008313528
#>     Attrib V3    0.7817989424861225
#>     Attrib V30    -1.1223601047387068
#>     Attrib V31    0.7129440962354456
#>     Attrib V32    0.29525473313463135
#>     Attrib V33    -0.5470685359995371
#>     Attrib V34    -0.0700663147960844
#>     Attrib V35    -0.04333188480568987
#>     Attrib V36    0.8838336420203302
#>     Attrib V37    0.7622567454493443
#>     Attrib V38    -0.2140539747319811
#>     Attrib V39    0.09432290872124016
#>     Attrib V4    -0.9738545591894577
#>     Attrib V40    0.266213990744416
#>     Attrib V41    -0.17993872508709732
#>     Attrib V42    0.10950731486638335
#>     Attrib V43    -0.3510931136995013
#>     Attrib V44    -0.3527971976799313
#>     Attrib V45    -0.7434086939232508
#>     Attrib V46    -0.5140164813011403
#>     Attrib V47    -0.4468715084089062
#>     Attrib V48    -1.063267356037293
#>     Attrib V49    -0.6119155687906251
#>     Attrib V5    0.012759097642537411
#>     Attrib V50    0.7096933558126354
#>     Attrib V51    -0.6415980505615376
#>     Attrib V52    0.15892463504606574
#>     Attrib V53    0.20983650803071327
#>     Attrib V54    -0.2875412670982241
#>     Attrib V55    0.5305535370614618
#>     Attrib V56    -0.08704079666927336
#>     Attrib V57    0.8095860885216869
#>     Attrib V58    0.47381014743592753
#>     Attrib V59    0.20975585230392813
#>     Attrib V6    0.20040704895082034
#>     Attrib V60    0.22434771656905653
#>     Attrib V7    0.5860194978512737
#>     Attrib V8    0.3216789888420126
#>     Attrib V9    -0.7767871281045673
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.1901069927946109
#>     Attrib V1    0.11498062223772101
#>     Attrib V10    -0.07426716166880805
#>     Attrib V11    0.033483422724426136
#>     Attrib V12    0.010015566714576799
#>     Attrib V13    -0.11278060860068723
#>     Attrib V14    0.10311064171260675
#>     Attrib V15    0.025012604535511997
#>     Attrib V16    -0.03771819825385288
#>     Attrib V17    -0.1827291178118993
#>     Attrib V18    0.06102746267139472
#>     Attrib V19    -0.1236980252077575
#>     Attrib V2    -0.14439879795741029
#>     Attrib V20    0.1554662866444636
#>     Attrib V21    0.12105956692464873
#>     Attrib V22    -0.10956323298303768
#>     Attrib V23    -0.06261597830539077
#>     Attrib V24    -0.044693403510196565
#>     Attrib V25    -0.4450494074024989
#>     Attrib V26    -0.4632712176627518
#>     Attrib V27    -0.012352755589874377
#>     Attrib V28    -0.10357480583934005
#>     Attrib V29    -0.2834719691105776
#>     Attrib V3    -0.2036713572966489
#>     Attrib V30    0.030363978159282153
#>     Attrib V31    -0.5623904569425121
#>     Attrib V32    0.01281182956035431
#>     Attrib V33    0.41615871142536986
#>     Attrib V34    -0.005703485522462715
#>     Attrib V35    -0.04131123722045842
#>     Attrib V36    -0.37782070056408484
#>     Attrib V37    -0.5879061482983362
#>     Attrib V38    0.05352897234712044
#>     Attrib V39    0.044288694395228444
#>     Attrib V4    0.5746477267254165
#>     Attrib V40    -0.10690159156042486
#>     Attrib V41    0.01683945552625273
#>     Attrib V42    -0.13433207882799542
#>     Attrib V43    0.14608526352292756
#>     Attrib V44    0.017289614074763798
#>     Attrib V45    0.15845063602617435
#>     Attrib V46    -0.04980578128781948
#>     Attrib V47    -0.14188807675943754
#>     Attrib V48    0.4412186491543828
#>     Attrib V49    0.24433573530587085
#>     Attrib V5    -0.062401433610562655
#>     Attrib V50    -0.20431488084499405
#>     Attrib V51    0.1211304986738681
#>     Attrib V52    -0.13363685253704552
#>     Attrib V53    -0.06700899614438202
#>     Attrib V54    0.41179410781364645
#>     Attrib V55    0.20138632458416197
#>     Attrib V56    0.013536003550629989
#>     Attrib V57    0.18977354180590952
#>     Attrib V58    0.15188239911655121
#>     Attrib V59    0.3345976983353777
#>     Attrib V6    -0.007843654482274953
#>     Attrib V60    0.24694863900374103
#>     Attrib V7    0.03396300776464502
#>     Attrib V8    0.004195883922554608
#>     Attrib V9    0.16032133539911106
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.22195799644014114
#>     Attrib V1    -0.0029152130560250963
#>     Attrib V10    -0.04513915167718421
#>     Attrib V11    -0.1631009725060869
#>     Attrib V12    -0.09898825781881496
#>     Attrib V13    0.11727671841018356
#>     Attrib V14    0.17796582895546942
#>     Attrib V15    0.1399972142050326
#>     Attrib V16    0.1372799527893351
#>     Attrib V17    0.22839445497680425
#>     Attrib V18    0.04997340185754386
#>     Attrib V19    0.0071422407049214305
#>     Attrib V2    0.1290037952824852
#>     Attrib V20    -0.15624374743445246
#>     Attrib V21    -0.048664771645186636
#>     Attrib V22    0.004324123644368511
#>     Attrib V23    -0.17599854444261046
#>     Attrib V24    -0.1139618394547136
#>     Attrib V25    0.27983414426423225
#>     Attrib V26    0.13683399747825387
#>     Attrib V27    -0.18235109117198414
#>     Attrib V28    -0.04437828346722538
#>     Attrib V29    0.12390123188282313
#>     Attrib V3    0.182664267380186
#>     Attrib V30    -0.04990385720008909
#>     Attrib V31    0.4880715323917473
#>     Attrib V32    0.17039121771075283
#>     Attrib V33    -0.06897477653574546
#>     Attrib V34    0.01591363981634859
#>     Attrib V35    0.03580993556130814
#>     Attrib V36    0.26750629966637285
#>     Attrib V37    0.3882408510452091
#>     Attrib V38    -0.10542757605874929
#>     Attrib V39    0.0556312834898095
#>     Attrib V4    -0.30051182093411555
#>     Attrib V40    0.17467116132323243
#>     Attrib V41    0.021624623206223773
#>     Attrib V42    0.14693204638546317
#>     Attrib V43    -0.09116489691035445
#>     Attrib V44    -0.10869055792625107
#>     Attrib V45    -0.17783494436352268
#>     Attrib V46    -0.07552302872395521
#>     Attrib V47    0.016672994133656877
#>     Attrib V48    -0.19573798175457388
#>     Attrib V49    -0.1489696030848192
#>     Attrib V5    0.06193650001179968
#>     Attrib V50    0.17513432970284398
#>     Attrib V51    -0.14761679791505666
#>     Attrib V52    -0.014452687479309128
#>     Attrib V53    0.029680941641010986
#>     Attrib V54    -0.09652456235894122
#>     Attrib V55    0.020985610334791866
#>     Attrib V56    0.043241312028734886
#>     Attrib V57    0.07327490492603492
#>     Attrib V58    0.008133366278684575
#>     Attrib V59    -0.06331408053589746
#>     Attrib V6    0.05207533653553103
#>     Attrib V60    -0.028200088661477846
#>     Attrib V7    0.06285989317403741
#>     Attrib V8    0.05261419160638087
#>     Attrib V9    -0.16774317883428966
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.0799662764807222
#>     Attrib V1    0.2538520524080166
#>     Attrib V10    -0.2670316382661684
#>     Attrib V11    -0.1969749054265622
#>     Attrib V12    -0.22514224753973006
#>     Attrib V13    -0.19451603494905093
#>     Attrib V14    0.24946489801359645
#>     Attrib V15    0.2575423612879885
#>     Attrib V16    0.23166951156933896
#>     Attrib V17    0.08553569830833334
#>     Attrib V18    0.1896042795174685
#>     Attrib V19    0.08602892733663246
#>     Attrib V2    -0.07881067405167926
#>     Attrib V20    0.3843821034403907
#>     Attrib V21    0.18505633084951828
#>     Attrib V22    -0.13244873391284503
#>     Attrib V23    -0.05778343075835182
#>     Attrib V24    -0.11446811384773233
#>     Attrib V25    -0.7344847977137984
#>     Attrib V26    -0.7300010432938868
#>     Attrib V27    -0.3472612736572586
#>     Attrib V28    -0.43356327458511973
#>     Attrib V29    -0.5699588842530514
#>     Attrib V3    -0.19672541365988883
#>     Attrib V30    -0.11719830545230188
#>     Attrib V31    -0.7802384069248883
#>     Attrib V32    -0.1711144840431976
#>     Attrib V33    0.42485774742737753
#>     Attrib V34    0.05521635278524776
#>     Attrib V35    0.010373254568393128
#>     Attrib V36    -0.31209515490842077
#>     Attrib V37    -0.5826044844878344
#>     Attrib V38    0.2571784473110034
#>     Attrib V39    0.17522993396754802
#>     Attrib V4    0.6973263528280851
#>     Attrib V40    -0.026494070819279684
#>     Attrib V41    -0.07697182088788124
#>     Attrib V42    -0.12541302499479792
#>     Attrib V43    0.24498835023518226
#>     Attrib V44    0.15970917784426247
#>     Attrib V45    -0.027378228192903878
#>     Attrib V46    -0.21028811260676739
#>     Attrib V47    -0.33897663287670154
#>     Attrib V48    0.32768811939580444
#>     Attrib V49    0.22457842079556373
#>     Attrib V5    -0.017245063179951798
#>     Attrib V50    -0.19928549490718023
#>     Attrib V51    0.006100568589700299
#>     Attrib V52    -0.3465077900686694
#>     Attrib V53    0.09632842848320468
#>     Attrib V54    0.7218436799557151
#>     Attrib V55    0.35966419760084417
#>     Attrib V56    0.1799296538201988
#>     Attrib V57    0.2518789705523294
#>     Attrib V58    0.2611550111230388
#>     Attrib V59    0.5675249790411092
#>     Attrib V6    -0.10387016756268255
#>     Attrib V60    0.42190781806538763
#>     Attrib V7    0.04680343100893747
#>     Attrib V8    0.10026752084430969
#>     Attrib V9    0.10836151714142292
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.08625073813680904
#>     Attrib V1    0.18599998501507972
#>     Attrib V10    -0.13415071124781433
#>     Attrib V11    -0.04984158814799078
#>     Attrib V12    -0.003556971076527598
#>     Attrib V13    -0.09233102106856556
#>     Attrib V14    0.14973409450513503
#>     Attrib V15    0.1198501666294922
#>     Attrib V16    0.10459951621859044
#>     Attrib V17    -0.03446073728143844
#>     Attrib V18    0.08205215210948719
#>     Attrib V19    -0.11261748181856245
#>     Attrib V2    -0.0029302515844691302
#>     Attrib V20    0.051755301020936006
#>     Attrib V21    0.010309076218714564
#>     Attrib V22    -0.16453981045369948
#>     Attrib V23    -0.06389002313194252
#>     Attrib V24    -0.10475846375676906
#>     Attrib V25    -0.3395154385690376
#>     Attrib V26    -0.34784350791846974
#>     Attrib V27    -0.14293755811309525
#>     Attrib V28    -0.13526702218426062
#>     Attrib V29    -0.2551060114601747
#>     Attrib V3    0.014970996455678058
#>     Attrib V30    -0.03842005224469493
#>     Attrib V31    -0.3453940199854367
#>     Attrib V32    -0.02897769478815537
#>     Attrib V33    0.22121267885062929
#>     Attrib V34    0.0456946596199043
#>     Attrib V35    0.013064374533038046
#>     Attrib V36    -0.07193100074976129
#>     Attrib V37    -0.22725009681411865
#>     Attrib V38    0.04050567549029778
#>     Attrib V39    0.08402189279225646
#>     Attrib V4    0.31114532193473965
#>     Attrib V40    -0.04565448233497605
#>     Attrib V41    -0.04731917676268624
#>     Attrib V42    -0.0429332407414896
#>     Attrib V43    0.0037253405825320098
#>     Attrib V44    0.030412574494156453
#>     Attrib V45    0.047486538664784195
#>     Attrib V46    -0.023801780994782914
#>     Attrib V47    -0.09912011614787017
#>     Attrib V48    0.1362672398321986
#>     Attrib V49    0.16217716293231987
#>     Attrib V5    0.04675164088987984
#>     Attrib V50    -0.051582874915866155
#>     Attrib V51    0.09435230841925835
#>     Attrib V52    -0.009465776739576144
#>     Attrib V53    0.06182733392739779
#>     Attrib V54    0.26080090300852304
#>     Attrib V55    0.20437392380509334
#>     Attrib V56    0.04547534406843696
#>     Attrib V57    0.2369345369087466
#>     Attrib V58    0.19510910049838953
#>     Attrib V59    0.23931416272871828
#>     Attrib V6    -0.01755347527957213
#>     Attrib V60    0.22158330120246633
#>     Attrib V7    0.018267757495248654
#>     Attrib V8    0.0763168964863244
#>     Attrib V9    0.08640224461945784
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
