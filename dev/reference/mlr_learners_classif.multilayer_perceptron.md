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
#>     Threshold    -1.1403553758748286
#>     Node 2    2.305579847872113
#>     Node 3    1.5207012167197715
#>     Node 4    0.7399908886587457
#>     Node 5    -2.9135782610225696
#>     Node 6    1.1267766138110997
#>     Node 7    3.8437566813948854
#>     Node 8    0.3081980916558989
#>     Node 9    3.271726319175032
#>     Node 10    -1.953917631224897
#>     Node 11    1.049838130170908
#>     Node 12    1.22053019897869
#>     Node 13    0.9218938742905732
#>     Node 14    1.3119986106884072
#>     Node 15    -2.7423811795764257
#>     Node 16    0.034643160774780316
#>     Node 17    -1.1187896659712593
#>     Node 18    0.4232197229996444
#>     Node 19    2.0863381613060605
#>     Node 20    1.927175859032225
#>     Node 21    -2.79899110884129
#>     Node 22    0.06872455094680319
#>     Node 23    2.288916008698068
#>     Node 24    -1.7029318290789535
#>     Node 25    3.0416861544210954
#>     Node 26    -0.9451538341022767
#>     Node 27    1.0308743906956526
#>     Node 28    -4.060605203249916
#>     Node 29    1.1783233258486283
#>     Node 30    -0.34087654138536316
#>     Node 31    1.8875579412914703
#>     Node 32    0.821635117072859
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    1.1832777952367677
#>     Node 2    -2.3215730675707285
#>     Node 3    -1.5297108832187594
#>     Node 4    -0.7111712410227139
#>     Node 5    2.915581805398046
#>     Node 6    -1.120842374677524
#>     Node 7    -3.8374372003379826
#>     Node 8    -0.3486579987056021
#>     Node 9    -3.2746898243807436
#>     Node 10    1.905156422685991
#>     Node 11    -1.026713873054904
#>     Node 12    -1.2817475668341975
#>     Node 13    -0.8761813231663417
#>     Node 14    -1.2707477770061661
#>     Node 15    2.726494493021925
#>     Node 16    -0.06092502177321236
#>     Node 17    1.1702216125098766
#>     Node 18    -0.3966055009162077
#>     Node 19    -2.0809044536456223
#>     Node 20    -1.9008030845632187
#>     Node 21    2.826875730616734
#>     Node 22    -0.13173113927288924
#>     Node 23    -2.3310967657107096
#>     Node 24    1.710411847562478
#>     Node 25    -3.0448173460127537
#>     Node 26    0.874921807128674
#>     Node 27    -1.0727610869837056
#>     Node 28    4.034548528915411
#>     Node 29    -1.204645610056963
#>     Node 30    0.41773929637839025
#>     Node 31    -1.8803187337854645
#>     Node 32    -0.8605919304747075
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.37903337133124326
#>     Attrib V1    -0.25683790127736966
#>     Attrib V10    0.8189584245436763
#>     Attrib V11    0.6083969056567068
#>     Attrib V12    0.6376106705230502
#>     Attrib V13    0.4314603577835054
#>     Attrib V14    -0.40559217368323836
#>     Attrib V15    -0.20143823759902826
#>     Attrib V16    -0.5669354473575932
#>     Attrib V17    -0.2625311597766568
#>     Attrib V18    0.3106718927546333
#>     Attrib V19    -0.1286608624959428
#>     Attrib V2    -0.05625362791682822
#>     Attrib V20    0.10887745761157043
#>     Attrib V21    0.05313893106137368
#>     Attrib V22    0.5369979810737723
#>     Attrib V23    0.9099906721850223
#>     Attrib V24    0.6184267250021203
#>     Attrib V25    0.16977041917055968
#>     Attrib V26    0.48565609430287077
#>     Attrib V27    0.9437223831546276
#>     Attrib V28    1.0878773702676972
#>     Attrib V29    0.8947447850184176
#>     Attrib V3    -0.08841754615766674
#>     Attrib V30    0.6138896040823394
#>     Attrib V31    -1.3638155839097086
#>     Attrib V32    0.5048421175737473
#>     Attrib V33    0.1928325539623129
#>     Attrib V34    -0.26832685750658253
#>     Attrib V35    0.32790770381271467
#>     Attrib V36    -0.27904078251642944
#>     Attrib V37    -0.3592737348834028
#>     Attrib V38    -0.6052913555124966
#>     Attrib V39    -0.36964677045861455
#>     Attrib V4    0.15704524133264358
#>     Attrib V40    0.34177516386103723
#>     Attrib V41    0.6496514757240468
#>     Attrib V42    0.22746808066219062
#>     Attrib V43    0.10110294576085778
#>     Attrib V44    0.4814979588822374
#>     Attrib V45    0.3955566832288973
#>     Attrib V46    0.43179189381438127
#>     Attrib V47    0.45923919132758917
#>     Attrib V48    0.606432217422031
#>     Attrib V49    0.8233664476237421
#>     Attrib V5    0.44088175050428036
#>     Attrib V50    -0.7542682501463731
#>     Attrib V51    0.4902962895199352
#>     Attrib V52    1.0791938884491217
#>     Attrib V53    0.6931332371837043
#>     Attrib V54    0.1652507336259204
#>     Attrib V55    -0.7486648668505874
#>     Attrib V56    -0.021037919492267236
#>     Attrib V57    -0.9452014662991517
#>     Attrib V58    0.07782442536925598
#>     Attrib V59    -0.2023974895449534
#>     Attrib V6    -0.12214084514462467
#>     Attrib V60    0.2402364403842107
#>     Attrib V7    -0.4020769409915593
#>     Attrib V8    -0.3218971878203181
#>     Attrib V9    1.1164832493466197
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.3663286589985866
#>     Attrib V1    0.39337599521163724
#>     Attrib V10    -0.1838356899951712
#>     Attrib V11    -0.1198579469368956
#>     Attrib V12    -0.21845865819402077
#>     Attrib V13    -0.10510238607913822
#>     Attrib V14    0.07454798164668744
#>     Attrib V15    0.499810274703647
#>     Attrib V16    -0.013969627162906034
#>     Attrib V17    0.07954621552439325
#>     Attrib V18    0.21028371985292607
#>     Attrib V19    0.0194734158648439
#>     Attrib V2    0.12179212518939538
#>     Attrib V20    0.4573359093409556
#>     Attrib V21    0.4291778550521587
#>     Attrib V22    0.31528817425908934
#>     Attrib V23    0.1342695500418299
#>     Attrib V24    -0.011309168806647667
#>     Attrib V25    -0.38744709238143166
#>     Attrib V26    -0.8638142622177581
#>     Attrib V27    -0.759098215088327
#>     Attrib V28    -0.4705591734511693
#>     Attrib V29    -0.060285170733666224
#>     Attrib V3    0.10018389740694021
#>     Attrib V30    0.1003567428055285
#>     Attrib V31    -1.2221354104491262
#>     Attrib V32    0.3417657149033822
#>     Attrib V33    0.5336072798863832
#>     Attrib V34    -0.189174624277248
#>     Attrib V35    0.06640362630907495
#>     Attrib V36    -0.17501012185521142
#>     Attrib V37    -0.2981831282083927
#>     Attrib V38    -0.17506789142025053
#>     Attrib V39    -0.0737912714738677
#>     Attrib V4    0.15575542921408786
#>     Attrib V40    -0.1456132850323108
#>     Attrib V41    -0.30201745335508784
#>     Attrib V42    0.23705528848452406
#>     Attrib V43    0.16799985555153354
#>     Attrib V44    0.48206588914591536
#>     Attrib V45    0.4051397674907179
#>     Attrib V46    -0.05245323895338662
#>     Attrib V47    -0.08474058834947092
#>     Attrib V48    0.2680923704689114
#>     Attrib V49    -0.020978654404001346
#>     Attrib V5    -0.12072400078390569
#>     Attrib V50    -0.6231112707613543
#>     Attrib V51    -0.2214367912616603
#>     Attrib V52    0.20058047818234698
#>     Attrib V53    0.2654493165133625
#>     Attrib V54    0.588937175730065
#>     Attrib V55    -0.15805538082342838
#>     Attrib V56    0.6078502440037704
#>     Attrib V57    -0.23333016121125708
#>     Attrib V58    0.4562381381183362
#>     Attrib V59    0.3090741664553333
#>     Attrib V6    -0.38243754222366405
#>     Attrib V60    0.13663967142048453
#>     Attrib V7    -0.2078548545071176
#>     Attrib V8    -0.2369324341681806
#>     Attrib V9    0.06508281462894784
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.19470639816695753
#>     Attrib V1    0.19230314164457624
#>     Attrib V10    -0.07223744472939639
#>     Attrib V11    0.019006211712330093
#>     Attrib V12    -0.017833763674794546
#>     Attrib V13    0.010389969024137644
#>     Attrib V14    0.04842976719532616
#>     Attrib V15    0.24912031846949317
#>     Attrib V16    -0.04820872863355437
#>     Attrib V17    0.05845259500974722
#>     Attrib V18    0.16121787397498996
#>     Attrib V19    -0.010306009860993384
#>     Attrib V2    0.03854474979221438
#>     Attrib V20    0.2595727543472167
#>     Attrib V21    0.2554502215654499
#>     Attrib V22    0.06403634541279754
#>     Attrib V23    0.03243099923888089
#>     Attrib V24    -0.05535983088060111
#>     Attrib V25    -0.27204053765030306
#>     Attrib V26    -0.40725522958419674
#>     Attrib V27    -0.3711492791471912
#>     Attrib V28    -0.15945582552347573
#>     Attrib V29    0.043438461654203585
#>     Attrib V3    0.06230926562066216
#>     Attrib V30    0.04724111525057811
#>     Attrib V31    -0.7141136220702698
#>     Attrib V32    0.18594624162491954
#>     Attrib V33    0.2871835042655502
#>     Attrib V34    -0.05454650119709042
#>     Attrib V35    0.10574993815812876
#>     Attrib V36    -0.10304486655860796
#>     Attrib V37    -0.1678804410148115
#>     Attrib V38    -0.08097535699639609
#>     Attrib V39    0.015130535806235829
#>     Attrib V4    0.07736098346265832
#>     Attrib V40    -0.042633509723876424
#>     Attrib V41    -0.16277310559556465
#>     Attrib V42    0.12397206230760636
#>     Attrib V43    0.0865713986877664
#>     Attrib V44    0.26439805076639733
#>     Attrib V45    0.29890278689590705
#>     Attrib V46    -0.05329552468043796
#>     Attrib V47    -0.08377450290029187
#>     Attrib V48    0.22876854673990824
#>     Attrib V49    0.10731138091176176
#>     Attrib V5    0.020008685250131376
#>     Attrib V50    -0.30957500158512824
#>     Attrib V51    0.01924748756178527
#>     Attrib V52    0.18160488677683442
#>     Attrib V53    0.28015896116770933
#>     Attrib V54    0.2678800869577273
#>     Attrib V55    -0.11261091828531712
#>     Attrib V56    0.3401758280430924
#>     Attrib V57    -0.14397768442939832
#>     Attrib V58    0.18410740138482778
#>     Attrib V59    0.15357148113376434
#>     Attrib V6    -0.2568183054072378
#>     Attrib V60    0.06109413826020426
#>     Attrib V7    -0.18576418130432285
#>     Attrib V8    -0.25630476409950903
#>     Attrib V9    0.08852794176550148
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.31423442572473614
#>     Attrib V1    -0.21777511835160882
#>     Attrib V10    -0.9930247834318924
#>     Attrib V11    -1.587605867217062
#>     Attrib V12    -1.6728901314526583
#>     Attrib V13    -0.6776869191490362
#>     Attrib V14    0.39961360982923483
#>     Attrib V15    -0.476294115954293
#>     Attrib V16    0.09015180089642473
#>     Attrib V17    -0.09399524582347962
#>     Attrib V18    -0.12702995012508103
#>     Attrib V19    -0.3452698661938813
#>     Attrib V2    0.14839566104055066
#>     Attrib V20    -1.4228605476775207
#>     Attrib V21    -0.9586963073456848
#>     Attrib V22    -0.8155278531421202
#>     Attrib V23    -0.15604385191426268
#>     Attrib V24    -0.3180711776553988
#>     Attrib V25    0.16212006918955807
#>     Attrib V26    -0.1967334324954001
#>     Attrib V27    0.0343196053611948
#>     Attrib V28    0.5106338020698278
#>     Attrib V29    -0.2747979934655323
#>     Attrib V3    0.20815809639706473
#>     Attrib V30    -0.5778624662439522
#>     Attrib V31    1.6386592471290677
#>     Attrib V32    0.23421403899905563
#>     Attrib V33    0.17401332860259922
#>     Attrib V34    -0.1711205979332787
#>     Attrib V35    -0.3841482561894882
#>     Attrib V36    0.6525692617836295
#>     Attrib V37    0.510038638832807
#>     Attrib V38    0.6572507403034845
#>     Attrib V39    0.047993927497721696
#>     Attrib V4    0.31980295264547665
#>     Attrib V40    -0.241873088456018
#>     Attrib V41    -0.07328542821666294
#>     Attrib V42    0.3589477282894675
#>     Attrib V43    0.16641120622180733
#>     Attrib V44    0.16301432737406515
#>     Attrib V45    -0.543039258830287
#>     Attrib V46    -0.7152665593970761
#>     Attrib V47    -0.8320555042979265
#>     Attrib V48    -0.4946849400912018
#>     Attrib V49    -0.5220631328463714
#>     Attrib V5    -0.49739833546329365
#>     Attrib V50    1.521539105881366
#>     Attrib V51    0.25543381779849667
#>     Attrib V52    0.07717780214410534
#>     Attrib V53    0.019416272126260764
#>     Attrib V54    0.05313532677467215
#>     Attrib V55    0.47466814865667645
#>     Attrib V56    0.05742616106158676
#>     Attrib V57    0.2259802700163321
#>     Attrib V58    0.10613653862916998
#>     Attrib V59    -0.06533273637919734
#>     Attrib V6    0.5500190864856862
#>     Attrib V60    -0.11772313481953112
#>     Attrib V7    1.0308132367822909
#>     Attrib V8    0.784881390237857
#>     Attrib V9    -1.038263855663969
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.23035577780626573
#>     Attrib V1    0.3331210984637932
#>     Attrib V10    -0.18332599958417917
#>     Attrib V11    -0.022266981537748948
#>     Attrib V12    -0.041573066344010125
#>     Attrib V13    -0.10138472267303701
#>     Attrib V14    -0.009019584690612857
#>     Attrib V15    0.29429194440808987
#>     Attrib V16    0.0030927161309730273
#>     Attrib V17    0.05202392355773323
#>     Attrib V18    0.27823853974541823
#>     Attrib V19    -0.013204414887623932
#>     Attrib V2    0.08049577094954821
#>     Attrib V20    0.35569491420748334
#>     Attrib V21    0.35569731321722475
#>     Attrib V22    0.21456805909115256
#>     Attrib V23    0.12916421992004815
#>     Attrib V24    0.07612842707147191
#>     Attrib V25    -0.19094000256460503
#>     Attrib V26    -0.5798165636325738
#>     Attrib V27    -0.5198339551310238
#>     Attrib V28    -0.41056514550363865
#>     Attrib V29    -0.0616559470303089
#>     Attrib V3    0.050564958619552625
#>     Attrib V30    0.0348680875406713
#>     Attrib V31    -1.0317133587913758
#>     Attrib V32    0.3028241290692352
#>     Attrib V33    0.42956134993630485
#>     Attrib V34    -0.12828601552797994
#>     Attrib V35    0.11317246810331766
#>     Attrib V36    -0.14424362096245869
#>     Attrib V37    -0.24735876024301084
#>     Attrib V38    -0.14896315790992493
#>     Attrib V39    -0.08528111384415417
#>     Attrib V4    0.14772613579300092
#>     Attrib V40    -0.1399163149433475
#>     Attrib V41    -0.19200452981556848
#>     Attrib V42    0.22422693139000272
#>     Attrib V43    0.1672554707759628
#>     Attrib V44    0.3727872319633013
#>     Attrib V45    0.3322408383856802
#>     Attrib V46    -0.03856331793443599
#>     Attrib V47    -0.10936506196765225
#>     Attrib V48    0.2103658665496661
#>     Attrib V49    -0.01039202490710804
#>     Attrib V5    -0.06646433711929853
#>     Attrib V50    -0.4816180763813393
#>     Attrib V51    -0.11812101827629673
#>     Attrib V52    0.16000632493153946
#>     Attrib V53    0.35474866951071915
#>     Attrib V54    0.4693331455279879
#>     Attrib V55    -0.18556190978681508
#>     Attrib V56    0.5075480241454162
#>     Attrib V57    -0.20989372958373598
#>     Attrib V58    0.3450303899893053
#>     Attrib V59    0.2878018649812164
#>     Attrib V6    -0.2478906779627524
#>     Attrib V60    0.19446588940533222
#>     Attrib V7    -0.17161091171566512
#>     Attrib V8    -0.22981421789202772
#>     Attrib V9    0.11660356606011406
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.001124571752894112
#>     Attrib V1    0.2270270746537327
#>     Attrib V10    1.1690087380351124
#>     Attrib V11    1.1120127485570346
#>     Attrib V12    1.1457166735241773
#>     Attrib V13    0.832835274996066
#>     Attrib V14    -0.5135982674685963
#>     Attrib V15    -0.35885733661860303
#>     Attrib V16    -0.7786571995794116
#>     Attrib V17    -0.60648964011886
#>     Attrib V18    0.20645958694938174
#>     Attrib V19    -0.3209418576521235
#>     Attrib V2    0.45414734045559074
#>     Attrib V20    -0.03087101736316602
#>     Attrib V21    0.06076006620236765
#>     Attrib V22    0.5549779638234389
#>     Attrib V23    0.8674144256437392
#>     Attrib V24    0.6898628909356981
#>     Attrib V25    0.26673745611901434
#>     Attrib V26    1.2682872018126936
#>     Attrib V27    1.626435692323125
#>     Attrib V28    1.5975390452859963
#>     Attrib V29    1.6327266543740127
#>     Attrib V3    -0.1150781627477944
#>     Attrib V30    0.6847699763373389
#>     Attrib V31    -1.4587485528552524
#>     Attrib V32    0.3090190047055759
#>     Attrib V33    -0.16722108257854001
#>     Attrib V34    -0.5014658096916175
#>     Attrib V35    0.28916991761732475
#>     Attrib V36    -0.4597874128505373
#>     Attrib V37    3.3606033047605316E-4
#>     Attrib V38    -0.28621791683727116
#>     Attrib V39    0.10716369918186591
#>     Attrib V4    -0.07891419909332643
#>     Attrib V40    0.9235111689777233
#>     Attrib V41    1.3177353223320636
#>     Attrib V42    -0.28442441188860146
#>     Attrib V43    -0.32136427653209015
#>     Attrib V44    -0.22145428760134261
#>     Attrib V45    0.11247614689029674
#>     Attrib V46    0.7552140111308606
#>     Attrib V47    0.722132446585554
#>     Attrib V48    0.6490744073964853
#>     Attrib V49    1.2847775084061106
#>     Attrib V5    0.5769890927864854
#>     Attrib V50    -0.1293720592736196
#>     Attrib V51    1.5967494557506636
#>     Attrib V52    1.5718955504081829
#>     Attrib V53    1.038662630019044
#>     Attrib V54    0.1175260525175346
#>     Attrib V55    -0.5662570434417039
#>     Attrib V56    -0.426282251152987
#>     Attrib V57    -0.7864217812566632
#>     Attrib V58    -0.10728300961321904
#>     Attrib V59    -0.27289161456253946
#>     Attrib V6    0.15647931478746077
#>     Attrib V60    0.6571742474340676
#>     Attrib V7    -0.3552565238215619
#>     Attrib V8    -0.638464138777106
#>     Attrib V9    1.475861869246874
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.11378520957600344
#>     Attrib V1    0.17948839894930133
#>     Attrib V10    0.0692736893608999
#>     Attrib V11    0.14202863114658718
#>     Attrib V12    0.07430833092368114
#>     Attrib V13    0.0436075402551983
#>     Attrib V14    -0.044493829687756524
#>     Attrib V15    0.0707570489240254
#>     Attrib V16    -0.01070567286244976
#>     Attrib V17    0.0028992258050719575
#>     Attrib V18    0.04075207283353238
#>     Attrib V19    -0.018177811948925118
#>     Attrib V2    0.10083890598918463
#>     Attrib V20    0.08940172595840608
#>     Attrib V21    0.06920266003938025
#>     Attrib V22    -0.05453550376571211
#>     Attrib V23    -0.04569261648503891
#>     Attrib V24    -0.008625284936164402
#>     Attrib V25    -0.09883913250436747
#>     Attrib V26    -0.11443029820713962
#>     Attrib V27    -0.12503442256002167
#>     Attrib V28    -0.06394932892693604
#>     Attrib V29    0.006097007133774855
#>     Attrib V3    0.07235542956929981
#>     Attrib V30    0.04013541788775345
#>     Attrib V31    -0.3826484182055817
#>     Attrib V32    0.11955600834702489
#>     Attrib V33    0.17539398542164997
#>     Attrib V34    0.014054200492282147
#>     Attrib V35    0.10153248307905546
#>     Attrib V36    0.001520150487590771
#>     Attrib V37    -0.09104497976950987
#>     Attrib V38    0.04752469353063667
#>     Attrib V39    0.05335158454427975
#>     Attrib V4    0.1655811336968819
#>     Attrib V40    -0.010598739746126289
#>     Attrib V41    -0.07239980472917854
#>     Attrib V42    -0.004007816571673531
#>     Attrib V43    0.07052626613455466
#>     Attrib V44    0.196416469250856
#>     Attrib V45    0.19856185057344647
#>     Attrib V46    0.06616356578885188
#>     Attrib V47    0.02832632405388105
#>     Attrib V48    0.21223520866938805
#>     Attrib V49    0.12680227464881208
#>     Attrib V5    0.0586272776955009
#>     Attrib V50    -0.12922081843802705
#>     Attrib V51    0.07268367004575148
#>     Attrib V52    0.16276744400450197
#>     Attrib V53    0.2459211773487291
#>     Attrib V54    0.2049617150135155
#>     Attrib V55    -0.04769411537168335
#>     Attrib V56    0.15369477408547827
#>     Attrib V57    0.009891527065409066
#>     Attrib V58    0.11645208230329804
#>     Attrib V59    0.14428737250169338
#>     Attrib V6    -0.13985782126742527
#>     Attrib V60    0.11207931277248456
#>     Attrib V7    -0.10892347867106356
#>     Attrib V8    -0.1448088898824371
#>     Attrib V9    0.0960648657019807
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.11272690277229225
#>     Attrib V1    0.2355537853699269
#>     Attrib V10    1.2245726134370378
#>     Attrib V11    1.1098874193427617
#>     Attrib V12    1.183047888022568
#>     Attrib V13    0.7517009717520066
#>     Attrib V14    -0.6664281609968358
#>     Attrib V15    -0.3517191264839346
#>     Attrib V16    -0.7127878103620198
#>     Attrib V17    -0.5475492807742001
#>     Attrib V18    0.09540025241492664
#>     Attrib V19    -0.4437640533586301
#>     Attrib V2    0.3651041464446745
#>     Attrib V20    -0.1317928851716602
#>     Attrib V21    -0.009542410820617
#>     Attrib V22    0.34976377891504506
#>     Attrib V23    0.5428418285069188
#>     Attrib V24    0.6421687167335005
#>     Attrib V25    0.41400519641531247
#>     Attrib V26    1.2199033028465434
#>     Attrib V27    1.3570102779543656
#>     Attrib V28    1.0489213371031054
#>     Attrib V29    0.8324729140185141
#>     Attrib V3    -0.19365914270963383
#>     Attrib V30    0.43605853928145066
#>     Attrib V31    -1.1463172832199584
#>     Attrib V32    0.38504113375745025
#>     Attrib V33    -0.05899306598910698
#>     Attrib V34    -0.24685232619567016
#>     Attrib V35    0.39860692348986165
#>     Attrib V36    -0.3427906580752744
#>     Attrib V37    -6.4400610955887E-4
#>     Attrib V38    -0.24856399629277687
#>     Attrib V39    0.11913462343386266
#>     Attrib V4    -0.19743570804888572
#>     Attrib V40    0.7454085484923842
#>     Attrib V41    0.9566992782893313
#>     Attrib V42    -0.49317320561282013
#>     Attrib V43    -0.30636671955716177
#>     Attrib V44    -0.3087386567029687
#>     Attrib V45    0.10023713710046876
#>     Attrib V46    0.6319436708990576
#>     Attrib V47    0.6787780719445691
#>     Attrib V48    0.7069735949458503
#>     Attrib V49    1.2198665577395338
#>     Attrib V5    0.3022901833604919
#>     Attrib V50    -0.15255724178453833
#>     Attrib V51    1.5315205463448638
#>     Attrib V52    1.280069753526839
#>     Attrib V53    0.9682062504041555
#>     Attrib V54    0.13327208123083573
#>     Attrib V55    -0.4181821055179412
#>     Attrib V56    -0.3093321944980615
#>     Attrib V57    -0.7791014026138711
#>     Attrib V58    -0.10091577108567085
#>     Attrib V59    -0.3586211221555635
#>     Attrib V6    0.03101242560685372
#>     Attrib V60    0.45486863242126807
#>     Attrib V7    -0.35223540214522464
#>     Attrib V8    -0.5616790701871095
#>     Attrib V9    1.332055307325207
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.3148229070396992
#>     Attrib V1    0.09028543680432716
#>     Attrib V10    0.04464361052961253
#>     Attrib V11    -0.05862740656210807
#>     Attrib V12    -0.06968376072440341
#>     Attrib V13    -0.0944316426125015
#>     Attrib V14    0.3413395849657506
#>     Attrib V15    -0.1143950072496591
#>     Attrib V16    0.47631928479746277
#>     Attrib V17    0.45003099181661504
#>     Attrib V18    0.0891818695097703
#>     Attrib V19    0.49313496438337057
#>     Attrib V2    0.21895933649274948
#>     Attrib V20    0.11179290756561208
#>     Attrib V21    -0.0034333418999048316
#>     Attrib V22    -0.2913457204906743
#>     Attrib V23    -0.45468846489037923
#>     Attrib V24    -0.3303393721099213
#>     Attrib V25    0.422847591852279
#>     Attrib V26    0.7881811479476479
#>     Attrib V27    0.49873951891815566
#>     Attrib V28    0.14486426783868414
#>     Attrib V29    -0.3593437544181816
#>     Attrib V3    0.37750852200622714
#>     Attrib V30    -0.339813739199133
#>     Attrib V31    1.143944121383442
#>     Attrib V32    -0.8990947195624152
#>     Attrib V33    -0.7286940881343209
#>     Attrib V34    0.12401925704018887
#>     Attrib V35    -0.26154523463044754
#>     Attrib V36    0.03623018407080234
#>     Attrib V37    0.11615245396130851
#>     Attrib V38    0.1406941420579664
#>     Attrib V39    0.14203503371043477
#>     Attrib V4    0.2759784700071558
#>     Attrib V40    -0.1453113069670965
#>     Attrib V41    -0.4054710794247766
#>     Attrib V42    -0.33848539791135485
#>     Attrib V43    -0.37183941708123786
#>     Attrib V44    -0.48789638276797154
#>     Attrib V45    -0.46194596250885
#>     Attrib V46    -0.1089966941705473
#>     Attrib V47    0.06449078104819779
#>     Attrib V48    -0.11576096863912307
#>     Attrib V49    -0.06812467084815114
#>     Attrib V5    0.18078392277685593
#>     Attrib V50    1.105836237635862
#>     Attrib V51    -0.06380507182281288
#>     Attrib V52    -0.38280980443616647
#>     Attrib V53    -0.3088788728094707
#>     Attrib V54    -0.2744479706977187
#>     Attrib V55    0.6262736832181992
#>     Attrib V56    -0.13079247161610386
#>     Attrib V57    0.7217467344394035
#>     Attrib V58    -0.21270236329122408
#>     Attrib V59    -0.028010260859558617
#>     Attrib V6    0.5317315295634273
#>     Attrib V60    -0.1781496686359776
#>     Attrib V7    0.3517397792349519
#>     Attrib V8    0.37777633007710887
#>     Attrib V9    -0.31897486147196663
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.19070603955101606
#>     Attrib V1    0.1836508654186058
#>     Attrib V10    -0.05285615462312673
#>     Attrib V11    0.0717440616886515
#>     Attrib V12    0.04448619054960399
#>     Attrib V13    -0.0717197785198557
#>     Attrib V14    -0.0759370215569115
#>     Attrib V15    0.21792345917870368
#>     Attrib V16    -0.08486885479432946
#>     Attrib V17    0.08780325561802024
#>     Attrib V18    0.2650388595238168
#>     Attrib V19    -0.047088734172502374
#>     Attrib V2    -0.034691276448739206
#>     Attrib V20    0.3376372317518398
#>     Attrib V21    0.25325487408996794
#>     Attrib V22    0.15589305742795254
#>     Attrib V23    0.14381989318917346
#>     Attrib V24    0.04229576649863821
#>     Attrib V25    -0.2141149542607337
#>     Attrib V26    -0.5308622509574357
#>     Attrib V27    -0.41539535286227464
#>     Attrib V28    -0.23482198765532827
#>     Attrib V29    -0.03701918605184357
#>     Attrib V3    -0.07962575262014035
#>     Attrib V30    0.08961800485923552
#>     Attrib V31    -1.0508710706877569
#>     Attrib V32    0.30380524354008104
#>     Attrib V33    0.40220935941498115
#>     Attrib V34    -0.06017231853339394
#>     Attrib V35    0.20332247052283142
#>     Attrib V36    -0.05720860372295675
#>     Attrib V37    -0.23112280866257406
#>     Attrib V38    -0.05881764319720314
#>     Attrib V39    -0.06374587771269682
#>     Attrib V4    0.049937054155863095
#>     Attrib V40    -0.0955869998110813
#>     Attrib V41    -0.24814934282812862
#>     Attrib V42    0.11799924400642609
#>     Attrib V43    0.16168754980939049
#>     Attrib V44    0.4362150273980812
#>     Attrib V45    0.4130298760560701
#>     Attrib V46    -0.04384166343558422
#>     Attrib V47    -0.0417890011731263
#>     Attrib V48    0.32906552380781023
#>     Attrib V49    0.09195847630171058
#>     Attrib V5    -0.036125643926594196
#>     Attrib V50    -0.5340448024744261
#>     Attrib V51    -0.003721812398383835
#>     Attrib V52    0.20444951320632765
#>     Attrib V53    0.2777448545036708
#>     Attrib V54    0.46419023289943373
#>     Attrib V55    -0.23341066488153545
#>     Attrib V56    0.40942495572532567
#>     Attrib V57    -0.3067138193444969
#>     Attrib V58    0.24899812015539763
#>     Attrib V59    0.06933981671913571
#>     Attrib V6    -0.2843846993932326
#>     Attrib V60    0.038866540166756856
#>     Attrib V7    -0.24680146456454163
#>     Attrib V8    -0.2501027660123727
#>     Attrib V9    0.17564895863084012
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.013277028831282275
#>     Attrib V1    -0.008786226920684701
#>     Attrib V10    0.4664508562474801
#>     Attrib V11    0.4677000421617367
#>     Attrib V12    0.2459574366214272
#>     Attrib V13    0.12107861299863039
#>     Attrib V14    -0.271391847746054
#>     Attrib V15    -0.07131119696758301
#>     Attrib V16    -0.3309744307601703
#>     Attrib V17    -0.20918897091451022
#>     Attrib V18    0.05814585246826335
#>     Attrib V19    -0.19080976662339336
#>     Attrib V2    -0.0027879027307806357
#>     Attrib V20    0.06562914879858951
#>     Attrib V21    0.05608848323915023
#>     Attrib V22    0.1769017029374116
#>     Attrib V23    0.31381805614940217
#>     Attrib V24    0.1755418083025651
#>     Attrib V25    -0.09839150656148424
#>     Attrib V26    0.18799866265882495
#>     Attrib V27    0.5113033392937477
#>     Attrib V28    0.558305912804459
#>     Attrib V29    0.5630237683657916
#>     Attrib V3    -0.15871436316097284
#>     Attrib V30    0.4544688812090938
#>     Attrib V31    -0.9402877272619995
#>     Attrib V32    0.3028952698754015
#>     Attrib V33    0.24621970181581534
#>     Attrib V34    -0.1314372881142212
#>     Attrib V35    0.2460548826816009
#>     Attrib V36    -0.15154187789622772
#>     Attrib V37    -0.21305442936845154
#>     Attrib V38    -0.2651990013222739
#>     Attrib V39    -0.19464044206700534
#>     Attrib V4    0.07791744539107646
#>     Attrib V40    0.1333593657223981
#>     Attrib V41    0.1419475717496079
#>     Attrib V42    -0.04139033146846533
#>     Attrib V43    0.06133271409965203
#>     Attrib V44    0.25729536693627647
#>     Attrib V45    0.4074484801081877
#>     Attrib V46    0.26853776991684947
#>     Attrib V47    0.2101399933491022
#>     Attrib V48    0.4762987415655317
#>     Attrib V49    0.48617001953270755
#>     Attrib V5    0.11157556823331168
#>     Attrib V50    -0.5563642089275096
#>     Attrib V51    0.341064463000313
#>     Attrib V52    0.6182230530094454
#>     Attrib V53    0.4131162657052605
#>     Attrib V54    0.1282983886959223
#>     Attrib V55    -0.48849223777901885
#>     Attrib V56    0.049123625219943956
#>     Attrib V57    -0.5014345765497618
#>     Attrib V58    0.12003490927953578
#>     Attrib V59    -0.09029825363906087
#>     Attrib V6    -0.23572212376573093
#>     Attrib V60    0.07040544190968762
#>     Attrib V7    -0.2514099996693674
#>     Attrib V8    -0.18370996865557845
#>     Attrib V9    0.6781322866927032
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.27848774808117
#>     Attrib V1    0.22098229568206088
#>     Attrib V10    -0.12786197847555664
#>     Attrib V11    0.024216882385569675
#>     Attrib V12    -1.5162282237824056E-4
#>     Attrib V13    0.048950087219574986
#>     Attrib V14    -0.010856583661108934
#>     Attrib V15    0.2048933135528048
#>     Attrib V16    -0.10456088061648382
#>     Attrib V17    0.062310600454202524
#>     Attrib V18    0.23184256959796415
#>     Attrib V19    -0.020692263832239995
#>     Attrib V2    0.028462782333450325
#>     Attrib V20    0.31035222304510857
#>     Attrib V21    0.29595663916963233
#>     Attrib V22    0.21091441321638932
#>     Attrib V23    0.20986363848722586
#>     Attrib V24    0.09999050262008845
#>     Attrib V25    -0.11357452259586448
#>     Attrib V26    -0.4646536387519846
#>     Attrib V27    -0.3674909972485232
#>     Attrib V28    -0.29058442771868453
#>     Attrib V29    -0.0043908725796561535
#>     Attrib V3    0.06691423312381613
#>     Attrib V30    0.04383354964128328
#>     Attrib V31    -0.9432992165652009
#>     Attrib V32    0.265213666855234
#>     Attrib V33    0.336587501040807
#>     Attrib V34    -0.06508197630852838
#>     Attrib V35    0.10202668827320935
#>     Attrib V36    -0.1021048277196764
#>     Attrib V37    -0.1995387889729257
#>     Attrib V38    -0.12249194084947564
#>     Attrib V39    -0.01807643926991771
#>     Attrib V4    0.107081689223751
#>     Attrib V40    -0.06143167794289002
#>     Attrib V41    -0.16180707639601485
#>     Attrib V42    0.16276603604112053
#>     Attrib V43    0.11967840217819348
#>     Attrib V44    0.3236302380875524
#>     Attrib V45    0.2334337291247264
#>     Attrib V46    -0.01967956359486978
#>     Attrib V47    -0.03963372352735326
#>     Attrib V48    0.2014208881553403
#>     Attrib V49    0.06153809264240861
#>     Attrib V5    -0.01735887594118773
#>     Attrib V50    -0.47943060844596946
#>     Attrib V51    -0.08443637139706414
#>     Attrib V52    0.16534408696488803
#>     Attrib V53    0.3129141493495446
#>     Attrib V54    0.3926817960669688
#>     Attrib V55    -0.18719992420441905
#>     Attrib V56    0.40655922020531665
#>     Attrib V57    -0.21625269208155198
#>     Attrib V58    0.2455248450554764
#>     Attrib V59    0.2289753750568109
#>     Attrib V6    -0.23303349460333753
#>     Attrib V60    0.17778524858016687
#>     Attrib V7    -0.14551920193307363
#>     Attrib V8    -0.2910445211293382
#>     Attrib V9    0.0894119011984788
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.2664304667428092
#>     Attrib V1    0.38023491475503934
#>     Attrib V10    -0.1308102503122756
#>     Attrib V11    0.05196691750818478
#>     Attrib V12    -0.04859020577234421
#>     Attrib V13    -0.12130813565670262
#>     Attrib V14    -0.05600955153945571
#>     Attrib V15    0.3575207471612703
#>     Attrib V16    -0.08009660577787443
#>     Attrib V17    0.0826407409228219
#>     Attrib V18    0.25595276761457125
#>     Attrib V19    -0.03823141188475711
#>     Attrib V2    0.0707924549128143
#>     Attrib V20    0.3542300179962847
#>     Attrib V21    0.30117345329489126
#>     Attrib V22    0.17918068197976686
#>     Attrib V23    0.14708381158069497
#>     Attrib V24    0.029690569207185415
#>     Attrib V25    -0.2461179848993045
#>     Attrib V26    -0.6161841734414354
#>     Attrib V27    -0.6426121149983978
#>     Attrib V28    -0.5372916818479757
#>     Attrib V29    -0.21896259672078727
#>     Attrib V3    -0.024019801031298506
#>     Attrib V30    0.005700446983567645
#>     Attrib V31    -1.073589912074489
#>     Attrib V32    0.3243708051141157
#>     Attrib V33    0.521082933943558
#>     Attrib V34    -0.0700016730663448
#>     Attrib V35    0.18412955191858704
#>     Attrib V36    -0.1351438366045091
#>     Attrib V37    -0.2405275930854745
#>     Attrib V38    -0.1501586152438913
#>     Attrib V39    -0.05701199522137231
#>     Attrib V4    0.09174751786096955
#>     Attrib V40    -0.1134254398502389
#>     Attrib V41    -0.31151363721858955
#>     Attrib V42    0.10307074417175661
#>     Attrib V43    0.15187986084094984
#>     Attrib V44    0.4433545915203942
#>     Attrib V45    0.3204270706597839
#>     Attrib V46    -0.05948934323002728
#>     Attrib V47    -0.1209807149959696
#>     Attrib V48    0.35137639452218
#>     Attrib V49    0.06099680745991016
#>     Attrib V5    -0.13226042139869307
#>     Attrib V50    -0.576476603262518
#>     Attrib V51    -0.1421255714405985
#>     Attrib V52    0.18932129012376497
#>     Attrib V53    0.27032927613039126
#>     Attrib V54    0.5838601070135072
#>     Attrib V55    -0.13782213867267956
#>     Attrib V56    0.5606035519340696
#>     Attrib V57    -0.2545233070827749
#>     Attrib V58    0.34999840444708097
#>     Attrib V59    0.21143176189583415
#>     Attrib V6    -0.32592784495056815
#>     Attrib V60    0.1674004410026814
#>     Attrib V7    -0.18379837592921208
#>     Attrib V8    -0.3182549923652915
#>     Attrib V9    0.10180201526134511
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.13376983126263453
#>     Attrib V1    -0.23472393231660574
#>     Attrib V10    -0.1366589226251891
#>     Attrib V11    -0.3914697570100668
#>     Attrib V12    -0.27992766545542563
#>     Attrib V13    -0.29578069025640513
#>     Attrib V14    0.06594767861450247
#>     Attrib V15    -0.3860101306882237
#>     Attrib V16    0.43557997681566957
#>     Attrib V17    0.2835099650962615
#>     Attrib V18    -0.3368815256061844
#>     Attrib V19    0.38339921208376465
#>     Attrib V2    0.12324808262968039
#>     Attrib V20    -0.33434459266456534
#>     Attrib V21    -0.5028809014771379
#>     Attrib V22    -0.6374829522359067
#>     Attrib V23    -0.5481013063867168
#>     Attrib V24    -0.28219474379335135
#>     Attrib V25    0.39872850112810043
#>     Attrib V26    0.9988191949684379
#>     Attrib V27    0.6106529992459813
#>     Attrib V28    0.3421740998533867
#>     Attrib V29    -0.14043070870164015
#>     Attrib V3    0.3232149214271853
#>     Attrib V30    -0.29417719237187606
#>     Attrib V31    2.250697752755903
#>     Attrib V32    -0.9226815743678133
#>     Attrib V33    -0.9579220607616907
#>     Attrib V34    0.5208051300046592
#>     Attrib V35    -0.20316288509692337
#>     Attrib V36    0.1800533903542107
#>     Attrib V37    0.4940964276169388
#>     Attrib V38    0.1659142492219922
#>     Attrib V39    0.13144851855274378
#>     Attrib V4    0.13122556245570402
#>     Attrib V40    -0.04996063316758196
#>     Attrib V41    0.0655077243438379
#>     Attrib V42    -0.4060249274685746
#>     Attrib V43    -0.51143858893732
#>     Attrib V44    -0.8658152736074907
#>     Attrib V45    -0.7180057392861428
#>     Attrib V46    -0.035283618956102825
#>     Attrib V47    -0.04386953792273349
#>     Attrib V48    -0.6158570770161548
#>     Attrib V49    -0.28138754529281296
#>     Attrib V5    0.24963733446707617
#>     Attrib V50    1.4784734721912451
#>     Attrib V51    0.1919761506215153
#>     Attrib V52    -0.35945349229320184
#>     Attrib V53    -0.4732097312142153
#>     Attrib V54    -0.6351207440267829
#>     Attrib V55    0.8732756012360328
#>     Attrib V56    -0.5932918688874804
#>     Attrib V57    0.8533715878984813
#>     Attrib V58    -0.44361908118152127
#>     Attrib V59    -0.035250359152433346
#>     Attrib V6    0.6793251302831194
#>     Attrib V60    -0.16569621721219413
#>     Attrib V7    0.3129109943901307
#>     Attrib V8    0.5076787156883183
#>     Attrib V9    -0.6312876772763147
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.19566644679781778
#>     Attrib V1    0.12990083470074665
#>     Attrib V10    0.05752586747921244
#>     Attrib V11    0.06662591063897591
#>     Attrib V12    0.06262734182696522
#>     Attrib V13    0.05467440086433075
#>     Attrib V14    -0.015317576706451768
#>     Attrib V15    0.023980990572354366
#>     Attrib V16    0.026459066104116545
#>     Attrib V17    0.050960986625603916
#>     Attrib V18    0.07807011454682913
#>     Attrib V19    0.019607094658930995
#>     Attrib V2    0.04880574851406889
#>     Attrib V20    0.03974263146561892
#>     Attrib V21    0.012334664317043442
#>     Attrib V22    -0.027742320616973952
#>     Attrib V23    -0.04600960599474437
#>     Attrib V24    0.01264611559935761
#>     Attrib V25    -0.015110533251183497
#>     Attrib V26    -0.0892549429579797
#>     Attrib V27    -0.09993203917667408
#>     Attrib V28    -0.060634062793044265
#>     Attrib V29    -0.062304211841363526
#>     Attrib V3    0.11316434530409974
#>     Attrib V30    -0.06555767908979125
#>     Attrib V31    -0.18419206601678886
#>     Attrib V32    0.06020560233302824
#>     Attrib V33    0.06697578565611177
#>     Attrib V34    0.07884765708781173
#>     Attrib V35    0.06209211497453215
#>     Attrib V36    -0.017943794536049742
#>     Attrib V37    -0.017877913019571923
#>     Attrib V38    0.023822092568884217
#>     Attrib V39    0.07605677903444828
#>     Attrib V4    0.14016017740873454
#>     Attrib V40    0.007548575541514101
#>     Attrib V41    0.008483895052678991
#>     Attrib V42    0.10189515240972058
#>     Attrib V43    0.06069501889329918
#>     Attrib V44    0.057124559095875986
#>     Attrib V45    0.102704087971238
#>     Attrib V46    0.0689626477920063
#>     Attrib V47    0.022932071300769317
#>     Attrib V48    0.06864145871049834
#>     Attrib V49    0.026327553462508094
#>     Attrib V5    0.1111121041450269
#>     Attrib V50    0.0707278687869807
#>     Attrib V51    0.10532087078167024
#>     Attrib V52    0.13083764520095906
#>     Attrib V53    0.17113537327311595
#>     Attrib V54    0.0999414063631526
#>     Attrib V55    0.07133175174334035
#>     Attrib V56    0.13897585013952876
#>     Attrib V57    0.07343252370814163
#>     Attrib V58    0.16343084385296813
#>     Attrib V59    0.07491177414547352
#>     Attrib V6    0.02136954004793184
#>     Attrib V60    0.08794168424958157
#>     Attrib V7    -0.026274184443194987
#>     Attrib V8    -0.05250250571404303
#>     Attrib V9    0.09490676399079871
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.10913693163558956
#>     Attrib V1    0.04414702126411383
#>     Attrib V10    0.16481895801323576
#>     Attrib V11    0.0828944570500955
#>     Attrib V12    0.019997295535459335
#>     Attrib V13    -0.020792624862245503
#>     Attrib V14    0.17382288283867856
#>     Attrib V15    0.08420591995332546
#>     Attrib V16    0.31224560311956845
#>     Attrib V17    0.317368674974289
#>     Attrib V18    0.07034672581568308
#>     Attrib V19    0.31227656467016596
#>     Attrib V2    0.1749037317639107
#>     Attrib V20    0.06578614873157076
#>     Attrib V21    0.03222084478079093
#>     Attrib V22    0.013738465968617636
#>     Attrib V23    -0.1242811918214438
#>     Attrib V24    -0.04650900484963157
#>     Attrib V25    0.18089558836059205
#>     Attrib V26    0.33497511023239956
#>     Attrib V27    0.23867080818652536
#>     Attrib V28    0.03341858584785707
#>     Attrib V29    -0.23598584481704368
#>     Attrib V3    0.22927174254056287
#>     Attrib V30    -0.20507775329759528
#>     Attrib V31    0.6346856198755616
#>     Attrib V32    -0.5003923094426443
#>     Attrib V33    -0.34977203225904197
#>     Attrib V34    0.11749638416340913
#>     Attrib V35    -0.06282371111762042
#>     Attrib V36    -0.025943956716526932
#>     Attrib V37    0.0558514939740053
#>     Attrib V38    0.1138960205006783
#>     Attrib V39    0.16514325054907153
#>     Attrib V4    0.1779313519179651
#>     Attrib V40    0.01718808596140075
#>     Attrib V41    0.013500672226585533
#>     Attrib V42    -0.07865198964877575
#>     Attrib V43    -0.06914073883078359
#>     Attrib V44    -0.22226700973171326
#>     Attrib V45    -0.19715648844227557
#>     Attrib V46    -0.0015544498133536696
#>     Attrib V47    0.04830912242881439
#>     Attrib V48    -0.05336994835348327
#>     Attrib V49    -0.08400209792226143
#>     Attrib V5    0.25106252286519565
#>     Attrib V50    0.49226785063331135
#>     Attrib V51    -0.05782361270244448
#>     Attrib V52    -0.25179411283244063
#>     Attrib V53    -0.31870835105548706
#>     Attrib V54    -0.27714463139104795
#>     Attrib V55    0.3388268213027016
#>     Attrib V56    -0.08622714236231802
#>     Attrib V57    0.4498760176588297
#>     Attrib V58    -0.14087201118187628
#>     Attrib V59    -0.046218274927010236
#>     Attrib V6    0.4176656464792427
#>     Attrib V60    -0.07873569866939165
#>     Attrib V7    0.22219632084871752
#>     Attrib V8    0.2993643202077831
#>     Attrib V9    -0.04901829900257786
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.21981394489362394
#>     Attrib V1    0.2234868677961925
#>     Attrib V10    -0.014037569253391119
#>     Attrib V11    0.06828164742610807
#>     Attrib V12    0.03704664345933486
#>     Attrib V13    0.00187824810283365
#>     Attrib V14    0.00608085250492728
#>     Attrib V15    0.10106414268123835
#>     Attrib V16    -0.027290900862702142
#>     Attrib V17    0.005750201302872932
#>     Attrib V18    0.1685618837923643
#>     Attrib V19    -0.03683979299995537
#>     Attrib V2    0.10503877938972307
#>     Attrib V20    0.18174217985971008
#>     Attrib V21    0.15294477688890834
#>     Attrib V22    0.017778358988630102
#>     Attrib V23    -0.007292232295073707
#>     Attrib V24    -0.03455363026615556
#>     Attrib V25    -0.08532231676864523
#>     Attrib V26    -0.19454305123837273
#>     Attrib V27    -0.215244725171286
#>     Attrib V28    -0.19977692876810618
#>     Attrib V29    -0.09098834247428315
#>     Attrib V3    0.1227221884656547
#>     Attrib V30    -0.06258904326433044
#>     Attrib V31    -0.4691447553024036
#>     Attrib V32    0.09899977915758197
#>     Attrib V33    0.1793650856963613
#>     Attrib V34    0.04637926137468479
#>     Attrib V35    0.09847416774897659
#>     Attrib V36    0.023236079190895136
#>     Attrib V37    -0.11618216523956906
#>     Attrib V38    -0.029437805388680457
#>     Attrib V39    0.07114464875821831
#>     Attrib V4    0.08225365057192302
#>     Attrib V40    -0.042077322180966006
#>     Attrib V41    -0.1326048783866978
#>     Attrib V42    0.07931183783112389
#>     Attrib V43    0.09527638981284224
#>     Attrib V44    0.20010708744417707
#>     Attrib V45    0.12106693573812544
#>     Attrib V46    -0.015496348024150187
#>     Attrib V47    0.011093964916590666
#>     Attrib V48    0.15046414127515065
#>     Attrib V49    0.06909070448230899
#>     Attrib V5    0.04064809743747551
#>     Attrib V50    -0.17566470243876492
#>     Attrib V51    0.08384029329060992
#>     Attrib V52    0.1208675382604918
#>     Attrib V53    0.22383046308176743
#>     Attrib V54    0.22126476784421797
#>     Attrib V55    0.020008696050077716
#>     Attrib V56    0.27589806449976667
#>     Attrib V57    -0.0830442363203933
#>     Attrib V58    0.16777807216998075
#>     Attrib V59    0.18069502639502702
#>     Attrib V6    -0.14530531876511374
#>     Attrib V60    0.1621283513588812
#>     Attrib V7    -0.08227055191689536
#>     Attrib V8    -0.122139406871972
#>     Attrib V9    0.04822249262168345
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    -0.12108857226291382
#>     Attrib V1    -0.11354428508217672
#>     Attrib V10    0.7824711706205315
#>     Attrib V11    0.7727106970575556
#>     Attrib V12    0.9385330728419995
#>     Attrib V13    0.46788361037250925
#>     Attrib V14    -0.49730797462422766
#>     Attrib V15    -0.2765075135051704
#>     Attrib V16    -0.6054598380572606
#>     Attrib V17    -0.33722699961207864
#>     Attrib V18    0.11609576257907173
#>     Attrib V19    -0.26095372536678263
#>     Attrib V2    0.09233626537247756
#>     Attrib V20    -0.15868374045147657
#>     Attrib V21    -0.21182187139322484
#>     Attrib V22    0.2563599912118382
#>     Attrib V23    0.5256504215970574
#>     Attrib V24    0.5591645124948795
#>     Attrib V25    0.49908353386866317
#>     Attrib V26    0.8846304947238465
#>     Attrib V27    0.9587828497599106
#>     Attrib V28    0.6864041337301134
#>     Attrib V29    0.30914397758374734
#>     Attrib V3    -0.14289529190719216
#>     Attrib V30    0.27274368178129826
#>     Attrib V31    -0.8046593546624503
#>     Attrib V32    0.42819090444543606
#>     Attrib V33    0.17625220828448493
#>     Attrib V34    -0.06137712360994915
#>     Attrib V35    0.4725551324794943
#>     Attrib V36    -0.1731745724532721
#>     Attrib V37    -0.1880378117509767
#>     Attrib V38    -0.4498482973407644
#>     Attrib V39    -0.22679382918975177
#>     Attrib V4    0.0684305308872149
#>     Attrib V40    0.37378873785911937
#>     Attrib V41    0.46139144378216096
#>     Attrib V42    -0.14285177838052585
#>     Attrib V43    -0.0780974343366578
#>     Attrib V44    0.07476780462026433
#>     Attrib V45    0.2556813462284682
#>     Attrib V46    0.36811586448308625
#>     Attrib V47    0.38688962537914917
#>     Attrib V48    0.6000407911535645
#>     Attrib V49    0.8220481418934895
#>     Attrib V5    0.313562248376961
#>     Attrib V50    -0.4382963619598494
#>     Attrib V51    0.7752779831708412
#>     Attrib V52    0.9842097979405179
#>     Attrib V53    0.6987930175564773
#>     Attrib V54    0.23806035411288584
#>     Attrib V55    -0.3760934278088161
#>     Attrib V56    -0.12352662981098311
#>     Attrib V57    -0.6634283867634162
#>     Attrib V58    0.062254777778697486
#>     Attrib V59    -0.2960232862657172
#>     Attrib V6    -0.036497693161098604
#>     Attrib V60    0.20235933892344302
#>     Attrib V7    -0.2841727641995796
#>     Attrib V8    -0.4315685214449565
#>     Attrib V9    0.9310895019975342
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.1891939708625178
#>     Attrib V1    -0.09097564206980344
#>     Attrib V10    0.6930907462594433
#>     Attrib V11    0.6540981025940885
#>     Attrib V12    0.7660515927869623
#>     Attrib V13    0.38740021028315913
#>     Attrib V14    -0.38801949078132153
#>     Attrib V15    -0.22682763793263672
#>     Attrib V16    -0.5646667483974317
#>     Attrib V17    -0.2772552142214257
#>     Attrib V18    0.19251761902267664
#>     Attrib V19    -0.18954081545130455
#>     Attrib V2    0.00426315799814352
#>     Attrib V20    -0.016108928299181466
#>     Attrib V21    -0.04413483218874177
#>     Attrib V22    0.3483537669746048
#>     Attrib V23    0.6731645986750825
#>     Attrib V24    0.5519257791769622
#>     Attrib V25    0.3465986642800235
#>     Attrib V26    0.7338647009085483
#>     Attrib V27    0.9446266916619241
#>     Attrib V28    0.7611950949191059
#>     Attrib V29    0.5983931096981737
#>     Attrib V3    -0.15433211658397084
#>     Attrib V30    0.43919905096371187
#>     Attrib V31    -0.9399992308841854
#>     Attrib V32    0.3425418722295788
#>     Attrib V33    0.11020462636210188
#>     Attrib V34    -0.19318176664287137
#>     Attrib V35    0.32890775434665726
#>     Attrib V36    -0.13608483867306712
#>     Attrib V37    -0.17117540329044323
#>     Attrib V38    -0.43138155707696896
#>     Attrib V39    -0.24281087538543542
#>     Attrib V4    0.08518106486255578
#>     Attrib V40    0.30919126892195564
#>     Attrib V41    0.4743303584727978
#>     Attrib V42    -0.040257937497420765
#>     Attrib V43    0.06860246926414185
#>     Attrib V44    0.3090630322257956
#>     Attrib V45    0.2814453818598211
#>     Attrib V46    0.2996785014413545
#>     Attrib V47    0.3640463662054983
#>     Attrib V48    0.5822349409389912
#>     Attrib V49    0.7045294910825791
#>     Attrib V5    0.3816055620201484
#>     Attrib V50    -0.5002982085514598
#>     Attrib V51    0.6544930131022356
#>     Attrib V52    0.9237659078036488
#>     Attrib V53    0.6039525964618117
#>     Attrib V54    0.24636722930493848
#>     Attrib V55    -0.46296512813252905
#>     Attrib V56    -0.015374948528644242
#>     Attrib V57    -0.669199440424754
#>     Attrib V58    0.06130519836548686
#>     Attrib V59    -0.16834914575069476
#>     Attrib V6    -0.03759572861349425
#>     Attrib V60    0.1951556146449718
#>     Attrib V7    -0.29030772243617775
#>     Attrib V8    -0.3869795321582003
#>     Attrib V9    0.9034288237114941
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.15546245421611982
#>     Attrib V1    -0.1761450611154346
#>     Attrib V10    -0.7434495537591758
#>     Attrib V11    -0.9980161668218349
#>     Attrib V12    -0.7170008545905137
#>     Attrib V13    -0.3779194362345484
#>     Attrib V14    0.07377495145878207
#>     Attrib V15    -0.3964061363032665
#>     Attrib V16    0.566570285145522
#>     Attrib V17    0.39804342848687785
#>     Attrib V18    -0.005611113399742547
#>     Attrib V19    0.28169766550501313
#>     Attrib V2    0.30709114402178844
#>     Attrib V20    -0.7229926561528917
#>     Attrib V21    -0.729465797115808
#>     Attrib V22    -0.938471769017435
#>     Attrib V23    -0.6858732177477048
#>     Attrib V24    -0.4072213400759016
#>     Attrib V25    0.27152271190092553
#>     Attrib V26    0.5055646741637648
#>     Attrib V27    0.539639510480467
#>     Attrib V28    0.5736457238005181
#>     Attrib V29    0.05617240322927363
#>     Attrib V3    0.24523114162014945
#>     Attrib V30    -0.23681626985952306
#>     Attrib V31    2.471221327513765
#>     Attrib V32    -0.6150054942336564
#>     Attrib V33    -0.8915684116699856
#>     Attrib V34    0.39821396777334744
#>     Attrib V35    0.08204672630784027
#>     Attrib V36    0.41364383329055354
#>     Attrib V37    0.9393531614828307
#>     Attrib V38    0.37485702993053055
#>     Attrib V39    0.019958834816411326
#>     Attrib V4    -0.018576580440386375
#>     Attrib V40    -0.17536236523723084
#>     Attrib V41    0.13541577715027892
#>     Attrib V42    -0.10258575875607129
#>     Attrib V43    -0.2928912578654751
#>     Attrib V44    -0.6578111205631559
#>     Attrib V45    -0.6021384386801916
#>     Attrib V46    -0.025461401732765773
#>     Attrib V47    0.0076823174016175015
#>     Attrib V48    -0.47142576006598336
#>     Attrib V49    -0.381092797195728
#>     Attrib V5    -0.32092451139769534
#>     Attrib V50    1.7044808301241163
#>     Attrib V51    0.21772545056149095
#>     Attrib V52    -0.0873719192487891
#>     Attrib V53    -0.2546411902960505
#>     Attrib V54    -0.7976330349122892
#>     Attrib V55    0.7797997991732986
#>     Attrib V56    -0.3740408552993041
#>     Attrib V57    0.6225283315531122
#>     Attrib V58    -0.5103479937861303
#>     Attrib V59    -0.25492732482087677
#>     Attrib V6    0.4268740187708185
#>     Attrib V60    -0.06312466314397959
#>     Attrib V7    0.1163899158575115
#>     Attrib V8    -0.05326185829102549
#>     Attrib V9    -1.080015509605099
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.17882237377264118
#>     Attrib V1    0.18887458734098633
#>     Attrib V10    0.0663667385207312
#>     Attrib V11    0.09335891065276955
#>     Attrib V12    0.0679313874198977
#>     Attrib V13    0.006311461341975158
#>     Attrib V14    0.030304268985749682
#>     Attrib V15    0.010594239068243284
#>     Attrib V16    0.02536802019613353
#>     Attrib V17    0.02685904397868698
#>     Attrib V18    0.04031856547396172
#>     Attrib V19    -0.027572139155446374
#>     Attrib V2    0.12152422131550498
#>     Attrib V20    0.0773914691047543
#>     Attrib V21    0.019406688732140465
#>     Attrib V22    -0.048529576225371004
#>     Attrib V23    -0.05944597268391218
#>     Attrib V24    0.013710175540575012
#>     Attrib V25    -0.05185934451553718
#>     Attrib V26    -0.09995332196201372
#>     Attrib V27    -0.11922518391009432
#>     Attrib V28    -0.14138870591868055
#>     Attrib V29    -0.040838060034650604
#>     Attrib V3    0.07806369204716772
#>     Attrib V30    -0.04461028367989081
#>     Attrib V31    -0.13001799873618738
#>     Attrib V32    0.04609127944205359
#>     Attrib V33    0.05193484166423954
#>     Attrib V34    0.03117450653694737
#>     Attrib V35    0.08490309837326472
#>     Attrib V36    0.0037306116665425893
#>     Attrib V37    -0.027574711061641426
#>     Attrib V38    -0.012995735885651552
#>     Attrib V39    0.03287285759035041
#>     Attrib V4    0.14087693463740797
#>     Attrib V40    0.04047200992580027
#>     Attrib V41    -0.06013928537797159
#>     Attrib V42    0.039001102722971095
#>     Attrib V43    0.12179351199735036
#>     Attrib V44    0.09469532779735934
#>     Attrib V45    0.046675152850891466
#>     Attrib V46    0.07626202032727784
#>     Attrib V47    -0.01321608801125628
#>     Attrib V48    0.12491306192601981
#>     Attrib V49    0.06309637524583546
#>     Attrib V5    0.12395641155523372
#>     Attrib V50    0.02008450168205934
#>     Attrib V51    0.05393818150310252
#>     Attrib V52    0.11765204719217819
#>     Attrib V53    0.12319627055050192
#>     Attrib V54    0.15271692897991326
#>     Attrib V55    0.07617864907568717
#>     Attrib V56    0.17699648888101815
#>     Attrib V57    0.0598631356703636
#>     Attrib V58    0.17498544777756758
#>     Attrib V59    0.11691301465471597
#>     Attrib V6    0.01112978964271763
#>     Attrib V60    0.11623965894060356
#>     Attrib V7    -0.02967028798253911
#>     Attrib V8    -0.0947334778759728
#>     Attrib V9    0.08525411754440557
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.5409244816171214
#>     Attrib V1    0.2731233618542106
#>     Attrib V10    -0.04097215848135296
#>     Attrib V11    0.1783409819229948
#>     Attrib V12    0.11896687475403216
#>     Attrib V13    0.06727174934971748
#>     Attrib V14    -0.030262431821269514
#>     Attrib V15    0.4004684084115608
#>     Attrib V16    -0.320719923001489
#>     Attrib V17    -0.08066531470263054
#>     Attrib V18    0.41597540697026647
#>     Attrib V19    -0.03404808028711467
#>     Attrib V2    -0.08227791980938799
#>     Attrib V20    0.46954793579074416
#>     Attrib V21    0.5361142565385706
#>     Attrib V22    0.756510404911124
#>     Attrib V23    0.6768645268582912
#>     Attrib V24    0.3353510832225442
#>     Attrib V25    -0.13380920618542577
#>     Attrib V26    -0.8658415026095887
#>     Attrib V27    -0.8120516394153894
#>     Attrib V28    -0.4481416255546807
#>     Attrib V29    -0.01908426075716812
#>     Attrib V3    -0.08605708396239391
#>     Attrib V30    0.1526152460305314
#>     Attrib V31    -1.8825130938636288
#>     Attrib V32    0.8090990117046635
#>     Attrib V33    0.8490051386850079
#>     Attrib V34    -0.387816234246677
#>     Attrib V35    0.19813500921281205
#>     Attrib V36    -0.20718339086706744
#>     Attrib V37    -0.6801922632239569
#>     Attrib V38    -0.47347444961374596
#>     Attrib V39    -0.3688247522407921
#>     Attrib V4    0.16799506756637034
#>     Attrib V40    -0.31209760279219884
#>     Attrib V41    -0.4811766016172472
#>     Attrib V42    0.36579750920121584
#>     Attrib V43    0.49287458969810327
#>     Attrib V44    0.8787729394664884
#>     Attrib V45    0.5866387254452303
#>     Attrib V46    -0.04376850449039436
#>     Attrib V47    0.034711243144300796
#>     Attrib V48    0.46341875261713
#>     Attrib V49    0.14896869283283673
#>     Attrib V5    -0.20967862839573098
#>     Attrib V50    -1.0376913709000049
#>     Attrib V51    -0.22742775874362695
#>     Attrib V52    0.44396595850381354
#>     Attrib V53    0.5969633988998001
#>     Attrib V54    0.8368954335345515
#>     Attrib V55    -0.6180330686318847
#>     Attrib V56    0.8031952020848122
#>     Attrib V57    -0.7020169432090043
#>     Attrib V58    0.5799316568965234
#>     Attrib V59    0.20855962462401456
#>     Attrib V6    -0.5854866215618808
#>     Attrib V60    0.2114754772422198
#>     Attrib V7    -0.24203244560141832
#>     Attrib V8    -0.3991866378936657
#>     Attrib V9    0.42741279685244166
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.25492563694129
#>     Attrib V1    0.04797316931414921
#>     Attrib V10    0.0751495511639499
#>     Attrib V11    0.05353374764634519
#>     Attrib V12    0.02074918650317125
#>     Attrib V13    -0.07527636648012614
#>     Attrib V14    0.3004073728974561
#>     Attrib V15    0.06614266840290488
#>     Attrib V16    0.46063482764704256
#>     Attrib V17    0.5681244733924435
#>     Attrib V18    0.06661851075953903
#>     Attrib V19    0.38653445381801016
#>     Attrib V2    0.1898264585989
#>     Attrib V20    0.10606756432837294
#>     Attrib V21    -0.02839388274212002
#>     Attrib V22    -0.3083390990191033
#>     Attrib V23    -0.43724598915374424
#>     Attrib V24    -0.3154141468120711
#>     Attrib V25    0.3715836328092777
#>     Attrib V26    0.7411340795559413
#>     Attrib V27    0.44565232627195145
#>     Attrib V28    0.12115719240504702
#>     Attrib V29    -0.33007654255461355
#>     Attrib V3    0.3578596828691456
#>     Attrib V30    -0.367474061780689
#>     Attrib V31    0.7343662925866922
#>     Attrib V32    -0.7813877149346515
#>     Attrib V33    -0.7592251122638418
#>     Attrib V34    0.029374497276451583
#>     Attrib V35    -0.27509823434822167
#>     Attrib V36    0.00241651635964064
#>     Attrib V37    0.0967558915035762
#>     Attrib V38    0.07942726283776291
#>     Attrib V39    0.10966738856839964
#>     Attrib V4    0.29841873567241095
#>     Attrib V40    -0.1697871571623176
#>     Attrib V41    -0.4001520441774363
#>     Attrib V42    -0.31118488109611386
#>     Attrib V43    -0.3027195879006534
#>     Attrib V44    -0.46148430869218643
#>     Attrib V45    -0.422293957349164
#>     Attrib V46    -0.05604825418036077
#>     Attrib V47    0.11244196701574466
#>     Attrib V48    7.478879280163874E-4
#>     Attrib V49    -0.06396923577809768
#>     Attrib V5    0.1702628869927349
#>     Attrib V50    0.7959607541152727
#>     Attrib V51    -0.023797344601013504
#>     Attrib V52    -0.24043552106767463
#>     Attrib V53    -0.3536766408691128
#>     Attrib V54    -0.2718165032808141
#>     Attrib V55    0.5650447754119539
#>     Attrib V56    -0.02109854732403868
#>     Attrib V57    0.6790735094380859
#>     Attrib V58    -0.1569007289363287
#>     Attrib V59    0.005815680532266593
#>     Attrib V6    0.4327706975170056
#>     Attrib V60    -0.17308646757713786
#>     Attrib V7    0.19502316624517538
#>     Attrib V8    0.26559478834188044
#>     Attrib V9    -0.14485890992688943
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.3468438793168816
#>     Attrib V1    0.6017654188704974
#>     Attrib V10    1.298088250322427
#>     Attrib V11    1.1533387872623466
#>     Attrib V12    0.8872870952907848
#>     Attrib V13    0.5071787896219639
#>     Attrib V14    -0.36566917510683955
#>     Attrib V15    -0.11205472307922774
#>     Attrib V16    -0.6092538242420383
#>     Attrib V17    -0.7630240837804207
#>     Attrib V18    -0.41937592262555623
#>     Attrib V19    -0.8129869456889831
#>     Attrib V2    0.562790289124937
#>     Attrib V20    -0.267978750487908
#>     Attrib V21    -0.2406492036840868
#>     Attrib V22    -0.2844126764294742
#>     Attrib V23    -0.33436252305211406
#>     Attrib V24    -0.21043152768244242
#>     Attrib V25    -0.4808642848052425
#>     Attrib V26    0.5036425524731473
#>     Attrib V27    0.9574078830736673
#>     Attrib V28    0.9225389836147654
#>     Attrib V29    0.8047245788893541
#>     Attrib V3    -0.05195149923892524
#>     Attrib V30    0.5116899953189257
#>     Attrib V31    -0.6397805483924496
#>     Attrib V32    0.43935642691752724
#>     Attrib V33    -0.03028230212914643
#>     Attrib V34    -0.23870692385756445
#>     Attrib V35    0.12612322815039811
#>     Attrib V36    -0.6302918238466638
#>     Attrib V37    -0.1150853917250417
#>     Attrib V38    -0.13771357947779062
#>     Attrib V39    0.15730555186238265
#>     Attrib V4    -0.16965610600414002
#>     Attrib V40    0.4487260034718322
#>     Attrib V41    0.4932668195604839
#>     Attrib V42    -0.5874379547848472
#>     Attrib V43    -0.5363031369074244
#>     Attrib V44    -0.46332975165529294
#>     Attrib V45    0.1563070182692953
#>     Attrib V46    0.5700537853039062
#>     Attrib V47    0.5282041409871465
#>     Attrib V48    0.7034551233314459
#>     Attrib V49    1.227585681068567
#>     Attrib V5    0.13108600767790923
#>     Attrib V50    -0.12056090328420131
#>     Attrib V51    1.4017989712786139
#>     Attrib V52    1.0165536760457115
#>     Attrib V53    0.6527407228643607
#>     Attrib V54    -0.22016456040616597
#>     Attrib V55    -0.3124482027661473
#>     Attrib V56    -0.28102381352629047
#>     Attrib V57    -0.44643666430741596
#>     Attrib V58    0.025593828479216717
#>     Attrib V59    -0.3451610247295411
#>     Attrib V6    -0.25835121804774785
#>     Attrib V60    0.4096831219294697
#>     Attrib V7    -0.49571854257968234
#>     Attrib V8    -0.4407140662101029
#>     Attrib V9    1.2493939212509033
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.16620724088129288
#>     Attrib V1    0.027222382571391552
#>     Attrib V10    0.10660090261780997
#>     Attrib V11    0.04898081401357088
#>     Attrib V12    0.0902010251238906
#>     Attrib V13    0.0076853623188174415
#>     Attrib V14    0.19406171558203322
#>     Attrib V15    -0.014710544103028453
#>     Attrib V16    0.2120496942191975
#>     Attrib V17    0.26171493891066117
#>     Attrib V18    0.015195422828717161
#>     Attrib V19    0.27435498187527413
#>     Attrib V2    0.10739647234423974
#>     Attrib V20    0.09958738580578025
#>     Attrib V21    0.059842083788320774
#>     Attrib V22    -0.039671286769771955
#>     Attrib V23    -0.0948630577526311
#>     Attrib V24    -0.08769267777296114
#>     Attrib V25    0.15805527142205525
#>     Attrib V26    0.24904104603523652
#>     Attrib V27    0.19357775786539255
#>     Attrib V28    0.04971367148972875
#>     Attrib V29    -0.1593353388140194
#>     Attrib V3    0.14354313730023777
#>     Attrib V30    -0.2074483673960442
#>     Attrib V31    0.383218195005375
#>     Attrib V32    -0.4079499754118817
#>     Attrib V33    -0.2952801610462083
#>     Attrib V34    0.06164738738257705
#>     Attrib V35    -0.07847651832681461
#>     Attrib V36    0.01533426626789658
#>     Attrib V37    0.07137897844902995
#>     Attrib V38    0.01958388389263546
#>     Attrib V39    0.12070864438076227
#>     Attrib V4    0.18740351051446139
#>     Attrib V40    -0.006700152519164824
#>     Attrib V41    -0.07827336894375622
#>     Attrib V42    -0.07559852023140326
#>     Attrib V43    -0.10907951179448898
#>     Attrib V44    -0.20430179747126467
#>     Attrib V45    -0.19972813709067866
#>     Attrib V46    -0.034479865765100995
#>     Attrib V47    0.014908408916639583
#>     Attrib V48    -0.029125646774665462
#>     Attrib V49    -0.04284915835743373
#>     Attrib V5    0.16412758817818066
#>     Attrib V50    0.40431733462381536
#>     Attrib V51    -0.05240504299173275
#>     Attrib V52    -0.1687538150048609
#>     Attrib V53    -0.23863004813282587
#>     Attrib V54    -0.19517201228240827
#>     Attrib V55    0.24554943073412422
#>     Attrib V56    -0.07008335400224264
#>     Attrib V57    0.3700445232187013
#>     Attrib V58    -0.06419890504901539
#>     Attrib V59    0.017238497851891507
#>     Attrib V6    0.335121589310272
#>     Attrib V60    -0.027306438637078746
#>     Attrib V7    0.16892396194636172
#>     Attrib V8    0.2435128850048525
#>     Attrib V9    -0.04111607542630787
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    -0.09357611952321308
#>     Attrib V1    0.28319915707276727
#>     Attrib V10    0.021364539893571673
#>     Attrib V11    0.1496153464599924
#>     Attrib V12    0.09068401465325174
#>     Attrib V13    0.032022072756415235
#>     Attrib V14    -0.12379145509114248
#>     Attrib V15    0.19516304170958662
#>     Attrib V16    -0.17707216220684505
#>     Attrib V17    -0.03529097111159736
#>     Attrib V18    0.30014832831424565
#>     Attrib V19    -0.06945751175838702
#>     Attrib V2    -0.001912047152619021
#>     Attrib V20    0.250028836494848
#>     Attrib V21    0.29668666682709055
#>     Attrib V22    0.2450739232114658
#>     Attrib V23    0.2006068584498599
#>     Attrib V24    0.142574397459628
#>     Attrib V25    -0.19054323464791378
#>     Attrib V26    -0.3564559609758773
#>     Attrib V27    -0.32822321501255936
#>     Attrib V28    -0.22970272314169632
#>     Attrib V29    0.05925382038017125
#>     Attrib V3    -0.09124896507839286
#>     Attrib V30    0.13317285077610264
#>     Attrib V31    -1.0665448280459666
#>     Attrib V32    0.33842088831406086
#>     Attrib V33    0.3653905898941338
#>     Attrib V34    -0.14115260454135217
#>     Attrib V35    0.16776583243375054
#>     Attrib V36    -0.09802907121903301
#>     Attrib V37    -0.23616061550158005
#>     Attrib V38    -0.14876037460507005
#>     Attrib V39    -0.07774593429444389
#>     Attrib V4    0.04615686526704756
#>     Attrib V40    -0.1351204685647115
#>     Attrib V41    -0.18387313185508394
#>     Attrib V42    0.09312127577182198
#>     Attrib V43    0.13637798799566525
#>     Attrib V44    0.44794130987689407
#>     Attrib V45    0.4157676738177875
#>     Attrib V46    -0.067145145674326
#>     Attrib V47    -0.07746249097888608
#>     Attrib V48    0.3387377182143293
#>     Attrib V49    0.09703820372712084
#>     Attrib V5    -0.0761333456744642
#>     Attrib V50    -0.5846672711133372
#>     Attrib V51    0.0018798735657749672
#>     Attrib V52    0.2975889481405232
#>     Attrib V53    0.3569801894820866
#>     Attrib V54    0.4434487416901929
#>     Attrib V55    -0.27539999764949513
#>     Attrib V56    0.3536424871604081
#>     Attrib V57    -0.385108891188736
#>     Attrib V58    0.23418200640587575
#>     Attrib V59    0.1270563618913336
#>     Attrib V6    -0.29518963756881267
#>     Attrib V60    0.13111482289750503
#>     Attrib V7    -0.28010010555059817
#>     Attrib V8    -0.31042359817912496
#>     Attrib V9    0.25037854310584934
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5750035180281985
#>     Attrib V1    -0.08634638988656601
#>     Attrib V10    -1.1160108346350226
#>     Attrib V11    -1.8425629272322739
#>     Attrib V12    -2.0216953163096347
#>     Attrib V13    -0.8569150959264532
#>     Attrib V14    -0.004419469851291761
#>     Attrib V15    -0.6062556064310469
#>     Attrib V16    -0.28311042733075004
#>     Attrib V17    -0.8484334528293289
#>     Attrib V18    -0.7299903206676107
#>     Attrib V19    -0.6845006075121688
#>     Attrib V2    0.18978670242229162
#>     Attrib V20    -1.3737885518411155
#>     Attrib V21    -0.7152394793843248
#>     Attrib V22    -0.2531251645002246
#>     Attrib V23    0.6730611061083097
#>     Attrib V24    0.150017060624275
#>     Attrib V25    -0.25313931838721854
#>     Attrib V26    -0.6016112273140881
#>     Attrib V27    -0.2931094552376697
#>     Attrib V28    0.18047152474774864
#>     Attrib V29    -0.6727756357603926
#>     Attrib V3    0.31074780070748076
#>     Attrib V30    -1.0161887115313908
#>     Attrib V31    1.1511734647039933
#>     Attrib V32    0.21419186484401434
#>     Attrib V33    0.6455993886093759
#>     Attrib V34    0.3740461691830213
#>     Attrib V35    0.18721300537350993
#>     Attrib V36    0.7626701030587127
#>     Attrib V37    0.5670917995665073
#>     Attrib V38    0.5594510948352912
#>     Attrib V39    -0.06555171144451577
#>     Attrib V4    0.3105635467118025
#>     Attrib V40    -0.09482519043623602
#>     Attrib V41    0.48729149983521675
#>     Attrib V42    0.46371288829714324
#>     Attrib V43    0.29580663781188493
#>     Attrib V44    0.026054342398200658
#>     Attrib V45    -0.6701874016469241
#>     Attrib V46    -0.3731253130642335
#>     Attrib V47    -1.0345405952996825
#>     Attrib V48    -1.29722425979935
#>     Attrib V49    -1.0341173175457767
#>     Attrib V5    -0.48005907045984264
#>     Attrib V50    1.7157393157287135
#>     Attrib V51    0.7861426999606128
#>     Attrib V52    0.5401481334328306
#>     Attrib V53    0.7170310066581127
#>     Attrib V54    0.5601575147043398
#>     Attrib V55    0.76803365781816
#>     Attrib V56    0.1732074463280303
#>     Attrib V57    0.34003376313870226
#>     Attrib V58    0.8260042369621943
#>     Attrib V59    0.3789465943135107
#>     Attrib V6    0.5661945405730385
#>     Attrib V60    0.20443458677049678
#>     Attrib V7    0.9564596876296684
#>     Attrib V8    0.8004308620223448
#>     Attrib V9    -0.8727490505289265
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.19414084334061893
#>     Attrib V1    0.1590954463933593
#>     Attrib V10    -0.023066938562680547
#>     Attrib V11    0.1778896050610961
#>     Attrib V12    0.1378551512343818
#>     Attrib V13    0.04858751920935139
#>     Attrib V14    -0.046898076378376036
#>     Attrib V15    0.21850972149891104
#>     Attrib V16    -0.22655550000101743
#>     Attrib V17    -0.07357599715361943
#>     Attrib V18    0.24912937005283226
#>     Attrib V19    -0.12290693935346367
#>     Attrib V2    -0.025637999950240853
#>     Attrib V20    0.3409160693598284
#>     Attrib V21    0.36451643993757743
#>     Attrib V22    0.4128550493370313
#>     Attrib V23    0.31700434558882634
#>     Attrib V24    0.21509223591523796
#>     Attrib V25    -0.13849039878615868
#>     Attrib V26    -0.5305916139697425
#>     Attrib V27    -0.40377560562130527
#>     Attrib V28    -0.2098221194412499
#>     Attrib V29    0.12212945841434907
#>     Attrib V3    -0.06580939264028347
#>     Attrib V30    0.0937781054962815
#>     Attrib V31    -1.1942538352284924
#>     Attrib V32    0.45012283611222087
#>     Attrib V33    0.4532268910035031
#>     Attrib V34    -0.19878950509952223
#>     Attrib V35    0.18021180487122793
#>     Attrib V36    -0.1164732336318952
#>     Attrib V37    -0.26030432489061295
#>     Attrib V38    -0.1890874798063638
#>     Attrib V39    -0.1098344936990642
#>     Attrib V4    0.007597076799993903
#>     Attrib V40    -0.07913072257195625
#>     Attrib V41    -0.15578838663451025
#>     Attrib V42    0.11513139553563952
#>     Attrib V43    0.2627172390904829
#>     Attrib V44    0.4221641545020789
#>     Attrib V45    0.40124226756914455
#>     Attrib V46    -0.025556542034681315
#>     Attrib V47    -0.007739252786297509
#>     Attrib V48    0.3125053324953857
#>     Attrib V49    0.11702448449158293
#>     Attrib V5    -0.1155599716945178
#>     Attrib V50    -0.6562291573784896
#>     Attrib V51    0.008603584162864603
#>     Attrib V52    0.35415646685265634
#>     Attrib V53    0.36010230858597014
#>     Attrib V54    0.44290087470545375
#>     Attrib V55    -0.3164746808170653
#>     Attrib V56    0.454937549692813
#>     Attrib V57    -0.4244985020906405
#>     Attrib V58    0.2518371411899763
#>     Attrib V59    0.07573317172204652
#>     Attrib V6    -0.33692694798454564
#>     Attrib V60    0.13769396935431594
#>     Attrib V7    -0.2651239837390629
#>     Attrib V8    -0.3164917252752166
#>     Attrib V9    0.26390821647040463
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.12187996079532387
#>     Attrib V1    0.06623751903991587
#>     Attrib V10    0.17054780687985588
#>     Attrib V11    0.11508311185334844
#>     Attrib V12    0.12965120766840985
#>     Attrib V13    0.09857141331301367
#>     Attrib V14    0.0653074856336003
#>     Attrib V15    0.028022551973553415
#>     Attrib V16    0.07511871882797612
#>     Attrib V17    0.13630688230749843
#>     Attrib V18    0.04450509257130593
#>     Attrib V19    0.06265826935379587
#>     Attrib V2    0.07613766514245021
#>     Attrib V20    0.0620152185618117
#>     Attrib V21    0.10818903735109524
#>     Attrib V22    0.05833720933515265
#>     Attrib V23    0.03956600209142607
#>     Attrib V24    -0.035998330042315396
#>     Attrib V25    0.05102591650868569
#>     Attrib V26    0.088581274030531
#>     Attrib V27    0.005183261938805489
#>     Attrib V28    -0.022343022419826927
#>     Attrib V29    -0.15516444077186492
#>     Attrib V3    0.0740893036078703
#>     Attrib V30    -0.08262127047558118
#>     Attrib V31    0.11357667283557703
#>     Attrib V32    -0.13241597616524284
#>     Attrib V33    -0.09737204285007879
#>     Attrib V34    0.026858811996688887
#>     Attrib V35    -0.0036271557497748906
#>     Attrib V36    -0.028477551936955732
#>     Attrib V37    0.02041118535749942
#>     Attrib V38    -0.01219497412984906
#>     Attrib V39    0.13054659142134278
#>     Attrib V4    0.15975712802153896
#>     Attrib V40    0.0728667854686292
#>     Attrib V41    0.05244353932711152
#>     Attrib V42    0.05354579407307683
#>     Attrib V43    -0.009353752815344047
#>     Attrib V44    -0.061776425809715145
#>     Attrib V45    -0.024182633452241017
#>     Attrib V46    0.01965530500817106
#>     Attrib V47    -0.015400939910289877
#>     Attrib V48    0.009613177206674341
#>     Attrib V49    -0.015112977004515374
#>     Attrib V5    0.13444646430139776
#>     Attrib V50    0.1140961624893857
#>     Attrib V51    -0.007211993714941861
#>     Attrib V52    -0.0061322271947978286
#>     Attrib V53    -0.04877609473729471
#>     Attrib V54    -0.0390074405770852
#>     Attrib V55    0.06270109747880104
#>     Attrib V56    0.028648778926576437
#>     Attrib V57    0.12882933157299423
#>     Attrib V58    0.062465756039293205
#>     Attrib V59    0.08565856619040171
#>     Attrib V6    0.15691639179797798
#>     Attrib V60    0.01189717781111174
#>     Attrib V7    0.0462338118259241
#>     Attrib V8    0.11565761182290935
#>     Attrib V9    0.07105389886595356
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.40216619396374065
#>     Attrib V1    0.5688787489490895
#>     Attrib V10    -0.32504066772577855
#>     Attrib V11    -0.09633031576471283
#>     Attrib V12    -0.3176498296643386
#>     Attrib V13    -0.19581351165183347
#>     Attrib V14    0.10281068438288493
#>     Attrib V15    0.5766831407905646
#>     Attrib V16    0.06852010420811545
#>     Attrib V17    0.16298999092362823
#>     Attrib V18    0.25106670614074544
#>     Attrib V19    -0.03004426617454817
#>     Attrib V2    0.21276195087782973
#>     Attrib V20    0.5571003227031347
#>     Attrib V21    0.4514685178546377
#>     Attrib V22    0.2675611745877903
#>     Attrib V23    0.060118169778076366
#>     Attrib V24    -0.03725616954480698
#>     Attrib V25    -0.5184516898731404
#>     Attrib V26    -0.98419656919962
#>     Attrib V27    -0.9599409053827628
#>     Attrib V28    -0.7407371163878417
#>     Attrib V29    -0.12748970777006588
#>     Attrib V3    0.09904993143278185
#>     Attrib V30    -0.02112904279421997
#>     Attrib V31    -1.3174070145623966
#>     Attrib V32    0.22737573093736468
#>     Attrib V33    0.5722833300098268
#>     Attrib V34    -0.06518331976224692
#>     Attrib V35    0.1564830747189528
#>     Attrib V36    -0.15102795479766054
#>     Attrib V37    -0.20569815712488884
#>     Attrib V38    -0.02100293803548132
#>     Attrib V39    -0.042239814520835126
#>     Attrib V4    0.20674944618980157
#>     Attrib V40    -0.18952016747546754
#>     Attrib V41    -0.46485911236414473
#>     Attrib V42    0.17859880647745874
#>     Attrib V43    0.22862022023773423
#>     Attrib V44    0.5164215376956541
#>     Attrib V45    0.4423886196647022
#>     Attrib V46    -0.08333101065148728
#>     Attrib V47    -0.1898761613826517
#>     Attrib V48    0.31707474917881445
#>     Attrib V49    -0.11976739901095199
#>     Attrib V5    -0.1559612989912105
#>     Attrib V50    -0.6723467832690977
#>     Attrib V51    -0.2895705233866864
#>     Attrib V52    0.12674450492747835
#>     Attrib V53    0.32177235851169855
#>     Attrib V54    0.7425374438924368
#>     Attrib V55    -0.05405054171796255
#>     Attrib V56    0.7104353080991579
#>     Attrib V57    -0.17451364082610926
#>     Attrib V58    0.4643715694378151
#>     Attrib V59    0.39771123640313966
#>     Attrib V6    -0.34739026021652997
#>     Attrib V60    0.18566467850829893
#>     Attrib V7    -0.15627195279200362
#>     Attrib V8    -0.3094898122981292
#>     Attrib V9    0.028691302920847615
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.22357135894466632
#>     Attrib V1    0.3109923804823548
#>     Attrib V10    -0.1809448529407344
#>     Attrib V11    -0.01779743508187049
#>     Attrib V12    -0.07139457121339114
#>     Attrib V13    -0.09094309326785241
#>     Attrib V14    0.06611350132328843
#>     Attrib V15    0.2677492397358943
#>     Attrib V16    0.03996774405558374
#>     Attrib V17    0.06502754983454145
#>     Attrib V18    0.25426948869856913
#>     Attrib V19    -0.01804757496927018
#>     Attrib V2    0.08370482235381221
#>     Attrib V20    0.28801222520501607
#>     Attrib V21    0.2718802414268424
#>     Attrib V22    0.10908019568797186
#>     Attrib V23    0.04347284715380377
#>     Attrib V24    -0.050139786824325815
#>     Attrib V25    -0.2919417660562349
#>     Attrib V26    -0.5014489070108445
#>     Attrib V27    -0.4529563719357383
#>     Attrib V28    -0.29064760420031494
#>     Attrib V29    -0.04205881498762605
#>     Attrib V3    0.09475326593530753
#>     Attrib V30    0.034237164439609676
#>     Attrib V31    -0.7844143409334736
#>     Attrib V32    0.1495307879114066
#>     Attrib V33    0.3058559186679385
#>     Attrib V34    -0.05200963301432081
#>     Attrib V35    0.11981247164096603
#>     Attrib V36    -0.01058439676402761
#>     Attrib V37    -0.12309377400137367
#>     Attrib V38    -0.05897309929219519
#>     Attrib V39    0.02283737545862162
#>     Attrib V4    0.0934846218298477
#>     Attrib V40    -0.09912256252871834
#>     Attrib V41    -0.2210062889838533
#>     Attrib V42    0.14033493071416267
#>     Attrib V43    0.08571183748702822
#>     Attrib V44    0.29582362125209943
#>     Attrib V45    0.2890413113546116
#>     Attrib V46    -0.018589082511458774
#>     Attrib V47    -0.09455707266168348
#>     Attrib V48    0.1440473317366647
#>     Attrib V49    0.03282491000629889
#>     Attrib V5    -0.01984390637186346
#>     Attrib V50    -0.34481092616584746
#>     Attrib V51    -0.06308943972465589
#>     Attrib V52    0.14848575445294931
#>     Attrib V53    0.2589392801224344
#>     Attrib V54    0.3429217053477322
#>     Attrib V55    -0.07072587944880696
#>     Attrib V56    0.3786336806812369
#>     Attrib V57    -0.13037208828008126
#>     Attrib V58    0.29867755662030554
#>     Attrib V59    0.1981930585131607
#>     Attrib V6    -0.1800739189706658
#>     Attrib V60    0.13193572400543618
#>     Attrib V7    -0.1456581626784621
#>     Attrib V8    -0.19947434094057345
#>     Attrib V9    0.04746503986769061
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
#>  0.1449275 
```
