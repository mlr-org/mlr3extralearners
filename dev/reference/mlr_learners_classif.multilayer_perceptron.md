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
#>     Threshold    -0.301322827966443
#>     Node 2    1.6520853477203856
#>     Node 3    1.7304371914239645
#>     Node 4    1.551204990513291
#>     Node 5    -1.3887367255763987
#>     Node 6    1.508537780126953
#>     Node 7    3.0656399141209074
#>     Node 8    1.0360612184133002
#>     Node 9    3.3240907071370085
#>     Node 10    -1.180984084853228
#>     Node 11    1.5613052258137858
#>     Node 12    1.4960784325483938
#>     Node 13    0.9589084418840833
#>     Node 14    1.3115678625695366
#>     Node 15    -2.648890364061714
#>     Node 16    0.17418716437989099
#>     Node 17    0.6915084245912622
#>     Node 18    -0.9387456241513283
#>     Node 19    1.259451633113847
#>     Node 20    1.6891784187127972
#>     Node 21    -1.5620292242126979
#>     Node 22    1.0181860513099057
#>     Node 23    0.8156323204552717
#>     Node 24    -1.2387241594552039
#>     Node 25    4.498677145996713
#>     Node 26    -0.7523551420224704
#>     Node 27    1.4649903518053322
#>     Node 28    -3.505192820947164
#>     Node 29    1.4656693077703404
#>     Node 30    0.5880759075393266
#>     Node 31    0.7897809201742196
#>     Node 32    0.07985424545540946
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.34901966930381145
#>     Node 2    -1.6892541221717368
#>     Node 3    -1.7115328767438727
#>     Node 4    -1.5104274155179571
#>     Node 5    1.4008392632356028
#>     Node 6    -1.4916247726386511
#>     Node 7    -3.071664311637912
#>     Node 8    -1.0758139538282439
#>     Node 9    -3.3335799582711996
#>     Node 10    1.119989089928683
#>     Node 11    -1.5342095943275469
#>     Node 12    -1.5707733426017312
#>     Node 13    -0.9121448152031655
#>     Node 14    -1.2488941408903316
#>     Node 15    2.6437071306209625
#>     Node 16    -0.1945822058140082
#>     Node 17    -0.6690713074313901
#>     Node 18    0.9876182835776438
#>     Node 19    -1.244519298530003
#>     Node 20    -1.6746756096738837
#>     Node 21    1.617605631185861
#>     Node 22    -1.0832604677566389
#>     Node 23    -0.8710731429469574
#>     Node 24    1.2276736501063215
#>     Node 25    -4.5060360190207716
#>     Node 26    0.677408578669384
#>     Node 27    -1.5037241159594656
#>     Node 28    3.480360472584901
#>     Node 29    -1.5009909311077323
#>     Node 30    -0.5192600625894257
#>     Node 31    -0.7446015146823403
#>     Node 32    -0.1000046890127974
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.3887573320894636
#>     Attrib V1    0.4595411060680243
#>     Attrib V10    0.1411116794248852
#>     Attrib V11    0.3493217972474188
#>     Attrib V12    0.26353841719904797
#>     Attrib V13    0.33645247050854327
#>     Attrib V14    -0.2746547056077423
#>     Attrib V15    0.12716084182451415
#>     Attrib V16    -0.27915821058107976
#>     Attrib V17    -0.3027608555693874
#>     Attrib V18    0.21664312228441124
#>     Attrib V19    0.14148068925335947
#>     Attrib V2    0.22673366915983384
#>     Attrib V20    0.21593762165606778
#>     Attrib V21    0.19961951937234998
#>     Attrib V22    0.10351111149131634
#>     Attrib V23    0.45947807433311444
#>     Attrib V24    0.4657623406782257
#>     Attrib V25    0.14615290573070522
#>     Attrib V26    -0.040983118839225986
#>     Attrib V27    -0.21737517052361366
#>     Attrib V28    0.5235657426826551
#>     Attrib V29    0.9374237910381282
#>     Attrib V3    -0.2724296357347719
#>     Attrib V30    0.7781176829299532
#>     Attrib V31    -0.8007307983494486
#>     Attrib V32    -0.2672107827756508
#>     Attrib V33    0.15317786131264716
#>     Attrib V34    0.11476168477798122
#>     Attrib V35    0.29671881924148064
#>     Attrib V36    -0.46740822048928776
#>     Attrib V37    -0.5848375375351805
#>     Attrib V38    0.18235329045509605
#>     Attrib V39    0.374590747947441
#>     Attrib V4    0.045039636957101496
#>     Attrib V40    0.028960554354293917
#>     Attrib V41    0.539718187427483
#>     Attrib V42    0.5037190994892523
#>     Attrib V43    0.6080286464077137
#>     Attrib V44    0.5837082699343481
#>     Attrib V45    0.5002757716692323
#>     Attrib V46    0.3038351848900293
#>     Attrib V47    0.21493721874961516
#>     Attrib V48    0.0053210925964135335
#>     Attrib V49    0.19847585604155482
#>     Attrib V5    -0.3597634326704995
#>     Attrib V50    -0.15878511922803207
#>     Attrib V51    0.3719835615686898
#>     Attrib V52    0.20393318655227613
#>     Attrib V53    0.5476974060171923
#>     Attrib V54    0.32044481110662326
#>     Attrib V55    -0.4371844412288816
#>     Attrib V56    0.2360232992018849
#>     Attrib V57    -0.6521011317272143
#>     Attrib V58    0.43384546697366416
#>     Attrib V59    0.816098855499173
#>     Attrib V6    -0.11768955371713077
#>     Attrib V60    0.2083799369425947
#>     Attrib V7    0.020759909302094256
#>     Attrib V8    -0.3975647987576414
#>     Attrib V9    -0.17299227973381087
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.08067910092974381
#>     Attrib V1    0.5286689806322917
#>     Attrib V10    -0.12525914657447068
#>     Attrib V11    -0.17234804402918869
#>     Attrib V12    -0.08130138651082476
#>     Attrib V13    0.07312933433644721
#>     Attrib V14    -0.10588381016852626
#>     Attrib V15    0.3600461488605257
#>     Attrib V16    0.04335935017729134
#>     Attrib V17    -0.12623777061781255
#>     Attrib V18    0.17535467347336778
#>     Attrib V19    0.29169792966748903
#>     Attrib V2    0.37101378865438783
#>     Attrib V20    0.5829495827067029
#>     Attrib V21    0.5595269291577966
#>     Attrib V22    0.40712385337197593
#>     Attrib V23    0.4289027372655039
#>     Attrib V24    0.22808658205072024
#>     Attrib V25    -0.12203836852063693
#>     Attrib V26    -0.8190683457638787
#>     Attrib V27    -1.243673706920177
#>     Attrib V28    -0.4778063150619216
#>     Attrib V29    0.2027515747648211
#>     Attrib V3    -0.168768460225999
#>     Attrib V30    0.4081334477068313
#>     Attrib V31    -0.7772580183103894
#>     Attrib V32    -0.1726375610045057
#>     Attrib V33    0.2685462425909599
#>     Attrib V34    0.009340966291377357
#>     Attrib V35    -0.03761096547253225
#>     Attrib V36    -0.4253419481961719
#>     Attrib V37    -0.6629756788728535
#>     Attrib V38    0.09117773137364334
#>     Attrib V39    0.3734927635396741
#>     Attrib V4    0.075909083542851
#>     Attrib V40    -0.19168100648403458
#>     Attrib V41    -0.13385302153179396
#>     Attrib V42    0.08470203504246576
#>     Attrib V43    0.356520933030033
#>     Attrib V44    0.43460351050017537
#>     Attrib V45    0.286362027918634
#>     Attrib V46    0.06784085392807543
#>     Attrib V47    0.04483149757118602
#>     Attrib V48    -0.11914446319244748
#>     Attrib V49    -0.03892642328114731
#>     Attrib V5    -0.562565924333322
#>     Attrib V50    0.029521832169059913
#>     Attrib V51    0.2377320890892063
#>     Attrib V52    0.1324441499144246
#>     Attrib V53    0.4317674741074207
#>     Attrib V54    0.4679600112163348
#>     Attrib V55    -0.08816579843770295
#>     Attrib V56    0.3897859147925387
#>     Attrib V57    -0.12614550403005273
#>     Attrib V58    0.3703427500896098
#>     Attrib V59    0.6394076769944581
#>     Attrib V6    -0.37668167250372925
#>     Attrib V60    0.3131300169609146
#>     Attrib V7    0.05332004522577986
#>     Attrib V8    -0.17928622863502555
#>     Attrib V9    -0.2717094782733674
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.04783830495693145
#>     Attrib V1    0.43178502055622414
#>     Attrib V10    -0.164470311446057
#>     Attrib V11    -0.18694428918536346
#>     Attrib V12    -0.11355713952651228
#>     Attrib V13    0.034336848295985
#>     Attrib V14    -0.07591580632133178
#>     Attrib V15    0.3273073293064507
#>     Attrib V16    0.06245462565161777
#>     Attrib V17    -0.08213953135495554
#>     Attrib V18    0.1660845012986095
#>     Attrib V19    0.22107334314080057
#>     Attrib V2    0.2693766128213279
#>     Attrib V20    0.516426290594082
#>     Attrib V21    0.5721380310542383
#>     Attrib V22    0.3218423553805886
#>     Attrib V23    0.3481686403229482
#>     Attrib V24    0.16448416327094287
#>     Attrib V25    -0.18580359643484107
#>     Attrib V26    -0.7728185384291897
#>     Attrib V27    -1.1671391830443762
#>     Attrib V28    -0.4233308418043584
#>     Attrib V29    0.21655355274287025
#>     Attrib V3    -0.1376853141347411
#>     Attrib V30    0.287161663965979
#>     Attrib V31    -0.709725433265001
#>     Attrib V32    -0.19046138580487476
#>     Attrib V33    0.24586460705964588
#>     Attrib V34    0.063868333187518
#>     Attrib V35    -0.024230000385701167
#>     Attrib V36    -0.3593081560683797
#>     Attrib V37    -0.5600801038294605
#>     Attrib V38    0.07970213063686252
#>     Attrib V39    0.3294702619056147
#>     Attrib V4    0.042496472371882844
#>     Attrib V40    -0.15721037338603505
#>     Attrib V41    -0.13929284231235345
#>     Attrib V42    0.09383404052350086
#>     Attrib V43    0.29833605733401836
#>     Attrib V44    0.37253851837639307
#>     Attrib V45    0.3171255425033288
#>     Attrib V46    0.060270750238108295
#>     Attrib V47    0.003460869523391741
#>     Attrib V48    -0.041212302184349354
#>     Attrib V49    0.011308538986156969
#>     Attrib V5    -0.4416709771479026
#>     Attrib V50    0.045335230787663175
#>     Attrib V51    0.24419668892181604
#>     Attrib V52    0.06298085694566576
#>     Attrib V53    0.433701440805142
#>     Attrib V54    0.33011467055982513
#>     Attrib V55    -0.1146626186732699
#>     Attrib V56    0.35222473200758386
#>     Attrib V57    -0.07406475363960074
#>     Attrib V58    0.2568404181228519
#>     Attrib V59    0.5613190624398585
#>     Attrib V6    -0.32549717556287877
#>     Attrib V60    0.3047202035933507
#>     Attrib V7    0.09003140915904309
#>     Attrib V8    -0.21916174812371675
#>     Attrib V9    -0.20768103369480576
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3740557637901884
#>     Attrib V1    -0.2759499632884877
#>     Attrib V10    -0.09919781214589203
#>     Attrib V11    -0.30747855460659357
#>     Attrib V12    -0.3205398365216655
#>     Attrib V13    -0.28373065276887804
#>     Attrib V14    0.36910620017746376
#>     Attrib V15    -0.009976249738777941
#>     Attrib V16    0.29042717882946506
#>     Attrib V17    0.4136204364663225
#>     Attrib V18    -0.02122387804590482
#>     Attrib V19    -0.008047797362139859
#>     Attrib V2    -0.11229454689010203
#>     Attrib V20    -0.21919966379954609
#>     Attrib V21    -0.19560081172576047
#>     Attrib V22    -0.18616996015839574
#>     Attrib V23    -0.3858768646827378
#>     Attrib V24    -0.3514720186689085
#>     Attrib V25    0.08279078821737751
#>     Attrib V26    0.3430936058737797
#>     Attrib V27    0.599166502863643
#>     Attrib V28    -0.020944094903631773
#>     Attrib V29    -0.5401232516514599
#>     Attrib V3    0.37617323216546517
#>     Attrib V30    -0.4556436834169562
#>     Attrib V31    0.6834133761323089
#>     Attrib V32    0.13853442358912094
#>     Attrib V33    -0.08196354128418486
#>     Attrib V34    0.11268910674384967
#>     Attrib V35    0.12023814595190055
#>     Attrib V36    0.6912141476817459
#>     Attrib V37    0.6984407489261311
#>     Attrib V38    0.04191072422067103
#>     Attrib V39    -0.20674944540951562
#>     Attrib V4    -0.08645662649560266
#>     Attrib V40    0.23489820768525121
#>     Attrib V41    -0.24679714466237235
#>     Attrib V42    -0.12848880491574713
#>     Attrib V43    -0.2732828865318836
#>     Attrib V44    -0.22521819557349476
#>     Attrib V45    -0.2574299071406568
#>     Attrib V46    -0.2044526226022637
#>     Attrib V47    -0.14614121501847838
#>     Attrib V48    0.04989239877292638
#>     Attrib V49    -0.06128644228701806
#>     Attrib V5    0.40833057133077444
#>     Attrib V50    0.2477073695228206
#>     Attrib V51    -0.3895406679840142
#>     Attrib V52    -0.15084494884999664
#>     Attrib V53    -0.2819610365452184
#>     Attrib V54    -0.2665728733183906
#>     Attrib V55    0.44576721679931897
#>     Attrib V56    -0.10135680689213429
#>     Attrib V57    0.4348093534586946
#>     Attrib V58    -0.3820603451598387
#>     Attrib V59    -0.5026136012453297
#>     Attrib V6    0.1332154368293444
#>     Attrib V60    -0.05352182556558233
#>     Attrib V7    0.025197382482517818
#>     Attrib V8    0.31666542641748563
#>     Attrib V9    0.08109123969735096
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.057855531782543046
#>     Attrib V1    0.4758718038936857
#>     Attrib V10    -0.2732212469891011
#>     Attrib V11    -0.31401241909604694
#>     Attrib V12    -0.10139962673773208
#>     Attrib V13    -0.05072744892649661
#>     Attrib V14    -0.0554001834707558
#>     Attrib V15    0.2830719529825899
#>     Attrib V16    0.13503054434088202
#>     Attrib V17    -0.13358614450901254
#>     Attrib V18    0.1371142783931195
#>     Attrib V19    0.1496058854717874
#>     Attrib V2    0.28842709478771084
#>     Attrib V20    0.4701869372138381
#>     Attrib V21    0.5126911648069493
#>     Attrib V22    0.261471792863351
#>     Attrib V23    0.17800029705714535
#>     Attrib V24    0.0892123634467791
#>     Attrib V25    -0.16485111613790107
#>     Attrib V26    -0.794430442435759
#>     Attrib V27    -1.1092944531077356
#>     Attrib V28    -0.6100852293179378
#>     Attrib V29    -0.018125296996006002
#>     Attrib V3    -0.11138085785797851
#>     Attrib V30    0.10197541352676526
#>     Attrib V31    -0.6516886957224648
#>     Attrib V32    -0.11268437518865823
#>     Attrib V33    0.25185576875342686
#>     Attrib V34    0.07418931663058019
#>     Attrib V35    0.0019919494967693967
#>     Attrib V36    -0.3045750552441118
#>     Attrib V37    -0.4735681931158496
#>     Attrib V38    0.09673940332150238
#>     Attrib V39    0.3045073734217511
#>     Attrib V4    0.09315525264732209
#>     Attrib V40    -0.15693376810121099
#>     Attrib V41    -0.11490335523546712
#>     Attrib V42    0.06014197473306341
#>     Attrib V43    0.2548500613829403
#>     Attrib V44    0.26430655860271496
#>     Attrib V45    0.18824342724312648
#>     Attrib V46    0.0795875323498752
#>     Attrib V47    -0.017318160613564837
#>     Attrib V48    -0.10607050486001778
#>     Attrib V49    -0.11365446451581616
#>     Attrib V5    -0.4072237023447513
#>     Attrib V50    0.08305658316788263
#>     Attrib V51    0.13670076311150453
#>     Attrib V52    -0.020937191071477016
#>     Attrib V53    0.39127247334079424
#>     Attrib V54    0.4038778436258319
#>     Attrib V55    -0.02909323941167828
#>     Attrib V56    0.35131760567331066
#>     Attrib V57    0.049249152237813135
#>     Attrib V58    0.24174440711042483
#>     Attrib V59    0.5689615554468782
#>     Attrib V6    -0.23537754957752632
#>     Attrib V60    0.43824502294757994
#>     Attrib V7    0.12032912819651957
#>     Attrib V8    -0.15290372089581675
#>     Attrib V9    -0.21442531660561875
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6840239992702558
#>     Attrib V1    0.47445199088684026
#>     Attrib V10    1.0111448462592982
#>     Attrib V11    1.4104826332841671
#>     Attrib V12    0.6721727682065792
#>     Attrib V13    0.3218637566480988
#>     Attrib V14    -0.820107412526006
#>     Attrib V15    -0.46382189735352936
#>     Attrib V16    -0.8259484283656418
#>     Attrib V17    -0.8026281772741648
#>     Attrib V18    -0.5136755518359016
#>     Attrib V19    -0.6005082277256436
#>     Attrib V2    -0.05097771290823673
#>     Attrib V20    -0.6042527391612181
#>     Attrib V21    -0.42365995997836076
#>     Attrib V22    -0.2864117038670103
#>     Attrib V23    0.20909679664455408
#>     Attrib V24    0.24995847996021148
#>     Attrib V25    0.06592410839936681
#>     Attrib V26    0.9477213788701025
#>     Attrib V27    1.0616353523296258
#>     Attrib V28    1.149285580336059
#>     Attrib V29    1.0637953690519097
#>     Attrib V3    -0.3635883620303279
#>     Attrib V30    0.6098975486414474
#>     Attrib V31    -0.6355388367567143
#>     Attrib V32    -0.3256619280601149
#>     Attrib V33    -0.17524825113702802
#>     Attrib V34    -0.1761470701893864
#>     Attrib V35    0.4254739973662577
#>     Attrib V36    -0.2545775177183345
#>     Attrib V37    0.13506408815367366
#>     Attrib V38    0.04989154069375458
#>     Attrib V39    0.08546216172300553
#>     Attrib V4    0.17461257560012747
#>     Attrib V40    0.30506345609355584
#>     Attrib V41    1.2414921409740842
#>     Attrib V42    0.5630970051763838
#>     Attrib V43    0.38338554405826886
#>     Attrib V44    0.2816562577458398
#>     Attrib V45    0.5452488309165708
#>     Attrib V46    0.765555583181841
#>     Attrib V47    0.620769259563645
#>     Attrib V48    0.2373678894861702
#>     Attrib V49    0.3759020311794805
#>     Attrib V5    0.23606381573663285
#>     Attrib V50    -0.21920912496630957
#>     Attrib V51    0.6779061776261913
#>     Attrib V52    0.23908467113122683
#>     Attrib V53    0.13067984342695846
#>     Attrib V54    0.2926365478082834
#>     Attrib V55    -0.5085740044386801
#>     Attrib V56    -0.28079150971002137
#>     Attrib V57    -0.8224023974576341
#>     Attrib V58    0.6051545085641948
#>     Attrib V59    0.865985638853267
#>     Attrib V6    0.4056077807548247
#>     Attrib V60    0.3759088625057155
#>     Attrib V7    0.18406859635280826
#>     Attrib V8    -0.2194784776752951
#>     Attrib V9    0.6106749307227944
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.21856642197417303
#>     Attrib V1    0.3523493067474076
#>     Attrib V10    -0.026725546825506808
#>     Attrib V11    0.04100160365246801
#>     Attrib V12    0.03047206798173427
#>     Attrib V13    0.09754393745125577
#>     Attrib V14    -0.19194255625868947
#>     Attrib V15    0.13742530565081504
#>     Attrib V16    0.016487714295393235
#>     Attrib V17    -0.14922015707184683
#>     Attrib V18    0.022476709927007846
#>     Attrib V19    0.07983024142202325
#>     Attrib V2    0.17505810576606043
#>     Attrib V20    0.2119813177784233
#>     Attrib V21    0.28652639136448765
#>     Attrib V22    0.11078467979643505
#>     Attrib V23    0.07076847702771673
#>     Attrib V24    0.06023690636465084
#>     Attrib V25    -0.10193013372840154
#>     Attrib V26    -0.3882252028532317
#>     Attrib V27    -0.6201068349863411
#>     Attrib V28    -0.1751267344846496
#>     Attrib V29    0.1701378138305622
#>     Attrib V3    -0.15113639801070355
#>     Attrib V30    0.2223338465330937
#>     Attrib V31    -0.5263994183309132
#>     Attrib V32    -0.11752065099355921
#>     Attrib V33    0.1958902310337357
#>     Attrib V34    0.05794930081438705
#>     Attrib V35    0.05975250418234526
#>     Attrib V36    -0.17475918719947633
#>     Attrib V37    -0.3368497771744216
#>     Attrib V38    0.1519303882476629
#>     Attrib V39    0.24381067389066077
#>     Attrib V4    0.08232031268123703
#>     Attrib V40    -0.09136017315896672
#>     Attrib V41    0.02255012646488465
#>     Attrib V42    0.035195523824674016
#>     Attrib V43    0.2522699126373196
#>     Attrib V44    0.30208887511476457
#>     Attrib V45    0.23849517640716364
#>     Attrib V46    0.14660817217192176
#>     Attrib V47    0.08625020823837319
#>     Attrib V48    0.03701273574233454
#>     Attrib V49    0.017510218442408635
#>     Attrib V5    -0.28446851280445423
#>     Attrib V50    -0.07309876607163841
#>     Attrib V51    0.11475147473438822
#>     Attrib V52    -0.02424798842814899
#>     Attrib V53    0.3198828730175364
#>     Attrib V54    0.2860748447626657
#>     Attrib V55    -0.17421418362765373
#>     Attrib V56    0.16699079612005133
#>     Attrib V57    -0.06202172883954815
#>     Attrib V58    0.14518022860699994
#>     Attrib V59    0.5193112448135092
#>     Attrib V6    -0.22248314190007967
#>     Attrib V60    0.3443250350537076
#>     Attrib V7    0.04589047714083386
#>     Attrib V8    -0.27248400754367685
#>     Attrib V9    -0.15934326109233027
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6321422208312308
#>     Attrib V1    0.33044799176080886
#>     Attrib V10    1.100190664967374
#>     Attrib V11    1.430321385365282
#>     Attrib V12    0.8363896074942474
#>     Attrib V13    0.4723449404190759
#>     Attrib V14    -0.8313492627761466
#>     Attrib V15    -0.4597888340930821
#>     Attrib V16    -0.8304352151243471
#>     Attrib V17    -0.6031390034956399
#>     Attrib V18    -0.273854366517514
#>     Attrib V19    -0.5257630148406411
#>     Attrib V2    -0.1400413145915067
#>     Attrib V20    -0.6679599043425335
#>     Attrib V21    -0.4171951387311265
#>     Attrib V22    -0.1599181104429712
#>     Attrib V23    0.408315748212677
#>     Attrib V24    0.4783819559798021
#>     Attrib V25    0.254632712602417
#>     Attrib V26    1.157180944282283
#>     Attrib V27    1.2846172991434737
#>     Attrib V28    1.2116565948891542
#>     Attrib V29    1.0640423826026724
#>     Attrib V3    -0.3914071140495156
#>     Attrib V30    0.5796064854605278
#>     Attrib V31    -0.702053023002394
#>     Attrib V32    -0.3155405636277007
#>     Attrib V33    -0.2729416172836392
#>     Attrib V34    -0.25665099514043577
#>     Attrib V35    0.3265698297020867
#>     Attrib V36    -0.34343258372710067
#>     Attrib V37    0.021138851939916728
#>     Attrib V38    -0.0679704838311701
#>     Attrib V39    0.08317458690004918
#>     Attrib V4    0.1919087155509131
#>     Attrib V40    0.3039964811537094
#>     Attrib V41    1.3984486491175834
#>     Attrib V42    0.5708111381098596
#>     Attrib V43    0.5102108416573807
#>     Attrib V44    0.2963405561435769
#>     Attrib V45    0.5049491041798746
#>     Attrib V46    0.7619977286666791
#>     Attrib V47    0.6550143956750302
#>     Attrib V48    0.24359297655175663
#>     Attrib V49    0.5077363937384516
#>     Attrib V5    0.32612898620349995
#>     Attrib V50    -0.18430465981038627
#>     Attrib V51    0.8199724368040817
#>     Attrib V52    0.3324444266893267
#>     Attrib V53    0.3400181500178142
#>     Attrib V54    0.17364250587643906
#>     Attrib V55    -0.6479981498564902
#>     Attrib V56    -0.24630107422863992
#>     Attrib V57    -0.8331379565340497
#>     Attrib V58    0.6577282040627992
#>     Attrib V59    0.870805506933435
#>     Attrib V6    0.5113390068172573
#>     Attrib V60    0.27570575688674237
#>     Attrib V7    0.10022871051996546
#>     Attrib V8    -0.2676095953577982
#>     Attrib V9    0.5740341475171195
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.32932078627127265
#>     Attrib V1    -0.18780990475270215
#>     Attrib V10    -0.11129395658352478
#>     Attrib V11    -0.26427823561517555
#>     Attrib V12    -0.20987482193704723
#>     Attrib V13    -0.16965544589690337
#>     Attrib V14    0.34447811729323596
#>     Attrib V15    -0.07769178575937805
#>     Attrib V16    0.233588769132312
#>     Attrib V17    0.24971624752128546
#>     Attrib V18    0.016753841460472818
#>     Attrib V19    0.01333287649217512
#>     Attrib V2    -0.12644986433573352
#>     Attrib V20    -0.14391580931130366
#>     Attrib V21    -0.15933154152363493
#>     Attrib V22    -0.16583695247336533
#>     Attrib V23    -0.3108684147558126
#>     Attrib V24    -0.2810514010877699
#>     Attrib V25    0.04871305435780143
#>     Attrib V26    0.3326586157290154
#>     Attrib V27    0.5273823910693262
#>     Attrib V28    0.04233026837125746
#>     Attrib V29    -0.4535073335532943
#>     Attrib V3    0.26876413086378853
#>     Attrib V30    -0.33814907624163887
#>     Attrib V31    0.525378800812822
#>     Attrib V32    0.020019071600165618
#>     Attrib V33    -0.04624570325926456
#>     Attrib V34    0.11814489845624314
#>     Attrib V35    0.12956924384636534
#>     Attrib V36    0.5825514666454131
#>     Attrib V37    0.5970669839181718
#>     Attrib V38    0.1132015875877758
#>     Attrib V39    -0.1548216395933577
#>     Attrib V4    -0.049480811547550935
#>     Attrib V40    0.22082418351718328
#>     Attrib V41    -0.13575360653725713
#>     Attrib V42    -0.1243827750115809
#>     Attrib V43    -0.21395718978460312
#>     Attrib V44    -0.16915902676260536
#>     Attrib V45    -0.1401140022117649
#>     Attrib V46    -0.1673351660623703
#>     Attrib V47    -0.13826945987860415
#>     Attrib V48    0.003969054096616321
#>     Attrib V49    -0.05295485124244661
#>     Attrib V5    0.2959203210967989
#>     Attrib V50    0.20664155063938952
#>     Attrib V51    -0.33921864722975353
#>     Attrib V52    -0.1288974658893332
#>     Attrib V53    -0.1570529584487688
#>     Attrib V54    -0.21448784886290775
#>     Attrib V55    0.321002214191056
#>     Attrib V56    -0.13443326677937936
#>     Attrib V57    0.3554886872711674
#>     Attrib V58    -0.29217921024477733
#>     Attrib V59    -0.4194803612436819
#>     Attrib V6    0.09948189734111802
#>     Attrib V60    -0.09339335068713633
#>     Attrib V7    -0.008408916205216764
#>     Attrib V8    0.23462457387684874
#>     Attrib V9    0.04408482946320391
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.029783339006002472
#>     Attrib V1    0.418218647028342
#>     Attrib V10    -0.2313496136476505
#>     Attrib V11    -0.267738187920278
#>     Attrib V12    -0.08701110884027324
#>     Attrib V13    -0.045068890340797085
#>     Attrib V14    -0.08105239329238739
#>     Attrib V15    0.27651653830405704
#>     Attrib V16    0.08250410829706896
#>     Attrib V17    -0.07467330067358204
#>     Attrib V18    0.14579238002211628
#>     Attrib V19    0.18618661008280954
#>     Attrib V2    0.2415842599405174
#>     Attrib V20    0.522696897165897
#>     Attrib V21    0.47314044487646195
#>     Attrib V22    0.25940943318297194
#>     Attrib V23    0.22367646214632256
#>     Attrib V24    0.08603887457363836
#>     Attrib V25    -0.18858068574593775
#>     Attrib V26    -0.8733157066506777
#>     Attrib V27    -1.1787198133150112
#>     Attrib V28    -0.5409672602961265
#>     Attrib V29    0.03469840400220379
#>     Attrib V3    -0.17647489748878425
#>     Attrib V30    0.18182167074047825
#>     Attrib V31    -0.6997230625757899
#>     Attrib V32    -0.17540024376297494
#>     Attrib V33    0.2325412988401317
#>     Attrib V34    0.12432963695212208
#>     Attrib V35    0.022489745370847494
#>     Attrib V36    -0.276758963155301
#>     Attrib V37    -0.529949862255967
#>     Attrib V38    0.16309646816623166
#>     Attrib V39    0.3060610449123438
#>     Attrib V4    0.04049348508709327
#>     Attrib V40    -0.16572882983350315
#>     Attrib V41    -0.2012822398996859
#>     Attrib V42    0.03623052048946034
#>     Attrib V43    0.27504617946127297
#>     Attrib V44    0.32281305951292333
#>     Attrib V45    0.2550264625933444
#>     Attrib V46    0.07160870332222916
#>     Attrib V47    0.044006301852560534
#>     Attrib V48    -0.024354996199033644
#>     Attrib V49    -0.0655784168676966
#>     Attrib V5    -0.40568160800349823
#>     Attrib V50    0.07342188783248788
#>     Attrib V51    0.22354793873846648
#>     Attrib V52    0.0012883390777765835
#>     Attrib V53    0.3553019513962947
#>     Attrib V54    0.4657216065962507
#>     Attrib V55    -0.014735983293571972
#>     Attrib V56    0.32998305599648176
#>     Attrib V57    -0.0014775581804367906
#>     Attrib V58    0.2534751924269095
#>     Attrib V59    0.506890972382052
#>     Attrib V6    -0.28040414708032135
#>     Attrib V60    0.3856184751525956
#>     Attrib V7    0.06734324573832014
#>     Attrib V8    -0.17203354192387027
#>     Attrib V9    -0.2507471509286408
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.2111700938601942
#>     Attrib V1    0.4568560833852246
#>     Attrib V10    -0.149966082830769
#>     Attrib V11    -0.03979889747321409
#>     Attrib V12    -0.07716659319114944
#>     Attrib V13    0.05355350984526872
#>     Attrib V14    -0.1524393797670703
#>     Attrib V15    0.23700634128886844
#>     Attrib V16    0.02692692911486838
#>     Attrib V17    -0.14023462518043417
#>     Attrib V18    0.18227581084892816
#>     Attrib V19    0.2833273697642195
#>     Attrib V2    0.3122713083437307
#>     Attrib V20    0.4828376478082222
#>     Attrib V21    0.49112935120029527
#>     Attrib V22    0.3652774085856332
#>     Attrib V23    0.3819527702313656
#>     Attrib V24    0.1688788614497638
#>     Attrib V25    -0.15485486373778914
#>     Attrib V26    -0.6918932033326791
#>     Attrib V27    -1.008744356572662
#>     Attrib V28    -0.3839567512107431
#>     Attrib V29    0.32565911768120626
#>     Attrib V3    -0.2630223670969822
#>     Attrib V30    0.37742110099974674
#>     Attrib V31    -0.8441884863163278
#>     Attrib V32    -0.2675111332036331
#>     Attrib V33    0.24065362863752446
#>     Attrib V34    0.06295900272178163
#>     Attrib V35    0.00468762264759092
#>     Attrib V36    -0.3621349595671626
#>     Attrib V37    -0.5904771853734673
#>     Attrib V38    0.16603068189790512
#>     Attrib V39    0.32415786226272814
#>     Attrib V4    0.09114462021426632
#>     Attrib V40    -0.1308597428407125
#>     Attrib V41    -0.051408804554941366
#>     Attrib V42    0.07579241935355392
#>     Attrib V43    0.39963092994216026
#>     Attrib V44    0.3617360958510436
#>     Attrib V45    0.3260335117924694
#>     Attrib V46    0.14846899134041078
#>     Attrib V47    0.022264057907960252
#>     Attrib V48    -0.06707476733671082
#>     Attrib V49    -0.07964646118704985
#>     Attrib V5    -0.4878952908641303
#>     Attrib V50    -0.05868993076069148
#>     Attrib V51    0.2470402128390563
#>     Attrib V52    0.10321172875774444
#>     Attrib V53    0.45629811032304657
#>     Attrib V54    0.34941827988978175
#>     Attrib V55    -0.21948640512464793
#>     Attrib V56    0.32350786720288066
#>     Attrib V57    -0.14183813610612253
#>     Attrib V58    0.30001165707031224
#>     Attrib V59    0.6602788635460114
#>     Attrib V6    -0.32245468393168575
#>     Attrib V60    0.34092373494105854
#>     Attrib V7    0.11135821228850662
#>     Attrib V8    -0.21019444337679705
#>     Attrib V9    -0.21446281832303257
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.02801895860293457
#>     Attrib V1    0.3020150222254926
#>     Attrib V10    -0.1852922502166953
#>     Attrib V11    -0.15348126467496034
#>     Attrib V12    -0.04109143588350011
#>     Attrib V13    0.0891226441243954
#>     Attrib V14    -0.025100670529235328
#>     Attrib V15    0.1607339104966829
#>     Attrib V16    0.011488570106481515
#>     Attrib V17    -0.059482908306590324
#>     Attrib V18    0.0677186193692493
#>     Attrib V19    0.06090020884689116
#>     Attrib V2    0.1559583582734665
#>     Attrib V20    0.2810574409045041
#>     Attrib V21    0.2846966733506401
#>     Attrib V22    0.07261648684047968
#>     Attrib V23    0.029898969483761532
#>     Attrib V24    -0.024413343590393734
#>     Attrib V25    -0.11699407038137935
#>     Attrib V26    -0.5409903583548307
#>     Attrib V27    -0.6890589270408766
#>     Attrib V28    -0.43939098417165645
#>     Attrib V29    -0.07320673359576771
#>     Attrib V3    -0.012759418968651029
#>     Attrib V30    1.5851815715366046E-4
#>     Attrib V31    -0.4999400941316789
#>     Attrib V32    -0.09495281768846392
#>     Attrib V33    0.13486349839440223
#>     Attrib V34    0.1042362360616963
#>     Attrib V35    0.03728170887882598
#>     Attrib V36    -0.14103632838991817
#>     Attrib V37    -0.238830629071411
#>     Attrib V38    0.09478272348569901
#>     Attrib V39    0.2698853167527715
#>     Attrib V4    0.05962067613575382
#>     Attrib V40    -0.04018536446951508
#>     Attrib V41    -0.08141667980240959
#>     Attrib V42    0.019806778439613464
#>     Attrib V43    0.11332488380646913
#>     Attrib V44    0.14641475332563197
#>     Attrib V45    0.06969614069618557
#>     Attrib V46    0.06790963669606843
#>     Attrib V47    0.02838361109684231
#>     Attrib V48    -0.06559674846041158
#>     Attrib V49    -0.06312917357592977
#>     Attrib V5    -0.207968290638786
#>     Attrib V50    -0.028987717451734566
#>     Attrib V51    0.05030452374270881
#>     Attrib V52    -0.07149846342647537
#>     Attrib V53    0.23862804638204685
#>     Attrib V54    0.2831933025650229
#>     Attrib V55    0.004370058593687491
#>     Attrib V56    0.2165399923448963
#>     Attrib V57    0.033177840784124495
#>     Attrib V58    0.12199892294782551
#>     Attrib V59    0.4130773185305902
#>     Attrib V6    -0.16239420250741543
#>     Attrib V60    0.34342154661168306
#>     Attrib V7    0.09915109735854243
#>     Attrib V8    -0.20060391725264431
#>     Attrib V9    -0.1877455150375377
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.2367088003187545
#>     Attrib V1    0.45085587393880094
#>     Attrib V10    8.105291816904458E-4
#>     Attrib V11    0.12295379243211302
#>     Attrib V12    0.08961084423490069
#>     Attrib V13    0.08303809392215282
#>     Attrib V14    -0.24003262664719474
#>     Attrib V15    0.21136256484078453
#>     Attrib V16    -0.08399520889500786
#>     Attrib V17    -0.16395694815400322
#>     Attrib V18    0.10762707540325832
#>     Attrib V19    0.08279465566780948
#>     Attrib V2    0.2105712657900555
#>     Attrib V20    0.3213486035830403
#>     Attrib V21    0.3456500483503311
#>     Attrib V22    0.21130938981565844
#>     Attrib V23    0.27906163439931053
#>     Attrib V24    0.12889781016561336
#>     Attrib V25    -0.06739155901184708
#>     Attrib V26    -0.4615267295879707
#>     Attrib V27    -0.8239318227997412
#>     Attrib V28    -0.32051838757981493
#>     Attrib V29    0.18953936339207014
#>     Attrib V3    -0.2892255464851861
#>     Attrib V30    0.33005673768277366
#>     Attrib V31    -0.6235486218226338
#>     Attrib V32    -0.14178302692925526
#>     Attrib V33    0.2104477198691211
#>     Attrib V34    -0.011990585602687303
#>     Attrib V35    0.018742828680758657
#>     Attrib V36    -0.35613836172075813
#>     Attrib V37    -0.42828362713975804
#>     Attrib V38    0.08138600020389918
#>     Attrib V39    0.3068889293884854
#>     Attrib V4    0.0275834875669496
#>     Attrib V40    -0.1394974297278953
#>     Attrib V41    -0.010333237279372801
#>     Attrib V42    0.040593150821025575
#>     Attrib V43    0.26034606181376446
#>     Attrib V44    0.32662315797065117
#>     Attrib V45    0.17742051772497877
#>     Attrib V46    0.12264179510868137
#>     Attrib V47    0.05062631376072636
#>     Attrib V48    -0.008803769114098832
#>     Attrib V49    0.027839327935225047
#>     Attrib V5    -0.4200934196741256
#>     Attrib V50    -0.06989328309577447
#>     Attrib V51    0.18991198572006165
#>     Attrib V52    0.017538659251088974
#>     Attrib V53    0.26672037464993903
#>     Attrib V54    0.35514664916516864
#>     Attrib V55    -0.1914319753618095
#>     Attrib V56    0.21896748966851942
#>     Attrib V57    -0.16844378003346638
#>     Attrib V58    0.273384503842054
#>     Attrib V59    0.5499554485760145
#>     Attrib V6    -0.24510864330604473
#>     Attrib V60    0.3262980959715972
#>     Attrib V7    0.04211916119165174
#>     Attrib V8    -0.29049982090616067
#>     Attrib V9    -0.15689610480325514
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.49198680381433346
#>     Attrib V1    -0.22069183994030003
#>     Attrib V10    -0.5384396530507961
#>     Attrib V11    -0.8076286332724137
#>     Attrib V12    -0.4193501560650492
#>     Attrib V13    -0.43802951801827084
#>     Attrib V14    0.4539240632737876
#>     Attrib V15    0.0687976651467002
#>     Attrib V16    0.4945336241266319
#>     Attrib V17    0.3444824469085047
#>     Attrib V18    -0.2796802281486293
#>     Attrib V19    -0.19514524746889095
#>     Attrib V2    -0.25519434042295963
#>     Attrib V20    -0.021674199934844037
#>     Attrib V21    -0.028342710876945558
#>     Attrib V22    -0.2051033609686694
#>     Attrib V23    -0.9365288832553449
#>     Attrib V24    -0.7594043996232407
#>     Attrib V25    -0.23392369720404332
#>     Attrib V26    -0.4405129116451871
#>     Attrib V27    -0.5207665009224272
#>     Attrib V28    -1.1128486396401243
#>     Attrib V29    -1.5476124487358083
#>     Attrib V3    0.37604480125635864
#>     Attrib V30    -1.0071329692199849
#>     Attrib V31    0.7713542203814335
#>     Attrib V32    0.3959084201884884
#>     Attrib V33    -0.03585432655930659
#>     Attrib V34    0.02745226265296897
#>     Attrib V35    -0.18968113401565817
#>     Attrib V36    0.9012750355968846
#>     Attrib V37    0.7858820006418037
#>     Attrib V38    0.1677177048015805
#>     Attrib V39    -0.18076407252715965
#>     Attrib V4    -0.1769244609665881
#>     Attrib V40    -0.13851710758117403
#>     Attrib V41    -1.1568476738490276
#>     Attrib V42    -0.8289023957935392
#>     Attrib V43    -0.6999863046035614
#>     Attrib V44    -0.6688695654468634
#>     Attrib V45    -0.5803749149381874
#>     Attrib V46    -0.5534272963826423
#>     Attrib V47    -0.5113075560913154
#>     Attrib V48    -0.15031387730252216
#>     Attrib V49    -0.5501823009465626
#>     Attrib V5    0.10337015221422205
#>     Attrib V50    0.1749333636696238
#>     Attrib V51    -0.6863620687186359
#>     Attrib V52    -0.5677100769216927
#>     Attrib V53    -0.46651273250226183
#>     Attrib V54    -0.07498768597130258
#>     Attrib V55    0.765563748866551
#>     Attrib V56    -0.10755757087301043
#>     Attrib V57    0.9541262104427728
#>     Attrib V58    -0.7172111923130156
#>     Attrib V59    -0.7236029759723417
#>     Attrib V6    -0.44467833144955343
#>     Attrib V60    0.05651140376095658
#>     Attrib V7    -0.04812952441491018
#>     Attrib V8    0.47297978926557743
#>     Attrib V9    -0.11099577533463957
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.17178764182895948
#>     Attrib V1    0.10988605375674272
#>     Attrib V10    -8.088771508977831E-4
#>     Attrib V11    -0.03405091392553514
#>     Attrib V12    -0.012130331014350928
#>     Attrib V13    0.018326836306576364
#>     Attrib V14    -0.006359566777821397
#>     Attrib V15    0.028125279990936357
#>     Attrib V16    0.04637518856253731
#>     Attrib V17    0.009774780090344472
#>     Attrib V18    0.026793573409666545
#>     Attrib V19    -0.030289485365037404
#>     Attrib V2    0.05966883433655053
#>     Attrib V20    -0.07263677203887557
#>     Attrib V21    -0.0776944688412391
#>     Attrib V22    -0.09973332708411141
#>     Attrib V23    -0.12526823355452305
#>     Attrib V24    -0.03953132128399985
#>     Attrib V25    -0.026327818607618562
#>     Attrib V26    -0.09965399799575632
#>     Attrib V27    -0.13943864026988254
#>     Attrib V28    -0.06612761009872908
#>     Attrib V29    -0.03678050228638965
#>     Attrib V3    0.09887924074153132
#>     Attrib V30    -0.03686038352716704
#>     Attrib V31    -0.09367493539001835
#>     Attrib V32    0.021529943880125753
#>     Attrib V33    0.04073464224519254
#>     Attrib V34    0.07311947853670014
#>     Attrib V35    0.08556784206275099
#>     Attrib V36    0.04468646036825738
#>     Attrib V37    0.05972655757924363
#>     Attrib V38    0.07109813327128803
#>     Attrib V39    0.11055331021152294
#>     Attrib V4    0.11634199896249228
#>     Attrib V40    0.03375975262653074
#>     Attrib V41    0.03261506803547879
#>     Attrib V42    0.08873498131978548
#>     Attrib V43    0.06541894535541629
#>     Attrib V44    0.05072259109915639
#>     Attrib V45    0.07801182005558736
#>     Attrib V46    0.11061276249798094
#>     Attrib V47    0.08166327990356101
#>     Attrib V48    0.0297237893153241
#>     Attrib V49    -0.010697642955953011
#>     Attrib V5    0.05309071081766342
#>     Attrib V50    0.09397043725519019
#>     Attrib V51    0.12942565872085454
#>     Attrib V52    0.07168009039200818
#>     Attrib V53    0.15649648584138795
#>     Attrib V54    0.07038738518857691
#>     Attrib V55    0.09110200310964582
#>     Attrib V56    0.1084300543169621
#>     Attrib V57    0.09583043691565063
#>     Attrib V58    0.12005513730314216
#>     Attrib V59    0.082979459159949
#>     Attrib V6    0.03432246482959411
#>     Attrib V60    0.16492075241593757
#>     Attrib V7    0.034272905233500614
#>     Attrib V8    -0.03296682641729481
#>     Attrib V9    0.03857435236604912
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.0261312248258879
#>     Attrib V1    0.3058405902437378
#>     Attrib V10    -0.026944308128949896
#>     Attrib V11    -0.030318528329899064
#>     Attrib V12    -0.015095621202798842
#>     Attrib V13    0.021979903812752954
#>     Attrib V14    0.007142724706334535
#>     Attrib V15    0.2041440553702694
#>     Attrib V16    0.04088494676369033
#>     Attrib V17    -0.07814767820202885
#>     Attrib V18    -0.0061939251915097155
#>     Attrib V19    0.009330867614990307
#>     Attrib V2    0.22658532288917785
#>     Attrib V20    0.054299684570097095
#>     Attrib V21    0.05195698675575233
#>     Attrib V22    -0.027113780182114394
#>     Attrib V23    -0.1768255346096704
#>     Attrib V24    -0.10658557772282246
#>     Attrib V25    -0.18149550958799265
#>     Attrib V26    -0.34170334411701625
#>     Attrib V27    -0.4235428684470226
#>     Attrib V28    -0.23759019707839557
#>     Attrib V29    -0.11395922478009889
#>     Attrib V3    0.028064729188100653
#>     Attrib V30    -0.002913044069103169
#>     Attrib V31    -0.24757544821706476
#>     Attrib V32    -0.09485867682161775
#>     Attrib V33    0.16022744905955888
#>     Attrib V34    0.08572761535799765
#>     Attrib V35    0.19911354494336583
#>     Attrib V36    -0.019384665589427835
#>     Attrib V37    -0.13827400700476056
#>     Attrib V38    0.15354493300641386
#>     Attrib V39    0.21178134292830422
#>     Attrib V4    0.10392391414088627
#>     Attrib V40    -0.029604637420709658
#>     Attrib V41    0.01062423201888628
#>     Attrib V42    0.052812347060300385
#>     Attrib V43    0.20553863283461143
#>     Attrib V44    0.18756704741119437
#>     Attrib V45    0.17275503520718682
#>     Attrib V46    0.08220420652111575
#>     Attrib V47    0.03056409809632419
#>     Attrib V48    0.0908230139780127
#>     Attrib V49    -0.020274209416478436
#>     Attrib V5    -0.07133282544607593
#>     Attrib V50    0.0572673119215065
#>     Attrib V51    0.10579301848035422
#>     Attrib V52    -0.027206883178501153
#>     Attrib V53    0.21473917033435988
#>     Attrib V54    0.26346143523240567
#>     Attrib V55    0.13329488636377024
#>     Attrib V56    0.22515178703127586
#>     Attrib V57    0.11054186630937289
#>     Attrib V58    0.11638177673118587
#>     Attrib V59    0.32934205004518025
#>     Attrib V6    -0.09377203776693278
#>     Attrib V60    0.33772410475835324
#>     Attrib V7    0.001596274962544347
#>     Attrib V8    -0.0863179989684744
#>     Attrib V9    -0.09973981077976868
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2856915134010949
#>     Attrib V1    -0.21260186833535336
#>     Attrib V10    -0.07708460143554896
#>     Attrib V11    -0.22168367662134972
#>     Attrib V12    -0.22584199198507116
#>     Attrib V13    -0.18513621255956778
#>     Attrib V14    0.22053852370136331
#>     Attrib V15    -0.10637503246869343
#>     Attrib V16    0.1457508540776349
#>     Attrib V17    0.18343195404702164
#>     Attrib V18    0.02280838818593652
#>     Attrib V19    -0.058593358603403284
#>     Attrib V2    -0.09995549079178218
#>     Attrib V20    -0.13096119834439024
#>     Attrib V21    -0.12702946797113146
#>     Attrib V22    -0.1347233416991287
#>     Attrib V23    -0.24276471260828164
#>     Attrib V24    -0.18582728143329794
#>     Attrib V25    0.10680649168793589
#>     Attrib V26    0.3164345031335521
#>     Attrib V27    0.49768085278209867
#>     Attrib V28    0.07287113347735297
#>     Attrib V29    -0.3453960366771513
#>     Attrib V3    0.29034646727463137
#>     Attrib V30    -0.3316834501400162
#>     Attrib V31    0.41446812458408927
#>     Attrib V32    0.07366542653045721
#>     Attrib V33    -0.055144420980938906
#>     Attrib V34    0.10810507095663664
#>     Attrib V35    0.07824376913868407
#>     Attrib V36    0.5319037315843108
#>     Attrib V37    0.4903431106046301
#>     Attrib V38    0.050606392621199904
#>     Attrib V39    -0.09434501126962064
#>     Attrib V4    -0.057617537992541455
#>     Attrib V40    0.13711822336572008
#>     Attrib V41    -0.15494110639772907
#>     Attrib V42    -0.07377739923687494
#>     Attrib V43    -0.16832932275536275
#>     Attrib V44    -0.1125479008530184
#>     Attrib V45    -0.17839334981773014
#>     Attrib V46    -0.13093686890658754
#>     Attrib V47    -0.07028335241931787
#>     Attrib V48    0.013680260509545003
#>     Attrib V49    -0.009222658680682108
#>     Attrib V5    0.25777235484388467
#>     Attrib V50    0.08391408060136518
#>     Attrib V51    -0.2253949081884828
#>     Attrib V52    -0.08736017750227394
#>     Attrib V53    -0.14000805149075288
#>     Attrib V54    -0.2269798120724988
#>     Attrib V55    0.2753044243696528
#>     Attrib V56    -0.075885678806209
#>     Attrib V57    0.24530946516699403
#>     Attrib V58    -0.223433158436015
#>     Attrib V59    -0.32390943716665893
#>     Attrib V6    0.024351961784972623
#>     Attrib V60    -0.04834531494022726
#>     Attrib V7    -0.004863260034246607
#>     Attrib V8    0.1976140555531701
#>     Attrib V9    0.06800300833079953
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.29351441660139105
#>     Attrib V1    0.3841412719557908
#>     Attrib V10    0.07159802173554207
#>     Attrib V11    0.22300139206803782
#>     Attrib V12    0.23483558268168506
#>     Attrib V13    0.2350196019453346
#>     Attrib V14    -0.19554059062979984
#>     Attrib V15    0.2053663390169694
#>     Attrib V16    -0.1820237452766909
#>     Attrib V17    -0.23759954419622167
#>     Attrib V18    0.08235701413720083
#>     Attrib V19    0.07506159672234626
#>     Attrib V2    0.2311963471303879
#>     Attrib V20    0.1488299393302834
#>     Attrib V21    0.13139617408843235
#>     Attrib V22    0.09781489561279134
#>     Attrib V23    0.27275269643283945
#>     Attrib V24    0.2796184304601487
#>     Attrib V25    0.0708364060313093
#>     Attrib V26    -0.18075864597994412
#>     Attrib V27    -0.3716769915094594
#>     Attrib V28    0.2068569916496825
#>     Attrib V29    0.5896918011967216
#>     Attrib V3    -0.2632535836094977
#>     Attrib V30    0.5173340645580423
#>     Attrib V31    -0.588986939731752
#>     Attrib V32    -0.2280131775473873
#>     Attrib V33    0.1951110758744236
#>     Attrib V34    0.08020410858509737
#>     Attrib V35    0.2283088461414871
#>     Attrib V36    -0.33386678748680787
#>     Attrib V37    -0.46298229192524537
#>     Attrib V38    0.08970970329233187
#>     Attrib V39    0.2881854061008469
#>     Attrib V4    0.10461314044651772
#>     Attrib V40    -0.014374510323297202
#>     Attrib V41    0.2615992663972409
#>     Attrib V42    0.29797864336404173
#>     Attrib V43    0.3763549015246746
#>     Attrib V44    0.3525372681499706
#>     Attrib V45    0.41642270037807094
#>     Attrib V46    0.2847212756749973
#>     Attrib V47    0.1411297080765179
#>     Attrib V48    0.0026080749272536867
#>     Attrib V49    0.18422436338223666
#>     Attrib V5    -0.29752580375544047
#>     Attrib V50    -0.12257186557879692
#>     Attrib V51    0.26912213450082734
#>     Attrib V52    0.1541478285155173
#>     Attrib V53    0.4138224473828626
#>     Attrib V54    0.36538845008177323
#>     Attrib V55    -0.22215759513776775
#>     Attrib V56    0.1587255593009772
#>     Attrib V57    -0.4036309770637382
#>     Attrib V58    0.3872972875921495
#>     Attrib V59    0.5951062672767302
#>     Attrib V6    -0.09239473370647577
#>     Attrib V60    0.25205054177566627
#>     Attrib V7    0.08386781914030321
#>     Attrib V8    -0.3101904109932483
#>     Attrib V9    -0.1164815407720369
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.1168829965437164
#>     Attrib V1    0.5602452650884597
#>     Attrib V10    -0.17183621054891016
#>     Attrib V11    -0.18954922673638727
#>     Attrib V12    -0.04343934706639973
#>     Attrib V13    0.02886601154611257
#>     Attrib V14    -0.09666422649638473
#>     Attrib V15    0.3110701883761997
#>     Attrib V16    0.02253469321983554
#>     Attrib V17    -0.1483215031971331
#>     Attrib V18    0.20667100730358506
#>     Attrib V19    0.28419193376195884
#>     Attrib V2    0.3188079791431212
#>     Attrib V20    0.5618299654304493
#>     Attrib V21    0.6006437211285447
#>     Attrib V22    0.39385062028672363
#>     Attrib V23    0.39945649462638944
#>     Attrib V24    0.20546186284114729
#>     Attrib V25    -0.16764049876895346
#>     Attrib V26    -0.7800105117885561
#>     Attrib V27    -1.1506576268986637
#>     Attrib V28    -0.5027132508451687
#>     Attrib V29    0.302469674497729
#>     Attrib V3    -0.24893208942632472
#>     Attrib V30    0.3962508297521471
#>     Attrib V31    -0.7960112413223085
#>     Attrib V32    -0.29112029312468896
#>     Attrib V33    0.2086891008260955
#>     Attrib V34    0.021066590400621654
#>     Attrib V35    -0.017386995708361837
#>     Attrib V36    -0.32901764035539954
#>     Attrib V37    -0.6005583560039099
#>     Attrib V38    0.16985375048550974
#>     Attrib V39    0.3577003844176398
#>     Attrib V4    0.0637503866514535
#>     Attrib V40    -0.17268785627235664
#>     Attrib V41    -0.10789468601888969
#>     Attrib V42    0.024626213817441314
#>     Attrib V43    0.40873087005048814
#>     Attrib V44    0.4662768243270381
#>     Attrib V45    0.30248876756085696
#>     Attrib V46    0.055855665226495266
#>     Attrib V47    -0.03624964979611164
#>     Attrib V48    -0.09374383511767259
#>     Attrib V49    -0.06853205246041165
#>     Attrib V5    -0.5081122196555277
#>     Attrib V50    0.0021472140167403918
#>     Attrib V51    0.2899616371403896
#>     Attrib V52    0.09833481842328215
#>     Attrib V53    0.4381010621007795
#>     Attrib V54    0.4278008541817819
#>     Attrib V55    -0.09383703579074881
#>     Attrib V56    0.3553253044654423
#>     Attrib V57    -0.15311443196149
#>     Attrib V58    0.3199082087636219
#>     Attrib V59    0.6838607461319353
#>     Attrib V6    -0.31997289584857724
#>     Attrib V60    0.4128984087939648
#>     Attrib V7    0.14419367000903335
#>     Attrib V8    -0.273971734746003
#>     Attrib V9    -0.26042242588489445
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.24938616198430968
#>     Attrib V1    -0.3281245970641266
#>     Attrib V10    -0.11598354574492833
#>     Attrib V11    -0.3926611982101283
#>     Attrib V12    -0.29932080628829716
#>     Attrib V13    -0.3110651955811778
#>     Attrib V14    0.33880535402738987
#>     Attrib V15    -0.06955133546918492
#>     Attrib V16    0.2586926975038181
#>     Attrib V17    0.32266368157598047
#>     Attrib V18    -0.12981769772689078
#>     Attrib V19    -0.11414481870261599
#>     Attrib V2    -0.26774628641543496
#>     Attrib V20    -0.2834610309509139
#>     Attrib V21    -0.2333928669623217
#>     Attrib V22    -0.26124453946673537
#>     Attrib V23    -0.5402897856760148
#>     Attrib V24    -0.38118447595605165
#>     Attrib V25    0.023282893622535758
#>     Attrib V26    0.41762991273936095
#>     Attrib V27    0.7428050718910476
#>     Attrib V28    0.07683743062961111
#>     Attrib V29    -0.5643355286442694
#>     Attrib V3    0.30151752863517584
#>     Attrib V30    -0.5512465637504089
#>     Attrib V31    0.755650526649168
#>     Attrib V32    0.09274710294728396
#>     Attrib V33    -0.13870184950965728
#>     Attrib V34    0.1454399027340258
#>     Attrib V35    0.1256807112380066
#>     Attrib V36    0.7279113925516555
#>     Attrib V37    0.8665569849125655
#>     Attrib V38    0.034243069059387427
#>     Attrib V39    -0.22810895697054315
#>     Attrib V4    -0.046902267444278216
#>     Attrib V40    0.30723796127077146
#>     Attrib V41    -0.0844126892883627
#>     Attrib V42    -0.21131163315924636
#>     Attrib V43    -0.31781068495246495
#>     Attrib V44    -0.31434595233848206
#>     Attrib V45    -0.30928984442479057
#>     Attrib V46    -0.16782992711486203
#>     Attrib V47    -0.165311153540715
#>     Attrib V48    0.08268125769508491
#>     Attrib V49    -0.07913883470339193
#>     Attrib V5    0.480432181349212
#>     Attrib V50    0.2125715976756769
#>     Attrib V51    -0.4501406096216139
#>     Attrib V52    -0.2084369144910469
#>     Attrib V53    -0.32473666643190763
#>     Attrib V54    -0.30976776161460423
#>     Attrib V55    0.3805833751579147
#>     Attrib V56    -0.21529864080902503
#>     Attrib V57    0.5541332839779171
#>     Attrib V58    -0.3947492714274521
#>     Attrib V59    -0.466468398784874
#>     Attrib V6    0.16529778654875388
#>     Attrib V60    0.019957906365818727
#>     Attrib V7    0.03741403614025941
#>     Attrib V8    0.22734299430158983
#>     Attrib V9    0.13267003131239494
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.02516052740758006
#>     Attrib V1    0.3645304006048434
#>     Attrib V10    -0.15120641591376732
#>     Attrib V11    -0.15890672155581267
#>     Attrib V12    -0.03684618465821477
#>     Attrib V13    0.013129831715449222
#>     Attrib V14    -0.009887961755801176
#>     Attrib V15    0.15164564361559552
#>     Attrib V16    0.08949740288596582
#>     Attrib V17    -0.09628746867997592
#>     Attrib V18    0.024500301359052082
#>     Attrib V19    0.04505862730773081
#>     Attrib V2    0.19669695269231974
#>     Attrib V20    0.28299997375338537
#>     Attrib V21    0.26163316487238386
#>     Attrib V22    0.05963961495181394
#>     Attrib V23    -0.06681615999511067
#>     Attrib V24    -0.020589610701818837
#>     Attrib V25    -0.19911345704547204
#>     Attrib V26    -0.6036075224366189
#>     Attrib V27    -0.8322830628775933
#>     Attrib V28    -0.5527550703076488
#>     Attrib V29    -0.15124128372289847
#>     Attrib V3    -0.0860245206792083
#>     Attrib V30    -0.07643414704966707
#>     Attrib V31    -0.3977306143632196
#>     Attrib V32    -0.0771565587880581
#>     Attrib V33    0.12415593405683696
#>     Attrib V34    0.08333564213365349
#>     Attrib V35    0.07037467667708668
#>     Attrib V36    -0.11302478940213816
#>     Attrib V37    -0.2540732937438057
#>     Attrib V38    0.07840686347536349
#>     Attrib V39    0.19805834813562365
#>     Attrib V4    0.05389989443302901
#>     Attrib V40    -0.06601188104333197
#>     Attrib V41    -0.17661219765840175
#>     Attrib V42    -0.050011317046110254
#>     Attrib V43    0.18160137624732864
#>     Attrib V44    0.12035829444233163
#>     Attrib V45    0.031736577158462606
#>     Attrib V46    0.06914824278143278
#>     Attrib V47    -0.0402197848753386
#>     Attrib V48    -0.004816199467739429
#>     Attrib V49    -0.07788954571626829
#>     Attrib V5    -0.2121155190743645
#>     Attrib V50    0.010816520055282105
#>     Attrib V51    0.05120267582455955
#>     Attrib V52    -0.05337086371609278
#>     Attrib V53    0.20687357332857095
#>     Attrib V54    0.36380764841917196
#>     Attrib V55    0.07913778690515298
#>     Attrib V56    0.25591566713394726
#>     Attrib V57    0.047635832855618
#>     Attrib V58    0.19645549896736425
#>     Attrib V59    0.391066847625202
#>     Attrib V6    -0.19441519299536145
#>     Attrib V60    0.36682931197338287
#>     Attrib V7    0.06345993755422645
#>     Attrib V8    -0.23869164860947167
#>     Attrib V9    -0.18087949699773964
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.014093078695036303
#>     Attrib V1    0.35084895789901505
#>     Attrib V10    -0.15718230716515516
#>     Attrib V11    -0.06227403505971594
#>     Attrib V12    0.07218235011127125
#>     Attrib V13    0.09314631301978706
#>     Attrib V14    0.021797078743926605
#>     Attrib V15    0.15460981036521462
#>     Attrib V16    -0.011074475316228051
#>     Attrib V17    -0.05710191265734981
#>     Attrib V18    0.025402835310636123
#>     Attrib V19    0.0318564884631468
#>     Attrib V2    0.1579100137700893
#>     Attrib V20    0.139879334151466
#>     Attrib V21    0.1211425653887687
#>     Attrib V22    -0.029554893584771064
#>     Attrib V23    -0.10019663826582874
#>     Attrib V24    -0.12744801202785994
#>     Attrib V25    -0.15526824655495425
#>     Attrib V26    -0.3812971137060746
#>     Attrib V27    -0.6108905887244073
#>     Attrib V28    -0.3816779764499179
#>     Attrib V29    -0.1461870547317979
#>     Attrib V3    0.034133701653425094
#>     Attrib V30    -0.057178390024681454
#>     Attrib V31    -0.38602061550868033
#>     Attrib V32    -0.09531136877907213
#>     Attrib V33    0.12846044574533397
#>     Attrib V34    0.10549806764153716
#>     Attrib V35    0.20822411123647416
#>     Attrib V36    -0.016945609391990375
#>     Attrib V37    -0.12759228002459896
#>     Attrib V38    0.10942506937944191
#>     Attrib V39    0.2174448597099628
#>     Attrib V4    0.1314745894412247
#>     Attrib V40    -0.05684308041845228
#>     Attrib V41    -0.059892532993000056
#>     Attrib V42    0.01937460548727149
#>     Attrib V43    0.20714928981792816
#>     Attrib V44    0.16120060672319003
#>     Attrib V45    0.1613200219580571
#>     Attrib V46    0.08990420469800928
#>     Attrib V47    0.0719463662093998
#>     Attrib V48    -0.04023215525852793
#>     Attrib V49    -0.04911792508121341
#>     Attrib V5    -0.13097531071999974
#>     Attrib V50    -0.005191104593586564
#>     Attrib V51    0.052064909433318256
#>     Attrib V52    0.03086012039070677
#>     Attrib V53    0.30572395610229924
#>     Attrib V54    0.3274278520673362
#>     Attrib V55    0.0966638903489691
#>     Attrib V56    0.27773388692292306
#>     Attrib V57    0.022089977173528157
#>     Attrib V58    0.15351826621341125
#>     Attrib V59    0.43855326875105194
#>     Attrib V6    -0.1271821042636033
#>     Attrib V60    0.32339803310428145
#>     Attrib V7    0.04897418609489521
#>     Attrib V8    -0.1832947824858265
#>     Attrib V9    -0.1535790811925844
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.26555656215782164
#>     Attrib V1    -0.304799137248093
#>     Attrib V10    -0.10917915364668536
#>     Attrib V11    -0.2509043732966641
#>     Attrib V12    -0.20581654521030635
#>     Attrib V13    -0.23591441548045522
#>     Attrib V14    0.26370406075390707
#>     Attrib V15    -0.08070096731053557
#>     Attrib V16    0.1434207808859766
#>     Attrib V17    0.2991705044111889
#>     Attrib V18    -0.09128506022101035
#>     Attrib V19    -0.08147710231077467
#>     Attrib V2    -0.17597441198636035
#>     Attrib V20    -0.22663279870102965
#>     Attrib V21    -0.2375252488076076
#>     Attrib V22    -0.22512584128057345
#>     Attrib V23    -0.3235766156253661
#>     Attrib V24    -0.2722779471212948
#>     Attrib V25    0.07526725334289977
#>     Attrib V26    0.4066838759229414
#>     Attrib V27    0.6064583271614535
#>     Attrib V28    0.1256380672435295
#>     Attrib V29    -0.4379966078686194
#>     Attrib V3    0.28442749951077084
#>     Attrib V30    -0.403131945811281
#>     Attrib V31    0.5785984716122597
#>     Attrib V32    0.15943488213099208
#>     Attrib V33    -0.13788672145265807
#>     Attrib V34    0.059730701520076424
#>     Attrib V35    0.05546722591644993
#>     Attrib V36    0.5449594770578217
#>     Attrib V37    0.5640193848658499
#>     Attrib V38    0.007000790721426167
#>     Attrib V39    -0.23046025722746022
#>     Attrib V4    -0.008500787382869945
#>     Attrib V40    0.19962752611889034
#>     Attrib V41    -0.12594162725096297
#>     Attrib V42    -0.1535952941473735
#>     Attrib V43    -0.2186629332947332
#>     Attrib V44    -0.27358842137895373
#>     Attrib V45    -0.26425503716551757
#>     Attrib V46    -0.12619873247218358
#>     Attrib V47    -0.08077622006877663
#>     Attrib V48    0.036449016601513756
#>     Attrib V49    -0.07274110857329852
#>     Attrib V5    0.32491604917594863
#>     Attrib V50    0.1893514853277979
#>     Attrib V51    -0.3108572475430093
#>     Attrib V52    -0.054249218885064066
#>     Attrib V53    -0.2565210796408878
#>     Attrib V54    -0.26482522884132864
#>     Attrib V55    0.34115421329498985
#>     Attrib V56    -0.1161480137476123
#>     Attrib V57    0.40111840162499335
#>     Attrib V58    -0.29247017265489783
#>     Attrib V59    -0.4797336909807607
#>     Attrib V6    0.13655315967498038
#>     Attrib V60    -0.15988174075712883
#>     Attrib V7    -0.07114178757881603
#>     Attrib V8    0.23621893838162483
#>     Attrib V9    0.15709907663724507
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5059176885178547
#>     Attrib V1    0.20917982055288592
#>     Attrib V10    1.345062018661058
#>     Attrib V11    1.9764864556878405
#>     Attrib V12    1.0628398232045209
#>     Attrib V13    0.638526751837805
#>     Attrib V14    -0.7431868341931636
#>     Attrib V15    -0.4923467937250996
#>     Attrib V16    -0.8868798474439291
#>     Attrib V17    -0.32369386673711104
#>     Attrib V18    0.14730599253337062
#>     Attrib V19    -0.24133714187809993
#>     Attrib V2    -0.04316310016311462
#>     Attrib V20    -0.4841892268937362
#>     Attrib V21    -0.40261738462628144
#>     Attrib V22    0.09540107422282772
#>     Attrib V23    1.1026291053589006
#>     Attrib V24    0.8729987152608019
#>     Attrib V25    0.4105455287186988
#>     Attrib V26    1.7178256477983092
#>     Attrib V27    1.7544857889584269
#>     Attrib V28    1.536830395662739
#>     Attrib V29    1.5719628739965126
#>     Attrib V3    -0.2385799536387179
#>     Attrib V30    0.7191294706129352
#>     Attrib V31    -0.9815421319771115
#>     Attrib V32    -0.47191722627159854
#>     Attrib V33    -0.5302142179874881
#>     Attrib V34    -0.4061357124034962
#>     Attrib V35    0.3288115918489995
#>     Attrib V36    -0.6547644604995201
#>     Attrib V37    -0.21357758622383377
#>     Attrib V38    -0.4569624609980033
#>     Attrib V39    -0.13182678168161585
#>     Attrib V4    0.30201632155838654
#>     Attrib V40    0.2716347384497198
#>     Attrib V41    1.6568559963517522
#>     Attrib V42    0.7185497334470243
#>     Attrib V43    0.5712311858414006
#>     Attrib V44    0.521317152994742
#>     Attrib V45    0.6854173843257286
#>     Attrib V46    0.9333239062640575
#>     Attrib V47    0.7746921427268134
#>     Attrib V48    0.18188323128724893
#>     Attrib V49    0.7494374764828228
#>     Attrib V5    0.5639860866507115
#>     Attrib V50    -0.06453283355162168
#>     Attrib V51    1.2500379670961839
#>     Attrib V52    0.8239901075076197
#>     Attrib V53    0.6595635994294896
#>     Attrib V54    -0.002586804642451272
#>     Attrib V55    -0.7018453434294377
#>     Attrib V56    -0.30767185534877795
#>     Attrib V57    -1.1022913365118088
#>     Attrib V58    0.9125413810167895
#>     Attrib V59    0.5103084745337392
#>     Attrib V6    0.7292341969192929
#>     Attrib V60    -0.2811601071145559
#>     Attrib V7    -0.10445139166627343
#>     Attrib V8    -0.24611712913904707
#>     Attrib V9    0.8725492829414396
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21861895373854645
#>     Attrib V1    -0.14253229053916822
#>     Attrib V10    -0.1091684467233028
#>     Attrib V11    -0.22297978809964947
#>     Attrib V12    -0.15139413428360166
#>     Attrib V13    -0.16428889309414485
#>     Attrib V14    0.2007980561431694
#>     Attrib V15    -0.07784490402117174
#>     Attrib V16    0.08925155712537707
#>     Attrib V17    0.17958142908035415
#>     Attrib V18    -0.03909789512996861
#>     Attrib V19    0.04153643210300135
#>     Attrib V2    -0.061883784554019584
#>     Attrib V20    -0.10611742456795584
#>     Attrib V21    -0.10899713580295839
#>     Attrib V22    -0.10830282178615651
#>     Attrib V23    -0.18103278666275419
#>     Attrib V24    -0.12014356973079533
#>     Attrib V25    0.09595093502775433
#>     Attrib V26    0.1948094672792188
#>     Attrib V27    0.3743484611024779
#>     Attrib V28    0.10319838447940427
#>     Attrib V29    -0.20630794669040584
#>     Attrib V3    0.14234602833954518
#>     Attrib V30    -0.19927921858993716
#>     Attrib V31    0.28100492017076784
#>     Attrib V32    0.035188854264449634
#>     Attrib V33    -0.0045225574497003065
#>     Attrib V34    0.045460206167076744
#>     Attrib V35    0.13654602003624935
#>     Attrib V36    0.4028863303465661
#>     Attrib V37    0.41936256177068637
#>     Attrib V38    0.04949080838356131
#>     Attrib V39    -0.062157951741492114
#>     Attrib V4    0.012771035083048547
#>     Attrib V40    0.11066914467692668
#>     Attrib V41    -0.10640738668075812
#>     Attrib V42    -0.024316093944507396
#>     Attrib V43    -0.0970792022431476
#>     Attrib V44    -0.08145888097649337
#>     Attrib V45    -0.09740118347312608
#>     Attrib V46    -0.12037667212213764
#>     Attrib V47    -0.11303593593501532
#>     Attrib V48    0.04220045784058658
#>     Attrib V49    -0.04538333488060142
#>     Attrib V5    0.1285594245537945
#>     Attrib V50    0.09343036235728854
#>     Attrib V51    -0.23739167811206174
#>     Attrib V52    -0.0864202025365883
#>     Attrib V53    -0.09991820294800216
#>     Attrib V54    -0.15273337557000183
#>     Attrib V55    0.17567470376981875
#>     Attrib V56    -0.038913386024286824
#>     Attrib V57    0.2374049246700641
#>     Attrib V58    -0.15227570406120497
#>     Attrib V59    -0.21752267066185083
#>     Attrib V6    0.05949330566225452
#>     Attrib V60    0.0014379897007694802
#>     Attrib V7    -0.05135744507273694
#>     Attrib V8    0.12109752925002737
#>     Attrib V9    -6.562205659330694E-4
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.22201850709586238
#>     Attrib V1    0.5419376805936369
#>     Attrib V10    -0.05533810594882614
#>     Attrib V11    -0.012188354618029928
#>     Attrib V12    0.005429774701672321
#>     Attrib V13    0.10206936516751715
#>     Attrib V14    -0.2159481572747429
#>     Attrib V15    0.2461700298190539
#>     Attrib V16    -0.016790655079550947
#>     Attrib V17    -0.1734322982620756
#>     Attrib V18    0.24204042413404195
#>     Attrib V19    0.2157037286008372
#>     Attrib V2    0.2761806205318059
#>     Attrib V20    0.423031963219154
#>     Attrib V21    0.49947273633693035
#>     Attrib V22    0.3450293037999408
#>     Attrib V23    0.3535475538073078
#>     Attrib V24    0.23984982610248223
#>     Attrib V25    -0.09258992602598362
#>     Attrib V26    -0.5483087102204036
#>     Attrib V27    -1.0002789065330726
#>     Attrib V28    -0.41559712628585777
#>     Attrib V29    0.2921194077166161
#>     Attrib V3    -0.2534094449487484
#>     Attrib V30    0.3726918011379174
#>     Attrib V31    -0.7631848487905188
#>     Attrib V32    -0.22008879444395263
#>     Attrib V33    0.17180091984421636
#>     Attrib V34    0.029408807630493732
#>     Attrib V35    -7.764558771473668E-4
#>     Attrib V36    -0.35313604263422504
#>     Attrib V37    -0.5459177786988411
#>     Attrib V38    0.14651298614932662
#>     Attrib V39    0.3685624495186298
#>     Attrib V4    0.06408987426552328
#>     Attrib V40    -0.21510292678466322
#>     Attrib V41    -0.05015423307991649
#>     Attrib V42    0.06059526788011476
#>     Attrib V43    0.30552492413045707
#>     Attrib V44    0.4087373793247248
#>     Attrib V45    0.33604573899037454
#>     Attrib V46    0.06676611911641363
#>     Attrib V47    -0.005630276053440362
#>     Attrib V48    -0.06888954597656985
#>     Attrib V49    -0.0627816430786424
#>     Attrib V5    -0.4926527826173944
#>     Attrib V50    0.006491508611566048
#>     Attrib V51    0.26010431307640974
#>     Attrib V52    0.0881772603718165
#>     Attrib V53    0.42352469381583696
#>     Attrib V54    0.38653122702126735
#>     Attrib V55    -0.17238939530080732
#>     Attrib V56    0.23102828386751068
#>     Attrib V57    -0.1749798744174093
#>     Attrib V58    0.3121704817862331
#>     Attrib V59    0.6383581183194641
#>     Attrib V6    -0.2531516909236456
#>     Attrib V60    0.34506956430169344
#>     Attrib V7    0.04519706863692605
#>     Attrib V8    -0.24061839158908618
#>     Attrib V9    -0.17911506260413096
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.3387938301407612
#>     Attrib V1    -0.09930398116593361
#>     Attrib V10    -1.049270150886472
#>     Attrib V11    -1.2658004671297873
#>     Attrib V12    -0.5203387080713628
#>     Attrib V13    -0.34555337743312853
#>     Attrib V14    0.564874697673693
#>     Attrib V15    0.23390211787576334
#>     Attrib V16    0.5925573641643961
#>     Attrib V17    0.23058823785893856
#>     Attrib V18    -0.26454532400480724
#>     Attrib V19    -0.2498737896158826
#>     Attrib V2    -0.18349979076045134
#>     Attrib V20    0.044370263647416086
#>     Attrib V21    0.09530130719422347
#>     Attrib V22    -0.30358968132882563
#>     Attrib V23    -1.2080301954257942
#>     Attrib V24    -0.7521157931870648
#>     Attrib V25    -0.16309099427199178
#>     Attrib V26    -0.9559595501970253
#>     Attrib V27    -1.027806148052136
#>     Attrib V28    -1.4592419163659949
#>     Attrib V29    -1.8577093152412867
#>     Attrib V3    0.3588368361987607
#>     Attrib V30    -1.0675558747850191
#>     Attrib V31    0.8491131940908635
#>     Attrib V32    0.5790508883871412
#>     Attrib V33    0.18278549338992608
#>     Attrib V34    0.10766367033355938
#>     Attrib V35    -0.23150176002760478
#>     Attrib V36    0.8494719368279023
#>     Attrib V37    0.5948651410156783
#>     Attrib V38    0.38732673416621216
#>     Attrib V39    0.018341178820349066
#>     Attrib V4    -0.2790010642393947
#>     Attrib V40    -0.1741909601763729
#>     Attrib V41    -1.2788199875844586
#>     Attrib V42    -0.7923416770910727
#>     Attrib V43    -0.674940996896943
#>     Attrib V44    -0.7003373977007763
#>     Attrib V45    -0.6658126409550134
#>     Attrib V46    -0.8078328385791643
#>     Attrib V47    -0.7460696324825464
#>     Attrib V48    -0.23817573481457233
#>     Attrib V49    -0.7894888575167248
#>     Attrib V5    -0.2090309543743346
#>     Attrib V50    0.06522996876247471
#>     Attrib V51    -1.0748266169092107
#>     Attrib V52    -0.6798119664346658
#>     Attrib V53    -0.4339044325719492
#>     Attrib V54    0.17727292345751422
#>     Attrib V55    0.7305240674087676
#>     Attrib V56    0.13086202561666077
#>     Attrib V57    1.1719963378802951
#>     Attrib V58    -0.8585556438467336
#>     Attrib V59    -0.4280143690120168
#>     Attrib V6    -0.5998274826223876
#>     Attrib V60    0.2962370945470355
#>     Attrib V7    -0.010253725388882185
#>     Attrib V8    0.2495973892005344
#>     Attrib V9    -0.44760782760912526
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.09216896191499646
#>     Attrib V1    0.4242173546070285
#>     Attrib V10    -0.20329970380850987
#>     Attrib V11    -0.13102237941048736
#>     Attrib V12    -0.05623251513704234
#>     Attrib V13    0.020793917016453965
#>     Attrib V14    -0.049583092533835575
#>     Attrib V15    0.28244804828318315
#>     Attrib V16    0.05175905897235645
#>     Attrib V17    -0.11233165798661748
#>     Attrib V18    0.15696931654113908
#>     Attrib V19    0.15270519144440703
#>     Attrib V2    0.24882656566019665
#>     Attrib V20    0.4911573822630311
#>     Attrib V21    0.5156206526312721
#>     Attrib V22    0.3407451503105505
#>     Attrib V23    0.24396273142402009
#>     Attrib V24    0.1757658816942261
#>     Attrib V25    -0.11651037937914775
#>     Attrib V26    -0.7884210917837999
#>     Attrib V27    -1.109981275444051
#>     Attrib V28    -0.5087785583492876
#>     Attrib V29    0.15999923685066017
#>     Attrib V3    -0.1475924929652633
#>     Attrib V30    0.17878550119312123
#>     Attrib V31    -0.6791198481368538
#>     Attrib V32    -0.1565531216592876
#>     Attrib V33    0.2280287116399088
#>     Attrib V34    0.05473582080317231
#>     Attrib V35    0.0016553366935468685
#>     Attrib V36    -0.2997625303360704
#>     Attrib V37    -0.4725752753703678
#>     Attrib V38    0.11993637132025346
#>     Attrib V39    0.3279110671423072
#>     Attrib V4    0.020119048225134408
#>     Attrib V40    -0.15773444622342378
#>     Attrib V41    -0.11449605418025822
#>     Attrib V42    0.010678954141912398
#>     Attrib V43    0.35074546734675205
#>     Attrib V44    0.28029433422778677
#>     Attrib V45    0.2707649390224717
#>     Attrib V46    0.08963553785267574
#>     Attrib V47    0.0479538703187982
#>     Attrib V48    -0.059392386492804344
#>     Attrib V49    -0.05437432161882151
#>     Attrib V5    -0.48613489259827614
#>     Attrib V50    0.055159871337332196
#>     Attrib V51    0.21866982716552588
#>     Attrib V52    0.07857013008218502
#>     Attrib V53    0.3702177768220768
#>     Attrib V54    0.38742951185853225
#>     Attrib V55    -0.033658088594402474
#>     Attrib V56    0.31952885568966655
#>     Attrib V57    -0.04482847817021943
#>     Attrib V58    0.23987971119742874
#>     Attrib V59    0.5473638807152322
#>     Attrib V6    -0.28263720033786827
#>     Attrib V60    0.38612593532721995
#>     Attrib V7    0.07590820436860742
#>     Attrib V8    -0.20049665686190646
#>     Attrib V9    -0.2419191525265124
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.09360838971538679
#>     Attrib V1    0.2869082888039654
#>     Attrib V10    0.021053086152311294
#>     Attrib V11    -0.008983177710478194
#>     Attrib V12    0.06978149867543024
#>     Attrib V13    0.09796300393919033
#>     Attrib V14    0.028993529347827954
#>     Attrib V15    0.1218457523058625
#>     Attrib V16    0.007381698863158792
#>     Attrib V17    -0.05268068270783044
#>     Attrib V18    -0.03697104580473407
#>     Attrib V19    -0.07808673009669612
#>     Attrib V2    0.18623800725709547
#>     Attrib V20    -0.02167113597207656
#>     Attrib V21    0.023124276635933312
#>     Attrib V22    -0.12347648201676183
#>     Attrib V23    -0.16683735628678464
#>     Attrib V24    -0.14732466205239955
#>     Attrib V25    -0.08866393582980661
#>     Attrib V26    -0.17313423789597668
#>     Attrib V27    -0.29588389463311027
#>     Attrib V28    -0.13466051419065536
#>     Attrib V29    -0.0918324832059423
#>     Attrib V3    0.047357947780572576
#>     Attrib V30    0.011457525218840742
#>     Attrib V31    -0.1677001260606963
#>     Attrib V32    -0.07024761095915759
#>     Attrib V33    0.07428039936960944
#>     Attrib V34    0.08283695876448752
#>     Attrib V35    0.19235890566984806
#>     Attrib V36    0.025162203653380892
#>     Attrib V37    -0.007361957013839287
#>     Attrib V38    0.09477416898087447
#>     Attrib V39    0.24081700840843154
#>     Attrib V4    0.15202653082777456
#>     Attrib V40    0.05976754240642068
#>     Attrib V41    0.03560846268745078
#>     Attrib V42    0.11857766127144943
#>     Attrib V43    0.13493596477254902
#>     Attrib V44    0.10993468217602036
#>     Attrib V45    0.13424370950036202
#>     Attrib V46    0.11923651019248008
#>     Attrib V47    0.062078463548467494
#>     Attrib V48    0.08196361419817795
#>     Attrib V49    1.56650825078248E-4
#>     Attrib V5    -0.055299219669054156
#>     Attrib V50    0.039659210107770605
#>     Attrib V51    0.09082265045977266
#>     Attrib V52    0.025119240564307217
#>     Attrib V53    0.22692689601858804
#>     Attrib V54    0.24444470998837578
#>     Attrib V55    0.07584819064042411
#>     Attrib V56    0.22178854842524773
#>     Attrib V57    0.045039455987176784
#>     Attrib V58    0.1655613262248109
#>     Attrib V59    0.35649715682522437
#>     Attrib V6    -0.043044756827288595
#>     Attrib V60    0.3264717184976198
#>     Attrib V7    0.007772136562370586
#>     Attrib V8    -0.10201691958165697
#>     Attrib V9    -0.06958385906896142
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.044781295206879394
#>     Attrib V1    0.29296195221632
#>     Attrib V10    -0.12116153283865536
#>     Attrib V11    -0.07002259341687114
#>     Attrib V12    -0.040096356439501935
#>     Attrib V13    0.07370388976719058
#>     Attrib V14    0.055828148965728325
#>     Attrib V15    0.18831095142794538
#>     Attrib V16    0.04789906593293164
#>     Attrib V17    -0.04848815622815764
#>     Attrib V18    0.037695397548848424
#>     Attrib V19    0.010623666312085684
#>     Attrib V2    0.21651985984304614
#>     Attrib V20    0.1779121574155167
#>     Attrib V21    0.09862571009388706
#>     Attrib V22    0.019837990126903356
#>     Attrib V23    -0.07311827015174746
#>     Attrib V24    -0.06494234323198539
#>     Attrib V25    -0.18405329306153445
#>     Attrib V26    -0.39426917717409526
#>     Attrib V27    -0.5954293024721812
#>     Attrib V28    -0.39367576833888823
#>     Attrib V29    -0.15797637366292044
#>     Attrib V3    -0.03694508865369279
#>     Attrib V30    -0.08855809774887462
#>     Attrib V31    -0.30235660852039914
#>     Attrib V32    -0.08538408604820522
#>     Attrib V33    0.13461914563413213
#>     Attrib V34    0.11422796925398408
#>     Attrib V35    0.15919965477722492
#>     Attrib V36    -0.04557657518001586
#>     Attrib V37    -0.13437856630173617
#>     Attrib V38    0.1301358846957504
#>     Attrib V39    0.14918861347572887
#>     Attrib V4    0.0957559734415129
#>     Attrib V40    -0.04338610947814125
#>     Attrib V41    -0.11215376153313994
#>     Attrib V42    -0.013343537937240397
#>     Attrib V43    0.1571540452471015
#>     Attrib V44    0.1563710899171103
#>     Attrib V45    0.0631052685237143
#>     Attrib V46    0.06434863858463555
#>     Attrib V47    0.03256039305894076
#>     Attrib V48    0.008109177988328707
#>     Attrib V49    -0.0457291191350848
#>     Attrib V5    -0.14665505145619034
#>     Attrib V50    0.021713409071885702
#>     Attrib V51    0.05164348767651017
#>     Attrib V52    -0.02360866346101098
#>     Attrib V53    0.2542730442080947
#>     Attrib V54    0.3453670099494903
#>     Attrib V55    0.12711373445338509
#>     Attrib V56    0.1687841401171279
#>     Attrib V57    0.06942058002064884
#>     Attrib V58    0.10272194006041808
#>     Attrib V59    0.326366171848876
#>     Attrib V6    -0.1420209694115884
#>     Attrib V60    0.3062113425574795
#>     Attrib V7    0.0515910904131917
#>     Attrib V8    -0.12682908287208247
#>     Attrib V9    -0.10832677409425398
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.15451700004651625
#>     Attrib V1    0.11369069825821568
#>     Attrib V10    -0.059841685991683574
#>     Attrib V11    -0.017747463563148096
#>     Attrib V12    -0.017172428109753092
#>     Attrib V13    -0.06259117241297406
#>     Attrib V14    0.07565076527043668
#>     Attrib V15    0.05608676992247528
#>     Attrib V16    0.036193438049173535
#>     Attrib V17    -0.030964698380025753
#>     Attrib V18    0.05206241460868606
#>     Attrib V19    -0.07849857400392941
#>     Attrib V2    0.07058966143676101
#>     Attrib V20    -0.031057155578538123
#>     Attrib V21    -0.023980042247219828
#>     Attrib V22    -0.06745955932656977
#>     Attrib V23    -0.02264463336278016
#>     Attrib V24    -0.042687434301720964
#>     Attrib V25    -0.06947833221744022
#>     Attrib V26    -0.07510796178140723
#>     Attrib V27    -0.10108121553910403
#>     Attrib V28    -0.05290190326252261
#>     Attrib V29    -0.034050024544327574
#>     Attrib V3    0.11003130006339035
#>     Attrib V30    0.021426138967858742
#>     Attrib V31    -0.06220305721571338
#>     Attrib V32    -0.005766986932841462
#>     Attrib V33    0.057734085219705515
#>     Attrib V34    0.04590752234369804
#>     Attrib V35    0.10135540979567273
#>     Attrib V36    0.12963862134457868
#>     Attrib V37    0.07466128380181045
#>     Attrib V38    0.01895652534779095
#>     Attrib V39    0.09104943718329687
#>     Attrib V4    0.07922489685705873
#>     Attrib V40    0.035512844926279194
#>     Attrib V41    -0.030075166662377268
#>     Attrib V42    0.055947332928033305
#>     Attrib V43    0.016761766504636077
#>     Attrib V44    0.0920720220864914
#>     Attrib V45    0.07663539557629875
#>     Attrib V46    0.07482880478253474
#>     Attrib V47    0.05430617658105033
#>     Attrib V48    -0.0048688750449085005
#>     Attrib V49    0.036367077151155405
#>     Attrib V5    0.07052082079607597
#>     Attrib V50    0.018894763580476398
#>     Attrib V51    0.080253514321474
#>     Attrib V52    0.07837609851945897
#>     Attrib V53    0.09190678445327974
#>     Attrib V54    0.02252760479296995
#>     Attrib V55    0.05813334944221319
#>     Attrib V56    0.0725696375687439
#>     Attrib V57    0.06373097606053275
#>     Attrib V58    0.11337913434343595
#>     Attrib V59    0.056498419325171224
#>     Attrib V6    0.06250969075922856
#>     Attrib V60    0.1049637427652343
#>     Attrib V7    0.05000184389679409
#>     Attrib V8    0.058002943267892654
#>     Attrib V9    0.04513730869336986
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
