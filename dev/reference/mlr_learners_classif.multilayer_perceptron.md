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
#>     Threshold    0.03526391523346234
#>     Node 2    2.068812824178882
#>     Node 3    1.383078885410876
#>     Node 4    0.9430567422638461
#>     Node 5    -2.7394363546479834
#>     Node 6    1.3246965460628335
#>     Node 7    2.76838999291448
#>     Node 8    0.9531121997770293
#>     Node 9    2.8220226228704024
#>     Node 10    -1.4974042486082444
#>     Node 11    1.4995803004300008
#>     Node 12    1.6616233529214712
#>     Node 13    1.4467850396684654
#>     Node 14    1.5301331491576562
#>     Node 15    -1.7082118594680527
#>     Node 16    0.017331609853917115
#>     Node 17    -0.13847142460776377
#>     Node 18    0.5091065348689019
#>     Node 19    1.989545913191604
#>     Node 20    1.64472445767942
#>     Node 21    -1.8099559625176278
#>     Node 22    0.5722203062840909
#>     Node 23    1.4510525096021534
#>     Node 24    -1.310782223503942
#>     Node 25    4.285260095893711
#>     Node 26    0.07993639488964394
#>     Node 27    1.7561083149445893
#>     Node 28    -4.551103302696493
#>     Node 29    1.1023747760769302
#>     Node 30    0.6859192236294661
#>     Node 31    0.3154704227999129
#>     Node 32    0.2161090067365444
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.009064589451893366
#>     Node 2    -2.1254445760246767
#>     Node 3    -1.3636966086337385
#>     Node 4    -0.8981026527020689
#>     Node 5    2.763985335509539
#>     Node 6    -1.2997941884330664
#>     Node 7    -2.7632252891159825
#>     Node 8    -0.9849043696343878
#>     Node 9    -2.8374126362466905
#>     Node 10    1.447668691286038
#>     Node 11    -1.4656141509167278
#>     Node 12    -1.7339801986970864
#>     Node 13    -1.390629374070788
#>     Node 14    -1.4601737858006516
#>     Node 15    1.711373191142104
#>     Node 16    -0.038404011843465445
#>     Node 17    0.16085852260457176
#>     Node 18    -0.4685677187258714
#>     Node 19    -1.98948983160313
#>     Node 20    -1.6380205180905534
#>     Node 21    1.8395521535484467
#>     Node 22    -0.6211418503558763
#>     Node 23    -1.4927825120748617
#>     Node 24    1.2966832923532245
#>     Node 25    -4.2758702018522206
#>     Node 26    -0.16653681887204155
#>     Node 27    -1.7939465668943346
#>     Node 28    4.5303630205096175
#>     Node 29    -1.133988429040216
#>     Node 30    -0.6075226187501505
#>     Node 31    -0.2619413912405028
#>     Node 32    -0.2362545895700243
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.16969435791441337
#>     Attrib V1    0.5568951090879923
#>     Attrib V10    -0.14094674837341858
#>     Attrib V11    -0.024202510741957377
#>     Attrib V12    -0.31336912829539476
#>     Attrib V13    -0.20683339923712663
#>     Attrib V14    -0.648400709325681
#>     Attrib V15    -0.02118656598626466
#>     Attrib V16    0.5255389731049396
#>     Attrib V17    0.276108976844225
#>     Attrib V18    0.07429601485707175
#>     Attrib V19    0.4826650568240541
#>     Attrib V2    0.34667076720935464
#>     Attrib V20    0.22569408399304133
#>     Attrib V21    0.2091981015503641
#>     Attrib V22    0.07776549432991775
#>     Attrib V23    0.2550338279135818
#>     Attrib V24    0.2739786661470478
#>     Attrib V25    -0.04426303733515898
#>     Attrib V26    -0.9985352741996811
#>     Attrib V27    -0.9484057871548649
#>     Attrib V28    -0.08182197565070974
#>     Attrib V29    -0.6327428601209167
#>     Attrib V3    -0.07999219277535363
#>     Attrib V30    -0.04739066175294142
#>     Attrib V31    -1.1033208689419245
#>     Attrib V32    0.7465705212834794
#>     Attrib V33    1.0816603555166138
#>     Attrib V34    0.12085925224483775
#>     Attrib V35    0.04579845449520373
#>     Attrib V36    -0.7632908713066497
#>     Attrib V37    -1.3613522993569664
#>     Attrib V38    -0.08335840604352476
#>     Attrib V39    -0.09118182698706175
#>     Attrib V4    0.1845159932852517
#>     Attrib V40    -0.8499019271839265
#>     Attrib V41    -0.3135220283659139
#>     Attrib V42    0.8008397253138875
#>     Attrib V43    0.2076031296999058
#>     Attrib V44    0.45830468944950264
#>     Attrib V45    0.5036392706869723
#>     Attrib V46    0.007208893123542646
#>     Attrib V47    -0.10936579140583977
#>     Attrib V48    0.064740925986483
#>     Attrib V49    0.1745732424941368
#>     Attrib V5    -0.42423278528248687
#>     Attrib V50    -0.9419608684295454
#>     Attrib V51    0.46396917786743436
#>     Attrib V52    0.36116128013166654
#>     Attrib V53    0.19177426108568374
#>     Attrib V54    0.5874104252055854
#>     Attrib V55    -0.04288979535256438
#>     Attrib V56    0.3499410303519882
#>     Attrib V57    -0.24748340339846403
#>     Attrib V58    0.44960132952885307
#>     Attrib V59    0.2871642585173716
#>     Attrib V6    -0.42574229080026366
#>     Attrib V60    0.3209507520990591
#>     Attrib V7    0.23263924456784288
#>     Attrib V8    0.043677328595752726
#>     Attrib V9    0.18821392419377023
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.0842018591548987
#>     Attrib V1    0.47148924104412326
#>     Attrib V10    -0.21090510614499075
#>     Attrib V11    -0.04143494076129343
#>     Attrib V12    -0.1095919343027748
#>     Attrib V13    -0.0783259481553688
#>     Attrib V14    -0.3147973421800865
#>     Attrib V15    0.13921515720088118
#>     Attrib V16    0.344136723484185
#>     Attrib V17    0.15700433473159228
#>     Attrib V18    -0.04133852886771067
#>     Attrib V19    0.2385791280881728
#>     Attrib V2    0.3568090075864233
#>     Attrib V20    0.13000025868713216
#>     Attrib V21    0.06204321143379204
#>     Attrib V22    0.02269199553746589
#>     Attrib V23    0.10952337050233824
#>     Attrib V24    0.14912479754840577
#>     Attrib V25    -0.0302969574390753
#>     Attrib V26    -0.6995983552672997
#>     Attrib V27    -0.7754527687872808
#>     Attrib V28    -0.34603443208768797
#>     Attrib V29    -0.6227293588076226
#>     Attrib V3    -0.031001558271047596
#>     Attrib V30    -0.09536118481496962
#>     Attrib V31    -0.6508502901443519
#>     Attrib V32    0.42118085461828997
#>     Attrib V33    0.7075085765638306
#>     Attrib V34    0.1336813812876488
#>     Attrib V35    0.05157712937988703
#>     Attrib V36    -0.39974531038796896
#>     Attrib V37    -0.7023463754144982
#>     Attrib V38    -0.009802010701461555
#>     Attrib V39    0.029136173152580064
#>     Attrib V4    0.12773041361794357
#>     Attrib V40    -0.5152746350147204
#>     Attrib V41    -0.2517527774660371
#>     Attrib V42    0.41491029579672223
#>     Attrib V43    0.05856623880479509
#>     Attrib V44    0.19066289704735254
#>     Attrib V45    0.24643394970195884
#>     Attrib V46    -0.08356649014333095
#>     Attrib V47    -0.1319047967100903
#>     Attrib V48    -0.057515434238615396
#>     Attrib V49    0.04370693815052729
#>     Attrib V5    -0.3389953974155516
#>     Attrib V50    -0.4911414779386205
#>     Attrib V51    0.24092282911833912
#>     Attrib V52    0.22620997998947373
#>     Attrib V53    0.1204965457668255
#>     Attrib V54    0.6096999380093412
#>     Attrib V55    0.18459890581971405
#>     Attrib V56    0.2742889336280756
#>     Attrib V57    0.060742964074330726
#>     Attrib V58    0.36648660415191364
#>     Attrib V59    0.3242532869746108
#>     Attrib V6    -0.31741007917310066
#>     Attrib V60    0.2826994776650028
#>     Attrib V7    0.0960391620339109
#>     Attrib V8    0.012822239033386675
#>     Attrib V9    -0.04258567007748071
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.1253431914527314
#>     Attrib V1    0.33224315696372875
#>     Attrib V10    -0.19511889700102064
#>     Attrib V11    -0.0709222742728663
#>     Attrib V12    -0.17974929403158957
#>     Attrib V13    -0.07188929313196542
#>     Attrib V14    -0.14384430435227466
#>     Attrib V15    0.14745401756511603
#>     Attrib V16    0.28543130326313343
#>     Attrib V17    0.14517098598654612
#>     Attrib V18    0.00425725604995239
#>     Attrib V19    0.1509440338751074
#>     Attrib V2    0.22802962732493023
#>     Attrib V20    0.11196785802399836
#>     Attrib V21    0.1440978915405515
#>     Attrib V22    -0.017160138050558753
#>     Attrib V23    0.07089699875428085
#>     Attrib V24    0.013195517621068036
#>     Attrib V25    -0.17162435699795223
#>     Attrib V26    -0.5680821178831046
#>     Attrib V27    -0.568705713673568
#>     Attrib V28    -0.11565722479763908
#>     Attrib V29    -0.22900730829481264
#>     Attrib V3    0.020808101983464042
#>     Attrib V30    -0.050473453053716255
#>     Attrib V31    -0.5536070455099027
#>     Attrib V32    0.1847708468812718
#>     Attrib V33    0.4542007587807776
#>     Attrib V34    0.0581485320404503
#>     Attrib V35    0.013931878333590952
#>     Attrib V36    -0.287965470404819
#>     Attrib V37    -0.47600394565031434
#>     Attrib V38    0.012131210115929611
#>     Attrib V39    0.0583504165687047
#>     Attrib V4    0.12180227076917315
#>     Attrib V40    -0.3596555792322731
#>     Attrib V41    -0.19235682119089048
#>     Attrib V42    0.3162329112331303
#>     Attrib V43    0.0036379578773770927
#>     Attrib V44    0.15053854321723578
#>     Attrib V45    0.2710594082009563
#>     Attrib V46    -0.05326798071877735
#>     Attrib V47    -0.12566443931041404
#>     Attrib V48    -0.017431252903297896
#>     Attrib V49    0.08277061135536903
#>     Attrib V5    -0.1647812277087992
#>     Attrib V50    -0.3209290797749167
#>     Attrib V51    0.23212563528717564
#>     Attrib V52    0.16026766902123865
#>     Attrib V53    0.15179840638008396
#>     Attrib V54    0.3380305411197306
#>     Attrib V55    0.09696622256739952
#>     Attrib V56    0.18563480932408474
#>     Attrib V57    0.07961527713328147
#>     Attrib V58    0.2470998260534543
#>     Attrib V59    0.24638032829939377
#>     Attrib V6    -0.23276401443428527
#>     Attrib V60    0.17721063603626058
#>     Attrib V7    0.07629623316088185
#>     Attrib V8    -0.025675792172481025
#>     Attrib V9    0.004463479960965671
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.07304337629354411
#>     Attrib V1    -0.4582906729208396
#>     Attrib V10    -0.7723571683899294
#>     Attrib V11    -1.0469600944092659
#>     Attrib V12    -0.365892876268002
#>     Attrib V13    -0.2886935131840457
#>     Attrib V14    0.5654441866088088
#>     Attrib V15    0.8050113727344326
#>     Attrib V16    0.2655249241229019
#>     Attrib V17    0.2909117898605529
#>     Attrib V18    0.07232151501070072
#>     Attrib V19    -0.2885836963122068
#>     Attrib V2    -0.018786043069325388
#>     Attrib V20    -0.34981864075260916
#>     Attrib V21    -0.6346940137262268
#>     Attrib V22    -0.3236162767595491
#>     Attrib V23    -0.4891881069735652
#>     Attrib V24    -0.2272986289142062
#>     Attrib V25    -0.458498795298926
#>     Attrib V26    -0.42581967210692095
#>     Attrib V27    -0.8276992970257159
#>     Attrib V28    -1.7989295165579595
#>     Attrib V29    -1.152760857710766
#>     Attrib V3    0.10898030566164406
#>     Attrib V30    -1.090532259109704
#>     Attrib V31    0.9070987467291081
#>     Attrib V32    -0.05957440580822375
#>     Attrib V33    0.037292431026338536
#>     Attrib V34    0.654966743491346
#>     Attrib V35    -0.07020302114072186
#>     Attrib V36    0.34296893997184225
#>     Attrib V37    0.6960668654059035
#>     Attrib V38    0.0466674884422418
#>     Attrib V39    -0.3613980080682927
#>     Attrib V4    -0.5138583893352257
#>     Attrib V40    0.011362833193481496
#>     Attrib V41    -0.23852491833620768
#>     Attrib V42    -0.36277515248433734
#>     Attrib V43    -0.1288882688259605
#>     Attrib V44    -0.5850476701954934
#>     Attrib V45    -0.840445122429201
#>     Attrib V46    -0.7232887700890649
#>     Attrib V47    -0.5200576029705573
#>     Attrib V48    -0.47178965269243356
#>     Attrib V49    -0.9676278099825637
#>     Attrib V5    -0.03564186547927496
#>     Attrib V50    0.5073545487756634
#>     Attrib V51    -0.9974762595198635
#>     Attrib V52    -0.9041318011195675
#>     Attrib V53    -0.249168753756139
#>     Attrib V54    -0.03878643750531925
#>     Attrib V55    0.32073157056792706
#>     Attrib V56    0.48178454956751815
#>     Attrib V57    0.8252095359342599
#>     Attrib V58    0.06041440524615928
#>     Attrib V59    0.5553107706639031
#>     Attrib V6    0.13040652664852623
#>     Attrib V60    0.37210364146929004
#>     Attrib V7    0.20615739856605672
#>     Attrib V8    0.03124586246736495
#>     Attrib V9    -1.0853040219154029
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.10643401677964404
#>     Attrib V1    0.4477540344582947
#>     Attrib V10    -0.24258507429955384
#>     Attrib V11    -0.09256897231393311
#>     Attrib V12    -0.17003705952893253
#>     Attrib V13    -0.18836210210536053
#>     Attrib V14    -0.36872509951656485
#>     Attrib V15    0.09554173230181649
#>     Attrib V16    0.4323002679622939
#>     Attrib V17    0.16663653550076
#>     Attrib V18    0.0585599657538727
#>     Attrib V19    0.2256501471936202
#>     Attrib V2    0.33524634449002005
#>     Attrib V20    0.1308029114163292
#>     Attrib V21    0.09661964303352877
#>     Attrib V22    -0.005172222385161795
#>     Attrib V23    0.1138317745096063
#>     Attrib V24    0.1703990701253442
#>     Attrib V25    -0.039501753009947835
#>     Attrib V26    -0.6743382811335704
#>     Attrib V27    -0.6889615014384223
#>     Attrib V28    -0.35161608820802476
#>     Attrib V29    -0.5705325956614774
#>     Attrib V3    -0.01528806344579365
#>     Attrib V30    -0.1575280569144489
#>     Attrib V31    -0.6707099245961271
#>     Attrib V32    0.42955295259389265
#>     Attrib V33    0.6839243811823827
#>     Attrib V34    0.12178886497687721
#>     Attrib V35    0.06260557907222601
#>     Attrib V36    -0.4210278594557037
#>     Attrib V37    -0.7011557955668647
#>     Attrib V38    -0.029611515465737488
#>     Attrib V39    -0.05905173124992692
#>     Attrib V4    0.15201362624831913
#>     Attrib V40    -0.5425853323310709
#>     Attrib V41    -0.18746123125537645
#>     Attrib V42    0.44170726936870497
#>     Attrib V43    0.05718858527853988
#>     Attrib V44    0.16854164483085352
#>     Attrib V45    0.2701948014214267
#>     Attrib V46    -0.021157588163067433
#>     Attrib V47    -0.13388215246275856
#>     Attrib V48    -0.06997311020974928
#>     Attrib V49    0.045719801647690836
#>     Attrib V5    -0.3157544932818091
#>     Attrib V50    -0.4233687154608071
#>     Attrib V51    0.25189363138357024
#>     Attrib V52    0.1731886339318486
#>     Attrib V53    0.1651101278326518
#>     Attrib V54    0.46959243510261145
#>     Attrib V55    0.09956542147854006
#>     Attrib V56    0.28299143854455316
#>     Attrib V57    0.044960487051111345
#>     Attrib V58    0.3702277673419402
#>     Attrib V59    0.30939647024451583
#>     Attrib V6    -0.20210291088425486
#>     Attrib V60    0.2776486359298506
#>     Attrib V7    0.18218258874713206
#>     Attrib V8    0.030081539431524393
#>     Attrib V9    0.04625721561586816
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.0644005500271588
#>     Attrib V1    0.37307976371756163
#>     Attrib V10    0.6023020522799459
#>     Attrib V11    1.0343336375331904
#>     Attrib V12    0.44810248657631424
#>     Attrib V13    0.3212553077786918
#>     Attrib V14    -0.4607220679751797
#>     Attrib V15    -0.8890995351722242
#>     Attrib V16    -0.3873591719471021
#>     Attrib V17    -0.12010015690914964
#>     Attrib V18    0.11984072090603363
#>     Attrib V19    0.3467321024279045
#>     Attrib V2    0.04197785149123615
#>     Attrib V20    0.2099617901153313
#>     Attrib V21    0.5243343490227959
#>     Attrib V22    0.29516632584763136
#>     Attrib V23    0.6955317466918538
#>     Attrib V24    0.2041262314005197
#>     Attrib V25    0.3532779187399461
#>     Attrib V26    0.3945162593652391
#>     Attrib V27    1.014047526041748
#>     Attrib V28    1.8867090179965338
#>     Attrib V29    1.4172824074902775
#>     Attrib V3    0.12368124021623639
#>     Attrib V30    1.08847283039399
#>     Attrib V31    -0.8256659946006549
#>     Attrib V32    -0.017048130738706032
#>     Attrib V33    -0.26724467685757236
#>     Attrib V34    -0.9321686215768924
#>     Attrib V35    -0.15862491845587343
#>     Attrib V36    -0.43155693618011565
#>     Attrib V37    -0.6137630401667007
#>     Attrib V38    -0.020140170453195386
#>     Attrib V39    0.4558998001488423
#>     Attrib V4    0.6032466351359996
#>     Attrib V40    0.1368551311938609
#>     Attrib V41    0.38734450448465935
#>     Attrib V42    0.4938808844689366
#>     Attrib V43    0.2463833867123978
#>     Attrib V44    0.6562673397906653
#>     Attrib V45    0.6928863472579408
#>     Attrib V46    0.6399902044275548
#>     Attrib V47    0.4760169584086316
#>     Attrib V48    0.3874352181120009
#>     Attrib V49    0.9213430931395095
#>     Attrib V5    0.3102413307441305
#>     Attrib V50    -0.40373439616432727
#>     Attrib V51    0.9802568642439681
#>     Attrib V52    0.9631929611939615
#>     Attrib V53    0.3236677083942855
#>     Attrib V54    -0.049977237981740585
#>     Attrib V55    -0.40718136228037294
#>     Attrib V56    -0.41113796627037014
#>     Attrib V57    -0.6857878677926392
#>     Attrib V58    -0.05150182784030458
#>     Attrib V59    -0.4443118123744943
#>     Attrib V6    0.1043597176959159
#>     Attrib V60    -0.501609308117198
#>     Attrib V7    -0.2846197114031228
#>     Attrib V8    -0.2891366244352204
#>     Attrib V9    0.8465990071770974
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.06182213324383362
#>     Attrib V1    0.34337201458254973
#>     Attrib V10    -0.1488243891589915
#>     Attrib V11    -0.013638446562311092
#>     Attrib V12    -0.15282710999732343
#>     Attrib V13    -0.08194890423142359
#>     Attrib V14    -0.28514953612918614
#>     Attrib V15    0.062144984589778726
#>     Attrib V16    0.3443195842394369
#>     Attrib V17    0.14820471889372105
#>     Attrib V18    -8.681521699654372E-4
#>     Attrib V19    0.19702024559221668
#>     Attrib V2    0.25946545107929114
#>     Attrib V20    0.08146928383271186
#>     Attrib V21    0.09807572875134246
#>     Attrib V22    -0.0066075368974120325
#>     Attrib V23    0.08705433581019809
#>     Attrib V24    0.10710785395391098
#>     Attrib V25    -0.09063326844869468
#>     Attrib V26    -0.5255038605054425
#>     Attrib V27    -0.5540391446761542
#>     Attrib V28    -0.19784558284488668
#>     Attrib V29    -0.3599389649992754
#>     Attrib V3    -0.02291719781794486
#>     Attrib V30    -0.06987710279230275
#>     Attrib V31    -0.5636127819196141
#>     Attrib V32    0.25860062224824204
#>     Attrib V33    0.5071055122723728
#>     Attrib V34    0.06922525664346667
#>     Attrib V35    0.021152236030015564
#>     Attrib V36    -0.25868220701370176
#>     Attrib V37    -0.5154809476697084
#>     Attrib V38    0.08412804164671764
#>     Attrib V39    0.018794970487183264
#>     Attrib V4    0.16931304570025216
#>     Attrib V40    -0.3994635303282491
#>     Attrib V41    -0.19340890543264458
#>     Attrib V42    0.22872325309879207
#>     Attrib V43    0.020330820896420403
#>     Attrib V44    0.18403376252673978
#>     Attrib V45    0.24162563336927004
#>     Attrib V46    0.0037009082509137396
#>     Attrib V47    -0.07783553803905387
#>     Attrib V48    0.023329704422555636
#>     Attrib V49    0.0925822217168372
#>     Attrib V5    -0.2461984494751565
#>     Attrib V50    -0.37839077689232237
#>     Attrib V51    0.2155900181718954
#>     Attrib V52    0.175199132448177
#>     Attrib V53    0.15931149297537597
#>     Attrib V54    0.4060216083967074
#>     Attrib V55    0.07634983642530327
#>     Attrib V56    0.14251034455973763
#>     Attrib V57    0.09600487849542268
#>     Attrib V58    0.23469112150311205
#>     Attrib V59    0.2488453664944652
#>     Attrib V6    -0.2421506227237373
#>     Attrib V60    0.21289005083604923
#>     Attrib V7    0.10339980197590123
#>     Attrib V8    -0.04298442737835341
#>     Attrib V9    0.014627377458207821
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    -0.08387984701623574
#>     Attrib V1    0.04711801881112096
#>     Attrib V10    0.9101533086509379
#>     Attrib V11    1.2942971055026906
#>     Attrib V12    0.9558538260861256
#>     Attrib V13    0.40004045091677765
#>     Attrib V14    -1.045368128356654
#>     Attrib V15    -1.3207286728459198
#>     Attrib V16    -0.6415474330929777
#>     Attrib V17    -0.04578939947919895
#>     Attrib V18    0.2702021283851076
#>     Attrib V19    0.5764527467905823
#>     Attrib V2    -0.11758384979900752
#>     Attrib V20    0.09842470705185553
#>     Attrib V21    0.20723137467965463
#>     Attrib V22    0.2237374995240502
#>     Attrib V23    0.7777346024272088
#>     Attrib V24    0.6161769184511943
#>     Attrib V25    0.9631146584328366
#>     Attrib V26    0.6751021680338217
#>     Attrib V27    0.9475168967951886
#>     Attrib V28    1.3806460032447339
#>     Attrib V29    0.33802790609024946
#>     Attrib V3    -0.059430093771454584
#>     Attrib V30    0.8000391891229897
#>     Attrib V31    -0.5966124754175418
#>     Attrib V32    0.30880801067911695
#>     Attrib V33    -0.07551566051586735
#>     Attrib V34    -0.5711727382048178
#>     Attrib V35    0.23000153386863206
#>     Attrib V36    -0.3439964770359447
#>     Attrib V37    -0.9906944125177958
#>     Attrib V38    -0.20583728408744917
#>     Attrib V39    0.3838270878571381
#>     Attrib V4    0.36802477739701556
#>     Attrib V40    0.05130001889998842
#>     Attrib V41    0.09021935890673552
#>     Attrib V42    0.2567058035947906
#>     Attrib V43    0.3732803014283294
#>     Attrib V44    0.7058563899933745
#>     Attrib V45    0.6550969581351267
#>     Attrib V46    0.6254819651689745
#>     Attrib V47    0.6654700456241037
#>     Attrib V48    0.6826664396288286
#>     Attrib V49    1.202917088176639
#>     Attrib V5    0.03877102525542546
#>     Attrib V50    -0.39480678989621276
#>     Attrib V51    1.2026959127264136
#>     Attrib V52    1.0400558690561774
#>     Attrib V53    0.3475731781393779
#>     Attrib V54    0.06453688901398671
#>     Attrib V55    -0.3373471938877488
#>     Attrib V56    -0.276681387607207
#>     Attrib V57    -0.9277630372430318
#>     Attrib V58    -0.11028334513298355
#>     Attrib V59    -0.6442751353578567
#>     Attrib V6    0.008308085998737749
#>     Attrib V60    -0.5160957871137993
#>     Attrib V7    -0.29116596669779143
#>     Attrib V8    -0.5251047681028043
#>     Attrib V9    0.9389157852110188
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.1504829792039489
#>     Attrib V1    -0.32980756031725394
#>     Attrib V10    -0.3511289354931517
#>     Attrib V11    -0.5655884482132492
#>     Attrib V12    -0.0647372397621356
#>     Attrib V13    0.04947768886653326
#>     Attrib V14    0.7598969723324169
#>     Attrib V15    0.40838180648065375
#>     Attrib V16    0.004655684335581821
#>     Attrib V17    0.07957922816622974
#>     Attrib V18    0.19257588942678797
#>     Attrib V19    -0.1808437244319043
#>     Attrib V2    -0.12197211072517346
#>     Attrib V20    -0.08371203790258468
#>     Attrib V21    -0.18511355937680385
#>     Attrib V22    -0.13930698512612877
#>     Attrib V23    -0.20313093698385923
#>     Attrib V24    -0.20589934448678293
#>     Attrib V25    -0.24598614185081444
#>     Attrib V26    0.31321535211916424
#>     Attrib V27    0.23868298585466377
#>     Attrib V28    -0.5153680736401913
#>     Attrib V29    -0.15405372605364145
#>     Attrib V3    0.21698577174164674
#>     Attrib V30    -0.41445628742762125
#>     Attrib V31    0.8204659062854248
#>     Attrib V32    -0.4703915705131322
#>     Attrib V33    -0.4380469953941429
#>     Attrib V34    0.2363523598658862
#>     Attrib V35    0.01677131065463364
#>     Attrib V36    0.46026956532887603
#>     Attrib V37    0.747613730694943
#>     Attrib V38    -0.07359715929117125
#>     Attrib V39    -0.20692051976871104
#>     Attrib V4    -0.17116741129507376
#>     Attrib V40    0.43547096326838436
#>     Attrib V41    0.16737715171346998
#>     Attrib V42    -0.413544074428881
#>     Attrib V43    -0.11221169830316269
#>     Attrib V44    -0.46213308268484826
#>     Attrib V45    -0.6141945922536514
#>     Attrib V46    -0.3637006530734437
#>     Attrib V47    -0.15748946780585452
#>     Attrib V48    -0.24850413425261064
#>     Attrib V49    -0.5096471210014093
#>     Attrib V5    0.33443818746266657
#>     Attrib V50    0.6969091151934335
#>     Attrib V51    -0.5630158389269049
#>     Attrib V52    -0.41979554190392954
#>     Attrib V53    0.051382762640827424
#>     Attrib V54    -0.1870493547563278
#>     Attrib V55    0.230290576970022
#>     Attrib V56    0.1901543830562554
#>     Attrib V57    0.43364605656685784
#>     Attrib V58    -0.1324179923980246
#>     Attrib V59    0.22415902167426208
#>     Attrib V6    0.38199475496677315
#>     Attrib V60    0.2383145468465774
#>     Attrib V7    -0.019343150896478773
#>     Attrib V8    0.026012753405271885
#>     Attrib V9    -0.601878579139322
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.11639104108589972
#>     Attrib V1    0.4530619844760699
#>     Attrib V10    -0.2374043799340145
#>     Attrib V11    -0.031660156946686786
#>     Attrib V12    -0.1097116551253199
#>     Attrib V13    -0.17924802451657681
#>     Attrib V14    -0.44116161611285915
#>     Attrib V15    0.05043163978602811
#>     Attrib V16    0.3986200199197094
#>     Attrib V17    0.23691277265135835
#>     Attrib V18    0.03601341377126386
#>     Attrib V19    0.23259707301242588
#>     Attrib V2    0.30844315728293736
#>     Attrib V20    0.1669395659702085
#>     Attrib V21    0.05945817235737389
#>     Attrib V22    -0.02942536492241073
#>     Attrib V23    0.11381817407628833
#>     Attrib V24    0.17667148027551277
#>     Attrib V25    -0.005954209065100747
#>     Attrib V26    -0.7459245028838604
#>     Attrib V27    -0.8038152145794131
#>     Attrib V28    -0.3614616552151522
#>     Attrib V29    -0.7076714547735323
#>     Attrib V3    -0.1043615751905379
#>     Attrib V30    -0.17667041417541834
#>     Attrib V31    -0.7535175335789112
#>     Attrib V32    0.4110991367397055
#>     Attrib V33    0.7504878320193559
#>     Attrib V34    0.24206735059224457
#>     Attrib V35    0.12770188539616403
#>     Attrib V36    -0.4007605343864352
#>     Attrib V37    -0.793756175673349
#>     Attrib V38    0.07550541610800254
#>     Attrib V39    -0.01392307115646509
#>     Attrib V4    0.10219710745544261
#>     Attrib V40    -0.5962645259505052
#>     Attrib V41    -0.3502798409904045
#>     Attrib V42    0.41587049277332083
#>     Attrib V43    0.06729224844309165
#>     Attrib V44    0.24390723308970597
#>     Attrib V45    0.35602299949874217
#>     Attrib V46    -0.0660884132425447
#>     Attrib V47    -0.1161982795573366
#>     Attrib V48    0.03735134234503601
#>     Attrib V49    0.07959256486626634
#>     Attrib V5    -0.3427240393504843
#>     Attrib V50    -0.5065545784547274
#>     Attrib V51    0.35394864541328036
#>     Attrib V52    0.17798781899798913
#>     Attrib V53    0.13643395330265565
#>     Attrib V54    0.6253443137919757
#>     Attrib V55    0.14550155774175916
#>     Attrib V56    0.3057149344489525
#>     Attrib V57    0.061962466476240693
#>     Attrib V58    0.3580141324350554
#>     Attrib V59    0.26240022317955225
#>     Attrib V6    -0.29731775547861383
#>     Attrib V60    0.2721499351651102
#>     Attrib V7    0.12090063455594484
#>     Attrib V8    0.004013767611017243
#>     Attrib V9    0.021211660653086196
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.05158618330537687
#>     Attrib V1    0.5372657953930827
#>     Attrib V10    -0.31601148633783693
#>     Attrib V11    -0.07104590294011635
#>     Attrib V12    -0.33322738498218907
#>     Attrib V13    -0.17834270397963684
#>     Attrib V14    -0.3858142713078105
#>     Attrib V15    0.1314082233095878
#>     Attrib V16    0.5306776260371202
#>     Attrib V17    0.2312169608987972
#>     Attrib V18    0.0035055079613986045
#>     Attrib V19    0.32595057551417395
#>     Attrib V2    0.4334012570010971
#>     Attrib V20    0.16312211955296008
#>     Attrib V21    0.15609012697270191
#>     Attrib V22    0.08882751531546108
#>     Attrib V23    0.16061771032087876
#>     Attrib V24    0.10056116867234631
#>     Attrib V25    -0.19540231712442677
#>     Attrib V26    -0.9160953672369946
#>     Attrib V27    -0.8287881986369418
#>     Attrib V28    -0.24150815677777535
#>     Attrib V29    -0.45427614152896395
#>     Attrib V3    -0.08655302279433459
#>     Attrib V30    -0.09938464641218826
#>     Attrib V31    -0.8959894342832192
#>     Attrib V32    0.4318375338701401
#>     Attrib V33    0.8521308266370321
#>     Attrib V34    0.14774131066014595
#>     Attrib V35    -0.001509272416857543
#>     Attrib V36    -0.5447576354959945
#>     Attrib V37    -0.8873881998495396
#>     Attrib V38    0.05081431783814271
#>     Attrib V39    -0.04739640901520948
#>     Attrib V4    0.2035019961758494
#>     Attrib V40    -0.6564996902299499
#>     Attrib V41    -0.28585156883110746
#>     Attrib V42    0.5300668296447824
#>     Attrib V43    0.1197085785603206
#>     Attrib V44    0.22444193672240811
#>     Attrib V45    0.40905718044232403
#>     Attrib V46    0.025398241099762697
#>     Attrib V47    -0.16842027360950163
#>     Attrib V48    -0.005008115484938652
#>     Attrib V49    0.042429182627372004
#>     Attrib V5    -0.3590381749068027
#>     Attrib V50    -0.6722124220075636
#>     Attrib V51    0.31047768530886843
#>     Attrib V52    0.2623834892565745
#>     Attrib V53    0.18132765505874504
#>     Attrib V54    0.5821548708169606
#>     Attrib V55    0.06768350616695568
#>     Attrib V56    0.3208495579431956
#>     Attrib V57    0.050097515620827975
#>     Attrib V58    0.4210267023032831
#>     Attrib V59    0.3739070046622142
#>     Attrib V6    -0.35596469690801574
#>     Attrib V60    0.29569285192474615
#>     Attrib V7    0.18957539071881319
#>     Attrib V8    0.054298929921924574
#>     Attrib V9    0.02999516181461668
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.17433966507310086
#>     Attrib V1    0.4462859425383827
#>     Attrib V10    -0.22413947268724269
#>     Attrib V11    -0.06651805553312987
#>     Attrib V12    -0.22752835656221018
#>     Attrib V13    -0.09595068429860211
#>     Attrib V14    -0.4081666933357267
#>     Attrib V15    0.05378185210717857
#>     Attrib V16    0.37823500891871203
#>     Attrib V17    0.2260970612838451
#>     Attrib V18    0.04898479096701673
#>     Attrib V19    0.27825359920552745
#>     Attrib V2    0.303848036163739
#>     Attrib V20    0.17247958435181626
#>     Attrib V21    0.13406205679663835
#>     Attrib V22    0.019181005663700245
#>     Attrib V23    0.1936832750960286
#>     Attrib V24    0.18181280928667007
#>     Attrib V25    -0.031248396955615678
#>     Attrib V26    -0.7696706506815719
#>     Attrib V27    -0.719588415411112
#>     Attrib V28    -0.2734375415430414
#>     Attrib V29    -0.5042473319919839
#>     Attrib V3    -0.0011725350592776743
#>     Attrib V30    -0.09950869190688993
#>     Attrib V31    -0.7976250558829824
#>     Attrib V32    0.45410303680637104
#>     Attrib V33    0.7304007989302708
#>     Attrib V34    0.14527488944741568
#>     Attrib V35    0.013937133893283424
#>     Attrib V36    -0.4861293545761197
#>     Attrib V37    -0.8121695569618522
#>     Attrib V38    -0.023838161200922085
#>     Attrib V39    0.011072738746186667
#>     Attrib V4    0.1530870720974604
#>     Attrib V40    -0.5695159352545871
#>     Attrib V41    -0.24389310608831838
#>     Attrib V42    0.5028810876393393
#>     Attrib V43    0.05160737631359172
#>     Attrib V44    0.22807196690389622
#>     Attrib V45    0.29120106555656267
#>     Attrib V46    0.007191456373823051
#>     Attrib V47    -0.07983824639805301
#>     Attrib V48    -0.022445329090996256
#>     Attrib V49    0.12658774892207386
#>     Attrib V5    -0.31262061953342724
#>     Attrib V50    -0.5790444581850582
#>     Attrib V51    0.28176428648094254
#>     Attrib V52    0.19932790341398965
#>     Attrib V53    0.15104019805612032
#>     Attrib V54    0.4890839441812153
#>     Attrib V55    0.05831952377642213
#>     Attrib V56    0.2692653992658968
#>     Attrib V57    -0.018334666573937862
#>     Attrib V58    0.35517053248747266
#>     Attrib V59    0.30889706635463177
#>     Attrib V6    -0.2526280357765014
#>     Attrib V60    0.2955760128146072
#>     Attrib V7    0.2098240619577398
#>     Attrib V8    -0.02571379463335304
#>     Attrib V9    0.04845573780636624
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.04307647512990744
#>     Attrib V1    0.5514160691660926
#>     Attrib V10    -0.2638540417309639
#>     Attrib V11    0.09807838227812961
#>     Attrib V12    0.08237070442865368
#>     Attrib V13    -0.08817996376519775
#>     Attrib V14    -0.37447807956904944
#>     Attrib V15    0.10255396227581194
#>     Attrib V16    0.29458560594031435
#>     Attrib V17    0.15483133225899132
#>     Attrib V18    -0.03223255985496437
#>     Attrib V19    0.10857643193828315
#>     Attrib V2    0.36714884146925153
#>     Attrib V20    0.05881440400054793
#>     Attrib V21    -0.022936895362347817
#>     Attrib V22    -0.1073232435915812
#>     Attrib V23    0.07432722359010004
#>     Attrib V24    0.19026367357524035
#>     Attrib V25    0.06245880434992638
#>     Attrib V26    -0.5567613517591832
#>     Attrib V27    -0.7967608827550479
#>     Attrib V28    -0.6095726492292716
#>     Attrib V29    -0.8856881678883235
#>     Attrib V3    -0.1279788095135292
#>     Attrib V30    -0.2580964768428167
#>     Attrib V31    -0.5933326579114431
#>     Attrib V32    0.36316330445477246
#>     Attrib V33    0.6960298061752574
#>     Attrib V34    0.27027332765702994
#>     Attrib V35    0.15943521121529167
#>     Attrib V36    -0.32639130249183773
#>     Attrib V37    -0.5683533842228008
#>     Attrib V38    0.06821797836892161
#>     Attrib V39    0.06738030421216533
#>     Attrib V4    0.07201375126150389
#>     Attrib V40    -0.49857715613050146
#>     Attrib V41    -0.3519485539977497
#>     Attrib V42    0.26211086644016574
#>     Attrib V43    0.027971318536592297
#>     Attrib V44    0.14544595903166885
#>     Attrib V45    0.15237176877811617
#>     Attrib V46    -0.12252740771119586
#>     Attrib V47    -0.22897448572292178
#>     Attrib V48    -3.8789575040340643E-4
#>     Attrib V49    0.06991354699641339
#>     Attrib V5    -0.4329987454253076
#>     Attrib V50    -0.43716836172746804
#>     Attrib V51    0.2358836938746129
#>     Attrib V52    0.17290447473551426
#>     Attrib V53    0.17371186288856522
#>     Attrib V54    0.7656632130038658
#>     Attrib V55    0.3025935742648015
#>     Attrib V56    0.32302626130776063
#>     Attrib V57    0.17812410039922338
#>     Attrib V58    0.3225873329906555
#>     Attrib V59    0.35332588093290723
#>     Attrib V6    -0.3401468725858579
#>     Attrib V60    0.4307472002728527
#>     Attrib V7    0.11352290039098999
#>     Attrib V8    -0.09419986060042418
#>     Attrib V9    -0.07183810299989969
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.14381500160560098
#>     Attrib V1    -0.5391511880881864
#>     Attrib V10    -0.16499651638577315
#>     Attrib V11    -0.4530645882752393
#>     Attrib V12    0.03545696656173907
#>     Attrib V13    0.005672465863279799
#>     Attrib V14    0.685167896285581
#>     Attrib V15    0.3715647463127902
#>     Attrib V16    -0.1587943620774717
#>     Attrib V17    -0.04586948467225763
#>     Attrib V18    0.03425531179442124
#>     Attrib V19    -0.3501922202358258
#>     Attrib V2    -0.21520464373501724
#>     Attrib V20    -0.17516764656723277
#>     Attrib V21    -0.27763164927878475
#>     Attrib V22    -0.08923174875379092
#>     Attrib V23    -0.22658399345505062
#>     Attrib V24    -0.17284039459911263
#>     Attrib V25    -0.10185402452822762
#>     Attrib V26    0.6948353701426828
#>     Attrib V27    0.5470362091190789
#>     Attrib V28    -0.2660875876084966
#>     Attrib V29    0.15900653096481104
#>     Attrib V3    0.2634160541609424
#>     Attrib V30    -0.32675070568124837
#>     Attrib V31    1.0277238311632264
#>     Attrib V32    -0.49041240162334376
#>     Attrib V33    -0.7052604493679966
#>     Attrib V34    0.18916862823983102
#>     Attrib V35    0.002611457263461083
#>     Attrib V36    0.6731586870039497
#>     Attrib V37    1.116128033497453
#>     Attrib V38    -0.02779180797135186
#>     Attrib V39    -0.11270015108931021
#>     Attrib V4    -0.18840723882540092
#>     Attrib V40    0.6258323085509452
#>     Attrib V41    0.1828927483495387
#>     Attrib V42    -0.668871452033831
#>     Attrib V43    -0.17827215765140275
#>     Attrib V44    -0.5142186487846996
#>     Attrib V45    -0.6874056247787217
#>     Attrib V46    -0.2056066922906092
#>     Attrib V47    -0.06618780969254222
#>     Attrib V48    -0.22762420686925278
#>     Attrib V49    -0.45818685909573453
#>     Attrib V5    0.4456571363278855
#>     Attrib V50    0.8708659070510905
#>     Attrib V51    -0.5753316581131233
#>     Attrib V52    -0.4634123450584523
#>     Attrib V53    -0.03743955038106758
#>     Attrib V54    -0.33474715469044236
#>     Attrib V55    0.2572538268344934
#>     Attrib V56    0.03673027815661843
#>     Attrib V57    0.3523907927109759
#>     Attrib V58    -0.21520774079961885
#>     Attrib V59    0.07203863072426063
#>     Attrib V6    0.37735283841115325
#>     Attrib V60    -0.017838645483765292
#>     Attrib V7    -0.14485438135601797
#>     Attrib V8    0.07285758301059836
#>     Attrib V9    -0.42895459159671906
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1909812877156056
#>     Attrib V1    0.050952495721777166
#>     Attrib V10    0.010965581625975227
#>     Attrib V11    -0.019950063435210545
#>     Attrib V12    -0.012399558433673895
#>     Attrib V13    0.01755469784136196
#>     Attrib V14    -0.003935117861778511
#>     Attrib V15    0.02387186598974795
#>     Attrib V16    0.10579868727911958
#>     Attrib V17    0.11812391361414086
#>     Attrib V18    0.10773568370419631
#>     Attrib V19    0.047460741074553656
#>     Attrib V2    0.02748212587346346
#>     Attrib V20    -0.05329412630158367
#>     Attrib V21    -0.073682345142921
#>     Attrib V22    -0.06753397553371424
#>     Attrib V23    -0.06029810318015537
#>     Attrib V24    -0.026634228769815027
#>     Attrib V25    -0.038573868457170805
#>     Attrib V26    -0.09586483556219749
#>     Attrib V27    -0.08814061871112547
#>     Attrib V28    -0.05468573897432665
#>     Attrib V29    -0.08757518735232332
#>     Attrib V3    0.10393498979520338
#>     Attrib V30    -0.07135629146664091
#>     Attrib V31    -0.06774524360913965
#>     Attrib V32    0.03567968788897552
#>     Attrib V33    0.036844981986406795
#>     Attrib V34    0.04533026895302734
#>     Attrib V35    0.037462176972971446
#>     Attrib V36    0.04139791113667235
#>     Attrib V37    0.07174903629046651
#>     Attrib V38    0.05983540945065688
#>     Attrib V39    0.06447824705826728
#>     Attrib V4    0.10231383050046672
#>     Attrib V40    0.02133358900776281
#>     Attrib V41    0.04844975667713618
#>     Attrib V42    0.0681425892523103
#>     Attrib V43    0.007208361915867617
#>     Attrib V44    -0.0040198537682651974
#>     Attrib V45    0.01895356121251717
#>     Attrib V46    0.0346962309355263
#>     Attrib V47    0.043634475719037516
#>     Attrib V48    0.014513985287185133
#>     Attrib V49    0.003910331924714261
#>     Attrib V5    0.06680636899754852
#>     Attrib V50    0.09535669270116685
#>     Attrib V51    0.12044827604046156
#>     Attrib V52    0.10219338234096535
#>     Attrib V53    0.10756321347563418
#>     Attrib V54    0.05002999245608266
#>     Attrib V55    0.09692506609864504
#>     Attrib V56    0.1057438554059782
#>     Attrib V57    0.11571088208981338
#>     Attrib V58    0.14101666963341106
#>     Attrib V59    0.048818865743265334
#>     Attrib V6    0.05726201765360125
#>     Attrib V60    0.07392000060289561
#>     Attrib V7    0.02701221557019274
#>     Attrib V8    -0.02820068215196408
#>     Attrib V9    0.04357033029269199
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.12742558603103105
#>     Attrib V1    0.024694441512795928
#>     Attrib V10    0.08189773561307892
#>     Attrib V11    0.02001831014120471
#>     Attrib V12    -0.013917058623100168
#>     Attrib V13    -0.034121206901209684
#>     Attrib V14    0.043870556003783104
#>     Attrib V15    0.11080490862306802
#>     Attrib V16    0.057150192817669
#>     Attrib V17    0.106473981571924
#>     Attrib V18    0.10117779634910605
#>     Attrib V19    0.055696012306745014
#>     Attrib V2    0.094520726055465
#>     Attrib V20    -0.039984549542041864
#>     Attrib V21    -0.04068513508308891
#>     Attrib V22    0.03451526187458399
#>     Attrib V23    -0.038574571833989615
#>     Attrib V24    -0.04132374033756109
#>     Attrib V25    -0.09106634662532383
#>     Attrib V26    -0.0594180051832838
#>     Attrib V27    -0.0441845626428753
#>     Attrib V28    -0.09953793936596352
#>     Attrib V29    -0.09862818839135487
#>     Attrib V3    0.09458770418198346
#>     Attrib V30    -0.00508623440233033
#>     Attrib V31    0.11035790698810802
#>     Attrib V32    -0.019559522113015197
#>     Attrib V33    0.05899612560298911
#>     Attrib V34    0.005004097895727727
#>     Attrib V35    0.0912875526182162
#>     Attrib V36    0.08308377666387605
#>     Attrib V37    0.10173418767807109
#>     Attrib V38    0.0966491313194711
#>     Attrib V39    0.09052382655999751
#>     Attrib V4    0.08533608699173663
#>     Attrib V40    0.10145609595621674
#>     Attrib V41    0.12071163283844909
#>     Attrib V42    1.4130607440264833E-4
#>     Attrib V43    0.07447469395804897
#>     Attrib V44    0.056489492421648205
#>     Attrib V45    0.007597201961444717
#>     Attrib V46    -0.015652590817176182
#>     Attrib V47    0.010378593850613757
#>     Attrib V48    0.06096531871762405
#>     Attrib V49    -0.02626345949727916
#>     Attrib V5    0.12617098560668924
#>     Attrib V50    0.10289994574909933
#>     Attrib V51    0.027674330372118947
#>     Attrib V52    8.280164482547297E-4
#>     Attrib V53    0.007071115724610912
#>     Attrib V54    -0.015208551242896572
#>     Attrib V55    0.08900908354664008
#>     Attrib V56    0.10526342088529721
#>     Attrib V57    0.1475883659887262
#>     Attrib V58    0.037553401778339275
#>     Attrib V59    0.030410194929670314
#>     Attrib V6    0.12379252625795245
#>     Attrib V60    0.04459661590736182
#>     Attrib V7    0.02566171262274915
#>     Attrib V8    0.07309859074780503
#>     Attrib V9    0.03913644083473095
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.17999564730971773
#>     Attrib V1    0.23379257071180756
#>     Attrib V10    -0.09679711602150269
#>     Attrib V11    -0.0152095668722964
#>     Attrib V12    -0.0669813743085239
#>     Attrib V13    -0.0499569889852656
#>     Attrib V14    -0.08921000094643065
#>     Attrib V15    0.04125841146723863
#>     Attrib V16    0.16776341461913502
#>     Attrib V17    0.0693512796785107
#>     Attrib V18    0.09253442305176027
#>     Attrib V19    0.047327238028865244
#>     Attrib V2    0.1807973707612232
#>     Attrib V20    0.050749481840726876
#>     Attrib V21    0.03144950921751703
#>     Attrib V22    -0.06022015097978486
#>     Attrib V23    0.021861008453716583
#>     Attrib V24    -0.006123797809216329
#>     Attrib V25    -0.04708611301391981
#>     Attrib V26    -0.253135676373272
#>     Attrib V27    -0.2628859922892853
#>     Attrib V28    -0.14111500941589977
#>     Attrib V29    -0.2359202048425035
#>     Attrib V3    0.08045308321700224
#>     Attrib V30    -0.10963429521966674
#>     Attrib V31    -0.346080340019733
#>     Attrib V32    0.07279479835933253
#>     Attrib V33    0.23511394936472144
#>     Attrib V34    0.08163096274512877
#>     Attrib V35    0.038893566740214984
#>     Attrib V36    -0.03915620025168734
#>     Attrib V37    -0.2243192270872803
#>     Attrib V38    0.04795056785307807
#>     Attrib V39    0.09163464927368627
#>     Attrib V4    0.08189901033446079
#>     Attrib V40    -0.1957286065806156
#>     Attrib V41    -0.13660674123651978
#>     Attrib V42    0.1411345128003512
#>     Attrib V43    0.016534403214057445
#>     Attrib V44    0.10689643392405776
#>     Attrib V45    0.07041393369572485
#>     Attrib V46    -0.03041067140959677
#>     Attrib V47    -7.88979402846548E-4
#>     Attrib V48    -0.001763023347013891
#>     Attrib V49    0.06986631356648551
#>     Attrib V5    -0.0980703739029105
#>     Attrib V50    -0.16465656851154623
#>     Attrib V51    0.20843576979087225
#>     Attrib V52    0.11617744584755987
#>     Attrib V53    0.126442968363607
#>     Attrib V54    0.23262183447777718
#>     Attrib V55    0.1500348345331861
#>     Attrib V56    0.16029814937588308
#>     Attrib V57    0.04535271996704573
#>     Attrib V58    0.17948202256460435
#>     Attrib V59    0.19753407777181534
#>     Attrib V6    -0.12918380335180765
#>     Attrib V60    0.1822842253723027
#>     Attrib V7    0.07557123086614927
#>     Attrib V8    0.004959994069557284
#>     Attrib V9    -0.007896350528352303
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    -0.0558149603401166
#>     Attrib V1    0.5093003762838754
#>     Attrib V10    -0.16906027135188767
#>     Attrib V11    0.0526107326311498
#>     Attrib V12    -0.09785561482962467
#>     Attrib V13    -0.13473705710842326
#>     Attrib V14    -0.6720517225105124
#>     Attrib V15    -0.06769639347481889
#>     Attrib V16    0.40037088775114305
#>     Attrib V17    0.26275861019069885
#>     Attrib V18    0.05759486058327598
#>     Attrib V19    0.5282042103738536
#>     Attrib V2    0.35509283910192474
#>     Attrib V20    0.15195345819657438
#>     Attrib V21    0.14498560227002874
#>     Attrib V22    0.12318121589293833
#>     Attrib V23    0.3157881891958032
#>     Attrib V24    0.36216940646276796
#>     Attrib V25    0.07056398343509285
#>     Attrib V26    -0.9153781167570684
#>     Attrib V27    -0.8477635929862096
#>     Attrib V28    -0.08183855387487594
#>     Attrib V29    -0.6300917826059691
#>     Attrib V3    -0.15900950123387098
#>     Attrib V30    -0.018185235561255723
#>     Attrib V31    -0.9717710391560109
#>     Attrib V32    0.7207486619168288
#>     Attrib V33    1.0421634498942323
#>     Attrib V34    0.03344305031072629
#>     Attrib V35    0.05056292293305934
#>     Attrib V36    -0.768441955560145
#>     Attrib V37    -1.3760940638112409
#>     Attrib V38    -0.15044828505242264
#>     Attrib V39    -0.07946826839385232
#>     Attrib V4    0.2228172236044202
#>     Attrib V40    -0.7903068690675559
#>     Attrib V41    -0.2998120808385031
#>     Attrib V42    0.7912354524803574
#>     Attrib V43    0.20464739703147963
#>     Attrib V44    0.3854460305219465
#>     Attrib V45    0.5267187017198562
#>     Attrib V46    0.007862476941490596
#>     Attrib V47    -0.15089091380710717
#>     Attrib V48    0.05916890670016984
#>     Attrib V49    0.29781652807363734
#>     Attrib V5    -0.4270461485811403
#>     Attrib V50    -0.9397618318926078
#>     Attrib V51    0.4790436358941536
#>     Attrib V52    0.4384397821165308
#>     Attrib V53    0.2691018927842672
#>     Attrib V54    0.6309686403215621
#>     Attrib V55    -0.018482000961952853
#>     Attrib V56    0.2987258452145416
#>     Attrib V57    -0.24266807300031992
#>     Attrib V58    0.5004206822140989
#>     Attrib V59    0.2221465759905574
#>     Attrib V6    -0.3381597601063203
#>     Attrib V60    0.32464533335247103
#>     Attrib V7    0.2400985609939367
#>     Attrib V8    -0.0721634037600133
#>     Attrib V9    0.18063529358099292
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.05385166866239064
#>     Attrib V1    0.5394236801201049
#>     Attrib V10    -0.15578395055058147
#>     Attrib V11    0.041597880575244314
#>     Attrib V12    -0.11635361577068529
#>     Attrib V13    -0.14155178950961522
#>     Attrib V14    -0.5374648074059132
#>     Attrib V15    -0.029120488467647244
#>     Attrib V16    0.3779116129088728
#>     Attrib V17    0.2128612018154574
#>     Attrib V18    0.05737517578162343
#>     Attrib V19    0.39590679028221754
#>     Attrib V2    0.3236062603630765
#>     Attrib V20    0.17360155131137947
#>     Attrib V21    0.19492634215204876
#>     Attrib V22    0.09428272365405288
#>     Attrib V23    0.2704109843227985
#>     Attrib V24    0.27151984741995144
#>     Attrib V25    0.006786039891758117
#>     Attrib V26    -0.7726194847106271
#>     Attrib V27    -0.7507435840549479
#>     Attrib V28    -0.16145632113736244
#>     Attrib V29    -0.5304526580061969
#>     Attrib V3    -0.15705302496080492
#>     Attrib V30    -0.026109749928783097
#>     Attrib V31    -0.8855017796023201
#>     Attrib V32    0.5368736681771952
#>     Attrib V33    0.8785944588581327
#>     Attrib V34    0.06387854859629379
#>     Attrib V35    0.03687905475863936
#>     Attrib V36    -0.5448758136002453
#>     Attrib V37    -1.0141409234794878
#>     Attrib V38    -0.009594841515885539
#>     Attrib V39    -0.04852219051133758
#>     Attrib V4    0.14873374449515925
#>     Attrib V40    -0.7095250697930241
#>     Attrib V41    -0.2780555774561257
#>     Attrib V42    0.5659608286316219
#>     Attrib V43    0.1835238876281829
#>     Attrib V44    0.37506917241141435
#>     Attrib V45    0.41374400033778613
#>     Attrib V46    -0.049035071644307676
#>     Attrib V47    -0.16914036147562256
#>     Attrib V48    0.060218383659142984
#>     Attrib V49    0.17832405886593752
#>     Attrib V5    -0.36347786759184353
#>     Attrib V50    -0.7422151711312946
#>     Attrib V51    0.4769646542123269
#>     Attrib V52    0.3451771512489635
#>     Attrib V53    0.19097153048069374
#>     Attrib V54    0.6227225193999686
#>     Attrib V55    0.04222660801409936
#>     Attrib V56    0.2851664409363042
#>     Attrib V57    -0.17416061453910694
#>     Attrib V58    0.400495389305117
#>     Attrib V59    0.27262936834118556
#>     Attrib V6    -0.3355335605325067
#>     Attrib V60    0.27835445450782415
#>     Attrib V7    0.21692085233919517
#>     Attrib V8    -0.07152917739066321
#>     Attrib V9    0.14410368892753192
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.30016244447980395
#>     Attrib V1    -0.4353638348387166
#>     Attrib V10    0.09476077005770585
#>     Attrib V11    -0.30430238114281966
#>     Attrib V12    -0.005721456871317907
#>     Attrib V13    -0.05314537673787133
#>     Attrib V14    0.5436514982910937
#>     Attrib V15    0.3966249798197578
#>     Attrib V16    0.31046043008473284
#>     Attrib V17    0.7287688536162691
#>     Attrib V18    0.7624824580592323
#>     Attrib V19    0.039814685565323485
#>     Attrib V2    -0.11900704713259763
#>     Attrib V20    -0.05708653601549516
#>     Attrib V21    -0.056150796827797875
#>     Attrib V22    0.07772193642042476
#>     Attrib V23    -0.19312294101711475
#>     Attrib V24    -0.32674677414534026
#>     Attrib V25    -0.20119790379191063
#>     Attrib V26    0.3943906570354372
#>     Attrib V27    0.18452828495737758
#>     Attrib V28    -0.5161082892408516
#>     Attrib V29    0.019515672956847828
#>     Attrib V3    0.33882008749077225
#>     Attrib V30    0.0830807070116924
#>     Attrib V31    1.29766246320036
#>     Attrib V32    0.06142345058524694
#>     Attrib V33    -0.12686729270760913
#>     Attrib V34    0.26570536192485295
#>     Attrib V35    0.08318308259800382
#>     Attrib V36    0.6413067972279897
#>     Attrib V37    0.9455663743801787
#>     Attrib V38    -0.22966450712547648
#>     Attrib V39    -0.3227606771730642
#>     Attrib V4    0.04999073371602375
#>     Attrib V40    0.6744631054071691
#>     Attrib V41    0.39200280362706924
#>     Attrib V42    -0.5357153458973988
#>     Attrib V43    -0.19377851554479064
#>     Attrib V44    -0.381769027017161
#>     Attrib V45    -0.6805634901671705
#>     Attrib V46    -0.22508100309006437
#>     Attrib V47    0.00868459999158286
#>     Attrib V48    -0.03101378015927201
#>     Attrib V49    -0.3422595137071942
#>     Attrib V5    0.65370086142517
#>     Attrib V50    0.6995594286474826
#>     Attrib V51    -0.42433383683238785
#>     Attrib V52    -0.3039110034384788
#>     Attrib V53    -0.2085045550380749
#>     Attrib V54    -0.4351952146210687
#>     Attrib V55    0.17062460082720277
#>     Attrib V56    0.16816328310250445
#>     Attrib V57    0.46983637001580913
#>     Attrib V58    -0.18704874836710925
#>     Attrib V59    0.01746784437064688
#>     Attrib V6    0.6965381857675104
#>     Attrib V60    0.06729896950419173
#>     Attrib V7    0.32903755080159236
#>     Attrib V8    0.26608369449408914
#>     Attrib V9    0.012291249021940572
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.11020670492965308
#>     Attrib V1    0.31324055290377545
#>     Attrib V10    -0.1258182094895058
#>     Attrib V11    0.01253524673263194
#>     Attrib V12    -0.01963058577996863
#>     Attrib V13    -0.05113109922991376
#>     Attrib V14    -0.05550544872729842
#>     Attrib V15    0.04112629964501845
#>     Attrib V16    0.21412489409724042
#>     Attrib V17    0.08877850690869635
#>     Attrib V18    0.001840971373853104
#>     Attrib V19    0.024727968362059285
#>     Attrib V2    0.21477126922061712
#>     Attrib V20    0.02585275182765311
#>     Attrib V21    -0.03622079262004829
#>     Attrib V22    -0.12894477279451202
#>     Attrib V23    -0.0575178521136499
#>     Attrib V24    0.04384986807934859
#>     Attrib V25    -0.08740054708500154
#>     Attrib V26    -0.3344720221329169
#>     Attrib V27    -0.3390034036621212
#>     Attrib V28    -0.22758985476669735
#>     Attrib V29    -0.24304643134801832
#>     Attrib V3    0.003066498779974762
#>     Attrib V30    -0.1117064025366276
#>     Attrib V31    -0.30341604607238487
#>     Attrib V32    0.0758431035752671
#>     Attrib V33    0.2192137737130084
#>     Attrib V34    0.06772989562930205
#>     Attrib V35    0.0692227428514667
#>     Attrib V36    -0.10405546328239013
#>     Attrib V37    -0.2241338549414799
#>     Attrib V38    0.03166241629202372
#>     Attrib V39    0.02901185289432739
#>     Attrib V4    0.12814082564629972
#>     Attrib V40    -0.18694334074308339
#>     Attrib V41    -0.1689747593388996
#>     Attrib V42    0.11786441008976693
#>     Attrib V43    0.07293616481260093
#>     Attrib V44    0.05216240911645562
#>     Attrib V45    0.059492349332388825
#>     Attrib V46    -0.00392574362540199
#>     Attrib V47    -0.10357166273925918
#>     Attrib V48    0.024583040649563986
#>     Attrib V49    0.05151519055663677
#>     Attrib V5    -0.09262522164806282
#>     Attrib V50    -0.1370689583619735
#>     Attrib V51    0.14496194029832912
#>     Attrib V52    0.15072383376543946
#>     Attrib V53    0.14497966446499685
#>     Attrib V54    0.36516532860583023
#>     Attrib V55    0.2000490448639207
#>     Attrib V56    0.1820384958603165
#>     Attrib V57    0.14213897410412518
#>     Attrib V58    0.250242033849153
#>     Attrib V59    0.22280771387016968
#>     Attrib V6    -0.105225646637741
#>     Attrib V60    0.2259576205898473
#>     Attrib V7    0.03676012358870979
#>     Attrib V8    -0.07966377328386137
#>     Attrib V9    -0.028150945285841836
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.024957680069537056
#>     Attrib V1    0.5352322247431229
#>     Attrib V10    -0.3215934882960996
#>     Attrib V11    0.05483186188755634
#>     Attrib V12    0.07700228657607493
#>     Attrib V13    -0.06179588053470704
#>     Attrib V14    -0.35709721552688434
#>     Attrib V15    0.06712604753036829
#>     Attrib V16    0.3018794475483666
#>     Attrib V17    0.1975912772075802
#>     Attrib V18    -0.0072712494162882856
#>     Attrib V19    0.15667765690616706
#>     Attrib V2    0.33516033554696584
#>     Attrib V20    0.04760206727496992
#>     Attrib V21    -0.03879792278966481
#>     Attrib V22    -0.0838757723407862
#>     Attrib V23    0.08011942235891197
#>     Attrib V24    0.1926884282972297
#>     Attrib V25    0.04246887553594257
#>     Attrib V26    -0.5555723363124309
#>     Attrib V27    -0.7914797613526618
#>     Attrib V28    -0.5782554327757906
#>     Attrib V29    -0.851121508594179
#>     Attrib V3    -0.047633696432083934
#>     Attrib V30    -0.2808519912529428
#>     Attrib V31    -0.6389038721645204
#>     Attrib V32    0.3666125492143374
#>     Attrib V33    0.6733148603789507
#>     Attrib V34    0.2519054296452776
#>     Attrib V35    0.16113632430254862
#>     Attrib V36    -0.3030841584883738
#>     Attrib V37    -0.5544239390763094
#>     Attrib V38    0.09288799838634897
#>     Attrib V39    0.04031110414794472
#>     Attrib V4    0.12897536080776148
#>     Attrib V40    -0.5544983477843662
#>     Attrib V41    -0.32874627949467605
#>     Attrib V42    0.30417595976623296
#>     Attrib V43    0.08530884170624649
#>     Attrib V44    0.10020561271367087
#>     Attrib V45    0.22911851152613064
#>     Attrib V46    -0.1368516415224702
#>     Attrib V47    -0.18242477828375273
#>     Attrib V48    -0.08028077369243265
#>     Attrib V49    0.027350205491314332
#>     Attrib V5    -0.3990919080058653
#>     Attrib V50    -0.46139519229320153
#>     Attrib V51    0.23849418925208674
#>     Attrib V52    0.21956512245582593
#>     Attrib V53    0.21941843855409646
#>     Attrib V54    0.7176917671070525
#>     Attrib V55    0.2840084980426375
#>     Attrib V56    0.34989880191879774
#>     Attrib V57    0.11270108482215495
#>     Attrib V58    0.3041621902094529
#>     Attrib V59    0.3963010072330952
#>     Attrib V6    -0.3118838596059197
#>     Attrib V60    0.3665899826459322
#>     Attrib V7    0.13400015058669548
#>     Attrib V8    -0.08639314217855748
#>     Attrib V9    -0.08361690170385344
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.21249071951077883
#>     Attrib V1    -0.3487104410120634
#>     Attrib V10    -0.19194096453569132
#>     Attrib V11    -0.4970210087401732
#>     Attrib V12    -0.21974687377144547
#>     Attrib V13    -0.17491962219682178
#>     Attrib V14    0.46176524430087684
#>     Attrib V15    0.306217522412719
#>     Attrib V16    -0.07176215482907385
#>     Attrib V17    0.15816836412326374
#>     Attrib V18    0.19733487552654647
#>     Attrib V19    -0.20163143567023492
#>     Attrib V2    -0.10730105774281515
#>     Attrib V20    -0.10594688644863359
#>     Attrib V21    -0.17741976817872446
#>     Attrib V22    -0.058837288656444296
#>     Attrib V23    -0.05834769131746834
#>     Attrib V24    -0.1528591853685101
#>     Attrib V25    -0.09608605555328317
#>     Attrib V26    0.3849946659694534
#>     Attrib V27    0.2521494930945395
#>     Attrib V28    -0.2887392315162787
#>     Attrib V29    0.0716476591547965
#>     Attrib V3    0.2284392144355835
#>     Attrib V30    -0.20068422099240962
#>     Attrib V31    0.875244555208548
#>     Attrib V32    -0.08425001009919493
#>     Attrib V33    -0.35977374826493813
#>     Attrib V34    0.12885985059716937
#>     Attrib V35    0.008594743979064646
#>     Attrib V36    0.5548977810117567
#>     Attrib V37    0.7650769462599488
#>     Attrib V38    -0.1437586800038754
#>     Attrib V39    -0.258048614024338
#>     Attrib V4    -0.08259048859760595
#>     Attrib V40    0.44311916478227753
#>     Attrib V41    0.21879363428402318
#>     Attrib V42    -0.4059929373976197
#>     Attrib V43    -0.06589237802847403
#>     Attrib V44    -0.33895480135906114
#>     Attrib V45    -0.6044436600312872
#>     Attrib V46    -0.2321122140447049
#>     Attrib V47    0.02722495934451324
#>     Attrib V48    -0.08261963812595738
#>     Attrib V49    -0.38264402091666316
#>     Attrib V5    0.33540995281804853
#>     Attrib V50    0.6279769018662829
#>     Attrib V51    -0.39662963051181965
#>     Attrib V52    -0.20398823375014585
#>     Attrib V53    -0.05704108640335727
#>     Attrib V54    -0.3531147762646794
#>     Attrib V55    0.09555135782823856
#>     Attrib V56    0.18050188964910754
#>     Attrib V57    0.283050966014256
#>     Attrib V58    -0.12454031275646375
#>     Attrib V59    0.015345711102499769
#>     Attrib V6    0.40849776478659927
#>     Attrib V60    -0.0069611267475803125
#>     Attrib V7    -0.04037452298554085
#>     Attrib V8    0.05787063495800666
#>     Attrib V9    -0.2566854303052271
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.12430207773403337
#>     Attrib V1    0.41275420884322667
#>     Attrib V10    0.6908653087357849
#>     Attrib V11    1.35898032299283
#>     Attrib V12    0.8501189489223593
#>     Attrib V13    0.40800108216867786
#>     Attrib V14    -0.5087538686801106
#>     Attrib V15    -1.2210201970098873
#>     Attrib V16    -0.5721695325888385
#>     Attrib V17    0.02604397108275337
#>     Attrib V18    0.2980219449410989
#>     Attrib V19    0.4262605624222974
#>     Attrib V2    0.007586771990574502
#>     Attrib V20    0.14766233484557076
#>     Attrib V21    0.6171813114446856
#>     Attrib V22    0.46551011213480387
#>     Attrib V23    1.0468702654285862
#>     Attrib V24    0.3343178407045883
#>     Attrib V25    0.3365044825773381
#>     Attrib V26    0.44998902372007166
#>     Attrib V27    1.4914927742109139
#>     Attrib V28    2.46075053305094
#>     Attrib V29    1.9892129446299507
#>     Attrib V3    0.31396777982446256
#>     Attrib V30    1.49448744009669
#>     Attrib V31    -1.0627520619688107
#>     Attrib V32    -0.06603368609209374
#>     Attrib V33    -0.6635543685894599
#>     Attrib V34    -1.4093587266789123
#>     Attrib V35    -0.465593799831437
#>     Attrib V36    -0.6595431674890503
#>     Attrib V37    -0.757765337931656
#>     Attrib V38    -0.0834796911412719
#>     Attrib V39    0.7944610410129399
#>     Attrib V4    0.906469070661801
#>     Attrib V40    0.5234292911526427
#>     Attrib V41    0.8199466035709441
#>     Attrib V42    0.683105456980533
#>     Attrib V43    0.38814341004819225
#>     Attrib V44    0.9069441380686658
#>     Attrib V45    0.8327106776612502
#>     Attrib V46    0.8404083191481582
#>     Attrib V47    0.48661541575875283
#>     Attrib V48    0.31101300807237625
#>     Attrib V49    1.3167374989009513
#>     Attrib V5    0.6226891745272491
#>     Attrib V50    -0.42459316344656817
#>     Attrib V51    1.2973126922587008
#>     Attrib V52    1.3957053889165731
#>     Attrib V53    0.5586090594003716
#>     Attrib V54    -0.22930851139347622
#>     Attrib V55    -0.5425619057433737
#>     Attrib V56    -0.5878408371655036
#>     Attrib V57    -0.793512337626915
#>     Attrib V58    -0.15465881838871498
#>     Attrib V59    -0.67154557798059
#>     Attrib V6    0.3636429864757744
#>     Attrib V60    -0.7590884980062826
#>     Attrib V7    -0.4821519940463094
#>     Attrib V8    -0.5837745357232759
#>     Attrib V9    0.8665648871852065
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21156063548486054
#>     Attrib V1    0.116100586967353
#>     Attrib V10    -0.03089808144562037
#>     Attrib V11    -0.030352796879875913
#>     Attrib V12    0.016591380684631337
#>     Attrib V13    -0.025421521715421776
#>     Attrib V14    0.05959685376706145
#>     Attrib V15    0.03957250842232924
#>     Attrib V16    0.07301351164176477
#>     Attrib V17    0.10253305390731547
#>     Attrib V18    0.019927399427915337
#>     Attrib V19    0.08438226104544433
#>     Attrib V2    0.11933982333535609
#>     Attrib V20    -0.0016352672428298627
#>     Attrib V21    -0.020156527208281334
#>     Attrib V22    -0.0658243525350881
#>     Attrib V23    -0.023115907348680124
#>     Attrib V24    -0.059057643800547295
#>     Attrib V25    -0.059201447920715626
#>     Attrib V26    -0.12747078988081634
#>     Attrib V27    -0.0715164773095992
#>     Attrib V28    -0.03056676581154786
#>     Attrib V29    -0.0723611414689007
#>     Attrib V3    0.054644953954787495
#>     Attrib V30    -0.045700394667362136
#>     Attrib V31    -0.1406318280483908
#>     Attrib V32    -0.01807374011040793
#>     Attrib V33    0.09809322385010827
#>     Attrib V34    0.0026471494726273527
#>     Attrib V35    0.0997664402081205
#>     Attrib V36    0.06812363635988274
#>     Attrib V37    0.04479412490144483
#>     Attrib V38    0.0439793237906926
#>     Attrib V39    0.08270607663472788
#>     Attrib V4    0.14588964094298826
#>     Attrib V40    -0.011788261772766028
#>     Attrib V41    -0.012537211946306819
#>     Attrib V42    0.06486797599471275
#>     Attrib V43    0.03435793792638295
#>     Attrib V44    0.05793086261339615
#>     Attrib V45    0.03828818685722772
#>     Attrib V46    -0.0063185292017310215
#>     Attrib V47    0.005836476193991952
#>     Attrib V48    0.07002228680666492
#>     Attrib V49    0.03430728726559419
#>     Attrib V5    7.512096535501725E-4
#>     Attrib V50    0.04174861581551232
#>     Attrib V51    0.07945050692552358
#>     Attrib V52    0.07770850136058638
#>     Attrib V53    0.07731140513755863
#>     Attrib V54    0.11822128735655779
#>     Attrib V55    0.10383964565999514
#>     Attrib V56    0.12890101179753952
#>     Attrib V57    0.13290879202140565
#>     Attrib V58    0.13044699396553605
#>     Attrib V59    0.1361242578356233
#>     Attrib V6    0.044963578626807575
#>     Attrib V60    0.13515232313850115
#>     Attrib V7    -0.0010717529472105338
#>     Attrib V8    0.014990681578029425
#>     Attrib V9    -0.006847636341492603
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.06105465279418043
#>     Attrib V1    0.6683355236586693
#>     Attrib V10    -0.3220419780286982
#>     Attrib V11    0.08524704410391268
#>     Attrib V12    0.11219760223199193
#>     Attrib V13    -0.030749166385772783
#>     Attrib V14    -0.44159074801001225
#>     Attrib V15    0.06203418451479173
#>     Attrib V16    0.349916430054753
#>     Attrib V17    0.1354921331769622
#>     Attrib V18    0.014224998153589498
#>     Attrib V19    0.1502525018895066
#>     Attrib V2    0.4252380280507493
#>     Attrib V20    0.036551919217260996
#>     Attrib V21    0.01997557892553432
#>     Attrib V22    -0.09479079634680727
#>     Attrib V23    0.04993474452717124
#>     Attrib V24    0.3094847613986762
#>     Attrib V25    0.0851817648073129
#>     Attrib V26    -0.5892585171921508
#>     Attrib V27    -0.8694627506376931
#>     Attrib V28    -0.6395935767738343
#>     Attrib V29    -0.9385642553703274
#>     Attrib V3    -0.1301695270260112
#>     Attrib V30    -0.3015670774147248
#>     Attrib V31    -0.7013470714593456
#>     Attrib V32    0.4232086301096312
#>     Attrib V33    0.7558388987849914
#>     Attrib V34    0.3465443008024646
#>     Attrib V35    0.14144253291674283
#>     Attrib V36    -0.3622067021093399
#>     Attrib V37    -0.6857195395539875
#>     Attrib V38    0.15015177694349224
#>     Attrib V39    0.11567520272421021
#>     Attrib V4    0.08975403054121375
#>     Attrib V40    -0.6493721330111478
#>     Attrib V41    -0.3903991347594504
#>     Attrib V42    0.3575896634968552
#>     Attrib V43    0.032281131738555284
#>     Attrib V44    0.14828992807889174
#>     Attrib V45    0.2829021142625976
#>     Attrib V46    -0.20978013762500766
#>     Attrib V47    -0.32301141115971815
#>     Attrib V48    -0.01157454212477023
#>     Attrib V49    0.015899737767711277
#>     Attrib V5    -0.4855111205851913
#>     Attrib V50    -0.48390035601165976
#>     Attrib V51    0.3218391849309955
#>     Attrib V52    0.22229887248828265
#>     Attrib V53    0.2783852027162625
#>     Attrib V54    0.913266923433002
#>     Attrib V55    0.35659818807059473
#>     Attrib V56    0.29602733072794984
#>     Attrib V57    0.16248273235789784
#>     Attrib V58    0.32948063074019307
#>     Attrib V59    0.42936456850952853
#>     Attrib V6    -0.36377568614624733
#>     Attrib V60    0.4842804031908417
#>     Attrib V7    0.09423589829418284
#>     Attrib V8    -0.07505940233315543
#>     Attrib V9    -0.07620171628931127
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.06111653993726033
#>     Attrib V1    -0.08649269001329803
#>     Attrib V10    -1.1008310804573884
#>     Attrib V11    -1.9521122519309049
#>     Attrib V12    -1.666818536096164
#>     Attrib V13    -0.4415449959047447
#>     Attrib V14    1.3277276795359638
#>     Attrib V15    1.9520952909322775
#>     Attrib V16    1.0955371650550216
#>     Attrib V17    0.04089964412438924
#>     Attrib V18    -0.32581590928013976
#>     Attrib V19    -0.7684634877860153
#>     Attrib V2    0.14131833193489204
#>     Attrib V20    -0.12395364351008539
#>     Attrib V21    -0.19984088917662243
#>     Attrib V22    -0.22280486264017
#>     Attrib V23    -1.0593969114870307
#>     Attrib V24    -0.9543991833803572
#>     Attrib V25    -1.456264943657672
#>     Attrib V26    -1.1226360588914357
#>     Attrib V27    -1.3012853610348776
#>     Attrib V28    -1.5650664527368237
#>     Attrib V29    -0.34904466561052827
#>     Attrib V3    0.009183607666634803
#>     Attrib V30    -1.06998593849875
#>     Attrib V31    0.5938056716552108
#>     Attrib V32    -0.24851380257889139
#>     Attrib V33    0.336528413358467
#>     Attrib V34    0.7572890590983281
#>     Attrib V35    -0.20222277154928753
#>     Attrib V36    0.496114271372663
#>     Attrib V37    1.1274027015733823
#>     Attrib V38    0.35833760060059505
#>     Attrib V39    -0.6410014165088194
#>     Attrib V4    -0.487058288496014
#>     Attrib V40    -0.6414904784824952
#>     Attrib V41    -0.4185795081804213
#>     Attrib V42    -0.2643816742044721
#>     Attrib V43    -0.4046770396927395
#>     Attrib V44    -0.8660683053668965
#>     Attrib V45    -0.7285876731623528
#>     Attrib V46    -0.788732321008607
#>     Attrib V47    -0.8445299330718072
#>     Attrib V48    -0.9394636166278816
#>     Attrib V49    -1.7436041871404973
#>     Attrib V5    -0.2282894755838178
#>     Attrib V50    0.3321357807608804
#>     Attrib V51    -1.6965051412725738
#>     Attrib V52    -1.5020171106458098
#>     Attrib V53    -0.5651804965108268
#>     Attrib V54    -0.11136209133212963
#>     Attrib V55    0.36201770473358874
#>     Attrib V56    0.41280236371309037
#>     Attrib V57    1.0225971368541569
#>     Attrib V58    0.3679391548377616
#>     Attrib V59    1.04205557162769
#>     Attrib V6    -0.2294796756664861
#>     Attrib V60    0.6462882690039922
#>     Attrib V7    0.4816123755744216
#>     Attrib V8    0.8916472455306138
#>     Attrib V9    -1.06656475181811
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.04228404238407961
#>     Attrib V1    0.40679767323067134
#>     Attrib V10    -0.2485122448569967
#>     Attrib V11    0.07890988855593035
#>     Attrib V12    0.00975078090145394
#>     Attrib V13    -0.06965188221743857
#>     Attrib V14    -0.23180589451313988
#>     Attrib V15    0.05712869419280792
#>     Attrib V16    0.2637855782143789
#>     Attrib V17    0.12249305633011445
#>     Attrib V18    0.004481689143724661
#>     Attrib V19    0.11793707436390256
#>     Attrib V2    0.2797053409889
#>     Attrib V20    0.12235881034659588
#>     Attrib V21    0.0840648785995737
#>     Attrib V22    -0.00575871002265532
#>     Attrib V23    0.050383462397032744
#>     Attrib V24    0.1980680404451292
#>     Attrib V25    0.051259257790225166
#>     Attrib V26    -0.5562367972828643
#>     Attrib V27    -0.6222635996376136
#>     Attrib V28    -0.3374464497110389
#>     Attrib V29    -0.5066561612549255
#>     Attrib V3    -0.03322659729701642
#>     Attrib V30    -0.19731209753602982
#>     Attrib V31    -0.574048597933989
#>     Attrib V32    0.29340357156101304
#>     Attrib V33    0.5529000970913519
#>     Attrib V34    0.16021424971502557
#>     Attrib V35    0.10145379261130653
#>     Attrib V36    -0.28351855938328213
#>     Attrib V37    -0.5137034074403216
#>     Attrib V38    0.06885322806188439
#>     Attrib V39    0.07503266156690669
#>     Attrib V4    0.08183735359728735
#>     Attrib V40    -0.44088873338516815
#>     Attrib V41    -0.2446533982152318
#>     Attrib V42    0.2623333758995911
#>     Attrib V43    0.09562120081892474
#>     Attrib V44    0.07633719713763733
#>     Attrib V45    0.24608061647765309
#>     Attrib V46    -0.07448872849570717
#>     Attrib V47    -0.1290614550560697
#>     Attrib V48    -0.019174861993843814
#>     Attrib V49    0.056239442353864154
#>     Attrib V5    -0.32611235369894015
#>     Attrib V50    -0.35946720811878374
#>     Attrib V51    0.28329983063673647
#>     Attrib V52    0.22566925453162487
#>     Attrib V53    0.16643765374741692
#>     Attrib V54    0.5521214522395985
#>     Attrib V55    0.23579134909375707
#>     Attrib V56    0.23744558744848906
#>     Attrib V57    0.09557363086467383
#>     Attrib V58    0.2577797137127746
#>     Attrib V59    0.2727242674134415
#>     Attrib V6    -0.2507932494871155
#>     Attrib V60    0.32260388626611997
#>     Attrib V7    0.07706442486719509
#>     Attrib V8    -0.02096873472759936
#>     Attrib V9    -0.03274595888649428
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.09337459497700391
#>     Attrib V1    0.34120578988381256
#>     Attrib V10    -0.11071157165600568
#>     Attrib V11    0.0267873120280848
#>     Attrib V12    0.036739465365981626
#>     Attrib V13    0.030194354077951024
#>     Attrib V14    -0.0787735466389381
#>     Attrib V15    0.08422471323015941
#>     Attrib V16    0.16444233972997505
#>     Attrib V17    0.10944379489714026
#>     Attrib V18    0.005524128796135889
#>     Attrib V19    0.045159801570039015
#>     Attrib V2    0.23049055419099812
#>     Attrib V20    0.014197847321467779
#>     Attrib V21    0.028827295625196304
#>     Attrib V22    -0.09302042862665073
#>     Attrib V23    0.014057654029568356
#>     Attrib V24    0.018249484275085034
#>     Attrib V25    -0.02196360266927582
#>     Attrib V26    -0.26390962381756616
#>     Attrib V27    -0.31675672711111097
#>     Attrib V28    -0.14384750577729147
#>     Attrib V29    -0.3160102365426651
#>     Attrib V3    -0.002617181798408921
#>     Attrib V30    -0.08516623958668983
#>     Attrib V31    -0.35506882935629824
#>     Attrib V32    0.045813004707471114
#>     Attrib V33    0.23835650512832182
#>     Attrib V34    0.0659607464676276
#>     Attrib V35    0.10562223742645305
#>     Attrib V36    -0.12551171638574596
#>     Attrib V37    -0.21923482829087027
#>     Attrib V38    0.05486326822156112
#>     Attrib V39    0.1364159781310871
#>     Attrib V4    0.1557056609049331
#>     Attrib V40    -0.21682802172606114
#>     Attrib V41    -0.1353487136612004
#>     Attrib V42    0.1980417401996282
#>     Attrib V43    0.01202363589829993
#>     Attrib V44    0.020477905824334407
#>     Attrib V45    0.12548170447513843
#>     Attrib V46    -0.052188762871106575
#>     Attrib V47    -0.11455048359739158
#>     Attrib V48    0.010706461901808734
#>     Attrib V49    0.02785143239321726
#>     Attrib V5    -0.1794303666229128
#>     Attrib V50    -0.18229115990234063
#>     Attrib V51    0.1723403047960004
#>     Attrib V52    0.16289335251287537
#>     Attrib V53    0.1954524615888256
#>     Attrib V54    0.39883655569025533
#>     Attrib V55    0.16358126828146138
#>     Attrib V56    0.1946065595780163
#>     Attrib V57    0.08774987113072721
#>     Attrib V58    0.23736560763237807
#>     Attrib V59    0.28810833939283614
#>     Attrib V6    -0.1396278672289068
#>     Attrib V60    0.25252483739984366
#>     Attrib V7    -0.016898274091545557
#>     Attrib V8    -0.06044830769973098
#>     Attrib V9    -0.06991997861368777
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.16500685239418678
#>     Attrib V1    0.1740473194849792
#>     Attrib V10    -0.06409251618747157
#>     Attrib V11    0.0337019698339363
#>     Attrib V12    -0.053390939183855096
#>     Attrib V13    -0.0019163897019779305
#>     Attrib V14    -0.002117031717109034
#>     Attrib V15    0.06604921261829197
#>     Attrib V16    0.0981330878374761
#>     Attrib V17    0.09270198484003835
#>     Attrib V18    0.05419533504017586
#>     Attrib V19    0.027861304008943558
#>     Attrib V2    0.18342379408865925
#>     Attrib V20    0.014492691003823312
#>     Attrib V21    -0.09635821972398854
#>     Attrib V22    -0.05127235000416314
#>     Attrib V23    0.025257058817747886
#>     Attrib V24    0.023138505381393164
#>     Attrib V25    -0.08068144813932855
#>     Attrib V26    -0.15802961026505155
#>     Attrib V27    -0.20296742939103196
#>     Attrib V28    -0.15614898846673847
#>     Attrib V29    -0.20712527157428573
#>     Attrib V3    0.01596404656965475
#>     Attrib V30    -0.09659684867217334
#>     Attrib V31    -0.15860513056682676
#>     Attrib V32    0.04423064893942549
#>     Attrib V33    0.17144653861878353
#>     Attrib V34    0.060628644611187575
#>     Attrib V35    0.11129532901775495
#>     Attrib V36    -0.018112822226739513
#>     Attrib V37    -0.05293022411538269
#>     Attrib V38    0.1019986848395704
#>     Attrib V39    0.021354723468429336
#>     Attrib V4    0.13139352285314948
#>     Attrib V40    -0.08331679541456581
#>     Attrib V41    -0.0708767528917021
#>     Attrib V42    0.06556171087882322
#>     Attrib V43    0.04962863633052183
#>     Attrib V44    0.0845542271919541
#>     Attrib V45    0.03685653058530136
#>     Attrib V46    -2.0441627121605205E-4
#>     Attrib V47    0.005877137339112502
#>     Attrib V48    0.03159255420122348
#>     Attrib V49    0.053166150815286944
#>     Attrib V5    -0.043612451295113396
#>     Attrib V50    -0.0411996049796575
#>     Attrib V51    0.11341611204098528
#>     Attrib V52    0.13041782623178935
#>     Attrib V53    0.13814769244367592
#>     Attrib V54    0.24828349710185108
#>     Attrib V55    0.1528418284368393
#>     Attrib V56    0.0826411634440967
#>     Attrib V57    0.09687664437495502
#>     Attrib V58    0.11464119647848114
#>     Attrib V59    0.13709909255681324
#>     Attrib V6    -0.046524785927000524
#>     Attrib V60    0.11939046450218875
#>     Attrib V7    0.03664701135925227
#>     Attrib V8    -0.01794055893549961
#>     Attrib V9    0.02418935041477738
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1626590482032561
#>     Attrib V1    0.1656917119160759
#>     Attrib V10    -0.09722654616968418
#>     Attrib V11    -0.007152197014036474
#>     Attrib V12    -0.037473902404217135
#>     Attrib V13    -0.06619146923153142
#>     Attrib V14    0.03424593418846024
#>     Attrib V15    0.07859939972889396
#>     Attrib V16    0.13149284567898778
#>     Attrib V17    0.05399589270788016
#>     Attrib V18    0.09872966507511596
#>     Attrib V19    0.0016318519551323663
#>     Attrib V2    0.10272254275038183
#>     Attrib V20    0.004129296247001558
#>     Attrib V21    -0.01143584963500066
#>     Attrib V22    -0.06726791476872915
#>     Attrib V23    0.024725881048754988
#>     Attrib V24    -0.03716502156003471
#>     Attrib V25    -0.11756137195719298
#>     Attrib V26    -0.18118301068260284
#>     Attrib V27    -0.14881069435053654
#>     Attrib V28    -0.04499542620068402
#>     Attrib V29    -0.1081169859888625
#>     Attrib V3    0.09708442410498687
#>     Attrib V30    -0.013258397126737135
#>     Attrib V31    -0.19734821097313643
#>     Attrib V32    0.011117966328464393
#>     Attrib V33    0.1249982811586847
#>     Attrib V34    0.024484482770774425
#>     Attrib V35    0.06242537000996756
#>     Attrib V36    0.044880688341861305
#>     Attrib V37    -0.05035219414905883
#>     Attrib V38    0.019146903506194194
#>     Attrib V39    0.06846868057878334
#>     Attrib V4    0.08811688124806136
#>     Attrib V40    -0.07091062620922658
#>     Attrib V41    -0.06053013477554961
#>     Attrib V42    0.0937667652609616
#>     Attrib V43    -0.017869816479463008
#>     Attrib V44    0.07456009348133039
#>     Attrib V45    0.0905653217334399
#>     Attrib V46    0.01503522814502038
#>     Attrib V47    0.006012921175986267
#>     Attrib V48    -0.016319741224648514
#>     Attrib V49    0.080575846369451
#>     Attrib V5    0.007325433642892098
#>     Attrib V50    -0.03687133127509673
#>     Attrib V51    0.12381772287063815
#>     Attrib V52    0.14003789473224937
#>     Attrib V53    0.09974051053033371
#>     Attrib V54    0.11559416424446255
#>     Attrib V55    0.08931650692452967
#>     Attrib V56    0.10745387862351184
#>     Attrib V57    0.08554177843877418
#>     Attrib V58    0.19587109929465085
#>     Attrib V59    0.11154837139029569
#>     Attrib V6    0.010443864063765587
#>     Attrib V60    0.07626217441608966
#>     Attrib V7    0.038201101891061975
#>     Attrib V8    0.022825986084714388
#>     Attrib V9    0.01806148720665154
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
#>   0.173913 
```
