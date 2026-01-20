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
#>     Threshold    -0.3544698932801296
#>     Node 2    2.608930423145379
#>     Node 3    1.3917951839944014
#>     Node 4    1.0655354511591366
#>     Node 5    -2.281509783572126
#>     Node 6    1.817087181190144
#>     Node 7    2.6159823040379124
#>     Node 8    0.537925409084022
#>     Node 9    2.61691478830279
#>     Node 10    -1.3655533460931506
#>     Node 11    1.1805710102215046
#>     Node 12    2.082025644996881
#>     Node 13    1.5050874803748095
#>     Node 14    1.5193452822039115
#>     Node 15    -2.7079401570997588
#>     Node 16    0.6074448984478992
#>     Node 17    0.11707019221720161
#>     Node 18    0.14107845357979742
#>     Node 19    2.109710543177378
#>     Node 20    1.8373836447219953
#>     Node 21    -2.885353349457467
#>     Node 22    0.92421363489165
#>     Node 23    2.497802023040298
#>     Node 24    -0.7334341315016235
#>     Node 25    3.2172186800806397
#>     Node 26    -0.0721300825569448
#>     Node 27    1.4684754217470624
#>     Node 28    -3.5588884197144384
#>     Node 29    0.9876748990777764
#>     Node 30    0.41745341260731916
#>     Node 31    1.282459980894257
#>     Node 32    0.7059804621650906
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.36981241528621384
#>     Node 2    -2.650592565766313
#>     Node 3    -1.3727209498794386
#>     Node 4    -1.0354524762158273
#>     Node 5    2.301152454717095
#>     Node 6    -1.7886164500599524
#>     Node 7    -2.6003459458029408
#>     Node 8    -0.5776320682101492
#>     Node 9    -2.627979552650764
#>     Node 10    1.3056191137801583
#>     Node 11    -1.1573217907071314
#>     Node 12    -2.1535801470183933
#>     Node 13    -1.4477504931129068
#>     Node 14    -1.4498032652206172
#>     Node 15    2.7046996208235647
#>     Node 16    -0.6273487483924014
#>     Node 17    -0.08677333958674212
#>     Node 18    -0.10420213619440104
#>     Node 19    -2.0999328402121313
#>     Node 20    -1.820144721721724
#>     Node 21    2.9473233920975583
#>     Node 22    -0.9771243499427602
#>     Node 23    -2.527391442308882
#>     Node 24    0.7265558217934953
#>     Node 25    -3.220946246867565
#>     Node 26    -0.014623381390254259
#>     Node 27    -1.5076514225635174
#>     Node 28    3.5175596678156618
#>     Node 29    -1.0252359683248686
#>     Node 30    -0.34547833641240006
#>     Node 31    -1.2216676883360753
#>     Node 32    -0.7268801379079082
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.3670235792730035
#>     Attrib V1    0.632721159758432
#>     Attrib V10    0.15412035925832415
#>     Attrib V11    0.6438228413646286
#>     Attrib V12    0.699611364718984
#>     Attrib V13    -0.46597327563861957
#>     Attrib V14    -0.48966410491823753
#>     Attrib V15    -0.2122053525223952
#>     Attrib V16    -0.1797654215397469
#>     Attrib V17    0.09577429785550878
#>     Attrib V18    -0.14150941592641647
#>     Attrib V19    0.14644288118769797
#>     Attrib V2    -0.3474949323083713
#>     Attrib V20    0.9855970335830763
#>     Attrib V21    0.4360805445748787
#>     Attrib V22    0.20836520665396902
#>     Attrib V23    0.912294639143981
#>     Attrib V24    0.8356706571585198
#>     Attrib V25    -0.08312804737635858
#>     Attrib V26    -0.72182347021332
#>     Attrib V27    -0.6464238718864496
#>     Attrib V28    -0.1884261393106517
#>     Attrib V29    -0.23479411845742737
#>     Attrib V3    0.3251499924444689
#>     Attrib V30    0.10904503870989396
#>     Attrib V31    -1.8140419173374804
#>     Attrib V32    -0.5283315225293957
#>     Attrib V33    0.21770286962784421
#>     Attrib V34    0.029912868278781386
#>     Attrib V35    -0.032992079011684654
#>     Attrib V36    -0.7451293545841224
#>     Attrib V37    -1.1716178938788737
#>     Attrib V38    -0.11797549121549307
#>     Attrib V39    0.5244820963889486
#>     Attrib V4    -0.024213327710690742
#>     Attrib V40    -0.27390569325685654
#>     Attrib V41    -0.06588839960826064
#>     Attrib V42    0.6712264177118732
#>     Attrib V43    0.5640051916480916
#>     Attrib V44    -0.17864260344170277
#>     Attrib V45    0.22702748744752807
#>     Attrib V46    0.31523283917526757
#>     Attrib V47    0.1016569530604351
#>     Attrib V48    0.4148886539121707
#>     Attrib V49    0.19839872652848214
#>     Attrib V5    -0.3205516121779797
#>     Attrib V50    -0.8180693276210915
#>     Attrib V51    -0.08266488027230821
#>     Attrib V52    0.30146925779131056
#>     Attrib V53    -0.30203582127708567
#>     Attrib V54    -0.5905392295704096
#>     Attrib V55    -0.32466998840346956
#>     Attrib V56    0.3436227236222222
#>     Attrib V57    0.7211957499384392
#>     Attrib V58    0.5451135763848346
#>     Attrib V59    1.0457964120782446
#>     Attrib V6    -0.44072041939230705
#>     Attrib V60    1.0504110609695807
#>     Attrib V7    -0.36289958915455667
#>     Attrib V8    0.08262718311726118
#>     Attrib V9    0.48881021505633127
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.30138920670733943
#>     Attrib V1    0.3297929619993497
#>     Attrib V10    0.10495475163192201
#>     Attrib V11    0.35553811970788063
#>     Attrib V12    0.45305599146234865
#>     Attrib V13    -0.2062914007873747
#>     Attrib V14    -0.2562057754445316
#>     Attrib V15    0.03317324805610822
#>     Attrib V16    -0.06574909340580337
#>     Attrib V17    -0.01659418765165063
#>     Attrib V18    -0.23906293256568634
#>     Attrib V19    0.024886196768909314
#>     Attrib V2    -0.051837187908014185
#>     Attrib V20    0.4544942185933331
#>     Attrib V21    0.10103614621364099
#>     Attrib V22    0.03999506285540126
#>     Attrib V23    0.46674851008831136
#>     Attrib V24    0.43496302726438674
#>     Attrib V25    -0.12582199426943794
#>     Attrib V26    -0.4969953976953108
#>     Attrib V27    -0.3223011652206691
#>     Attrib V28    -0.09889951463799913
#>     Attrib V29    -0.2549931733115043
#>     Attrib V3    0.24269735006741597
#>     Attrib V30    0.05934098051129766
#>     Attrib V31    -0.8667505985969923
#>     Attrib V32    -0.1742791436742189
#>     Attrib V33    0.14421823344668847
#>     Attrib V34    -0.08086881145339143
#>     Attrib V35    -0.14656913699788365
#>     Attrib V36    -0.6873853636347765
#>     Attrib V37    -0.7110168465762199
#>     Attrib V38    -0.21827151903482334
#>     Attrib V39    0.20908382534020875
#>     Attrib V4    0.006541451450468939
#>     Attrib V40    -0.13930696628966102
#>     Attrib V41    0.011790222624529603
#>     Attrib V42    0.2693759627390297
#>     Attrib V43    0.17153121176217453
#>     Attrib V44    -0.1515819433062798
#>     Attrib V45    0.10559510783188872
#>     Attrib V46    0.13831356023309313
#>     Attrib V47    0.06191887806951404
#>     Attrib V48    0.2096870631985502
#>     Attrib V49    0.06841856423404889
#>     Attrib V5    -0.1299485693767244
#>     Attrib V50    -0.48496850245176476
#>     Attrib V51    -0.056275876398102456
#>     Attrib V52    0.28769637722768937
#>     Attrib V53    -0.09618255298502557
#>     Attrib V54    -0.17366618763805564
#>     Attrib V55    -0.11979193503608868
#>     Attrib V56    0.1757585087894879
#>     Attrib V57    0.37806561335925437
#>     Attrib V58    0.3885562313283644
#>     Attrib V59    0.5135620051293972
#>     Attrib V6    -0.1561472482920773
#>     Attrib V60    0.49421854185211156
#>     Attrib V7    -0.22159827181952907
#>     Attrib V8    0.03173889480191697
#>     Attrib V9    0.29892210954601345
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.16333539097246252
#>     Attrib V1    0.15622482094848247
#>     Attrib V10    0.22002951065578785
#>     Attrib V11    0.36535707601964257
#>     Attrib V12    0.4337023591351423
#>     Attrib V13    -0.006636533916877293
#>     Attrib V14    -0.11027194581651158
#>     Attrib V15    0.0037212596116636956
#>     Attrib V16    -0.09742043559724856
#>     Attrib V17    -0.1456372915332305
#>     Attrib V18    -0.31442905754325684
#>     Attrib V19    -0.3581690827437456
#>     Attrib V2    -0.007993894430639211
#>     Attrib V20    -0.0852611924765753
#>     Attrib V21    -0.29030161554687733
#>     Attrib V22    -0.5510323511510941
#>     Attrib V23    -0.2460001908983381
#>     Attrib V24    -0.1054892216257016
#>     Attrib V25    -0.29355645850253537
#>     Attrib V26    -0.1312213243646594
#>     Attrib V27    0.1956446353782332
#>     Attrib V28    0.32477944835582573
#>     Attrib V29    0.13889088396375304
#>     Attrib V3    0.12847088833099912
#>     Attrib V30    0.2637672203999393
#>     Attrib V31    -0.16395155614563747
#>     Attrib V32    0.08088414381889134
#>     Attrib V33    0.13371243940900698
#>     Attrib V34    0.05624756506059373
#>     Attrib V35    0.03621477388714085
#>     Attrib V36    -0.3088926704495184
#>     Attrib V37    -0.10713310785458867
#>     Attrib V38    0.030418117646239938
#>     Attrib V39    0.20115282402325727
#>     Attrib V4    0.08794534163419036
#>     Attrib V40    0.017447628417610012
#>     Attrib V41    0.024772393169045198
#>     Attrib V42    -0.06659988354054466
#>     Attrib V43    -0.01844849693624984
#>     Attrib V44    0.03539647556896134
#>     Attrib V45    0.33858858849653584
#>     Attrib V46    0.12001355060325021
#>     Attrib V47    -0.037090304739224075
#>     Attrib V48    0.31209149457209767
#>     Attrib V49    0.2088248655607182
#>     Attrib V5    -0.008834397123423677
#>     Attrib V50    -0.16435075164449078
#>     Attrib V51    0.09681996610292472
#>     Attrib V52    0.26766157499495663
#>     Attrib V53    0.16261249520659887
#>     Attrib V54    -0.04715574426123435
#>     Attrib V55    -0.048436128975296956
#>     Attrib V56    -0.04910140059627767
#>     Attrib V57    0.21000013231423692
#>     Attrib V58    0.0644509260119961
#>     Attrib V59    0.061816137700983737
#>     Attrib V6    -0.016727962250505296
#>     Attrib V60    0.17709871096177202
#>     Attrib V7    -0.08782439847194853
#>     Attrib V8    -0.0883080697501292
#>     Attrib V9    0.3321509697119067
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.8149978748898671
#>     Attrib V1    -0.13388616136999154
#>     Attrib V10    -0.38976760973151314
#>     Attrib V11    -1.0914237036066359
#>     Attrib V12    -1.5179653356186418
#>     Attrib V13    -0.1429178464303711
#>     Attrib V14    0.5488163243681607
#>     Attrib V15    0.3131713482736151
#>     Attrib V16    0.11560401903611349
#>     Attrib V17    0.13948716336592198
#>     Attrib V18    0.2931396844246087
#>     Attrib V19    0.21532861321328853
#>     Attrib V2    0.20090047676945494
#>     Attrib V20    -0.33842568011755625
#>     Attrib V21    0.353144388761359
#>     Attrib V22    0.4469165683927091
#>     Attrib V23    -0.577093387471606
#>     Attrib V24    -0.7102579207617453
#>     Attrib V25    0.23695154612505567
#>     Attrib V26    0.20457251885095684
#>     Attrib V27    -0.5401976997190628
#>     Attrib V28    -0.941093380051591
#>     Attrib V29    -0.3497477725740319
#>     Attrib V3    0.028583010282753084
#>     Attrib V30    -0.41756992919140484
#>     Attrib V31    1.045294258007348
#>     Attrib V32    0.07683836488386112
#>     Attrib V33    -0.09737159851490591
#>     Attrib V34    -0.10348503257763654
#>     Attrib V35    -0.2013932663626498
#>     Attrib V36    0.8854407061764008
#>     Attrib V37    0.47275431790613837
#>     Attrib V38    -0.043680250422244944
#>     Attrib V39    -0.5876565816298427
#>     Attrib V4    -0.1497159361383636
#>     Attrib V40    -0.10864693675162858
#>     Attrib V41    -0.4679708159413782
#>     Attrib V42    0.03858775371322016
#>     Attrib V43    -0.2360206305274301
#>     Attrib V44    -0.025141480822578877
#>     Attrib V45    -0.6252380594953568
#>     Attrib V46    -0.4516567775363144
#>     Attrib V47    0.049788850197922424
#>     Attrib V48    -0.5973836754738435
#>     Attrib V49    -0.4821006718033038
#>     Attrib V5    0.08433447349670785
#>     Attrib V50    0.9014796632552365
#>     Attrib V51    -0.15764091814749112
#>     Attrib V52    -0.8060303144638558
#>     Attrib V53    -0.26705972893387114
#>     Attrib V54    0.24087331529809233
#>     Attrib V55    0.3313384926737633
#>     Attrib V56    0.37633322387405577
#>     Attrib V57    -0.05361212173235483
#>     Attrib V58    -0.15761708370743213
#>     Attrib V59    0.011599912570726227
#>     Attrib V6    0.007872337086593777
#>     Attrib V60    -0.39131670101706967
#>     Attrib V7    0.5009584068263626
#>     Attrib V8    0.25215438711337296
#>     Attrib V9    -0.7179478438499043
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.3425568794063474
#>     Attrib V1    0.4690548163002113
#>     Attrib V10    0.0302991788091977
#>     Attrib V11    0.39740176018403045
#>     Attrib V12    0.49896816355022566
#>     Attrib V13    -0.36945220866772516
#>     Attrib V14    -0.36352382539168987
#>     Attrib V15    -0.09046455783488169
#>     Attrib V16    -0.04024575993915196
#>     Attrib V17    0.015674486425194867
#>     Attrib V18    -0.14402866250130314
#>     Attrib V19    0.056231474825339
#>     Attrib V2    -0.16668583257662967
#>     Attrib V20    0.6671137780205243
#>     Attrib V21    0.3152720366032535
#>     Attrib V22    0.11533678119806312
#>     Attrib V23    0.6015139416988085
#>     Attrib V24    0.6086135597089124
#>     Attrib V25    -0.03323759447276277
#>     Attrib V26    -0.5082062037593064
#>     Attrib V27    -0.4399052188771141
#>     Attrib V28    -0.2761818127436634
#>     Attrib V29    -0.3116487887340905
#>     Attrib V3    0.25974859237319453
#>     Attrib V30    0.0012046590553744746
#>     Attrib V31    -1.202777225257131
#>     Attrib V32    -0.31630230301385354
#>     Attrib V33    0.15464799135251392
#>     Attrib V34    -0.06374838374723073
#>     Attrib V35    -0.1011975914188961
#>     Attrib V36    -0.6784738182770569
#>     Attrib V37    -0.8544995100905346
#>     Attrib V38    -0.18837232597931428
#>     Attrib V39    0.270984558056833
#>     Attrib V4    0.03146666063678499
#>     Attrib V40    -0.24934358172352228
#>     Attrib V41    -7.129071948275087E-4
#>     Attrib V42    0.4529101543068156
#>     Attrib V43    0.31564677244294487
#>     Attrib V44    -0.17575599837617556
#>     Attrib V45    0.17690831175564192
#>     Attrib V46    0.22601109473859612
#>     Attrib V47    0.05150582961076813
#>     Attrib V48    0.25404613051475566
#>     Attrib V49    0.10995442942669652
#>     Attrib V5    -0.20327634811086573
#>     Attrib V50    -0.5197253327571312
#>     Attrib V51    -0.053840538727248644
#>     Attrib V52    0.21090271735058352
#>     Attrib V53    -0.08577594883757642
#>     Attrib V54    -0.31397393581852084
#>     Attrib V55    -0.23527543709983337
#>     Attrib V56    0.2781868700077488
#>     Attrib V57    0.5818489472509736
#>     Attrib V58    0.47127714852394464
#>     Attrib V59    0.7543747849093441
#>     Attrib V6    -0.18559886472064266
#>     Attrib V60    0.7658036639482682
#>     Attrib V7    -0.20627901413274835
#>     Attrib V8    0.06843412827579293
#>     Attrib V9    0.3930756977853587
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.39173815726290684
#>     Attrib V1    0.5822670397612747
#>     Attrib V10    0.2681994055431796
#>     Attrib V11    1.0209378537498546
#>     Attrib V12    1.1276522322820604
#>     Attrib V13    -0.283126276489089
#>     Attrib V14    -0.6906785750428335
#>     Attrib V15    -0.400115368214518
#>     Attrib V16    -0.30148853532288694
#>     Attrib V17    -0.03380205595216689
#>     Attrib V18    -0.3430702434922084
#>     Attrib V19    0.0036414873876551954
#>     Attrib V2    -0.13162260169281517
#>     Attrib V20    1.0207121551291298
#>     Attrib V21    0.5376586093900946
#>     Attrib V22    0.48964424953526475
#>     Attrib V23    1.4111786605400705
#>     Attrib V24    1.1189594312091034
#>     Attrib V25    0.1021982338740722
#>     Attrib V26    -0.2914415140749005
#>     Attrib V27    -0.264196311069259
#>     Attrib V28    0.1578810592285827
#>     Attrib V29    0.13607461435784457
#>     Attrib V3    0.3571678057887962
#>     Attrib V30    0.26063695385526325
#>     Attrib V31    -1.9058678276515022
#>     Attrib V32    -0.6040579060346791
#>     Attrib V33    0.06577458421119653
#>     Attrib V34    -0.023472763629090083
#>     Attrib V35    0.16189179297165548
#>     Attrib V36    -0.6451827057885177
#>     Attrib V37    -0.7281903218532132
#>     Attrib V38    0.09017259014794132
#>     Attrib V39    0.5274734152643362
#>     Attrib V4    -0.07042281650670641
#>     Attrib V40    -0.3505935585158835
#>     Attrib V41    0.03816395543245726
#>     Attrib V42    0.48087394671752115
#>     Attrib V43    0.5691131917573511
#>     Attrib V44    -0.03936960064964608
#>     Attrib V45    0.4835512558927257
#>     Attrib V46    0.6054207548901963
#>     Attrib V47    0.19149090312460992
#>     Attrib V48    0.2638310968798257
#>     Attrib V49    0.137724992772838
#>     Attrib V5    -0.3673815713668142
#>     Attrib V50    -0.83934164380049
#>     Attrib V51    0.005407038564224474
#>     Attrib V52    0.5023236382177068
#>     Attrib V53    -0.42118273047762894
#>     Attrib V54    -0.4485587567938192
#>     Attrib V55    -0.2673401706436402
#>     Attrib V56    0.24818238926589878
#>     Attrib V57    0.49072938326408605
#>     Attrib V58    0.46976441944733716
#>     Attrib V59    0.6801170618969792
#>     Attrib V6    -0.3262897021798007
#>     Attrib V60    0.9719541225292349
#>     Attrib V7    -0.4654678267040168
#>     Attrib V8    -0.24766469673059105
#>     Attrib V9    0.6701172397491496
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.009035904600507174
#>     Attrib V1    0.10907522182315461
#>     Attrib V10    0.1289826210232475
#>     Attrib V11    0.1809852885451241
#>     Attrib V12    0.1615029750308676
#>     Attrib V13    -0.022244035294948283
#>     Attrib V14    -0.09312195569954726
#>     Attrib V15    -0.021530526611533308
#>     Attrib V16    0.016850868484200573
#>     Attrib V17    -0.054496851734899106
#>     Attrib V18    -0.16828496249258998
#>     Attrib V19    -0.1541250026576805
#>     Attrib V2    0.029073128011710567
#>     Attrib V20    -0.06192290887859307
#>     Attrib V21    -0.13892147206764277
#>     Attrib V22    -0.26457778320437225
#>     Attrib V23    -0.15290559639015813
#>     Attrib V24    -0.03532909501692204
#>     Attrib V25    -0.09265580711391662
#>     Attrib V26    -0.0013967229746299388
#>     Attrib V27    0.0925635060151475
#>     Attrib V28    0.11057833452804906
#>     Attrib V29    0.03467235984085232
#>     Attrib V3    0.07217699542751262
#>     Attrib V30    0.13874663986815777
#>     Attrib V31    -0.08317720589736746
#>     Attrib V32    0.059840583140173056
#>     Attrib V33    0.07876548293331234
#>     Attrib V34    0.018979666852626493
#>     Attrib V35    0.0524510570269746
#>     Attrib V36    -0.02347089222058327
#>     Attrib V37    -0.003742875157551438
#>     Attrib V38    0.12271779252457447
#>     Attrib V39    0.1085575513591614
#>     Attrib V4    0.11934039478636155
#>     Attrib V40    0.0032031186811680035
#>     Attrib V41    0.019640638672853376
#>     Attrib V42    -0.08978245940518155
#>     Attrib V43    0.018657880035473286
#>     Attrib V44    0.10354836183923195
#>     Attrib V45    0.1920102573650302
#>     Attrib V46    0.12957669013633077
#>     Attrib V47    0.044933905955368524
#>     Attrib V48    0.19979669230672056
#>     Attrib V49    0.12113132920561373
#>     Attrib V5    2.367328092389876E-4
#>     Attrib V50    -0.05992781922671431
#>     Attrib V51    0.0500253244879847
#>     Attrib V52    0.12895113782560613
#>     Attrib V53    0.1410495493063774
#>     Attrib V54    0.05786505303758755
#>     Attrib V55    9.652584142589648E-6
#>     Attrib V56    -0.01881768803491133
#>     Attrib V57    0.22943743504164704
#>     Attrib V58    0.05200271181395584
#>     Attrib V59    0.09591075229279505
#>     Attrib V6    -0.012662367769184729
#>     Attrib V60    0.19003742216186284
#>     Attrib V7    0.003995958251301128
#>     Attrib V8    -0.042601099970251535
#>     Attrib V9    0.1653968712784441
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6985906353437563
#>     Attrib V1    0.10436626219013662
#>     Attrib V10    0.5427742402322687
#>     Attrib V11    1.2017121840863196
#>     Attrib V12    1.7447359881032352
#>     Attrib V13    0.46334242999233444
#>     Attrib V14    -0.5182191936372009
#>     Attrib V15    -0.35515162551506413
#>     Attrib V16    -0.333012873037246
#>     Attrib V17    -0.39590729717876605
#>     Attrib V18    -0.5570249082764005
#>     Attrib V19    -0.6237127710758757
#>     Attrib V2    0.09409709181755943
#>     Attrib V20    -0.11905030267557508
#>     Attrib V21    -0.5081758474754697
#>     Attrib V22    -0.5439576725438328
#>     Attrib V23    0.5466824259136297
#>     Attrib V24    0.6778759332208819
#>     Attrib V25    -0.11235901454330148
#>     Attrib V26    0.15763872647000238
#>     Attrib V27    1.0636868879834935
#>     Attrib V28    1.2279565289550827
#>     Attrib V29    0.44485196554796097
#>     Attrib V3    0.17270547001156436
#>     Attrib V30    0.3728535764217094
#>     Attrib V31    -0.7519014026611074
#>     Attrib V32    6.713137354779628E-4
#>     Attrib V33    0.01839745196369565
#>     Attrib V34    0.12693054645076407
#>     Attrib V35    0.24693723948884772
#>     Attrib V36    -0.7431768194838656
#>     Attrib V37    -0.06268995692609408
#>     Attrib V38    0.1011693023522992
#>     Attrib V39    0.4214228622048337
#>     Attrib V4    0.26759513630109394
#>     Attrib V40    0.13022969539810658
#>     Attrib V41    0.6399168049867018
#>     Attrib V42    -0.1839666743512808
#>     Attrib V43    0.18140018701359728
#>     Attrib V44    0.03562224581341252
#>     Attrib V45    0.5328253510247931
#>     Attrib V46    0.43323137175504495
#>     Attrib V47    -0.046422015962913246
#>     Attrib V48    0.5277965180214754
#>     Attrib V49    0.45265991479836815
#>     Attrib V5    0.1365677927926756
#>     Attrib V50    -0.7203306932949131
#>     Attrib V51    0.2896696983405685
#>     Attrib V52    0.8468701697801959
#>     Attrib V53    0.38851044440423405
#>     Attrib V54    0.22272049097207056
#>     Attrib V55    -0.06600065270982078
#>     Attrib V56    -0.32496629662243987
#>     Attrib V57    -0.05090024411332959
#>     Attrib V58    0.04296816301788398
#>     Attrib V59    -0.041918046296128726
#>     Attrib V6    0.3249122738908542
#>     Attrib V60    0.31314428870918776
#>     Attrib V7    -0.38441412831427013
#>     Attrib V8    -0.39537618165756144
#>     Attrib V9    0.6915955095588537
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.5260077515523817
#>     Attrib V1    -0.0903413739094587
#>     Attrib V10    -0.23518699759863052
#>     Attrib V11    -0.6544594941772801
#>     Attrib V12    -0.816160222639672
#>     Attrib V13    0.027034527057742477
#>     Attrib V14    0.4417286640481271
#>     Attrib V15    0.19344404476477237
#>     Attrib V16    0.1596373631736813
#>     Attrib V17    0.05397221810109844
#>     Attrib V18    0.26999581346015555
#>     Attrib V19    0.2207383384742747
#>     Attrib V2    0.13204437749255776
#>     Attrib V20    -0.19244974225680744
#>     Attrib V21    0.22587169413739336
#>     Attrib V22    0.308933980155159
#>     Attrib V23    -0.25347222676870174
#>     Attrib V24    -0.3615747861190734
#>     Attrib V25    0.16481291237695217
#>     Attrib V26    0.23707200835384426
#>     Attrib V27    -0.1486362834152596
#>     Attrib V28    -0.3672804548619476
#>     Attrib V29    -0.18983671599228857
#>     Attrib V3    -0.0312584078464385
#>     Attrib V30    -0.23224338188290594
#>     Attrib V31    0.7151121877327562
#>     Attrib V32    -0.003644175137902444
#>     Attrib V33    -0.021473372861006968
#>     Attrib V34    0.029311594466306864
#>     Attrib V35    -0.07364392791596173
#>     Attrib V36    0.4704741815081583
#>     Attrib V37    0.21602243816385847
#>     Attrib V38    -0.09896822252766366
#>     Attrib V39    -0.43762333229708805
#>     Attrib V4    -0.03576975189157522
#>     Attrib V40    0.011752622544915558
#>     Attrib V41    -0.16081665906389955
#>     Attrib V42    -0.08674768621292529
#>     Attrib V43    -0.21971494093524221
#>     Attrib V44    -0.040414865967652445
#>     Attrib V45    -0.3840276291363194
#>     Attrib V46    -0.31330149975294647
#>     Attrib V47    0.0024862701221506677
#>     Attrib V48    -0.3807056133762847
#>     Attrib V49    -0.25068824077105756
#>     Attrib V5    0.0895065696947553
#>     Attrib V50    0.5929623969505936
#>     Attrib V51    -0.057580837568176516
#>     Attrib V52    -0.4942989004213375
#>     Attrib V53    -0.0833731938245537
#>     Attrib V54    0.21898377623893164
#>     Attrib V55    0.24319819696720232
#>     Attrib V56    0.1507284467033371
#>     Attrib V57    -0.08375928420836586
#>     Attrib V58    -0.11178794907785969
#>     Attrib V59    -0.034442769048336194
#>     Attrib V6    0.11116573563312328
#>     Attrib V60    -0.28104164425830264
#>     Attrib V7    0.28207181960850436
#>     Attrib V8    0.15602130849359866
#>     Attrib V9    -0.4548483524676747
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.30441960970329174
#>     Attrib V1    0.1576382793296276
#>     Attrib V10    0.22623059132361953
#>     Attrib V11    0.47677584922759597
#>     Attrib V12    0.5953833642810934
#>     Attrib V13    -0.12841039922503525
#>     Attrib V14    -0.29430695951529023
#>     Attrib V15    -0.12157106272322278
#>     Attrib V16    -0.10273789821693906
#>     Attrib V17    -0.08723067591566766
#>     Attrib V18    -0.2705626064127441
#>     Attrib V19    -0.312803620935858
#>     Attrib V2    -0.09362625612407782
#>     Attrib V20    0.09354281820103519
#>     Attrib V21    -0.2777688182315446
#>     Attrib V22    -0.47313816699043737
#>     Attrib V23    -0.04007408033272713
#>     Attrib V24    0.07692193632649431
#>     Attrib V25    -0.2315936923862931
#>     Attrib V26    -0.1881866868587807
#>     Attrib V27    0.23909675118089116
#>     Attrib V28    0.3315966941253287
#>     Attrib V29    0.07478905404270343
#>     Attrib V3    0.029661790519500995
#>     Attrib V30    0.3064125946162778
#>     Attrib V31    -0.43842723567411074
#>     Attrib V32    -0.012135511943180681
#>     Attrib V33    0.09062756512386577
#>     Attrib V34    0.06264483086116876
#>     Attrib V35    0.09752695143930147
#>     Attrib V36    -0.3442401614250029
#>     Attrib V37    -0.1730513299926938
#>     Attrib V38    0.1185030747486633
#>     Attrib V39    0.22319021569432543
#>     Attrib V4    0.04415661621728273
#>     Attrib V40    -0.05767848599072023
#>     Attrib V41    0.016046420528688616
#>     Attrib V42    -0.06314389545005449
#>     Attrib V43    0.06822636784474524
#>     Attrib V44    0.07088557881736732
#>     Attrib V45    0.41540693770920495
#>     Attrib V46    0.19090176663728015
#>     Attrib V47    -3.0652635225060775E-5
#>     Attrib V48    0.3372650299997955
#>     Attrib V49    0.18368273345967337
#>     Attrib V5    -0.05201820068778529
#>     Attrib V50    -0.28641750236870445
#>     Attrib V51    0.10904345086108427
#>     Attrib V52    0.3043419923582157
#>     Attrib V53    0.10218128519706618
#>     Attrib V54    0.005764644616226558
#>     Attrib V55    -0.1134056599469855
#>     Attrib V56    -0.10540858278935396
#>     Attrib V57    0.1905919060592654
#>     Attrib V58    0.1080915458526686
#>     Attrib V59    0.026406566277922865
#>     Attrib V6    -0.01705326479187323
#>     Attrib V60    0.24053692941499594
#>     Attrib V7    -0.22092102233780367
#>     Attrib V8    -0.10230570940592253
#>     Attrib V9    0.3750948927615754
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.4379911356034732
#>     Attrib V1    0.4613504821194068
#>     Attrib V10    0.05472068820897369
#>     Attrib V11    0.5795428956040066
#>     Attrib V12    0.5518338334903845
#>     Attrib V13    -0.4257653157622734
#>     Attrib V14    -0.4309987652565973
#>     Attrib V15    -0.13759648509933387
#>     Attrib V16    -0.07856747591282079
#>     Attrib V17    0.0556763986303957
#>     Attrib V18    -0.20773202998893264
#>     Attrib V19    0.1392047183061676
#>     Attrib V2    -0.18456432359854227
#>     Attrib V20    0.7399612276645238
#>     Attrib V21    0.26691133150253765
#>     Attrib V22    0.15995716412461422
#>     Attrib V23    0.7722103762419767
#>     Attrib V24    0.6712488734077761
#>     Attrib V25    -0.14548955983084652
#>     Attrib V26    -0.6575124253948581
#>     Attrib V27    -0.48456269975577654
#>     Attrib V28    -0.20381957385907412
#>     Attrib V29    -0.21068960878126472
#>     Attrib V3    0.22873342347039052
#>     Attrib V30    0.07841410192157071
#>     Attrib V31    -1.4473056159916624
#>     Attrib V32    -0.4307324600385649
#>     Attrib V33    0.21460540672434003
#>     Attrib V34    0.01621065507427325
#>     Attrib V35    -0.09675514642574329
#>     Attrib V36    -0.7462364098777375
#>     Attrib V37    -1.0022226579748859
#>     Attrib V38    -0.1579939168294937
#>     Attrib V39    0.35396562788615565
#>     Attrib V4    0.02609081162561608
#>     Attrib V40    -0.19993330446284846
#>     Attrib V41    -0.04531259015853269
#>     Attrib V42    0.4480711835090703
#>     Attrib V43    0.4150500832839015
#>     Attrib V44    -0.23251857471962353
#>     Attrib V45    0.22705588145816505
#>     Attrib V46    0.32265964605716935
#>     Attrib V47    0.08398080531590182
#>     Attrib V48    0.3742083437582503
#>     Attrib V49    0.1359117936489791
#>     Attrib V5    -0.2446136924956183
#>     Attrib V50    -0.7164677137284285
#>     Attrib V51    -0.03948183935763339
#>     Attrib V52    0.3624049702443219
#>     Attrib V53    -0.14021354118638027
#>     Attrib V54    -0.4167295531805937
#>     Attrib V55    -0.28405180724626833
#>     Attrib V56    0.2738606255449567
#>     Attrib V57    0.6382117472186402
#>     Attrib V58    0.5243951557087255
#>     Attrib V59    0.8465773333293518
#>     Attrib V6    -0.31883496572609593
#>     Attrib V60    0.8331567582530397
#>     Attrib V7    -0.2874641147330898
#>     Attrib V8    0.04184360434933183
#>     Attrib V9    0.43257136287245357
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.17261555494419445
#>     Attrib V1    0.36435919400040817
#>     Attrib V10    0.03739965858217971
#>     Attrib V11    0.37567795786609753
#>     Attrib V12    0.45646572615775055
#>     Attrib V13    -0.19769357055211226
#>     Attrib V14    -0.2966575386118445
#>     Attrib V15    -0.08730347752590031
#>     Attrib V16    -0.10496767129781318
#>     Attrib V17    0.050567389706711034
#>     Attrib V18    -0.1490537028801452
#>     Attrib V19    0.03205592074375135
#>     Attrib V2    -0.1440215023184193
#>     Attrib V20    0.5847378772102135
#>     Attrib V21    0.27839581923033185
#>     Attrib V22    0.1383969287417828
#>     Attrib V23    0.6263708759085657
#>     Attrib V24    0.5596484067123689
#>     Attrib V25    0.0038321540006002975
#>     Attrib V26    -0.4159964616654424
#>     Attrib V27    -0.2865548093851848
#>     Attrib V28    -0.15119291932497356
#>     Attrib V29    -0.1728499854001876
#>     Attrib V3    0.25696200816934484
#>     Attrib V30    0.015758623004444146
#>     Attrib V31    -1.1252869026744183
#>     Attrib V32    -0.33771816090368
#>     Attrib V33    0.04404192735074421
#>     Attrib V34    -0.018955383884345894
#>     Attrib V35    -0.04827107372417933
#>     Attrib V36    -0.5131211385312925
#>     Attrib V37    -0.614252937982797
#>     Attrib V38    -0.09977068999676288
#>     Attrib V39    0.29306857792045193
#>     Attrib V4    0.01368249810152221
#>     Attrib V40    -0.17900792112486946
#>     Attrib V41    -0.015475976071695107
#>     Attrib V42    0.314544638478163
#>     Attrib V43    0.23846169499645906
#>     Attrib V44    -0.11117685310116585
#>     Attrib V45    0.14478693809992588
#>     Attrib V46    0.24729473545594827
#>     Attrib V47    0.08975376033294917
#>     Attrib V48    0.18844534904210633
#>     Attrib V49    0.10864761295488728
#>     Attrib V5    -0.12862309388161222
#>     Attrib V50    -0.5022036096847107
#>     Attrib V51    -0.044180432751888404
#>     Attrib V52    0.20897595677556327
#>     Attrib V53    -0.07434205750249592
#>     Attrib V54    -0.24003457792285454
#>     Attrib V55    -0.17010568859968964
#>     Attrib V56    0.1927579229881994
#>     Attrib V57    0.44976316095328134
#>     Attrib V58    0.34866108452181943
#>     Attrib V59    0.5884622121144215
#>     Attrib V6    -0.14636407284859965
#>     Attrib V60    0.6793915542466452
#>     Attrib V7    -0.14528308311170487
#>     Attrib V8    -0.0743056645240617
#>     Attrib V9    0.2942415737640387
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.2752035321990963
#>     Attrib V1    0.41246661729857204
#>     Attrib V10    0.082093108466553
#>     Attrib V11    0.4042679708129304
#>     Attrib V12    0.41240227446330124
#>     Attrib V13    -0.32700591536662976
#>     Attrib V14    -0.31767733823786753
#>     Attrib V15    0.015310088562119578
#>     Attrib V16    -0.059389509583004416
#>     Attrib V17    0.03578881275177867
#>     Attrib V18    -0.18016269239107083
#>     Attrib V19    -0.002001641283583997
#>     Attrib V2    -0.08615158797958992
#>     Attrib V20    0.5014763797689891
#>     Attrib V21    0.15816880974371958
#>     Attrib V22    0.021644029377854326
#>     Attrib V23    0.4652697123555128
#>     Attrib V24    0.3980653058905578
#>     Attrib V25    -0.16403167907743124
#>     Attrib V26    -0.4913445040948926
#>     Attrib V27    -0.4211365372077598
#>     Attrib V28    -0.29049811139093984
#>     Attrib V29    -0.3402606550123229
#>     Attrib V3    0.16786736023849191
#>     Attrib V30    0.004848748843405746
#>     Attrib V31    -0.9439439051103179
#>     Attrib V32    -0.2659735131333289
#>     Attrib V33    0.12992557644383604
#>     Attrib V34    -0.07573238116555715
#>     Attrib V35    -0.11539794459790849
#>     Attrib V36    -0.6285165094226429
#>     Attrib V37    -0.6559032478540533
#>     Attrib V38    -0.1684754923404089
#>     Attrib V39    0.23553553563214527
#>     Attrib V4    0.004255539875214392
#>     Attrib V40    -0.18655624263994616
#>     Attrib V41    -0.09299041614997293
#>     Attrib V42    0.20331877631022663
#>     Attrib V43    0.17038622727951044
#>     Attrib V44    -0.1103294385738833
#>     Attrib V45    0.11258915352028104
#>     Attrib V46    0.19345225260743626
#>     Attrib V47    0.036534040438339375
#>     Attrib V48    0.3002960010066837
#>     Attrib V49    0.1513866461414552
#>     Attrib V5    -0.1925511203980762
#>     Attrib V50    -0.46052620660620475
#>     Attrib V51    -0.06433329496032789
#>     Attrib V52    0.22907666309604388
#>     Attrib V53    -0.11365262290950691
#>     Attrib V54    -0.17883141470266253
#>     Attrib V55    -0.14273448050373028
#>     Attrib V56    0.21266557207796932
#>     Attrib V57    0.4410889983791443
#>     Attrib V58    0.39303029313044324
#>     Attrib V59    0.565300864269598
#>     Attrib V6    -0.19950731894664075
#>     Attrib V60    0.6381936170061036
#>     Attrib V7    -0.19606853352708778
#>     Attrib V8    -0.04866122959438474
#>     Attrib V9    0.31236528571817396
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.8844309845198656
#>     Attrib V1    -0.029095636018091817
#>     Attrib V10    -0.4169135985938766
#>     Attrib V11    -1.3281853934389005
#>     Attrib V12    -1.7692243173533304
#>     Attrib V13    -0.3047031811632533
#>     Attrib V14    0.602266014983299
#>     Attrib V15    0.4746241967951402
#>     Attrib V16    0.16904994263662554
#>     Attrib V17    0.04508646518171095
#>     Attrib V18    0.12966943022180308
#>     Attrib V19    0.10118269327188727
#>     Attrib V2    0.275806575849566
#>     Attrib V20    -0.3699585824487586
#>     Attrib V21    0.3460024002109086
#>     Attrib V22    0.38251096220754
#>     Attrib V23    -0.9971372162568216
#>     Attrib V24    -0.9416540864535328
#>     Attrib V25    0.06427434833102125
#>     Attrib V26    0.16770733065866059
#>     Attrib V27    -0.7549133664432208
#>     Attrib V28    -1.1668784817750704
#>     Attrib V29    -0.41432488438465864
#>     Attrib V3    0.11564373409454136
#>     Attrib V30    -0.47324611924517485
#>     Attrib V31    1.116067019599479
#>     Attrib V32    -0.05662335653050824
#>     Attrib V33    -0.20731228714692881
#>     Attrib V34    -0.12592885399413822
#>     Attrib V35    -0.2675299862026177
#>     Attrib V36    1.0658261772808582
#>     Attrib V37    0.7093216670024943
#>     Attrib V38    0.07827095667032916
#>     Attrib V39    -0.5582492959460983
#>     Attrib V4    -0.15712608237486894
#>     Attrib V40    -0.1578002993363123
#>     Attrib V41    -0.6878660506512135
#>     Attrib V42    -0.18389251500272247
#>     Attrib V43    -0.42956427290846044
#>     Attrib V44    -0.1611481211214261
#>     Attrib V45    -0.5689026109519876
#>     Attrib V46    -0.37652392897735065
#>     Attrib V47    0.07009111242360033
#>     Attrib V48    -0.7125202385288514
#>     Attrib V49    -0.6052828289757306
#>     Attrib V5    0.008053312741591557
#>     Attrib V50    1.0454605291249464
#>     Attrib V51    -0.2452995053425178
#>     Attrib V52    -1.0198264636426282
#>     Attrib V53    -0.26638774727781944
#>     Attrib V54    0.1843239234302095
#>     Attrib V55    0.32990072281450356
#>     Attrib V56    0.4026664941204503
#>     Attrib V57    0.04956426138274869
#>     Attrib V58    -0.15273397945043068
#>     Attrib V59    -0.009047505085538884
#>     Attrib V6    -0.04679980283657582
#>     Attrib V60    -0.45307696012164006
#>     Attrib V7    0.5951053023930177
#>     Attrib V8    0.27475159888347783
#>     Attrib V9    -0.7894518444012446
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.028227357749946707
#>     Attrib V1    0.16390782126949516
#>     Attrib V10    0.09185534413580267
#>     Attrib V11    0.17351557200159837
#>     Attrib V12    0.20984878323698536
#>     Attrib V13    -0.03939531876363173
#>     Attrib V14    -0.11239401916096955
#>     Attrib V15    -0.021122537586207454
#>     Attrib V16    0.010869819638644232
#>     Attrib V17    -0.009585186148188147
#>     Attrib V18    -0.092240858900272
#>     Attrib V19    -0.09402326775109672
#>     Attrib V2    -0.05600310225190464
#>     Attrib V20    0.0635797039362306
#>     Attrib V21    -0.08361192837372199
#>     Attrib V22    -0.1918721129159262
#>     Attrib V23    -0.06682675886662044
#>     Attrib V24    0.06335237934430618
#>     Attrib V25    -0.0900212066988758
#>     Attrib V26    -0.13118260919622232
#>     Attrib V27    0.013825343014814015
#>     Attrib V28    0.05814684334548689
#>     Attrib V29    -0.040414915302775654
#>     Attrib V3    0.10968216284120917
#>     Attrib V30    0.05263231267047108
#>     Attrib V31    -0.2755642565504315
#>     Attrib V32    -0.031641856439673294
#>     Attrib V33    0.016172967273187285
#>     Attrib V34    0.021712851811304043
#>     Attrib V35    -0.015183378160545638
#>     Attrib V36    -0.22340313958910543
#>     Attrib V37    -0.15786644494159285
#>     Attrib V38    0.0015307471733845685
#>     Attrib V39    0.10995319023691781
#>     Attrib V4    0.077722617928795
#>     Attrib V40    -0.07550835197135522
#>     Attrib V41    -0.014913674956452879
#>     Attrib V42    0.021541183418614246
#>     Attrib V43    0.030606450085664597
#>     Attrib V44    -0.018231241037616593
#>     Attrib V45    0.17478058795382254
#>     Attrib V46    0.11447721758349844
#>     Attrib V47    0.012916606803638299
#>     Attrib V48    0.142598844779574
#>     Attrib V49    0.05843475123520139
#>     Attrib V5    -0.011602239189400464
#>     Attrib V50    -0.07977714622924417
#>     Attrib V51    0.07882123242020882
#>     Attrib V52    0.17623476711581418
#>     Attrib V53    0.13233024255103681
#>     Attrib V54    -0.01094119442252852
#>     Attrib V55    0.00365233659000452
#>     Attrib V56    0.05852578172762306
#>     Attrib V57    0.21894182067988827
#>     Attrib V58    0.16585255341780267
#>     Attrib V59    0.11998344647326918
#>     Attrib V6    0.007713083568520709
#>     Attrib V60    0.23918078777883284
#>     Attrib V7    -0.0361573577128428
#>     Attrib V8    -0.06996859117084499
#>     Attrib V9    0.19308828429017078
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.12472237931680122
#>     Attrib V1    0.11427464001994662
#>     Attrib V10    0.09569880801541844
#>     Attrib V11    0.047650748998688076
#>     Attrib V12    -0.0314875360775784
#>     Attrib V13    -0.06087401364158009
#>     Attrib V14    0.020208348707697735
#>     Attrib V15    0.11853511669082364
#>     Attrib V16    0.05108992412895232
#>     Attrib V17    0.03565612834047308
#>     Attrib V18    -0.014082453837415432
#>     Attrib V19    -0.006301972695157318
#>     Attrib V2    0.12630090843291178
#>     Attrib V20    -0.030234089225856308
#>     Attrib V21    -0.0288486388750243
#>     Attrib V22    0.011417383216172906
#>     Attrib V23    -0.07209430162450714
#>     Attrib V24    -0.022940042288368656
#>     Attrib V25    -0.054771954614257934
#>     Attrib V26    -0.05602586342964608
#>     Attrib V27    -0.035134572215950816
#>     Attrib V28    -0.062570814920404
#>     Attrib V29    -0.09919814182674205
#>     Attrib V3    0.06931440297215782
#>     Attrib V30    0.014074786398191378
#>     Attrib V31    0.05991443547366892
#>     Attrib V32    -0.006087404254375998
#>     Attrib V33    0.06203519525124265
#>     Attrib V34    0.006807918913889775
#>     Attrib V35    0.11245535189372902
#>     Attrib V36    0.061012386647349356
#>     Attrib V37    0.052578170599719885
#>     Attrib V38    0.10498917829083988
#>     Attrib V39    0.08435953450208464
#>     Attrib V4    0.06236938506539663
#>     Attrib V40    0.03070070141008789
#>     Attrib V41    0.07097743133047427
#>     Attrib V42    0.02323980072833515
#>     Attrib V43    0.07981525925154151
#>     Attrib V44    0.08952361263518012
#>     Attrib V45    0.08299371882971425
#>     Attrib V46    0.028224964741446687
#>     Attrib V47    0.01682333115349385
#>     Attrib V48    0.07650469315635552
#>     Attrib V49    -0.0056993094401676875
#>     Attrib V5    0.07807788094284643
#>     Attrib V50    0.07711349112919144
#>     Attrib V51    0.06260452943092487
#>     Attrib V52    0.009264443894655604
#>     Attrib V53    0.030314492634672972
#>     Attrib V54    0.04092388404186788
#>     Attrib V55    0.12364615158432392
#>     Attrib V56    0.09431316638405374
#>     Attrib V57    0.17533279515077574
#>     Attrib V58    0.05796243628828276
#>     Attrib V59    0.02428956051644447
#>     Attrib V6    0.09898227756492296
#>     Attrib V60    0.10460063388126362
#>     Attrib V7    0.045239205785461305
#>     Attrib V8    0.09954770548803894
#>     Attrib V9    0.08239817144091623
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.20047501299473122
#>     Attrib V1    0.09480580020407298
#>     Attrib V10    0.06452118536140161
#>     Attrib V11    0.027396299628576242
#>     Attrib V12    -0.014240432999896973
#>     Attrib V13    -0.03107106541368277
#>     Attrib V14    0.03587234526937773
#>     Attrib V15    0.02540185555498944
#>     Attrib V16    0.041519999220093265
#>     Attrib V17    -0.0012812287474044848
#>     Attrib V18    0.035229831323972595
#>     Attrib V19    -0.06757744207621452
#>     Attrib V2    0.07797000244257303
#>     Attrib V20    0.01667335510700656
#>     Attrib V21    0.020447698367366155
#>     Attrib V22    -0.04423735970729092
#>     Attrib V23    -0.03824933434776773
#>     Attrib V24    -0.05631356843535521
#>     Attrib V25    -0.014972082459031281
#>     Attrib V26    -0.010959897576779114
#>     Attrib V27    -0.01614840375915313
#>     Attrib V28    -0.05815491726513722
#>     Attrib V29    -0.08023405308856461
#>     Attrib V3    0.13051096182123806
#>     Attrib V30    -0.052378553729280915
#>     Attrib V31    -0.031053794923709285
#>     Attrib V32    0.0074200499931964085
#>     Attrib V33    0.02176792783400278
#>     Attrib V34    0.05612892174798806
#>     Attrib V35    0.042958909636288956
#>     Attrib V36    0.12430339205111908
#>     Attrib V37    0.04735622013230725
#>     Attrib V38    0.035913538171533754
#>     Attrib V39    0.08470655609472356
#>     Attrib V4    0.03672386485438238
#>     Attrib V40    0.025923005655512265
#>     Attrib V41    -0.002306528973075137
#>     Attrib V42    0.02770816279742716
#>     Attrib V43    0.032407458793038704
#>     Attrib V44    0.09374948605511953
#>     Attrib V45    0.01025801281061569
#>     Attrib V46    0.038525022727023905
#>     Attrib V47    0.09400859791927403
#>     Attrib V48    0.05606286584203334
#>     Attrib V49    0.06382628668216997
#>     Attrib V5    0.07753849391467763
#>     Attrib V50    0.024226530320910114
#>     Attrib V51    0.11335019224898363
#>     Attrib V52    0.03904978645634371
#>     Attrib V53    0.06549646102184616
#>     Attrib V54    0.02728792206523694
#>     Attrib V55    0.11199810483986765
#>     Attrib V56    0.10266607156405302
#>     Attrib V57    0.08733303434480735
#>     Attrib V58    0.0949352756249547
#>     Attrib V59    0.09102575030423367
#>     Attrib V6    0.05133957742066209
#>     Attrib V60    0.14319992142937366
#>     Attrib V7    0.10405832632021213
#>     Attrib V8    0.09049753514765388
#>     Attrib V9    0.08578236291539458
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.4524154297604881
#>     Attrib V1    0.4290765222969189
#>     Attrib V10    0.07861383374588618
#>     Attrib V11    0.6298926724677244
#>     Attrib V12    0.8841389728387338
#>     Attrib V13    -0.2994719368132733
#>     Attrib V14    -0.5104498514099391
#>     Attrib V15    -0.14418074470345435
#>     Attrib V16    -0.24376890430466636
#>     Attrib V17    -0.07938714283063214
#>     Attrib V18    -0.35530670038111734
#>     Attrib V19    -6.283662909624836E-4
#>     Attrib V2    -0.14283646110692685
#>     Attrib V20    0.6553786531753036
#>     Attrib V21    0.19774855786219414
#>     Attrib V22    0.19611689967971502
#>     Attrib V23    0.957715655333136
#>     Attrib V24    0.9127240060316746
#>     Attrib V25    0.033339501673727796
#>     Attrib V26    -0.4810501547249761
#>     Attrib V27    -0.30091650767811634
#>     Attrib V28    0.01636191481121798
#>     Attrib V29    -0.13246656514884272
#>     Attrib V3    0.3011589231907285
#>     Attrib V30    0.12230789299780995
#>     Attrib V31    -1.4281808524259643
#>     Attrib V32    -0.428626960810305
#>     Attrib V33    0.1756706569879363
#>     Attrib V34    -0.013968545290603313
#>     Attrib V35    -0.01702240617642634
#>     Attrib V36    -0.8245132451228756
#>     Attrib V37    -0.9495816161491822
#>     Attrib V38    -0.18436212060627583
#>     Attrib V39    0.3522296122079048
#>     Attrib V4    0.0262614874031614
#>     Attrib V40    -0.22802262777703344
#>     Attrib V41    0.020961819442125426
#>     Attrib V42    0.4677976610346485
#>     Attrib V43    0.3644331354641784
#>     Attrib V44    -0.24219940111548544
#>     Attrib V45    0.2584741426713184
#>     Attrib V46    0.3401846266069635
#>     Attrib V47    0.03133201688727158
#>     Attrib V48    0.27148565641109823
#>     Attrib V49    0.17890745777738704
#>     Attrib V5    -0.22074752840353393
#>     Attrib V50    -0.8306657741000315
#>     Attrib V51    -0.060629607162335536
#>     Attrib V52    0.4181302644729774
#>     Attrib V53    -0.14693277537408778
#>     Attrib V54    -0.30906845761282564
#>     Attrib V55    -0.20604197075232555
#>     Attrib V56    0.17445122713389294
#>     Attrib V57    0.4438409421330793
#>     Attrib V58    0.5677580843475967
#>     Attrib V59    0.7303534308273505
#>     Attrib V6    -0.2083963372924148
#>     Attrib V60    0.8418372612992515
#>     Attrib V7    -0.31114130263377154
#>     Attrib V8    -0.11411966994366841
#>     Attrib V9    0.4293198262526364
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.266067987562886
#>     Attrib V1    0.4762600085661587
#>     Attrib V10    0.09469536008473814
#>     Attrib V11    0.4990106672729361
#>     Attrib V12    0.6234225920558687
#>     Attrib V13    -0.32560015458782604
#>     Attrib V14    -0.3847214469585689
#>     Attrib V15    -0.14929793349122172
#>     Attrib V16    -0.16982359228062144
#>     Attrib V17    0.042727313163001934
#>     Attrib V18    -0.14316200550848443
#>     Attrib V19    0.10442229353186423
#>     Attrib V2    -0.1898584493992901
#>     Attrib V20    0.7360950499221148
#>     Attrib V21    0.3813109865056907
#>     Attrib V22    0.2753483489975628
#>     Attrib V23    0.8097029723452898
#>     Attrib V24    0.6847364425101935
#>     Attrib V25    -0.034671184346832064
#>     Attrib V26    -0.4103504534353054
#>     Attrib V27    -0.3188292797148322
#>     Attrib V28    -0.130894703226489
#>     Attrib V29    -0.09683167112178936
#>     Attrib V3    0.19788355256882156
#>     Attrib V30    0.12346056606567483
#>     Attrib V31    -1.3804360213430207
#>     Attrib V32    -0.5182063050996902
#>     Attrib V33    0.051991346302764495
#>     Attrib V34    -0.07506646980691722
#>     Attrib V35    0.020925022609250336
#>     Attrib V36    -0.4224073620828829
#>     Attrib V37    -0.6357350402226282
#>     Attrib V38    1.456210744147452E-4
#>     Attrib V39    0.3179649432889097
#>     Attrib V4    -0.0013261826762902985
#>     Attrib V40    -0.27639474257961494
#>     Attrib V41    -0.06678359751830316
#>     Attrib V42    0.32726926177537075
#>     Attrib V43    0.43048560756633786
#>     Attrib V44    -0.016333601714251175
#>     Attrib V45    0.27280328391811776
#>     Attrib V46    0.2602522689409064
#>     Attrib V47    0.015390153543315285
#>     Attrib V48    0.21748730437313987
#>     Attrib V49    0.0846859142683893
#>     Attrib V5    -0.17993068121963426
#>     Attrib V50    -0.6116994018175932
#>     Attrib V51    0.02632381284865678
#>     Attrib V52    0.316350468950099
#>     Attrib V53    -0.1817831359426801
#>     Attrib V54    -0.28277591567375054
#>     Attrib V55    -0.18026115782790175
#>     Attrib V56    0.23519723181442703
#>     Attrib V57    0.4657353903766801
#>     Attrib V58    0.4469355608445043
#>     Attrib V59    0.7143316336453892
#>     Attrib V6    -0.236066722932334
#>     Attrib V60    0.8027782099426782
#>     Attrib V7    -0.22078452888668473
#>     Attrib V8    -0.12393269722008865
#>     Attrib V9    0.3678373309082923
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.8603530382853974
#>     Attrib V1    -0.04239481805914823
#>     Attrib V10    -0.5766098735517575
#>     Attrib V11    -1.5273445669630517
#>     Attrib V12    -1.942391254559434
#>     Attrib V13    -0.4076097397724818
#>     Attrib V14    0.6131199718481224
#>     Attrib V15    0.4016060976862082
#>     Attrib V16    0.13990901681035844
#>     Attrib V17    0.07667685817818003
#>     Attrib V18    0.22836064703618858
#>     Attrib V19    0.06401454796975938
#>     Attrib V2    0.154392726917102
#>     Attrib V20    -0.4006119694108813
#>     Attrib V21    0.4042435407540996
#>     Attrib V22    0.3513478368568953
#>     Attrib V23    -1.026747740998578
#>     Attrib V24    -0.9213476621037819
#>     Attrib V25    0.23108472194553933
#>     Attrib V26    0.23113134018667003
#>     Attrib V27    -0.7385507004907288
#>     Attrib V28    -1.2611523822444424
#>     Attrib V29    -0.4540302695886022
#>     Attrib V3    0.05680421723757503
#>     Attrib V30    -0.5238462815024885
#>     Attrib V31    1.2205951640834618
#>     Attrib V32    -0.07713292399873058
#>     Attrib V33    -0.23827375421196542
#>     Attrib V34    -0.17953761770110188
#>     Attrib V35    -0.32790867201585255
#>     Attrib V36    1.148603969069901
#>     Attrib V37    0.7631383512751413
#>     Attrib V38    0.0762084795558714
#>     Attrib V39    -0.5996682691954112
#>     Attrib V4    -0.02967176516147965
#>     Attrib V40    -0.12912632759640585
#>     Attrib V41    -0.6083630416175301
#>     Attrib V42    -0.06098525827670259
#>     Attrib V43    -0.36720942046078864
#>     Attrib V44    -0.1603479433545365
#>     Attrib V45    -0.7801579377401996
#>     Attrib V46    -0.4778890031143065
#>     Attrib V47    0.05870047912137045
#>     Attrib V48    -0.7076992012669687
#>     Attrib V49    -0.6958293559747493
#>     Attrib V5    0.1310415327046388
#>     Attrib V50    1.0945298415104932
#>     Attrib V51    -0.29023752156972277
#>     Attrib V52    -1.0135452995999787
#>     Attrib V53    -0.11435983293984418
#>     Attrib V54    0.31543790529216614
#>     Attrib V55    0.22339640922824539
#>     Attrib V56    0.3331095654126389
#>     Attrib V57    0.2881499527347213
#>     Attrib V58    -0.227202936651545
#>     Attrib V59    0.16591586030916886
#>     Attrib V6    -0.009198709897813224
#>     Attrib V60    -0.2957773247728179
#>     Attrib V7    0.7918579491347023
#>     Attrib V8    0.17786659595174914
#>     Attrib V9    -0.9436188823841032
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.1559768977469262
#>     Attrib V1    0.3096443717514026
#>     Attrib V10    0.09291953639796192
#>     Attrib V11    0.25070375938563993
#>     Attrib V12    0.25996515200811593
#>     Attrib V13    -0.18513607301008206
#>     Attrib V14    -0.11873455435385223
#>     Attrib V15    0.017948134521420158
#>     Attrib V16    0.05550795914113295
#>     Attrib V17    0.010503052788877766
#>     Attrib V18    -0.15508390562453764
#>     Attrib V19    -0.0779570080222956
#>     Attrib V2    0.0038020446010504643
#>     Attrib V20    0.283318104923003
#>     Attrib V21    0.04567945904532233
#>     Attrib V22    -0.11509144172246742
#>     Attrib V23    0.08861480902793831
#>     Attrib V24    0.19179261521968677
#>     Attrib V25    -0.2166820295332579
#>     Attrib V26    -0.3681134040490686
#>     Attrib V27    -0.19509136913751005
#>     Attrib V28    -0.1747575223325114
#>     Attrib V29    -0.16213985494296926
#>     Attrib V3    0.12733605134056758
#>     Attrib V30    -0.0014460034162693698
#>     Attrib V31    -0.523388611901826
#>     Attrib V32    -0.18416477651531893
#>     Attrib V33    -0.01839453625085787
#>     Attrib V34    -0.09477048836520861
#>     Attrib V35    -0.13029096697153397
#>     Attrib V36    -0.4176274633139861
#>     Attrib V37    -0.3812232762246515
#>     Attrib V38    -0.09704441369022529
#>     Attrib V39    0.09627728167864305
#>     Attrib V4    0.06050664009116174
#>     Attrib V40    -0.12502777913756646
#>     Attrib V41    -0.1427708600953691
#>     Attrib V42    0.004602488139706599
#>     Attrib V43    0.10311130606585785
#>     Attrib V44    -0.0822625044565192
#>     Attrib V45    0.08790402100416557
#>     Attrib V46    0.12931786172589801
#>     Attrib V47    -0.029981436044451047
#>     Attrib V48    0.20609872078334035
#>     Attrib V49    0.07751290084631661
#>     Attrib V5    -0.03586330572481956
#>     Attrib V50    -0.25675463588809827
#>     Attrib V51    -0.011376336061647669
#>     Attrib V52    0.18802904550919025
#>     Attrib V53    0.0038385579264931936
#>     Attrib V54    -0.03215138654339318
#>     Attrib V55    -0.04240948975625895
#>     Attrib V56    0.14148503577541727
#>     Attrib V57    0.30530502690484473
#>     Attrib V58    0.27929403647632706
#>     Attrib V59    0.3296149656151009
#>     Attrib V6    -0.04562965272664007
#>     Attrib V60    0.4195491526120493
#>     Attrib V7    -0.0669333905085888
#>     Attrib V8    -0.10720610466312055
#>     Attrib V9    0.22443950800235754
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.31943007268502543
#>     Attrib V1    0.6013090441063216
#>     Attrib V10    0.008686930544640223
#>     Attrib V11    0.39776121176193246
#>     Attrib V12    0.4056597077746141
#>     Attrib V13    -0.49776899293381965
#>     Attrib V14    -0.3589726521299731
#>     Attrib V15    -0.020149968701736007
#>     Attrib V16    -0.06557947628216654
#>     Attrib V17    0.2281525325772979
#>     Attrib V18    -0.04830096675884989
#>     Attrib V19    0.23522614702331798
#>     Attrib V2    -0.362635839341589
#>     Attrib V20    0.9478861822101896
#>     Attrib V21    0.45004536590873734
#>     Attrib V22    0.2291065839705707
#>     Attrib V23    0.6915496147464253
#>     Attrib V24    0.5469101862293688
#>     Attrib V25    -0.2839239439717184
#>     Attrib V26    -0.8303853332463343
#>     Attrib V27    -0.8198663527867656
#>     Attrib V28    -0.5354766033048767
#>     Attrib V29    -0.439141986431606
#>     Attrib V3    0.3638789126570372
#>     Attrib V30    -0.08125990251526084
#>     Attrib V31    -1.732719774846002
#>     Attrib V32    -0.7757155939241772
#>     Attrib V33    -0.032525977178110926
#>     Attrib V34    -0.19731829096026643
#>     Attrib V35    -0.1305507839310197
#>     Attrib V36    -0.6030098470546819
#>     Attrib V37    -0.9342632571351601
#>     Attrib V38    -0.126532208613938
#>     Attrib V39    0.4241749233883447
#>     Attrib V4    0.11355880268607113
#>     Attrib V40    -0.37788269835118193
#>     Attrib V41    -0.22709701698869234
#>     Attrib V42    0.5495649714203347
#>     Attrib V43    0.49629369389711503
#>     Attrib V44    -0.13656657387649804
#>     Attrib V45    0.28861209868348225
#>     Attrib V46    0.31386941466149604
#>     Attrib V47    0.16348168919216963
#>     Attrib V48    0.3200556577704025
#>     Attrib V49    0.142232362510616
#>     Attrib V5    -0.20210548434442502
#>     Attrib V50    -0.6546667906697096
#>     Attrib V51    -0.1398751691469965
#>     Attrib V52    0.28020494619517333
#>     Attrib V53    -0.08606727549988832
#>     Attrib V54    -0.3805978574578351
#>     Attrib V55    -0.3236010763871315
#>     Attrib V56    0.4479404920242442
#>     Attrib V57    0.8376137141422777
#>     Attrib V58    0.5623574073940607
#>     Attrib V59    1.0461119101491412
#>     Attrib V6    -0.29264713547490645
#>     Attrib V60    1.0164699528592787
#>     Attrib V7    -0.13106446372932187
#>     Attrib V8    0.07541273518578855
#>     Attrib V9    0.3863835353647052
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.2417173165634732
#>     Attrib V1    -0.11103860529734011
#>     Attrib V10    -0.15317286770961308
#>     Attrib V11    -0.39714527354340917
#>     Attrib V12    -0.48238783264276786
#>     Attrib V13    -0.04867845776081864
#>     Attrib V14    0.2075907772580519
#>     Attrib V15    0.18802986355467763
#>     Attrib V16    0.11222507867267739
#>     Attrib V17    0.13263128632925947
#>     Attrib V18    0.1446853596056099
#>     Attrib V19    0.13093495891510668
#>     Attrib V2    0.06571842651524609
#>     Attrib V20    -0.09983987268502562
#>     Attrib V21    0.1399787773755881
#>     Attrib V22    0.1737215382031452
#>     Attrib V23    -0.08911141217364728
#>     Attrib V24    -0.18936977523233936
#>     Attrib V25    0.09698359139380208
#>     Attrib V26    0.1435972833680654
#>     Attrib V27    -0.10878086812741662
#>     Attrib V28    -0.16444880484300897
#>     Attrib V29    -0.10360518811896134
#>     Attrib V3    -0.044311369887025595
#>     Attrib V30    -0.16596118200407495
#>     Attrib V31    0.37401354961967426
#>     Attrib V32    0.081481894029413
#>     Attrib V33    -0.06881414496676522
#>     Attrib V34    0.01888077971993934
#>     Attrib V35    -0.01800616323598645
#>     Attrib V36    0.31624592969754023
#>     Attrib V37    0.13161185591327987
#>     Attrib V38    -0.09799723424394213
#>     Attrib V39    -0.26279961466442686
#>     Attrib V4    0.005378270859473253
#>     Attrib V40    0.05322854792667561
#>     Attrib V41    -0.05678364750983812
#>     Attrib V42    -0.11635236697754306
#>     Attrib V43    -0.13239268447370947
#>     Attrib V44    -0.10308132805985556
#>     Attrib V45    -0.33162798508656305
#>     Attrib V46    -0.17891681448857155
#>     Attrib V47    0.021137684802003738
#>     Attrib V48    -0.24437726073603502
#>     Attrib V49    -0.19554465880290792
#>     Attrib V5    0.023300659547528413
#>     Attrib V50    0.3334856535399556
#>     Attrib V51    -0.012320989912927576
#>     Attrib V52    -0.23379482341346455
#>     Attrib V53    -0.10585918662700573
#>     Attrib V54    0.08600841191764534
#>     Attrib V55    0.14721685730179632
#>     Attrib V56    0.07589835914301712
#>     Attrib V57    -0.020053026940053172
#>     Attrib V58    -0.05661498462243923
#>     Attrib V59    -0.07044232164329507
#>     Attrib V6    0.10279113675335176
#>     Attrib V60    -0.20828107241790716
#>     Attrib V7    0.1425801018660978
#>     Attrib V8    0.09372535343649081
#>     Attrib V9    -0.19083070974569127
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.9998815791200387
#>     Attrib V1    -0.007822463460383353
#>     Attrib V10    0.4917007951975102
#>     Attrib V11    1.3913269246963509
#>     Attrib V12    2.070655818316299
#>     Attrib V13    0.5768685970660706
#>     Attrib V14    -0.4791604831079104
#>     Attrib V15    -0.3697291065375447
#>     Attrib V16    -0.2894384745913165
#>     Attrib V17    -0.34745055773797767
#>     Attrib V18    -0.5021098359581452
#>     Attrib V19    -0.5359394286059636
#>     Attrib V2    0.1303561843441712
#>     Attrib V20    -0.13981826889088061
#>     Attrib V21    -0.6512507154219312
#>     Attrib V22    -0.49412973832623847
#>     Attrib V23    0.8485029539716858
#>     Attrib V24    0.8132689292298009
#>     Attrib V25    -0.27611583069431966
#>     Attrib V26    0.05806867273821517
#>     Attrib V27    1.320930085696442
#>     Attrib V28    1.636822665578512
#>     Attrib V29    0.6386127566850329
#>     Attrib V3    0.2196836685232861
#>     Attrib V30    0.4219956056589586
#>     Attrib V31    -0.916032719043786
#>     Attrib V32    -0.022432260049083764
#>     Attrib V33    -0.025077658217696863
#>     Attrib V34    0.12626786855205924
#>     Attrib V35    0.28782915936778936
#>     Attrib V36    -0.9873728117142562
#>     Attrib V37    -0.16207746094529163
#>     Attrib V38    0.07000678520668639
#>     Attrib V39    0.456208787594846
#>     Attrib V4    0.3448583872591544
#>     Attrib V40    0.18181436464459455
#>     Attrib V41    0.8356082515170209
#>     Attrib V42    -0.1577453559195802
#>     Attrib V43    0.17112859615683157
#>     Attrib V44    0.14884067429815095
#>     Attrib V45    0.6295605951978995
#>     Attrib V46    0.388301416796286
#>     Attrib V47    -0.20254696074922643
#>     Attrib V48    0.5609737044651417
#>     Attrib V49    0.5970235007006561
#>     Attrib V5    0.3267328426207689
#>     Attrib V50    -0.9633434961055438
#>     Attrib V51    0.29490820902560905
#>     Attrib V52    1.0486690717667213
#>     Attrib V53    0.4197034649256886
#>     Attrib V54    0.28169363387750856
#>     Attrib V55    -0.07849716776812561
#>     Attrib V56    -0.4488962657946825
#>     Attrib V57    -0.13398307637228293
#>     Attrib V58    0.12838073995914087
#>     Attrib V59    0.058130031631821164
#>     Attrib V6    0.49286019491058813
#>     Attrib V60    0.38422992604079115
#>     Attrib V7    -0.49197655367275384
#>     Attrib V8    -0.5180340653734653
#>     Attrib V9    0.7532196956072943
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2238029423651762
#>     Attrib V1    0.07220376764784395
#>     Attrib V10    0.02140556170475543
#>     Attrib V11    -0.0684226181291138
#>     Attrib V12    -0.06198677570856774
#>     Attrib V13    -0.0465992433665945
#>     Attrib V14    0.10505149062231278
#>     Attrib V15    0.06361828982786996
#>     Attrib V16    0.07055224588533125
#>     Attrib V17    0.08934768824329704
#>     Attrib V18    -0.0027615504869330115
#>     Attrib V19    0.06248356656835992
#>     Attrib V2    0.10797008075766007
#>     Attrib V20    -0.015430723802828275
#>     Attrib V21    0.026221540295811675
#>     Attrib V22    0.005216045126237353
#>     Attrib V23    -0.03724128352717197
#>     Attrib V24    -0.06339618511655785
#>     Attrib V25    -0.014559770177988735
#>     Attrib V26    -0.0609810038906976
#>     Attrib V27    -0.04788094091145841
#>     Attrib V28    -0.06172230198689339
#>     Attrib V29    -0.0655504513022699
#>     Attrib V3    0.048830746078491534
#>     Attrib V30    -0.04907425084934024
#>     Attrib V31    0.04797893026536043
#>     Attrib V32    0.008872043882862477
#>     Attrib V33    0.043638203672851164
#>     Attrib V34    0.017457704671474485
#>     Attrib V35    0.12333702417922417
#>     Attrib V36    0.17975223444122104
#>     Attrib V37    0.16858105829202166
#>     Attrib V38    0.029767389904078817
#>     Attrib V39    0.03640487626411232
#>     Attrib V4    0.0852676266566099
#>     Attrib V40    0.0685111212065823
#>     Attrib V41    0.044083023880608724
#>     Attrib V42    0.05656492126217348
#>     Attrib V43    0.026663528997691605
#>     Attrib V44    0.04922433432936637
#>     Attrib V45    -0.01349512696702175
#>     Attrib V46    0.0033791566762755346
#>     Attrib V47    0.032114954713983984
#>     Attrib V48    0.03429714983541842
#>     Attrib V49    -0.006261342163175772
#>     Attrib V5    0.05913547760509633
#>     Attrib V50    0.1274545857572723
#>     Attrib V51    0.032563052737934604
#>     Attrib V52    -0.017425110563042127
#>     Attrib V53    0.03592036468513585
#>     Attrib V54    0.06064486158420719
#>     Attrib V55    0.10560116299325774
#>     Attrib V56    0.08884004523279622
#>     Attrib V57    0.1263111782097603
#>     Attrib V58    0.09665732961911751
#>     Attrib V59    0.060911867463549145
#>     Attrib V6    0.14828984743320486
#>     Attrib V60    0.10463880424781992
#>     Attrib V7    0.08123836556688181
#>     Attrib V8    0.11039512693113923
#>     Attrib V9    0.024867788065001385
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.34907157920092496
#>     Attrib V1    0.42995892916209294
#>     Attrib V10    0.10442328069037923
#>     Attrib V11    0.42534835884607647
#>     Attrib V12    0.46649787483496136
#>     Attrib V13    -0.2713272931537416
#>     Attrib V14    -0.3634933004806023
#>     Attrib V15    -0.054932354740822996
#>     Attrib V16    -0.07937207991235984
#>     Attrib V17    -0.016800261993994436
#>     Attrib V18    -0.14538691904478804
#>     Attrib V19    0.010450366757903375
#>     Attrib V2    -0.10175023967766723
#>     Attrib V20    0.4960388430875682
#>     Attrib V21    0.21269801361303922
#>     Attrib V22    0.07638104881342835
#>     Attrib V23    0.5014580677434795
#>     Attrib V24    0.5304578080143588
#>     Attrib V25    -0.12903742962882464
#>     Attrib V26    -0.3959159094184475
#>     Attrib V27    -0.34176808638329353
#>     Attrib V28    -0.22003449934847383
#>     Attrib V29    -0.2329514871523462
#>     Attrib V3    0.20018727691687563
#>     Attrib V30    0.029233447412998853
#>     Attrib V31    -1.0156250104370759
#>     Attrib V32    -0.31547047308185866
#>     Attrib V33    0.046667764549054636
#>     Attrib V34    -0.06057713352718059
#>     Attrib V35    -0.1067863381830389
#>     Attrib V36    -0.5858141233101093
#>     Attrib V37    -0.6551563685250152
#>     Attrib V38    -0.12068401814934897
#>     Attrib V39    0.2507717159916711
#>     Attrib V4    0.02092185369511577
#>     Attrib V40    -0.27237668990236136
#>     Attrib V41    -0.07456387312852414
#>     Attrib V42    0.22599039963169798
#>     Attrib V43    0.17835826798991494
#>     Attrib V44    -0.09317699286661633
#>     Attrib V45    0.2618097754800018
#>     Attrib V46    0.18314232074534872
#>     Attrib V47    0.006818539981979756
#>     Attrib V48    0.28020059000815256
#>     Attrib V49    0.07991444532869613
#>     Attrib V5    -0.1635379128579061
#>     Attrib V50    -0.45311473323286866
#>     Attrib V51    -0.01568111187255463
#>     Attrib V52    0.2829585436758222
#>     Attrib V53    -0.05279886839288086
#>     Attrib V54    -0.17245098581198917
#>     Attrib V55    -0.1371022998272606
#>     Attrib V56    0.11740778200490802
#>     Attrib V57    0.43181363865792205
#>     Attrib V58    0.3851567721269798
#>     Attrib V59    0.5792341684919668
#>     Attrib V6    -0.14175342544888325
#>     Attrib V60    0.6143394452478937
#>     Attrib V7    -0.23382558592832417
#>     Attrib V8    -0.037132839939902705
#>     Attrib V9    0.349173242904354
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.8688037094319967
#>     Attrib V1    0.08999660778122918
#>     Attrib V10    -0.6225455327629625
#>     Attrib V11    -1.6438880780593612
#>     Attrib V12    -2.3293828333510778
#>     Attrib V13    -0.5581401481535608
#>     Attrib V14    0.7713556238994211
#>     Attrib V15    0.72682394960377
#>     Attrib V16    0.3294426422623389
#>     Attrib V17    0.07084184280369486
#>     Attrib V18    0.18336922377105283
#>     Attrib V19    -0.006434613512019123
#>     Attrib V2    0.13346775567774666
#>     Attrib V20    -0.293456752507858
#>     Attrib V21    0.46413393315246704
#>     Attrib V22    0.2600554141161294
#>     Attrib V23    -1.401417326261883
#>     Attrib V24    -1.227433480089578
#>     Attrib V25    -0.1295564216080372
#>     Attrib V26    -0.08395516394466537
#>     Attrib V27    -1.0038062896640916
#>     Attrib V28    -1.5815234565879737
#>     Attrib V29    -0.5398319082884102
#>     Attrib V3    0.10936941246724523
#>     Attrib V30    -0.48979590996132477
#>     Attrib V31    0.9986090972917409
#>     Attrib V32    -0.178307998925132
#>     Attrib V33    -0.2952434126925441
#>     Attrib V34    -0.3299796382998009
#>     Attrib V35    -0.4886275210658495
#>     Attrib V36    1.2518097391730236
#>     Attrib V37    0.6927977916743092
#>     Attrib V38    0.15957782590972083
#>     Attrib V39    -0.5032367687686541
#>     Attrib V4    -0.14598834947935196
#>     Attrib V40    -0.29755709066013575
#>     Attrib V41    -1.0096016534362893
#>     Attrib V42    -0.19036351874276805
#>     Attrib V43    -0.5118292135586447
#>     Attrib V44    -0.24485837058599091
#>     Attrib V45    -0.5986015908856396
#>     Attrib V46    -0.4674803924318736
#>     Attrib V47    -0.02454632447359417
#>     Attrib V48    -0.8583457640589083
#>     Attrib V49    -0.8586764285509783
#>     Attrib V5    -0.06988203126194319
#>     Attrib V50    1.0466236520948708
#>     Attrib V51    -0.5777071936649821
#>     Attrib V52    -1.237750334205775
#>     Attrib V53    -0.3999753747713161
#>     Attrib V54    0.05497605600713458
#>     Attrib V55    0.16457611821493615
#>     Attrib V56    0.35640611446482284
#>     Attrib V57    0.31994678123822473
#>     Attrib V58    -0.09139061753939128
#>     Attrib V59    0.2055278085536921
#>     Attrib V6    -0.1516445063685603
#>     Attrib V60    -0.31134996668392734
#>     Attrib V7    0.8632943903545289
#>     Attrib V8    0.41676758259698377
#>     Attrib V9    -0.9150795131625682
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2868464134964114
#>     Attrib V1    0.1657636127452582
#>     Attrib V10    0.09900780974580069
#>     Attrib V11    0.4385873617791507
#>     Attrib V12    0.5277786586284348
#>     Attrib V13    -0.11281402565490783
#>     Attrib V14    -0.21697887707276609
#>     Attrib V15    -0.09159274512188394
#>     Attrib V16    -0.12003877158587424
#>     Attrib V17    -0.08444582335553596
#>     Attrib V18    -0.2257209937005092
#>     Attrib V19    -0.19138507766101048
#>     Attrib V2    -0.09111344575244909
#>     Attrib V20    0.26682986036788015
#>     Attrib V21    -0.0059190167089550405
#>     Attrib V22    -0.13194847215205086
#>     Attrib V23    0.19347754362191094
#>     Attrib V24    0.3249299508692289
#>     Attrib V25    -0.04757035473975419
#>     Attrib V26    -0.1971740215354974
#>     Attrib V27    0.03651002982579831
#>     Attrib V28    0.09231752117398893
#>     Attrib V29    -0.007889332768569892
#>     Attrib V3    0.1326741653665654
#>     Attrib V30    0.08537107222904819
#>     Attrib V31    -0.5814066955266817
#>     Attrib V32    -0.09114629638492816
#>     Attrib V33    0.08374557742057905
#>     Attrib V34    0.011326414903786206
#>     Attrib V35    0.04597513145034756
#>     Attrib V36    -0.3974639667159383
#>     Attrib V37    -0.26426134138773044
#>     Attrib V38    -0.009109862375983093
#>     Attrib V39    0.20555996161747597
#>     Attrib V4    -0.02055913769713942
#>     Attrib V40    -0.08866807835008517
#>     Attrib V41    0.0470318762868633
#>     Attrib V42    0.017668659884235462
#>     Attrib V43    0.15210172324459137
#>     Attrib V44    -0.07642300268079699
#>     Attrib V45    0.28700381012279036
#>     Attrib V46    0.17664417693646273
#>     Attrib V47    0.008644026498661313
#>     Attrib V48    0.21496200556671394
#>     Attrib V49    0.08504995318669904
#>     Attrib V5    -0.1252661300818722
#>     Attrib V50    -0.3390131963178321
#>     Attrib V51    0.024530844049591317
#>     Attrib V52    0.29192544145749444
#>     Attrib V53    0.0389007496042636
#>     Attrib V54    -0.11413987630663579
#>     Attrib V55    -0.07628391995959717
#>     Attrib V56    0.015395121245795665
#>     Attrib V57    0.22837078206120087
#>     Attrib V58    0.1232879910907707
#>     Attrib V59    0.15800960258912636
#>     Attrib V6    -0.03896732643126538
#>     Attrib V60    0.31564937126394765
#>     Attrib V7    -0.17605541901223537
#>     Attrib V8    -0.09793775683946158
#>     Attrib V9    0.2959243445013809
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.07216658060943194
#>     Attrib V1    0.1664562122763941
#>     Attrib V10    0.12615664994787051
#>     Attrib V11    0.12600472083361047
#>     Attrib V12    0.16678004547973346
#>     Attrib V13    0.02436316149405512
#>     Attrib V14    -0.011418747990807956
#>     Attrib V15    0.027666003191134755
#>     Attrib V16    -0.007059612785869372
#>     Attrib V17    0.019073715058369776
#>     Attrib V18    -0.08440379096944395
#>     Attrib V19    -0.11674182347263845
#>     Attrib V2    0.05865500541592377
#>     Attrib V20    0.0019147967057536665
#>     Attrib V21    -0.029984362327480984
#>     Attrib V22    -0.13655321931812325
#>     Attrib V23    -0.06863429019768376
#>     Attrib V24    -0.050785952395664115
#>     Attrib V25    -0.032611447615720816
#>     Attrib V26    0.00248532238150468
#>     Attrib V27    0.03158155076635627
#>     Attrib V28    0.04507370164427154
#>     Attrib V29    -0.0699470794683495
#>     Attrib V3    0.06055920457343209
#>     Attrib V30    0.06670715842713826
#>     Attrib V31    -0.04489048844388966
#>     Attrib V32    -0.010687577353155462
#>     Attrib V33    0.004967226316590317
#>     Attrib V34    0.002119007207863927
#>     Attrib V35    0.07879228849961685
#>     Attrib V36    -0.04803390855098017
#>     Attrib V37    0.021328644120468553
#>     Attrib V38    0.027490888979755355
#>     Attrib V39    0.14045849864590895
#>     Attrib V4    0.09973190661190301
#>     Attrib V40    0.02023334379236361
#>     Attrib V41    0.013805606120176082
#>     Attrib V42    0.029778330359222966
#>     Attrib V43    0.021273822271700958
#>     Attrib V44    0.013175526666341718
#>     Attrib V45    0.12118372451222768
#>     Attrib V46    0.0705803005265805
#>     Attrib V47    0.0038669776983693786
#>     Attrib V48    0.13607085477621028
#>     Attrib V49    0.04827941922398106
#>     Attrib V5    -0.014235013884982687
#>     Attrib V50    -0.024562202398983515
#>     Attrib V51    0.03602297209612653
#>     Attrib V52    0.10209516848733226
#>     Attrib V53    0.08563267874355832
#>     Attrib V54    0.05112033338023103
#>     Attrib V55    0.02861508308727358
#>     Attrib V56    0.1046268208239109
#>     Attrib V57    0.14185643331274578
#>     Attrib V58    0.12548335363054924
#>     Attrib V59    0.131525186579973
#>     Attrib V6    0.042680410742864335
#>     Attrib V60    0.18467139679392547
#>     Attrib V7    -0.020074840588282784
#>     Attrib V8    -0.019146333349687485
#>     Attrib V9    0.11227092819692257
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.15199665636361528
#>     Attrib V1    0.3661559321940388
#>     Attrib V10    0.04016846379802791
#>     Attrib V11    0.3169184836300693
#>     Attrib V12    0.2678914536793465
#>     Attrib V13    -0.23257275592789614
#>     Attrib V14    -0.18221659782812982
#>     Attrib V15    0.03242681449953693
#>     Attrib V16    -0.006221305876096478
#>     Attrib V17    0.08373173525283255
#>     Attrib V18    -0.0982733100288357
#>     Attrib V19    0.03381620791251695
#>     Attrib V2    -0.03342814397296284
#>     Attrib V20    0.5215204434876256
#>     Attrib V21    0.18798596138414864
#>     Attrib V22    0.11024890277865852
#>     Attrib V23    0.3796405661361603
#>     Attrib V24    0.35697914939878356
#>     Attrib V25    -0.18375304209331156
#>     Attrib V26    -0.4206296858824783
#>     Attrib V27    -0.3910458124563003
#>     Attrib V28    -0.30555102024339065
#>     Attrib V29    -0.28646554112839234
#>     Attrib V3    0.1465007736747658
#>     Attrib V30    -0.05024718769534097
#>     Attrib V31    -0.8850507097076686
#>     Attrib V32    -0.3585256667322093
#>     Attrib V33    0.013883929328036459
#>     Attrib V34    -0.0984503526958322
#>     Attrib V35    -0.09088924059131147
#>     Attrib V36    -0.46709178318384337
#>     Attrib V37    -0.5214124587801908
#>     Attrib V38    -0.04079356597507152
#>     Attrib V39    0.17663737707000046
#>     Attrib V4    0.04712075382265687
#>     Attrib V40    -0.20431851726959863
#>     Attrib V41    -0.1472345823921989
#>     Attrib V42    0.17759678808482404
#>     Attrib V43    0.2285842028145842
#>     Attrib V44    -0.02248315740247816
#>     Attrib V45    0.16155157890191535
#>     Attrib V46    0.16541206918847212
#>     Attrib V47    0.0449102264006087
#>     Attrib V48    0.19983619841824532
#>     Attrib V49    0.06910935802968281
#>     Attrib V5    -0.13419217035821773
#>     Attrib V50    -0.3748605511994553
#>     Attrib V51    -0.044416580376261575
#>     Attrib V52    0.20569026999099715
#>     Attrib V53    -0.002995646352722415
#>     Attrib V54    -0.07810847789145639
#>     Attrib V55    -0.07873777242986667
#>     Attrib V56    0.18028002931655335
#>     Attrib V57    0.4299487523494548
#>     Attrib V58    0.2925880017752299
#>     Attrib V59    0.4978734070661976
#>     Attrib V6    -0.15675873771567517
#>     Attrib V60    0.5515410204809584
#>     Attrib V7    -0.11957126344516344
#>     Attrib V8    -0.020352312603859623
#>     Attrib V9    0.278654224072083
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.08182315435254868
#>     Attrib V1    0.22311086849668108
#>     Attrib V10    0.041743835233311835
#>     Attrib V11    0.23273411384345086
#>     Attrib V12    0.2532704958947012
#>     Attrib V13    -0.11785231089331685
#>     Attrib V14    -0.05157033012001838
#>     Attrib V15    0.03366689690491426
#>     Attrib V16    0.013695696160962618
#>     Attrib V17    -0.04672810151166582
#>     Attrib V18    -0.08381738373666789
#>     Attrib V19    -0.13674593885123784
#>     Attrib V2    -0.0322154345184632
#>     Attrib V20    0.17696746141374597
#>     Attrib V21    0.01327988636233746
#>     Attrib V22    -0.145113656781925
#>     Attrib V23    0.07078541736522864
#>     Attrib V24    0.0707073680052129
#>     Attrib V25    -0.19216997470735273
#>     Attrib V26    -0.18494787736932453
#>     Attrib V27    -0.007004187275901942
#>     Attrib V28    0.05936065725991349
#>     Attrib V29    -0.0410525992942035
#>     Attrib V3    0.12345077978684026
#>     Attrib V30    0.10756247208178789
#>     Attrib V31    -0.4358520458935059
#>     Attrib V32    -0.14010428853779397
#>     Attrib V33    0.016484357751730256
#>     Attrib V34    -0.04153696910429886
#>     Attrib V35    -0.022872348534563748
#>     Attrib V36    -0.20378723745845853
#>     Attrib V37    -0.2055399429668184
#>     Attrib V38    -0.03013612533387036
#>     Attrib V39    0.1321830646780581
#>     Attrib V4    0.030081651915064397
#>     Attrib V40    -0.1207083308092122
#>     Attrib V41    -0.09638192653981362
#>     Attrib V42    0.010779786712854051
#>     Attrib V43    0.02218253757987552
#>     Attrib V44    0.035829920290145444
#>     Attrib V45    0.21937646042563103
#>     Attrib V46    0.11443310537403528
#>     Attrib V47    -0.008528080552098437
#>     Attrib V48    0.11039845499353182
#>     Attrib V49    0.10390501506121329
#>     Attrib V5    -0.02352507512398169
#>     Attrib V50    -0.19948154618272845
#>     Attrib V51    0.03859236334811571
#>     Attrib V52    0.20408606471993312
#>     Attrib V53    0.07235035199407523
#>     Attrib V54    -0.041040035552007845
#>     Attrib V55    -0.0414938053818902
#>     Attrib V56    0.04725082769376901
#>     Attrib V57    0.2068091749078243
#>     Attrib V58    0.20552865268623266
#>     Attrib V59    0.17003442946484876
#>     Attrib V6    -0.0027797969063353954
#>     Attrib V60    0.26588628627867006
#>     Attrib V7    -0.05014598121904674
#>     Attrib V8    -0.021914667024905975
#>     Attrib V9    0.2115818156049243
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
