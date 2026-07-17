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
#>     Threshold    -0.8746810509303578
#>     Node 2    2.4505805859482437
#>     Node 3    0.5664426855243782
#>     Node 4    0.9808309325927739
#>     Node 5    -2.2972954274511257
#>     Node 6    0.04652169702882184
#>     Node 7    2.887160680373286
#>     Node 8    0.376863904205101
#>     Node 9    3.8426705358039643
#>     Node 10    -1.6226484808679777
#>     Node 11    1.3042462136360895
#>     Node 12    0.9998338154370808
#>     Node 13    0.8324417243411452
#>     Node 14    1.3285389823603762
#>     Node 15    -1.9694319966043885
#>     Node 16    -0.38878537348755177
#>     Node 17    -0.8495561395381348
#>     Node 18    -0.26429792220421855
#>     Node 19    1.4548265841711858
#>     Node 20    1.5597789161716813
#>     Node 21    -1.9461692818358085
#>     Node 22    0.6884929536044615
#>     Node 23    2.267899805447904
#>     Node 24    -1.3019421203807722
#>     Node 25    4.487955268314001
#>     Node 26    -1.4037691199554612
#>     Node 27    1.5294853915693867
#>     Node 28    -3.652182566513713
#>     Node 29    1.1336047522165515
#>     Node 30    0.15344898764168236
#>     Node 31    -0.19820905583640028
#>     Node 32    -0.7243567252658094
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.868778106190897
#>     Node 2    -2.4873629774300703
#>     Node 3    -0.5547406538759574
#>     Node 4    -0.9405846414149384
#>     Node 5    2.3018075316369573
#>     Node 6    -0.02977773486521391
#>     Node 7    -2.8822532620206145
#>     Node 8    -0.4139806940425224
#>     Node 9    -3.848172122571089
#>     Node 10    1.581278386347399
#>     Node 11    -1.2628577783134884
#>     Node 12    -1.075098878220187
#>     Node 13    -0.7788680187225004
#>     Node 14    -1.2539297201122936
#>     Node 15    1.9330300118949737
#>     Node 16    0.3731067000240468
#>     Node 17    0.8921904537892739
#>     Node 18    0.3034141607853267
#>     Node 19    -1.456647557959072
#>     Node 20    -1.5405413206236573
#>     Node 21    1.9865249730430852
#>     Node 22    -0.7416013181887569
#>     Node 23    -2.2922496489798885
#>     Node 24    1.3064116642831936
#>     Node 25    -4.482730495374668
#>     Node 26    1.356495012207865
#>     Node 27    -1.5627999734146045
#>     Node 28    3.6506964866149834
#>     Node 29    -1.1634057563812215
#>     Node 30    -0.08414523239075346
#>     Node 31    0.25147756417423645
#>     Node 32    0.7158043401314338
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.2953745698972922
#>     Attrib V1    0.8370028480083687
#>     Attrib V10    -0.4283663421243723
#>     Attrib V11    -0.33604544759514676
#>     Attrib V12    -0.010961518343419142
#>     Attrib V13    0.09760948968498151
#>     Attrib V14    -0.4540185004791545
#>     Attrib V15    -0.05818111776486563
#>     Attrib V16    -0.09840428242252353
#>     Attrib V17    0.8801472844967806
#>     Attrib V18    0.7393441658004353
#>     Attrib V19    0.24764901019042085
#>     Attrib V2    0.364030650002298
#>     Attrib V20    1.2156980500292036
#>     Attrib V21    0.8885952124082455
#>     Attrib V22    0.430507961735735
#>     Attrib V23    0.4069047545263702
#>     Attrib V24    0.06495790701981154
#>     Attrib V25    -0.23306684285767001
#>     Attrib V26    -0.9271686138371888
#>     Attrib V27    -1.0295808616067939
#>     Attrib V28    -0.3819632119575142
#>     Attrib V29    0.08828825222842353
#>     Attrib V3    0.26698435261192943
#>     Attrib V30    0.16582868983222654
#>     Attrib V31    -1.5502236020999438
#>     Attrib V32    -0.9982204132673939
#>     Attrib V33    -0.06610971878557732
#>     Attrib V34    -0.14660496903396084
#>     Attrib V35    0.33715839866005326
#>     Attrib V36    -0.33620272914569577
#>     Attrib V37    -0.4451566442047538
#>     Attrib V38    0.24000852469065787
#>     Attrib V39    0.3933680517066629
#>     Attrib V4    0.3531249178993012
#>     Attrib V40    -0.6709509748722813
#>     Attrib V41    -0.4002577754471991
#>     Attrib V42    0.5058247456768633
#>     Attrib V43    0.48066816119647676
#>     Attrib V44    0.11118737728487803
#>     Attrib V45    0.7268695008992362
#>     Attrib V46    0.08952402575161306
#>     Attrib V47    -0.004860522208533424
#>     Attrib V48    0.37644561855457714
#>     Attrib V49    0.39341545423884927
#>     Attrib V5    -0.49610788705611714
#>     Attrib V50    -0.48981865371803873
#>     Attrib V51    0.3874592901569175
#>     Attrib V52    0.6883603928022524
#>     Attrib V53    0.3903002904125598
#>     Attrib V54    0.6837952878052956
#>     Attrib V55    -0.21472892818038147
#>     Attrib V56    0.8799891674550185
#>     Attrib V57    -0.04127928040181619
#>     Attrib V58    0.6247596574776754
#>     Attrib V59    0.7317975536828839
#>     Attrib V6    -0.26275021513646074
#>     Attrib V60    0.25248453182513225
#>     Attrib V7    -0.1597282959080896
#>     Attrib V8    -0.6832346730411353
#>     Attrib V9    0.28825448600165804
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.15956977651018864
#>     Attrib V1    0.29435789318966743
#>     Attrib V10    -0.06319854123228849
#>     Attrib V11    -0.06458850741638703
#>     Attrib V12    0.07739317374348063
#>     Attrib V13    0.08156047488230707
#>     Attrib V14    -0.1432816950259856
#>     Attrib V15    -0.004696673162478938
#>     Attrib V16    -0.06382738103175035
#>     Attrib V17    0.24312772876114128
#>     Attrib V18    0.19980772595375543
#>     Attrib V19    0.13864120414193562
#>     Attrib V2    0.20397222200164175
#>     Attrib V20    0.35974006146006116
#>     Attrib V21    0.21858351609917737
#>     Attrib V22    0.15507746593694716
#>     Attrib V23    0.13900470480480295
#>     Attrib V24    0.004825028706833145
#>     Attrib V25    -0.050309926188262494
#>     Attrib V26    -0.285436860199811
#>     Attrib V27    -0.33514717793690196
#>     Attrib V28    -0.16304390080116968
#>     Attrib V29    -0.1303973574350661
#>     Attrib V3    0.14392085663113383
#>     Attrib V30    0.02972928222018745
#>     Attrib V31    -0.4278564346131917
#>     Attrib V32    -0.18303691323378465
#>     Attrib V33    0.040348938628135086
#>     Attrib V34    -0.04093991235745141
#>     Attrib V35    0.16875418447492385
#>     Attrib V36    -0.07229035705947272
#>     Attrib V37    -0.1394728156439979
#>     Attrib V38    0.037248346972575896
#>     Attrib V39    0.13566104056556777
#>     Attrib V4    0.16639979516172373
#>     Attrib V40    -0.17498149242130298
#>     Attrib V41    -0.08686798915829529
#>     Attrib V42    0.11532257526252937
#>     Attrib V43    0.15995462297095017
#>     Attrib V44    0.09205972434436065
#>     Attrib V45    0.24570927291102423
#>     Attrib V46    0.021098277069293504
#>     Attrib V47    0.043079080132432314
#>     Attrib V48    0.098786449848713
#>     Attrib V49    0.14524203080620723
#>     Attrib V5    -0.13406575439371446
#>     Attrib V50    -0.13710270708523997
#>     Attrib V51    0.1306738110854262
#>     Attrib V52    0.27836835106693664
#>     Attrib V53    0.08949402356565532
#>     Attrib V54    0.292643839692902
#>     Attrib V55    -0.01856938980346384
#>     Attrib V56    0.28878242034654616
#>     Attrib V57    0.03149139734114447
#>     Attrib V58    0.25039165639044897
#>     Attrib V59    0.26842424695122735
#>     Attrib V6    -0.11751551440316448
#>     Attrib V60    0.08062381822987316
#>     Attrib V7    -0.12343361429680753
#>     Attrib V8    -0.20848682394186233
#>     Attrib V9    0.10753244316779437
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.19955712532232425
#>     Attrib V1    0.3676808685483081
#>     Attrib V10    -0.18118576167272676
#>     Attrib V11    -0.15066710585899543
#>     Attrib V12    0.005298367444797409
#>     Attrib V13    0.04201096541736207
#>     Attrib V14    -0.2388810808092611
#>     Attrib V15    -0.021102794606527666
#>     Attrib V16    -0.04840284748258433
#>     Attrib V17    0.4199635923142445
#>     Attrib V18    0.34085912827373205
#>     Attrib V19    0.15183010882597525
#>     Attrib V2    0.1883966525006137
#>     Attrib V20    0.5430006073843949
#>     Attrib V21    0.4292208506111956
#>     Attrib V22    0.20385074750627735
#>     Attrib V23    0.25661056326236176
#>     Attrib V24    0.06728745097203821
#>     Attrib V25    -0.11706446835384231
#>     Attrib V26    -0.4326710202461645
#>     Attrib V27    -0.5504961715443968
#>     Attrib V28    -0.22222454216580362
#>     Attrib V29    -0.0491068785716334
#>     Attrib V3    0.16249069090951976
#>     Attrib V30    0.016445530261928507
#>     Attrib V31    -0.6614583767096305
#>     Attrib V32    -0.3724043129076496
#>     Attrib V33    0.053412718186747865
#>     Attrib V34    0.01510428299401131
#>     Attrib V35    0.25141727525009006
#>     Attrib V36    -0.09741716452500987
#>     Attrib V37    -0.18078999488909872
#>     Attrib V38    0.07513196867988912
#>     Attrib V39    0.19134582262214936
#>     Attrib V4    0.17900745451024985
#>     Attrib V40    -0.2739381466402975
#>     Attrib V41    -0.16870617285189587
#>     Attrib V42    0.21332176470939646
#>     Attrib V43    0.22011968344581537
#>     Attrib V44    0.09476751270345626
#>     Attrib V45    0.42674605046621517
#>     Attrib V46    0.027063094266939838
#>     Attrib V47    -0.01969265932957261
#>     Attrib V48    0.18149327193089332
#>     Attrib V49    0.2623311534369107
#>     Attrib V5    -0.18881457952381347
#>     Attrib V50    -0.2092042151563712
#>     Attrib V51    0.23644245407932812
#>     Attrib V52    0.33548582859197273
#>     Attrib V53    0.18254428423620217
#>     Attrib V54    0.2794642478851068
#>     Attrib V55    -0.12990768375051764
#>     Attrib V56    0.4042117147209187
#>     Attrib V57    0.036454709188001456
#>     Attrib V58    0.28099532151392576
#>     Attrib V59    0.3537194365677462
#>     Attrib V6    -0.13618418732251883
#>     Attrib V60    0.07975901805058966
#>     Attrib V7    -0.10516173872170075
#>     Attrib V8    -0.3722178590185488
#>     Attrib V9    0.19778785090147655
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.13334058448650254
#>     Attrib V1    -0.28876969287664267
#>     Attrib V10    -0.3671431485303846
#>     Attrib V11    -0.3042898646273483
#>     Attrib V12    -0.7934275311817582
#>     Attrib V13    -0.5760095029008493
#>     Attrib V14    0.9883983929167695
#>     Attrib V15    0.6593819971479807
#>     Attrib V16    0.5441846029677874
#>     Attrib V17    -0.37390840399423414
#>     Attrib V18    -0.2784637764414097
#>     Attrib V19    0.14388034400565997
#>     Attrib V2    -0.13297586407530432
#>     Attrib V20    -0.44219751046733713
#>     Attrib V21    -0.16482471695784803
#>     Attrib V22    -0.28117524762573315
#>     Attrib V23    -0.3197013961714195
#>     Attrib V24    -0.1251941102049642
#>     Attrib V25    -0.01365355466779742
#>     Attrib V26    0.19559363077512726
#>     Attrib V27    0.2312819535662296
#>     Attrib V28    -0.17538556895292667
#>     Attrib V29    -0.29099797744684336
#>     Attrib V3    0.14111221321936074
#>     Attrib V30    -0.5597879290789438
#>     Attrib V31    0.9683326598550581
#>     Attrib V32    0.30921404811771275
#>     Attrib V33    -0.23902697804656686
#>     Attrib V34    -0.1101262165520333
#>     Attrib V35    -0.4002345675486096
#>     Attrib V36    0.5597278649111823
#>     Attrib V37    0.6540180959177618
#>     Attrib V38    -0.1159194259012646
#>     Attrib V39    -0.5141425637067822
#>     Attrib V4    -0.07707953679245594
#>     Attrib V40    0.3498565327254103
#>     Attrib V41    -0.04534090665155978
#>     Attrib V42    -0.22860700109302656
#>     Attrib V43    -0.5771109559193454
#>     Attrib V44    0.053613501250134116
#>     Attrib V45    -0.7435306651493903
#>     Attrib V46    -0.12447165230691892
#>     Attrib V47    -0.03118249992060422
#>     Attrib V48    -0.5361374025485441
#>     Attrib V49    -0.7952287411921383
#>     Attrib V5    0.8352570991673592
#>     Attrib V50    1.0888729249123337
#>     Attrib V51    -0.3758779331201552
#>     Attrib V52    -0.8924456607538086
#>     Attrib V53    0.07123313705017013
#>     Attrib V54    -0.134363158080328
#>     Attrib V55    0.7914515708787718
#>     Attrib V56    -0.29789909182328794
#>     Attrib V57    0.45589812462170526
#>     Attrib V58    -0.41590306283403544
#>     Attrib V59    -0.404955111341732
#>     Attrib V6    0.3419085932866693
#>     Attrib V60    0.29600176166814657
#>     Attrib V7    0.3730084643122928
#>     Attrib V8    1.1093396971440883
#>     Attrib V9    -0.8135058055469654
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.10410622815306393
#>     Attrib V1    0.180845794126507
#>     Attrib V10    0.004587874963302263
#>     Attrib V11    0.036504947629786406
#>     Attrib V12    0.10440347263843852
#>     Attrib V13    -0.005215697471875928
#>     Attrib V14    -0.034569575693982495
#>     Attrib V15    -0.0197424510435679
#>     Attrib V16    0.03752150673182347
#>     Attrib V17    0.039534486670767734
#>     Attrib V18    0.09833377402723406
#>     Attrib V19    0.010519721787507314
#>     Attrib V2    0.13934423029334775
#>     Attrib V20    0.1077068328393061
#>     Attrib V21    0.09005648793350783
#>     Attrib V22    0.005353705836045933
#>     Attrib V23    0.03191717136120638
#>     Attrib V24    0.013496040425194741
#>     Attrib V25    -0.0065851026367996866
#>     Attrib V26    -0.10966652647957383
#>     Attrib V27    -0.08398174855309445
#>     Attrib V28    -0.08027179228773704
#>     Attrib V29    -0.059581389408148486
#>     Attrib V3    0.12649148040416477
#>     Attrib V30    -0.01586655662389913
#>     Attrib V31    -0.12246095988327675
#>     Attrib V32    0.012217043317913514
#>     Attrib V33    0.05751306181984352
#>     Attrib V34    0.007969050630156203
#>     Attrib V35    0.09546099377351251
#>     Attrib V36    -0.010700281374477772
#>     Attrib V37    -0.0019662180868039955
#>     Attrib V38    0.038535357955916415
#>     Attrib V39    0.039688729199554615
#>     Attrib V4    0.16695617025617165
#>     Attrib V40    -0.04986605817254897
#>     Attrib V41    0.05876532192680236
#>     Attrib V42    0.09403758428326138
#>     Attrib V43    0.08976836707944576
#>     Attrib V44    0.08153513237218482
#>     Attrib V45    0.1413087883347191
#>     Attrib V46    0.05880593992751649
#>     Attrib V47    0.0363659282776703
#>     Attrib V48    0.05894224533062028
#>     Attrib V49    0.07735190124173288
#>     Attrib V5    0.05673817731000383
#>     Attrib V50    0.03733470111322318
#>     Attrib V51    0.07651380104065711
#>     Attrib V52    0.0871326584820416
#>     Attrib V53    0.08632108454340152
#>     Attrib V54    0.08343511930590995
#>     Attrib V55    -0.004532087356724432
#>     Attrib V56    0.11938350617764222
#>     Attrib V57    0.09917551361224144
#>     Attrib V58    0.09473349835637353
#>     Attrib V59    0.15836498705046118
#>     Attrib V6    0.06792535243688479
#>     Attrib V60    0.06761705781013934
#>     Attrib V7    0.014882979919557188
#>     Attrib V8    0.03567692721940611
#>     Attrib V9    0.14188715221659856
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    -0.15787576958191263
#>     Attrib V1    0.39197896201720495
#>     Attrib V10    1.3171320959767756
#>     Attrib V11    1.2830067803769833
#>     Attrib V12    1.107223945563536
#>     Attrib V13    0.18251831968799792
#>     Attrib V14    -1.119027932158209
#>     Attrib V15    -0.9525763125690804
#>     Attrib V16    -0.6404831337379852
#>     Attrib V17    -0.2280456760237773
#>     Attrib V18    -0.06468815030595487
#>     Attrib V19    -0.30463775338163335
#>     Attrib V2    0.384672252412788
#>     Attrib V20    -0.2695830849889755
#>     Attrib V21    -0.12301524379655147
#>     Attrib V22    0.19148731984039571
#>     Attrib V23    0.38084585734108234
#>     Attrib V24    0.34429853298369184
#>     Attrib V25    0.8297427824622058
#>     Attrib V26    1.2454620944927164
#>     Attrib V27    0.8382590322872365
#>     Attrib V28    0.6074588323493479
#>     Attrib V29    0.32072389123270023
#>     Attrib V3    0.021763756155265563
#>     Attrib V30    0.6492864337660859
#>     Attrib V31    -0.24662765582111554
#>     Attrib V32    0.3026527277233293
#>     Attrib V33    0.11509318197002431
#>     Attrib V34    -0.026128773441597957
#>     Attrib V35    0.1438598882876478
#>     Attrib V36    -0.418283483535387
#>     Attrib V37    -0.6052744039963015
#>     Attrib V38    -0.3147819152028473
#>     Attrib V39    0.2566642973729005
#>     Attrib V4    0.1840216944575011
#>     Attrib V40    0.2694150784489021
#>     Attrib V41    0.4681090861744064
#>     Attrib V42    -0.16205826075897706
#>     Attrib V43    0.09676416735182294
#>     Attrib V44    -0.04292070895522312
#>     Attrib V45    0.5334924096450157
#>     Attrib V46    0.37370159569058276
#>     Attrib V47    0.48871353939932666
#>     Attrib V48    1.0012616055548387
#>     Attrib V49    1.1672559549452042
#>     Attrib V5    -0.22042613642560477
#>     Attrib V50    -0.4294952256443947
#>     Attrib V51    0.8651955149454504
#>     Attrib V52    1.140706832928521
#>     Attrib V53    -0.36348138486639603
#>     Attrib V54    -0.07892088946693991
#>     Attrib V55    -0.37869554471361405
#>     Attrib V56    -0.5294703023044643
#>     Attrib V57    -0.4927694674858489
#>     Attrib V58    -0.16314996360233422
#>     Attrib V59    -0.15024180847152765
#>     Attrib V6    -0.05320668258784243
#>     Attrib V60    -0.3262068681329409
#>     Attrib V7    -0.24592397529672327
#>     Attrib V8    -0.5033914592405219
#>     Attrib V9    1.1964106770696672
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.10676028214584768
#>     Attrib V1    0.22826608117114483
#>     Attrib V10    0.010644679164984348
#>     Attrib V11    0.031077360177462182
#>     Attrib V12    0.07327535676874966
#>     Attrib V13    0.040314363418068204
#>     Attrib V14    -0.2227389986987476
#>     Attrib V15    -0.10163129003151046
#>     Attrib V16    -0.02535081839932644
#>     Attrib V17    0.156018295038742
#>     Attrib V18    0.11392805426220456
#>     Attrib V19    0.06624243156068892
#>     Attrib V2    0.1713329479207792
#>     Attrib V20    0.2227529097066421
#>     Attrib V21    0.18014001768617144
#>     Attrib V22    0.09191277609817802
#>     Attrib V23    0.14136193284627105
#>     Attrib V24    0.08917555296432889
#>     Attrib V25    -0.0034438565945198213
#>     Attrib V26    -0.14109245104758483
#>     Attrib V27    -0.2119267928188646
#>     Attrib V28    -0.08335465563121856
#>     Attrib V29    -0.031036261747034156
#>     Attrib V3    0.10955636944015591
#>     Attrib V30    0.04799431040299897
#>     Attrib V31    -0.3194773783961158
#>     Attrib V32    -0.10938995979336197
#>     Attrib V33    0.07928238237718518
#>     Attrib V34    0.02697022533419337
#>     Attrib V35    0.14227223016083462
#>     Attrib V36    -0.010423301095485962
#>     Attrib V37    -0.09811723142391379
#>     Attrib V38    0.11105315539411253
#>     Attrib V39    0.09577989522505645
#>     Attrib V4    0.19894855110773238
#>     Attrib V40    -0.14246743647662752
#>     Attrib V41    -0.05040011629193418
#>     Attrib V42    0.02553686277743645
#>     Attrib V43    0.134197813600389
#>     Attrib V44    0.12142315562721735
#>     Attrib V45    0.2684271832968108
#>     Attrib V46    0.09530489315759533
#>     Attrib V47    0.06691872509309903
#>     Attrib V48    0.1960543573556273
#>     Attrib V49    0.21132077299575822
#>     Attrib V5    -0.088596632347241
#>     Attrib V50    -0.13251547165489483
#>     Attrib V51    0.12305237131926523
#>     Attrib V52    0.21104106703017797
#>     Attrib V53    0.11052287583088556
#>     Attrib V54    0.19290145123569113
#>     Attrib V55    -0.10317723810124578
#>     Attrib V56    0.1495873810898816
#>     Attrib V57    0.08294432838625643
#>     Attrib V58    0.09470674449029905
#>     Attrib V59    0.2073535494075998
#>     Attrib V6    -0.08336902937774468
#>     Attrib V60    0.05028773988202851
#>     Attrib V7    -0.061754908346484616
#>     Attrib V8    -0.2004457233380972
#>     Attrib V9    0.16486001444154594
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    -0.3489836398449512
#>     Attrib V1    0.18713442180130996
#>     Attrib V10    1.522522709259767
#>     Attrib V11    1.407991288437173
#>     Attrib V12    1.484594502480317
#>     Attrib V13    0.4008257848588341
#>     Attrib V14    -1.3294932577619032
#>     Attrib V15    -1.1006870096809693
#>     Attrib V16    -0.7175577153528389
#>     Attrib V17    -0.23165966647787573
#>     Attrib V18    0.04930659620931272
#>     Attrib V19    -0.18917340969329205
#>     Attrib V2    0.41496375857632345
#>     Attrib V20    -0.445215552337927
#>     Attrib V21    -0.21536294209208512
#>     Attrib V22    0.30938307598130754
#>     Attrib V23    0.5497729816285187
#>     Attrib V24    0.6388711459642643
#>     Attrib V25    1.294996609438932
#>     Attrib V26    1.7410859981005014
#>     Attrib V27    1.2485579001978564
#>     Attrib V28    0.758400888805742
#>     Attrib V29    0.12849368985970253
#>     Attrib V3    -0.018683691440117983
#>     Attrib V30    0.5758389697655644
#>     Attrib V31    -0.22551819155743644
#>     Attrib V32    0.4229192549091928
#>     Attrib V33    0.011106784782417686
#>     Attrib V34    -0.06525266164521533
#>     Attrib V35    0.05991365573441488
#>     Attrib V36    -0.5990191265416634
#>     Attrib V37    -0.9140492894176809
#>     Attrib V38    -0.4500479318168749
#>     Attrib V39    0.4026338153102359
#>     Attrib V4    0.2293639156545765
#>     Attrib V40    0.43574743312737724
#>     Attrib V41    0.6432922433599461
#>     Attrib V42    -0.1716034184916183
#>     Attrib V43    0.27570610625322806
#>     Attrib V44    0.05402672485969818
#>     Attrib V45    0.570152921189875
#>     Attrib V46    0.42995890934670844
#>     Attrib V47    0.6444266017566332
#>     Attrib V48    1.214110686297531
#>     Attrib V49    1.5196407783535173
#>     Attrib V5    -0.127547192280469
#>     Attrib V50    -0.5083795505793642
#>     Attrib V51    1.1488813881279407
#>     Attrib V52    1.4907905181831942
#>     Attrib V53    -0.16555765865462074
#>     Attrib V54    -0.03481296525842535
#>     Attrib V55    -0.39289047713708314
#>     Attrib V56    -0.5812119479395541
#>     Attrib V57    -0.6821965940543763
#>     Attrib V58    -0.21082093704875454
#>     Attrib V59    -0.15537771894420768
#>     Attrib V6    0.07812986834156443
#>     Attrib V60    -0.44447514968367224
#>     Attrib V7    -0.2401270788279847
#>     Attrib V8    -0.6172594586116187
#>     Attrib V9    1.2965056566135775
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.06093837934833862
#>     Attrib V1    -0.35847647271506505
#>     Attrib V10    -0.0687014326637824
#>     Attrib V11    -0.21187734679855344
#>     Attrib V12    -0.49265752492894305
#>     Attrib V13    -0.30579718798888617
#>     Attrib V14    0.5709570311787217
#>     Attrib V15    0.21493225769155067
#>     Attrib V16    0.4151307894160702
#>     Attrib V17    -0.03283668265329181
#>     Attrib V18    0.26034220154673465
#>     Attrib V19    0.18341560700022816
#>     Attrib V2    -0.24082046831959386
#>     Attrib V20    -0.42720327448186546
#>     Attrib V21    -0.1543863675672228
#>     Attrib V22    -0.015766502816143696
#>     Attrib V23    -0.025732813962969208
#>     Attrib V24    -0.13731047519607859
#>     Attrib V25    -0.07168737964733786
#>     Attrib V26    -0.03572526456984672
#>     Attrib V27    -0.06147210262441388
#>     Attrib V28    -0.07014839072157293
#>     Attrib V29    -0.13820207845589202
#>     Attrib V3    -0.11288640569462037
#>     Attrib V30    -0.1503794097800085
#>     Attrib V31    0.7138663718758329
#>     Attrib V32    0.3031991280612608
#>     Attrib V33    0.14290095368899122
#>     Attrib V34    0.021071643231599796
#>     Attrib V35    -0.03424256443748882
#>     Attrib V36    0.7273076082096054
#>     Attrib V37    0.6103058552868267
#>     Attrib V38    -0.02123966557658145
#>     Attrib V39    -0.23504309422080227
#>     Attrib V4    0.013990922291217985
#>     Attrib V40    0.4880641054979549
#>     Attrib V41    0.30640950394830574
#>     Attrib V42    0.018894159376423067
#>     Attrib V43    -0.22410765296783028
#>     Attrib V44    0.05533984011204839
#>     Attrib V45    -0.5878756414335612
#>     Attrib V46    -0.3690028112701024
#>     Attrib V47    -0.19300936348551428
#>     Attrib V48    -0.39533153228495943
#>     Attrib V49    -0.4916911527300202
#>     Attrib V5    0.48234644632119406
#>     Attrib V50    0.5774101248130109
#>     Attrib V51    -0.05697310865656438
#>     Attrib V52    -0.32520829337624
#>     Attrib V53    -0.007991334294035134
#>     Attrib V54    -0.06634721796773779
#>     Attrib V55    0.33371970287084557
#>     Attrib V56    -0.30258659468515864
#>     Attrib V57    0.3003487588572598
#>     Attrib V58    -0.03911292052170018
#>     Attrib V59    -0.10012805664563457
#>     Attrib V6    0.4074583636079639
#>     Attrib V60    0.26937170482508505
#>     Attrib V7    0.3997707919939078
#>     Attrib V8    0.9533157740196659
#>     Attrib V9    -0.2977327021755833
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.23131612874614468
#>     Attrib V1    0.44159524438318476
#>     Attrib V10    -0.2596568935327416
#>     Attrib V11    -0.22114604219419107
#>     Attrib V12    0.007853566410205182
#>     Attrib V13    -0.02425200605584711
#>     Attrib V14    -0.35505441218441175
#>     Attrib V15    -0.07397284039252158
#>     Attrib V16    -0.04599961487852283
#>     Attrib V17    0.5462583473057893
#>     Attrib V18    0.4463937636855307
#>     Attrib V19    0.15794134613956828
#>     Attrib V2    0.1916245764805887
#>     Attrib V20    0.6865334775092725
#>     Attrib V21    0.44513632947756154
#>     Attrib V22    0.23591434332893058
#>     Attrib V23    0.308480423524018
#>     Attrib V24    0.11271317231741167
#>     Attrib V25    -0.07283532876272328
#>     Attrib V26    -0.5711787350959
#>     Attrib V27    -0.6686439426600207
#>     Attrib V28    -0.36073070171021737
#>     Attrib V29    -0.18815452887126544
#>     Attrib V3    0.11285593682716827
#>     Attrib V30    -0.0051044118522436625
#>     Attrib V31    -0.8486026077036171
#>     Attrib V32    -0.4969250965280584
#>     Attrib V33    0.03939498338974048
#>     Attrib V34    0.05065315894368225
#>     Attrib V35    0.3379671755484439
#>     Attrib V36    -0.09764743021459224
#>     Attrib V37    -0.24822659458552507
#>     Attrib V38    0.16324352001527903
#>     Attrib V39    0.19060014504486275
#>     Attrib V4    0.21182728371474915
#>     Attrib V40    -0.3841152898949937
#>     Attrib V41    -0.26299671656798534
#>     Attrib V42    0.22870721420367746
#>     Attrib V43    0.2826731688969551
#>     Attrib V44    0.11499650365552393
#>     Attrib V45    0.483716871999481
#>     Attrib V46    0.06508909110791412
#>     Attrib V47    0.03490439230703392
#>     Attrib V48    0.20128018769542688
#>     Attrib V49    0.23008911256542158
#>     Attrib V5    -0.2570730233137578
#>     Attrib V50    -0.2320277600551212
#>     Attrib V51    0.29822298068150277
#>     Attrib V52    0.3572672522919941
#>     Attrib V53    0.17488173301032664
#>     Attrib V54    0.43652659753013895
#>     Attrib V55    -0.12839378525165523
#>     Attrib V56    0.5000406400261055
#>     Attrib V57    0.049508515591545364
#>     Attrib V58    0.39940218049294685
#>     Attrib V59    0.3736446872919332
#>     Attrib V6    -0.10552576010533819
#>     Attrib V60    0.12187564511760043
#>     Attrib V7    -0.1418484504124778
#>     Attrib V8    -0.3837696240566609
#>     Attrib V9    0.2139368702263906
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.13706176382721735
#>     Attrib V1    0.4003990115149839
#>     Attrib V10    -0.26933958017131726
#>     Attrib V11    -0.13064255270212388
#>     Attrib V12    -0.04528470001161601
#>     Attrib V13    0.025874223532646748
#>     Attrib V14    -0.228749919980927
#>     Attrib V15    -0.04592812143292002
#>     Attrib V16    0.003613235457818556
#>     Attrib V17    0.43793214536072145
#>     Attrib V18    0.36684975721557617
#>     Attrib V19    0.21551583134577873
#>     Attrib V2    0.2625159637906314
#>     Attrib V20    0.5521391547182204
#>     Attrib V21    0.3882497128175763
#>     Attrib V22    0.24869191183032627
#>     Attrib V23    0.26006542117804543
#>     Attrib V24    0.042043303184514096
#>     Attrib V25    -0.13669657294234966
#>     Attrib V26    -0.4761788760811402
#>     Attrib V27    -0.5123636288041309
#>     Attrib V28    -0.29346778767532866
#>     Attrib V29    -0.04917026261114508
#>     Attrib V3    0.10644825698476687
#>     Attrib V30    -0.0020251091676419517
#>     Attrib V31    -0.7408338172521877
#>     Attrib V32    -0.44155643473709677
#>     Attrib V33    0.042224244252067666
#>     Attrib V34    0.011395756614576915
#>     Attrib V35    0.24653621151335212
#>     Attrib V36    -0.09152541403302294
#>     Attrib V37    -0.19374545591205314
#>     Attrib V38    0.1342221987566659
#>     Attrib V39    0.16010129189771233
#>     Attrib V4    0.24362988726387455
#>     Attrib V40    -0.26959181959090933
#>     Attrib V41    -0.17770213235173957
#>     Attrib V42    0.1542833937541069
#>     Attrib V43    0.26640959193295966
#>     Attrib V44    0.031727930815903076
#>     Attrib V45    0.3876644105950459
#>     Attrib V46    0.1009133671659695
#>     Attrib V47    -0.013535393067055524
#>     Attrib V48    0.17139195149918066
#>     Attrib V49    0.1796860696490094
#>     Attrib V5    -0.2107077469601276
#>     Attrib V50    -0.23994625830793934
#>     Attrib V51    0.22491944436934647
#>     Attrib V52    0.3834648221062129
#>     Attrib V53    0.22199701984091735
#>     Attrib V54    0.35564301056745184
#>     Attrib V55    -0.10889311825439094
#>     Attrib V56    0.4418061447839246
#>     Attrib V57    0.0690825926723107
#>     Attrib V58    0.362282913766957
#>     Attrib V59    0.41500303852539616
#>     Attrib V6    -0.13668204581615112
#>     Attrib V60    0.12872755971950453
#>     Attrib V7    -0.08466537166019299
#>     Attrib V8    -0.32632573713058677
#>     Attrib V9    0.16767739786879554
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.21731444149421725
#>     Attrib V1    0.35473777111240706
#>     Attrib V10    -0.1859609357181649
#>     Attrib V11    -0.1206947106634134
#>     Attrib V12    0.018364853469840427
#>     Attrib V13    0.08460503117617373
#>     Attrib V14    -0.2356595777057958
#>     Attrib V15    -0.08381855715322521
#>     Attrib V16    -0.06992295434313121
#>     Attrib V17    0.35981866872236445
#>     Attrib V18    0.3192986605925049
#>     Attrib V19    0.12909635182288545
#>     Attrib V2    0.18179066786092066
#>     Attrib V20    0.4910715172983386
#>     Attrib V21    0.35077395846824566
#>     Attrib V22    0.17486955562561204
#>     Attrib V23    0.2629521997824853
#>     Attrib V24    0.10524888169015077
#>     Attrib V25    -0.009715052651220399
#>     Attrib V26    -0.3797734501136457
#>     Attrib V27    -0.39700603153530556
#>     Attrib V28    -0.25762415071684147
#>     Attrib V29    -0.07815194445518912
#>     Attrib V3    0.17081874448796094
#>     Attrib V30    -0.001764726409579879
#>     Attrib V31    -0.6208439469901581
#>     Attrib V32    -0.29415741758126507
#>     Attrib V33    0.022183562887627108
#>     Attrib V34    0.040547231728226725
#>     Attrib V35    0.2051719333992553
#>     Attrib V36    -0.07256911059700843
#>     Attrib V37    -0.13480875350040614
#>     Attrib V38    0.10611321761129017
#>     Attrib V39    0.21870122001926415
#>     Attrib V4    0.2003226277108695
#>     Attrib V40    -0.20385368613040858
#>     Attrib V41    -0.10848241935020214
#>     Attrib V42    0.16586407973534836
#>     Attrib V43    0.17081206464684123
#>     Attrib V44    0.07654762973786025
#>     Attrib V45    0.29144440690004203
#>     Attrib V46    0.08063990811446026
#>     Attrib V47    0.0488111625331428
#>     Attrib V48    0.12486981039163836
#>     Attrib V49    0.22972655111771997
#>     Attrib V5    -0.14338964488443398
#>     Attrib V50    -0.19636569170642254
#>     Attrib V51    0.15568088304500524
#>     Attrib V52    0.2577247833214853
#>     Attrib V53    0.15456845702183958
#>     Attrib V54    0.2653862759195393
#>     Attrib V55    -0.11046105774413786
#>     Attrib V56    0.3199624093205562
#>     Attrib V57    0.0370553926082836
#>     Attrib V58    0.23897040825982935
#>     Attrib V59    0.35315558914157424
#>     Attrib V6    -0.05000309424503419
#>     Attrib V60    0.1291990515303416
#>     Attrib V7    -0.03181309214669619
#>     Attrib V8    -0.3270482950085327
#>     Attrib V9    0.1408098421290844
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.2156367699106878
#>     Attrib V1    0.5056595280584207
#>     Attrib V10    -0.22695959294421872
#>     Attrib V11    -0.15192975867929748
#>     Attrib V12    0.01426303555860179
#>     Attrib V13    -0.0027001648253727273
#>     Attrib V14    -0.38531987984457167
#>     Attrib V15    -0.04573843620162067
#>     Attrib V16    -0.0831025839891967
#>     Attrib V17    0.5215646491164617
#>     Attrib V18    0.4233976123608653
#>     Attrib V19    0.13611026607102567
#>     Attrib V2    0.24044268459895943
#>     Attrib V20    0.6268299684392804
#>     Attrib V21    0.4338729441597034
#>     Attrib V22    0.2400558989515808
#>     Attrib V23    0.32697228033372583
#>     Attrib V24    0.08149941448620326
#>     Attrib V25    -0.08995667678002353
#>     Attrib V26    -0.5037515215703834
#>     Attrib V27    -0.6859245278080291
#>     Attrib V28    -0.4468848005910097
#>     Attrib V29    -0.2578645303688047
#>     Attrib V3    0.10004387108517042
#>     Attrib V30    -0.020442072740359404
#>     Attrib V31    -0.8002397832912507
#>     Attrib V32    -0.47777412840290534
#>     Attrib V33    0.06971817883262278
#>     Attrib V34    0.009535466345857339
#>     Attrib V35    0.34741013148589583
#>     Attrib V36    -0.12395445960352483
#>     Attrib V37    -0.194648806959218
#>     Attrib V38    0.09383673536708098
#>     Attrib V39    0.2096259501887417
#>     Attrib V4    0.21388666764772693
#>     Attrib V40    -0.37531026387447597
#>     Attrib V41    -0.25397271710000785
#>     Attrib V42    0.16566387593226112
#>     Attrib V43    0.2590052828152765
#>     Attrib V44    0.12103426758576082
#>     Attrib V45    0.3777642358338545
#>     Attrib V46    0.0833233926621228
#>     Attrib V47    -0.01869301616460541
#>     Attrib V48    0.19937999786142932
#>     Attrib V49    0.2681354959763141
#>     Attrib V5    -0.33971449444189533
#>     Attrib V50    -0.2686441896696437
#>     Attrib V51    0.21738961210106864
#>     Attrib V52    0.39018855620211446
#>     Attrib V53    0.16542735346025006
#>     Attrib V54    0.44768192649895067
#>     Attrib V55    -0.1004336248511053
#>     Attrib V56    0.5323072847538608
#>     Attrib V57    0.04175878553792223
#>     Attrib V58    0.4244333856761064
#>     Attrib V59    0.4062318119499391
#>     Attrib V6    -0.1555674857863754
#>     Attrib V60    0.19429587035717022
#>     Attrib V7    -0.12543984245599724
#>     Attrib V8    -0.4597918973186578
#>     Attrib V9    0.21106284914516288
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.12542961975620023
#>     Attrib V1    -0.26514603869846215
#>     Attrib V10    -0.28214861972050204
#>     Attrib V11    -0.2579916923978368
#>     Attrib V12    -0.49955241792670296
#>     Attrib V13    -0.3460322474727213
#>     Attrib V14    0.8850860948549544
#>     Attrib V15    0.5635631741931487
#>     Attrib V16    0.4283041831469904
#>     Attrib V17    -0.40494809201442966
#>     Attrib V18    -0.286433437184898
#>     Attrib V19    0.14594713002826706
#>     Attrib V2    -0.12864612099485528
#>     Attrib V20    -0.2996952843105375
#>     Attrib V21    -0.16485562469237228
#>     Attrib V22    -0.16710848214746357
#>     Attrib V23    -0.2978473585284386
#>     Attrib V24    -0.10715362687511615
#>     Attrib V25    -0.04817471659727434
#>     Attrib V26    0.27652853366485547
#>     Attrib V27    0.2781878323652641
#>     Attrib V28    -0.0010138576578562369
#>     Attrib V29    -0.12742753473015997
#>     Attrib V3    0.14760934426217118
#>     Attrib V30    -0.48747147607450403
#>     Attrib V31    0.7750163215285425
#>     Attrib V32    0.24244905493190314
#>     Attrib V33    -0.2307778685727969
#>     Attrib V34    -0.09144703866530401
#>     Attrib V35    -0.43170520405813595
#>     Attrib V36    0.3834360900254365
#>     Attrib V37    0.5608445425367918
#>     Attrib V38    -0.08389346679807091
#>     Attrib V39    -0.4351539954973273
#>     Attrib V4    -0.007216164267334087
#>     Attrib V40    0.25748903173833915
#>     Attrib V41    -0.028122052148047704
#>     Attrib V42    -0.30155064175101176
#>     Attrib V43    -0.5907035971144081
#>     Attrib V44    -0.11591947742703428
#>     Attrib V45    -0.6279095660658333
#>     Attrib V46    -0.07483029666237145
#>     Attrib V47    -0.007739306933231993
#>     Attrib V48    -0.37639977920828205
#>     Attrib V49    -0.5869090620064694
#>     Attrib V5    0.6990187552008578
#>     Attrib V50    0.9319139249925678
#>     Attrib V51    -0.28130946758924175
#>     Attrib V52    -0.7271828430360842
#>     Attrib V53    0.08834323966901539
#>     Attrib V54    -0.0482130391980751
#>     Attrib V55    0.645149533062411
#>     Attrib V56    -0.3115869292252684
#>     Attrib V57    0.4156053541185777
#>     Attrib V58    -0.3831540058285022
#>     Attrib V59    -0.33717987469712374
#>     Attrib V6    0.25771623152744266
#>     Attrib V60    0.16432076274275031
#>     Attrib V7    0.2295044914282046
#>     Attrib V8    0.8650832279399623
#>     Attrib V9    -0.6387106441996376
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.11310121800413656
#>     Attrib V1    -0.03989759982774043
#>     Attrib V10    0.07928111631001865
#>     Attrib V11    0.03843369567870215
#>     Attrib V12    4.101010002346E-4
#>     Attrib V13    0.018443225719894513
#>     Attrib V14    0.062198720212184616
#>     Attrib V15    0.02358552391221192
#>     Attrib V16    0.1421372870111249
#>     Attrib V17    0.08071676404978875
#>     Attrib V18    0.1127415467548775
#>     Attrib V19    0.09974152172974804
#>     Attrib V2    -0.025756446736458535
#>     Attrib V20    -0.07235969677486317
#>     Attrib V21    -0.04690249668018638
#>     Attrib V22    -0.003127611182793808
#>     Attrib V23    -0.043402681613769645
#>     Attrib V24    -0.029066827531071166
#>     Attrib V25    -0.03214722301009791
#>     Attrib V26    -0.08105369837218344
#>     Attrib V27    -0.07389999966186458
#>     Attrib V28    -0.04587726980216091
#>     Attrib V29    -0.0681068216093238
#>     Attrib V3    0.06428833630045533
#>     Attrib V30    -0.08147150172413752
#>     Attrib V31    0.06684140307404694
#>     Attrib V32    0.0775078317221265
#>     Attrib V33    0.017940904260412255
#>     Attrib V34    0.05874966455164429
#>     Attrib V35    0.009893135203356801
#>     Attrib V36    0.14126649511649883
#>     Attrib V37    0.18570556144603664
#>     Attrib V38    0.07928153877726189
#>     Attrib V39    0.04441113717011883
#>     Attrib V4    0.08221353491502653
#>     Attrib V40    0.12704237647475217
#>     Attrib V41    0.1565779171868106
#>     Attrib V42    0.12056041764580568
#>     Attrib V43    0.011029027863293298
#>     Attrib V44    0.03003493589273804
#>     Attrib V45    -0.023908715380204924
#>     Attrib V46    0.01789296813258012
#>     Attrib V47    0.047696417227916975
#>     Attrib V48    0.009948106414145395
#>     Attrib V49    -0.03651725439042699
#>     Attrib V5    0.19234768547689843
#>     Attrib V50    0.14350041647330655
#>     Attrib V51    0.06426864613747599
#>     Attrib V52    0.02051020806114442
#>     Attrib V53    0.026529238878786603
#>     Attrib V54    -0.012464964951350585
#>     Attrib V55    0.09312249102068718
#>     Attrib V56    -0.03434715261520207
#>     Attrib V57    0.11323729191404243
#>     Attrib V58    0.040127354133429216
#>     Attrib V59    0.008329220385744726
#>     Attrib V6    0.13871036984488033
#>     Attrib V60    0.07114617877566834
#>     Attrib V7    0.08203372011827798
#>     Attrib V8    0.16770362838430664
#>     Attrib V9    0.05057787709370063
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.04664298475360853
#>     Attrib V1    -0.18836068478374454
#>     Attrib V10    0.15944040137646034
#>     Attrib V11    0.0864331854491844
#>     Attrib V12    -0.07748044302230112
#>     Attrib V13    -0.07081782836861335
#>     Attrib V14    0.2088494081616696
#>     Attrib V15    0.16428246218090672
#>     Attrib V16    0.24068524944476866
#>     Attrib V17    0.09208728051997503
#>     Attrib V18    0.19146151860271834
#>     Attrib V19    0.21447579887111407
#>     Attrib V2    -0.05500591300000926
#>     Attrib V20    -0.14757808298750286
#>     Attrib V21    -0.054325519009569806
#>     Attrib V22    0.10127600825941858
#>     Attrib V23    -0.03920548313562354
#>     Attrib V24    -0.07894494333035011
#>     Attrib V25    -0.10614906048367923
#>     Attrib V26    -0.12245934764888289
#>     Attrib V27    -0.1088367334285944
#>     Attrib V28    -0.10346539850924828
#>     Attrib V29    -0.11548891423645466
#>     Attrib V3    -0.057133534602723225
#>     Attrib V30    -0.06363164745879303
#>     Attrib V31    0.3191163883036498
#>     Attrib V32    0.11302773748818544
#>     Attrib V33    0.10792744502623608
#>     Attrib V34    0.041193768969666124
#>     Attrib V35    0.07738659368630682
#>     Attrib V36    0.352494172891408
#>     Attrib V37    0.333628807152451
#>     Attrib V38    0.1448531715220888
#>     Attrib V39    0.08382524825084497
#>     Attrib V4    0.03499431985412357
#>     Attrib V40    0.33967434338895325
#>     Attrib V41    0.334210806355561
#>     Attrib V42    0.14066594150250228
#>     Attrib V43    0.030569063668457505
#>     Attrib V44    0.07772331080803874
#>     Attrib V45    -0.19954948581502882
#>     Attrib V46    -0.14369977044661572
#>     Attrib V47    -0.06926387719299155
#>     Attrib V48    -0.06994553940569696
#>     Attrib V49    -0.19832638206293832
#>     Attrib V5    0.30893752045899275
#>     Attrib V50    0.17366786709058865
#>     Attrib V51    -0.0032959689729377445
#>     Attrib V52    -0.08703686221871401
#>     Attrib V53    -0.052142436595953495
#>     Attrib V54    -0.07456879305940659
#>     Attrib V55    0.15049555490827307
#>     Attrib V56    -0.16923037508092287
#>     Attrib V57    0.16788732730791137
#>     Attrib V58    -0.04690354752332491
#>     Attrib V59    -0.016998188622222337
#>     Attrib V6    0.2626268107470471
#>     Attrib V60    0.12782585466516935
#>     Attrib V7    0.18022969282555268
#>     Attrib V8    0.48670726965628786
#>     Attrib V9    -0.037681933346267245
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1550375961212524
#>     Attrib V1    0.012918065829470318
#>     Attrib V10    0.06749068012801718
#>     Attrib V11    0.03401709485596921
#>     Attrib V12    -0.011950252390732401
#>     Attrib V13    -0.017027919544934607
#>     Attrib V14    0.0664741769941793
#>     Attrib V15    -0.0012010643387197917
#>     Attrib V16    0.055709705964061856
#>     Attrib V17    -0.02274880730032643
#>     Attrib V18    0.08258086168223272
#>     Attrib V19    0.012319023749062899
#>     Attrib V2    0.057184523202377095
#>     Attrib V20    0.003286450342167635
#>     Attrib V21    0.02651580904978768
#>     Attrib V22    -0.0025005977444826155
#>     Attrib V23    -0.003110539168538928
#>     Attrib V24    -0.0718586670514848
#>     Attrib V25    -0.04249889872841641
#>     Attrib V26    -0.03751420467271233
#>     Attrib V27    -0.03332080850107518
#>     Attrib V28    -0.05669993363489368
#>     Attrib V29    -0.07300531612630973
#>     Attrib V3    0.1202235940755234
#>     Attrib V30    -0.09791881650347391
#>     Attrib V31    0.02755797649893086
#>     Attrib V32    0.03191929637078365
#>     Attrib V33    0.022697715276148125
#>     Attrib V34    0.053016059287037245
#>     Attrib V35    0.008589626122852918
#>     Attrib V36    0.17195343987131467
#>     Attrib V37    0.10078227521943602
#>     Attrib V38    0.04587931236833905
#>     Attrib V39    0.06965793512811422
#>     Attrib V4    0.060764514429626035
#>     Attrib V40    0.08908409529573748
#>     Attrib V41    0.06094133265799758
#>     Attrib V42    0.062086759348285274
#>     Attrib V43    0.028376741838361846
#>     Attrib V44    0.10679406416431086
#>     Attrib V45    -0.04051108216090505
#>     Attrib V46    -0.007679489575173086
#>     Attrib V47    0.0804504029937656
#>     Attrib V48    0.04052386553103769
#>     Attrib V49    0.04213778645804638
#>     Attrib V5    0.16616575068199388
#>     Attrib V50    0.05299724007387792
#>     Attrib V51    0.06886337999151998
#>     Attrib V52    -0.0017600789051848136
#>     Attrib V53    0.00974519446994752
#>     Attrib V54    -0.004259350453331187
#>     Attrib V55    0.09481961159051577
#>     Attrib V56    0.011666425898125861
#>     Attrib V57    0.04749103768319465
#>     Attrib V58    0.013897543905140681
#>     Attrib V59    0.08004610685729896
#>     Attrib V6    0.07391680168974464
#>     Attrib V60    0.08378775540882846
#>     Attrib V7    0.10186355393984356
#>     Attrib V8    0.19088963379797766
#>     Attrib V9    0.04007318351167093
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    -0.11335911925655542
#>     Attrib V1    0.2307302968810566
#>     Attrib V10    0.618467462568239
#>     Attrib V11    0.49814915766943585
#>     Attrib V12    0.6318887541164783
#>     Attrib V13    0.12255063239528036
#>     Attrib V14    -0.7824179084635338
#>     Attrib V15    -0.5307189624034745
#>     Attrib V16    -0.4740102088165942
#>     Attrib V17    0.06184370485253487
#>     Attrib V18    0.02322457025725676
#>     Attrib V19    -0.20650040359055452
#>     Attrib V2    0.2411086872783014
#>     Attrib V20    -0.01074602334207012
#>     Attrib V21    -0.06740381281503567
#>     Attrib V22    0.1947012554206842
#>     Attrib V23    0.4007517679965919
#>     Attrib V24    0.3123875284228322
#>     Attrib V25    0.48757605283486816
#>     Attrib V26    0.4288918424146731
#>     Attrib V27    0.29140316311847986
#>     Attrib V28    0.4062379698182663
#>     Attrib V29    0.2689755709217617
#>     Attrib V3    -0.039477771520737275
#>     Attrib V30    0.5473830846474492
#>     Attrib V31    -0.3974910610298062
#>     Attrib V32    -0.05157696210004281
#>     Attrib V33    0.1659005520795581
#>     Attrib V34    -2.2783904837610225E-4
#>     Attrib V35    0.2159098486601746
#>     Attrib V36    -0.2747454180163596
#>     Attrib V37    -0.42471101647959786
#>     Attrib V38    -0.09303111678551837
#>     Attrib V39    0.23173454964291873
#>     Attrib V4    0.21605457649750096
#>     Attrib V40    -0.06633312610704672
#>     Attrib V41    0.15639467265797036
#>     Attrib V42    0.1318959336918605
#>     Attrib V43    0.2309593882132115
#>     Attrib V44    -0.009872460223958365
#>     Attrib V45    0.5405149584956904
#>     Attrib V46    0.21238457275477465
#>     Attrib V47    0.21378962111222752
#>     Attrib V48    0.6108792442964677
#>     Attrib V49    0.7463522850497262
#>     Attrib V5    -0.21937831035545258
#>     Attrib V50    -0.5098423017031054
#>     Attrib V51    0.44195842727104073
#>     Attrib V52    0.7729024813568313
#>     Attrib V53    -0.20861692918554822
#>     Attrib V54    0.08761683109592577
#>     Attrib V55    -0.3981238878548955
#>     Attrib V56    -0.17850297202928492
#>     Attrib V57    -0.24868802572627197
#>     Attrib V58    0.023808025548218408
#>     Attrib V59    0.07121883471370268
#>     Attrib V6    -0.13010574902097333
#>     Attrib V60    -0.26848856586161446
#>     Attrib V7    -0.18967894776374986
#>     Attrib V8    -0.4676424176577757
#>     Attrib V9    0.7340199322629487
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.19462547746793493
#>     Attrib V1    0.614606805229335
#>     Attrib V10    -0.3539679078074307
#>     Attrib V11    -0.2858338205212341
#>     Attrib V12    -0.0053570405709733185
#>     Attrib V13    0.042913280420328076
#>     Attrib V14    -0.25869251915526875
#>     Attrib V15    0.017354872954769302
#>     Attrib V16    -0.03842678032412321
#>     Attrib V17    0.5948769263751201
#>     Attrib V18    0.5090282991000349
#>     Attrib V19    0.23897757362573707
#>     Attrib V2    0.29105219382368874
#>     Attrib V20    0.8177122708019684
#>     Attrib V21    0.6214558138987936
#>     Attrib V22    0.3253816261675981
#>     Attrib V23    0.328097449491548
#>     Attrib V24    0.07449681188083956
#>     Attrib V25    -0.18275519640759041
#>     Attrib V26    -0.6247718121810868
#>     Attrib V27    -0.6866383195271694
#>     Attrib V28    -0.36157113906583915
#>     Attrib V29    0.02325804217056265
#>     Attrib V3    0.1380129488082833
#>     Attrib V30    0.0747556554759845
#>     Attrib V31    -0.9741986742307739
#>     Attrib V32    -0.6870819871389752
#>     Attrib V33    -0.0495251593072226
#>     Attrib V34    -0.10569084695576876
#>     Attrib V35    0.2747628875816885
#>     Attrib V36    -0.10583347974030849
#>     Attrib V37    -0.20410852868707016
#>     Attrib V38    0.19834034260722366
#>     Attrib V39    0.24866066344021392
#>     Attrib V4    0.25965396053617684
#>     Attrib V40    -0.4252910427794912
#>     Attrib V41    -0.2530171751068554
#>     Attrib V42    0.2235260484835277
#>     Attrib V43    0.3254253118647281
#>     Attrib V44    0.11985407310366207
#>     Attrib V45    0.4958181180171786
#>     Attrib V46    0.03989303175106349
#>     Attrib V47    -0.06724347522579019
#>     Attrib V48    0.20822382921878754
#>     Attrib V49    0.27004825931211723
#>     Attrib V5    -0.2855035797646491
#>     Attrib V50    -0.2915371623871528
#>     Attrib V51    0.3226356227321603
#>     Attrib V52    0.49175478686862584
#>     Attrib V53    0.2572114355917794
#>     Attrib V54    0.5168644423055142
#>     Attrib V55    -0.06027157288575651
#>     Attrib V56    0.5953847552018109
#>     Attrib V57    0.00986383352536468
#>     Attrib V58    0.48763461679167364
#>     Attrib V59    0.5394828687508019
#>     Attrib V6    -0.12432730884166808
#>     Attrib V60    0.21433360209515628
#>     Attrib V7    -0.06884742611217703
#>     Attrib V8    -0.5256575020707525
#>     Attrib V9    0.17450346272385026
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.10294869574907971
#>     Attrib V1    -0.21711755022666954
#>     Attrib V10    -0.32936101362637915
#>     Attrib V11    -0.28402680894702953
#>     Attrib V12    -0.6132665959449127
#>     Attrib V13    -0.4405194729029136
#>     Attrib V14    0.8469974928758477
#>     Attrib V15    0.5300567928902068
#>     Attrib V16    0.4638209235729805
#>     Attrib V17    -0.31518777059035663
#>     Attrib V18    -0.18789903667131763
#>     Attrib V19    0.1392817212548941
#>     Attrib V2    -0.12379420978154805
#>     Attrib V20    -0.2706929550974216
#>     Attrib V21    -0.06582775698965465
#>     Attrib V22    -0.21988683342317192
#>     Attrib V23    -0.2846435209292638
#>     Attrib V24    -0.09217820223088109
#>     Attrib V25    -0.03844768653703259
#>     Attrib V26    0.22186878011901043
#>     Attrib V27    0.24138001824556074
#>     Attrib V28    -0.11679799615717941
#>     Attrib V29    -0.23837520363635026
#>     Attrib V3    0.10222758842384372
#>     Attrib V30    -0.48724334491502397
#>     Attrib V31    0.8157257799353511
#>     Attrib V32    0.21248793356324058
#>     Attrib V33    -0.20652827530947948
#>     Attrib V34    -0.09580674858423568
#>     Attrib V35    -0.3817883983773203
#>     Attrib V36    0.43486230908656914
#>     Attrib V37    0.5993505724772616
#>     Attrib V38    -0.08689181282501625
#>     Attrib V39    -0.4554106181497946
#>     Attrib V4    0.04190814374150708
#>     Attrib V40    0.27854674137391733
#>     Attrib V41    0.004327777385928769
#>     Attrib V42    -0.28487095744727664
#>     Attrib V43    -0.5158029194118982
#>     Attrib V44    -0.01650313934064839
#>     Attrib V45    -0.6446094497585098
#>     Attrib V46    -0.11577540794691048
#>     Attrib V47    -0.03797692592079183
#>     Attrib V48    -0.39295041900911487
#>     Attrib V49    -0.6475377824188139
#>     Attrib V5    0.71121735572778
#>     Attrib V50    0.9472288513678423
#>     Attrib V51    -0.2921137760084596
#>     Attrib V52    -0.7002980176130227
#>     Attrib V53    0.058533982804732654
#>     Attrib V54    -0.06295164656740124
#>     Attrib V55    0.6268953122471954
#>     Attrib V56    -0.32268328803772234
#>     Attrib V57    0.5179175721496571
#>     Attrib V58    -0.3746457739512127
#>     Attrib V59    -0.3224197768186138
#>     Attrib V6    0.26569953444772776
#>     Attrib V60    0.2167709315478263
#>     Attrib V7    0.32021385389495555
#>     Attrib V8    0.8749731735349515
#>     Attrib V9    -0.6256249318269725
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.1705373334479299
#>     Attrib V1    0.38203298907835187
#>     Attrib V10    -0.13642399952124729
#>     Attrib V11    -0.10648604619515521
#>     Attrib V12    0.00995666710937187
#>     Attrib V13    0.012269610352721472
#>     Attrib V14    -0.15668481743025084
#>     Attrib V15    -0.05919324260777054
#>     Attrib V16    0.03587340821031116
#>     Attrib V17    0.3187992707428004
#>     Attrib V18    0.2644379510540217
#>     Attrib V19    0.09987433666004426
#>     Attrib V2    0.2111093445696951
#>     Attrib V20    0.4224897448653465
#>     Attrib V21    0.2807802191887296
#>     Attrib V22    0.11881519412299149
#>     Attrib V23    0.10674342221081426
#>     Attrib V24    0.06515550255101182
#>     Attrib V25    -0.11042983452483005
#>     Attrib V26    -0.3796554298359526
#>     Attrib V27    -0.44956953155525
#>     Attrib V28    -0.31872806023192035
#>     Attrib V29    -0.11865764275931011
#>     Attrib V3    0.11171722809931742
#>     Attrib V30    -0.07037642611174862
#>     Attrib V31    -0.45693452712753313
#>     Attrib V32    -0.26297582801560004
#>     Attrib V33    -0.008261349210236734
#>     Attrib V34    0.008532479787976345
#>     Attrib V35    0.20659842546529358
#>     Attrib V36    -0.04479243462155632
#>     Attrib V37    -0.11207131017881267
#>     Attrib V38    0.06357338347270507
#>     Attrib V39    0.10229347137816013
#>     Attrib V4    0.1800922093261635
#>     Attrib V40    -0.19836075527363545
#>     Attrib V41    -0.18364353750632753
#>     Attrib V42    0.07491344108800604
#>     Attrib V43    0.2093892554499605
#>     Attrib V44    0.054436453204963556
#>     Attrib V45    0.20880890551210146
#>     Attrib V46    0.06375004691551418
#>     Attrib V47    -0.04363713213803843
#>     Attrib V48    0.1303895983934825
#>     Attrib V49    0.16150743303307633
#>     Attrib V5    -0.1300155525346298
#>     Attrib V50    -0.13291767447083702
#>     Attrib V51    0.1385176712485271
#>     Attrib V52    0.25202417611132666
#>     Attrib V53    0.14109754054039925
#>     Attrib V54    0.3003976465105906
#>     Attrib V55    -0.024207607122108215
#>     Attrib V56    0.3724041048384728
#>     Attrib V57    0.054647373262460976
#>     Attrib V58    0.3001926141310113
#>     Attrib V59    0.27773972996772595
#>     Attrib V6    -0.049318393236614355
#>     Attrib V60    0.14748091217871584
#>     Attrib V7    -0.0658373744536458
#>     Attrib V8    -0.31673099095637847
#>     Attrib V9    0.137890100351911
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.26473534448011565
#>     Attrib V1    0.7623357824636374
#>     Attrib V10    -0.5083526468043812
#>     Attrib V11    -0.36688764828120013
#>     Attrib V12    -0.08039283178472688
#>     Attrib V13    0.06297474727443594
#>     Attrib V14    -0.3843916937505469
#>     Attrib V15    0.016626453483115457
#>     Attrib V16    -0.06510655728632524
#>     Attrib V17    0.8264727918524046
#>     Attrib V18    0.6179386891402603
#>     Attrib V19    0.24233309168900505
#>     Attrib V2    0.3075175508199794
#>     Attrib V20    1.0655676040959177
#>     Attrib V21    0.763684610496215
#>     Attrib V22    0.3944543864641408
#>     Attrib V23    0.38924233500547195
#>     Attrib V24    0.01860221244749825
#>     Attrib V25    -0.25371390136709754
#>     Attrib V26    -0.8388393899220108
#>     Attrib V27    -1.0278906224116906
#>     Attrib V28    -0.5242114547645964
#>     Attrib V29    -0.058887913718886326
#>     Attrib V3    0.268373525910067
#>     Attrib V30    0.06755847488927004
#>     Attrib V31    -1.3218958150644426
#>     Attrib V32    -0.9319892318994724
#>     Attrib V33    -0.056221490860939145
#>     Attrib V34    -0.1272013250255552
#>     Attrib V35    0.36887056878188595
#>     Attrib V36    -0.24069924034922904
#>     Attrib V37    -0.2969137372106443
#>     Attrib V38    0.17417995091062483
#>     Attrib V39    0.31030382677249796
#>     Attrib V4    0.3855600651159227
#>     Attrib V40    -0.6695016648279075
#>     Attrib V41    -0.4335088478028602
#>     Attrib V42    0.3649805007186516
#>     Attrib V43    0.42079346286255226
#>     Attrib V44    0.07119793147128989
#>     Attrib V45    0.6620417543441586
#>     Attrib V46    0.11119543126627797
#>     Attrib V47    0.038195015335053976
#>     Attrib V48    0.23819822635630558
#>     Attrib V49    0.3139691922403971
#>     Attrib V5    -0.4409628531407841
#>     Attrib V50    -0.37331768743732546
#>     Attrib V51    0.3052667867994766
#>     Attrib V52    0.6084092339123403
#>     Attrib V53    0.38779128743620916
#>     Attrib V54    0.6203251900302357
#>     Attrib V55    -0.1273261603244893
#>     Attrib V56    0.8663232798415048
#>     Attrib V57    0.04078114416411766
#>     Attrib V58    0.6519441894864878
#>     Attrib V59    0.6759038963951096
#>     Attrib V6    -0.17852161590956583
#>     Attrib V60    0.23173216457899576
#>     Attrib V7    -0.1305590654393177
#>     Attrib V8    -0.6303120795084715
#>     Attrib V9    0.2424241591127761
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    0.01921901891842516
#>     Attrib V1    -0.3349408413149635
#>     Attrib V10    -0.023222203029939534
#>     Attrib V11    -0.11447028080234348
#>     Attrib V12    -0.3402800288343169
#>     Attrib V13    -0.2538324220402315
#>     Attrib V14    0.42009181170079957
#>     Attrib V15    0.2659590409280098
#>     Attrib V16    0.3748304242317198
#>     Attrib V17    0.13300258742400628
#>     Attrib V18    0.2167706844189815
#>     Attrib V19    0.1759465791239506
#>     Attrib V2    -0.21142386041485664
#>     Attrib V20    -0.3355633676206765
#>     Attrib V21    -0.14277340697424495
#>     Attrib V22    -0.02923664324668664
#>     Attrib V23    -0.016301813668788228
#>     Attrib V24    -0.11153551534203361
#>     Attrib V25    -0.04314990175558661
#>     Attrib V26    -0.022334329795507236
#>     Attrib V27    -0.11005028865488153
#>     Attrib V28    -0.06739627516912541
#>     Attrib V29    -0.10986108059360253
#>     Attrib V3    -0.09795012424605455
#>     Attrib V30    -0.14202379172881824
#>     Attrib V31    0.5128150958630825
#>     Attrib V32    0.3053241228400048
#>     Attrib V33    0.04139264051651437
#>     Attrib V34    0.014124407462614638
#>     Attrib V35    -0.02400512705748832
#>     Attrib V36    0.6395813104590136
#>     Attrib V37    0.5094503721115033
#>     Attrib V38    0.017508419694662287
#>     Attrib V39    -0.12433786937139323
#>     Attrib V4    0.05344745681055639
#>     Attrib V40    0.4484750598894164
#>     Attrib V41    0.31359196754266544
#>     Attrib V42    0.04362915053359257
#>     Attrib V43    -0.11466843472301387
#>     Attrib V44    0.015722209165064217
#>     Attrib V45    -0.5060185500921787
#>     Attrib V46    -0.23593362906121962
#>     Attrib V47    -0.08135749956193951
#>     Attrib V48    -0.277596563932938
#>     Attrib V49    -0.4001225326271305
#>     Attrib V5    0.3902669862888394
#>     Attrib V50    0.40224411742540694
#>     Attrib V51    -0.013234565726514859
#>     Attrib V52    -0.17495616875420403
#>     Attrib V53    -0.08994183464112993
#>     Attrib V54    -0.11347952999794203
#>     Attrib V55    0.26767757337261616
#>     Attrib V56    -0.2261108760500264
#>     Attrib V57    0.3092335446785859
#>     Attrib V58    -0.017771359092663738
#>     Attrib V59    -0.026767726518144824
#>     Attrib V6    0.3498589362082291
#>     Attrib V60    0.20174530162083965
#>     Attrib V7    0.2977011140861521
#>     Attrib V8    0.7708840330442429
#>     Attrib V9    -0.13905247784559155
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    -0.1744535252559984
#>     Attrib V1    0.20141571452787974
#>     Attrib V10    1.190056964733158
#>     Attrib V11    1.4115779691205987
#>     Attrib V12    1.6372400184701779
#>     Attrib V13    0.5631432577154465
#>     Attrib V14    -0.8888404887284914
#>     Attrib V15    -1.021735519072728
#>     Attrib V16    -0.6612023694073347
#>     Attrib V17    -0.21513616908573702
#>     Attrib V18    0.1852271115462671
#>     Attrib V19    0.06073759640327911
#>     Attrib V2    0.5618956582869943
#>     Attrib V20    -0.2850225113459039
#>     Attrib V21    -0.07290677758523985
#>     Attrib V22    0.5318068762125691
#>     Attrib V23    0.6173814840221036
#>     Attrib V24    0.5190297294167121
#>     Attrib V25    1.297381017617831
#>     Attrib V26    1.96785467561481
#>     Attrib V27    1.6085458616693484
#>     Attrib V28    1.386601520502292
#>     Attrib V29    1.0404674209505373
#>     Attrib V3    0.11414860221359932
#>     Attrib V30    0.7375080975874593
#>     Attrib V31    -0.5298219556430982
#>     Attrib V32    0.1573982597530495
#>     Attrib V33    -0.4115816450344524
#>     Attrib V34    -0.4554342702390935
#>     Attrib V35    -0.23364795569377242
#>     Attrib V36    -0.6641412609835446
#>     Attrib V37    -0.8491242558051937
#>     Attrib V38    -0.4412580016764809
#>     Attrib V39    0.5783131249944847
#>     Attrib V4    0.41966369619106414
#>     Attrib V40    0.6144911975122767
#>     Attrib V41    0.9530663701571679
#>     Attrib V42    0.033701222990338814
#>     Attrib V43    0.1840758307316355
#>     Attrib V44    0.20998169606163716
#>     Attrib V45    0.6664686394209026
#>     Attrib V46    0.3469704973211605
#>     Attrib V47    0.45065902400930336
#>     Attrib V48    1.1979727860789438
#>     Attrib V49    1.8368182106506226
#>     Attrib V5    0.23827938709710877
#>     Attrib V50    -0.6401108725941643
#>     Attrib V51    1.1306514441468778
#>     Attrib V52    1.7328606417660672
#>     Attrib V53    -0.05483959467797223
#>     Attrib V54    0.13405539885653286
#>     Attrib V55    -0.25631499633233523
#>     Attrib V56    -0.6940658120774521
#>     Attrib V57    -0.8652160577782017
#>     Attrib V58    -0.21452969770623212
#>     Attrib V59    0.08550565786246092
#>     Attrib V6    0.18102465656943734
#>     Attrib V60    -0.1809203682719599
#>     Attrib V7    -0.4182244878923693
#>     Attrib V8    -0.6952570839725711
#>     Attrib V9    1.044890154258626
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.07140985079000135
#>     Attrib V1    -0.33223062166015394
#>     Attrib V10    -0.06266692392510434
#>     Attrib V11    -0.2885910050972518
#>     Attrib V12    -0.48064486461867295
#>     Attrib V13    -0.35028259962255187
#>     Attrib V14    0.4182504941023377
#>     Attrib V15    0.11189081083846339
#>     Attrib V16    0.22772682676190123
#>     Attrib V17    -0.082618542572635
#>     Attrib V18    0.08368626555788576
#>     Attrib V19    0.13166352912692494
#>     Attrib V2    -0.1998523224325761
#>     Attrib V20    -0.40499380286671416
#>     Attrib V21    -0.20328811559330476
#>     Attrib V22    -0.07668280630740514
#>     Attrib V23    -0.028828538490337313
#>     Attrib V24    -0.0760888400045678
#>     Attrib V25    -0.048594701269835595
#>     Attrib V26    -0.1417117615378942
#>     Attrib V27    -0.04818213895673293
#>     Attrib V28    0.032826380924318714
#>     Attrib V29    -0.08290622830722405
#>     Attrib V3    -0.11722143299042835
#>     Attrib V30    -0.2690631925915131
#>     Attrib V31    0.4647131828610931
#>     Attrib V32    0.2962601492021511
#>     Attrib V33    0.14449658110304991
#>     Attrib V34    -0.001402013911025198
#>     Attrib V35    0.10224269124092124
#>     Attrib V36    0.7465268164945226
#>     Attrib V37    0.6300966914097691
#>     Attrib V38    -0.01952428802845097
#>     Attrib V39    -0.12500795758495847
#>     Attrib V4    0.06160644484803879
#>     Attrib V40    0.4064926033644032
#>     Attrib V41    0.251631505868673
#>     Attrib V42    0.12120537290430478
#>     Attrib V43    -0.10983176720448502
#>     Attrib V44    0.04536962935531339
#>     Attrib V45    -0.5391273459752993
#>     Attrib V46    -0.3467228851738484
#>     Attrib V47    -0.23484621177346734
#>     Attrib V48    -0.3303334031824355
#>     Attrib V49    -0.41513473466999873
#>     Attrib V5    0.3322258589648119
#>     Attrib V50    0.4353706360706158
#>     Attrib V51    -0.04032168423640213
#>     Attrib V52    -0.1712861284110745
#>     Attrib V53    -0.0038331607483895257
#>     Attrib V54    -0.003615994521856506
#>     Attrib V55    0.2955904926976053
#>     Attrib V56    -0.2252123464088545
#>     Attrib V57    0.30408836234687237
#>     Attrib V58    0.08500501081844261
#>     Attrib V59    0.006246808803890812
#>     Attrib V6    0.34514464502905257
#>     Attrib V60    0.29479325759382363
#>     Attrib V7    0.3054020529699959
#>     Attrib V8    0.8360775834933799
#>     Attrib V9    -0.21320442860870598
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    -0.16699223234213983
#>     Attrib V1    0.5804055149319416
#>     Attrib V10    -0.22088703366045828
#>     Attrib V11    -0.17174726194191126
#>     Attrib V12    0.05015533481545157
#>     Attrib V13    0.06055623607270915
#>     Attrib V14    -0.5102352142054142
#>     Attrib V15    -0.14862466062093893
#>     Attrib V16    -0.12077568400239709
#>     Attrib V17    0.5747750667180977
#>     Attrib V18    0.5614137154922229
#>     Attrib V19    0.1714810710941194
#>     Attrib V2    0.2536421526383185
#>     Attrib V20    0.6914642545381017
#>     Attrib V21    0.5303372269958542
#>     Attrib V22    0.3081701399606571
#>     Attrib V23    0.36043980470252657
#>     Attrib V24    0.1758860687988989
#>     Attrib V25    -0.07952890125244
#>     Attrib V26    -0.5198691791796892
#>     Attrib V27    -0.7500982714504262
#>     Attrib V28    -0.4585715630066827
#>     Attrib V29    -0.1780545084881633
#>     Attrib V3    0.10893012171091071
#>     Attrib V30    0.015573882417454207
#>     Attrib V31    -0.9827155135370718
#>     Attrib V32    -0.5873889059060489
#>     Attrib V33    0.02814320091751297
#>     Attrib V34    0.03159539814626763
#>     Attrib V35    0.37094505385526416
#>     Attrib V36    -0.1499483484737389
#>     Attrib V37    -0.28812312395048145
#>     Attrib V38    0.13635711220949004
#>     Attrib V39    0.2583053500834656
#>     Attrib V4    0.2542825796955801
#>     Attrib V40    -0.5210179815308499
#>     Attrib V41    -0.26967174351618817
#>     Attrib V42    0.2591656997450263
#>     Attrib V43    0.31540882522963026
#>     Attrib V44    0.13310038551891495
#>     Attrib V45    0.5907609378017434
#>     Attrib V46    0.05836917413545728
#>     Attrib V47    -0.03057284327378032
#>     Attrib V48    0.28061747297458595
#>     Attrib V49    0.28560064038887106
#>     Attrib V5    -0.40388000530032064
#>     Attrib V50    -0.3157266372227068
#>     Attrib V51    0.32050453813286767
#>     Attrib V52    0.5100295936195917
#>     Attrib V53    0.20017903733625
#>     Attrib V54    0.48065230574864637
#>     Attrib V55    -0.1536776013129924
#>     Attrib V56    0.5226980973105048
#>     Attrib V57    -0.014821597971876386
#>     Attrib V58    0.4578214031007197
#>     Attrib V59    0.48526536813469495
#>     Attrib V6    -0.13887990334423886
#>     Attrib V60    0.16071622634898025
#>     Attrib V7    -0.17092770577947644
#>     Attrib V8    -0.5196239503553132
#>     Attrib V9    0.29466348102601425
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.6134962932706433
#>     Attrib V1    -0.08482293461938444
#>     Attrib V10    -0.841735965325358
#>     Attrib V11    -1.7146668939825882
#>     Attrib V12    -2.2121237187484315
#>     Attrib V13    -1.293009267368048
#>     Attrib V14    1.0390168665974095
#>     Attrib V15    0.6425971614071229
#>     Attrib V16    0.20643977474230502
#>     Attrib V17    -1.4762693316735
#>     Attrib V18    -1.0085252066955739
#>     Attrib V19    -0.1521650658373544
#>     Attrib V2    -0.19235480815317396
#>     Attrib V20    -0.6915583437642052
#>     Attrib V21    -0.3472973577191257
#>     Attrib V22    -0.7569227238968693
#>     Attrib V23    -0.3424616677657471
#>     Attrib V24    0.17761727743788155
#>     Attrib V25    -0.33528971531185786
#>     Attrib V26    0.022272056498718978
#>     Attrib V27    0.5761533083998841
#>     Attrib V28    0.06399978965913232
#>     Attrib V29    -0.8732756644428621
#>     Attrib V3    0.3430829723036454
#>     Attrib V30    -1.9153116687684555
#>     Attrib V31    0.5451217159667842
#>     Attrib V32    0.4054950866076723
#>     Attrib V33    -0.19757736593455943
#>     Attrib V34    0.001385226821033348
#>     Attrib V35    0.15362962157597698
#>     Attrib V36    1.0415894452700383
#>     Attrib V37    0.677696006049027
#>     Attrib V38    -0.4171465886850503
#>     Attrib V39    -0.5768689589154533
#>     Attrib V4    0.19036534989269455
#>     Attrib V40    0.382633183802276
#>     Attrib V41    -0.28509462032075455
#>     Attrib V42    -0.146271218917773
#>     Attrib V43    -0.3911436687961737
#>     Attrib V44    0.06083739924069064
#>     Attrib V45    -1.0063447218471266
#>     Attrib V46    -0.2602390022142325
#>     Attrib V47    -0.4296520737308184
#>     Attrib V48    -1.1832513840083092
#>     Attrib V49    -0.9641469498531163
#>     Attrib V5    0.7651684206630341
#>     Attrib V50    1.6452847465873943
#>     Attrib V51    -0.08293434312207107
#>     Attrib V52    -0.4462126507104485
#>     Attrib V53    0.3666852648813663
#>     Attrib V54    0.06610222667926373
#>     Attrib V55    1.3268232319720308
#>     Attrib V56    -0.03389529950602856
#>     Attrib V57    0.3956590993988609
#>     Attrib V58    0.48811971813614724
#>     Attrib V59    0.03595535496313456
#>     Attrib V6    0.3963567394952177
#>     Attrib V60    0.6817829863260049
#>     Attrib V7    0.4053251804292788
#>     Attrib V8    1.4045055422829118
#>     Attrib V9    -1.0393493460538727
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.17974165283058371
#>     Attrib V1    0.40399736265156383
#>     Attrib V10    -0.21015291842713174
#>     Attrib V11    -0.08766165218856846
#>     Attrib V12    0.07515379139280777
#>     Attrib V13    0.01847905070915836
#>     Attrib V14    -0.3460267000366235
#>     Attrib V15    -0.12406510773640861
#>     Attrib V16    -0.1000101770267998
#>     Attrib V17    0.46660744638519075
#>     Attrib V18    0.4169998830566778
#>     Attrib V19    0.11684911596401004
#>     Attrib V2    0.20416833091702039
#>     Attrib V20    0.6256179576509888
#>     Attrib V21    0.4563811248708758
#>     Attrib V22    0.2993465788732667
#>     Attrib V23    0.2919026771072971
#>     Attrib V24    0.1715360753757633
#>     Attrib V25    -0.007443489954068185
#>     Attrib V26    -0.49234743688704513
#>     Attrib V27    -0.5925994416566718
#>     Attrib V28    -0.343392170788607
#>     Attrib V29    -0.11633760437390067
#>     Attrib V3    0.13889273320493498
#>     Attrib V30    -0.03695189393760306
#>     Attrib V31    -0.7724193915355948
#>     Attrib V32    -0.41349783406380314
#>     Attrib V33    0.05930843933945413
#>     Attrib V34    0.018445077578747866
#>     Attrib V35    0.32290454611645436
#>     Attrib V36    -0.10884205332994229
#>     Attrib V37    -0.19406660218577673
#>     Attrib V38    0.11902897691913661
#>     Attrib V39    0.21192098514481675
#>     Attrib V4    0.1823916612993776
#>     Attrib V40    -0.3567678371546049
#>     Attrib V41    -0.17477799880090172
#>     Attrib V42    0.17997377522446822
#>     Attrib V43    0.3426317572418237
#>     Attrib V44    0.0575136616004864
#>     Attrib V45    0.49021891991525124
#>     Attrib V46    0.08285934270063566
#>     Attrib V47    0.04584513390570401
#>     Attrib V48    0.21558735811523266
#>     Attrib V49    0.26120510743383457
#>     Attrib V5    -0.32233225903698176
#>     Attrib V50    -0.2575292165120032
#>     Attrib V51    0.2749710213414684
#>     Attrib V52    0.4301438887375319
#>     Attrib V53    0.12359714759043382
#>     Attrib V54    0.34401417903056575
#>     Attrib V55    -0.12525587072109592
#>     Attrib V56    0.442168246911171
#>     Attrib V57    0.008304300157107423
#>     Attrib V58    0.3143367230471106
#>     Attrib V59    0.36431363156329366
#>     Attrib V6    -0.1105890321366855
#>     Attrib V60    0.11651431777185142
#>     Attrib V7    -0.12982782740847093
#>     Attrib V8    -0.40267846172217353
#>     Attrib V9    0.23183910943659256
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.16182856735259285
#>     Attrib V1    0.20167291268750256
#>     Attrib V10    0.06985271961544076
#>     Attrib V11    0.038499574769993106
#>     Attrib V12    0.1072979492478486
#>     Attrib V13    0.07487910117824412
#>     Attrib V14    -0.055546027008151026
#>     Attrib V15    -0.016387495981829807
#>     Attrib V16    -0.019513790374547667
#>     Attrib V17    0.11347093208755592
#>     Attrib V18    0.07061891469986548
#>     Attrib V19    3.644303459453107E-4
#>     Attrib V2    0.16082339196736872
#>     Attrib V20    0.09219654029151209
#>     Attrib V21    0.10088415580739289
#>     Attrib V22    0.03410144650297921
#>     Attrib V23    0.04823640053026478
#>     Attrib V24    -0.039224000590758624
#>     Attrib V25    -0.013237393413957365
#>     Attrib V26    -0.07583508903144388
#>     Attrib V27    -0.12728585173445642
#>     Attrib V28    -0.05114729467188371
#>     Attrib V29    -0.09210083371912368
#>     Attrib V3    0.09532728887041449
#>     Attrib V30    -0.001458873366609055
#>     Attrib V31    -0.10260287681077981
#>     Attrib V32    -0.07162984568631256
#>     Attrib V33    -0.007991930740557051
#>     Attrib V34    -0.0066527714936167465
#>     Attrib V35    0.11915288593750398
#>     Attrib V36    0.0016092386425741812
#>     Attrib V37    0.02147606727814907
#>     Attrib V38    0.03788294026788812
#>     Attrib V39    0.12325549234735673
#>     Attrib V4    0.17102046762985418
#>     Attrib V40    -0.025693960261733064
#>     Attrib V41    -0.003225379570464668
#>     Attrib V42    0.07993722289212453
#>     Attrib V43    0.07014878707753779
#>     Attrib V44    0.03030235969657241
#>     Attrib V45    0.14164262804948402
#>     Attrib V46    0.039601747551409466
#>     Attrib V47    0.018200561090842754
#>     Attrib V48    0.12524375436651553
#>     Attrib V49    0.095317130528295
#>     Attrib V5    -0.017341636613310472
#>     Attrib V50    -0.010965751122590624
#>     Attrib V51    0.07515456890565489
#>     Attrib V52    0.12934476306600234
#>     Attrib V53    0.06611799613749092
#>     Attrib V54    0.1379278042380211
#>     Attrib V55    -0.005354616174530878
#>     Attrib V56    0.15973590793674253
#>     Attrib V57    0.04206501412494904
#>     Attrib V58    0.12308465851609222
#>     Attrib V59    0.17601914572326052
#>     Attrib V6    0.017159889688944784
#>     Attrib V60    0.07713990755807185
#>     Attrib V7    -0.05054265414277625
#>     Attrib V8    -0.053487146439545025
#>     Attrib V9    0.09702324309378373
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.1232189330407002
#>     Attrib V1    0.056987677401225276
#>     Attrib V10    0.06503736260181167
#>     Attrib V11    0.09451267049924164
#>     Attrib V12    0.005833390930082497
#>     Attrib V13    0.0341240919210922
#>     Attrib V14    0.08132888982932557
#>     Attrib V15    0.028739290083550712
#>     Attrib V16    0.03492997326825015
#>     Attrib V17    0.048876033478973284
#>     Attrib V18    0.07325288039673389
#>     Attrib V19    0.040826837939357694
#>     Attrib V2    0.11673297315741724
#>     Attrib V20    0.038220155939996475
#>     Attrib V21    -0.042001228100414616
#>     Attrib V22    0.037791698563218984
#>     Attrib V23    0.03529069688008285
#>     Attrib V24    -0.015606154880897428
#>     Attrib V25    -0.08051929157438475
#>     Attrib V26    -0.050371971834138496
#>     Attrib V27    -0.08635059589144298
#>     Attrib V28    -0.09531268827803113
#>     Attrib V29    -0.08095634997118473
#>     Attrib V3    0.037853462328151594
#>     Attrib V30    -0.0667055869802826
#>     Attrib V31    0.059080291694813374
#>     Attrib V32    0.02563146436501551
#>     Attrib V33    0.051961029485728484
#>     Attrib V34    0.043346369040162105
#>     Attrib V35    0.0772372592615012
#>     Attrib V36    0.08081134785390584
#>     Attrib V37    0.11472138345516962
#>     Attrib V38    0.09383336972644161
#>     Attrib V39    -0.009489578524261164
#>     Attrib V4    0.12932305172038489
#>     Attrib V40    0.0653745717221468
#>     Attrib V41    0.05145455559458682
#>     Attrib V42    0.030584420872239046
#>     Attrib V43    0.05999545170846926
#>     Attrib V44    0.09609856776123155
#>     Attrib V45    -0.00319446899073434
#>     Attrib V46    0.01631765671832829
#>     Attrib V47    0.055591593371265555
#>     Attrib V48    0.06787823732436896
#>     Attrib V49    0.04132249203367241
#>     Attrib V5    0.12990658846979367
#>     Attrib V50    0.07346835257241946
#>     Attrib V51    0.014227409166229206
#>     Attrib V52    0.04312074269852301
#>     Attrib V53    0.044742044134368206
#>     Attrib V54    0.0898938400515823
#>     Attrib V55    0.08239492096886028
#>     Attrib V56    -0.03499976632507182
#>     Attrib V57    0.08708570164403275
#>     Attrib V58    -0.018382795596756138
#>     Attrib V59    0.05468798811220774
#>     Attrib V6    0.08909225410194953
#>     Attrib V60    0.046465326604530385
#>     Attrib V7    0.06819376680786636
#>     Attrib V8    0.1249119238169688
#>     Attrib V9    0.09228748756421669
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.017705655201415756
#>     Attrib V1    -0.1364247882757773
#>     Attrib V10    0.039159329483869666
#>     Attrib V11    0.04528819559728125
#>     Attrib V12    -0.05659264103760985
#>     Attrib V13    -0.08688318499012296
#>     Attrib V14    0.22068780893443155
#>     Attrib V15    0.08266814863124938
#>     Attrib V16    0.20006342363549268
#>     Attrib V17    0.022315119685614077
#>     Attrib V18    0.19091788593504366
#>     Attrib V19    0.09457372418387858
#>     Attrib V2    -0.09802404176262966
#>     Attrib V20    -0.12593940269892287
#>     Attrib V21    -0.0338136445446295
#>     Attrib V22    0.022711223360196483
#>     Attrib V23    0.03162137840435482
#>     Attrib V24    -0.07205180916531012
#>     Attrib V25    -0.10972944641369896
#>     Attrib V26    -0.11345931429722292
#>     Attrib V27    -0.10090520884022035
#>     Attrib V28    -0.053781098704923744
#>     Attrib V29    -0.0787854759138337
#>     Attrib V3    0.0010488814237264393
#>     Attrib V30    -0.053209142084730376
#>     Attrib V31    0.20430580980663385
#>     Attrib V32    0.12387037520237619
#>     Attrib V33    0.08140208391870124
#>     Attrib V34    0.06763273041494854
#>     Attrib V35    0.0559117792643973
#>     Attrib V36    0.3935323650238354
#>     Attrib V37    0.32940785396823424
#>     Attrib V38    0.05169151933705791
#>     Attrib V39    0.05413961450533914
#>     Attrib V4    0.02193629794942765
#>     Attrib V40    0.2891984862333428
#>     Attrib V41    0.2257579122142376
#>     Attrib V42    0.15036517761821108
#>     Attrib V43    -0.03575339947220519
#>     Attrib V44    0.08149974076543619
#>     Attrib V45    -0.16216230195866857
#>     Attrib V46    -0.09629954297104362
#>     Attrib V47    -0.025765652260124883
#>     Attrib V48    -0.11156573506746915
#>     Attrib V49    -0.09225606600865376
#>     Attrib V5    0.27613756536619977
#>     Attrib V50    0.12758674062149578
#>     Attrib V51    0.013450314944082524
#>     Attrib V52    -0.009216211766762288
#>     Attrib V53    -0.018686432332736994
#>     Attrib V54    -0.056702358565532934
#>     Attrib V55    0.09735548465082541
#>     Attrib V56    -0.14724462275627048
#>     Attrib V57    0.10460732397421002
#>     Attrib V58    0.05146109002155994
#>     Attrib V59    0.01985927715686301
#>     Attrib V6    0.24070176703218782
#>     Attrib V60    0.10869186876229353
#>     Attrib V7    0.19015709551707805
#>     Attrib V8    0.431942747299873
#>     Attrib V9    -0.009795392381935844
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
