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
#>     Threshold    0.02354134481477727
#>     Node 2    1.808157868953777
#>     Node 3    1.2485775826639511
#>     Node 4    0.6456398433488203
#>     Node 5    -2.1306655145381335
#>     Node 6    1.0676289977325404
#>     Node 7    2.11335015206654
#>     Node 8    1.8054350655087492
#>     Node 9    3.172608085591687
#>     Node 10    -3.8361511073403953
#>     Node 11    1.6239018721401994
#>     Node 12    2.449347477627545
#>     Node 13    -0.3584544568848045
#>     Node 14    1.9154584553728082
#>     Node 15    -1.908263125895511
#>     Node 16    -0.23586971567445084
#>     Node 17    1.0061398516080509
#>     Node 18    -0.2908348393581815
#>     Node 19    1.7035190309498727
#>     Node 20    1.8186518998682712
#>     Node 21    -1.657661571299946
#>     Node 22    0.831883607852282
#>     Node 23    0.6783293138073913
#>     Node 24    -1.1940194135955153
#>     Node 25    3.3471690759405694
#>     Node 26    -1.2723625898628148
#>     Node 27    2.1470207803942465
#>     Node 28    -4.353949539947871
#>     Node 29    1.3621127194743454
#>     Node 30    -0.47620112243453366
#>     Node 31    0.9869831653943163
#>     Node 32    0.7629576280527077
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.00692020352140921
#>     Node 2    -1.8534969224520896
#>     Node 3    -1.2265842379921026
#>     Node 4    -0.6062031627107711
#>     Node 5    2.1462833890432926
#>     Node 6    -1.0417929941165842
#>     Node 7    -2.100424284735639
#>     Node 8    -1.8392302054225893
#>     Node 9    -3.1788184156851527
#>     Node 10    3.8154206452189996
#>     Node 11    -1.5831314799657632
#>     Node 12    -2.5151920523686067
#>     Node 13    0.3875402132750471
#>     Node 14    -1.8409723315030158
#>     Node 15    1.8972464714871387
#>     Node 16    0.19796317393159504
#>     Node 17    -0.9722590553346426
#>     Node 18    0.307501438836923
#>     Node 19    -1.687145758726568
#>     Node 20    -1.7989943423347343
#>     Node 21    1.7069156582128013
#>     Node 22    -0.8818774478639124
#>     Node 23    -0.7227196792249255
#>     Node 24    1.1647624798838854
#>     Node 25    -3.360877955835593
#>     Node 26    1.1773586256663509
#>     Node 27    -2.1819937651819803
#>     Node 28    4.35174080872103
#>     Node 29    -1.3886267942499317
#>     Node 30    0.5266526792596966
#>     Node 31    -0.9287088228692714
#>     Node 32    -0.780173737939139
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.538393104412589
#>     Attrib V1    0.10893095805647995
#>     Attrib V10    0.06303070303197789
#>     Attrib V11    0.4120881058294463
#>     Attrib V12    0.18652973400863446
#>     Attrib V13    -0.4711206613064511
#>     Attrib V14    -0.2736530188653108
#>     Attrib V15    -0.22632169372657587
#>     Attrib V16    -0.011072536283664062
#>     Attrib V17    0.15223642020083403
#>     Attrib V18    0.18498890100867896
#>     Attrib V19    0.20396166799178148
#>     Attrib V2    0.17745323871751872
#>     Attrib V20    0.8511874989761342
#>     Attrib V21    0.6555332440882731
#>     Attrib V22    0.4312633536639559
#>     Attrib V23    0.2923823040465337
#>     Attrib V24    -0.010009939257180845
#>     Attrib V25    -0.3052245310595661
#>     Attrib V26    -0.7316688735285048
#>     Attrib V27    -0.7336971691952691
#>     Attrib V28    -0.5415199535662064
#>     Attrib V29    -0.3828683250823538
#>     Attrib V3    0.06706129788429746
#>     Attrib V30    0.13336790891628403
#>     Attrib V31    -1.040118055072346
#>     Attrib V32    -0.3969214308080127
#>     Attrib V33    0.5144800311550057
#>     Attrib V34    0.21822722700550148
#>     Attrib V35    -0.10687684897552899
#>     Attrib V36    -0.6767105825706679
#>     Attrib V37    -0.6214016024437435
#>     Attrib V38    -0.2612049376788766
#>     Attrib V39    0.14747576090102552
#>     Attrib V4    0.36810476883592597
#>     Attrib V40    0.1078318312938677
#>     Attrib V41    0.04591132655264966
#>     Attrib V42    0.1659280833601436
#>     Attrib V43    0.39483203791161436
#>     Attrib V44    0.3681304053444143
#>     Attrib V45    0.24771777903294057
#>     Attrib V46    -0.218489520919797
#>     Attrib V47    -0.09730238670040096
#>     Attrib V48    0.3620142577389267
#>     Attrib V49    0.022208087258492673
#>     Attrib V5    -0.22023062073139146
#>     Attrib V50    -0.6170725503625459
#>     Attrib V51    0.06082702592573723
#>     Attrib V52    0.27877164876854127
#>     Attrib V53    0.23521107839100192
#>     Attrib V54    0.5291141220279496
#>     Attrib V55    0.02883419002134344
#>     Attrib V56    0.28398563792039405
#>     Attrib V57    0.16490694427234054
#>     Attrib V58    0.4525652495045359
#>     Attrib V59    0.7856101637033527
#>     Attrib V6    -0.4203288467514254
#>     Attrib V60    0.04608774323565393
#>     Attrib V7    -0.8331999351501438
#>     Attrib V8    0.4140510724754663
#>     Attrib V9    0.44169775736519185
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.34134161811369834
#>     Attrib V1    0.05580664000296344
#>     Attrib V10    0.05027823280347566
#>     Attrib V11    0.2955992869370265
#>     Attrib V12    0.18042186377626085
#>     Attrib V13    -0.3053158117124467
#>     Attrib V14    -0.20697843366390875
#>     Attrib V15    -0.1068486431344241
#>     Attrib V16    -0.03409201550092465
#>     Attrib V17    0.10271967117156593
#>     Attrib V18    0.10838887594075418
#>     Attrib V19    0.2011272804348028
#>     Attrib V2    0.1586274127450599
#>     Attrib V20    0.5798839931910509
#>     Attrib V21    0.3744526966546911
#>     Attrib V22    0.32968067906125753
#>     Attrib V23    0.26293165845184174
#>     Attrib V24    0.012536867827065703
#>     Attrib V25    -0.19543374586375678
#>     Attrib V26    -0.5357588017721259
#>     Attrib V27    -0.5094857372101306
#>     Attrib V28    -0.34187109497418344
#>     Attrib V29    -0.29971514300072744
#>     Attrib V3    0.014126182493171097
#>     Attrib V30    0.14334425250657637
#>     Attrib V31    -0.7031810647951465
#>     Attrib V32    -0.2565776540893159
#>     Attrib V33    0.38444445169739794
#>     Attrib V34    0.0713738140054665
#>     Attrib V35    -0.09403435604275787
#>     Attrib V36    -0.5303613425308705
#>     Attrib V37    -0.4493846815330083
#>     Attrib V38    -0.24001606028022693
#>     Attrib V39    0.10406989530275586
#>     Attrib V4    0.294392177348124
#>     Attrib V40    0.057243565352172184
#>     Attrib V41    0.042988658181596445
#>     Attrib V42    0.09869451632129182
#>     Attrib V43    0.2441872830886453
#>     Attrib V44    0.2707639267159945
#>     Attrib V45    0.19759346921614793
#>     Attrib V46    -0.1716103322336269
#>     Attrib V47    -0.0202044769320708
#>     Attrib V48    0.222011516148131
#>     Attrib V49    -0.015562438266150362
#>     Attrib V5    -0.15585474556561457
#>     Attrib V50    -0.48801618464167323
#>     Attrib V51    0.08139680654144482
#>     Attrib V52    0.27316570775778254
#>     Attrib V53    0.1762467882424913
#>     Attrib V54    0.4322212784272829
#>     Attrib V55    0.04223391218743657
#>     Attrib V56    0.20915838837646972
#>     Attrib V57    0.1631085887373049
#>     Attrib V58    0.39478409459170916
#>     Attrib V59    0.5638594212026332
#>     Attrib V6    -0.2890740126700487
#>     Attrib V60    0.025590063380794854
#>     Attrib V7    -0.6316375057681426
#>     Attrib V8    0.3084267767252017
#>     Attrib V9    0.2820800020633685
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.23424574584004293
#>     Attrib V1    -0.002799674904796295
#>     Attrib V10    -0.011223767568545874
#>     Attrib V11    0.17279743581371182
#>     Attrib V12    0.11592238056127083
#>     Attrib V13    -0.15674513725305414
#>     Attrib V14    -0.0732078427907162
#>     Attrib V15    -0.0407336899171537
#>     Attrib V16    -0.01914299088079751
#>     Attrib V17    0.08497903465887927
#>     Attrib V18    0.08008652526859668
#>     Attrib V19    0.09343800574549589
#>     Attrib V2    0.05864256531032621
#>     Attrib V20    0.30694438332327595
#>     Attrib V21    0.2377238407949463
#>     Attrib V22    0.1337279729076449
#>     Attrib V23    0.1609068087643923
#>     Attrib V24    -0.004438912418276578
#>     Attrib V25    -0.16739811934354687
#>     Attrib V26    -0.2914415722542603
#>     Attrib V27    -0.2659217637729637
#>     Attrib V28    -0.06525642149363227
#>     Attrib V29    -0.018064467390404702
#>     Attrib V3    0.011784617808158683
#>     Attrib V30    0.09297910334374476
#>     Attrib V31    -0.4157855193376687
#>     Attrib V32    -0.16810678615059346
#>     Attrib V33    0.19286592494515065
#>     Attrib V34    0.02753761574653878
#>     Attrib V35    -0.05396485074592749
#>     Attrib V36    -0.32447555274106965
#>     Attrib V37    -0.24434158851994872
#>     Attrib V38    -0.14145425743537862
#>     Attrib V39    0.057469012078487584
#>     Attrib V4    0.16293629982536892
#>     Attrib V40    0.012470441257552846
#>     Attrib V41    -0.004570172681731736
#>     Attrib V42    0.06180565465814178
#>     Attrib V43    0.11396140826319501
#>     Attrib V44    0.16417834980447346
#>     Attrib V45    0.19916957048530362
#>     Attrib V46    -0.09762578029038116
#>     Attrib V47    -0.021674907192819833
#>     Attrib V48    0.16911311185926778
#>     Attrib V49    0.04121695213114284
#>     Attrib V5    -0.02888265325524767
#>     Attrib V50    -0.2624971336081414
#>     Attrib V51    0.11476105155390964
#>     Attrib V52    0.1660608390025006
#>     Attrib V53    0.15872437091501695
#>     Attrib V54    0.1554501669109973
#>     Attrib V55    0.02145631053417429
#>     Attrib V56    0.1063617318854809
#>     Attrib V57    0.10560902109847804
#>     Attrib V58    0.18279218553923365
#>     Attrib V59    0.29442199745268577
#>     Attrib V6    -0.19397065060287827
#>     Attrib V60    -0.01469935146226659
#>     Attrib V7    -0.3765964395715372
#>     Attrib V8    0.09670596611653431
#>     Attrib V9    0.17523043669586938
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    0.05062323195931238
#>     Attrib V1    0.14049909284018788
#>     Attrib V10    -0.34534419348172185
#>     Attrib V11    -1.0388248461682694
#>     Attrib V12    -0.8962145823969252
#>     Attrib V13    0.3610339965423094
#>     Attrib V14    0.6492226525389265
#>     Attrib V15    0.6993066353307522
#>     Attrib V16    0.39441236335295493
#>     Attrib V17    0.09543661438057652
#>     Attrib V18    -0.0217299686603502
#>     Attrib V19    0.14808370487765504
#>     Attrib V2    -0.05791467042524572
#>     Attrib V20    -0.5128846508415167
#>     Attrib V21    -0.10121305788261047
#>     Attrib V22    -0.24142488301427728
#>     Attrib V23    -0.5370460144772243
#>     Attrib V24    -0.3258963323322605
#>     Attrib V25    0.19119523207638256
#>     Attrib V26    0.4089676845205847
#>     Attrib V27    0.09841557604598418
#>     Attrib V28    -0.40516918167441923
#>     Attrib V29    -0.33155831317019563
#>     Attrib V3    0.42263768801545865
#>     Attrib V30    -0.4946592541972729
#>     Attrib V31    1.2208162918531977
#>     Attrib V32    0.30089017288865877
#>     Attrib V33    -0.44900355184848917
#>     Attrib V34    0.06623741527225509
#>     Attrib V35    0.08177150660859515
#>     Attrib V36    0.702109827540739
#>     Attrib V37    0.2199211514302086
#>     Attrib V38    0.15597430875587204
#>     Attrib V39    -0.16229346102232917
#>     Attrib V4    -0.36013370560264
#>     Attrib V40    0.10785106624931233
#>     Attrib V41    -0.25761289060656417
#>     Attrib V42    0.07009983868368148
#>     Attrib V43    -0.19825163471381996
#>     Attrib V44    -0.4199803451653779
#>     Attrib V45    -0.77961550801101
#>     Attrib V46    -0.10542408245017942
#>     Attrib V47    -0.12085297730230461
#>     Attrib V48    -0.5819599843445239
#>     Attrib V49    -0.06872855515021768
#>     Attrib V5    0.2268019981094033
#>     Attrib V50    1.3072702814459742
#>     Attrib V51    -0.4759447310685257
#>     Attrib V52    -0.7427238556433228
#>     Attrib V53    -0.2694287708521404
#>     Attrib V54    -0.43330422904131477
#>     Attrib V55    0.34324819159820197
#>     Attrib V56    0.376052043980043
#>     Attrib V57    0.20595834982080727
#>     Attrib V58    -0.2818472217465035
#>     Attrib V59    -0.2583922669464539
#>     Attrib V6    0.2601497246926202
#>     Attrib V60    0.39001685163595584
#>     Attrib V7    1.0578446391517526
#>     Attrib V8    -0.42648018547850747
#>     Attrib V9    -0.7283537497319011
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.3068571845314362
#>     Attrib V1    0.09252474037167205
#>     Attrib V10    -0.03578135009100891
#>     Attrib V11    0.239750763065896
#>     Attrib V12    0.15905564835277722
#>     Attrib V13    -0.31856515512053096
#>     Attrib V14    -0.1727422486969356
#>     Attrib V15    -0.11265273217669207
#>     Attrib V16    0.07765099458962184
#>     Attrib V17    0.11917459877391633
#>     Attrib V18    0.1826187222194879
#>     Attrib V19    0.16002345762865822
#>     Attrib V2    0.14655747724287177
#>     Attrib V20    0.5305956617060855
#>     Attrib V21    0.403559249323947
#>     Attrib V22    0.2573530958597343
#>     Attrib V23    0.20847699689561336
#>     Attrib V24    0.04034630147990462
#>     Attrib V25    -0.14966010162380347
#>     Attrib V26    -0.45813575964972375
#>     Attrib V27    -0.43110515464374244
#>     Attrib V28    -0.3584607230579922
#>     Attrib V29    -0.24774189549227196
#>     Attrib V3    0.03533376888693054
#>     Attrib V30    0.06852365072826506
#>     Attrib V31    -0.6587714047155411
#>     Attrib V32    -0.24860694042612494
#>     Attrib V33    0.31882178554468843
#>     Attrib V34    0.07770797622350242
#>     Attrib V35    -0.042146902505328446
#>     Attrib V36    -0.4356722145842963
#>     Attrib V37    -0.3543949162961361
#>     Attrib V38    -0.18645593703321445
#>     Attrib V39    0.0609938432113054
#>     Attrib V4    0.3061030055857771
#>     Attrib V40    0.002979713683338739
#>     Attrib V41    0.055858950150898194
#>     Attrib V42    0.09855261398454723
#>     Attrib V43    0.2284189615349701
#>     Attrib V44    0.2226001440085026
#>     Attrib V45    0.18986787854877107
#>     Attrib V46    -0.11157089770278243
#>     Attrib V47    -0.055450727828507206
#>     Attrib V48    0.18028843154409413
#>     Attrib V49    0.005355157964975482
#>     Attrib V5    -0.1167910325164567
#>     Attrib V50    -0.3576513129120343
#>     Attrib V51    0.0615152307930003
#>     Attrib V52    0.1801392624842772
#>     Attrib V53    0.21852439575959418
#>     Attrib V54    0.33386055977370704
#>     Attrib V55    0.012927687288402984
#>     Attrib V56    0.21101708113250645
#>     Attrib V57    0.13254760756552014
#>     Attrib V58    0.33040383427453063
#>     Attrib V59    0.5254390595867408
#>     Attrib V6    -0.18713156282300458
#>     Attrib V60    0.07627032035084906
#>     Attrib V7    -0.5072942298875972
#>     Attrib V8    0.27081752712085155
#>     Attrib V9    0.30786886355732107
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    -0.19280046681290938
#>     Attrib V1    -0.07045676602215746
#>     Attrib V10    0.4907877231590106
#>     Attrib V11    1.1463378816835186
#>     Attrib V12    0.6494300095426466
#>     Attrib V13    -0.46076664843084797
#>     Attrib V14    -0.6769092852810211
#>     Attrib V15    -0.7568259920754997
#>     Attrib V16    -0.4223576932284989
#>     Attrib V17    -0.2204305990872608
#>     Attrib V18    -0.13986872417910892
#>     Attrib V19    -0.3659304391007871
#>     Attrib V2    0.08458881729991546
#>     Attrib V20    0.0198479484510093
#>     Attrib V21    -0.19107887141420674
#>     Attrib V22    0.032001927973663816
#>     Attrib V23    0.5856733174487574
#>     Attrib V24    0.32567172413084805
#>     Attrib V25    -0.00968288306068621
#>     Attrib V26    -0.01504743054222174
#>     Attrib V27    0.09645948781543714
#>     Attrib V28    0.5659229530910064
#>     Attrib V29    0.2878247508680326
#>     Attrib V3    -0.4044727115634366
#>     Attrib V30    0.39905952610462114
#>     Attrib V31    -0.840449677124924
#>     Attrib V32    0.1416646721940558
#>     Attrib V33    0.561400670497675
#>     Attrib V34    0.11845514510884281
#>     Attrib V35    0.21789568916554194
#>     Attrib V36    -0.5013283274868383
#>     Attrib V37    -0.4341163770144444
#>     Attrib V38    -0.3414603515481264
#>     Attrib V39    -0.11605424756489506
#>     Attrib V4    0.31343698652419016
#>     Attrib V40    -0.27502896063300636
#>     Attrib V41    0.014608824380122811
#>     Attrib V42    -0.2602442555930434
#>     Attrib V43    0.07004026959717084
#>     Attrib V44    0.4410900315388939
#>     Attrib V45    0.7827802694917709
#>     Attrib V46    0.23410119005447497
#>     Attrib V47    0.3562266075618505
#>     Attrib V48    0.7924672424636047
#>     Attrib V49    0.3768615332670546
#>     Attrib V5    -0.20461084938647708
#>     Attrib V50    -0.9295199082957055
#>     Attrib V51    0.6600725177132852
#>     Attrib V52    0.828324901165879
#>     Attrib V53    -0.40515270669656506
#>     Attrib V54    0.11669568662167397
#>     Attrib V55    0.0563696599639421
#>     Attrib V56    -0.49887333842450454
#>     Attrib V57    -0.10695090293762013
#>     Attrib V58    0.5981564664045725
#>     Attrib V59    0.08845537654734488
#>     Attrib V6    -0.532807440811353
#>     Attrib V60    -0.3941417495907328
#>     Attrib V7    -0.8652075018658262
#>     Attrib V8    0.26734386842075686
#>     Attrib V9    0.756686561558896
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.1652780621128488
#>     Attrib V1    -0.1558932031882136
#>     Attrib V10    0.26075244751816934
#>     Attrib V11    0.8698956595119547
#>     Attrib V12    0.6662220963693186
#>     Attrib V13    -0.33444366528857916
#>     Attrib V14    -0.5582128917981821
#>     Attrib V15    -0.5467844693478664
#>     Attrib V16    -0.24740889166309024
#>     Attrib V17    -0.02186893938458372
#>     Attrib V18    0.01142725271093157
#>     Attrib V19    -0.06071280196497726
#>     Attrib V2    0.08335665607205038
#>     Attrib V20    0.4340539028275574
#>     Attrib V21    0.2140404049275383
#>     Attrib V22    0.2755417513950752
#>     Attrib V23    0.48348156554841976
#>     Attrib V24    0.2402115300493335
#>     Attrib V25    -0.11063854384351567
#>     Attrib V26    -0.2998243427484452
#>     Attrib V27    -0.16004839878285534
#>     Attrib V28    0.2469275626833601
#>     Attrib V29    0.20049420111541752
#>     Attrib V3    -0.3445017412085675
#>     Attrib V30    0.38195706487803954
#>     Attrib V31    -1.1248959504578468
#>     Attrib V32    -0.27443242711581445
#>     Attrib V33    0.43945573539964866
#>     Attrib V34    -0.007629853767342776
#>     Attrib V35    -0.002962647158191746
#>     Attrib V36    -0.584727317086242
#>     Attrib V37    -0.3426641446844947
#>     Attrib V38    -0.16796491992790413
#>     Attrib V39    0.0995672198505939
#>     Attrib V4    0.3254112103736585
#>     Attrib V40    -0.09031416715967285
#>     Attrib V41    0.06861058742090544
#>     Attrib V42    -0.11625065259332486
#>     Attrib V43    0.25356559396186873
#>     Attrib V44    0.4627562732657607
#>     Attrib V45    0.6155097630440567
#>     Attrib V46    0.04391651394545309
#>     Attrib V47    0.1371369544704579
#>     Attrib V48    0.5926336945090999
#>     Attrib V49    0.13953548488922649
#>     Attrib V5    -0.2561436072729977
#>     Attrib V50    -1.0320351580073757
#>     Attrib V51    0.37815646530043606
#>     Attrib V52    0.5419157349942196
#>     Attrib V53    0.12634093633112126
#>     Attrib V54    0.3940654350547045
#>     Attrib V55    -0.1418646346431097
#>     Attrib V56    -0.20272067686537656
#>     Attrib V57    -0.10811608464375336
#>     Attrib V58    0.3072897513188803
#>     Attrib V59    0.3576302109479684
#>     Attrib V6    -0.4336516316356539
#>     Attrib V60    -0.2508012827178294
#>     Attrib V7    -1.0207593900680247
#>     Attrib V8    0.30550832002860384
#>     Attrib V9    0.5490246861575636
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    -0.35436887460097877
#>     Attrib V1    -0.08523711939910483
#>     Attrib V10    0.92948596346881
#>     Attrib V11    1.5208698889103123
#>     Attrib V12    1.2064302197642944
#>     Attrib V13    0.027932115273838286
#>     Attrib V14    -0.7062678088131676
#>     Attrib V15    -0.9983463408447883
#>     Attrib V16    -0.6054010233275497
#>     Attrib V17    -0.22396018513685878
#>     Attrib V18    0.08106741354236956
#>     Attrib V19    -0.29451002454127007
#>     Attrib V2    0.14330985963003776
#>     Attrib V20    -0.39973995599480405
#>     Attrib V21    -0.487988458314934
#>     Attrib V22    0.1001218788879617
#>     Attrib V23    1.0122218549401478
#>     Attrib V24    0.9122629252404705
#>     Attrib V25    0.7240233045293409
#>     Attrib V26    0.800765882537154
#>     Attrib V27    0.7240769352503199
#>     Attrib V28    1.0905981758982346
#>     Attrib V29    0.028582042771571742
#>     Attrib V3    -0.3923593101937754
#>     Attrib V30    0.09831569852139523
#>     Attrib V31    -0.6179644764774315
#>     Attrib V32    0.5231588461664395
#>     Attrib V33    0.4157433292966664
#>     Attrib V34    0.13709857840029166
#>     Attrib V35    0.5067270996346355
#>     Attrib V36    -0.3593015189522157
#>     Attrib V37    -0.5287106362508098
#>     Attrib V38    -0.3536414375059181
#>     Attrib V39    -0.08320033918334022
#>     Attrib V4    0.437343897021256
#>     Attrib V40    -0.21750071611407248
#>     Attrib V41    0.24826524755503385
#>     Attrib V42    -0.45118479483416657
#>     Attrib V43    0.04497613331901958
#>     Attrib V44    0.4199356637533468
#>     Attrib V45    0.6957786609312707
#>     Attrib V46    0.4272300012487382
#>     Attrib V47    0.6388710795273851
#>     Attrib V48    0.9267800721015397
#>     Attrib V49    0.7237215038848771
#>     Attrib V5    0.16026163623685266
#>     Attrib V50    -0.8347448418698868
#>     Attrib V51    1.1403363337154881
#>     Attrib V52    1.1853716334336168
#>     Attrib V53    -0.31146177425967775
#>     Attrib V54    0.17114418782526988
#>     Attrib V55    0.38100741190736875
#>     Attrib V56    -0.5987090512187287
#>     Attrib V57    -0.7411899862063057
#>     Attrib V58    0.6855453301362457
#>     Attrib V59    -0.34164669457786995
#>     Attrib V6    -0.33729859899556913
#>     Attrib V60    -0.2985206031028814
#>     Attrib V7    -0.7005330997824818
#>     Attrib V8    0.11321485737725243
#>     Attrib V9    0.8866025710507146
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.20074714346461375
#>     Attrib V1    -0.34618968056146676
#>     Attrib V10    -0.7717361070407167
#>     Attrib V11    -1.506049083319848
#>     Attrib V12    -1.247001188067159
#>     Attrib V13    -0.39737709816269334
#>     Attrib V14    0.34139463634612266
#>     Attrib V15    0.5275475713929162
#>     Attrib V16    0.4859466368982763
#>     Attrib V17    0.19289241147676733
#>     Attrib V18    -0.03672128661351973
#>     Attrib V19    0.3978264397072329
#>     Attrib V2    -0.4658081312469164
#>     Attrib V20    0.2342764314365841
#>     Attrib V21    0.1770019313459109
#>     Attrib V22    -0.33868740286605825
#>     Attrib V23    -1.1391092882354894
#>     Attrib V24    -0.7366164210212408
#>     Attrib V25    -0.1272284344827316
#>     Attrib V26    -0.45471216251753993
#>     Attrib V27    -1.155783118495776
#>     Attrib V28    -2.1909104323280895
#>     Attrib V29    -1.475271444517866
#>     Attrib V3    0.37284381472117356
#>     Attrib V30    -0.40306403485141357
#>     Attrib V31    0.8923273016518257
#>     Attrib V32    -0.24475877282558883
#>     Attrib V33    0.27704658244177477
#>     Attrib V34    0.6007170148500672
#>     Attrib V35    -0.1449058536829996
#>     Attrib V36    0.37829059644385893
#>     Attrib V37    -0.1142838545548543
#>     Attrib V38    -0.12903779734670667
#>     Attrib V39    -0.1730006280061967
#>     Attrib V4    -0.5021364294271249
#>     Attrib V40    0.14625185708827643
#>     Attrib V41    -0.6585205260838036
#>     Attrib V42    0.17075099560182655
#>     Attrib V43    -0.04164813303445197
#>     Attrib V44    -0.46049351551927026
#>     Attrib V45    -0.9735251952023006
#>     Attrib V46    -0.7563629231970096
#>     Attrib V47    -0.7520120904281117
#>     Attrib V48    -0.7252064708443863
#>     Attrib V49    -0.49332455934207947
#>     Attrib V5    -0.46798467640235986
#>     Attrib V50    0.7331222196408885
#>     Attrib V51    -1.3489582996484633
#>     Attrib V52    -1.2999632741771507
#>     Attrib V53    0.09084893033098175
#>     Attrib V54    -0.21144479417975603
#>     Attrib V55    -0.3031401480913438
#>     Attrib V56    0.7692505417288091
#>     Attrib V57    0.410797165161283
#>     Attrib V58    -0.5965865278346766
#>     Attrib V59    0.378516543333136
#>     Attrib V6    0.046642515356787526
#>     Attrib V60    0.23028166131464795
#>     Attrib V7    0.42531733636661423
#>     Attrib V8    0.07229624081570772
#>     Attrib V9    -0.6556091088989437
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.46171941693843804
#>     Attrib V1    -0.015216928158661982
#>     Attrib V10    0.09256271572044909
#>     Attrib V11    0.48342204690692564
#>     Attrib V12    0.31984912768595003
#>     Attrib V13    -0.4667903503440498
#>     Attrib V14    -0.369172971451503
#>     Attrib V15    -0.30578304346827584
#>     Attrib V16    -0.06979421225495867
#>     Attrib V17    0.15070876015903192
#>     Attrib V18    0.17575876701850168
#>     Attrib V19    0.17115189446334686
#>     Attrib V2    0.08177817975967108
#>     Attrib V20    0.7149774654123173
#>     Attrib V21    0.4604802420160566
#>     Attrib V22    0.3750777031731315
#>     Attrib V23    0.36127992962471156
#>     Attrib V24    0.09069107492492243
#>     Attrib V25    -0.1343038860402506
#>     Attrib V26    -0.5758814511796387
#>     Attrib V27    -0.6061614569686026
#>     Attrib V28    -0.46012344200947997
#>     Attrib V29    -0.4286073807497208
#>     Attrib V3    -0.08587349976725214
#>     Attrib V30    0.10462435896878056
#>     Attrib V31    -0.9374321617459989
#>     Attrib V32    -0.3280743944582303
#>     Attrib V33    0.4961273898050031
#>     Attrib V34    0.2371517864551729
#>     Attrib V35    -0.005562324846933392
#>     Attrib V36    -0.5866181693702225
#>     Attrib V37    -0.5819038671577628
#>     Attrib V38    -0.25512263687903824
#>     Attrib V39    0.07130752304482714
#>     Attrib V4    0.3196794375597585
#>     Attrib V40    0.03228778232366334
#>     Attrib V41    -0.025570759313395496
#>     Attrib V42    0.0645458794100446
#>     Attrib V43    0.32172669803029247
#>     Attrib V44    0.3680218014819276
#>     Attrib V45    0.33486727495623947
#>     Attrib V46    -0.16258754650097912
#>     Attrib V47    0.0029951458217166963
#>     Attrib V48    0.4026507350179294
#>     Attrib V49    0.07479113396821176
#>     Attrib V5    -0.20247576921392507
#>     Attrib V50    -0.5939560379977686
#>     Attrib V51    0.17352704572906028
#>     Attrib V52    0.3074497618575683
#>     Attrib V53    0.1875417461031196
#>     Attrib V54    0.4998752127241004
#>     Attrib V55    -0.005069116776160315
#>     Attrib V56    0.2115609231553826
#>     Attrib V57    0.08961849205745437
#>     Attrib V58    0.446267420709843
#>     Attrib V59    0.5698966414986933
#>     Attrib V6    -0.3492843502025943
#>     Attrib V60    -0.011377440855323809
#>     Attrib V7    -0.8315704081429592
#>     Attrib V8    0.35683309925624185
#>     Attrib V9    0.4562341873581814
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.596412067962964
#>     Attrib V1    -0.03656440447380072
#>     Attrib V10    0.17183503859734928
#>     Attrib V11    0.7503137406403002
#>     Attrib V12    0.34773569203375715
#>     Attrib V13    -0.6335911021514641
#>     Attrib V14    -0.5358827574214488
#>     Attrib V15    -0.4738292326305788
#>     Attrib V16    -0.12766359361503274
#>     Attrib V17    0.10133192196236854
#>     Attrib V18    0.12318883145586433
#>     Attrib V19    0.23441238617879173
#>     Attrib V2    0.17564594218557628
#>     Attrib V20    0.9229498984755203
#>     Attrib V21    0.6801283637197791
#>     Attrib V22    0.604846949145094
#>     Attrib V23    0.48875333331077336
#>     Attrib V24    0.08641670002211861
#>     Attrib V25    -0.22175810667602328
#>     Attrib V26    -0.7806057555814776
#>     Attrib V27    -0.8810946150014592
#>     Attrib V28    -0.8230236943430497
#>     Attrib V29    -0.703838812613335
#>     Attrib V3    -0.07723533853616342
#>     Attrib V30    0.06552032588316553
#>     Attrib V31    -1.3274633419921145
#>     Attrib V32    -0.4968395390885084
#>     Attrib V33    0.8053995391069568
#>     Attrib V34    0.44068592671632123
#>     Attrib V35    -0.029879148633430296
#>     Attrib V36    -0.9080323884105693
#>     Attrib V37    -0.9175543432869978
#>     Attrib V38    -0.4670993196009624
#>     Attrib V39    0.06781304423792096
#>     Attrib V4    0.4868402593023562
#>     Attrib V40    0.11643487092805503
#>     Attrib V41    -0.01308815480872351
#>     Attrib V42    0.0928994156860919
#>     Attrib V43    0.5155556452985149
#>     Attrib V44    0.43550116876624645
#>     Attrib V45    0.39714379652727066
#>     Attrib V46    -0.20001773819556037
#>     Attrib V47    -0.06025081830887056
#>     Attrib V48    0.611783320122519
#>     Attrib V49    0.09854172514402333
#>     Attrib V5    -0.3636699823570499
#>     Attrib V50    -0.8924142004456139
#>     Attrib V51    0.13523678057853275
#>     Attrib V52    0.43873493304416566
#>     Attrib V53    0.22863178184613334
#>     Attrib V54    0.6817524032899606
#>     Attrib V55    -0.059051824494934464
#>     Attrib V56    0.35096396394070806
#>     Attrib V57    0.16432348656566553
#>     Attrib V58    0.6557230250646033
#>     Attrib V59    0.9131114656494895
#>     Attrib V6    -0.5792317228134904
#>     Attrib V60    -0.021524440324074794
#>     Attrib V7    -1.1048988119060967
#>     Attrib V8    0.5706053788925864
#>     Attrib V9    0.7138359463826306
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.16613757433826457
#>     Attrib V1    0.04014651439896899
#>     Attrib V10    -0.05636057270559117
#>     Attrib V11    -0.11489289353887697
#>     Attrib V12    -0.0762012523970749
#>     Attrib V13    0.1013084549229848
#>     Attrib V14    0.0667475845011135
#>     Attrib V15    0.008253610418966405
#>     Attrib V16    -0.019788149495651962
#>     Attrib V17    0.018171846622796476
#>     Attrib V18    0.0320634124913576
#>     Attrib V19    0.003567337846355248
#>     Attrib V2    0.03018544744679134
#>     Attrib V20    -0.07223444950209924
#>     Attrib V21    -0.02787817526537632
#>     Attrib V22    -0.05394547133480735
#>     Attrib V23    0.011258279668145466
#>     Attrib V24    -0.0257270126806721
#>     Attrib V25    -0.022040219986469566
#>     Attrib V26    -0.14128695121349313
#>     Attrib V27    -0.09662183889890862
#>     Attrib V28    -0.14842756883608235
#>     Attrib V29    -0.07943885896361114
#>     Attrib V3    0.1339040082780093
#>     Attrib V30    -0.08237821537328391
#>     Attrib V31    0.08999397878841545
#>     Attrib V32    0.13207970354806026
#>     Attrib V33    0.07558754773129049
#>     Attrib V34    0.1328001083498746
#>     Attrib V35    0.07953563093500132
#>     Attrib V36    0.13887918934381552
#>     Attrib V37    0.14253662663203223
#>     Attrib V38    0.11483120470481933
#>     Attrib V39    0.13755003894071044
#>     Attrib V4    0.06360593020167671
#>     Attrib V40    0.1609108705059836
#>     Attrib V41    0.1354750157569511
#>     Attrib V42    0.14170566589442118
#>     Attrib V43    0.0541031375934548
#>     Attrib V44    0.05960838909801306
#>     Attrib V45    -0.043159371303043204
#>     Attrib V46    0.07826393048158953
#>     Attrib V47    0.09602189373641941
#>     Attrib V48    -0.008421294342386431
#>     Attrib V49    0.088533424663276
#>     Attrib V5    0.13685042638381403
#>     Attrib V50    0.1489980339605165
#>     Attrib V51    0.0313278708715676
#>     Attrib V52    -0.02154827432362895
#>     Attrib V53    -0.022344229502624244
#>     Attrib V54    -0.06290429174699784
#>     Attrib V55    0.034602148208946006
#>     Attrib V56    0.0778704053066489
#>     Attrib V57    0.05843212295799938
#>     Attrib V58    0.08041969846509028
#>     Attrib V59    0.08956381289912886
#>     Attrib V6    0.11206663612395522
#>     Attrib V60    0.11875611037503889
#>     Attrib V7    0.16987310259582308
#>     Attrib V8    -0.021605053645138032
#>     Attrib V9    -0.026118210749141342
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.37724458571751945
#>     Attrib V1    0.04307987008622666
#>     Attrib V10    0.21428704950178035
#>     Attrib V11    0.7184028838290881
#>     Attrib V12    0.4383057125974348
#>     Attrib V13    -0.5148230406953078
#>     Attrib V14    -0.5226185240997541
#>     Attrib V15    -0.36784319726358283
#>     Attrib V16    -0.18652447143006867
#>     Attrib V17    0.06306073243733155
#>     Attrib V18    0.12692724670854044
#>     Attrib V19    0.12392451694868784
#>     Attrib V2    0.13366525572150093
#>     Attrib V20    0.6979712322293481
#>     Attrib V21    0.44101719678749807
#>     Attrib V22    0.39472211878840036
#>     Attrib V23    0.46665589024851856
#>     Attrib V24    0.12436233981001164
#>     Attrib V25    -0.1779290519601591
#>     Attrib V26    -0.6083940230186193
#>     Attrib V27    -0.6650819152072915
#>     Attrib V28    -0.48422333425499503
#>     Attrib V29    -0.4618300348102567
#>     Attrib V3    -0.2041437058235626
#>     Attrib V30    0.1433658472877222
#>     Attrib V31    -1.0320589283680708
#>     Attrib V32    -0.3019887431164549
#>     Attrib V33    0.6123856695045841
#>     Attrib V34    0.18178879912326887
#>     Attrib V35    -0.08514815460167817
#>     Attrib V36    -0.8448566853754275
#>     Attrib V37    -0.6837688208862915
#>     Attrib V38    -0.39867875668151986
#>     Attrib V39    0.09642791766138735
#>     Attrib V4    0.356435305550677
#>     Attrib V40    0.014875117944913144
#>     Attrib V41    0.01134918012283698
#>     Attrib V42    0.026467234696431332
#>     Attrib V43    0.29910813272097875
#>     Attrib V44    0.41854517672560704
#>     Attrib V45    0.33623887544741193
#>     Attrib V46    -0.1712779258048912
#>     Attrib V47    0.008293900682972016
#>     Attrib V48    0.5849835916520859
#>     Attrib V49    0.16941689144945885
#>     Attrib V5    -0.30419938371997923
#>     Attrib V50    -0.8331093825159128
#>     Attrib V51    0.2727314135463997
#>     Attrib V52    0.45449133297599104
#>     Attrib V53    0.14149756441933203
#>     Attrib V54    0.5426561277458901
#>     Attrib V55    -0.040542323969168896
#>     Attrib V56    0.19851131146245052
#>     Attrib V57    0.09146703816920745
#>     Attrib V58    0.5366314801605364
#>     Attrib V59    0.6751012469890953
#>     Attrib V6    -0.4452206365112254
#>     Attrib V60    -0.014896214476427274
#>     Attrib V7    -0.955996284004726
#>     Attrib V8    0.37099825319241386
#>     Attrib V9    0.5432088552010422
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.04855035710749491
#>     Attrib V1    0.10524971377060187
#>     Attrib V10    -0.24809020549492553
#>     Attrib V11    -0.9032236531835441
#>     Attrib V12    -0.6714364778007044
#>     Attrib V13    0.3507040278336666
#>     Attrib V14    0.6566779593144255
#>     Attrib V15    0.7300021682728595
#>     Attrib V16    0.4621236061039118
#>     Attrib V17    0.1115598037692592
#>     Attrib V18    0.007795373449977935
#>     Attrib V19    0.28073735247768034
#>     Attrib V2    -0.08422795027239838
#>     Attrib V20    -0.3607123386225618
#>     Attrib V21    -0.17474789746030855
#>     Attrib V22    -0.21305194633649965
#>     Attrib V23    -0.5567858450290953
#>     Attrib V24    -0.2949005475268055
#>     Attrib V25    0.1726780786066683
#>     Attrib V26    0.4996650794676698
#>     Attrib V27    0.10056791044811027
#>     Attrib V28    -0.25124121299012303
#>     Attrib V29    -0.29479294351419155
#>     Attrib V3    0.391105608306154
#>     Attrib V30    -0.5216042637581279
#>     Attrib V31    1.0004944245330567
#>     Attrib V32    0.21105367830751715
#>     Attrib V33    -0.504504956594212
#>     Attrib V34    0.01687065376455482
#>     Attrib V35    0.03281785151006188
#>     Attrib V36    0.5590580532488489
#>     Attrib V37    0.10268434405728406
#>     Attrib V38    0.028125010666441488
#>     Attrib V39    -0.2000114358620862
#>     Attrib V4    -0.22808028255163942
#>     Attrib V40    -0.03136196933953557
#>     Attrib V41    -0.3861570661489597
#>     Attrib V42    -0.17703144602759843
#>     Attrib V43    -0.3497025178444867
#>     Attrib V44    -0.5008781800613388
#>     Attrib V45    -0.6870918214137768
#>     Attrib V46    -0.06866077335124018
#>     Attrib V47    -0.07862823367604113
#>     Attrib V48    -0.45167483808594655
#>     Attrib V49    0.044846928240094806
#>     Attrib V5    0.2194901471480446
#>     Attrib V50    1.2312704202999534
#>     Attrib V51    -0.3161354252543149
#>     Attrib V52    -0.582808912849318
#>     Attrib V53    -0.16887999494896583
#>     Attrib V54    -0.3389076203425657
#>     Attrib V55    0.38064133213665113
#>     Attrib V56    0.35196828609418734
#>     Attrib V57    0.23721524027938662
#>     Attrib V58    -0.16105320767110456
#>     Attrib V59    -0.2624694510363647
#>     Attrib V6    0.1680549999911271
#>     Attrib V60    0.3429617004577653
#>     Attrib V7    0.8652179313643473
#>     Attrib V8    -0.36165482606378013
#>     Attrib V9    -0.5787199366694106
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1596042738878848
#>     Attrib V1    0.04663100000329302
#>     Attrib V10    0.008385695679121011
#>     Attrib V11    -0.04168397470240763
#>     Attrib V12    -0.015948051437961228
#>     Attrib V13    0.055790573950871516
#>     Attrib V14    0.020494674301810043
#>     Attrib V15    0.009591582309078509
#>     Attrib V16    0.07324678581084333
#>     Attrib V17    0.0770466370067138
#>     Attrib V18    0.08221946339407711
#>     Attrib V19    0.031037683597991347
#>     Attrib V2    0.015996091468529604
#>     Attrib V20    -0.098436038293367
#>     Attrib V21    -0.06467167149964582
#>     Attrib V22    -0.03798330409851559
#>     Attrib V23    -0.06049076550317535
#>     Attrib V24    -0.017824793569011607
#>     Attrib V25    -0.029340007588881625
#>     Attrib V26    -0.10786991148955925
#>     Attrib V27    -0.11742316646184688
#>     Attrib V28    -0.07020400469296897
#>     Attrib V29    -0.07264109327062125
#>     Attrib V3    0.0943582905246456
#>     Attrib V30    -0.089148185974825
#>     Attrib V31    0.007250661741417452
#>     Attrib V32    0.07805175898015713
#>     Attrib V33    0.04401704591295932
#>     Attrib V34    0.0807501313540945
#>     Attrib V35    0.050265656300235585
#>     Attrib V36    0.07078540815467257
#>     Attrib V37    0.09582152504630856
#>     Attrib V38    0.08379874528778304
#>     Attrib V39    0.07616551767491941
#>     Attrib V4    0.09144990690827327
#>     Attrib V40    0.06167559234276686
#>     Attrib V41    0.09934386518858374
#>     Attrib V42    0.12064691059473069
#>     Attrib V43    0.05751678055537341
#>     Attrib V44    0.03955430127590597
#>     Attrib V45    0.04363916673450415
#>     Attrib V46    0.06628010673104867
#>     Attrib V47    0.07112282042270762
#>     Attrib V48    0.03779348968059904
#>     Attrib V49    0.040180897313763
#>     Attrib V5    0.09436552602789666
#>     Attrib V50    0.14402282428622312
#>     Attrib V51    0.1077687189062877
#>     Attrib V52    0.06263739547639499
#>     Attrib V53    0.04823886650936425
#>     Attrib V54    -0.019199105759285018
#>     Attrib V55    0.06958393222520368
#>     Attrib V56    0.08977723210992214
#>     Attrib V57    0.09759552611507273
#>     Attrib V58    0.13945386223664344
#>     Attrib V59    0.04887804615102125
#>     Attrib V6    0.053389645102998734
#>     Attrib V60    0.08115052709372389
#>     Attrib V7    0.0455402917987218
#>     Attrib V8    -0.008516030778772447
#>     Attrib V9    0.0502672429022592
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.2894340835087733
#>     Attrib V1    0.06421808550765411
#>     Attrib V10    0.047022367570833924
#>     Attrib V11    0.28772880947867113
#>     Attrib V12    0.12422002940844111
#>     Attrib V13    -0.31452729417129005
#>     Attrib V14    -0.20836529417738905
#>     Attrib V15    -0.07700452967522194
#>     Attrib V16    0.010514533745799162
#>     Attrib V17    0.11912694827557278
#>     Attrib V18    0.13303932352579595
#>     Attrib V19    0.17748983737363389
#>     Attrib V2    0.1714571758407943
#>     Attrib V20    0.455181084411137
#>     Attrib V21    0.31136832632788547
#>     Attrib V22    0.3093025139879866
#>     Attrib V23    0.2077672532415069
#>     Attrib V24    0.05037988619945138
#>     Attrib V25    -0.19152160073237784
#>     Attrib V26    -0.4338726553224864
#>     Attrib V27    -0.40117914980978786
#>     Attrib V28    -0.2972376905681551
#>     Attrib V29    -0.25155800047718235
#>     Attrib V3    -0.02020048239676268
#>     Attrib V30    0.09514233178532265
#>     Attrib V31    -0.5707367537675209
#>     Attrib V32    -0.2651644347479738
#>     Attrib V33    0.3327795543707615
#>     Attrib V34    0.04671955567760552
#>     Attrib V35    -0.024236441001575924
#>     Attrib V36    -0.42716898041741913
#>     Attrib V37    -0.3692936644151041
#>     Attrib V38    -0.12268991643681425
#>     Attrib V39    0.08457366288529725
#>     Attrib V4    0.25533164053530655
#>     Attrib V40    -0.018032423668646852
#>     Attrib V41    0.03235119380829596
#>     Attrib V42    0.03246174036299582
#>     Attrib V43    0.25719842400568627
#>     Attrib V44    0.2523310936531262
#>     Attrib V45    0.2197812730507868
#>     Attrib V46    -0.14067940927667275
#>     Attrib V47    -0.06917402208696558
#>     Attrib V48    0.2609661335198767
#>     Attrib V49    0.005755879980089034
#>     Attrib V5    -0.12201259787589801
#>     Attrib V50    -0.37897032900846833
#>     Attrib V51    0.08205327795740888
#>     Attrib V52    0.18974410645453466
#>     Attrib V53    0.15543455490476435
#>     Attrib V54    0.3096845867787377
#>     Attrib V55    0.05631485023605986
#>     Attrib V56    0.17485783129093654
#>     Attrib V57    0.1326371158792146
#>     Attrib V58    0.24681175525896865
#>     Attrib V59    0.39652817297289883
#>     Attrib V6    -0.22152961809457153
#>     Attrib V60    0.03626355269225078
#>     Attrib V7    -0.555265084869571
#>     Attrib V8    0.2379624523338718
#>     Attrib V9    0.2661283840901369
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.17733611100498053
#>     Attrib V1    0.048518609997613205
#>     Attrib V10    -0.016026415061941097
#>     Attrib V11    -0.09145856947618031
#>     Attrib V12    -0.07354765008598046
#>     Attrib V13    0.02730102808507803
#>     Attrib V14    0.05755601651603479
#>     Attrib V15    0.0032046691652792155
#>     Attrib V16    0.021105872781425002
#>     Attrib V17    -0.018907961777608392
#>     Attrib V18    0.07507732923167705
#>     Attrib V19    -0.027013411451409675
#>     Attrib V2    0.06296437740705363
#>     Attrib V20    -0.07457529648946243
#>     Attrib V21    -0.013536389490116681
#>     Attrib V22    -0.033288296895853796
#>     Attrib V23    -0.027039349563576866
#>     Attrib V24    -0.06784683286609061
#>     Attrib V25    -0.0397044862347199
#>     Attrib V26    -0.07210521906185043
#>     Attrib V27    -0.10111265661284138
#>     Attrib V28    -0.11446291013018399
#>     Attrib V29    -0.0984801038006948
#>     Attrib V3    0.1350978371839048
#>     Attrib V30    -0.12392498213144693
#>     Attrib V31    0.07353355044183318
#>     Attrib V32    0.08274562227284825
#>     Attrib V33    0.057438500062295395
#>     Attrib V34    0.09410248316714297
#>     Attrib V35    0.055056184558822115
#>     Attrib V36    0.1865045200880156
#>     Attrib V37    0.09288415984455518
#>     Attrib V38    0.08183091343105342
#>     Attrib V39    0.1148877689712448
#>     Attrib V4    0.03439215660837421
#>     Attrib V40    0.09880345690286883
#>     Attrib V41    0.06811993462774624
#>     Attrib V42    0.10681347865129356
#>     Attrib V43    0.0777494790032201
#>     Attrib V44    0.10114795929031445
#>     Attrib V45    -0.04549022257914187
#>     Attrib V46    0.0303066092740653
#>     Attrib V47    0.10236272889343943
#>     Attrib V48    0.029977076753687795
#>     Attrib V49    0.09189662026471719
#>     Attrib V5    0.10915149425831214
#>     Attrib V50    0.11625655344623098
#>     Attrib V51    0.10330334884154391
#>     Attrib V52    0.004234649664241187
#>     Attrib V53    0.003324462361823029
#>     Attrib V54    -0.04984988089688737
#>     Attrib V55    0.07541942118185342
#>     Attrib V56    0.1081925700337784
#>     Attrib V57    0.015245047754647639
#>     Attrib V58    0.09532890122863878
#>     Attrib V59    0.08713849012641278
#>     Attrib V6    0.040579588059623715
#>     Attrib V60    0.11824221162157093
#>     Attrib V7    0.12571009172128508
#>     Attrib V8    0.046849469613210626
#>     Attrib V9    -0.0011318002501821862
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    -0.4243606860529398
#>     Attrib V1    0.015412162223860373
#>     Attrib V10    0.08274686130472657
#>     Attrib V11    0.47556616633912985
#>     Attrib V12    0.3314458883572017
#>     Attrib V13    -0.45568904655079845
#>     Attrib V14    -0.36955891691785037
#>     Attrib V15    -0.2647617734623543
#>     Attrib V16    -0.1110765718415601
#>     Attrib V17    0.10042937654580832
#>     Attrib V18    0.1383499038012304
#>     Attrib V19    0.19520630911717132
#>     Attrib V2    0.15993876534592463
#>     Attrib V20    0.6890691388271624
#>     Attrib V21    0.48789177145369783
#>     Attrib V22    0.45187425819826144
#>     Attrib V23    0.3673101644658175
#>     Attrib V24    0.11003490576398847
#>     Attrib V25    -0.1407196121627438
#>     Attrib V26    -0.5972813533034899
#>     Attrib V27    -0.6543867106285228
#>     Attrib V28    -0.513114821055746
#>     Attrib V29    -0.4410088504118168
#>     Attrib V3    -0.08370830532258114
#>     Attrib V30    0.08180473115386483
#>     Attrib V31    -0.9563890389066084
#>     Attrib V32    -0.3604629667199632
#>     Attrib V33    0.5857747241701735
#>     Attrib V34    0.2399098895369401
#>     Attrib V35    -0.0040584131525016704
#>     Attrib V36    -0.6468211951459495
#>     Attrib V37    -0.6420670857657479
#>     Attrib V38    -0.3355610904893404
#>     Attrib V39    0.07205424935803795
#>     Attrib V4    0.38576921169583134
#>     Attrib V40    0.06951439130750355
#>     Attrib V41    -0.009252117874459922
#>     Attrib V42    0.0942926236065677
#>     Attrib V43    0.3065498954524902
#>     Attrib V44    0.30901552123292847
#>     Attrib V45    0.3509884732572649
#>     Attrib V46    -0.14800755611714064
#>     Attrib V47    -0.06747227005702237
#>     Attrib V48    0.4116156552953048
#>     Attrib V49    0.1362148234983706
#>     Attrib V5    -0.24864585399788247
#>     Attrib V50    -0.6986288869718549
#>     Attrib V51    0.12718858614568218
#>     Attrib V52    0.37860021883866535
#>     Attrib V53    0.21111574390368834
#>     Attrib V54    0.5406591442833926
#>     Attrib V55    0.0054397353864989294
#>     Attrib V56    0.18693145238154943
#>     Attrib V57    0.08483613066713697
#>     Attrib V58    0.5196479288326455
#>     Attrib V59    0.6508296956635472
#>     Attrib V6    -0.3891782438429364
#>     Attrib V60    0.021461444005599673
#>     Attrib V7    -0.7879607976098112
#>     Attrib V8    0.34248097669669253
#>     Attrib V9    0.4531290195524437
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.5051433753079568
#>     Attrib V1    0.07686311360354182
#>     Attrib V10    0.09098203968827931
#>     Attrib V11    0.47332564217804074
#>     Attrib V12    0.29069919933714916
#>     Attrib V13    -0.4873945591172025
#>     Attrib V14    -0.34997813507423553
#>     Attrib V15    -0.29532628683816625
#>     Attrib V16    -0.08749275948686402
#>     Attrib V17    0.12019884728349846
#>     Attrib V18    0.16676073004579617
#>     Attrib V19    0.21308640864843179
#>     Attrib V2    0.15562922865694573
#>     Attrib V20    0.7884792628192131
#>     Attrib V21    0.6295206169805522
#>     Attrib V22    0.5058353932647772
#>     Attrib V23    0.40000379892942295
#>     Attrib V24    0.06733464943553451
#>     Attrib V25    -0.21105313003895168
#>     Attrib V26    -0.6006192524922306
#>     Attrib V27    -0.66448785995963
#>     Attrib V28    -0.6222062610930541
#>     Attrib V29    -0.43687507951492305
#>     Attrib V3    -0.04637031302934607
#>     Attrib V30    0.11305779850004904
#>     Attrib V31    -1.0052083006887216
#>     Attrib V32    -0.42861253452973075
#>     Attrib V33    0.5578817660130657
#>     Attrib V34    0.23680113275313708
#>     Attrib V35    -0.033713867100586284
#>     Attrib V36    -0.5923784460778111
#>     Attrib V37    -0.5845831048998732
#>     Attrib V38    -0.298089496200139
#>     Attrib V39    0.0686924577102577
#>     Attrib V4    0.35786645086677665
#>     Attrib V40    0.06115152537916761
#>     Attrib V41    0.006854836070009004
#>     Attrib V42    0.04675391734093072
#>     Attrib V43    0.4111626365126984
#>     Attrib V44    0.41465509849822413
#>     Attrib V45    0.3067603006365947
#>     Attrib V46    -0.1944658935725907
#>     Attrib V47    -0.10097694015761118
#>     Attrib V48    0.4100671287086433
#>     Attrib V49    0.07102630436622576
#>     Attrib V5    -0.2402463789985793
#>     Attrib V50    -0.6505113947343462
#>     Attrib V51    0.13015940288685512
#>     Attrib V52    0.33947412395044774
#>     Attrib V53    0.18171466641482878
#>     Attrib V54    0.5557048924930019
#>     Attrib V55    0.03922187712860527
#>     Attrib V56    0.26278932915771813
#>     Attrib V57    0.08803140747814919
#>     Attrib V58    0.5080369220964968
#>     Attrib V59    0.7355699968192563
#>     Attrib V6    -0.41148778612550224
#>     Attrib V60    0.011568688288679489
#>     Attrib V7    -0.8266968789264624
#>     Attrib V8    0.3267975065940949
#>     Attrib V9    0.49162851813716263
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.05630042332533774
#>     Attrib V1    0.11791428037337291
#>     Attrib V10    -0.26547936051630555
#>     Attrib V11    -0.8323041971573901
#>     Attrib V12    -0.6539473476488779
#>     Attrib V13    0.288781196579903
#>     Attrib V14    0.4916725882682452
#>     Attrib V15    0.5140220797398104
#>     Attrib V16    0.3399006038382868
#>     Attrib V17    0.11828081238368793
#>     Attrib V18    0.09579654938409035
#>     Attrib V19    0.13521075913804023
#>     Attrib V2    -0.09464710369846922
#>     Attrib V20    -0.39209432165383384
#>     Attrib V21    -0.056341234686893116
#>     Attrib V22    -0.16485461045491612
#>     Attrib V23    -0.4358624686510342
#>     Attrib V24    -0.24807673261151886
#>     Attrib V25    0.14811413026777437
#>     Attrib V26    0.35515731819864665
#>     Attrib V27    0.044186637515191814
#>     Attrib V28    -0.3157863475123821
#>     Attrib V29    -0.23475008459169966
#>     Attrib V3    0.2829508915695797
#>     Attrib V30    -0.33216156728949275
#>     Attrib V31    1.060414285502862
#>     Attrib V32    0.2746342002142018
#>     Attrib V33    -0.313138797838696
#>     Attrib V34    0.0820139911738743
#>     Attrib V35    0.06178395260008663
#>     Attrib V36    0.5666206597330763
#>     Attrib V37    0.22048081007531725
#>     Attrib V38    0.07193724703657291
#>     Attrib V39    -0.13206905614058834
#>     Attrib V4    -0.18246113370319467
#>     Attrib V40    0.1381760073361707
#>     Attrib V41    -0.11766507960957825
#>     Attrib V42    -0.05789265661159628
#>     Attrib V43    -0.18897203897433693
#>     Attrib V44    -0.3291763813238107
#>     Attrib V45    -0.6051466831286713
#>     Attrib V46    -0.09651184063962606
#>     Attrib V47    -0.10846747185575971
#>     Attrib V48    -0.41083103868313503
#>     Attrib V49    -0.027310355849368907
#>     Attrib V5    0.20561096121311997
#>     Attrib V50    1.0101669579866188
#>     Attrib V51    -0.3344188126090329
#>     Attrib V52    -0.5243696377620287
#>     Attrib V53    -0.25693693738333073
#>     Attrib V54    -0.36821451067185507
#>     Attrib V55    0.1712500165477904
#>     Attrib V56    0.22857158879639697
#>     Attrib V57    0.24163920929140317
#>     Attrib V58    -0.17772331964207957
#>     Attrib V59    -0.2074884201003442
#>     Attrib V6    0.2271701964518711
#>     Attrib V60    0.3049272445135412
#>     Attrib V7    0.87768156018842
#>     Attrib V8    -0.3248767473236649
#>     Attrib V9    -0.47536426784231395
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.27448389495280856
#>     Attrib V1    0.1263520527603083
#>     Attrib V10    -0.008111762921755512
#>     Attrib V11    0.19890909865933876
#>     Attrib V12    0.0947039319466847
#>     Attrib V13    -0.26105936286629755
#>     Attrib V14    -0.10934127107963672
#>     Attrib V15    -0.10242888858350985
#>     Attrib V16    0.0800245218506495
#>     Attrib V17    0.13173159171544555
#>     Attrib V18    0.128159850538382
#>     Attrib V19    0.1266412203322862
#>     Attrib V2    0.15154224611796108
#>     Attrib V20    0.4477918546273031
#>     Attrib V21    0.29118123697088155
#>     Attrib V22    0.17739565591716996
#>     Attrib V23    0.11915128303320033
#>     Attrib V24    0.022196390527134888
#>     Attrib V25    -0.21882215990581153
#>     Attrib V26    -0.4570236428667431
#>     Attrib V27    -0.40698094794270595
#>     Attrib V28    -0.32226061064749967
#>     Attrib V29    -0.13796444780061182
#>     Attrib V3    0.005633521683391463
#>     Attrib V30    0.05874310130140121
#>     Attrib V31    -0.5016720539507067
#>     Attrib V32    -0.2579659249271336
#>     Attrib V33    0.18957744138362848
#>     Attrib V34    0.03497247352237257
#>     Attrib V35    -0.07901321750540632
#>     Attrib V36    -0.36413699818355905
#>     Attrib V37    -0.2839293774083871
#>     Attrib V38    -0.1589775116441373
#>     Attrib V39    0.028795644686209657
#>     Attrib V4    0.2562434359098056
#>     Attrib V40    0.019491618503377526
#>     Attrib V41    -0.038958252987353274
#>     Attrib V42    0.03633761413952004
#>     Attrib V43    0.23476506503106176
#>     Attrib V44    0.18416836235470055
#>     Attrib V45    0.11283617247934594
#>     Attrib V46    -0.07824105121761801
#>     Attrib V47    -0.0735758139596438
#>     Attrib V48    0.19582231666772823
#>     Attrib V49    0.00849036125202099
#>     Attrib V5    -0.06070956231393678
#>     Attrib V50    -0.31923499654569
#>     Attrib V51    0.044581840026254795
#>     Attrib V52    0.19525751160697866
#>     Attrib V53    0.1872236420725517
#>     Attrib V54    0.32489963977974085
#>     Attrib V55    0.06036499194772781
#>     Attrib V56    0.207401001501519
#>     Attrib V57    0.1760425078784257
#>     Attrib V58    0.31508420352522193
#>     Attrib V59    0.43888464016977835
#>     Attrib V6    -0.1524471533602388
#>     Attrib V60    0.10452046709372668
#>     Attrib V7    -0.4148220779091754
#>     Attrib V8    0.12424871977690795
#>     Attrib V9    0.2102310482337281
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.2188643613427826
#>     Attrib V1    0.02650861544072066
#>     Attrib V10    -0.04438375641502456
#>     Attrib V11    0.22687613396037926
#>     Attrib V12    0.17093049571870758
#>     Attrib V13    -0.1823910276840901
#>     Attrib V14    -0.13343101493079665
#>     Attrib V15    -0.13847858839716487
#>     Attrib V16    -0.04553497200688643
#>     Attrib V17    0.1434937423523067
#>     Attrib V18    0.13010288199860426
#>     Attrib V19    0.12908172966009035
#>     Attrib V2    0.04444566832140382
#>     Attrib V20    0.3202641721868452
#>     Attrib V21    0.2127698531168434
#>     Attrib V22    0.2048725498939911
#>     Attrib V23    0.2110759076440092
#>     Attrib V24    0.019751284265782335
#>     Attrib V25    -0.07934674857583007
#>     Attrib V26    -0.21195215750524243
#>     Attrib V27    -0.2867734685796584
#>     Attrib V28    -0.2364701027511704
#>     Attrib V29    -0.1885257626267696
#>     Attrib V3    0.009801578991985865
#>     Attrib V30    0.026429096882419963
#>     Attrib V31    -0.48825547017288384
#>     Attrib V32    -0.2060030499427925
#>     Attrib V33    0.1814776345643253
#>     Attrib V34    0.030918547128251473
#>     Attrib V35    0.051617490512155584
#>     Attrib V36    -0.21224863490808105
#>     Attrib V37    -0.14533979391368315
#>     Attrib V38    -0.12970239452174764
#>     Attrib V39    0.02354270791072405
#>     Attrib V4    0.23446498956104295
#>     Attrib V40    -0.03863888733186463
#>     Attrib V41    -0.020354386649636014
#>     Attrib V42    -0.017781811605206595
#>     Attrib V43    0.1915115624715522
#>     Attrib V44    0.17206214992890304
#>     Attrib V45    0.16895234169686532
#>     Attrib V46    -0.07107343946612875
#>     Attrib V47    0.01972768672354695
#>     Attrib V48    0.11449041235971354
#>     Attrib V49    0.012600912769975712
#>     Attrib V5    -0.07542090875545483
#>     Attrib V50    -0.3236558750883434
#>     Attrib V51    0.023564207524644498
#>     Attrib V52    0.21499990535731645
#>     Attrib V53    0.15394538708746663
#>     Attrib V54    0.23098758906156996
#>     Attrib V55    0.03316501909073011
#>     Attrib V56    0.13670302713683416
#>     Attrib V57    0.008918926934368316
#>     Attrib V58    0.2050191784380509
#>     Attrib V59    0.3499064236105871
#>     Attrib V6    -0.16338431022365385
#>     Attrib V60    0.005646512747190012
#>     Attrib V7    -0.39745497678716607
#>     Attrib V8    0.10451091834821932
#>     Attrib V9    0.17674543081144803
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    0.02569896600293206
#>     Attrib V1    0.030021012195861497
#>     Attrib V10    -0.21606997521315896
#>     Attrib V11    -0.5714927684044707
#>     Attrib V12    -0.42872537321189297
#>     Attrib V13    0.20800195829860954
#>     Attrib V14    0.3205176375041234
#>     Attrib V15    0.3516011781452561
#>     Attrib V16    0.2485907517685753
#>     Attrib V17    0.21995153537515363
#>     Attrib V18    0.1941695133592679
#>     Attrib V19    0.1273790328136638
#>     Attrib V2    -0.08626668887486467
#>     Attrib V20    -0.3238876828704729
#>     Attrib V21    -0.0871646242995604
#>     Attrib V22    -0.06404363184467804
#>     Attrib V23    -0.19734302282706806
#>     Attrib V24    -0.20185821609490293
#>     Attrib V25    0.07618637801367963
#>     Attrib V26    0.18198000956543586
#>     Attrib V27    -0.10539209934136182
#>     Attrib V28    -0.23539041636523494
#>     Attrib V29    -0.17197999192597369
#>     Attrib V3    0.1451970748485213
#>     Attrib V30    -0.21903672393616008
#>     Attrib V31    0.7245922809606318
#>     Attrib V32    0.3416912905056807
#>     Attrib V33    -0.14118242728551336
#>     Attrib V34    0.0828650123703824
#>     Attrib V35    0.0914988953848573
#>     Attrib V36    0.5150753979234872
#>     Attrib V37    0.18967539666271646
#>     Attrib V38    0.07766219830892741
#>     Attrib V39    -0.09113953840655929
#>     Attrib V4    -0.11487820714510852
#>     Attrib V40    0.18658894094404446
#>     Attrib V41    0.05530192333819316
#>     Attrib V42    0.04484626252990805
#>     Attrib V43    -0.04184323650283852
#>     Attrib V44    -0.21573424672799454
#>     Attrib V45    -0.43462069502269657
#>     Attrib V46    -0.04201661621965606
#>     Attrib V47    0.009024421941835843
#>     Attrib V48    -0.25496624250354194
#>     Attrib V49    -0.01430095301257478
#>     Attrib V5    0.117506237189407
#>     Attrib V50    0.689504020519516
#>     Attrib V51    -0.12871775365267743
#>     Attrib V52    -0.28524662348851126
#>     Attrib V53    -0.26570609771693743
#>     Attrib V54    -0.2612740073868512
#>     Attrib V55    0.08138161382355892
#>     Attrib V56    0.17435801877009635
#>     Attrib V57    0.17163787355982854
#>     Attrib V58    -0.0586067588029293
#>     Attrib V59    -0.11805518793163644
#>     Attrib V6    0.23016927132967935
#>     Attrib V60    0.19844196873173456
#>     Attrib V7    0.5581850128040542
#>     Attrib V8    -0.1476563614218516
#>     Attrib V9    -0.2725805056641853
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.680259861365548
#>     Attrib V1    0.27800330584187144
#>     Attrib V10    0.6248398730416629
#>     Attrib V11    1.423195758077875
#>     Attrib V12    0.9925516783692099
#>     Attrib V13    -0.06392097379411424
#>     Attrib V14    -0.286906941876175
#>     Attrib V15    -0.32755794534584337
#>     Attrib V16    -0.2625153368120647
#>     Attrib V17    -0.3206693829950941
#>     Attrib V18    -0.20094582569913533
#>     Attrib V19    -0.6099717580323507
#>     Attrib V2    0.3004748306658615
#>     Attrib V20    -0.4327870430404144
#>     Attrib V21    -0.524366186408514
#>     Attrib V22    -0.33771625143175166
#>     Attrib V23    0.4711199774093182
#>     Attrib V24    0.36603187448095664
#>     Attrib V25    -0.48263342757540767
#>     Attrib V26    -0.1567748521766509
#>     Attrib V27    0.7999002918955894
#>     Attrib V28    1.5715816376951506
#>     Attrib V29    0.9838827982013008
#>     Attrib V3    -0.5174213787351769
#>     Attrib V30    0.40584816174285165
#>     Attrib V31    -0.646813157843628
#>     Attrib V32    0.38438887714858955
#>     Attrib V33    0.06535115015196068
#>     Attrib V34    -0.33458896086998163
#>     Attrib V35    -0.14389296387139766
#>     Attrib V36    -0.7530475783548846
#>     Attrib V37    -0.35849357743372845
#>     Attrib V38    0.015781322828779684
#>     Attrib V39    0.20010380743867656
#>     Attrib V4    0.12562792790068342
#>     Attrib V40    -0.1280659492644699
#>     Attrib V41    0.2394757079145749
#>     Attrib V42    -0.4063663138658448
#>     Attrib V43    -0.24673890312037344
#>     Attrib V44    0.22638515989047758
#>     Attrib V45    0.9427163992043276
#>     Attrib V46    0.5608881568961407
#>     Attrib V47    0.41533949989708807
#>     Attrib V48    0.7254760200742152
#>     Attrib V49    0.622368755185386
#>     Attrib V5    0.05109996354615239
#>     Attrib V50    -0.7135601866825383
#>     Attrib V51    0.9992889098566214
#>     Attrib V52    1.1485654157655798
#>     Attrib V53    0.08197551547653836
#>     Attrib V54    0.07773291985971123
#>     Attrib V55    0.760177732894379
#>     Attrib V56    -0.9407484260185247
#>     Attrib V57    0.5784325475424199
#>     Attrib V58    0.9542034589824103
#>     Attrib V59    -0.1452128644070113
#>     Attrib V6    -0.1983082904069699
#>     Attrib V60    -0.5107643162070771
#>     Attrib V7    -0.4593336385577739
#>     Attrib V8    0.33569432345987094
#>     Attrib V9    0.5599268524417754
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.04120111644711098
#>     Attrib V1    0.06323737581507055
#>     Attrib V10    -0.20713110436808096
#>     Attrib V11    -0.6372111524695968
#>     Attrib V12    -0.4639884825154764
#>     Attrib V13    0.21741759033761168
#>     Attrib V14    0.4000620913359435
#>     Attrib V15    0.34154838996334574
#>     Attrib V16    0.25114005497956354
#>     Attrib V17    0.1364433346673701
#>     Attrib V18    0.08793037586082478
#>     Attrib V19    0.17214333917740732
#>     Attrib V2    -0.05504386145050771
#>     Attrib V20    -0.30610492872200823
#>     Attrib V21    -0.06840956493533812
#>     Attrib V22    -0.0819027009228757
#>     Attrib V23    -0.2820415061689604
#>     Attrib V24    -0.19336840744758596
#>     Attrib V25    0.10928886954205622
#>     Attrib V26    0.1714032936549987
#>     Attrib V27    -0.007351234212701184
#>     Attrib V28    -0.22268235784999088
#>     Attrib V29    -0.1769905803533364
#>     Attrib V3    0.16715681184548672
#>     Attrib V30    -0.2701232933684059
#>     Attrib V31    0.7439319996887558
#>     Attrib V32    0.2434449580528703
#>     Attrib V33    -0.14865779023245745
#>     Attrib V34    0.04765543235057929
#>     Attrib V35    0.10422331137127591
#>     Attrib V36    0.4699175904449691
#>     Attrib V37    0.18424781967563816
#>     Attrib V38    0.03221466622149875
#>     Attrib V39    -0.08501977181264504
#>     Attrib V4    -0.13774594720966898
#>     Attrib V40    0.10752351132579982
#>     Attrib V41    -0.07205632167670178
#>     Attrib V42    0.04507904885956431
#>     Attrib V43    -0.11695272596898855
#>     Attrib V44    -0.23539645604462786
#>     Attrib V45    -0.44323744325479325
#>     Attrib V46    -0.08803101216326922
#>     Attrib V47    -0.0694941848802655
#>     Attrib V48    -0.24724051885709625
#>     Attrib V49    -0.0015821038542956534
#>     Attrib V5    0.1070596905109723
#>     Attrib V50    0.7310440061581766
#>     Attrib V51    -0.2347250915784872
#>     Attrib V52    -0.41830528131983113
#>     Attrib V53    -0.26582321975496903
#>     Attrib V54    -0.28122192425115383
#>     Attrib V55    0.11694370532597793
#>     Attrib V56    0.20094521553678402
#>     Attrib V57    0.16575332767805567
#>     Attrib V58    -0.07947351182214131
#>     Attrib V59    -0.14464099590186696
#>     Attrib V6    0.21942754003617576
#>     Attrib V60    0.259378468236221
#>     Attrib V7    0.5890468358263916
#>     Attrib V8    -0.17121232133251485
#>     Attrib V9    -0.3676703316922496
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    -0.32794389139939545
#>     Attrib V1    0.005813089936946055
#>     Attrib V10    0.319317561269803
#>     Attrib V11    0.930161730382384
#>     Attrib V12    0.6250219695080859
#>     Attrib V13    -0.49914879827177444
#>     Attrib V14    -0.6311812220739474
#>     Attrib V15    -0.5314893841682524
#>     Attrib V16    -0.25277228893144976
#>     Attrib V17    -0.004253565569064611
#>     Attrib V18    0.16799825394524726
#>     Attrib V19    0.08600397086413247
#>     Attrib V2    0.12686805573080262
#>     Attrib V20    0.6933768810142248
#>     Attrib V21    0.49222445860812963
#>     Attrib V22    0.5031674937811942
#>     Attrib V23    0.5611426226226645
#>     Attrib V24    0.23717218581734356
#>     Attrib V25    -0.20534216214147316
#>     Attrib V26    -0.5792891274903391
#>     Attrib V27    -0.5957540677363818
#>     Attrib V28    -0.315440307728629
#>     Attrib V29    -0.27885272039252645
#>     Attrib V3    -0.3101935232439994
#>     Attrib V30    0.22275698307042582
#>     Attrib V31    -1.2675036051753852
#>     Attrib V32    -0.30563320021690615
#>     Attrib V33    0.6320117539525664
#>     Attrib V34    0.156068544612437
#>     Attrib V35    -0.13302236293706385
#>     Attrib V36    -0.9174308998450952
#>     Attrib V37    -0.732237247096323
#>     Attrib V38    -0.3825738948335395
#>     Attrib V39    0.14330693068977904
#>     Attrib V4    0.41376324512220813
#>     Attrib V40    -0.08152319877998829
#>     Attrib V41    0.025095777231124876
#>     Attrib V42    -0.01607889281883476
#>     Attrib V43    0.3081915255311855
#>     Attrib V44    0.532444429708864
#>     Attrib V45    0.6160415026931175
#>     Attrib V46    -0.20173669547274153
#>     Attrib V47    0.01890047963257055
#>     Attrib V48    0.7145192734603355
#>     Attrib V49    0.1709270456016273
#>     Attrib V5    -0.3485373293617195
#>     Attrib V50    -1.0421097680592024
#>     Attrib V51    0.44904284951727375
#>     Attrib V52    0.6320514143009539
#>     Attrib V53    0.1257887125119972
#>     Attrib V54    0.5453614833647841
#>     Attrib V55    -0.055984314979599124
#>     Attrib V56    0.04541368484949673
#>     Attrib V57    0.036609722352398975
#>     Attrib V58    0.5986953789822956
#>     Attrib V59    0.7474448075865593
#>     Attrib V6    -0.5112116176710354
#>     Attrib V60    -0.13493368525052976
#>     Attrib V7    -1.197058583769248
#>     Attrib V8    0.44664752987238915
#>     Attrib V9    0.6637296188852432
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.23896517896758618
#>     Attrib V1    -0.4291030493127863
#>     Attrib V10    -0.8670333324611731
#>     Attrib V11    -1.6051421037859805
#>     Attrib V12    -1.3952143600293962
#>     Attrib V13    -0.5397785329325481
#>     Attrib V14    0.29627551119579754
#>     Attrib V15    0.6311451998091717
#>     Attrib V16    0.5544524151578885
#>     Attrib V17    0.2023568573978312
#>     Attrib V18    -0.03766025378008648
#>     Attrib V19    0.37206714871242647
#>     Attrib V2    -0.5492384104164346
#>     Attrib V20    0.24226573627894177
#>     Attrib V21    0.13129086242847415
#>     Attrib V22    -0.4086351156722137
#>     Attrib V23    -1.3395810974607874
#>     Attrib V24    -0.7990317853780411
#>     Attrib V25    -0.1748630873852474
#>     Attrib V26    -0.5228825932580596
#>     Attrib V27    -1.236785648285221
#>     Attrib V28    -2.435626000605484
#>     Attrib V29    -1.6038082304779253
#>     Attrib V3    0.4348957087822623
#>     Attrib V30    -0.3976238833809964
#>     Attrib V31    0.9260186258743096
#>     Attrib V32    -0.13687989535574951
#>     Attrib V33    0.3136748631536029
#>     Attrib V34    0.6302922706800821
#>     Attrib V35    -0.1962763771269771
#>     Attrib V36    0.4687728500260698
#>     Attrib V37    -0.13588823124410165
#>     Attrib V38    -0.12348302554790834
#>     Attrib V39    -0.13266700957314229
#>     Attrib V4    -0.462550070516808
#>     Attrib V40    0.08831348245777712
#>     Attrib V41    -0.8254020971054626
#>     Attrib V42    0.1141529789656225
#>     Attrib V43    -0.02712742064969121
#>     Attrib V44    -0.5269564656050183
#>     Attrib V45    -1.0519406979208386
#>     Attrib V46    -0.805250929788612
#>     Attrib V47    -0.8598173262123915
#>     Attrib V48    -0.7587951775002966
#>     Attrib V49    -0.5208356647343112
#>     Attrib V5    -0.5848660526771826
#>     Attrib V50    0.7551501824505144
#>     Attrib V51    -1.594555671395016
#>     Attrib V52    -1.3139090837709606
#>     Attrib V53    0.043002533555423994
#>     Attrib V54    -0.2395211975153334
#>     Attrib V55    -0.30950235011845467
#>     Attrib V56    0.8186888692147378
#>     Attrib V57    0.4744709071960452
#>     Attrib V58    -0.6080374455961798
#>     Attrib V59    0.4404580073504108
#>     Attrib V6    -0.044185139014728154
#>     Attrib V60    0.2536247580312248
#>     Attrib V7    0.4075692456367548
#>     Attrib V8    0.1327659930583119
#>     Attrib V9    -0.619677246098072
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.3642246973288724
#>     Attrib V1    -0.03426604981931043
#>     Attrib V10    0.07481414381440586
#>     Attrib V11    0.5269093610241891
#>     Attrib V12    0.3351314652752455
#>     Attrib V13    -0.37722356381179944
#>     Attrib V14    -0.2953083384328392
#>     Attrib V15    -0.28799637118096
#>     Attrib V16    -0.10173751666297984
#>     Attrib V17    0.09140568055958369
#>     Attrib V18    0.1533556920925009
#>     Attrib V19    0.1158315761830917
#>     Attrib V2    0.09405969129219545
#>     Attrib V20    0.6076860710096404
#>     Attrib V21    0.4276328465058063
#>     Attrib V22    0.40647823757596463
#>     Attrib V23    0.3358013048950212
#>     Attrib V24    0.1477897584564255
#>     Attrib V25    -0.08238687673082629
#>     Attrib V26    -0.4697874315003232
#>     Attrib V27    -0.46455990204065434
#>     Attrib V28    -0.313950562743785
#>     Attrib V29    -0.2117180303074108
#>     Attrib V3    -0.06431880654544295
#>     Attrib V30    0.08376071766559331
#>     Attrib V31    -0.829755073215694
#>     Attrib V32    -0.2536959604423217
#>     Attrib V33    0.4261169490437472
#>     Attrib V34    0.1290697306175865
#>     Attrib V35    -0.01952146363551993
#>     Attrib V36    -0.5465632477156744
#>     Attrib V37    -0.4374541496889474
#>     Attrib V38    -0.23847860211174746
#>     Attrib V39    0.0927121746774323
#>     Attrib V4    0.27148036080472876
#>     Attrib V40    0.007904921153254363
#>     Attrib V41    0.022716619201991518
#>     Attrib V42    -0.012221933190949415
#>     Attrib V43    0.31252642376886125
#>     Attrib V44    0.27131240606135215
#>     Attrib V45    0.3403431449426675
#>     Attrib V46    -0.1047572473553923
#>     Attrib V47    0.034134858574758634
#>     Attrib V48    0.3568399427981257
#>     Attrib V49    0.06129213832022353
#>     Attrib V5    -0.2321907432905774
#>     Attrib V50    -0.5844378653038367
#>     Attrib V51    0.2080471315771961
#>     Attrib V52    0.3788960821501512
#>     Attrib V53    0.15215872712162007
#>     Attrib V54    0.38902735841843145
#>     Attrib V55    0.028598319261981045
#>     Attrib V56    0.14735702185334584
#>     Attrib V57    0.050070279927061034
#>     Attrib V58    0.35941019251075007
#>     Attrib V59    0.5011829223882173
#>     Attrib V6    -0.3145788359569542
#>     Attrib V60    -0.008325145167704879
#>     Attrib V7    -0.7481744303078265
#>     Attrib V8    0.2880394824776616
#>     Attrib V9    0.3987088351985582
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.09678064545565183
#>     Attrib V1    0.057101972767691384
#>     Attrib V10    -0.012487338640384737
#>     Attrib V11    -0.16675356132683103
#>     Attrib V12    -0.0907147540208591
#>     Attrib V13    0.1114722717963399
#>     Attrib V14    0.09080859733330668
#>     Attrib V15    0.07689820506884971
#>     Attrib V16    0.06992083747299133
#>     Attrib V17    0.10087233609264248
#>     Attrib V18    0.07953864155154063
#>     Attrib V19    0.004137661266828571
#>     Attrib V2    0.0445064725801585
#>     Attrib V20    -0.17992638983138728
#>     Attrib V21    -0.03756073151908047
#>     Attrib V22    -0.014564770982508543
#>     Attrib V23    -0.03109153391331308
#>     Attrib V24    -0.08211576033467673
#>     Attrib V25    -0.015035352410261054
#>     Attrib V26    -0.0550588815400406
#>     Attrib V27    -0.16095461647595197
#>     Attrib V28    -0.15116780153091858
#>     Attrib V29    -0.15960230939499595
#>     Attrib V3    0.05995016835836753
#>     Attrib V30    -0.10182359641752942
#>     Attrib V31    0.2701770403993998
#>     Attrib V32    0.13406554262065373
#>     Attrib V33    0.03245671712897885
#>     Attrib V34    0.06451887962304031
#>     Attrib V35    0.12870295911754306
#>     Attrib V36    0.2233560585601986
#>     Attrib V37    0.22631398828954238
#>     Attrib V38    0.09194333994390863
#>     Attrib V39    0.12054626280475271
#>     Attrib V4    0.04180300884331633
#>     Attrib V40    0.1862308975625753
#>     Attrib V41    0.16822477856688642
#>     Attrib V42    0.19259395636007087
#>     Attrib V43    0.06236777949380831
#>     Attrib V44    -0.01291874782485247
#>     Attrib V45    -0.07009233722068628
#>     Attrib V46    0.04019047337855312
#>     Attrib V47    0.034250027730594414
#>     Attrib V48    0.006971700521186248
#>     Attrib V49    0.03382891465672635
#>     Attrib V5    0.07877487681336569
#>     Attrib V50    0.21086086746145807
#>     Attrib V51    0.02037861789421072
#>     Attrib V52    -0.03692114033335835
#>     Attrib V53    -0.06976972755731475
#>     Attrib V54    -0.08194761591624515
#>     Attrib V55    0.008980163986516555
#>     Attrib V56    0.10846653772420312
#>     Attrib V57    0.01740403594375802
#>     Attrib V58    0.10281386342222994
#>     Attrib V59    0.06364895889146265
#>     Attrib V6    0.126010079095419
#>     Attrib V60    0.11924075268865435
#>     Attrib V7    0.14382593222944495
#>     Attrib V8    -0.027602496075168674
#>     Attrib V9    -0.07626400557177253
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.32497436958304954
#>     Attrib V1    0.04755176726481036
#>     Attrib V10    0.0014814581377647859
#>     Attrib V11    0.2863053041469843
#>     Attrib V12    0.10408250552828356
#>     Attrib V13    -0.2451494121853107
#>     Attrib V14    -0.16070218922618995
#>     Attrib V15    -0.12755079474287007
#>     Attrib V16    -0.0012925891793415314
#>     Attrib V17    0.13799589259224543
#>     Attrib V18    0.1543535092547769
#>     Attrib V19    0.1435399958968634
#>     Attrib V2    0.156625253058054
#>     Attrib V20    0.486938404342424
#>     Attrib V21    0.27932585553820044
#>     Attrib V22    0.2877449273900205
#>     Attrib V23    0.24779848387282907
#>     Attrib V24    0.06673859421707141
#>     Attrib V25    -0.1602599468965385
#>     Attrib V26    -0.3519120374252241
#>     Attrib V27    -0.42016367844769975
#>     Attrib V28    -0.3527333042837397
#>     Attrib V29    -0.2669831362679371
#>     Attrib V3    -0.043975831655022175
#>     Attrib V30    0.031219627286769653
#>     Attrib V31    -0.5758532297861065
#>     Attrib V32    -0.269613492712682
#>     Attrib V33    0.29096216976221145
#>     Attrib V34    0.10584687662849243
#>     Attrib V35    0.021382333979130506
#>     Attrib V36    -0.3444087691210015
#>     Attrib V37    -0.2736466554623695
#>     Attrib V38    -0.11992452745154267
#>     Attrib V39    0.018143582686286047
#>     Attrib V4    0.26201720998123107
#>     Attrib V40    0.003297902795535547
#>     Attrib V41    -0.03084302503597045
#>     Attrib V42    0.017868688983365074
#>     Attrib V43    0.241848855509904
#>     Attrib V44    0.2526809816905805
#>     Attrib V45    0.15398234389661036
#>     Attrib V46    -0.10159263108343926
#>     Attrib V47    -0.02682042969650434
#>     Attrib V48    0.21341698215220556
#>     Attrib V49    0.02678508387117709
#>     Attrib V5    -0.13639950148070018
#>     Attrib V50    -0.381915201205471
#>     Attrib V51    0.034096178882297566
#>     Attrib V52    0.19818371947371266
#>     Attrib V53    0.19297357647285163
#>     Attrib V54    0.36792607753839873
#>     Attrib V55    0.0547812955737101
#>     Attrib V56    0.1223295340949038
#>     Attrib V57    0.06978648619157957
#>     Attrib V58    0.23730987381333296
#>     Attrib V59    0.416872889346798
#>     Attrib V6    -0.226831486798026
#>     Attrib V60    0.05224151395927125
#>     Attrib V7    -0.4824557016308894
#>     Attrib V8    0.19459677527523508
#>     Attrib V9    0.2793564317071844
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.28720450316081886
#>     Attrib V1    0.07714442978555974
#>     Attrib V10    -0.07909470149162796
#>     Attrib V11    0.18807508972730047
#>     Attrib V12    0.10169822750156407
#>     Attrib V13    -0.2526739567966924
#>     Attrib V14    -0.06966978222046877
#>     Attrib V15    -0.0585872105696313
#>     Attrib V16    0.054827978277290246
#>     Attrib V17    0.08915497007975519
#>     Attrib V18    0.17386763090120178
#>     Attrib V19    0.0963933322946796
#>     Attrib V2    0.08917287481872645
#>     Attrib V20    0.4010218269800446
#>     Attrib V21    0.2949578320411976
#>     Attrib V22    0.19535285180187764
#>     Attrib V23    0.19703907768517293
#>     Attrib V24    -0.007570267106942089
#>     Attrib V25    -0.205486193312142
#>     Attrib V26    -0.36815572932924057
#>     Attrib V27    -0.33288196908307954
#>     Attrib V28    -0.19801229676850596
#>     Attrib V29    -0.14073595246775855
#>     Attrib V3    0.04054720882779097
#>     Attrib V30    0.08375305130348627
#>     Attrib V31    -0.5549177081311087
#>     Attrib V32    -0.2526689955874176
#>     Attrib V33    0.21703990709782792
#>     Attrib V34    0.05444443246790121
#>     Attrib V35    -0.02301910386114535
#>     Attrib V36    -0.2342082463617614
#>     Attrib V37    -0.22556933329344225
#>     Attrib V38    -0.14375073698895455
#>     Attrib V39    0.07294171073857805
#>     Attrib V4    0.200439099363062
#>     Attrib V40    -0.012342599958960141
#>     Attrib V41    -0.03627937005554574
#>     Attrib V42    0.06190350555831707
#>     Attrib V43    0.1426973874603233
#>     Attrib V44    0.2053444013385888
#>     Attrib V45    0.18120214103877233
#>     Attrib V46    -0.07665147254232596
#>     Attrib V47    -0.02789580384891637
#>     Attrib V48    0.12025366811651891
#>     Attrib V49    0.04746812835219217
#>     Attrib V5    -0.0684179330000862
#>     Attrib V50    -0.3133256861967965
#>     Attrib V51    0.05705046871259439
#>     Attrib V52    0.20238273333629012
#>     Attrib V53    0.16309487194870825
#>     Attrib V54    0.2344770659375921
#>     Attrib V55    0.02113546616938784
#>     Attrib V56    0.1355754055596642
#>     Attrib V57    0.07456331757891334
#>     Attrib V58    0.2897983265615637
#>     Attrib V59    0.35406368847176745
#>     Attrib V6    -0.1483851867669835
#>     Attrib V60    0.04716614937449352
#>     Attrib V7    -0.3995669947033651
#>     Attrib V8    0.1848079989176936
#>     Attrib V9    0.201738703734915
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
