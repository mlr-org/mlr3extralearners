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
#>     Threshold    -0.09040303450913163
#>     Node 2    1.8683630575592018
#>     Node 3    0.7415407118481141
#>     Node 4    0.3565775455022019
#>     Node 5    -3.032193097194887
#>     Node 6    1.8209504673690582
#>     Node 7    4.210756779989949
#>     Node 8    0.5094771001828775
#>     Node 9    2.9680209507893602
#>     Node 10    -2.0863466442529606
#>     Node 11    0.9791000342086053
#>     Node 12    1.5067123430815912
#>     Node 13    1.2616410995430962
#>     Node 14    1.3598262373876386
#>     Node 15    -3.2844906942102954
#>     Node 16    -0.03971674456753407
#>     Node 17    -0.30930092211143373
#>     Node 18    0.42733348297972534
#>     Node 19    3.566154324039086
#>     Node 20    2.0437651298096924
#>     Node 21    -2.3025762618805525
#>     Node 22    0.9665128720096663
#>     Node 23    1.9244783038967397
#>     Node 24    -2.0336938707499668
#>     Node 25    3.6591342438109824
#>     Node 26    -0.19913886346289303
#>     Node 27    1.6126067746534283
#>     Node 28    -3.566513414228605
#>     Node 29    0.4273876073732319
#>     Node 30    0.09166828832943219
#>     Node 31    0.8904593784444952
#>     Node 32    1.6261076951356688
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.12171135890216701
#>     Node 2    -1.9024819332291472
#>     Node 3    -0.727912452100954
#>     Node 4    -0.31635256633336684
#>     Node 5    3.0214013198792187
#>     Node 6    -1.781979691025007
#>     Node 7    -4.218565524244645
#>     Node 8    -0.5443242611407527
#>     Node 9    -2.972872888206289
#>     Node 10    2.027706358620478
#>     Node 11    -0.948057909031757
#>     Node 12    -1.5746790679106635
#>     Node 13    -1.2124799039653382
#>     Node 14    -1.2956197390602302
#>     Node 15    3.269943743820909
#>     Node 16    0.023314102134252293
#>     Node 17    0.3441320023654831
#>     Node 18    -0.39036316416430145
#>     Node 19    -3.5820786715089294
#>     Node 20    -2.057056831348254
#>     Node 21    2.3590399779879387
#>     Node 22    -1.0221391668058735
#>     Node 23    -1.9621995262949687
#>     Node 24    2.0284723109293963
#>     Node 25    -3.655538141674162
#>     Node 26    0.11610214996197411
#>     Node 27    -1.6561004934435517
#>     Node 28    3.540154579587281
#>     Node 29    -0.46218161936670515
#>     Node 30    -0.017744235388839288
#>     Node 31    -0.8372269113968427
#>     Node 32    -1.628558078262061
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.041110538840447804
#>     Attrib V1    0.43799054686221395
#>     Attrib V10    0.37694908591480925
#>     Attrib V11    0.1753669736725706
#>     Attrib V12    0.031157846064145504
#>     Attrib V13    -0.3036873262063032
#>     Attrib V14    0.21704435178558532
#>     Attrib V15    0.4281787791529672
#>     Attrib V16    0.2443806952265593
#>     Attrib V17    0.17740254430386665
#>     Attrib V18    0.028115058918954255
#>     Attrib V19    -0.04261108495616697
#>     Attrib V2    -0.40033816987928433
#>     Attrib V20    0.5967135260892316
#>     Attrib V21    0.7281376514698975
#>     Attrib V22    0.22348016549855665
#>     Attrib V23    0.24834818158982483
#>     Attrib V24    0.19164673915245226
#>     Attrib V25    -0.3927302705881421
#>     Attrib V26    -0.7796413790347453
#>     Attrib V27    -0.5522956239439542
#>     Attrib V28    0.2577312192202602
#>     Attrib V29    -0.0850296029411628
#>     Attrib V3    -0.10415882299686692
#>     Attrib V30    -0.05560551391456157
#>     Attrib V31    -1.407362222323762
#>     Attrib V32    -0.3107886922952347
#>     Attrib V33    0.46711528476658576
#>     Attrib V34    -0.29760123632780844
#>     Attrib V35    0.009299300565212722
#>     Attrib V36    -0.4358468364219726
#>     Attrib V37    -0.7029596402088316
#>     Attrib V38    0.19945304543314524
#>     Attrib V39    0.5372283374835157
#>     Attrib V4    0.18797365664669666
#>     Attrib V40    -0.2844770124730237
#>     Attrib V41    -0.3899110527265986
#>     Attrib V42    0.5471559381972516
#>     Attrib V43    0.5414732362258753
#>     Attrib V44    0.5638744362458017
#>     Attrib V45    0.32741087836437177
#>     Attrib V46    0.2892235942161346
#>     Attrib V47    -0.1874290779291818
#>     Attrib V48    0.06918653732025347
#>     Attrib V49    0.6307421152364271
#>     Attrib V5    -0.026567979478262893
#>     Attrib V50    -0.771430345217383
#>     Attrib V51    0.25507751785698707
#>     Attrib V52    0.16004283648288414
#>     Attrib V53    0.35307432401901406
#>     Attrib V54    0.4738194073449164
#>     Attrib V55    -0.556072890837534
#>     Attrib V56    -0.28139326478265975
#>     Attrib V57    0.027633994367676527
#>     Attrib V58    0.435358504937773
#>     Attrib V59    0.5203222501908612
#>     Attrib V6    -0.2997681547882434
#>     Attrib V60    0.30622190402099747
#>     Attrib V7    0.23747545369054432
#>     Attrib V8    -0.4669744911723061
#>     Attrib V9    0.3512495988416357
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.021278352098338886
#>     Attrib V1    0.1798775767170025
#>     Attrib V10    0.18215608357596583
#>     Attrib V11    0.09798804688578458
#>     Attrib V12    0.1546848148317704
#>     Attrib V13    0.034316569583386525
#>     Attrib V14    0.11189583277599356
#>     Attrib V15    0.21162835865177718
#>     Attrib V16    0.022225868225906848
#>     Attrib V17    0.007669466886131251
#>     Attrib V18    -0.07330854214973997
#>     Attrib V19    -0.025725150952375535
#>     Attrib V2    -0.06884384087014979
#>     Attrib V20    0.13318481765653029
#>     Attrib V21    0.11445248031953022
#>     Attrib V22    0.006410774418630276
#>     Attrib V23    0.06500131187514108
#>     Attrib V24    0.13769722626399195
#>     Attrib V25    0.02757335249956003
#>     Attrib V26    -0.1758690248583848
#>     Attrib V27    -0.2281492385803636
#>     Attrib V28    -0.13009269651316985
#>     Attrib V29    -0.41378716980839564
#>     Attrib V3    0.03073695925126332
#>     Attrib V30    -0.19037826055756016
#>     Attrib V31    -0.4640728276591218
#>     Attrib V32    -0.06449456485534122
#>     Attrib V33    0.20662317415135648
#>     Attrib V34    -0.05416233298860039
#>     Attrib V35    0.07840977494810819
#>     Attrib V36    -0.19925511991764025
#>     Attrib V37    -0.3167209071912522
#>     Attrib V38    -0.04403022752692556
#>     Attrib V39    0.16810676949061829
#>     Attrib V4    0.06705519345337035
#>     Attrib V40    -0.0851533647957856
#>     Attrib V41    -0.19061690377519586
#>     Attrib V42    0.055534573926067594
#>     Attrib V43    0.09801953115592209
#>     Attrib V44    0.13404538802563468
#>     Attrib V45    0.06982198890508967
#>     Attrib V46    0.06940469874060176
#>     Attrib V47    -0.04299400898826431
#>     Attrib V48    0.004013151176884868
#>     Attrib V49    0.17293813559845683
#>     Attrib V5    0.006557144145578896
#>     Attrib V50    -0.2521177256166189
#>     Attrib V51    0.09430412172159465
#>     Attrib V52    0.07344538287072824
#>     Attrib V53    0.10948045290148051
#>     Attrib V54    0.330693736252951
#>     Attrib V55    -0.0507170930243577
#>     Attrib V56    -0.02826719473595242
#>     Attrib V57    0.05035577513581643
#>     Attrib V58    0.2405181894049577
#>     Attrib V59    0.22612635944258191
#>     Attrib V6    -0.13155969071535437
#>     Attrib V60    0.2005403459491492
#>     Attrib V7    0.10490916625896797
#>     Attrib V8    -0.15747951297379975
#>     Attrib V9    0.12005055632456181
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.1361709999419484
#>     Attrib V1    0.07109857108279849
#>     Attrib V10    0.09979117076088512
#>     Attrib V11    0.057411429842273876
#>     Attrib V12    0.07854869666338764
#>     Attrib V13    0.028227820822482146
#>     Attrib V14    0.09092938867487332
#>     Attrib V15    0.10823983704711743
#>     Attrib V16    -0.013006359582664963
#>     Attrib V17    -0.01531534881326193
#>     Attrib V18    -0.07709473863124341
#>     Attrib V19    -0.09012619984956476
#>     Attrib V2    -0.009497032952568376
#>     Attrib V20    -0.011822372884480813
#>     Attrib V21    0.011522083692656558
#>     Attrib V22    -0.11611776142095954
#>     Attrib V23    -0.013373429783289427
#>     Attrib V24    -0.004313550612942427
#>     Attrib V25    -0.059677007187101366
#>     Attrib V26    -0.06628868116157728
#>     Attrib V27    -0.06326020734825422
#>     Attrib V28    0.08614093258001483
#>     Attrib V29    -0.052491850917509124
#>     Attrib V3    0.09008370008227463
#>     Attrib V30    -0.06994520537719101
#>     Attrib V31    -0.1775609740794937
#>     Attrib V32    -0.009766988535091739
#>     Attrib V33    0.10062651519612963
#>     Attrib V34    0.023520043380908746
#>     Attrib V35    0.08073038764643196
#>     Attrib V36    -0.07614400830516883
#>     Attrib V37    -0.0876879010947157
#>     Attrib V38    -0.018103815764469056
#>     Attrib V39    0.09155918696961875
#>     Attrib V4    0.06394470392056555
#>     Attrib V40    -0.022220414231532606
#>     Attrib V41    -0.10086358600842843
#>     Attrib V42    0.012161958886559217
#>     Attrib V43    0.015651497216105374
#>     Attrib V44    0.0726232145739529
#>     Attrib V45    0.1053004005763081
#>     Attrib V46    0.057160589836032887
#>     Attrib V47    0.007229805947238061
#>     Attrib V48    0.0976058318208754
#>     Attrib V49    0.16763788771116106
#>     Attrib V5    0.06461857468303597
#>     Attrib V50    -0.02773148695531923
#>     Attrib V51    0.15020802465438168
#>     Attrib V52    0.0806707863028726
#>     Attrib V53    0.11201628620636525
#>     Attrib V54    0.07063680136908616
#>     Attrib V55    -0.0061637483907457675
#>     Attrib V56    0.04003678110803422
#>     Attrib V57    0.08984399239316576
#>     Attrib V58    0.08920950455224617
#>     Attrib V59    0.09477588215352124
#>     Attrib V6    -0.07366582997091628
#>     Attrib V60    0.1340291329396997
#>     Attrib V7    0.040840561708371595
#>     Attrib V8    -0.1356702694345065
#>     Attrib V9    0.11229526638353145
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.15006466282262185
#>     Attrib V1    -0.5506252799683848
#>     Attrib V10    -0.6867871498344061
#>     Attrib V11    -0.6097879695916469
#>     Attrib V12    -0.48942588922205493
#>     Attrib V13    0.33750260688196654
#>     Attrib V14    -0.06129877902372241
#>     Attrib V15    -0.3720078441110372
#>     Attrib V16    -0.10539413873010336
#>     Attrib V17    -0.11461314176606875
#>     Attrib V18    0.07419256275683492
#>     Attrib V19    0.10588822827450238
#>     Attrib V2    0.7453157002935855
#>     Attrib V20    -0.9748240053808734
#>     Attrib V21    -1.001400154774083
#>     Attrib V22    -0.3707412146594099
#>     Attrib V23    -0.49600888399193094
#>     Attrib V24    -0.5080972093829823
#>     Attrib V25    0.23817332536644303
#>     Attrib V26    0.7260277582113467
#>     Attrib V27    0.531823600684001
#>     Attrib V28    -0.6592831157814442
#>     Attrib V29    0.1482291588924622
#>     Attrib V3    0.3076838856605739
#>     Attrib V30    0.006622841900202068
#>     Attrib V31    2.1432434575953616
#>     Attrib V32    0.7266047416227943
#>     Attrib V33    -0.711285473508087
#>     Attrib V34    0.22936350456136903
#>     Attrib V35    -0.4379270650322242
#>     Attrib V36    0.5452163680464792
#>     Attrib V37    0.996526463600178
#>     Attrib V38    -0.4328247255887294
#>     Attrib V39    -0.982724571281072
#>     Attrib V4    -0.2031008274618181
#>     Attrib V40    0.5803076233381518
#>     Attrib V41    0.7697053936150988
#>     Attrib V42    -0.7776770811298814
#>     Attrib V43    -0.8933699901343434
#>     Attrib V44    -0.9937287356222961
#>     Attrib V45    -0.9236343922956104
#>     Attrib V46    -0.7400799420230646
#>     Attrib V47    0.017113762391217705
#>     Attrib V48    -0.2642807446023649
#>     Attrib V49    -1.175280521633025
#>     Attrib V5    0.22886052187429154
#>     Attrib V50    1.4206618341236552
#>     Attrib V51    -0.6032408745458901
#>     Attrib V52    -0.40592528220510404
#>     Attrib V53    -0.488788461895745
#>     Attrib V54    -0.5071851301635435
#>     Attrib V55    0.9776565411500965
#>     Attrib V56    0.6055991523763662
#>     Attrib V57    0.1194387276410674
#>     Attrib V58    -0.5363816358688193
#>     Attrib V59    -0.2960767003147885
#>     Attrib V6    0.5069612076300416
#>     Attrib V60    -0.005477381326759549
#>     Attrib V7    -0.14264049399110643
#>     Attrib V8    1.0621073578295235
#>     Attrib V9    -0.6723942572617635
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.10783702340689069
#>     Attrib V1    0.39805624686301105
#>     Attrib V10    0.30967342398117387
#>     Attrib V11    0.11458079465262935
#>     Attrib V12    0.0138525440985017
#>     Attrib V13    -0.33193800891146247
#>     Attrib V14    0.13093962276773335
#>     Attrib V15    0.3843809247446664
#>     Attrib V16    0.27254067062113246
#>     Attrib V17    0.10463031372779415
#>     Attrib V18    -0.011738600553890104
#>     Attrib V19    -0.07574038199825614
#>     Attrib V2    -0.4171756910093103
#>     Attrib V20    0.513016412743175
#>     Attrib V21    0.6456508529138606
#>     Attrib V22    0.2026340703746069
#>     Attrib V23    0.23936225313056292
#>     Attrib V24    0.2730315512620494
#>     Attrib V25    -0.2488606308971708
#>     Attrib V26    -0.7240645275388812
#>     Attrib V27    -0.5828776411216617
#>     Attrib V28    -0.04626768425357218
#>     Attrib V29    -0.3699975886415247
#>     Attrib V3    -0.16382915762428196
#>     Attrib V30    -0.1849439465040251
#>     Attrib V31    -1.2415604538135685
#>     Attrib V32    -0.23112547949537365
#>     Attrib V33    0.5208321044066774
#>     Attrib V34    -0.27341428932084555
#>     Attrib V35    -0.021152799011922
#>     Attrib V36    -0.4939257425239875
#>     Attrib V37    -0.7736624968990313
#>     Attrib V38    0.012673385724716558
#>     Attrib V39    0.3625063551789422
#>     Attrib V4    0.14760310956911069
#>     Attrib V40    -0.3076977888578167
#>     Attrib V41    -0.33353653111789827
#>     Attrib V42    0.5418238233289173
#>     Attrib V43    0.45104567000013496
#>     Attrib V44    0.45764460711737026
#>     Attrib V45    0.31096546428584265
#>     Attrib V46    0.27026981163667074
#>     Attrib V47    -0.1886534215439398
#>     Attrib V48    0.06354764799492214
#>     Attrib V49    0.5720499416062709
#>     Attrib V5    -0.04849014304840344
#>     Attrib V50    -0.6879129379778494
#>     Attrib V51    0.2012415279669319
#>     Attrib V52    0.08051029632468307
#>     Attrib V53    0.3478782021025287
#>     Attrib V54    0.520330561463679
#>     Attrib V55    -0.5504631888107826
#>     Attrib V56    -0.22145924305460069
#>     Attrib V57    0.08645949478735877
#>     Attrib V58    0.4902696267893774
#>     Attrib V59    0.5674729067994664
#>     Attrib V6    -0.15089333380588854
#>     Attrib V60    0.36592662843543783
#>     Attrib V7    0.34567669157318703
#>     Attrib V8    -0.3299486259549651
#>     Attrib V9    0.41526002340972834
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.7030774866236127
#>     Attrib V1    0.8113124006758846
#>     Attrib V10    1.0694296913676804
#>     Attrib V11    1.2336006833026292
#>     Attrib V12    1.7564684171795044
#>     Attrib V13    0.3281192315302711
#>     Attrib V14    -0.7127176583315629
#>     Attrib V15    -0.392411816570025
#>     Attrib V16    -0.9234737596458193
#>     Attrib V17    -0.875904274899692
#>     Attrib V18    -0.8127467461948414
#>     Attrib V19    -0.5487927344331348
#>     Attrib V2    0.9484693348565455
#>     Attrib V20    -0.5590726486874669
#>     Attrib V21    0.04405904044622401
#>     Attrib V22    -0.22836430659559268
#>     Attrib V23    0.40390488407274844
#>     Attrib V24    0.5995953207245893
#>     Attrib V25    0.01034016637533623
#>     Attrib V26    0.9691882718861384
#>     Attrib V27    1.5751709691305178
#>     Attrib V28    1.9660908148585587
#>     Attrib V29    1.1180188597951963
#>     Attrib V3    0.9042649046311554
#>     Attrib V30    0.6648593810449954
#>     Attrib V31    -0.6226143956076176
#>     Attrib V32    -0.403645367422904
#>     Attrib V33    -0.30954719334705666
#>     Attrib V34    -0.0716166933243292
#>     Attrib V35    0.6284942466079313
#>     Attrib V36    -1.1106614144676725
#>     Attrib V37    0.08975765331638322
#>     Attrib V38    -0.032785481119580004
#>     Attrib V39    0.3945398818498769
#>     Attrib V4    0.637175416005177
#>     Attrib V40    0.2611538264025294
#>     Attrib V41    1.211473902446218
#>     Attrib V42    -0.28552437034943096
#>     Attrib V43    0.07420243021381616
#>     Attrib V44    -0.11099032254792898
#>     Attrib V45    0.2759547117039827
#>     Attrib V46    0.9368053169711846
#>     Attrib V47    0.2459442742800845
#>     Attrib V48    -0.25344983355956935
#>     Attrib V49    0.7872944896035492
#>     Attrib V5    0.7866971530997987
#>     Attrib V50    -0.4236441411055705
#>     Attrib V51    1.0975469741510382
#>     Attrib V52    0.8596949095490313
#>     Attrib V53    1.0474064734450674
#>     Attrib V54    -0.18046531291006596
#>     Attrib V55    -0.24680265094629963
#>     Attrib V56    -0.4865920926193927
#>     Attrib V57    -0.32874932316661015
#>     Attrib V58    -0.12291867501621417
#>     Attrib V59    -0.03627868364019921
#>     Attrib V6    0.05399628493211906
#>     Attrib V60    1.0026489252331312
#>     Attrib V7    -0.37376608769453823
#>     Attrib V8    -1.5812960391357271
#>     Attrib V9    0.8069408816047505
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.004118342320784493
#>     Attrib V1    0.1025704417486817
#>     Attrib V10    0.1787557619727029
#>     Attrib V11    0.12978542260854917
#>     Attrib V12    0.11529778745460706
#>     Attrib V13    -0.00462201408233302
#>     Attrib V14    -0.03257718274181926
#>     Attrib V15    0.04338898879917304
#>     Attrib V16    0.023042893502695738
#>     Attrib V17    -0.035852513111004264
#>     Attrib V18    -0.11039691233523899
#>     Attrib V19    -0.09515776584735927
#>     Attrib V2    -0.02185450869864727
#>     Attrib V20    -0.04263701508615347
#>     Attrib V21    0.002432709051096103
#>     Attrib V22    -0.098505926628462
#>     Attrib V23    0.018392510702265386
#>     Attrib V24    0.11781757499682469
#>     Attrib V25    0.014515271748666648
#>     Attrib V26    -0.0213501968540564
#>     Attrib V27    -0.006842358281583094
#>     Attrib V28    0.09005727503044861
#>     Attrib V29    -0.12770684740792074
#>     Attrib V3    0.035034287983814354
#>     Attrib V30    -0.06477271402680633
#>     Attrib V31    -0.26949087440938285
#>     Attrib V32    -0.009896964913187692
#>     Attrib V33    0.143348446464184
#>     Attrib V34    -0.0015898976757048936
#>     Attrib V35    0.09931887822895087
#>     Attrib V36    -0.08617417350835924
#>     Attrib V37    -0.16162745799517197
#>     Attrib V38    0.0382872710640827
#>     Attrib V39    0.07882423173852281
#>     Attrib V4    0.10640175670590274
#>     Attrib V40    -0.08279145641859341
#>     Attrib V41    -0.12824666811344249
#>     Attrib V42    -0.0972835420650444
#>     Attrib V43    0.026689134568331448
#>     Attrib V44    0.10188340773665273
#>     Attrib V45    0.08367190105878225
#>     Attrib V46    0.1357475307088742
#>     Attrib V47    0.036358371999242564
#>     Attrib V48    0.1370506417981212
#>     Attrib V49    0.2170165182082515
#>     Attrib V5    0.007062450450450246
#>     Attrib V50    -0.16217184835890697
#>     Attrib V51    0.12422817826071293
#>     Attrib V52    0.07908386551160342
#>     Attrib V53    0.139955844080658
#>     Attrib V54    0.1481285220115459
#>     Attrib V55    -0.08340033993893896
#>     Attrib V56    -0.06272359310441447
#>     Attrib V57    0.0993974789664087
#>     Attrib V58    0.08137569160591526
#>     Attrib V59    0.1307131582289153
#>     Attrib V6    -0.11070743117058096
#>     Attrib V60    0.22277670453198362
#>     Attrib V7    0.061332030788145836
#>     Attrib V8    -0.22182990121920956
#>     Attrib V9    0.13635471563485402
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.5589491779713812
#>     Attrib V1    0.4188218048301128
#>     Attrib V10    0.8449811525409204
#>     Attrib V11    0.8046210688610366
#>     Attrib V12    1.3359837130955026
#>     Attrib V13    0.29541878425061646
#>     Attrib V14    -0.45570308672311843
#>     Attrib V15    -0.21097901522248208
#>     Attrib V16    -0.5659432509359215
#>     Attrib V17    -0.4175709579983459
#>     Attrib V18    -0.3678048086998203
#>     Attrib V19    -0.35168181459857323
#>     Attrib V2    0.4086381325274896
#>     Attrib V20    -0.38158327256485086
#>     Attrib V21    0.1599377913966868
#>     Attrib V22    -0.030135191871057863
#>     Attrib V23    0.38885264863468794
#>     Attrib V24    0.6317805797520559
#>     Attrib V25    0.2953537201751278
#>     Attrib V26    0.8208341523603343
#>     Attrib V27    1.255032529380645
#>     Attrib V28    1.4783754034711307
#>     Attrib V29    0.7141876171157944
#>     Attrib V3    0.4617666676567981
#>     Attrib V30    0.5309970542403872
#>     Attrib V31    -0.44024733862648785
#>     Attrib V32    -0.3232727439650052
#>     Attrib V33    -0.2227348199361641
#>     Attrib V34    -0.21266055646373258
#>     Attrib V35    0.32465655745676764
#>     Attrib V36    -0.8239140455289167
#>     Attrib V37    -0.10911977206978635
#>     Attrib V38    0.0027904252522445152
#>     Attrib V39    0.48862605765116374
#>     Attrib V4    0.4744689815969672
#>     Attrib V40    0.14141105744463198
#>     Attrib V41    0.740653180356092
#>     Attrib V42    -0.18590370695109162
#>     Attrib V43    0.15333118270583762
#>     Attrib V44    -0.09907736940899305
#>     Attrib V45    0.054662099161347795
#>     Attrib V46    0.6373736559668971
#>     Attrib V47    0.24786951986512493
#>     Attrib V48    0.021068192540614813
#>     Attrib V49    0.7692765478298538
#>     Attrib V5    0.6515850617917798
#>     Attrib V50    -0.3179615832121872
#>     Attrib V51    0.839148461804194
#>     Attrib V52    0.5802669697370204
#>     Attrib V53    0.8743560201430134
#>     Attrib V54    0.09640175743312746
#>     Attrib V55    -0.2331065384668204
#>     Attrib V56    -0.4067701200962491
#>     Attrib V57    -0.16479343971898136
#>     Attrib V58    -0.1326339881767973
#>     Attrib V59    0.060693946002480466
#>     Attrib V6    0.07268573647962996
#>     Attrib V60    0.7543401189156457
#>     Attrib V7    -0.12870723511085397
#>     Attrib V8    -1.1922400842869587
#>     Attrib V9    0.539137569094642
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.3803258593204473
#>     Attrib V1    -0.27674653708288527
#>     Attrib V10    -0.6960797553374137
#>     Attrib V11    -0.6032867461901018
#>     Attrib V12    -0.5685461862090314
#>     Attrib V13    0.21242970893301372
#>     Attrib V14    0.35727218875560207
#>     Attrib V15    -0.12119695168305487
#>     Attrib V16    0.22078734796108082
#>     Attrib V17    0.2668917634433479
#>     Attrib V18    0.512900208306536
#>     Attrib V19    0.37070418470998867
#>     Attrib V2    0.2838154183295167
#>     Attrib V20    -0.1269749365020025
#>     Attrib V21    -0.26761290512215136
#>     Attrib V22    -0.032910621277396905
#>     Attrib V23    -0.38781468402986446
#>     Attrib V24    -0.5783986632161022
#>     Attrib V25    0.12062417061089718
#>     Attrib V26    0.40181817855478097
#>     Attrib V27    0.2683544682606107
#>     Attrib V28    -0.4313021263924111
#>     Attrib V29    0.06921372109621042
#>     Attrib V3    0.12324176653714346
#>     Attrib V30    -0.20390974181308488
#>     Attrib V31    1.0258694488160356
#>     Attrib V32    0.0706170294567155
#>     Attrib V33    -0.5720595072870057
#>     Attrib V34    0.06405136258345782
#>     Attrib V35    -0.2636515006445196
#>     Attrib V36    0.9296363957001976
#>     Attrib V37    1.0044102191235622
#>     Attrib V38    0.1982700775376081
#>     Attrib V39    -0.3663189152303974
#>     Attrib V4    0.16347737707810497
#>     Attrib V40    0.3973757614307061
#>     Attrib V41    0.2841870557411842
#>     Attrib V42    -0.35350112425242464
#>     Attrib V43    -0.4438402496615867
#>     Attrib V44    -0.39168060737742955
#>     Attrib V45    -0.4038414906806812
#>     Attrib V46    -0.556691460044931
#>     Attrib V47    0.04647496311619889
#>     Attrib V48    -0.003513282538799153
#>     Attrib V49    -0.7022635601008198
#>     Attrib V5    0.1335545565925455
#>     Attrib V50    1.1570390986823906
#>     Attrib V51    -0.5044578537145088
#>     Attrib V52    -0.46652954551772774
#>     Attrib V53    -0.4329783221026801
#>     Attrib V54    -0.20615235874833301
#>     Attrib V55    0.5636901703164399
#>     Attrib V56    0.3826111083496906
#>     Attrib V57    0.2533126021414855
#>     Attrib V58    -0.38173221427459914
#>     Attrib V59    -0.15294890716216597
#>     Attrib V6    0.34505829482022393
#>     Attrib V60    -0.18192327449350482
#>     Attrib V7    -0.01806518739310242
#>     Attrib V8    0.7999972612764764
#>     Attrib V9    -0.6903886149730472
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.0020316515555279524
#>     Attrib V1    0.1306539807597075
#>     Attrib V10    0.20643802628988148
#>     Attrib V11    0.12690103945751158
#>     Attrib V12    0.1595262548891171
#>     Attrib V13    -0.11246140303879881
#>     Attrib V14    0.03250524158394029
#>     Attrib V15    0.15164278228808364
#>     Attrib V16    0.07770067802289839
#>     Attrib V17    0.09830476239308938
#>     Attrib V18    -9.717923871592249E-4
#>     Attrib V19    -0.054528687025606856
#>     Attrib V2    -0.25551808968455875
#>     Attrib V20    0.2451016818244568
#>     Attrib V21    0.19596838396174537
#>     Attrib V22    -0.012554417899880306
#>     Attrib V23    0.09271076691260294
#>     Attrib V24    0.15067690761175906
#>     Attrib V25    -0.031953820145422925
#>     Attrib V26    -0.31408942737104195
#>     Attrib V27    -0.3103278953035672
#>     Attrib V28    -0.13324537167775566
#>     Attrib V29    -0.4649084019265624
#>     Attrib V3    -0.1306183928224639
#>     Attrib V30    -0.2467772424900563
#>     Attrib V31    -0.6535145860484888
#>     Attrib V32    -0.12246782334838094
#>     Attrib V33    0.27522935312559993
#>     Attrib V34    0.05845392335155098
#>     Attrib V35    0.1956392602058699
#>     Attrib V36    -0.16372510588498074
#>     Attrib V37    -0.39109561265259096
#>     Attrib V38    0.06676346140864291
#>     Attrib V39    0.18610350117513078
#>     Attrib V4    -0.02548142231952812
#>     Attrib V40    -0.15296392422188765
#>     Attrib V41    -0.34307021805287474
#>     Attrib V42    0.07217796726905179
#>     Attrib V43    0.17157812314954043
#>     Attrib V44    0.246379198425511
#>     Attrib V45    0.2298287711485789
#>     Attrib V46    0.14265576845924788
#>     Attrib V47    -0.022315297428666933
#>     Attrib V48    0.12919838428907082
#>     Attrib V49    0.29304703051487224
#>     Attrib V5    -0.021485898952817092
#>     Attrib V50    -0.3196536527349952
#>     Attrib V51    0.19805948760896291
#>     Attrib V52    0.026196760599209765
#>     Attrib V53    0.10251437521082933
#>     Attrib V54    0.3441014183765868
#>     Attrib V55    -0.16186410106604088
#>     Attrib V56    -0.07964453322455077
#>     Attrib V57    0.024896825983913535
#>     Attrib V58    0.23444648805026888
#>     Attrib V59    0.16290797035453783
#>     Attrib V6    -0.11990176047843376
#>     Attrib V60    0.20894447016440074
#>     Attrib V7    0.11907643647014857
#>     Attrib V8    -0.2242369725622141
#>     Attrib V9    0.22859923400934465
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.12739169105472356
#>     Attrib V1    0.23651153689422544
#>     Attrib V10    0.3549542622829848
#>     Attrib V11    0.26067375651812147
#>     Attrib V12    0.09180449258575726
#>     Attrib V13    -0.23024832961056946
#>     Attrib V14    0.06769641956927445
#>     Attrib V15    0.24272666994349804
#>     Attrib V16    0.15519780810878195
#>     Attrib V17    0.10910018973471962
#>     Attrib V18    -0.03110774837515789
#>     Attrib V19    -0.01632752158239639
#>     Attrib V2    -0.3691223427794401
#>     Attrib V20    0.3650589849637311
#>     Attrib V21    0.46376152474135585
#>     Attrib V22    0.1873812164547817
#>     Attrib V23    0.2683513960283361
#>     Attrib V24    0.2343104557875079
#>     Attrib V25    -0.1984695478882634
#>     Attrib V26    -0.5317535431183842
#>     Attrib V27    -0.4222584128947578
#>     Attrib V28    -0.004807583239699603
#>     Attrib V29    -0.3675054343631465
#>     Attrib V3    -0.21699833496811674
#>     Attrib V30    -0.16592787784408872
#>     Attrib V31    -1.0965996112757985
#>     Attrib V32    -0.21744990476774734
#>     Attrib V33    0.532001222151217
#>     Attrib V34    -0.10753441627620576
#>     Attrib V35    0.1142389530192655
#>     Attrib V36    -0.3819122714291214
#>     Attrib V37    -0.6981896045453674
#>     Attrib V38    0.04826390645146936
#>     Attrib V39    0.3010228832690821
#>     Attrib V4    0.09875243841126291
#>     Attrib V40    -0.23030954873232926
#>     Attrib V41    -0.39687913738757147
#>     Attrib V42    0.3244043624061173
#>     Attrib V43    0.45791132816281543
#>     Attrib V44    0.40114073618500223
#>     Attrib V45    0.3205780074219722
#>     Attrib V46    0.3088048720536276
#>     Attrib V47    -0.12423900810127783
#>     Attrib V48    0.1446041690156949
#>     Attrib V49    0.5172128456679274
#>     Attrib V5    -0.05777075193680492
#>     Attrib V50    -0.6912191924756718
#>     Attrib V51    0.2318115378013785
#>     Attrib V52    0.14872166872913314
#>     Attrib V53    0.26470411960349954
#>     Attrib V54    0.3889785818061239
#>     Attrib V55    -0.4810505169015698
#>     Attrib V56    -0.21639429874786728
#>     Attrib V57    0.02316022341891872
#>     Attrib V58    0.3806132729653166
#>     Attrib V59    0.36266032888803706
#>     Attrib V6    -0.24204259371940798
#>     Attrib V60    0.26261375661198577
#>     Attrib V7    0.2630518599234265
#>     Attrib V8    -0.3751329101958629
#>     Attrib V9    0.4097863582138068
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.055371131286501986
#>     Attrib V1    0.2189990383356796
#>     Attrib V10    0.34068551229974425
#>     Attrib V11    0.26088102735954305
#>     Attrib V12    0.28396097986483654
#>     Attrib V13    0.0036960251222716307
#>     Attrib V14    0.02410540631717056
#>     Attrib V15    0.15690390490022385
#>     Attrib V16    0.0013116881271542952
#>     Attrib V17    0.046590625949637775
#>     Attrib V18    -0.05432001834749866
#>     Attrib V19    -0.08753235691882788
#>     Attrib V2    -0.3117126540059795
#>     Attrib V20    0.273850949185424
#>     Attrib V21    0.34430269767323773
#>     Attrib V22    0.07883711464195348
#>     Attrib V23    0.28331224138289696
#>     Attrib V24    0.38055706387310667
#>     Attrib V25    0.09655960966188402
#>     Attrib V26    -0.25442156339101374
#>     Attrib V27    -0.1674999245142218
#>     Attrib V28    0.003049562586605678
#>     Attrib V29    -0.40027957363676847
#>     Attrib V3    -0.02843842611600558
#>     Attrib V30    -0.17012706884954681
#>     Attrib V31    -0.8403331720170277
#>     Attrib V32    -0.14223581373742247
#>     Attrib V33    0.3403846985372335
#>     Attrib V34    -0.025558092061911654
#>     Attrib V35    0.1496238780413725
#>     Attrib V36    -0.36012154127027174
#>     Attrib V37    -0.5549008916445338
#>     Attrib V38    -0.012947290053373924
#>     Attrib V39    0.3168249823045377
#>     Attrib V4    0.0283208735492839
#>     Attrib V40    -0.12254108016581881
#>     Attrib V41    -0.25832623865150023
#>     Attrib V42    0.2289748484464832
#>     Attrib V43    0.2642507307190086
#>     Attrib V44    0.2712031962063879
#>     Attrib V45    0.15112977268087338
#>     Attrib V46    0.2519008167444202
#>     Attrib V47    -0.035862897373704954
#>     Attrib V48    0.05578577678747796
#>     Attrib V49    0.4399481563715904
#>     Attrib V5    0.009379607510759261
#>     Attrib V50    -0.5604146750165029
#>     Attrib V51    0.17898056408228197
#>     Attrib V52    0.08600293557254801
#>     Attrib V53    0.2750997274055952
#>     Attrib V54    0.31623034847294446
#>     Attrib V55    -0.3433199109477153
#>     Attrib V56    -0.16860769689088342
#>     Attrib V57    -0.016663502846126308
#>     Attrib V58    0.2620825954289494
#>     Attrib V59    0.2941078882863056
#>     Attrib V6    -0.13979525240246465
#>     Attrib V60    0.3112255968791189
#>     Attrib V7    0.2411638477008629
#>     Attrib V8    -0.4322053000482622
#>     Attrib V9    0.33574321553837877
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.020750734223230427
#>     Attrib V1    0.32887866458362486
#>     Attrib V10    0.1893283671875532
#>     Attrib V11    0.1259639740508841
#>     Attrib V12    0.0918637934791532
#>     Attrib V13    -0.12842734057359093
#>     Attrib V14    0.10212404817573706
#>     Attrib V15    0.3291265270813598
#>     Attrib V16    0.10998783861633672
#>     Attrib V17    0.07580635437139488
#>     Attrib V18    -0.04989146173956438
#>     Attrib V19    -0.10552314561646575
#>     Attrib V2    -0.22534795376983383
#>     Attrib V20    0.2587117546533406
#>     Attrib V21    0.27224446574014727
#>     Attrib V22    0.02625487401431981
#>     Attrib V23    0.12037925883736236
#>     Attrib V24    0.21365507106391168
#>     Attrib V25    0.004443930571929727
#>     Attrib V26    -0.3287209962044859
#>     Attrib V27    -0.5405844943493042
#>     Attrib V28    -0.4515625082346381
#>     Attrib V29    -0.7537996689281043
#>     Attrib V3    -0.11972374181133204
#>     Attrib V30    -0.4175400227917139
#>     Attrib V31    -0.7835950718606917
#>     Attrib V32    -0.18731171209562145
#>     Attrib V33    0.3825179191302879
#>     Attrib V34    -0.0018217480439965583
#>     Attrib V35    0.17475617233531734
#>     Attrib V36    -0.22636566460065366
#>     Attrib V37    -0.44900806313556424
#>     Attrib V38    -0.002329695458151016
#>     Attrib V39    0.265041665728605
#>     Attrib V4    0.0018002738608832222
#>     Attrib V40    -0.14532625784189476
#>     Attrib V41    -0.3508383910114558
#>     Attrib V42    0.11358838504060018
#>     Attrib V43    0.18256090356995075
#>     Attrib V44    0.2732766888755161
#>     Attrib V45    0.16879692742814587
#>     Attrib V46    0.14602378454154927
#>     Attrib V47    -0.1474735788747159
#>     Attrib V48    0.12757040382811774
#>     Attrib V49    0.3667911475562213
#>     Attrib V5    -0.06342222975824564
#>     Attrib V50    -0.4292148885736254
#>     Attrib V51    0.10303459216268036
#>     Attrib V52    -0.013043730974569142
#>     Attrib V53    0.1491707276721904
#>     Attrib V54    0.5477025322978446
#>     Attrib V55    -0.16383359365642233
#>     Attrib V56    -0.05631850080963263
#>     Attrib V57    0.09359716202886378
#>     Attrib V58    0.3497459488847764
#>     Attrib V59    0.41642105306393035
#>     Attrib V6    -0.1223114790987968
#>     Attrib V60    0.3688528642614115
#>     Attrib V7    0.29986814801017736
#>     Attrib V8    -0.24848655936805328
#>     Attrib V9    0.22184876969879447
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6909956766314845
#>     Attrib V1    -0.3605809655372906
#>     Attrib V10    -0.5651491156323819
#>     Attrib V11    -0.4068644293749353
#>     Attrib V12    -0.3263765982028565
#>     Attrib V13    0.4344817603354897
#>     Attrib V14    0.47396233808017185
#>     Attrib V15    0.10461625039526949
#>     Attrib V16    0.2129752347858917
#>     Attrib V17    0.14791177550780504
#>     Attrib V18    0.22536254052768942
#>     Attrib V19    0.13007190657879664
#>     Attrib V2    0.7461507541053147
#>     Attrib V20    -0.5286068845365414
#>     Attrib V21    -1.1213901275045575
#>     Attrib V22    -0.4507370700030023
#>     Attrib V23    -0.6750308593698923
#>     Attrib V24    -0.8873874202542152
#>     Attrib V25    0.0859153816221934
#>     Attrib V26    0.7077349111783979
#>     Attrib V27    0.5024604078824525
#>     Attrib V28    -0.3881627417679917
#>     Attrib V29    0.11381559498678408
#>     Attrib V3    0.37958014384926514
#>     Attrib V30    -0.6620440351900195
#>     Attrib V31    1.0344533981157182
#>     Attrib V32    0.043010603561161806
#>     Attrib V33    -1.1413799587132043
#>     Attrib V34    -0.0289737392310635
#>     Attrib V35    -0.6938219071399961
#>     Attrib V36    0.6492275682556838
#>     Attrib V37    1.1236397712248185
#>     Attrib V38    -0.288442474630454
#>     Attrib V39    -1.2000574283188783
#>     Attrib V4    0.23512695262851543
#>     Attrib V40    -0.03394660174631874
#>     Attrib V41    -0.13577599754828557
#>     Attrib V42    -1.2100960880738707
#>     Attrib V43    -1.448319543669024
#>     Attrib V44    -1.4937375134281219
#>     Attrib V45    -1.3175973672407144
#>     Attrib V46    -0.7258735175807208
#>     Attrib V47    0.10278457610654562
#>     Attrib V48    -0.08831494445951114
#>     Attrib V49    -1.06338713119984
#>     Attrib V5    0.07366338359939435
#>     Attrib V50    1.7732630974735824
#>     Attrib V51    -0.3223480619681307
#>     Attrib V52    -0.1161068823183451
#>     Attrib V53    -0.42667968795652494
#>     Attrib V54    -0.054211082408858566
#>     Attrib V55    1.235978933276868
#>     Attrib V56    0.5370619690779885
#>     Attrib V57    0.5683846061335364
#>     Attrib V58    -0.4009067291800495
#>     Attrib V59    -0.48334482135660056
#>     Attrib V6    0.15912485186024777
#>     Attrib V60    -0.08294635864068457
#>     Attrib V7    -0.46838262473385966
#>     Attrib V8    0.8872403069564604
#>     Attrib V9    -0.7599680787504622
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.19111012827227733
#>     Attrib V1    0.028357752563475176
#>     Attrib V10    0.03496382474835643
#>     Attrib V11    -0.01216234393308847
#>     Attrib V12    -0.010296345120896742
#>     Attrib V13    0.04396747114320695
#>     Attrib V14    0.01991855105902244
#>     Attrib V15    0.0018918943253674204
#>     Attrib V16    0.06671517744303548
#>     Attrib V17    0.05814029756049741
#>     Attrib V18    0.043058821591332355
#>     Attrib V19    -0.022838850277088468
#>     Attrib V2    0.0147021285296029
#>     Attrib V20    -0.09977568347725556
#>     Attrib V21    -0.11884257975184011
#>     Attrib V22    -0.0825720512839239
#>     Attrib V23    -0.0591308711200701
#>     Attrib V24    -0.0054747659029025265
#>     Attrib V25    -0.010209012088921646
#>     Attrib V26    -0.07567973786118735
#>     Attrib V27    -0.047064601753379856
#>     Attrib V28    -0.014646416971551435
#>     Attrib V29    -0.05349376174356031
#>     Attrib V3    0.09692761622386976
#>     Attrib V30    -0.05737005230803421
#>     Attrib V31    0.024272852101900017
#>     Attrib V32    0.0867097164833933
#>     Attrib V33    0.021150909379286154
#>     Attrib V34    0.0745328158274721
#>     Attrib V35    0.05886559478120944
#>     Attrib V36    0.09111705050364108
#>     Attrib V37    0.12310991983167803
#>     Attrib V38    0.06044496573971834
#>     Attrib V39    0.043374843642110986
#>     Attrib V4    0.07710160009489954
#>     Attrib V40    0.050531492325171026
#>     Attrib V41    0.07922480987952354
#>     Attrib V42    0.08477801184994015
#>     Attrib V43    0.03399938266956913
#>     Attrib V44    0.02139508447646758
#>     Attrib V45    0.03426891458158339
#>     Attrib V46    0.06210231636731549
#>     Attrib V47    0.06015520796416349
#>     Attrib V48    0.04701437392265394
#>     Attrib V49    6.612857190264297E-4
#>     Attrib V5    0.07079428915414163
#>     Attrib V50    0.1197740103538145
#>     Attrib V51    0.11723649715337704
#>     Attrib V52    0.09899889908370584
#>     Attrib V53    0.08443507262938628
#>     Attrib V54    0.018642452293589924
#>     Attrib V55    0.09638105363705031
#>     Attrib V56    0.1074688946582709
#>     Attrib V57    0.11326692541684147
#>     Attrib V58    0.12228280247152339
#>     Attrib V59    0.029695517273714094
#>     Attrib V6    0.0790465937674223
#>     Attrib V60    0.1020113149245064
#>     Attrib V7    0.03019111544645824
#>     Attrib V8    0.03322984095683838
#>     Attrib V9    0.08091883744925746
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.12975029634392765
#>     Attrib V1    0.02668329007638849
#>     Attrib V10    0.03747337251164949
#>     Attrib V11    -0.004166827498872299
#>     Attrib V12    -0.0593056956661218
#>     Attrib V13    0.002486162213834441
#>     Attrib V14    0.020518518120056815
#>     Attrib V15    0.047804740899671606
#>     Attrib V16    0.01548787679147802
#>     Attrib V17    0.019135227292421106
#>     Attrib V18    0.02439682137764796
#>     Attrib V19    0.0038737114519354354
#>     Attrib V2    0.1387286393374448
#>     Attrib V20    -0.10101241709005207
#>     Attrib V21    -0.10326731940153532
#>     Attrib V22    0.03409081711274066
#>     Attrib V23    -0.014868281865943207
#>     Attrib V24    -0.023117134010156713
#>     Attrib V25    -0.07737391201190462
#>     Attrib V26    -0.11617178486501213
#>     Attrib V27    -0.074943109424034
#>     Attrib V28    -0.1087662001785939
#>     Attrib V29    -0.06081980881814954
#>     Attrib V3    0.07835462115618522
#>     Attrib V30    0.049507404901850086
#>     Attrib V31    0.25875880867828877
#>     Attrib V32    0.11877288203542724
#>     Attrib V33    0.12242412095062999
#>     Attrib V34    0.0965076210022764
#>     Attrib V35    0.14892851460752957
#>     Attrib V36    0.20461600054474016
#>     Attrib V37    0.1877329423208376
#>     Attrib V38    0.14341987436734988
#>     Attrib V39    0.0805544217230974
#>     Attrib V4    0.0658181270114062
#>     Attrib V40    0.16224019055671518
#>     Attrib V41    0.23830383717165918
#>     Attrib V42    0.12994823891536186
#>     Attrib V43    0.1423001314609328
#>     Attrib V44    0.11436812221286498
#>     Attrib V45    0.06011780982392154
#>     Attrib V46    -0.002108499861069055
#>     Attrib V47    0.022479662606147862
#>     Attrib V48    0.05670903145270996
#>     Attrib V49    -0.0850454592532735
#>     Attrib V5    0.10021595382813923
#>     Attrib V50    0.15346988618835694
#>     Attrib V51    0.03308601658496723
#>     Attrib V52    0.01991554537591807
#>     Attrib V53    0.004793044192844426
#>     Attrib V54    -0.022315908921813874
#>     Attrib V55    0.130283887226746
#>     Attrib V56    0.15372166654502886
#>     Attrib V57    0.14392360722430625
#>     Attrib V58    0.02882171503017468
#>     Attrib V59    0.01269856912678032
#>     Attrib V6    0.1642969148749345
#>     Attrib V60    0.039535655358083344
#>     Attrib V7    0.02913275513721888
#>     Attrib V8    0.21874308044068272
#>     Attrib V9    0.04335013044972248
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1288219839763268
#>     Attrib V1    0.13154036074101758
#>     Attrib V10    0.13607449799876645
#>     Attrib V11    0.08697669615333693
#>     Attrib V12    0.08494064799779877
#>     Attrib V13    0.004295420047145924
#>     Attrib V14    0.05567597701999003
#>     Attrib V15    0.05645411731656728
#>     Attrib V16    0.020114404666448062
#>     Attrib V17    -0.033916917675111055
#>     Attrib V18    0.004050696606490444
#>     Attrib V19    -0.12031694301606505
#>     Attrib V2    0.009448293253406818
#>     Attrib V20    0.016208204976952283
#>     Attrib V21    0.026971408498011284
#>     Attrib V22    -0.08653819603437204
#>     Attrib V23    -0.006858604308388549
#>     Attrib V24    0.02900957325401763
#>     Attrib V25    0.017633084238971697
#>     Attrib V26    -0.04010406191241153
#>     Attrib V27    -0.027811675002601018
#>     Attrib V28    -0.0034675519652992803
#>     Attrib V29    -0.17598187994200643
#>     Attrib V3    0.10133610768713908
#>     Attrib V30    -0.1622782251397611
#>     Attrib V31    -0.25762506728809614
#>     Attrib V32    -0.03782108341045733
#>     Attrib V33    0.08092290227663404
#>     Attrib V34    0.03488643271618734
#>     Attrib V35    0.0652910932948547
#>     Attrib V36    -0.010781272612371339
#>     Attrib V37    -0.12211767497402057
#>     Attrib V38    0.0014240293953932432
#>     Attrib V39    0.11892027171728624
#>     Attrib V4    0.05351482952245751
#>     Attrib V40    -0.06671188999806522
#>     Attrib V41    -0.13890585542579384
#>     Attrib V42    -0.020955702007401336
#>     Attrib V43    0.03591287001302677
#>     Attrib V44    0.09616151814821178
#>     Attrib V45    0.01442094153639815
#>     Attrib V46    0.06405223172483461
#>     Attrib V47    0.04977177927192395
#>     Attrib V48    0.09149691429019327
#>     Attrib V49    0.175491377592507
#>     Attrib V5    0.03376203657480351
#>     Attrib V50    -0.1117217221716754
#>     Attrib V51    0.16730738063902453
#>     Attrib V52    0.05997137919878766
#>     Attrib V53    0.10145752821113571
#>     Attrib V54    0.11427451248094987
#>     Attrib V55    0.016758949698985035
#>     Attrib V56    0.03523924300114038
#>     Attrib V57    0.028175390221205993
#>     Attrib V58    0.11772761963441913
#>     Attrib V59    0.1495004974095541
#>     Attrib V6    -0.06846534182103395
#>     Attrib V60    0.22253247661233674
#>     Attrib V7    0.10205071680202064
#>     Attrib V8    -0.08279920778596671
#>     Attrib V9    0.11247657657970747
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.7330597653357072
#>     Attrib V1    0.6019598921947675
#>     Attrib V10    0.9083515838445124
#>     Attrib V11    0.8881914489374557
#>     Attrib V12    1.61506044474339
#>     Attrib V13    0.3229116714529866
#>     Attrib V14    -0.5165544553867775
#>     Attrib V15    -0.20193631014732813
#>     Attrib V16    -0.7864118282296412
#>     Attrib V17    -0.6231807968002071
#>     Attrib V18    -0.5781854414976152
#>     Attrib V19    -0.428986167852273
#>     Attrib V2    0.6330561842532629
#>     Attrib V20    -0.5515071570186376
#>     Attrib V21    0.056141129893669386
#>     Attrib V22    -0.0847564929374751
#>     Attrib V23    0.3362096676273271
#>     Attrib V24    0.632878398031622
#>     Attrib V25    0.21852958845842738
#>     Attrib V26    0.8759261539469556
#>     Attrib V27    1.4345743393588968
#>     Attrib V28    1.7566421180317813
#>     Attrib V29    0.8557038877441496
#>     Attrib V3    0.6429572682319702
#>     Attrib V30    0.571160349777383
#>     Attrib V31    -0.5299420382722302
#>     Attrib V32    -0.4050230468330309
#>     Attrib V33    -0.2517156326896021
#>     Attrib V34    -0.20417405012541798
#>     Attrib V35    0.5357015234516819
#>     Attrib V36    -0.9247324444028744
#>     Attrib V37    -0.006981952166584799
#>     Attrib V38    -0.0021167567762621436
#>     Attrib V39    0.4511740171460959
#>     Attrib V4    0.6923835577647524
#>     Attrib V40    0.18372834003945576
#>     Attrib V41    0.9685681993650808
#>     Attrib V42    -0.20412978447649577
#>     Attrib V43    0.058019144743018884
#>     Attrib V44    -0.17034296180513378
#>     Attrib V45    0.166686896158185
#>     Attrib V46    0.7124834522887237
#>     Attrib V47    0.15500477826193457
#>     Attrib V48    -0.07911748734541289
#>     Attrib V49    0.84451296078609
#>     Attrib V5    0.8535561068393248
#>     Attrib V50    -0.46405617673813915
#>     Attrib V51    0.9246838707143178
#>     Attrib V52    0.6370464861610102
#>     Attrib V53    0.957106339089932
#>     Attrib V54    0.004588801832288398
#>     Attrib V55    -0.3176169911963124
#>     Attrib V56    -0.5052165899317113
#>     Attrib V57    -0.18735470886289865
#>     Attrib V58    -0.0769779631495195
#>     Attrib V59    0.19470980328654225
#>     Attrib V6    0.10441099496954484
#>     Attrib V60    1.055651110507338
#>     Attrib V7    -0.19293401674940386
#>     Attrib V8    -1.4871156036312587
#>     Attrib V9    0.5870566785372058
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3655838834663794
#>     Attrib V1    0.13097150301762853
#>     Attrib V10    0.8261451629500285
#>     Attrib V11    0.7115668444451904
#>     Attrib V12    1.0515569930714022
#>     Attrib V13    0.0807712812058988
#>     Attrib V14    -0.3348085948282167
#>     Attrib V15    -0.21470169895992353
#>     Attrib V16    -0.4705728511097502
#>     Attrib V17    -0.26638615719602
#>     Attrib V18    -0.19046034701949138
#>     Attrib V19    -0.22338152878384931
#>     Attrib V2    -0.16052599220437694
#>     Attrib V20    -0.17990590612781668
#>     Attrib V21    0.15436606857483362
#>     Attrib V22    0.14333495726600204
#>     Attrib V23    0.6279455256028501
#>     Attrib V24    0.818689752675815
#>     Attrib V25    0.4631542204159073
#>     Attrib V26    0.4413789962595269
#>     Attrib V27    0.6759213295956481
#>     Attrib V28    0.7645744589083423
#>     Attrib V29    8.790113386795941E-5
#>     Attrib V3    0.05119362510915876
#>     Attrib V30    0.2527848448668188
#>     Attrib V31    -0.6058133449641664
#>     Attrib V32    -0.25452161787325694
#>     Attrib V33    0.15553747149855382
#>     Attrib V34    -0.17513558859275064
#>     Attrib V35    0.29316691276163387
#>     Attrib V36    -0.6352018004119324
#>     Attrib V37    -0.49786898103306737
#>     Attrib V38    -0.12676211301148116
#>     Attrib V39    0.2621279149248391
#>     Attrib V4    0.07119458565321883
#>     Attrib V40    0.03403598034067784
#>     Attrib V41    0.2573325357758537
#>     Attrib V42    0.11401732256964262
#>     Attrib V43    0.37911985842482926
#>     Attrib V44    0.23177339329310453
#>     Attrib V45    0.09246521311662377
#>     Attrib V46    0.5319738082692801
#>     Attrib V47    0.16745629802833886
#>     Attrib V48    0.15547979903196163
#>     Attrib V49    0.6594261104117777
#>     Attrib V5    0.4223788126933038
#>     Attrib V50    -0.5884474158565498
#>     Attrib V51    0.5752885291238772
#>     Attrib V52    0.48088616147259994
#>     Attrib V53    0.6333013508050929
#>     Attrib V54    0.20279823340060177
#>     Attrib V55    -0.40206104847428914
#>     Attrib V56    -0.44272505325353345
#>     Attrib V57    -0.17601904021239126
#>     Attrib V58    0.03219295290816236
#>     Attrib V59    -0.006468025051531177
#>     Attrib V6    -0.07113470060419552
#>     Attrib V60    0.47346262167352515
#>     Attrib V7    0.03851042389829017
#>     Attrib V8    -0.9322007320890348
#>     Attrib V9    0.6769419629585124
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.12649001900147924
#>     Attrib V1    -0.3768709464874891
#>     Attrib V10    -0.857716843062477
#>     Attrib V11    -0.7907201564343601
#>     Attrib V12    -0.6545825288917044
#>     Attrib V13    0.13279219411086682
#>     Attrib V14    0.18707248348145744
#>     Attrib V15    -0.16007470705250298
#>     Attrib V16    0.08241991559436038
#>     Attrib V17    0.08061420463618961
#>     Attrib V18    0.2505478140591346
#>     Attrib V19    0.13773919843737273
#>     Attrib V2    0.38839413525501587
#>     Attrib V20    -0.49812005838035706
#>     Attrib V21    -0.5607382083167863
#>     Attrib V22    -0.23561567040367898
#>     Attrib V23    -0.5238577252785311
#>     Attrib V24    -0.5966410778430092
#>     Attrib V25    0.05278838009801797
#>     Attrib V26    0.3716380462724153
#>     Attrib V27    0.33614187684782615
#>     Attrib V28    -0.3260099412697183
#>     Attrib V29    0.28993091868706994
#>     Attrib V3    0.1419291749244215
#>     Attrib V30    -0.24613403537290485
#>     Attrib V31    1.2129655234997956
#>     Attrib V32    0.15990275686216848
#>     Attrib V33    -0.6727381253372696
#>     Attrib V34    0.1019613801837014
#>     Attrib V35    -0.3276006779622895
#>     Attrib V36    0.8588232484229436
#>     Attrib V37    1.2155540491267076
#>     Attrib V38    0.06966007612500283
#>     Attrib V39    -0.4149873220988253
#>     Attrib V4    0.13303291979243934
#>     Attrib V40    0.5142212777684168
#>     Attrib V41    0.5847483027008333
#>     Attrib V42    -0.5565837288935804
#>     Attrib V43    -0.6465354353044414
#>     Attrib V44    -0.627783113069839
#>     Attrib V45    -0.5644504536121053
#>     Attrib V46    -0.5876891529079684
#>     Attrib V47    2.6010343736596156E-4
#>     Attrib V48    -0.024087794461726195
#>     Attrib V49    -0.7880820815897852
#>     Attrib V5    0.20074538207023046
#>     Attrib V50    1.1881517091249059
#>     Attrib V51    -0.5708707070930191
#>     Attrib V52    -0.4882896093805529
#>     Attrib V53    -0.4968947415754053
#>     Attrib V54    -0.2909591563250974
#>     Attrib V55    0.5634257971306814
#>     Attrib V56    0.35799731789694644
#>     Attrib V57    0.3442395497908571
#>     Attrib V58    -0.42546951510773157
#>     Attrib V59    -0.04152624841960705
#>     Attrib V6    0.32476650302161636
#>     Attrib V60    -0.028534634480285846
#>     Attrib V7    -0.09235485412910513
#>     Attrib V8    0.7194049514392158
#>     Attrib V9    -0.7873617434921666
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.001140626296251527
#>     Attrib V1    0.2717438818827627
#>     Attrib V10    0.16175798321050358
#>     Attrib V11    0.08400010512333118
#>     Attrib V12    0.07889730256078137
#>     Attrib V13    -0.08197473525724766
#>     Attrib V14    0.11925221697075254
#>     Attrib V15    0.187582312837852
#>     Attrib V16    0.15429135397689742
#>     Attrib V17    0.07055882791976532
#>     Attrib V18    -0.03238821740205133
#>     Attrib V19    -0.08150907620136179
#>     Attrib V2    -0.14019401278803256
#>     Attrib V20    0.2052270935710262
#>     Attrib V21    0.19719445104727137
#>     Attrib V22    -0.02354560020692119
#>     Attrib V23    0.015729344924714322
#>     Attrib V24    0.20303037419046355
#>     Attrib V25    -0.043187473332976456
#>     Attrib V26    -0.3199820826687146
#>     Attrib V27    -0.41313792654611253
#>     Attrib V28    -0.35299633059283086
#>     Attrib V29    -0.5188824384855134
#>     Attrib V3    -0.06437382896170551
#>     Attrib V30    -0.35411263214964583
#>     Attrib V31    -0.569174190271562
#>     Attrib V32    -0.1142884308724366
#>     Attrib V33    0.23903679572519596
#>     Attrib V34    0.003950062074243309
#>     Attrib V35    0.11726244152388025
#>     Attrib V36    -0.17135940369713906
#>     Attrib V37    -0.3537316605427692
#>     Attrib V38    -0.01307359834438063
#>     Attrib V39    0.1596627511602126
#>     Attrib V4    0.03568970542488425
#>     Attrib V40    -0.1095305044590599
#>     Attrib V41    -0.3061848816662505
#>     Attrib V42    0.06612201307354766
#>     Attrib V43    0.1969586427613505
#>     Attrib V44    0.1642065049390977
#>     Attrib V45    0.08471672254703701
#>     Attrib V46    0.11600457345225997
#>     Attrib V47    -0.14335052165386705
#>     Attrib V48    0.10902935848601683
#>     Attrib V49    0.2718189313369962
#>     Attrib V5    -0.011421807949787035
#>     Attrib V50    -0.32053957971519764
#>     Attrib V51    0.10033990576584252
#>     Attrib V52    0.016243070673362604
#>     Attrib V53    0.12786359746635262
#>     Attrib V54    0.40927333485826284
#>     Attrib V55    -0.10487338904529528
#>     Attrib V56    -0.0022094782790856595
#>     Attrib V57    0.0838147074402
#>     Attrib V58    0.30964867280392944
#>     Attrib V59    0.31666960115935866
#>     Attrib V6    -0.07937609546129705
#>     Attrib V60    0.30483231948928996
#>     Attrib V7    0.21903173065884407
#>     Attrib V8    -0.2553963552450563
#>     Attrib V9    0.18190600277612254
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.10667051755520016
#>     Attrib V1    0.34378536071995586
#>     Attrib V10    0.469267190395348
#>     Attrib V11    0.33307594589253275
#>     Attrib V12    0.23915325746022237
#>     Attrib V13    -0.2540594282404473
#>     Attrib V14    0.04841577305402812
#>     Attrib V15    0.274883472857103
#>     Attrib V16    0.10609714593741848
#>     Attrib V17    0.17484554871544752
#>     Attrib V18    -0.014240848022483123
#>     Attrib V19    -0.0746533369481125
#>     Attrib V2    -0.627327469964735
#>     Attrib V20    0.4610308632166073
#>     Attrib V21    0.5751846369534537
#>     Attrib V22    0.25800176475819814
#>     Attrib V23    0.3750465876517759
#>     Attrib V24    0.35954499340283225
#>     Attrib V25    -0.11102236753861063
#>     Attrib V26    -0.5513603343566733
#>     Attrib V27    -0.5415556188960353
#>     Attrib V28    -0.04159212761726208
#>     Attrib V29    -0.5949935610646383
#>     Attrib V3    -0.23121738523646024
#>     Attrib V30    -0.2405651638868557
#>     Attrib V31    -1.3353470775364786
#>     Attrib V32    -0.28293570604547025
#>     Attrib V33    0.5672451677054597
#>     Attrib V34    -0.19517602825182884
#>     Attrib V35    0.21111664973820013
#>     Attrib V36    -0.38422740331535726
#>     Attrib V37    -0.8016715903581576
#>     Attrib V38    0.05482631916018518
#>     Attrib V39    0.4037865074954577
#>     Attrib V4    0.10537426286074326
#>     Attrib V40    -0.3545609747302897
#>     Attrib V41    -0.5461965645075043
#>     Attrib V42    0.44521406123610946
#>     Attrib V43    0.6169132970259543
#>     Attrib V44    0.5794470113476454
#>     Attrib V45    0.4177640010865503
#>     Attrib V46    0.34688976440163083
#>     Attrib V47    -0.08243341886642498
#>     Attrib V48    0.1258983761083857
#>     Attrib V49    0.6530663658476985
#>     Attrib V5    -0.0825095375701025
#>     Attrib V50    -0.8441823814814309
#>     Attrib V51    0.222782211269105
#>     Attrib V52    0.17527686824217817
#>     Attrib V53    0.3473383839530111
#>     Attrib V54    0.504935596760111
#>     Attrib V55    -0.6234262594923781
#>     Attrib V56    -0.2631815900945047
#>     Attrib V57    -0.07867141486637354
#>     Attrib V58    0.44237709130545566
#>     Attrib V59    0.46081624441401786
#>     Attrib V6    -0.23609738245810252
#>     Attrib V60    0.3077948339397956
#>     Attrib V7    0.3434792679434664
#>     Attrib V8    -0.4974497556252957
#>     Attrib V9    0.5069157337042416
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.2858789331636169
#>     Attrib V1    -0.32764495743619837
#>     Attrib V10    -0.7249921023486419
#>     Attrib V11    -0.6229853176790812
#>     Attrib V12    -0.597201320991866
#>     Attrib V13    0.1355234364484903
#>     Attrib V14    0.26594280751660443
#>     Attrib V15    -0.05682642785001156
#>     Attrib V16    0.16433456189782475
#>     Attrib V17    0.2753276545649812
#>     Attrib V18    0.3724585413763727
#>     Attrib V19    0.2871813138250271
#>     Attrib V2    0.3007159317550237
#>     Attrib V20    -0.20392547712257753
#>     Attrib V21    -0.34749473838044787
#>     Attrib V22    -0.08641060893540516
#>     Attrib V23    -0.37265364439011944
#>     Attrib V24    -0.5574064555436666
#>     Attrib V25    0.10177117158080724
#>     Attrib V26    0.37006429909642397
#>     Attrib V27    0.2071827188495574
#>     Attrib V28    -0.41068102459386685
#>     Attrib V29    0.08783174323568445
#>     Attrib V3    0.13244472949985686
#>     Attrib V30    -0.2902020485827189
#>     Attrib V31    0.951524857312999
#>     Attrib V32    0.15074549684398383
#>     Attrib V33    -0.6650717604645026
#>     Attrib V34    0.016775908864111354
#>     Attrib V35    -0.33455969129101554
#>     Attrib V36    0.8825734194141875
#>     Attrib V37    0.9655166069004653
#>     Attrib V38    0.12058525437800936
#>     Attrib V39    -0.3940486737093905
#>     Attrib V4    0.17133561149114862
#>     Attrib V40    0.3965246354355208
#>     Attrib V41    0.3384885887237476
#>     Attrib V42    -0.3803177315307779
#>     Attrib V43    -0.4343728757094975
#>     Attrib V44    -0.4836485819989886
#>     Attrib V45    -0.5028456158889493
#>     Attrib V46    -0.5212246061725909
#>     Attrib V47    0.07296494049740618
#>     Attrib V48    -0.039223022801047
#>     Attrib V49    -0.7567564724334902
#>     Attrib V5    0.10178219321783949
#>     Attrib V50    1.1304611535427531
#>     Attrib V51    -0.47314130634580087
#>     Attrib V52    -0.3628263476415164
#>     Attrib V53    -0.4750305415671532
#>     Attrib V54    -0.22304570682375152
#>     Attrib V55    0.5904116178159264
#>     Attrib V56    0.43000628840851873
#>     Attrib V57    0.3228115020652512
#>     Attrib V58    -0.31842954377289034
#>     Attrib V59    -0.10047284533601288
#>     Attrib V6    0.3254675077983233
#>     Attrib V60    -0.1865249792018223
#>     Attrib V7    -0.09016651780484357
#>     Attrib V8    0.8211655733743399
#>     Attrib V9    -0.6206279563173063
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.6512676829590079
#>     Attrib V1    0.5875518116602665
#>     Attrib V10    0.9125293017197902
#>     Attrib V11    0.9472283176007843
#>     Attrib V12    1.5876879916506668
#>     Attrib V13    0.3137866106329424
#>     Attrib V14    -0.5510167317195245
#>     Attrib V15    -0.3615625965781555
#>     Attrib V16    -0.8736019521964231
#>     Attrib V17    -0.7649695198652594
#>     Attrib V18    -0.6997475841275687
#>     Attrib V19    -0.5990446364313117
#>     Attrib V2    0.704683779251625
#>     Attrib V20    -0.6724299849963017
#>     Attrib V21    -0.10037019522302089
#>     Attrib V22    -0.18323742721732253
#>     Attrib V23    0.3375743216985425
#>     Attrib V24    0.5053208376098665
#>     Attrib V25    0.0326607503092016
#>     Attrib V26    0.8163528518820541
#>     Attrib V27    1.4402193021408038
#>     Attrib V28    1.7240620799781823
#>     Attrib V29    0.8564284761792882
#>     Attrib V3    0.7701927276780491
#>     Attrib V30    0.5501100016548534
#>     Attrib V31    -0.37515133591923433
#>     Attrib V32    -0.2212528428748772
#>     Attrib V33    -0.25763019723446245
#>     Attrib V34    -0.08802644218072957
#>     Attrib V35    0.49087182042234107
#>     Attrib V36    -0.9859064670270602
#>     Attrib V37    0.032147886108732586
#>     Attrib V38    -0.04699687866657089
#>     Attrib V39    0.3909747967989802
#>     Attrib V4    0.6520115109065969
#>     Attrib V40    0.12234864875838103
#>     Attrib V41    1.0081340232814016
#>     Attrib V42    -0.2501743029842064
#>     Attrib V43    0.04434465298705285
#>     Attrib V44    -0.0974791930307783
#>     Attrib V45    0.11718172962169493
#>     Attrib V46    0.723904356100534
#>     Attrib V47    0.18876651761754115
#>     Attrib V48    -0.11362788582117152
#>     Attrib V49    0.8343236259540898
#>     Attrib V5    0.8206251564051515
#>     Attrib V50    -0.40245847159800824
#>     Attrib V51    0.9747916123070164
#>     Attrib V52    0.6788147255841879
#>     Attrib V53    0.8746096407637942
#>     Attrib V54    -0.06296982866212197
#>     Attrib V55    -0.25385186416748906
#>     Attrib V56    -0.4037787989453154
#>     Attrib V57    -0.12548842141505415
#>     Attrib V58    -0.05256388761249966
#>     Attrib V59    0.2278658875931095
#>     Attrib V6    0.08278763924393329
#>     Attrib V60    1.078391379701809
#>     Attrib V7    -0.35863000486403435
#>     Attrib V8    -1.5061218870452746
#>     Attrib V9    0.6077592983315282
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2126705833911392
#>     Attrib V1    0.015111047551469187
#>     Attrib V10    -0.020522861759397954
#>     Attrib V11    -0.06174470523633255
#>     Attrib V12    -0.009967940320049783
#>     Attrib V13    0.009018566404494022
#>     Attrib V14    0.09553271066157226
#>     Attrib V15    -0.007745044082616956
#>     Attrib V16    0.014029760165749198
#>     Attrib V17    0.045168578097036914
#>     Attrib V18    -0.021955789737797656
#>     Attrib V19    0.018106372418326706
#>     Attrib V2    0.08486483788762775
#>     Attrib V20    -0.07022286766088363
#>     Attrib V21    -0.0818791961018921
#>     Attrib V22    -0.052159573460524286
#>     Attrib V23    -0.020060420267607224
#>     Attrib V24    -0.05964096671317814
#>     Attrib V25    -0.029412137848413934
#>     Attrib V26    -0.07600829911117898
#>     Attrib V27    -0.007786216867432579
#>     Attrib V28    -0.027013169735674643
#>     Attrib V29    -0.01670749786938143
#>     Attrib V3    0.046415826967696645
#>     Attrib V30    -0.014027234638814187
#>     Attrib V31    0.10203373997837735
#>     Attrib V32    0.0717945298870886
#>     Attrib V33    0.05724062057352579
#>     Attrib V34    0.04705252211143513
#>     Attrib V35    0.11502090881513857
#>     Attrib V36    0.19636659959439678
#>     Attrib V37    0.18914797563537036
#>     Attrib V38    0.03460580625563901
#>     Attrib V39    0.03284499303898497
#>     Attrib V4    0.08673735501122014
#>     Attrib V40    0.10583646073887032
#>     Attrib V41    0.1006697522508226
#>     Attrib V42    0.09144765462001339
#>     Attrib V43    0.0689101989358556
#>     Attrib V44    0.0681818529280541
#>     Attrib V45    0.005583057744648182
#>     Attrib V46    -0.006507747366936499
#>     Attrib V47    0.030013961066303455
#>     Attrib V48    0.08443600343370515
#>     Attrib V49    -0.02908672621950089
#>     Attrib V5    0.02969022349751071
#>     Attrib V50    0.13315687761063433
#>     Attrib V51    0.019202496608398248
#>     Attrib V52    0.031842757203081364
#>     Attrib V53    0.013793379337211092
#>     Attrib V54    0.012343360004614296
#>     Attrib V55    0.10024850056138059
#>     Attrib V56    0.14374204053451864
#>     Attrib V57    0.12970344173278595
#>     Attrib V58    0.07617714807604557
#>     Attrib V59    0.07593190531821989
#>     Attrib V6    0.12725356625069892
#>     Attrib V60    0.11377322584860348
#>     Attrib V7    0.006859896182237285
#>     Attrib V8    0.14123496035227726
#>     Attrib V9    0.013402707859652689
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.18838414476719853
#>     Attrib V1    0.37924341429079134
#>     Attrib V10    0.49902178803504765
#>     Attrib V11    0.354854881516985
#>     Attrib V12    0.31126186342582773
#>     Attrib V13    -0.10859253641292767
#>     Attrib V14    -0.01724250271483037
#>     Attrib V15    0.2352809055051437
#>     Attrib V16    0.07036123392190514
#>     Attrib V17    0.05007865998036673
#>     Attrib V18    -0.0015694052729674794
#>     Attrib V19    -0.08584238066989482
#>     Attrib V2    -0.4198798266067071
#>     Attrib V20    0.31768894795682223
#>     Attrib V21    0.5094228040908632
#>     Attrib V22    0.17972796940616526
#>     Attrib V23    0.23933192883795185
#>     Attrib V24    0.4054855019026744
#>     Attrib V25    0.00565903869457934
#>     Attrib V26    -0.2921069230464029
#>     Attrib V27    -0.4032083074824432
#>     Attrib V28    -0.1247705207655055
#>     Attrib V29    -0.5750575114956196
#>     Attrib V3    -0.18617968783165623
#>     Attrib V30    -0.22642485011433258
#>     Attrib V31    -1.0641236814862012
#>     Attrib V32    -0.2311197366911222
#>     Attrib V33    0.4704783171673852
#>     Attrib V34    -0.085874184236343
#>     Attrib V35    0.1991994635292151
#>     Attrib V36    -0.38274878718440286
#>     Attrib V37    -0.7395979320883354
#>     Attrib V38    0.02837009252051922
#>     Attrib V39    0.37371790701822033
#>     Attrib V4    0.059112203556025394
#>     Attrib V40    -0.3026514215652286
#>     Attrib V41    -0.41970616578486636
#>     Attrib V42    0.3080751236005294
#>     Attrib V43    0.3935866757268355
#>     Attrib V44    0.45618537822853467
#>     Attrib V45    0.37102253599397444
#>     Attrib V46    0.261774856203863
#>     Attrib V47    -0.1491868639801081
#>     Attrib V48    0.1283895840360892
#>     Attrib V49    0.497704745692366
#>     Attrib V5    -0.03124492262150074
#>     Attrib V50    -0.6594765360805217
#>     Attrib V51    0.24621149829464453
#>     Attrib V52    0.10806241720986444
#>     Attrib V53    0.30947917402089636
#>     Attrib V54    0.4861761441920108
#>     Attrib V55    -0.429995501832683
#>     Attrib V56    -0.3027326041044206
#>     Attrib V57    -0.03945266269712497
#>     Attrib V58    0.3772802751527092
#>     Attrib V59    0.37760632806924904
#>     Attrib V6    -0.1710295293350447
#>     Attrib V60    0.32606743498415147
#>     Attrib V7    0.28139234827972937
#>     Attrib V8    -0.43607832526537615
#>     Attrib V9    0.46427643935032986
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5639329677257521
#>     Attrib V1    -0.7180947297577598
#>     Attrib V10    -0.56378809751215
#>     Attrib V11    -1.273444913303941
#>     Attrib V12    -1.524489752575263
#>     Attrib V13    -0.43207313796677554
#>     Attrib V14    0.2739141491386931
#>     Attrib V15    -0.6056507361151859
#>     Attrib V16    -0.8216053947376034
#>     Attrib V17    -1.3134713674509266
#>     Attrib V18    -0.7317486549513198
#>     Attrib V19    -0.6061544598948343
#>     Attrib V2    0.034679793138688346
#>     Attrib V20    -0.47184549480337673
#>     Attrib V21    -0.45475185784320327
#>     Attrib V22    -0.025521243227008765
#>     Attrib V23    0.01628357878088318
#>     Attrib V24    -0.46986003825304307
#>     Attrib V25    -0.6646332145714734
#>     Attrib V26    -0.8842228984856292
#>     Attrib V27    -0.43578453646817134
#>     Attrib V28    -0.8290575565594462
#>     Attrib V29    -0.40873318022772126
#>     Attrib V3    -0.08374144498013393
#>     Attrib V30    -1.3872734094591346
#>     Attrib V31    0.3816402065267308
#>     Attrib V32    0.716838419180925
#>     Attrib V33    -0.3408724607372564
#>     Attrib V34    -0.40720886131398265
#>     Attrib V35    -0.6854085242524239
#>     Attrib V36    1.6374513497780407
#>     Attrib V37    1.6172885057213129
#>     Attrib V38    0.37341989414825033
#>     Attrib V39    -0.5349957004375772
#>     Attrib V4    0.3973088493491659
#>     Attrib V40    0.5452349947007286
#>     Attrib V41    0.695883549196879
#>     Attrib V42    0.035142811878960734
#>     Attrib V43    -0.2641865810580006
#>     Attrib V44    -0.4113765960284621
#>     Attrib V45    -1.2141050417280959
#>     Attrib V46    -0.9666965875313414
#>     Attrib V47    -0.44002918204550434
#>     Attrib V48    -0.40351649166492043
#>     Attrib V49    -0.8109405499522455
#>     Attrib V5    -0.08648279453902202
#>     Attrib V50    1.476056998144853
#>     Attrib V51    -0.6683742739847238
#>     Attrib V52    -0.001784893298775569
#>     Attrib V53    0.15319499753258664
#>     Attrib V54    0.08739756170781743
#>     Attrib V55    0.20804725233180446
#>     Attrib V56    0.5534942223125261
#>     Attrib V57    0.8621750995295063
#>     Attrib V58    0.4777875006008349
#>     Attrib V59    0.5403266889726402
#>     Attrib V6    0.4851067349842457
#>     Attrib V60    0.25172049208017666
#>     Attrib V7    0.13940888927304038
#>     Attrib V8    1.6789262618925869
#>     Attrib V9    -0.3053081162014575
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.05572178958906596
#>     Attrib V1    0.10756269106537085
#>     Attrib V10    0.10174451755702024
#>     Attrib V11    0.1497042177911796
#>     Attrib V12    0.16282150122869699
#>     Attrib V13    0.00352247559129523
#>     Attrib V14    0.09027904804308129
#>     Attrib V15    0.07560924271138784
#>     Attrib V16    -0.027873652162288494
#>     Attrib V17    -0.038142015938879455
#>     Attrib V18    -0.0651225111426818
#>     Attrib V19    -0.11936270320384383
#>     Attrib V2    -0.024882473686944396
#>     Attrib V20    0.05169542853758243
#>     Attrib V21    0.04065025043795001
#>     Attrib V22    -0.05285965374784253
#>     Attrib V23    -0.03645038257549473
#>     Attrib V24    0.10789795989846171
#>     Attrib V25    0.07137305663899011
#>     Attrib V26    -0.07206406630483209
#>     Attrib V27    -0.037561974447293235
#>     Attrib V28    0.008945383264877113
#>     Attrib V29    -0.12287279914856289
#>     Attrib V3    0.06974087211082301
#>     Attrib V30    -0.18272993031707926
#>     Attrib V31    -0.27697584678684817
#>     Attrib V32    -0.04162359045854188
#>     Attrib V33    0.09037794009859865
#>     Attrib V34    0.010672758758322588
#>     Attrib V35    0.11487641135197268
#>     Attrib V36    -0.11013070377256146
#>     Attrib V37    -0.11155937089898538
#>     Attrib V38    0.018628337100076057
#>     Attrib V39    0.11954689932819958
#>     Attrib V4    0.048480345733671264
#>     Attrib V40    -0.05817693392849357
#>     Attrib V41    -0.11339940325080508
#>     Attrib V42    -0.0550731257668859
#>     Attrib V43    0.09420019061246329
#>     Attrib V44    0.0253514993041174
#>     Attrib V45    0.11491867696167245
#>     Attrib V46    0.11064883845593484
#>     Attrib V47    0.039476836887183196
#>     Attrib V48    0.07270136059925686
#>     Attrib V49    0.13821232449080204
#>     Attrib V5    0.004902469280819753
#>     Attrib V50    -0.07682151930565786
#>     Attrib V51    0.1459753302527829
#>     Attrib V52    0.11384064551884127
#>     Attrib V53    0.10393821524529169
#>     Attrib V54    0.1467005887176576
#>     Attrib V55    0.02352416124701649
#>     Attrib V56    0.009914996398907036
#>     Attrib V57    0.06539477269757035
#>     Attrib V58    0.0937116389278085
#>     Attrib V59    0.08677280909771248
#>     Attrib V6    -0.03735855619808602
#>     Attrib V60    0.2012623884255639
#>     Attrib V7    0.058924394481126616
#>     Attrib V8    -0.14517200446903133
#>     Attrib V9    0.10110705219187392
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.16493672777365162
#>     Attrib V1    0.08978409524550865
#>     Attrib V10    0.09496080106440924
#>     Attrib V11    0.0329317988905355
#>     Attrib V12    0.058373547315890804
#>     Attrib V13    0.06195657391538421
#>     Attrib V14    0.06038566982648455
#>     Attrib V15    0.04962017231064286
#>     Attrib V16    0.026858846869483418
#>     Attrib V17    0.05371555223062283
#>     Attrib V18    -0.01555796887360912
#>     Attrib V19    -0.07889217757075974
#>     Attrib V2    0.07719299724727402
#>     Attrib V20    -0.08387248506326858
#>     Attrib V21    -0.052240236829989926
#>     Attrib V22    -0.07125642267997605
#>     Attrib V23    -0.01459255432795185
#>     Attrib V24    -0.041658888549758924
#>     Attrib V25    0.010311156001933022
#>     Attrib V26    -0.004207229084366851
#>     Attrib V27    -0.02262948065391824
#>     Attrib V28    0.008117131395958481
#>     Attrib V29    -0.09846631177604466
#>     Attrib V3    0.059340191094412645
#>     Attrib V30    -0.022518609725762435
#>     Attrib V31    0.050064340768950825
#>     Attrib V32    0.026713128467956503
#>     Attrib V33    -1.632187235577622E-4
#>     Attrib V34    0.0074814539967810855
#>     Attrib V35    0.09327182246706939
#>     Attrib V36    0.05470640951243482
#>     Attrib V37    0.09606296539372702
#>     Attrib V38    0.012449127425900377
#>     Attrib V39    0.0949194159024942
#>     Attrib V4    0.1059629744685654
#>     Attrib V40    0.06634069892460762
#>     Attrib V41    0.03724567561426259
#>     Attrib V42    0.06807646703262422
#>     Attrib V43    0.030518677120629518
#>     Attrib V44    0.02677377761148768
#>     Attrib V45    0.040754854380089
#>     Attrib V46    0.05298546035710289
#>     Attrib V47    0.030289575149531126
#>     Attrib V48    0.10105281473275032
#>     Attrib V49    0.035684197331529305
#>     Attrib V5    0.019468359585703556
#>     Attrib V50    0.036450485081798656
#>     Attrib V51    0.06725254372272498
#>     Attrib V52    0.07982441284323757
#>     Attrib V53    0.0593511359593354
#>     Attrib V54    0.06710058910908807
#>     Attrib V55    0.048133599510395766
#>     Attrib V56    0.1293915622913332
#>     Attrib V57    0.06623214988410883
#>     Attrib V58    0.12264557272950995
#>     Attrib V59    0.12135474201331782
#>     Attrib V6    0.04731381674362978
#>     Attrib V60    0.13857386508202604
#>     Attrib V7    -0.005796721541095783
#>     Attrib V8    0.011374107769452357
#>     Attrib V9    0.0467756445557692
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.04406943235597158
#>     Attrib V1    0.19817652110407008
#>     Attrib V10    0.11844971644364731
#>     Attrib V11    0.11350928715370898
#>     Attrib V12    0.0512958275296705
#>     Attrib V13    -0.01281718129780929
#>     Attrib V14    0.13280794889657663
#>     Attrib V15    0.21286936555026417
#>     Attrib V16    0.09683974209860295
#>     Attrib V17    0.08554439698305262
#>     Attrib V18    0.010626061192617548
#>     Attrib V19    -0.05024675752379479
#>     Attrib V2    -0.09556141187146149
#>     Attrib V20    0.20431677442824103
#>     Attrib V21    0.11930011642849635
#>     Attrib V22    0.026476465042286408
#>     Attrib V23    0.08955761504745484
#>     Attrib V24    0.1893973071359201
#>     Attrib V25    -0.03490164154300852
#>     Attrib V26    -0.23595294806342657
#>     Attrib V27    -0.3645699381162729
#>     Attrib V28    -0.31795040755606807
#>     Attrib V29    -0.5272861319658201
#>     Attrib V3    -0.07242130965237452
#>     Attrib V30    -0.3471872281509096
#>     Attrib V31    -0.5170630921891262
#>     Attrib V32    -0.13299800889960267
#>     Attrib V33    0.21632658681500067
#>     Attrib V34    0.032394785338037684
#>     Attrib V35    0.16673783392090216
#>     Attrib V36    -0.1345135426351657
#>     Attrib V37    -0.27996511670173396
#>     Attrib V38    0.05257658384281278
#>     Attrib V39    0.13536882276441606
#>     Attrib V4    0.03598861931192736
#>     Attrib V40    -0.10667863738626593
#>     Attrib V41    -0.2709856068539317
#>     Attrib V42    0.05263344692185279
#>     Attrib V43    0.16237013625056987
#>     Attrib V44    0.19345298075827513
#>     Attrib V45    0.10515214520864541
#>     Attrib V46    0.09352603878590927
#>     Attrib V47    -0.06714631004288033
#>     Attrib V48    0.09262772352020437
#>     Attrib V49    0.23033421166919066
#>     Attrib V5    -0.0360078601155026
#>     Attrib V50    -0.2829480342033791
#>     Attrib V51    0.09098768743037185
#>     Attrib V52    0.038334992471779954
#>     Attrib V53    0.16327053104155528
#>     Attrib V54    0.3994987708505949
#>     Attrib V55    -0.053922649861202016
#>     Attrib V56    -0.0556083011154819
#>     Attrib V57    0.0627009961442523
#>     Attrib V58    0.20615024579741942
#>     Attrib V59    0.26858243114995756
#>     Attrib V6    -0.09193866468782506
#>     Attrib V60    0.250436082958869
#>     Attrib V7    0.1796705697682305
#>     Attrib V8    -0.1654068414040757
#>     Attrib V9    0.18214977356555292
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.044657292412847355
#>     Attrib V1    0.40067759589339447
#>     Attrib V10    0.07912477707286955
#>     Attrib V11    -0.061519594661791695
#>     Attrib V12    -0.21501851105205996
#>     Attrib V13    -0.29631386041288554
#>     Attrib V14    0.3163932531456503
#>     Attrib V15    0.5140040398230928
#>     Attrib V16    0.37415883386764176
#>     Attrib V17    0.1626975401159802
#>     Attrib V18    0.07964009764694488
#>     Attrib V19    -0.02478238123724391
#>     Attrib V2    -0.26172904940098496
#>     Attrib V20    0.5532131052803475
#>     Attrib V21    0.6012456368509522
#>     Attrib V22    0.19090394965310314
#>     Attrib V23    0.16971277909633356
#>     Attrib V24    0.04166141159368944
#>     Attrib V25    -0.4701113152292811
#>     Attrib V26    -0.7890703322935912
#>     Attrib V27    -0.6508081892654258
#>     Attrib V28    -0.038180710342021966
#>     Attrib V29    -0.21734522982667556
#>     Attrib V3    -0.06435709897573427
#>     Attrib V30    -0.20778895535235475
#>     Attrib V31    -1.1198192566178093
#>     Attrib V32    -0.29893374210159573
#>     Attrib V33    0.3751224940747586
#>     Attrib V34    -0.21094532411628036
#>     Attrib V35    -0.03108517828022414
#>     Attrib V36    -0.24037496482450704
#>     Attrib V37    -0.4999465536147364
#>     Attrib V38    0.05896258147214817
#>     Attrib V39    0.36293836745175245
#>     Attrib V4    0.11059619164169487
#>     Attrib V40    -0.26530488885335074
#>     Attrib V41    -0.3769934769259692
#>     Attrib V42    0.4005148477217898
#>     Attrib V43    0.2734524895069333
#>     Attrib V44    0.4165607325147622
#>     Attrib V45    0.3320099497928575
#>     Attrib V46    0.2047062268823405
#>     Attrib V47    -0.1780395429862986
#>     Attrib V48    0.024637382418508814
#>     Attrib V49    0.5110109276545749
#>     Attrib V5    -0.038759549704175354
#>     Attrib V50    -0.5318354383064642
#>     Attrib V51    0.15524025602371186
#>     Attrib V52    0.08538863001054113
#>     Attrib V53    0.23834803990706
#>     Attrib V54    0.4589431535683882
#>     Attrib V55    -0.3521275991436506
#>     Attrib V56    -0.12278673408922601
#>     Attrib V57    0.14939685677086506
#>     Attrib V58    0.5021243412850583
#>     Attrib V59    0.5327023189273482
#>     Attrib V6    -0.10868127188166632
#>     Attrib V60    0.3216583333220758
#>     Attrib V7    0.2816974019352709
#>     Attrib V8    -0.2103690457607417
#>     Attrib V9    0.24556661568007707
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
#>  0.1304348 
```
