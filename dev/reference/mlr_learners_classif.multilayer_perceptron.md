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
#>     Threshold    -0.6666576866041408
#>     Node 2    2.128246420148834
#>     Node 3    1.9563112376751863
#>     Node 4    1.0472562519175828
#>     Node 5    -2.3306327562362683
#>     Node 6    1.5428103431560438
#>     Node 7    2.5670710046322136
#>     Node 8    0.8265896771882335
#>     Node 9    3.2259341392743606
#>     Node 10    -1.8263756173633847
#>     Node 11    1.350962538229721
#>     Node 12    1.8179386687176033
#>     Node 13    1.0282003815370135
#>     Node 14    1.9035254647965976
#>     Node 15    -2.164242651109082
#>     Node 16    -0.5389015987961137
#>     Node 17    0.02668701725604301
#>     Node 18    -0.033530896018714756
#>     Node 19    2.098586410966723
#>     Node 20    1.8708620171966681
#>     Node 21    -1.6711241112692745
#>     Node 22    1.7583567981093022
#>     Node 23    2.0691071558334895
#>     Node 24    -0.9155868753336291
#>     Node 25    4.186744779109552
#>     Node 26    -0.7412106317872209
#>     Node 27    1.7138848196354346
#>     Node 28    -4.418862395637051
#>     Node 29    0.8393162749986118
#>     Node 30    0.4243813747672262
#>     Node 31    1.0414673772921315
#>     Node 32    0.7987634200049106
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7048253842362966
#>     Node 2    -2.171080958885211
#>     Node 3    -1.9329018647643752
#>     Node 4    -1.0059501568607194
#>     Node 5    2.3582839882302173
#>     Node 6    -1.5152117518559947
#>     Node 7    -2.5685713625757285
#>     Node 8    -0.8680084374706883
#>     Node 9    -3.236067524168679
#>     Node 10    1.7819574356400996
#>     Node 11    -1.3162731526875149
#>     Node 12    -1.888449965234711
#>     Node 13    -0.9717360367201532
#>     Node 14    -1.8395938036337323
#>     Node 15    2.1200786390402864
#>     Node 16    0.5363830650189308
#>     Node 17    0.0030789659300744323
#>     Node 18    0.07322366780809335
#>     Node 19    -2.108713302928415
#>     Node 20    -1.8449545544090074
#>     Node 21    1.6967459666909661
#>     Node 22    -1.8110903803628007
#>     Node 23    -2.1050074950536897
#>     Node 24    0.9194149795975846
#>     Node 25    -4.194200018397249
#>     Node 26    0.6730954294350519
#>     Node 27    -1.7507951048589694
#>     Node 28    4.404379678876099
#>     Node 29    -0.8728974074418848
#>     Node 30    -0.3523738653460511
#>     Node 31    -0.9870133433027095
#>     Node 32    -0.816558574314877
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.26120880821233483
#>     Attrib V1    0.7427649144260189
#>     Attrib V10    -0.3995710675752306
#>     Attrib V11    -0.2696423530292726
#>     Attrib V12    -0.48384209326970823
#>     Attrib V13    -0.5801166507536105
#>     Attrib V14    0.025324547118514045
#>     Attrib V15    0.7835813363117029
#>     Attrib V16    0.7180213093232114
#>     Attrib V17    0.17563563156143583
#>     Attrib V18    -0.2616661140169935
#>     Attrib V19    0.15214095743597836
#>     Attrib V2    0.3109842518145163
#>     Attrib V20    0.8500595266227541
#>     Attrib V21    0.4520871093701571
#>     Attrib V22    0.14825245407868543
#>     Attrib V23    0.27659075443773995
#>     Attrib V24    0.24561668542463344
#>     Attrib V25    -0.8781302206962599
#>     Attrib V26    -1.3569957234047847
#>     Attrib V27    -0.7273955007472257
#>     Attrib V28    -0.10836441351593161
#>     Attrib V29    0.008828265931903057
#>     Attrib V3    0.45715486311863407
#>     Attrib V30    0.32228843493723025
#>     Attrib V31    -1.3137924007653752
#>     Attrib V32    0.28111217106397446
#>     Attrib V33    0.4743428087213268
#>     Attrib V34    -0.12247552998728112
#>     Attrib V35    -0.49679594547899575
#>     Attrib V36    -1.0829832501767604
#>     Attrib V37    -0.6188256247228495
#>     Attrib V38    0.07963502076529841
#>     Attrib V39    0.04871420714102925
#>     Attrib V4    0.27568974264844265
#>     Attrib V40    -0.05051797551033394
#>     Attrib V41    -0.16569120163760256
#>     Attrib V42    0.7908581630633078
#>     Attrib V43    0.5247947841592697
#>     Attrib V44    0.6001877490782491
#>     Attrib V45    0.3054543154397484
#>     Attrib V46    0.1841383399148117
#>     Attrib V47    -0.3681096799779105
#>     Attrib V48    -0.1860968938691755
#>     Attrib V49    0.06333753048455305
#>     Attrib V5    -0.38639088558964985
#>     Attrib V50    -0.9627686992137803
#>     Attrib V51    -0.179280818817253
#>     Attrib V52    -0.01991608006123026
#>     Attrib V53    0.5322083139014576
#>     Attrib V54    0.9311922559585594
#>     Attrib V55    -0.009329222164443738
#>     Attrib V56    0.5677777897283516
#>     Attrib V57    -0.2809519035626397
#>     Attrib V58    0.7205927041009984
#>     Attrib V59    0.027472847326644144
#>     Attrib V6    -0.6065941129324306
#>     Attrib V60    0.21493652819460135
#>     Attrib V7    -0.1185988141998034
#>     Attrib V8    0.1780907976133136
#>     Attrib V9    0.26114838896139975
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.21017757399675327
#>     Attrib V1    0.6555466732442311
#>     Attrib V10    -0.3145478927690505
#>     Attrib V11    -0.19658869101155974
#>     Attrib V12    -0.3373396715524245
#>     Attrib V13    -0.5038582885404358
#>     Attrib V14    -0.07304127400412574
#>     Attrib V15    0.7229753717054326
#>     Attrib V16    0.6182266914700036
#>     Attrib V17    0.1450406121140354
#>     Attrib V18    -0.309608879258004
#>     Attrib V19    0.1914746084584046
#>     Attrib V2    0.26566182591731413
#>     Attrib V20    0.7593644757733451
#>     Attrib V21    0.3131844852800022
#>     Attrib V22    0.13639382564148705
#>     Attrib V23    0.3276556257047695
#>     Attrib V24    0.3447681931318086
#>     Attrib V25    -0.6887367788013721
#>     Attrib V26    -1.1803006641539315
#>     Attrib V27    -0.6798466292334668
#>     Attrib V28    -0.23065232673821862
#>     Attrib V29    -0.27707166864720956
#>     Attrib V3    0.38813649167235886
#>     Attrib V30    0.28131075970704045
#>     Attrib V31    -1.1359037388765023
#>     Attrib V32    0.314465798723221
#>     Attrib V33    0.4993506116808708
#>     Attrib V34    -0.07404443455582653
#>     Attrib V35    -0.38764593752334014
#>     Attrib V36    -1.0714795507540835
#>     Attrib V37    -0.675933589781617
#>     Attrib V38    -0.04374725408930554
#>     Attrib V39    0.005913917175879376
#>     Attrib V4    0.2290237510407435
#>     Attrib V40    -0.0640793002832252
#>     Attrib V41    -0.2004723511005815
#>     Attrib V42    0.7436799179686482
#>     Attrib V43    0.5299146298178686
#>     Attrib V44    0.5915712848452325
#>     Attrib V45    0.31897245087571546
#>     Attrib V46    0.209301002822604
#>     Attrib V47    -0.274275714227573
#>     Attrib V48    -0.1417923722466133
#>     Attrib V49    0.11798751411518175
#>     Attrib V5    -0.4218460470698585
#>     Attrib V50    -0.9486417361412763
#>     Attrib V51    -0.18010561723740195
#>     Attrib V52    0.02018119871993816
#>     Attrib V53    0.4726239231751835
#>     Attrib V54    0.9438753142614953
#>     Attrib V55    0.014403730880564314
#>     Attrib V56    0.5591861936702474
#>     Attrib V57    -0.28236580004094813
#>     Attrib V58    0.7407588221130933
#>     Attrib V59    -0.028729006259494778
#>     Attrib V6    -0.5912565661445867
#>     Attrib V60    0.15075487521205372
#>     Attrib V7    -0.14901472680599964
#>     Attrib V8    0.13767398391897714
#>     Attrib V9    0.28901332264456464
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.16807342314014997
#>     Attrib V1    0.37194016616734343
#>     Attrib V10    -0.20756752972636727
#>     Attrib V11    -0.11213422838095832
#>     Attrib V12    -0.16774005645738835
#>     Attrib V13    -0.28249453779482736
#>     Attrib V14    -0.015202150518636855
#>     Attrib V15    0.428361531633793
#>     Attrib V16    0.3412629913482208
#>     Attrib V17    0.0866302917625233
#>     Attrib V18    -0.15262109298435664
#>     Attrib V19    0.11224631712556851
#>     Attrib V2    0.10104556442346002
#>     Attrib V20    0.4506493240956549
#>     Attrib V21    0.234210123804121
#>     Attrib V22    -0.01086403728141205
#>     Attrib V23    0.15240395460966916
#>     Attrib V24    0.16722735611480544
#>     Attrib V25    -0.47070552889584816
#>     Attrib V26    -0.6904071280444323
#>     Attrib V27    -0.4288586011048588
#>     Attrib V28    -0.07291492821648467
#>     Attrib V29    -0.05075403171369407
#>     Attrib V3    0.23955005839523869
#>     Attrib V30    0.11234433255848979
#>     Attrib V31    -0.7341880142045208
#>     Attrib V32    0.12197455674299519
#>     Attrib V33    0.2570719017821597
#>     Attrib V34    0.002024819211081672
#>     Attrib V35    -0.17552075390581431
#>     Attrib V36    -0.6188762583661379
#>     Attrib V37    -0.3810287272809652
#>     Attrib V38    -0.017502488101772316
#>     Attrib V39    0.007719049740403423
#>     Attrib V4    0.14247968084498186
#>     Attrib V40    -0.0626803134983082
#>     Attrib V41    -0.1614314243420634
#>     Attrib V42    0.41313009488295727
#>     Attrib V43    0.29766444919942214
#>     Attrib V44    0.3630311777492722
#>     Attrib V45    0.2701266135400921
#>     Attrib V46    0.12468901122808944
#>     Attrib V47    -0.17056735100516746
#>     Attrib V48    -0.002089610360733265
#>     Attrib V49    0.13836707439913118
#>     Attrib V5    -0.19688297138779023
#>     Attrib V50    -0.5026048997653125
#>     Attrib V51    -0.013245891150567672
#>     Attrib V52    0.04630154306296271
#>     Attrib V53    0.3737493082198182
#>     Attrib V54    0.49914679646038856
#>     Attrib V55    -0.007199030930676569
#>     Attrib V56    0.34667322452628385
#>     Attrib V57    -0.1273863354930496
#>     Attrib V58    0.3993543829144305
#>     Attrib V59    -0.002833706316496109
#>     Attrib V6    -0.3715724573436006
#>     Attrib V60    0.09048486598351455
#>     Attrib V7    -0.12292598406430251
#>     Attrib V8    0.005054855136085322
#>     Attrib V9    0.18926431701595295
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.011230565425050828
#>     Attrib V1    -0.4955122496394952
#>     Attrib V10    -0.9803840997756421
#>     Attrib V11    -0.6320498934008675
#>     Attrib V12    -0.7529818558125734
#>     Attrib V13    -0.45408591313869645
#>     Attrib V14    0.16878082028905914
#>     Attrib V15    0.14965719444562298
#>     Attrib V16    0.18479552183487108
#>     Attrib V17    0.4739104998822118
#>     Attrib V18    0.23549432224962055
#>     Attrib V19    -0.12684580060503983
#>     Attrib V2    0.2526389541972245
#>     Attrib V20    -0.3043678421671547
#>     Attrib V21    -0.21279618357545568
#>     Attrib V22    -0.17199866526374183
#>     Attrib V23    -0.5105171459644884
#>     Attrib V24    -0.8223979640958641
#>     Attrib V25    -0.262664429594945
#>     Attrib V26    -0.5012588812532199
#>     Attrib V27    -0.8449140122934069
#>     Attrib V28    -0.7976005742389842
#>     Attrib V29    -0.3445312498830579
#>     Attrib V3    0.11720094474267913
#>     Attrib V30    -0.3046818677440524
#>     Attrib V31    0.6932881018528855
#>     Attrib V32    -0.0488366712371763
#>     Attrib V33    0.17906886769520453
#>     Attrib V34    -0.16684826878046682
#>     Attrib V35    -0.419910770570296
#>     Attrib V36    0.6538495414864322
#>     Attrib V37    0.3594913962930719
#>     Attrib V38    0.11765672443637513
#>     Attrib V39    0.29260119931255896
#>     Attrib V4    -0.022892504571722386
#>     Attrib V40    0.28402017137212643
#>     Attrib V41    0.01208052713711742
#>     Attrib V42    -0.3002040273160663
#>     Attrib V43    -0.47242055106735464
#>     Attrib V44    -0.6140135474640624
#>     Attrib V45    -0.7290897803356234
#>     Attrib V46    -0.871437635076197
#>     Attrib V47    -0.5605521916619934
#>     Attrib V48    -0.7473310417010696
#>     Attrib V49    -0.8042484024374612
#>     Attrib V5    0.546406913414993
#>     Attrib V50    0.4909354986502484
#>     Attrib V51    -0.6082136761198226
#>     Attrib V52    -0.7016245095908555
#>     Attrib V53    -0.65776664611023
#>     Attrib V54    -0.05759802247625292
#>     Attrib V55    0.8761381413799253
#>     Attrib V56    0.4335048760094261
#>     Attrib V57    0.9075377201804131
#>     Attrib V58    -0.2082683733978017
#>     Attrib V59    0.9191810320875609
#>     Attrib V6    -0.026645550328828784
#>     Attrib V60    0.1960392672482577
#>     Attrib V7    0.1538466870905911
#>     Attrib V8    0.3031099541007041
#>     Attrib V9    -0.9620215250175141
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.15247397913909883
#>     Attrib V1    0.5675447968256974
#>     Attrib V10    -0.301590120081439
#>     Attrib V11    -0.1475083687756142
#>     Attrib V12    -0.21982379175844588
#>     Attrib V13    -0.4890953680630624
#>     Attrib V14    -0.12521971188149386
#>     Attrib V15    0.5189084715835053
#>     Attrib V16    0.5491277670405333
#>     Attrib V17    0.10669157539837527
#>     Attrib V18    -0.17691639856714572
#>     Attrib V19    0.11622382665849537
#>     Attrib V2    0.18371463987139344
#>     Attrib V20    0.6092979383658198
#>     Attrib V21    0.2956532327751937
#>     Attrib V22    0.05260766046267047
#>     Attrib V23    0.24070391907524555
#>     Attrib V24    0.3322795566270374
#>     Attrib V25    -0.5299419132343867
#>     Attrib V26    -0.9834372166708985
#>     Attrib V27    -0.5523532381179469
#>     Attrib V28    -0.25044929188874676
#>     Attrib V29    -0.22687522622918008
#>     Attrib V3    0.30225953418431084
#>     Attrib V30    0.18314853416099072
#>     Attrib V31    -0.9678011878909807
#>     Attrib V32    0.26544497305686676
#>     Attrib V33    0.41329700418616294
#>     Attrib V34    -0.024878049900061035
#>     Attrib V35    -0.26826692204494507
#>     Attrib V36    -0.8927733617180337
#>     Attrib V37    -0.5492692911626286
#>     Attrib V38    -0.02067784608058054
#>     Attrib V39    -0.023374803699649224
#>     Attrib V4    0.2253143407856376
#>     Attrib V40    -0.10960315357518977
#>     Attrib V41    -0.1591820698540759
#>     Attrib V42    0.6052126232743834
#>     Attrib V43    0.43931847503614485
#>     Attrib V44    0.46482863209951275
#>     Attrib V45    0.2881949753221617
#>     Attrib V46    0.2216181500968812
#>     Attrib V47    -0.23088823599627736
#>     Attrib V48    -0.09451069199255212
#>     Attrib V49    0.08579710046555412
#>     Attrib V5    -0.3458575072397627
#>     Attrib V50    -0.7483330227288151
#>     Attrib V51    -0.09384501937383245
#>     Attrib V52    9.07437986067352E-4
#>     Attrib V53    0.4595739321777944
#>     Attrib V54    0.7013235893547631
#>     Attrib V55    -0.04314178634552407
#>     Attrib V56    0.4813923652603367
#>     Attrib V57    -0.21157582870004474
#>     Attrib V58    0.589696010428404
#>     Attrib V59    5.680356950545196E-5
#>     Attrib V6    -0.4642118809839477
#>     Attrib V60    0.19874287341329094
#>     Attrib V7    -0.11991909404034291
#>     Attrib V8    0.10006952752030981
#>     Attrib V9    0.31073612006905255
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.09641003471703699
#>     Attrib V1    0.5615191522223449
#>     Attrib V10    1.1491429707670584
#>     Attrib V11    1.0215346279171333
#>     Attrib V12    1.1061934273919571
#>     Attrib V13    0.5479817010038145
#>     Attrib V14    -0.23584219995995415
#>     Attrib V15    -0.32735723465842487
#>     Attrib V16    -0.37330994752124463
#>     Attrib V17    -0.5703246067707016
#>     Attrib V18    -0.21764923765867658
#>     Attrib V19    0.11600144613550825
#>     Attrib V2    -0.24406486057788718
#>     Attrib V20    0.1995312861048698
#>     Attrib V21    0.14846498130621466
#>     Attrib V22    0.06014385506069508
#>     Attrib V23    0.6364663030311067
#>     Attrib V24    1.0107304254508889
#>     Attrib V25    0.6384076969846081
#>     Attrib V26    0.9633246995580641
#>     Attrib V27    1.006955599989898
#>     Attrib V28    0.6395044841409984
#>     Attrib V29    0.2329532108373116
#>     Attrib V3    -0.11753183068938104
#>     Attrib V30    0.12206121686967329
#>     Attrib V31    -0.5032159031780085
#>     Attrib V32    -0.05408972826498252
#>     Attrib V33    -0.47232139544589524
#>     Attrib V34    0.196345126839063
#>     Attrib V35    0.6042929355664759
#>     Attrib V36    -0.6017684065340753
#>     Attrib V37    -0.26889745078096594
#>     Attrib V38    -0.13366444413164344
#>     Attrib V39    -0.2720907313732274
#>     Attrib V4    -0.1015902528949791
#>     Attrib V40    -0.15450475936647246
#>     Attrib V41    0.027365488123424257
#>     Attrib V42    0.15474174876338728
#>     Attrib V43    0.5062002768638207
#>     Attrib V44    0.5693321382145887
#>     Attrib V45    0.6130983991734047
#>     Attrib V46    0.9069801574387354
#>     Attrib V47    0.7684958047141305
#>     Attrib V48    0.9884720772436395
#>     Attrib V49    0.8532238354955086
#>     Attrib V5    -0.5032907654821884
#>     Attrib V50    -0.27852035695563404
#>     Attrib V51    0.8406016306837536
#>     Attrib V52    0.9061301764567533
#>     Attrib V53    0.8282582990086118
#>     Attrib V54    -0.01216038350056994
#>     Attrib V55    -0.7399397195934908
#>     Attrib V56    -0.4513958561911772
#>     Attrib V57    -0.9243810612740215
#>     Attrib V58    0.128013779468302
#>     Attrib V59    -0.9128315251348361
#>     Attrib V6    0.2068813416730756
#>     Attrib V60    -0.25333690403766385
#>     Attrib V7    -0.09582626813066313
#>     Attrib V8    -0.4192341356910936
#>     Attrib V9    0.9360747219740888
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.022227007610042388
#>     Attrib V1    0.36398100450149623
#>     Attrib V10    -0.04842875850415675
#>     Attrib V11    0.06486110019400196
#>     Attrib V12    0.022661087685555713
#>     Attrib V13    -0.21412712708138812
#>     Attrib V14    -0.20975880767380392
#>     Attrib V15    0.20937802958684676
#>     Attrib V16    0.2603411748936087
#>     Attrib V17    -0.0018217988170886443
#>     Attrib V18    -0.19985573777321264
#>     Attrib V19    0.08389301677141937
#>     Attrib V2    0.04632443756763981
#>     Attrib V20    0.31951968668193587
#>     Attrib V21    0.13560602024006174
#>     Attrib V22    -0.04715711091413021
#>     Attrib V23    0.1431259802610702
#>     Attrib V24    0.2808754951610868
#>     Attrib V25    -0.2732616018950793
#>     Attrib V26    -0.4410564429298744
#>     Attrib V27    -0.2446343402243275
#>     Attrib V28    -0.0630717679171911
#>     Attrib V29    -0.1262654577042752
#>     Attrib V3    0.12259217602863895
#>     Attrib V30    0.11393813374849739
#>     Attrib V31    -0.6469157699479792
#>     Attrib V32    0.1687383005973502
#>     Attrib V33    0.2461189355770554
#>     Attrib V34    0.05735316563928028
#>     Attrib V35    -0.08891740846772131
#>     Attrib V36    -0.5225915731242159
#>     Attrib V37    -0.3661730509014421
#>     Attrib V38    0.024606945010701337
#>     Attrib V39    -0.061831254182541345
#>     Attrib V4    0.14706201335788166
#>     Attrib V40    -0.1301497922856189
#>     Attrib V41    -0.16894899972648536
#>     Attrib V42    0.25002092618739613
#>     Attrib V43    0.30092613665455425
#>     Attrib V44    0.3817930976265147
#>     Attrib V45    0.2603341809901557
#>     Attrib V46    0.21222935915292834
#>     Attrib V47    -0.06345203365156969
#>     Attrib V48    0.11599282132522223
#>     Attrib V49    0.16460707137422614
#>     Attrib V5    -0.2532421655996185
#>     Attrib V50    -0.552330994236708
#>     Attrib V51    -0.0074990709050073105
#>     Attrib V52    0.08810697602513891
#>     Attrib V53    0.3454225265596099
#>     Attrib V54    0.45301481936360893
#>     Attrib V55    -0.1446971286385721
#>     Attrib V56    0.1762325291253263
#>     Attrib V57    -0.15411930801169443
#>     Attrib V58    0.2880341221945452
#>     Attrib V59    -0.07809607722361285
#>     Attrib V6    -0.3302127812176606
#>     Attrib V60    0.0846291735405249
#>     Attrib V7    -0.1458820044943346
#>     Attrib V8    -0.05894075931068587
#>     Attrib V9    0.2246992350265534
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.025011282323998206
#>     Attrib V1    0.48990189221850766
#>     Attrib V10    1.449221203328057
#>     Attrib V11    1.307812352872765
#>     Attrib V12    1.520236462940022
#>     Attrib V13    0.6683404996156407
#>     Attrib V14    -0.35602374817059956
#>     Attrib V15    -0.47969228080670195
#>     Attrib V16    -0.48420427215979955
#>     Attrib V17    -0.5592551608241753
#>     Attrib V18    -0.2355580305584211
#>     Attrib V19    -0.06418053561616485
#>     Attrib V2    -0.4057446832884038
#>     Attrib V20    -0.04152327247525711
#>     Attrib V21    0.03589598879535005
#>     Attrib V22    -0.008220148241691188
#>     Attrib V23    0.6235191552642275
#>     Attrib V24    1.2434209593945174
#>     Attrib V25    1.0563508483264532
#>     Attrib V26    1.4093581432587592
#>     Attrib V27    1.2114017809012232
#>     Attrib V28    0.4884252500818103
#>     Attrib V29    -0.04005976079926678
#>     Attrib V3    -0.3031059549972367
#>     Attrib V30    0.04730113787397108
#>     Attrib V31    -0.3327972077665611
#>     Attrib V32    -0.03796673731439701
#>     Attrib V33    -0.6829326872918203
#>     Attrib V34    0.26846778945495986
#>     Attrib V35    0.7573914134144693
#>     Attrib V36    -0.502046744835076
#>     Attrib V37    -0.253571650756653
#>     Attrib V38    -0.1256929116272615
#>     Attrib V39    -0.14435370221857943
#>     Attrib V4    -0.15646026712276095
#>     Attrib V40    -0.17979331785204714
#>     Attrib V41    -0.07590454539053977
#>     Attrib V42    -0.1462224723335974
#>     Attrib V43    0.5861339634407207
#>     Attrib V44    0.5164193840377527
#>     Attrib V45    0.539507749954582
#>     Attrib V46    0.950318987132227
#>     Attrib V47    0.9727186001331974
#>     Attrib V48    1.2976949682002163
#>     Attrib V49    1.0622203836811095
#>     Attrib V5    -0.57787817415943
#>     Attrib V50    -0.18340282134502492
#>     Attrib V51    1.1873316046923135
#>     Attrib V52    1.0732528743351133
#>     Attrib V53    1.0402850355224404
#>     Attrib V54    -0.16885542037842982
#>     Attrib V55    -0.630566889908556
#>     Attrib V56    -0.4019751769070994
#>     Attrib V57    -0.946555114462617
#>     Attrib V58    0.12055399391362988
#>     Attrib V59    -0.8931021448095554
#>     Attrib V6    0.29712362001325887
#>     Attrib V60    -0.34538512575167146
#>     Attrib V7    -0.11118660781441
#>     Attrib V8    -0.44914358444670316
#>     Attrib V9    0.9532959104527687
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.05777376278720798
#>     Attrib V1    -0.40616591896758136
#>     Attrib V10    -0.7553834553684305
#>     Attrib V11    -0.5405848495433864
#>     Attrib V12    -0.5210966347939086
#>     Attrib V13    -0.19194696064664718
#>     Attrib V14    0.2963542010225682
#>     Attrib V15    0.06140035664197326
#>     Attrib V16    0.1253900134703231
#>     Attrib V17    0.31730717130113206
#>     Attrib V18    0.367418949250479
#>     Attrib V19    0.04477110998779588
#>     Attrib V2    0.18007777396779187
#>     Attrib V20    -0.17853342777077658
#>     Attrib V21    -0.10322316154121981
#>     Attrib V22    -0.05358528407090122
#>     Attrib V23    -0.32708410346960726
#>     Attrib V24    -0.5934047538085517
#>     Attrib V25    -0.11107452893058048
#>     Attrib V26    -0.24047077125083569
#>     Attrib V27    -0.6068429369399483
#>     Attrib V28    -0.6046848675656793
#>     Attrib V29    -0.2693998286359016
#>     Attrib V3    0.053595820115449846
#>     Attrib V30    -0.2991080035489292
#>     Attrib V31    0.6606423509458371
#>     Attrib V32    -0.2445309062135967
#>     Attrib V33    -5.801614522953834E-4
#>     Attrib V34    -0.1386779157214659
#>     Attrib V35    -0.27587826177993896
#>     Attrib V36    0.5811152343168661
#>     Attrib V37    0.34231240472548213
#>     Attrib V38    0.12722484475677298
#>     Attrib V39    0.2699054409778734
#>     Attrib V4    -0.06315617731248489
#>     Attrib V40    0.3320588464351795
#>     Attrib V41    0.1386611770821611
#>     Attrib V42    -0.3085376783792922
#>     Attrib V43    -0.4068450349221624
#>     Attrib V44    -0.5563727674000472
#>     Attrib V45    -0.5977514614174297
#>     Attrib V46    -0.6834806086932521
#>     Attrib V47    -0.3611726273645671
#>     Attrib V48    -0.589373251319752
#>     Attrib V49    -0.6495531319503715
#>     Attrib V5    0.4515975361046536
#>     Attrib V50    0.5658371545691189
#>     Attrib V51    -0.42644520805258296
#>     Attrib V52    -0.5120776892138336
#>     Attrib V53    -0.39528874285394217
#>     Attrib V54    -0.10576021019110489
#>     Attrib V55    0.7181103450441478
#>     Attrib V56    0.3143730855763521
#>     Attrib V57    0.7099431963538608
#>     Attrib V58    -0.2103314752246106
#>     Attrib V59    0.6991136295704405
#>     Attrib V6    0.12050265786969769
#>     Attrib V60    0.11493254775048219
#>     Attrib V7    0.14697135358533184
#>     Attrib V8    0.22315349844544657
#>     Attrib V9    -0.8215453081241589
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.19335709349119692
#>     Attrib V1    0.4422015709425392
#>     Attrib V10    -0.23990286687754303
#>     Attrib V11    -0.09793568061497733
#>     Attrib V12    -0.14463093003110006
#>     Attrib V13    -0.46416305157353743
#>     Attrib V14    -0.1805458646266326
#>     Attrib V15    0.4127575458215419
#>     Attrib V16    0.43926521822929615
#>     Attrib V17    0.1707596805505445
#>     Attrib V18    -0.16503855624075875
#>     Attrib V19    0.10325453944140739
#>     Attrib V2    0.09300502348213584
#>     Attrib V20    0.575487208956524
#>     Attrib V21    0.19564568131974097
#>     Attrib V22    -0.0017321970319259562
#>     Attrib V23    0.2052893300000437
#>     Attrib V24    0.2889504087942892
#>     Attrib V25    -0.4370102192979856
#>     Attrib V26    -0.8776725371754079
#>     Attrib V27    -0.5358529722859691
#>     Attrib V28    -0.23948175478526734
#>     Attrib V29    -0.3330643947610757
#>     Attrib V3    0.21184666844479813
#>     Attrib V30    0.12646644823530553
#>     Attrib V31    -0.9112434841234395
#>     Attrib V32    0.2041286115481821
#>     Attrib V33    0.39662264221840204
#>     Attrib V34    0.11595676957136687
#>     Attrib V35    -0.13566057375168136
#>     Attrib V36    -0.7127522825486683
#>     Attrib V37    -0.49060691488797475
#>     Attrib V38    0.06951066070488535
#>     Attrib V39    -0.006598789307571554
#>     Attrib V4    0.1465027126885049
#>     Attrib V40    -0.08018967269427693
#>     Attrib V41    -0.261972074417029
#>     Attrib V42    0.4773325618351983
#>     Attrib V43    0.3933851552968614
#>     Attrib V44    0.4681479511226977
#>     Attrib V45    0.3087280536625884
#>     Attrib V46    0.17431016179158818
#>     Attrib V47    -0.17704423743335979
#>     Attrib V48    -0.01627057823913664
#>     Attrib V49    0.07584243168333601
#>     Attrib V5    -0.29074056479141713
#>     Attrib V50    -0.6872532885201351
#>     Attrib V51    -0.03211959636421486
#>     Attrib V52    -0.012835601611165367
#>     Attrib V53    0.363605565295035
#>     Attrib V54    0.7153528694229851
#>     Attrib V55    -0.014138131701266118
#>     Attrib V56    0.43949779971082464
#>     Attrib V57    -0.18865227745524923
#>     Attrib V58    0.49758257579261883
#>     Attrib V59    -0.10707307509210108
#>     Attrib V6    -0.4550249444575831
#>     Attrib V60    0.11828253724725706
#>     Attrib V7    -0.16515219586800453
#>     Attrib V8    0.07824910117294488
#>     Attrib V9    0.27809935642621675
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.13718870974388667
#>     Attrib V1    0.6087952321062166
#>     Attrib V10    -0.35857371594486714
#>     Attrib V11    -0.12793066183598956
#>     Attrib V12    -0.3760001726192309
#>     Attrib V13    -0.5149214084576276
#>     Attrib V14    -0.06759480327528089
#>     Attrib V15    0.6420458799796028
#>     Attrib V16    0.6393682566778321
#>     Attrib V17    0.14247570400510742
#>     Attrib V18    -0.25830940031027905
#>     Attrib V19    0.21809050517857503
#>     Attrib V2    0.25101535636566735
#>     Attrib V20    0.7244236262773857
#>     Attrib V21    0.33599468563848
#>     Attrib V22    0.1493377491197826
#>     Attrib V23    0.33529415257005313
#>     Attrib V24    0.30593077112937445
#>     Attrib V25    -0.7437493769457774
#>     Attrib V26    -1.1645819567789493
#>     Attrib V27    -0.6030154251594514
#>     Attrib V28    -0.1873088442422632
#>     Attrib V29    -0.1103695374786524
#>     Attrib V3    0.2989539974687478
#>     Attrib V30    0.2494690387888502
#>     Attrib V31    -1.17759602718065
#>     Attrib V32    0.2534306146237126
#>     Attrib V33    0.4990391456650963
#>     Attrib V34    -0.016552947841031805
#>     Attrib V35    -0.35724567703037124
#>     Attrib V36    -1.0033028722200026
#>     Attrib V37    -0.6341170736853535
#>     Attrib V38    0.023268839119518634
#>     Attrib V39    -0.05481415862784528
#>     Attrib V4    0.2557225633199893
#>     Attrib V40    -0.07090927841119117
#>     Attrib V41    -0.20922402956443228
#>     Attrib V42    0.6852826412914574
#>     Attrib V43    0.5644298860806106
#>     Attrib V44    0.528211114980219
#>     Attrib V45    0.3680992070052627
#>     Attrib V46    0.2837582345499551
#>     Attrib V47    -0.2803618949254093
#>     Attrib V48    -0.05962208151270006
#>     Attrib V49    0.11681633335544521
#>     Attrib V5    -0.4005377243531442
#>     Attrib V50    -0.9330273889932804
#>     Attrib V51    -0.11871530693946017
#>     Attrib V52    0.050425008962035084
#>     Attrib V53    0.5177830224006441
#>     Attrib V54    0.8559711667545133
#>     Attrib V55    -0.04715382107889667
#>     Attrib V56    0.5318891252607525
#>     Attrib V57    -0.23520056079785165
#>     Attrib V58    0.7026055190582906
#>     Attrib V59    -0.019751821224005078
#>     Attrib V6    -0.5884954710971702
#>     Attrib V60    0.15319978628150152
#>     Attrib V7    -0.10690658095479433
#>     Attrib V8    0.15209153086144833
#>     Attrib V9    0.32901352221438573
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.20313931385044584
#>     Attrib V1    0.4085854799097352
#>     Attrib V10    -0.2262763695543337
#>     Attrib V11    -0.08307891254113106
#>     Attrib V12    -0.12762127776987733
#>     Attrib V13    -0.2512563033706271
#>     Attrib V14    -0.08560672712413772
#>     Attrib V15    0.3269824458012705
#>     Attrib V16    0.28348289316641495
#>     Attrib V17    0.08619420791795188
#>     Attrib V18    -0.12823590462266818
#>     Attrib V19    0.11166371950121773
#>     Attrib V2    0.10174169376411857
#>     Attrib V20    0.47147658581273394
#>     Attrib V21    0.2097514484395891
#>     Attrib V22    0.005457075189699898
#>     Attrib V23    0.205730012477768
#>     Attrib V24    0.2518569274796092
#>     Attrib V25    -0.32956776767844037
#>     Attrib V26    -0.6818835032606912
#>     Attrib V27    -0.3581063944978217
#>     Attrib V28    -0.18432640132674885
#>     Attrib V29    -0.14656633270840871
#>     Attrib V3    0.2651880201654072
#>     Attrib V30    0.09155207744292891
#>     Attrib V31    -0.7549109983547183
#>     Attrib V32    0.13903289854861717
#>     Attrib V33    0.22720988892732014
#>     Attrib V34    0.05043566537480442
#>     Attrib V35    -0.16556449852116706
#>     Attrib V36    -0.6030703666055919
#>     Attrib V37    -0.3636917159448561
#>     Attrib V38    0.021979963569210375
#>     Attrib V39    0.06179903053456749
#>     Attrib V4    0.16609089173129293
#>     Attrib V40    -0.04336102490932383
#>     Attrib V41    -0.15222845150802183
#>     Attrib V42    0.3833537155536062
#>     Attrib V43    0.2957262026530248
#>     Attrib V44    0.3448970796016334
#>     Attrib V45    0.17187533385262335
#>     Attrib V46    0.1805483252464001
#>     Attrib V47    -0.10399395229105284
#>     Attrib V48    -0.039745799901505285
#>     Attrib V49    0.11443044846745648
#>     Attrib V5    -0.2031451849003644
#>     Attrib V50    -0.54769607968327
#>     Attrib V51    -0.06075423226601463
#>     Attrib V52    0.01819215152141685
#>     Attrib V53    0.3443554077373698
#>     Attrib V54    0.5290603300995561
#>     Attrib V55    -0.01190674710524717
#>     Attrib V56    0.34819226989867613
#>     Attrib V57    -0.13798502066539636
#>     Attrib V58    0.3984196415863299
#>     Attrib V59    0.039778746488401254
#>     Attrib V6    -0.3488358490232413
#>     Attrib V60    0.17921110471965307
#>     Attrib V7    -0.09989662483992527
#>     Attrib V8    -0.031718953287122105
#>     Attrib V9    0.16141733446651346
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.17320648939515446
#>     Attrib V1    0.6158798995878385
#>     Attrib V10    -0.1343650982524741
#>     Attrib V11    0.1057956349781311
#>     Attrib V12    -4.924053084855029E-4
#>     Attrib V13    -0.5306557065496015
#>     Attrib V14    -0.38767616862451143
#>     Attrib V15    0.47068149822020744
#>     Attrib V16    0.4609153249663939
#>     Attrib V17    0.1167684550483361
#>     Attrib V18    -0.2959768489422603
#>     Attrib V19    0.13098340521050542
#>     Attrib V2    0.08343283244507418
#>     Attrib V20    0.6846299095151369
#>     Attrib V21    0.20148200564305152
#>     Attrib V22    0.02216940934420896
#>     Attrib V23    0.4520535672369642
#>     Attrib V24    0.6181754211559448
#>     Attrib V25    -0.36985542354909356
#>     Attrib V26    -0.8673054876534727
#>     Attrib V27    -0.6190060407923004
#>     Attrib V28    -0.5238029611976118
#>     Attrib V29    -0.8333527944656134
#>     Attrib V3    0.2045857529009569
#>     Attrib V30    0.12352293048457963
#>     Attrib V31    -1.017055439288092
#>     Attrib V32    0.4129391921768859
#>     Attrib V33    0.6195367414534192
#>     Attrib V34    0.20345871559920195
#>     Attrib V35    -0.10587131662149064
#>     Attrib V36    -1.073416539191991
#>     Attrib V37    -0.7647118485411005
#>     Attrib V38    -0.1036202186828908
#>     Attrib V39    -0.07881661219909197
#>     Attrib V4    0.0806335468929146
#>     Attrib V40    -0.11056275540542305
#>     Attrib V41    -0.3573349946860477
#>     Attrib V42    0.6607744496327824
#>     Attrib V43    0.6406156238373492
#>     Attrib V44    0.6718933888734544
#>     Attrib V45    0.3403641731368688
#>     Attrib V46    0.2979399825070486
#>     Attrib V47    -0.2367170094314769
#>     Attrib V48    0.09124756308269417
#>     Attrib V49    0.2702397093012902
#>     Attrib V5    -0.557712592639746
#>     Attrib V50    -1.057411969666853
#>     Attrib V51    -0.116870166900134
#>     Attrib V52    0.04590715888126937
#>     Attrib V53    0.4659217322486776
#>     Attrib V54    0.9587283685322462
#>     Attrib V55    -0.056621809610502095
#>     Attrib V56    0.576819247092882
#>     Attrib V57    -0.4019270791379531
#>     Attrib V58    0.6597981430999142
#>     Attrib V59    -0.22222647610021393
#>     Attrib V6    -0.6444329024970633
#>     Attrib V60    0.14186224754961696
#>     Attrib V7    -0.15796951405094195
#>     Attrib V8    0.004757871327725606
#>     Attrib V9    0.49451510488970235
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.5057796854061387
#>     Attrib V1    -0.39751548809202863
#>     Attrib V10    -0.665262350135856
#>     Attrib V11    -1.169234610998353
#>     Attrib V12    -1.204921058860265
#>     Attrib V13    -0.30232652486652783
#>     Attrib V14    0.4309632791279187
#>     Attrib V15    -0.028218330695113876
#>     Attrib V16    -0.4063326434415741
#>     Attrib V17    -0.3039365578080573
#>     Attrib V18    0.20179909137072485
#>     Attrib V19    -0.05373479017165704
#>     Attrib V2    0.3500002948796045
#>     Attrib V20    -0.45227006290717753
#>     Attrib V21    -0.27634635165668237
#>     Attrib V22    0.03021152921952462
#>     Attrib V23    0.08197318435444184
#>     Attrib V24    -0.10818342222667358
#>     Attrib V25    0.4764705873083795
#>     Attrib V26    0.5467983532323225
#>     Attrib V27    0.1831424324327312
#>     Attrib V28    0.27501010438900153
#>     Attrib V29    0.6610583972604999
#>     Attrib V3    0.11316673614089155
#>     Attrib V30    -0.3336907006555801
#>     Attrib V31    0.7136917539772005
#>     Attrib V32    -0.08282947699278365
#>     Attrib V33    -0.2992021231882224
#>     Attrib V34    -0.024323258504992656
#>     Attrib V35    0.5529251060865117
#>     Attrib V36    1.3670797784299569
#>     Attrib V37    1.1878721108655221
#>     Attrib V38    0.2260820201911461
#>     Attrib V39    -0.0796321793116077
#>     Attrib V4    -0.09972044299188856
#>     Attrib V40    -0.08089563166306854
#>     Attrib V41    -0.006456647351838581
#>     Attrib V42    -0.36980372012598894
#>     Attrib V43    -0.5043815446605338
#>     Attrib V44    -0.35987090296741137
#>     Attrib V45    -0.21009098613616756
#>     Attrib V46    -0.2272516994710345
#>     Attrib V47    0.20438613827928273
#>     Attrib V48    -0.12106533835206429
#>     Attrib V49    -0.2751002619178481
#>     Attrib V5    -0.11982350891123146
#>     Attrib V50    1.2823229047020004
#>     Attrib V51    0.30869782151698266
#>     Attrib V52    0.23623346859711195
#>     Attrib V53    0.09835542323354422
#>     Attrib V54    -0.4863660211859527
#>     Attrib V55    0.4686788198898524
#>     Attrib V56    0.343644765587428
#>     Attrib V57    0.21513259331770695
#>     Attrib V58    -0.11733865857533159
#>     Attrib V59    0.20749153171467105
#>     Attrib V6    -0.15447691399406843
#>     Attrib V60    0.25009895657564524
#>     Attrib V7    -0.13808673889782097
#>     Attrib V8    -0.362135634556739
#>     Attrib V9    -0.8740767466319448
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.14288769876392843
#>     Attrib V1    -0.10611514993700182
#>     Attrib V10    0.1272287181569741
#>     Attrib V11    0.059878044304719144
#>     Attrib V12    0.05565770823656079
#>     Attrib V13    0.14954236038348148
#>     Attrib V14    0.07839766547839393
#>     Attrib V15    0.006806449163434559
#>     Attrib V16    0.12608691675755196
#>     Attrib V17    0.23539429269915887
#>     Attrib V18    0.27358067771211664
#>     Attrib V19    0.1459771439090166
#>     Attrib V2    8.667176658694028E-4
#>     Attrib V20    0.004282008820657917
#>     Attrib V21    0.06389289786895068
#>     Attrib V22    0.09034466765048038
#>     Attrib V23    -0.04384754924788619
#>     Attrib V24    -0.10280401406897567
#>     Attrib V25    0.02228387842371453
#>     Attrib V26    0.036989577423927236
#>     Attrib V27    -0.08064136946362951
#>     Attrib V28    -0.1165168396813929
#>     Attrib V29    -0.1305866647936618
#>     Attrib V3    0.0914035422746732
#>     Attrib V30    -0.14956273560085753
#>     Attrib V31    0.10559963708922021
#>     Attrib V32    -0.06816688237684249
#>     Attrib V33    -0.050260907820305505
#>     Attrib V34    0.02950399779204477
#>     Attrib V35    0.019124270892853817
#>     Attrib V36    0.16450613920226517
#>     Attrib V37    0.12062707546355388
#>     Attrib V38    -0.004766092246128813
#>     Attrib V39    0.010976622650153268
#>     Attrib V4    0.10223600096550746
#>     Attrib V40    0.05655654494488989
#>     Attrib V41    0.1554691333373996
#>     Attrib V42    0.004654392608361167
#>     Attrib V43    -0.06585062161800787
#>     Attrib V44    -0.08686611470840203
#>     Attrib V45    -0.03642851702733387
#>     Attrib V46    -0.021580003099431262
#>     Attrib V47    0.05534551473771369
#>     Attrib V48    -0.03336860914320084
#>     Attrib V49    -0.08528688705637263
#>     Attrib V5    0.24209656626825096
#>     Attrib V50    0.2020441901178387
#>     Attrib V51    0.11097696382289036
#>     Attrib V52    0.012646397511198731
#>     Attrib V53    -0.0694133849965179
#>     Attrib V54    -0.12537612539327275
#>     Attrib V55    0.09494456067927155
#>     Attrib V56    0.02530822788166497
#>     Attrib V57    0.1826812693069646
#>     Attrib V58    0.006220752464869489
#>     Attrib V59    0.04633883682215719
#>     Attrib V6    0.2902374527906608
#>     Attrib V60    0.06563644539268992
#>     Attrib V7    0.1835710935955664
#>     Attrib V8    0.1612514895700411
#>     Attrib V9    0.06820651355742027
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.13500101825024902
#>     Attrib V1    0.12367591590247223
#>     Attrib V10    0.058987893441009416
#>     Attrib V11    0.06023890331777302
#>     Attrib V12    -0.004297412387290833
#>     Attrib V13    -0.07400978392261416
#>     Attrib V14    -0.005776565987572747
#>     Attrib V15    0.11247067173164627
#>     Attrib V16    0.025297890050957533
#>     Attrib V17    0.006210526222768948
#>     Attrib V18    -0.005924920499861236
#>     Attrib V19    0.033295329212502306
#>     Attrib V2    0.12246015409325592
#>     Attrib V20    0.02389296376632351
#>     Attrib V21    -0.014051979769914732
#>     Attrib V22    0.01869968174862133
#>     Attrib V23    -0.021696933165237506
#>     Attrib V24    0.019152302530725605
#>     Attrib V25    -0.08178603394119333
#>     Attrib V26    -0.10983467889428976
#>     Attrib V27    -0.0887679863283159
#>     Attrib V28    -0.07194423435787237
#>     Attrib V29    -0.07063904083097702
#>     Attrib V3    0.09311922897667735
#>     Attrib V30    0.009605885142177872
#>     Attrib V31    -0.05018600295097244
#>     Attrib V32    -0.03339724948450447
#>     Attrib V33    0.06482220692231984
#>     Attrib V34    0.012922386320669756
#>     Attrib V35    0.07801284126847935
#>     Attrib V36    -0.047118831609542194
#>     Attrib V37    -0.03856727150548666
#>     Attrib V38    0.07369012322101592
#>     Attrib V39    0.061777597831050586
#>     Attrib V4    0.10975329422380817
#>     Attrib V40    -0.01168437374361953
#>     Attrib V41    0.01903406349715903
#>     Attrib V42    0.029527268185067793
#>     Attrib V43    0.12149148144775379
#>     Attrib V44    0.13870940876593396
#>     Attrib V45    0.12284439663848926
#>     Attrib V46    0.052677011505345754
#>     Attrib V47    0.017644060553929312
#>     Attrib V48    0.09501459389257721
#>     Attrib V49    0.003927047539059015
#>     Attrib V5    0.05628461387896652
#>     Attrib V50    0.02088686627170609
#>     Attrib V51    0.09271206045199373
#>     Attrib V52    0.0550681440351173
#>     Attrib V53    0.07342415357751086
#>     Attrib V54    0.07234125494888755
#>     Attrib V55    0.10322829355663558
#>     Attrib V56    0.13599776709588726
#>     Attrib V57    0.10060811685115312
#>     Attrib V58    0.08445807432288502
#>     Attrib V59    0.014220200885269143
#>     Attrib V6    -0.0010146275706279238
#>     Attrib V60    0.10674541519477307
#>     Attrib V7    -0.03175585357148986
#>     Attrib V8    0.09921329800429973
#>     Attrib V9    0.07205713065756297
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.22089682340145128
#>     Attrib V1    0.07361404747478899
#>     Attrib V10    0.04297736226083385
#>     Attrib V11    0.03436681785794382
#>     Attrib V12    0.001500533513240884
#>     Attrib V13    -0.028234465082085852
#>     Attrib V14    0.026291883313709522
#>     Attrib V15    0.0184742870415851
#>     Attrib V16    0.022505366366382548
#>     Attrib V17    -0.013130226599434521
#>     Attrib V18    0.06787726656446665
#>     Attrib V19    -0.018089744107612053
#>     Attrib V2    0.0766300880740656
#>     Attrib V20    0.0530829337682028
#>     Attrib V21    0.040988512956261394
#>     Attrib V22    -0.018371237434201194
#>     Attrib V23    0.0022753526537214633
#>     Attrib V24    -0.037685749299357967
#>     Attrib V25    -0.02686286249145422
#>     Attrib V26    -0.037193378974792295
#>     Attrib V27    -0.06339984545994311
#>     Attrib V28    -0.07569690456406651
#>     Attrib V29    -0.06117766352959802
#>     Attrib V3    0.15397742261392555
#>     Attrib V30    -0.06825284902365854
#>     Attrib V31    -0.08122310394498022
#>     Attrib V32    -0.021465393251772668
#>     Attrib V33    0.013237174755567998
#>     Attrib V34    0.05988623304516067
#>     Attrib V35    0.019643827836828675
#>     Attrib V36    0.06639549193763836
#>     Attrib V37    -0.008109221825963808
#>     Attrib V38    0.0081074169699993
#>     Attrib V39    0.06644698438931795
#>     Attrib V4    0.08098050679758854
#>     Attrib V40    0.011803847866811844
#>     Attrib V41    -0.025812194479744525
#>     Attrib V42    0.027291076546439162
#>     Attrib V43    0.061310953953803336
#>     Attrib V44    0.13006410072970706
#>     Attrib V45    0.027521700860723825
#>     Attrib V46    0.04803859140592869
#>     Attrib V47    0.10061231511536602
#>     Attrib V48    0.054690315103827165
#>     Attrib V49    0.05381064489766001
#>     Attrib V5    0.08420440003228058
#>     Attrib V50    8.709264520300449E-4
#>     Attrib V51    0.14126557493591674
#>     Attrib V52    0.06643602031257868
#>     Attrib V53    0.0867165462139765
#>     Attrib V54    0.029808456512849964
#>     Attrib V55    0.09717043016652857
#>     Attrib V56    0.13498544910815974
#>     Attrib V57    0.024159395546706333
#>     Attrib V58    0.1064289956591195
#>     Attrib V59    0.08262493245436263
#>     Attrib V6    -0.0038603742795860433
#>     Attrib V60    0.13662433747877117
#>     Attrib V7    0.06053145234260879
#>     Attrib V8    0.11666993498047787
#>     Attrib V9    0.06886929924633967
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.099947586546114
#>     Attrib V1    0.5076519328992819
#>     Attrib V10    0.9159198106233752
#>     Attrib V11    0.8018785404708352
#>     Attrib V12    1.0246252705536592
#>     Attrib V13    0.45060684519786315
#>     Attrib V14    -0.19798074464860665
#>     Attrib V15    -0.16083930914407477
#>     Attrib V16    -0.34293395000108334
#>     Attrib V17    -0.47859853788162027
#>     Attrib V18    -0.24656865824603633
#>     Attrib V19    0.1119687996839659
#>     Attrib V2    -0.18558445333974782
#>     Attrib V20    0.1907146972395438
#>     Attrib V21    0.032674673212914986
#>     Attrib V22    -0.013436998552479307
#>     Attrib V23    0.4684795042577419
#>     Attrib V24    0.8881841330522122
#>     Attrib V25    0.5228340139079667
#>     Attrib V26    0.7180199269251923
#>     Attrib V27    0.8755041724622447
#>     Attrib V28    0.5992436047952481
#>     Attrib V29    0.10069435224246413
#>     Attrib V3    -0.08762514474583018
#>     Attrib V30    0.1599166566682879
#>     Attrib V31    -0.539940224984201
#>     Attrib V32    -0.02635999882981663
#>     Attrib V33    -0.28613108141733806
#>     Attrib V34    0.17818155200288896
#>     Attrib V35    0.5275872820627798
#>     Attrib V36    -0.5913042167132941
#>     Attrib V37    -0.35898809552328265
#>     Attrib V38    -0.1205653315933628
#>     Attrib V39    -0.237235101162
#>     Attrib V4    -0.011757809126148829
#>     Attrib V40    -0.16588465818189155
#>     Attrib V41    -0.06087862154018469
#>     Attrib V42    0.26243068190499685
#>     Attrib V43    0.4992054704121657
#>     Attrib V44    0.509408362469161
#>     Attrib V45    0.6126698340441286
#>     Attrib V46    0.7240520169627739
#>     Attrib V47    0.4792408849711674
#>     Attrib V48    0.7862653939268288
#>     Attrib V49    0.8010623060208074
#>     Attrib V5    -0.4454187110619977
#>     Attrib V50    -0.4680433940739733
#>     Attrib V51    0.6101740283714654
#>     Attrib V52    0.7556519911434956
#>     Attrib V53    0.8059371549451667
#>     Attrib V54    0.18139657957272862
#>     Attrib V55    -0.6294316483499445
#>     Attrib V56    -0.39896706655721353
#>     Attrib V57    -0.8703251476997481
#>     Attrib V58    0.23598649910602648
#>     Attrib V59    -0.7908980222110651
#>     Attrib V6    0.07334989732006553
#>     Attrib V60    -0.22788561167066557
#>     Attrib V7    -0.13505154767755026
#>     Attrib V8    -0.38640162894445446
#>     Attrib V9    0.7652926757418831
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.24285033552483248
#>     Attrib V1    0.6586393070078957
#>     Attrib V10    -0.23638206156222977
#>     Attrib V11    -0.11470072129456603
#>     Attrib V12    -0.24145337240003226
#>     Attrib V13    -0.5226172258561006
#>     Attrib V14    -0.13018605587834353
#>     Attrib V15    0.6183544422632977
#>     Attrib V16    0.5392849783379037
#>     Attrib V17    0.10273840818858312
#>     Attrib V18    -0.27796339670347114
#>     Attrib V19    0.18092763177633786
#>     Attrib V2    0.15644499690843536
#>     Attrib V20    0.7760197769154423
#>     Attrib V21    0.39697762328407477
#>     Attrib V22    0.1990603337772524
#>     Attrib V23    0.44515863054214383
#>     Attrib V24    0.44936392479251325
#>     Attrib V25    -0.6301414778106038
#>     Attrib V26    -1.056488222360182
#>     Attrib V27    -0.5814509313672402
#>     Attrib V28    -0.284564843498448
#>     Attrib V29    -0.2729853946868286
#>     Attrib V3    0.2874725037576259
#>     Attrib V30    0.27688704944997433
#>     Attrib V31    -1.137595346309733
#>     Attrib V32    0.29251662703417014
#>     Attrib V33    0.5071341589043122
#>     Attrib V34    -0.004529725574001187
#>     Attrib V35    -0.30666099479456543
#>     Attrib V36    -0.9995417480852675
#>     Attrib V37    -0.6617013397415257
#>     Attrib V38    -0.01511860671603876
#>     Attrib V39    -0.07623011451474201
#>     Attrib V4    0.18687122540103104
#>     Attrib V40    -0.10011880368534466
#>     Attrib V41    -0.23417316314027584
#>     Attrib V42    0.6994385245959307
#>     Attrib V43    0.6370142782508594
#>     Attrib V44    0.6895888381252975
#>     Attrib V45    0.397644772638941
#>     Attrib V46    0.25791566625857926
#>     Attrib V47    -0.2878746956511673
#>     Attrib V48    -0.04508693327548405
#>     Attrib V49    0.1566278141105413
#>     Attrib V5    -0.43424775167216156
#>     Attrib V50    -1.0017780339363396
#>     Attrib V51    -0.044231731099028754
#>     Attrib V52    0.045896325617004706
#>     Attrib V53    0.45328875089725745
#>     Attrib V54    0.8821511963221284
#>     Attrib V55    -0.05288496519822009
#>     Attrib V56    0.5574735032829229
#>     Attrib V57    -0.4103878239716734
#>     Attrib V58    0.728873018335496
#>     Attrib V59    -0.12538535175569476
#>     Attrib V6    -0.6264017402166446
#>     Attrib V60    0.16451302107024246
#>     Attrib V7    -0.10938361918632244
#>     Attrib V8    0.06876194515198138
#>     Attrib V9    0.43240956188381807
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.28368041591133997
#>     Attrib V1    -0.32237997544796887
#>     Attrib V10    -0.5517294381521268
#>     Attrib V11    -0.857977596249411
#>     Attrib V12    -0.9002445020533161
#>     Attrib V13    -0.16795447070011202
#>     Attrib V14    0.3542073789680299
#>     Attrib V15    -0.0908894304581848
#>     Attrib V16    -0.33156096417019587
#>     Attrib V17    -0.1386012652126345
#>     Attrib V18    0.28665361361677877
#>     Attrib V19    -0.06787781157265534
#>     Attrib V2    0.2716474448270504
#>     Attrib V20    -0.45670594713474233
#>     Attrib V21    -0.2689786802535961
#>     Attrib V22    -0.094664847875218
#>     Attrib V23    -0.09055646515276236
#>     Attrib V24    -0.23967036708224568
#>     Attrib V25    0.4571223294365363
#>     Attrib V26    0.5453041834639735
#>     Attrib V27    0.20920598104287064
#>     Attrib V28    0.2036390766872464
#>     Attrib V29    0.5824108428953834
#>     Attrib V3    0.022130156987975498
#>     Attrib V30    -0.15043416768657752
#>     Attrib V31    0.8594696010365626
#>     Attrib V32    -0.09714339238051266
#>     Attrib V33    -0.2720967704712783
#>     Attrib V34    -0.05108100603428274
#>     Attrib V35    0.3898044387944028
#>     Attrib V36    1.0928661135225466
#>     Attrib V37    0.9035402868492499
#>     Attrib V38    0.0934444840849592
#>     Attrib V39    -0.06787867416082882
#>     Attrib V4    -0.07597036380296235
#>     Attrib V40    0.019308979361657975
#>     Attrib V41    0.09523839357016145
#>     Attrib V42    -0.36630622883346475
#>     Attrib V43    -0.4646065517026601
#>     Attrib V44    -0.38959070889882835
#>     Attrib V45    -0.3015103616038633
#>     Attrib V46    -0.28278353801325523
#>     Attrib V47    0.17422732336158636
#>     Attrib V48    -0.06268249424510068
#>     Attrib V49    -0.2856520345930329
#>     Attrib V5    0.03758183815053344
#>     Attrib V50    1.0950822073348445
#>     Attrib V51    0.17829294744135799
#>     Attrib V52    0.15827690777656883
#>     Attrib V53    -0.032045154443217934
#>     Attrib V54    -0.4511652659302871
#>     Attrib V55    0.3599516053997279
#>     Attrib V56    0.14264080461509998
#>     Attrib V57    0.2525141905888181
#>     Attrib V58    -0.2327822870021796
#>     Attrib V59    0.20050146743532224
#>     Attrib V6    -0.04852490867912929
#>     Attrib V60    0.21986328556160714
#>     Attrib V7    -0.032619677412165655
#>     Attrib V8    -0.35749116783678375
#>     Attrib V9    -0.7571525775822567
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.1839814352504664
#>     Attrib V1    0.677682619220285
#>     Attrib V10    -0.33993948727851747
#>     Attrib V11    -0.15034636091135314
#>     Attrib V12    -0.28112668817225883
#>     Attrib V13    -0.553672246520638
#>     Attrib V14    -0.12817034600681085
#>     Attrib V15    0.5473406891068254
#>     Attrib V16    0.6270545717639245
#>     Attrib V17    0.18226346349323885
#>     Attrib V18    -0.2455705948354021
#>     Attrib V19    0.10870521374413258
#>     Attrib V2    0.2634701902922635
#>     Attrib V20    0.67668176321306
#>     Attrib V21    0.25134038711860546
#>     Attrib V22    0.013578107195523386
#>     Attrib V23    0.18103656806981128
#>     Attrib V24    0.3347546153666197
#>     Attrib V25    -0.6317424259659506
#>     Attrib V26    -1.1117229588915913
#>     Attrib V27    -0.7032361771161307
#>     Attrib V28    -0.38729904200161713
#>     Attrib V29    -0.31572197654501505
#>     Attrib V3    0.3265017046379967
#>     Attrib V30    0.15091607334284043
#>     Attrib V31    -0.9921388053744478
#>     Attrib V32    0.26368375519209153
#>     Attrib V33    0.448137049513707
#>     Attrib V34    0.011318358672482454
#>     Attrib V35    -0.33110245594749077
#>     Attrib V36    -0.9370143699308763
#>     Attrib V37    -0.5583281955116421
#>     Attrib V38    0.01808256539240554
#>     Attrib V39    0.019501269817409825
#>     Attrib V4    0.23346887147885217
#>     Attrib V40    -0.034009931961304474
#>     Attrib V41    -0.26751639095844876
#>     Attrib V42    0.583533611614301
#>     Attrib V43    0.5003078049852304
#>     Attrib V44    0.4639244643476502
#>     Attrib V45    0.19182763645198384
#>     Attrib V46    0.16566655044945489
#>     Attrib V47    -0.358766572103264
#>     Attrib V48    -0.08371168767288238
#>     Attrib V49    0.07551120492738744
#>     Attrib V5    -0.32584133667155774
#>     Attrib V50    -0.8705270544246145
#>     Attrib V51    -0.17590918302517689
#>     Attrib V52    -0.02418624591414497
#>     Attrib V53    0.4346414726320919
#>     Attrib V54    0.9072812948419812
#>     Attrib V55    0.0321305188966892
#>     Attrib V56    0.5824678931734422
#>     Attrib V57    -0.18281681559845386
#>     Attrib V58    0.650947240548708
#>     Attrib V59    0.010032881503492254
#>     Attrib V6    -0.49066385027073317
#>     Attrib V60    0.2263942059690138
#>     Attrib V7    -0.11590638317841649
#>     Attrib V8    -0.0038678006235736404
#>     Attrib V9    0.2617743218805635
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.25797415670700236
#>     Attrib V1    0.5960731953234855
#>     Attrib V10    -0.2635953581524073
#>     Attrib V11    -0.03181324822396306
#>     Attrib V12    -0.1925207888761526
#>     Attrib V13    -0.5865068743776418
#>     Attrib V14    -0.28538579800438707
#>     Attrib V15    0.5549655676628402
#>     Attrib V16    0.5483601210970501
#>     Attrib V17    0.1821343556233094
#>     Attrib V18    -0.31332242411266303
#>     Attrib V19    0.14058008347602827
#>     Attrib V2    0.0716075978971091
#>     Attrib V20    0.7439421347372909
#>     Attrib V21    0.26749611614460206
#>     Attrib V22    0.12453804109156263
#>     Attrib V23    0.47145183758465353
#>     Attrib V24    0.5729928625332282
#>     Attrib V25    -0.4874941966046081
#>     Attrib V26    -1.0332379686255466
#>     Attrib V27    -0.6858828000145918
#>     Attrib V28    -0.4793268722043256
#>     Attrib V29    -0.7226788135298375
#>     Attrib V3    0.35583641798494486
#>     Attrib V30    0.16105282254085126
#>     Attrib V31    -1.1690712597906587
#>     Attrib V32    0.402383814177038
#>     Attrib V33    0.6666110782481597
#>     Attrib V34    0.16869910841110208
#>     Attrib V35    -0.15434533899829506
#>     Attrib V36    -1.1100166841345829
#>     Attrib V37    -0.815597078425137
#>     Attrib V38    -0.1400948229860108
#>     Attrib V39    -0.10899905436384562
#>     Attrib V4    0.1905070559096479
#>     Attrib V40    -0.12073556613709938
#>     Attrib V41    -0.36822325835678993
#>     Attrib V42    0.7544726583119841
#>     Attrib V43    0.7174531075137615
#>     Attrib V44    0.6909818277529027
#>     Attrib V45    0.44184259319189595
#>     Attrib V46    0.3159918301214395
#>     Attrib V47    -0.22076557855326273
#>     Attrib V48    -0.058668079310054334
#>     Attrib V49    0.17165453317787785
#>     Attrib V5    -0.5585406617279417
#>     Attrib V50    -1.1378521165830153
#>     Attrib V51    -0.18550464264292796
#>     Attrib V52    0.00797253293008577
#>     Attrib V53    0.5254504775601406
#>     Attrib V54    0.9539379929739296
#>     Attrib V55    -0.045916638487585336
#>     Attrib V56    0.655868931133085
#>     Attrib V57    -0.46179614278519576
#>     Attrib V58    0.741833301725529
#>     Attrib V59    -0.197506020149832
#>     Attrib V6    -0.7213965685969281
#>     Attrib V60    0.13212905342435907
#>     Attrib V7    -0.11648269312901455
#>     Attrib V8    0.11119890535566355
#>     Attrib V9    0.5287813342701247
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.09305576618742954
#>     Attrib V1    -0.24457772291515956
#>     Attrib V10    -0.017436449583374956
#>     Attrib V11    -0.10880364061725559
#>     Attrib V12    -0.08604832807043757
#>     Attrib V13    0.14219458700858256
#>     Attrib V14    0.24632164617097957
#>     Attrib V15    0.07441653704952786
#>     Attrib V16    0.05036853863889273
#>     Attrib V17    0.2994345893666786
#>     Attrib V18    0.39459242363969643
#>     Attrib V19    0.20954728857578972
#>     Attrib V2    0.06933682826772272
#>     Attrib V20    0.018374444673868156
#>     Attrib V21    0.11285022562409969
#>     Attrib V22    0.11647666918719032
#>     Attrib V23    0.008806624283111296
#>     Attrib V24    -0.23754870858492755
#>     Attrib V25    0.10076505127961427
#>     Attrib V26    0.21702480265218826
#>     Attrib V27    -0.0917329975937886
#>     Attrib V28    -0.15102465156560288
#>     Attrib V29    -0.11156065232999005
#>     Attrib V3    0.05283955313981764
#>     Attrib V30    -0.2121770885943235
#>     Attrib V31    0.38472351252728626
#>     Attrib V32    -0.08288908228558209
#>     Attrib V33    -0.12424623273291255
#>     Attrib V34    -0.011911398300274231
#>     Attrib V35    0.0867902526852434
#>     Attrib V36    0.4521850949270885
#>     Attrib V37    0.15955682202852753
#>     Attrib V38    -0.07805207436173661
#>     Attrib V39    -0.06905938611708945
#>     Attrib V4    0.09760210184320302
#>     Attrib V40    0.11688670713290346
#>     Attrib V41    0.19581456270090022
#>     Attrib V42    -0.15542532717735183
#>     Attrib V43    -0.13320519162987196
#>     Attrib V44    -0.24478386458414347
#>     Attrib V45    -0.245791301179886
#>     Attrib V46    -0.17384088274927736
#>     Attrib V47    0.0911153656300925
#>     Attrib V48    -0.09376474128806142
#>     Attrib V49    -0.19469691671002753
#>     Attrib V5    0.28682463069651015
#>     Attrib V50    0.4666088632220213
#>     Attrib V51    0.08010221043537558
#>     Attrib V52    -0.0049060696406455235
#>     Attrib V53    -0.2107227992337762
#>     Attrib V54    -0.23484497949096053
#>     Attrib V55    0.2314097684105027
#>     Attrib V56    0.042665242096656224
#>     Attrib V57    0.30380451604320324
#>     Attrib V58    -0.12713696166275096
#>     Attrib V59    0.16255167586636243
#>     Attrib V6    0.3991633267837579
#>     Attrib V60    0.04839256672678811
#>     Attrib V7    0.23997529841817766
#>     Attrib V8    0.18884506264805173
#>     Attrib V9    -0.109225640458414
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5349539785854082
#>     Attrib V1    1.0209404870828005
#>     Attrib V10    1.4972122198629354
#>     Attrib V11    1.4933705609015415
#>     Attrib V12    1.7859720175881533
#>     Attrib V13    0.7991557551505779
#>     Attrib V14    -0.3402996227135279
#>     Attrib V15    -0.5698002214592532
#>     Attrib V16    -0.5124527929529638
#>     Attrib V17    -0.6093739432416299
#>     Attrib V18    -0.1838188661974389
#>     Attrib V19    -0.00933782845285694
#>     Attrib V2    -0.04981265150397855
#>     Attrib V20    -0.020006388079557808
#>     Attrib V21    0.262604826105026
#>     Attrib V22    0.15849794112261614
#>     Attrib V23    0.6665898502222766
#>     Attrib V24    1.2044808820895385
#>     Attrib V25    0.8170050356569558
#>     Attrib V26    1.4561607763298343
#>     Attrib V27    1.5026827070868292
#>     Attrib V28    1.1065397466751306
#>     Attrib V29    1.000253552274076
#>     Attrib V3    -0.055660650879448284
#>     Attrib V30    0.13393903197941598
#>     Attrib V31    -0.642156554449796
#>     Attrib V32    -0.2230990514639037
#>     Attrib V33    -1.2645186230595493
#>     Attrib V34    -0.038089370901001646
#>     Attrib V35    0.6584206291276076
#>     Attrib V36    -0.5598129388167884
#>     Attrib V37    -0.06502906887820656
#>     Attrib V38    -0.312003120766974
#>     Attrib V39    -0.2092821008738354
#>     Attrib V4    0.16439498114702059
#>     Attrib V40    -0.08928952711506379
#>     Attrib V41    0.4690361052208167
#>     Attrib V42    -0.15365860927319283
#>     Attrib V43    0.42599197584192544
#>     Attrib V44    0.6094050721041689
#>     Attrib V45    0.6183659044028237
#>     Attrib V46    1.0106881392106073
#>     Attrib V47    0.9690723603647692
#>     Attrib V48    1.34941235108138
#>     Attrib V49    1.272956619482226
#>     Attrib V5    -0.2322861583733528
#>     Attrib V50    -0.23513741712616604
#>     Attrib V51    1.293780987058344
#>     Attrib V52    1.3209714635478151
#>     Attrib V53    1.274324973814205
#>     Attrib V54    -0.29864286383371974
#>     Attrib V55    -1.1865622397042843
#>     Attrib V56    -0.7831256195424321
#>     Attrib V57    -0.8806501406842657
#>     Attrib V58    0.004426538094385913
#>     Attrib V59    -0.6035828951229836
#>     Attrib V6    0.921525764108206
#>     Attrib V60    -0.33237515081116625
#>     Attrib V7    -0.28684477616326465
#>     Attrib V8    -0.8786380349666965
#>     Attrib V9    0.6302604324448794
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.14806332466494332
#>     Attrib V1    -0.1676594899639358
#>     Attrib V10    0.06432501360274238
#>     Attrib V11    -0.028140418114175673
#>     Attrib V12    0.02662592287829415
#>     Attrib V13    0.12373157543320033
#>     Attrib V14    0.19244011827839097
#>     Attrib V15    -0.005603355138231881
#>     Attrib V16    0.05338728663166455
#>     Attrib V17    0.23020157906956978
#>     Attrib V18    0.25942734422756614
#>     Attrib V19    0.1979545721811831
#>     Attrib V2    0.07669828202991286
#>     Attrib V20    0.023601817342990737
#>     Attrib V21    0.12229082553062891
#>     Attrib V22    0.12761522191921792
#>     Attrib V23    -0.011740060780294001
#>     Attrib V24    -0.16901125016108615
#>     Attrib V25    0.06141604748795551
#>     Attrib V26    0.096230090223902
#>     Attrib V27    -0.038557738541469586
#>     Attrib V28    -0.12403912223504408
#>     Attrib V29    -0.11429882638388388
#>     Attrib V3    0.03505643434869223
#>     Attrib V30    -0.16354429674663565
#>     Attrib V31    0.24159642717452215
#>     Attrib V32    -0.1132343787480871
#>     Attrib V33    -0.02229517978207945
#>     Attrib V34    -0.017525155336551756
#>     Attrib V35    0.1008441722482981
#>     Attrib V36    0.3200480241747752
#>     Attrib V37    0.16727162889860053
#>     Attrib V38    -0.07889671698261133
#>     Attrib V39    -0.016358104711115352
#>     Attrib V4    0.10692985046725575
#>     Attrib V40    0.08961162914786418
#>     Attrib V41    0.16221500124172242
#>     Attrib V42    -0.04855245642650554
#>     Attrib V43    -0.08978385704054608
#>     Attrib V44    -0.10959056119440143
#>     Attrib V45    -0.11800171990496999
#>     Attrib V46    -0.13244587683587375
#>     Attrib V47    0.024063829231039495
#>     Attrib V48    -0.015301445231022958
#>     Attrib V49    -0.12578577977123553
#>     Attrib V5    0.23147305430695866
#>     Attrib V50    0.28401249914858573
#>     Attrib V51    0.025738586544206066
#>     Attrib V52    -0.07350654993323215
#>     Attrib V53    -0.16604270043714908
#>     Attrib V54    -0.17058965024606035
#>     Attrib V55    0.12827024898714245
#>     Attrib V56    0.035509745889814794
#>     Attrib V57    0.24077259878212523
#>     Attrib V58    -0.07192395640963663
#>     Attrib V59    0.13778642581894313
#>     Attrib V6    0.37237900167666305
#>     Attrib V60    0.11510619788206386
#>     Attrib V7    0.22259892288973757
#>     Attrib V8    0.2256490417510703
#>     Attrib V9    -0.06447956329962969
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    -0.14713874402150398
#>     Attrib V1    0.6362900212124519
#>     Attrib V10    -0.09368504121265694
#>     Attrib V11    0.05118455409802081
#>     Attrib V12    -0.06453503726456118
#>     Attrib V13    -0.45973248361301233
#>     Attrib V14    -0.3564093593226782
#>     Attrib V15    0.4489484939087141
#>     Attrib V16    0.4508415243084873
#>     Attrib V17    0.04357184805755436
#>     Attrib V18    -0.24521247467925053
#>     Attrib V19    0.16930762533393698
#>     Attrib V2    0.07309945046534101
#>     Attrib V20    0.6777586514143789
#>     Attrib V21    0.316073997792231
#>     Attrib V22    0.12676459029159312
#>     Attrib V23    0.43729066000418754
#>     Attrib V24    0.6309066442272439
#>     Attrib V25    -0.4304849881713788
#>     Attrib V26    -0.8253778348382593
#>     Attrib V27    -0.5598027125192512
#>     Attrib V28    -0.41920394169248276
#>     Attrib V29    -0.5993323391025082
#>     Attrib V3    0.2267462272924578
#>     Attrib V30    0.1582628320583418
#>     Attrib V31    -1.0357679309230268
#>     Attrib V32    0.3854976808890931
#>     Attrib V33    0.5227836885359856
#>     Attrib V34    0.18986061442470237
#>     Attrib V35    -0.12385653880026629
#>     Attrib V36    -1.0006854103009486
#>     Attrib V37    -0.73503782601708
#>     Attrib V38    -0.07231287162066002
#>     Attrib V39    -0.0871767209503904
#>     Attrib V4    0.1112089880306689
#>     Attrib V40    -0.19375822673114956
#>     Attrib V41    -0.33217671655729447
#>     Attrib V42    0.6712738191097611
#>     Attrib V43    0.6189073230508194
#>     Attrib V44    0.699934661532922
#>     Attrib V45    0.4837610809514052
#>     Attrib V46    0.29680712292587785
#>     Attrib V47    -0.22139533040878517
#>     Attrib V48    0.06938040491750032
#>     Attrib V49    0.1991535115454874
#>     Attrib V5    -0.5260713927710363
#>     Attrib V50    -0.9814511825247857
#>     Attrib V51    -0.05448453206374577
#>     Attrib V52    0.07628202244832555
#>     Attrib V53    0.47055485798936286
#>     Attrib V54    0.8491177429506201
#>     Attrib V55    -0.09754188661497908
#>     Attrib V56    0.47183825048339706
#>     Attrib V57    -0.44308245298433824
#>     Attrib V58    0.6443339601220539
#>     Attrib V59    -0.22992584839788627
#>     Attrib V6    -0.6094058260843587
#>     Attrib V60    0.10736196045299781
#>     Attrib V7    -0.20553191305584365
#>     Attrib V8    0.043430227570953994
#>     Attrib V9    0.5300303602574359
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.4378680243673692
#>     Attrib V1    -1.3000366750993733
#>     Attrib V10    -1.4971891331751277
#>     Attrib V11    -1.5824729241101434
#>     Attrib V12    -1.9420803217087608
#>     Attrib V13    -0.9213985266954097
#>     Attrib V14    0.34157663519413844
#>     Attrib V15    0.50788567923947
#>     Attrib V16    0.5558763579087874
#>     Attrib V17    0.644387297578709
#>     Attrib V18    0.5498472736946229
#>     Attrib V19    0.3363925505776909
#>     Attrib V2    -0.2904294772225412
#>     Attrib V20    0.2361744524729732
#>     Attrib V21    -0.11050086472376151
#>     Attrib V22    0.12214087501222928
#>     Attrib V23    -0.2653929897841701
#>     Attrib V24    -0.838554618302366
#>     Attrib V25    -0.6007487428340045
#>     Attrib V26    -1.3303657787495458
#>     Attrib V27    -1.5664390732909583
#>     Attrib V28    -1.507678651824895
#>     Attrib V29    -1.4597605106202602
#>     Attrib V3    -0.155744730191778
#>     Attrib V30    -0.39963988932808836
#>     Attrib V31    0.5550889964655153
#>     Attrib V32    0.26450533780947466
#>     Attrib V33    1.1306710152300825
#>     Attrib V34    0.19893240718645944
#>     Attrib V35    -0.4786117339242157
#>     Attrib V36    0.4496450326119913
#>     Attrib V37    -0.27877649439567637
#>     Attrib V38    0.05487951189656585
#>     Attrib V39    0.17776170488180257
#>     Attrib V4    -0.33457699878520936
#>     Attrib V40    0.16895132283537562
#>     Attrib V41    -0.34512572793045254
#>     Attrib V42    0.26400321671165844
#>     Attrib V43    -0.26828175898309314
#>     Attrib V44    -0.4691436636933319
#>     Attrib V45    -0.5824477757612364
#>     Attrib V46    -0.9687671768357731
#>     Attrib V47    -0.9204751538456625
#>     Attrib V48    -1.1407191735191369
#>     Attrib V49    -0.9876146151058224
#>     Attrib V5    -0.04486404509439763
#>     Attrib V50    0.33271543863240405
#>     Attrib V51    -1.2558032739091738
#>     Attrib V52    -1.2028613849698464
#>     Attrib V53    -1.0577869946961527
#>     Attrib V54    0.28292674494449177
#>     Attrib V55    1.1761951421070274
#>     Attrib V56    0.7605648163693524
#>     Attrib V57    0.6874360930842416
#>     Attrib V58    0.08723515115050694
#>     Attrib V59    0.3967289327750549
#>     Attrib V6    -1.01776486691514
#>     Attrib V60    0.10168620616273827
#>     Attrib V7    0.3790167171980328
#>     Attrib V8    0.8766976436984094
#>     Attrib V9    -0.5592284027908704
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.11202232305007595
#>     Attrib V1    0.35922249823654495
#>     Attrib V10    -0.19599650960104054
#>     Attrib V11    0.023904334571996522
#>     Attrib V12    -0.017436203934706965
#>     Attrib V13    -0.27140882639491903
#>     Attrib V14    -0.0571556822659332
#>     Attrib V15    0.29745901890775023
#>     Attrib V16    0.2467382184778581
#>     Attrib V17    0.036889494961747954
#>     Attrib V18    -0.1350756794659605
#>     Attrib V19    0.06545847349880361
#>     Attrib V2    0.08095043881101828
#>     Attrib V20    0.4145098537148992
#>     Attrib V21    0.15776283419842238
#>     Attrib V22    -0.001564118981586472
#>     Attrib V23    0.09039553509940337
#>     Attrib V24    0.2552792798220585
#>     Attrib V25    -0.25460829772673294
#>     Attrib V26    -0.5529540193641962
#>     Attrib V27    -0.32987435187615677
#>     Attrib V28    -0.17970573888963323
#>     Attrib V29    -0.16699579883758503
#>     Attrib V3    0.20305147604652143
#>     Attrib V30    -0.0025668702250567924
#>     Attrib V31    -0.6383245807699325
#>     Attrib V32    0.12472800463662435
#>     Attrib V33    0.21664233018116355
#>     Attrib V34    0.05267533607154927
#>     Attrib V35    -0.08543972658170805
#>     Attrib V36    -0.5464180648184498
#>     Attrib V37    -0.32743586674682995
#>     Attrib V38    0.021064371581404596
#>     Attrib V39    0.026646764100474073
#>     Attrib V4    0.09441857627454146
#>     Attrib V40    -0.06557425876347475
#>     Attrib V41    -0.15858643123448304
#>     Attrib V42    0.2791715528955094
#>     Attrib V43    0.35224744655301404
#>     Attrib V44    0.2726077541412219
#>     Attrib V45    0.2353700805446065
#>     Attrib V46    0.15214498283662245
#>     Attrib V47    -0.09480477438450571
#>     Attrib V48    -0.0028741192596994348
#>     Attrib V49    0.07529416416451998
#>     Attrib V5    -0.2328644463330536
#>     Attrib V50    -0.45454955913936046
#>     Attrib V51    -0.010827834553705618
#>     Attrib V52    0.09413898671821162
#>     Attrib V53    0.3033055231679349
#>     Attrib V54    0.5060792705046326
#>     Attrib V55    0.06379461291072033
#>     Attrib V56    0.3243961454950489
#>     Attrib V57    -0.12626005526045014
#>     Attrib V58    0.34208917009606943
#>     Attrib V59    -0.036487566387820344
#>     Attrib V6    -0.32120551402434355
#>     Attrib V60    0.12375331821814055
#>     Attrib V7    -0.14825573405796535
#>     Attrib V8    -0.00757829588418517
#>     Attrib V9    0.15425202260185797
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1512659110870285
#>     Attrib V1    0.2890196045199582
#>     Attrib V10    -0.03773735361864757
#>     Attrib V11    0.027550222667343353
#>     Attrib V12    0.054793818293330444
#>     Attrib V13    -0.08522240884832151
#>     Attrib V14    -0.017668948008794625
#>     Attrib V15    0.1596193608674058
#>     Attrib V16    0.09305792126372293
#>     Attrib V17    0.032173177109755494
#>     Attrib V18    -0.06531253528909667
#>     Attrib V19    0.012568434525517744
#>     Attrib V2    0.11147600139202585
#>     Attrib V20    0.13519115950619257
#>     Attrib V21    0.03631636498866553
#>     Attrib V22    -0.0938068903427585
#>     Attrib V23    0.028464119639653725
#>     Attrib V24    0.06702575362215175
#>     Attrib V25    -0.10117295349039078
#>     Attrib V26    -0.185643633765761
#>     Attrib V27    -0.16334477132316227
#>     Attrib V28    -0.07017774157966838
#>     Attrib V29    -0.12017164413704486
#>     Attrib V3    0.1223890112248422
#>     Attrib V30    0.009476054564855027
#>     Attrib V31    -0.2807919598093079
#>     Attrib V32    0.0012901395897162175
#>     Attrib V33    0.03585668976034992
#>     Attrib V34    0.01973425873925367
#>     Attrib V35    0.019321279276479423
#>     Attrib V36    -0.24114602887998418
#>     Attrib V37    -0.13044349659448515
#>     Attrib V38    -0.012658176427198884
#>     Attrib V39    0.07440618864308049
#>     Attrib V4    0.16374060497805834
#>     Attrib V40    -0.031642253337190965
#>     Attrib V41    -0.11066965323769705
#>     Attrib V42    0.1484190019747338
#>     Attrib V43    0.1538922285846024
#>     Attrib V44    0.1446810036014835
#>     Attrib V45    0.12224547741306964
#>     Attrib V46    0.08829390548240874
#>     Attrib V47    -0.038896608250628364
#>     Attrib V48    0.08166747554163757
#>     Attrib V49    0.05686979865490527
#>     Attrib V5    -0.08747502411876192
#>     Attrib V50    -0.1787286406459961
#>     Attrib V51    0.0428963821509477
#>     Attrib V52    0.10844311284631135
#>     Attrib V53    0.23883025445190978
#>     Attrib V54    0.3090646158308715
#>     Attrib V55    0.06140027379282656
#>     Attrib V56    0.23360635694079576
#>     Attrib V57    -0.03650456156833056
#>     Attrib V58    0.2692333466410206
#>     Attrib V59    0.09539920875561464
#>     Attrib V6    -0.16768745247582814
#>     Attrib V60    0.14713290460987768
#>     Attrib V7    -0.14598279241961173
#>     Attrib V8    -0.0356898244304511
#>     Attrib V9    0.047130017654763406
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.17372512087158554
#>     Attrib V1    0.41681433452810335
#>     Attrib V10    -0.24121049602195038
#>     Attrib V11    -0.04154439844859038
#>     Attrib V12    -0.15873932825927514
#>     Attrib V13    -0.32531271235177783
#>     Attrib V14    -0.09439230369856932
#>     Attrib V15    0.3479506818020713
#>     Attrib V16    0.32521820312178346
#>     Attrib V17    0.1245913636164803
#>     Attrib V18    -0.11534366857815151
#>     Attrib V19    0.07382115082261093
#>     Attrib V2    0.1745639244697663
#>     Attrib V20    0.4175892627253321
#>     Attrib V21    0.07483019428765686
#>     Attrib V22    -0.01004950657951876
#>     Attrib V23    0.13298500229984184
#>     Attrib V24    0.22723225515146048
#>     Attrib V25    -0.3857082968672347
#>     Attrib V26    -0.6453024205877704
#>     Attrib V27    -0.4800706413289638
#>     Attrib V28    -0.31198801068420756
#>     Attrib V29    -0.30526798076961725
#>     Attrib V3    0.1695127581228584
#>     Attrib V30    0.028815534480313838
#>     Attrib V31    -0.6430763583019274
#>     Attrib V32    0.13474517566749558
#>     Attrib V33    0.29991238071534815
#>     Attrib V34    0.08352311278077314
#>     Attrib V35    -0.0829859776880087
#>     Attrib V36    -0.5601596362240646
#>     Attrib V37    -0.32257075700378873
#>     Attrib V38    0.08245379721231608
#>     Attrib V39    0.018981541294709515
#>     Attrib V4    0.17404509630876272
#>     Attrib V40    -0.04242928906002694
#>     Attrib V41    -0.2241588793937321
#>     Attrib V42    0.29083426797646206
#>     Attrib V43    0.32215143539424046
#>     Attrib V44    0.35217756665262273
#>     Attrib V45    0.13815341618514929
#>     Attrib V46    0.10574812230070679
#>     Attrib V47    -0.16806197508435466
#>     Attrib V48    -0.02545749056742271
#>     Attrib V49    0.043182879399166464
#>     Attrib V5    -0.2378431903544298
#>     Attrib V50    -0.539527506194343
#>     Attrib V51    -0.0869645969993548
#>     Attrib V52    0.02009364830974669
#>     Attrib V53    0.34196722196897256
#>     Attrib V54    0.6120200751688281
#>     Attrib V55    0.09299640061171625
#>     Attrib V56    0.3514863845693564
#>     Attrib V57    -0.10001163601222827
#>     Attrib V58    0.3704574830719864
#>     Attrib V59    0.0109208760024526
#>     Attrib V6    -0.3818671367545045
#>     Attrib V60    0.14470056165827985
#>     Attrib V7    -0.11810428613082381
#>     Attrib V8    0.009471541624841354
#>     Attrib V9    0.18181414514912578
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.16361663485767083
#>     Attrib V1    0.36268840626131454
#>     Attrib V10    -0.23473152530218055
#>     Attrib V11    -0.08442385279243539
#>     Attrib V12    -0.14543314576112312
#>     Attrib V13    -0.3100082092818611
#>     Attrib V14    -0.003548369725685034
#>     Attrib V15    0.32802315486037686
#>     Attrib V16    0.31949671197871604
#>     Attrib V17    0.06371280999088295
#>     Attrib V18    -0.03647852816845434
#>     Attrib V19    0.04406393525722349
#>     Attrib V2    0.08925930233062172
#>     Attrib V20    0.3423174320913461
#>     Attrib V21    0.15425589722622324
#>     Attrib V22    -0.02375491714137766
#>     Attrib V23    0.10780931328240084
#>     Attrib V24    0.11553949391596367
#>     Attrib V25    -0.3966305066559093
#>     Attrib V26    -0.5916112208229062
#>     Attrib V27    -0.3520778511072211
#>     Attrib V28    -0.09409446097311218
#>     Attrib V29    -0.07356844923577266
#>     Attrib V3    0.20847760575197014
#>     Attrib V30    0.1139554084783749
#>     Attrib V31    -0.623570594030185
#>     Attrib V32    0.07909358887747701
#>     Attrib V33    0.21309387274712685
#>     Attrib V34    0.017475262450573452
#>     Attrib V35    -0.09693651618887873
#>     Attrib V36    -0.39374676831096583
#>     Attrib V37    -0.26219277841711686
#>     Attrib V38    0.0038511357584002245
#>     Attrib V39    0.039235531753290594
#>     Attrib V4    0.1357943860931028
#>     Attrib V40    -0.07676865389220036
#>     Attrib V41    -0.17234027710299638
#>     Attrib V42    0.2923614273351538
#>     Attrib V43    0.20017429541107976
#>     Attrib V44    0.30289490872108177
#>     Attrib V45    0.19801930769826687
#>     Attrib V46    0.12359880611807009
#>     Attrib V47    -0.1233156079633195
#>     Attrib V48    -0.05251851873999806
#>     Attrib V49    0.08701511149776751
#>     Attrib V5    -0.16481533441813437
#>     Attrib V50    -0.4331752066233487
#>     Attrib V51    -0.012017599726830183
#>     Attrib V52    0.06778716308779009
#>     Attrib V53    0.2830781196361371
#>     Attrib V54    0.3873232343055256
#>     Attrib V55    0.024648253634896807
#>     Attrib V56    0.2972078420913491
#>     Attrib V57    -0.0948999494332732
#>     Attrib V58    0.40413171063248327
#>     Attrib V59    0.004497356034748014
#>     Attrib V6    -0.26734151387608523
#>     Attrib V60    0.11962344933543832
#>     Attrib V7    -0.10127435533271312
#>     Attrib V8    0.05979005082688251
#>     Attrib V9    0.14888594085899853
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
#>  0.1014493 
```
