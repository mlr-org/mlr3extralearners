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
#>     Threshold    -0.1380083845493912
#>     Node 2    1.8000881507656297
#>     Node 3    1.426155270238005
#>     Node 4    1.201631182322061
#>     Node 5    -2.0903197065482297
#>     Node 6    1.2989182501618186
#>     Node 7    3.3176018000043577
#>     Node 8    1.021863226758426
#>     Node 9    3.274045434201937
#>     Node 10    -0.7275507052769876
#>     Node 11    1.2490301105520067
#>     Node 12    1.5776997436923246
#>     Node 13    0.43977921945772297
#>     Node 14    1.4697908676775808
#>     Node 15    -2.499876520913555
#>     Node 16    0.330080680418359
#>     Node 17    0.1489431385864827
#>     Node 18    -1.6532613106842988
#>     Node 19    2.498472874878803
#>     Node 20    1.6627347778061066
#>     Node 21    -2.0524781324326584
#>     Node 22    0.91189116849456
#>     Node 23    0.9480697895284568
#>     Node 24    -1.5733764200255507
#>     Node 25    3.3390609771111186
#>     Node 26    -1.3691169582295404
#>     Node 27    1.4607958516565966
#>     Node 28    -2.716237045745247
#>     Node 29    1.3267122250762082
#>     Node 30    -1.4318306310540112
#>     Node 31    2.3683665042107473
#>     Node 32    0.709762368828919
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.16952023488296947
#>     Node 2    -1.8398707955079907
#>     Node 3    -1.4233430085181424
#>     Node 4    -1.1665032919172256
#>     Node 5    2.1038665248786037
#>     Node 6    -1.291349114605524
#>     Node 7    -3.316323264722298
#>     Node 8    -1.0456729340936894
#>     Node 9    -3.251109751971965
#>     Node 10    0.6642502256495892
#>     Node 11    -1.2123485884832423
#>     Node 12    -1.6421478209992286
#>     Node 13    -0.3820459104725981
#>     Node 14    -1.4123089104307551
#>     Node 15    2.489874377917134
#>     Node 16    -0.3426701197696991
#>     Node 17    -0.10489592124943921
#>     Node 18    1.6892314726533917
#>     Node 19    -2.4995899814003883
#>     Node 20    -1.6402021713772876
#>     Node 21    2.1066952553751963
#>     Node 22    -0.9725887478734175
#>     Node 23    -1.0042153785551837
#>     Node 24    1.5534384530086367
#>     Node 25    -3.3281617429417985
#>     Node 26    1.2798013902529322
#>     Node 27    -1.508879755019416
#>     Node 28    2.6915057394165025
#>     Node 29    -1.3469276088113231
#>     Node 30    1.5036247544811705
#>     Node 31    -2.342386921582993
#>     Node 32    -0.733093596865735
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.4277160008102109
#>     Attrib V1    -0.009093992548069718
#>     Attrib V10    0.4013800044167534
#>     Attrib V11    0.12654741286590776
#>     Attrib V12    0.5291931946856459
#>     Attrib V13    0.08824522437244388
#>     Attrib V14    -0.5808875095228344
#>     Attrib V15    -0.5882055160767378
#>     Attrib V16    -0.0853575381537756
#>     Attrib V17    -0.02453842795645487
#>     Attrib V18    -0.3353321619787014
#>     Attrib V19    -0.10319142547720717
#>     Attrib V2    0.2338651315332631
#>     Attrib V20    0.21480135494075006
#>     Attrib V21    0.5192972235187601
#>     Attrib V22    0.7197366933538144
#>     Attrib V23    0.3039465293068619
#>     Attrib V24    0.53571046924579
#>     Attrib V25    -0.002821442363125488
#>     Attrib V26    -0.636971656532762
#>     Attrib V27    -0.34941511208301257
#>     Attrib V28    0.09768103650560779
#>     Attrib V29    -0.14636016044862396
#>     Attrib V3    -0.5534952404825488
#>     Attrib V30    0.6611343721657419
#>     Attrib V31    -0.6041760184717502
#>     Attrib V32    0.04153707684457305
#>     Attrib V33    0.44129841422285637
#>     Attrib V34    -0.12518970600245113
#>     Attrib V35    -0.055997394936073926
#>     Attrib V36    -0.20250129531388875
#>     Attrib V37    -0.3894681629555142
#>     Attrib V38    0.2045824014243239
#>     Attrib V39    0.461056882943867
#>     Attrib V4    0.3542192313042859
#>     Attrib V40    0.44209168340803034
#>     Attrib V41    0.23130645894689886
#>     Attrib V42    -0.03689051198595575
#>     Attrib V43    0.5810527919192341
#>     Attrib V44    0.5597716077398779
#>     Attrib V45    0.5200803292101642
#>     Attrib V46    0.38062380395021106
#>     Attrib V47    -0.12929857113081927
#>     Attrib V48    -0.09578020365468963
#>     Attrib V49    0.7436692248831193
#>     Attrib V5    -0.3073379697285894
#>     Attrib V50    -0.6318736592739603
#>     Attrib V51    0.303488634859304
#>     Attrib V52    0.35676137566687155
#>     Attrib V53    0.18016192848226262
#>     Attrib V54    0.07859197088549008
#>     Attrib V55    -1.1810005324473425
#>     Attrib V56    0.34006505767945805
#>     Attrib V57    -0.529700798974949
#>     Attrib V58    -0.19107667498083797
#>     Attrib V59    0.6368748915964586
#>     Attrib V6    -0.2779240599679941
#>     Attrib V60    0.08912966467603024
#>     Attrib V7    0.011318796528152385
#>     Attrib V8    -0.29835854952659696
#>     Attrib V9    0.9093588806925492
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.26762543428423047
#>     Attrib V1    0.2205306017470653
#>     Attrib V10    0.30565372254550804
#>     Attrib V11    0.172994754084877
#>     Attrib V12    0.2908913773148333
#>     Attrib V13    0.35854380568549504
#>     Attrib V14    0.1751023035645386
#>     Attrib V15    0.1531690576832914
#>     Attrib V16    0.07922463584041507
#>     Attrib V17    0.12211379155751187
#>     Attrib V18    0.020857957783902547
#>     Attrib V19    0.1674461971572319
#>     Attrib V2    0.25140532744420735
#>     Attrib V20    0.39346270206794154
#>     Attrib V21    0.519105627612833
#>     Attrib V22    0.3536945746925956
#>     Attrib V23    -0.019935979501575506
#>     Attrib V24    -0.08140843676762619
#>     Attrib V25    -0.36754640670865824
#>     Attrib V26    -0.5674529753341082
#>     Attrib V27    -0.4152514852536399
#>     Attrib V28    -0.22557291596243204
#>     Attrib V29    -0.30723705687036934
#>     Attrib V3    -0.12333525270655346
#>     Attrib V30    0.18756898514182416
#>     Attrib V31    -0.47490194912688255
#>     Attrib V32    -0.1766551651813217
#>     Attrib V33    0.055684239576456844
#>     Attrib V34    -0.37694997909020583
#>     Attrib V35    -0.2863398642580332
#>     Attrib V36    -0.2918929772116608
#>     Attrib V37    -0.3927919712968897
#>     Attrib V38    -0.055920599319825556
#>     Attrib V39    0.2363562432975699
#>     Attrib V4    0.47497400051915495
#>     Attrib V40    0.02018683955023807
#>     Attrib V41    -0.17295650756832842
#>     Attrib V42    -0.01469897693469081
#>     Attrib V43    0.32621507179545106
#>     Attrib V44    0.2891384333579475
#>     Attrib V45    0.11431352604599841
#>     Attrib V46    -0.12288620460084848
#>     Attrib V47    -0.25468376749637567
#>     Attrib V48    -0.15842443275613385
#>     Attrib V49    0.40536168842193765
#>     Attrib V5    -0.13445474405478633
#>     Attrib V50    -0.11382833344185876
#>     Attrib V51    0.1972228244095239
#>     Attrib V52    0.3443781663220273
#>     Attrib V53    0.2111669859525524
#>     Attrib V54    0.223424603717128
#>     Attrib V55    -0.27252870925660716
#>     Attrib V56    0.2504526314121183
#>     Attrib V57    -0.15400001601622756
#>     Attrib V58    0.34763278002144116
#>     Attrib V59    0.4365407506374811
#>     Attrib V6    -0.058255385168428465
#>     Attrib V60    0.20200493822581364
#>     Attrib V7    0.3309249542101717
#>     Attrib V8    0.14110507340913708
#>     Attrib V9    0.5022457529792217
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.22188436774914788
#>     Attrib V1    0.048423091455788735
#>     Attrib V10    0.24739564672533518
#>     Attrib V11    0.11689474052314015
#>     Attrib V12    0.2525150649797941
#>     Attrib V13    0.23096319587990377
#>     Attrib V14    0.021981974651867776
#>     Attrib V15    -7.872302730119805E-4
#>     Attrib V16    0.06980473864439055
#>     Attrib V17    0.14030159291443542
#>     Attrib V18    8.385131739454812E-4
#>     Attrib V19    0.09252366194551578
#>     Attrib V2    0.13172287377559025
#>     Attrib V20    0.3050898152363852
#>     Attrib V21    0.47988762014137043
#>     Attrib V22    0.3131024468976735
#>     Attrib V23    0.00424397283046059
#>     Attrib V24    0.0060664629193767266
#>     Attrib V25    -0.28885803755732803
#>     Attrib V26    -0.5183351209418623
#>     Attrib V27    -0.40350352363685743
#>     Attrib V28    -0.12123289984707979
#>     Attrib V29    -0.20326001701837115
#>     Attrib V3    -0.20330781987692054
#>     Attrib V30    0.16971329826978288
#>     Attrib V31    -0.46796918363813955
#>     Attrib V32    -0.17809303936944865
#>     Attrib V33    0.1308689777643944
#>     Attrib V34    -0.21913946757301617
#>     Attrib V35    -0.15972201031785294
#>     Attrib V36    -0.2327230384034829
#>     Attrib V37    -0.33885520085190324
#>     Attrib V38    -0.045963578242413
#>     Attrib V39    0.20076772596147918
#>     Attrib V4    0.3774352717245295
#>     Attrib V40    0.0775432836628536
#>     Attrib V41    -0.14418653609751686
#>     Attrib V42    -0.02739193832717204
#>     Attrib V43    0.3080879020483749
#>     Attrib V44    0.31491162700505976
#>     Attrib V45    0.28426720901375596
#>     Attrib V46    -0.0066307586425385975
#>     Attrib V47    -0.22351963775524422
#>     Attrib V48    -0.08474352115685195
#>     Attrib V49    0.4665805136012441
#>     Attrib V5    -0.12298622117270579
#>     Attrib V50    -0.1839894349512121
#>     Attrib V51    0.2529093052958341
#>     Attrib V52    0.25107710436014674
#>     Attrib V53    0.23614008087421817
#>     Attrib V54    0.07184556946279669
#>     Attrib V55    -0.4436541715637922
#>     Attrib V56    0.3061992159117295
#>     Attrib V57    -0.19462385495469833
#>     Attrib V58    0.170633944110567
#>     Attrib V59    0.3859154401127531
#>     Attrib V6    -0.06570558175135838
#>     Attrib V60    0.15363847341612719
#>     Attrib V7    0.26471839545211845
#>     Attrib V8    -0.010591492899560682
#>     Attrib V9    0.5431187801837742
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.7361261956160825
#>     Attrib V1    0.2681004952625417
#>     Attrib V10    -0.6799782741356367
#>     Attrib V11    -0.5014232977132748
#>     Attrib V12    -1.1092292771152876
#>     Attrib V13    -0.6572488846489513
#>     Attrib V14    0.3730077832278393
#>     Attrib V15    0.3932555580367502
#>     Attrib V16    -0.10627272995113674
#>     Attrib V17    -0.008137849434600252
#>     Attrib V18    0.2663178711120886
#>     Attrib V19    -0.18112243945573972
#>     Attrib V2    -0.20356310597310387
#>     Attrib V20    -0.38965844326124
#>     Attrib V21    -0.5493096083917761
#>     Attrib V22    -0.9227277267275692
#>     Attrib V23    -0.21518477394505903
#>     Attrib V24    -0.46360123231177397
#>     Attrib V25    0.08436358927112277
#>     Attrib V26    0.46054573608140265
#>     Attrib V27    0.21295021834706096
#>     Attrib V28    -0.2520977022362356
#>     Attrib V29    -0.0776007832160156
#>     Attrib V3    0.7688185805905073
#>     Attrib V30    -0.7659823082669384
#>     Attrib V31    0.6139241869933789
#>     Attrib V32    0.11877546405009207
#>     Attrib V33    -0.28628798879126877
#>     Attrib V34    0.12177655635733574
#>     Attrib V35    0.21064865556805512
#>     Attrib V36    0.674983083624715
#>     Attrib V37    0.7471511695744136
#>     Attrib V38    0.03848498291176219
#>     Attrib V39    -0.4036466900918419
#>     Attrib V4    -0.334401857271874
#>     Attrib V40    -0.6260559052593188
#>     Attrib V41    -0.51380073802333
#>     Attrib V42    0.3383104752162127
#>     Attrib V43    -0.3615274011178339
#>     Attrib V44    -0.3831188460774538
#>     Attrib V45    -0.6055763753050921
#>     Attrib V46    -0.5880602935441683
#>     Attrib V47    0.05859849652379206
#>     Attrib V48    0.016963539680707553
#>     Attrib V49    -0.9480939309000134
#>     Attrib V5    0.4263392614626253
#>     Attrib V50    0.9262064840486463
#>     Attrib V51    -0.3765572049128265
#>     Attrib V52    -0.3748734711256074
#>     Attrib V53    -0.426464185979183
#>     Attrib V54    -0.015840510558073277
#>     Attrib V55    1.2713296029015877
#>     Attrib V56    -0.4111208638054699
#>     Attrib V57    0.7068677134092171
#>     Attrib V58    0.08816452643354562
#>     Attrib V59    -0.557049295503745
#>     Attrib V6    0.03090817113129567
#>     Attrib V60    -0.08389214616663478
#>     Attrib V7    -0.02758232821941699
#>     Attrib V8    0.47949662665809295
#>     Attrib V9    -1.1197613938634219
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.20167634417865288
#>     Attrib V1    0.2297015089390155
#>     Attrib V10    0.021055496979653674
#>     Attrib V11    0.01387969303523154
#>     Attrib V12    0.1639925770475588
#>     Attrib V13    0.1308751657503364
#>     Attrib V14    0.062129622762646726
#>     Attrib V15    0.0342471910335316
#>     Attrib V16    0.2260591727942118
#>     Attrib V17    0.23028438738595702
#>     Attrib V18    0.18181472509026117
#>     Attrib V19    0.2506033471176901
#>     Attrib V2    0.15064091197386273
#>     Attrib V20    0.5200355901391219
#>     Attrib V21    0.5482571686365183
#>     Attrib V22    0.24658205714382656
#>     Attrib V23    0.011994100750017516
#>     Attrib V24    0.07847153177687662
#>     Attrib V25    -0.25038270506720484
#>     Attrib V26    -0.6268530914598387
#>     Attrib V27    -0.49683387825862063
#>     Attrib V28    -0.4080323175893158
#>     Attrib V29    -0.4586640099154639
#>     Attrib V3    -0.12441282009817183
#>     Attrib V30    -0.03621815117772648
#>     Attrib V31    -0.5250442402987644
#>     Attrib V32    -0.1656690604903368
#>     Attrib V33    0.13034251866053084
#>     Attrib V34    -0.22445533812623686
#>     Attrib V35    -0.1029907612436001
#>     Attrib V36    -0.19608449315658685
#>     Attrib V37    -0.2792333956223514
#>     Attrib V38    0.08135523442373022
#>     Attrib V39    0.21736576232407437
#>     Attrib V4    0.42646580415170005
#>     Attrib V40    0.0012688847774861376
#>     Attrib V41    -0.14936117070348584
#>     Attrib V42    0.0712045697095904
#>     Attrib V43    0.39299015430938666
#>     Attrib V44    0.29996367318435413
#>     Attrib V45    0.1299274927082869
#>     Attrib V46    -0.028610550700686178
#>     Attrib V47    -0.2537443795370771
#>     Attrib V48    -0.227167024279395
#>     Attrib V49    0.26702250414807543
#>     Attrib V5    -0.08069232940749488
#>     Attrib V50    -0.056397747958010676
#>     Attrib V51    0.11766184185024645
#>     Attrib V52    0.16871543088418844
#>     Attrib V53    0.30596320661535087
#>     Attrib V54    0.2170790697782222
#>     Attrib V55    -0.31618471561701056
#>     Attrib V56    0.3654351529063112
#>     Attrib V57    -0.0643336912193798
#>     Attrib V58    0.260864817295594
#>     Attrib V59    0.4878151571047226
#>     Attrib V6    -0.045282277374504444
#>     Attrib V60    0.20940107893552873
#>     Attrib V7    0.2834040893225052
#>     Attrib V8    0.12473213980190756
#>     Attrib V9    0.4138214642544142
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.28396416198141833
#>     Attrib V1    -0.16067380868872436
#>     Attrib V10    0.9691373316544717
#>     Attrib V11    0.6193581909178149
#>     Attrib V12    1.2088263970920325
#>     Attrib V13    0.6663869007063362
#>     Attrib V14    -0.6405921685116336
#>     Attrib V15    -0.7566159712516746
#>     Attrib V16    -0.3174322365960533
#>     Attrib V17    -0.6111811151328431
#>     Attrib V18    -0.5353730166939248
#>     Attrib V19    -0.1333448694191563
#>     Attrib V2    0.8003022385306339
#>     Attrib V20    -0.42552173162389917
#>     Attrib V21    -0.13744790011020866
#>     Attrib V22    0.8717549699786569
#>     Attrib V23    0.7283407938105863
#>     Attrib V24    0.7882213681956288
#>     Attrib V25    0.3528639643740368
#>     Attrib V26    0.5027640032128327
#>     Attrib V27    0.8870407235505332
#>     Attrib V28    1.2473429024619527
#>     Attrib V29    1.311245838691653
#>     Attrib V3    -0.15398482257455165
#>     Attrib V30    0.9644881859577035
#>     Attrib V31    -0.5212054015234395
#>     Attrib V32    -0.22859393726232574
#>     Attrib V33    -0.25856476317671245
#>     Attrib V34    -0.07210363293663162
#>     Attrib V35    -0.08317743803747049
#>     Attrib V36    -0.537880220548153
#>     Attrib V37    -0.4753674442021744
#>     Attrib V38    -0.21844832555538557
#>     Attrib V39    0.25543848111668493
#>     Attrib V4    0.43757962457470523
#>     Attrib V40    1.140771365642804
#>     Attrib V41    1.730893635765756
#>     Attrib V42    -0.398998060817814
#>     Attrib V43    -0.20438450605875158
#>     Attrib V44    0.09065447556835358
#>     Attrib V45    0.7139381868596368
#>     Attrib V46    0.9144207049812484
#>     Attrib V47    0.5249543861717699
#>     Attrib V48    0.3259876675386831
#>     Attrib V49    0.9186982989151713
#>     Attrib V5    0.2631777161516773
#>     Attrib V50    -0.7299050511528438
#>     Attrib V51    0.8955519630493913
#>     Attrib V52    0.9013462777052851
#>     Attrib V53    0.8147600449535628
#>     Attrib V54    0.15432313730566455
#>     Attrib V55    -0.888364462529096
#>     Attrib V56    -0.2016000544581199
#>     Attrib V57    -0.5942963326840015
#>     Attrib V58    -0.3593456007517237
#>     Attrib V59    0.5361618170063057
#>     Attrib V6    0.5626799936039006
#>     Attrib V60    0.09175837372436702
#>     Attrib V7    -0.11517664426257736
#>     Attrib V8    -0.7938055619376351
#>     Attrib V9    1.107799004625041
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.2834196431557673
#>     Attrib V1    -0.07212752161439612
#>     Attrib V10    0.24356291590225285
#>     Attrib V11    0.09481919858230659
#>     Attrib V12    0.2754556371873492
#>     Attrib V13    0.16128295082462066
#>     Attrib V14    -0.27031056741420745
#>     Attrib V15    -0.26842894401768036
#>     Attrib V16    8.53542521349094E-4
#>     Attrib V17    -0.015033311253541909
#>     Attrib V18    -0.1659527306581821
#>     Attrib V19    0.01738962494719777
#>     Attrib V2    0.12060989380032494
#>     Attrib V20    0.09449567805646593
#>     Attrib V21    0.21441267955625126
#>     Attrib V22    0.2666684856051932
#>     Attrib V23    0.064388594649733
#>     Attrib V24    0.22337178001501332
#>     Attrib V25    -0.05076477336734486
#>     Attrib V26    -0.3367343247742732
#>     Attrib V27    -0.20374994709951721
#>     Attrib V28    0.022851744001006386
#>     Attrib V29    -0.1371454223340689
#>     Attrib V3    -0.2714430747297332
#>     Attrib V30    0.21824522183382356
#>     Attrib V31    -0.3910014680746719
#>     Attrib V32    -0.07722222520068002
#>     Attrib V33    0.20626082895237316
#>     Attrib V34    -0.0701850360142283
#>     Attrib V35    -0.005542793858543874
#>     Attrib V36    -0.12713018105455234
#>     Attrib V37    -0.2720465468138367
#>     Attrib V38    0.05246303297514532
#>     Attrib V39    0.17310903540451208
#>     Attrib V4    0.3153351762983686
#>     Attrib V40    0.17389854352335155
#>     Attrib V41    0.011720313911158412
#>     Attrib V42    -0.19021421277920575
#>     Attrib V43    0.24917469509128723
#>     Attrib V44    0.28945640246446486
#>     Attrib V45    0.2727657915718403
#>     Attrib V46    0.19524497129874885
#>     Attrib V47    -0.07807131725350264
#>     Attrib V48    -0.052198552779191915
#>     Attrib V49    0.39147141122247264
#>     Attrib V5    -0.16914270514212948
#>     Attrib V50    -0.3437057149093913
#>     Attrib V51    0.15885170562692033
#>     Attrib V52    0.19983411903072826
#>     Attrib V53    0.20705020963388
#>     Attrib V54    0.04545608951469796
#>     Attrib V55    -0.5710219430352912
#>     Attrib V56    0.2079744766361257
#>     Attrib V57    -0.2473433248660068
#>     Attrib V58    -0.003392435077492335
#>     Attrib V59    0.34459607376469253
#>     Attrib V6    -0.119041821691853
#>     Attrib V60    0.14389396446782454
#>     Attrib V7    0.09273379472341042
#>     Attrib V8    -0.1727066898297231
#>     Attrib V9    0.4955427287159344
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.1384138674388565
#>     Attrib V1    -0.5073553970335265
#>     Attrib V10    0.8640537914402491
#>     Attrib V11    0.3667399564195565
#>     Attrib V12    1.1280512603616624
#>     Attrib V13    0.5211024996066355
#>     Attrib V14    -0.9441357936995485
#>     Attrib V15    -1.0746574877422825
#>     Attrib V16    -0.26205071600190094
#>     Attrib V17    -0.4052182611661903
#>     Attrib V18    -0.3545598980794373
#>     Attrib V19    0.07001441358713094
#>     Attrib V2    0.42738140575185807
#>     Attrib V20    -0.3307604876934602
#>     Attrib V21    -0.21057321319978659
#>     Attrib V22    0.8976006188805529
#>     Attrib V23    0.9721649257542908
#>     Attrib V24    1.4453221944011372
#>     Attrib V25    0.9503227613391511
#>     Attrib V26    0.2537849149594561
#>     Attrib V27    0.354806229440179
#>     Attrib V28    0.6497297219604831
#>     Attrib V29    0.5615629632883795
#>     Attrib V3    -0.6001241076159501
#>     Attrib V30    0.6509109948064586
#>     Attrib V31    -0.6136802439979088
#>     Attrib V32    -0.02407090361260756
#>     Attrib V33    0.14165782953227884
#>     Attrib V34    0.2586010833437451
#>     Attrib V35    0.18685019289897356
#>     Attrib V36    -0.456783240002324
#>     Attrib V37    -0.7223252447290829
#>     Attrib V38    -0.07364967315473013
#>     Attrib V39    0.4142267298963764
#>     Attrib V4    0.17520230451320942
#>     Attrib V40    1.234352041152897
#>     Attrib V41    1.652589111647486
#>     Attrib V42    -0.4335276776629668
#>     Attrib V43    0.1525981772823524
#>     Attrib V44    0.2702503633516755
#>     Attrib V45    0.848268581809601
#>     Attrib V46    1.159417846704724
#>     Attrib V47    0.6625560112652872
#>     Attrib V48    0.382076919962122
#>     Attrib V49    1.0474552883120058
#>     Attrib V5    0.045230695040815325
#>     Attrib V50    -0.8553466720901135
#>     Attrib V51    0.8169683266641801
#>     Attrib V52    0.7975829300820174
#>     Attrib V53    0.8949988109371209
#>     Attrib V54    0.051171820890220154
#>     Attrib V55    -1.0214641517086598
#>     Attrib V56    -0.034669467696016906
#>     Attrib V57    -0.7695295600684002
#>     Attrib V58    -0.4381094368491104
#>     Attrib V59    0.6912469584732294
#>     Attrib V6    0.37257115924076994
#>     Attrib V60    -0.26000702884210425
#>     Attrib V7    -0.021051921180956362
#>     Attrib V8    -0.7155818743906404
#>     Attrib V9    1.233835612666076
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.2928393735785585
#>     Attrib V1    0.09131206600143983
#>     Attrib V10    -0.25527937913829296
#>     Attrib V11    -0.13547851889542825
#>     Attrib V12    -0.24535673788024026
#>     Attrib V13    -0.11653324686305506
#>     Attrib V14    0.1942654032572052
#>     Attrib V15    0.13079749076220462
#>     Attrib V16    0.042988402719093335
#>     Attrib V17    0.014552131500580618
#>     Attrib V18    0.1866292099832508
#>     Attrib V19    0.005433975933857165
#>     Attrib V2    -0.07845610198316535
#>     Attrib V20    -0.09012749983930081
#>     Attrib V21    -0.13287558143720596
#>     Attrib V22    -0.26591647219533227
#>     Attrib V23    -0.10916898053087842
#>     Attrib V24    -0.22403135786581527
#>     Attrib V25    0.034028300703626675
#>     Attrib V26    0.24113498866299565
#>     Attrib V27    0.10880228302274109
#>     Attrib V28    -0.09259956758663473
#>     Attrib V29    -0.045196084530824354
#>     Attrib V3    0.20514293885170834
#>     Attrib V30    -0.20213285551171611
#>     Attrib V31    0.22923859965150126
#>     Attrib V32    -0.025614158317949307
#>     Attrib V33    -0.04368428524576981
#>     Attrib V34    0.0841128204338238
#>     Attrib V35    0.03214652082651313
#>     Attrib V36    0.14851414586654688
#>     Attrib V37    0.2251232530576389
#>     Attrib V38    0.028938150631225252
#>     Attrib V39    -0.16641349116990362
#>     Attrib V4    -0.15240140080981288
#>     Attrib V40    -0.13580106951590987
#>     Attrib V41    -0.10294814002353916
#>     Attrib V42    0.06806272317063465
#>     Attrib V43    -0.19518291512387378
#>     Attrib V44    -0.1787766607766926
#>     Attrib V45    -0.21417415769445794
#>     Attrib V46    -0.209412805438044
#>     Attrib V47    0.045145460486286225
#>     Attrib V48    0.011561545188338865
#>     Attrib V49    -0.3325793825802285
#>     Attrib V5    0.14764842723548297
#>     Attrib V50    0.3414105922055498
#>     Attrib V51    -0.16731437546031297
#>     Attrib V52    -0.2370577542944574
#>     Attrib V53    -0.08690896265730959
#>     Attrib V54    0.002766624386086461
#>     Attrib V55    0.36363001401290324
#>     Attrib V56    -0.15113765154149758
#>     Attrib V57    0.22188743828368784
#>     Attrib V58    -0.04877101057288841
#>     Attrib V59    -0.2544921861858831
#>     Attrib V6    0.03206715966584031
#>     Attrib V60    -0.07424240458535222
#>     Attrib V7    -0.04389021698441801
#>     Attrib V8    0.09046753999115138
#>     Attrib V9    -0.4376636202354967
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.2676266923365306
#>     Attrib V1    -0.06135902320005568
#>     Attrib V10    0.2619954693391255
#>     Attrib V11    0.12168294432373407
#>     Attrib V12    0.3169560822460032
#>     Attrib V13    0.06398823312820552
#>     Attrib V14    -0.2439907705630297
#>     Attrib V15    -0.2484498416034
#>     Attrib V16    0.06244914372948011
#>     Attrib V17    0.19610800693643735
#>     Attrib V18    0.02006547817232467
#>     Attrib V19    0.09442045841741183
#>     Attrib V2    0.03265860256999094
#>     Attrib V20    0.34226243712378907
#>     Attrib V21    0.39945360324540236
#>     Attrib V22    0.35854975930256283
#>     Attrib V23    0.09455317789919462
#>     Attrib V24    0.19373789249437826
#>     Attrib V25    -0.07081845000971318
#>     Attrib V26    -0.5156596722654886
#>     Attrib V27    -0.371950559047402
#>     Attrib V28    -0.14217140681759002
#>     Attrib V29    -0.37374946248399715
#>     Attrib V3    -0.40204925368412886
#>     Attrib V30    0.1636872607649822
#>     Attrib V31    -0.5640124218385412
#>     Attrib V32    -0.1644858544438256
#>     Attrib V33    0.2051198201425264
#>     Attrib V34    -0.0848892357959952
#>     Attrib V35    0.02447046531456689
#>     Attrib V36    -0.12231480495155102
#>     Attrib V37    -0.3038139111920899
#>     Attrib V38    0.12008334966216586
#>     Attrib V39    0.23413655305416967
#>     Attrib V4    0.3157564609998958
#>     Attrib V40    0.13801265093314546
#>     Attrib V41    -0.13047681702202402
#>     Attrib V42    -0.08494960635411027
#>     Attrib V43    0.38123225963366053
#>     Attrib V44    0.43441319439696113
#>     Attrib V45    0.3933210099174408
#>     Attrib V46    0.1663337599668176
#>     Attrib V47    -0.09062922030233589
#>     Attrib V48    -0.05157614311598997
#>     Attrib V49    0.46053630447548033
#>     Attrib V5    -0.1910647703742734
#>     Attrib V50    -0.2431104802527877
#>     Attrib V51    0.2868967895651626
#>     Attrib V52    0.178299984055495
#>     Attrib V53    0.16428945909604592
#>     Attrib V54    0.18213597188510883
#>     Attrib V55    -0.5817147628744724
#>     Attrib V56    0.35251383320069773
#>     Attrib V57    -0.27289883038306084
#>     Attrib V58    0.11808247556861437
#>     Attrib V59    0.352673857777335
#>     Attrib V6    -0.1104843752802258
#>     Attrib V60    0.11943058320272902
#>     Attrib V7    0.14977235898912347
#>     Attrib V8    -0.024173197950341396
#>     Attrib V9    0.6031976386936582
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.42726370404430514
#>     Attrib V1    -0.17691004979123504
#>     Attrib V10    0.4865292424768354
#>     Attrib V11    0.2620846452641892
#>     Attrib V12    0.5726119020880537
#>     Attrib V13    0.22691597025953078
#>     Attrib V14    -0.45257212178401307
#>     Attrib V15    -0.5237957055647378
#>     Attrib V16    -0.19182919897223574
#>     Attrib V17    -0.24177343856135902
#>     Attrib V18    -0.4271784436261271
#>     Attrib V19    -0.1899509619596955
#>     Attrib V2    0.3190250747804595
#>     Attrib V20    -0.15862091470626344
#>     Attrib V21    0.1344545098242611
#>     Attrib V22    0.583882874836246
#>     Attrib V23    0.2681727283699404
#>     Attrib V24    0.40309912798077246
#>     Attrib V25    0.060038414380759825
#>     Attrib V26    -0.25365676855228286
#>     Attrib V27    0.02073287912608122
#>     Attrib V28    0.2640773682527588
#>     Attrib V29    0.1578544454655753
#>     Attrib V3    -0.4464759874769465
#>     Attrib V30    0.5643987617252193
#>     Attrib V31    -0.49809475369472406
#>     Attrib V32    -0.12957292126849615
#>     Attrib V33    0.24834874529390424
#>     Attrib V34    -0.026516631053458455
#>     Attrib V35    -0.015169112417547898
#>     Attrib V36    -0.27760962208031176
#>     Attrib V37    -0.41936743064327037
#>     Attrib V38    -0.11052962663366334
#>     Attrib V39    0.13632181384993064
#>     Attrib V4    0.35923938760135443
#>     Attrib V40    0.4628695911663662
#>     Attrib V41    0.4020926017221511
#>     Attrib V42    -0.22792396860914121
#>     Attrib V43    0.3156557506870873
#>     Attrib V44    0.2562107568310584
#>     Attrib V45    0.48742851442272805
#>     Attrib V46    0.45591950073706494
#>     Attrib V47    0.014486704644839744
#>     Attrib V48    0.051685959509840985
#>     Attrib V49    0.5950258840037761
#>     Attrib V5    -0.1586532844603026
#>     Attrib V50    -0.620716472880915
#>     Attrib V51    0.39532269280298166
#>     Attrib V52    0.4206358344117982
#>     Attrib V53    0.3016718843227391
#>     Attrib V54    0.007599912913861732
#>     Attrib V55    -0.9362917326964536
#>     Attrib V56    0.18654475303244833
#>     Attrib V57    -0.4530562253352102
#>     Attrib V58    -0.1615907720792233
#>     Attrib V59    0.4429677734840248
#>     Attrib V6    -0.031873138063993944
#>     Attrib V60    0.10215715895435849
#>     Attrib V7    0.010652679441516932
#>     Attrib V8    -0.2774649165968656
#>     Attrib V9    0.8471756545345599
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.1296656253926634
#>     Attrib V1    0.044636829788775124
#>     Attrib V10    0.05121388637246327
#>     Attrib V11    0.03840745531352628
#>     Attrib V12    0.08023159337523948
#>     Attrib V13    0.155496702463818
#>     Attrib V14    0.06253713213085825
#>     Attrib V15    -0.003503061340049929
#>     Attrib V16    0.0266697193085384
#>     Attrib V17    0.07410290336116887
#>     Attrib V18    0.031776957678298086
#>     Attrib V19    0.04012268972440606
#>     Attrib V2    0.07257628062554204
#>     Attrib V20    0.1192522235277353
#>     Attrib V21    0.0968686733392026
#>     Attrib V22    -0.001402483218991104
#>     Attrib V23    -0.031081938846730092
#>     Attrib V24    -0.015933370805489507
#>     Attrib V25    -0.05016608200002707
#>     Attrib V26    -0.19762097232447073
#>     Attrib V27    -0.09012774809173012
#>     Attrib V28    -0.11970986957263409
#>     Attrib V29    -0.1268341865705726
#>     Attrib V3    0.058438321274030966
#>     Attrib V30    -0.03244056776085894
#>     Attrib V31    -0.2268386533015045
#>     Attrib V32    -0.08004602780241536
#>     Attrib V33    0.0293211098754486
#>     Attrib V34    0.0012104690812472377
#>     Attrib V35    -0.008269711851757306
#>     Attrib V36    -0.057644887060447604
#>     Attrib V37    -0.056046360539841175
#>     Attrib V38    0.027642234598191054
#>     Attrib V39    0.106894084155718
#>     Attrib V4    0.21028525781246796
#>     Attrib V40    0.06339301106031658
#>     Attrib V41    -0.03978073552459499
#>     Attrib V42    -0.039432755626302246
#>     Attrib V43    0.0627734987858782
#>     Attrib V44    0.11322187154970861
#>     Attrib V45    0.061907085664903404
#>     Attrib V46    0.07139638341268098
#>     Attrib V47    0.017270281187462082
#>     Attrib V48    -0.041930129286085034
#>     Attrib V49    0.14807395826389808
#>     Attrib V5    0.06900119371976708
#>     Attrib V50    -0.020309860275898303
#>     Attrib V51    0.08954992562357358
#>     Attrib V52    0.0766293473980957
#>     Attrib V53    0.14603044164307766
#>     Attrib V54    0.03827279859540089
#>     Attrib V55    -0.05184957185147965
#>     Attrib V56    0.17098980332465044
#>     Attrib V57    0.026736293150217284
#>     Attrib V58    0.12392280491803194
#>     Attrib V59    0.22449995817944368
#>     Attrib V6    0.042243092098980216
#>     Attrib V60    0.1236842342792318
#>     Attrib V7    0.16447469936738934
#>     Attrib V8    0.0032616406014029597
#>     Attrib V9    0.1609202794101945
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.31017238499232247
#>     Attrib V1    0.20160733390192298
#>     Attrib V10    0.3511447942153101
#>     Attrib V11    0.25879776620647127
#>     Attrib V12    0.3379735697680674
#>     Attrib V13    0.24047326185679857
#>     Attrib V14    -0.039989203730122276
#>     Attrib V15    -0.012407700123240622
#>     Attrib V16    0.036583173762650294
#>     Attrib V17    0.15548542638514734
#>     Attrib V18    0.030789921479834493
#>     Attrib V19    0.08598293422809296
#>     Attrib V2    0.2047419405490312
#>     Attrib V20    0.3493537922773644
#>     Attrib V21    0.5261006692724541
#>     Attrib V22    0.3698568418715993
#>     Attrib V23    0.039903765857634145
#>     Attrib V24    -0.019627413503827934
#>     Attrib V25    -0.3111658798323901
#>     Attrib V26    -0.5348272922290135
#>     Attrib V27    -0.4440984250525297
#>     Attrib V28    -0.30407710955495515
#>     Attrib V29    -0.4093217167033409
#>     Attrib V3    -0.2927312232989592
#>     Attrib V30    0.17560831583582992
#>     Attrib V31    -0.5334920578708193
#>     Attrib V32    -0.18157612007912652
#>     Attrib V33    0.14991265147236427
#>     Attrib V34    -0.311495216647729
#>     Attrib V35    -0.20938079668011625
#>     Attrib V36    -0.2884378070693604
#>     Attrib V37    -0.3754663996238454
#>     Attrib V38    -0.03454356348850481
#>     Attrib V39    0.25616892938744984
#>     Attrib V4    0.45813541946020725
#>     Attrib V40    0.03277352705494806
#>     Attrib V41    -0.20975152328281965
#>     Attrib V42    -0.0707173559999153
#>     Attrib V43    0.3623252819536717
#>     Attrib V44    0.3659470524096678
#>     Attrib V45    0.15268724719291688
#>     Attrib V46    -0.019402960466337008
#>     Attrib V47    -0.2890775579587715
#>     Attrib V48    -0.09869759003476886
#>     Attrib V49    0.5217636732675046
#>     Attrib V5    -0.2164391261366098
#>     Attrib V50    -0.17696788027407842
#>     Attrib V51    0.2059553567952941
#>     Attrib V52    0.2709296316872753
#>     Attrib V53    0.15965077912651132
#>     Attrib V54    0.2269358668705757
#>     Attrib V55    -0.41953709445004855
#>     Attrib V56    0.29036927965979453
#>     Attrib V57    -0.22550688022680723
#>     Attrib V58    0.2813676839156557
#>     Attrib V59    0.4040206550063092
#>     Attrib V6    -0.09858877793034959
#>     Attrib V60    0.25074241847747053
#>     Attrib V7    0.33075571766971934
#>     Attrib V8    0.032239230645049334
#>     Attrib V9    0.6371131297988295
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.5809514338156169
#>     Attrib V1    0.007111012203079512
#>     Attrib V10    -0.5306846874430932
#>     Attrib V11    -0.3284110217898459
#>     Attrib V12    -0.4953115372074973
#>     Attrib V13    -0.11490607558511988
#>     Attrib V14    0.5063695721072531
#>     Attrib V15    0.5834388517921762
#>     Attrib V16    -0.09646882654622642
#>     Attrib V17    -0.26457694963373846
#>     Attrib V18    0.06326641877326793
#>     Attrib V19    -0.23106585267325455
#>     Attrib V2    -0.16730298985957637
#>     Attrib V20    -0.6985700062120804
#>     Attrib V21    -1.037441971375672
#>     Attrib V22    -1.0433914652606844
#>     Attrib V23    -0.6658478231825663
#>     Attrib V24    -0.8295521301661293
#>     Attrib V25    -0.04416427324938416
#>     Attrib V26    0.779796839474836
#>     Attrib V27    0.5859501984674055
#>     Attrib V28    0.22161685639634507
#>     Attrib V29    0.518272878603301
#>     Attrib V3    0.8642393645149212
#>     Attrib V30    -0.5989384211441793
#>     Attrib V31    0.8734788986530925
#>     Attrib V32    0.22851590774445873
#>     Attrib V33    -0.3407381688396486
#>     Attrib V34    0.3743324914372049
#>     Attrib V35    0.1138968927300955
#>     Attrib V36    0.2061511591846558
#>     Attrib V37    0.5839127317151618
#>     Attrib V38    -0.37312652622879205
#>     Attrib V39    -0.6890631588051166
#>     Attrib V4    -0.4933982021798303
#>     Attrib V40    -0.4121612014795229
#>     Attrib V41    -0.10498201131916542
#>     Attrib V42    -0.08977504127610261
#>     Attrib V43    -1.0013023740244444
#>     Attrib V44    -1.043415201318062
#>     Attrib V45    -0.8019284652653524
#>     Attrib V46    -0.5026715856652942
#>     Attrib V47    0.15211951488532402
#>     Attrib V48    0.1490670695341816
#>     Attrib V49    -1.043269745137652
#>     Attrib V5    0.456566662929918
#>     Attrib V50    0.5941129926232392
#>     Attrib V51    -0.3679715756547916
#>     Attrib V52    -0.2904484753820703
#>     Attrib V53    -0.16783813778308812
#>     Attrib V54    -0.35099536110432117
#>     Attrib V55    1.10995818702803
#>     Attrib V56    -0.5108025750548784
#>     Attrib V57    0.4411470765814319
#>     Attrib V58    -0.043798966865975744
#>     Attrib V59    -0.8388411386528152
#>     Attrib V6    0.1914308625918926
#>     Attrib V60    0.0663093090434793
#>     Attrib V7    -0.3788576202495642
#>     Attrib V8    0.009501062346549512
#>     Attrib V9    -1.199059207163621
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1293151279049563
#>     Attrib V1    0.0445897776033631
#>     Attrib V10    0.08541503973927494
#>     Attrib V11    0.03446807233285698
#>     Attrib V12    0.07366385473007933
#>     Attrib V13    0.12033074145967367
#>     Attrib V14    0.028928812795585998
#>     Attrib V15    -4.3647962685088325E-4
#>     Attrib V16    0.09237317419757907
#>     Attrib V17    0.08127338954659195
#>     Attrib V18    0.061974110727575395
#>     Attrib V19    0.05798364047694497
#>     Attrib V2    0.037246524417515574
#>     Attrib V20    0.03306448263503189
#>     Attrib V21    0.01294801491588908
#>     Attrib V22    -0.02760515816945262
#>     Attrib V23    -0.11522209779667456
#>     Attrib V24    -0.01878820412978393
#>     Attrib V25    -0.05402791354114501
#>     Attrib V26    -0.15058991349859988
#>     Attrib V27    -0.1185083332963107
#>     Attrib V28    -0.0663940491737111
#>     Attrib V29    -0.1324257389001847
#>     Attrib V3    0.0462428611504807
#>     Attrib V30    -0.08647760844847567
#>     Attrib V31    -0.178489585218582
#>     Attrib V32    -0.05232089847211955
#>     Attrib V33    0.025659527407448163
#>     Attrib V34    0.014001975922052217
#>     Attrib V35    0.006024682520743024
#>     Attrib V36    -0.0484531842093062
#>     Attrib V37    -0.03248834971063315
#>     Attrib V38    0.026842816866319685
#>     Attrib V39    0.04745998615226187
#>     Attrib V4    0.18433558920941906
#>     Attrib V40    0.004012931169041129
#>     Attrib V41    -0.034246766152094925
#>     Attrib V42    -0.0034343149203470316
#>     Attrib V43    0.06322596219725854
#>     Attrib V44    0.056231219986856575
#>     Attrib V45    0.09047757969083636
#>     Attrib V46    0.06659013109248715
#>     Attrib V47    0.003612545176662596
#>     Attrib V48    -0.019899242233500293
#>     Attrib V49    0.07341134543480482
#>     Attrib V5    0.05542635588069572
#>     Attrib V50    0.06865557544754988
#>     Attrib V51    0.15343031470102877
#>     Attrib V52    0.12213286287639068
#>     Attrib V53    0.1654045076303378
#>     Attrib V54    0.043384079952627254
#>     Attrib V55    0.019012948329131443
#>     Attrib V56    0.17276575158408033
#>     Attrib V57    0.057944075725716776
#>     Attrib V58    0.17496167488090136
#>     Attrib V59    0.11670582230249799
#>     Attrib V6    0.03714643173470216
#>     Attrib V60    0.0974695509572818
#>     Attrib V7    0.10390269665692038
#>     Attrib V8    0.007799334747430179
#>     Attrib V9    0.17152413087180288
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.10554733713246585
#>     Attrib V1    0.06798294993230437
#>     Attrib V10    0.08296358255928624
#>     Attrib V11    0.038283075508507104
#>     Attrib V12    0.004160810093473774
#>     Attrib V13    -0.0022122440575346957
#>     Attrib V14    0.015759779942115717
#>     Attrib V15    0.06819175670656522
#>     Attrib V16    0.029246699509644144
#>     Attrib V17    0.012789567645343461
#>     Attrib V18    -0.014190042160787848
#>     Attrib V19    -3.072306681717498E-5
#>     Attrib V2    0.12391242249025212
#>     Attrib V20    -0.040445670339326494
#>     Attrib V21    -0.04932260145238418
#>     Attrib V22    -0.005008169639542601
#>     Attrib V23    -0.09765808938934041
#>     Attrib V24    -0.03262472418494448
#>     Attrib V25    -0.08042862881395871
#>     Attrib V26    -0.10377573555635916
#>     Attrib V27    -0.06028789614507412
#>     Attrib V28    -0.05895664211558817
#>     Attrib V29    -0.11065397617866946
#>     Attrib V3    0.04513551756145267
#>     Attrib V30    -0.012992462287111511
#>     Attrib V31    -0.012429363477944008
#>     Attrib V32    -0.04804295708463399
#>     Attrib V33    0.08986679917933364
#>     Attrib V34    0.00489263057781875
#>     Attrib V35    0.09467388669641758
#>     Attrib V36    0.014128582019122763
#>     Attrib V37    0.012038390505509112
#>     Attrib V38    0.10166115227041261
#>     Attrib V39    0.07590021775964247
#>     Attrib V4    0.11192760868592609
#>     Attrib V40    0.024821509269338522
#>     Attrib V41    0.03996952454586765
#>     Attrib V42    -0.00124742327438519
#>     Attrib V43    0.10674863590553037
#>     Attrib V44    0.10226943867029271
#>     Attrib V45    0.0905025224703351
#>     Attrib V46    0.010553991048786134
#>     Attrib V47    -0.017702441973771136
#>     Attrib V48    0.04357895204936996
#>     Attrib V49    0.008992165723373923
#>     Attrib V5    0.07240062610123651
#>     Attrib V50    0.05115616654964761
#>     Attrib V51    0.07573399039931332
#>     Attrib V52    0.010269443131612679
#>     Attrib V53    0.05481884593960427
#>     Attrib V54    0.010145863302382804
#>     Attrib V55    0.06200252070821367
#>     Attrib V56    0.12910764161668498
#>     Attrib V57    0.11874236186742465
#>     Attrib V58    0.051260090979469146
#>     Attrib V59    0.06391025283985732
#>     Attrib V6    0.039328812685180244
#>     Attrib V60    0.05457981946846336
#>     Attrib V7    0.02189102278112209
#>     Attrib V8    0.08130459681901074
#>     Attrib V9    0.08953833681183965
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.5836649266617375
#>     Attrib V1    0.12955369882632956
#>     Attrib V10    -0.48981006276019956
#>     Attrib V11    -0.25925852054492815
#>     Attrib V12    -0.5776235062109757
#>     Attrib V13    -0.24272375895375695
#>     Attrib V14    0.38703114569467034
#>     Attrib V15    0.3885337032309537
#>     Attrib V16    0.0335116916190883
#>     Attrib V17    -0.020353407684965585
#>     Attrib V18    0.32296328671218366
#>     Attrib V19    -0.06075051242379621
#>     Attrib V2    -0.11235938376427268
#>     Attrib V20    -0.24659439793615887
#>     Attrib V21    -0.44980624652959267
#>     Attrib V22    -0.7031282896616232
#>     Attrib V23    -0.35059766024745104
#>     Attrib V24    -0.5135664491858326
#>     Attrib V25    0.06025622584735788
#>     Attrib V26    0.5087919694469614
#>     Attrib V27    0.2958501376076719
#>     Attrib V28    -0.10093969841502605
#>     Attrib V29    0.10871320954928006
#>     Attrib V3    0.6697906065918655
#>     Attrib V30    -0.5576849360164452
#>     Attrib V31    0.5388149493984394
#>     Attrib V32    0.10494987021863736
#>     Attrib V33    -0.2188572741851846
#>     Attrib V34    0.23375547695725782
#>     Attrib V35    0.036741617762600605
#>     Attrib V36    0.29715103896190287
#>     Attrib V37    0.4174373530267479
#>     Attrib V38    -0.13859631119095303
#>     Attrib V39    -0.39462647576254556
#>     Attrib V4    -0.33372509480162277
#>     Attrib V40    -0.40825434347785594
#>     Attrib V41    -0.24543101408583776
#>     Attrib V42    0.13124582144587352
#>     Attrib V43    -0.5379184979915014
#>     Attrib V44    -0.49573690228573347
#>     Attrib V45    -0.5628353518110921
#>     Attrib V46    -0.3860833343519357
#>     Attrib V47    0.18770303114201098
#>     Attrib V48    0.1324700758686235
#>     Attrib V49    -0.7153417654470046
#>     Attrib V5    0.38415600201989425
#>     Attrib V50    0.5740533620656527
#>     Attrib V51    -0.28665015960013734
#>     Attrib V52    -0.3107350539727891
#>     Attrib V53    -0.22412175583273788
#>     Attrib V54    -0.10079734425977892
#>     Attrib V55    0.9252385990021755
#>     Attrib V56    -0.33731905137828094
#>     Attrib V57    0.431331257249892
#>     Attrib V58    -0.032552028784069945
#>     Attrib V59    -0.5510928542252294
#>     Attrib V6    0.05968390130917103
#>     Attrib V60    0.0036168123379856703
#>     Attrib V7    -0.11892079159220413
#>     Attrib V8    0.18521164065658582
#>     Attrib V9    -0.9076662062091584
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.23931291203406738
#>     Attrib V1    -0.03679552237910602
#>     Attrib V10    0.8538197248280531
#>     Attrib V11    0.5112259830302468
#>     Attrib V12    1.0917518627643823
#>     Attrib V13    0.701292572285591
#>     Attrib V14    -0.23037450045777932
#>     Attrib V15    -0.3363698961443657
#>     Attrib V16    -0.4407021281029103
#>     Attrib V17    -0.634527863257557
#>     Attrib V18    -0.6286909967942474
#>     Attrib V19    -0.46309579857179234
#>     Attrib V2    0.6910718247488451
#>     Attrib V20    -0.5939478864264501
#>     Attrib V21    -0.16544059850117884
#>     Attrib V22    0.593783991490135
#>     Attrib V23    0.14400664482148176
#>     Attrib V24    0.13459873146361248
#>     Attrib V25    0.016607664775858302
#>     Attrib V26    0.41945946119718386
#>     Attrib V27    0.7965066331640545
#>     Attrib V28    0.9899894943887599
#>     Attrib V29    0.9358434651337892
#>     Attrib V3    -0.02787669327669576
#>     Attrib V30    0.8191519636155491
#>     Attrib V31    -0.29567831185866944
#>     Attrib V32    -0.2914024987310327
#>     Attrib V33    -0.2611062216200914
#>     Attrib V34    -0.1834465825482345
#>     Attrib V35    -0.10206492117759552
#>     Attrib V36    -0.442077207900571
#>     Attrib V37    -0.40972778261671633
#>     Attrib V38    -0.298750389022128
#>     Attrib V39    0.11367805202127003
#>     Attrib V4    0.4950593196014115
#>     Attrib V40    0.6924274863828921
#>     Attrib V41    0.9694553004361559
#>     Attrib V42    -0.4131344632782021
#>     Attrib V43    -0.1677890700395359
#>     Attrib V44    0.002572709148017603
#>     Attrib V45    0.5618330759678024
#>     Attrib V46    0.5955580762581312
#>     Attrib V47    0.2189518241053703
#>     Attrib V48    0.21638239771709172
#>     Attrib V49    0.7973235513243736
#>     Attrib V5    0.19895488905105385
#>     Attrib V50    -0.5914213770166752
#>     Attrib V51    0.6120953320058881
#>     Attrib V52    0.6629264545468361
#>     Attrib V53    0.5994500711894878
#>     Attrib V54    -0.05293015583674143
#>     Attrib V55    -0.6348600523876287
#>     Attrib V56    -0.2124624954581048
#>     Attrib V57    -0.5122625890783697
#>     Attrib V58    -0.08819723037662511
#>     Attrib V59    0.3053315074186886
#>     Attrib V6    0.41046937423791274
#>     Attrib V60    0.15118015601349447
#>     Attrib V7    -0.002196183197630484
#>     Attrib V8    -0.5103100705678862
#>     Attrib V9    0.8469029342988332
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.5194728790188076
#>     Attrib V1    -0.06984848669625678
#>     Attrib V10    0.45029272561466027
#>     Attrib V11    0.13008877471643426
#>     Attrib V12    0.5978285810903694
#>     Attrib V13    0.20391651282274115
#>     Attrib V14    -0.4560085126017775
#>     Attrib V15    -0.4834648130438164
#>     Attrib V16    -0.15872649357246707
#>     Attrib V17    -0.16714412362239986
#>     Attrib V18    -0.4063667869505529
#>     Attrib V19    -0.15026288335256044
#>     Attrib V2    0.2567516159563513
#>     Attrib V20    0.014155519837673504
#>     Attrib V21    0.3060236023822487
#>     Attrib V22    0.6273757322371959
#>     Attrib V23    0.2889506367121376
#>     Attrib V24    0.46606061550076744
#>     Attrib V25    -0.023662167104274656
#>     Attrib V26    -0.4673856706665655
#>     Attrib V27    -0.1300836870006359
#>     Attrib V28    0.1981799048474463
#>     Attrib V29    0.0915484288305475
#>     Attrib V3    -0.564285524155852
#>     Attrib V30    0.621161626847051
#>     Attrib V31    -0.4905195491124717
#>     Attrib V32    -0.07544533389092434
#>     Attrib V33    0.310517591255826
#>     Attrib V34    -0.10826943422009498
#>     Attrib V35    -0.025220400545393356
#>     Attrib V36    -0.22343060590705088
#>     Attrib V37    -0.37769363991623556
#>     Attrib V38    -0.006450473952571952
#>     Attrib V39    0.2707615930656989
#>     Attrib V4    0.2896588126335154
#>     Attrib V40    0.48360429812242417
#>     Attrib V41    0.39135925116458037
#>     Attrib V42    -0.18830053020966211
#>     Attrib V43    0.43375039633613743
#>     Attrib V44    0.39335598314826026
#>     Attrib V45    0.42829018133411256
#>     Attrib V46    0.3158889913266072
#>     Attrib V47    -0.15054278374406202
#>     Attrib V48    -0.05287622758067592
#>     Attrib V49    0.6688267984038913
#>     Attrib V5    -0.2545073566267793
#>     Attrib V50    -0.6845951888149726
#>     Attrib V51    0.3847472919357705
#>     Attrib V52    0.4065973758669608
#>     Attrib V53    0.2839930869111313
#>     Attrib V54    0.03785668281999286
#>     Attrib V55    -1.0169322195129986
#>     Attrib V56    0.2609128023762243
#>     Attrib V57    -0.5616917337173355
#>     Attrib V58    -0.1114649291632208
#>     Attrib V59    0.5397769471581825
#>     Attrib V6    -0.0719746728279838
#>     Attrib V60    0.1271876954748787
#>     Attrib V7    0.021620942525693354
#>     Attrib V8    -0.3662818189692584
#>     Attrib V9    0.8762297450121523
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.7010848611697292
#>     Attrib V1    0.28993572047874633
#>     Attrib V10    -0.6682288541705216
#>     Attrib V11    -0.6216054586585692
#>     Attrib V12    -1.1397297994313778
#>     Attrib V13    -0.6220079562721738
#>     Attrib V14    0.3762654674218342
#>     Attrib V15    0.31711573075508376
#>     Attrib V16    -0.19989917930959653
#>     Attrib V17    -0.23550227707796392
#>     Attrib V18    0.14691051661522478
#>     Attrib V19    -0.18527839862885043
#>     Attrib V2    -0.20612234271260865
#>     Attrib V20    -0.29889674557321055
#>     Attrib V21    -0.5164199886294599
#>     Attrib V22    -0.9898687679165421
#>     Attrib V23    -0.3121172656597267
#>     Attrib V24    -0.4547138008225036
#>     Attrib V25    -0.0020297081087879993
#>     Attrib V26    0.4486133441515015
#>     Attrib V27    0.2791975190859072
#>     Attrib V28    -0.13908149667198805
#>     Attrib V29    -0.05750147950072537
#>     Attrib V3    0.7639459343189093
#>     Attrib V30    -0.8987571386425873
#>     Attrib V31    0.5525276382661839
#>     Attrib V32    0.01321652961901263
#>     Attrib V33    -0.33758031632837193
#>     Attrib V34    0.17977369388852996
#>     Attrib V35    0.28054003886742235
#>     Attrib V36    0.6685075014600924
#>     Attrib V37    0.8239559245468198
#>     Attrib V38    0.08226691747226113
#>     Attrib V39    -0.3377042492968896
#>     Attrib V4    -0.2356048411968471
#>     Attrib V40    -0.5494587473745632
#>     Attrib V41    -0.41972072967671165
#>     Attrib V42    0.2247168894721507
#>     Attrib V43    -0.36139354298080856
#>     Attrib V44    -0.43055311099609994
#>     Attrib V45    -0.5828636036659388
#>     Attrib V46    -0.5409441503415771
#>     Attrib V47    0.04871504023310067
#>     Attrib V48    0.06272929840538387
#>     Attrib V49    -0.9219084826841604
#>     Attrib V5    0.4148120912250877
#>     Attrib V50    0.9255128075435844
#>     Attrib V51    -0.3726224602443714
#>     Attrib V52    -0.28986914068820463
#>     Attrib V53    -0.39637537032745207
#>     Attrib V54    -0.025163766160904842
#>     Attrib V55    1.2696162028251883
#>     Attrib V56    -0.5016343783458862
#>     Attrib V57    0.8290095859732445
#>     Attrib V58    0.11643477675424783
#>     Attrib V59    -0.5243603804334178
#>     Attrib V6    -0.04646009747641184
#>     Attrib V60    -0.07580979117337155
#>     Attrib V7    -0.06076092073779392
#>     Attrib V8    0.3397675431535999
#>     Attrib V9    -1.061305726330702
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.04260582412765982
#>     Attrib V1    0.18852406206992756
#>     Attrib V10    0.1460842724574668
#>     Attrib V11    0.10441815809234728
#>     Attrib V12    0.14183053003827029
#>     Attrib V13    0.19716786527729138
#>     Attrib V14    0.16807709647063762
#>     Attrib V15    0.062221287291593805
#>     Attrib V16    0.1645762094286477
#>     Attrib V17    0.14599470871366638
#>     Attrib V18    0.08689562808767694
#>     Attrib V19    0.12867381697814997
#>     Attrib V2    0.15793060462606745
#>     Attrib V20    0.3058840400860198
#>     Attrib V21    0.2993918075938965
#>     Attrib V22    0.10051098330092774
#>     Attrib V23    -0.12158507223418782
#>     Attrib V24    -0.04921294926132917
#>     Attrib V25    -0.2653840923042154
#>     Attrib V26    -0.403845374638048
#>     Attrib V27    -0.3307075123318737
#>     Attrib V28    -0.2909451128294932
#>     Attrib V29    -0.25841650823862417
#>     Attrib V3    -0.05323764260277258
#>     Attrib V30    -0.06726373613317123
#>     Attrib V31    -0.3035753900713487
#>     Attrib V32    -0.18526829290183242
#>     Attrib V33    -0.015391152184605595
#>     Attrib V34    -0.17010993293393942
#>     Attrib V35    -0.09420768874724596
#>     Attrib V36    -0.14579326031316986
#>     Attrib V37    -0.21138159352776775
#>     Attrib V38    -0.03109988920805682
#>     Attrib V39    0.08118648160717785
#>     Attrib V4    0.3418526596187745
#>     Attrib V40    -2.6967227495704074E-4
#>     Attrib V41    -0.228664593951272
#>     Attrib V42    -0.08809033256430773
#>     Attrib V43    0.24837714917221823
#>     Attrib V44    0.16818500154693264
#>     Attrib V45    0.02692332503667651
#>     Attrib V46    -0.011500612716408117
#>     Attrib V47    -0.1808738667975728
#>     Attrib V48    -0.056589803435059476
#>     Attrib V49    0.23752518175409268
#>     Attrib V5    0.006575850644419529
#>     Attrib V50    -0.007172453887634541
#>     Attrib V51    0.13258581920540846
#>     Attrib V52    0.18069508620148506
#>     Attrib V53    0.18482077729142815
#>     Attrib V54    0.16207792924310896
#>     Attrib V55    -0.063877701403828
#>     Attrib V56    0.28293101548847893
#>     Attrib V57    -0.020862241705833565
#>     Attrib V58    0.3063941024973849
#>     Attrib V59    0.3031032345716228
#>     Attrib V6    0.014438544633098412
#>     Attrib V60    0.19706948610422514
#>     Attrib V7    0.2551604373653266
#>     Attrib V8    0.032649820898322975
#>     Attrib V9    0.30867558931217476
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.10769971196365358
#>     Attrib V1    0.16741409986685474
#>     Attrib V10    0.052066939113846085
#>     Attrib V11    0.10383252619618005
#>     Attrib V12    0.1880375075529695
#>     Attrib V13    0.20466221340174917
#>     Attrib V14    0.11331191806065982
#>     Attrib V15    0.043746501581573005
#>     Attrib V16    0.09517111599105094
#>     Attrib V17    0.22539907299262618
#>     Attrib V18    0.1294496556151148
#>     Attrib V19    0.18795464910978443
#>     Attrib V2    0.08965362988234923
#>     Attrib V20    0.31883275198659644
#>     Attrib V21    0.32559389425258395
#>     Attrib V22    0.16289398870516336
#>     Attrib V23    -0.018168807322237666
#>     Attrib V24    -0.03657376167699308
#>     Attrib V25    -0.20137529677299149
#>     Attrib V26    -0.35920557890873084
#>     Attrib V27    -0.3688821181698653
#>     Attrib V28    -0.3192940618848675
#>     Attrib V29    -0.37642625593967216
#>     Attrib V3    -0.045813746723592265
#>     Attrib V30    -0.08911891390972874
#>     Attrib V31    -0.4083589482358844
#>     Attrib V32    -0.19603792474816956
#>     Attrib V33    0.037761156452711414
#>     Attrib V34    -0.17761450194920106
#>     Attrib V35    -0.03101017848993128
#>     Attrib V36    -0.11661824699227552
#>     Attrib V37    -0.16048179988872857
#>     Attrib V38    0.02223791007074707
#>     Attrib V39    0.13641639329577138
#>     Attrib V4    0.373861311063149
#>     Attrib V40    -0.025220098261874647
#>     Attrib V41    -0.18394626142063839
#>     Attrib V42    -0.05589085423266271
#>     Attrib V43    0.28647564473706627
#>     Attrib V44    0.21778499157255432
#>     Attrib V45    0.12333904115966052
#>     Attrib V46    -0.021100579758201208
#>     Attrib V47    -0.12368806624204856
#>     Attrib V48    -0.1526462586489848
#>     Attrib V49    0.22435600950307663
#>     Attrib V5    -0.0233337486311127
#>     Attrib V50    -0.0673997682518978
#>     Attrib V51    0.09480406034156681
#>     Attrib V52    0.1946170887167294
#>     Attrib V53    0.24519834945974728
#>     Attrib V54    0.1515008936782476
#>     Attrib V55    -0.1374695124537566
#>     Attrib V56    0.3179459285969983
#>     Attrib V57    -0.0819147101714155
#>     Attrib V58    0.2307536877780414
#>     Attrib V59    0.377208376933298
#>     Attrib V6    -0.02583125449828326
#>     Attrib V60    0.12733930433017446
#>     Attrib V7    0.23143441159446645
#>     Attrib V8    0.050458996148799
#>     Attrib V9    0.29587843324941204
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.38262032375856825
#>     Attrib V1    0.07060086935697318
#>     Attrib V10    -0.41643030429467603
#>     Attrib V11    -0.169241655764231
#>     Attrib V12    -0.36070908260166085
#>     Attrib V13    -0.09976323396639768
#>     Attrib V14    0.3808178359426317
#>     Attrib V15    0.43934667726323456
#>     Attrib V16    -0.01736358106138148
#>     Attrib V17    0.005453213215809715
#>     Attrib V18    0.1969740866626366
#>     Attrib V19    -0.06792053634556221
#>     Attrib V2    -0.15226390618823527
#>     Attrib V20    -0.31663224787494576
#>     Attrib V21    -0.5283432319902538
#>     Attrib V22    -0.7463388523558951
#>     Attrib V23    -0.4260160628126344
#>     Attrib V24    -0.5885243900015871
#>     Attrib V25    -0.002632922477489768
#>     Attrib V26    0.5147055222993332
#>     Attrib V27    0.31065583415983106
#>     Attrib V28    0.02994895835589155
#>     Attrib V29    0.16348468352235923
#>     Attrib V3    0.5280474925337232
#>     Attrib V30    -0.47475587541570496
#>     Attrib V31    0.5077671348181565
#>     Attrib V32    0.17763719714864606
#>     Attrib V33    -0.24340643844622487
#>     Attrib V34    0.16019560422454326
#>     Attrib V35    -0.0064866875836546226
#>     Attrib V36    0.1212574929000768
#>     Attrib V37    0.2779849767363621
#>     Attrib V38    -0.2015672429322949
#>     Attrib V39    -0.4378325226500722
#>     Attrib V4    -0.273991740420518
#>     Attrib V40    -0.31136564307475906
#>     Attrib V41    -0.15202892810752247
#>     Attrib V42    0.028238088071968155
#>     Attrib V43    -0.5284444803253382
#>     Attrib V44    -0.6326050269354404
#>     Attrib V45    -0.6198347440303157
#>     Attrib V46    -0.40998390825279457
#>     Attrib V47    0.09925420135139908
#>     Attrib V48    0.07590121093520791
#>     Attrib V49    -0.7364657649625895
#>     Attrib V5    0.2465949257933946
#>     Attrib V50    0.5066160058851724
#>     Attrib V51    -0.28784047368407883
#>     Attrib V52    -0.17503885373197867
#>     Attrib V53    -0.1720474840493624
#>     Attrib V54    -0.13536710730431248
#>     Attrib V55    0.7853470082598387
#>     Attrib V56    -0.2958335732295092
#>     Attrib V57    0.4073037016270631
#>     Attrib V58    0.035191194213198065
#>     Attrib V59    -0.5349583414716659
#>     Attrib V6    0.1098392479182437
#>     Attrib V60    0.0035996803712969217
#>     Attrib V7    -0.16932400530427744
#>     Attrib V8    0.09942918151182677
#>     Attrib V9    -0.7611442173776125
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.3417411724856327
#>     Attrib V1    0.00499392406932583
#>     Attrib V10    1.0052763029975644
#>     Attrib V11    0.666694100319175
#>     Attrib V12    1.354438814717842
#>     Attrib V13    0.8885781515842612
#>     Attrib V14    -0.2696648071847033
#>     Attrib V15    -0.4410310051850412
#>     Attrib V16    -0.4279174557634312
#>     Attrib V17    -0.6754822487829082
#>     Attrib V18    -0.6149672465218172
#>     Attrib V19    -0.4539005902168593
#>     Attrib V2    0.8965453952316782
#>     Attrib V20    -0.6055846547304301
#>     Attrib V21    -0.11589291174693052
#>     Attrib V22    0.8410680603109119
#>     Attrib V23    0.4099074563107321
#>     Attrib V24    0.20051871139628433
#>     Attrib V25    -0.09691093966385944
#>     Attrib V26    0.6258856930206689
#>     Attrib V27    1.124733211969411
#>     Attrib V28    1.3215284495336228
#>     Attrib V29    1.3799071431831427
#>     Attrib V3    0.11614171995030687
#>     Attrib V30    1.0830831315004572
#>     Attrib V31    -0.4274513822821246
#>     Attrib V32    -0.46281609838997345
#>     Attrib V33    -0.6026562710880121
#>     Attrib V34    -0.3010991565237778
#>     Attrib V35    -0.25707572033052023
#>     Attrib V36    -0.5927216859166612
#>     Attrib V37    -0.4415171298775807
#>     Attrib V38    -0.2759497504067957
#>     Attrib V39    0.2688493485357743
#>     Attrib V4    0.5137400204945342
#>     Attrib V40    0.8661434367323901
#>     Attrib V41    1.5032443901468326
#>     Attrib V42    -0.39111652891431803
#>     Attrib V43    -0.20168753162999054
#>     Attrib V44    0.047200477825692866
#>     Attrib V45    0.598460930590307
#>     Attrib V46    0.6748879504193759
#>     Attrib V47    0.27076467005004756
#>     Attrib V48    0.23006774647500539
#>     Attrib V49    0.9385746766068976
#>     Attrib V5    0.30535008748657
#>     Attrib V50    -0.6994750061918248
#>     Attrib V51    0.7991561960084208
#>     Attrib V52    0.8276248889363912
#>     Attrib V53    0.7850379930052557
#>     Attrib V54    -0.04246686495137706
#>     Attrib V55    -0.725726675014745
#>     Attrib V56    -0.3057567309794164
#>     Attrib V57    -0.5106897093876616
#>     Attrib V58    -0.2129576337673094
#>     Attrib V59    0.4524791374584127
#>     Attrib V6    0.5813584101195592
#>     Attrib V60    0.16887137710212075
#>     Attrib V7    -0.1938153628093062
#>     Attrib V8    -0.6653408494163783
#>     Attrib V9    0.9844486329779643
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.4571042176355857
#>     Attrib V1    0.09241281529064417
#>     Attrib V10    -0.39217080260578696
#>     Attrib V11    -0.1914149692894839
#>     Attrib V12    -0.3779185452119625
#>     Attrib V13    -0.17862919036208938
#>     Attrib V14    0.3503322808987728
#>     Attrib V15    0.3148477836409734
#>     Attrib V16    0.02965923441350227
#>     Attrib V17    0.06811754437743552
#>     Attrib V18    0.2186105974860915
#>     Attrib V19    0.047282783195245114
#>     Attrib V2    -0.09653485821532322
#>     Attrib V20    -0.19006191552132284
#>     Attrib V21    -0.3416119515782977
#>     Attrib V22    -0.5378083621060348
#>     Attrib V23    -0.2880536331896093
#>     Attrib V24    -0.4147157431449474
#>     Attrib V25    0.06323627561443164
#>     Attrib V26    0.4099330704744341
#>     Attrib V27    0.2759388577179905
#>     Attrib V28    -0.03552142806254217
#>     Attrib V29    0.10802935287694486
#>     Attrib V3    0.44227380003164096
#>     Attrib V30    -0.4175970839154224
#>     Attrib V31    0.38695107862646494
#>     Attrib V32    0.03242043297192724
#>     Attrib V33    -0.1803468480244449
#>     Attrib V34    0.10900252458821318
#>     Attrib V35    0.05889484357364169
#>     Attrib V36    0.20960935364045735
#>     Attrib V37    0.37768459956634637
#>     Attrib V38    -0.10795649855851633
#>     Attrib V39    -0.3123254998495504
#>     Attrib V4    -0.20404707668182911
#>     Attrib V40    -0.32273698271645046
#>     Attrib V41    -0.20626518172989955
#>     Attrib V42    0.0990068233256783
#>     Attrib V43    -0.4207559640311186
#>     Attrib V44    -0.40523000777915136
#>     Attrib V45    -0.4124820261986948
#>     Attrib V46    -0.3162290834956687
#>     Attrib V47    0.10421455876763343
#>     Attrib V48    0.1425135651339232
#>     Attrib V49    -0.5966589655376371
#>     Attrib V5    0.2597432435660584
#>     Attrib V50    0.5064442234905709
#>     Attrib V51    -0.29219241000566537
#>     Attrib V52    -0.2718323297989283
#>     Attrib V53    -0.19139146755542852
#>     Attrib V54    -0.055530929585980826
#>     Attrib V55    0.7068315001186796
#>     Attrib V56    -0.2598134902838669
#>     Attrib V57    0.3961046030673744
#>     Attrib V58    -0.010907773779472626
#>     Attrib V59    -0.44045288480311134
#>     Attrib V6    0.09480004224436113
#>     Attrib V60    0.01638237662961787
#>     Attrib V7    -0.13929502781451675
#>     Attrib V8    0.14115052369816658
#>     Attrib V9    -0.7304004305797183
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.40943713650766794
#>     Attrib V1    0.2022602063718214
#>     Attrib V10    0.5183793988156327
#>     Attrib V11    0.32676654675032835
#>     Attrib V12    0.4281898242024606
#>     Attrib V13    0.3724342992956751
#>     Attrib V14    -0.0500864055499599
#>     Attrib V15    -0.07936310682148821
#>     Attrib V16    -0.011653332643842093
#>     Attrib V17    0.020976275724921594
#>     Attrib V18    -9.355581751724018E-4
#>     Attrib V19    0.011140212940922416
#>     Attrib V2    0.2200642983845063
#>     Attrib V20    0.19030561760841605
#>     Attrib V21    0.5150878730779903
#>     Attrib V22    0.41975748132945156
#>     Attrib V23    -0.04423607281195532
#>     Attrib V24    0.024279046682195573
#>     Attrib V25    -0.2898061595688476
#>     Attrib V26    -0.41836694628813353
#>     Attrib V27    -0.3252758519996221
#>     Attrib V28    -0.19064601698900793
#>     Attrib V29    -0.24231920422197187
#>     Attrib V3    -0.3129994005390164
#>     Attrib V30    0.25991036299197184
#>     Attrib V31    -0.492712262896922
#>     Attrib V32    -0.12173535464722679
#>     Attrib V33    0.12465003791241219
#>     Attrib V34    -0.32378458483368416
#>     Attrib V35    -0.3119169418572326
#>     Attrib V36    -0.3459569622177068
#>     Attrib V37    -0.47131875917800176
#>     Attrib V38    -0.07485991135548208
#>     Attrib V39    0.22616875783730328
#>     Attrib V4    0.4848716367705484
#>     Attrib V40    0.002783743080057138
#>     Attrib V41    -0.13826579819197268
#>     Attrib V42    -0.10386983034647859
#>     Attrib V43    0.2806577903054454
#>     Attrib V44    0.32475122255864985
#>     Attrib V45    0.27810569444093636
#>     Attrib V46    -0.055822471411021105
#>     Attrib V47    -0.3302829346044193
#>     Attrib V48    -0.08555174094961612
#>     Attrib V49    0.5211082515543674
#>     Attrib V5    -0.1969166996974058
#>     Attrib V50    -0.20827817328516463
#>     Attrib V51    0.29711996325564355
#>     Attrib V52    0.352300697582051
#>     Attrib V53    0.24224921789919324
#>     Attrib V54    0.14061076890617186
#>     Attrib V55    -0.4736885667428658
#>     Attrib V56    0.1597463610236943
#>     Attrib V57    -0.27957958627652624
#>     Attrib V58    0.2852354304704244
#>     Attrib V59    0.4198495178234555
#>     Attrib V6    0.015489834662084725
#>     Attrib V60    0.17772671071942026
#>     Attrib V7    0.40588567455340263
#>     Attrib V8    0.06462475732611851
#>     Attrib V9    0.794406930987853
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5947366842576156
#>     Attrib V1    0.38844133761909705
#>     Attrib V10    -0.5785348646434916
#>     Attrib V11    -0.6945629500700712
#>     Attrib V12    -1.4248330565031977
#>     Attrib V13    -0.896780766558761
#>     Attrib V14    0.42743652436482144
#>     Attrib V15    0.36288425148939696
#>     Attrib V16    -0.3164889822930493
#>     Attrib V17    -0.3490935206954198
#>     Attrib V18    -0.05847869731531787
#>     Attrib V19    -0.8620979811684527
#>     Attrib V2    -0.4123827481809088
#>     Attrib V20    -0.7798749997096075
#>     Attrib V21    -0.8510409697899498
#>     Attrib V22    -1.3308432918018858
#>     Attrib V23    -0.10279426555946182
#>     Attrib V24    -0.1046005528301329
#>     Attrib V25    0.08155364497011992
#>     Attrib V26    0.06297419870515773
#>     Attrib V27    -0.19101873262165753
#>     Attrib V28    -0.342881809746324
#>     Attrib V29    -0.3793703120342377
#>     Attrib V3    0.6245470669858129
#>     Attrib V30    -1.125140441303146
#>     Attrib V31    0.30159016381185727
#>     Attrib V32    0.21053496542550518
#>     Attrib V33    -0.1229657873959124
#>     Attrib V34    0.039949075817693885
#>     Attrib V35    0.49280973583385457
#>     Attrib V36    1.2253847065960053
#>     Attrib V37    1.18263919795722
#>     Attrib V38    0.2869503058904336
#>     Attrib V39    -0.09860836842265454
#>     Attrib V4    -0.3152037865605593
#>     Attrib V40    -0.6014310078827482
#>     Attrib V41    -0.5122577616064978
#>     Attrib V42    0.702375072874781
#>     Attrib V43    0.08980756286645741
#>     Attrib V44    -0.2754357498673494
#>     Attrib V45    -0.7549863159095493
#>     Attrib V46    -0.9977190547356471
#>     Attrib V47    -0.5517321366510345
#>     Attrib V48    -0.43357752403528665
#>     Attrib V49    -1.1808413178163153
#>     Attrib V5    -0.060720119801566476
#>     Attrib V50    0.7315824271833966
#>     Attrib V51    -0.3185847002774886
#>     Attrib V52    0.005335390361196813
#>     Attrib V53    -0.1372169723132744
#>     Attrib V54    0.054146898040720606
#>     Attrib V55    1.333127647207596
#>     Attrib V56    -0.25331070592216864
#>     Attrib V57    1.0330383462072772
#>     Attrib V58    0.61315778677748
#>     Attrib V59    -0.18967586791546498
#>     Attrib V6    -0.11092188846829175
#>     Attrib V60    0.119276376494335
#>     Attrib V7    0.2658259200213286
#>     Attrib V8    1.121055266886812
#>     Attrib V9    -0.734670568192504
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.4198494033552904
#>     Attrib V1    -0.14706762915300725
#>     Attrib V10    0.36597088764820085
#>     Attrib V11    0.18056076712540356
#>     Attrib V12    0.47791030933298995
#>     Attrib V13    0.20038196652332269
#>     Attrib V14    -0.32404789299911985
#>     Attrib V15    -0.3739430014194421
#>     Attrib V16    -0.10740634503528781
#>     Attrib V17    -0.11062404763242395
#>     Attrib V18    -0.3035267501326284
#>     Attrib V19    -0.14301732988984447
#>     Attrib V2    0.1254219779302087
#>     Attrib V20    0.07512589727308991
#>     Attrib V21    0.24178706712966053
#>     Attrib V22    0.4620510242519987
#>     Attrib V23    0.10659680922413023
#>     Attrib V24    0.34020694532783924
#>     Attrib V25    -0.00749470173975618
#>     Attrib V26    -0.4791015613853019
#>     Attrib V27    -0.18743789197831245
#>     Attrib V28    0.14814956175787605
#>     Attrib V29    -0.01356569616228771
#>     Attrib V3    -0.415968503045836
#>     Attrib V30    0.35586985546949235
#>     Attrib V31    -0.41798799757754673
#>     Attrib V32    0.016193482101172677
#>     Attrib V33    0.28568427461231366
#>     Attrib V34    -0.07045197244227007
#>     Attrib V35    0.0077959618553420165
#>     Attrib V36    -0.2570330526821643
#>     Attrib V37    -0.34606488311963207
#>     Attrib V38    -0.012593170921866478
#>     Attrib V39    0.26653395005597585
#>     Attrib V4    0.22851787852566105
#>     Attrib V40    0.32155645314628145
#>     Attrib V41    0.18421643547366126
#>     Attrib V42    -0.2139704924224184
#>     Attrib V43    0.35640478608095766
#>     Attrib V44    0.23504886671283468
#>     Attrib V45    0.3668126548712134
#>     Attrib V46    0.24017962364673004
#>     Attrib V47    -0.11877116554913375
#>     Attrib V48    -0.10376465964737878
#>     Attrib V49    0.5343200900112564
#>     Attrib V5    -0.32338193956213374
#>     Attrib V50    -0.4940600999796434
#>     Attrib V51    0.28098689371142266
#>     Attrib V52    0.3627355568745834
#>     Attrib V53    0.22210426374743195
#>     Attrib V54    -0.03079825953093468
#>     Attrib V55    -0.7913232526331031
#>     Attrib V56    0.2707768954010475
#>     Attrib V57    -0.4342095682463302
#>     Attrib V58    -0.017452061248027735
#>     Attrib V59    0.375295486140936
#>     Attrib V6    -0.0775381843644324
#>     Attrib V60    0.13018038239186103
#>     Attrib V7    0.06817552636834213
#>     Attrib V8    -0.2243781763027493
#>     Attrib V9    0.7383861069040317
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.37908209670746296
#>     Attrib V1    0.09324115997536081
#>     Attrib V10    -0.3106584001996722
#>     Attrib V11    -0.12634812785978725
#>     Attrib V12    -0.29861860629564657
#>     Attrib V13    0.0014732121445944217
#>     Attrib V14    0.37051695078438224
#>     Attrib V15    0.3901614701828975
#>     Attrib V16    -0.0015083068644245658
#>     Attrib V17    -0.0037948257595228473
#>     Attrib V18    0.18985614213828209
#>     Attrib V19    -0.08338475817572275
#>     Attrib V2    -0.11672961029370273
#>     Attrib V20    -0.3159409156339352
#>     Attrib V21    -0.4661721722184439
#>     Attrib V22    -0.6692345513298541
#>     Attrib V23    -0.43395027343131565
#>     Attrib V24    -0.5800153840240088
#>     Attrib V25    0.009656856142079772
#>     Attrib V26    0.4934636930424916
#>     Attrib V27    0.3264267587662451
#>     Attrib V28    0.041664429744380144
#>     Attrib V29    0.1196878570052664
#>     Attrib V3    0.4888815112444116
#>     Attrib V30    -0.4384107542221332
#>     Attrib V31    0.5277035362052171
#>     Attrib V32    0.08448065982799086
#>     Attrib V33    -0.2497905240390594
#>     Attrib V34    0.11148847058442775
#>     Attrib V35    0.019286227607720384
#>     Attrib V36    0.06632409847820984
#>     Attrib V37    0.31841234835806087
#>     Attrib V38    -0.22971014795864234
#>     Attrib V39    -0.35665159876000696
#>     Attrib V4    -0.25538038553414905
#>     Attrib V40    -0.3169093009631931
#>     Attrib V41    -0.1876938693901017
#>     Attrib V42    0.06002975701755212
#>     Attrib V43    -0.5656871625865934
#>     Attrib V44    -0.6290263818903695
#>     Attrib V45    -0.5563728481411585
#>     Attrib V46    -0.41194537200765086
#>     Attrib V47    0.010141613360950699
#>     Attrib V48    0.06092513463415244
#>     Attrib V49    -0.7029965917164397
#>     Attrib V5    0.21439603047769912
#>     Attrib V50    0.4201967855556036
#>     Attrib V51    -0.31173695040200416
#>     Attrib V52    -0.18811014290044348
#>     Attrib V53    -0.114090072781247
#>     Attrib V54    -0.12754844559962808
#>     Attrib V55    0.6993628807536693
#>     Attrib V56    -0.2647303004536876
#>     Attrib V57    0.3092362015406781
#>     Attrib V58    0.08780767325826229
#>     Attrib V59    -0.46143023264484445
#>     Attrib V6    0.07735296158405544
#>     Attrib V60    0.04321633749998209
#>     Attrib V7    -0.17334352119290905
#>     Attrib V8    0.06678573089178143
#>     Attrib V9    -0.7649339482784211
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.3221488636147949
#>     Attrib V1    0.3754101996885869
#>     Attrib V10    -0.001043749921473683
#>     Attrib V11    0.027118427485704335
#>     Attrib V12    0.12951801640192465
#>     Attrib V13    0.20733221334364638
#>     Attrib V14    0.031744476768575364
#>     Attrib V15    0.004651149820936248
#>     Attrib V16    0.28980605921373576
#>     Attrib V17    0.4221038912732378
#>     Attrib V18    0.17839233133881702
#>     Attrib V19    0.39901007281400575
#>     Attrib V2    0.22557041407722742
#>     Attrib V20    0.9574999745353344
#>     Attrib V21    0.9183290848144409
#>     Attrib V22    0.5332997742463491
#>     Attrib V23    0.20858786768084428
#>     Attrib V24    0.3185998993598623
#>     Attrib V25    -0.42919786975933916
#>     Attrib V26    -1.1239173422785798
#>     Attrib V27    -1.017085525153298
#>     Attrib V28    -0.7385128552335685
#>     Attrib V29    -0.8961276223159583
#>     Attrib V3    -0.3487417951161684
#>     Attrib V30    -0.03138003288393374
#>     Attrib V31    -0.7165662443443227
#>     Attrib V32    -0.19796514837076304
#>     Attrib V33    0.41463301627780136
#>     Attrib V34    -0.18147983705648912
#>     Attrib V35    -0.09377117547530814
#>     Attrib V36    -0.2796769753368653
#>     Attrib V37    -0.5044170872054946
#>     Attrib V38    0.24334158384243101
#>     Attrib V39    0.4409421589103845
#>     Attrib V4    0.6131509059996066
#>     Attrib V40    0.05994764567830106
#>     Attrib V41    -0.39006542657555743
#>     Attrib V42    0.14956710500256748
#>     Attrib V43    0.796568834493959
#>     Attrib V44    0.6093079565713638
#>     Attrib V45    0.19146646536851047
#>     Attrib V46    -0.013972811902567123
#>     Attrib V47    -0.4219824572886299
#>     Attrib V48    -0.3028678081930933
#>     Attrib V49    0.5611049324661586
#>     Attrib V5    -0.24533129844996535
#>     Attrib V50    -0.16481347675597294
#>     Attrib V51    0.13012073605482966
#>     Attrib V52    0.24144903463465
#>     Attrib V53    0.3490103609547009
#>     Attrib V54    0.5228666160107617
#>     Attrib V55    -0.4993054156339174
#>     Attrib V56    0.5706280970669272
#>     Attrib V57    -0.15395399453483527
#>     Attrib V58    0.3231182107098393
#>     Attrib V59    0.7633320237771338
#>     Attrib V6    -0.2149005970786491
#>     Attrib V60    0.27867990222341993
#>     Attrib V7    0.46674791309280383
#>     Attrib V8    0.14243951966754761
#>     Attrib V9    0.6457123112599661
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.013704204484505865
#>     Attrib V1    0.13364075267498812
#>     Attrib V10    0.05756533938237816
#>     Attrib V11    0.08022630970040683
#>     Attrib V12    0.12193365583698502
#>     Attrib V13    0.13117524693365845
#>     Attrib V14    0.1603080828058579
#>     Attrib V15    0.08670121417958948
#>     Attrib V16    0.13722384678993188
#>     Attrib V17    0.09628802526510095
#>     Attrib V18    0.13692118261335826
#>     Attrib V19    0.0925116747580402
#>     Attrib V2    0.0909240929106275
#>     Attrib V20    0.24668484218047998
#>     Attrib V21    0.2581595276962922
#>     Attrib V22    0.09296176875039869
#>     Attrib V23    -0.04831683069541239
#>     Attrib V24    -0.06932734250911737
#>     Attrib V25    -0.23333920400752123
#>     Attrib V26    -0.32685662573080476
#>     Attrib V27    -0.2560838001530272
#>     Attrib V28    -0.1705861010345102
#>     Attrib V29    -0.23055080792258348
#>     Attrib V3    -0.0028052658295597017
#>     Attrib V30    -0.02052791830993238
#>     Attrib V31    -0.32216656606389016
#>     Attrib V32    -0.1665792923397048
#>     Attrib V33    0.05389220991353112
#>     Attrib V34    -0.09580012572590631
#>     Attrib V35    -0.04068035224899991
#>     Attrib V36    -0.05861270987134516
#>     Attrib V37    -0.1556512325167835
#>     Attrib V38    -0.017761827550517452
#>     Attrib V39    0.09686442181400269
#>     Attrib V4    0.25629810947451476
#>     Attrib V40    -0.021588111730123098
#>     Attrib V41    -0.17343898970926377
#>     Attrib V42    -0.037221562911061774
#>     Attrib V43    0.12797289866418673
#>     Attrib V44    0.18369905999331138
#>     Attrib V45    0.13258963912252286
#>     Attrib V46    0.010140231983946915
#>     Attrib V47    -0.10033614843964664
#>     Attrib V48    -0.10119256029755205
#>     Attrib V49    0.21745324046281078
#>     Attrib V5    0.022954093924169743
#>     Attrib V50    -0.03161609243864011
#>     Attrib V51    0.14476099704734727
#>     Attrib V52    0.15790794380485904
#>     Attrib V53    0.18333107450753042
#>     Attrib V54    0.07629070294300519
#>     Attrib V55    -0.09106666372199824
#>     Attrib V56    0.2272730808538034
#>     Attrib V57    -0.024494895562582445
#>     Attrib V58    0.2597846592092005
#>     Attrib V59    0.24608761750146615
#>     Attrib V6    0.03847452907546879
#>     Attrib V60    0.11327195960535796
#>     Attrib V7    0.21094279941803834
#>     Attrib V8    0.1017886895539528
#>     Attrib V9    0.27125826201337133
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
#>  0.2028986 
```
