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
#>     Threshold    -0.6563272177113169
#>     Node 2    1.8584795656491797
#>     Node 3    0.7840004221974537
#>     Node 4    0.7258596323279422
#>     Node 5    -1.8156964935077022
#>     Node 6    1.4881144255991317
#>     Node 7    3.2345573833284744
#>     Node 8    1.1802541180244952
#>     Node 9    4.479414499719483
#>     Node 10    -1.7647291754151777
#>     Node 11    1.3648302135041288
#>     Node 12    1.4417797253654325
#>     Node 13    0.8829247399744625
#>     Node 14    1.2658725419662025
#>     Node 15    -2.0517062190307027
#>     Node 16    0.3628028389452324
#>     Node 17    0.570324937522934
#>     Node 18    0.4357085328070662
#>     Node 19    1.26570672017335
#>     Node 20    1.573589994671868
#>     Node 21    -2.129953115849579
#>     Node 22    0.5705232742326607
#>     Node 23    1.2254833400916993
#>     Node 24    -0.22340312136421273
#>     Node 25    4.29533935825893
#>     Node 26    -0.9883693750705154
#>     Node 27    1.4743982761115393
#>     Node 28    -3.187926761204158
#>     Node 29    1.257298680329298
#>     Node 30    -0.24647475864559867
#>     Node 31    1.8997558291522487
#>     Node 32    1.0797779743246347
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.6986859080424218
#>     Node 2    -1.8973757345912696
#>     Node 3    -0.772623168689025
#>     Node 4    -0.6946349830835696
#>     Node 5    1.8413682843029946
#>     Node 6    -1.4628824126754651
#>     Node 7    -3.24116712212209
#>     Node 8    -1.233925958587536
#>     Node 9    -4.480216912007751
#>     Node 10    1.7133927516460334
#>     Node 11    -1.3266564138723775
#>     Node 12    -1.5150148968363024
#>     Node 13    -0.8298449149012923
#>     Node 14    -1.202417098674251
#>     Node 15    2.0425395883949937
#>     Node 16    -0.3899352432269023
#>     Node 17    -0.5474907732988078
#>     Node 18    -0.4052251545145887
#>     Node 19    -1.2710774222907242
#>     Node 20    -1.565057431869851
#>     Node 21    2.175046353989805
#>     Node 22    -0.6352801732930412
#>     Node 23    -1.2683551870722938
#>     Node 24    0.1996573518584172
#>     Node 25    -4.2966669437844125
#>     Node 26    0.9298122491458491
#>     Node 27    -1.5061597804500662
#>     Node 28    3.161946670062798
#>     Node 29    -1.2793874955024231
#>     Node 30    0.31918225006439055
#>     Node 31    -1.8388412516516262
#>     Node 32    -1.101608852648262
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.24527841905940356
#>     Attrib V1    0.16242529127055907
#>     Attrib V10    -0.15525516757354996
#>     Attrib V11    -0.025825399919155605
#>     Attrib V12    0.22620665420388733
#>     Attrib V13    -0.33454532090713274
#>     Attrib V14    -0.07869223125460852
#>     Attrib V15    0.02290829409131181
#>     Attrib V16    0.057527946289492406
#>     Attrib V17    -0.04464902844542531
#>     Attrib V18    0.19113640376253385
#>     Attrib V19    0.2920407488159214
#>     Attrib V2    -0.04132923488088122
#>     Attrib V20    0.13702708729168894
#>     Attrib V21    0.30005357481677
#>     Attrib V22    0.5792035399763542
#>     Attrib V23    0.6180609467038898
#>     Attrib V24    0.3624546779033581
#>     Attrib V25    -0.41918783052100367
#>     Attrib V26    -1.1725675343125863
#>     Attrib V27    -0.7936617111908404
#>     Attrib V28    -0.45355184152789435
#>     Attrib V29    -0.7230298408264046
#>     Attrib V3    -0.3253303319511702
#>     Attrib V30    -0.23287538848540512
#>     Attrib V31    -0.8782412188842802
#>     Attrib V32    0.04660398720536816
#>     Attrib V33    0.7253294242961956
#>     Attrib V34    0.23662490551874465
#>     Attrib V35    -0.2892572478576722
#>     Attrib V36    -0.6155256992605505
#>     Attrib V37    -0.8099473502867456
#>     Attrib V38    0.4632312990606437
#>     Attrib V39    0.40486623262369326
#>     Attrib V4    0.09539027726108176
#>     Attrib V40    -0.1118091913128634
#>     Attrib V41    0.03433404332107412
#>     Attrib V42    0.06150949589477876
#>     Attrib V43    0.1850998137097716
#>     Attrib V44    0.08391833238184948
#>     Attrib V45    0.21002752065771108
#>     Attrib V46    -0.10529822971209814
#>     Attrib V47    -0.26803398543760804
#>     Attrib V48    -4.08496499986743E-4
#>     Attrib V49    -0.08438555913653141
#>     Attrib V5    -0.15784072664346793
#>     Attrib V50    -0.1927360781824627
#>     Attrib V51    0.32992276608370713
#>     Attrib V52    0.4447525361270159
#>     Attrib V53    -0.10456724307851513
#>     Attrib V54    0.8249089386675797
#>     Attrib V55    0.04598385380009942
#>     Attrib V56    -0.0315632656533238
#>     Attrib V57    0.5349309445982341
#>     Attrib V58    0.36608442482572057
#>     Attrib V59    0.5915776865811921
#>     Attrib V6    -0.05084645840251224
#>     Attrib V60    0.6935679905944097
#>     Attrib V7    0.3091970676321503
#>     Attrib V8    0.08903927643614519
#>     Attrib V9    0.3696263637587254
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.01698666214017459
#>     Attrib V1    0.07148868621458482
#>     Attrib V10    -0.07040062131119355
#>     Attrib V11    0.0066440368200266385
#>     Attrib V12    0.15249392353603403
#>     Attrib V13    -0.11234586640850645
#>     Attrib V14    0.041779648150238206
#>     Attrib V15    0.10269087990323823
#>     Attrib V16    0.06165633438487586
#>     Attrib V17    0.0028499079450010623
#>     Attrib V18    0.053500472119938955
#>     Attrib V19    0.1377525116526227
#>     Attrib V2    0.07454091593089111
#>     Attrib V20    -0.007746420492180429
#>     Attrib V21    0.00580793969872608
#>     Attrib V22    0.14930535944981999
#>     Attrib V23    0.12681013149144782
#>     Attrib V24    0.047615037011198014
#>     Attrib V25    -0.1852174034882418
#>     Attrib V26    -0.4827425851674169
#>     Attrib V27    -0.29734379126802885
#>     Attrib V28    -0.15871749278775657
#>     Attrib V29    -0.3321235354028529
#>     Attrib V3    -0.047435297162956275
#>     Attrib V30    -0.04709506883030863
#>     Attrib V31    -0.31524789465204317
#>     Attrib V32    0.047525661408377835
#>     Attrib V33    0.2834130759717634
#>     Attrib V34    0.031606828183766665
#>     Attrib V35    -0.11627830065523127
#>     Attrib V36    -0.2595717707340585
#>     Attrib V37    -0.34665427210025335
#>     Attrib V38    0.10273837368849027
#>     Attrib V39    0.16595627442605487
#>     Attrib V4    0.189085836023725
#>     Attrib V40    -0.07049784320671398
#>     Attrib V41    0.01153952564688471
#>     Attrib V42    -0.008675029292317438
#>     Attrib V43    0.028094436327794955
#>     Attrib V44    0.06702342149138621
#>     Attrib V45    0.10038953613191944
#>     Attrib V46    -0.048610983019094264
#>     Attrib V47    -0.09369847050390126
#>     Attrib V48    0.008123356348087585
#>     Attrib V49    -0.0046636021628589696
#>     Attrib V5    -0.010618320087621385
#>     Attrib V50    -0.09408917717440142
#>     Attrib V51    0.06690807444401917
#>     Attrib V52    0.2597679023131223
#>     Attrib V53    0.004973680284353644
#>     Attrib V54    0.4262573441892733
#>     Attrib V55    0.17874691907732873
#>     Attrib V56    0.023981073561226973
#>     Attrib V57    0.423930251257675
#>     Attrib V58    0.27854056084760664
#>     Attrib V59    0.3630020631104617
#>     Attrib V6    -0.031273836433416205
#>     Attrib V60    0.3265802859184911
#>     Attrib V7    0.0468958739694674
#>     Attrib V8    0.08521680821176876
#>     Attrib V9    0.1506279310537962
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.0033524080386994996
#>     Attrib V1    0.04347118943379684
#>     Attrib V10    -0.02161285536844654
#>     Attrib V11    0.07723588816050798
#>     Attrib V12    0.18461451881045554
#>     Attrib V13    -0.13598520140398448
#>     Attrib V14    0.015860168565509276
#>     Attrib V15    0.038390733191276165
#>     Attrib V16    0.033441043916686786
#>     Attrib V17    -0.01912974705036184
#>     Attrib V18    0.03832689764024759
#>     Attrib V19    0.07832877732317083
#>     Attrib V2    0.01206223383453901
#>     Attrib V20    -0.03455235207034718
#>     Attrib V21    0.05353169221175965
#>     Attrib V22    0.09083496419597444
#>     Attrib V23    0.127857870422573
#>     Attrib V24    0.048301457814176024
#>     Attrib V25    -0.20882022519475363
#>     Attrib V26    -0.4304187650151382
#>     Attrib V27    -0.24519894221135835
#>     Attrib V28    -0.034241073110452235
#>     Attrib V29    -0.15641316639598757
#>     Attrib V3    -0.0541812625069607
#>     Attrib V30    -0.007338417049682048
#>     Attrib V31    -0.28876728789810535
#>     Attrib V32    0.06026613856842986
#>     Attrib V33    0.2841702759466213
#>     Attrib V34    0.07949548378178053
#>     Attrib V35    -0.09529161221802172
#>     Attrib V36    -0.250892629898885
#>     Attrib V37    -0.32740279208178097
#>     Attrib V38    0.12920528934021488
#>     Attrib V39    0.19227758950560644
#>     Attrib V4    0.18359752520846012
#>     Attrib V40    -0.09098496740784112
#>     Attrib V41    -0.037276422322694326
#>     Attrib V42    -0.03797479417199623
#>     Attrib V43    0.0031598324286879484
#>     Attrib V44    0.10333949716051245
#>     Attrib V45    0.2197854239176871
#>     Attrib V46    -0.03918553662585325
#>     Attrib V47    -0.12071152693387749
#>     Attrib V48    0.11107117234655338
#>     Attrib V49    0.08936182821434424
#>     Attrib V5    0.03349184055748539
#>     Attrib V50    -0.11058689499205088
#>     Attrib V51    0.13026115403796204
#>     Attrib V52    0.2654920805898043
#>     Attrib V53    0.05061126247602561
#>     Attrib V54    0.2764735708211646
#>     Attrib V55    0.049823349063892096
#>     Attrib V56    -0.011127890844957453
#>     Attrib V57    0.39436981411674493
#>     Attrib V58    0.17800041341877457
#>     Attrib V59    0.3051066887197223
#>     Attrib V6    -0.019788648513124635
#>     Attrib V60    0.2938761645002369
#>     Attrib V7    0.07531933207110274
#>     Attrib V8    0.0047427745331512
#>     Attrib V9    0.26648196668217644
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.48416780285130356
#>     Attrib V1    0.2122134095684022
#>     Attrib V10    -0.11541806588256508
#>     Attrib V11    -0.430940308239991
#>     Attrib V12    -0.923947501385725
#>     Attrib V13    0.24003686969463975
#>     Attrib V14    0.29684258066376706
#>     Attrib V15    0.3464969965964381
#>     Attrib V16    0.06273552216092187
#>     Attrib V17    0.35126624915818094
#>     Attrib V18    -0.0745405777513605
#>     Attrib V19    -0.27292787628530824
#>     Attrib V2    0.19985571319247947
#>     Attrib V20    0.22682481385887523
#>     Attrib V21    0.15420024936902657
#>     Attrib V22    -0.3728574592638751
#>     Attrib V23    -0.3998529673723289
#>     Attrib V24    -0.2617215225372271
#>     Attrib V25    0.28424480393822577
#>     Attrib V26    0.7840148989610201
#>     Attrib V27    0.2011632537368962
#>     Attrib V28    -0.22531477138826053
#>     Attrib V29    0.16165927899268107
#>     Attrib V3    0.47205679486011615
#>     Attrib V30    -0.20764420240847872
#>     Attrib V31    0.6386381349284564
#>     Attrib V32    -0.29747497824667385
#>     Attrib V33    -0.7214480575676424
#>     Attrib V34    -0.17165992877488556
#>     Attrib V35    0.3693781303106807
#>     Attrib V36    0.7545444917497329
#>     Attrib V37    0.8896315194450843
#>     Attrib V38    -0.4864806869150768
#>     Attrib V39    -0.6920967283274925
#>     Attrib V4    -0.14107017192213217
#>     Attrib V40    0.14353146513334367
#>     Attrib V41    -0.1054508210721372
#>     Attrib V42    0.20472419671784223
#>     Attrib V43    -0.03366078769287904
#>     Attrib V44    -0.13041482094890128
#>     Attrib V45    -0.39364722112457895
#>     Attrib V46    0.02845634360501304
#>     Attrib V47    0.08829510959230492
#>     Attrib V48    -0.38978282496038674
#>     Attrib V49    -0.1713852713899485
#>     Attrib V5    0.253264349617253
#>     Attrib V50    0.827765329260622
#>     Attrib V51    -0.2974509559192884
#>     Attrib V52    -0.9592560356415296
#>     Attrib V53    0.09482413271885407
#>     Attrib V54    -0.3829486565622666
#>     Attrib V55    0.3912021908695236
#>     Attrib V56    0.4938277488162305
#>     Attrib V57    -0.2879131009187985
#>     Attrib V58    -0.11973715236842211
#>     Attrib V59    -0.20847866067527604
#>     Attrib V6    -0.04124498017941712
#>     Attrib V60    -0.39025533320124534
#>     Attrib V7    -0.10525283757748054
#>     Attrib V8    0.15906321823070202
#>     Attrib V9    -0.7271875339705571
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.23817198907399947
#>     Attrib V1    0.1529389740384726
#>     Attrib V10    -0.24551433441031004
#>     Attrib V11    -0.0886593813913811
#>     Attrib V12    0.13849836828321185
#>     Attrib V13    -0.32578582874152123
#>     Attrib V14    -0.056489861421751074
#>     Attrib V15    0.0738519596837044
#>     Attrib V16    0.15995574701756962
#>     Attrib V17    -0.013303610341035875
#>     Attrib V18    0.17733650844805468
#>     Attrib V19    0.19283160211759823
#>     Attrib V2    0.04537830716052395
#>     Attrib V20    0.07878726561904172
#>     Attrib V21    0.219423365577382
#>     Attrib V22    0.34512386559977204
#>     Attrib V23    0.3282772576073256
#>     Attrib V24    0.20274289615704952
#>     Attrib V25    -0.3644934638953028
#>     Attrib V26    -0.928323565762748
#>     Attrib V27    -0.6170101812522168
#>     Attrib V28    -0.4670232585852578
#>     Attrib V29    -0.6260493953269303
#>     Attrib V3    -0.21504406261367243
#>     Attrib V30    -0.23643585471732984
#>     Attrib V31    -0.6372479274729701
#>     Attrib V32    0.020991465197665288
#>     Attrib V33    0.5622895098467672
#>     Attrib V34    0.17777252434222782
#>     Attrib V35    -0.21271703368337003
#>     Attrib V36    -0.5040596153991297
#>     Attrib V37    -0.6053776666135942
#>     Attrib V38    0.24917920593601647
#>     Attrib V39    0.2411149079984241
#>     Attrib V4    0.14403266353269223
#>     Attrib V40    -0.12837787094614816
#>     Attrib V41    0.04543764318657441
#>     Attrib V42    0.05270177252033312
#>     Attrib V43    0.08417592114014562
#>     Attrib V44    -0.0010969517703611393
#>     Attrib V45    0.14921409788184253
#>     Attrib V46    -0.06861433394650641
#>     Attrib V47    -0.26471969541692714
#>     Attrib V48    -0.05816265863637365
#>     Attrib V49    -0.052363278417878446
#>     Attrib V5    -0.13524692699378088
#>     Attrib V50    -0.08171109651493409
#>     Attrib V51    0.16492138416694624
#>     Attrib V52    0.2785539940479105
#>     Attrib V53    0.025397312630649958
#>     Attrib V54    0.690132252939044
#>     Attrib V55    0.1438115673910641
#>     Attrib V56    0.011466847728266902
#>     Attrib V57    0.5898991860459762
#>     Attrib V58    0.3872994001029311
#>     Attrib V59    0.5283749693572322
#>     Attrib V6    0.056244440894917966
#>     Attrib V60    0.5683658025611787
#>     Attrib V7    0.22986978633761324
#>     Attrib V8    0.13731973218770735
#>     Attrib V9    0.29446922426286254
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    -0.2152531981874893
#>     Attrib V1    -0.22157848367362115
#>     Attrib V10    0.750556008190931
#>     Attrib V11    1.0911985691341801
#>     Attrib V12    1.6497150847575242
#>     Attrib V13    0.3688953430474967
#>     Attrib V14    -0.28001255582635287
#>     Attrib V15    -0.8703906491397273
#>     Attrib V16    -0.33125093371561226
#>     Attrib V17    -0.4221819812419143
#>     Attrib V18    0.08201840061387146
#>     Attrib V19    0.19491262676110832
#>     Attrib V2    -0.04146270301331781
#>     Attrib V20    -0.37046441068863956
#>     Attrib V21    -0.3007472072048452
#>     Attrib V22    0.5674720757507394
#>     Attrib V23    0.7376948152727957
#>     Attrib V24    0.3725709848250187
#>     Attrib V25    0.8329393489211061
#>     Attrib V26    0.7726976323329945
#>     Attrib V27    1.2316133270596266
#>     Attrib V28    1.7191685291986445
#>     Attrib V29    1.0646455333408553
#>     Attrib V3    -0.04162108478368581
#>     Attrib V30    0.5245577684628638
#>     Attrib V31    -0.5349645339442409
#>     Attrib V32    -0.02001409891368174
#>     Attrib V33    -0.2852018054587868
#>     Attrib V34    -0.43898198686796436
#>     Attrib V35    -0.2874561779654706
#>     Attrib V36    -0.32332361135918564
#>     Attrib V37    -0.3183210011692978
#>     Attrib V38    0.047529562889621
#>     Attrib V39    0.6554858331001019
#>     Attrib V4    0.8630852391905462
#>     Attrib V40    0.12918337115372588
#>     Attrib V41    0.6201927403985349
#>     Attrib V42    -0.14974432292834838
#>     Attrib V43    0.11057591524571325
#>     Attrib V44    0.5333771914994208
#>     Attrib V45    0.45256275759927844
#>     Attrib V46    0.36663868408146305
#>     Attrib V47    0.682956294495199
#>     Attrib V48    1.0390103738523209
#>     Attrib V49    0.7476386685848225
#>     Attrib V5    0.4761737248700929
#>     Attrib V50    -0.7158388046959114
#>     Attrib V51    0.23370465232781648
#>     Attrib V52    1.1933691522444299
#>     Attrib V53    0.1425992885960527
#>     Attrib V54    -0.40281837224464256
#>     Attrib V55    -0.8298850858804493
#>     Attrib V56    -0.40623389526318504
#>     Attrib V57    -0.1345902990369061
#>     Attrib V58    -0.29423561080666866
#>     Attrib V59    0.2191982065582871
#>     Attrib V6    0.007407742274345131
#>     Attrib V60    0.6131878890035926
#>     Attrib V7    -0.450601807076276
#>     Attrib V8    -0.5087965446678304
#>     Attrib V9    1.0941929267642483
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.22814872926846783
#>     Attrib V1    -0.12168593553829354
#>     Attrib V10    0.17228903213843078
#>     Attrib V11    0.3423105979584127
#>     Attrib V12    0.5288974653008184
#>     Attrib V13    -0.20965814308973144
#>     Attrib V14    -0.25756391907778653
#>     Attrib V15    -0.2968974059647037
#>     Attrib V16    -0.06909203836259342
#>     Attrib V17    -0.2946049990360433
#>     Attrib V18    -0.1966539596438318
#>     Attrib V19    -0.10438530709268783
#>     Attrib V2    -0.04278658775315254
#>     Attrib V20    -0.39556624776412863
#>     Attrib V21    -0.30040526224431013
#>     Attrib V22    -0.13476313657793892
#>     Attrib V23    -0.04451275582166977
#>     Attrib V24    0.041599801400077706
#>     Attrib V25    -0.06133858538390118
#>     Attrib V26    -0.1887887698062122
#>     Attrib V27    0.2041743718907722
#>     Attrib V28    0.41582592155369913
#>     Attrib V29    0.06888955658451022
#>     Attrib V3    -0.19609225081215406
#>     Attrib V30    0.20965750187879242
#>     Attrib V31    -0.2662413035704429
#>     Attrib V32    0.21429652377072295
#>     Attrib V33    0.3254556890126952
#>     Attrib V34    0.0912900930114279
#>     Attrib V35    -0.09836697447762388
#>     Attrib V36    -0.23928570999641877
#>     Attrib V37    -0.41298906507619315
#>     Attrib V38    0.21924144682239657
#>     Attrib V39    0.2994995586629958
#>     Attrib V4    0.289539151559029
#>     Attrib V40    -0.13144219158185108
#>     Attrib V41    -0.044069208531365506
#>     Attrib V42    -0.33916883725116687
#>     Attrib V43    -0.06492240614379816
#>     Attrib V44    0.21666277542376927
#>     Attrib V45    0.33984979155566913
#>     Attrib V46    0.09791487147290882
#>     Attrib V47    0.023612093446997117
#>     Attrib V48    0.443894339611082
#>     Attrib V49    0.27549979518755874
#>     Attrib V5    -0.08682081510440944
#>     Attrib V50    -0.4440278960589937
#>     Attrib V51    0.028595923175610195
#>     Attrib V52    0.4818164834268507
#>     Attrib V53    0.01868278918271852
#>     Attrib V54    0.10649293591211005
#>     Attrib V55    -0.209417333679538
#>     Attrib V56    -0.31196489448978687
#>     Attrib V57    0.37342359894611066
#>     Attrib V58    -0.00738697250764565
#>     Attrib V59    0.191047506674576
#>     Attrib V6    -0.019308037040630013
#>     Attrib V60    0.2725049567811576
#>     Attrib V7    -0.0030431461022729133
#>     Attrib V8    -0.07897936414845494
#>     Attrib V9    0.4817167925660576
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    -0.517486948957863
#>     Attrib V1    -0.6311340621086614
#>     Attrib V10    1.3688427776254317
#>     Attrib V11    1.5300314279620142
#>     Attrib V12    2.2136796653685775
#>     Attrib V13    0.7895107530084764
#>     Attrib V14    -0.5811332234250359
#>     Attrib V15    -1.3269570151019074
#>     Attrib V16    -0.5272634795612042
#>     Attrib V17    -0.3122794705666138
#>     Attrib V18    0.4722933011006003
#>     Attrib V19    0.5005616791268052
#>     Attrib V2    -0.19786226392077916
#>     Attrib V20    -0.36987438976287246
#>     Attrib V21    -0.3566301484819763
#>     Attrib V22    1.104782158210576
#>     Attrib V23    1.436501305307252
#>     Attrib V24    0.805184252769615
#>     Attrib V25    1.4075841450323416
#>     Attrib V26    1.1153536609575765
#>     Attrib V27    1.2376599940712345
#>     Attrib V28    1.6500562628400586
#>     Attrib V29    0.5861609463740269
#>     Attrib V3    -0.283508667378987
#>     Attrib V30    0.5330857628605351
#>     Attrib V31    -0.563505417390389
#>     Attrib V32    0.017243593278902663
#>     Attrib V33    -0.2711332445538401
#>     Attrib V34    -0.3680282124601968
#>     Attrib V35    -0.3422780243271706
#>     Attrib V36    -0.5602912968523113
#>     Attrib V37    -0.8863180097267136
#>     Attrib V38    -0.26040639288161266
#>     Attrib V39    0.7957926080829265
#>     Attrib V4    0.6428398274509581
#>     Attrib V40    0.3155905941441458
#>     Attrib V41    0.7137558182084052
#>     Attrib V42    -0.23521394240724702
#>     Attrib V43    0.40903293691927695
#>     Attrib V44    0.8140999792064437
#>     Attrib V45    0.6318342468688488
#>     Attrib V46    0.49182381689374044
#>     Attrib V47    1.0797335967681438
#>     Attrib V48    1.443437325534197
#>     Attrib V49    1.2000317269574516
#>     Attrib V5    0.29856045497787176
#>     Attrib V50    -0.8453843060713025
#>     Attrib V51    0.4592532918383106
#>     Attrib V52    1.58915438424043
#>     Attrib V53    0.19389903164165453
#>     Attrib V54    -0.6451188136707249
#>     Attrib V55    -0.977070513229692
#>     Attrib V56    -0.40293889011428496
#>     Attrib V57    -0.6581214204756669
#>     Attrib V58    -0.43680038493757
#>     Attrib V59    -0.3120562356411291
#>     Attrib V6    -0.06952755085677706
#>     Attrib V60    0.21787316658526715
#>     Attrib V7    -0.4114702190160304
#>     Attrib V8    -0.19449424640103907
#>     Attrib V9    1.6652188228026366
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.4446786528477129
#>     Attrib V1    0.18863810006819126
#>     Attrib V10    -0.19502903940337166
#>     Attrib V11    -0.4441380580967279
#>     Attrib V12    -0.7671869572243452
#>     Attrib V13    0.29479580346248785
#>     Attrib V14    0.31521059583695465
#>     Attrib V15    0.20770781401866684
#>     Attrib V16    0.04787823306338165
#>     Attrib V17    0.25538709798489195
#>     Attrib V18    3.857422755973112E-4
#>     Attrib V19    -0.19378478082267178
#>     Attrib V2    0.12121867219720377
#>     Attrib V20    0.2551086050008784
#>     Attrib V21    0.14398651099538032
#>     Attrib V22    -0.2921412487779222
#>     Attrib V23    -0.29560033633942595
#>     Attrib V24    -0.21293424063077168
#>     Attrib V25    0.24433180540615063
#>     Attrib V26    0.7620970274967092
#>     Attrib V27    0.2996081049056687
#>     Attrib V28    0.031118872340908755
#>     Attrib V29    0.2986949795367211
#>     Attrib V3    0.38673240397363795
#>     Attrib V30    -0.10372386298678785
#>     Attrib V31    0.48742661806915166
#>     Attrib V32    -0.48665814280264813
#>     Attrib V33    -0.731190926567834
#>     Attrib V34    -0.2007811634599622
#>     Attrib V35    0.34339995401422396
#>     Attrib V36    0.7787326611032547
#>     Attrib V37    0.9627625886342285
#>     Attrib V38    -0.2745210449894618
#>     Attrib V39    -0.5135890027400507
#>     Attrib V4    -0.09599866091739577
#>     Attrib V40    0.19161660371903924
#>     Attrib V41    -0.0013773108390403566
#>     Attrib V42    0.17332924790550397
#>     Attrib V43    0.0030203166079371684
#>     Attrib V44    -0.05213644501031148
#>     Attrib V45    -0.2482431395627382
#>     Attrib V46    0.02520054371042505
#>     Attrib V47    0.04866243065115506
#>     Attrib V48    -0.41623352646223244
#>     Attrib V49    -0.16744999879416966
#>     Attrib V5    0.20453608101612772
#>     Attrib V50    0.6967937783440041
#>     Attrib V51    -0.32406037833838275
#>     Attrib V52    -0.8800013736911568
#>     Attrib V53    0.1387162505610252
#>     Attrib V54    -0.3900600575712648
#>     Attrib V55    0.2425928139173482
#>     Attrib V56    0.35622041534377424
#>     Attrib V57    -0.2786187129262019
#>     Attrib V58    -0.1574066223670387
#>     Attrib V59    -0.20302877646701983
#>     Attrib V6    -0.08912895031744517
#>     Attrib V60    -0.4008693080649179
#>     Attrib V7    -0.21538252350361686
#>     Attrib V8    0.0692056224926434
#>     Attrib V9    -0.6952121158865628
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.2001585758399854
#>     Attrib V1    0.05236587768098515
#>     Attrib V10    -0.10729271852170857
#>     Attrib V11    0.054767893183332333
#>     Attrib V12    0.28792230128934343
#>     Attrib V13    -0.320328972710276
#>     Attrib V14    -0.12071965857667359
#>     Attrib V15    -0.027490704524686067
#>     Attrib V16    0.0639822896846159
#>     Attrib V17    0.0237795280275413
#>     Attrib V18    0.18298902484289126
#>     Attrib V19    0.220743578861605
#>     Attrib V2    -0.060086741362997444
#>     Attrib V20    0.07187045906859156
#>     Attrib V21    0.13587796103568087
#>     Attrib V22    0.3679652533192553
#>     Attrib V23    0.4335855568409222
#>     Attrib V24    0.24545707360788566
#>     Attrib V25    -0.27858056359960964
#>     Attrib V26    -0.8640357113533804
#>     Attrib V27    -0.5351506112682155
#>     Attrib V28    -0.3033729891959326
#>     Attrib V29    -0.5616345228248911
#>     Attrib V3    -0.3004967763268532
#>     Attrib V30    -0.1447212758482238
#>     Attrib V31    -0.6262175096868129
#>     Attrib V32    0.06622401965475785
#>     Attrib V33    0.5456438764705028
#>     Attrib V34    0.2071691063973306
#>     Attrib V35    -0.17417402466549173
#>     Attrib V36    -0.4629026932699607
#>     Attrib V37    -0.6587812227121606
#>     Attrib V38    0.3321096958008029
#>     Attrib V39    0.29376576678139876
#>     Attrib V4    0.1172862810995515
#>     Attrib V40    -0.15182810761278764
#>     Attrib V41    -0.07496185739320016
#>     Attrib V42    -0.050313789705678146
#>     Attrib V43    0.09809470978316366
#>     Attrib V44    0.1348145782358033
#>     Attrib V45    0.27544401597287527
#>     Attrib V46    -0.07411588946650943
#>     Attrib V47    -0.1695112895268651
#>     Attrib V48    0.09244034414847917
#>     Attrib V49    0.009050820185977344
#>     Attrib V5    -0.09377794125295628
#>     Attrib V50    -0.19000680375080212
#>     Attrib V51    0.23654130472960094
#>     Attrib V52    0.35389553635413507
#>     Attrib V53    -0.08181739361701786
#>     Attrib V54    0.6714963234505416
#>     Attrib V55    0.04384754133987447
#>     Attrib V56    -0.0507611338333132
#>     Attrib V57    0.49998914329560584
#>     Attrib V58    0.3197204220896461
#>     Attrib V59    0.3652290472240884
#>     Attrib V6    0.03428866836749082
#>     Attrib V60    0.47139878353226883
#>     Attrib V7    0.16619403378036124
#>     Attrib V8    0.08255902045901485
#>     Attrib V9    0.37735609591464253
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.3347195529417654
#>     Attrib V1    -0.040767907554160175
#>     Attrib V10    -0.13083437558371044
#>     Attrib V11    0.19781096977750057
#>     Attrib V12    0.39755559250210365
#>     Attrib V13    -0.28607734298096227
#>     Attrib V14    -0.13748318479658878
#>     Attrib V15    -0.09838968062127167
#>     Attrib V16    0.09791712356651557
#>     Attrib V17    -0.02756954976132972
#>     Attrib V18    0.17492892440119887
#>     Attrib V19    0.3276860428963494
#>     Attrib V2    -0.038584157004350306
#>     Attrib V20    -0.04372616144841517
#>     Attrib V21    0.08400591336031174
#>     Attrib V22    0.454177156889696
#>     Attrib V23    0.522050593874712
#>     Attrib V24    0.29068751924495934
#>     Attrib V25    -0.27858756977601734
#>     Attrib V26    -0.8422697969853027
#>     Attrib V27    -0.4422482319704548
#>     Attrib V28    -0.2538007253823127
#>     Attrib V29    -0.5004955450808642
#>     Attrib V3    -0.381814291252211
#>     Attrib V30    -0.1510139160041076
#>     Attrib V31    -0.7132538941307045
#>     Attrib V32    0.0893726396568176
#>     Attrib V33    0.6236821157366326
#>     Attrib V34    0.16737403305445395
#>     Attrib V35    -0.2939831195926658
#>     Attrib V36    -0.5811534811937488
#>     Attrib V37    -0.7665152903157922
#>     Attrib V38    0.3036220778121005
#>     Attrib V39    0.33505163771875207
#>     Attrib V4    0.20219739284922383
#>     Attrib V40    -0.11781005184323877
#>     Attrib V41    0.013580281976643394
#>     Attrib V42    -0.06605962594332576
#>     Attrib V43    0.15489728311259346
#>     Attrib V44    0.07817208018376895
#>     Attrib V45    0.26722619953544496
#>     Attrib V46    -0.017521269448589137
#>     Attrib V47    -0.1798630122759563
#>     Attrib V48    0.17555004629529658
#>     Attrib V49    0.019732512777761568
#>     Attrib V5    -0.09757115179326532
#>     Attrib V50    -0.3609226578150994
#>     Attrib V51    0.24091835479081233
#>     Attrib V52    0.544277270806207
#>     Attrib V53    -0.04596120493208959
#>     Attrib V54    0.6218491858432215
#>     Attrib V55    -0.04508979335881387
#>     Attrib V56    -0.11376758930934092
#>     Attrib V57    0.5347900690832035
#>     Attrib V58    0.33142546029075437
#>     Attrib V59    0.4991793459258945
#>     Attrib V6    -0.005148336488864097
#>     Attrib V60    0.5317098054912672
#>     Attrib V7    0.19140790604024066
#>     Attrib V8    0.044543153638858295
#>     Attrib V9    0.4397113411626806
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.012022606059548253
#>     Attrib V1    0.09951869524234491
#>     Attrib V10    -0.10820458558738995
#>     Attrib V11    0.02065211235725741
#>     Attrib V12    0.15195987113533901
#>     Attrib V13    -0.10604383076809348
#>     Attrib V14    -0.012796603023687375
#>     Attrib V15    0.00385355255222144
#>     Attrib V16    0.03722894863036416
#>     Attrib V17    0.02997644129766779
#>     Attrib V18    0.1234506013258162
#>     Attrib V19    0.13465752355082494
#>     Attrib V2    0.014339597705676672
#>     Attrib V20    0.05183564760994514
#>     Attrib V21    0.1163472509949539
#>     Attrib V22    0.21491380328196347
#>     Attrib V23    0.26263377435920493
#>     Attrib V24    0.13715944061164975
#>     Attrib V25    -0.17315064309378445
#>     Attrib V26    -0.5746110917247735
#>     Attrib V27    -0.2787007622767884
#>     Attrib V28    -0.18648416849313498
#>     Attrib V29    -0.2782993688580801
#>     Attrib V3    -0.0652548055828108
#>     Attrib V30    -0.08484634922916152
#>     Attrib V31    -0.4541867873132684
#>     Attrib V32    0.010649720128073973
#>     Attrib V33    0.2964939250363566
#>     Attrib V34    0.1199437110497819
#>     Attrib V35    -0.14124252464892428
#>     Attrib V36    -0.27220019882662816
#>     Attrib V37    -0.32249241408458024
#>     Attrib V38    0.20718773429449253
#>     Attrib V39    0.24634555811866038
#>     Attrib V4    0.194549207263298
#>     Attrib V40    -0.06840211808680112
#>     Attrib V41    0.02064295478391047
#>     Attrib V42    -0.010764639263687877
#>     Attrib V43    0.008708401313353875
#>     Attrib V44    0.0579885690602438
#>     Attrib V45    0.10430856182982115
#>     Attrib V46    -0.01463845744919253
#>     Attrib V47    -0.11317410731644469
#>     Attrib V48    0.008391150426120784
#>     Attrib V49    0.04228130651640316
#>     Attrib V5    0.01038360196909453
#>     Attrib V50    -0.14040033211044847
#>     Attrib V51    0.09633731836392219
#>     Attrib V52    0.21442152364423292
#>     Attrib V53    0.013838497819510746
#>     Attrib V54    0.41772930147548704
#>     Attrib V55    0.068366678278427
#>     Attrib V56    -0.014982815559963432
#>     Attrib V57    0.4147133568992709
#>     Attrib V58    0.22028380552759758
#>     Attrib V59    0.41879107353760087
#>     Attrib V6    0.042708772361986266
#>     Attrib V60    0.4526827117249539
#>     Attrib V7    0.15938670139866112
#>     Attrib V8    -0.0023013600046692087
#>     Attrib V9    0.21844454067480318
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.15783859567691064
#>     Attrib V1    0.151279579337382
#>     Attrib V10    -0.13900407503728657
#>     Attrib V11    0.029744976965727435
#>     Attrib V12    0.15102223552224286
#>     Attrib V13    -0.30639897658343196
#>     Attrib V14    -0.07748851768303439
#>     Attrib V15    0.08711928731289804
#>     Attrib V16    0.06556920138134306
#>     Attrib V17    0.003925049483424567
#>     Attrib V18    0.11811860515178169
#>     Attrib V19    0.13103434379526221
#>     Attrib V2    0.04536584990538941
#>     Attrib V20    -0.001342953449881499
#>     Attrib V21    0.09659793243122253
#>     Attrib V22    0.2525865535632769
#>     Attrib V23    0.28864206442841317
#>     Attrib V24    0.11538243705080832
#>     Attrib V25    -0.31871149972518154
#>     Attrib V26    -0.7301163711443344
#>     Attrib V27    -0.5350685680669223
#>     Attrib V28    -0.4070401505774316
#>     Attrib V29    -0.568461049227375
#>     Attrib V3    -0.22459264249217792
#>     Attrib V30    -0.1795783867773488
#>     Attrib V31    -0.5030593843615261
#>     Attrib V32    0.02783559559307199
#>     Attrib V33    0.47960108301950194
#>     Attrib V34    0.14772230422326835
#>     Attrib V35    -0.13569613918269516
#>     Attrib V36    -0.41607231883797174
#>     Attrib V37    -0.5247266240488643
#>     Attrib V38    0.17366556363735436
#>     Attrib V39    0.21761926580933416
#>     Attrib V4    0.1352798968351259
#>     Attrib V40    -0.12960625507106852
#>     Attrib V41    -0.06255169909881478
#>     Attrib V42    -0.08967046021517391
#>     Attrib V43    0.020473494490614023
#>     Attrib V44    0.07241864210929728
#>     Attrib V45    0.10983660502217511
#>     Attrib V46    -0.03579051915435196
#>     Attrib V47    -0.1977210552277749
#>     Attrib V48    0.07426693632363227
#>     Attrib V49    0.03631188170302503
#>     Attrib V5    -0.13610726793249447
#>     Attrib V50    -0.13934583283277885
#>     Attrib V51    0.12603825325735052
#>     Attrib V52    0.2723591286926035
#>     Attrib V53    -0.0632993261114859
#>     Attrib V54    0.6399685457845763
#>     Attrib V55    0.18193248355552302
#>     Attrib V56    7.913947868598893E-5
#>     Attrib V57    0.5246686535064804
#>     Attrib V58    0.3466445788944804
#>     Attrib V59    0.41853629374067913
#>     Attrib V6    0.014336096337895643
#>     Attrib V60    0.499063609500582
#>     Attrib V7    0.17984729934385785
#>     Attrib V8    0.04360554963576023
#>     Attrib V9    0.25413371539932933
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.42528732244963596
#>     Attrib V1    0.007295995379818809
#>     Attrib V10    -0.025937507388491616
#>     Attrib V11    -0.3573290500552934
#>     Attrib V12    -0.5935537936620969
#>     Attrib V13    0.3693635607541286
#>     Attrib V14    0.25927309501209717
#>     Attrib V15    0.2213399726049231
#>     Attrib V16    0.01245324375237013
#>     Attrib V17    0.176568067256651
#>     Attrib V18    -0.20891200724506934
#>     Attrib V19    -0.35686557490474946
#>     Attrib V2    0.09061836257366622
#>     Attrib V20    0.04050121132334905
#>     Attrib V21    -0.1726044072644665
#>     Attrib V22    -0.5368837504914327
#>     Attrib V23    -0.6302020833938867
#>     Attrib V24    -0.3840696820198778
#>     Attrib V25    0.3554073282164737
#>     Attrib V26    1.1314948686778148
#>     Attrib V27    0.6671797127433646
#>     Attrib V28    0.45742393064098
#>     Attrib V29    0.7692919373707376
#>     Attrib V3    0.4345767044919917
#>     Attrib V30    0.14783872481603078
#>     Attrib V31    0.8191858892818656
#>     Attrib V32    -0.23693850648522616
#>     Attrib V33    -0.8400485388482508
#>     Attrib V34    -0.18812084657742356
#>     Attrib V35    0.3607461272178745
#>     Attrib V36    0.8370542775495524
#>     Attrib V37    1.1106578882112743
#>     Attrib V38    -0.4429450543290794
#>     Attrib V39    -0.5399127182072697
#>     Attrib V4    -0.08843177200573131
#>     Attrib V40    0.1894052814086881
#>     Attrib V41    -0.03563067123506004
#>     Attrib V42    0.059469905189842825
#>     Attrib V43    -0.13880437406998755
#>     Attrib V44    -0.15548043574689766
#>     Attrib V45    -0.2975804428964709
#>     Attrib V46    0.07549360057454806
#>     Attrib V47    0.14561308333106068
#>     Attrib V48    -0.22809829655848052
#>     Attrib V49    -0.07664170401729428
#>     Attrib V5    0.23704403029084167
#>     Attrib V50    0.5209240797760324
#>     Attrib V51    -0.31518171934988054
#>     Attrib V52    -0.7970969273709636
#>     Attrib V53    0.14287111880921144
#>     Attrib V54    -0.7529168663509954
#>     Attrib V55    0.10127530246225164
#>     Attrib V56    0.29787043269114155
#>     Attrib V57    -0.514926257788925
#>     Attrib V58    -0.35602523490997734
#>     Attrib V59    -0.4011493672703881
#>     Attrib V6    -0.13172554303722367
#>     Attrib V60    -0.582410232753182
#>     Attrib V7    -0.4205254589628244
#>     Attrib V8    -0.01572986898791485
#>     Attrib V9    -0.629536557346612
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.12027979246788036
#>     Attrib V1    0.09201277586260431
#>     Attrib V10    0.020789941538452737
#>     Attrib V11    0.036947057047575685
#>     Attrib V12    0.09336641430683562
#>     Attrib V13    -0.029192184974755894
#>     Attrib V14    0.004630402233822139
#>     Attrib V15    0.006358744434968787
#>     Attrib V16    0.07801797657336036
#>     Attrib V17    0.030832859904775953
#>     Attrib V18    0.050049252908448784
#>     Attrib V19    0.022220250943306378
#>     Attrib V2    0.027261664097730127
#>     Attrib V20    -0.08446798481899907
#>     Attrib V21    -0.07216099883842196
#>     Attrib V22    -0.022854370083251672
#>     Attrib V23    -0.023610034002412256
#>     Attrib V24    0.03677038729661149
#>     Attrib V25    -0.06646415855884437
#>     Attrib V26    -0.22206567353724743
#>     Attrib V27    -0.09596306454079177
#>     Attrib V28    -0.01734316843512462
#>     Attrib V29    -0.12084246048127686
#>     Attrib V3    0.05089664302836959
#>     Attrib V30    -0.05390408078798976
#>     Attrib V31    -0.15395201595077268
#>     Attrib V32    0.05295798667097599
#>     Attrib V33    0.12139160733538742
#>     Attrib V34    0.08543291557874545
#>     Attrib V35    -0.019694120102846917
#>     Attrib V36    -0.08074021361465841
#>     Attrib V37    -0.07605448764816353
#>     Attrib V38    0.10539033947534474
#>     Attrib V39    0.09540031805818891
#>     Attrib V4    0.17782635807303465
#>     Attrib V40    -0.055408750714436523
#>     Attrib V41    0.01713560526861421
#>     Attrib V42    0.019708307726289388
#>     Attrib V43    0.024142771648807043
#>     Attrib V44    0.045966716649431014
#>     Attrib V45    0.11022006715137123
#>     Attrib V46    0.042316523676295584
#>     Attrib V47    -0.0367141861014869
#>     Attrib V48    0.048276794146786324
#>     Attrib V49    0.03458647484394838
#>     Attrib V5    0.06850450106626273
#>     Attrib V50    0.023972566346868295
#>     Attrib V51    0.07709935354469728
#>     Attrib V52    0.16500242014269656
#>     Attrib V53    0.10989450577058442
#>     Attrib V54    0.17011872340310696
#>     Attrib V55    0.10231284767076769
#>     Attrib V56    0.051132607617999745
#>     Attrib V57    0.29441288650801556
#>     Attrib V58    0.19137040439669295
#>     Attrib V59    0.17005120310193178
#>     Attrib V6    0.05789624982701636
#>     Attrib V60    0.23953586282640846
#>     Attrib V7    0.048486920345019356
#>     Attrib V8    0.0264611118389546
#>     Attrib V9    0.19143861319419547
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.004981473631625793
#>     Attrib V1    0.12297377795287431
#>     Attrib V10    0.03456322031687262
#>     Attrib V11    0.07934492121669001
#>     Attrib V12    0.09546366747782047
#>     Attrib V13    -0.14491423282917013
#>     Attrib V14    -0.012661725083297519
#>     Attrib V15    0.0743654518561069
#>     Attrib V16    0.04826053330292747
#>     Attrib V17    -0.0035863465287736514
#>     Attrib V18    0.033451588483020975
#>     Attrib V19    0.06398432334068445
#>     Attrib V2    0.11548824205731785
#>     Attrib V20    -0.05089681849380443
#>     Attrib V21    -0.022319132630000366
#>     Attrib V22    0.09821647423090928
#>     Attrib V23    0.033830136086724964
#>     Attrib V24    0.04642899616436636
#>     Attrib V25    -0.1700128826994001
#>     Attrib V26    -0.34016169280730113
#>     Attrib V27    -0.1452382719042119
#>     Attrib V28    -0.07382844130476968
#>     Attrib V29    -0.20430378675413063
#>     Attrib V3    -0.0318089555040906
#>     Attrib V30    -0.004465850341904098
#>     Attrib V31    -0.1695737679559466
#>     Attrib V32    0.007286280498054653
#>     Attrib V33    0.23989627904058092
#>     Attrib V34    0.051064985157864264
#>     Attrib V35    0.00913342311369032
#>     Attrib V36    -0.13558008807973862
#>     Attrib V37    -0.1886109734717678
#>     Attrib V38    0.19415736526467775
#>     Attrib V39    0.15685384013278103
#>     Attrib V4    0.18108550353601005
#>     Attrib V40    -0.09504851315305982
#>     Attrib V41    0.0061711257935236985
#>     Attrib V42    -0.06663573342555518
#>     Attrib V43    0.06755453912398411
#>     Attrib V44    0.11429776895425782
#>     Attrib V45    0.16684136783060394
#>     Attrib V46    -0.024699563136236787
#>     Attrib V47    -0.12879439581519794
#>     Attrib V48    0.10502080775824213
#>     Attrib V49    0.03472193364361843
#>     Attrib V5    0.028896930045903515
#>     Attrib V50    -0.04269549399444225
#>     Attrib V51    0.03769154703937054
#>     Attrib V52    0.14507890913764876
#>     Attrib V53    0.012328856699071283
#>     Attrib V54    0.2524411924708307
#>     Attrib V55    0.11742411275297077
#>     Attrib V56    0.027023629931214797
#>     Attrib V57    0.3842654266654548
#>     Attrib V58    0.1336251499011814
#>     Attrib V59    0.20498526603882797
#>     Attrib V6    0.04322842817452267
#>     Attrib V60    0.27694200578289724
#>     Attrib V7    0.03858444501379306
#>     Attrib V8    0.08828575300663255
#>     Attrib V9    0.21340629639340244
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1298556671407589
#>     Attrib V1    0.11305597363613257
#>     Attrib V10    0.03876613837707627
#>     Attrib V11    0.06757724031742784
#>     Attrib V12    0.10018231447835606
#>     Attrib V13    -0.07683415791275454
#>     Attrib V14    0.022499607505016485
#>     Attrib V15    -0.006212384151651128
#>     Attrib V16    0.03516504214668631
#>     Attrib V17    -0.04154827420637085
#>     Attrib V18    0.06754812332431401
#>     Attrib V19    -0.016294558568997277
#>     Attrib V2    0.07699854057990468
#>     Attrib V20    -0.019389209270182426
#>     Attrib V21    0.018462330662379192
#>     Attrib V22    0.036204473371871916
#>     Attrib V23    0.05413905973110461
#>     Attrib V24    0.005350519251529019
#>     Attrib V25    -0.08682725649967715
#>     Attrib V26    -0.22104787066786008
#>     Attrib V27    -0.09042838950975214
#>     Attrib V28    -0.04553739107270688
#>     Attrib V29    -0.13980436323468023
#>     Attrib V3    0.0600189085857292
#>     Attrib V30    -0.056064296079574055
#>     Attrib V31    -0.19445289911973246
#>     Attrib V32    0.022022517310506834
#>     Attrib V33    0.1532357658062395
#>     Attrib V34    0.0869722883298472
#>     Attrib V35    -0.03608504004228361
#>     Attrib V36    -0.021486139901023375
#>     Attrib V37    -0.13399265413828315
#>     Attrib V38    0.11382461965463345
#>     Attrib V39    0.14702301017161515
#>     Attrib V4    0.1505534925169446
#>     Attrib V40    -0.070076989315247
#>     Attrib V41    -0.041381238871434536
#>     Attrib V42    -0.03402328398431358
#>     Attrib V43    0.029749608562051954
#>     Attrib V44    0.12795167822360906
#>     Attrib V45    0.08029763026109603
#>     Attrib V46    0.009284039521373647
#>     Attrib V47    -9.224450010991282E-4
#>     Attrib V48    0.0785140627274851
#>     Attrib V49    0.09495278176416945
#>     Attrib V5    0.05637151322718502
#>     Attrib V50    -0.06095825907539914
#>     Attrib V51    0.11422886441281416
#>     Attrib V52    0.1439834744589662
#>     Attrib V53    0.05563040431385786
#>     Attrib V54    0.18499649257360326
#>     Attrib V55    0.09800530926311966
#>     Attrib V56    0.05640044152509533
#>     Attrib V57    0.2425668288928968
#>     Attrib V58    0.15575103606824778
#>     Attrib V59    0.2509814455591401
#>     Attrib V6    0.007225349196764279
#>     Attrib V60    0.2936031898411898
#>     Attrib V7    0.10061468608578886
#>     Attrib V8    0.08289488885442303
#>     Attrib V9    0.1976442829883335
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.2752417579509524
#>     Attrib V1    -0.19062630882366324
#>     Attrib V10    0.10729225301157991
#>     Attrib V11    0.33152359668549636
#>     Attrib V12    0.7130184674050959
#>     Attrib V13    -0.18044026718432127
#>     Attrib V14    -0.20358920140763903
#>     Attrib V15    -0.23418824078324785
#>     Attrib V16    -0.09663629883235286
#>     Attrib V17    -0.2527004561228359
#>     Attrib V18    -0.08463314168376651
#>     Attrib V19    0.004018425972213597
#>     Attrib V2    -0.07690693056475034
#>     Attrib V20    -0.3903648017165288
#>     Attrib V21    -0.3348979435461216
#>     Attrib V22    0.031066186370804355
#>     Attrib V23    0.12599451206773915
#>     Attrib V24    0.1480926717018767
#>     Attrib V25    -0.001557488070002541
#>     Attrib V26    -0.31537645478287457
#>     Attrib V27    0.09303148295638107
#>     Attrib V28    0.29255278992185324
#>     Attrib V29    -0.08560885429952
#>     Attrib V3    -0.33560152455788245
#>     Attrib V30    0.14179376783205777
#>     Attrib V31    -0.26417642501703786
#>     Attrib V32    0.2893462365396207
#>     Attrib V33    0.47240233910434726
#>     Attrib V34    0.11882256507394591
#>     Attrib V35    -0.15573711846134294
#>     Attrib V36    -0.44889482105324663
#>     Attrib V37    -0.6366352022370672
#>     Attrib V38    0.11412204911198148
#>     Attrib V39    0.2823614467844491
#>     Attrib V4    0.23278154708118592
#>     Attrib V40    -0.11088754632317122
#>     Attrib V41    -0.004923717816274418
#>     Attrib V42    -0.1800912181942009
#>     Attrib V43    -0.030247192477289523
#>     Attrib V44    0.10097690755224095
#>     Attrib V45    0.3193817996346129
#>     Attrib V46    0.04119843473817497
#>     Attrib V47    -0.05530910268498614
#>     Attrib V48    0.37918276171673415
#>     Attrib V49    0.26954407299600597
#>     Attrib V5    -0.08791597899649044
#>     Attrib V50    -0.5265779989865249
#>     Attrib V51    0.1384662726292019
#>     Attrib V52    0.6486374131023093
#>     Attrib V53    0.014403080553572725
#>     Attrib V54    0.24021721729465043
#>     Attrib V55    -0.17288399015738304
#>     Attrib V56    -0.3249110336063147
#>     Attrib V57    0.2537457916621225
#>     Attrib V58    0.10992060444786501
#>     Attrib V59    0.20590795998935488
#>     Attrib V6    0.0020532393222442605
#>     Attrib V60    0.31627858691237154
#>     Attrib V7    0.02158070997567185
#>     Attrib V8    -0.09148219225152981
#>     Attrib V9    0.48873831665205714
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.16156253463621845
#>     Attrib V1    -0.11512750395068777
#>     Attrib V10    0.3678737751251931
#>     Attrib V11    0.5135667195866865
#>     Attrib V12    0.9917844630498435
#>     Attrib V13    -0.00855279329920735
#>     Attrib V14    -0.2585307874974037
#>     Attrib V15    -0.4852466699300659
#>     Attrib V16    -0.26865530497545886
#>     Attrib V17    -0.2853167479623118
#>     Attrib V18    0.06353052822943472
#>     Attrib V19    0.1720495816084897
#>     Attrib V2    -0.11783966646117675
#>     Attrib V20    -0.24636055683524932
#>     Attrib V21    -0.15078837767654268
#>     Attrib V22    0.4091888825204678
#>     Attrib V23    0.5458682845915385
#>     Attrib V24    0.3411045236712899
#>     Attrib V25    0.26978964162799063
#>     Attrib V26    -0.027734920915322498
#>     Attrib V27    0.44946684102333256
#>     Attrib V28    0.719943255953026
#>     Attrib V29    0.27751396680273394
#>     Attrib V3    -0.33410577731201224
#>     Attrib V30    0.34427095362672977
#>     Attrib V31    -0.4295724725083404
#>     Attrib V32    0.08015570448165944
#>     Attrib V33    0.24356931969513212
#>     Attrib V34    -0.04404102004286735
#>     Attrib V35    -0.13640915444445234
#>     Attrib V36    -0.20704695383176092
#>     Attrib V37    -0.3038743567625376
#>     Attrib V38    0.39157178257246955
#>     Attrib V39    0.5127173845782412
#>     Attrib V4    0.28802576753221537
#>     Attrib V40    -0.07039812147092214
#>     Attrib V41    0.154837886268111
#>     Attrib V42    -0.2221478425091672
#>     Attrib V43    0.16601183716961176
#>     Attrib V44    0.44266130721026553
#>     Attrib V45    0.44243367726723515
#>     Attrib V46    0.06878058703795342
#>     Attrib V47    0.08052636644079718
#>     Attrib V48    0.49527820317362625
#>     Attrib V49    0.3109600716490686
#>     Attrib V5    0.04763758562804065
#>     Attrib V50    -0.5814877666686797
#>     Attrib V51    0.24121109490151757
#>     Attrib V52    0.7251010649724859
#>     Attrib V53    -0.11491129329632951
#>     Attrib V54    0.0873326231788285
#>     Attrib V55    -0.5033859144556836
#>     Attrib V56    -0.30593545862794663
#>     Attrib V57    -0.005032852870028476
#>     Attrib V58    -0.14057021623763297
#>     Attrib V59    0.1502540435767244
#>     Attrib V6    0.022886531557444478
#>     Attrib V60    0.4276656280890146
#>     Attrib V7    -0.04602562814882622
#>     Attrib V8    -0.32119628787058313
#>     Attrib V9    0.7309519246874818
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.25319327226370736
#>     Attrib V1    -0.09352517646554528
#>     Attrib V10    -0.2166065461893311
#>     Attrib V11    -0.4399752612073006
#>     Attrib V12    -0.6810900624784252
#>     Attrib V13    0.22409379944781363
#>     Attrib V14    0.27724234239948425
#>     Attrib V15    0.2577873800454788
#>     Attrib V16    0.12366401535701492
#>     Attrib V17    0.19357718412521538
#>     Attrib V18    -0.2809875567093386
#>     Attrib V19    -0.539378587447358
#>     Attrib V2    0.07958594756120384
#>     Attrib V20    -0.15078933431184421
#>     Attrib V21    -0.303097813042997
#>     Attrib V22    -0.9773114194575316
#>     Attrib V23    -1.0656575835686886
#>     Attrib V24    -0.5735349282538602
#>     Attrib V25    0.25052825264804035
#>     Attrib V26    1.1067640063086874
#>     Attrib V27    0.7330167859474768
#>     Attrib V28    0.32579315010515647
#>     Attrib V29    0.6437890340479447
#>     Attrib V3    0.4064399119112019
#>     Attrib V30    0.055175356966633574
#>     Attrib V31    0.9477147853517401
#>     Attrib V32    -0.20136639452765087
#>     Attrib V33    -0.8274239206453151
#>     Attrib V34    -0.1650533194778661
#>     Attrib V35    0.2846414234580278
#>     Attrib V36    0.7274682222937849
#>     Attrib V37    0.9995981591506924
#>     Attrib V38    -0.6601025516753708
#>     Attrib V39    -0.667084695763052
#>     Attrib V4    -0.06543845199762185
#>     Attrib V40    0.259718985257956
#>     Attrib V41    -0.01068377478860682
#>     Attrib V42    4.222432902829669E-4
#>     Attrib V43    -0.20239801402922447
#>     Attrib V44    -0.2465048737348838
#>     Attrib V45    -0.4623067690843893
#>     Attrib V46    -0.012900482061282881
#>     Attrib V47    0.007309470307340005
#>     Attrib V48    -0.19305744972203628
#>     Attrib V49    -0.09513872644266111
#>     Attrib V5    0.21216610831843133
#>     Attrib V50    0.43160407200329787
#>     Attrib V51    -0.5340321686921278
#>     Attrib V52    -0.7559822219198659
#>     Attrib V53    0.24816281701784487
#>     Attrib V54    -0.7314585992431025
#>     Attrib V55    0.2658231753002241
#>     Attrib V56    0.1603525931286908
#>     Attrib V57    -0.2053833917233406
#>     Attrib V58    -0.2920932234460963
#>     Attrib V59    -0.31224584016511864
#>     Attrib V6    -0.08142713110454328
#>     Attrib V60    -0.5790435563788533
#>     Attrib V7    -0.4168232807421224
#>     Attrib V8    0.023455904227284503
#>     Attrib V9    -0.7495427825217448
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.03917791042622505
#>     Attrib V1    0.15591135040045903
#>     Attrib V10    -0.010642294066666105
#>     Attrib V11    0.052143417906251675
#>     Attrib V12    0.10495045669792279
#>     Attrib V13    -0.1392141575981473
#>     Attrib V14    0.037806972167411336
#>     Attrib V15    0.00372338165893836
#>     Attrib V16    0.10042467627609052
#>     Attrib V17    -7.193945225428992E-4
#>     Attrib V18    0.019925551816045252
#>     Attrib V19    0.004633614158654683
#>     Attrib V2    0.09148992480335631
#>     Attrib V20    -0.03894330499838035
#>     Attrib V21    -0.034307734558660874
#>     Attrib V22    -0.011936043354767332
#>     Attrib V23    -0.018190390087280364
#>     Attrib V24    0.04633095547694918
#>     Attrib V25    -0.1817231115395484
#>     Attrib V26    -0.3736586115015279
#>     Attrib V27    -0.2133634140658813
#>     Attrib V28    -0.16635552882100335
#>     Attrib V29    -0.18305911120201102
#>     Attrib V3    -0.026351849755574527
#>     Attrib V30    -0.06714716658366754
#>     Attrib V31    -0.181605130422373
#>     Attrib V32    0.02660333664745623
#>     Attrib V33    0.1691114350362774
#>     Attrib V34    0.06834257071397881
#>     Attrib V35    -0.03460132675884606
#>     Attrib V36    -0.14037057423700003
#>     Attrib V37    -0.20825827426267451
#>     Attrib V38    0.0910123135699271
#>     Attrib V39    0.08182935010356236
#>     Attrib V4    0.20522459415537497
#>     Attrib V40    -0.056610061684810926
#>     Attrib V41    -0.06246626382557357
#>     Attrib V42    -0.07050036812387332
#>     Attrib V43    0.06435325586330842
#>     Attrib V44    0.05274446990554401
#>     Attrib V45    0.06490089879261336
#>     Attrib V46    0.03599569154872368
#>     Attrib V47    -0.11062963286836426
#>     Attrib V48    0.10384187195415835
#>     Attrib V49    0.06511546094445836
#>     Attrib V5    0.04959411345750572
#>     Attrib V50    -0.038204699639049766
#>     Attrib V51    0.053560602211182314
#>     Attrib V52    0.1938463751577626
#>     Attrib V53    0.045577537044316295
#>     Attrib V54    0.3169104297002278
#>     Attrib V55    0.15566916560238458
#>     Attrib V56    0.06062706822571281
#>     Attrib V57    0.38433696377769744
#>     Attrib V58    0.25961421442303334
#>     Attrib V59    0.2947859905207764
#>     Attrib V6    0.04730423118796673
#>     Attrib V60    0.33365159442613695
#>     Attrib V7    0.09517754929404286
#>     Attrib V8    0.004018848359516429
#>     Attrib V9    0.1931170686860839
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.17526110442229006
#>     Attrib V1    0.14883629593091283
#>     Attrib V10    -0.24485488233901007
#>     Attrib V11    -0.043425125093930234
#>     Attrib V12    0.14398349288250473
#>     Attrib V13    -0.2116962287027037
#>     Attrib V14    -0.0021936197885240264
#>     Attrib V15    0.07434724557035904
#>     Attrib V16    0.06412841649583881
#>     Attrib V17    0.06484928773945986
#>     Attrib V18    0.15434972657798665
#>     Attrib V19    0.18684834910840475
#>     Attrib V2    0.0029970623711638687
#>     Attrib V20    0.02854335267214189
#>     Attrib V21    0.12876801389246448
#>     Attrib V22    0.3242223130351195
#>     Attrib V23    0.350405230764171
#>     Attrib V24    0.153558163834108
#>     Attrib V25    -0.3330031614914872
#>     Attrib V26    -0.7686921876616084
#>     Attrib V27    -0.5650569027749005
#>     Attrib V28    -0.4010208202472932
#>     Attrib V29    -0.5488259521812576
#>     Attrib V3    -0.16149318317255096
#>     Attrib V30    -0.22380499566916764
#>     Attrib V31    -0.5784273336489283
#>     Attrib V32    -0.03149543000282337
#>     Attrib V33    0.4534765470320637
#>     Attrib V34    0.14068967351788592
#>     Attrib V35    -0.13317165096264344
#>     Attrib V36    -0.3645599624386613
#>     Attrib V37    -0.4472767143338264
#>     Attrib V38    0.23623698536087726
#>     Attrib V39    0.20712178133961903
#>     Attrib V4    0.18057069467138126
#>     Attrib V40    -0.1471617919603436
#>     Attrib V41    -0.018831357309758313
#>     Attrib V42    -0.005551847801666395
#>     Attrib V43    0.1287489170048985
#>     Attrib V44    0.02623957978506693
#>     Attrib V45    0.1584969047045251
#>     Attrib V46    -0.08122273763754007
#>     Attrib V47    -0.20181829285534708
#>     Attrib V48    -0.07157920282205751
#>     Attrib V49    -0.03898723422159559
#>     Attrib V5    -0.09395548391685977
#>     Attrib V50    -0.13175115270404908
#>     Attrib V51    0.1212347565478323
#>     Attrib V52    0.3154490217826869
#>     Attrib V53    0.01898226082188684
#>     Attrib V54    0.6437458507083731
#>     Attrib V55    0.18542618126036992
#>     Attrib V56    0.052621910714479976
#>     Attrib V57    0.4813871638860402
#>     Attrib V58    0.3421693382753123
#>     Attrib V59    0.5096222255282828
#>     Attrib V6    0.0046966137971423206
#>     Attrib V60    0.4842650096855015
#>     Attrib V7    0.17503787861088335
#>     Attrib V8    0.04784978483768315
#>     Attrib V9    0.21240315492515024
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1619024732243665
#>     Attrib V1    0.05190083293578473
#>     Attrib V10    -0.019712376450411913
#>     Attrib V11    -0.06223200000730294
#>     Attrib V12    -0.07877970308909109
#>     Attrib V13    0.020044742825027627
#>     Attrib V14    0.07376660368504175
#>     Attrib V15    0.1484865394435085
#>     Attrib V16    0.09066667648981731
#>     Attrib V17    0.17551330348457295
#>     Attrib V18    0.032181571999225445
#>     Attrib V19    -0.0211043505900025
#>     Attrib V2    0.03544289440874689
#>     Attrib V20    -0.01949412846667501
#>     Attrib V21    -0.015173224118816617
#>     Attrib V22    -0.042477971045131575
#>     Attrib V23    -0.009491147810814898
#>     Attrib V24    -0.07328848950691293
#>     Attrib V25    0.01962527221494067
#>     Attrib V26    0.07226228024989696
#>     Attrib V27    -0.09417603979469898
#>     Attrib V28    -0.08043493061568842
#>     Attrib V29    -0.04067192427575392
#>     Attrib V3    0.0758796504206594
#>     Attrib V30    -0.03648636998657592
#>     Attrib V31    0.08571337743973914
#>     Attrib V32    0.0542724234380677
#>     Attrib V33    -0.05661039045411817
#>     Attrib V34    0.04026726857133363
#>     Attrib V35    0.09200835606411704
#>     Attrib V36    0.20627113838633776
#>     Attrib V37    0.16291299620481772
#>     Attrib V38    -0.032236163319691
#>     Attrib V39    -0.025079969363079286
#>     Attrib V4    0.03995523798853652
#>     Attrib V40    0.17995709281649783
#>     Attrib V41    0.12508733796106564
#>     Attrib V42    0.09383015899179548
#>     Attrib V43    0.11546281419662624
#>     Attrib V44    0.012142262518974043
#>     Attrib V45    -0.0825352972492832
#>     Attrib V46    0.05908292701811285
#>     Attrib V47    0.11809118536952828
#>     Attrib V48    0.00510824831748204
#>     Attrib V49    -0.0045549493327574605
#>     Attrib V5    0.06307344733198747
#>     Attrib V50    0.17325404277757803
#>     Attrib V51    0.06372719901891469
#>     Attrib V52    -0.028054455624334947
#>     Attrib V53    0.01160238543608289
#>     Attrib V54    -0.03495346429595577
#>     Attrib V55    0.08999498272949708
#>     Attrib V56    0.17413104523593495
#>     Attrib V57    0.07370742801533887
#>     Attrib V58    0.08397257783594277
#>     Attrib V59    0.03856884331717363
#>     Attrib V6    0.10824543071521499
#>     Attrib V60    0.005132410332263481
#>     Attrib V7    -0.015138826792569294
#>     Attrib V8    0.10562352759120741
#>     Attrib V9    0.011972930466669878
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    -0.39135999359631213
#>     Attrib V1    -0.2768835306702319
#>     Attrib V10    0.8535063209557646
#>     Attrib V11    1.2679088675870964
#>     Attrib V12    1.9122415998128401
#>     Attrib V13    0.6034831831654551
#>     Attrib V14    -0.1468150854514956
#>     Attrib V15    -0.9014105188763373
#>     Attrib V16    -0.3134626806736414
#>     Attrib V17    -0.42204733541999834
#>     Attrib V18    0.10647817257376649
#>     Attrib V19    0.2189080921352201
#>     Attrib V2    0.13496222341248482
#>     Attrib V20    -0.3427256723776917
#>     Attrib V21    -0.3368641413325931
#>     Attrib V22    0.7047746619899374
#>     Attrib V23    0.7847122254719552
#>     Attrib V24    0.25104956068308043
#>     Attrib V25    0.913765625425651
#>     Attrib V26    1.0300920956126083
#>     Attrib V27    1.5825059750174495
#>     Attrib V28    2.258429510242297
#>     Attrib V29    1.6447056205363992
#>     Attrib V3    0.1280168430942256
#>     Attrib V30    0.7819545256349038
#>     Attrib V31    -0.7485429864570057
#>     Attrib V32    -0.21363223772794387
#>     Attrib V33    -0.6363515031752849
#>     Attrib V34    -0.7586186178423847
#>     Attrib V35    -0.5499744152215746
#>     Attrib V36    -0.48232784113009736
#>     Attrib V37    -0.44092030578774427
#>     Attrib V38    -0.11123570562390149
#>     Attrib V39    0.9014966168034417
#>     Attrib V4    1.0321230943772706
#>     Attrib V40    0.27174483924534004
#>     Attrib V41    0.8451840610299705
#>     Attrib V42    0.019158097235926444
#>     Attrib V43    0.20080456417314185
#>     Attrib V44    0.7257575523867279
#>     Attrib V45    0.574417261603216
#>     Attrib V46    0.4231110808851902
#>     Attrib V47    0.794886775087571
#>     Attrib V48    1.1691216345728512
#>     Attrib V49    1.00721410616753
#>     Attrib V5    0.6186543698065875
#>     Attrib V50    -0.8297127016745902
#>     Attrib V51    0.15466621775517286
#>     Attrib V52    1.525075803686866
#>     Attrib V53    0.393472878324862
#>     Attrib V54    -0.5241680996488459
#>     Attrib V55    -0.7956392317774339
#>     Attrib V56    -0.39629583834273546
#>     Attrib V57    -0.25224000371409944
#>     Attrib V58    -0.2936861186331735
#>     Attrib V59    0.2106798040134635
#>     Attrib V6    -0.15296729076684187
#>     Attrib V60    0.4353140561686434
#>     Attrib V7    -0.786086075914394
#>     Attrib V8    -0.4607128091762403
#>     Attrib V9    1.1269431509724137
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.28056330695592385
#>     Attrib V1    0.12071076555205347
#>     Attrib V10    -0.09507611918913707
#>     Attrib V11    -0.28065426787238473
#>     Attrib V12    -0.4325709895869813
#>     Attrib V13    0.0935668322000355
#>     Attrib V14    0.21884830204457797
#>     Attrib V15    0.21147261419389007
#>     Attrib V16    0.12609006535399578
#>     Attrib V17    0.26637648906158323
#>     Attrib V18    0.013724269569975522
#>     Attrib V19    0.06042638102680246
#>     Attrib V2    0.06481180533050704
#>     Attrib V20    0.25318060739897574
#>     Attrib V21    0.21198301270462866
#>     Attrib V22    -0.031255422177466734
#>     Attrib V23    -0.06739654973934196
#>     Attrib V24    0.008947224280001607
#>     Attrib V25    0.18927321678652884
#>     Attrib V26    0.30900994402105625
#>     Attrib V27    0.015349094156464058
#>     Attrib V28    -0.23871980936396447
#>     Attrib V29    -0.09451134442901352
#>     Attrib V3    0.1765057755592646
#>     Attrib V30    -0.2438691004218934
#>     Attrib V31    0.22463041591262967
#>     Attrib V32    -0.13161447847958205
#>     Attrib V33    -0.2578258835431264
#>     Attrib V34    -0.09238765358244325
#>     Attrib V35    0.1488148544857051
#>     Attrib V36    0.29122188568657803
#>     Attrib V37    0.36506038272825253
#>     Attrib V38    -0.3028844233638232
#>     Attrib V39    -0.3505317925104553
#>     Attrib V4    -0.04369620006601441
#>     Attrib V40    0.043782165233084674
#>     Attrib V41    -0.06659969138656147
#>     Attrib V42    0.09817942235096923
#>     Attrib V43    -0.06658451952756432
#>     Attrib V44    -0.1681057921532073
#>     Attrib V45    -0.2946001864341577
#>     Attrib V46    -0.07763633689831063
#>     Attrib V47    -0.040089719170864284
#>     Attrib V48    -0.2109401640149485
#>     Attrib V49    -0.17213197936900906
#>     Attrib V5    0.10664283056711803
#>     Attrib V50    0.36973461978592703
#>     Attrib V51    -0.12037033267667702
#>     Attrib V52    -0.478492727849325
#>     Attrib V53    0.03852022901335163
#>     Attrib V54    -0.143395585279237
#>     Attrib V55    0.15462942980619165
#>     Attrib V56    0.2723086726594956
#>     Attrib V57    -0.004524234820798
#>     Attrib V58    0.030127881876808423
#>     Attrib V59    -0.02311778295194578
#>     Attrib V6    0.06416440999653704
#>     Attrib V60    -0.09190657280264419
#>     Attrib V7    -0.055095735313700496
#>     Attrib V8    0.0732845681510953
#>     Attrib V9    -0.3518020936379313
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3386515429223658
#>     Attrib V1    0.10836851492966774
#>     Attrib V10    -1.8676034475202724E-5
#>     Attrib V11    0.17297394925540754
#>     Attrib V12    0.4183628460689937
#>     Attrib V13    -0.25703083598768905
#>     Attrib V14    -0.21502100768045193
#>     Attrib V15    -0.11295642694134787
#>     Attrib V16    -2.2114592260610857E-4
#>     Attrib V17    -0.08965831676487518
#>     Attrib V18    0.23834725192022904
#>     Attrib V19    0.2934686765057194
#>     Attrib V2    -0.05765930987746699
#>     Attrib V20    -0.031139477206944762
#>     Attrib V21    0.15847352433326595
#>     Attrib V22    0.4925051832679675
#>     Attrib V23    0.557860648826323
#>     Attrib V24    0.38542353069131025
#>     Attrib V25    -0.2648990994502173
#>     Attrib V26    -0.8066027003363406
#>     Attrib V27    -0.5378988704170595
#>     Attrib V28    -0.33790150122687873
#>     Attrib V29    -0.5708570354223694
#>     Attrib V3    -0.3647845352195615
#>     Attrib V30    -0.15220481423481452
#>     Attrib V31    -0.6848415427979111
#>     Attrib V32    0.12623760716717833
#>     Attrib V33    0.608579403224938
#>     Attrib V34    0.18578228536294222
#>     Attrib V35    -0.23805132500935589
#>     Attrib V36    -0.520024129289875
#>     Attrib V37    -0.6999716273446777
#>     Attrib V38    0.385787508213654
#>     Attrib V39    0.43001050463671814
#>     Attrib V4    0.13504626640162226
#>     Attrib V40    -0.2150526608878254
#>     Attrib V41    -0.02666514027161768
#>     Attrib V42    -0.10416786033567138
#>     Attrib V43    0.08108446471060754
#>     Attrib V44    0.1870036951638148
#>     Attrib V45    0.3381366722530667
#>     Attrib V46    -0.07687830856478917
#>     Attrib V47    -0.20867587874767465
#>     Attrib V48    0.1670774151813524
#>     Attrib V49    0.0259575965569772
#>     Attrib V5    -0.15867800355997436
#>     Attrib V50    -0.25175781220655513
#>     Attrib V51    0.2939284348610667
#>     Attrib V52    0.503395521961777
#>     Attrib V53    -0.10479376028755799
#>     Attrib V54    0.6863500876134033
#>     Attrib V55    -0.041795792449672874
#>     Attrib V56    -0.17872371341460117
#>     Attrib V57    0.4439322108550743
#>     Attrib V58    0.290268285754565
#>     Attrib V59    0.41796326900010644
#>     Attrib V6    0.09685179869691463
#>     Attrib V60    0.5358365154934142
#>     Attrib V7    0.2471292574384522
#>     Attrib V8    0.004994738090426565
#>     Attrib V9    0.5041704884457512
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.4003139842688588
#>     Attrib V1    -0.1446185508151526
#>     Attrib V10    -1.063795011829319
#>     Attrib V11    -1.256412288912738
#>     Attrib V12    -1.7548047919901684
#>     Attrib V13    -0.7272647864682681
#>     Attrib V14    0.16662203240876167
#>     Attrib V15    0.6169294457432936
#>     Attrib V16    0.8113368844850929
#>     Attrib V17    1.3919957600306259
#>     Attrib V18    0.6671723528488621
#>     Attrib V19    -1.2555118967807157
#>     Attrib V2    -0.17330914764232544
#>     Attrib V20    -1.1599729783499035
#>     Attrib V21    -0.7928731162100175
#>     Attrib V22    -1.0124608787377545
#>     Attrib V23    -0.975734292934897
#>     Attrib V24    -0.43739952847188723
#>     Attrib V25    0.4794693861355223
#>     Attrib V26    0.33776224076168937
#>     Attrib V27    -0.5584060253722297
#>     Attrib V28    -0.7544948646789972
#>     Attrib V29    -0.027240903426064014
#>     Attrib V3    -0.031812698925151164
#>     Attrib V30    0.1454454949901345
#>     Attrib V31    1.1890804926422425
#>     Attrib V32    0.2809266347956352
#>     Attrib V33    -0.04046131744820033
#>     Attrib V34    0.08907418459099256
#>     Attrib V35    0.22564815769736837
#>     Attrib V36    1.2609292228959408
#>     Attrib V37    1.1434719955104593
#>     Attrib V38    -1.1425649641001732
#>     Attrib V39    -1.2848188269581187
#>     Attrib V4    0.2714355073420915
#>     Attrib V40    0.4265847132335369
#>     Attrib V41    0.19335151249645813
#>     Attrib V42    0.23080956192858873
#>     Attrib V43    -0.20611206440990978
#>     Attrib V44    -0.16972142032100584
#>     Attrib V45    -0.6532310015335506
#>     Attrib V46    -0.4157996118400525
#>     Attrib V47    -0.6436226419604854
#>     Attrib V48    -0.6866142914431046
#>     Attrib V49    -0.5970659323719917
#>     Attrib V5    0.2357412538188742
#>     Attrib V50    0.6299802856652321
#>     Attrib V51    -0.6081346856329922
#>     Attrib V52    -1.4052789691048997
#>     Attrib V53    0.054548624666581516
#>     Attrib V54    0.31275909680222885
#>     Attrib V55    0.5890281632960018
#>     Attrib V56    0.5528254766442152
#>     Attrib V57    0.28233035615494884
#>     Attrib V58    0.21613089941937655
#>     Attrib V59    -0.02652510324466837
#>     Attrib V6    0.5376042501313187
#>     Attrib V60    -0.021325369780276344
#>     Attrib V7    0.2437804658396913
#>     Attrib V8    1.1637759769412888
#>     Attrib V9    -0.8738079106766468
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2125194231234275
#>     Attrib V1    0.0070353557596248995
#>     Attrib V10    0.010184000282119868
#>     Attrib V11    0.24213946734576025
#>     Attrib V12    0.46470393245107006
#>     Attrib V13    -0.22595751440182568
#>     Attrib V14    -0.12471668536083445
#>     Attrib V15    -0.12643420033976624
#>     Attrib V16    -0.013783457266930066
#>     Attrib V17    -0.05904728072811691
#>     Attrib V18    0.2011141482362291
#>     Attrib V19    0.26343533607440256
#>     Attrib V2    -0.07313859802925377
#>     Attrib V20    0.05421561888141607
#>     Attrib V21    0.16667403863768337
#>     Attrib V22    0.5510219750817864
#>     Attrib V23    0.5610399812305478
#>     Attrib V24    0.38040461610341364
#>     Attrib V25    -0.13051476482050048
#>     Attrib V26    -0.7625955311815446
#>     Attrib V27    -0.41315153123549836
#>     Attrib V28    -0.15312127104137233
#>     Attrib V29    -0.35717308722619745
#>     Attrib V3    -0.2929322166648096
#>     Attrib V30    -0.0981206103382395
#>     Attrib V31    -0.6006441490768354
#>     Attrib V32    0.14090901840717962
#>     Attrib V33    0.5170257765979136
#>     Attrib V34    0.10274762288572818
#>     Attrib V35    -0.20306391258005235
#>     Attrib V36    -0.4723534043601554
#>     Attrib V37    -0.5854942792201843
#>     Attrib V38    0.3602159138401805
#>     Attrib V39    0.42212338953434664
#>     Attrib V4    0.11338109904761776
#>     Attrib V40    -0.14725230874712567
#>     Attrib V41    0.018584398349711168
#>     Attrib V42    -0.11233673970915498
#>     Attrib V43    0.16756736395460034
#>     Attrib V44    0.14223028801574003
#>     Attrib V45    0.3303519519597084
#>     Attrib V46    -0.022078572411011584
#>     Attrib V47    -0.08252033363754208
#>     Attrib V48    0.1457625566701432
#>     Attrib V49    0.0606115291912292
#>     Attrib V5    -0.1385558598653723
#>     Attrib V50    -0.2708329777590986
#>     Attrib V51    0.28979979631982355
#>     Attrib V52    0.5337177195740903
#>     Attrib V53    -0.13807654162345678
#>     Attrib V54    0.5241664008764787
#>     Attrib V55    -0.07715171248647561
#>     Attrib V56    -0.10910029132516279
#>     Attrib V57    0.34541906747222995
#>     Attrib V58    0.1994641440599792
#>     Attrib V59    0.30342021376910827
#>     Attrib V6    0.04883852783944237
#>     Attrib V60    0.47847480828486594
#>     Attrib V7    0.1736822888721737
#>     Attrib V8    -0.013282731075225008
#>     Attrib V9    0.49116996882923364
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1688608618807636
#>     Attrib V1    0.07360786976047654
#>     Attrib V10    0.052912863562061825
#>     Attrib V11    -0.03989379746137823
#>     Attrib V12    -0.07115628663282576
#>     Attrib V13    0.08590626008416187
#>     Attrib V14    0.08435319766535129
#>     Attrib V15    0.13662402172169874
#>     Attrib V16    0.13673293084418836
#>     Attrib V17    0.2030886458547104
#>     Attrib V18    0.058703746808319045
#>     Attrib V19    -0.034333068545397395
#>     Attrib V2    0.0668055237137418
#>     Attrib V20    -0.022630352430013916
#>     Attrib V21    0.03896843822046513
#>     Attrib V22    -0.003116620446491199
#>     Attrib V23    -0.030968446754815568
#>     Attrib V24    -0.05375844198620268
#>     Attrib V25    0.08063637486580212
#>     Attrib V26    0.1009252468200184
#>     Attrib V27    -0.06973616362120276
#>     Attrib V28    -0.10025493388067734
#>     Attrib V29    -0.08833393799557268
#>     Attrib V3    0.0668790918007127
#>     Attrib V30    -0.03492482569718966
#>     Attrib V31    0.16582734659899737
#>     Attrib V32    -0.010890900270723073
#>     Attrib V33    -0.076054705499075
#>     Attrib V34    0.0014080247218107615
#>     Attrib V35    0.11272350443429169
#>     Attrib V36    0.16546277521273797
#>     Attrib V37    0.23026140335461032
#>     Attrib V38    -0.09565609186758685
#>     Attrib V39    0.010209193451245515
#>     Attrib V4    0.018244237171073444
#>     Attrib V40    0.15918479545795264
#>     Attrib V41    0.08797522792385318
#>     Attrib V42    0.14864406123718793
#>     Attrib V43    0.03024517327279295
#>     Attrib V44    -0.031210811753964226
#>     Attrib V45    -0.05545975304168611
#>     Attrib V46    0.03960723047001332
#>     Attrib V47    0.052037372286118426
#>     Attrib V48    0.019687664840073196
#>     Attrib V49    -0.0072515680804965035
#>     Attrib V5    0.054721193434198415
#>     Attrib V50    0.11282060088077747
#>     Attrib V51    0.003468453628919363
#>     Attrib V52    -0.11533037595851114
#>     Attrib V53    0.03463158313858269
#>     Attrib V54    -0.048182794449342176
#>     Attrib V55    0.0515073741687471
#>     Attrib V56    0.17814672290288408
#>     Attrib V57    -0.00657435609687597
#>     Attrib V58    0.09312722647835082
#>     Attrib V59    0.06266727145385605
#>     Attrib V6    0.0860037839875756
#>     Attrib V60    0.02617833081240377
#>     Attrib V7    -0.03403462753921552
#>     Attrib V8    0.07958146633427314
#>     Attrib V9    -0.0688833617054171
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.2305935384583636
#>     Attrib V1    0.16983803950610377
#>     Attrib V10    -0.24648028428840965
#>     Attrib V11    -0.1015189585271738
#>     Attrib V12    0.0367451343302319
#>     Attrib V13    -0.3374965886953624
#>     Attrib V14    -0.03963749468755686
#>     Attrib V15    0.12076166316865408
#>     Attrib V16    0.09726369395899398
#>     Attrib V17    -0.011943467412391303
#>     Attrib V18    0.13747747980064753
#>     Attrib V19    0.19319404207945978
#>     Attrib V2    0.08396595349917574
#>     Attrib V20    0.09146059703095091
#>     Attrib V21    0.18148978129765658
#>     Attrib V22    0.47446614912590007
#>     Attrib V23    0.47654659295684576
#>     Attrib V24    0.3034571968945516
#>     Attrib V25    -0.48757186676954284
#>     Attrib V26    -1.1196953626738628
#>     Attrib V27    -0.8479198318373873
#>     Attrib V28    -0.6641110348665417
#>     Attrib V29    -0.8686364431478928
#>     Attrib V3    -0.32364066656867935
#>     Attrib V30    -0.3617516131260044
#>     Attrib V31    -0.6987653433899145
#>     Attrib V32    -0.007327866290922977
#>     Attrib V33    0.7366482670644534
#>     Attrib V34    0.31838243933431515
#>     Attrib V35    -0.19335944702821947
#>     Attrib V36    -0.5741055713853591
#>     Attrib V37    -0.7147159229344321
#>     Attrib V38    0.3756554541201477
#>     Attrib V39    0.2451044143628954
#>     Attrib V4    0.061055841195842675
#>     Attrib V40    -0.1289373580072287
#>     Attrib V41    -0.07367236656498384
#>     Attrib V42    -0.002964632346355961
#>     Attrib V43    0.15596474783497385
#>     Attrib V44    0.04226444259207821
#>     Attrib V45    0.1409840157080156
#>     Attrib V46    -0.08163650716250526
#>     Attrib V47    -0.2990494392208612
#>     Attrib V48    -0.04365533878411146
#>     Attrib V49    -0.06113140743642207
#>     Attrib V5    -0.2508312559263209
#>     Attrib V50    -0.11066004984138746
#>     Attrib V51    0.1835487136868693
#>     Attrib V52    0.32014923222580277
#>     Attrib V53    -0.022037850490548735
#>     Attrib V54    0.9233223688657687
#>     Attrib V55    0.22118506968683727
#>     Attrib V56    -0.029166136910200667
#>     Attrib V57    0.6100589174126071
#>     Attrib V58    0.38961373666645394
#>     Attrib V59    0.5079972063408711
#>     Attrib V6    0.03548982570034898
#>     Attrib V60    0.6286924131069064
#>     Attrib V7    0.33438744247057134
#>     Attrib V8    0.14574438149151203
#>     Attrib V9    0.3444080558619726
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.10779041727836516
#>     Attrib V1    0.1551387666998096
#>     Attrib V10    -0.21063105689449008
#>     Attrib V11    -0.02396066252311335
#>     Attrib V12    0.1024553690646467
#>     Attrib V13    -0.2694625754036237
#>     Attrib V14    0.023729837406389936
#>     Attrib V15    0.08108645223149645
#>     Attrib V16    0.12515401361114029
#>     Attrib V17    -0.003324663629157566
#>     Attrib V18    0.18015307477258702
#>     Attrib V19    0.13576881142687122
#>     Attrib V2    0.0353397492749711
#>     Attrib V20    0.07578662688495282
#>     Attrib V21    0.1761567204325899
#>     Attrib V22    0.26463620960443335
#>     Attrib V23    0.2800316449967532
#>     Attrib V24    0.11335934801839785
#>     Attrib V25    -0.3651154308770133
#>     Attrib V26    -0.7343471538102622
#>     Attrib V27    -0.47732633541643205
#>     Attrib V28    -0.27072828964658047
#>     Attrib V29    -0.4027755146892508
#>     Attrib V3    -0.12036361785047825
#>     Attrib V30    -0.10123027920220494
#>     Attrib V31    -0.5313430160315862
#>     Attrib V32    -0.04593016698119168
#>     Attrib V33    0.4004964395061035
#>     Attrib V34    0.1357215841087837
#>     Attrib V35    -0.14791352923340578
#>     Attrib V36    -0.2819634239264352
#>     Attrib V37    -0.4229207539727458
#>     Attrib V38    0.2068170098154001
#>     Attrib V39    0.23866939062696266
#>     Attrib V4    0.13004965961514584
#>     Attrib V40    -0.13125780164109851
#>     Attrib V41    -0.06434772874459048
#>     Attrib V42    4.0549629312326344E-4
#>     Attrib V43    0.023428979476051173
#>     Attrib V44    0.07102849437082591
#>     Attrib V45    0.1876092118827843
#>     Attrib V46    -0.04797802929555134
#>     Attrib V47    -0.20870811942339565
#>     Attrib V48    -0.034728937969446566
#>     Attrib V49    0.03781785070979635
#>     Attrib V5    -0.06776702982732385
#>     Attrib V50    -0.11814146679846414
#>     Attrib V51    0.12098415269006235
#>     Attrib V52    0.29232819173861857
#>     Attrib V53    0.0051208066899119204
#>     Attrib V54    0.5096276351105922
#>     Attrib V55    0.13358114452655795
#>     Attrib V56    -0.0031980618040810538
#>     Attrib V57    0.4682428808978752
#>     Attrib V58    0.3525589842168666
#>     Attrib V59    0.39013074182759433
#>     Attrib V6    0.03427906652516096
#>     Attrib V60    0.42947180555984044
#>     Attrib V7    0.15459789434648744
#>     Attrib V8    0.09777470859984523
#>     Attrib V9    0.24298520659287265
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
