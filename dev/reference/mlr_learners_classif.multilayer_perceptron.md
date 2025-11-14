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
#>     Threshold    0.2008898823443995
#>     Node 2    2.160774861128881
#>     Node 3    1.9209325673808777
#>     Node 4    0.6620087435084763
#>     Node 5    -2.879247477277847
#>     Node 6    1.5499963844980313
#>     Node 7    2.2583527355240736
#>     Node 8    1.1536536562787532
#>     Node 9    3.783237013290087
#>     Node 10    -2.195468179295322
#>     Node 11    1.283662657247786
#>     Node 12    1.7615003391812667
#>     Node 13    1.2569128349036716
#>     Node 14    1.8565426969313166
#>     Node 15    -2.1343950209317324
#>     Node 16    0.5559191204127426
#>     Node 17    0.342947933100814
#>     Node 18    0.7085567414889947
#>     Node 19    1.914860166368257
#>     Node 20    2.2187682911842295
#>     Node 21    -2.09590595306948
#>     Node 22    1.047928437526081
#>     Node 23    1.9775468621983576
#>     Node 24    -1.6527339225735709
#>     Node 25    3.422542610802094
#>     Node 26    -0.419650291797079
#>     Node 27    1.862856744162235
#>     Node 28    -3.461819865133457
#>     Node 29    1.4370489965624798
#>     Node 30    0.6403478673330117
#>     Node 31    1.527455822053919
#>     Node 32    -0.03342587309861691
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.1866408816101867
#>     Node 2    -2.212211506373412
#>     Node 3    -1.9104515259375467
#>     Node 4    -0.6254890700708945
#>     Node 5    2.910674413436212
#>     Node 6    -1.531318467000971
#>     Node 7    -2.2347858039656856
#>     Node 8    -1.1921029561920715
#>     Node 9    -3.792650471845122
#>     Node 10    2.1508372984702535
#>     Node 11    -1.2534082504084303
#>     Node 12    -1.8450760101443426
#>     Node 13    -1.204985666888862
#>     Node 14    -1.7957855940460978
#>     Node 15    2.1253103524376615
#>     Node 16    -0.5757466380913069
#>     Node 17    -0.3099301017135167
#>     Node 18    -0.6714998737907126
#>     Node 19    -1.9043039797102486
#>     Node 20    -2.1944442468433007
#>     Node 21    2.154059057617777
#>     Node 22    -1.1073022901164218
#>     Node 23    -2.020711880226112
#>     Node 24    1.6411102691962343
#>     Node 25    -3.4238735004653984
#>     Node 26    0.3437710210597534
#>     Node 27    -1.8972086873045115
#>     Node 28    3.426038645775775
#>     Node 29    -1.4732029254118972
#>     Node 30    -0.565980023620234
#>     Node 31    -1.4757785623342907
#>     Node 32    0.016766915152923872
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.21108578447365298
#>     Attrib V1    0.5081512495266082
#>     Attrib V10    -0.4311935464798138
#>     Attrib V11    -0.2141320178951901
#>     Attrib V12    -0.30930530685170987
#>     Attrib V13    -0.44794319470058386
#>     Attrib V14    0.19780094384384783
#>     Attrib V15    0.5148842978306105
#>     Attrib V16    0.13403157703480273
#>     Attrib V17    0.27562359421661126
#>     Attrib V18    0.41643899318728145
#>     Attrib V19    0.047489594880739366
#>     Attrib V2    0.29251131729089597
#>     Attrib V20    0.222487537626512
#>     Attrib V21    0.9940515784436069
#>     Attrib V22    0.7196033007909357
#>     Attrib V23    -0.12591382014482025
#>     Attrib V24    -0.3944719432754144
#>     Attrib V25    -0.9182078718367883
#>     Attrib V26    -0.7889463100760641
#>     Attrib V27    -0.2271776387777012
#>     Attrib V28    -0.14872648698935753
#>     Attrib V29    0.0654489812789888
#>     Attrib V3    0.054552968682980325
#>     Attrib V30    0.4434900428821035
#>     Attrib V31    -1.019112475457025
#>     Attrib V32    -0.34963949271484546
#>     Attrib V33    0.1991427782631239
#>     Attrib V34    0.09605360049883623
#>     Attrib V35    -0.2431409576833674
#>     Attrib V36    -0.8166442025397815
#>     Attrib V37    -0.5879801520215745
#>     Attrib V38    0.2642285634155124
#>     Attrib V39    0.8300779769919876
#>     Attrib V4    -0.1457265790763129
#>     Attrib V40    0.031655742115114544
#>     Attrib V41    -0.27444782213703484
#>     Attrib V42    0.4613177020058904
#>     Attrib V43    0.5582059230738659
#>     Attrib V44    0.8822059738086646
#>     Attrib V45    0.3561293697903083
#>     Attrib V46    -0.07046099615219793
#>     Attrib V47    -0.23474470237323566
#>     Attrib V48    0.305157350936889
#>     Attrib V49    0.4399167802938731
#>     Attrib V5    -0.05690777473333602
#>     Attrib V50    -0.9461411126714574
#>     Attrib V51    -0.23700598108005597
#>     Attrib V52    0.35735516949763346
#>     Attrib V53    0.8491854914553273
#>     Attrib V54    0.5592784616258037
#>     Attrib V55    0.036334588901559335
#>     Attrib V56    0.5222070718570214
#>     Attrib V57    -0.5005246110514368
#>     Attrib V58    0.9214428891627401
#>     Attrib V59    0.3336910203934319
#>     Attrib V6    0.1164967884049437
#>     Attrib V60    0.35334485797958803
#>     Attrib V7    -0.3132691413045438
#>     Attrib V8    -0.2610919598879632
#>     Attrib V9    -0.0025880355408213792
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.1983146696325148
#>     Attrib V1    0.5000083281575229
#>     Attrib V10    -0.4585219538894952
#>     Attrib V11    -0.380960703356318
#>     Attrib V12    -0.39573706599756786
#>     Attrib V13    -0.36071368736864384
#>     Attrib V14    0.2638215644768405
#>     Attrib V15    0.6531787244458683
#>     Attrib V16    0.20968824991018783
#>     Attrib V17    0.2051556935350837
#>     Attrib V18    0.20746272777125624
#>     Attrib V19    0.031854942776518826
#>     Attrib V2    0.32926016612876347
#>     Attrib V20    0.18449028543659485
#>     Attrib V21    0.7419011261945179
#>     Attrib V22    0.49146306187152783
#>     Attrib V23    -0.22422702103042466
#>     Attrib V24    -0.44716964906560897
#>     Attrib V25    -0.9157323457514441
#>     Attrib V26    -0.8706807641208899
#>     Attrib V27    -0.41785299025948186
#>     Attrib V28    -0.37511121241195977
#>     Attrib V29    -0.21225560976386446
#>     Attrib V3    0.0534516738174763
#>     Attrib V30    0.21464116544911438
#>     Attrib V31    -0.6985878435884739
#>     Attrib V32    -0.20601484441632817
#>     Attrib V33    0.28575534025729926
#>     Attrib V34    0.07887021644172605
#>     Attrib V35    -0.31648766609239
#>     Attrib V36    -0.8368244125549145
#>     Attrib V37    -0.6413945748831649
#>     Attrib V38    -0.009788575481757756
#>     Attrib V39    0.6327109167560832
#>     Attrib V4    -0.11960830773576334
#>     Attrib V40    0.09223519190162455
#>     Attrib V41    -0.20920860510972053
#>     Attrib V42    0.44988742320553715
#>     Attrib V43    0.4191712873362263
#>     Attrib V44    0.5416823835530039
#>     Attrib V45    0.16394613083401188
#>     Attrib V46    -0.09888156859051478
#>     Attrib V47    -0.14757131689013991
#>     Attrib V48    0.23953780652597545
#>     Attrib V49    0.3631434131448396
#>     Attrib V5    -0.1102453830793199
#>     Attrib V50    -0.6428004112896748
#>     Attrib V51    -0.2644133757293958
#>     Attrib V52    0.17392014486967897
#>     Attrib V53    0.5872985579482255
#>     Attrib V54    0.5224541120636269
#>     Attrib V55    0.1654823739031644
#>     Attrib V56    0.48540254256221993
#>     Attrib V57    -0.17961055015298635
#>     Attrib V58    0.8909218623097372
#>     Attrib V59    0.3977416305382194
#>     Attrib V6    0.1159863152214867
#>     Attrib V60    0.3033077951132307
#>     Attrib V7    -0.2484095078454409
#>     Attrib V8    -0.18078756406660607
#>     Attrib V9    -0.11477677391760709
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.0629766887269683
#>     Attrib V1    0.08659258155592939
#>     Attrib V10    -0.14609578934383718
#>     Attrib V11    -0.0943936849604608
#>     Attrib V12    -0.08423267056126443
#>     Attrib V13    -0.12815840470106568
#>     Attrib V14    0.07949986049622419
#>     Attrib V15    0.19860121958034416
#>     Attrib V16    0.005659867899028012
#>     Attrib V17    0.05151982841557164
#>     Attrib V18    0.06829598926813656
#>     Attrib V19    -0.011935003551538339
#>     Attrib V2    0.047158822580465894
#>     Attrib V20    -0.013086725575271789
#>     Attrib V21    0.21639582007238978
#>     Attrib V22    0.054954110035105946
#>     Attrib V23    -0.14563478643100383
#>     Attrib V24    -0.1738071190679505
#>     Attrib V25    -0.30683855279326516
#>     Attrib V26    -0.2681702286583325
#>     Attrib V27    -0.2084735491795361
#>     Attrib V28    -0.14434686590063686
#>     Attrib V29    -0.09656167049491121
#>     Attrib V3    0.05347482055153475
#>     Attrib V30    0.05038235796343834
#>     Attrib V31    -0.22090940274227372
#>     Attrib V32    -0.0630549174446401
#>     Attrib V33    0.10404563065700724
#>     Attrib V34    0.09649258988890136
#>     Attrib V35    -0.015349251664235017
#>     Attrib V36    -0.2605695293696265
#>     Attrib V37    -0.21376029537034888
#>     Attrib V38    -0.02007865113766582
#>     Attrib V39    0.2512656071957591
#>     Attrib V4    -0.008276202690551012
#>     Attrib V40    0.00826919579797838
#>     Attrib V41    -0.141556694010026
#>     Attrib V42    0.1284128375841997
#>     Attrib V43    0.0869292252211118
#>     Attrib V44    0.18576594985454972
#>     Attrib V45    0.14352780084866446
#>     Attrib V46    0.005352264496405286
#>     Attrib V47    -0.019172953974672405
#>     Attrib V48    0.1792964969817858
#>     Attrib V49    0.21259239818354436
#>     Attrib V5    0.0634902060912971
#>     Attrib V50    -0.22044849763575253
#>     Attrib V51    -9.971783924000133E-4
#>     Attrib V52    0.05637228155557504
#>     Attrib V53    0.2727036910436831
#>     Attrib V54    0.13914141212294476
#>     Attrib V55    0.08917555296200405
#>     Attrib V56    0.18695405463319334
#>     Attrib V57    -0.041684710143776935
#>     Attrib V58    0.3194148696730584
#>     Attrib V59    0.13961524472161294
#>     Attrib V6    -0.009789820574122601
#>     Attrib V60    0.16063552204780002
#>     Attrib V7    -0.07108946253566688
#>     Attrib V8    -0.09269073018195159
#>     Attrib V9    0.03737462301148678
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.9655049987729877
#>     Attrib V1    0.04032079551873971
#>     Attrib V10    -0.3339592055655306
#>     Attrib V11    -0.8917860996576572
#>     Attrib V12    -1.2764878248699325
#>     Attrib V13    -0.22029701934826004
#>     Attrib V14    0.23516252029860216
#>     Attrib V15    0.22379060618374738
#>     Attrib V16    0.7647065224120018
#>     Attrib V17    0.4705345571428201
#>     Attrib V18    -0.23094954507076915
#>     Attrib V19    0.3156631037183074
#>     Attrib V2    0.08169235243444234
#>     Attrib V20    0.9488120707629814
#>     Attrib V21    0.05243065308949311
#>     Attrib V22    -0.08580295950740394
#>     Attrib V23    0.4769585646202911
#>     Attrib V24    -0.08679949716393802
#>     Attrib V25    0.10399756332780588
#>     Attrib V26    -0.8990478147254388
#>     Attrib V27    -1.0838500702885663
#>     Attrib V28    -1.0479321008825464
#>     Attrib V29    -0.9974724216947916
#>     Attrib V3    0.20626062467621104
#>     Attrib V30    -0.513674102929514
#>     Attrib V31    0.6664131884397401
#>     Attrib V32    0.5274489495770769
#>     Attrib V33    0.7309403359614727
#>     Attrib V34    0.41095829401951633
#>     Attrib V35    -0.03856679444563971
#>     Attrib V36    0.7424933374722996
#>     Attrib V37    0.18675338440596512
#>     Attrib V38    0.1522447866677137
#>     Attrib V39    -0.261434068458183
#>     Attrib V4    -0.22212981365635515
#>     Attrib V40    0.010925376636699088
#>     Attrib V41    -0.5514549738700371
#>     Attrib V42    -0.030713305308554133
#>     Attrib V43    -0.40153011619642903
#>     Attrib V44    -0.9036825137832742
#>     Attrib V45    -0.428620025248654
#>     Attrib V46    -0.618673113355341
#>     Attrib V47    -0.4374328920818599
#>     Attrib V48    -0.7117245106522768
#>     Attrib V49    -1.1336157119884551
#>     Attrib V5    -0.5874393764465211
#>     Attrib V50    0.8970372526241807
#>     Attrib V51    -0.5322436679797241
#>     Attrib V52    -0.8287624855694232
#>     Attrib V53    -1.1917747117200586
#>     Attrib V54    -0.009973516797735872
#>     Attrib V55    0.4213114399109864
#>     Attrib V56    0.2725267464251265
#>     Attrib V57    0.4208031804720884
#>     Attrib V58    -0.2892886807120674
#>     Attrib V59    -0.266414117343733
#>     Attrib V6    -0.6921528185041512
#>     Attrib V60    -0.6463544819896073
#>     Attrib V7    0.1164003643106243
#>     Attrib V8    0.1908825150569226
#>     Attrib V9    -0.3147706579333244
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.15365324879139325
#>     Attrib V1    0.40723739508167545
#>     Attrib V10    -0.40426274595383443
#>     Attrib V11    -0.30827094843619385
#>     Attrib V12    -0.2972496862290175
#>     Attrib V13    -0.3909837595553477
#>     Attrib V14    0.13441327904089045
#>     Attrib V15    0.44471444865690873
#>     Attrib V16    0.21447484771582342
#>     Attrib V17    0.1563199984825204
#>     Attrib V18    0.2556278813593233
#>     Attrib V19    0.014568353645149835
#>     Attrib V2    0.2348489101689015
#>     Attrib V20    0.1531463556198461
#>     Attrib V21    0.6360723963923656
#>     Attrib V22    0.3581101395224158
#>     Attrib V23    -0.19435927766512315
#>     Attrib V24    -0.2954034805753907
#>     Attrib V25    -0.6722181560936953
#>     Attrib V26    -0.7025023109113486
#>     Attrib V27    -0.34077999320083524
#>     Attrib V28    -0.4063111859122283
#>     Attrib V29    -0.2383279037872829
#>     Attrib V3    0.03147070940669098
#>     Attrib V30    0.13642244757014074
#>     Attrib V31    -0.5996285923621789
#>     Attrib V32    -0.13347505052084568
#>     Attrib V33    0.28036551618253047
#>     Attrib V34    0.15358913571872104
#>     Attrib V35    -0.1800735345077808
#>     Attrib V36    -0.7042959207951466
#>     Attrib V37    -0.5370275354169312
#>     Attrib V38    0.023795575047971685
#>     Attrib V39    0.49897999257259146
#>     Attrib V4    -0.0625954796532313
#>     Attrib V40    0.0013641611257364128
#>     Attrib V41    -0.19254658709815314
#>     Attrib V42    0.35825583571357317
#>     Attrib V43    0.3096336654113739
#>     Attrib V44    0.40707796038731753
#>     Attrib V45    0.1743722926645953
#>     Attrib V46    -0.026237922385605208
#>     Attrib V47    -0.1431982972105676
#>     Attrib V48    0.22045391098375863
#>     Attrib V49    0.31175033637989163
#>     Attrib V5    -0.06134102635176198
#>     Attrib V50    -0.5322333370349592
#>     Attrib V51    -0.1911979269913892
#>     Attrib V52    0.1300016462309966
#>     Attrib V53    0.5673421117148657
#>     Attrib V54    0.4120081873953327
#>     Attrib V55    0.09580627566569475
#>     Attrib V56    0.4232488679976718
#>     Attrib V57    -0.16862351500202913
#>     Attrib V58    0.7514906618957203
#>     Attrib V59    0.35373023746310606
#>     Attrib V6    0.1339392694843191
#>     Attrib V60    0.35489695965815526
#>     Attrib V7    -0.16769632635037598
#>     Attrib V8    -0.15809497696981203
#>     Attrib V9    0.023566367078233636
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.0834425564058368
#>     Attrib V1    0.11808873940182578
#>     Attrib V10    0.3505428245750398
#>     Attrib V11    0.5597125803443092
#>     Attrib V12    0.2742215783733912
#>     Attrib V13    -0.39203600012425965
#>     Attrib V14    -0.5722289332301793
#>     Attrib V15    -0.33026847616897265
#>     Attrib V16    -0.43498081875798383
#>     Attrib V17    0.0706207241357995
#>     Attrib V18    0.6574438544340456
#>     Attrib V19    0.37509998508847286
#>     Attrib V2    0.10360535579292018
#>     Attrib V20    0.08343078188504556
#>     Attrib V21    0.6983110255517955
#>     Attrib V22    0.96837919583648
#>     Attrib V23    0.5331306947683992
#>     Attrib V24    0.46918584741192315
#>     Attrib V25    0.3538448889561549
#>     Attrib V26    0.4321698682548512
#>     Attrib V27    0.24700652211097499
#>     Attrib V28    0.014390281191334793
#>     Attrib V29    -0.10159711809094889
#>     Attrib V3    -0.06376704935314667
#>     Attrib V30    0.47006624549694676
#>     Attrib V31    -0.7584026860880809
#>     Attrib V32    -0.33457996121576516
#>     Attrib V33    0.11121994346937344
#>     Attrib V34    0.3499090622930727
#>     Attrib V35    0.38601522710037556
#>     Attrib V36    -0.6509899669064471
#>     Attrib V37    -0.28876739158176656
#>     Attrib V38    0.1436946813465511
#>     Attrib V39    0.46170365119265955
#>     Attrib V4    -0.12181538510608624
#>     Attrib V40    -0.19323065849268994
#>     Attrib V41    -0.2307744201276838
#>     Attrib V42    0.16670298663366967
#>     Attrib V43    0.3694728975028596
#>     Attrib V44    1.1189596944327247
#>     Attrib V45    0.6550304432927867
#>     Attrib V46    0.42651204168838086
#>     Attrib V47    0.2690638456976446
#>     Attrib V48    0.5179256872106296
#>     Attrib V49    0.7285511387666777
#>     Attrib V5    0.18349187518056245
#>     Attrib V50    -1.1502999139912111
#>     Attrib V51    0.2714870679108522
#>     Attrib V52    0.868207379528438
#>     Attrib V53    0.8458042992451349
#>     Attrib V54    0.2633123808158571
#>     Attrib V55    -0.32596167722204056
#>     Attrib V56    0.32568219550460775
#>     Attrib V57    -1.1030778609450607
#>     Attrib V58    0.6187015374303944
#>     Attrib V59    -0.21962239956847487
#>     Attrib V6    0.2525476332254615
#>     Attrib V60    0.33899142623135614
#>     Attrib V7    -0.2663449399190753
#>     Attrib V8    -0.40834785886947433
#>     Attrib V9    0.7926305527590444
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.15775627683619703
#>     Attrib V1    0.0879406284433904
#>     Attrib V10    -0.13182868478124518
#>     Attrib V11    -0.044177810730532285
#>     Attrib V12    -0.06684527002075287
#>     Attrib V13    -0.30276952696628623
#>     Attrib V14    -0.1772094666873768
#>     Attrib V15    0.10408576663133559
#>     Attrib V16    -0.0037169397942132744
#>     Attrib V17    0.07344382493104953
#>     Attrib V18    0.17139054747372678
#>     Attrib V19    0.033366817169007315
#>     Attrib V2    0.019647027278563975
#>     Attrib V20    -0.06690505791186922
#>     Attrib V21    0.3687986334609538
#>     Attrib V22    0.27127405669945964
#>     Attrib V23    -0.12312678148404861
#>     Attrib V24    -0.06302801383336508
#>     Attrib V25    -0.2913309961813086
#>     Attrib V26    -0.2963658670027785
#>     Attrib V27    -0.22345162377519281
#>     Attrib V28    -0.31075148710825523
#>     Attrib V29    -0.35662884388243
#>     Attrib V3    -0.09374095013260045
#>     Attrib V30    0.09996542517700378
#>     Attrib V31    -0.4598434136261476
#>     Attrib V32    -0.0609902706451102
#>     Attrib V33    0.26486457346449194
#>     Attrib V34    0.24668901878138386
#>     Attrib V35    -0.009107463444444318
#>     Attrib V36    -0.49412254475557305
#>     Attrib V37    -0.4586551789886876
#>     Attrib V38    0.03696739270200768
#>     Attrib V39    0.37315875911771046
#>     Attrib V4    -0.07035603773598295
#>     Attrib V40    -0.023450025662130183
#>     Attrib V41    -0.25516026523557966
#>     Attrib V42    0.0765122495375246
#>     Attrib V43    0.20640115755957614
#>     Attrib V44    0.45892896779678716
#>     Attrib V45    0.22739867075660516
#>     Attrib V46    0.09660451864879598
#>     Attrib V47    0.0022272465865939965
#>     Attrib V48    0.3588820325331172
#>     Attrib V49    0.38077913209143965
#>     Attrib V5    -0.05193793093797297
#>     Attrib V50    -0.6492726701574756
#>     Attrib V51    -0.12734546814329292
#>     Attrib V52    0.17369769161400625
#>     Attrib V53    0.4376587046462206
#>     Attrib V54    0.3170106251628287
#>     Attrib V55    -0.01736160603090292
#>     Attrib V56    0.20096885893133357
#>     Attrib V57    -0.2748398855623672
#>     Attrib V58    0.4826111167087218
#>     Attrib V59    0.1299320080349337
#>     Attrib V6    0.02361160159113408
#>     Attrib V60    0.28182105812318486
#>     Attrib V7    -0.1437395559582003
#>     Attrib V8    -0.20940375581921516
#>     Attrib V9    0.13725568336284574
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.3887712859578302
#>     Attrib V1    -0.4395050644001689
#>     Attrib V10    1.0858340778070192
#>     Attrib V11    1.354536470416044
#>     Attrib V12    1.5059074537844332
#>     Attrib V13    0.13050185543038853
#>     Attrib V14    -0.9318533151980727
#>     Attrib V15    -0.8519706995412192
#>     Attrib V16    -1.1472606537779493
#>     Attrib V17    -0.4258599206096767
#>     Attrib V18    0.5942935733770871
#>     Attrib V19    0.05024526676107807
#>     Attrib V2    -0.2587180273228835
#>     Attrib V20    -0.8971224372603794
#>     Attrib V21    -0.1585379611659812
#>     Attrib V22    0.36162504749187585
#>     Attrib V23    0.2883172055672968
#>     Attrib V24    0.9254451500591794
#>     Attrib V25    1.0891372099532697
#>     Attrib V26    1.496803755964607
#>     Attrib V27    0.929545444547859
#>     Attrib V28    0.5540932468011863
#>     Attrib V29    -0.002895680632668538
#>     Attrib V3    -0.30560508089317395
#>     Attrib V30    0.18416251424139857
#>     Attrib V31    -0.5268833679306021
#>     Attrib V32    -0.12993990530227503
#>     Attrib V33    -0.45337028763633874
#>     Attrib V34    0.11338011787240092
#>     Attrib V35    0.7696146798775326
#>     Attrib V36    -0.5851566402028795
#>     Attrib V37    -0.2772133534806232
#>     Attrib V38    -0.3638211109885699
#>     Attrib V39    0.07894204943694606
#>     Attrib V4    0.11667613981574193
#>     Attrib V40    -0.22053609982476502
#>     Attrib V41    0.24941460473393687
#>     Attrib V42    -0.2483648871946829
#>     Attrib V43    0.17408250265667868
#>     Attrib V44    0.9863298765920578
#>     Attrib V45    0.5741760046185238
#>     Attrib V46    0.9426696566321842
#>     Attrib V47    0.9987959812208628
#>     Attrib V48    1.1942132063974962
#>     Attrib V49    1.408648420248036
#>     Attrib V5    0.7214545556338267
#>     Attrib V50    -1.0461736409872253
#>     Attrib V51    1.0837518666769073
#>     Attrib V52    1.2764879102868258
#>     Attrib V53    1.1735343652767212
#>     Attrib V54    0.05675897130860422
#>     Attrib V55    -0.5369491948301699
#>     Attrib V56    -0.10685444688502187
#>     Attrib V57    -1.2971051043758994
#>     Attrib V58    0.18898602922396154
#>     Attrib V59    -0.4273616792488305
#>     Attrib V6    0.6915806284383045
#>     Attrib V60    0.5361629942079941
#>     Attrib V7    -0.05017167870350778
#>     Attrib V8    -0.41174536191786076
#>     Attrib V9    0.9923684931577146
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.7741836863820241
#>     Attrib V1    -0.026152162432512036
#>     Attrib V10    -0.22938036539255616
#>     Attrib V11    -0.6794453070258608
#>     Attrib V12    -0.8623312193378208
#>     Attrib V13    -0.07184004652977699
#>     Attrib V14    0.14476351002533294
#>     Attrib V15    -0.03685919795137508
#>     Attrib V16    0.5477749477084499
#>     Attrib V17    0.47674771739471455
#>     Attrib V18    0.09560347579600782
#>     Attrib V19    0.5230704745431259
#>     Attrib V2    -0.0024851236430616474
#>     Attrib V20    0.9976214053087029
#>     Attrib V21    0.28531842937009433
#>     Attrib V22    0.25816539834168684
#>     Attrib V23    0.6366484247178757
#>     Attrib V24    0.05598420565966312
#>     Attrib V25    0.21818917183669825
#>     Attrib V26    -0.3660845344797791
#>     Attrib V27    -0.5771220931362178
#>     Attrib V28    -0.4751132288849479
#>     Attrib V29    -0.48351799386412353
#>     Attrib V3    0.1792960480387054
#>     Attrib V30    -0.23557493111938765
#>     Attrib V31    0.29971212101081596
#>     Attrib V32    0.07049810719608988
#>     Attrib V33    0.35628991599515797
#>     Attrib V34    0.28726758472479247
#>     Attrib V35    0.28916090230682406
#>     Attrib V36    1.0969564287637026
#>     Attrib V37    0.7310253725681397
#>     Attrib V38    0.5239233290191407
#>     Attrib V39    -0.09767806802979045
#>     Attrib V4    -0.0928842290186197
#>     Attrib V40    0.008927433485191018
#>     Attrib V41    -0.2807156688930663
#>     Attrib V42    -0.14264406093484147
#>     Attrib V43    -0.31412537940465624
#>     Attrib V44    -0.4785563428703467
#>     Attrib V45    -0.13461013155936893
#>     Attrib V46    -0.4252968056167426
#>     Attrib V47    -0.4246025605365966
#>     Attrib V48    -0.7522179864481626
#>     Attrib V49    -0.9028141442661617
#>     Attrib V5    -0.3905943931087005
#>     Attrib V50    0.7143168217204674
#>     Attrib V51    -0.4308486116373957
#>     Attrib V52    -0.5639156252277563
#>     Attrib V53    -0.8056311667184151
#>     Attrib V54    -0.10977064507646982
#>     Attrib V55    0.04148793653786991
#>     Attrib V56    0.09231802269529041
#>     Attrib V57    0.12042263506688258
#>     Attrib V58    -0.45574115120142084
#>     Attrib V59    -0.3526792892285938
#>     Attrib V6    -0.5056746721670341
#>     Attrib V60    -0.53323320665591
#>     Attrib V7    -0.03881128890738421
#>     Attrib V8    -0.057440940413082245
#>     Attrib V9    -0.20737717258806773
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.023917204547034884
#>     Attrib V1    0.16493198729029188
#>     Attrib V10    -0.24660001144890964
#>     Attrib V11    -0.1876064831446142
#>     Attrib V12    -0.1860602606790718
#>     Attrib V13    -0.40153885349723223
#>     Attrib V14    -0.043371033319097585
#>     Attrib V15    0.22952748544844334
#>     Attrib V16    0.0815188331682115
#>     Attrib V17    0.1914139231612464
#>     Attrib V18    0.22394816269341358
#>     Attrib V19    0.025294844738241208
#>     Attrib V2    0.06549315794984005
#>     Attrib V20    0.08810966276073563
#>     Attrib V21    0.408632015182714
#>     Attrib V22    0.27189612460183643
#>     Attrib V23    -0.13077789412580726
#>     Attrib V24    -0.17719327181271485
#>     Attrib V25    -0.41315703932062
#>     Attrib V26    -0.5523582636136144
#>     Attrib V27    -0.34463729386953734
#>     Attrib V28    -0.40244455774584
#>     Attrib V29    -0.43184223473153277
#>     Attrib V3    -0.07184745706057187
#>     Attrib V30    0.05949072841101364
#>     Attrib V31    -0.5176806039826409
#>     Attrib V32    -0.08554642044825207
#>     Attrib V33    0.30179487664151766
#>     Attrib V34    0.30229789189405004
#>     Attrib V35    4.839121055913602E-4
#>     Attrib V36    -0.5057375469936247
#>     Attrib V37    -0.4874617472336327
#>     Attrib V38    0.06429619660256955
#>     Attrib V39    0.40649812999673984
#>     Attrib V4    -0.11784936416420112
#>     Attrib V40    -0.0021319498964960802
#>     Attrib V41    -0.2982736413250595
#>     Attrib V42    0.21461938749894705
#>     Attrib V43    0.23556730946331977
#>     Attrib V44    0.40776947819957565
#>     Attrib V45    0.23368984095014597
#>     Attrib V46    0.019185353583553288
#>     Attrib V47    -0.031194198758430183
#>     Attrib V48    0.31044933931148067
#>     Attrib V49    0.29923833166847036
#>     Attrib V5    -0.021899947375728025
#>     Attrib V50    -0.5353791407348375
#>     Attrib V51    -0.0975063998294973
#>     Attrib V52    0.10302444352693475
#>     Attrib V53    0.3927892267554848
#>     Attrib V54    0.4258478237982822
#>     Attrib V55    0.10778972031769737
#>     Attrib V56    0.3342575954124311
#>     Attrib V57    -0.22468933329754057
#>     Attrib V58    0.6216220847490074
#>     Attrib V59    0.14219280778903734
#>     Attrib V6    0.053774940027559545
#>     Attrib V60    0.27231584647684987
#>     Attrib V7    -0.19841305076234786
#>     Attrib V8    -0.15010392341553455
#>     Attrib V9    0.09346730484697514
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.2323424541224798
#>     Attrib V1    0.42142218808989457
#>     Attrib V10    -0.4890830825185053
#>     Attrib V11    -0.2879754374226289
#>     Attrib V12    -0.3995720218515714
#>     Attrib V13    -0.38230555860170773
#>     Attrib V14    0.22549348903146627
#>     Attrib V15    0.5280624695026249
#>     Attrib V16    0.2246142667687436
#>     Attrib V17    0.19607629439595975
#>     Attrib V18    0.22904031925969776
#>     Attrib V19    0.0692454951596285
#>     Attrib V2    0.3024911870309682
#>     Attrib V20    0.14715682763154986
#>     Attrib V21    0.7120765723389473
#>     Attrib V22    0.47314462050350425
#>     Attrib V23    -0.21183241872416608
#>     Attrib V24    -0.42983190836081475
#>     Attrib V25    -0.8857143113555256
#>     Attrib V26    -0.8234636367158784
#>     Attrib V27    -0.34010484286892045
#>     Attrib V28    -0.3500324415172385
#>     Attrib V29    -0.102466551489945
#>     Attrib V3    -0.028575305045151843
#>     Attrib V30    0.17787114557278913
#>     Attrib V31    -0.7251647582121232
#>     Attrib V32    -0.2501214079638156
#>     Attrib V33    0.29499425458606104
#>     Attrib V34    0.16474947998527445
#>     Attrib V35    -0.2610470302064732
#>     Attrib V36    -0.7619932204870874
#>     Attrib V37    -0.5994011075525759
#>     Attrib V38    0.07858232204992972
#>     Attrib V39    0.5906092845505992
#>     Attrib V4    -0.0792735633802852
#>     Attrib V40    0.09635288947530977
#>     Attrib V41    -0.22593562090929797
#>     Attrib V42    0.36200354018934067
#>     Attrib V43    0.43280517906141314
#>     Attrib V44    0.4686280834602674
#>     Attrib V45    0.2040487942432002
#>     Attrib V46    -0.013514791524038937
#>     Attrib V47    -0.1733362014659791
#>     Attrib V48    0.29011218359733904
#>     Attrib V49    0.3364924200996649
#>     Attrib V5    -0.07269596964264159
#>     Attrib V50    -0.6604204496957787
#>     Attrib V51    -0.22209128469891995
#>     Attrib V52    0.15945671978439405
#>     Attrib V53    0.623106891818757
#>     Attrib V54    0.4765264155653211
#>     Attrib V55    0.11550313326017092
#>     Attrib V56    0.46136247927217133
#>     Attrib V57    -0.15678321200283785
#>     Attrib V58    0.8355704662035442
#>     Attrib V59    0.406304546692363
#>     Attrib V6    0.10679376969619125
#>     Attrib V60    0.34418443903438445
#>     Attrib V7    -0.19227915341855498
#>     Attrib V8    -0.19141559065601532
#>     Attrib V9    -0.05859173998695588
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.006934062260106202
#>     Attrib V1    0.2465714611446312
#>     Attrib V10    -0.2925281972643824
#>     Attrib V11    -0.20694362263008348
#>     Attrib V12    -0.22944841028367863
#>     Attrib V13    -0.26233469728101333
#>     Attrib V14    0.043395469125850794
#>     Attrib V15    0.2693961114349073
#>     Attrib V16    0.06044017384045039
#>     Attrib V17    0.17532876029323005
#>     Attrib V18    0.2380107060397333
#>     Attrib V19    0.04709098273571124
#>     Attrib V2    0.12075457575273726
#>     Attrib V20    0.1166530210890262
#>     Attrib V21    0.4865736446393874
#>     Attrib V22    0.30256325500704623
#>     Attrib V23    -0.08841243620714896
#>     Attrib V24    -0.18882460095886133
#>     Attrib V25    -0.4488346244872778
#>     Attrib V26    -0.5580970056644519
#>     Attrib V27    -0.2723379826099771
#>     Attrib V28    -0.35617854921061204
#>     Attrib V29    -0.22861417794493497
#>     Attrib V3    0.04454202463653984
#>     Attrib V30    0.1189537063595749
#>     Attrib V31    -0.5450601731394561
#>     Attrib V32    -0.11165964981965361
#>     Attrib V33    0.2286569087811954
#>     Attrib V34    0.22868969302793968
#>     Attrib V35    -0.08740049940477017
#>     Attrib V36    -0.5255852151537339
#>     Attrib V37    -0.40698504344905967
#>     Attrib V38    0.056862762094044485
#>     Attrib V39    0.48012771981349317
#>     Attrib V4    -0.06504356420173121
#>     Attrib V40    0.028993719233554028
#>     Attrib V41    -0.20674930311101167
#>     Attrib V42    0.24337944775829487
#>     Attrib V43    0.20970886211118553
#>     Attrib V44    0.3801515106297001
#>     Attrib V45    0.1510494141155555
#>     Attrib V46    0.04018535167819066
#>     Attrib V47    -0.03456852888273359
#>     Attrib V48    0.2359391175929893
#>     Attrib V49    0.3308337902561522
#>     Attrib V5    -0.01212105834092707
#>     Attrib V50    -0.5316115720096756
#>     Attrib V51    -0.1521233020507967
#>     Attrib V52    0.11916710810833438
#>     Attrib V53    0.45431232647899855
#>     Attrib V54    0.35411786534168566
#>     Attrib V55    0.07020329251216802
#>     Attrib V56    0.32723034916434984
#>     Attrib V57    -0.20940090816730977
#>     Attrib V58    0.5856465685890127
#>     Attrib V59    0.264185118353706
#>     Attrib V6    0.10382848926534384
#>     Attrib V60    0.3404244543160451
#>     Attrib V7    -0.09508081811371837
#>     Attrib V8    -0.2068805729536364
#>     Attrib V9    0.034440694507959134
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.21102345618300802
#>     Attrib V1    0.3665287492215505
#>     Attrib V10    -0.2880082893377458
#>     Attrib V11    -0.15276034090415833
#>     Attrib V12    -0.21545427532233277
#>     Attrib V13    -0.4889600767837965
#>     Attrib V14    -0.05326258003880066
#>     Attrib V15    0.38595749405435115
#>     Attrib V16    0.03637395605066589
#>     Attrib V17    0.1643164358269286
#>     Attrib V18    0.2572162631834625
#>     Attrib V19    -0.04344914954011453
#>     Attrib V2    0.1676962486733015
#>     Attrib V20    0.00756667570934325
#>     Attrib V21    0.6134123603075665
#>     Attrib V22    0.4637961616767542
#>     Attrib V23    -0.1423949520069043
#>     Attrib V24    -0.2837678784818906
#>     Attrib V25    -0.6493795516704822
#>     Attrib V26    -0.6470254628645956
#>     Attrib V27    -0.3879481570646101
#>     Attrib V28    -0.5234140299928406
#>     Attrib V29    -0.5270365775982826
#>     Attrib V3    -0.11920025940794632
#>     Attrib V30    0.1320471254322402
#>     Attrib V31    -0.6751621850566398
#>     Attrib V32    -0.14242340415122398
#>     Attrib V33    0.3885540533824657
#>     Attrib V34    0.26235429509009706
#>     Attrib V35    -0.13047846251241174
#>     Attrib V36    -0.8575250115875422
#>     Attrib V37    -0.6788881198980723
#>     Attrib V38    -0.022610500138788844
#>     Attrib V39    0.593363530876613
#>     Attrib V4    -0.18255857950806018
#>     Attrib V40    0.039150066723485255
#>     Attrib V41    -0.3508274019475563
#>     Attrib V42    0.2796580832834973
#>     Attrib V43    0.38220501742305324
#>     Attrib V44    0.6407705730505452
#>     Attrib V45    0.1997964904110454
#>     Attrib V46    0.017921056159905156
#>     Attrib V47    -0.11266119687424449
#>     Attrib V48    0.44444209948187163
#>     Attrib V49    0.505263817098989
#>     Attrib V5    -0.13404179779531544
#>     Attrib V50    -0.8249526661732781
#>     Attrib V51    -0.22994279841468987
#>     Attrib V52    0.22979903246710273
#>     Attrib V53    0.5856125331410628
#>     Attrib V54    0.5597713504485414
#>     Attrib V55    0.07173792007233167
#>     Attrib V56    0.4428701680406951
#>     Attrib V57    -0.35956699454109536
#>     Attrib V58    0.8412139436931141
#>     Attrib V59    0.2506968121473744
#>     Attrib V6    0.12277830795541339
#>     Attrib V60    0.4121068703317931
#>     Attrib V7    -0.19971477540517316
#>     Attrib V8    -0.2694396503164827
#>     Attrib V9    0.10335778476723258
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.5757251149832495
#>     Attrib V1    0.28240743781117333
#>     Attrib V10    -0.32359867389895824
#>     Attrib V11    -0.7657059345243411
#>     Attrib V12    -0.8895225028435263
#>     Attrib V13    0.07808527425051191
#>     Attrib V14    0.5039116540428473
#>     Attrib V15    0.4447135250343666
#>     Attrib V16    0.7505098330722796
#>     Attrib V17    0.37104940048667046
#>     Attrib V18    -0.3070033227993806
#>     Attrib V19    0.23353210910809064
#>     Attrib V2    0.13084103923981721
#>     Attrib V20    0.8496188842895749
#>     Attrib V21    0.07781816232085634
#>     Attrib V22    -0.15714214955991035
#>     Attrib V23    0.14442802469403535
#>     Attrib V24    -0.3814349443016441
#>     Attrib V25    -0.3559086381201304
#>     Attrib V26    -0.5207037887134766
#>     Attrib V27    -0.4820821120741681
#>     Attrib V28    -0.17207582733846166
#>     Attrib V29    0.14518440696760165
#>     Attrib V3    0.3057203695850628
#>     Attrib V30    -0.1833108947092351
#>     Attrib V31    0.48852872269939135
#>     Attrib V32    0.1550526670733553
#>     Attrib V33    0.09707054716378674
#>     Attrib V34    -0.1253529099642175
#>     Attrib V35    -0.22300473721360595
#>     Attrib V36    0.877667929119799
#>     Attrib V37    0.6336103173800477
#>     Attrib V38    0.29046535910490434
#>     Attrib V39    -0.19605549261291588
#>     Attrib V4    0.07713335351579297
#>     Attrib V40    0.04061809002428766
#>     Attrib V41    -0.07813089519329633
#>     Attrib V42    -0.07665664762928887
#>     Attrib V43    -0.3566054330870202
#>     Attrib V44    -0.8468886278560763
#>     Attrib V45    -0.3157891182424028
#>     Attrib V46    -0.4541858428258146
#>     Attrib V47    -0.40666103215558896
#>     Attrib V48    -0.7956825193031464
#>     Attrib V49    -0.9100798367022732
#>     Attrib V5    -0.24241017537840076
#>     Attrib V50    1.1345599148571577
#>     Attrib V51    -0.3254379402304246
#>     Attrib V52    -0.8610608553318696
#>     Attrib V53    -0.9718536671521475
#>     Attrib V54    -0.24376817568383946
#>     Attrib V55    0.18445163662097036
#>     Attrib V56    0.04808566406523404
#>     Attrib V57    0.6908493184879706
#>     Attrib V58    -0.4244216781487652
#>     Attrib V59    0.05812412021495754
#>     Attrib V6    -0.45806279439346376
#>     Attrib V60    -0.40582738742487795
#>     Attrib V7    0.13352305262482253
#>     Attrib V8    0.222615468087108
#>     Attrib V9    -0.4953681256954147
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.07487646959720508
#>     Attrib V1    0.08888767630609946
#>     Attrib V10    -0.10980208973696941
#>     Attrib V11    -0.08119207311894924
#>     Attrib V12    -0.059273026547276945
#>     Attrib V13    -0.127250616783834
#>     Attrib V14    -0.031127291582594467
#>     Attrib V15    0.09070163493529544
#>     Attrib V16    0.05436369139827632
#>     Attrib V17    0.0767052644469696
#>     Attrib V18    0.12136636216507493
#>     Attrib V19    0.019900836680549344
#>     Attrib V2    0.002834395812946497
#>     Attrib V20    -0.05313245830563346
#>     Attrib V21    0.09952508592070632
#>     Attrib V22    0.028727525674760248
#>     Attrib V23    -0.17023879364572872
#>     Attrib V24    -0.07480512601811369
#>     Attrib V25    -0.1726834756798213
#>     Attrib V26    -0.2522988650843715
#>     Attrib V27    -0.18326198710866332
#>     Attrib V28    -0.18236526414625887
#>     Attrib V29    -0.1886087386838019
#>     Attrib V3    0.025009389976974022
#>     Attrib V30    -0.028520253310990673
#>     Attrib V31    -0.22770482150985344
#>     Attrib V32    -3.670842837212373E-4
#>     Attrib V33    0.09608941114254167
#>     Attrib V34    0.15227609960821004
#>     Attrib V35    0.014477968389311025
#>     Attrib V36    -0.22427741551997743
#>     Attrib V37    -0.17344600446671715
#>     Attrib V38    0.02043256012801378
#>     Attrib V39    0.22667480108973914
#>     Attrib V4    0.012834040972299413
#>     Attrib V40    -0.01845239147909828
#>     Attrib V41    -0.11268778494614841
#>     Attrib V42    0.10888808931137839
#>     Attrib V43    0.07276233176469887
#>     Attrib V44    0.1136692996186446
#>     Attrib V45    0.1001212740924371
#>     Attrib V46    0.061101098747714654
#>     Attrib V47    0.007602567519610769
#>     Attrib V48    0.13789221080610667
#>     Attrib V49    0.12531011017046753
#>     Attrib V5    0.024376912232609755
#>     Attrib V50    -0.18582241560483337
#>     Attrib V51    0.008690971115408057
#>     Attrib V52    0.06570324671968351
#>     Attrib V53    0.2610870658776243
#>     Attrib V54    0.1670480615901643
#>     Attrib V55    0.11201780082187518
#>     Attrib V56    0.17313546398216195
#>     Attrib V57    -0.03112036628464814
#>     Attrib V58    0.3363544747185274
#>     Attrib V59    0.07418002250588755
#>     Attrib V6    0.021729449219201898
#>     Attrib V60    0.1989999289364173
#>     Attrib V7    -0.0730332708328063
#>     Attrib V8    -0.10194373504434115
#>     Attrib V9    0.05693030178625935
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.08512291976619928
#>     Attrib V1    0.08609453279562736
#>     Attrib V10    -0.0061966887307172746
#>     Attrib V11    -0.0025920384716906857
#>     Attrib V12    -0.06220538903592292
#>     Attrib V13    -0.14149877899290952
#>     Attrib V14    -0.020115359150267784
#>     Attrib V15    0.12453479777844309
#>     Attrib V16    0.0044254454622449845
#>     Attrib V17    0.027581578451910272
#>     Attrib V18    0.04026484269540193
#>     Attrib V19    0.03184969531749385
#>     Attrib V2    0.10900560678213471
#>     Attrib V20    -0.03269152583311049
#>     Attrib V21    0.045692384769648084
#>     Attrib V22    0.07123645118032737
#>     Attrib V23    -0.096590233238743
#>     Attrib V24    -0.05077362162213982
#>     Attrib V25    -0.15333999523159292
#>     Attrib V26    -0.16448098783311582
#>     Attrib V27    -0.1049327181179663
#>     Attrib V28    -0.12805662715303373
#>     Attrib V29    -0.14475014604508943
#>     Attrib V3    0.03345503867134333
#>     Attrib V30    0.04638890952586008
#>     Attrib V31    -0.05885685328489357
#>     Attrib V32    -0.032295952013599825
#>     Attrib V33    0.11077926715511649
#>     Attrib V34    0.07125796641447894
#>     Attrib V35    0.10835250629376286
#>     Attrib V36    -0.08434286137851076
#>     Attrib V37    -0.07899830420970465
#>     Attrib V38    0.07978988109284285
#>     Attrib V39    0.1683138804271426
#>     Attrib V4    0.05256328793372967
#>     Attrib V40    -0.05636595404436873
#>     Attrib V41    -0.06519671966076011
#>     Attrib V42    0.036471267651918875
#>     Attrib V43    0.08790042242666558
#>     Attrib V44    0.1270933797205814
#>     Attrib V45    0.11333462514015036
#>     Attrib V46    0.019352315218824148
#>     Attrib V47    -0.02189433118180982
#>     Attrib V48    0.13425833138156196
#>     Attrib V49    0.07019575246556845
#>     Attrib V5    0.06679539068644798
#>     Attrib V50    -0.11685403377784158
#>     Attrib V51    0.0194927217786565
#>     Attrib V52    0.019962170720484528
#>     Attrib V53    0.11631451888120083
#>     Attrib V54    0.07270676785398568
#>     Attrib V55    0.0956792258782971
#>     Attrib V56    0.14237705245899906
#>     Attrib V57    0.02705311420914689
#>     Attrib V58    0.16078992477867002
#>     Attrib V59    0.031467368042801945
#>     Attrib V6    0.015017563285184249
#>     Attrib V60    0.15470706381757834
#>     Attrib V7    -0.08768846786735059
#>     Attrib V8    0.011318875324884122
#>     Attrib V9    0.06145809292751751
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.06948674774946553
#>     Attrib V1    0.08248623508356406
#>     Attrib V10    -0.0988578455156619
#>     Attrib V11    -0.07390347224957809
#>     Attrib V12    -0.08055249341605651
#>     Attrib V13    -0.19709541746973383
#>     Attrib V14    -0.05037694369715831
#>     Attrib V15    0.06876682462520924
#>     Attrib V16    -0.0012792850810275952
#>     Attrib V17    0.03216423532309622
#>     Attrib V18    0.1735720567511438
#>     Attrib V19    -0.014526707106928329
#>     Attrib V2    0.03371640147820412
#>     Attrib V20    0.023368328560061942
#>     Attrib V21    0.24183896336492808
#>     Attrib V22    0.1463838371276711
#>     Attrib V23    -0.07282833527616214
#>     Attrib V24    -0.0967126039439488
#>     Attrib V25    -0.17151212913951522
#>     Attrib V26    -0.2000497935363712
#>     Attrib V27    -0.16327664974353231
#>     Attrib V28    -0.25475203199204416
#>     Attrib V29    -0.2765501385391115
#>     Attrib V3    0.023145889480668733
#>     Attrib V30    -0.010263181706761694
#>     Attrib V31    -0.26610916838565274
#>     Attrib V32    -0.04096273776166725
#>     Attrib V33    0.1491586060256155
#>     Attrib V34    0.20325702587792624
#>     Attrib V35    0.025503153141180953
#>     Attrib V36    -0.19139392229475552
#>     Attrib V37    -0.24020445207083066
#>     Attrib V38    -0.004258164810556415
#>     Attrib V39    0.258042740955695
#>     Attrib V4    -0.06593680575331226
#>     Attrib V40    -0.03939664340631977
#>     Attrib V41    -0.2082453219762871
#>     Attrib V42    0.08192346112041897
#>     Attrib V43    0.1166373803662247
#>     Attrib V44    0.24000544688911013
#>     Attrib V45    0.06701085370899375
#>     Attrib V46    0.02354979257867872
#>     Attrib V47    0.03141422219895125
#>     Attrib V48    0.17284275336481794
#>     Attrib V49    0.20817520199812
#>     Attrib V5    -0.005545498549327124
#>     Attrib V50    -0.34675667675107114
#>     Attrib V51    -0.01116159693476457
#>     Attrib V52    0.046640475452656524
#>     Attrib V53    0.23010022521205178
#>     Attrib V54    0.14280344028525538
#>     Attrib V55    0.07163017262559263
#>     Attrib V56    0.1917092176400679
#>     Attrib V57    -0.19467165852641918
#>     Attrib V58    0.3116835725711194
#>     Attrib V59    0.08725939484178924
#>     Attrib V6    -0.0381545550945239
#>     Attrib V60    0.21286399010280904
#>     Attrib V7    -0.06666456521260988
#>     Attrib V8    -0.07517259325319532
#>     Attrib V9    0.08175498587606216
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.12951161100723346
#>     Attrib V1    0.019897776752768454
#>     Attrib V10    -0.08693165368281595
#>     Attrib V11    0.04809185020113295
#>     Attrib V12    0.044827189732643755
#>     Attrib V13    -0.537750839459577
#>     Attrib V14    -0.3211476772054506
#>     Attrib V15    0.04632968714812116
#>     Attrib V16    -0.16015812657709966
#>     Attrib V17    0.17275087937970995
#>     Attrib V18    0.4026317345390619
#>     Attrib V19    0.11123651133885347
#>     Attrib V2    0.020349133159346822
#>     Attrib V20    -0.09384633616578847
#>     Attrib V21    0.5383225255451075
#>     Attrib V22    0.6436523045528875
#>     Attrib V23    -0.002606355055975086
#>     Attrib V24    0.018918585150821243
#>     Attrib V25    -0.1808357266306079
#>     Attrib V26    -0.27438444782464905
#>     Attrib V27    -0.15266281488011232
#>     Attrib V28    -0.39456616728292426
#>     Attrib V29    -0.6232925067376905
#>     Attrib V3    -0.1919939912765385
#>     Attrib V30    0.2216640448427733
#>     Attrib V31    -0.7976687094813286
#>     Attrib V32    -0.1854527030217736
#>     Attrib V33    0.42839910983444734
#>     Attrib V34    0.4565919003924854
#>     Attrib V35    0.2257448645504693
#>     Attrib V36    -0.6424953758382936
#>     Attrib V37    -0.6423438685233903
#>     Attrib V38    0.08751535149441604
#>     Attrib V39    0.573865700742241
#>     Attrib V4    -0.16413469917352672
#>     Attrib V40    -0.04571366171607695
#>     Attrib V41    -0.4807174123769465
#>     Attrib V42    0.19611662287651957
#>     Attrib V43    0.3777253087128865
#>     Attrib V44    0.8317946263189075
#>     Attrib V45    0.5099720929341789
#>     Attrib V46    0.1561187076051075
#>     Attrib V47    -0.07021475389850404
#>     Attrib V48    0.5063836098099342
#>     Attrib V49    0.6129825243177752
#>     Attrib V5    -0.0940420982603859
#>     Attrib V50    -1.1215219149682512
#>     Attrib V51    -0.16692164641027646
#>     Attrib V52    0.47998438576824826
#>     Attrib V53    0.7190724871204954
#>     Attrib V54    0.563898269351822
#>     Attrib V55    -0.0025330784304540867
#>     Attrib V56    0.3571315606878624
#>     Attrib V57    -0.7146986543725327
#>     Attrib V58    0.8325922705374486
#>     Attrib V59    -0.02296696829713677
#>     Attrib V6    0.02045035874402617
#>     Attrib V60    0.3542819941964428
#>     Attrib V7    -0.2300757398903325
#>     Attrib V8    -0.27681291385923557
#>     Attrib V9    0.3838616457366526
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.11345048972205093
#>     Attrib V1    0.1144242240746452
#>     Attrib V10    0.23835821940088636
#>     Attrib V11    0.26373383062290345
#>     Attrib V12    0.08570696213860039
#>     Attrib V13    -0.4920589523219202
#>     Attrib V14    -0.4241432135892173
#>     Attrib V15    -0.15439666378683187
#>     Attrib V16    -0.2678108112919995
#>     Attrib V17    0.24696026512127783
#>     Attrib V18    0.5957436913598977
#>     Attrib V19    0.34539293730061993
#>     Attrib V2    0.051133275270960565
#>     Attrib V20    0.21450860212969633
#>     Attrib V21    0.8949012241733052
#>     Attrib V22    1.111828966351707
#>     Attrib V23    0.4874057971796475
#>     Attrib V24    0.27094581563564546
#>     Attrib V25    0.13124236015833946
#>     Attrib V26    0.16657850088138917
#>     Attrib V27    0.16228572021985718
#>     Attrib V28    -0.18065135223261272
#>     Attrib V29    -0.3750154031573857
#>     Attrib V3    -0.12197353193677457
#>     Attrib V30    0.4839366000223888
#>     Attrib V31    -0.8642659239162718
#>     Attrib V32    -0.2701428077095812
#>     Attrib V33    0.2941790530613442
#>     Attrib V34    0.4537723991369836
#>     Attrib V35    0.4623514404184174
#>     Attrib V36    -0.3020015963669072
#>     Attrib V37    -0.2224763377755058
#>     Attrib V38    0.3466305110082358
#>     Attrib V39    0.6031061241935834
#>     Attrib V4    -0.12662001353351499
#>     Attrib V40    -0.24927723362103715
#>     Attrib V41    -0.49801852144515774
#>     Attrib V42    0.07959066718550795
#>     Attrib V43    0.490126907420593
#>     Attrib V44    1.2124207990540998
#>     Attrib V45    0.6630477590763879
#>     Attrib V46    0.17734666804519178
#>     Attrib V47    -0.019458440477038975
#>     Attrib V48    0.4498286192186343
#>     Attrib V49    0.5847000227536333
#>     Attrib V5    0.05105831479011171
#>     Attrib V50    -1.0925200102569501
#>     Attrib V51    0.10942982697359935
#>     Attrib V52    0.6505040303590515
#>     Attrib V53    0.7382954483310908
#>     Attrib V54    0.44738306948580275
#>     Attrib V55    -0.19172982516100032
#>     Attrib V56    0.5409475236310953
#>     Attrib V57    -1.0491722029298383
#>     Attrib V58    0.7502367310471003
#>     Attrib V59    -0.17862846274219327
#>     Attrib V6    0.030826795794819124
#>     Attrib V60    0.35502094594323613
#>     Attrib V7    -0.32947774027594856
#>     Attrib V8    -0.423911314436588
#>     Attrib V9    0.6737326401416592
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.4691052925986002
#>     Attrib V1    0.3424326853544865
#>     Attrib V10    -0.3416294052201993
#>     Attrib V11    -0.7310418394355679
#>     Attrib V12    -0.819780064356638
#>     Attrib V13    0.12022768882162263
#>     Attrib V14    0.5317425101850887
#>     Attrib V15    0.3885608721557826
#>     Attrib V16    0.6848035134596727
#>     Attrib V17    0.3222106263798432
#>     Attrib V18    -0.31692794398728386
#>     Attrib V19    0.14905069979864655
#>     Attrib V2    0.10888606186447779
#>     Attrib V20    0.7950503890723
#>     Attrib V21    0.09381730505680254
#>     Attrib V22    -0.2908172425111186
#>     Attrib V23    0.04796349607521854
#>     Attrib V24    -0.39362053077896236
#>     Attrib V25    -0.29503969332024027
#>     Attrib V26    -0.3916154024560825
#>     Attrib V27    -0.395480976951812
#>     Attrib V28    -0.21771738554541467
#>     Attrib V29    0.15481614079053194
#>     Attrib V3    0.24928136831608805
#>     Attrib V30    -0.18541167300930797
#>     Attrib V31    0.5564806333983332
#>     Attrib V32    0.08180826392433457
#>     Attrib V33    -0.013797856758703665
#>     Attrib V34    -0.18860335724467817
#>     Attrib V35    -0.20404842593128153
#>     Attrib V36    0.9431541450145708
#>     Attrib V37    0.6883792376052189
#>     Attrib V38    0.2838646159696338
#>     Attrib V39    -0.18764087502494847
#>     Attrib V4    0.13054935293098882
#>     Attrib V40    0.12494992124721788
#>     Attrib V41    0.012456103257054109
#>     Attrib V42    -0.13385682490031672
#>     Attrib V43    -0.28972729715816203
#>     Attrib V44    -0.7929000809996473
#>     Attrib V45    -0.36298851919724734
#>     Attrib V46    -0.47460542662398936
#>     Attrib V47    -0.42547207582244073
#>     Attrib V48    -0.7955771950320479
#>     Attrib V49    -0.9264870676387248
#>     Attrib V5    -0.23283637131307813
#>     Attrib V50    1.193006205441076
#>     Attrib V51    -0.328854987771456
#>     Attrib V52    -0.8596819423235788
#>     Attrib V53    -1.0009276806995755
#>     Attrib V54    -0.27889024934714607
#>     Attrib V55    0.15610067098712235
#>     Attrib V56    -0.06037699817306312
#>     Attrib V57    0.8508361019599217
#>     Attrib V58    -0.4986509562527409
#>     Attrib V59    0.14449045650491069
#>     Attrib V6    -0.47095081317683146
#>     Attrib V60    -0.27055659673165117
#>     Attrib V7    0.2026549520001233
#>     Attrib V8    0.16762802554048692
#>     Attrib V9    -0.5182766993690705
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.05130301741725541
#>     Attrib V1    0.26331923736142443
#>     Attrib V10    -0.2315199540950871
#>     Attrib V11    -0.1765228040954205
#>     Attrib V12    -0.16762582600860843
#>     Attrib V13    -0.26498968753109875
#>     Attrib V14    0.07498162571476892
#>     Attrib V15    0.23528682590793604
#>     Attrib V16    0.1284208465342751
#>     Attrib V17    0.11199115187030836
#>     Attrib V18    0.12751837066858424
#>     Attrib V19    -0.042459909298958744
#>     Attrib V2    0.11931294168830085
#>     Attrib V20    0.0344427301187651
#>     Attrib V21    0.327621487821227
#>     Attrib V22    0.14622841399616307
#>     Attrib V23    -0.24731655381517353
#>     Attrib V24    -0.21235661434842956
#>     Attrib V25    -0.4909288048642348
#>     Attrib V26    -0.5087200412727624
#>     Attrib V27    -0.33718098373801797
#>     Attrib V28    -0.42165243196282387
#>     Attrib V29    -0.28786484165768894
#>     Attrib V3    -0.042733604651582324
#>     Attrib V30    0.009736058754633785
#>     Attrib V31    -0.32421929436864627
#>     Attrib V32    -0.06692342863827935
#>     Attrib V33    0.1766650553405359
#>     Attrib V34    0.16431850757942149
#>     Attrib V35    -0.07761449805664991
#>     Attrib V36    -0.43928454722030197
#>     Attrib V37    -0.38220752794512797
#>     Attrib V38    -0.0334527180384894
#>     Attrib V39    0.3203990111060922
#>     Attrib V4    -0.045087815390121744
#>     Attrib V40    0.034147101269156495
#>     Attrib V41    -0.25192366327380483
#>     Attrib V42    0.154048496962684
#>     Attrib V43    0.24956654464150002
#>     Attrib V44    0.2434190137922629
#>     Attrib V45    0.04311223729845257
#>     Attrib V46    0.023428733970224883
#>     Attrib V47    -0.09678153950003952
#>     Attrib V48    0.25090251049867557
#>     Attrib V49    0.25910959501890035
#>     Attrib V5    -0.018108654387508877
#>     Attrib V50    -0.393082992864494
#>     Attrib V51    -0.13980061601509414
#>     Attrib V52    0.05454361081332412
#>     Attrib V53    0.3031134317721547
#>     Attrib V54    0.3312335677576182
#>     Attrib V55    0.14766994309980638
#>     Attrib V56    0.2943023682315058
#>     Attrib V57    -0.09493791601689648
#>     Attrib V58    0.5551813982661011
#>     Attrib V59    0.22194556100519455
#>     Attrib V6    0.04656814543208677
#>     Attrib V60    0.301555207588102
#>     Attrib V7    -0.11223671852272671
#>     Attrib V8    -0.19800094501829296
#>     Attrib V9    0.019131595392431665
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.19711497782230208
#>     Attrib V1    0.4254728564540181
#>     Attrib V10    -0.3997320688355622
#>     Attrib V11    -0.1655410737518088
#>     Attrib V12    -0.24780956429005965
#>     Attrib V13    -0.45376847458759617
#>     Attrib V14    0.07228954798804427
#>     Attrib V15    0.41476785139000016
#>     Attrib V16    0.07679128054226177
#>     Attrib V17    0.2747781947528863
#>     Attrib V18    0.3574946733577986
#>     Attrib V19    0.05504399886903783
#>     Attrib V2    0.20429611996894634
#>     Attrib V20    0.12402958796162626
#>     Attrib V21    0.8100128999181008
#>     Attrib V22    0.6599721922014977
#>     Attrib V23    -0.07461914260597217
#>     Attrib V24    -0.32828429609016013
#>     Attrib V25    -0.7470801607250813
#>     Attrib V26    -0.6776296696195869
#>     Attrib V27    -0.31703510293220233
#>     Attrib V28    -0.38266303449167444
#>     Attrib V29    -0.25801315349103404
#>     Attrib V3    0.017987580790219063
#>     Attrib V30    0.30899801163751395
#>     Attrib V31    -0.8681649266284902
#>     Attrib V32    -0.28460596955957485
#>     Attrib V33    0.30823807864977704
#>     Attrib V34    0.21224670171671867
#>     Attrib V35    -0.10630305929163826
#>     Attrib V36    -0.7959750528358575
#>     Attrib V37    -0.6110430568915416
#>     Attrib V38    0.1321407000371353
#>     Attrib V39    0.7047275440835138
#>     Attrib V4    -0.107176737924176
#>     Attrib V40    -0.03667033178533714
#>     Attrib V41    -0.37090555313780543
#>     Attrib V42    0.35303582870317324
#>     Attrib V43    0.5210561212912335
#>     Attrib V44    0.7598568119776159
#>     Attrib V45    0.38287105405090055
#>     Attrib V46    -0.011912797550913639
#>     Attrib V47    -0.1418086958635924
#>     Attrib V48    0.307347604786063
#>     Attrib V49    0.43995813994345023
#>     Attrib V5    -0.09877744345156038
#>     Attrib V50    -0.9216345925902096
#>     Attrib V51    -0.2686909947843549
#>     Attrib V52    0.3389073240683263
#>     Attrib V53    0.7788181478611235
#>     Attrib V54    0.5733810508451956
#>     Attrib V55    0.077768396892407
#>     Attrib V56    0.5511323640690549
#>     Attrib V57    -0.48029678840232176
#>     Attrib V58    0.927858483956468
#>     Attrib V59    0.2997412473227291
#>     Attrib V6    0.11714407156673659
#>     Attrib V60    0.34370204646052954
#>     Attrib V7    -0.25039877112534015
#>     Attrib V8    -0.26269894679087563
#>     Attrib V9    0.10231229217721517
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.3109431159803742
#>     Attrib V1    0.10633176086872904
#>     Attrib V10    -0.15510989926734983
#>     Attrib V11    -0.40148240967272125
#>     Attrib V12    -0.3544846567033876
#>     Attrib V13    0.24779075903817827
#>     Attrib V14    0.44881201781031393
#>     Attrib V15    0.22243371886080324
#>     Attrib V16    0.4163087576647974
#>     Attrib V17    0.16256109266686833
#>     Attrib V18    -0.262512127636664
#>     Attrib V19    0.11568184472115119
#>     Attrib V2    -0.024263192175554584
#>     Attrib V20    0.4118029811036123
#>     Attrib V21    -0.26521540634937474
#>     Attrib V22    -0.4928065891326669
#>     Attrib V23    -0.021736715310783677
#>     Attrib V24    -0.1958518191997702
#>     Attrib V25    0.07446355443232319
#>     Attrib V26    0.01225488705050323
#>     Attrib V27    -0.2643113421073711
#>     Attrib V28    -0.18481288299076035
#>     Attrib V29    0.030877452577012368
#>     Attrib V3    0.1443394696538011
#>     Attrib V30    -0.35792831640855244
#>     Attrib V31    0.49476842424924344
#>     Attrib V32    0.06898960665050391
#>     Attrib V33    -0.25720741973732514
#>     Attrib V34    -0.20381633897725626
#>     Attrib V35    -0.006473524136028476
#>     Attrib V36    0.994748984321912
#>     Attrib V37    0.5831949613331555
#>     Attrib V38    0.1775183963712463
#>     Attrib V39    -0.24449118004354212
#>     Attrib V4    0.15549037392204246
#>     Attrib V40    0.299273426892269
#>     Attrib V41    0.20551705935315703
#>     Attrib V42    -0.21915824846004484
#>     Attrib V43    -0.18692958871160864
#>     Attrib V44    -0.6547031478718506
#>     Attrib V45    -0.3297075735432597
#>     Attrib V46    -0.27621032642319343
#>     Attrib V47    -0.176305289947078
#>     Attrib V48    -0.5771773795447237
#>     Attrib V49    -0.6874448564611694
#>     Attrib V5    -0.15369213781654134
#>     Attrib V50    1.0937321530545645
#>     Attrib V51    -0.10041064776815152
#>     Attrib V52    -0.5545238404935543
#>     Attrib V53    -0.7301569416911347
#>     Attrib V54    -0.3355715214653347
#>     Attrib V55    0.18398192748239406
#>     Attrib V56    -0.18560110738320212
#>     Attrib V57    0.8332599234256127
#>     Attrib V58    -0.517740266155576
#>     Attrib V59    0.15577310962933552
#>     Attrib V6    -0.22936192348689335
#>     Attrib V60    -0.19772378362814566
#>     Attrib V7    0.3131456364691631
#>     Attrib V8    0.30952560532850515
#>     Attrib V9    -0.40319877486543915
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.7567804372619028
#>     Attrib V1    -0.29016365188409776
#>     Attrib V10    0.7574998275980224
#>     Attrib V11    1.1887244824907797
#>     Attrib V12    1.5094813668043243
#>     Attrib V13    0.15283881589951012
#>     Attrib V14    -0.658929317623297
#>     Attrib V15    -0.6417921105395341
#>     Attrib V16    -1.1067386914961628
#>     Attrib V17    -0.47316556588031794
#>     Attrib V18    0.4919062778667444
#>     Attrib V19    -0.09354291029041913
#>     Attrib V2    -0.19022480465318226
#>     Attrib V20    -0.9128221151476317
#>     Attrib V21    -0.022939915695739777
#>     Attrib V22    0.42930898392477546
#>     Attrib V23    0.12572678801622858
#>     Attrib V24    0.6246179058491963
#>     Attrib V25    0.6237938656142303
#>     Attrib V26    1.288480847366319
#>     Attrib V27    0.9200370606861444
#>     Attrib V28    0.520435699824242
#>     Attrib V29    0.09717895004543968
#>     Attrib V3    -0.27754725784216827
#>     Attrib V30    0.20823578267446316
#>     Attrib V31    -0.5526160534582405
#>     Attrib V32    -0.25422926834263193
#>     Attrib V33    -0.5402936624502953
#>     Attrib V34    -0.0025157886631098666
#>     Attrib V35    0.5564022371868643
#>     Attrib V36    -0.6754707506226149
#>     Attrib V37    -0.3362976438974633
#>     Attrib V38    -0.42891239003352993
#>     Attrib V39    0.1366715648892042
#>     Attrib V4    0.11099436152004104
#>     Attrib V40    -0.11374169678392124
#>     Attrib V41    0.3623639652036054
#>     Attrib V42    -0.061726210466703034
#>     Attrib V43    0.3064612176987351
#>     Attrib V44    1.0688175167760412
#>     Attrib V45    0.4793084692921349
#>     Attrib V46    0.7424574130690775
#>     Attrib V47    0.7218091041444253
#>     Attrib V48    1.007445817349614
#>     Attrib V49    1.3612989081447695
#>     Attrib V5    0.7132354616825589
#>     Attrib V50    -1.0642120921682945
#>     Attrib V51    0.8664120184439477
#>     Attrib V52    1.0935311172769047
#>     Attrib V53    1.1511938350432915
#>     Attrib V54    0.052961748439028046
#>     Attrib V55    -0.613515972752288
#>     Attrib V56    -0.22063254789685685
#>     Attrib V57    -1.0030515347996705
#>     Attrib V58    0.17588811059150558
#>     Attrib V59    -0.15999907247927833
#>     Attrib V6    0.7438943862713917
#>     Attrib V60    0.6798236498200456
#>     Attrib V7    -0.08275991003313445
#>     Attrib V8    -0.4786834441928399
#>     Attrib V9    0.6881547099075341
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20897493183633195
#>     Attrib V1    0.02901714785789664
#>     Attrib V10    -0.014896161371836284
#>     Attrib V11    -0.10400940428868724
#>     Attrib V12    -0.06572450490568757
#>     Attrib V13    0.041556301962490085
#>     Attrib V14    0.1399576386038436
#>     Attrib V15    0.02405393128813271
#>     Attrib V16    0.10433402664103622
#>     Attrib V17    0.093047154476255
#>     Attrib V18    -0.030841090164964936
#>     Attrib V19    0.08536563639502263
#>     Attrib V2    0.06073952709552548
#>     Attrib V20    0.0641951226833653
#>     Attrib V21    -0.07407231030645403
#>     Attrib V22    -0.10228879247746346
#>     Attrib V23    0.008116840561486195
#>     Attrib V24    -0.06328539796469612
#>     Attrib V25    0.00965584067414784
#>     Attrib V26    -0.06255648442059326
#>     Attrib V27    -0.06431979623425306
#>     Attrib V28    -0.029053740922928048
#>     Attrib V29    -0.007847303780783068
#>     Attrib V3    0.040658629783639585
#>     Attrib V30    -0.06810385275204293
#>     Attrib V31    0.1255197673002894
#>     Attrib V32    0.052527105753767615
#>     Attrib V33    0.07137946063788167
#>     Attrib V34    0.0074141321142097896
#>     Attrib V35    0.14857946709812586
#>     Attrib V36    0.37482762790988483
#>     Attrib V37    0.2847833809745293
#>     Attrib V38    0.00959986239865936
#>     Attrib V39    -0.05446529013608299
#>     Attrib V4    0.11796095599476367
#>     Attrib V40    0.10888896428703912
#>     Attrib V41    0.12142159134490953
#>     Attrib V42    0.05653352003100708
#>     Attrib V43    0.012865479001114982
#>     Attrib V44    -0.08584865133972837
#>     Attrib V45    -0.06341738491898245
#>     Attrib V46    -0.09841678564094296
#>     Attrib V47    -0.06562341020817368
#>     Attrib V48    -0.0803136313168582
#>     Attrib V49    -0.13680979360803497
#>     Attrib V5    -0.006374969801495782
#>     Attrib V50    0.26312038093605716
#>     Attrib V51    0.006204110831007084
#>     Attrib V52    -0.0990765344078538
#>     Attrib V53    -0.11938342723484133
#>     Attrib V54    -0.08130720777237639
#>     Attrib V55    0.027715450241570898
#>     Attrib V56    0.01868502505255984
#>     Attrib V57    0.2688735153711961
#>     Attrib V58    -0.06461928485199404
#>     Attrib V59    0.059609683304747675
#>     Attrib V6    0.0342438474095026
#>     Attrib V60    0.027209235331867903
#>     Attrib V7    0.07384460012331469
#>     Attrib V8    0.15832270830595818
#>     Attrib V9    -0.06079517240265081
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.15636130823644212
#>     Attrib V1    0.08889062071640284
#>     Attrib V10    0.06969356755023985
#>     Attrib V11    0.1901598154308719
#>     Attrib V12    0.08784893850170085
#>     Attrib V13    -0.46742902947063547
#>     Attrib V14    -0.43843625108235396
#>     Attrib V15    -0.08312577966256114
#>     Attrib V16    -0.2199108039610964
#>     Attrib V17    0.14596971058861669
#>     Attrib V18    0.5105230801155523
#>     Attrib V19    0.15197605689646318
#>     Attrib V2    -0.0025173949521275925
#>     Attrib V20    -0.07087356478880773
#>     Attrib V21    0.6288247555754494
#>     Attrib V22    0.7356813821506887
#>     Attrib V23    0.08955759200667288
#>     Attrib V24    0.09183023901789675
#>     Attrib V25    -0.11521008151423216
#>     Attrib V26    -0.007841374792071963
#>     Attrib V27    0.0014760807481603577
#>     Attrib V28    -0.2788533693259841
#>     Attrib V29    -0.44285152225287083
#>     Attrib V3    -0.16871099290773411
#>     Attrib V30    0.32699442890295044
#>     Attrib V31    -0.8034790613876407
#>     Attrib V32    -0.22991533383903767
#>     Attrib V33    0.26812159465019997
#>     Attrib V34    0.4548988610788576
#>     Attrib V35    0.32093833289845775
#>     Attrib V36    -0.48340287980966523
#>     Attrib V37    -0.39635943447681243
#>     Attrib V38    0.21161523655011832
#>     Attrib V39    0.6100889001223635
#>     Attrib V4    -0.15707158960947992
#>     Attrib V40    -0.16477452430326825
#>     Attrib V41    -0.43504076483509846
#>     Attrib V42    0.11221519070116273
#>     Attrib V43    0.36810156093836516
#>     Attrib V44    0.9827989704601469
#>     Attrib V45    0.5678248282459208
#>     Attrib V46    0.14194850592813227
#>     Attrib V47    -0.0644564947683696
#>     Attrib V48    0.4683189020574048
#>     Attrib V49    0.5412611132547104
#>     Attrib V5    -0.05319386505838055
#>     Attrib V50    -1.0366441254313647
#>     Attrib V51    -0.07041692697606346
#>     Attrib V52    0.5069954107217757
#>     Attrib V53    0.7199035708123735
#>     Attrib V54    0.45421977568144145
#>     Attrib V55    -0.09650540624165946
#>     Attrib V56    0.325908279656211
#>     Attrib V57    -0.7886546005897558
#>     Attrib V58    0.7048130773065545
#>     Attrib V59    -0.07087409505099558
#>     Attrib V6    0.043679579474048484
#>     Attrib V60    0.3288639971362537
#>     Attrib V7    -0.3472633418017837
#>     Attrib V8    -0.300161928023529
#>     Attrib V9    0.4931547332662305
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.8136467728479222
#>     Attrib V1    0.11267512144464577
#>     Attrib V10    -0.760045532588922
#>     Attrib V11    -1.1770290670688672
#>     Attrib V12    -1.4835228487433783
#>     Attrib V13    -0.3738626992756714
#>     Attrib V14    0.3721745393015292
#>     Attrib V15    0.45220347442075653
#>     Attrib V16    1.0694971510918432
#>     Attrib V17    0.4682732810645725
#>     Attrib V18    -0.3541290994460871
#>     Attrib V19    0.1557764534874443
#>     Attrib V2    0.023528724183747803
#>     Attrib V20    0.8890886942375227
#>     Attrib V21    -0.033175950080154656
#>     Attrib V22    -0.382862179386041
#>     Attrib V23    -0.10015656972501943
#>     Attrib V24    -0.43766306222091256
#>     Attrib V25    -0.37554369393234477
#>     Attrib V26    -1.3129319224876768
#>     Attrib V27    -1.162136607958563
#>     Attrib V28    -0.9798735028919822
#>     Attrib V29    -0.7931457112501674
#>     Attrib V3    0.20990481558012744
#>     Attrib V30    -0.397247193268412
#>     Attrib V31    0.6193188131203957
#>     Attrib V32    0.478024353374905
#>     Attrib V33    0.7568060590826821
#>     Attrib V34    0.32192980284948275
#>     Attrib V35    -0.3627466936693356
#>     Attrib V36    0.6852203698994611
#>     Attrib V37    0.1352391977366441
#>     Attrib V38    0.37097756117980474
#>     Attrib V39    -0.08234179328870429
#>     Attrib V4    -0.17462775499534522
#>     Attrib V40    0.0545400034848836
#>     Attrib V41    -0.629026728852838
#>     Attrib V42    -0.04835797886108455
#>     Attrib V43    -0.3833549455200606
#>     Attrib V44    -1.0304642560916701
#>     Attrib V45    -0.40348619152674536
#>     Attrib V46    -0.7497476384458245
#>     Attrib V47    -0.7654260243705902
#>     Attrib V48    -0.914313458889368
#>     Attrib V49    -1.3224101619644575
#>     Attrib V5    -0.830241086560982
#>     Attrib V50    0.8637809748649629
#>     Attrib V51    -0.9763370075133553
#>     Attrib V52    -0.986140047955728
#>     Attrib V53    -1.2217047243862167
#>     Attrib V54    0.13248892411000826
#>     Attrib V55    0.6219013337867183
#>     Attrib V56    0.24988914749987567
#>     Attrib V57    0.8710231638090205
#>     Attrib V58    -0.16922872882887147
#>     Attrib V59    0.01984409149988108
#>     Attrib V6    -0.8918635348551168
#>     Attrib V60    -0.696780379906511
#>     Attrib V7    0.030232652558242486
#>     Attrib V8    0.43619466171327076
#>     Attrib V9    -0.5101874323744822
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.13769577816740758
#>     Attrib V1    0.2521744706421918
#>     Attrib V10    -0.32204338611994393
#>     Attrib V11    -0.13299045272027676
#>     Attrib V12    -0.19013259685757194
#>     Attrib V13    -0.3749860363145173
#>     Attrib V14    0.07886919221317797
#>     Attrib V15    0.3276412128249115
#>     Attrib V16    0.06772061474005595
#>     Attrib V17    0.17427425848020414
#>     Attrib V18    0.28014593018385964
#>     Attrib V19    -0.0019833643206571194
#>     Attrib V2    0.1451905036953525
#>     Attrib V20    0.0887438761870135
#>     Attrib V21    0.5904557427894572
#>     Attrib V22    0.4432943585488106
#>     Attrib V23    -0.17925459648918218
#>     Attrib V24    -0.20080482008809925
#>     Attrib V25    -0.5151625718417842
#>     Attrib V26    -0.5853044495753977
#>     Attrib V27    -0.2932643361014648
#>     Attrib V28    -0.3550445994567931
#>     Attrib V29    -0.2159038525098432
#>     Attrib V3    0.0014150422094444627
#>     Attrib V30    0.11213013952044032
#>     Attrib V31    -0.6161594426308138
#>     Attrib V32    -0.15172255884597868
#>     Attrib V33    0.2515066113874989
#>     Attrib V34    0.16862638946934602
#>     Attrib V35    -0.11411823722780727
#>     Attrib V36    -0.6605919624988241
#>     Attrib V37    -0.495460128926055
#>     Attrib V38    0.05021506217372949
#>     Attrib V39    0.5251854379354749
#>     Attrib V4    -0.141767435088658
#>     Attrib V40    0.012143386120478541
#>     Attrib V41    -0.24097251495510724
#>     Attrib V42    0.24547615137799986
#>     Attrib V43    0.369950559999595
#>     Attrib V44    0.47481996573080526
#>     Attrib V45    0.2775416314265927
#>     Attrib V46    0.01634637345989257
#>     Attrib V47    -0.06407538369502198
#>     Attrib V48    0.3112131385142529
#>     Attrib V49    0.36931078473485945
#>     Attrib V5    -0.08456066945204305
#>     Attrib V50    -0.6372951499762639
#>     Attrib V51    -0.12811464702060377
#>     Attrib V52    0.24565186207732206
#>     Attrib V53    0.5525557372397553
#>     Attrib V54    0.4374166687319937
#>     Attrib V55    0.11933553598588478
#>     Attrib V56    0.389087047529151
#>     Attrib V57    -0.2865062280271087
#>     Attrib V58    0.6885593243536813
#>     Attrib V59    0.20817569476319242
#>     Attrib V6    0.11993980441312607
#>     Attrib V60    0.3289697197271806
#>     Attrib V7    -0.18766883463593623
#>     Attrib V8    -0.18169488258707311
#>     Attrib V9    0.05910370607269572
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.0473443827617306
#>     Attrib V1    0.14113244368055153
#>     Attrib V10    -0.07607351348640666
#>     Attrib V11    -0.06209880735982398
#>     Attrib V12    -0.013945273690240536
#>     Attrib V13    -0.1174341065377379
#>     Attrib V14    -0.0040311826124183004
#>     Attrib V15    0.12285054723524526
#>     Attrib V16    -0.003329887944654896
#>     Attrib V17    0.08063221917421559
#>     Attrib V18    0.0928851278715504
#>     Attrib V19    -0.017947301029148474
#>     Attrib V2    0.0766868795739679
#>     Attrib V20    -0.029896266323907576
#>     Attrib V21    0.20295635749316054
#>     Attrib V22    0.10550796367266684
#>     Attrib V23    -0.10035042947936285
#>     Attrib V24    -0.13324973349588937
#>     Attrib V25    -0.19014603342449082
#>     Attrib V26    -0.1974052874297931
#>     Attrib V27    -0.17298897892463064
#>     Attrib V28    -0.19434227933861262
#>     Attrib V29    -0.23931057531688252
#>     Attrib V3    -0.011126488173923926
#>     Attrib V30    0.036503281447158045
#>     Attrib V31    -0.17417153728320336
#>     Attrib V32    -0.06351989996464628
#>     Attrib V33    0.06408275875039425
#>     Attrib V34    0.09438491508633443
#>     Attrib V35    0.052540266862145045
#>     Attrib V36    -0.2228022805107357
#>     Attrib V37    -0.15134758600779583
#>     Attrib V38    -0.004036982597954841
#>     Attrib V39    0.28233013475913477
#>     Attrib V4    0.030610329735363845
#>     Attrib V40    4.0744789006673425E-4
#>     Attrib V41    -0.1392146039780534
#>     Attrib V42    0.11754902881373437
#>     Attrib V43    0.08791942189443774
#>     Attrib V44    0.12837180212722069
#>     Attrib V45    0.08766358661652607
#>     Attrib V46    0.023144316850038423
#>     Attrib V47    -0.03727041584002569
#>     Attrib V48    0.16424373773132242
#>     Attrib V49    0.1326133123186893
#>     Attrib V5    -0.020525594670567044
#>     Attrib V50    -0.26389338319380146
#>     Attrib V51    -0.04889741079645071
#>     Attrib V52    0.06855330848608224
#>     Attrib V53    0.24831175173316633
#>     Attrib V54    0.1903354093273035
#>     Attrib V55    0.043103401417832234
#>     Attrib V56    0.2091123234649424
#>     Attrib V57    -0.12056508900154318
#>     Attrib V58    0.33232544616109627
#>     Attrib V59    0.13680168617573144
#>     Attrib V6    0.0018402208106869072
#>     Attrib V60    0.22209058937396184
#>     Attrib V7    -0.13994613253520602
#>     Attrib V8    -0.10889127344986044
#>     Attrib V9    0.022125714082996937
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.05860079456953455
#>     Attrib V1    0.3592049723346808
#>     Attrib V10    -0.3427046702722892
#>     Attrib V11    -0.23624653114484354
#>     Attrib V12    -0.346058850828663
#>     Attrib V13    -0.3450314191813503
#>     Attrib V14    0.12059504592715152
#>     Attrib V15    0.41248319494980495
#>     Attrib V16    0.15348331150056788
#>     Attrib V17    0.20071665360203386
#>     Attrib V18    0.2240646369644413
#>     Attrib V19    0.008165117373608975
#>     Attrib V2    0.23876033252853388
#>     Attrib V20    0.1488956661276347
#>     Attrib V21    0.510732146428703
#>     Attrib V22    0.38204302049939903
#>     Attrib V23    -0.13165081711682824
#>     Attrib V24    -0.25277595320750346
#>     Attrib V25    -0.6728817518794918
#>     Attrib V26    -0.656705720810286
#>     Attrib V27    -0.4101400160115523
#>     Attrib V28    -0.49024360602756345
#>     Attrib V29    -0.3735789802451601
#>     Attrib V3    -0.027627331036838947
#>     Attrib V30    0.07384298328332388
#>     Attrib V31    -0.533871501120677
#>     Attrib V32    -0.14769632255629528
#>     Attrib V33    0.3235477915379053
#>     Attrib V34    0.2521078582432151
#>     Attrib V35    -0.09557388761241134
#>     Attrib V36    -0.6453234363064712
#>     Attrib V37    -0.5091739342934194
#>     Attrib V38    0.0662178232341209
#>     Attrib V39    0.46066564332929827
#>     Attrib V4    -0.07915001435471868
#>     Attrib V40    0.01693321786849353
#>     Attrib V41    -0.2986645075123857
#>     Attrib V42    0.27058368801105953
#>     Attrib V43    0.33176525737517026
#>     Attrib V44    0.44668974815720613
#>     Attrib V45    0.15197768768941322
#>     Attrib V46    -0.026784789429414316
#>     Attrib V47    -0.12076192311356153
#>     Attrib V48    0.27031858336617837
#>     Attrib V49    0.3128211576999584
#>     Attrib V5    -0.09416660072053308
#>     Attrib V50    -0.580062725803138
#>     Attrib V51    -0.22282759773476374
#>     Attrib V52    0.12334246575034052
#>     Attrib V53    0.5104999702326908
#>     Attrib V54    0.4710054802964585
#>     Attrib V55    0.1662303313531691
#>     Attrib V56    0.37041707893959147
#>     Attrib V57    -0.20789221029208707
#>     Attrib V58    0.6877618456459869
#>     Attrib V59    0.27295282675475196
#>     Attrib V6    0.07298451020967577
#>     Attrib V60    0.32632113831598614
#>     Attrib V7    -0.16121485180495626
#>     Attrib V8    -0.18406495341389773
#>     Attrib V9    0.05906238143228794
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.17679715035402307
#>     Attrib V1    0.0714758945373695
#>     Attrib V10    -0.029529106912717828
#>     Attrib V11    0.0011257443416673339
#>     Attrib V12    -0.027177882234812958
#>     Attrib V13    -0.04449659541435134
#>     Attrib V14    0.09235316495122037
#>     Attrib V15    0.06574324543389858
#>     Attrib V16    0.07904218480252898
#>     Attrib V17    0.02448301159631193
#>     Attrib V18    0.07315444005306379
#>     Attrib V19    -0.02286842671884369
#>     Attrib V2    0.0452477974546535
#>     Attrib V20    0.025383263201945585
#>     Attrib V21    -0.010400140358835823
#>     Attrib V22    -0.052742780247753016
#>     Attrib V23    0.013756996847904754
#>     Attrib V24    -0.04820084842363979
#>     Attrib V25    -0.08526098764193063
#>     Attrib V26    -0.09218662679987011
#>     Attrib V27    -0.08901637065486595
#>     Attrib V28    -0.03948809390980362
#>     Attrib V29    -0.051746089756808084
#>     Attrib V3    0.10376748639854394
#>     Attrib V30    0.026350140126190084
#>     Attrib V31    0.007552970307851786
#>     Attrib V32    0.02154671408106312
#>     Attrib V33    0.07955973640469213
#>     Attrib V34    0.08809606510935239
#>     Attrib V35    0.12545692909570816
#>     Attrib V36    0.20791010497473802
#>     Attrib V37    0.12272987101970788
#>     Attrib V38    -0.0028707695117012283
#>     Attrib V39    0.03871256928166653
#>     Attrib V4    0.07470195495862486
#>     Attrib V40    0.009215554887611156
#>     Attrib V41    -0.01893313864200196
#>     Attrib V42    0.05741140904964407
#>     Attrib V43    -0.023648938629751363
#>     Attrib V44    0.022489117384494238
#>     Attrib V45    0.048082508300237956
#>     Attrib V46    0.01153835905627715
#>     Attrib V47    -0.003806756736282383
#>     Attrib V48    -0.04413472534981831
#>     Attrib V49    0.028515476679190258
#>     Attrib V5    0.09041110223407695
#>     Attrib V50    0.038338895105244165
#>     Attrib V51    0.058590572041365925
#>     Attrib V52    0.038489397728606205
#>     Attrib V53    0.020748638930264945
#>     Attrib V54    -0.04141912910825883
#>     Attrib V55    0.0323306367375707
#>     Attrib V56    0.06434942596202033
#>     Attrib V57    0.10000474711340433
#>     Attrib V58    0.10732834246643905
#>     Attrib V59    0.021491482560870016
#>     Attrib V6    0.05353324527848422
#>     Attrib V60    0.05444964999026989
#>     Attrib V7    0.04647910341591252
#>     Attrib V8    0.1174146765325612
#>     Attrib V9    0.07676466199478475
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
