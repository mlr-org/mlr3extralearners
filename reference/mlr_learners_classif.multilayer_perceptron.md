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
#>     Threshold    0.0880442965922171
#>     Node 2    2.0440697120214946
#>     Node 3    1.914421478866008
#>     Node 4    0.5536683276446752
#>     Node 5    -2.201348244246569
#>     Node 6    0.5613057674177825
#>     Node 7    1.8008705559052303
#>     Node 8    0.8131468297125071
#>     Node 9    3.2521844739372265
#>     Node 10    -2.4463477646435896
#>     Node 11    0.42491604532690047
#>     Node 12    2.0071931322700167
#>     Node 13    0.80731593753791
#>     Node 14    1.546586334687325
#>     Node 15    -2.067549249514524
#>     Node 16    -0.8804975118148559
#>     Node 17    -0.38599722882565185
#>     Node 18    0.3112497334916928
#>     Node 19    1.7427184438375332
#>     Node 20    2.2241141623995433
#>     Node 21    -1.5741394767055341
#>     Node 22    0.34940306206495014
#>     Node 23    1.6929359212231907
#>     Node 24    -1.3483113754558609
#>     Node 25    5.984078492046661
#>     Node 26    -0.27543627558357675
#>     Node 27    1.7128550049601592
#>     Node 28    -3.0366879118644743
#>     Node 29    0.38947719429524746
#>     Node 30    0.37837984853788953
#>     Node 31    -0.09245164432187213
#>     Node 32    -0.14049994151162926
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.07112913476406062
#>     Node 2    -2.0760649724348976
#>     Node 3    -1.8789057651848358
#>     Node 4    -0.514574209674493
#>     Node 5    2.218304658114198
#>     Node 6    -0.5389623709210289
#>     Node 7    -1.8039515703711821
#>     Node 8    -0.8542467878112693
#>     Node 9    -3.263855549696853
#>     Node 10    2.4236916195836535
#>     Node 11    -0.3955853273200798
#>     Node 12    -2.0673706617839764
#>     Node 13    -0.7509636574828725
#>     Node 14    -1.4702414252183906
#>     Node 15    2.0459269664962956
#>     Node 16    0.8638612299621174
#>     Node 17    0.40764850977697525
#>     Node 18    -0.27571997329136777
#>     Node 19    -1.7528711121361469
#>     Node 20    -2.204608120081986
#>     Node 21    1.6296927851086906
#>     Node 22    -0.40415902711541846
#>     Node 23    -1.7246738725046566
#>     Node 24    1.342013693807102
#>     Node 25    -5.987754993249266
#>     Node 26    0.1819053854572079
#>     Node 27    -1.744124076975176
#>     Node 28    3.009971273552592
#>     Node 29    -0.4241829911817924
#>     Node 30    -0.30672194029989974
#>     Node 31    0.14183652470561584
#>     Node 32    0.11520939665572864
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.18436081506908847
#>     Attrib V1    0.30612997447082374
#>     Attrib V10    -0.17307637840126144
#>     Attrib V11    -0.17123881797871826
#>     Attrib V12    -0.20196155618953843
#>     Attrib V13    -0.36462674903339937
#>     Attrib V14    -0.23293170689317108
#>     Attrib V15    0.31797146074558236
#>     Attrib V16    0.24281908631877633
#>     Attrib V17    0.043917148261464395
#>     Attrib V18    -0.11723086232335478
#>     Attrib V19    0.07454442367710666
#>     Attrib V2    -0.14662614694409046
#>     Attrib V20    0.40178392778254285
#>     Attrib V21    0.7022794292759739
#>     Attrib V22    0.345667190469144
#>     Attrib V23    0.004620648465439948
#>     Attrib V24    0.05276279771345225
#>     Attrib V25    -0.4438241534067692
#>     Attrib V26    -0.9820522846734137
#>     Attrib V27    -0.8796501027553335
#>     Attrib V28    -0.6812641213662797
#>     Attrib V29    -0.4543310945358189
#>     Attrib V3    -0.20044238458877442
#>     Attrib V30    -0.07912130836181075
#>     Attrib V31    -0.9121077893181866
#>     Attrib V32    -0.0602072805001015
#>     Attrib V33    0.7084374463623465
#>     Attrib V34    -0.040127586270363565
#>     Attrib V35    -0.44021942026446553
#>     Attrib V36    -0.7483883275076301
#>     Attrib V37    -0.6832958082581555
#>     Attrib V38    -0.024501757932299813
#>     Attrib V39    -0.26019050741823896
#>     Attrib V4    0.3690349253425702
#>     Attrib V40    -0.5003333294758554
#>     Attrib V41    -0.3252809206100246
#>     Attrib V42    0.18400526902627445
#>     Attrib V43    0.37883931416796013
#>     Attrib V44    0.7324785069019488
#>     Attrib V45    0.28074936743768214
#>     Attrib V46    0.15947150341902241
#>     Attrib V47    -0.053250098725838156
#>     Attrib V48    0.25419431960430217
#>     Attrib V49    -0.016214962101530724
#>     Attrib V5    0.09688679220870632
#>     Attrib V50    -0.6389701357284177
#>     Attrib V51    0.01884819864503527
#>     Attrib V52    -0.025624048516321517
#>     Attrib V53    -0.014671105686714729
#>     Attrib V54    1.153137305675681
#>     Attrib V55    0.23122824672288328
#>     Attrib V56    0.5009442832697261
#>     Attrib V57    0.15227895451140314
#>     Attrib V58    0.4307488506831811
#>     Attrib V59    0.8195749893834284
#>     Attrib V6    -0.40953292293395416
#>     Attrib V60    0.5872607864365889
#>     Attrib V7    -0.25062301558008737
#>     Attrib V8    0.2495275115341989
#>     Attrib V9    0.5128633526736612
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.16514772685212611
#>     Attrib V1    0.2339326593151574
#>     Attrib V10    -0.1454971792174263
#>     Attrib V11    -0.1552809973266542
#>     Attrib V12    -0.14252821110302627
#>     Attrib V13    -0.3053662933858837
#>     Attrib V14    -0.26860855100970693
#>     Attrib V15    0.3101541499565475
#>     Attrib V16    0.1802851641414067
#>     Attrib V17    0.026662411864385088
#>     Attrib V18    -0.15469228714322666
#>     Attrib V19    0.11238995537854722
#>     Attrib V2    -0.1012440721748979
#>     Attrib V20    0.33199476627847974
#>     Attrib V21    0.5501252964384152
#>     Attrib V22    0.33471227612007876
#>     Attrib V23    0.04167093313930564
#>     Attrib V24    0.1009923622445187
#>     Attrib V25    -0.3122874513147823
#>     Attrib V26    -0.8574773702983801
#>     Attrib V27    -0.8374459991165207
#>     Attrib V28    -0.7382790430544655
#>     Attrib V29    -0.6169499804134734
#>     Attrib V3    -0.20249221373646667
#>     Attrib V30    -0.10245080602566986
#>     Attrib V31    -0.7773152831541297
#>     Attrib V32    -0.04777779185407327
#>     Attrib V33    0.7249267596040085
#>     Attrib V34    -0.0175361449297402
#>     Attrib V35    -0.36236551480225815
#>     Attrib V36    -0.7032871984717268
#>     Attrib V37    -0.6589366436975309
#>     Attrib V38    -0.12347975989566386
#>     Attrib V39    -0.2618197009694358
#>     Attrib V4    0.3058912681724544
#>     Attrib V40    -0.4571628470642485
#>     Attrib V41    -0.3259950303037286
#>     Attrib V42    0.1372548925885449
#>     Attrib V43    0.31605331247981977
#>     Attrib V44    0.6494003040973121
#>     Attrib V45    0.2365148543339409
#>     Attrib V46    0.14214664021018442
#>     Attrib V47    -0.009008695023780764
#>     Attrib V48    0.21231107968552726
#>     Attrib V49    -0.013473850689869765
#>     Attrib V5    0.035543236734159774
#>     Attrib V50    -0.5771905617807861
#>     Attrib V51    -0.00768419822680733
#>     Attrib V52    -0.005506753891267739
#>     Attrib V53    -0.027667335376980993
#>     Attrib V54    1.1423663348359685
#>     Attrib V55    0.2689638359623381
#>     Attrib V56    0.4861274724637146
#>     Attrib V57    0.14951119734931745
#>     Attrib V58    0.4452000340777647
#>     Attrib V59    0.7124963530706183
#>     Attrib V6    -0.37441144392606557
#>     Attrib V60    0.5035953679501318
#>     Attrib V7    -0.2519920883354936
#>     Attrib V8    0.22439970850721605
#>     Attrib V9    0.46470794980918817
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.1063337911034974
#>     Attrib V1    0.08394723817768888
#>     Attrib V10    -0.027383545373175493
#>     Attrib V11    0.003280406074985337
#>     Attrib V12    0.048154661495125775
#>     Attrib V13    -0.022844503213267784
#>     Attrib V14    0.016115173039898498
#>     Attrib V15    0.11237660902807523
#>     Attrib V16    0.04247376864827869
#>     Attrib V17    -0.009717911604910822
#>     Attrib V18    -0.037524632623828415
#>     Attrib V19    0.028477443959754312
#>     Attrib V2    0.04904016281985639
#>     Attrib V20    0.04138418340648136
#>     Attrib V21    0.142386132258116
#>     Attrib V22    -0.04479959100912591
#>     Attrib V23    -0.11964332630690244
#>     Attrib V24    -0.06538047837286502
#>     Attrib V25    -0.1729008342893783
#>     Attrib V26    -0.25366776282806947
#>     Attrib V27    -0.20866734233126363
#>     Attrib V28    -0.03649211033409547
#>     Attrib V29    0.04502643601595462
#>     Attrib V3    0.015186624959517331
#>     Attrib V30    0.03170737695572605
#>     Attrib V31    -0.28468129870358294
#>     Attrib V32    -0.09939235057326064
#>     Attrib V33    0.16410139951092897
#>     Attrib V34    0.020174439489222058
#>     Attrib V35    -0.059651021879935685
#>     Attrib V36    -0.23022548874909618
#>     Attrib V37    -0.18210742151611742
#>     Attrib V38    -0.017833146789199783
#>     Attrib V39    -0.0028086047367462774
#>     Attrib V4    0.19166905887134558
#>     Attrib V40    -0.08660521978680878
#>     Attrib V41    -0.07655939946109455
#>     Attrib V42    0.0558915111003657
#>     Attrib V43    0.04738558704553946
#>     Attrib V44    0.23823976516325507
#>     Attrib V45    0.15238212312295296
#>     Attrib V46    0.06066501413996194
#>     Attrib V47    -0.005893907570271818
#>     Attrib V48    0.1898717978535428
#>     Attrib V49    0.08818260035849905
#>     Attrib V5    0.09176009118372452
#>     Attrib V50    -0.19585079555954102
#>     Attrib V51    0.09724711346481976
#>     Attrib V52    0.10653185292886157
#>     Attrib V53    0.13382115726850408
#>     Attrib V54    0.27615516981747235
#>     Attrib V55    0.1029407514063568
#>     Attrib V56    0.15116738536857421
#>     Attrib V57    0.03565321399711837
#>     Attrib V58    0.12038843930573802
#>     Attrib V59    0.29943458827971325
#>     Attrib V6    -0.16370457020508614
#>     Attrib V60    0.20735994183031659
#>     Attrib V7    -0.13790583750988034
#>     Attrib V8    -0.03494180982303287
#>     Attrib V9    0.19786781400185066
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.26340200859848195
#>     Attrib V1    0.15908942141985363
#>     Attrib V10    -0.40715422818612934
#>     Attrib V11    -0.39397425196721947
#>     Attrib V12    -0.566375225449699
#>     Attrib V13    0.16845392611680607
#>     Attrib V14    0.7474633186953448
#>     Attrib V15    0.36842661404771615
#>     Attrib V16    0.08519264041590088
#>     Attrib V17    0.08623802695793603
#>     Attrib V18    -0.02533026759806882
#>     Attrib V19    -0.2035714982468617
#>     Attrib V2    0.36992874347776133
#>     Attrib V20    -0.16557886218825169
#>     Attrib V21    -0.6645081316857256
#>     Attrib V22    -0.6144330523612875
#>     Attrib V23    -0.2264801671628113
#>     Attrib V24    -0.5419406925622192
#>     Attrib V25    -0.06652081024707994
#>     Attrib V26    0.516624172740034
#>     Attrib V27    0.37346385889937356
#>     Attrib V28    -0.003976585625427605
#>     Attrib V29    0.07225272200554184
#>     Attrib V3    0.5232203993496605
#>     Attrib V30    -0.12464597493666064
#>     Attrib V31    1.3635815274990544
#>     Attrib V32    0.2971900695388992
#>     Attrib V33    -0.6435841140047478
#>     Attrib V34    0.25293082498015945
#>     Attrib V35    0.5516059481282873
#>     Attrib V36    1.0874186103227044
#>     Attrib V37    0.5808216743893084
#>     Attrib V38    -0.24066043550309785
#>     Attrib V39    0.19265405710121658
#>     Attrib V4    -0.3976035907109531
#>     Attrib V40    0.6398351841408529
#>     Attrib V41    0.37946282085025257
#>     Attrib V42    0.06326595321426491
#>     Attrib V43    -0.280300166511942
#>     Attrib V44    -1.2723831348440158
#>     Attrib V45    -0.5427132910578869
#>     Attrib V46    -0.49839703430593235
#>     Attrib V47    -0.11528799547591492
#>     Attrib V48    -0.7329509371436106
#>     Attrib V49    -0.29301302888102515
#>     Attrib V5    -0.16297227154730082
#>     Attrib V50    1.192265986326728
#>     Attrib V51    -0.24268350391252091
#>     Attrib V52    -0.26038428405142827
#>     Attrib V53    -0.440274519684722
#>     Attrib V54    -1.2297328199196385
#>     Attrib V55    0.24200000257907106
#>     Attrib V56    -0.21188360253192112
#>     Attrib V57    0.3571808181171883
#>     Attrib V58    -0.18292348861588445
#>     Attrib V59    -0.5260770645760671
#>     Attrib V6    0.39987342188830793
#>     Attrib V60    -0.4940840413357155
#>     Attrib V7    0.4637791299927791
#>     Attrib V8    -0.023420663008738237
#>     Attrib V9    -1.213146033671148
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.04782572038408718
#>     Attrib V1    0.16552398691992617
#>     Attrib V10    -0.05335453723624652
#>     Attrib V11    0.01079127844621354
#>     Attrib V12    0.08689472228580411
#>     Attrib V13    -0.08493849478572903
#>     Attrib V14    -0.03147731576107523
#>     Attrib V15    0.08397732365194059
#>     Attrib V16    0.12600345476656685
#>     Attrib V17    -0.003318461347118725
#>     Attrib V18    0.03648973557884597
#>     Attrib V19    0.03147828206335763
#>     Attrib V2    0.07097792794234715
#>     Attrib V20    0.06596307804497273
#>     Attrib V21    0.14459611662592486
#>     Attrib V22    -0.02881607888709312
#>     Attrib V23    -0.10484872138626983
#>     Attrib V24    0.008756772887355322
#>     Attrib V25    -0.11136200127922925
#>     Attrib V26    -0.2911015958123274
#>     Attrib V27    -0.20503134520503513
#>     Attrib V28    -0.17823421471925135
#>     Attrib V29    -0.08236894947923587
#>     Attrib V3    -0.009726167734382483
#>     Attrib V30    -0.008729559122521416
#>     Attrib V31    -0.30923804390022164
#>     Attrib V32    -0.04874080043479486
#>     Attrib V33    0.178356674792422
#>     Attrib V34    -0.005944960245521754
#>     Attrib V35    -0.06382044152123005
#>     Attrib V36    -0.26089290493773204
#>     Attrib V37    -0.2005972007722691
#>     Attrib V38    -0.021102438291641202
#>     Attrib V39    -0.059631377204325764
#>     Attrib V4    0.2133582954120472
#>     Attrib V40    -0.1510124872319305
#>     Attrib V41    -0.03173100759049824
#>     Attrib V42    0.06091241141965976
#>     Attrib V43    0.07610278401255813
#>     Attrib V44    0.19246335334539175
#>     Attrib V45    0.08714095316057881
#>     Attrib V46    0.08855123884271464
#>     Attrib V47    -0.011054251299167282
#>     Attrib V48    0.11033464831977631
#>     Attrib V49    0.022052653746288824
#>     Attrib V5    0.05620771036410523
#>     Attrib V50    -0.18074858254019813
#>     Attrib V51    0.06293047255886142
#>     Attrib V52    0.08439389300653523
#>     Attrib V53    0.14527779636677474
#>     Attrib V54    0.3469301658702293
#>     Attrib V55    0.11532794252539093
#>     Attrib V56    0.17530150650601983
#>     Attrib V57    0.062413378298893304
#>     Attrib V58    0.17897403965709088
#>     Attrib V59    0.35528255309233064
#>     Attrib V6    -0.08104700835620937
#>     Attrib V60    0.28005822900425426
#>     Attrib V7    -0.1030051494998308
#>     Attrib V8    0.047694146885170825
#>     Attrib V9    0.21787656498195346
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.2363357561693628
#>     Attrib V1    -0.11266703050957082
#>     Attrib V10    0.36530274439668936
#>     Attrib V11    0.3709488601505098
#>     Attrib V12    0.34877653791248353
#>     Attrib V13    -0.15523874357106002
#>     Attrib V14    -0.6587926954319047
#>     Attrib V15    -0.4750208982621643
#>     Attrib V16    -0.11657577025595606
#>     Attrib V17    -0.0841729683074705
#>     Attrib V18    0.07928681053577022
#>     Attrib V19    0.2759275575018738
#>     Attrib V2    -0.20930180359525594
#>     Attrib V20    0.15229558972725482
#>     Attrib V21    0.43150059018705184
#>     Attrib V22    0.36893484511921576
#>     Attrib V23    0.2549152210125529
#>     Attrib V24    0.40653659596059666
#>     Attrib V25    0.18730859654233795
#>     Attrib V26    -0.02943287903767822
#>     Attrib V27    0.04591447895768117
#>     Attrib V28    0.3711280087185172
#>     Attrib V29    0.34469120730357095
#>     Attrib V3    -0.3599148942687292
#>     Attrib V30    0.26416281288043875
#>     Attrib V31    -0.9717511511964361
#>     Attrib V32    -0.4257831893043665
#>     Attrib V33    0.30703413582514705
#>     Attrib V34    -0.02472787574715671
#>     Attrib V35    -0.012867836053252823
#>     Attrib V36    -0.5206810532655592
#>     Attrib V37    -0.08325460827284145
#>     Attrib V38    0.32884473149232835
#>     Attrib V39    -0.083540260882774
#>     Attrib V4    0.1655344878923127
#>     Attrib V40    -0.28465129703564473
#>     Attrib V41    -0.1935113263559785
#>     Attrib V42    -0.10927401712323515
#>     Attrib V43    0.16986018261104002
#>     Attrib V44    1.2304480326419798
#>     Attrib V45    0.619394951423684
#>     Attrib V46    0.5498728109294492
#>     Attrib V47    0.2368249133489387
#>     Attrib V48    0.6586215157167494
#>     Attrib V49    0.2870901893411212
#>     Attrib V5    0.07608574953142766
#>     Attrib V50    -0.8676233238981826
#>     Attrib V51    0.2499532882713061
#>     Attrib V52    0.257788355054261
#>     Attrib V53    0.39106170086712055
#>     Attrib V54    0.8973895068680288
#>     Attrib V55    -0.3634478198941285
#>     Attrib V56    0.09181276459221202
#>     Attrib V57    -0.5193110292369022
#>     Attrib V58    -0.03007489717283472
#>     Attrib V59    0.3184373150496885
#>     Attrib V6    -0.27454115062019374
#>     Attrib V60    0.3961219670304788
#>     Attrib V7    -0.3621331058764042
#>     Attrib V8    -0.12144865416911806
#>     Attrib V9    0.9821325157688227
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.09947761420007664
#>     Attrib V1    0.028754377636226288
#>     Attrib V10    0.011329508828302666
#>     Attrib V11    0.051048079454561905
#>     Attrib V12    0.10348215809914499
#>     Attrib V13    -0.05915614167697339
#>     Attrib V14    -0.17616915280941395
#>     Attrib V15    -0.009609421304018194
#>     Attrib V16    0.06435598840469405
#>     Attrib V17    -0.06936236250269812
#>     Attrib V18    -0.09084539780608751
#>     Attrib V19    0.05000982732593166
#>     Attrib V2    0.0398588976136296
#>     Attrib V20    -0.018455090640402006
#>     Attrib V21    0.14964877791953224
#>     Attrib V22    0.0026054954128723923
#>     Attrib V23    -0.12713559670478777
#>     Attrib V24    0.07346052001361404
#>     Attrib V25    -0.06031625094683936
#>     Attrib V26    -0.21186031031785554
#>     Attrib V27    -0.11642241908085312
#>     Attrib V28    0.03400916587025782
#>     Attrib V29    0.07560044060977801
#>     Attrib V3    -0.11142184666922375
#>     Attrib V30    0.08796129075046051
#>     Attrib V31    -0.43061508529169495
#>     Attrib V32    -0.12301963529701565
#>     Attrib V33    0.24752650609882573
#>     Attrib V34    0.0040457560915184414
#>     Attrib V35    -0.11623106606446211
#>     Attrib V36    -0.3360214979597211
#>     Attrib V37    -0.2795957088489407
#>     Attrib V38    0.04387929057752601
#>     Attrib V39    -0.07322445969375908
#>     Attrib V4    0.24487377451659892
#>     Attrib V40    -0.1733947861701353
#>     Attrib V41    -0.126222127839086
#>     Attrib V42    -0.09724167358885573
#>     Attrib V43    0.04068008131034032
#>     Attrib V44    0.4072424382014665
#>     Attrib V45    0.15705422561465432
#>     Attrib V46    0.14712485313159818
#>     Attrib V47    0.013685951466192524
#>     Attrib V48    0.307131291445056
#>     Attrib V49    0.10374647161324604
#>     Attrib V5    0.015687780768170678
#>     Attrib V50    -0.45239480532618526
#>     Attrib V51    0.013004427511784322
#>     Attrib V52    0.06945167512942627
#>     Attrib V53    0.1636328090276466
#>     Attrib V54    0.41138890635848496
#>     Attrib V55    -0.024928717578725133
#>     Attrib V56    0.05217368937102335
#>     Attrib V57    -0.05522672000479759
#>     Attrib V58    0.042206130337152904
#>     Attrib V59    0.3484127663772956
#>     Attrib V6    -0.24782457802525076
#>     Attrib V60    0.2793275930719513
#>     Attrib V7    -0.22127239621181882
#>     Attrib V8    -0.09117347755815267
#>     Attrib V9    0.2834913083998377
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.20004063154819154
#>     Attrib V1    -0.28108425527251507
#>     Attrib V10    0.9572038315289074
#>     Attrib V11    0.7299960122364024
#>     Attrib V12    1.2410525530752372
#>     Attrib V13    0.5292700234972747
#>     Attrib V14    -0.3122692531602885
#>     Attrib V15    -0.8311981754427864
#>     Attrib V16    -0.3522834456845974
#>     Attrib V17    -0.4309758504852271
#>     Attrib V18    -0.006690120266101763
#>     Attrib V19    -0.015552603177201462
#>     Attrib V2    0.1906077109362744
#>     Attrib V20    -0.6040897630066591
#>     Attrib V21    -0.09446544084105017
#>     Attrib V22    0.0429800129284674
#>     Attrib V23    0.00767621584865021
#>     Attrib V24    0.5942654044729565
#>     Attrib V25    0.6802558996391054
#>     Attrib V26    0.6599750151035536
#>     Attrib V27    0.8975756261302362
#>     Attrib V28    1.478409956320163
#>     Attrib V29    1.2738898916762027
#>     Attrib V3    -0.012761617954301111
#>     Attrib V30    0.35697512627084743
#>     Attrib V31    -0.8949310466225557
#>     Attrib V32    -0.3909522127840929
#>     Attrib V33    0.13591587025135404
#>     Attrib V34    0.21534962038478103
#>     Attrib V35    -0.013657958717551509
#>     Attrib V36    -0.9208005242783904
#>     Attrib V37    -0.21541879174920822
#>     Attrib V38    -0.12422396029646314
#>     Attrib V39    0.23233714712761508
#>     Attrib V4    0.11655300252972148
#>     Attrib V40    0.5024310108822985
#>     Attrib V41    0.6423620529768416
#>     Attrib V42    -0.26321630123164047
#>     Attrib V43    -0.3731796308210581
#>     Attrib V44    0.39910511834610646
#>     Attrib V45    0.22204419274539253
#>     Attrib V46    0.868794874439579
#>     Attrib V47    0.5534706504546371
#>     Attrib V48    1.1387833167766348
#>     Attrib V49    0.5440469249350574
#>     Attrib V5    0.17763180258745925
#>     Attrib V50    -0.9716257460428371
#>     Attrib V51    0.7778236583706202
#>     Attrib V52    0.676536865263618
#>     Attrib V53    1.0793023459610471
#>     Attrib V54    0.09974864851972869
#>     Attrib V55    -0.749216895615058
#>     Attrib V56    -0.34694686649276096
#>     Attrib V57    -0.6912626710773202
#>     Attrib V58    -0.32255390631952335
#>     Attrib V59    0.36783636117128615
#>     Attrib V6    0.27526515616172414
#>     Attrib V60    0.7001219506860303
#>     Attrib V7    -0.24894081131069073
#>     Attrib V8    -0.46659749489830127
#>     Attrib V9    0.9194298902321917
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.3845505244991403
#>     Attrib V1    0.16559077740114375
#>     Attrib V10    -0.09222476793287833
#>     Attrib V11    -0.13058954515330756
#>     Attrib V12    -0.3601866559583097
#>     Attrib V13    0.20946672732173433
#>     Attrib V14    0.6713446703297866
#>     Attrib V15    0.4669467013291766
#>     Attrib V16    0.37019943264925165
#>     Attrib V17    0.3909496412807392
#>     Attrib V18    0.35431961712561716
#>     Attrib V19    0.3995078279385847
#>     Attrib V2    0.2579873188300625
#>     Attrib V20    0.443094189676061
#>     Attrib V21    -0.32302045315485245
#>     Attrib V22    -0.33321955898192224
#>     Attrib V23    -0.007094888991383577
#>     Attrib V24    -0.5507093326200975
#>     Attrib V25    -0.315752566987727
#>     Attrib V26    0.366221272476042
#>     Attrib V27    0.0010102229176699956
#>     Attrib V28    -0.5307989575082173
#>     Attrib V29    -0.7114055968323667
#>     Attrib V3    0.4912280308158252
#>     Attrib V30    -0.4569978488575844
#>     Attrib V31    1.0201916520399839
#>     Attrib V32    -0.1412173290061448
#>     Attrib V33    -1.1533922205473335
#>     Attrib V34    0.037591776466274616
#>     Attrib V35    0.5246546288257611
#>     Attrib V36    1.049710617085249
#>     Attrib V37    0.46533676517492223
#>     Attrib V38    -0.029210129877289003
#>     Attrib V39    0.01098805422603578
#>     Attrib V4    -0.07214013900078588
#>     Attrib V40    0.18093596405294243
#>     Attrib V41    -0.19152439404272215
#>     Attrib V42    -0.48107263169228265
#>     Attrib V43    -0.5292883762746811
#>     Attrib V44    -1.3061243528679747
#>     Attrib V45    -0.5697630631617088
#>     Attrib V46    -0.5365987864311363
#>     Attrib V47    -0.1636599904471415
#>     Attrib V48    -0.8931430011700717
#>     Attrib V49    -0.12198248993503188
#>     Attrib V5    0.12512038016079227
#>     Attrib V50    1.400773465520373
#>     Attrib V51    -0.06110480179187364
#>     Attrib V52    0.16637151393332003
#>     Attrib V53    -0.058247388364690275
#>     Attrib V54    -0.7571819883738579
#>     Attrib V55    0.662642087375483
#>     Attrib V56    0.012993788244950488
#>     Attrib V57    0.29551072185061983
#>     Attrib V58    0.03840699623662075
#>     Attrib V59    -0.48167159583885816
#>     Attrib V6    0.4042566683021105
#>     Attrib V60    -0.41360391153933407
#>     Attrib V7    0.5824494342277311
#>     Attrib V8    0.06791969333948211
#>     Attrib V9    -0.9849217065857244
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.10757929065406004
#>     Attrib V1    0.07805863165535849
#>     Attrib V10    0.0058283981813587
#>     Attrib V11    0.03535609797572401
#>     Attrib V12    0.0970488555006671
#>     Attrib V13    -0.08065958297306054
#>     Attrib V14    -0.0554905429396665
#>     Attrib V15    0.0164858193881174
#>     Attrib V16    0.03264885200059411
#>     Attrib V17    0.02879266317632344
#>     Attrib V18    0.004729677478325397
#>     Attrib V19    0.0075095983192561494
#>     Attrib V2    0.01194328351339626
#>     Attrib V20    0.05202741070770724
#>     Attrib V21    0.03544246223648835
#>     Attrib V22    -0.07423152646616099
#>     Attrib V23    -0.12422088265790282
#>     Attrib V24    -0.05463642156912083
#>     Attrib V25    -0.07694941310016597
#>     Attrib V26    -0.21050680086671603
#>     Attrib V27    -0.13524098185875122
#>     Attrib V28    -0.05295766529896407
#>     Attrib V29    -0.04238042681478467
#>     Attrib V3    -0.05160115767720714
#>     Attrib V30    0.018921750536604963
#>     Attrib V31    -0.2580651763356756
#>     Attrib V32    -0.09844233717572837
#>     Attrib V33    0.09882626274000059
#>     Attrib V34    0.08347892817015298
#>     Attrib V35    0.04194604551102133
#>     Attrib V36    -0.1034501157859189
#>     Attrib V37    -0.11780911578491256
#>     Attrib V38    0.08230928819078293
#>     Attrib V39    -0.0018785039963431554
#>     Attrib V4    0.12376124273114708
#>     Attrib V40    -0.07118257712539591
#>     Attrib V41    -0.08325364983784979
#>     Attrib V42    0.01197108936219897
#>     Attrib V43    0.04876210527592115
#>     Attrib V44    0.21792964290504596
#>     Attrib V45    0.14559979174767704
#>     Attrib V46    0.08427065859283031
#>     Attrib V47    0.06864664353922582
#>     Attrib V48    0.18571371870928513
#>     Attrib V49    0.05055491709672248
#>     Attrib V5    0.08145954033497177
#>     Attrib V50    -0.12760135814041212
#>     Attrib V51    0.1334571847328414
#>     Attrib V52    0.07722135951798594
#>     Attrib V53    0.07871453885034962
#>     Attrib V54    0.3013068150615548
#>     Attrib V55    0.10188350743746445
#>     Attrib V56    0.11922889738490454
#>     Attrib V57    0.04946908483924815
#>     Attrib V58    0.13181458446423389
#>     Attrib V59    0.1854528151824868
#>     Attrib V6    -0.061732909206244385
#>     Attrib V60    0.1860977395085048
#>     Attrib V7    -0.12899165441617108
#>     Attrib V8    0.029286037022006734
#>     Attrib V9    0.17467238286320627
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.08772073948144565
#>     Attrib V1    0.20098367426442787
#>     Attrib V10    -0.17227296415848614
#>     Attrib V11    -0.0899853281383365
#>     Attrib V12    -0.19226662279832402
#>     Attrib V13    -0.35276325856331237
#>     Attrib V14    -0.3094566247993247
#>     Attrib V15    0.24078135322829963
#>     Attrib V16    0.22788672840627447
#>     Attrib V17    0.021074467798600994
#>     Attrib V18    -0.14810556944982084
#>     Attrib V19    0.13015397406017434
#>     Attrib V2    -0.13595387590562574
#>     Attrib V20    0.32662561149747205
#>     Attrib V21    0.6375418753632415
#>     Attrib V22    0.4061745841016387
#>     Attrib V23    0.0690949119572166
#>     Attrib V24    0.09252968447607329
#>     Attrib V25    -0.38285466775339727
#>     Attrib V26    -0.9223421535074581
#>     Attrib V27    -0.7953457603491643
#>     Attrib V28    -0.7212407124148059
#>     Attrib V29    -0.5235562011608246
#>     Attrib V3    -0.2935118637643076
#>     Attrib V30    -0.14596107394361
#>     Attrib V31    -0.9149287889379163
#>     Attrib V32    -0.11367197143642227
#>     Attrib V33    0.7692927135434344
#>     Attrib V34    0.0018775246372490044
#>     Attrib V35    -0.40494414829681336
#>     Attrib V36    -0.7577220154223225
#>     Attrib V37    -0.7100857538664678
#>     Attrib V38    -0.0461870911533553
#>     Attrib V39    -0.32782428827543103
#>     Attrib V4    0.3641367372370446
#>     Attrib V40    -0.4937970724811935
#>     Attrib V41    -0.353517464280094
#>     Attrib V42    0.12134594393984148
#>     Attrib V43    0.39510691738159226
#>     Attrib V44    0.7038902164276535
#>     Attrib V45    0.33970350737235994
#>     Attrib V46    0.24229841373804445
#>     Attrib V47    -0.03441596002108893
#>     Attrib V48    0.30042997732423343
#>     Attrib V49    -0.016616878697946914
#>     Attrib V5    0.07232877231154505
#>     Attrib V50    -0.6804154434058339
#>     Attrib V51    0.018604174528176403
#>     Attrib V52    -0.010793349344877098
#>     Attrib V53    0.011921834366453152
#>     Attrib V54    1.1751145402327352
#>     Attrib V55    0.18619969328927088
#>     Attrib V56    0.5039819862704797
#>     Attrib V57    0.16823307817976382
#>     Attrib V58    0.4537943421632055
#>     Attrib V59    0.7662632872257801
#>     Attrib V6    -0.40177378634779043
#>     Attrib V60    0.5551080276290032
#>     Attrib V7    -0.2222967033970288
#>     Attrib V8    0.25735347934191966
#>     Attrib V9    0.6018301912412175
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.09901423737220029
#>     Attrib V1    0.13291530239752306
#>     Attrib V10    -0.08328401897939626
#>     Attrib V11    -0.008500870340618735
#>     Attrib V12    0.04628930864621534
#>     Attrib V13    -0.024709301725696915
#>     Attrib V14    -0.05966053322122617
#>     Attrib V15    0.08573702124450917
#>     Attrib V16    0.05977372980381459
#>     Attrib V17    0.033293098301932236
#>     Attrib V18    0.010356367171589003
#>     Attrib V19    0.07167285510634355
#>     Attrib V2    0.024841884009647906
#>     Attrib V20    0.14049445392593973
#>     Attrib V21    0.24562231585446517
#>     Attrib V22    0.053398930184718495
#>     Attrib V23    -0.026549322701832176
#>     Attrib V24    0.045384177614726226
#>     Attrib V25    -0.11507762163914019
#>     Attrib V26    -0.42190490231113253
#>     Attrib V27    -0.2790577168665345
#>     Attrib V28    -0.2124512873549338
#>     Attrib V29    -0.05431322026008218
#>     Attrib V3    -0.018253723575965945
#>     Attrib V30    0.009739274528087833
#>     Attrib V31    -0.4696436807955584
#>     Attrib V32    -0.08483744947009943
#>     Attrib V33    0.24896715338408257
#>     Attrib V34    0.02111317815236679
#>     Attrib V35    -0.17429769903484593
#>     Attrib V36    -0.3802490702145969
#>     Attrib V37    -0.2835478395797849
#>     Attrib V38    -0.019302165056712842
#>     Attrib V39    -0.04529496615445972
#>     Attrib V4    0.24533198399008224
#>     Attrib V40    -0.17954016601820014
#>     Attrib V41    -0.10992986592608749
#>     Attrib V42    0.04942358990681129
#>     Attrib V43    0.0691521530500351
#>     Attrib V44    0.29811899667512043
#>     Attrib V45    0.07596381264763265
#>     Attrib V46    0.11659680462561473
#>     Attrib V47    0.022519191271929456
#>     Attrib V48    0.1680173665477404
#>     Attrib V49    0.06920609749563637
#>     Attrib V5    0.07787058778278733
#>     Attrib V50    -0.3421782840287012
#>     Attrib V51    0.029119017159425106
#>     Attrib V52    0.057588255055957153
#>     Attrib V53    0.11530383374971863
#>     Attrib V54    0.4819487764075225
#>     Attrib V55    0.10639592307915695
#>     Attrib V56    0.19689633491482433
#>     Attrib V57    0.029790357273756646
#>     Attrib V58    0.1652851804884823
#>     Attrib V59    0.44265433592707726
#>     Attrib V6    -0.17460752323502501
#>     Attrib V60    0.3424893446060388
#>     Attrib V7    -0.13797299271926033
#>     Attrib V8    -0.034772969617086674
#>     Attrib V9    0.23047777686375356
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.1225705195349264
#>     Attrib V1    0.2172589306901493
#>     Attrib V10    -0.1026365186787615
#>     Attrib V11    -0.013113238993629654
#>     Attrib V12    -9.696751003210831E-4
#>     Attrib V13    -0.2649837373001482
#>     Attrib V14    -0.28813476357964624
#>     Attrib V15    0.20345905478395762
#>     Attrib V16    0.11224533919671549
#>     Attrib V17    0.047870773594213725
#>     Attrib V18    -0.05586451440780178
#>     Attrib V19    0.06779918401871762
#>     Attrib V2    -0.07321666983412098
#>     Attrib V20    0.220432078267789
#>     Attrib V21    0.3847570887163753
#>     Attrib V22    0.20534238636502009
#>     Attrib V23    0.06467464749634497
#>     Attrib V24    0.12852764453483456
#>     Attrib V25    -0.1777004350886882
#>     Attrib V26    -0.6293480927512124
#>     Attrib V27    -0.7035909255446771
#>     Attrib V28    -0.7178988542756358
#>     Attrib V29    -0.6402120525871466
#>     Attrib V3    -0.22814170462985414
#>     Attrib V30    -0.1737890833517167
#>     Attrib V31    -0.6254469712512735
#>     Attrib V32    -0.06403631380942827
#>     Attrib V33    0.6033683578982919
#>     Attrib V34    0.054560611053569
#>     Attrib V35    -0.19523470419564706
#>     Attrib V36    -0.5675786402091056
#>     Attrib V37    -0.518337722609063
#>     Attrib V38    -0.10755501390084912
#>     Attrib V39    -0.24092585282105447
#>     Attrib V4    0.21472700586624638
#>     Attrib V40    -0.3912981943455801
#>     Attrib V41    -0.32416095285799595
#>     Attrib V42    6.718500128858651E-4
#>     Attrib V43    0.216351535097744
#>     Attrib V44    0.5409423079046477
#>     Attrib V45    0.12268737692182628
#>     Attrib V46    0.12418379538009525
#>     Attrib V47    -0.0503832194460518
#>     Attrib V48    0.2540675859382445
#>     Attrib V49    0.04226460544572493
#>     Attrib V5    -0.006281687136137203
#>     Attrib V50    -0.479156942691807
#>     Attrib V51    -0.006373189847532504
#>     Attrib V52    -0.009630509284453494
#>     Attrib V53    0.009684490599738683
#>     Attrib V54    0.9847671798087468
#>     Attrib V55    0.246319149474794
#>     Attrib V56    0.4106212995757014
#>     Attrib V57    0.10960754404916001
#>     Attrib V58    0.33406236197037975
#>     Attrib V59    0.5533123489516707
#>     Attrib V6    -0.2892882915053279
#>     Attrib V60    0.4836199400649434
#>     Attrib V7    -0.18059978341441002
#>     Attrib V8    0.07801573895319926
#>     Attrib V9    0.41309544315436486
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.07122747547255108
#>     Attrib V1    -0.0076738898630182685
#>     Attrib V10    -0.2873280040511643
#>     Attrib V11    -0.33331946041993915
#>     Attrib V12    -0.2997288296743335
#>     Attrib V13    0.15564666576424688
#>     Attrib V14    0.5495597923115417
#>     Attrib V15    0.14024802781812445
#>     Attrib V16    1.0923415132064343E-4
#>     Attrib V17    0.031045503295060187
#>     Attrib V18    0.03350129532905544
#>     Attrib V19    -0.080629408297977
#>     Attrib V2    0.2593246451122485
#>     Attrib V20    -0.14751457121234812
#>     Attrib V21    -0.6504165697801516
#>     Attrib V22    -0.46697535871622636
#>     Attrib V23    -0.2304473573305921
#>     Attrib V24    -0.4838651122071847
#>     Attrib V25    -0.04564574505844011
#>     Attrib V26    0.6867272669605984
#>     Attrib V27    0.5628449095290838
#>     Attrib V28    0.4549178372916979
#>     Attrib V29    0.5046903146724853
#>     Attrib V3    0.40455128771712534
#>     Attrib V30    0.04523682244937768
#>     Attrib V31    1.0731280581568197
#>     Attrib V32    0.04442153662256269
#>     Attrib V33    -0.806734374520071
#>     Attrib V34    0.23583103544676298
#>     Attrib V35    0.6550282045210705
#>     Attrib V36    1.1868419547986435
#>     Attrib V37    0.9535167528461229
#>     Attrib V38    0.10556410053903546
#>     Attrib V39    0.3775021449846608
#>     Attrib V4    -0.2810858942984202
#>     Attrib V40    0.6059298238995596
#>     Attrib V41    0.35139027239545556
#>     Attrib V42    -0.12919625157440148
#>     Attrib V43    -0.32992703785278277
#>     Attrib V44    -0.9152347977496604
#>     Attrib V45    -0.2553313476082416
#>     Attrib V46    -0.2451700269950954
#>     Attrib V47    -0.026052966442986533
#>     Attrib V48    -0.4957968815440606
#>     Attrib V49    -0.15635537636327015
#>     Attrib V5    -0.10329613066977338
#>     Attrib V50    0.9467409564837967
#>     Attrib V51    -0.13339375688084942
#>     Attrib V52    -0.20763372887543877
#>     Attrib V53    -0.255742095352931
#>     Attrib V54    -1.2879060911911027
#>     Attrib V55    -0.05623142321651764
#>     Attrib V56    -0.319636367401487
#>     Attrib V57    0.1311301410409447
#>     Attrib V58    -0.347434958240503
#>     Attrib V59    -0.5787384448748258
#>     Attrib V6    0.3471850885202695
#>     Attrib V60    -0.543174588765911
#>     Attrib V7    0.2597864183482883
#>     Attrib V8    -0.191514893622693
#>     Attrib V9    -0.9910644956929013
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1538363648525501
#>     Attrib V1    0.037976960644261995
#>     Attrib V10    -0.09143928313312032
#>     Attrib V11    -0.11783114501016739
#>     Attrib V12    -0.23495351113509305
#>     Attrib V13    0.0030025027509936178
#>     Attrib V14    0.13227417963578042
#>     Attrib V15    0.08225451738856802
#>     Attrib V16    0.20555932549659434
#>     Attrib V17    0.2975998502494278
#>     Attrib V18    0.3272462655669764
#>     Attrib V19    0.1213572914230619
#>     Attrib V2    0.009314445359344725
#>     Attrib V20    0.053130614790070856
#>     Attrib V21    -0.04464198754339133
#>     Attrib V22    0.04799047963744093
#>     Attrib V23    0.1162950417023245
#>     Attrib V24    -0.055830270772309974
#>     Attrib V25    0.001975547242585974
#>     Attrib V26    0.06959851786919787
#>     Attrib V27    -0.1040196080306166
#>     Attrib V28    -0.22060467608650836
#>     Attrib V29    -0.20029509090981437
#>     Attrib V3    0.17248490785869172
#>     Attrib V30    -0.165594420510471
#>     Attrib V31    0.3659130800122252
#>     Attrib V32    0.12399492271864511
#>     Attrib V33    -0.17317067997764066
#>     Attrib V34    0.11646947828171891
#>     Attrib V35    0.23103050828567304
#>     Attrib V36    0.4866692100588369
#>     Attrib V37    0.3329280112696745
#>     Attrib V38    -0.0219455394981731
#>     Attrib V39    0.037529543007855055
#>     Attrib V4    -0.0036851166367284347
#>     Attrib V40    0.21562052049695385
#>     Attrib V41    0.24213283564460086
#>     Attrib V42    0.15639167996855508
#>     Attrib V43    6.060999563122421E-4
#>     Attrib V44    -0.37523878987545123
#>     Attrib V45    -0.13869721065076943
#>     Attrib V46    -0.12976159671649265
#>     Attrib V47    -0.014054382161694705
#>     Attrib V48    -0.3043511586615076
#>     Attrib V49    -0.11917244913270338
#>     Attrib V5    0.04877999336270005
#>     Attrib V50    0.5081524867496601
#>     Attrib V51    -0.005997242855858461
#>     Attrib V52    -0.05776273769556694
#>     Attrib V53    -0.04619143617389421
#>     Attrib V54    -0.3716536037555
#>     Attrib V55    0.05956202786180148
#>     Attrib V56    -0.03667055021201785
#>     Attrib V57    0.2603909736663726
#>     Attrib V58    0.045074003427293736
#>     Attrib V59    -0.20763646088419146
#>     Attrib V6    0.22574463591768884
#>     Attrib V60    -0.1541898738862579
#>     Attrib V7    0.22460890050202834
#>     Attrib V8    0.09841556341395195
#>     Attrib V9    -0.3062295603190616
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.10561259821848624
#>     Attrib V1    0.08690838867052633
#>     Attrib V10    0.0368990225207926
#>     Attrib V11    0.004131763057487283
#>     Attrib V12    -0.10432727023991983
#>     Attrib V13    -0.0610146645992843
#>     Attrib V14    0.021582834765148533
#>     Attrib V15    0.06967883865388953
#>     Attrib V16    0.05108457614460377
#>     Attrib V17    0.08444185947353677
#>     Attrib V18    0.12421953199615185
#>     Attrib V19    0.0459450662554908
#>     Attrib V2    0.09350048705409975
#>     Attrib V20    0.003968864194949056
#>     Attrib V21    -0.0057058196938905145
#>     Attrib V22    0.08808159541077673
#>     Attrib V23    0.055080592572775325
#>     Attrib V24    -0.01760116055282558
#>     Attrib V25    -0.06505666128647106
#>     Attrib V26    -0.06850745832495661
#>     Attrib V27    -0.11167057370054877
#>     Attrib V28    -0.14809691943973885
#>     Attrib V29    -0.1374264896962927
#>     Attrib V3    0.060373701253555935
#>     Attrib V30    -0.03164961166686111
#>     Attrib V31    0.2191106811049939
#>     Attrib V32    0.0830284308728054
#>     Attrib V33    0.07319408428049153
#>     Attrib V34    0.0809239472160429
#>     Attrib V35    0.2116098287589372
#>     Attrib V36    0.248342919794715
#>     Attrib V37    0.17407564243482918
#>     Attrib V38    0.08871120227504307
#>     Attrib V39    0.09657317265734208
#>     Attrib V4    -0.00823502029714055
#>     Attrib V40    0.1558337988016212
#>     Attrib V41    0.21307905058521454
#>     Attrib V42    0.11539667151778663
#>     Attrib V43    0.11239740123552207
#>     Attrib V44    -0.07726935149947674
#>     Attrib V45    -0.01293492173679892
#>     Attrib V46    -0.05617205485630954
#>     Attrib V47    -0.00939038641227546
#>     Attrib V48    -0.06077968815628619
#>     Attrib V49    -0.07064543004697124
#>     Attrib V5    0.0321463348222525
#>     Attrib V50    0.2233301845215441
#>     Attrib V51    0.017911535610340007
#>     Attrib V52    -0.019830145765853173
#>     Attrib V53    -0.011126309384155772
#>     Attrib V54    -0.13415829281103883
#>     Attrib V55    0.049194822491808926
#>     Attrib V56    0.0394097173014503
#>     Attrib V57    0.18618368995765514
#>     Attrib V58    0.019909297580737055
#>     Attrib V59    -0.08320368309120493
#>     Attrib V6    0.14125811092286789
#>     Attrib V60    -0.020735573612257228
#>     Attrib V7    0.07685160857718937
#>     Attrib V8    0.14126458363262517
#>     Attrib V9    -0.07556852694331057
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.17545109547479046
#>     Attrib V1    0.1096333803815769
#>     Attrib V10    0.04066318204398591
#>     Attrib V11    0.03948323745361042
#>     Attrib V12    0.03544242827558273
#>     Attrib V13    -0.03140651132389416
#>     Attrib V14    -0.021172274015440754
#>     Attrib V15    -0.0024632205217095015
#>     Attrib V16    0.03241694985463081
#>     Attrib V17    -0.03757370161688211
#>     Attrib V18    0.043405590687801955
#>     Attrib V19    -0.026600717341913504
#>     Attrib V2    0.06963617891220915
#>     Attrib V20    0.017574874145808654
#>     Attrib V21    0.06047235960395824
#>     Attrib V22    -0.05070861996073634
#>     Attrib V23    -0.09520073256184731
#>     Attrib V24    -0.06920118563545909
#>     Attrib V25    -0.07739260798452804
#>     Attrib V26    -0.12707023232263107
#>     Attrib V27    -0.09510655518136694
#>     Attrib V28    -0.07334935386955775
#>     Attrib V29    -0.03245030825689483
#>     Attrib V3    0.06269630047285096
#>     Attrib V30    -0.022589992597560005
#>     Attrib V31    -0.17863562115124762
#>     Attrib V32    -0.05936992897005802
#>     Attrib V33    0.08328369163587251
#>     Attrib V34    0.07575442825756068
#>     Attrib V35    -0.0013921994302754427
#>     Attrib V36    -0.01588510092231885
#>     Attrib V37    -0.06525197311972038
#>     Attrib V38    0.0304600062804781
#>     Attrib V39    0.05455403746353137
#>     Attrib V4    0.08945861385319574
#>     Attrib V40    -0.05151394780888732
#>     Attrib V41    -0.05660040952444014
#>     Attrib V42    0.01278208386185365
#>     Attrib V43    0.04520795677398742
#>     Attrib V44    0.17476856332786506
#>     Attrib V45    0.04097245842528633
#>     Attrib V46    0.06924069644317372
#>     Attrib V47    0.08650791026937062
#>     Attrib V48    0.14129910389750333
#>     Attrib V49    0.0877754619932178
#>     Attrib V5    0.04714105991751024
#>     Attrib V50    -0.13374723027864757
#>     Attrib V51    0.1343614562990996
#>     Attrib V52    0.09373813178987242
#>     Attrib V53    0.09224940202503809
#>     Attrib V54    0.17311334145411625
#>     Attrib V55    0.11596567912462362
#>     Attrib V56    0.1291047134961283
#>     Attrib V57    -0.0022615207801142956
#>     Attrib V58    0.11138208885051291
#>     Attrib V59    0.21233666824979158
#>     Attrib V6    -0.0697493390440582
#>     Attrib V60    0.21989499033424303
#>     Attrib V7    -0.021680688083820454
#>     Attrib V8    0.04636553846876886
#>     Attrib V9    0.1500030038774394
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.29134164132215273
#>     Attrib V1    -0.15872773457062078
#>     Attrib V10    0.21377199500730376
#>     Attrib V11    0.22915819800790982
#>     Attrib V12    0.4340364129928973
#>     Attrib V13    -0.14496319827434634
#>     Attrib V14    -0.5442411300456158
#>     Attrib V15    -0.2565867019559525
#>     Attrib V16    -0.1042819698611344
#>     Attrib V17    -0.06681597825951748
#>     Attrib V18    0.009891218647540828
#>     Attrib V19    0.2117386494373604
#>     Attrib V2    -0.14759653193194902
#>     Attrib V20    0.07340465377232383
#>     Attrib V21    0.3948860056665764
#>     Attrib V22    0.3393832601937952
#>     Attrib V23    0.05569023863054214
#>     Attrib V24    0.32189331241996577
#>     Attrib V25    0.10891947050812956
#>     Attrib V26    -0.2725976185497297
#>     Attrib V27    -0.08047085523816576
#>     Attrib V28    0.24843888005513334
#>     Attrib V29    0.13763035480631025
#>     Attrib V3    -0.38254492603629414
#>     Attrib V30    0.16884484780382797
#>     Attrib V31    -1.0323420722092087
#>     Attrib V32    -0.3981148357685083
#>     Attrib V33    0.46697149090732204
#>     Attrib V34    -0.02454403690905196
#>     Attrib V35    -0.07105977977582287
#>     Attrib V36    -0.6250380986047133
#>     Attrib V37    -0.32595661885196436
#>     Attrib V38    0.21508046371449693
#>     Attrib V39    -0.10771004065314521
#>     Attrib V4    0.30525534712674957
#>     Attrib V40    -0.3373952141866671
#>     Attrib V41    -0.3135226600008041
#>     Attrib V42    -0.11575847839346516
#>     Attrib V43    0.13976416174545597
#>     Attrib V44    1.099968815003418
#>     Attrib V45    0.5882015667148547
#>     Attrib V46    0.42689619221432545
#>     Attrib V47    0.04446141057620224
#>     Attrib V48    0.6150201458414152
#>     Attrib V49    0.32831346297475267
#>     Attrib V5    0.07486005412204783
#>     Attrib V50    -0.9844777883653401
#>     Attrib V51    0.07877257302377617
#>     Attrib V52    0.18452840756689318
#>     Attrib V53    0.3842010323136914
#>     Attrib V54    0.9012378395196932
#>     Attrib V55    -0.1919929186330221
#>     Attrib V56    0.10063584085469705
#>     Attrib V57    -0.4220025445909393
#>     Attrib V58    0.07858329849396546
#>     Attrib V59    0.45763303670632416
#>     Attrib V6    -0.39400453568027816
#>     Attrib V60    0.3913609490833217
#>     Attrib V7    -0.40687056915529235
#>     Attrib V8    -0.11665582737633551
#>     Attrib V9    0.8103504431611206
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.07674899248609038
#>     Attrib V1    0.11408564700582241
#>     Attrib V10    0.08883530413109932
#>     Attrib V11    0.042957444131518245
#>     Attrib V12    0.06230081175555852
#>     Attrib V13    -0.3192200152049899
#>     Attrib V14    -0.5309609256086338
#>     Attrib V15    0.061873814736697945
#>     Attrib V16    0.07268400336082217
#>     Attrib V17    -0.010435584523786233
#>     Attrib V18    -0.12200551704303024
#>     Attrib V19    0.11341648019304607
#>     Attrib V2    -0.3399255993421393
#>     Attrib V20    0.2998704934881695
#>     Attrib V21    0.7222340070887897
#>     Attrib V22    0.5324554628360398
#>     Attrib V23    0.21134942755194894
#>     Attrib V24    0.30644844463062365
#>     Attrib V25    -0.1700352583029
#>     Attrib V26    -0.7711392544212203
#>     Attrib V27    -0.7405517938238574
#>     Attrib V28    -0.723963393558343
#>     Attrib V29    -0.663798033287611
#>     Attrib V3    -0.4269612341530838
#>     Attrib V30    -0.11130392910936977
#>     Attrib V31    -1.0540434789331385
#>     Attrib V32    -0.1773425877438428
#>     Attrib V33    0.7894952746380245
#>     Attrib V34    -0.08331471967280829
#>     Attrib V35    -0.43306392722861653
#>     Attrib V36    -0.83383941438914
#>     Attrib V37    -0.7583750000188174
#>     Attrib V38    -0.024307781495765762
#>     Attrib V39    -0.4056087243705437
#>     Attrib V4    0.22006485064085485
#>     Attrib V40    -0.6430837787960499
#>     Attrib V41    -0.46907422168396024
#>     Attrib V42    0.014978249052383454
#>     Attrib V43    0.41343811227319444
#>     Attrib V44    1.0359960905329644
#>     Attrib V45    0.45175388438961933
#>     Attrib V46    0.22835796104225448
#>     Attrib V47    -0.028913632466700544
#>     Attrib V48    0.4154095533238852
#>     Attrib V49    0.06597313431673514
#>     Attrib V5    0.07775231265265779
#>     Attrib V50    -0.8445082329741543
#>     Attrib V51    0.11103021005973722
#>     Attrib V52    0.06593216260239083
#>     Attrib V53    0.08657889802888198
#>     Attrib V54    1.3785080471294078
#>     Attrib V55    0.15053764852969606
#>     Attrib V56    0.515526789219507
#>     Attrib V57    -0.10390163967316379
#>     Attrib V58    0.42686553980508757
#>     Attrib V59    0.7078399447601654
#>     Attrib V6    -0.4196458548299416
#>     Attrib V60    0.585907904761176
#>     Attrib V7    -0.20584999257740183
#>     Attrib V8    0.2051037613510167
#>     Attrib V9    0.8841441435473263
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.20398863276771054
#>     Attrib V1    0.23360830550577016
#>     Attrib V10    -0.4362144914347473
#>     Attrib V11    -0.414175125541028
#>     Attrib V12    -0.6233602154410355
#>     Attrib V13    -0.11785106346152927
#>     Attrib V14    0.3287261725346774
#>     Attrib V15    0.2747352642382635
#>     Attrib V16    0.17399027311638776
#>     Attrib V17    0.3139003591460865
#>     Attrib V18    0.21875320538356618
#>     Attrib V19    -1.2914387137534581E-4
#>     Attrib V2    0.03326816119714591
#>     Attrib V20    0.1751929619326032
#>     Attrib V21    -0.09117513738119008
#>     Attrib V22    -0.09474315270000602
#>     Attrib V23    0.1307614451845886
#>     Attrib V24    -0.2069447703098184
#>     Attrib V25    -0.040207699743186984
#>     Attrib V26    0.39223644577142597
#>     Attrib V27    0.10633461936058054
#>     Attrib V28    -0.37149246337089786
#>     Attrib V29    -0.32141203444069544
#>     Attrib V3    0.25539718540760764
#>     Attrib V30    -0.17102485590305846
#>     Attrib V31    0.8319975154407274
#>     Attrib V32    0.016205120137365536
#>     Attrib V33    -0.581906300790306
#>     Attrib V34    -0.019531325265884983
#>     Attrib V35    0.31932216531437857
#>     Attrib V36    0.9356155165936422
#>     Attrib V37    0.5202332356630665
#>     Attrib V38    0.027071764317563998
#>     Attrib V39    0.06653068483085912
#>     Attrib V4    0.0016388965214173725
#>     Attrib V40    0.20348426190659705
#>     Attrib V41    0.14869942916011375
#>     Attrib V42    0.11502333843393722
#>     Attrib V43    0.12659732421308872
#>     Attrib V44    -0.5309869371375155
#>     Attrib V45    -0.20921522900503098
#>     Attrib V46    -0.3790666768618697
#>     Attrib V47    -0.13623089472650166
#>     Attrib V48    -0.6513223182111675
#>     Attrib V49    -0.24794429214093708
#>     Attrib V5    0.055301029788917745
#>     Attrib V50    1.0283018587339954
#>     Attrib V51    -0.20794214734505828
#>     Attrib V52    -0.2764496687382731
#>     Attrib V53    -0.31991737760584305
#>     Attrib V54    -0.48227426119201067
#>     Attrib V55    0.23753931983785345
#>     Attrib V56    -0.01846979185578994
#>     Attrib V57    0.5156736351357523
#>     Attrib V58    -0.003175119731766793
#>     Attrib V59    -0.20891932031409763
#>     Attrib V6    0.22107732553336268
#>     Attrib V60    -0.22137096974381407
#>     Attrib V7    0.42445291608802743
#>     Attrib V8    0.11971544612267623
#>     Attrib V9    -0.7774995469181701
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.12834038970214973
#>     Attrib V1    0.16942551054586666
#>     Attrib V10    0.02128626047685364
#>     Attrib V11    0.0445399198531325
#>     Attrib V12    0.056296370893492036
#>     Attrib V13    -0.045978041651566805
#>     Attrib V14    0.013380921444684099
#>     Attrib V15    0.016053275247739945
#>     Attrib V16    0.09460813093167732
#>     Attrib V17    0.01745726362968687
#>     Attrib V18    -0.010101588897784137
#>     Attrib V19    -0.015102681212699656
#>     Attrib V2    0.10040149226066584
#>     Attrib V20    0.0019298200394593117
#>     Attrib V21    -1.5031118881180734E-4
#>     Attrib V22    -0.10714503936069363
#>     Attrib V23    -0.1732033780784929
#>     Attrib V24    -0.026112032526108747
#>     Attrib V25    -0.12556047164181774
#>     Attrib V26    -0.2057065577420839
#>     Attrib V27    -0.16556498154219298
#>     Attrib V28    -0.15375711481391902
#>     Attrib V29    -0.02686664255030981
#>     Attrib V3    0.0033860764802737774
#>     Attrib V30    -0.02099414436169936
#>     Attrib V31    -0.13209682594864658
#>     Attrib V32    -0.060291138829924686
#>     Attrib V33    0.06323638821860886
#>     Attrib V34    0.029789951461196548
#>     Attrib V35    0.012749880933122385
#>     Attrib V36    -0.08759117365531033
#>     Attrib V37    -0.07689745819471995
#>     Attrib V38    -0.0033366158878595695
#>     Attrib V39    -0.022323400068145555
#>     Attrib V4    0.16890452577830936
#>     Attrib V40    -0.02769348159892941
#>     Attrib V41    -0.06887484927515326
#>     Attrib V42    1.8659076603338477E-4
#>     Attrib V43    0.10923963565583167
#>     Attrib V44    0.13969435539157107
#>     Attrib V45    0.02372594945618102
#>     Attrib V46    0.1095580599637524
#>     Attrib V47    0.005278971965275622
#>     Attrib V48    0.17499727635474754
#>     Attrib V49    0.07404522119572839
#>     Attrib V5    0.08255525899890905
#>     Attrib V50    -0.10331727506736829
#>     Attrib V51    0.06463863777503975
#>     Attrib V52    0.11206415913871123
#>     Attrib V53    0.08377084210882356
#>     Attrib V54    0.26060237538444736
#>     Attrib V55    0.1466728186575755
#>     Attrib V56    0.1577561867069887
#>     Attrib V57    0.08039196124772605
#>     Attrib V58    0.18108508707242482
#>     Attrib V59    0.2397828661426823
#>     Attrib V6    -0.03453685987046732
#>     Attrib V60    0.24646767041904952
#>     Attrib V7    -0.054780067414777735
#>     Attrib V8    -0.03892993473802517
#>     Attrib V9    0.14888513467587355
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.11490804327280395
#>     Attrib V1    0.22960739171709107
#>     Attrib V10    -0.16700929945128637
#>     Attrib V11    -0.0596045823985733
#>     Attrib V12    -0.030217153793050625
#>     Attrib V13    -0.2849228115873787
#>     Attrib V14    -0.308047855536867
#>     Attrib V15    0.18275703038011973
#>     Attrib V16    0.1181482009705838
#>     Attrib V17    0.0672391316983767
#>     Attrib V18    -0.08817464167405381
#>     Attrib V19    0.09121743579389256
#>     Attrib V2    -0.18800950627549598
#>     Attrib V20    0.25539389239899735
#>     Attrib V21    0.4678288135470534
#>     Attrib V22    0.28781881317632624
#>     Attrib V23    0.06463060819102522
#>     Attrib V24    0.12277374728830956
#>     Attrib V25    -0.22970397541085927
#>     Attrib V26    -0.701860154386478
#>     Attrib V27    -0.7859028065491513
#>     Attrib V28    -0.7936862891616063
#>     Attrib V29    -0.6736577684358762
#>     Attrib V3    -0.23202755607661482
#>     Attrib V30    -0.19224602419412667
#>     Attrib V31    -0.7107616234729975
#>     Attrib V32    -0.05505609968540732
#>     Attrib V33    0.6445558675327967
#>     Attrib V34    0.047252874029658984
#>     Attrib V35    -0.22401421861273776
#>     Attrib V36    -0.5963944726931178
#>     Attrib V37    -0.561171862899398
#>     Attrib V38    -0.09433363052940198
#>     Attrib V39    -0.2857234061824107
#>     Attrib V4    0.23586035334614355
#>     Attrib V40    -0.48838555362162966
#>     Attrib V41    -0.3743776858661597
#>     Attrib V42    0.03023926296082897
#>     Attrib V43    0.33423217163287045
#>     Attrib V44    0.5844064605675146
#>     Attrib V45    0.25851124845374435
#>     Attrib V46    0.13538109963416917
#>     Attrib V47    0.008871065341533433
#>     Attrib V48    0.2163344519519452
#>     Attrib V49    0.014670042640050392
#>     Attrib V5    0.003350758154273252
#>     Attrib V50    -0.5559116085144471
#>     Attrib V51    -0.00925225548890361
#>     Attrib V52    0.025774689841163045
#>     Attrib V53    0.03225962823529849
#>     Attrib V54    1.0600179130331235
#>     Attrib V55    0.24749741413860282
#>     Attrib V56    0.4980242157626
#>     Attrib V57    0.08711321604924385
#>     Attrib V58    0.3616907849782314
#>     Attrib V59    0.6586894596999452
#>     Attrib V6    -0.30268644897672714
#>     Attrib V60    0.47865167900601346
#>     Attrib V7    -0.18555219393084288
#>     Attrib V8    0.12706443516861435
#>     Attrib V9    0.4681451187209712
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1626278125989952
#>     Attrib V1    0.12964162056514433
#>     Attrib V10    -0.29129278872334285
#>     Attrib V11    -0.25438181216510514
#>     Attrib V12    -0.42880364692035683
#>     Attrib V13    -0.06673650702062148
#>     Attrib V14    0.29012743916061967
#>     Attrib V15    0.26078560877524387
#>     Attrib V16    0.16913092722056774
#>     Attrib V17    0.34666502466532756
#>     Attrib V18    0.23441406149011473
#>     Attrib V19    0.0715740663221913
#>     Attrib V2    0.05698643873842309
#>     Attrib V20    0.16491299843372578
#>     Attrib V21    -0.08517562604380755
#>     Attrib V22    -0.05562650648844083
#>     Attrib V23    0.1942014631794918
#>     Attrib V24    -0.18324001476231283
#>     Attrib V25    -0.057134732552521175
#>     Attrib V26    0.2811969332884846
#>     Attrib V27    -0.008007357396861729
#>     Attrib V28    -0.3062318247419944
#>     Attrib V29    -0.3224363172295235
#>     Attrib V3    0.24317137793978694
#>     Attrib V30    -0.21233162050759352
#>     Attrib V31    0.6010579195270279
#>     Attrib V32    0.08293698520724349
#>     Attrib V33    -0.49052907819236613
#>     Attrib V34    0.014042203357881181
#>     Attrib V35    0.27567496623161386
#>     Attrib V36    0.7574844062663505
#>     Attrib V37    0.34307435060681507
#>     Attrib V38    -0.0090807903656925
#>     Attrib V39    0.018642088970394464
#>     Attrib V4    0.012616551162991506
#>     Attrib V40    0.20850337520873893
#>     Attrib V41    0.16170324144469492
#>     Attrib V42    0.08032797919461933
#>     Attrib V43    0.06937485045522813
#>     Attrib V44    -0.5578657531107395
#>     Attrib V45    -0.26011893724922525
#>     Attrib V46    -0.28973381593727926
#>     Attrib V47    -0.05899727939185363
#>     Attrib V48    -0.5352143964663807
#>     Attrib V49    -0.19605300247509547
#>     Attrib V5    0.02048612143305595
#>     Attrib V50    0.8468616327081622
#>     Attrib V51    -0.12171936338512537
#>     Attrib V52    -0.11896361654207645
#>     Attrib V53    -0.24543607416320257
#>     Attrib V54    -0.4929506284365535
#>     Attrib V55    0.21612613418672622
#>     Attrib V56    0.006587072953900986
#>     Attrib V57    0.4044495234603068
#>     Attrib V58    0.01636422976601155
#>     Attrib V59    -0.23950970560389925
#>     Attrib V6    0.2640320897521974
#>     Attrib V60    -0.2857448991523233
#>     Attrib V7    0.318937802003907
#>     Attrib V8    0.15656243557434793
#>     Attrib V9    -0.5781235751333188
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.4864081734415616
#>     Attrib V1    -0.4018863668384108
#>     Attrib V10    1.145268498470224
#>     Attrib V11    0.668394632213628
#>     Attrib V12    1.448954001041443
#>     Attrib V13    0.6777261804341935
#>     Attrib V14    -0.12823172639118613
#>     Attrib V15    -1.176522980992409
#>     Attrib V16    -0.3615515226731363
#>     Attrib V17    -0.38113451258616116
#>     Attrib V18    0.27132979720382927
#>     Attrib V19    0.16664146686294876
#>     Attrib V2    0.37746696585938205
#>     Attrib V20    -0.7494742703520197
#>     Attrib V21    0.16000755110557563
#>     Attrib V22    0.4025359774024493
#>     Attrib V23    0.3731034776574938
#>     Attrib V24    0.8374401682776347
#>     Attrib V25    0.364804449590068
#>     Attrib V26    0.4869526323098829
#>     Attrib V27    1.2976254898254238
#>     Attrib V28    2.6078053689233025
#>     Attrib V29    2.897856191789847
#>     Attrib V3    0.44558523801422417
#>     Attrib V30    0.7341296231078119
#>     Attrib V31    -1.534191131106542
#>     Attrib V32    -0.7458754352393313
#>     Attrib V33    -0.07046654582962009
#>     Attrib V34    0.1389748762571461
#>     Attrib V35    -0.26347610114540193
#>     Attrib V36    -1.6303411258581966
#>     Attrib V37    -0.23019843534866546
#>     Attrib V38    -0.38183322892483734
#>     Attrib V39    0.3006832594446802
#>     Attrib V4    0.6436855416996735
#>     Attrib V40    0.9737589753190479
#>     Attrib V41    1.6565572582688506
#>     Attrib V42    0.02758129733826758
#>     Attrib V43    -0.7081451506577873
#>     Attrib V44    0.6890589980368423
#>     Attrib V45    0.45267576074968335
#>     Attrib V46    1.5139084284692326
#>     Attrib V47    0.7534646188197772
#>     Attrib V48    1.3778086531106406
#>     Attrib V49    0.6731057225862599
#>     Attrib V5    0.8003488423563336
#>     Attrib V50    -1.366040057852382
#>     Attrib V51    1.2796114813283808
#>     Attrib V52    0.9698228150308542
#>     Attrib V53    1.6953593856717777
#>     Attrib V54    -0.44419173832508185
#>     Attrib V55    -1.7012927292929345
#>     Attrib V56    -0.8236243219934165
#>     Attrib V57    -1.0500033806276605
#>     Attrib V58    -0.5616719679480021
#>     Attrib V59    0.936372673493315
#>     Attrib V6    0.7574630656166583
#>     Attrib V60    1.3358892980356063
#>     Attrib V7    -0.4178966740519444
#>     Attrib V8    -0.9680499540512252
#>     Attrib V9    0.9782405302392481
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.19323962893551141
#>     Attrib V1    0.07444528003156799
#>     Attrib V10    -0.009190852228189697
#>     Attrib V11    -0.0427360854245864
#>     Attrib V12    -0.027913834241910473
#>     Attrib V13    -0.038993592480474196
#>     Attrib V14    0.06362592985228058
#>     Attrib V15    -0.011744355310695153
#>     Attrib V16    0.028593113759306198
#>     Attrib V17    0.08868015341496222
#>     Attrib V18    0.05808940375204124
#>     Attrib V19    0.0750340421160394
#>     Attrib V2    0.051806200560165654
#>     Attrib V20    0.023537814274227357
#>     Attrib V21    0.009932023883238468
#>     Attrib V22    -0.001977596380861796
#>     Attrib V23    0.028686963306702014
#>     Attrib V24    -0.05880791313145355
#>     Attrib V25    -0.044104075884485026
#>     Attrib V26    -0.07433775237948242
#>     Attrib V27    -0.06811809871961427
#>     Attrib V28    -0.08067643011359038
#>     Attrib V29    -0.06640779332219161
#>     Attrib V3    0.03194535089278064
#>     Attrib V30    -0.05025900931509453
#>     Attrib V31    0.06442908729867296
#>     Attrib V32    0.0375351215723208
#>     Attrib V33    0.04483205555018933
#>     Attrib V34    0.0629836474981766
#>     Attrib V35    0.1689647032094621
#>     Attrib V36    0.22161999892440445
#>     Attrib V37    0.18110722956346564
#>     Attrib V38    0.020179810754725924
#>     Attrib V39    0.06723034745048612
#>     Attrib V4    0.03638481225193654
#>     Attrib V40    0.11296727478101315
#>     Attrib V41    0.11159202352073036
#>     Attrib V42    0.10063118152447818
#>     Attrib V43    0.058534614887591645
#>     Attrib V44    -0.05226883902057787
#>     Attrib V45    -0.025900018000763154
#>     Attrib V46    -0.03084103382678429
#>     Attrib V47    0.01521062077500589
#>     Attrib V48    0.0052989625831250066
#>     Attrib V49    -0.012766584187694151
#>     Attrib V5    -0.011286609411954841
#>     Attrib V50    0.16299050982215554
#>     Attrib V51    0.01715040493398159
#>     Attrib V52    0.0217911359000737
#>     Attrib V53    0.024170434825408937
#>     Attrib V54    -0.05511655277809969
#>     Attrib V55    0.041832506344872455
#>     Attrib V56    0.06925193088717341
#>     Attrib V57    0.14018409819350117
#>     Attrib V58    0.08072849346265087
#>     Attrib V59    0.018092495067733905
#>     Attrib V6    0.12951986640780688
#>     Attrib V60    0.07032020693988732
#>     Attrib V7    0.04547271240148444
#>     Attrib V8    0.0961097028361436
#>     Attrib V9    -0.05117737604783465
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    -0.05766583187148863
#>     Attrib V1    0.21390388916307604
#>     Attrib V10    -0.05137856444185783
#>     Attrib V11    -0.026849069179610826
#>     Attrib V12    -0.013129874514014348
#>     Attrib V13    -0.2587912038086907
#>     Attrib V14    -0.3818930896925537
#>     Attrib V15    0.15278777772653873
#>     Attrib V16    0.1281703913653852
#>     Attrib V17    9.617599986801776E-6
#>     Attrib V18    -0.0350332509686722
#>     Attrib V19    0.08250890487939964
#>     Attrib V2    -0.1585425312972631
#>     Attrib V20    0.20731042251738574
#>     Attrib V21    0.5230823986669936
#>     Attrib V22    0.32205574101938916
#>     Attrib V23    0.05628312943907279
#>     Attrib V24    0.22592479563800658
#>     Attrib V25    -0.18805454973609279
#>     Attrib V26    -0.6513764140035345
#>     Attrib V27    -0.7333042538722562
#>     Attrib V28    -0.7493207248067874
#>     Attrib V29    -0.6340173328518935
#>     Attrib V3    -0.279466318614549
#>     Attrib V30    -0.18105797557960177
#>     Attrib V31    -0.7556450663402012
#>     Attrib V32    -0.06858291803712516
#>     Attrib V33    0.6568706674302135
#>     Attrib V34    0.05767696767845042
#>     Attrib V35    -0.3003970597273288
#>     Attrib V36    -0.6689868319363257
#>     Attrib V37    -0.639988502690877
#>     Attrib V38    -0.07873865023834137
#>     Attrib V39    -0.2808716629666742
#>     Attrib V4    0.22685045718117494
#>     Attrib V40    -0.5275972350441521
#>     Attrib V41    -0.36107793827688084
#>     Attrib V42    0.03955904878665908
#>     Attrib V43    0.24733309613725188
#>     Attrib V44    0.6796703840032396
#>     Attrib V45    0.29860574958045344
#>     Attrib V46    0.12128838789531114
#>     Attrib V47    -0.06787112188581292
#>     Attrib V48    0.3109192394420124
#>     Attrib V49    -0.0038754198597789865
#>     Attrib V5    0.020257186685830375
#>     Attrib V50    -0.5464125463318965
#>     Attrib V51    0.03701838841526169
#>     Attrib V52    0.012215390884521839
#>     Attrib V53    0.07006478403361262
#>     Attrib V54    1.1144127918323634
#>     Attrib V55    0.2318690058291046
#>     Attrib V56    0.37880412735627944
#>     Attrib V57    0.07009687374610662
#>     Attrib V58    0.36025110972653857
#>     Attrib V59    0.6235917377996814
#>     Attrib V6    -0.2901936776199905
#>     Attrib V60    0.4967805502662487
#>     Attrib V7    -0.21994493452218486
#>     Attrib V8    0.16298365442779067
#>     Attrib V9    0.5728740568729118
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.09093862258676207
#>     Attrib V1    0.5637252506523108
#>     Attrib V10    -1.1373994759846826
#>     Attrib V11    -0.7503146328183058
#>     Attrib V12    -1.169197965535175
#>     Attrib V13    -0.32033205164964307
#>     Attrib V14    0.6230522751650649
#>     Attrib V15    1.0391103019636858
#>     Attrib V16    0.5405133053411882
#>     Attrib V17    0.4410784841130417
#>     Attrib V18    0.03210732409973655
#>     Attrib V19    -0.2345405047313624
#>     Attrib V2    0.2799670465046691
#>     Attrib V20    0.4938839098512815
#>     Attrib V21    0.009705152087979022
#>     Attrib V22    -0.2767769107649654
#>     Attrib V23    -0.17581640158508252
#>     Attrib V24    -0.7290618475592794
#>     Attrib V25    -0.7587864999918131
#>     Attrib V26    -0.3212642166141557
#>     Attrib V27    -0.5196864318494642
#>     Attrib V28    -1.1700813561272918
#>     Attrib V29    -0.6335274197065015
#>     Attrib V3    0.3257659308284018
#>     Attrib V30    -0.16209728668101034
#>     Attrib V31    1.0768321211993674
#>     Attrib V32    0.19044927465038494
#>     Attrib V33    -0.6060891352769243
#>     Attrib V34    -0.1715220390564363
#>     Attrib V35    0.1120344673168439
#>     Attrib V36    1.1922274761553486
#>     Attrib V37    0.6078848068958927
#>     Attrib V38    0.1956296049269622
#>     Attrib V39    -0.03656238780462227
#>     Attrib V4    0.11089697769240614
#>     Attrib V40    -0.1972200309183031
#>     Attrib V41    -0.253234766277778
#>     Attrib V42    0.21930354343376632
#>     Attrib V43    0.3049522287196455
#>     Attrib V44    -0.8207858790418778
#>     Attrib V45    -0.3662343431517841
#>     Attrib V46    -0.8893702796882436
#>     Attrib V47    -0.6078441409737639
#>     Attrib V48    -1.3954505434315179
#>     Attrib V49    -0.7683998194450022
#>     Attrib V5    -0.18626880195457074
#>     Attrib V50    1.3181128560789623
#>     Attrib V51    -0.8024623802882692
#>     Attrib V52    -0.6397112403227181
#>     Attrib V53    -0.8717468911418275
#>     Attrib V54    -0.39441720180164896
#>     Attrib V55    0.7987997897029958
#>     Attrib V56    0.1697842561370398
#>     Attrib V57    0.8137834224493752
#>     Attrib V58    0.14395731285804847
#>     Attrib V59    -0.14070182978105886
#>     Attrib V6    -0.14643760746033688
#>     Attrib V60    -0.6632254727067806
#>     Attrib V7    0.3377956421839012
#>     Attrib V8    0.4421201557289286
#>     Attrib V9    -1.3550103713361417
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.08777678332002666
#>     Attrib V1    0.07308877539834951
#>     Attrib V10    -0.017202079751286046
#>     Attrib V11    0.08979427462098367
#>     Attrib V12    0.11168202451993982
#>     Attrib V13    -0.03194273145561891
#>     Attrib V14    0.02130615535108488
#>     Attrib V15    0.038948934830747246
#>     Attrib V16    0.005495494186980453
#>     Attrib V17    -0.038714434841226775
#>     Attrib V18    -0.02107239531750268
#>     Attrib V19    -0.01829144231429635
#>     Attrib V2    0.045579439768296426
#>     Attrib V20    0.04919510081020564
#>     Attrib V21    0.08981605300217956
#>     Attrib V22    -0.002229992218150479
#>     Attrib V23    -0.14335192429818105
#>     Attrib V24    -0.001008985063870158
#>     Attrib V25    -0.04972219432941926
#>     Attrib V26    -0.21213802451527866
#>     Attrib V27    -0.13983227285630181
#>     Attrib V28    -0.0901880274420616
#>     Attrib V29    0.028248018974080365
#>     Attrib V3    0.01443488186349499
#>     Attrib V30    -0.03617501810715959
#>     Attrib V31    -0.23162806194224683
#>     Attrib V32    -0.06659170551287669
#>     Attrib V33    0.11507072694954867
#>     Attrib V34    0.02342546202724715
#>     Attrib V35    -0.016897689418820524
#>     Attrib V36    -0.18299185490185027
#>     Attrib V37    -0.11096264808718727
#>     Attrib V38    0.010940316313901948
#>     Attrib V39    -0.0026840353730071104
#>     Attrib V4    0.12882537202615663
#>     Attrib V40    -0.07661468298560432
#>     Attrib V41    -0.03737005585133494
#>     Attrib V42    -0.022037272673473753
#>     Attrib V43    0.09688185095763166
#>     Attrib V44    0.1282609447560108
#>     Attrib V45    0.12197779153666277
#>     Attrib V46    0.09571880294524136
#>     Attrib V47    0.05854841924865102
#>     Attrib V48    0.1517730516849354
#>     Attrib V49    0.030189698141109136
#>     Attrib V5    0.01787388811645018
#>     Attrib V50    -0.14011902184374914
#>     Attrib V51    0.10149431263894187
#>     Attrib V52    0.15515855444581408
#>     Attrib V53    0.10006484508207139
#>     Attrib V54    0.2617314617095711
#>     Attrib V55    0.15108901605242822
#>     Attrib V56    0.1361976575433753
#>     Attrib V57    0.030488388813346312
#>     Attrib V58    0.10031413878880509
#>     Attrib V59    0.21330198800716627
#>     Attrib V6    -0.07124203620294978
#>     Attrib V60    0.2267701650223841
#>     Attrib V7    -0.10370094052434499
#>     Attrib V8    0.007128462842973394
#>     Attrib V9    0.16523518491650857
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.11270689790140331
#>     Attrib V1    0.1486394842774221
#>     Attrib V10    0.06294388298406997
#>     Attrib V11    0.05047227907150396
#>     Attrib V12    0.09939554416266769
#>     Attrib V13    0.019561191833416237
#>     Attrib V14    -0.01396032457827356
#>     Attrib V15    0.037399106173682646
#>     Attrib V16    0.02412408098249866
#>     Attrib V17    0.013973472148138787
#>     Attrib V18    -0.03257954170921775
#>     Attrib V19    -0.0270863009858399
#>     Attrib V2    0.09384410445189731
#>     Attrib V20    -0.044133715497536
#>     Attrib V21    0.03588431980788781
#>     Attrib V22    -0.07472627339302737
#>     Attrib V23    -0.11973921926207252
#>     Attrib V24    -0.07624249841886516
#>     Attrib V25    -0.06946570973922471
#>     Attrib V26    -0.1092310677870064
#>     Attrib V27    -0.10258638861647792
#>     Attrib V28    -0.027662388987475025
#>     Attrib V29    -0.03283836144087887
#>     Attrib V3    -0.004503359945334512
#>     Attrib V30    0.04425215484054284
#>     Attrib V31    -0.12329803955857932
#>     Attrib V32    -0.08325110608956733
#>     Attrib V33    0.05692496266236791
#>     Attrib V34    0.022057678540733747
#>     Attrib V35    0.033057589653379044
#>     Attrib V36    -0.11165048717978919
#>     Attrib V37    -0.03759645228160661
#>     Attrib V38    0.011542252930299094
#>     Attrib V39    0.07188582280016034
#>     Attrib V4    0.17895473067229561
#>     Attrib V40    -0.022680585377641758
#>     Attrib V41    -0.016864859364284356
#>     Attrib V42    0.05015692009384129
#>     Attrib V43    0.034455632145941426
#>     Attrib V44    0.11228932626222969
#>     Attrib V45    0.08690960759193336
#>     Attrib V46    0.08104235423502029
#>     Attrib V47    0.012673771063456811
#>     Attrib V48    0.17539706251092968
#>     Attrib V49    0.04617195701893306
#>     Attrib V5    0.0067552270605854186
#>     Attrib V50    -0.13410468322285835
#>     Attrib V51    0.06553055569054589
#>     Attrib V52    0.11541995497783024
#>     Attrib V53    0.11077681417964567
#>     Attrib V54    0.22975738734117865
#>     Attrib V55    0.07953305426946622
#>     Attrib V56    0.14802535930426255
#>     Attrib V57    0.008879205760417473
#>     Attrib V58    0.14757596057586753
#>     Attrib V59    0.2599571196834816
#>     Attrib V6    -0.05578446470692069
#>     Attrib V60    0.22439888416610104
#>     Attrib V7    -0.11465414125711348
#>     Attrib V8    -0.015197229286223813
#>     Attrib V9    0.12125161826236536
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.1620730714755226
#>     Attrib V1    0.08872463365168864
#>     Attrib V10    0.03026176528353166
#>     Attrib V11    0.056491919751369454
#>     Attrib V12    -0.04434880449688845
#>     Attrib V13    0.013954115138591428
#>     Attrib V14    0.05208015355307129
#>     Attrib V15    0.020407947703250665
#>     Attrib V16    0.025428125546054694
#>     Attrib V17    0.07019059221930263
#>     Attrib V18    0.09125616788866114
#>     Attrib V19    0.008523871484382967
#>     Attrib V2    0.09327570677033313
#>     Attrib V20    0.02927523872531216
#>     Attrib V21    -0.06173579612881372
#>     Attrib V22    0.009698424444837985
#>     Attrib V23    0.0254917789444777
#>     Attrib V24    -0.021776461600554197
#>     Attrib V25    -0.0876770393360543
#>     Attrib V26    -0.05233842580533005
#>     Attrib V27    -0.11265465587932177
#>     Attrib V28    -0.13241670903354888
#>     Attrib V29    -0.08504173467631577
#>     Attrib V3    0.01860596533424283
#>     Attrib V30    -0.04881551789212738
#>     Attrib V31    0.07498537971415825
#>     Attrib V32    0.02503190073661754
#>     Attrib V33    0.04733311019603848
#>     Attrib V34    0.09172817070611862
#>     Attrib V35    0.1443891936906426
#>     Attrib V36    0.12021557756140284
#>     Attrib V37    0.13666460198175384
#>     Attrib V38    0.08610460116456144
#>     Attrib V39    0.008453964959002039
#>     Attrib V4    0.05838456217934685
#>     Attrib V40    0.08482516753187125
#>     Attrib V41    0.06988854838381436
#>     Attrib V42    0.04348955856029775
#>     Attrib V43    0.06400566558965479
#>     Attrib V44    0.010926457290564476
#>     Attrib V45    -0.025851610733871128
#>     Attrib V46    0.024244204747761355
#>     Attrib V47    0.062373511561228404
#>     Attrib V48    0.03285328158552645
#>     Attrib V49    0.0293686957414816
#>     Attrib V5    0.03206806886894652
#>     Attrib V50    0.08458897691198751
#>     Attrib V51    0.042054063435008074
#>     Attrib V52    0.08162150417580685
#>     Attrib V53    0.08550424585036773
#>     Attrib V54    0.04826927336543118
#>     Attrib V55    0.07667891624503026
#>     Attrib V56    0.021088907315103045
#>     Attrib V57    0.08952030097533309
#>     Attrib V58    0.04247063083250305
#>     Attrib V59    0.02882715035612348
#>     Attrib V6    0.07911931257094258
#>     Attrib V60    0.05859285435728878
#>     Attrib V7    0.05940143768256468
#>     Attrib V8    0.07022010264822914
#>     Attrib V9    0.057433208098541876
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.15763156334766548
#>     Attrib V1    0.11107371185530934
#>     Attrib V10    -0.018007210036976713
#>     Attrib V11    0.02905037105041034
#>     Attrib V12    -0.01113425682980795
#>     Attrib V13    -0.05107449759975839
#>     Attrib V14    0.059052559922028194
#>     Attrib V15    0.019971072409781916
#>     Attrib V16    0.05340830049022508
#>     Attrib V17    0.01973309779506622
#>     Attrib V18    0.12023579800568003
#>     Attrib V19    -0.020364960519751094
#>     Attrib V2    0.022535397391632996
#>     Attrib V20    0.018606669379475034
#>     Attrib V21    0.009692322235634748
#>     Attrib V22    -0.02663545492750738
#>     Attrib V23    0.036797467817327865
#>     Attrib V24    -0.04616964058744459
#>     Attrib V25    -0.10109508590784128
#>     Attrib V26    -0.0916307330105249
#>     Attrib V27    -0.09694994622507863
#>     Attrib V28    -0.06223785874888777
#>     Attrib V29    -0.05956838551554654
#>     Attrib V3    0.08810156768242801
#>     Attrib V30    0.004930796297341899
#>     Attrib V31    0.01274958730452513
#>     Attrib V32    0.019098680591334814
#>     Attrib V33    0.03877363430402369
#>     Attrib V34    0.08618596980757165
#>     Attrib V35    0.11901099905695253
#>     Attrib V36    0.18465892977763884
#>     Attrib V37    0.1151170150206259
#>     Attrib V38    0.015159916195183455
#>     Attrib V39    0.06734226079397714
#>     Attrib V4    0.005952888680031799
#>     Attrib V40    0.07188389613794488
#>     Attrib V41    0.05760755766290873
#>     Attrib V42    0.08181939058614918
#>     Attrib V43    0.0032864769476947317
#>     Attrib V44    -7.817653510946207E-4
#>     Attrib V45    0.03245973159671831
#>     Attrib V46    0.022067077762729367
#>     Attrib V47    0.04316233625926409
#>     Attrib V48    -0.022208681223917035
#>     Attrib V49    0.05460486071321071
#>     Attrib V5    0.0483111475690208
#>     Attrib V50    0.06840166849331072
#>     Attrib V51    0.07503278723845387
#>     Attrib V52    0.10359593796139492
#>     Attrib V53    0.05904853395532817
#>     Attrib V54    -0.03184279047715632
#>     Attrib V55    0.03528883491375354
#>     Attrib V56    0.06396011131374459
#>     Attrib V57    0.08290271921053892
#>     Attrib V58    0.13686982356626584
#>     Attrib V59    0.01985400544626551
#>     Attrib V6    0.11211076662173096
#>     Attrib V60    0.048417471491231816
#>     Attrib V7    0.06598745574700451
#>     Attrib V8    0.10885163836919586
#>     Attrib V9    0.04396145016172244
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
