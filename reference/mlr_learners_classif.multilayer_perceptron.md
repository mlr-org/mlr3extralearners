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
#>     Threshold    -0.18494776918369013
#>     Node 2    2.072972726004056
#>     Node 3    1.110240253257975
#>     Node 4    1.2175575593156465
#>     Node 5    -2.605185733294006
#>     Node 6    1.358009466741199
#>     Node 7    3.412965869726013
#>     Node 8    0.9744019410096117
#>     Node 9    3.933846631555696
#>     Node 10    -1.240169627093581
#>     Node 11    1.039090671321015
#>     Node 12    1.3703807025392452
#>     Node 13    1.2866850457760575
#>     Node 14    1.1847637380767702
#>     Node 15    -2.340183008139978
#>     Node 16    0.23681255953837224
#>     Node 17    -0.07964465493976267
#>     Node 18    1.018184709563282
#>     Node 19    2.2524104868294645
#>     Node 20    1.7642208429060247
#>     Node 21    -3.0327547655551155
#>     Node 22    0.18059613830630744
#>     Node 23    1.6197090358800685
#>     Node 24    -1.6943408959141262
#>     Node 25    3.249980438654754
#>     Node 26    -0.6538809578466079
#>     Node 27    2.071238814556313
#>     Node 28    -2.8228821071071195
#>     Node 29    1.5794776826805568
#>     Node 30    -0.48638193625216175
#>     Node 31    1.2084245383704741
#>     Node 32    0.2612601424564483
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.19897341050791437
#>     Node 2    -2.07192466520774
#>     Node 3    -1.11985280747915
#>     Node 4    -1.181115351944118
#>     Node 5    2.629298547257316
#>     Node 6    -1.3443943807956558
#>     Node 7    -3.402696668828334
#>     Node 8    -1.0047457570040979
#>     Node 9    -3.942196369761296
#>     Node 10    1.1799290329899987
#>     Node 11    -1.0086033517268793
#>     Node 12    -1.4380742162540963
#>     Node 13    -1.2370112036747136
#>     Node 14    -1.1404227145932044
#>     Node 15    2.3183933408620967
#>     Node 16    -0.2636208460885879
#>     Node 17    0.12024375481401645
#>     Node 18    -1.0025237203004906
#>     Node 19    -2.236000616667185
#>     Node 20    -1.7481302960392777
#>     Node 21    3.072318675037389
#>     Node 22    -0.23959837090509076
#>     Node 23    -1.681226775098121
#>     Node 24    1.6944700557477155
#>     Node 25    -3.2314514876940335
#>     Node 26    0.5853214201821718
#>     Node 27    -2.0954312901866734
#>     Node 28    2.8189599467890094
#>     Node 29    -1.5960818761270676
#>     Node 30    0.5689208337507929
#>     Node 31    -1.177378259514249
#>     Node 32    -0.2867344817251221
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.1938336190355824
#>     Attrib V1    0.6219972687335314
#>     Attrib V10    0.4772285884020042
#>     Attrib V11    0.17996989689096551
#>     Attrib V12    0.2613908197880361
#>     Attrib V13    -0.3603030632467891
#>     Attrib V14    -0.8268204822860831
#>     Attrib V15    -0.38860945556126936
#>     Attrib V16    -0.10140260185758689
#>     Attrib V17    -0.4456658345205375
#>     Attrib V18    -0.38756952571484155
#>     Attrib V19    0.06384411681376566
#>     Attrib V2    -0.004271605591074953
#>     Attrib V20    0.3155851822216329
#>     Attrib V21    0.19402966692381485
#>     Attrib V22    0.12730502998933005
#>     Attrib V23    0.10468739466406453
#>     Attrib V24    0.11481700815698295
#>     Attrib V25    -0.26603471259189093
#>     Attrib V26    -0.6074325091729252
#>     Attrib V27    -0.4469075549725585
#>     Attrib V28    0.28578333200661893
#>     Attrib V29    0.36251527344181755
#>     Attrib V3    0.1685915619347463
#>     Attrib V30    0.14029907741738443
#>     Attrib V31    -1.000194043537254
#>     Attrib V32    1.040762392600371
#>     Attrib V33    0.44880907119839425
#>     Attrib V34    -0.10193523322222273
#>     Attrib V35    0.2405384209199157
#>     Attrib V36    -0.6541239598241476
#>     Attrib V37    -0.6544259536663574
#>     Attrib V38    0.3965159387007673
#>     Attrib V39    -0.07229267994857032
#>     Attrib V4    0.4127622138062963
#>     Attrib V40    -0.4595532102660429
#>     Attrib V41    0.40876632054385825
#>     Attrib V42    0.3886758820225963
#>     Attrib V43    0.4577015119386077
#>     Attrib V44    0.46835281464423556
#>     Attrib V45    0.371278325667957
#>     Attrib V46    0.4291039131856065
#>     Attrib V47    0.06657523903905133
#>     Attrib V48    0.2136398411279435
#>     Attrib V49    0.5171394864233941
#>     Attrib V5    -0.15282462575873568
#>     Attrib V50    -0.9757870523716158
#>     Attrib V51    -0.13422656779813041
#>     Attrib V52    -0.13169377307356292
#>     Attrib V53    -0.027819788574082426
#>     Attrib V54    -0.3888548857274686
#>     Attrib V55    -1.1784317045167976
#>     Attrib V56    0.5187045035886039
#>     Attrib V57    -0.4276673917585215
#>     Attrib V58    -0.2191206273917318
#>     Attrib V59    0.39457033355140586
#>     Attrib V6    -0.6416771928982254
#>     Attrib V60    0.5207377941096824
#>     Attrib V7    -0.299000328430478
#>     Attrib V8    -0.6303263309661695
#>     Attrib V9    0.5202671437360578
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.07299397058937364
#>     Attrib V1    0.4550518508827807
#>     Attrib V10    0.016915889406866162
#>     Attrib V11    -0.1486085741362213
#>     Attrib V12    -0.2134825483378253
#>     Attrib V13    -0.016710859765763465
#>     Attrib V14    0.1709356787410174
#>     Attrib V15    0.42446795722865027
#>     Attrib V16    0.22320193003629943
#>     Attrib V17    -0.08381483119172599
#>     Attrib V18    -0.12565969489590378
#>     Attrib V19    0.24263779987287878
#>     Attrib V2    0.07595066365048167
#>     Attrib V20    0.40586109772989337
#>     Attrib V21    0.1705943151680894
#>     Attrib V22    0.18375334113501085
#>     Attrib V23    0.19144019710808105
#>     Attrib V24    0.1596391459064389
#>     Attrib V25    -0.076015422277225
#>     Attrib V26    -0.471252437733235
#>     Attrib V27    -0.48243466388469314
#>     Attrib V28    -0.11723226646813123
#>     Attrib V29    -0.09767291712153554
#>     Attrib V3    0.024870821665197888
#>     Attrib V30    -0.14496879708774954
#>     Attrib V31    -0.5120885466913024
#>     Attrib V32    0.44139157795392986
#>     Attrib V33    0.23201497271657276
#>     Attrib V34    -0.12131920994865615
#>     Attrib V35    0.126883061635215
#>     Attrib V36    -0.2837334735732821
#>     Attrib V37    -0.36964033793698703
#>     Attrib V38    0.16376979288324828
#>     Attrib V39    0.051578762063113896
#>     Attrib V4    0.1518678966626723
#>     Attrib V40    -0.20183341633186366
#>     Attrib V41    -0.05024112742571334
#>     Attrib V42    0.04386790904669448
#>     Attrib V43    0.11615314673005366
#>     Attrib V44    0.10598883161187844
#>     Attrib V45    -0.07944394173101493
#>     Attrib V46    -0.06010348349437168
#>     Attrib V47    -0.049328456632210735
#>     Attrib V48    0.08896889941780811
#>     Attrib V49    0.28166196820108097
#>     Attrib V5    -0.2437540754384258
#>     Attrib V50    -0.25105183354395905
#>     Attrib V51    0.08277222643330318
#>     Attrib V52    -0.10138131314788591
#>     Attrib V53    0.24524795300683108
#>     Attrib V54    0.2380715443189268
#>     Attrib V55    0.049571386348688386
#>     Attrib V56    0.5687300962616378
#>     Attrib V57    -0.029863875239611447
#>     Attrib V58    0.38103160738278097
#>     Attrib V59    0.46975739678080836
#>     Attrib V6    -0.37494448690935184
#>     Attrib V60    0.4157889131446324
#>     Attrib V7    0.08435080297827034
#>     Attrib V8    -0.3193727935244831
#>     Attrib V9    0.03522155516495189
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.044291931249429796
#>     Attrib V1    0.4265883791970052
#>     Attrib V10    0.12956990159860163
#>     Attrib V11    -0.06595726475238894
#>     Attrib V12    -0.2026728057222954
#>     Attrib V13    -0.0792293363212329
#>     Attrib V14    0.045492054906153406
#>     Attrib V15    0.3027828997127388
#>     Attrib V16    0.2066534439990722
#>     Attrib V17    -0.12316724373654415
#>     Attrib V18    -0.1423710442041615
#>     Attrib V19    0.24768411433993262
#>     Attrib V2    -0.01224779653001802
#>     Attrib V20    0.43832234088042005
#>     Attrib V21    0.27516443768591164
#>     Attrib V22    0.20903964875067074
#>     Attrib V23    0.2785906497495269
#>     Attrib V24    0.1776427908807213
#>     Attrib V25    -0.1515837384961019
#>     Attrib V26    -0.48111468352700293
#>     Attrib V27    -0.48541549882668883
#>     Attrib V28    0.04840578004579412
#>     Attrib V29    0.1300885690130275
#>     Attrib V3    0.03844209933688532
#>     Attrib V30    -0.1186436837725871
#>     Attrib V31    -0.6214705498522525
#>     Attrib V32    0.616732357155931
#>     Attrib V33    0.34914987439226736
#>     Attrib V34    -0.07024323227175881
#>     Attrib V35    0.1413002449528639
#>     Attrib V36    -0.39115837605909465
#>     Attrib V37    -0.496171484443947
#>     Attrib V38    0.1554041472985585
#>     Attrib V39    -0.001659824713366018
#>     Attrib V4    0.20047409844549216
#>     Attrib V40    -0.2806553730824064
#>     Attrib V41    0.00344892119017226
#>     Attrib V42    0.13677604955003278
#>     Attrib V43    0.14851432334392908
#>     Attrib V44    0.15742586874410372
#>     Attrib V45    0.04439168838908657
#>     Attrib V46    0.0036430591573395907
#>     Attrib V47    -0.07655750376056296
#>     Attrib V48    0.185126989797138
#>     Attrib V49    0.4556121313474319
#>     Attrib V5    -0.20650786396128828
#>     Attrib V50    -0.37887764829815845
#>     Attrib V51    0.1299192791425127
#>     Attrib V52    -0.13138528723248377
#>     Attrib V53    0.23108737173288035
#>     Attrib V54    0.005974574844656207
#>     Attrib V55    -0.20154199581127885
#>     Attrib V56    0.5391765862626653
#>     Attrib V57    -0.0993700372874069
#>     Attrib V58    0.2781147811608552
#>     Attrib V59    0.3890361643852014
#>     Attrib V6    -0.461424534833293
#>     Attrib V60    0.38580835342093034
#>     Attrib V7    0.016412851573407505
#>     Attrib V8    -0.4306641755568422
#>     Attrib V9    0.23461022743963209
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.24749142107338037
#>     Attrib V1    -0.6405977550298977
#>     Attrib V10    -0.7404628781744756
#>     Attrib V11    -0.38887220287146884
#>     Attrib V12    -0.08468277853817939
#>     Attrib V13    -0.1648167431341226
#>     Attrib V14    0.2155709104858356
#>     Attrib V15    -0.09301565693959178
#>     Attrib V16    -0.1935557796123211
#>     Attrib V17    0.4038174066937932
#>     Attrib V18    0.3856526935054581
#>     Attrib V19    -0.5550587683100425
#>     Attrib V2    0.2007576652998868
#>     Attrib V20    -1.1621824155239457
#>     Attrib V21    -0.8904992107930674
#>     Attrib V22    -0.7787667574332496
#>     Attrib V23    -0.685793143513867
#>     Attrib V24    -0.4701985978878916
#>     Attrib V25    0.22445979195765198
#>     Attrib V26    0.489056986766908
#>     Attrib V27    0.7313973430756021
#>     Attrib V28    -0.1484304497505669
#>     Attrib V29    0.026080477248557398
#>     Attrib V3    0.075376306633169
#>     Attrib V30    0.2604073432214302
#>     Attrib V31    1.733133788048754
#>     Attrib V32    -0.7941041751018648
#>     Attrib V33    -0.7129469847193795
#>     Attrib V34    0.4496224624513662
#>     Attrib V35    0.2342748652003439
#>     Attrib V36    1.113158976141133
#>     Attrib V37    1.5446503711349164
#>     Attrib V38    -0.5947778386205148
#>     Attrib V39    -0.3796232466614614
#>     Attrib V4    -0.6300492862364924
#>     Attrib V40    0.3510831599677591
#>     Attrib V41    -0.27406787619773604
#>     Attrib V42    -0.2656275466375753
#>     Attrib V43    -0.5555949807598884
#>     Attrib V44    -0.5341431733317891
#>     Attrib V45    -0.30110862978770375
#>     Attrib V46    -0.13846835719827333
#>     Attrib V47    0.28261521732909006
#>     Attrib V48    -0.11132250080698011
#>     Attrib V49    -0.9667660032008547
#>     Attrib V5    0.18637505119342945
#>     Attrib V50    0.9381868030345679
#>     Attrib V51    -0.1439348824030645
#>     Attrib V52    0.36121495454083014
#>     Attrib V53    -0.24699462908106132
#>     Attrib V54    -0.16530669599327433
#>     Attrib V55    0.6293085646920972
#>     Attrib V56    -0.7269931841164439
#>     Attrib V57    0.2020853958771715
#>     Attrib V58    -0.35836167898978527
#>     Attrib V59    -0.7904847721936653
#>     Attrib V6    0.8068048378080263
#>     Attrib V60    -0.3300964521586416
#>     Attrib V7    -0.34532089777929365
#>     Attrib V8    0.08427930126158567
#>     Attrib V9    -0.9571185249874385
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.12090687743090557
#>     Attrib V1    0.5742974976641801
#>     Attrib V10    0.04138902473123741
#>     Attrib V11    -0.12674824650444622
#>     Attrib V12    -0.22589678900700322
#>     Attrib V13    -0.15850021890409227
#>     Attrib V14    0.025969961963103604
#>     Attrib V15    0.3333272495643533
#>     Attrib V16    0.32369901115461647
#>     Attrib V17    -0.12154590700746681
#>     Attrib V18    -0.10503078130179695
#>     Attrib V19    0.23189109249031467
#>     Attrib V2    0.033484503270980535
#>     Attrib V20    0.46480754813798403
#>     Attrib V21    0.26025040502545144
#>     Attrib V22    0.22889649025540265
#>     Attrib V23    0.272340149461714
#>     Attrib V24    0.21524954528193066
#>     Attrib V25    -0.11943790050629963
#>     Attrib V26    -0.6127327996907984
#>     Attrib V27    -0.5657757068496869
#>     Attrib V28    -0.1026049813923116
#>     Attrib V29    0.028947411865733696
#>     Attrib V3    0.020774916255364782
#>     Attrib V30    -0.1364039514299105
#>     Attrib V31    -0.6664690188382482
#>     Attrib V32    0.6792564078314615
#>     Attrib V33    0.3940812838827544
#>     Attrib V34    -0.09023668242269958
#>     Attrib V35    0.15089975308489875
#>     Attrib V36    -0.4168975620086358
#>     Attrib V37    -0.5159995997823272
#>     Attrib V38    0.19527586948909498
#>     Attrib V39    -0.012396592760214898
#>     Attrib V4    0.25906884821692844
#>     Attrib V40    -0.3222366102170824
#>     Attrib V41    0.05451038452132606
#>     Attrib V42    0.1471872909901926
#>     Attrib V43    0.15290272284951004
#>     Attrib V44    0.09025923374639123
#>     Attrib V45    -0.03883584701036202
#>     Attrib V46    -2.2469193063106354E-4
#>     Attrib V47    -0.10000344958165863
#>     Attrib V48    0.1256124672876132
#>     Attrib V49    0.3877658233151753
#>     Attrib V5    -0.29152243573274467
#>     Attrib V50    -0.37447214174039745
#>     Attrib V51    0.07862275229300256
#>     Attrib V52    -0.22281667247565362
#>     Attrib V53    0.24719335136158102
#>     Attrib V54    0.0781690083214278
#>     Attrib V55    -0.19659624848494922
#>     Attrib V56    0.633229522449218
#>     Attrib V57    -0.035615676436529305
#>     Attrib V58    0.365107662297946
#>     Attrib V59    0.5256276785828488
#>     Attrib V6    -0.42903417788928216
#>     Attrib V60    0.5532295447373694
#>     Attrib V7    0.07247157572462928
#>     Attrib V8    -0.3924890676729529
#>     Attrib V9    0.1972863246393951
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5310509191941527
#>     Attrib V1    0.5678794852820946
#>     Attrib V10    1.0903998180626993
#>     Attrib V11    1.0850693160580005
#>     Attrib V12    1.2760677839354349
#>     Attrib V13    0.04914715434046882
#>     Attrib V14    -0.6850534960748081
#>     Attrib V15    -0.5249932351614118
#>     Attrib V16    -0.3558761496884358
#>     Attrib V17    -0.7473727215764789
#>     Attrib V18    -0.3080727469181332
#>     Attrib V19    0.08196086784002266
#>     Attrib V2    0.3373604157696104
#>     Attrib V20    0.08559231974955651
#>     Attrib V21    0.2557627806436414
#>     Attrib V22    -0.2598719964060918
#>     Attrib V23    -0.16770119082629395
#>     Attrib V24    0.5981555861868834
#>     Attrib V25    0.7807116491276064
#>     Attrib V26    1.2256659948836697
#>     Attrib V27    1.4271155761894585
#>     Attrib V28    1.3663431423359202
#>     Attrib V29    0.8873371689365804
#>     Attrib V3    0.11799605316702885
#>     Attrib V30    -0.1709786438670823
#>     Attrib V31    -1.4008544171813915
#>     Attrib V32    -0.024767464253436882
#>     Attrib V33    -0.5862772752213418
#>     Attrib V34    -0.2951812092825729
#>     Attrib V35    0.45339475004324653
#>     Attrib V36    -0.44764051065159044
#>     Attrib V37    0.05917438656404322
#>     Attrib V38    0.4875425379409427
#>     Attrib V39    -0.044550947557104065
#>     Attrib V4    0.2436518132866428
#>     Attrib V40    -0.3580185249174186
#>     Attrib V41    0.4737241460905286
#>     Attrib V42    -0.1587310560802023
#>     Attrib V43    -0.17160664399870218
#>     Attrib V44    0.34200791505154476
#>     Attrib V45    0.6706509695113613
#>     Attrib V46    0.8889377011935617
#>     Attrib V47    0.5033648447567944
#>     Attrib V48    0.7085642083414979
#>     Attrib V49    1.019500742922913
#>     Attrib V5    0.0976956969213177
#>     Attrib V50    -0.40687349579000087
#>     Attrib V51    1.0222719222386878
#>     Attrib V52    0.725200790937487
#>     Attrib V53    0.2964522023685992
#>     Attrib V54    0.6633016893729167
#>     Attrib V55    -0.5936639926972088
#>     Attrib V56    -0.4561698202646192
#>     Attrib V57    -0.4111163023377542
#>     Attrib V58    -0.6609722490995242
#>     Attrib V59    0.15341959782201572
#>     Attrib V6    0.18295214116752373
#>     Attrib V60    0.5886142170106784
#>     Attrib V7    0.1664388797218755
#>     Attrib V8    -0.5811756792809561
#>     Attrib V9    0.9981198099501943
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.19633631434620152
#>     Attrib V1    0.34417854640885837
#>     Attrib V10    0.18037593667935417
#>     Attrib V11    0.06460956975936513
#>     Attrib V12    0.026778468978867903
#>     Attrib V13    -0.033511504233776614
#>     Attrib V14    -0.11827530513707564
#>     Attrib V15    0.0853380034989962
#>     Attrib V16    0.10488716942842441
#>     Attrib V17    -0.19877495406080578
#>     Attrib V18    -0.17635713988478469
#>     Attrib V19    0.13103748508332205
#>     Attrib V2    0.008192460301597248
#>     Attrib V20    0.21578160300075047
#>     Attrib V21    0.09327479613279432
#>     Attrib V22    0.019475270196440426
#>     Attrib V23    0.09145775524519373
#>     Attrib V24    0.19590629974842272
#>     Attrib V25    0.031927508075226235
#>     Attrib V26    -0.13034261997088095
#>     Attrib V27    -0.05602494583473586
#>     Attrib V28    0.23509956679211638
#>     Attrib V29    0.16826182918049756
#>     Attrib V3    -0.012536262222353104
#>     Attrib V30    -0.08105513626994516
#>     Attrib V31    -0.5431208757448562
#>     Attrib V32    0.4028525961222069
#>     Attrib V33    0.1951697047113926
#>     Attrib V34    -0.03958143058002163
#>     Attrib V35    0.19977263929854303
#>     Attrib V36    -0.2175099763537758
#>     Attrib V37    -0.3081746328035487
#>     Attrib V38    0.19777272104556357
#>     Attrib V39    -0.07729671381512146
#>     Attrib V4    0.21759764312499877
#>     Attrib V40    -0.3024532352090661
#>     Attrib V41    -0.008663642203307028
#>     Attrib V42    -0.05532895814178551
#>     Attrib V43    0.08762768506124055
#>     Attrib V44    0.1283104596164562
#>     Attrib V45    0.040579315052474134
#>     Attrib V46    0.08561405678614674
#>     Attrib V47    -0.018069952478804965
#>     Attrib V48    0.17680667747011947
#>     Attrib V49    0.3484358778779964
#>     Attrib V5    -0.19512740605229717
#>     Attrib V50    -0.3524209565733739
#>     Attrib V51    0.07982857595841271
#>     Attrib V52    -0.07396686691735624
#>     Attrib V53    0.22986457836230048
#>     Attrib V54    0.062485266723685415
#>     Attrib V55    -0.2990274092020579
#>     Attrib V56    0.2635699108444564
#>     Attrib V57    -0.07411784998411264
#>     Attrib V58    0.05914405971201146
#>     Attrib V59    0.3332812144923206
#>     Attrib V6    -0.357156511794168
#>     Attrib V60    0.4180702149909984
#>     Attrib V7    -0.008593277625315261
#>     Attrib V8    -0.42043862006725485
#>     Attrib V9    0.19107962584830887
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.17499375076204965
#>     Attrib V1    0.16152037912908743
#>     Attrib V10    1.1402685785843651
#>     Attrib V11    1.26703764320654
#>     Attrib V12    1.6253250482913204
#>     Attrib V13    0.32172902071705445
#>     Attrib V14    -0.6021365118684193
#>     Attrib V15    -0.785935373763752
#>     Attrib V16    -0.5622176641995701
#>     Attrib V17    -0.5266599582808428
#>     Attrib V18    0.07163174601476315
#>     Attrib V19    0.3199228317521495
#>     Attrib V2    0.33413300234847626
#>     Attrib V20    0.054571709722747073
#>     Attrib V21    0.1850137369146477
#>     Attrib V22    -0.06377577149071233
#>     Attrib V23    0.30002242254531536
#>     Attrib V24    0.956879180470776
#>     Attrib V25    1.0944589802872218
#>     Attrib V26    1.6564095001888428
#>     Attrib V27    1.7856641417771077
#>     Attrib V28    1.375527197901548
#>     Attrib V29    1.0568593961531165
#>     Attrib V3    0.29881183336829686
#>     Attrib V30    -0.03919037707222949
#>     Attrib V31    -1.2439422682424521
#>     Attrib V32    0.13871938079481366
#>     Attrib V33    -0.7616696386950602
#>     Attrib V34    -0.37511027312113715
#>     Attrib V35    0.2781190361657795
#>     Attrib V36    -0.672375738942035
#>     Attrib V37    -0.35943053611534725
#>     Attrib V38    0.2166588125175302
#>     Attrib V39    0.08674200280032371
#>     Attrib V4    0.39547329703558765
#>     Attrib V40    -0.1607030283655221
#>     Attrib V41    0.7912841686734625
#>     Attrib V42    0.005821837441881976
#>     Attrib V43    0.17081144537382312
#>     Attrib V44    0.5660098234502351
#>     Attrib V45    0.6625668028264058
#>     Attrib V46    0.8786097546353832
#>     Attrib V47    0.5841683698156068
#>     Attrib V48    0.8538123887398515
#>     Attrib V49    1.435226319359883
#>     Attrib V5    0.2038315839764536
#>     Attrib V50    -0.3095297447151921
#>     Attrib V51    1.2862765923079138
#>     Attrib V52    1.1245891661451555
#>     Attrib V53    0.5813825204785882
#>     Attrib V54    0.4893139450986497
#>     Attrib V55    -0.4930430805924687
#>     Attrib V56    -0.1996082593927277
#>     Attrib V57    -0.603738262996062
#>     Attrib V58    -0.5241535808540564
#>     Attrib V59    -0.10902272301209773
#>     Attrib V6    0.27050404363842756
#>     Attrib V60    -0.0027207139184418287
#>     Attrib V7    -0.19813251434681017
#>     Attrib V8    -0.5770807367517927
#>     Attrib V9    0.9513972973752497
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.20188604899950607
#>     Attrib V1    -0.27567261640780333
#>     Attrib V10    -0.22019072453743826
#>     Attrib V11    -0.061219882680376175
#>     Attrib V12    0.014143923947309263
#>     Attrib V13    0.1332446343821176
#>     Attrib V14    0.23604830097958848
#>     Attrib V15    -0.08961526961660037
#>     Attrib V16    -0.0508525886586279
#>     Attrib V17    0.2655741129626853
#>     Attrib V18    0.25944530393779597
#>     Attrib V19    -0.09311934330473477
#>     Attrib V2    0.022277339636795592
#>     Attrib V20    -0.2830425934635136
#>     Attrib V21    -0.18598376953944665
#>     Attrib V22    -0.19949279394615724
#>     Attrib V23    -0.22056587757690302
#>     Attrib V24    -0.301026600923245
#>     Attrib V25    -0.03465292327484242
#>     Attrib V26    0.26139390410108687
#>     Attrib V27    0.24018308510161154
#>     Attrib V28    -0.17503831756404484
#>     Attrib V29    -0.2745198292157134
#>     Attrib V3    0.04147243090230642
#>     Attrib V30    0.14371755052480523
#>     Attrib V31    0.7514773550992371
#>     Attrib V32    -0.6407654870652816
#>     Attrib V33    -0.12109874348866197
#>     Attrib V34    0.23152323707247702
#>     Attrib V35    -0.02129050680295703
#>     Attrib V36    0.5198863983329917
#>     Attrib V37    0.5188453645364003
#>     Attrib V38    -0.17200056402220013
#>     Attrib V39    -0.014683791818846008
#>     Attrib V4    -0.181418261343416
#>     Attrib V40    0.37772163293544814
#>     Attrib V41    -0.09481103662648999
#>     Attrib V42    -0.14469766348723148
#>     Attrib V43    -0.20729067087064026
#>     Attrib V44    -0.21582141708571878
#>     Attrib V45    -0.10399155652585451
#>     Attrib V46    -0.267772291474091
#>     Attrib V47    -0.11720672800353972
#>     Attrib V48    -0.2690672599508704
#>     Attrib V49    -0.5492787864941979
#>     Attrib V5    0.3054410209529955
#>     Attrib V50    0.46302937170410585
#>     Attrib V51    -0.31509090832755676
#>     Attrib V52    -0.04267386808159623
#>     Attrib V53    -0.10867372412588212
#>     Attrib V54    0.15911896347627097
#>     Attrib V55    0.3203301548984785
#>     Attrib V56    -0.4360603380100687
#>     Attrib V57    0.2709927111109086
#>     Attrib V58    -0.1811443313604687
#>     Attrib V59    -0.30166760291703265
#>     Attrib V6    0.45181395619639025
#>     Attrib V60    -0.2672517422580206
#>     Attrib V7    0.02629121118122279
#>     Attrib V8    0.43779315923112844
#>     Attrib V9    -0.2505242830346274
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.2002283924658432
#>     Attrib V1    0.34547326172186604
#>     Attrib V10    0.1911780100551537
#>     Attrib V11    0.075436914312713
#>     Attrib V12    0.09133657700800117
#>     Attrib V13    -0.06243003496598874
#>     Attrib V14    -0.08189433009142885
#>     Attrib V15    0.0835117138422733
#>     Attrib V16    0.0417018733969689
#>     Attrib V17    -0.19795419510900944
#>     Attrib V18    -0.1495708228716555
#>     Attrib V19    0.11290354546186664
#>     Attrib V2    -0.05529897758384394
#>     Attrib V20    0.3032778851842888
#>     Attrib V21    0.0734593890224457
#>     Attrib V22    -0.03077640326322718
#>     Attrib V23    0.05766500055627997
#>     Attrib V24    0.1514232827968211
#>     Attrib V25    0.04059616557730161
#>     Attrib V26    -0.17166822900746312
#>     Attrib V27    -0.014443843566300662
#>     Attrib V28    0.2975360417286728
#>     Attrib V29    0.16350009096906126
#>     Attrib V3    -0.07590089336295928
#>     Attrib V30    -0.08817617883004313
#>     Attrib V31    -0.6041144503014898
#>     Attrib V32    0.3891936199144482
#>     Attrib V33    0.17174707689707233
#>     Attrib V34    0.0015061175608240063
#>     Attrib V35    0.2567848554457761
#>     Attrib V36    -0.26921156190915113
#>     Attrib V37    -0.359963902604344
#>     Attrib V38    0.2153103340587832
#>     Attrib V39    -0.07840607357889223
#>     Attrib V4    0.14500288510964604
#>     Attrib V40    -0.34163849167579274
#>     Attrib V41    -0.07203539316688602
#>     Attrib V42    0.00650670437743794
#>     Attrib V43    0.11976049836076957
#>     Attrib V44    0.14978673163390333
#>     Attrib V45    0.10008871781861771
#>     Attrib V46    0.05738009222615841
#>     Attrib V47    -0.0064173440744276465
#>     Attrib V48    0.19219727159262434
#>     Attrib V49    0.35356194849665873
#>     Attrib V5    -0.17313278825386053
#>     Attrib V50    -0.3214649600420412
#>     Attrib V51    0.18743612130803974
#>     Attrib V52    -0.06652288167449998
#>     Attrib V53    0.21082174951607316
#>     Attrib V54    0.10804263407470877
#>     Attrib V55    -0.2605184772547556
#>     Attrib V56    0.32649940138216477
#>     Attrib V57    -0.15531799415754985
#>     Attrib V58    0.12204720290584987
#>     Attrib V59    0.2829431621620625
#>     Attrib V6    -0.33968532563694737
#>     Attrib V60    0.3653250927303239
#>     Attrib V7    -0.059749070950418974
#>     Attrib V8    -0.39225033905877776
#>     Attrib V9    0.23424255980275166
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.28747166355027987
#>     Attrib V1    0.41984787656091777
#>     Attrib V10    0.29399356992958214
#>     Attrib V11    0.17430499854140663
#>     Attrib V12    8.911576030944473E-4
#>     Attrib V13    -0.10163666959502307
#>     Attrib V14    -0.18872277673220886
#>     Attrib V15    0.0436892754869873
#>     Attrib V16    0.07822146776787857
#>     Attrib V17    -0.3036562819920576
#>     Attrib V18    -0.23213310031521908
#>     Attrib V19    0.2285758935999797
#>     Attrib V2    -0.012253306398302069
#>     Attrib V20    0.3274449068942644
#>     Attrib V21    0.12125035381563905
#>     Attrib V22    0.15680757901280007
#>     Attrib V23    0.23913256604120947
#>     Attrib V24    0.21500702031405491
#>     Attrib V25    -0.05107417030345092
#>     Attrib V26    -0.2896038510268072
#>     Attrib V27    -0.1343331111156021
#>     Attrib V28    0.31015622751917016
#>     Attrib V29    0.34529714306802645
#>     Attrib V3    -0.053122742231523024
#>     Attrib V30    -0.047827465635836244
#>     Attrib V31    -0.8238325654210027
#>     Attrib V32    0.7081431092089326
#>     Attrib V33    0.3379543014359986
#>     Attrib V34    -0.09342382305283657
#>     Attrib V35    0.21907987017931907
#>     Attrib V36    -0.4698091843700154
#>     Attrib V37    -0.5444218642010791
#>     Attrib V38    0.2505753195976073
#>     Attrib V39    -0.11663761952737507
#>     Attrib V4    0.287238999138975
#>     Attrib V40    -0.3927737846948408
#>     Attrib V41    0.08579530477948244
#>     Attrib V42    0.11941631151324737
#>     Attrib V43    0.26098681627469716
#>     Attrib V44    0.15019329961898484
#>     Attrib V45    0.0979450090457524
#>     Attrib V46    0.1926279863589632
#>     Attrib V47    -0.03660590546011342
#>     Attrib V48    0.24584186401661098
#>     Attrib V49    0.509287732075642
#>     Attrib V5    -0.25748595050555745
#>     Attrib V50    -0.6462392662332732
#>     Attrib V51    0.1463644179266602
#>     Attrib V52    -0.07205152970186085
#>     Attrib V53    0.19685537440905554
#>     Attrib V54    -0.06018522492570057
#>     Attrib V55    -0.5037840909941675
#>     Attrib V56    0.4851726356094718
#>     Attrib V57    -0.22626232793973602
#>     Attrib V58    0.16559563374097683
#>     Attrib V59    0.38560692725324885
#>     Attrib V6    -0.5516174636122453
#>     Attrib V60    0.403972875702498
#>     Attrib V7    -0.07821573415560218
#>     Attrib V8    -0.5056140351193671
#>     Attrib V9    0.37950093293228837
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.054478093285118885
#>     Attrib V1    0.47067356120127
#>     Attrib V10    0.11406175276003908
#>     Attrib V11    -0.048521802188900426
#>     Attrib V12    -0.126254620730049
#>     Attrib V13    -0.03500052850169828
#>     Attrib V14    -0.03670732743978512
#>     Attrib V15    0.20111194620730705
#>     Attrib V16    0.15397701684183596
#>     Attrib V17    -0.11518939616418289
#>     Attrib V18    -0.11499962235183235
#>     Attrib V19    0.2493434941766076
#>     Attrib V2    -0.021006414207024256
#>     Attrib V20    0.45754375818417875
#>     Attrib V21    0.24130036594053847
#>     Attrib V22    0.22152928314032583
#>     Attrib V23    0.33239114606253617
#>     Attrib V24    0.2565640344919546
#>     Attrib V25    -0.037734205859905154
#>     Attrib V26    -0.4719066360047793
#>     Attrib V27    -0.340527936883943
#>     Attrib V28    0.056402693209938445
#>     Attrib V29    0.1520697584164972
#>     Attrib V3    0.08295378168805992
#>     Attrib V30    -0.11945224598129472
#>     Attrib V31    -0.7633919938900734
#>     Attrib V32    0.6063717126745161
#>     Attrib V33    0.2868544797971143
#>     Attrib V34    -0.06726432597518507
#>     Attrib V35    0.13067201930063374
#>     Attrib V36    -0.41448951908009507
#>     Attrib V37    -0.49999132545441033
#>     Attrib V38    0.2114601544264174
#>     Attrib V39    0.027306619462874514
#>     Attrib V4    0.26125865449121194
#>     Attrib V40    -0.28345198371199015
#>     Attrib V41    0.08622028399131212
#>     Attrib V42    0.15790486982642934
#>     Attrib V43    0.14476620468703916
#>     Attrib V44    0.12329371921578382
#>     Attrib V45    -0.03357634657458171
#>     Attrib V46    0.07694075270465178
#>     Attrib V47    -0.01945618336968712
#>     Attrib V48    0.15829202842587978
#>     Attrib V49    0.4768231593449583
#>     Attrib V5    -0.20831673590175165
#>     Attrib V50    -0.46024085571605994
#>     Attrib V51    0.06739676214092698
#>     Attrib V52    -0.16727970841789233
#>     Attrib V53    0.2087479871005857
#>     Attrib V54    0.02519695623520739
#>     Attrib V55    -0.29241961252073506
#>     Attrib V56    0.5458928503438369
#>     Attrib V57    -0.09231293910840228
#>     Attrib V58    0.22883196631429847
#>     Attrib V59    0.48437738199004454
#>     Attrib V6    -0.4087139860352796
#>     Attrib V60    0.5160760460678944
#>     Attrib V7    0.02532812040135751
#>     Attrib V8    -0.5090122721448707
#>     Attrib V9    0.1979078801466826
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.15839063399596073
#>     Attrib V1    0.5387113902442741
#>     Attrib V10    0.052739515114644614
#>     Attrib V11    -0.02317111212145846
#>     Attrib V12    -0.114047932417683
#>     Attrib V13    -0.027424792323132986
#>     Attrib V14    0.14286777223172653
#>     Attrib V15    0.4238830563229119
#>     Attrib V16    0.19777522441392836
#>     Attrib V17    -0.10624322705634744
#>     Attrib V18    -0.12431954808507115
#>     Attrib V19    0.1322333071349546
#>     Attrib V2    0.06418818244849286
#>     Attrib V20    0.33342570991239945
#>     Attrib V21    0.11887508238023832
#>     Attrib V22    0.03339536693098785
#>     Attrib V23    0.08535993075433036
#>     Attrib V24    0.11258219165265976
#>     Attrib V25    -0.057270423819204754
#>     Attrib V26    -0.365289945894169
#>     Attrib V27    -0.4019738302372274
#>     Attrib V28    -0.14565446129758255
#>     Attrib V29    -0.14334096041398153
#>     Attrib V3    -0.06706183053810424
#>     Attrib V30    -0.2268063241457937
#>     Attrib V31    -0.5306716364049593
#>     Attrib V32    0.3100120251192865
#>     Attrib V33    0.1882664024158463
#>     Attrib V34    -0.059673314920723586
#>     Attrib V35    0.23077681832581715
#>     Attrib V36    -0.23200613577947787
#>     Attrib V37    -0.2505425627117562
#>     Attrib V38    0.21077860431689005
#>     Attrib V39    0.03436223594316461
#>     Attrib V4    0.12450133294702465
#>     Attrib V40    -0.23486636344425343
#>     Attrib V41    -0.1233186356645138
#>     Attrib V42    -0.08560334242480415
#>     Attrib V43    0.06478279141903959
#>     Attrib V44    0.10423512150711536
#>     Attrib V45    -0.0974311805509797
#>     Attrib V46    -0.0348070317423762
#>     Attrib V47    -0.09430768292444809
#>     Attrib V48    0.18233848167084626
#>     Attrib V49    0.32565770270935385
#>     Attrib V5    -0.2794954511385136
#>     Attrib V50    -0.23015933791995308
#>     Attrib V51    0.12712063743657062
#>     Attrib V52    -0.12670920448911074
#>     Attrib V53    0.2991330703404155
#>     Attrib V54    0.3261869280133574
#>     Attrib V55    0.08337338399150565
#>     Attrib V56    0.5535011251290562
#>     Attrib V57    7.133087852841012E-4
#>     Attrib V58    0.36422740070681286
#>     Attrib V59    0.5213350248178744
#>     Attrib V6    -0.3402946762823717
#>     Attrib V60    0.5493986606732051
#>     Attrib V7    0.1635560888363698
#>     Attrib V8    -0.39094145793912455
#>     Attrib V9    0.08251964559643872
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.007820760065330607
#>     Attrib V1    -0.8052389178175047
#>     Attrib V10    -0.3105235774292005
#>     Attrib V11    0.04449493764654973
#>     Attrib V12    0.5530276041945369
#>     Attrib V13    0.18025475605457697
#>     Attrib V14    -0.02847797484828025
#>     Attrib V15    -0.4391834285206157
#>     Attrib V16    -0.4200317298658131
#>     Attrib V17    0.25656563673500377
#>     Attrib V18    0.2599467178230751
#>     Attrib V19    -0.39400578742130155
#>     Attrib V2    -0.0640330612131917
#>     Attrib V20    -0.8712230143459019
#>     Attrib V21    -0.6389749090094683
#>     Attrib V22    -0.6516617257700379
#>     Attrib V23    -0.7335228567135101
#>     Attrib V24    -0.3895163859956826
#>     Attrib V25    0.21991500209794634
#>     Attrib V26    0.9311690111702873
#>     Attrib V27    0.9006347273377662
#>     Attrib V28    -0.043215944482244514
#>     Attrib V29    -0.2888510928326057
#>     Attrib V3    0.02554855439806228
#>     Attrib V30    0.13594231424647776
#>     Attrib V31    1.2438249922686595
#>     Attrib V32    -1.2119890468735863
#>     Attrib V33    -0.8041789097461662
#>     Attrib V34    0.23247141512828676
#>     Attrib V35    -0.06249051082933023
#>     Attrib V36    0.8276290791869939
#>     Attrib V37    1.1406817428155673
#>     Attrib V38    -0.35425075650391075
#>     Attrib V39    -0.07724563320696372
#>     Attrib V4    -0.42798392010163633
#>     Attrib V40    0.4432034399977193
#>     Attrib V41    -0.14511305465915528
#>     Attrib V42    -0.32457866199390645
#>     Attrib V43    -0.39113872786720355
#>     Attrib V44    -0.3996806512813746
#>     Attrib V45    -0.06656720778365291
#>     Attrib V46    -0.10117035884004386
#>     Attrib V47    0.031330247094116144
#>     Attrib V48    -0.2897361690531793
#>     Attrib V49    -0.8695564161855802
#>     Attrib V5    0.50749259699479
#>     Attrib V50    0.6639051243614342
#>     Attrib V51    -0.149580297379945
#>     Attrib V52    0.20510816958276493
#>     Attrib V53    -0.23943930705447716
#>     Attrib V54    -0.06677276629157766
#>     Attrib V55    0.32335657037288534
#>     Attrib V56    -0.9288709579628557
#>     Attrib V57    0.22715740183931576
#>     Attrib V58    -0.6083805244323516
#>     Attrib V59    -0.5786771312660465
#>     Attrib V6    0.8471035513617547
#>     Attrib V60    -0.5014906682361375
#>     Attrib V7    -0.1396983367812756
#>     Attrib V8    0.4906458798631154
#>     Attrib V9    -0.46325476349972644
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1670911673707014
#>     Attrib V1    0.18018774623453165
#>     Attrib V10    0.04323739432575419
#>     Attrib V11    0.001017326036362319
#>     Attrib V12    2.3995697736920368E-4
#>     Attrib V13    0.043122052040591864
#>     Attrib V14    0.06262922846695299
#>     Attrib V15    0.08739516462174236
#>     Attrib V16    0.09555323206403242
#>     Attrib V17    0.01701834911540449
#>     Attrib V18    0.00703560620190263
#>     Attrib V19    0.002357929134605345
#>     Attrib V2    0.06294318414767057
#>     Attrib V20    -0.04189409892322383
#>     Attrib V21    -0.10737629098834207
#>     Attrib V22    -0.11513005433063907
#>     Attrib V23    -0.09657467452094749
#>     Attrib V24    0.009195540628243981
#>     Attrib V25    0.0012912614728344742
#>     Attrib V26    -0.09088137357094007
#>     Attrib V27    -0.06345602687791813
#>     Attrib V28    0.0034660370719670403
#>     Attrib V29    -0.021531860351805918
#>     Attrib V3    0.13316597101876662
#>     Attrib V30    -0.08611052860590096
#>     Attrib V31    -0.11418950697390629
#>     Attrib V32    0.08766577711900334
#>     Attrib V33    0.02357972837252004
#>     Attrib V34    0.03185032965939485
#>     Attrib V35    0.07997588832358088
#>     Attrib V36    -0.00823555244017164
#>     Attrib V37    0.020445062691896332
#>     Attrib V38    0.05464561595215411
#>     Attrib V39    0.025669616679534085
#>     Attrib V4    0.14776776837264202
#>     Attrib V40    -0.04656384261291625
#>     Attrib V41    0.019997126284889175
#>     Attrib V42    0.057884006277666586
#>     Attrib V43    0.03767128108724816
#>     Attrib V44    0.003198219277716142
#>     Attrib V45    0.009050471094242117
#>     Attrib V46    0.040989530565951726
#>     Attrib V47    0.023488515550633915
#>     Attrib V48    0.04824868135720263
#>     Attrib V49    0.05985694505214283
#>     Attrib V5    0.039168427367956074
#>     Attrib V50    0.0678826138361131
#>     Attrib V51    0.09271890398608278
#>     Attrib V52    0.05707282757242713
#>     Attrib V53    0.19312084331140933
#>     Attrib V54    0.07416942522470289
#>     Attrib V55    0.10049163928364287
#>     Attrib V56    0.18512258666760478
#>     Attrib V57    0.12851553509939842
#>     Attrib V58    0.19200842130875714
#>     Attrib V59    0.1361837816184806
#>     Attrib V6    0.01581994921431916
#>     Attrib V60    0.2406376870344853
#>     Attrib V7    0.0451125774658733
#>     Attrib V8    -0.07198043795883897
#>     Attrib V9    0.0902912301033733
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.13331606746394511
#>     Attrib V1    0.08875852302543438
#>     Attrib V10    0.06849808579432037
#>     Attrib V11    0.05048245681234886
#>     Attrib V12    -0.01667285107938524
#>     Attrib V13    -0.022963285724840916
#>     Attrib V14    0.039123017636778265
#>     Attrib V15    0.09332009093869487
#>     Attrib V16    0.023230583922784917
#>     Attrib V17    0.031517911834273514
#>     Attrib V18    4.0332089564560063E-4
#>     Attrib V19    -0.005751606137618058
#>     Attrib V2    0.1427145982701504
#>     Attrib V20    -0.10709425718053424
#>     Attrib V21    -0.10844603484745372
#>     Attrib V22    -0.02723078464772258
#>     Attrib V23    -0.07932896746512899
#>     Attrib V24    -0.027614697644383245
#>     Attrib V25    -0.06351681599569099
#>     Attrib V26    -0.06435438876940844
#>     Attrib V27    -0.043773372982867674
#>     Attrib V28    -0.07036745793087065
#>     Attrib V29    -0.07135818987716024
#>     Attrib V3    0.1145773658665474
#>     Attrib V30    0.05062641204093658
#>     Attrib V31    0.13097369215251675
#>     Attrib V32    -0.03179659780969939
#>     Attrib V33    0.058720160178415894
#>     Attrib V34    0.0067122067972738815
#>     Attrib V35    0.08890858856630056
#>     Attrib V36    0.06173173638613252
#>     Attrib V37    0.0656689586517833
#>     Attrib V38    0.0882881729110035
#>     Attrib V39    0.10611862482332231
#>     Attrib V4    0.10344915613178025
#>     Attrib V40    0.09601996748447177
#>     Attrib V41    0.11669068454526944
#>     Attrib V42    0.0701871886801237
#>     Attrib V43    0.1125281547674603
#>     Attrib V44    0.08563983513980841
#>     Attrib V45    0.05633411300458803
#>     Attrib V46    0.0013403337163272236
#>     Attrib V47    -0.010146312919526394
#>     Attrib V48    0.046136448518738875
#>     Attrib V49    -0.029583016552473633
#>     Attrib V5    0.134318058653787
#>     Attrib V50    0.05994872009935699
#>     Attrib V51    -0.008825496929254523
#>     Attrib V52    -0.009313546575621641
#>     Attrib V53    0.031900527799608294
#>     Attrib V54    0.01251731315513741
#>     Attrib V55    0.10801794339706593
#>     Attrib V56    0.08220451370227025
#>     Attrib V57    0.16610429717541383
#>     Attrib V58    0.04862192781642162
#>     Attrib V59    0.028737422639004022
#>     Attrib V6    0.1345903553834783
#>     Attrib V60    0.09838735577077996
#>     Attrib V7    0.02492548070613771
#>     Attrib V8    0.13501475780962652
#>     Attrib V9    0.0560724148482021
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    0.053946449440534755
#>     Attrib V1    0.45149767475773533
#>     Attrib V10    0.03985626010782926
#>     Attrib V11    -0.08933307968490395
#>     Attrib V12    -0.1847603873396427
#>     Attrib V13    -0.012559406794924202
#>     Attrib V14    0.17724899054779428
#>     Attrib V15    0.3501316019772097
#>     Attrib V16    0.22944295402487228
#>     Attrib V17    -0.11032842890761323
#>     Attrib V18    -0.03110096795947898
#>     Attrib V19    0.1401381163569298
#>     Attrib V2    0.057589798207223236
#>     Attrib V20    0.3454848472142486
#>     Attrib V21    0.16265523757187
#>     Attrib V22    0.0591494962194688
#>     Attrib V23    0.09499978323250781
#>     Attrib V24    0.11904761423245576
#>     Attrib V25    -0.05179009000980266
#>     Attrib V26    -0.33988597757729094
#>     Attrib V27    -0.3152106254954419
#>     Attrib V28    -0.05776951221635559
#>     Attrib V29    -0.023711149264644807
#>     Attrib V3    0.059211833260723296
#>     Attrib V30    -0.22391545939791904
#>     Attrib V31    -0.5268534489336126
#>     Attrib V32    0.2795909636729473
#>     Attrib V33    0.14727225424356655
#>     Attrib V34    -0.029706143144943506
#>     Attrib V35    0.14623674288814525
#>     Attrib V36    -0.14686116054430606
#>     Attrib V37    -0.27910797368775186
#>     Attrib V38    0.19126511602143037
#>     Attrib V39    0.054627156506164606
#>     Attrib V4    0.11188016472913216
#>     Attrib V40    -0.24223840756814835
#>     Attrib V41    -0.1230342424122495
#>     Attrib V42    0.002976801370073865
#>     Attrib V43    0.0939893791905125
#>     Attrib V44    0.09808547826367538
#>     Attrib V45    -0.08300944918442375
#>     Attrib V46    -0.049456681928853156
#>     Attrib V47    -0.026449892597708587
#>     Attrib V48    0.13003414321945114
#>     Attrib V49    0.2920361627031014
#>     Attrib V5    -0.20330306898989264
#>     Attrib V50    -0.2525626489957608
#>     Attrib V51    0.15400282236450333
#>     Attrib V52    -0.13667478744275902
#>     Attrib V53    0.308834571846108
#>     Attrib V54    0.18032846949176284
#>     Attrib V55    0.061890189034781384
#>     Attrib V56    0.5063151256710906
#>     Attrib V57    -0.053459012295226115
#>     Attrib V58    0.3139156159910479
#>     Attrib V59    0.47545015627769693
#>     Attrib V6    -0.307627622748483
#>     Attrib V60    0.48972468273465863
#>     Attrib V7    0.16820000339336721
#>     Attrib V8    -0.29081555695304007
#>     Attrib V9    0.08397949943585382
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.398748837183026
#>     Attrib V1    0.46422747815860166
#>     Attrib V10    0.8394311660435978
#>     Attrib V11    0.7007733427579592
#>     Attrib V12    1.0713412560501945
#>     Attrib V13    0.12683271686179465
#>     Attrib V14    -0.48778301878726077
#>     Attrib V15    -0.37370102129272137
#>     Attrib V16    -0.3624523126440567
#>     Attrib V17    -0.5958857346252682
#>     Attrib V18    -0.2973673614397574
#>     Attrib V19    -0.027036041658271746
#>     Attrib V2    0.10267908436459211
#>     Attrib V20    -0.0716192227997028
#>     Attrib V21    -0.1007489991417825
#>     Attrib V22    -0.29995036093224064
#>     Attrib V23    -0.3310933459917915
#>     Attrib V24    0.19361305633544484
#>     Attrib V25    0.4322132173365597
#>     Attrib V26    0.6727085967170933
#>     Attrib V27    0.9713066827528613
#>     Attrib V28    0.9439268496760507
#>     Attrib V29    0.3553996698311091
#>     Attrib V3    0.051715152769380275
#>     Attrib V30    -0.22459026691428835
#>     Attrib V31    -0.8732851316915988
#>     Attrib V32    0.2824830598254961
#>     Attrib V33    -0.0913148596743629
#>     Attrib V34    0.0018155062444979136
#>     Attrib V35    0.552295675493786
#>     Attrib V36    -0.27531791591930227
#>     Attrib V37    -0.13813401903947561
#>     Attrib V38    0.2289419482009706
#>     Attrib V39    -0.24037430385769196
#>     Attrib V4    0.35944229799453836
#>     Attrib V40    -0.42566893554956625
#>     Attrib V41    0.28479986833285004
#>     Attrib V42    -0.08261585555599164
#>     Attrib V43    -0.07514388312644281
#>     Attrib V44    0.040480924026281936
#>     Attrib V45    0.3626198192645902
#>     Attrib V46    0.5288653694415807
#>     Attrib V47    0.21046514304202435
#>     Attrib V48    0.4774724527359605
#>     Attrib V49    0.7567365173563445
#>     Attrib V5    -0.0086831023604557
#>     Attrib V50    -0.38811817913680774
#>     Attrib V51    0.615237071333093
#>     Attrib V52    0.38380389182657737
#>     Attrib V53    0.27393316165549975
#>     Attrib V54    0.16089034868178007
#>     Attrib V55    -0.5823752279478045
#>     Attrib V56    -0.20801943043991883
#>     Attrib V57    -0.2794679471580455
#>     Attrib V58    -0.23633940487864472
#>     Attrib V59    0.30541831075547665
#>     Attrib V6    -0.06813265006183539
#>     Attrib V60    0.7099953550484409
#>     Attrib V7    0.008565267241002381
#>     Attrib V8    -0.6180079602125927
#>     Attrib V9    0.657268348496255
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3350146730741746
#>     Attrib V1    0.3764126895850862
#>     Attrib V10    0.6256384774502264
#>     Attrib V11    0.4631125677331128
#>     Attrib V12    0.7186880958473277
#>     Attrib V13    0.08678061446311126
#>     Attrib V14    -0.28081291675321607
#>     Attrib V15    -0.287293597669731
#>     Attrib V16    -0.28623519129794917
#>     Attrib V17    -0.45014102562116337
#>     Attrib V18    -0.12220905789076085
#>     Attrib V19    0.1309986606811741
#>     Attrib V2    -0.029938761495548086
#>     Attrib V20    0.11456148520075846
#>     Attrib V21    0.051091283249317686
#>     Attrib V22    -0.06888687397666575
#>     Attrib V23    0.07679447245358859
#>     Attrib V24    0.32858420938973276
#>     Attrib V25    0.3264260830217221
#>     Attrib V26    0.4744365068498007
#>     Attrib V27    0.7813853569135691
#>     Attrib V28    0.8071840353353242
#>     Attrib V29    0.4661692268442051
#>     Attrib V3    0.004802110391208608
#>     Attrib V30    -0.1363257644644661
#>     Attrib V31    -0.807274529576767
#>     Attrib V32    0.37987845897830597
#>     Attrib V33    0.005621210353033572
#>     Attrib V34    -0.06624520523085352
#>     Attrib V35    0.39402358634916096
#>     Attrib V36    -0.2616375338271151
#>     Attrib V37    -0.3043796698116002
#>     Attrib V38    0.18618737055519238
#>     Attrib V39    -0.17678985033239022
#>     Attrib V4    0.30983162744992493
#>     Attrib V40    -0.36320168142808135
#>     Attrib V41    0.2906452369855439
#>     Attrib V42    -0.005954471357298214
#>     Attrib V43    0.17537798203567156
#>     Attrib V44    0.1796125658510568
#>     Attrib V45    0.18085729019618213
#>     Attrib V46    0.3216152325281189
#>     Attrib V47    0.1578515653664143
#>     Attrib V48    0.4943083198856192
#>     Attrib V49    0.7457469864514912
#>     Attrib V5    0.0019966471804060745
#>     Attrib V50    -0.35637809147063293
#>     Attrib V51    0.5436221961325626
#>     Attrib V52    0.24545653348313132
#>     Attrib V53    0.2426134873203813
#>     Attrib V54    0.10911993024741212
#>     Attrib V55    -0.5523215213670999
#>     Attrib V56    0.0167264169287466
#>     Attrib V57    -0.24434786128551253
#>     Attrib V58    -0.14849847068282077
#>     Attrib V59    0.36012573990546287
#>     Attrib V6    -0.16353920484299947
#>     Attrib V60    0.5464854364435112
#>     Attrib V7    -0.07560439723224242
#>     Attrib V8    -0.6128523728846469
#>     Attrib V9    0.5209237616896764
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.21623000556535382
#>     Attrib V1    -0.9940747107585299
#>     Attrib V10    -0.38556199364412636
#>     Attrib V11    -0.04872671778559356
#>     Attrib V12    0.7101114979269708
#>     Attrib V13    0.16711065277272857
#>     Attrib V14    -0.042383519929670106
#>     Attrib V15    -0.5724070529777182
#>     Attrib V16    -0.5800396180927557
#>     Attrib V17    0.29183560248353
#>     Attrib V18    0.3882202856298186
#>     Attrib V19    -0.5697980309451395
#>     Attrib V2    -0.19593645302598361
#>     Attrib V20    -1.2047184147302616
#>     Attrib V21    -0.7549113921466237
#>     Attrib V22    -0.8793780716055548
#>     Attrib V23    -1.02507069381648
#>     Attrib V24    -0.5199465106104403
#>     Attrib V25    0.28739721976237154
#>     Attrib V26    1.0900750026300334
#>     Attrib V27    1.2080774322160805
#>     Attrib V28    -0.07474788944692308
#>     Attrib V29    -0.3625975402380812
#>     Attrib V3    -0.06800092825311123
#>     Attrib V30    0.10701545059216643
#>     Attrib V31    1.4928598992705386
#>     Attrib V32    -1.5505673341057522
#>     Attrib V33    -1.0891857934553257
#>     Attrib V34    0.269020279855287
#>     Attrib V35    -0.046200751188651565
#>     Attrib V36    0.9879287174572758
#>     Attrib V37    1.4392468051878273
#>     Attrib V38    -0.4637637064146334
#>     Attrib V39    -0.17983871996457332
#>     Attrib V4    -0.5118271515617389
#>     Attrib V40    0.5576911169493692
#>     Attrib V41    -0.02671703453960114
#>     Attrib V42    -0.4721585900088394
#>     Attrib V43    -0.5292832386637849
#>     Attrib V44    -0.5528239139723925
#>     Attrib V45    -0.23812365218218973
#>     Attrib V46    -0.1536515484963351
#>     Attrib V47    0.02961821328108321
#>     Attrib V48    -0.21002429693416266
#>     Attrib V49    -1.0120195429341332
#>     Attrib V5    0.6499539830427428
#>     Attrib V50    0.7909111646912995
#>     Attrib V51    -0.06816214916634815
#>     Attrib V52    0.2726575676237309
#>     Attrib V53    -0.3907145230756982
#>     Attrib V54    -0.032482330975561864
#>     Attrib V55    0.2601283329070844
#>     Attrib V56    -1.2559726701674219
#>     Attrib V57    0.45454571078923045
#>     Attrib V58    -0.7742334297187056
#>     Attrib V59    -0.5088650942600765
#>     Attrib V6    1.2085435790758128
#>     Attrib V60    -0.21512869648747665
#>     Attrib V7    -0.008825396308908119
#>     Attrib V8    0.30636559406524116
#>     Attrib V9    -0.6079294266528896
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.1583649296637412
#>     Attrib V1    0.20064225836912938
#>     Attrib V10    0.05256476200445259
#>     Attrib V11    0.028529328850611352
#>     Attrib V12    0.005800182909928688
#>     Attrib V13    -0.004972978234985643
#>     Attrib V14    0.1074042269968519
#>     Attrib V15    0.057876157161440095
#>     Attrib V16    0.09660451990195788
#>     Attrib V17    0.008683598195589086
#>     Attrib V18    -0.026752349992560827
#>     Attrib V19    -0.04969400956736305
#>     Attrib V2    0.125874341044607
#>     Attrib V20    -0.02820732946477388
#>     Attrib V21    -0.1137047681866106
#>     Attrib V22    -0.12916505884889581
#>     Attrib V23    -0.10035322795599223
#>     Attrib V24    0.009248438900341114
#>     Attrib V25    -0.0243520087843098
#>     Attrib V26    -0.07639220325445333
#>     Attrib V27    -0.06561664833644572
#>     Attrib V28    -0.07251613069325118
#>     Attrib V29    -0.0036503751864988346
#>     Attrib V3    0.09573445320048272
#>     Attrib V30    -0.05901710269706223
#>     Attrib V31    -0.011275920394548077
#>     Attrib V32    0.05025372686759972
#>     Attrib V33    -0.011669435518491908
#>     Attrib V34    -0.01338349319501755
#>     Attrib V35    0.09132630726091671
#>     Attrib V36    0.03851676678390004
#>     Attrib V37    0.0343439023444329
#>     Attrib V38    0.010697165791209244
#>     Attrib V39    -0.014306393800703896
#>     Attrib V4    0.141518547714423
#>     Attrib V40    0.012628344836399935
#>     Attrib V41    -0.02745267713831606
#>     Attrib V42    0.0029390682981567332
#>     Attrib V43    0.09661728083323119
#>     Attrib V44    0.02955675185720746
#>     Attrib V45    -0.056408343585378905
#>     Attrib V46    0.05336763680527679
#>     Attrib V47    -0.005865880625816755
#>     Attrib V48    0.08685834894539192
#>     Attrib V49    0.0841493069068924
#>     Attrib V5    0.07448438916639648
#>     Attrib V50    0.04050163677293815
#>     Attrib V51    0.0323168093212454
#>     Attrib V52    0.03753313754231413
#>     Attrib V53    0.11594203931773225
#>     Attrib V54    0.10251512641913779
#>     Attrib V55    0.10672975984451935
#>     Attrib V56    0.18497357949287857
#>     Attrib V57    0.1277071239791286
#>     Attrib V58    0.1840234279670655
#>     Attrib V59    0.14539456902947828
#>     Attrib V6    0.041506145076804
#>     Attrib V60    0.23659019893424973
#>     Attrib V7    0.05749801301573902
#>     Attrib V8    -0.06898476721991362
#>     Attrib V9    0.07763025078199291
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.15942221477196986
#>     Attrib V1    0.6855930922045693
#>     Attrib V10    0.054105844394563625
#>     Attrib V11    -0.11249136720211309
#>     Attrib V12    -0.25661094858412337
#>     Attrib V13    -0.11335975234214812
#>     Attrib V14    0.05655542111834113
#>     Attrib V15    0.3991557909267179
#>     Attrib V16    0.29916549736270903
#>     Attrib V17    -0.05547675227454983
#>     Attrib V18    -0.16096749792180537
#>     Attrib V19    0.2923762408249373
#>     Attrib V2    -0.020777767617738925
#>     Attrib V20    0.5314694129634415
#>     Attrib V21    0.25960818795688817
#>     Attrib V22    0.30346962446865167
#>     Attrib V23    0.35658696403842466
#>     Attrib V24    0.18907575476242972
#>     Attrib V25    -0.22213832421124854
#>     Attrib V26    -0.7124940725126075
#>     Attrib V27    -0.7214072236079933
#>     Attrib V28    -0.10877034275019701
#>     Attrib V29    -0.0029699467686574534
#>     Attrib V3    0.035360650923284845
#>     Attrib V30    -0.16877274301709194
#>     Attrib V31    -0.7922334342480116
#>     Attrib V32    0.7712348941510497
#>     Attrib V33    0.49054236559591796
#>     Attrib V34    -0.08805986372832261
#>     Attrib V35    0.20822367238399908
#>     Attrib V36    -0.46183479477591277
#>     Attrib V37    -0.597099980218086
#>     Attrib V38    0.28262398434540925
#>     Attrib V39    0.006885634588526629
#>     Attrib V4    0.3237691347361662
#>     Attrib V40    -0.3879263063686659
#>     Attrib V41    -0.025456445279823877
#>     Attrib V42    0.08519036337466697
#>     Attrib V43    0.2554813848739119
#>     Attrib V44    0.14559421425492722
#>     Attrib V45    -0.03708508663765716
#>     Attrib V46    -0.05100228587740045
#>     Attrib V47    -0.11216791254242092
#>     Attrib V48    0.14401009479669893
#>     Attrib V49    0.487464973476313
#>     Attrib V5    -0.34806997216467356
#>     Attrib V50    -0.5179229054050907
#>     Attrib V51    0.004447604207417164
#>     Attrib V52    -0.23858328118379152
#>     Attrib V53    0.26816526970402715
#>     Attrib V54    0.1384361307637441
#>     Attrib V55    -0.20203231824940854
#>     Attrib V56    0.8263516993752947
#>     Attrib V57    -0.09446616095244093
#>     Attrib V58    0.4044922886008647
#>     Attrib V59    0.6486873232861978
#>     Attrib V6    -0.5654878556150189
#>     Attrib V60    0.5992685360451633
#>     Attrib V7    0.10361425627955376
#>     Attrib V8    -0.5384897176770785
#>     Attrib V9    0.20351428769519525
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.057015996768898056
#>     Attrib V1    -0.5990924330727716
#>     Attrib V10    -0.3343848579415365
#>     Attrib V11    -0.06729073282858078
#>     Attrib V12    0.17140073121897792
#>     Attrib V13    0.09377871459219618
#>     Attrib V14    0.10843875933821286
#>     Attrib V15    -0.22527000819939175
#>     Attrib V16    -0.26253810201700206
#>     Attrib V17    0.3102021321574644
#>     Attrib V18    0.203327800824226
#>     Attrib V19    -0.35162327184243863
#>     Attrib V2    -0.048186417205594745
#>     Attrib V20    -0.6632531976403475
#>     Attrib V21    -0.487536593080951
#>     Attrib V22    -0.5318916184934431
#>     Attrib V23    -0.47862441487641577
#>     Attrib V24    -0.3767425573595382
#>     Attrib V25    0.10117987321207228
#>     Attrib V26    0.5850407961493954
#>     Attrib V27    0.5437978164396584
#>     Attrib V28    -0.0753011152387631
#>     Attrib V29    -0.2730217088292918
#>     Attrib V3    0.01812220605070536
#>     Attrib V30    0.13513191280840745
#>     Attrib V31    1.0857864110562758
#>     Attrib V32    -0.8210146288815816
#>     Attrib V33    -0.5133434915547882
#>     Attrib V34    0.20578492620948857
#>     Attrib V35    -0.06613976989775061
#>     Attrib V36    0.699273117600001
#>     Attrib V37    0.8003946878361465
#>     Attrib V38    -0.34000565809256617
#>     Attrib V39    -0.09442857390345363
#>     Attrib V4    -0.3041513101904986
#>     Attrib V40    0.41094727750176974
#>     Attrib V41    -0.10926360009091599
#>     Attrib V42    -0.18640216682547175
#>     Attrib V43    -0.21646023986919852
#>     Attrib V44    -0.36284986148922277
#>     Attrib V45    -0.18312464470313902
#>     Attrib V46    -0.1645107368753587
#>     Attrib V47    0.012116077396813326
#>     Attrib V48    -0.2969485525882682
#>     Attrib V49    -0.780511920488027
#>     Attrib V5    0.34452433217867584
#>     Attrib V50    0.549289126519313
#>     Attrib V51    -0.24329078218301958
#>     Attrib V52    0.15704779629242416
#>     Attrib V53    -0.23942934455390003
#>     Attrib V54    -0.05266670036605552
#>     Attrib V55    0.3402664538884201
#>     Attrib V56    -0.6511646720408457
#>     Attrib V57    0.3234935745419698
#>     Attrib V58    -0.31589519179265235
#>     Attrib V59    -0.4720191112293813
#>     Attrib V6    0.6565188178750764
#>     Attrib V60    -0.44945309987996496
#>     Attrib V7    -0.12091343771064385
#>     Attrib V8    0.5189881834598272
#>     Attrib V9    -0.32252672737171256
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.30903946963372403
#>     Attrib V1    0.11841627494013175
#>     Attrib V10    0.8627103466674539
#>     Attrib V11    0.9282083347758825
#>     Attrib V12    1.5028782832048024
#>     Attrib V13    0.24461159931439158
#>     Attrib V14    -0.5614580761174107
#>     Attrib V15    -0.8955127783650235
#>     Attrib V16    -0.6488111164382186
#>     Attrib V17    -0.4898546914531352
#>     Attrib V18    0.1262391738272338
#>     Attrib V19    0.33780123475988555
#>     Attrib V2    0.0930025525859312
#>     Attrib V20    0.020776555153093092
#>     Attrib V21    0.09266759945323039
#>     Attrib V22    0.06337032638468484
#>     Attrib V23    0.35868647327794406
#>     Attrib V24    0.8497814649651692
#>     Attrib V25    0.9683017754269901
#>     Attrib V26    1.295781019643853
#>     Attrib V27    1.4370020926810652
#>     Attrib V28    1.0990996586739066
#>     Attrib V29    0.6405410072960295
#>     Attrib V3    0.24998042384781724
#>     Attrib V30    -0.19277669995213798
#>     Attrib V31    -0.963534169473333
#>     Attrib V32    0.4777878670162637
#>     Attrib V33    -0.27803910516668756
#>     Attrib V34    -0.06577738615177069
#>     Attrib V35    0.41650255251664425
#>     Attrib V36    -0.48930902573509766
#>     Attrib V37    -0.45545569391199703
#>     Attrib V38    0.09837734308897127
#>     Attrib V39    0.004193318380892408
#>     Attrib V4    0.4169647161904544
#>     Attrib V40    -0.1475748674187134
#>     Attrib V41    0.8974643099114576
#>     Attrib V42    0.154432199362661
#>     Attrib V43    0.031656954918019196
#>     Attrib V44    0.2692044622704429
#>     Attrib V45    0.33087965866264984
#>     Attrib V46    0.6057974143110751
#>     Attrib V47    0.3977088047041799
#>     Attrib V48    0.8516295440423448
#>     Attrib V49    1.3774240447688784
#>     Attrib V5    0.24052738811352284
#>     Attrib V50    -0.2820406737912248
#>     Attrib V51    1.0542557466129103
#>     Attrib V52    0.7823941735654835
#>     Attrib V53    0.30240813043920545
#>     Attrib V54    0.2797457809225812
#>     Attrib V55    -0.7066774328987026
#>     Attrib V56    -0.218644579621653
#>     Attrib V57    -0.33295567792012143
#>     Attrib V58    -0.48870132433797037
#>     Attrib V59    0.27557603876799663
#>     Attrib V6    0.20469867967964134
#>     Attrib V60    0.4719707768755439
#>     Attrib V7    -0.28785952029166906
#>     Attrib V8    -0.7706172921260921
#>     Attrib V9    0.7441267731789408
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.16464895267317406
#>     Attrib V1    -0.17041554126557876
#>     Attrib V10    -0.10168761434704744
#>     Attrib V11    -0.05282305682317288
#>     Attrib V12    -0.017217761322161393
#>     Attrib V13    0.029934371769219998
#>     Attrib V14    0.14420940730195358
#>     Attrib V15    -0.026905289596440403
#>     Attrib V16    -0.019302060500058324
#>     Attrib V17    0.19843468060030908
#>     Attrib V18    0.08197167517609442
#>     Attrib V19    -0.005288678404495826
#>     Attrib V2    0.013329802808610717
#>     Attrib V20    -0.16741000179599771
#>     Attrib V21    -0.10540559385272016
#>     Attrib V22    -0.0843242322679248
#>     Attrib V23    -0.10310103695209691
#>     Attrib V24    -0.15436360083646444
#>     Attrib V25    -0.025133018278199165
#>     Attrib V26    0.04305695369929625
#>     Attrib V27    0.0671389290273889
#>     Attrib V28    -0.10481390693555255
#>     Attrib V29    -0.13001525319648638
#>     Attrib V3    0.0245104787987743
#>     Attrib V30    0.08204636733369325
#>     Attrib V31    0.3936145027313437
#>     Attrib V32    -0.28992947957885845
#>     Attrib V33    -0.046441315929013745
#>     Attrib V34    0.06792286094670755
#>     Attrib V35    0.002062919411970479
#>     Attrib V36    0.30672224629005396
#>     Attrib V37    0.30465848797325035
#>     Attrib V38    -0.12318318723015229
#>     Attrib V39    0.05929888716060645
#>     Attrib V4    -0.027401882575173595
#>     Attrib V40    0.25734106441426363
#>     Attrib V41    -0.006102517206690491
#>     Attrib V42    0.011913428574773455
#>     Attrib V43    -0.07525696708767524
#>     Attrib V44    -0.12091117890047903
#>     Attrib V45    -0.10987754912157335
#>     Attrib V46    -0.17025585746703956
#>     Attrib V47    -0.11144794728653618
#>     Attrib V48    -0.14607284873623316
#>     Attrib V49    -0.3152727156851948
#>     Attrib V5    0.17247692259772332
#>     Attrib V50    0.1664504996523181
#>     Attrib V51    -0.18974446333477576
#>     Attrib V52    -0.055523744352799755
#>     Attrib V53    -0.12135112103737156
#>     Attrib V54    0.027248796065457513
#>     Attrib V55    0.17892839696373558
#>     Attrib V56    -0.1828630669971657
#>     Attrib V57    0.22376228094830408
#>     Attrib V58    -0.01851829532129648
#>     Attrib V59    -0.12624896642985398
#>     Attrib V6    0.3216275467592301
#>     Attrib V60    -0.08809506920710247
#>     Attrib V7    0.047791635600194754
#>     Attrib V8    0.3349325120499035
#>     Attrib V9    -0.09740661327706561
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.38579517413054093
#>     Attrib V1    0.6014455265286736
#>     Attrib V10    0.8408475419487164
#>     Attrib V11    0.7158315590082374
#>     Attrib V12    0.9265363126034625
#>     Attrib V13    0.11039644388622159
#>     Attrib V14    -0.5173343106263847
#>     Attrib V15    -0.3505893177470926
#>     Attrib V16    -0.2969967633233422
#>     Attrib V17    -0.6281806951855857
#>     Attrib V18    -0.32947554896570286
#>     Attrib V19    -0.18776239690026983
#>     Attrib V2    0.12474308561287227
#>     Attrib V20    -0.15885642797656085
#>     Attrib V21    -0.13866783187724332
#>     Attrib V22    -0.4454213768022165
#>     Attrib V23    -0.5225923406930428
#>     Attrib V24    0.011475913685075273
#>     Attrib V25    0.24990605003673844
#>     Attrib V26    0.6205299673612675
#>     Attrib V27    0.8606169367643957
#>     Attrib V28    0.826219581697818
#>     Attrib V29    0.30614809354565525
#>     Attrib V3    0.05417425745995749
#>     Attrib V30    -0.19399709275202837
#>     Attrib V31    -0.7869418555270137
#>     Attrib V32    0.276860089469314
#>     Attrib V33    -0.09027349544045882
#>     Attrib V34    0.05979430414983963
#>     Attrib V35    0.5114519925049092
#>     Attrib V36    -0.21978392286723705
#>     Attrib V37    -0.016688824433493944
#>     Attrib V38    0.25600636187513937
#>     Attrib V39    -0.22088555851912517
#>     Attrib V4    0.31927764123025953
#>     Attrib V40    -0.5572149409614348
#>     Attrib V41    0.1327970646727729
#>     Attrib V42    -0.18372854564248858
#>     Attrib V43    -0.11033231917735539
#>     Attrib V44    0.0900996654082688
#>     Attrib V45    0.34524141496047184
#>     Attrib V46    0.4178644814625111
#>     Attrib V47    0.1527399886642378
#>     Attrib V48    0.4306212341240313
#>     Attrib V49    0.524151856865224
#>     Attrib V5    -0.08601935971449629
#>     Attrib V50    -0.28191895989897897
#>     Attrib V51    0.5681426184938623
#>     Attrib V52    0.30397262359456106
#>     Attrib V53    0.23738234299652414
#>     Attrib V54    0.12728308033869315
#>     Attrib V55    -0.495298274846204
#>     Attrib V56    -0.1746635692173727
#>     Attrib V57    -0.21977452352630655
#>     Attrib V58    -0.2076865983812637
#>     Attrib V59    0.3112796918228625
#>     Attrib V6    -0.09102011627682903
#>     Attrib V60    0.6974002246502088
#>     Attrib V7    -0.02758189947980443
#>     Attrib V8    -0.5337445135886237
#>     Attrib V9    0.6615356088261741
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.13979618434661353
#>     Attrib V1    -0.7708898404765693
#>     Attrib V10    -0.7230590747197493
#>     Attrib V11    -0.7362192839764585
#>     Attrib V12    -0.45572690494059853
#>     Attrib V13    -0.1513013466210698
#>     Attrib V14    0.5003949875431315
#>     Attrib V15    0.11129534009678978
#>     Attrib V16    -0.23568452100970233
#>     Attrib V17    0.18090041674473414
#>     Attrib V18    0.3507820670245691
#>     Attrib V19    -0.6443434387405685
#>     Attrib V2    -0.15009428520968315
#>     Attrib V20    -1.2276391393603117
#>     Attrib V21    -0.9310683594162573
#>     Attrib V22    -0.7386565839722222
#>     Attrib V23    -0.6369507476221228
#>     Attrib V24    -0.39674500697475756
#>     Attrib V25    0.11478708568576222
#>     Attrib V26    0.177176585976142
#>     Attrib V27    0.577737574531301
#>     Attrib V28    0.019458799285285787
#>     Attrib V29    0.18613589190319865
#>     Attrib V3    0.06324614353139173
#>     Attrib V30    0.08392939159309674
#>     Attrib V31    1.617017832960522
#>     Attrib V32    -0.6657453417976278
#>     Attrib V33    -0.666041167722842
#>     Attrib V34    0.5123698168321992
#>     Attrib V35    0.36292843932891866
#>     Attrib V36    1.394452309829166
#>     Attrib V37    1.7438258853611701
#>     Attrib V38    -0.4878432156493049
#>     Attrib V39    -0.29498567894552696
#>     Attrib V4    -0.5240965099370066
#>     Attrib V40    0.2876098374018478
#>     Attrib V41    -0.2098470130397332
#>     Attrib V42    -0.1804818588795515
#>     Attrib V43    -0.6102535010849109
#>     Attrib V44    -0.7411979090094427
#>     Attrib V45    -0.450791710939359
#>     Attrib V46    -0.2104893953022489
#>     Attrib V47    0.1072108395894333
#>     Attrib V48    -0.14638961813333806
#>     Attrib V49    -0.9897161640114651
#>     Attrib V5    0.16864964608988392
#>     Attrib V50    0.7720455694479542
#>     Attrib V51    -0.23890119774158874
#>     Attrib V52    0.3536630049396069
#>     Attrib V53    -0.19326733551387787
#>     Attrib V54    -0.017113974082576276
#>     Attrib V55    0.6968166111992714
#>     Attrib V56    -0.8008596967204603
#>     Attrib V57    0.3699223470499959
#>     Attrib V58    -0.0031534728423105902
#>     Attrib V59    -0.6911456966870259
#>     Attrib V6    0.9552378423078501
#>     Attrib V60    -0.20361820608049488
#>     Attrib V7    -0.25586122158304314
#>     Attrib V8    0.14947794867512823
#>     Attrib V9    -0.7514476699726572
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.27265335007803193
#>     Attrib V1    0.3892140876752283
#>     Attrib V10    0.5695499598647121
#>     Attrib V11    0.51851525146589
#>     Attrib V12    0.6624916195859966
#>     Attrib V13    0.05909717121780099
#>     Attrib V14    -0.30181803168760857
#>     Attrib V15    -0.2720194654972412
#>     Attrib V16    -0.23489029643956563
#>     Attrib V17    -0.4835833502609573
#>     Attrib V18    -0.25003584032717147
#>     Attrib V19    -0.016292204119282575
#>     Attrib V2    0.006220692593982479
#>     Attrib V20    0.13814892821943475
#>     Attrib V21    0.031841948896709535
#>     Attrib V22    -0.12576483542869843
#>     Attrib V23    -0.10427458714449628
#>     Attrib V24    0.23854219879292643
#>     Attrib V25    0.2949201920705269
#>     Attrib V26    0.32560565176752515
#>     Attrib V27    0.5960422098329927
#>     Attrib V28    0.7230676774350091
#>     Attrib V29    0.38262472699031164
#>     Attrib V3    0.05898382243899661
#>     Attrib V30    -0.18581840299922342
#>     Attrib V31    -0.7244602126632703
#>     Attrib V32    0.4346690084170777
#>     Attrib V33    0.11944256848720992
#>     Attrib V34    0.06648469726341662
#>     Attrib V35    0.45229336541504284
#>     Attrib V36    -0.26174877444560735
#>     Attrib V37    -0.2498391860944329
#>     Attrib V38    0.1756181034396672
#>     Attrib V39    -0.1497915970268567
#>     Attrib V4    0.25951424465832545
#>     Attrib V40    -0.3908418042230013
#>     Attrib V41    0.20955228826732047
#>     Attrib V42    -0.035861422863292906
#>     Attrib V43    0.13475611497005513
#>     Attrib V44    0.06949015531288154
#>     Attrib V45    0.24256761711649147
#>     Attrib V46    0.34452883729631645
#>     Attrib V47    0.18781438258725483
#>     Attrib V48    0.3759396555050814
#>     Attrib V49    0.5936708568468977
#>     Attrib V5    -0.10565640794680886
#>     Attrib V50    -0.2953642162401417
#>     Attrib V51    0.41106893137706846
#>     Attrib V52    0.20818071166968735
#>     Attrib V53    0.19395866201053158
#>     Attrib V54    0.015658678371667564
#>     Attrib V55    -0.4911374613362162
#>     Attrib V56    0.021924993763852367
#>     Attrib V57    -0.2036833542968657
#>     Attrib V58    -0.1981219858957075
#>     Attrib V59    0.2615774207455515
#>     Attrib V6    -0.2083067865869932
#>     Attrib V60    0.5343859991166269
#>     Attrib V7    -0.1098473350405011
#>     Attrib V8    -0.48033178491056305
#>     Attrib V9    0.5098722095620715
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.14602906218397338
#>     Attrib V1    -0.08055381647339892
#>     Attrib V10    0.06672539332040478
#>     Attrib V11    0.0625393445179343
#>     Attrib V12    0.05841360559804739
#>     Attrib V13    0.09517369504809504
#>     Attrib V14    0.0757365471824196
#>     Attrib V15    0.020322734132466096
#>     Attrib V16    0.062068674521367384
#>     Attrib V17    0.2459112520766537
#>     Attrib V18    0.13545837685190262
#>     Attrib V19    -0.022019575621735298
#>     Attrib V2    0.05051477908387253
#>     Attrib V20    -0.1441823444670793
#>     Attrib V21    -0.031794085474144036
#>     Attrib V22    -0.022664889921187918
#>     Attrib V23    -0.08301378949818265
#>     Attrib V24    -0.16640357361314942
#>     Attrib V25    -0.03830623930281469
#>     Attrib V26    0.04411210039645117
#>     Attrib V27    -0.033900840646289565
#>     Attrib V28    -0.13804560472149538
#>     Attrib V29    -0.1806552378806326
#>     Attrib V3    0.0737104881941512
#>     Attrib V30    0.10704838225294928
#>     Attrib V31    0.3736484049459404
#>     Attrib V32    -0.2018487399162217
#>     Attrib V33    -0.06795693458792093
#>     Attrib V34    0.053326197110737154
#>     Attrib V35    -0.0015762161589454367
#>     Attrib V36    0.19223132479903376
#>     Attrib V37    0.2481026260651828
#>     Attrib V38    -0.06030185722442764
#>     Attrib V39    0.15336669516238643
#>     Attrib V4    0.04626553667892572
#>     Attrib V40    0.3046743341949983
#>     Attrib V41    0.11342909929291654
#>     Attrib V42    0.0963647215210926
#>     Attrib V43    -0.025382035085093582
#>     Attrib V44    -0.06525095269787602
#>     Attrib V45    -0.02535955740236905
#>     Attrib V46    -0.05032772101998813
#>     Attrib V47    -0.052427358918945295
#>     Attrib V48    -0.09163243970651651
#>     Attrib V49    -0.2074313504428079
#>     Attrib V5    0.2163284868767876
#>     Attrib V50    0.07565691983315427
#>     Attrib V51    -0.14688676798901756
#>     Attrib V52    -0.03966910638407711
#>     Attrib V53    -0.10447725846933126
#>     Attrib V54    -0.002667961191088951
#>     Attrib V55    0.09136201700651626
#>     Attrib V56    -0.09338583743838573
#>     Attrib V57    0.1466427452611594
#>     Attrib V58    0.012957024690776357
#>     Attrib V59    -0.04812489187157293
#>     Attrib V6    0.3074637310668403
#>     Attrib V60    -0.0651195503847731
#>     Attrib V7    0.062327861641470084
#>     Attrib V8    0.2851793510017942
#>     Attrib V9    0.001821083313918318
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.09177447606486187
#>     Attrib V1    0.532681862677548
#>     Attrib V10    -0.03552056117790265
#>     Attrib V11    -0.11151783842498236
#>     Attrib V12    -0.2900759932534486
#>     Attrib V13    -0.03997744798833358
#>     Attrib V14    0.19921404646627533
#>     Attrib V15    0.4434717528912475
#>     Attrib V16    0.2832509472692678
#>     Attrib V17    -0.04538693208708161
#>     Attrib V18    -0.10147134092476082
#>     Attrib V19    0.1707173484884549
#>     Attrib V2    0.11136496179395261
#>     Attrib V20    0.41758701794470543
#>     Attrib V21    0.12698953707507135
#>     Attrib V22    0.14096822208584156
#>     Attrib V23    0.15937461421679242
#>     Attrib V24    0.17872311364002308
#>     Attrib V25    -0.146681679674819
#>     Attrib V26    -0.5024937524267947
#>     Attrib V27    -0.5606677819457282
#>     Attrib V28    -0.20687653889924018
#>     Attrib V29    -0.10425440858207119
#>     Attrib V3    -0.047318099153059755
#>     Attrib V30    -0.2239330972626601
#>     Attrib V31    -0.5079559345728543
#>     Attrib V32    0.38101183062088856
#>     Attrib V33    0.2404694531566786
#>     Attrib V34    -0.05160561859162291
#>     Attrib V35    0.1941302645193961
#>     Attrib V36    -0.2561348515283742
#>     Attrib V37    -0.3072805951639004
#>     Attrib V38    0.27478627071487266
#>     Attrib V39    0.020503026322538115
#>     Attrib V4    0.17276811966712374
#>     Attrib V40    -0.24006701795960483
#>     Attrib V41    -0.14127237685567356
#>     Attrib V42    -0.024762690439525156
#>     Attrib V43    0.14415439813146852
#>     Attrib V44    0.11314358064679672
#>     Attrib V45    -0.0996933529217677
#>     Attrib V46    -0.07590369789449078
#>     Attrib V47    -0.10233419557279759
#>     Attrib V48    0.13388386888098133
#>     Attrib V49    0.28870188502075983
#>     Attrib V5    -0.2884444680829961
#>     Attrib V50    -0.2702933739585322
#>     Attrib V51    0.05166913134646321
#>     Attrib V52    -0.19002816114140308
#>     Attrib V53    0.32878635150374547
#>     Attrib V54    0.27874304628489666
#>     Attrib V55    0.06940394314595588
#>     Attrib V56    0.5620100257089317
#>     Attrib V57    0.008775924102985935
#>     Attrib V58    0.33936231692802366
#>     Attrib V59    0.5027348420754506
#>     Attrib V6    -0.36547658363195135
#>     Attrib V60    0.4996588594212279
#>     Attrib V7    0.17118017892813644
#>     Attrib V8    -0.3460727885727814
#>     Attrib V9    0.0820888136609167
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1394896158807747
#>     Attrib V1    0.23780469268310594
#>     Attrib V10    -0.00716809681141461
#>     Attrib V11    0.023593905942732526
#>     Attrib V12    -0.005527496571800515
#>     Attrib V13    -0.018113421427561102
#>     Attrib V14    0.15674839033575327
#>     Attrib V15    0.1476380397191243
#>     Attrib V16    0.09263748838626797
#>     Attrib V17    -0.051627522499391086
#>     Attrib V18    0.013635767722096414
#>     Attrib V19    -0.052708175324897445
#>     Attrib V2    0.09836955142606282
#>     Attrib V20    0.008686098065298345
#>     Attrib V21    -0.056033435872020344
#>     Attrib V22    -0.10352714122459132
#>     Attrib V23    -0.02006460107916786
#>     Attrib V24    -0.014084187959570997
#>     Attrib V25    -0.06527786708932529
#>     Attrib V26    -0.09455736761252416
#>     Attrib V27    -0.058340461558223485
#>     Attrib V28    0.017846914508981206
#>     Attrib V29    -0.010451617661699423
#>     Attrib V3    0.14116894095112997
#>     Attrib V30    -0.032282582946175906
#>     Attrib V31    -0.14073544847505767
#>     Attrib V32    0.05653344719043249
#>     Attrib V33    0.05491422997423048
#>     Attrib V34    0.006576479413848876
#>     Attrib V35    0.1098807157036999
#>     Attrib V36    0.05755260628152333
#>     Attrib V37    0.006930957641020631
#>     Attrib V38    0.02200403524720974
#>     Attrib V39    0.022752944294451048
#>     Attrib V4    0.12374898753973888
#>     Attrib V40    -0.06256754196375157
#>     Attrib V41    -0.0381664441238851
#>     Attrib V42    0.043405847595437475
#>     Attrib V43    0.017293474927023964
#>     Attrib V44    0.0649972050727731
#>     Attrib V45    0.03785026872159957
#>     Attrib V46    0.03003958424103231
#>     Attrib V47    0.013519787896008094
#>     Attrib V48    0.035737829781006425
#>     Attrib V49    0.13700945955417201
#>     Attrib V5    0.0360860905782567
#>     Attrib V50    0.0021492082407716085
#>     Attrib V51    0.06273412036744182
#>     Attrib V52    0.058631178767926596
#>     Attrib V53    0.1670485252758726
#>     Attrib V54    0.07022625571107258
#>     Attrib V55    0.07494207004773927
#>     Attrib V56    0.1777274158087721
#>     Attrib V57    0.09384831396787503
#>     Attrib V58    0.21512436583601524
#>     Attrib V59    0.16454731932639555
#>     Attrib V6    0.01588135229341589
#>     Attrib V60    0.23000177551474205
#>     Attrib V7    0.06588713927813367
#>     Attrib V8    -0.00791867953026752
#>     Attrib V9    0.09289206030081669
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
