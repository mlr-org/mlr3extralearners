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
#>     Threshold    -9.834448232631866E-4
#>     Node 2    2.846161884098307
#>     Node 3    1.7662065471221478
#>     Node 4    1.4000716050437862
#>     Node 5    -2.6516537894714434
#>     Node 6    1.594061418022193
#>     Node 7    3.575415563756228
#>     Node 8    1.228920928713008
#>     Node 9    3.266111951921779
#>     Node 10    -0.6713434875759697
#>     Node 11    1.3946816931303616
#>     Node 12    1.4312720251090887
#>     Node 13    0.8245886136891266
#>     Node 14    1.765913142219344
#>     Node 15    -2.6669239829588216
#>     Node 16    0.11281211260968257
#>     Node 17    1.3383880283550125
#>     Node 18    0.12212812556774744
#>     Node 19    1.4239652998483894
#>     Node 20    1.6690104157289614
#>     Node 21    -2.4308750942766095
#>     Node 22    0.7784217861493955
#>     Node 23    0.8313285813914338
#>     Node 24    -1.5123830009742927
#>     Node 25    4.156197987028436
#>     Node 26    0.40563398356661456
#>     Node 27    1.5015141199541044
#>     Node 28    -2.6329813182716317
#>     Node 29    1.2912424540274408
#>     Node 30    0.023197545353490508
#>     Node 31    1.3625121057383411
#>     Node 32    0.8860426514965669
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.033245350478345134
#>     Node 2    -2.899011142320373
#>     Node 3    -1.7777585796034863
#>     Node 4    -1.3554763768980986
#>     Node 5    2.6765492774693844
#>     Node 6    -1.5959791634399143
#>     Node 7    -3.552447635437044
#>     Node 8    -1.252600556161271
#>     Node 9    -3.252792050142538
#>     Node 10    0.6231408985893743
#>     Node 11    -1.367544696359479
#>     Node 12    -1.4987330546475974
#>     Node 13    -0.7728956442222702
#>     Node 14    -1.7144994916374747
#>     Node 15    2.6654541171588018
#>     Node 16    -0.12049835482024102
#>     Node 17    -1.3125578727441836
#>     Node 18    -0.07142511017426818
#>     Node 19    -1.4122587705730567
#>     Node 20    -1.6532696296807246
#>     Node 21    2.500696921926933
#>     Node 22    -0.8250378983397721
#>     Node 23    -0.8870507350682248
#>     Node 24    1.502002700839538
#>     Node 25    -4.1316762745746445
#>     Node 26    -0.4800245609600233
#>     Node 27    -1.518685651399106
#>     Node 28    2.5943850499712315
#>     Node 29    -1.3177339610052425
#>     Node 30    0.0641936342493651
#>     Node 31    -1.3301055771589503
#>     Node 32    -0.9000798027027012
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.41950178298010427
#>     Attrib V1    0.13445836101712053
#>     Attrib V10    0.7433781745179686
#>     Attrib V11    0.9606604044749787
#>     Attrib V12    0.9220742978529105
#>     Attrib V13    0.3542653609049161
#>     Attrib V14    -0.06036888225872466
#>     Attrib V15    -0.7374367798770619
#>     Attrib V16    -0.36499786953089924
#>     Attrib V17    0.029908105071833134
#>     Attrib V18    -0.03356793772595165
#>     Attrib V19    0.2605713601282935
#>     Attrib V2    0.03319440192272249
#>     Attrib V20    -0.5968979229753466
#>     Attrib V21    0.43216885273194333
#>     Attrib V22    1.0453724680254162
#>     Attrib V23    0.2648739331034916
#>     Attrib V24    0.18429191119484697
#>     Attrib V25    0.12395624756669472
#>     Attrib V26    0.4850533033418153
#>     Attrib V27    0.9158122950913948
#>     Attrib V28    1.7438451352462865
#>     Attrib V29    1.4591402046270217
#>     Attrib V3    0.011922818016540186
#>     Attrib V30    0.8894364707739832
#>     Attrib V31    -0.92885114490734
#>     Attrib V32    -0.06379093932372437
#>     Attrib V33    -0.37161349112851744
#>     Attrib V34    -0.5000745490255657
#>     Attrib V35    -0.4141519492600896
#>     Attrib V36    -0.820610464018907
#>     Attrib V37    -0.4084171613118877
#>     Attrib V38    0.09441309652784151
#>     Attrib V39    0.3524521289019665
#>     Attrib V4    0.47852759798091243
#>     Attrib V40    0.35767258618055764
#>     Attrib V41    0.8651293228517931
#>     Attrib V42    0.3423092618148288
#>     Attrib V43    0.38442658653857065
#>     Attrib V44    0.4327778839071839
#>     Attrib V45    0.42115220558854083
#>     Attrib V46    0.342729325065854
#>     Attrib V47    0.6187793334216758
#>     Attrib V48    0.6494403392712117
#>     Attrib V49    0.448750965655677
#>     Attrib V5    0.6868844963802153
#>     Attrib V50    -1.1303717872243841
#>     Attrib V51    0.3673133341605848
#>     Attrib V52    0.6802442090137775
#>     Attrib V53    0.8529010694367551
#>     Attrib V54    -0.31144250420213776
#>     Attrib V55    -0.9375768017891397
#>     Attrib V56    -0.45554144135758556
#>     Attrib V57    -0.06074737047044125
#>     Attrib V58    -0.25118393002175393
#>     Attrib V59    -0.09929326900973115
#>     Attrib V6    0.13354737962658378
#>     Attrib V60    0.1435672730742416
#>     Attrib V7    -0.3179732985280842
#>     Attrib V8    -0.1729846199406874
#>     Attrib V9    0.8714600429562006
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.4674520713026203
#>     Attrib V1    0.469549049166643
#>     Attrib V10    -0.02613617599743824
#>     Attrib V11    0.009024966101497328
#>     Attrib V12    0.18810933859295983
#>     Attrib V13    -0.03291057098100337
#>     Attrib V14    -0.2934108948332614
#>     Attrib V15    -0.04283215019516981
#>     Attrib V16    0.2186728112551991
#>     Attrib V17    0.13781173540942465
#>     Attrib V18    -0.13003311895622693
#>     Attrib V19    0.3045675771229213
#>     Attrib V2    0.0010493986570785426
#>     Attrib V20    0.08087431712702932
#>     Attrib V21    0.32733495211370783
#>     Attrib V22    0.5066161159171195
#>     Attrib V23    -0.006120675035856486
#>     Attrib V24    0.17560553425338982
#>     Attrib V25    -0.12241504762022758
#>     Attrib V26    -0.5732315331463785
#>     Attrib V27    -0.8151906613508031
#>     Attrib V28    -0.4958995561772684
#>     Attrib V29    -0.9399373179314909
#>     Attrib V3    -0.27584571513622036
#>     Attrib V30    -0.08822693685465144
#>     Attrib V31    -0.42925303860635033
#>     Attrib V32    0.5279372706591134
#>     Attrib V33    0.6412780776615561
#>     Attrib V34    0.08075213692609316
#>     Attrib V35    -0.22606106318657748
#>     Attrib V36    -0.937411737215401
#>     Attrib V37    -1.1047537271843584
#>     Attrib V38    0.1605322894349266
#>     Attrib V39    0.11761576987505823
#>     Attrib V4    -0.06095121225238417
#>     Attrib V40    -0.05811697370861374
#>     Attrib V41    0.2046413873822838
#>     Attrib V42    0.3184240743744645
#>     Attrib V43    0.4225582256817562
#>     Attrib V44    0.25657669573169234
#>     Attrib V45    0.2121648001576871
#>     Attrib V46    0.050305080768288234
#>     Attrib V47    0.1299603971118267
#>     Attrib V48    0.302185146576769
#>     Attrib V49    0.10777715997236723
#>     Attrib V5    -0.2342750005854762
#>     Attrib V50    -0.4428831795380774
#>     Attrib V51    -0.05951687916866645
#>     Attrib V52    -0.07025533834840647
#>     Attrib V53    0.19370778187407647
#>     Attrib V54    0.6736555670837839
#>     Attrib V55    -0.1512662909158274
#>     Attrib V56    0.3191929659394221
#>     Attrib V57    0.585797468774382
#>     Attrib V58    0.37210623449723124
#>     Attrib V59    0.44019306308068396
#>     Attrib V6    -0.5190622285191003
#>     Attrib V60    0.46993229682149606
#>     Attrib V7    0.01884278480220841
#>     Attrib V8    0.06149040881423227
#>     Attrib V9    0.4185220741199222
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.3938959304607513
#>     Attrib V1    0.22505833235601902
#>     Attrib V10    0.2814552897724211
#>     Attrib V11    0.3636928352422319
#>     Attrib V12    0.4277840406668489
#>     Attrib V13    0.0690410686048404
#>     Attrib V14    -0.1768156642157549
#>     Attrib V15    -0.2750752818946768
#>     Attrib V16    -0.05720590790995335
#>     Attrib V17    -0.08693287221670012
#>     Attrib V18    -0.25818963518447313
#>     Attrib V19    0.028843773653859907
#>     Attrib V2    -0.058544562070800325
#>     Attrib V20    -0.3546418754880397
#>     Attrib V21    0.13025587637730715
#>     Attrib V22    0.3045575094776497
#>     Attrib V23    -0.16491541450265315
#>     Attrib V24    0.011673334472921584
#>     Attrib V25    -0.0789667970814278
#>     Attrib V26    -0.12560408335553294
#>     Attrib V27    -0.1121940025814101
#>     Attrib V28    0.3937798113131877
#>     Attrib V29    0.09761657279988002
#>     Attrib V3    -0.18595755131656214
#>     Attrib V30    0.2184930314581303
#>     Attrib V31    -0.3780675113455401
#>     Attrib V32    0.3423071692613977
#>     Attrib V33    0.3203900717491837
#>     Attrib V34    -0.0048711395764176185
#>     Attrib V35    -0.25432898821500166
#>     Attrib V36    -0.8458226282455197
#>     Attrib V37    -0.8145899036374231
#>     Attrib V38    -0.11213064063689303
#>     Attrib V39    0.0858070513728255
#>     Attrib V4    0.050273234379646474
#>     Attrib V40    0.10532065619390917
#>     Attrib V41    0.3096652055004617
#>     Attrib V42    0.1553461586605365
#>     Attrib V43    0.12290172486471453
#>     Attrib V44    0.0296478528271763
#>     Attrib V45    0.18971904979764195
#>     Attrib V46    0.06434902340624027
#>     Attrib V47    0.17888548795084197
#>     Attrib V48    0.40605750087646
#>     Attrib V49    0.17642768329535605
#>     Attrib V5    0.05296916627774931
#>     Attrib V50    -0.6838762433338971
#>     Attrib V51    0.0484543732659392
#>     Attrib V52    0.1380854021914424
#>     Attrib V53    0.3792310001718366
#>     Attrib V54    0.03632469577307419
#>     Attrib V55    -0.38710975928767893
#>     Attrib V56    -0.07113361692406592
#>     Attrib V57    0.2877358465468734
#>     Attrib V58    0.10641499750603842
#>     Attrib V59    0.2043601017021971
#>     Attrib V6    -0.2541647747284152
#>     Attrib V60    0.30631861073939465
#>     Attrib V7    -0.10652434155127745
#>     Attrib V8    -0.04195305435990973
#>     Attrib V9    0.6085905507895957
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.6022905743743607
#>     Attrib V1    -0.5791385778362668
#>     Attrib V10    -0.07328902382901768
#>     Attrib V11    -0.33345744014092255
#>     Attrib V12    -0.45597849486086794
#>     Attrib V13    -0.27989155026234347
#>     Attrib V14    0.4295426046288092
#>     Attrib V15    0.22071594435420772
#>     Attrib V16    -0.29682537414411025
#>     Attrib V17    -0.41201982240804574
#>     Attrib V18    -0.12067580769023323
#>     Attrib V19    -0.6536514090890697
#>     Attrib V2    0.1895322745863708
#>     Attrib V20    -0.2941878595688623
#>     Attrib V21    -0.6445332287228931
#>     Attrib V22    -1.1820184240140337
#>     Attrib V23    -0.5609069660549207
#>     Attrib V24    -0.5250065671111808
#>     Attrib V25    0.15182688181358261
#>     Attrib V26    0.6865377380474118
#>     Attrib V27    1.0758342426784815
#>     Attrib V28    0.47112260099167325
#>     Attrib V29    1.109687471535806
#>     Attrib V3    0.5379141935966063
#>     Attrib V30    -0.00930997980472449
#>     Attrib V31    0.9176940315298724
#>     Attrib V32    -0.688692563027116
#>     Attrib V33    -0.9043473662651371
#>     Attrib V34    0.052320479537364455
#>     Attrib V35    0.4834905791225618
#>     Attrib V36    1.4742329560159138
#>     Attrib V37    1.8218055362537406
#>     Attrib V38    -0.4643272097423572
#>     Attrib V39    -0.2992905161468346
#>     Attrib V4    0.050583962892394516
#>     Attrib V40    0.3433743543104255
#>     Attrib V41    -0.1926816531707952
#>     Attrib V42    -0.8229233976470539
#>     Attrib V43    -1.1466736033327527
#>     Attrib V44    -0.7266706897873068
#>     Attrib V45    -0.6987889461318957
#>     Attrib V46    -0.36312823101913355
#>     Attrib V47    -0.4398354579281567
#>     Attrib V48    -0.5534583934111303
#>     Attrib V49    -0.3633998487932817
#>     Attrib V5    0.457327216025667
#>     Attrib V50    0.6286785315047753
#>     Attrib V51    -0.12011468766775679
#>     Attrib V52    0.07873827502004051
#>     Attrib V53    -0.142893994143682
#>     Attrib V54    -1.0067966311347307
#>     Attrib V55    0.5180014509733981
#>     Attrib V56    -0.5507384856124297
#>     Attrib V57    -0.5955223093866532
#>     Attrib V58    -0.6509508351520995
#>     Attrib V59    -0.2955417214941625
#>     Attrib V6    1.0197393486913673
#>     Attrib V60    -0.30580107010519114
#>     Attrib V7    0.10004603619510842
#>     Attrib V8    -0.2492377996789829
#>     Attrib V9    -0.7929017163047322
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.4476805943233291
#>     Attrib V1    0.46990042638415064
#>     Attrib V10    -0.15450768268286696
#>     Attrib V11    -0.027362421864820026
#>     Attrib V12    0.16727099539087284
#>     Attrib V13    -0.10712853500288384
#>     Attrib V14    -0.2804847264254677
#>     Attrib V15    -0.09305779772874455
#>     Attrib V16    0.24087744677443026
#>     Attrib V17    0.11145895150701063
#>     Attrib V18    -0.014749569663253106
#>     Attrib V19    0.2655929813051737
#>     Attrib V2    -0.006361544629268742
#>     Attrib V20    0.11206213752395307
#>     Attrib V21    0.37553002229191323
#>     Attrib V22    0.41763358543547363
#>     Attrib V23    0.026990171936327485
#>     Attrib V24    0.26985753014253067
#>     Attrib V25    -0.04064200848284469
#>     Attrib V26    -0.48430018446004647
#>     Attrib V27    -0.6683756079022524
#>     Attrib V28    -0.4616803659862745
#>     Attrib V29    -0.7736237598023983
#>     Attrib V3    -0.24384265622513604
#>     Attrib V30    -0.11358544002152349
#>     Attrib V31    -0.44612375693461526
#>     Attrib V32    0.3759815530422432
#>     Attrib V33    0.5326235470186095
#>     Attrib V34    0.1007751731144268
#>     Attrib V35    -0.1504192954081912
#>     Attrib V36    -0.7981876038909631
#>     Attrib V37    -0.9411523810486203
#>     Attrib V38    0.18389815843935192
#>     Attrib V39    0.1097644244029369
#>     Attrib V4    0.023468571140761
#>     Attrib V40    -0.0885866561191228
#>     Attrib V41    0.23405249407782516
#>     Attrib V42    0.32010013617395267
#>     Attrib V43    0.4204014397062266
#>     Attrib V44    0.2718014111474974
#>     Attrib V45    0.2447894997179532
#>     Attrib V46    0.10099939885876716
#>     Attrib V47    0.08801220829549564
#>     Attrib V48    0.2537206707168688
#>     Attrib V49    0.09803887904598287
#>     Attrib V5    -0.17586387759196795
#>     Attrib V50    -0.31382381975267304
#>     Attrib V51    -0.03371670872378877
#>     Attrib V52    -0.10858361092664165
#>     Attrib V53    0.2866064372084987
#>     Attrib V54    0.5785589810158426
#>     Attrib V55    -0.1740812776554096
#>     Attrib V56    0.283408408000932
#>     Attrib V57    0.6017775610992133
#>     Attrib V58    0.3075576808478482
#>     Attrib V59    0.5076466363044504
#>     Attrib V6    -0.358935044697977
#>     Attrib V60    0.5171359058791145
#>     Attrib V7    0.0778334918661978
#>     Attrib V8    0.017632967264943965
#>     Attrib V9    0.36398586818347345
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.46614320709423523
#>     Attrib V1    0.6904584669873621
#>     Attrib V10    1.2876742245484323
#>     Attrib V11    1.5866284324170152
#>     Attrib V12    1.0884052505108317
#>     Attrib V13    0.3260956482954185
#>     Attrib V14    -0.1145741883777679
#>     Attrib V15    -0.7969166533070768
#>     Attrib V16    -0.5051339061837379
#>     Attrib V17    -0.5429373561901706
#>     Attrib V18    -0.7178752389673144
#>     Attrib V19    -0.2781022999143154
#>     Attrib V2    0.376522406049119
#>     Attrib V20    -0.6781815303051909
#>     Attrib V21    0.46248026474851006
#>     Attrib V22    0.6495020666075475
#>     Attrib V23    -0.4781464238731886
#>     Attrib V24    -0.4919835589449615
#>     Attrib V25    -0.27244687274765766
#>     Attrib V26    0.572007808083406
#>     Attrib V27    1.0959278158085366
#>     Attrib V28    2.054789322194904
#>     Attrib V29    1.8284480213067769
#>     Attrib V3    0.09415755099129562
#>     Attrib V30    1.0388122368262156
#>     Attrib V31    -0.9370464940433865
#>     Attrib V32    -0.0665706785578873
#>     Attrib V33    -0.43072160723596037
#>     Attrib V34    -0.4468601579134665
#>     Attrib V35    -0.05455052135605211
#>     Attrib V36    -0.5350685217319731
#>     Attrib V37    0.10282490670319372
#>     Attrib V38    0.2406094570525807
#>     Attrib V39    0.38493714360852416
#>     Attrib V4    0.4696044476801413
#>     Attrib V40    0.3601674054885001
#>     Attrib V41    0.5345181825049957
#>     Attrib V42    -0.2794911339014301
#>     Attrib V43    -0.11832117702318191
#>     Attrib V44    0.25256407761536637
#>     Attrib V45    0.8173888085462274
#>     Attrib V46    0.5127896313426612
#>     Attrib V47    0.6358347366034344
#>     Attrib V48    0.6589730305653306
#>     Attrib V49    0.3749834279026535
#>     Attrib V5    0.4475038679089108
#>     Attrib V50    -1.3811994556674203
#>     Attrib V51    0.24020972561431325
#>     Attrib V52    0.7122457211692507
#>     Attrib V53    0.5793050398537348
#>     Attrib V54    -0.6038312305568966
#>     Attrib V55    -0.7195327571931607
#>     Attrib V56    -0.6742382590492063
#>     Attrib V57    -0.05986649405082919
#>     Attrib V58    -0.28038167753783644
#>     Attrib V59    -0.4480202135112854
#>     Attrib V6    -0.0026621047687066936
#>     Attrib V60    0.15591682032601548
#>     Attrib V7    -0.2541376457069258
#>     Attrib V8    0.05926785974570122
#>     Attrib V9    1.4210784904822362
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.43804831931762844
#>     Attrib V1    0.4059008946059965
#>     Attrib V10    0.058820960626702265
#>     Attrib V11    0.1996244142472107
#>     Attrib V12    0.18068848514844493
#>     Attrib V13    -0.09324513027567206
#>     Attrib V14    -0.24468184752492053
#>     Attrib V15    -0.19358585963120759
#>     Attrib V16    0.04110575863177418
#>     Attrib V17    -0.09988981816727358
#>     Attrib V18    -0.2561764779079906
#>     Attrib V19    0.05630927177230753
#>     Attrib V2    -0.005966014526284508
#>     Attrib V20    -0.12158006051619949
#>     Attrib V21    0.3068371360957453
#>     Attrib V22    0.3198983470587006
#>     Attrib V23    -0.1346262112402262
#>     Attrib V24    0.12117030835007976
#>     Attrib V25    -0.05614069584579087
#>     Attrib V26    -0.11851534396649203
#>     Attrib V27    -0.10133017846128012
#>     Attrib V28    0.17702418384211643
#>     Attrib V29    -0.08986538183330597
#>     Attrib V3    -0.22402794793397224
#>     Attrib V30    0.1533600589555308
#>     Attrib V31    -0.5060473353666457
#>     Attrib V32    0.08512321671511376
#>     Attrib V33    0.22823054547397872
#>     Attrib V34    -2.3366857226709208E-4
#>     Attrib V35    -0.02731903729126476
#>     Attrib V36    -0.3413079616507061
#>     Attrib V37    -0.4149573600620315
#>     Attrib V38    0.27385804484054543
#>     Attrib V39    0.13607500297396477
#>     Attrib V4    0.1329916031059826
#>     Attrib V40    -0.056947934670133614
#>     Attrib V41    0.13360697605796207
#>     Attrib V42    0.0011060047105286876
#>     Attrib V43    0.2605112308681214
#>     Attrib V44    0.4425778293641983
#>     Attrib V45    0.4076007562005675
#>     Attrib V46    0.1506859402234852
#>     Attrib V47    0.13142753072961696
#>     Attrib V48    0.26706720153897656
#>     Attrib V49    0.06512070529053572
#>     Attrib V5    -0.04992474211769749
#>     Attrib V50    -0.5285231169626439
#>     Attrib V51    -0.0649062067398939
#>     Attrib V52    -0.00486677913390946
#>     Attrib V53    0.2741718658279695
#>     Attrib V54    0.35731626767492036
#>     Attrib V55    -0.21630011988286996
#>     Attrib V56    -0.05503837633809795
#>     Attrib V57    0.4716998650788445
#>     Attrib V58    0.09234566159350256
#>     Attrib V59    0.38703167580072434
#>     Attrib V6    -0.28868105972344055
#>     Attrib V60    0.4740450098769979
#>     Attrib V7    0.01269197050584526
#>     Attrib V8    -0.07447238836579678
#>     Attrib V9    0.33461639653185354
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.32307857868823464
#>     Attrib V1    -0.14048414170215595
#>     Attrib V10    1.0570016968601756
#>     Attrib V11    1.339297830808595
#>     Attrib V12    1.185317525901081
#>     Attrib V13    0.6085593866982304
#>     Attrib V14    -0.11190247797966207
#>     Attrib V15    -0.845427460853244
#>     Attrib V16    -0.3323131834086568
#>     Attrib V17    0.14698898512901334
#>     Attrib V18    0.10422827329570242
#>     Attrib V19    0.3748236371762837
#>     Attrib V2    -0.01840837376222689
#>     Attrib V20    -0.6431942962022541
#>     Attrib V21    0.4592341240973764
#>     Attrib V22    1.216368519254577
#>     Attrib V23    0.45005585852386465
#>     Attrib V24    0.24978217125112281
#>     Attrib V25    0.3447331645058167
#>     Attrib V26    0.7689094426204159
#>     Attrib V27    0.9844911689477678
#>     Attrib V28    1.6994500000571369
#>     Attrib V29    1.400880312620347
#>     Attrib V3    -0.07480734756432805
#>     Attrib V30    0.8494925304256014
#>     Attrib V31    -0.8650468437885289
#>     Attrib V32    -0.030401275571010418
#>     Attrib V33    -0.3237611200376296
#>     Attrib V34    -0.3899660537776347
#>     Attrib V35    -0.33729838237375137
#>     Attrib V36    -0.8204573288739415
#>     Attrib V37    -0.524314327492581
#>     Attrib V38    -0.12138964038786006
#>     Attrib V39    0.25554243122782455
#>     Attrib V4    0.4268465951701473
#>     Attrib V40    0.3219243481829206
#>     Attrib V41    0.8271376552306313
#>     Attrib V42    0.175521877908084
#>     Attrib V43    0.3464318943984014
#>     Attrib V44    0.3049828710244295
#>     Attrib V45    0.4806772337802533
#>     Attrib V46    0.45833025189530935
#>     Attrib V47    0.7574911429653033
#>     Attrib V48    0.7712940393804316
#>     Attrib V49    0.6963196382586861
#>     Attrib V5    0.5102992246432728
#>     Attrib V50    -1.0381074616265393
#>     Attrib V51    0.4891656718719374
#>     Attrib V52    0.7884331136674523
#>     Attrib V53    0.848140866742185
#>     Attrib V54    -0.6141075890375467
#>     Attrib V55    -0.7749462354325053
#>     Attrib V56    -0.5622765696891028
#>     Attrib V57    -0.2946106574723529
#>     Attrib V58    -0.1675156179669085
#>     Attrib V59    -0.41796875228070446
#>     Attrib V6    0.1240174072191109
#>     Attrib V60    -0.17561498706009598
#>     Attrib V7    -0.3098591265829898
#>     Attrib V8    0.07779109487909668
#>     Attrib V9    1.151537326133696
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.28707254285424466
#>     Attrib V1    -0.07599948271856087
#>     Attrib V10    0.024428500656774082
#>     Attrib V11    -0.08045492332619363
#>     Attrib V12    -0.09978946331761082
#>     Attrib V13    0.01963088928493301
#>     Attrib V14    0.13482851724143982
#>     Attrib V15    0.07836799034047365
#>     Attrib V16    0.09055727625109265
#>     Attrib V17    0.09740466371231693
#>     Attrib V18    0.2213683329907632
#>     Attrib V19    -0.04224436889999448
#>     Attrib V2    0.10875527769114127
#>     Attrib V20    -0.00921615913475112
#>     Attrib V21    -0.1707071624570052
#>     Attrib V22    -0.2371126908392055
#>     Attrib V23    0.06990477551223226
#>     Attrib V24    -0.11994952318344822
#>     Attrib V25    -0.05798835464482365
#>     Attrib V26    -0.028661815040254435
#>     Attrib V27    -0.08841077836443585
#>     Attrib V28    -0.13556481440820095
#>     Attrib V29    0.1109964176655024
#>     Attrib V3    0.2153739801157686
#>     Attrib V30    0.22164180249098797
#>     Attrib V31    0.4834140594677222
#>     Attrib V32    0.12017095132003495
#>     Attrib V33    0.22898923202429391
#>     Attrib V34    0.3163174664669413
#>     Attrib V35    0.26997687233028284
#>     Attrib V36    0.43555139334768356
#>     Attrib V37    0.39717797342059924
#>     Attrib V38    -0.013559876084729042
#>     Attrib V39    0.04351689263578203
#>     Attrib V4    0.06644208814120788
#>     Attrib V40    0.31886127751146204
#>     Attrib V41    0.17212770373550587
#>     Attrib V42    0.05596915916605242
#>     Attrib V43    -0.04945619904659309
#>     Attrib V44    0.038207426243358676
#>     Attrib V45    -0.13268419067860748
#>     Attrib V46    -0.07514687091797347
#>     Attrib V47    -0.0985652227179861
#>     Attrib V48    -0.1700455161402273
#>     Attrib V49    -0.05233743932203633
#>     Attrib V5    0.15608697055867943
#>     Attrib V50    0.3315732901738377
#>     Attrib V51    0.05038088188772974
#>     Attrib V52    0.09091509832250519
#>     Attrib V53    0.09591858082917404
#>     Attrib V54    -0.05902031182719097
#>     Attrib V55    0.15682127945788246
#>     Attrib V56    0.08355488089746727
#>     Attrib V57    -0.0808538166184725
#>     Attrib V58    -0.02712737849393897
#>     Attrib V59    -0.09899721943097455
#>     Attrib V6    0.44737642530616956
#>     Attrib V60    -0.21296104133067606
#>     Attrib V7    0.250312082769505
#>     Attrib V8    0.16302528460082147
#>     Attrib V9    -0.09306423110810592
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.46128740384513184
#>     Attrib V1    0.3709147435276496
#>     Attrib V10    0.04783287364881933
#>     Attrib V11    0.24722991523609134
#>     Attrib V12    0.29319092002203934
#>     Attrib V13    -0.09733357578862639
#>     Attrib V14    -0.3198182941428988
#>     Attrib V15    -0.31253237355129104
#>     Attrib V16    -0.03687121667342198
#>     Attrib V17    0.03942803587982002
#>     Attrib V18    -0.11131968426477809
#>     Attrib V19    0.16771662473330598
#>     Attrib V2    -0.10327426427649328
#>     Attrib V20    -0.017922270085851368
#>     Attrib V21    0.386415811720913
#>     Attrib V22    0.5426259093448252
#>     Attrib V23    0.06222029898097418
#>     Attrib V24    0.22353470612124232
#>     Attrib V25    0.053019170250486004
#>     Attrib V26    -0.11795013727418131
#>     Attrib V27    -0.13238295928909924
#>     Attrib V28    0.2163353039947751
#>     Attrib V29    -0.17568123752209808
#>     Attrib V3    -0.33648577594442564
#>     Attrib V30    0.18608884944596343
#>     Attrib V31    -0.7274600983756077
#>     Attrib V32    0.035893520377799214
#>     Attrib V33    0.28277472161119477
#>     Attrib V34    0.07957871063116509
#>     Attrib V35    0.08978897272734394
#>     Attrib V36    -0.35902037925075636
#>     Attrib V37    -0.47904473627710165
#>     Attrib V38    0.4125866896187415
#>     Attrib V39    0.19072164566495234
#>     Attrib V4    0.03605794270845852
#>     Attrib V40    -0.1010837150919163
#>     Attrib V41    0.14613593980969622
#>     Attrib V42    0.20005768362205442
#>     Attrib V43    0.4862393120632883
#>     Attrib V44    0.6488183039823843
#>     Attrib V45    0.6089086223463654
#>     Attrib V46    0.19777389758803668
#>     Attrib V47    0.20794277716811105
#>     Attrib V48    0.2780282048260623
#>     Attrib V49    0.0707888407195618
#>     Attrib V5    -0.07068359095851
#>     Attrib V50    -0.5656931772005349
#>     Attrib V51    0.008097904541950748
#>     Attrib V52    -0.04615350328633917
#>     Attrib V53    0.24182147683920505
#>     Attrib V54    0.4037372919853469
#>     Attrib V55    -0.36368949292871067
#>     Attrib V56    -0.0072131018941926
#>     Attrib V57    0.378761357978482
#>     Attrib V58    0.09927974673768383
#>     Attrib V59    0.2598828682485697
#>     Attrib V6    -0.34150065715258204
#>     Attrib V60    0.40113601957580636
#>     Attrib V7    -0.09683264700093541
#>     Attrib V8    -0.053234269589323056
#>     Attrib V9    0.43078622759483265
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.6281603173667348
#>     Attrib V1    0.36363114353208514
#>     Attrib V10    0.15344869260306063
#>     Attrib V11    0.3475152149750054
#>     Attrib V12    0.27895579494399847
#>     Attrib V13    -0.06656917294327543
#>     Attrib V14    -0.24214285073751846
#>     Attrib V15    -0.2870387911242961
#>     Attrib V16    -0.00524638211417979
#>     Attrib V17    -0.12820339694778862
#>     Attrib V18    -0.309530235951113
#>     Attrib V19    0.05844282700194664
#>     Attrib V2    -0.013345429304439462
#>     Attrib V20    -0.270003760788718
#>     Attrib V21    0.22373738742585933
#>     Attrib V22    0.38129813502077664
#>     Attrib V23    -0.241176510539258
#>     Attrib V24    -0.06734512518580689
#>     Attrib V25    -0.21205471539155016
#>     Attrib V26    -0.20980895987634243
#>     Attrib V27    -0.040203566985679035
#>     Attrib V28    0.35205052485782845
#>     Attrib V29    0.0850175694716798
#>     Attrib V3    -0.32444450086915066
#>     Attrib V30    0.2503593338156949
#>     Attrib V31    -0.5750496763963264
#>     Attrib V32    0.18422252642103149
#>     Attrib V33    0.31333132076541015
#>     Attrib V34    -9.860355660972063E-4
#>     Attrib V35    -0.18499817746588537
#>     Attrib V36    -0.7136086329410749
#>     Attrib V37    -0.6803312756291057
#>     Attrib V38    0.15318318997395106
#>     Attrib V39    0.09241231110355487
#>     Attrib V4    0.07679991081612528
#>     Attrib V40    0.010770734621700306
#>     Attrib V41    0.21620701871204837
#>     Attrib V42    0.05483824409339012
#>     Attrib V43    0.24870084174064877
#>     Attrib V44    0.1886326028749818
#>     Attrib V45    0.31907010683161235
#>     Attrib V46    0.12396257526809197
#>     Attrib V47    0.09868176652813539
#>     Attrib V48    0.3142494374725179
#>     Attrib V49    0.026532978827283754
#>     Attrib V5    -0.05905575920522571
#>     Attrib V50    -0.8001924780273783
#>     Attrib V51    -0.06884441365071753
#>     Attrib V52    0.08806645498418122
#>     Attrib V53    0.3713148076777182
#>     Attrib V54    0.24025912498708554
#>     Attrib V55    -0.37529780569961574
#>     Attrib V56    -0.060680058723940736
#>     Attrib V57    0.3843356584568761
#>     Attrib V58    0.18328843722346422
#>     Attrib V59    0.3338006191633879
#>     Attrib V6    -0.3610300840811145
#>     Attrib V60    0.4096891169310963
#>     Attrib V7    -0.07719322824979558
#>     Attrib V8    -0.015236741910985587
#>     Attrib V9    0.5370015428993921
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.06230659298652519
#>     Attrib V1    0.28933219347896433
#>     Attrib V10    -0.05790591382664458
#>     Attrib V11    0.03398242707360113
#>     Attrib V12    0.08728600783425483
#>     Attrib V13    0.022040496049464123
#>     Attrib V14    -0.049530879720904794
#>     Attrib V15    -0.0461151271314792
#>     Attrib V16    0.032026866217428514
#>     Attrib V17    6.57225004539972E-5
#>     Attrib V18    -0.10486452439736337
#>     Attrib V19    0.034115655304152386
#>     Attrib V2    0.036864320202506795
#>     Attrib V20    -0.022878541277277738
#>     Attrib V21    0.12818962610540108
#>     Attrib V22    0.11920144806625929
#>     Attrib V23    -0.06764893328516895
#>     Attrib V24    0.07711872419199833
#>     Attrib V25    -5.074563794782249E-4
#>     Attrib V26    -0.2128058684225655
#>     Attrib V27    -0.17793930165532307
#>     Attrib V28    -0.09778266299900151
#>     Attrib V29    -0.2356633662186121
#>     Attrib V3    -0.005441328130262626
#>     Attrib V30    -0.022576501514773514
#>     Attrib V31    -0.3134929129041522
#>     Attrib V32    0.1300840056958191
#>     Attrib V33    0.19385442323821409
#>     Attrib V34    0.08184093991691811
#>     Attrib V35    -0.04258713947983067
#>     Attrib V36    -0.32144465659573085
#>     Attrib V37    -0.35331885806640667
#>     Attrib V38    0.1197435924006582
#>     Attrib V39    0.13354722855163656
#>     Attrib V4    0.12234505647719296
#>     Attrib V40    0.003304885772790263
#>     Attrib V41    0.10134315019755116
#>     Attrib V42    0.08838228493758464
#>     Attrib V43    0.1250489986990017
#>     Attrib V44    0.13827655461957353
#>     Attrib V45    0.14668194719420855
#>     Attrib V46    0.10221042044268344
#>     Attrib V47    0.10694249996158128
#>     Attrib V48    0.13965612352287357
#>     Attrib V49    0.07073054057316215
#>     Attrib V5    0.04421492872236517
#>     Attrib V50    -0.2764088648631053
#>     Attrib V51    -0.007208254985609516
#>     Attrib V52    -0.007948110991850072
#>     Attrib V53    0.20067661502284784
#>     Attrib V54    0.2844711237566861
#>     Attrib V55    -0.04160333340662777
#>     Attrib V56    0.08212477909168624
#>     Attrib V57    0.35215069205980953
#>     Attrib V58    0.15453404159897988
#>     Attrib V59    0.3630771125103699
#>     Attrib V6    -0.1407574119252426
#>     Attrib V60    0.40347175045338457
#>     Attrib V7    0.05789997607019366
#>     Attrib V8    -0.06950248950450291
#>     Attrib V9    0.17550465012943947
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.42602876675364654
#>     Attrib V1    0.5728131231849096
#>     Attrib V10    -0.08059007537409861
#>     Attrib V11    0.04996317529848037
#>     Attrib V12    0.15440039668134592
#>     Attrib V13    -0.11836919066643656
#>     Attrib V14    -0.31971327886550716
#>     Attrib V15    -0.005172339891299278
#>     Attrib V16    0.21157771367642667
#>     Attrib V17    0.11603514621379189
#>     Attrib V18    -0.11302026252737962
#>     Attrib V19    0.19093585311319217
#>     Attrib V2    0.012207764771163521
#>     Attrib V20    0.10493027754710182
#>     Attrib V21    0.33447274398792265
#>     Attrib V22    0.3875317314212504
#>     Attrib V23    -0.020240254008709317
#>     Attrib V24    0.15294595998726412
#>     Attrib V25    -0.12236130260730649
#>     Attrib V26    -0.5112402148963129
#>     Attrib V27    -0.8110427621567822
#>     Attrib V28    -0.6058358472886638
#>     Attrib V29    -0.9752163184288702
#>     Attrib V3    -0.337724270166144
#>     Attrib V30    -0.14975791788201678
#>     Attrib V31    -0.4082927863910199
#>     Attrib V32    0.41947424955727625
#>     Attrib V33    0.6304494326416562
#>     Attrib V34    0.1478413142693415
#>     Attrib V35    -0.0932835236864373
#>     Attrib V36    -0.7885491036699539
#>     Attrib V37    -0.9220698428657856
#>     Attrib V38    0.20390634406588926
#>     Attrib V39    0.08509701052792672
#>     Attrib V4    -0.06573114866797054
#>     Attrib V40    -0.12668328276271865
#>     Attrib V41    0.07082004751213457
#>     Attrib V42    0.16196321826139326
#>     Attrib V43    0.3668767777780767
#>     Attrib V44    0.3232443613551808
#>     Attrib V45    0.21727351612906043
#>     Attrib V46    0.08067801198760116
#>     Attrib V47    0.03750639163470539
#>     Attrib V48    0.29785418400251534
#>     Attrib V49    0.10977151407814727
#>     Attrib V5    -0.3017613522965033
#>     Attrib V50    -0.379823466844568
#>     Attrib V51    -0.08133588392233122
#>     Attrib V52    -0.1288984279000605
#>     Attrib V53    0.1584526623020186
#>     Attrib V54    0.7436676772025131
#>     Attrib V55    -0.041180850606451914
#>     Attrib V56    0.3226010438557036
#>     Attrib V57    0.605191037793195
#>     Attrib V58    0.3595518443021286
#>     Attrib V59    0.45441306022746153
#>     Attrib V6    -0.4872899489577682
#>     Attrib V60    0.5776031018146376
#>     Attrib V7    0.0939656389800672
#>     Attrib V8    -0.0063841654066810445
#>     Attrib V9    0.38510042903707287
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.5938824623438359
#>     Attrib V1    -0.45920725760284703
#>     Attrib V10    0.06685704300466538
#>     Attrib V11    -0.15912058612448216
#>     Attrib V12    -0.3716268075166712
#>     Attrib V13    -0.177645010955215
#>     Attrib V14    0.42418151067878795
#>     Attrib V15    0.21709376740525818
#>     Attrib V16    -0.2832149213950532
#>     Attrib V17    -0.39704599133474405
#>     Attrib V18    -0.0896227986204538
#>     Attrib V19    -0.5764447651433022
#>     Attrib V2    0.1595763976129178
#>     Attrib V20    -0.1243052900251174
#>     Attrib V21    -0.4878791365497289
#>     Attrib V22    -0.9274393733052313
#>     Attrib V23    -0.5105345141004509
#>     Attrib V24    -0.49628596943479103
#>     Attrib V25    0.14252964657628853
#>     Attrib V26    0.8286494950855307
#>     Attrib V27    1.0069621515784255
#>     Attrib V28    0.5935759206804392
#>     Attrib V29    1.2529978140213973
#>     Attrib V3    0.474265561023086
#>     Attrib V30    0.18109947078838387
#>     Attrib V31    0.7085871027083901
#>     Attrib V32    -0.7904597143499412
#>     Attrib V33    -0.8882474216593029
#>     Attrib V34    0.022386430668545447
#>     Attrib V35    0.5450599008665927
#>     Attrib V36    1.5861362776837882
#>     Attrib V37    1.9770577471934907
#>     Attrib V38    -0.26303300453405504
#>     Attrib V39    -0.190014757466119
#>     Attrib V4    0.06787747952311321
#>     Attrib V40    0.23027421453172756
#>     Attrib V41    -0.32751263039140965
#>     Attrib V42    -0.8892878670844381
#>     Attrib V43    -1.1194940091357186
#>     Attrib V44    -0.6150559368946288
#>     Attrib V45    -0.3465769453290879
#>     Attrib V46    -0.20686270430956627
#>     Attrib V47    -0.32696250248636627
#>     Attrib V48    -0.5074977682680825
#>     Attrib V49    -0.333603260698469
#>     Attrib V5    0.3083787701926348
#>     Attrib V50    0.529877979551652
#>     Attrib V51    -0.05281151677602534
#>     Attrib V52    0.04344049029984031
#>     Attrib V53    -0.1862850977498562
#>     Attrib V54    -1.0208161931148396
#>     Attrib V55    0.440281026223476
#>     Attrib V56    -0.5637693187389152
#>     Attrib V57    -0.7078281354434632
#>     Attrib V58    -0.6501814417004212
#>     Attrib V59    -0.4774139560253875
#>     Attrib V6    0.7538000776690749
#>     Attrib V60    -0.5204507606382057
#>     Attrib V7    0.014688587826466919
#>     Attrib V8    -0.07085552636669451
#>     Attrib V9    -0.5774576656227405
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.16424452504186157
#>     Attrib V1    0.056688759436182797
#>     Attrib V10    0.03246127172322172
#>     Attrib V11    0.00198682159717371
#>     Attrib V12    -0.003267444279558768
#>     Attrib V13    0.043621908550250624
#>     Attrib V14    0.022023355147435853
#>     Attrib V15    0.01630469636537147
#>     Attrib V16    0.07577847314207753
#>     Attrib V17    0.04492908180778917
#>     Attrib V18    0.010100941933760555
#>     Attrib V19    -0.02181947319160455
#>     Attrib V2    0.050847254994137586
#>     Attrib V20    -0.09946414440216657
#>     Attrib V21    -0.09831640797602016
#>     Attrib V22    -0.07567137764506006
#>     Attrib V23    -0.08436456090754234
#>     Attrib V24    0.013988014905508009
#>     Attrib V25    0.03182753755537608
#>     Attrib V26    -0.027032413023865946
#>     Attrib V27    -0.039139884014875934
#>     Attrib V28    0.015465310719608263
#>     Attrib V29    -0.026966612074166493
#>     Attrib V3    0.11036078459447479
#>     Attrib V30    -0.024860605132106476
#>     Attrib V31    -0.037160830565914425
#>     Attrib V32    0.03166777592918346
#>     Attrib V33    0.026938028188118007
#>     Attrib V34    0.06872458848378567
#>     Attrib V35    0.05232123097824625
#>     Attrib V36    0.04183902684970885
#>     Attrib V37    0.0683025567013838
#>     Attrib V38    0.060114614664923544
#>     Attrib V39    0.06527449841064108
#>     Attrib V4    0.10174728375748646
#>     Attrib V40    0.04125443284816996
#>     Attrib V41    0.07253174192638523
#>     Attrib V42    0.06946896328532706
#>     Attrib V43    0.026116790741368294
#>     Attrib V44    -1.0165489438129037E-5
#>     Attrib V45    0.061724934200615755
#>     Attrib V46    0.07765916765906762
#>     Attrib V47    0.06625372271411568
#>     Attrib V48    0.04022931070109866
#>     Attrib V49    0.018969586056509186
#>     Attrib V5    0.08072399904260434
#>     Attrib V50    0.08952140282682888
#>     Attrib V51    0.10933849112686074
#>     Attrib V52    0.08920803745814286
#>     Attrib V53    0.125379897502757
#>     Attrib V54    0.014717928370731609
#>     Attrib V55    0.09195597695987111
#>     Attrib V56    0.080824753315023
#>     Attrib V57    0.12951044782326332
#>     Attrib V58    0.09160790986090644
#>     Attrib V59    0.05029919153177458
#>     Attrib V6    0.06163763484792011
#>     Attrib V60    0.10304839168838491
#>     Attrib V7    0.039379837300945346
#>     Attrib V8    0.0019450290214785158
#>     Attrib V9    0.07665821808286444
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.3304445267964313
#>     Attrib V1    0.4649716637442573
#>     Attrib V10    -0.07537271297972571
#>     Attrib V11    0.01961939480450644
#>     Attrib V12    0.05261094825546882
#>     Attrib V13    -0.12146856111572696
#>     Attrib V14    -0.19410022593778675
#>     Attrib V15    0.0413515209885505
#>     Attrib V16    0.18371487252931482
#>     Attrib V17    0.06775999277962413
#>     Attrib V18    -0.09349542671660732
#>     Attrib V19    0.1783711866778314
#>     Attrib V2    0.07910139517975574
#>     Attrib V20    0.07046976832692468
#>     Attrib V21    0.30353947356335237
#>     Attrib V22    0.3851755141007453
#>     Attrib V23    -0.06763830377172873
#>     Attrib V24    0.164623934100374
#>     Attrib V25    -0.12622042373984343
#>     Attrib V26    -0.42345423093503537
#>     Attrib V27    -0.5647110329057227
#>     Attrib V28    -0.38033289435362705
#>     Attrib V29    -0.6542638821883724
#>     Attrib V3    -0.21146318239648987
#>     Attrib V30    -0.08045478947620935
#>     Attrib V31    -0.39806682627201945
#>     Attrib V32    0.1817247000078642
#>     Attrib V33    0.4377552227233742
#>     Attrib V34    0.05776490111262859
#>     Attrib V35    -0.036842807955073845
#>     Attrib V36    -0.532265475364566
#>     Attrib V37    -0.6560898178542467
#>     Attrib V38    0.2727280309877254
#>     Attrib V39    0.1291651654662002
#>     Attrib V4    0.03213591573853695
#>     Attrib V40    -0.12562220122152246
#>     Attrib V41    0.10187224585767547
#>     Attrib V42    0.14053689094316968
#>     Attrib V43    0.3711255997559495
#>     Attrib V44    0.32532393507062457
#>     Attrib V45    0.30972012871630256
#>     Attrib V46    0.05229385491709745
#>     Attrib V47    0.004785506944891151
#>     Attrib V48    0.22422809860273468
#>     Attrib V49    0.004159800809966087
#>     Attrib V5    -0.1496216416310466
#>     Attrib V50    -0.3284819119889134
#>     Attrib V51    -0.04497270093061745
#>     Attrib V52    -0.10356383339276959
#>     Attrib V53    0.1570641732893433
#>     Attrib V54    0.5432059697391746
#>     Attrib V55    -0.014615324462094523
#>     Attrib V56    0.21362867237477376
#>     Attrib V57    0.5496606971487866
#>     Attrib V58    0.19868901009615994
#>     Attrib V59    0.3786486392688178
#>     Attrib V6    -0.3465828868471856
#>     Attrib V60    0.4694397885179383
#>     Attrib V7    0.01955340732010681
#>     Attrib V8    0.033016862883195344
#>     Attrib V9    0.27329812011866145
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1984898633610815
#>     Attrib V1    0.059179070078016725
#>     Attrib V10    0.03135013197206799
#>     Attrib V11    0.005051865603631753
#>     Attrib V12    -0.030405162733260112
#>     Attrib V13    0.005266954610238688
#>     Attrib V14    0.056630349039073755
#>     Attrib V15    0.01559894893088004
#>     Attrib V16    0.032165529930519667
#>     Attrib V17    -0.03257642750125965
#>     Attrib V18    0.008212907382210522
#>     Attrib V19    -0.09300448414835494
#>     Attrib V2    0.11099575320372354
#>     Attrib V20    -0.06179957714469966
#>     Attrib V21    -0.049657727858518186
#>     Attrib V22    -0.07536321348882133
#>     Attrib V23    -0.04739007669530667
#>     Attrib V24    -0.03673613479028276
#>     Attrib V25    0.025576639243202914
#>     Attrib V26    0.0233758789324458
#>     Attrib V27    -3.5624721187808866E-4
#>     Attrib V28    -0.003407208301780865
#>     Attrib V29    -0.0259949898437372
#>     Attrib V3    0.1521937994290798
#>     Attrib V30    -0.023129165731169694
#>     Attrib V31    -0.016013266661550306
#>     Attrib V32    0.0091373792485623
#>     Attrib V33    0.04368809716887684
#>     Attrib V34    0.07911487567479178
#>     Attrib V35    0.058780404560624375
#>     Attrib V36    0.13848404266589406
#>     Attrib V37    0.05081370142136881
#>     Attrib V38    0.04290965366347709
#>     Attrib V39    0.10022224886688935
#>     Attrib V4    0.06652945391312154
#>     Attrib V40    0.05921821923183851
#>     Attrib V41    0.024246547569835682
#>     Attrib V42    0.03414181364519151
#>     Attrib V43    0.03886580958495656
#>     Attrib V44    0.0740673932488041
#>     Attrib V45    0.00863136120032949
#>     Attrib V46    0.041059247954007554
#>     Attrib V47    0.10145370964081164
#>     Attrib V48    0.05668273715666528
#>     Attrib V49    0.07301565177454625
#>     Attrib V5    0.085994285832501
#>     Attrib V50    0.019451956574967594
#>     Attrib V51    0.11485696861790344
#>     Attrib V52    0.049139819752684694
#>     Attrib V53    0.09055868090831418
#>     Attrib V54    -0.004640597684439379
#>     Attrib V55    0.10791309473413131
#>     Attrib V56    0.0949255280647159
#>     Attrib V57    0.0630231459244573
#>     Attrib V58    0.052839360779002476
#>     Attrib V59    0.11220071181438065
#>     Attrib V6    0.025714304138192128
#>     Attrib V60    0.12301633157195699
#>     Attrib V7    0.0807460829111788
#>     Attrib V8    0.07106218631517723
#>     Attrib V9    0.04468463467004468
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.49405684020019053
#>     Attrib V1    0.4563618296802753
#>     Attrib V10    0.03810718606819037
#>     Attrib V11    0.11492604402094755
#>     Attrib V12    0.2513479678390992
#>     Attrib V13    -0.0706330790666334
#>     Attrib V14    -0.18132965868699702
#>     Attrib V15    -0.03913878001095795
#>     Attrib V16    0.08420615730041947
#>     Attrib V17    -0.030320775770935664
#>     Attrib V18    -0.21674057372126934
#>     Attrib V19    0.07238434214076754
#>     Attrib V2    0.025176081031917243
#>     Attrib V20    -0.09362030801034876
#>     Attrib V21    0.22717576387138602
#>     Attrib V22    0.27484199554330174
#>     Attrib V23    -0.2842392492811804
#>     Attrib V24    -0.025275007818437282
#>     Attrib V25    -0.2015151355395837
#>     Attrib V26    -0.406731148057986
#>     Attrib V27    -0.424639180496015
#>     Attrib V28    -0.13397952585190542
#>     Attrib V29    -0.4243513616849747
#>     Attrib V3    -0.26855178000163654
#>     Attrib V30    0.003976862021312352
#>     Attrib V31    -0.3831720377945584
#>     Attrib V32    0.2762740148293703
#>     Attrib V33    0.39513743180243255
#>     Attrib V34    0.02389249696615001
#>     Attrib V35    -0.14026175013290884
#>     Attrib V36    -0.7104963225145682
#>     Attrib V37    -0.7811585344856957
#>     Attrib V38    0.11055297668533441
#>     Attrib V39    0.03166562057471647
#>     Attrib V4    0.06218089948508555
#>     Attrib V40    -0.06999754081823767
#>     Attrib V41    0.07963535988306326
#>     Attrib V42    0.07507580694367906
#>     Attrib V43    0.14517121102250133
#>     Attrib V44    0.12496096795035609
#>     Attrib V45    0.28775282818819664
#>     Attrib V46    0.05115942747288171
#>     Attrib V47    0.0015171915775274694
#>     Attrib V48    0.25969677712052264
#>     Attrib V49    0.1136668046025448
#>     Attrib V5    -0.10124344477046428
#>     Attrib V50    -0.5730737002006094
#>     Attrib V51    -0.08216718929672477
#>     Attrib V52    0.01095721240604528
#>     Attrib V53    0.27696956674402223
#>     Attrib V54    0.5159810730961288
#>     Attrib V55    -0.07570575956772563
#>     Attrib V56    0.05713390104745153
#>     Attrib V57    0.4420645681036323
#>     Attrib V58    0.3491122352630715
#>     Attrib V59    0.3777309800844852
#>     Attrib V6    -0.3366190758336923
#>     Attrib V60    0.4925129406134334
#>     Attrib V7    0.07229888083967405
#>     Attrib V8    -0.015079616025320881
#>     Attrib V9    0.40373808255860244
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.44210428474583746
#>     Attrib V1    0.6350156941637586
#>     Attrib V10    0.16474172426886777
#>     Attrib V11    0.348759660057367
#>     Attrib V12    0.3047029220104886
#>     Attrib V13    -0.10961758213939896
#>     Attrib V14    -0.15124862289316157
#>     Attrib V15    -0.3078077820191408
#>     Attrib V16    -0.2086580699947188
#>     Attrib V17    -0.1541031837714205
#>     Attrib V18    -0.23649684278136932
#>     Attrib V19    0.06864867322568363
#>     Attrib V2    0.004624297741577525
#>     Attrib V20    -0.12037571314029066
#>     Attrib V21    0.4827197904992676
#>     Attrib V22    0.48496107517586623
#>     Attrib V23    -0.11419567828899713
#>     Attrib V24    0.0722485881488141
#>     Attrib V25    -0.06899952403289952
#>     Attrib V26    0.12286364556353636
#>     Attrib V27    0.3839019441714072
#>     Attrib V28    0.6508000882619552
#>     Attrib V29    0.38681295358083845
#>     Attrib V3    -0.2096600056690682
#>     Attrib V30    0.4004950728634108
#>     Attrib V31    -0.7866221656485841
#>     Attrib V32    -0.2963696093611151
#>     Attrib V33    -0.07233800311391275
#>     Attrib V34    -0.14993154219501548
#>     Attrib V35    0.20888550171767958
#>     Attrib V36    0.0498341675871762
#>     Attrib V37    0.09583390409806779
#>     Attrib V38    0.619560300288229
#>     Attrib V39    0.3465000312989426
#>     Attrib V4    0.2760174383505493
#>     Attrib V40    -0.01312571820380807
#>     Attrib V41    0.2349651845020016
#>     Attrib V42    0.08303321361060777
#>     Attrib V43    0.5177658489523776
#>     Attrib V44    0.9018227410006964
#>     Attrib V45    0.7241191147875183
#>     Attrib V46    0.23044607366044223
#>     Attrib V47    0.18019380912876892
#>     Attrib V48    0.2795871763108986
#>     Attrib V49    0.07733446591769348
#>     Attrib V5    0.18837853322145648
#>     Attrib V50    -0.6117620968497959
#>     Attrib V51    0.08093784919931611
#>     Attrib V52    0.07264674119034638
#>     Attrib V53    0.2756705175020307
#>     Attrib V54    0.3602509011858703
#>     Attrib V55    -0.3377326610496172
#>     Attrib V56    -0.07297157003697882
#>     Attrib V57    0.38878871679972304
#>     Attrib V58    0.08419278429170622
#>     Attrib V59    0.48600285465880677
#>     Attrib V6    -0.19572936408830446
#>     Attrib V60    0.6269151365830764
#>     Attrib V7    0.0282147732158715
#>     Attrib V8    -0.20735322036078954
#>     Attrib V9    0.41680578837596255
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3540835248124256
#>     Attrib V1    -0.3729752268741199
#>     Attrib V10    0.03243214344290508
#>     Attrib V11    -0.22980833863339584
#>     Attrib V12    -0.4204904375471248
#>     Attrib V13    -0.2518411037420077
#>     Attrib V14    0.35422940456673474
#>     Attrib V15    0.17596724904281216
#>     Attrib V16    -0.2719864112154254
#>     Attrib V17    -0.4413991403827517
#>     Attrib V18    -0.17544973869886046
#>     Attrib V19    -0.657140325507126
#>     Attrib V2    0.0983025103535332
#>     Attrib V20    -0.18108951095064393
#>     Attrib V21    -0.39650958946855275
#>     Attrib V22    -0.9939928389631457
#>     Attrib V23    -0.6213883125437734
#>     Attrib V24    -0.5102305610859769
#>     Attrib V25    0.08664781529470872
#>     Attrib V26    0.7057647324649835
#>     Attrib V27    0.9968272358040599
#>     Attrib V28    0.554778557056018
#>     Attrib V29    1.1260126661800658
#>     Attrib V3    0.3334366466224924
#>     Attrib V30    0.1455798202313193
#>     Attrib V31    0.6841044110795244
#>     Attrib V32    -0.788745959004545
#>     Attrib V33    -0.8437074556173232
#>     Attrib V34    0.03608793601386785
#>     Attrib V35    0.5423477591939448
#>     Attrib V36    1.4884243837210316
#>     Attrib V37    1.867947775146415
#>     Attrib V38    -0.23403243919509348
#>     Attrib V39    -0.15636454062217653
#>     Attrib V4    0.057076524558235565
#>     Attrib V40    0.286701678488949
#>     Attrib V41    -0.1983862479368528
#>     Attrib V42    -0.8740302468882833
#>     Attrib V43    -1.0386704246889127
#>     Attrib V44    -0.5344925070776249
#>     Attrib V45    -0.40620104080416325
#>     Attrib V46    -0.27773248054800176
#>     Attrib V47    -0.3957136474668176
#>     Attrib V48    -0.45861676823122227
#>     Attrib V49    -0.35134181454995345
#>     Attrib V5    0.2847353352423862
#>     Attrib V50    0.4606321810398465
#>     Attrib V51    -0.12390363255493808
#>     Attrib V52    -0.0018444739409193454
#>     Attrib V53    -0.22535775321812593
#>     Attrib V54    -0.9143640496932705
#>     Attrib V55    0.3778591031434636
#>     Attrib V56    -0.5864706003188753
#>     Attrib V57    -0.48069055429933366
#>     Attrib V58    -0.6146271943764294
#>     Attrib V59    -0.27390317956905724
#>     Attrib V6    0.73469564015547
#>     Attrib V60    -0.2745482112334393
#>     Attrib V7    0.13903478278868808
#>     Attrib V8    -0.18425438053891272
#>     Attrib V9    -0.5734350631040147
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.0664046502021499
#>     Attrib V1    0.36303231662145263
#>     Attrib V10    0.014250355164333258
#>     Attrib V11    0.048420805401408445
#>     Attrib V12    0.05973101067215962
#>     Attrib V13    -0.06746357408361914
#>     Attrib V14    3.558917435712985E-4
#>     Attrib V15    0.014586563556003835
#>     Attrib V16    0.14550289913021675
#>     Attrib V17    -0.01684036086149213
#>     Attrib V18    -0.14121370407943806
#>     Attrib V19    -0.043117414650978285
#>     Attrib V2    0.09892927655164148
#>     Attrib V20    -0.03928956315131231
#>     Attrib V21    0.052987566150436274
#>     Attrib V22    -0.004124579642919074
#>     Attrib V23    -0.23834900338915285
#>     Attrib V24    0.007619862614276123
#>     Attrib V25    -0.13363142745809237
#>     Attrib V26    -0.27336892532885965
#>     Attrib V27    -0.29802770168345405
#>     Attrib V28    -0.2126912722731755
#>     Attrib V29    -0.27748073692274217
#>     Attrib V3    -0.05068503175769547
#>     Attrib V30    -0.0729860921463471
#>     Attrib V31    -0.16753523089857797
#>     Attrib V32    0.10099132441396291
#>     Attrib V33    0.1398954637753455
#>     Attrib V34    0.03781330293259025
#>     Attrib V35    -0.0045459256070588105
#>     Attrib V36    -0.2600587461483476
#>     Attrib V37    -0.30557446122600085
#>     Attrib V38    0.09032733082822897
#>     Attrib V39    0.03742495667309525
#>     Attrib V4    0.12024938012957774
#>     Attrib V40    -0.020516717749351075
#>     Attrib V41    -0.025714700677648764
#>     Attrib V42    -0.02104310612090231
#>     Attrib V43    0.13962918456767084
#>     Attrib V44    0.08588331310521578
#>     Attrib V45    0.09178576131513362
#>     Attrib V46    0.08368998909786882
#>     Attrib V47    1.4634114618350963E-4
#>     Attrib V48    0.14886330496022532
#>     Attrib V49    0.024620882960209096
#>     Attrib V5    0.03157070397306576
#>     Attrib V50    -0.1842545901838214
#>     Attrib V51    0.0047092445032193226
#>     Attrib V52    0.01710126871797332
#>     Attrib V53    0.1540950749357631
#>     Attrib V54    0.3692134505369972
#>     Attrib V55    0.11534604414585944
#>     Attrib V56    0.1496768629315463
#>     Attrib V57    0.36716397361922637
#>     Attrib V58    0.2614496646463591
#>     Attrib V59    0.3205761372953202
#>     Attrib V6    -0.12115186369770356
#>     Attrib V60    0.4023733992853491
#>     Attrib V7    0.0858480998553493
#>     Attrib V8    -0.0330174066232949
#>     Attrib V9    0.1967267651186999
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.148202216581409
#>     Attrib V1    0.3369154230424898
#>     Attrib V10    -0.12663698482880614
#>     Attrib V11    0.03633942778733894
#>     Attrib V12    0.12017970123789595
#>     Attrib V13    -0.004430310671321422
#>     Attrib V14    -0.05937470637257767
#>     Attrib V15    -0.013523261763736569
#>     Attrib V16    0.050447202998163444
#>     Attrib V17    0.06590885149433755
#>     Attrib V18    -0.06545598948382272
#>     Attrib V19    0.09254632326953205
#>     Attrib V2    0.02396315636644097
#>     Attrib V20    -0.020393014369390935
#>     Attrib V21    0.11015858736506975
#>     Attrib V22    0.16839455525345276
#>     Attrib V23    -0.030215859188352772
#>     Attrib V24    0.08082706738921248
#>     Attrib V25    -0.03797232533899971
#>     Attrib V26    -0.2015635727228221
#>     Attrib V27    -0.33921588221157617
#>     Attrib V28    -0.227102811589494
#>     Attrib V29    -0.4182821904808879
#>     Attrib V3    -0.048319126355342495
#>     Attrib V30    -0.10433938780252612
#>     Attrib V31    -0.3164827383477758
#>     Attrib V32    0.10887506142494668
#>     Attrib V33    0.23841919687553026
#>     Attrib V34    0.0660856714566296
#>     Attrib V35    0.06294956983487116
#>     Attrib V36    -0.26668138100083666
#>     Attrib V37    -0.31591717156947413
#>     Attrib V38    0.183968472020703
#>     Attrib V39    0.09848573690827332
#>     Attrib V4    0.135623944670958
#>     Attrib V40    -0.08801273780524528
#>     Attrib V41    0.04392886508753743
#>     Attrib V42    0.06497233841702878
#>     Attrib V43    0.25367426574596036
#>     Attrib V44    0.20249031752661534
#>     Attrib V45    0.23263670316720253
#>     Attrib V46    0.07728943177222936
#>     Attrib V47    0.08056968671823754
#>     Attrib V48    0.0789633895770163
#>     Attrib V49    0.020866755555876856
#>     Attrib V5    -0.01909886523570056
#>     Attrib V50    -0.24905810535260167
#>     Attrib V51    -0.02447696186473508
#>     Attrib V52    0.03755565095760901
#>     Attrib V53    0.21261603181424327
#>     Attrib V54    0.38631014128033014
#>     Attrib V55    0.011650366674325247
#>     Attrib V56    0.17490907820649831
#>     Attrib V57    0.3128553446959022
#>     Attrib V58    0.19022879428016679
#>     Attrib V59    0.371991418523833
#>     Attrib V6    -0.19017667400083293
#>     Attrib V60    0.34388734647927177
#>     Attrib V7    0.04284767859447534
#>     Attrib V8    -0.07504671017110238
#>     Attrib V9    0.14476807174345896
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.37665327886897043
#>     Attrib V1    -0.4201806464488862
#>     Attrib V10    -0.14631260844819358
#>     Attrib V11    -0.28037946758800647
#>     Attrib V12    -0.3549249547001269
#>     Attrib V13    -0.16632346417897526
#>     Attrib V14    0.2755886127196869
#>     Attrib V15    0.22287475648945104
#>     Attrib V16    -0.13632167227724015
#>     Attrib V17    -0.1662434757611436
#>     Attrib V18    -0.050110376413457676
#>     Attrib V19    -0.36676430221266226
#>     Attrib V2    0.10333767695677772
#>     Attrib V20    -0.04751897129914918
#>     Attrib V21    -0.39457174121608896
#>     Attrib V22    -0.7712786110956567
#>     Attrib V23    -0.24358834496869597
#>     Attrib V24    -0.27486613285481815
#>     Attrib V25    0.13525433097468612
#>     Attrib V26    0.5302479555460392
#>     Attrib V27    0.6862581599434123
#>     Attrib V28    0.39736901927115864
#>     Attrib V29    0.7414958025445805
#>     Attrib V3    0.3348657625927663
#>     Attrib V30    0.05275505560232782
#>     Attrib V31    0.5701926242563273
#>     Attrib V32    -0.45995463477273224
#>     Attrib V33    -0.6344069892833277
#>     Attrib V34    0.009156251251888192
#>     Attrib V35    0.2961438077896731
#>     Attrib V36    0.9598537393671095
#>     Attrib V37    1.1245856866319142
#>     Attrib V38    -0.22663994787497782
#>     Attrib V39    -0.1551405511419339
#>     Attrib V4    0.00902184736911689
#>     Attrib V40    0.2209366132454447
#>     Attrib V41    -0.1555929406393711
#>     Attrib V42    -0.5237313319878455
#>     Attrib V43    -0.6043310757899673
#>     Attrib V44    -0.3460330822526111
#>     Attrib V45    -0.37278429615162584
#>     Attrib V46    -0.1772951124921607
#>     Attrib V47    -0.26044255188325277
#>     Attrib V48    -0.4091645174851557
#>     Attrib V49    -0.2356736444489936
#>     Attrib V5    0.12303971471067233
#>     Attrib V50    0.5197312732730173
#>     Attrib V51    -0.08897818361865789
#>     Attrib V52    0.09237234262405267
#>     Attrib V53    -0.12667887908490597
#>     Attrib V54    -0.5868584416070731
#>     Attrib V55    0.3992696316985494
#>     Attrib V56    -0.21716515930274646
#>     Attrib V57    -0.33630624545549
#>     Attrib V58    -0.3677624512534191
#>     Attrib V59    -0.28003622352121377
#>     Attrib V6    0.583726130660994
#>     Attrib V60    -0.4215820686054066
#>     Attrib V7    0.03820397056978394
#>     Attrib V8    -0.09721527770544836
#>     Attrib V9    -0.496806052243577
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.4782594370082972
#>     Attrib V1    -0.12033279930122284
#>     Attrib V10    1.1650217810101797
#>     Attrib V11    1.6227501677638627
#>     Attrib V12    1.5499275196619218
#>     Attrib V13    0.7369748668912812
#>     Attrib V14    0.02847598488975261
#>     Attrib V15    -1.0040590218837455
#>     Attrib V16    -0.5434251492220022
#>     Attrib V17    0.02625027537337047
#>     Attrib V18    -0.1116018618101429
#>     Attrib V19    0.1268362841588318
#>     Attrib V2    0.13851303826648415
#>     Attrib V20    -0.898328648429793
#>     Attrib V21    0.42220224867497114
#>     Attrib V22    1.1803070456082119
#>     Attrib V23    0.22733461193015397
#>     Attrib V24    -0.028594276887232425
#>     Attrib V25    0.051268182041907744
#>     Attrib V26    0.7693964171700244
#>     Attrib V27    1.3359810769095788
#>     Attrib V28    2.2137236336231516
#>     Attrib V29    1.978139407393348
#>     Attrib V3    0.2063572947197048
#>     Attrib V30    0.9876049552932609
#>     Attrib V31    -1.1282360429479315
#>     Attrib V32    -0.10829697728240094
#>     Attrib V33    -0.6345500140367399
#>     Attrib V34    -0.5893369780805339
#>     Attrib V35    -0.4708153905367858
#>     Attrib V36    -0.9716628420033407
#>     Attrib V37    -0.2390011396388749
#>     Attrib V38    0.008677078536307644
#>     Attrib V39    0.36604425032572874
#>     Attrib V4    0.6487416622384762
#>     Attrib V40    0.4556074064764554
#>     Attrib V41    0.9580134824297329
#>     Attrib V42    0.16199312052559978
#>     Attrib V43    0.2172515469046715
#>     Attrib V44    0.5552134004962143
#>     Attrib V45    0.7127393088761607
#>     Attrib V46    0.506010142076682
#>     Attrib V47    0.6723365061691472
#>     Attrib V48    0.7111032772387326
#>     Attrib V49    0.7505790641301854
#>     Attrib V5    0.8495625973569033
#>     Attrib V50    -1.4612607582012718
#>     Attrib V51    0.42409116513473544
#>     Attrib V52    1.0467083473398056
#>     Attrib V53    0.9705632689231031
#>     Attrib V54    -0.6755419759024036
#>     Attrib V55    -0.8555777541718368
#>     Attrib V56    -0.578151396609621
#>     Attrib V57    -0.3033542994871327
#>     Attrib V58    -0.2568459500435697
#>     Attrib V59    -0.5371639851315758
#>     Attrib V6    0.3032074795413981
#>     Attrib V60    -0.19964556710643522
#>     Attrib V7    -0.44424877026855797
#>     Attrib V8    -0.09419737698813803
#>     Attrib V9    1.272768782456523
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.11464051493906154
#>     Attrib V1    0.22164482198263963
#>     Attrib V10    0.011899896029232599
#>     Attrib V11    0.01591352544469995
#>     Attrib V12    0.05932228542912445
#>     Attrib V13    -0.029673342246164632
#>     Attrib V14    0.08114316272783927
#>     Attrib V15    0.019770494237457567
#>     Attrib V16    0.03100366998603018
#>     Attrib V17    -0.013702861369059897
#>     Attrib V18    -0.14424870448891972
#>     Attrib V19    0.00930125753554702
#>     Attrib V2    0.12296164420390837
#>     Attrib V20    -0.05834489902131195
#>     Attrib V21    0.023258306332337674
#>     Attrib V22    -0.0033855899806105355
#>     Attrib V23    -0.11062581014086331
#>     Attrib V24    -0.016794452185639092
#>     Attrib V25    -0.023769305786288355
#>     Attrib V26    -0.08693413984916873
#>     Attrib V27    -0.0387105090647975
#>     Attrib V28    0.03147280952126334
#>     Attrib V29    -0.07514497119856656
#>     Attrib V3    0.02412650163862706
#>     Attrib V30    -0.012786168964939632
#>     Attrib V31    -0.18564835995897008
#>     Attrib V32    -0.028229062978580324
#>     Attrib V33    0.09515946517172007
#>     Attrib V34    0.020371416465548017
#>     Attrib V35    0.10986366868813423
#>     Attrib V36    -1.6653760538567008E-4
#>     Attrib V37    -0.021111844447437904
#>     Attrib V38    0.11004119359582001
#>     Attrib V39    0.10315100601214762
#>     Attrib V4    0.1709047974280541
#>     Attrib V40    -0.0017540467301610974
#>     Attrib V41    0.025396593264598637
#>     Attrib V42    0.030033971839703837
#>     Attrib V43    0.09758707513823477
#>     Attrib V44    0.1234254725571588
#>     Attrib V45    0.15343375808234874
#>     Attrib V46    0.0677136242236629
#>     Attrib V47    0.04767453342975753
#>     Attrib V48    0.1257460624347503
#>     Attrib V49    0.025251091025625824
#>     Attrib V5    0.03700416544730431
#>     Attrib V50    -0.05884151504366811
#>     Attrib V51    0.030072029216970952
#>     Attrib V52    0.03146907274313531
#>     Attrib V53    0.11816990632235566
#>     Attrib V54    0.16120404334261282
#>     Attrib V55    0.07211334704514007
#>     Attrib V56    0.08849013282936705
#>     Attrib V57    0.26540090671176914
#>     Attrib V58    0.11950253269171357
#>     Attrib V59    0.24042943183559184
#>     Attrib V6    -0.004113043542591643
#>     Attrib V60    0.3059631990347985
#>     Attrib V7    0.014141179034898498
#>     Attrib V8    0.03539736561797798
#>     Attrib V9    0.10215610717011014
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5772313939199097
#>     Attrib V1    0.5657437242657247
#>     Attrib V10    0.2702240425351215
#>     Attrib V11    0.4067743762860619
#>     Attrib V12    0.33015830131708535
#>     Attrib V13    -0.08914382539281476
#>     Attrib V14    -0.22464296512757342
#>     Attrib V15    -0.2494264953838637
#>     Attrib V16    -0.12472433698060391
#>     Attrib V17    -0.2834909728785403
#>     Attrib V18    -0.3671334866397245
#>     Attrib V19    -0.19928020348182843
#>     Attrib V2    -0.025116484073267074
#>     Attrib V20    -0.40547199380590493
#>     Attrib V21    0.1886105321610143
#>     Attrib V22    0.15566406484918446
#>     Attrib V23    -0.49537821289444844
#>     Attrib V24    -0.17962685146313867
#>     Attrib V25    -0.2929718281178277
#>     Attrib V26    -0.03614084034681336
#>     Attrib V27    0.19500389426950146
#>     Attrib V28    0.4883984151113207
#>     Attrib V29    0.20860586422458097
#>     Attrib V3    -0.2602626851041068
#>     Attrib V30    0.2909027762289514
#>     Attrib V31    -0.5036413706743146
#>     Attrib V32    0.07719591969901612
#>     Attrib V33    0.059498028573298986
#>     Attrib V34    -0.10921506523423474
#>     Attrib V35    -0.07586028153780064
#>     Attrib V36    -0.4414911853556671
#>     Attrib V37    -0.3742223597682505
#>     Attrib V38    0.1687039643339208
#>     Attrib V39    0.10214373493090538
#>     Attrib V4    0.15801183086729442
#>     Attrib V40    -0.1515921782869852
#>     Attrib V41    0.09086085598770104
#>     Attrib V42    -0.1155504463803824
#>     Attrib V43    0.09522163856450876
#>     Attrib V44    0.3928053598674985
#>     Attrib V45    0.4817730874315224
#>     Attrib V46    0.052442964322418247
#>     Attrib V47    0.03971210120885963
#>     Attrib V48    0.30857368416810477
#>     Attrib V49    0.020752451305072278
#>     Attrib V5    -0.008338678184658364
#>     Attrib V50    -0.6651880579409882
#>     Attrib V51    -0.026354447526859937
#>     Attrib V52    0.06264891136146519
#>     Attrib V53    0.25828798086779925
#>     Attrib V54    0.32956184661604315
#>     Attrib V55    -0.1257139691277068
#>     Attrib V56    -0.16650191500356396
#>     Attrib V57    0.4179666639179207
#>     Attrib V58    0.25210414802309344
#>     Attrib V59    0.41804436739572687
#>     Attrib V6    -0.2222367712535488
#>     Attrib V60    0.5695378059921877
#>     Attrib V7    -0.048025493475196294
#>     Attrib V8    -0.02540159524772473
#>     Attrib V9    0.4903040976930579
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.37810633686814155
#>     Attrib V1    -0.29388068106842863
#>     Attrib V10    -0.17523812120118445
#>     Attrib V11    -0.5264517410907038
#>     Attrib V12    -0.7896776613043608
#>     Attrib V13    -0.5648645263032929
#>     Attrib V14    0.3236460335008416
#>     Attrib V15    0.358908305076715
#>     Attrib V16    -0.1234988402329814
#>     Attrib V17    -0.6545330429655379
#>     Attrib V18    -0.29296866527518123
#>     Attrib V19    -0.8137225370988076
#>     Attrib V2    0.07489583642901959
#>     Attrib V20    -0.13240549915157498
#>     Attrib V21    -0.4399435762602064
#>     Attrib V22    -1.2710133218498718
#>     Attrib V23    -0.9406342270266528
#>     Attrib V24    -0.5953668104010194
#>     Attrib V25    -0.009971712901865193
#>     Attrib V26    0.5402597779595966
#>     Attrib V27    0.8446994041912094
#>     Attrib V28    0.273300180982251
#>     Attrib V29    0.8728385161527757
#>     Attrib V3    0.3182877216550568
#>     Attrib V30    -0.0033468871466905185
#>     Attrib V31    0.7413217830819785
#>     Attrib V32    -0.8426720103278242
#>     Attrib V33    -0.7607375943768987
#>     Attrib V34    0.26049999721984574
#>     Attrib V35    0.746211711184096
#>     Attrib V36    1.718520457543996
#>     Attrib V37    1.8486924166233463
#>     Attrib V38    -0.2611268766060866
#>     Attrib V39    -0.20731130612646922
#>     Attrib V4    -0.03451962042291734
#>     Attrib V40    0.23810672410249545
#>     Attrib V41    -0.3451992689292661
#>     Attrib V42    -1.0104042023776603
#>     Attrib V43    -1.232807151581605
#>     Attrib V44    -0.6752096068886607
#>     Attrib V45    -0.42585997418651106
#>     Attrib V46    -0.30544922148109943
#>     Attrib V47    -0.5950675865292248
#>     Attrib V48    -0.5794152285180612
#>     Attrib V49    -0.4801823991213478
#>     Attrib V5    0.08880204815818986
#>     Attrib V50    0.6334442307151029
#>     Attrib V51    -0.3528503427904547
#>     Attrib V52    -0.14166746640939404
#>     Attrib V53    -0.3234195805872329
#>     Attrib V54    -0.7547728732650172
#>     Attrib V55    0.7326971655290463
#>     Attrib V56    -0.6893400258533667
#>     Attrib V57    -0.25729889029811764
#>     Attrib V58    -0.5674394313902452
#>     Attrib V59    -0.020824907216483498
#>     Attrib V6    0.7682202932854795
#>     Attrib V60    -0.06343106131450352
#>     Attrib V7    0.2845660951840106
#>     Attrib V8    0.00735443780765303
#>     Attrib V9    -0.7038150524927922
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.4411248747363341
#>     Attrib V1    0.2722425775418072
#>     Attrib V10    0.21430707659395765
#>     Attrib V11    0.42048082064619835
#>     Attrib V12    0.41006879868616786
#>     Attrib V13    -0.0019061581725605932
#>     Attrib V14    -0.22726546322188845
#>     Attrib V15    -0.3461227353190239
#>     Attrib V16    -0.12104873531448958
#>     Attrib V17    -0.18316128773047416
#>     Attrib V18    -0.3140101568381433
#>     Attrib V19    -0.053422822992948794
#>     Attrib V2    -0.045276450684295554
#>     Attrib V20    -0.3058243375278855
#>     Attrib V21    0.15216027220791234
#>     Attrib V22    0.37402681833574025
#>     Attrib V23    -0.18838575877085514
#>     Attrib V24    0.0962514321666813
#>     Attrib V25    0.055829351129883034
#>     Attrib V26    -0.053667376795346826
#>     Attrib V27    0.017157283857853443
#>     Attrib V28    0.41920558301822164
#>     Attrib V29    0.1306487439360095
#>     Attrib V3    -0.24677685152920562
#>     Attrib V30    0.183859565690682
#>     Attrib V31    -0.4836763638694619
#>     Attrib V32    0.24578485970229258
#>     Attrib V33    0.294662963685966
#>     Attrib V34    0.04043949520036391
#>     Attrib V35    -0.030216420974342732
#>     Attrib V36    -0.5309696427750639
#>     Attrib V37    -0.5156957730749929
#>     Attrib V38    0.10129422235981446
#>     Attrib V39    0.150321625812163
#>     Attrib V4    -0.008353750337295312
#>     Attrib V40    0.008429712685640476
#>     Attrib V41    0.23509890274384354
#>     Attrib V42    0.01642457728472922
#>     Attrib V43    0.24788843321493848
#>     Attrib V44    0.18350344194994486
#>     Attrib V45    0.3681977631491379
#>     Attrib V46    0.14722178828982108
#>     Attrib V47    0.1966115397216877
#>     Attrib V48    0.31624428713337116
#>     Attrib V49    0.07650533065809798
#>     Attrib V5    -0.11559115528026548
#>     Attrib V50    -0.6704470872770203
#>     Attrib V51    -0.004019976296771182
#>     Attrib V52    0.11758366983239381
#>     Attrib V53    0.24169725486374924
#>     Attrib V54    0.06451657912780642
#>     Attrib V55    -0.3424700963347245
#>     Attrib V56    -0.1499106318822852
#>     Attrib V57    0.26733529014604795
#>     Attrib V58    0.025100918480904302
#>     Attrib V59    0.17361387860890098
#>     Attrib V6    -0.2839140143954283
#>     Attrib V60    0.36079418616481507
#>     Attrib V7    -0.12886420895778722
#>     Attrib V8    -0.06232598734520316
#>     Attrib V9    0.5146439394164238
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.17017197815392987
#>     Attrib V1    0.04531777869001853
#>     Attrib V10    0.06902499690611213
#>     Attrib V11    0.0027867812289276758
#>     Attrib V12    0.006749365105011978
#>     Attrib V13    0.061952127692032934
#>     Attrib V14    0.07044961166250162
#>     Attrib V15    0.07472538376614918
#>     Attrib V16    0.05628947428204545
#>     Attrib V17    0.08166950291995786
#>     Attrib V18    0.00689860038517885
#>     Attrib V19    -0.0721882599457527
#>     Attrib V2    0.1242451382436284
#>     Attrib V20    -0.08856939306235286
#>     Attrib V21    -0.07111709476152957
#>     Attrib V22    -0.09511304190375715
#>     Attrib V23    -0.034455058541322484
#>     Attrib V24    -0.060627658189226184
#>     Attrib V25    0.03858795421028564
#>     Attrib V26    0.04689508161843706
#>     Attrib V27    -0.024504279234402074
#>     Attrib V28    0.002053447421878877
#>     Attrib V29    -0.02580374477057957
#>     Attrib V3    0.10259689973933026
#>     Attrib V30    0.05284061109123
#>     Attrib V31    0.12452484319794682
#>     Attrib V32    -1.7087504374297004E-4
#>     Attrib V33    0.006105935013636017
#>     Attrib V34    0.03954203987891342
#>     Attrib V35    0.12185756829947891
#>     Attrib V36    0.13618492606655735
#>     Attrib V37    0.1763838028177447
#>     Attrib V38    0.01734101942138817
#>     Attrib V39    0.12012335001862373
#>     Attrib V4    0.11102180599667583
#>     Attrib V40    0.13384421881175393
#>     Attrib V41    0.08739237620582607
#>     Attrib V42    0.08133262179285128
#>     Attrib V43    0.007749394009417565
#>     Attrib V44    -0.013876852587375971
#>     Attrib V45    0.020300235639481582
#>     Attrib V46    0.041452515995215
#>     Attrib V47    0.022662083281426416
#>     Attrib V48    0.053909221860667066
#>     Attrib V49    0.024079578973872483
#>     Attrib V5    0.045328402149721676
#>     Attrib V50    0.09246302303362663
#>     Attrib V51    0.03891460922668419
#>     Attrib V52    0.058097778890813086
#>     Attrib V53    0.07387848339239424
#>     Attrib V54    -0.006781945404557497
#>     Attrib V55    0.0727458701562233
#>     Attrib V56    0.11961693445271629
#>     Attrib V57    0.040663054525679476
#>     Attrib V58    0.06220122974197558
#>     Attrib V59    0.09144551947293887
#>     Attrib V6    0.10794336316667309
#>     Attrib V60    0.05083576126657049
#>     Attrib V7    0.026386518921869453
#>     Attrib V8    0.03895486693996611
#>     Attrib V9    -0.003486069269276616
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.2297461414589525
#>     Attrib V1    0.4409838565645643
#>     Attrib V10    -0.15762063209053828
#>     Attrib V11    -0.009998305416085363
#>     Attrib V12    0.02900196477154665
#>     Attrib V13    -0.027165118272640683
#>     Attrib V14    -0.1461468736804546
#>     Attrib V15    0.02742299309306965
#>     Attrib V16    0.19821292532876247
#>     Attrib V17    0.11179111365367525
#>     Attrib V18    -0.04963002072154299
#>     Attrib V19    0.18326691429149558
#>     Attrib V2    0.08326092308422053
#>     Attrib V20    0.13623608187364897
#>     Attrib V21    0.2095327785545811
#>     Attrib V22    0.33543880922346975
#>     Attrib V23    0.04361210515540197
#>     Attrib V24    0.23745084547729112
#>     Attrib V25    -0.07625882616950516
#>     Attrib V26    -0.409460168290628
#>     Attrib V27    -0.6853879065022458
#>     Attrib V28    -0.5176385974616483
#>     Attrib V29    -0.7944866463285777
#>     Attrib V3    -0.23135314995552983
#>     Attrib V30    -0.20162966992992648
#>     Attrib V31    -0.36842341011867497
#>     Attrib V32    0.2512283201760792
#>     Attrib V33    0.48618395280200244
#>     Attrib V34    0.16635063797367594
#>     Attrib V35    0.0052900910607183915
#>     Attrib V36    -0.5065361805967399
#>     Attrib V37    -0.6490487981200752
#>     Attrib V38    0.2938434504486819
#>     Attrib V39    0.09571147737471528
#>     Attrib V4    0.02633623729786037
#>     Attrib V40    -0.10383948874891097
#>     Attrib V41    0.0358289053075084
#>     Attrib V42    0.17444786354971487
#>     Attrib V43    0.377166680814829
#>     Attrib V44    0.26969914648698623
#>     Attrib V45    0.20029550049631745
#>     Attrib V46    0.0782339536597262
#>     Attrib V47    0.050029045347812016
#>     Attrib V48    0.18755295710322004
#>     Attrib V49    0.04485349556989996
#>     Attrib V5    -0.198424165172802
#>     Attrib V50    -0.27096984626009335
#>     Attrib V51    -0.04292086579049202
#>     Attrib V52    -0.09190657243498294
#>     Attrib V53    0.19341955622430687
#>     Attrib V54    0.6503947640035012
#>     Attrib V55    0.004910640484318729
#>     Attrib V56    0.19838461027975635
#>     Attrib V57    0.4858107598313628
#>     Attrib V58    0.20736921840836284
#>     Attrib V59    0.3915249934731644
#>     Attrib V6    -0.3979502324454705
#>     Attrib V60    0.4597878301000793
#>     Attrib V7    0.07958338560081095
#>     Attrib V8    -0.005285870465676998
#>     Attrib V9    0.260672282315083
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.11574311510127468
#>     Attrib V1    0.4270772287998375
#>     Attrib V10    -0.06789343368768161
#>     Attrib V11    0.05251089153572887
#>     Attrib V12    0.04686986645360188
#>     Attrib V13    -0.08943399798238678
#>     Attrib V14    0.03334481111167
#>     Attrib V15    0.08104548890986799
#>     Attrib V16    0.133268082264955
#>     Attrib V17    -0.058683765435006106
#>     Attrib V18    -0.09448191718354694
#>     Attrib V19    -0.03667031701642356
#>     Attrib V2    0.05960217938772198
#>     Attrib V20    0.009672516458993717
#>     Attrib V21    0.17146398699472984
#>     Attrib V22    0.08013489811146851
#>     Attrib V23    -0.16303695205198415
#>     Attrib V24    -0.02886501681827245
#>     Attrib V25    -0.19776493878922374
#>     Attrib V26    -0.2967233453162183
#>     Attrib V27    -0.30199458959863634
#>     Attrib V28    -0.11900462328999808
#>     Attrib V29    -0.29356234428637434
#>     Attrib V3    -0.024288190534087664
#>     Attrib V30    -0.021475241352580093
#>     Attrib V31    -0.361323952706941
#>     Attrib V32    0.03799011404266429
#>     Attrib V33    0.20137199512635104
#>     Attrib V34    0.041405968510759235
#>     Attrib V35    0.008591478055648357
#>     Attrib V36    -0.21309242755656047
#>     Attrib V37    -0.31598227734156153
#>     Attrib V38    0.15479032540930557
#>     Attrib V39    0.11150067499626973
#>     Attrib V4    0.1064549025508406
#>     Attrib V40    -0.09467775737855623
#>     Attrib V41    -0.02974644216168957
#>     Attrib V42    0.07046902097972507
#>     Attrib V43    0.12248668875119453
#>     Attrib V44    0.19794947577626068
#>     Attrib V45    0.2612135549345816
#>     Attrib V46    0.0852059227342975
#>     Attrib V47    0.03501087088745725
#>     Attrib V48    0.0907478070865005
#>     Attrib V49    0.051969938172259804
#>     Attrib V5    0.007462792795703712
#>     Attrib V50    -0.2515496696893729
#>     Attrib V51    0.01493336902564153
#>     Attrib V52    0.018783249367799276
#>     Attrib V53    0.18479423696233366
#>     Attrib V54    0.37477419056860406
#>     Attrib V55    0.05371380743878203
#>     Attrib V56    0.1167953645934917
#>     Attrib V57    0.38509196678725305
#>     Attrib V58    0.29388931126429574
#>     Attrib V59    0.36224066947615796
#>     Attrib V6    -0.1780001709278859
#>     Attrib V60    0.4133521755931905
#>     Attrib V7    0.07614298671859182
#>     Attrib V8    0.06049338425981059
#>     Attrib V9    0.21471038503801418
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
