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
#>     Threshold    -0.4685353306264252
#>     Node 2    1.8546541147729774
#>     Node 3    1.4475244030034367
#>     Node 4    0.5080225592837387
#>     Node 5    -2.0594616395602836
#>     Node 6    1.0715226582206698
#>     Node 7    3.7668331438650817
#>     Node 8    0.42957031238217586
#>     Node 9    3.2235904500457995
#>     Node 10    -1.2835044446658597
#>     Node 11    1.2971315948524065
#>     Node 12    1.342417070874144
#>     Node 13    0.39640169935505193
#>     Node 14    1.9106391851665667
#>     Node 15    -2.362021558155755
#>     Node 16    0.6171137967084552
#>     Node 17    0.1399401047916663
#>     Node 18    -0.5327205496245946
#>     Node 19    2.159145875059108
#>     Node 20    0.9480590576153063
#>     Node 21    -2.881338755313336
#>     Node 22    1.5410268007442414
#>     Node 23    2.115849631862153
#>     Node 24    -1.388070783227037
#>     Node 25    3.952081042920356
#>     Node 26    0.0017434950890538124
#>     Node 27    1.2278927892851919
#>     Node 28    -2.5359395317350066
#>     Node 29    0.8585891022896951
#>     Node 30    0.3975064247408129
#>     Node 31    2.0581234742690713
#>     Node 32    0.23293256163403647
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.4746304583328886
#>     Node 2    -1.9121100799237598
#>     Node 3    -1.426156380591724
#>     Node 4    -0.46548466629869945
#>     Node 5    2.0861891174572627
#>     Node 6    -1.0451650385910936
#>     Node 7    -3.765346536232662
#>     Node 8    -0.4588469970871771
#>     Node 9    -3.2238641878232173
#>     Node 10    1.2190457422805585
#>     Node 11    -1.258165301366569
#>     Node 12    -1.41255757091514
#>     Node 13    -0.34235297571408396
#>     Node 14    -1.8446115279894573
#>     Node 15    2.338964263173389
#>     Node 16    -0.6314864103626235
#>     Node 17    -0.10580536074980217
#>     Node 18    0.5766833174291653
#>     Node 19    -2.157920865449227
#>     Node 20    -0.9379068125183206
#>     Node 21    2.9294866463010285
#>     Node 22    -1.5876766534035915
#>     Node 23    -2.1552716162666337
#>     Node 24    1.3845276365465766
#>     Node 25    -3.9469133003306585
#>     Node 26    -0.08634334313691773
#>     Node 27    -1.2609127021526427
#>     Node 28    2.502373410655498
#>     Node 29    -0.8887951431954113
#>     Node 30    -0.3203938308602757
#>     Node 31    -1.9969728038469003
#>     Node 32    -0.25027986617393355
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.25031091039933995
#>     Attrib V1    0.47214784865719905
#>     Attrib V10    0.6596370377987211
#>     Attrib V11    1.0471691689897171
#>     Attrib V12    0.7977483703166972
#>     Attrib V13    -0.28215397370449247
#>     Attrib V14    -0.6835157780710358
#>     Attrib V15    -0.2443773164234533
#>     Attrib V16    -0.3396678003487123
#>     Attrib V17    -0.35281372369089853
#>     Attrib V18    -0.4749077184786411
#>     Attrib V19    -0.059750788321256354
#>     Attrib V2    0.09235046397180019
#>     Attrib V20    0.00577676896644837
#>     Attrib V21    0.038494101610608206
#>     Attrib V22    -0.06742813975566793
#>     Attrib V23    0.0960348703179371
#>     Attrib V24    0.4965927740556533
#>     Attrib V25    0.5618266439618625
#>     Attrib V26    0.3571985673730918
#>     Attrib V27    0.5151616552055082
#>     Attrib V28    0.9928785369010628
#>     Attrib V29    0.5024579069417842
#>     Attrib V3    0.06638373971329442
#>     Attrib V30    0.6425953601291737
#>     Attrib V31    -0.6739491154866661
#>     Attrib V32    -0.13811641009935813
#>     Attrib V33    -0.18856655305849376
#>     Attrib V34    -0.2875371481539396
#>     Attrib V35    0.13777355271841296
#>     Attrib V36    -0.6074693602743884
#>     Attrib V37    -0.2657172688410782
#>     Attrib V38    0.26376266439058405
#>     Attrib V39    0.2179952253878456
#>     Attrib V4    0.05451302069371464
#>     Attrib V40    -0.037189621217095306
#>     Attrib V41    0.7017322427063606
#>     Attrib V42    -0.03138293488773345
#>     Attrib V43    -0.26230682281425305
#>     Attrib V44    0.1538215526956343
#>     Attrib V45    0.630231864111442
#>     Attrib V46    0.5435798721608438
#>     Attrib V47    0.5162021556017418
#>     Attrib V48    0.30653786929469967
#>     Attrib V49    0.6532966266079767
#>     Attrib V5    0.38842927490861473
#>     Attrib V50    -0.29941651643501355
#>     Attrib V51    0.35892252332040736
#>     Attrib V52    0.24719348522634543
#>     Attrib V53    0.4341166514594847
#>     Attrib V54    0.14131847912610127
#>     Attrib V55    0.003163147048847324
#>     Attrib V56    -0.25489517436534354
#>     Attrib V57    -0.0948123766810484
#>     Attrib V58    0.0962110157681605
#>     Attrib V59    -0.27465977230688476
#>     Attrib V6    -0.07379806527052903
#>     Attrib V60    -0.1194635291105004
#>     Attrib V7    -0.5264617617705193
#>     Attrib V8    0.15691448697169175
#>     Attrib V9    0.8023425132722021
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.08229323588627133
#>     Attrib V1    0.4213702311425629
#>     Attrib V10    -0.14465095562972552
#>     Attrib V11    0.14555309682589423
#>     Attrib V12    -0.01839878940081623
#>     Attrib V13    -0.2709045353992792
#>     Attrib V14    0.07837706316604277
#>     Attrib V15    0.46656597563344676
#>     Attrib V16    0.36431877027860016
#>     Attrib V17    0.2279762309157577
#>     Attrib V18    -0.05156634384892057
#>     Attrib V19    0.35124600428497676
#>     Attrib V2    0.15606931279574057
#>     Attrib V20    0.4139997299439642
#>     Attrib V21    0.30064990300790206
#>     Attrib V22    0.09983334258250245
#>     Attrib V23    -0.04281515595690655
#>     Attrib V24    -0.01810360135853156
#>     Attrib V25    -0.17578149060230594
#>     Attrib V26    -0.7377036617002906
#>     Attrib V27    -0.5813947579767266
#>     Attrib V28    -0.2550715859374442
#>     Attrib V29    -0.31665482295184494
#>     Attrib V3    0.015364345921478562
#>     Attrib V30    -0.10359473036336882
#>     Attrib V31    -1.056069121059
#>     Attrib V32    -0.04661306635027286
#>     Attrib V33    0.4929859888207358
#>     Attrib V34    -0.09573677212201051
#>     Attrib V35    -0.17567972775601445
#>     Attrib V36    -0.5194344897532166
#>     Attrib V37    -0.7692206958601142
#>     Attrib V38    -0.027591465681982057
#>     Attrib V39    0.2080726672606677
#>     Attrib V4    0.19525137164828965
#>     Attrib V40    -0.1085087367229797
#>     Attrib V41    0.2672350622357097
#>     Attrib V42    0.4752868724320129
#>     Attrib V43    0.12730842235780618
#>     Attrib V44    0.1711042331619944
#>     Attrib V45    0.22485039753011743
#>     Attrib V46    -0.10728774999895095
#>     Attrib V47    -0.04190080826586909
#>     Attrib V48    -0.06728623900451726
#>     Attrib V49    0.005410968702006225
#>     Attrib V5    0.24723796743762785
#>     Attrib V50    -0.5174940595737986
#>     Attrib V51    -0.2195633723976791
#>     Attrib V52    -0.02736477463019162
#>     Attrib V53    0.1629948689903059
#>     Attrib V54    0.43393787724696853
#>     Attrib V55    0.035561780462987753
#>     Attrib V56    0.15047772986346208
#>     Attrib V57    0.07562812510756892
#>     Attrib V58    0.3085572950089885
#>     Attrib V59    0.014443004949892303
#>     Attrib V6    -0.013278193363900495
#>     Attrib V60    -0.009552874764804143
#>     Attrib V7    -0.31293034354499577
#>     Attrib V8    0.3564269168055708
#>     Attrib V9    0.2562994492569758
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.07661861508596436
#>     Attrib V1    0.14570045306815976
#>     Attrib V10    0.0065333302487824785
#>     Attrib V11    0.14505848509561617
#>     Attrib V12    0.04435335023090469
#>     Attrib V13    -0.07061712617326843
#>     Attrib V14    0.04933212271804384
#>     Attrib V15    0.16935254312896908
#>     Attrib V16    0.08977599390700979
#>     Attrib V17    0.030819717053840793
#>     Attrib V18    -0.1095022421767147
#>     Attrib V19    0.021503245395099246
#>     Attrib V2    0.07259931621266935
#>     Attrib V20    0.08850984947937876
#>     Attrib V21    0.04791974184417231
#>     Attrib V22    -0.14449803485527407
#>     Attrib V23    -0.12522387255224504
#>     Attrib V24    -0.0794278766948419
#>     Attrib V25    -0.09756267215746964
#>     Attrib V26    -0.2179486534968612
#>     Attrib V27    -0.18509329199818172
#>     Attrib V28    0.03564403267848763
#>     Attrib V29    -0.015599824578476576
#>     Attrib V3    0.08803016275601629
#>     Attrib V30    0.0016249655055440848
#>     Attrib V31    -0.3321148015927789
#>     Attrib V32    -0.044956426240888754
#>     Attrib V33    0.16081591502339787
#>     Attrib V34    0.03655828713476423
#>     Attrib V35    -0.008112647609009467
#>     Attrib V36    -0.19109442330216656
#>     Attrib V37    -0.2015218483028931
#>     Attrib V38    -0.004191841073552506
#>     Attrib V39    0.10800372556958235
#>     Attrib V4    0.08862365362824154
#>     Attrib V40    -0.025045472878110663
#>     Attrib V41    0.021332636545343068
#>     Attrib V42    0.09962527360965814
#>     Attrib V43    -0.04211742678395674
#>     Attrib V44    0.05802226777315624
#>     Attrib V45    0.20897620846864765
#>     Attrib V46    0.03092885453317526
#>     Attrib V47    0.05620197926883267
#>     Attrib V48    0.13299313439429433
#>     Attrib V49    0.14812419816074407
#>     Attrib V5    0.13114936026398416
#>     Attrib V50    -0.08921503816555275
#>     Attrib V51    0.041796815927727826
#>     Attrib V52    0.052605076784640346
#>     Attrib V53    0.11702948572003562
#>     Attrib V54    0.11354327430146416
#>     Attrib V55    0.10054628249429062
#>     Attrib V56    0.0870565883822883
#>     Attrib V57    0.16495524585864632
#>     Attrib V58    0.10828333802546429
#>     Attrib V59    0.011383208237810973
#>     Attrib V6    -0.05228273930836608
#>     Attrib V60    -0.03354019534734149
#>     Attrib V7    -0.12606111215367977
#>     Attrib V8    0.09397107447281532
#>     Attrib V9    0.16618099987545884
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.43896341563693253
#>     Attrib V1    -0.46103303885577057
#>     Attrib V10    0.015552772608633811
#>     Attrib V11    -0.7157124567051871
#>     Attrib V12    -0.6258051664575089
#>     Attrib V13    0.3598845100174807
#>     Attrib V14    0.6419536786106786
#>     Attrib V15    0.20146655779888276
#>     Attrib V16    0.3699594181653424
#>     Attrib V17    0.551467555693119
#>     Attrib V18    0.6180176099035073
#>     Attrib V19    -0.340705734493999
#>     Attrib V2    0.04175859684619449
#>     Attrib V20    -0.5808791099015225
#>     Attrib V21    -0.49948083136483157
#>     Attrib V22    -0.2887314307947768
#>     Attrib V23    -0.25252518039391325
#>     Attrib V24    -0.42609059846292496
#>     Attrib V25    0.1001002386023295
#>     Attrib V26    0.5407907485343612
#>     Attrib V27    0.14792541793240685
#>     Attrib V28    -0.4037943870893219
#>     Attrib V29    -0.06853043943905045
#>     Attrib V3    0.14490485380960882
#>     Attrib V30    0.0731420539522526
#>     Attrib V31    1.5537916233136202
#>     Attrib V32    0.25502150319054495
#>     Attrib V33    -0.20635408596381347
#>     Attrib V34    0.15444459482029219
#>     Attrib V35    -0.13108008716737124
#>     Attrib V36    0.8357069965473222
#>     Attrib V37    0.9108586019529473
#>     Attrib V38    -0.06308172914333735
#>     Attrib V39    -0.22387433537592946
#>     Attrib V4    -0.16700235388611398
#>     Attrib V40    0.27814428288922527
#>     Attrib V41    -0.8637116821185257
#>     Attrib V42    -0.46297911157194027
#>     Attrib V43    -0.14017061197264927
#>     Attrib V44    -0.12774405661210134
#>     Attrib V45    -0.4218161080653834
#>     Attrib V46    -0.3193403677997767
#>     Attrib V47    -0.31852720936565204
#>     Attrib V48    -0.013578636352137035
#>     Attrib V49    -0.5974344339042267
#>     Attrib V5    -0.41443347398716196
#>     Attrib V50    0.7359858764064986
#>     Attrib V51    -0.009185001742108921
#>     Attrib V52    -0.05600070080134171
#>     Attrib V53    -0.4686139162212582
#>     Attrib V54    -0.3028321695561772
#>     Attrib V55    0.20126875752428156
#>     Attrib V56    0.29713630567633514
#>     Attrib V57    0.15599239207061594
#>     Attrib V58    -0.451242920815737
#>     Attrib V59    0.10169531738322801
#>     Attrib V6    0.31844899349352135
#>     Attrib V60    0.40904318942699464
#>     Attrib V7    1.2717218599911027
#>     Attrib V8    0.04339015325181489
#>     Attrib V9    -0.5512763640038016
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.08906863245959434
#>     Attrib V1    0.33879377212605555
#>     Attrib V10    -0.1597627106361166
#>     Attrib V11    0.11682603513773153
#>     Attrib V12    0.025782120242613303
#>     Attrib V13    -0.23851236870665582
#>     Attrib V14    0.05673402948310514
#>     Attrib V15    0.32420113205917317
#>     Attrib V16    0.35363894535371276
#>     Attrib V17    0.16881223052500827
#>     Attrib V18    0.03982429518983909
#>     Attrib V19    0.23121653397607184
#>     Attrib V2    0.12679301837553075
#>     Attrib V20    0.3258844737448058
#>     Attrib V21    0.25879167190138075
#>     Attrib V22    -0.011309997919604176
#>     Attrib V23    -0.08329940464943394
#>     Attrib V24    0.01259955933481906
#>     Attrib V25    -0.09321552833399196
#>     Attrib V26    -0.5111440580877569
#>     Attrib V27    -0.3763011485417829
#>     Attrib V28    -0.2062996378704721
#>     Attrib V29    -0.19773660643217164
#>     Attrib V3    0.019762092541359032
#>     Attrib V30    -0.11206656668047212
#>     Attrib V31    -0.8077947445821914
#>     Attrib V32    -0.024667212236491314
#>     Attrib V33    0.3674304256282549
#>     Attrib V34    -0.04372279681563289
#>     Attrib V35    -0.09819444438184968
#>     Attrib V36    -0.4130823490804245
#>     Attrib V37    -0.5527327509982494
#>     Attrib V38    -0.0337451979089953
#>     Attrib V39    0.11246031709631778
#>     Attrib V4    0.18232962191725702
#>     Attrib V40    -0.11949271631423897
#>     Attrib V41    0.21149761632379077
#>     Attrib V42    0.34749786978529645
#>     Attrib V43    0.07398710106893355
#>     Attrib V44    0.0782102340100745
#>     Attrib V45    0.1590076398411335
#>     Attrib V46    -0.06228607829629315
#>     Attrib V47    -0.07118572769973229
#>     Attrib V48    -0.06548407022429623
#>     Attrib V49    0.0069186601524366086
#>     Attrib V5    0.18355662199130507
#>     Attrib V50    -0.3335399102618621
#>     Attrib V51    -0.1371766276662343
#>     Attrib V52    -0.05936633287397276
#>     Attrib V53    0.21189331521442872
#>     Attrib V54    0.29143527031387056
#>     Attrib V55    0.025912046023115698
#>     Attrib V56    0.1287316238375366
#>     Attrib V57    0.1096664888038506
#>     Attrib V58    0.22573189245623765
#>     Attrib V59    0.04388847803938098
#>     Attrib V6    0.040701202820972886
#>     Attrib V60    0.043504761452022395
#>     Attrib V7    -0.20525587849606586
#>     Attrib V8    0.27032811453796407
#>     Attrib V9    0.25525423497800315
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5592161589993742
#>     Attrib V1    0.6715513182567725
#>     Attrib V10    1.2683064245927103
#>     Attrib V11    1.7337047052284547
#>     Attrib V12    1.5826258858207336
#>     Attrib V13    -0.10931081381528938
#>     Attrib V14    -1.2136803997768335
#>     Attrib V15    -0.46944846867587886
#>     Attrib V16    -0.6426839603460411
#>     Attrib V17    -0.4993420763370566
#>     Attrib V18    -0.7481137978372947
#>     Attrib V19    -0.28557696080821954
#>     Attrib V2    0.21826924271211284
#>     Attrib V20    -0.017649799446207204
#>     Attrib V21    0.1355857753313394
#>     Attrib V22    -0.06348928717183107
#>     Attrib V23    0.47154914927726094
#>     Attrib V24    0.949563253433779
#>     Attrib V25    0.7921549736862463
#>     Attrib V26    0.8514697672712401
#>     Attrib V27    1.013820265213986
#>     Attrib V28    1.6220435912362605
#>     Attrib V29    0.9405116821993155
#>     Attrib V3    0.22645482215200832
#>     Attrib V30    0.8301271495641701
#>     Attrib V31    -0.6223591257167378
#>     Attrib V32    -0.4358670507361333
#>     Attrib V33    -0.9283854860875829
#>     Attrib V34    -0.7038176025648718
#>     Attrib V35    0.22211016947491427
#>     Attrib V36    -0.9278355515981975
#>     Attrib V37    0.3583070076250334
#>     Attrib V38    0.487550700754344
#>     Attrib V39    0.16533876615684023
#>     Attrib V4    -0.12920804381306883
#>     Attrib V40    0.09846416731138705
#>     Attrib V41    1.144201676123854
#>     Attrib V42    -0.4610961570072309
#>     Attrib V43    -0.44369188765071
#>     Attrib V44    0.18782043564575712
#>     Attrib V45    0.9570351773195012
#>     Attrib V46    1.109998365663433
#>     Attrib V47    0.893507073530528
#>     Attrib V48    0.30571230006143485
#>     Attrib V49    1.0184109247842492
#>     Attrib V5    0.4307988917589708
#>     Attrib V50    0.12206767260096332
#>     Attrib V51    0.7584073153556928
#>     Attrib V52    0.6117676486336152
#>     Attrib V53    0.917410261258137
#>     Attrib V54    0.24298278926033468
#>     Attrib V55    0.05133283022730129
#>     Attrib V56    -0.3225346022590298
#>     Attrib V57    0.07721049105494375
#>     Attrib V58    0.1477640839698744
#>     Attrib V59    -0.5840854437110972
#>     Attrib V6    0.1187634800039196
#>     Attrib V60    -0.08511834218823323
#>     Attrib V7    -0.5326343343863741
#>     Attrib V8    -0.1567420024801176
#>     Attrib V9    1.3465136130493602
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.025311908725975947
#>     Attrib V1    0.15134794201578242
#>     Attrib V10    0.06472496564964511
#>     Attrib V11    0.19394977839391941
#>     Attrib V12    0.0602498088825547
#>     Attrib V13    -0.06076635272492034
#>     Attrib V14    -0.04056795608520511
#>     Attrib V15    0.08188145477325097
#>     Attrib V16    0.10137205694626042
#>     Attrib V17    -0.027833987723571298
#>     Attrib V18    -0.16168190974812668
#>     Attrib V19    -0.015315923255617751
#>     Attrib V2    0.12026860885197836
#>     Attrib V20    -0.010562548581043569
#>     Attrib V21    -0.04625003955580425
#>     Attrib V22    -0.1775896666208242
#>     Attrib V23    -0.1469051322185793
#>     Attrib V24    -0.024992242585152973
#>     Attrib V25    -0.0395467682475356
#>     Attrib V26    -0.1261283921123236
#>     Attrib V27    -0.07814830045833099
#>     Attrib V28    0.07857240360092356
#>     Attrib V29    0.020572348720149927
#>     Attrib V3    0.07660869899318157
#>     Attrib V30    0.06464764330364188
#>     Attrib V31    -0.26510760249658755
#>     Attrib V32    -0.018118072662212572
#>     Attrib V33    0.13363785027461883
#>     Attrib V34    0.012423620133853478
#>     Attrib V35    -0.01899642430836438
#>     Attrib V36    -0.1319600415827252
#>     Attrib V37    -0.15057103212769463
#>     Attrib V38    0.0860923087448414
#>     Attrib V39    0.07492856392935726
#>     Attrib V4    0.1614069012815743
#>     Attrib V40    -0.04289040626480977
#>     Attrib V41    0.030614942611506
#>     Attrib V42    -0.022988055048102436
#>     Attrib V43    -0.046467451111737876
#>     Attrib V44    0.07803154276282954
#>     Attrib V45    0.17522777495492697
#>     Attrib V46    0.11755302080923581
#>     Attrib V47    0.12088526751966441
#>     Attrib V48    0.1795035182022645
#>     Attrib V49    0.16163600908872539
#>     Attrib V5    0.08436202488439175
#>     Attrib V50    -0.09404226863249521
#>     Attrib V51    0.02779689438698842
#>     Attrib V52    0.07328254933940141
#>     Attrib V53    0.13746801724301685
#>     Attrib V54    0.16678180932140274
#>     Attrib V55    0.09730020644228618
#>     Attrib V56    0.022219646681293
#>     Attrib V57    0.21071616314435285
#>     Attrib V58    0.08952008681937823
#>     Attrib V59    0.03701290126904378
#>     Attrib V6    -0.050379444839163574
#>     Attrib V60    0.02097161418425851
#>     Attrib V7    -0.0977633257955712
#>     Attrib V8    0.0897720131561342
#>     Attrib V9    0.15795923740215423
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.3218733480119077
#>     Attrib V1    0.4497988977019642
#>     Attrib V10    1.0589649281006308
#>     Attrib V11    1.5140162430245672
#>     Attrib V12    1.4510663571577869
#>     Attrib V13    -0.13053736293684626
#>     Attrib V14    -1.1801107890399538
#>     Attrib V15    -0.6944361067662896
#>     Attrib V16    -0.6683164709155933
#>     Attrib V17    -0.40206538561662647
#>     Attrib V18    -0.49555024634933265
#>     Attrib V19    0.052337208945794265
#>     Attrib V2    0.047802598449918944
#>     Attrib V20    0.11957510912293073
#>     Attrib V21    0.17284203922113453
#>     Attrib V22    0.09969958050154962
#>     Attrib V23    0.6209764948219084
#>     Attrib V24    1.0917809701096215
#>     Attrib V25    1.1311475280021464
#>     Attrib V26    0.9451329380603495
#>     Attrib V27    0.8117655496419749
#>     Attrib V28    1.3367752140226121
#>     Attrib V29    0.5735623057782335
#>     Attrib V3    0.1046615080362631
#>     Attrib V30    0.7109092525721017
#>     Attrib V31    -0.31482610669484684
#>     Attrib V32    0.1429762910814598
#>     Attrib V33    -0.2431954861924283
#>     Attrib V34    -0.0671117122386485
#>     Attrib V35    0.5421721606435151
#>     Attrib V36    -0.6046042400115526
#>     Attrib V37    -0.05454461349885476
#>     Attrib V38    0.18946499800570304
#>     Attrib V39    0.286683686378029
#>     Attrib V4    -0.02675922603949794
#>     Attrib V40    0.1838651062411046
#>     Attrib V41    1.160954447156107
#>     Attrib V42    -0.3981364739682659
#>     Attrib V43    -0.4591084674042202
#>     Attrib V44    -0.059863813335920314
#>     Attrib V45    0.5745044520798895
#>     Attrib V46    0.8131682111667534
#>     Attrib V47    0.8165959200991868
#>     Attrib V48    0.4607389252297895
#>     Attrib V49    1.3003307736717649
#>     Attrib V5    0.3618548784327768
#>     Attrib V50    0.07436593310591234
#>     Attrib V51    0.8214402361868435
#>     Attrib V52    0.5543484249896468
#>     Attrib V53    0.7143727889667477
#>     Attrib V54    -0.03074303886226002
#>     Attrib V55    0.1514014283387017
#>     Attrib V56    -0.28166180706932326
#>     Attrib V57    -0.1787530371461579
#>     Attrib V58    0.19826470957488113
#>     Attrib V59    -0.4389929351746029
#>     Attrib V6    -0.018655789471807516
#>     Attrib V60    -0.21460209724977652
#>     Attrib V7    -0.7931594778101689
#>     Attrib V8    -0.007260953278480465
#>     Attrib V9    1.178146705701321
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.1570006685306833
#>     Attrib V1    -0.30569289074385947
#>     Attrib V10    -0.04985704108896255
#>     Attrib V11    -0.45809483782654153
#>     Attrib V12    -0.30038470217316016
#>     Attrib V13    0.2762143360431584
#>     Attrib V14    0.2796729806538643
#>     Attrib V15    -0.16084878830943847
#>     Attrib V16    -0.12180193876903542
#>     Attrib V17    -0.21322584113396312
#>     Attrib V18    0.041362318561287206
#>     Attrib V19    -0.4023900899446778
#>     Attrib V2    -0.017691407329706244
#>     Attrib V20    -0.3570626386158527
#>     Attrib V21    -0.31302929771472465
#>     Attrib V22    -0.29527091903958186
#>     Attrib V23    -0.23734694821343588
#>     Attrib V24    -0.4020959640735078
#>     Attrib V25    -0.2519886905042703
#>     Attrib V26    0.24522331880520115
#>     Attrib V27    0.19350542336883123
#>     Attrib V28    -0.11114818823472461
#>     Attrib V29    -0.0537758914715232
#>     Attrib V3    0.014234430301225032
#>     Attrib V30    -0.12982595864771887
#>     Attrib V31    0.8278049500634137
#>     Attrib V32    -0.06709900557817129
#>     Attrib V33    -0.2987422277801608
#>     Attrib V34    0.049647406898611315
#>     Attrib V35    -0.04317045460857122
#>     Attrib V36    0.38559468328706586
#>     Attrib V37    0.5712721395624215
#>     Attrib V38    -0.041946751081984354
#>     Attrib V39    -0.23612580210353723
#>     Attrib V4    -0.20488230566384688
#>     Attrib V40    0.1206798293126028
#>     Attrib V41    -0.43428732933615183
#>     Attrib V42    -0.3774541011335624
#>     Attrib V43    -0.12194333183042688
#>     Attrib V44    -0.14096679135801482
#>     Attrib V45    -0.18584861746256354
#>     Attrib V46    -0.09834025832143015
#>     Attrib V47    -0.09960924299091936
#>     Attrib V48    0.04899411741220081
#>     Attrib V49    -0.2425196722130524
#>     Attrib V5    -0.31045738825054414
#>     Attrib V50    0.5630170074769507
#>     Attrib V51    -0.06403818314476066
#>     Attrib V52    -0.042442835490298175
#>     Attrib V53    -0.1600670280307938
#>     Attrib V54    -0.20897558210211786
#>     Attrib V55    0.04539828980065122
#>     Attrib V56    -0.003054337802175917
#>     Attrib V57    0.14040368506946946
#>     Attrib V58    -0.25903563451239914
#>     Attrib V59    0.039798304285317075
#>     Attrib V6    0.10160014099780049
#>     Attrib V60    0.11475743592509396
#>     Attrib V7    0.5811008982888606
#>     Attrib V8    -0.16138694257411906
#>     Attrib V9    -0.4613941900150846
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.1269850219562505
#>     Attrib V1    0.3655297874465467
#>     Attrib V10    -0.12464915435122952
#>     Attrib V11    0.19528626432015314
#>     Attrib V12    0.021121612342873186
#>     Attrib V13    -0.35456900418860227
#>     Attrib V14    -0.030690833995279013
#>     Attrib V15    0.3401851782876947
#>     Attrib V16    0.31228591973276915
#>     Attrib V17    0.20225268970273796
#>     Attrib V18    -0.06640645138798733
#>     Attrib V19    0.20201306071115435
#>     Attrib V2    0.0779397401887741
#>     Attrib V20    0.3312944485645042
#>     Attrib V21    0.20250714975410028
#>     Attrib V22    -0.06406243467639089
#>     Attrib V23    -0.13844817116913255
#>     Attrib V24    -0.05237827676603389
#>     Attrib V25    -0.1463874253530031
#>     Attrib V26    -0.6632693698445513
#>     Attrib V27    -0.42199524378416853
#>     Attrib V28    -0.05826800185443996
#>     Attrib V29    -0.13717796655842207
#>     Attrib V3    -0.06756445841925718
#>     Attrib V30    -0.035868441444420515
#>     Attrib V31    -1.008736274022823
#>     Attrib V32    -0.11886210951221678
#>     Attrib V33    0.36927462734100164
#>     Attrib V34    -0.055827513791636675
#>     Attrib V35    -0.1445282482995488
#>     Attrib V36    -0.5253382771857215
#>     Attrib V37    -0.694477258660752
#>     Attrib V38    0.06750495950121414
#>     Attrib V39    0.16086458668495085
#>     Attrib V4    0.12495537930408898
#>     Attrib V40    -0.15841641218280153
#>     Attrib V41    0.16095824726701938
#>     Attrib V42    0.359630151296211
#>     Attrib V43    0.053089906610057996
#>     Attrib V44    0.16579789426354635
#>     Attrib V45    0.352436561131252
#>     Attrib V46    -0.024707456168293628
#>     Attrib V47    0.04667539424742301
#>     Attrib V48    0.1020290970779536
#>     Attrib V49    0.10520221304467739
#>     Attrib V5    0.25918525831789846
#>     Attrib V50    -0.46883784622965324
#>     Attrib V51    -0.09336824505061536
#>     Attrib V52    -0.07403665080700791
#>     Attrib V53    0.15387510667442547
#>     Attrib V54    0.3862349111668871
#>     Attrib V55    -0.022712805554176388
#>     Attrib V56    0.09733172522613953
#>     Attrib V57    0.07651590401097756
#>     Attrib V58    0.20530608539248266
#>     Attrib V59    -0.12269569862819503
#>     Attrib V6    0.010098599880899258
#>     Attrib V60    -0.06654630003349882
#>     Attrib V7    -0.33388415557485035
#>     Attrib V8    0.2687973139963565
#>     Attrib V9    0.28541848792341806
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.15725199617359087
#>     Attrib V1    0.39431415241617007
#>     Attrib V10    -0.17852581024893505
#>     Attrib V11    0.20860029536986557
#>     Attrib V12    -0.08430034919510682
#>     Attrib V13    -0.31238026790525136
#>     Attrib V14    0.058868557347046775
#>     Attrib V15    0.39771339142639933
#>     Attrib V16    0.40058668546323056
#>     Attrib V17    0.2250305461402722
#>     Attrib V18    -0.0338525933615945
#>     Attrib V19    0.30615370416896476
#>     Attrib V2    0.18539004000474676
#>     Attrib V20    0.3383789176188593
#>     Attrib V21    0.2697997067616104
#>     Attrib V22    0.04561543501441522
#>     Attrib V23    -0.10216608785322936
#>     Attrib V24    -0.09192623537565439
#>     Attrib V25    -0.2622670472418447
#>     Attrib V26    -0.7374835365437937
#>     Attrib V27    -0.46516165778237034
#>     Attrib V28    -0.18270215530488942
#>     Attrib V29    -0.15388583568831277
#>     Attrib V3    -0.045819966954894584
#>     Attrib V30    -0.11213306185526398
#>     Attrib V31    -1.115904703634482
#>     Attrib V32    -0.18330236733244226
#>     Attrib V33    0.4113522171204567
#>     Attrib V34    -0.11464634227373637
#>     Attrib V35    -0.22092531215610348
#>     Attrib V36    -0.5273910970043004
#>     Attrib V37    -0.6936952919039974
#>     Attrib V38    0.07429726571655396
#>     Attrib V39    0.15367902677207526
#>     Attrib V4    0.21281155615794498
#>     Attrib V40    -0.1141108818295271
#>     Attrib V41    0.20782408043028724
#>     Attrib V42    0.38750354163690404
#>     Attrib V43    0.14591046353539705
#>     Attrib V44    0.13250914609478093
#>     Attrib V45    0.32710817971725376
#>     Attrib V46    0.015175955353780619
#>     Attrib V47    -0.03917140970680024
#>     Attrib V48    0.031442397845901186
#>     Attrib V49    0.00504184349012386
#>     Attrib V5    0.256649712559384
#>     Attrib V50    -0.5175053455896305
#>     Attrib V51    -0.17667266143551588
#>     Attrib V52    -0.01618709328882529
#>     Attrib V53    0.21879454403097395
#>     Attrib V54    0.3963539441405482
#>     Attrib V55    -0.039156158454283475
#>     Attrib V56    0.1292005767002247
#>     Attrib V57    0.13984382076862792
#>     Attrib V58    0.24202689839435435
#>     Attrib V59    -0.017160056311118915
#>     Attrib V6    -0.01566606326441398
#>     Attrib V60    -0.006617819273302376
#>     Attrib V7    -0.23910792117992338
#>     Attrib V8    0.3171017837154158
#>     Attrib V9    0.3012848443882627
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.11919760721172847
#>     Attrib V1    0.15164183490138466
#>     Attrib V10    1.452423093087024E-4
#>     Attrib V11    0.14173177982447793
#>     Attrib V12    0.05636367055003278
#>     Attrib V13    -4.099586855841571E-4
#>     Attrib V14    0.03223952262329286
#>     Attrib V15    0.09486478951034376
#>     Attrib V16    0.05401982647071633
#>     Attrib V17    0.04169781851699367
#>     Attrib V18    -0.06099658755324569
#>     Attrib V19    0.0175750897415452
#>     Attrib V2    0.0796028159964601
#>     Attrib V20    0.1001698253919687
#>     Attrib V21    0.018561076315476224
#>     Attrib V22    -0.11824654874597786
#>     Attrib V23    -0.05644036405682966
#>     Attrib V24    -0.013549099672946853
#>     Attrib V25    0.00997535050658855
#>     Attrib V26    -0.17666527261533035
#>     Attrib V27    -0.06182891873830634
#>     Attrib V28    -0.017558216166934697
#>     Attrib V29    -0.016984731665070786
#>     Attrib V3    0.11745021201298846
#>     Attrib V30    0.015875472329557702
#>     Attrib V31    -0.33413796643129484
#>     Attrib V32    -0.04043238363699173
#>     Attrib V33    0.09381243556693325
#>     Attrib V34    0.05747555505432335
#>     Attrib V35    -0.016200807552761348
#>     Attrib V36    -0.15775419468024945
#>     Attrib V37    -0.1443436928059709
#>     Attrib V38    0.025788223247010345
#>     Attrib V39    0.12830182351216757
#>     Attrib V4    0.13148553013446965
#>     Attrib V40    -0.0025691379030663756
#>     Attrib V41    0.05264283598258111
#>     Attrib V42    0.07781554429944826
#>     Attrib V43    -0.04368057025311133
#>     Attrib V44    0.043299045226691875
#>     Attrib V45    0.10019774817165779
#>     Attrib V46    0.08577045322524633
#>     Attrib V47    0.10648620798957101
#>     Attrib V48    0.07994164307487764
#>     Attrib V49    0.12410841269598327
#>     Attrib V5    0.13271313158748013
#>     Attrib V50    -0.10266989950545602
#>     Attrib V51    0.00571530451991018
#>     Attrib V52    0.031895656519131364
#>     Attrib V53    0.09588484869749957
#>     Attrib V54    0.11786252592045428
#>     Attrib V55    0.08603657796268989
#>     Attrib V56    0.06669906281239352
#>     Attrib V57    0.12524942104219183
#>     Attrib V58    0.09862091298576049
#>     Attrib V59    0.05882512611913851
#>     Attrib V6    0.029576596133046307
#>     Attrib V60    0.04952850706718757
#>     Attrib V7    -0.04620454426738689
#>     Attrib V8    0.07296470811270231
#>     Attrib V9    0.12970921825730639
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.3413830709510212
#>     Attrib V1    0.46157747167922797
#>     Attrib V10    0.5160027533876581
#>     Attrib V11    1.0260806438611791
#>     Attrib V12    0.806519926388483
#>     Attrib V13    -0.39679419198475274
#>     Attrib V14    -0.75725376433937
#>     Attrib V15    -0.1945814547705288
#>     Attrib V16    -0.37067030777605436
#>     Attrib V17    -0.463886389019497
#>     Attrib V18    -0.679319568388512
#>     Attrib V19    -0.3917980643577416
#>     Attrib V2    0.17629314329591295
#>     Attrib V20    -0.2990588296049297
#>     Attrib V21    -0.2701022763427992
#>     Attrib V22    -0.4705433194179976
#>     Attrib V23    -0.2737082266604611
#>     Attrib V24    0.19459395577336097
#>     Attrib V25    0.28618789455035604
#>     Attrib V26    0.248553169577945
#>     Attrib V27    0.42933526793422205
#>     Attrib V28    0.747770329629577
#>     Attrib V29    0.298701030140468
#>     Attrib V3    -0.05298734897252617
#>     Attrib V30    0.547501322312174
#>     Attrib V31    -0.3558712647710829
#>     Attrib V32    -0.08430965779707185
#>     Attrib V33    -0.10963873110395485
#>     Attrib V34    -0.18354698089802318
#>     Attrib V35    0.12302105137970613
#>     Attrib V36    -0.6498944722286043
#>     Attrib V37    -0.17633200454685022
#>     Attrib V38    0.1530741811292008
#>     Attrib V39    0.11594364122420828
#>     Attrib V4    -0.02999191125334489
#>     Attrib V40    -0.12325455673925076
#>     Attrib V41    0.36618259535617187
#>     Attrib V42    -0.2508225980157041
#>     Attrib V43    -0.3290497054740487
#>     Attrib V44    0.07664642173382367
#>     Attrib V45    0.5909983648493218
#>     Attrib V46    0.6019195686753069
#>     Attrib V47    0.48982099151488956
#>     Attrib V48    0.4608975994200256
#>     Attrib V49    0.7704754646484987
#>     Attrib V5    0.15460325241352588
#>     Attrib V50    -0.2021155314699691
#>     Attrib V51    0.22479600606575995
#>     Attrib V52    0.2134445675598621
#>     Attrib V53    0.41299976211731904
#>     Attrib V54    0.3351714390234062
#>     Attrib V55    0.24424254371938284
#>     Attrib V56    -0.2376345039180907
#>     Attrib V57    0.25677995439728746
#>     Attrib V58    0.21242512289447507
#>     Attrib V59    -0.2115592741589082
#>     Attrib V6    -0.13243435607783688
#>     Attrib V60    -0.08740509247929303
#>     Attrib V7    -0.4697872008257235
#>     Attrib V8    0.1210276672713191
#>     Attrib V9    0.6555498243338099
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.026762388425865098
#>     Attrib V1    -0.5598725290489266
#>     Attrib V10    0.1865981897432692
#>     Attrib V11    -0.500926352357066
#>     Attrib V12    -0.15530228262753074
#>     Attrib V13    0.40405851000516446
#>     Attrib V14    0.01989864333419959
#>     Attrib V15    -0.23600748104240266
#>     Attrib V16    -0.2597392611346435
#>     Attrib V17    -0.25402803826908943
#>     Attrib V18    -0.026061735163813056
#>     Attrib V19    -0.6676589305848674
#>     Attrib V2    -0.054751600266076644
#>     Attrib V20    -0.547243688145192
#>     Attrib V21    -0.4218722559565585
#>     Attrib V22    -0.26736888535247894
#>     Attrib V23    -0.2732102322453023
#>     Attrib V24    -0.35044680256276983
#>     Attrib V25    -0.21926606708818813
#>     Attrib V26    0.693683845608266
#>     Attrib V27    0.5574465832244485
#>     Attrib V28    0.21005154970806675
#>     Attrib V29    0.2877185155753201
#>     Attrib V3    0.08303229332004303
#>     Attrib V30    0.019504957163607447
#>     Attrib V31    1.4747434024719719
#>     Attrib V32    -0.20758688691385213
#>     Attrib V33    -0.9068105806321369
#>     Attrib V34    0.14705183858582035
#>     Attrib V35    0.32845654104499394
#>     Attrib V36    0.8430115003651587
#>     Attrib V37    1.598086000911287
#>     Attrib V38    0.2038616430726648
#>     Attrib V39    -0.32930140134436087
#>     Attrib V4    -0.42125390410779545
#>     Attrib V40    0.07912856216736305
#>     Attrib V41    -0.7598380577041023
#>     Attrib V42    -0.9482431754977269
#>     Attrib V43    -0.2809662904107616
#>     Attrib V44    -0.12735571828007228
#>     Attrib V45    0.014459753238782989
#>     Attrib V46    0.3182876112825442
#>     Attrib V47    0.08175606049694248
#>     Attrib V48    0.08661518382329388
#>     Attrib V49    -0.20940680155151203
#>     Attrib V5    -0.5309183103222644
#>     Attrib V50    0.8388050909594467
#>     Attrib V51    0.05352261308514298
#>     Attrib V52    -0.08647956188040559
#>     Attrib V53    -0.3290961216683123
#>     Attrib V54    -0.4890532922516217
#>     Attrib V55    0.08888780410550096
#>     Attrib V56    -0.12041192709193359
#>     Attrib V57    0.15275048892374066
#>     Attrib V58    -0.5549152698843945
#>     Attrib V59    -0.06979424011472027
#>     Attrib V6    -0.01145146148666123
#>     Attrib V60    0.002383564081120821
#>     Attrib V7    0.6974344804963809
#>     Attrib V8    -0.5646570976671929
#>     Attrib V9    -0.5773735202714848
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.02731285310434041
#>     Attrib V1    0.20047092846989656
#>     Attrib V10    -0.06258577047900082
#>     Attrib V11    0.09803790807955218
#>     Attrib V12    0.023446896199882508
#>     Attrib V13    -0.08930762088882474
#>     Attrib V14    0.015447891428331976
#>     Attrib V15    0.1840759427412057
#>     Attrib V16    0.2271424828439118
#>     Attrib V17    0.12653400577775925
#>     Attrib V18    0.0035451532010343724
#>     Attrib V19    0.11985634683734174
#>     Attrib V2    0.05813076741169054
#>     Attrib V20    0.12506280637129882
#>     Attrib V21    0.041598871814758596
#>     Attrib V22    -0.11927046417178885
#>     Attrib V23    -0.1657351449118
#>     Attrib V24    -0.02100988985760746
#>     Attrib V25    -0.07750291571803074
#>     Attrib V26    -0.33007428478978307
#>     Attrib V27    -0.2538346326449268
#>     Attrib V28    -0.09222079460995751
#>     Attrib V29    -0.13828973220710847
#>     Attrib V3    0.051648975302975124
#>     Attrib V30    -0.11751518728228492
#>     Attrib V31    -0.5009901777324721
#>     Attrib V32    -0.0447415609117194
#>     Attrib V33    0.17774197402658756
#>     Attrib V34    0.05267067775779169
#>     Attrib V35    -0.046754535850117455
#>     Attrib V36    -0.23585404273017113
#>     Attrib V37    -0.26233339940224404
#>     Attrib V38    0.034578468660336814
#>     Attrib V39    0.10660630954370344
#>     Attrib V4    0.11776603897143838
#>     Attrib V40    -0.08199949476095854
#>     Attrib V41    0.06102352866890517
#>     Attrib V42    0.16414467771579463
#>     Attrib V43    3.128496264972376E-4
#>     Attrib V44    0.004725658004611683
#>     Attrib V45    0.13709148938012994
#>     Attrib V46    0.011710968161641433
#>     Attrib V47    0.007715086433883439
#>     Attrib V48    0.04229885556990182
#>     Attrib V49    0.040444600799856005
#>     Attrib V5    0.11018387560157439
#>     Attrib V50    -0.13907870483802656
#>     Attrib V51    -0.008769744509715635
#>     Attrib V52    0.04862286114252093
#>     Attrib V53    0.17759818321900722
#>     Attrib V54    0.20106868702929578
#>     Attrib V55    0.11686753932427132
#>     Attrib V56    0.09469057034157796
#>     Attrib V57    0.1541849025600999
#>     Attrib V58    0.17937884522403996
#>     Attrib V59    -0.001767340617704492
#>     Attrib V6    0.001399605373916823
#>     Attrib V60    0.020164301942277273
#>     Attrib V7    -0.13554108388699207
#>     Attrib V8    0.10189003701497745
#>     Attrib V9    0.15063548037595076
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.09749066949804935
#>     Attrib V1    0.09303515925592558
#>     Attrib V10    0.09011377251204403
#>     Attrib V11    0.09583652880247231
#>     Attrib V12    -0.020062023802652068
#>     Attrib V13    -0.04514132290496512
#>     Attrib V14    0.022369451855756898
#>     Attrib V15    0.11562026803523211
#>     Attrib V16    0.03797902917095585
#>     Attrib V17    -0.005628767881937379
#>     Attrib V18    -0.05526324616094236
#>     Attrib V19    -0.016053848092102398
#>     Attrib V2    0.13859552842177364
#>     Attrib V20    -0.04281424885060973
#>     Attrib V21    -0.07961989359255058
#>     Attrib V22    -0.036354340516068576
#>     Attrib V23    -0.09930541140221275
#>     Attrib V24    -0.04188436134147746
#>     Attrib V25    -0.06808475937424939
#>     Attrib V26    -0.08174095857865221
#>     Attrib V27    -0.033286628391148904
#>     Attrib V28    -0.004959504929226483
#>     Attrib V29    -0.03551227049141374
#>     Attrib V3    0.07714857448155613
#>     Attrib V30    0.06943780809309807
#>     Attrib V31    -0.023131350639022746
#>     Attrib V32    -0.03623651030221139
#>     Attrib V33    0.08501415124107732
#>     Attrib V34    0.009188121317617549
#>     Attrib V35    0.07303600601269968
#>     Attrib V36    -0.02987567104820046
#>     Attrib V37    -0.023915238923776432
#>     Attrib V38    0.07855254727556195
#>     Attrib V39    0.08748986717443179
#>     Attrib V4    0.10431053363877242
#>     Attrib V40    0.008119880638577381
#>     Attrib V41    0.05652564178627184
#>     Attrib V42    0.025002481187182627
#>     Attrib V43    0.061499110427109656
#>     Attrib V44    0.0844514744005576
#>     Attrib V45    0.12017943779174563
#>     Attrib V46    0.04409194280011332
#>     Attrib V47    0.03452639585496057
#>     Attrib V48    0.1179915706722555
#>     Attrib V49    0.02025888552784125
#>     Attrib V5    0.08845884769792527
#>     Attrib V50    0.03858118174492763
#>     Attrib V51    0.06067538478504315
#>     Attrib V52    0.02978167462629084
#>     Attrib V53    0.023847269645770868
#>     Attrib V54    0.05154868129682654
#>     Attrib V55    0.12507007905003317
#>     Attrib V56    0.08998901941709397
#>     Attrib V57    0.14017743033522587
#>     Attrib V58    0.0382509414324513
#>     Attrib V59    -0.009882100353057116
#>     Attrib V6    0.050270994737011424
#>     Attrib V60    0.06228556681004095
#>     Attrib V7    -0.03924414042911214
#>     Attrib V8    0.10787611360222668
#>     Attrib V9    0.09992799734954891
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.19340688257643443
#>     Attrib V1    -0.1602822598436593
#>     Attrib V10    -0.02001448072077563
#>     Attrib V11    -0.24474965452147032
#>     Attrib V12    -0.2735387565972762
#>     Attrib V13    0.07763006557681985
#>     Attrib V14    0.15410591671198928
#>     Attrib V15    -0.08082040880927659
#>     Attrib V16    -0.06781713852495967
#>     Attrib V17    -0.13162569467729246
#>     Attrib V18    0.021655945395083042
#>     Attrib V19    -0.25267758409909885
#>     Attrib V2    -0.007972988984565669
#>     Attrib V20    -0.18349791876594213
#>     Attrib V21    -0.14346535106695837
#>     Attrib V22    -0.1063186918300441
#>     Attrib V23    -0.05885201183330445
#>     Attrib V24    -0.14812764478039672
#>     Attrib V25    -0.028114305909777062
#>     Attrib V26    0.14473454049345083
#>     Attrib V27    0.10518590163355285
#>     Attrib V28    -0.0766266593740946
#>     Attrib V29    -0.042325515465088864
#>     Attrib V3    0.08350092715213724
#>     Attrib V30    -0.09277410118325602
#>     Attrib V31    0.30413632828631293
#>     Attrib V32    0.004599167250439634
#>     Attrib V33    -0.10039706318495131
#>     Attrib V34    0.022326962145563355
#>     Attrib V35    -0.08644675342885746
#>     Attrib V36    0.2622148554912646
#>     Attrib V37    0.1907117295313438
#>     Attrib V38    -0.05784884708029062
#>     Attrib V39    -0.03582833562863293
#>     Attrib V4    -0.05588890006822808
#>     Attrib V40    0.05983361429762623
#>     Attrib V41    -0.22016514984590888
#>     Attrib V42    -0.08757029937173122
#>     Attrib V43    -0.011930352783371465
#>     Attrib V44    -0.005852402426105478
#>     Attrib V45    -0.1765277701482748
#>     Attrib V46    -0.12593202547819438
#>     Attrib V47    -0.06309898835539765
#>     Attrib V48    -0.024874065373873554
#>     Attrib V49    -0.17748712941244865
#>     Attrib V5    -0.09271695941465778
#>     Attrib V50    0.15400675404293052
#>     Attrib V51    0.026947447586889214
#>     Attrib V52    -0.013844512645791332
#>     Attrib V53    -0.09091022365768801
#>     Attrib V54    -0.13400694242831246
#>     Attrib V55    0.021055730515980836
#>     Attrib V56    0.07611421937397485
#>     Attrib V57    -0.001370029939048205
#>     Attrib V58    -0.08088725963691733
#>     Attrib V59    0.08524810865742324
#>     Attrib V6    0.04354612773709171
#>     Attrib V60    0.16411114241925576
#>     Attrib V7    0.3364529464736486
#>     Attrib V8    0.03174712049785647
#>     Attrib V9    -0.16839903533970643
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.29393838549091555
#>     Attrib V1    0.440678767308773
#>     Attrib V10    0.7133201707958668
#>     Attrib V11    1.1384289998689765
#>     Attrib V12    1.046532200764453
#>     Attrib V13    -0.24645784081358674
#>     Attrib V14    -0.8078883171459383
#>     Attrib V15    -0.3060980485527856
#>     Attrib V16    -0.4789037310202978
#>     Attrib V17    -0.4235959145862199
#>     Attrib V18    -0.58539711254042
#>     Attrib V19    -0.1444537897685432
#>     Attrib V2    0.1700968667825469
#>     Attrib V20    -0.10445151642505072
#>     Attrib V21    -0.06955700397410935
#>     Attrib V22    -0.08887242492514458
#>     Attrib V23    0.11100575378855383
#>     Attrib V24    0.5809450483123929
#>     Attrib V25    0.6650904133235594
#>     Attrib V26    0.5291350214943938
#>     Attrib V27    0.6362315005510044
#>     Attrib V28    1.0341602033105637
#>     Attrib V29    0.47918685537024386
#>     Attrib V3    0.03461014311150927
#>     Attrib V30    0.6167496337487947
#>     Attrib V31    -0.41103165982202194
#>     Attrib V32    -0.11007836196606732
#>     Attrib V33    -0.2189032577209488
#>     Attrib V34    -0.2156261673621318
#>     Attrib V35    0.30807862061428726
#>     Attrib V36    -0.5229912712678548
#>     Attrib V37    -0.08188798954235497
#>     Attrib V38    0.2490614203232588
#>     Attrib V39    0.18075023203503757
#>     Attrib V4    0.06710285656825164
#>     Attrib V40    0.00919251473616222
#>     Attrib V41    0.6331142929253326
#>     Attrib V42    -0.21889147072880288
#>     Attrib V43    -0.3613361802672781
#>     Attrib V44    0.04435448118797345
#>     Attrib V45    0.6998396401183895
#>     Attrib V46    0.6919161488120597
#>     Attrib V47    0.5447901211618706
#>     Attrib V48    0.33570475693271473
#>     Attrib V49    0.8721209773975093
#>     Attrib V5    0.31360512642170174
#>     Attrib V50    -0.17408260039058396
#>     Attrib V51    0.4015578095312347
#>     Attrib V52    0.33063980304188645
#>     Attrib V53    0.5028605747126657
#>     Attrib V54    0.19591964657603694
#>     Attrib V55    0.16066045401062912
#>     Attrib V56    -0.33202058705420123
#>     Attrib V57    0.011575349663235637
#>     Attrib V58    0.2074129932540635
#>     Attrib V59    -0.32595206911348523
#>     Attrib V6    -0.0771589208577583
#>     Attrib V60    -0.133500404155509
#>     Attrib V7    -0.5368382502379093
#>     Attrib V8    0.030956294464224557
#>     Attrib V9    0.8363145614122953
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.20294932416242972
#>     Attrib V1    0.35334987087019504
#>     Attrib V10    0.017505351862312838
#>     Attrib V11    0.3378896004398346
#>     Attrib V12    0.2594307650396584
#>     Attrib V13    -0.23900629232579668
#>     Attrib V14    -0.1165286031856131
#>     Attrib V15    0.18355180864703555
#>     Attrib V16    0.068001393809433
#>     Attrib V17    -0.0088706321504654
#>     Attrib V18    -0.16926348737199073
#>     Attrib V19    0.11222526736294525
#>     Attrib V2    0.08081921579178424
#>     Attrib V20    0.1630735108996984
#>     Attrib V21    0.16722913039770573
#>     Attrib V22    -0.012378942139725391
#>     Attrib V23    -0.0031303703311336456
#>     Attrib V24    0.15931158229401812
#>     Attrib V25    0.06480936882652244
#>     Attrib V26    -0.26142317749631155
#>     Attrib V27    -0.10256452491050111
#>     Attrib V28    0.08763140642080616
#>     Attrib V29    0.061377029439168306
#>     Attrib V3    -0.09711496877964126
#>     Attrib V30    0.15152566875525408
#>     Attrib V31    -0.7086069699675428
#>     Attrib V32    -0.15923167673065003
#>     Attrib V33    0.17668422724590313
#>     Attrib V34    -0.17326813462771595
#>     Attrib V35    -0.14745602743068761
#>     Attrib V36    -0.46309480147214455
#>     Attrib V37    -0.48235726486070324
#>     Attrib V38    0.04123733681422499
#>     Attrib V39    0.0757080290843789
#>     Attrib V4    0.06643299048431409
#>     Attrib V40    -0.149301627372415
#>     Attrib V41    0.2419850942116234
#>     Attrib V42    0.1931244190684773
#>     Attrib V43    0.02720851180555258
#>     Attrib V44    0.12932371586290614
#>     Attrib V45    0.2744708737787094
#>     Attrib V46    0.01454622490287907
#>     Attrib V47    0.01813111946804108
#>     Attrib V48    0.06460844549666943
#>     Attrib V49    0.12687163761458065
#>     Attrib V5    0.22512426417868234
#>     Attrib V50    -0.4459791216239695
#>     Attrib V51    0.004359482332699276
#>     Attrib V52    0.036113603117582486
#>     Attrib V53    0.18558139012346334
#>     Attrib V54    0.3222814894346693
#>     Attrib V55    0.017775422567028284
#>     Attrib V56    -0.002284801259418572
#>     Attrib V57    -0.013652744121709904
#>     Attrib V58    0.17515347152027805
#>     Attrib V59    -0.05915095558413846
#>     Attrib V6    -0.01762063405653721
#>     Attrib V60    -0.05162352473738814
#>     Attrib V7    -0.2586541357339077
#>     Attrib V8    0.12348663354260425
#>     Attrib V9    0.3136782309891996
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.0219386257379406
#>     Attrib V1    -0.6033958906641766
#>     Attrib V10    0.2191489961635982
#>     Attrib V11    -0.6643410573627715
#>     Attrib V12    -0.33876046320163195
#>     Attrib V13    0.49310729197249903
#>     Attrib V14    0.09860718554078207
#>     Attrib V15    -0.24936019740977652
#>     Attrib V16    -0.2051114650862036
#>     Attrib V17    -0.222851701806907
#>     Attrib V18    0.08745457606911287
#>     Attrib V19    -0.8238796626286325
#>     Attrib V2    -1.4515085644579824E-4
#>     Attrib V20    -0.5686179237550618
#>     Attrib V21    -0.3184509647952409
#>     Attrib V22    -0.33544062214027504
#>     Attrib V23    -0.30943514727949606
#>     Attrib V24    -0.4852842286938731
#>     Attrib V25    -0.34581255749352247
#>     Attrib V26    0.7627080400317391
#>     Attrib V27    0.6075106803459785
#>     Attrib V28    0.11445138848950277
#>     Attrib V29    0.279710186553731
#>     Attrib V3    0.0888830676078566
#>     Attrib V30    -0.03431216519707021
#>     Attrib V31    1.8274265004241947
#>     Attrib V32    -0.23546604239436486
#>     Attrib V33    -1.0108767758453059
#>     Attrib V34    0.25058536077757587
#>     Attrib V35    0.5165172573174126
#>     Attrib V36    1.1141512266157922
#>     Attrib V37    2.0085235869277653
#>     Attrib V38    0.22184976352958574
#>     Attrib V39    -0.4226304803217592
#>     Attrib V4    -0.4824950014038959
#>     Attrib V40    0.164931945045599
#>     Attrib V41    -0.9171332934528741
#>     Attrib V42    -1.2047216680969979
#>     Attrib V43    -0.30433926080189777
#>     Attrib V44    -0.10786420162780111
#>     Attrib V45    -0.044446497636872404
#>     Attrib V46    0.3167585991702441
#>     Attrib V47    -0.002170198649489536
#>     Attrib V48    0.039541945806596555
#>     Attrib V49    -0.33494372236363146
#>     Attrib V5    -0.7112006220504724
#>     Attrib V50    1.0297559557155576
#>     Attrib V51    0.00537395796531767
#>     Attrib V52    -0.06502237267842101
#>     Attrib V53    -0.4981958393088384
#>     Attrib V54    -0.605584547299288
#>     Attrib V55    0.19632833470908678
#>     Attrib V56    -0.18784972010031864
#>     Attrib V57    0.3192795822763546
#>     Attrib V58    -0.6314170950387921
#>     Attrib V59    -0.0625069564931414
#>     Attrib V6    -0.007768335854093225
#>     Attrib V60    0.06809342938218484
#>     Attrib V7    1.0455293313019371
#>     Attrib V8    -0.6165809575272745
#>     Attrib V9    -0.6401180946659798
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.07108023043514884
#>     Attrib V1    0.4926747311269972
#>     Attrib V10    -0.2549618737982163
#>     Attrib V11    0.044501924183275234
#>     Attrib V12    -0.14376418382807035
#>     Attrib V13    -0.3064243989047185
#>     Attrib V14    0.17941341067299968
#>     Attrib V15    0.5176370572217487
#>     Attrib V16    0.5467262978958873
#>     Attrib V17    0.3062471441916683
#>     Attrib V18    0.013155538908590154
#>     Attrib V19    0.28229805759068194
#>     Attrib V2    0.21524216121518616
#>     Attrib V20    0.4746615891288321
#>     Attrib V21    0.33503575575159106
#>     Attrib V22    0.01646352082283364
#>     Attrib V23    -0.14912231133106676
#>     Attrib V24    -0.10415096954442285
#>     Attrib V25    -0.42270870886236805
#>     Attrib V26    -0.9153429437264397
#>     Attrib V27    -0.6976700327061971
#>     Attrib V28    -0.4763836155430826
#>     Attrib V29    -0.34458975711709783
#>     Attrib V3    -3.7061055269700015E-4
#>     Attrib V30    -0.3136450406816248
#>     Attrib V31    -1.1109622560416401
#>     Attrib V32    -0.18846087838143052
#>     Attrib V33    0.41293294883502274
#>     Attrib V34    -0.02965789372086121
#>     Attrib V35    -0.15718709849016876
#>     Attrib V36    -0.44487269742032465
#>     Attrib V37    -0.6517795218203029
#>     Attrib V38    0.0410845867781086
#>     Attrib V39    0.16186446694681503
#>     Attrib V4    0.20827232065403672
#>     Attrib V40    -0.13475005881608454
#>     Attrib V41    0.06779539002951554
#>     Attrib V42    0.4235298579246344
#>     Attrib V43    0.2526330364566885
#>     Attrib V44    0.18635853465400096
#>     Attrib V45    0.20379819906835167
#>     Attrib V46    -0.06919054384461673
#>     Attrib V47    -0.14035973210880962
#>     Attrib V48    -0.021581512742242688
#>     Attrib V49    -0.04992528605692143
#>     Attrib V5    0.2439424449680691
#>     Attrib V50    -0.47715972015090274
#>     Attrib V51    -0.25699509328522135
#>     Attrib V52    -0.04636258696372764
#>     Attrib V53    0.19491740542184618
#>     Attrib V54    0.5154889454164219
#>     Attrib V55    0.05533769961273929
#>     Attrib V56    0.2405727405289203
#>     Attrib V57    0.14932765526880665
#>     Attrib V58    0.3159090257486974
#>     Attrib V59    0.03200207396876202
#>     Attrib V6    0.0439431310386797
#>     Attrib V60    0.04199662160202149
#>     Attrib V7    -0.22037027813932986
#>     Attrib V8    0.2209878095682905
#>     Attrib V9    0.1964637924285538
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.17887305103766193
#>     Attrib V1    0.6582052695722092
#>     Attrib V10    -0.33901167377670033
#>     Attrib V11    0.1495681509023446
#>     Attrib V12    -0.07781008139756311
#>     Attrib V13    -0.3669495413506301
#>     Attrib V14    0.18884699476041852
#>     Attrib V15    0.6707035770931234
#>     Attrib V16    0.5159231285834792
#>     Attrib V17    0.34121064811136037
#>     Attrib V18    -2.1353058948384512E-4
#>     Attrib V19    0.4343132905686588
#>     Attrib V2    0.20679404683190972
#>     Attrib V20    0.5793455763179415
#>     Attrib V21    0.4067351013703783
#>     Attrib V22    0.0710731298597272
#>     Attrib V23    -0.10594753806325902
#>     Attrib V24    -0.1964587089991233
#>     Attrib V25    -0.5070239494311605
#>     Attrib V26    -1.0764639190483554
#>     Attrib V27    -0.812474876157874
#>     Attrib V28    -0.4856016855799348
#>     Attrib V29    -0.37863824083482817
#>     Attrib V3    0.023792410411080163
#>     Attrib V30    -0.32446589902245393
#>     Attrib V31    -1.690711234348573
#>     Attrib V32    -0.35386528689057434
#>     Attrib V33    0.5031571242214954
#>     Attrib V34    -0.21490360122756666
#>     Attrib V35    -0.302879689383389
#>     Attrib V36    -0.6913763141580401
#>     Attrib V37    -0.9377844514276412
#>     Attrib V38    0.10477944674202354
#>     Attrib V39    0.2974894681477027
#>     Attrib V4    0.3224501149026729
#>     Attrib V40    -0.20385355852255613
#>     Attrib V41    0.2707660156286409
#>     Attrib V42    0.6878134245198415
#>     Attrib V43    0.32621806419655613
#>     Attrib V44    0.2923494761801935
#>     Attrib V45    0.4290955716207688
#>     Attrib V46    -0.09999427758490957
#>     Attrib V47    -0.0827569086409065
#>     Attrib V48    -0.1492829740738092
#>     Attrib V49    -0.13260829970756996
#>     Attrib V5    0.38571946828775827
#>     Attrib V50    -0.7244570918775338
#>     Attrib V51    -0.3682207994283297
#>     Attrib V52    -0.042573518469158536
#>     Attrib V53    0.34709015754192224
#>     Attrib V54    0.6255082729208524
#>     Attrib V55    -0.08879435885033585
#>     Attrib V56    0.2576388609518615
#>     Attrib V57    0.027291271325524488
#>     Attrib V58    0.3068239433826977
#>     Attrib V59    0.012887406614278559
#>     Attrib V6    0.11852308346587927
#>     Attrib V60    -0.03889348826536884
#>     Attrib V7    -0.24582358098280996
#>     Attrib V8    0.39393760110701276
#>     Attrib V9    0.30954551461246615
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.08305970258916714
#>     Attrib V1    -0.4329510031071283
#>     Attrib V10    -0.15454382812204473
#>     Attrib V11    -0.5407432984281941
#>     Attrib V12    -0.3188016673689933
#>     Attrib V13    0.24315446095314583
#>     Attrib V14    0.2690572919006489
#>     Attrib V15    -0.04388714622294993
#>     Attrib V16    -0.06452058608085619
#>     Attrib V17    -0.0659458300094245
#>     Attrib V18    0.039071833630302144
#>     Attrib V19    -0.4630939192515374
#>     Attrib V2    -0.0627250432563467
#>     Attrib V20    -0.4700589627920068
#>     Attrib V21    -0.434006487306683
#>     Attrib V22    -0.4325901345094526
#>     Attrib V23    -0.32993310388364705
#>     Attrib V24    -0.4137742754789488
#>     Attrib V25    -0.24144964369251581
#>     Attrib V26    0.2939897339650071
#>     Attrib V27    0.1767847842977609
#>     Attrib V28    -0.15486405507048365
#>     Attrib V29    -0.09421012852523615
#>     Attrib V3    0.00448211038281851
#>     Attrib V30    -0.20873352836761008
#>     Attrib V31    0.940041026562445
#>     Attrib V32    0.10220243445292888
#>     Attrib V33    -0.3639839846675411
#>     Attrib V34    0.020652652065292192
#>     Attrib V35    -0.14558879277080763
#>     Attrib V36    0.31670583422596216
#>     Attrib V37    0.47160998946649796
#>     Attrib V38    -0.20817523965303927
#>     Attrib V39    -0.35671777959039974
#>     Attrib V4    -0.19584557262362834
#>     Attrib V40    0.11461071305202954
#>     Attrib V41    -0.4385885538559035
#>     Attrib V42    -0.38741636678959684
#>     Attrib V43    -0.06846828197424715
#>     Attrib V44    -0.2395936520572589
#>     Attrib V45    -0.3045820464085567
#>     Attrib V46    -0.07146153432473223
#>     Attrib V47    -0.07658480951326564
#>     Attrib V48    0.08037003372992177
#>     Attrib V49    -0.28130898944800364
#>     Attrib V5    -0.3853998322928859
#>     Attrib V50    0.5739916310224826
#>     Attrib V51    -0.046333311102906914
#>     Attrib V52    0.03615765779832559
#>     Attrib V53    -0.18467426776025256
#>     Attrib V54    -0.1998786791025114
#>     Attrib V55    0.14846514191138813
#>     Attrib V56    0.061523255769288805
#>     Attrib V57    0.2923990165296547
#>     Attrib V58    -0.21887357837865112
#>     Attrib V59    0.14761717349487946
#>     Attrib V6    0.07420648628175369
#>     Attrib V60    0.14096895904667572
#>     Attrib V7    0.5811944244199486
#>     Attrib V8    -0.15154942865538393
#>     Attrib V9    -0.47095599146649547
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.29822063642484486
#>     Attrib V1    0.2730523970840904
#>     Attrib V10    0.9944466773538035
#>     Attrib V11    1.6555640423531797
#>     Attrib V12    1.6987937582386632
#>     Attrib V13    -0.1832270139949614
#>     Attrib V14    -1.293783542385412
#>     Attrib V15    -1.002264156419198
#>     Attrib V16    -0.8764106121980572
#>     Attrib V17    -0.3225377640932442
#>     Attrib V18    -0.3672747749839736
#>     Attrib V19    0.2385555779777934
#>     Attrib V2    -0.00207594835177589
#>     Attrib V20    0.10715167135156878
#>     Attrib V21    0.01099478939615549
#>     Attrib V22    0.22361150406413183
#>     Attrib V23    1.0193803781738524
#>     Attrib V24    1.3402342096149347
#>     Attrib V25    1.2957768383137163
#>     Attrib V26    1.0720768762632822
#>     Attrib V27    1.001136613870676
#>     Attrib V28    1.6492208317065253
#>     Attrib V29    0.6711385225111552
#>     Attrib V3    0.23505805115358613
#>     Attrib V30    0.7475209822715767
#>     Attrib V31    -0.22944511716218222
#>     Attrib V32    0.2522399935561281
#>     Attrib V33    -0.32206421232776467
#>     Attrib V34    -0.08264065011037315
#>     Attrib V35    0.6144276931646201
#>     Attrib V36    -0.7533838730526189
#>     Attrib V37    -0.17607482908710675
#>     Attrib V38    0.06659962080989267
#>     Attrib V39    0.29482716913905654
#>     Attrib V4    0.07457917495510662
#>     Attrib V40    0.24753851791101497
#>     Attrib V41    1.5116399457088932
#>     Attrib V42    -0.33934314621388606
#>     Attrib V43    -0.5915403412629522
#>     Attrib V44    0.02167678732607112
#>     Attrib V45    0.5960558216273089
#>     Attrib V46    0.8570345608055454
#>     Attrib V47    0.9382481965817094
#>     Attrib V48    0.613801993123892
#>     Attrib V49    1.6785865640816238
#>     Attrib V5    0.6124712639429617
#>     Attrib V50    0.10271532566320667
#>     Attrib V51    1.1048016313740818
#>     Attrib V52    0.8410238437524374
#>     Attrib V53    0.8789396997297458
#>     Attrib V54    -0.13020926933749088
#>     Attrib V55    0.1438631758552196
#>     Attrib V56    -0.24710372098271496
#>     Attrib V57    -0.1595040132661011
#>     Attrib V58    0.3250005661985111
#>     Attrib V59    -0.40283674902907335
#>     Attrib V6    0.06451068003881415
#>     Attrib V60    -0.27591606549814357
#>     Attrib V7    -1.138720688204144
#>     Attrib V8    -0.2220414234496068
#>     Attrib V9    1.2426903583643563
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.18669446847692842
#>     Attrib V1    0.06322032639844251
#>     Attrib V10    0.03384574667877119
#>     Attrib V11    0.014874095671594431
#>     Attrib V12    0.019755985098735343
#>     Attrib V13    -0.00635457055615419
#>     Attrib V14    0.09920061775201465
#>     Attrib V15    0.03725448700694715
#>     Attrib V16    0.02733380591897919
#>     Attrib V17    0.027659569331209062
#>     Attrib V18    -0.06262920590568911
#>     Attrib V19    0.010630843100728699
#>     Attrib V2    0.09645527155118636
#>     Attrib V20    -0.030255124890590533
#>     Attrib V21    -0.05359138757591249
#>     Attrib V22    -0.07771078752695189
#>     Attrib V23    -0.06940293551894314
#>     Attrib V24    -0.07750328452591077
#>     Attrib V25    -0.03571064562245845
#>     Attrib V26    -0.06116592893087971
#>     Attrib V27    -0.0037971249468886385
#>     Attrib V28    0.0187862732761085
#>     Attrib V29    0.01851832946395826
#>     Attrib V3    0.058327157048051755
#>     Attrib V30    0.03706048113518723
#>     Attrib V31    -0.055004310820333635
#>     Attrib V32    -0.030247317024252377
#>     Attrib V33    0.05589076989215626
#>     Attrib V34    0.017835006622034393
#>     Attrib V35    0.08017000376492352
#>     Attrib V36    0.0636755944925853
#>     Attrib V37    0.07725946962430018
#>     Attrib V38    0.014115501856923486
#>     Attrib V39    0.06999827793789896
#>     Attrib V4    0.13212292838225123
#>     Attrib V40    0.0443101718672529
#>     Attrib V41    0.02017827613217241
#>     Attrib V42    0.056039643013742875
#>     Attrib V43    0.045191998899992966
#>     Attrib V44    0.0726618059196525
#>     Attrib V45    0.0696763227697022
#>     Attrib V46    0.04460439400244298
#>     Attrib V47    0.0459674520940308
#>     Attrib V48    0.1102887456746163
#>     Attrib V49    0.02405088333026839
#>     Attrib V5    0.04765867418815588
#>     Attrib V50    0.07199187117219435
#>     Attrib V51    0.03861050063692916
#>     Attrib V52    0.03698391877896895
#>     Attrib V53    0.03423671848521758
#>     Attrib V54    0.04930041942916834
#>     Attrib V55    0.08932711206715559
#>     Attrib V56    0.09797812422042479
#>     Attrib V57    0.11280638455071021
#>     Attrib V58    0.07536964975426756
#>     Attrib V59    0.060772066298068014
#>     Attrib V6    0.08869753035267429
#>     Attrib V60    0.12623657513270953
#>     Attrib V7    0.003496716985690903
#>     Attrib V8    0.08711008027214456
#>     Attrib V9    0.056937092579659294
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.29827174348678537
#>     Attrib V1    0.44410528680997446
#>     Attrib V10    0.20273762071120371
#>     Attrib V11    0.5752061471308604
#>     Attrib V12    0.41560428409010214
#>     Attrib V13    -0.27601827389113354
#>     Attrib V14    -0.35301100225139886
#>     Attrib V15    0.06410273414427757
#>     Attrib V16    -0.062358502159060754
#>     Attrib V17    -0.2623833943385571
#>     Attrib V18    -0.3797866677810403
#>     Attrib V19    -0.17555389924698683
#>     Attrib V2    0.13242781267526016
#>     Attrib V20    -0.20238205372435278
#>     Attrib V21    -0.1595964076758707
#>     Attrib V22    -0.4144765847749314
#>     Attrib V23    -0.3706866581338807
#>     Attrib V24    0.09342411595822703
#>     Attrib V25    0.08965799182169186
#>     Attrib V26    -0.06620946661417987
#>     Attrib V27    0.07014938664537508
#>     Attrib V28    0.30884164520344237
#>     Attrib V29    0.1702133109366725
#>     Attrib V3    -0.05339521770506204
#>     Attrib V30    0.319105391235739
#>     Attrib V31    -0.49085819382880974
#>     Attrib V32    -0.06350444680782351
#>     Attrib V33    0.08955291623641537
#>     Attrib V34    -0.15479918405423448
#>     Attrib V35    -0.18491420005383274
#>     Attrib V36    -0.7076536913136161
#>     Attrib V37    -0.536103143162493
#>     Attrib V38    0.009372494505454262
#>     Attrib V39    0.07758506999477381
#>     Attrib V4    0.04511174117454112
#>     Attrib V40    -0.22568724453415737
#>     Attrib V41    0.23499701322916214
#>     Attrib V42    0.07711019723992744
#>     Attrib V43    -0.1774006605591236
#>     Attrib V44    0.05156588064764339
#>     Attrib V45    0.46157979846570524
#>     Attrib V46    0.20997115418026704
#>     Attrib V47    0.20620237327229798
#>     Attrib V48    0.3055739151835255
#>     Attrib V49    0.31981138583753904
#>     Attrib V5    0.18263693954616061
#>     Attrib V50    -0.3074542286117404
#>     Attrib V51    0.056264450484666786
#>     Attrib V52    0.11499563782119201
#>     Attrib V53    0.34111446656370575
#>     Attrib V54    0.3618389885154132
#>     Attrib V55    0.12867526460602557
#>     Attrib V56    -0.134811937173889
#>     Attrib V57    0.189620503172645
#>     Attrib V58    0.1621548023784157
#>     Attrib V59    -0.07704943321083349
#>     Attrib V6    0.016011275633867495
#>     Attrib V60    -0.05676011086211253
#>     Attrib V7    -0.2662067418621044
#>     Attrib V8    0.22753528882743193
#>     Attrib V9    0.4188444191623444
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5025136680033653
#>     Attrib V1    -0.5556851076537749
#>     Attrib V10    -0.00852124729281305
#>     Attrib V11    -0.8871342356349471
#>     Attrib V12    -0.7707926875759205
#>     Attrib V13    0.35453215396259424
#>     Attrib V14    0.7298703990471168
#>     Attrib V15    0.30926245186821155
#>     Attrib V16    0.6387736130999817
#>     Attrib V17    0.6758982494129286
#>     Attrib V18    0.7721994753611002
#>     Attrib V19    -0.4476279924301519
#>     Attrib V2    -0.07327113364071829
#>     Attrib V20    -0.6849793703612013
#>     Attrib V21    -0.5927770345303466
#>     Attrib V22    -0.45044876352270385
#>     Attrib V23    -0.46599586499264284
#>     Attrib V24    -0.4557434256410011
#>     Attrib V25    0.16913250380406053
#>     Attrib V26    0.6254418620873367
#>     Attrib V27    0.0830525611434144
#>     Attrib V28    -0.4468310657068528
#>     Attrib V29    -0.05368957780668326
#>     Attrib V3    0.08193376009347897
#>     Attrib V30    0.18396930179378385
#>     Attrib V31    1.7794212980780602
#>     Attrib V32    0.30724334348103677
#>     Attrib V33    -0.17273166647882673
#>     Attrib V34    0.2728585621644294
#>     Attrib V35    -0.1397504730710346
#>     Attrib V36    1.112702084839094
#>     Attrib V37    1.1706343366972165
#>     Attrib V38    0.0895919489446285
#>     Attrib V39    -0.06222638463309537
#>     Attrib V4    -0.10857738871427278
#>     Attrib V40    0.35879219561447284
#>     Attrib V41    -1.0529168942912723
#>     Attrib V42    -0.606634158700145
#>     Attrib V43    -0.22123164523426525
#>     Attrib V44    -0.1744262243204029
#>     Attrib V45    -0.4101178392147351
#>     Attrib V46    -0.38149072227952585
#>     Attrib V47    -0.5213604092649172
#>     Attrib V48    -0.1434422358392926
#>     Attrib V49    -0.8365844903380939
#>     Attrib V5    -0.5974293489693149
#>     Attrib V50    0.7059018031344333
#>     Attrib V51    -0.1206383096567827
#>     Attrib V52    -0.056320939886966806
#>     Attrib V53    -0.6356406807601122
#>     Attrib V54    -0.4266405219982269
#>     Attrib V55    0.3001581504645199
#>     Attrib V56    0.27868624394084723
#>     Attrib V57    0.24638480654504408
#>     Attrib V58    -0.504446689365126
#>     Attrib V59    0.07947342178154952
#>     Attrib V6    0.3411693233866658
#>     Attrib V60    0.5025565945843461
#>     Attrib V7    1.5884101917717222
#>     Attrib V8    0.3155748348622411
#>     Attrib V9    -0.4397425673062136
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.12266944853753202
#>     Attrib V1    0.27083528084035
#>     Attrib V10    -0.07977796619549225
#>     Attrib V11    0.28079920891261106
#>     Attrib V12    0.13273687422751287
#>     Attrib V13    -0.20281469466719482
#>     Attrib V14    0.0332843332590086
#>     Attrib V15    0.24966351841278348
#>     Attrib V16    0.18181621452254726
#>     Attrib V17    0.06227205717251354
#>     Attrib V18    -0.12077710426661109
#>     Attrib V19    0.07994614666796435
#>     Attrib V2    0.08468518904730639
#>     Attrib V20    0.22486728183423255
#>     Attrib V21    0.13600867005551145
#>     Attrib V22    -0.0828718068880277
#>     Attrib V23    -0.17978363575382225
#>     Attrib V24    0.042187209810513486
#>     Attrib V25    -0.005851294906941848
#>     Attrib V26    -0.3899648870388227
#>     Attrib V27    -0.2602704669579605
#>     Attrib V28    -0.0735230933731546
#>     Attrib V29    -0.09157774962855703
#>     Attrib V3    0.010142430354931339
#>     Attrib V30    -0.10443960212994106
#>     Attrib V31    -0.6531239823761054
#>     Attrib V32    -0.0727359885600877
#>     Attrib V33    0.252313515453063
#>     Attrib V34    -0.01152075731383308
#>     Attrib V35    -0.0699088447216855
#>     Attrib V36    -0.38504907647532605
#>     Attrib V37    -0.407418049017196
#>     Attrib V38    0.04383331124161015
#>     Attrib V39    0.1497189898832258
#>     Attrib V4    0.053435591684508676
#>     Attrib V40    -0.10919142498085671
#>     Attrib V41    0.09262192075748879
#>     Attrib V42    0.13746428176256206
#>     Attrib V43    0.030646225944275855
#>     Attrib V44    0.011265835374242644
#>     Attrib V45    0.2653724558738027
#>     Attrib V46    0.009775788191477024
#>     Attrib V47    0.05511595120064721
#>     Attrib V48    0.10472049713337961
#>     Attrib V49    0.12507173053148196
#>     Attrib V5    0.0917631948597707
#>     Attrib V50    -0.3012816930617364
#>     Attrib V51    -0.06569060057314843
#>     Attrib V52    0.05111548155471338
#>     Attrib V53    0.1511551624277015
#>     Attrib V54    0.26797049426608505
#>     Attrib V55    0.11463986782416881
#>     Attrib V56    0.08116444226448474
#>     Attrib V57    0.14446676655636745
#>     Attrib V58    0.14935842479519287
#>     Attrib V59    -0.012033368147045335
#>     Attrib V6    -0.022425239260143337
#>     Attrib V60    -0.02266625101690221
#>     Attrib V7    -0.22255911475702703
#>     Attrib V8    0.18552767776007062
#>     Attrib V9    0.19201413137207352
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.08077232410179713
#>     Attrib V1    0.2073083974607614
#>     Attrib V10    0.08293180031439717
#>     Attrib V11    0.17160727658149244
#>     Attrib V12    0.11360022769960845
#>     Attrib V13    -0.005746804278021388
#>     Attrib V14    0.034719352517057635
#>     Attrib V15    0.12829016098530807
#>     Attrib V16    0.08239950235134547
#>     Attrib V17    0.04383788639019016
#>     Attrib V18    -0.08511019292148321
#>     Attrib V19    -0.0012674454154789458
#>     Attrib V2    0.13495123936539397
#>     Attrib V20    0.047923039662346366
#>     Attrib V21    0.019087504511283174
#>     Attrib V22    -0.10594063515107473
#>     Attrib V23    -0.09203527439120739
#>     Attrib V24    -0.051594571735414145
#>     Attrib V25    -2.5368588959155333E-4
#>     Attrib V26    -0.10330894314592542
#>     Attrib V27    -0.10377540344392619
#>     Attrib V28    0.004172758225516642
#>     Attrib V29    -0.09703167416679119
#>     Attrib V3    0.06059460484872325
#>     Attrib V30    0.014234466790070784
#>     Attrib V31    -0.22677124797281642
#>     Attrib V32    -0.06337252179773337
#>     Attrib V33    0.07242198259318013
#>     Attrib V34    0.00874967853633786
#>     Attrib V35    0.031564132009413416
#>     Attrib V36    -0.13675612438519194
#>     Attrib V37    -0.09870267778512502
#>     Attrib V38    0.02201038526938238
#>     Attrib V39    0.14578987834936014
#>     Attrib V4    0.156886330973531
#>     Attrib V40    -0.004342880596369911
#>     Attrib V41    0.03815265531434442
#>     Attrib V42    0.08672227153605522
#>     Attrib V43    -0.022163782129421487
#>     Attrib V44    0.006573258863673519
#>     Attrib V45    0.12615059125513223
#>     Attrib V46    0.04831716937901828
#>     Attrib V47    0.04462226264476158
#>     Attrib V48    0.12691154236130633
#>     Attrib V49    0.07474899057107717
#>     Attrib V5    0.06645444968304276
#>     Attrib V50    -0.0753227079138676
#>     Attrib V51    0.019155609650030127
#>     Attrib V52    0.08481077285655313
#>     Attrib V53    0.12074259879574582
#>     Attrib V54    0.16992713235201568
#>     Attrib V55    0.0917088906047365
#>     Attrib V56    0.12230340797953132
#>     Attrib V57    0.11293622717592182
#>     Attrib V58    0.15429382376506268
#>     Attrib V59    0.07544310845552149
#>     Attrib V6    0.0195385570527048
#>     Attrib V60    0.04053565363909714
#>     Attrib V7    -0.1155308939479621
#>     Attrib V8    0.09047949234024628
#>     Attrib V9    0.12225182233712346
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.03880644888616754
#>     Attrib V1    0.5254795254035605
#>     Attrib V10    -0.39763043641420276
#>     Attrib V11    -0.028403423567711455
#>     Attrib V12    -0.29694013870646946
#>     Attrib V13    -0.29110848026320785
#>     Attrib V14    0.30565492338275607
#>     Attrib V15    0.7390582795999503
#>     Attrib V16    0.6305624959832049
#>     Attrib V17    0.3845681965360408
#>     Attrib V18    0.036985467508670634
#>     Attrib V19    0.3264935068795863
#>     Attrib V2    0.2974145398572409
#>     Attrib V20    0.58975204028406
#>     Attrib V21    0.3760739529763265
#>     Attrib V22    0.08429945523574188
#>     Attrib V23    -0.09095115172460444
#>     Attrib V24    -0.2040665798669506
#>     Attrib V25    -0.6540868189296448
#>     Attrib V26    -1.1443524803454217
#>     Attrib V27    -0.8975705220656515
#>     Attrib V28    -0.5818203359866744
#>     Attrib V29    -0.428032180189103
#>     Attrib V3    5.943175982104689E-4
#>     Attrib V30    -0.4469783296854771
#>     Attrib V31    -1.3984464789040434
#>     Attrib V32    -0.29292681753882444
#>     Attrib V33    0.5369270004387333
#>     Attrib V34    0.015989055358776205
#>     Attrib V35    -0.13279064587642167
#>     Attrib V36    -0.48333816900359305
#>     Attrib V37    -0.7288090464723193
#>     Attrib V38    0.10012539952936435
#>     Attrib V39    0.17713645154968538
#>     Attrib V4    0.2793860961606842
#>     Attrib V40    -0.2031593989104151
#>     Attrib V41    0.060526198073329096
#>     Attrib V42    0.5599583385158723
#>     Attrib V43    0.32730254088640914
#>     Attrib V44    0.2941572672850472
#>     Attrib V45    0.26987348902958863
#>     Attrib V46    -0.10737127976689338
#>     Attrib V47    -0.13809960756375309
#>     Attrib V48    -0.10378316511122143
#>     Attrib V49    -0.15396983594708313
#>     Attrib V5    0.24829862175428866
#>     Attrib V50    -0.5776302681994179
#>     Attrib V51    -0.3359769920712341
#>     Attrib V52    -0.06355313005811188
#>     Attrib V53    0.24667582526894544
#>     Attrib V54    0.6176142078451888
#>     Attrib V55    0.08811338056834783
#>     Attrib V56    0.2392437460359171
#>     Attrib V57    0.15463081330279577
#>     Attrib V58    0.29530539274885886
#>     Attrib V59    0.04277685202202067
#>     Attrib V6    0.031956266432800695
#>     Attrib V60    0.0019655359296718573
#>     Attrib V7    -0.26086874826525597
#>     Attrib V8    0.34434154409829265
#>     Attrib V9    0.1967158752864493
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.11499008463135617
#>     Attrib V1    0.13739919676487758
#>     Attrib V10    -0.01026092407957036
#>     Attrib V11    0.1064725592185591
#>     Attrib V12    0.01994653803470112
#>     Attrib V13    -0.06627593972986169
#>     Attrib V14    0.0853808154524974
#>     Attrib V15    0.10169521621251532
#>     Attrib V16    0.0909801739880596
#>     Attrib V17    -0.01330438121861302
#>     Attrib V18    0.0036011893402181716
#>     Attrib V19    -0.045166805292418524
#>     Attrib V2    0.07338654293027716
#>     Attrib V20    0.03291166208988993
#>     Attrib V21    -0.009440209660795203
#>     Attrib V22    -0.0941929470277132
#>     Attrib V23    -0.05825854020187779
#>     Attrib V24    -0.06410912845136356
#>     Attrib V25    -0.08753774827194911
#>     Attrib V26    -0.12219436842161356
#>     Attrib V27    -0.07448550531385284
#>     Attrib V28    0.024998860885250728
#>     Attrib V29    -0.013841050532544375
#>     Attrib V3    0.10632195626268319
#>     Attrib V30    0.05443810865128666
#>     Attrib V31    -0.2004362824123947
#>     Attrib V32    -0.04628149497770838
#>     Attrib V33    0.08318885429333239
#>     Attrib V34    0.0351948411592908
#>     Attrib V35    0.03489822652995931
#>     Attrib V36    -0.0024850563064238293
#>     Attrib V37    -0.05152669366559606
#>     Attrib V38    -0.006686358819033371
#>     Attrib V39    0.07621380339764564
#>     Attrib V4    0.09520383821202241
#>     Attrib V40    -0.016556722861097925
#>     Attrib V41    -0.005622700107222011
#>     Attrib V42    0.06440848339715415
#>     Attrib V43    -0.029269514436120088
#>     Attrib V44    0.07751450045531123
#>     Attrib V45    0.1353564399835078
#>     Attrib V46    0.06983753161266583
#>     Attrib V47    0.06533157237726167
#>     Attrib V48    0.05220307730366873
#>     Attrib V49    0.10279702707283328
#>     Attrib V5    0.10736817237361647
#>     Attrib V50    -0.03492734040885564
#>     Attrib V51    0.05621984383836494
#>     Attrib V52    0.0912441529909976
#>     Attrib V53    0.07461507044707896
#>     Attrib V54    0.07073331295545603
#>     Attrib V55    0.08241637478489079
#>     Attrib V56    0.06829689745664985
#>     Attrib V57    0.09983091370464045
#>     Attrib V58    0.143890167695407
#>     Attrib V59    0.00830405602394206
#>     Attrib V6    0.05119763912712471
#>     Attrib V60    0.02633826004000258
#>     Attrib V7    -0.03221320440276975
#>     Attrib V8    0.12299701405198682
#>     Attrib V9    0.1369373147823132
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
