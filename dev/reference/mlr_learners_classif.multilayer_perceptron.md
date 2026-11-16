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
  [mlr3extralearners](https://CRAN.R-project.org/package=mlr3extralearners),
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
#> • Packages: mlr3, mlr3extralearners, and RWeka
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
#>     Threshold    -0.7508063413017864
#>     Node 2    2.681310716389921
#>     Node 3    1.8654367267567655
#>     Node 4    1.3967160239851257
#>     Node 5    -2.147357477222074
#>     Node 6    1.5675205005542883
#>     Node 7    2.4171005895578173
#>     Node 8    2.807351295155323
#>     Node 9    1.8335008458659614
#>     Node 10    -0.21215601461312453
#>     Node 11    1.423156796517336
#>     Node 12    1.610555252871747
#>     Node 13    0.14034307356720271
#>     Node 14    1.7037028709580044
#>     Node 15    -2.87748865283166
#>     Node 16    -0.9557663779290144
#>     Node 17    1.7417824973574956
#>     Node 18    -1.2478926602220473
#>     Node 19    1.282544172862395
#>     Node 20    1.547252788489465
#>     Node 21    -1.0992438781977822
#>     Node 22    0.50785534603475
#>     Node 23    0.3041976794398317
#>     Node 24    -2.6491203253883504
#>     Node 25    3.992336225763276
#>     Node 26    0.2700172768276584
#>     Node 27    1.526073499627817
#>     Node 28    -0.5407577912747838
#>     Node 29    1.2292842567697044
#>     Node 30    -1.2644314791585767
#>     Node 31    1.716638443854075
#>     Node 32    -0.8868402762054304
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7356057271053382
#>     Node 2    -2.736740778427614
#>     Node 3    -1.8497087886341914
#>     Node 4    -1.3613859161456583
#>     Node 5    2.1459066254251282
#>     Node 6    -1.5493304952588183
#>     Node 7    -2.3968625744088983
#>     Node 8    -2.8364807444501743
#>     Node 9    -1.8238864094606297
#>     Node 10    0.16446752028633257
#>     Node 11    -1.3996684443345466
#>     Node 12    -1.698919877448102
#>     Node 13    -0.06671534959413099
#>     Node 14    -1.6370589880006392
#>     Node 15    2.8616347395111505
#>     Node 16    0.9381560551390812
#>     Node 17    -1.7219070538647483
#>     Node 18    1.2754431753037603
#>     Node 19    -1.274861889790028
#>     Node 20    -1.5405908638015364
#>     Node 21    1.1495900544505777
#>     Node 22    -0.5425608765576259
#>     Node 23    -0.33285983388838414
#>     Node 24    2.627784711485969
#>     Node 25    -3.9644854930626656
#>     Node 26    -0.33558175410833724
#>     Node 27    -1.5701170722399787
#>     Node 28    0.5060767839765316
#>     Node 29    -1.2656812181360706
#>     Node 30    1.3286015707550438
#>     Node 31    -1.6700170941671177
#>     Node 32    0.8703496961064416
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.19107183778123704
#>     Attrib V1    -0.21068330944444885
#>     Attrib V10    1.0428646051378496
#>     Attrib V11    0.9770574479428523
#>     Attrib V12    0.9252715192243209
#>     Attrib V13    0.6183181554141705
#>     Attrib V14    -0.3545195719639809
#>     Attrib V15    -0.5528575073592129
#>     Attrib V16    -0.4492832210938492
#>     Attrib V17    -0.6272370683140308
#>     Attrib V18    -0.30349074706421286
#>     Attrib V19    0.14186813700461032
#>     Attrib V2    0.0013160506261441014
#>     Attrib V20    -0.5088526070247128
#>     Attrib V21    0.21880522692169455
#>     Attrib V22    0.6348564885843974
#>     Attrib V23    0.3947003787518658
#>     Attrib V24    0.6330889600512589
#>     Attrib V25    0.6485922482130283
#>     Attrib V26    0.14445563176832146
#>     Attrib V27    0.5550385003096655
#>     Attrib V28    1.2862970278283232
#>     Attrib V29    0.8227975523419906
#>     Attrib V3    -0.6363174457425504
#>     Attrib V30    0.6101735599204116
#>     Attrib V31    -0.6569947004431215
#>     Attrib V32    -0.34566602349175246
#>     Attrib V33    0.06978476452540644
#>     Attrib V34    -0.11666189977410009
#>     Attrib V35    -0.49972106075507045
#>     Attrib V36    -0.5780848884276327
#>     Attrib V37    -0.5224221411926446
#>     Attrib V38    -0.014558257460659176
#>     Attrib V39    1.0026891681402652
#>     Attrib V4    0.5119963173018433
#>     Attrib V40    0.5400143332997068
#>     Attrib V41    0.7522106034669868
#>     Attrib V42    0.19468177073637996
#>     Attrib V43    0.40151237619908187
#>     Attrib V44    0.459493330305862
#>     Attrib V45    0.09358694700624019
#>     Attrib V46    0.3778376100747165
#>     Attrib V47    0.5648796770024093
#>     Attrib V48    0.7064661691567513
#>     Attrib V49    0.7344011361835054
#>     Attrib V5    0.35432884438305795
#>     Attrib V50    -0.31949279394398844
#>     Attrib V51    0.33326234058187704
#>     Attrib V52    0.40135733261254525
#>     Attrib V53    0.0866807707145303
#>     Attrib V54    -0.3560659323537407
#>     Attrib V55    -1.1037328551163814
#>     Attrib V56    -0.08004502655779915
#>     Attrib V57    -0.5343345942483185
#>     Attrib V58    -0.15171002472251613
#>     Attrib V59    0.42492012886796304
#>     Attrib V6    0.10665029447098905
#>     Attrib V60    0.11436239732245448
#>     Attrib V7    0.12940675995047496
#>     Attrib V8    -0.11694437856083073
#>     Attrib V9    0.8383731294281039
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.17056748455344048
#>     Attrib V1    -0.1104928322348548
#>     Attrib V10    0.836543327706077
#>     Attrib V11    0.7326110831823982
#>     Attrib V12    0.6725319206424043
#>     Attrib V13    0.45773134928571996
#>     Attrib V14    -0.37943345416368224
#>     Attrib V15    -0.39368148419290827
#>     Attrib V16    -0.4049337060402215
#>     Attrib V17    -0.528481729760689
#>     Attrib V18    -0.3523321822601995
#>     Attrib V19    0.06738098261006437
#>     Attrib V2    0.027362866237660696
#>     Attrib V20    -0.39206302309062924
#>     Attrib V21    0.12464331907739898
#>     Attrib V22    0.5290421696764184
#>     Attrib V23    0.32570194914140754
#>     Attrib V24    0.452103626179067
#>     Attrib V25    0.47525831712836497
#>     Attrib V26    -0.0842959263064223
#>     Attrib V27    0.20764956384268507
#>     Attrib V28    0.7775980736979556
#>     Attrib V29    0.3679835947045536
#>     Attrib V3    -0.5362283088178866
#>     Attrib V30    0.554586050643352
#>     Attrib V31    -0.45126358856964965
#>     Attrib V32    -0.18085085349304142
#>     Attrib V33    0.262238442600532
#>     Attrib V34    -0.05354125053125589
#>     Attrib V35    -0.29076397851441554
#>     Attrib V36    -0.43294859698892346
#>     Attrib V37    -0.4554280797260577
#>     Attrib V38    0.0041276739412603345
#>     Attrib V39    0.6857385438613811
#>     Attrib V4    0.258198526323342
#>     Attrib V40    0.29360904777682134
#>     Attrib V41    0.3756174320572331
#>     Attrib V42    0.11002366446567412
#>     Attrib V43    0.40073837444019855
#>     Attrib V44    0.4721343929591898
#>     Attrib V45    0.15310453109465239
#>     Attrib V46    0.28260786973584306
#>     Attrib V47    0.43614165831345725
#>     Attrib V48    0.4588100357018729
#>     Attrib V49    0.4556797687439688
#>     Attrib V5    0.1511463699955865
#>     Attrib V50    -0.2954166236140826
#>     Attrib V51    0.12314101928358782
#>     Attrib V52    0.28685519918605507
#>     Attrib V53    -0.059040828807369244
#>     Attrib V54    -0.215519436213792
#>     Attrib V55    -0.8900808421597457
#>     Attrib V56    0.0037215076175313414
#>     Attrib V57    -0.43424379649571154
#>     Attrib V58    -0.0212042575550403
#>     Attrib V59    0.23349996943679985
#>     Attrib V6    -0.017539070545248052
#>     Attrib V60    0.03321963420204002
#>     Attrib V7    0.122740796833521
#>     Attrib V8    -0.05235158380650807
#>     Attrib V9    0.7657876647823846
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.1318118834216763
#>     Attrib V1    0.22682126197213665
#>     Attrib V10    0.23868183805712087
#>     Attrib V11    0.2122861256282672
#>     Attrib V12    0.12041485911349822
#>     Attrib V13    0.0914607843965921
#>     Attrib V14    -0.21180984421022397
#>     Attrib V15    -0.05774039176918814
#>     Attrib V16    -0.0867665515898765
#>     Attrib V17    -0.04082662408285412
#>     Attrib V18    0.024516664266735214
#>     Attrib V19    0.20452531251682635
#>     Attrib V2    0.027950831021300738
#>     Attrib V20    0.1806058172611747
#>     Attrib V21    0.5468011185673686
#>     Attrib V22    0.6095977662650949
#>     Attrib V23    0.45122718779664034
#>     Attrib V24    0.24680736194930117
#>     Attrib V25    -0.12517391681427992
#>     Attrib V26    -0.8917596793510266
#>     Attrib V27    -0.7407694536216922
#>     Attrib V28    -0.28572942602529683
#>     Attrib V29    -0.3639310413661053
#>     Attrib V3    -0.06014034178559001
#>     Attrib V30    0.241853220691369
#>     Attrib V31    -0.4603084533544754
#>     Attrib V32    -0.07677809694336184
#>     Attrib V33    0.4147187594940503
#>     Attrib V34    -0.08761398830868543
#>     Attrib V35    -0.14246036331337833
#>     Attrib V36    -0.3281814550473395
#>     Attrib V37    -0.5863538720019515
#>     Attrib V38    0.10435199059499951
#>     Attrib V39    0.2022210192823238
#>     Attrib V4    0.17986453199545668
#>     Attrib V40    -0.13988012511611336
#>     Attrib V41    -0.09888036052009071
#>     Attrib V42    0.1493729174635561
#>     Attrib V43    0.49278653668684114
#>     Attrib V44    0.5838483105106874
#>     Attrib V45    0.24043429363747515
#>     Attrib V46    -0.007126612006818352
#>     Attrib V47    0.04410978986758423
#>     Attrib V48    0.08058610633996423
#>     Attrib V49    0.08204532714292638
#>     Attrib V5    0.12146894680371009
#>     Attrib V50    -0.11611903146806976
#>     Attrib V51    0.002923616588857713
#>     Attrib V52    0.10376822680909921
#>     Attrib V53    0.24046975192366743
#>     Attrib V54    0.16590146710665918
#>     Attrib V55    -0.6459884214943122
#>     Attrib V56    0.3176493153770933
#>     Attrib V57    -0.057361783017208026
#>     Attrib V58    0.14469577876443981
#>     Attrib V59    0.3766057347728313
#>     Attrib V6    -0.08970732604743446
#>     Attrib V60    0.23601146384614027
#>     Attrib V7    0.25186884634738504
#>     Attrib V8    -0.10602006031438331
#>     Attrib V9    0.47146313561299524
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.27211610518557167
#>     Attrib V1    -0.27966572317022637
#>     Attrib V10    -0.5077054017353129
#>     Attrib V11    -0.49685253635164783
#>     Attrib V12    -0.3324876744745796
#>     Attrib V13    -0.1679319479739148
#>     Attrib V14    0.5096522817469767
#>     Attrib V15    0.25560805892070165
#>     Attrib V16    0.14189933096246415
#>     Attrib V17    0.13015365262045447
#>     Attrib V18    -0.03422550489415466
#>     Attrib V19    -0.26453877367450973
#>     Attrib V2    0.009494640453441281
#>     Attrib V20    -0.09866596687319047
#>     Attrib V21    -0.6341209143567763
#>     Attrib V22    -0.9905089054025945
#>     Attrib V23    -0.6672705471920407
#>     Attrib V24    -0.5277846980810322
#>     Attrib V25    -0.007641105845419354
#>     Attrib V26    1.1295219539236203
#>     Attrib V27    0.8051576628017403
#>     Attrib V28    0.19887551353354802
#>     Attrib V29    0.4604228938672814
#>     Attrib V3    0.3059428178143318
#>     Attrib V30    -0.44401020065498553
#>     Attrib V31    0.747277547961523
#>     Attrib V32    0.15034254784178777
#>     Attrib V33    -0.5892153805683025
#>     Attrib V34    0.1457020881739937
#>     Attrib V35    0.23739109769413938
#>     Attrib V36    0.39306657861966576
#>     Attrib V37    0.7743509506144997
#>     Attrib V38    -0.37084914784625345
#>     Attrib V39    -0.4420833428810423
#>     Attrib V4    -0.2731968773602745
#>     Attrib V40    0.2857195077953616
#>     Attrib V41    0.15521223035857792
#>     Attrib V42    -0.08171958423679096
#>     Attrib V43    -0.8665911706857129
#>     Attrib V44    -0.954181556950056
#>     Attrib V45    -0.33422159567343857
#>     Attrib V46    -0.12790221976363544
#>     Attrib V47    -0.1352905184678193
#>     Attrib V48    -0.09984409305096434
#>     Attrib V49    -0.1553013985474918
#>     Attrib V5    -0.07998316788391113
#>     Attrib V50    0.3157911899606542
#>     Attrib V51    0.041102310909189206
#>     Attrib V52    -0.1913649780257656
#>     Attrib V53    -0.2303042096046447
#>     Attrib V54    -0.1098127777953038
#>     Attrib V55    1.1951858062109326
#>     Attrib V56    -0.312408008589574
#>     Attrib V57    0.22682344828437187
#>     Attrib V58    -0.22538517674285288
#>     Attrib V59    -0.3917870331858313
#>     Attrib V6    0.16498149435657494
#>     Attrib V60    -0.2677522032156775
#>     Attrib V7    -0.31657511351189804
#>     Attrib V8    0.19069863287029726
#>     Attrib V9    -0.8483788176558716
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.13318549968963367
#>     Attrib V1    0.38358483412096817
#>     Attrib V10    0.04033835009929422
#>     Attrib V11    0.00798113476134072
#>     Attrib V12    -0.01319309796496888
#>     Attrib V13    -0.046833171078236785
#>     Attrib V14    -0.17395786404174568
#>     Attrib V15    0.012607184352996624
#>     Attrib V16    0.03484586558075925
#>     Attrib V17    -0.011280081298395313
#>     Attrib V18    0.110354910745099
#>     Attrib V19    0.18350173946168488
#>     Attrib V2    0.046456168688516396
#>     Attrib V20    0.30202088323083587
#>     Attrib V21    0.594655986624598
#>     Attrib V22    0.6256955593745094
#>     Attrib V23    0.4733570612958716
#>     Attrib V24    0.28440461994481514
#>     Attrib V25    -0.17398018001875654
#>     Attrib V26    -1.0274912987417124
#>     Attrib V27    -0.8519839593566143
#>     Attrib V28    -0.5896435016468295
#>     Attrib V29    -0.5777614900022239
#>     Attrib V3    0.010809622697607522
#>     Attrib V30    0.13887428589811762
#>     Attrib V31    -0.4063979046084553
#>     Attrib V32    -0.010739612361737403
#>     Attrib V33    0.41980165633888344
#>     Attrib V34    -0.09972451129094352
#>     Attrib V35    -0.0995927173641327
#>     Attrib V36    -0.3352586222451771
#>     Attrib V37    -0.6028479335579178
#>     Attrib V38    0.13843303187017184
#>     Attrib V39    0.10779814109481523
#>     Attrib V4    0.1516056829822735
#>     Attrib V40    -0.18527043280073036
#>     Attrib V41    -0.11968713832722776
#>     Attrib V42    0.12269855054036777
#>     Attrib V43    0.4591639138126912
#>     Attrib V44    0.43380877427513675
#>     Attrib V45    0.15516037110440187
#>     Attrib V46    0.020391335077828133
#>     Attrib V47    0.02769548840764709
#>     Attrib V48    -0.0032252745590745143
#>     Attrib V49    -0.008790260424507782
#>     Attrib V5    0.0694279448921766
#>     Attrib V50    -0.025615421469197288
#>     Attrib V51    -0.031465683451238007
#>     Attrib V52    0.08170591088032018
#>     Attrib V53    0.2841900831130756
#>     Attrib V54    0.31722724910798433
#>     Attrib V55    -0.5311155204077128
#>     Attrib V56    0.3779271082261267
#>     Attrib V57    0.03992935873322391
#>     Attrib V58    0.2804923373244998
#>     Attrib V59    0.49716967945182283
#>     Attrib V6    0.011331391177370606
#>     Attrib V60    0.40952132431757277
#>     Attrib V7    0.3533489043230426
#>     Attrib V8    0.007651169637088507
#>     Attrib V9    0.4187533372905653
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.21533792794163945
#>     Attrib V1    -0.1268297634484574
#>     Attrib V10    0.8091372968611402
#>     Attrib V11    0.8911178250367351
#>     Attrib V12    0.79545117337924
#>     Attrib V13    0.5913799419144302
#>     Attrib V14    -0.18802451815909915
#>     Attrib V15    -0.37859865512871227
#>     Attrib V16    -0.34854237889087136
#>     Attrib V17    -0.6235440704890167
#>     Attrib V18    -0.3776765498824425
#>     Attrib V19    0.03832765351430689
#>     Attrib V2    0.14153223240504076
#>     Attrib V20    -0.4824796853716563
#>     Attrib V21    0.10501998897925946
#>     Attrib V22    0.414673361894108
#>     Attrib V23    0.22806747070860964
#>     Attrib V24    0.3934600514370197
#>     Attrib V25    0.4659309237849465
#>     Attrib V26    0.26611574973875857
#>     Attrib V27    0.6847553225084937
#>     Attrib V28    1.3336852560097596
#>     Attrib V29    1.1050190438706131
#>     Attrib V3    -0.4477914515850212
#>     Attrib V30    0.6391124888912773
#>     Attrib V31    -0.48131359398438806
#>     Attrib V32    -0.4285531888134405
#>     Attrib V33    -0.050429488116303586
#>     Attrib V34    -0.18617410429640047
#>     Attrib V35    -0.4843015842898653
#>     Attrib V36    -0.4935916403450331
#>     Attrib V37    -0.2661557196692824
#>     Attrib V38    0.020821900649924747
#>     Attrib V39    0.8607850168171017
#>     Attrib V4    0.5419945043557844
#>     Attrib V40    0.4809593211565848
#>     Attrib V41    0.6459614102791442
#>     Attrib V42    0.15716594736338854
#>     Attrib V43    0.279805658898108
#>     Attrib V44    0.3524605549816922
#>     Attrib V45    0.1287898373995022
#>     Attrib V46    0.42885500044518204
#>     Attrib V47    0.5423111323245502
#>     Attrib V48    0.571192526680057
#>     Attrib V49    0.5964100766675974
#>     Attrib V5    0.2918026288615208
#>     Attrib V50    -0.2376630106803404
#>     Attrib V51    0.2798650088779351
#>     Attrib V52    0.396466174559004
#>     Attrib V53    0.10795504566972229
#>     Attrib V54    -0.21617384129533787
#>     Attrib V55    -0.8331905079733363
#>     Attrib V56    -0.06205654483619087
#>     Attrib V57    -0.37395478184981573
#>     Attrib V58    -0.10655440620532815
#>     Attrib V59    0.3694944876445011
#>     Attrib V6    0.11840784654101141
#>     Attrib V60    0.14585387908359174
#>     Attrib V7    0.1210647008105501
#>     Attrib V8    -0.16275806657266545
#>     Attrib V9    0.7056459167497963
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.22400624437729005
#>     Attrib V1    -0.19648352180906173
#>     Attrib V10    0.9078251390629718
#>     Attrib V11    0.8769460168160833
#>     Attrib V12    0.8624661446975104
#>     Attrib V13    0.6804530266263827
#>     Attrib V14    -0.256024411329576
#>     Attrib V15    -0.4289512679508134
#>     Attrib V16    -0.35099450531344223
#>     Attrib V17    -0.6289442503995909
#>     Attrib V18    -0.38247339411680253
#>     Attrib V19    0.10445527476538168
#>     Attrib V2    0.11716767358583384
#>     Attrib V20    -0.5895470183289299
#>     Attrib V21    0.1133786338280454
#>     Attrib V22    0.4840326193968237
#>     Attrib V23    0.21775784266282533
#>     Attrib V24    0.5142751844814168
#>     Attrib V25    0.5916389674907591
#>     Attrib V26    0.3522733313406127
#>     Attrib V27    0.7871453156550416
#>     Attrib V28    1.5209906469905161
#>     Attrib V29    1.1733275298798975
#>     Attrib V3    -0.5018470461867881
#>     Attrib V30    0.6528104235196132
#>     Attrib V31    -0.5898225962124678
#>     Attrib V32    -0.4350482884402408
#>     Attrib V33    -0.0754780360527306
#>     Attrib V34    -0.20810852079949796
#>     Attrib V35    -0.5529023961235653
#>     Attrib V36    -0.5052626185755418
#>     Attrib V37    -0.36608562326992167
#>     Attrib V38    0.03701438873010257
#>     Attrib V39    1.0357352969770683
#>     Attrib V4    0.7028324208768394
#>     Attrib V40    0.5652639929763137
#>     Attrib V41    0.7681675720126082
#>     Attrib V42    0.11478727733921196
#>     Attrib V43    0.27367122068153327
#>     Attrib V44    0.36812072249695243
#>     Attrib V45    0.10216973569925145
#>     Attrib V46    0.4527447464330836
#>     Attrib V47    0.604160502230502
#>     Attrib V48    0.7058951064050114
#>     Attrib V49    0.7544637881480724
#>     Attrib V5    0.3968275175705868
#>     Attrib V50    -0.3077713231286642
#>     Attrib V51    0.3436486558526748
#>     Attrib V52    0.3721009822308202
#>     Attrib V53    0.22018018565367822
#>     Attrib V54    -0.2809619398480598
#>     Attrib V55    -0.998923625483699
#>     Attrib V56    -0.10588348852443921
#>     Attrib V57    -0.37555748086159024
#>     Attrib V58    -0.1653168212026067
#>     Attrib V59    0.503498466787425
#>     Attrib V6    0.13982095397743474
#>     Attrib V60    0.2199258701678481
#>     Attrib V7    0.11421638692553675
#>     Attrib V8    -0.19616414340988914
#>     Attrib V9    0.6961332786355627
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.11412012433949442
#>     Attrib V1    -0.10394763960844511
#>     Attrib V10    0.8172881219496858
#>     Attrib V11    0.7144456172928699
#>     Attrib V12    0.6571122001385272
#>     Attrib V13    0.44385334687310474
#>     Attrib V14    -0.4709321909510803
#>     Attrib V15    -0.47597384697847706
#>     Attrib V16    -0.37138803162266226
#>     Attrib V17    -0.49971245036565054
#>     Attrib V18    -0.2873359919807711
#>     Attrib V19    -0.02168366271763375
#>     Attrib V2    -0.03957605344371048
#>     Attrib V20    -0.4312495951275002
#>     Attrib V21    0.10086551295962151
#>     Attrib V22    0.42962774852902796
#>     Attrib V23    0.3411016947981042
#>     Attrib V24    0.545240465667638
#>     Attrib V25    0.539097353874546
#>     Attrib V26    -0.002552648341939081
#>     Attrib V27    0.23914516235951455
#>     Attrib V28    0.7107146878728127
#>     Attrib V29    0.35630850975023826
#>     Attrib V3    -0.5567084288103054
#>     Attrib V30    0.43736440673456256
#>     Attrib V31    -0.350050603742156
#>     Attrib V32    -0.10946412737896091
#>     Attrib V33    0.30035777671004776
#>     Attrib V34    0.10745370726614133
#>     Attrib V35    -0.24315193117073736
#>     Attrib V36    -0.40986009769181275
#>     Attrib V37    -0.4792799178631005
#>     Attrib V38    0.03973620924663434
#>     Attrib V39    0.6774993995689689
#>     Attrib V4    0.15576626387164824
#>     Attrib V40    0.28463420918957066
#>     Attrib V41    0.3720582124722863
#>     Attrib V42    0.0551060832687251
#>     Attrib V43    0.4377408382235971
#>     Attrib V44    0.3756952761684057
#>     Attrib V45    0.1584171794990862
#>     Attrib V46    0.37730243076000525
#>     Attrib V47    0.4473558506589457
#>     Attrib V48    0.4562484989159749
#>     Attrib V49    0.48413290127537245
#>     Attrib V5    0.1045064166729981
#>     Attrib V50    -0.2461264807814792
#>     Attrib V51    0.1729439667047072
#>     Attrib V52    0.31246340270435713
#>     Attrib V53    0.023213653920303525
#>     Attrib V54    -0.26159305942240413
#>     Attrib V55    -0.8194075526066572
#>     Attrib V56    -0.020596879805407337
#>     Attrib V57    -0.48203781895835
#>     Attrib V58    -0.07779735031897199
#>     Attrib V59    0.16886030647703176
#>     Attrib V6    0.052200990479347606
#>     Attrib V60    0.03686242996715539
#>     Attrib V7    0.21095047825531174
#>     Attrib V8    -0.06406552495219528
#>     Attrib V9    0.7706220754445836
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.16168627357589585
#>     Attrib V1    0.06821381716145661
#>     Attrib V10    -0.020316230264254314
#>     Attrib V11    -0.03141010453722567
#>     Attrib V12    0.0019287291320930944
#>     Attrib V13    -0.006737303528251256
#>     Attrib V14    0.07214163357797729
#>     Attrib V15    -0.02785693320619758
#>     Attrib V16    0.032556506729144834
#>     Attrib V17    0.005648672979984253
#>     Attrib V18    0.0704637060711068
#>     Attrib V19    0.01390284038337076
#>     Attrib V2    0.011883013677513994
#>     Attrib V20    -0.0026366287925897094
#>     Attrib V21    -0.049778913158854764
#>     Attrib V22    -0.11038000045112137
#>     Attrib V23    -0.06316731072313068
#>     Attrib V24    -0.12535040525623112
#>     Attrib V25    -0.0827784758721341
#>     Attrib V26    0.022253900938163828
#>     Attrib V27    -0.04044901923715975
#>     Attrib V28    -0.09215304708546922
#>     Attrib V29    -0.06714518866694626
#>     Attrib V3    0.04839739745194443
#>     Attrib V30    -0.02657674101328442
#>     Attrib V31    0.0988242828916184
#>     Attrib V32    0.03231885726316333
#>     Attrib V33    0.07816747853011964
#>     Attrib V34    0.11310568901873608
#>     Attrib V35    0.13172476093198576
#>     Attrib V36    0.1343729272058536
#>     Attrib V37    0.14244708779990378
#>     Attrib V38    0.068668045137962
#>     Attrib V39    0.012771052516724928
#>     Attrib V4    -0.031035045450882984
#>     Attrib V40    0.12937715064994493
#>     Attrib V41    0.11314733125794355
#>     Attrib V42    0.06212620152433516
#>     Attrib V43    -0.006061668570296349
#>     Attrib V44    0.00891295767417367
#>     Attrib V45    0.05404359661745336
#>     Attrib V46    0.0063480183605387885
#>     Attrib V47    0.027101082671919262
#>     Attrib V48    0.008464126854875999
#>     Attrib V49    -0.0034140329416697925
#>     Attrib V5    0.006549794104563861
#>     Attrib V50    0.13187745355215902
#>     Attrib V51    0.04377170135852131
#>     Attrib V52    0.015052919839942818
#>     Attrib V53    0.06447017027464898
#>     Attrib V54    0.06486219963749064
#>     Attrib V55    0.12485467647620015
#>     Attrib V56    0.01852043404846318
#>     Attrib V57    0.08985077162908096
#>     Attrib V58    0.028844639540502065
#>     Attrib V59    -0.010825354147462251
#>     Attrib V6    0.10612284271322678
#>     Attrib V60    0.029890263475566076
#>     Attrib V7    0.017869977254831644
#>     Attrib V8    0.07850497162545092
#>     Attrib V9    -0.057548851034298
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.12700694637594642
#>     Attrib V1    0.23885546946658834
#>     Attrib V10    0.2166941529055242
#>     Attrib V11    0.18707047034114738
#>     Attrib V12    0.12059264540364109
#>     Attrib V13    0.0065635520674075225
#>     Attrib V14    -0.275427862626692
#>     Attrib V15    -0.10009092448421743
#>     Attrib V16    -0.055638898951419116
#>     Attrib V17    0.0207712466324688
#>     Attrib V18    0.08135162321493876
#>     Attrib V19    0.197168489461158
#>     Attrib V2    -0.015534646300100704
#>     Attrib V20    0.2358657524302993
#>     Attrib V21    0.491478913256572
#>     Attrib V22    0.6100009391610711
#>     Attrib V23    0.4668405171759037
#>     Attrib V24    0.26990760643589806
#>     Attrib V25    -0.07935347179547689
#>     Attrib V26    -0.9456776514051299
#>     Attrib V27    -0.7570340966532316
#>     Attrib V28    -0.3918052804116093
#>     Attrib V29    -0.515004998362739
#>     Attrib V3    -0.11964994739622987
#>     Attrib V30    0.19231142429239467
#>     Attrib V31    -0.4907697994252389
#>     Attrib V32    -0.07261236944093394
#>     Attrib V33    0.3995300100316266
#>     Attrib V34    -0.03203892597676154
#>     Attrib V35    -0.06874111316122294
#>     Attrib V36    -0.2728860102408484
#>     Attrib V37    -0.606764677079341
#>     Attrib V38    0.19227451329123396
#>     Attrib V39    0.14022257926523957
#>     Attrib V4    0.12613164657273804
#>     Attrib V40    -0.18969346665740716
#>     Attrib V41    -0.17058887444536194
#>     Attrib V42    0.09013802706840365
#>     Attrib V43    0.5025875883235317
#>     Attrib V44    0.5954087382470297
#>     Attrib V45    0.24390748494008097
#>     Attrib V46    0.01727945844959231
#>     Attrib V47    0.09653308251584673
#>     Attrib V48    0.08548117383217997
#>     Attrib V49    0.020420796968337783
#>     Attrib V5    0.10981904918875776
#>     Attrib V50    -0.08363836444688524
#>     Attrib V51    0.03933221411606966
#>     Attrib V52    0.07804186230578183
#>     Attrib V53    0.20459056473052878
#>     Attrib V54    0.2902242958703548
#>     Attrib V55    -0.5990091016450666
#>     Attrib V56    0.31751630146232973
#>     Attrib V57    -0.045805705751603844
#>     Attrib V58    0.2010727578397198
#>     Attrib V59    0.3212043119258991
#>     Attrib V6    -0.026624030736534226
#>     Attrib V60    0.2677061815844697
#>     Attrib V7    0.2445077673873211
#>     Attrib V8    -0.0347063304919724
#>     Attrib V9    0.4637541972625283
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.24067502094938775
#>     Attrib V1    0.26901674624938215
#>     Attrib V10    0.22233581186643064
#>     Attrib V11    0.2671934589235205
#>     Attrib V12    0.07066423230664964
#>     Attrib V13    0.0348004574297954
#>     Attrib V14    -0.29176857514056703
#>     Attrib V15    -0.1211424888265508
#>     Attrib V16    -0.05742911583170058
#>     Attrib V17    -0.04111970638382386
#>     Attrib V18    0.0330583845499349
#>     Attrib V19    0.26296899735090623
#>     Attrib V2    0.0377997323017679
#>     Attrib V20    0.17833113486374694
#>     Attrib V21    0.5547437207016817
#>     Attrib V22    0.7706992734724981
#>     Attrib V23    0.5629184687172144
#>     Attrib V24    0.29519662723956896
#>     Attrib V25    -0.15031169634640884
#>     Attrib V26    -1.0637727819131284
#>     Attrib V27    -0.8054976370493859
#>     Attrib V28    -0.4565913741236991
#>     Attrib V29    -0.5080159539023035
#>     Attrib V3    -0.14633309444397047
#>     Attrib V30    0.2472652098951244
#>     Attrib V31    -0.5626885866829311
#>     Attrib V32    -0.10500362996379717
#>     Attrib V33    0.4964265662223175
#>     Attrib V34    -0.07526874446668533
#>     Attrib V35    -0.12661587388281645
#>     Attrib V36    -0.32783341882126227
#>     Attrib V37    -0.6946286004307314
#>     Attrib V38    0.18115962124414714
#>     Attrib V39    0.14068885308497703
#>     Attrib V4    0.19984060288791433
#>     Attrib V40    -0.17575924307296595
#>     Attrib V41    -0.14138720675437635
#>     Attrib V42    0.10224155191659291
#>     Attrib V43    0.65065486787591
#>     Attrib V44    0.6375145713244993
#>     Attrib V45    0.25298487456687546
#>     Attrib V46    0.07745081123269057
#>     Attrib V47    0.0675744926760953
#>     Attrib V48    0.09993779140461179
#>     Attrib V49    0.002512111360681828
#>     Attrib V5    0.09409435960172617
#>     Attrib V50    -0.17657195404672468
#>     Attrib V51    -0.030688825980430927
#>     Attrib V52    0.12883623424867635
#>     Attrib V53    0.235388607070315
#>     Attrib V54    0.2801370550541334
#>     Attrib V55    -0.7504456211376375
#>     Attrib V56    0.34893813390827144
#>     Attrib V57    -0.05112832881686285
#>     Attrib V58    0.23211012720893864
#>     Attrib V59    0.474800640639397
#>     Attrib V6    -0.11557983775777317
#>     Attrib V60    0.3304628921307869
#>     Attrib V7    0.3329083888219475
#>     Attrib V8    -0.0494954946555204
#>     Attrib V9    0.5287642853257242
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.1849268501052641
#>     Attrib V1    0.06265271113849032
#>     Attrib V10    0.030539193918021755
#>     Attrib V11    0.04554402531181133
#>     Attrib V12    0.0210837532444682
#>     Attrib V13    0.0846037806325673
#>     Attrib V14    0.028146265786808188
#>     Attrib V15    -0.008524397319192753
#>     Attrib V16    -0.0205520567277091
#>     Attrib V17    0.03099085207743226
#>     Attrib V18    0.01738671914698356
#>     Attrib V19    -0.004412384146358592
#>     Attrib V2    0.04030525480564316
#>     Attrib V20    0.019197478267094562
#>     Attrib V21    0.009488862808357396
#>     Attrib V22    -0.06396472998248749
#>     Attrib V23    -0.02538477093155232
#>     Attrib V24    -0.037165075057338647
#>     Attrib V25    -0.015369701021189583
#>     Attrib V26    -0.1284585115326158
#>     Attrib V27    -0.049199216630699726
#>     Attrib V28    -0.0756728308219589
#>     Attrib V29    -0.020918803076077488
#>     Attrib V3    0.12644782900406973
#>     Attrib V30    0.021923017513691995
#>     Attrib V31    -0.06096930936146089
#>     Attrib V32    0.014507172557664243
#>     Attrib V33    0.04824495337506602
#>     Attrib V34    0.07510908960162155
#>     Attrib V35    0.028649192251767795
#>     Attrib V36    0.008350184563712632
#>     Attrib V37    0.025493990460349277
#>     Attrib V38    0.0425583473392278
#>     Attrib V39    0.12051688869620009
#>     Attrib V4    0.07757282272233458
#>     Attrib V40    0.07806368442639833
#>     Attrib V41    0.03959649113389489
#>     Attrib V42    0.05095407523393337
#>     Attrib V43    0.00473630856930808
#>     Attrib V44    0.040759984637725705
#>     Attrib V45    0.02332409228409064
#>     Attrib V46    0.08237551191734845
#>     Attrib V47    0.10001046129809552
#>     Attrib V48    0.03662224688638762
#>     Attrib V49    0.05371302253506319
#>     Attrib V5    0.088224134158612
#>     Attrib V50    0.01001627279282992
#>     Attrib V51    0.04975645854658897
#>     Attrib V52    0.049770196185399886
#>     Attrib V53    0.08164178882399088
#>     Attrib V54    0.0493815673154604
#>     Attrib V55    0.050950696369529286
#>     Attrib V56    0.10725031589002855
#>     Attrib V57    0.11559103104886208
#>     Attrib V58    0.07551287339929612
#>     Attrib V59    0.13914998021639483
#>     Attrib V6    0.09923496490884624
#>     Attrib V60    0.15458744541529837
#>     Attrib V7    0.11314652676800507
#>     Attrib V8    0.025579231105833024
#>     Attrib V9    0.07432318763719954
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.18730693038457186
#>     Attrib V1    -0.014933657351827346
#>     Attrib V10    0.7438314815564552
#>     Attrib V11    0.6971218979675721
#>     Attrib V12    0.576070305563428
#>     Attrib V13    0.3416648353372448
#>     Attrib V14    -0.4091803287029216
#>     Attrib V15    -0.35400021180643737
#>     Attrib V16    -0.38333573881748634
#>     Attrib V17    -0.4836933140487057
#>     Attrib V18    -0.32390272497216005
#>     Attrib V19    -0.034691046199794545
#>     Attrib V2    0.037312049320899605
#>     Attrib V20    -0.3818821312650838
#>     Attrib V21    0.11626966305050566
#>     Attrib V22    0.45658119469257313
#>     Attrib V23    0.3265286822017728
#>     Attrib V24    0.3727354738962297
#>     Attrib V25    0.36613090235079726
#>     Attrib V26    -0.13722939408605955
#>     Attrib V27    0.11072171768136424
#>     Attrib V28    0.6006307762006834
#>     Attrib V29    0.2834828839237398
#>     Attrib V3    -0.5560783499155866
#>     Attrib V30    0.4861131125305187
#>     Attrib V31    -0.4318366554261651
#>     Attrib V32    -0.1520602024817972
#>     Attrib V33    0.312162350424923
#>     Attrib V34    -0.01953347798165819
#>     Attrib V35    -0.2285800817198294
#>     Attrib V36    -0.4121719257946031
#>     Attrib V37    -0.41534845965464035
#>     Attrib V38    0.042081869857634215
#>     Attrib V39    0.602945030032631
#>     Attrib V4    0.19781603102770076
#>     Attrib V40    0.20835446906204727
#>     Attrib V41    0.2335194933519693
#>     Attrib V42    0.025969262386323758
#>     Attrib V43    0.38177933629630123
#>     Attrib V44    0.4811359740492595
#>     Attrib V45    0.11614802213383402
#>     Attrib V46    0.27249044512161175
#>     Attrib V47    0.33943048478205146
#>     Attrib V48    0.47113202397896153
#>     Attrib V49    0.43919330817066365
#>     Attrib V5    0.10346077968133412
#>     Attrib V50    -0.2850364227068614
#>     Attrib V51    0.08477360613034621
#>     Attrib V52    0.20166439497947855
#>     Attrib V53    -0.08753225334983528
#>     Attrib V54    -0.1529848721299737
#>     Attrib V55    -0.8642887825346818
#>     Attrib V56    0.030030604348728143
#>     Attrib V57    -0.43317790057874817
#>     Attrib V58    -0.01657244569394385
#>     Attrib V59    0.17977980908557553
#>     Attrib V6    -0.01726152372546099
#>     Attrib V60    0.11032390142925189
#>     Attrib V7    0.15511217882318393
#>     Attrib V8    -0.11202312734518345
#>     Attrib V9    0.759820466636524
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.3322514293050742
#>     Attrib V1    -0.4912928870176086
#>     Attrib V10    -0.554763989126809
#>     Attrib V11    -0.5389267062504549
#>     Attrib V12    -0.18729121168151316
#>     Attrib V13    -0.07356764421781567
#>     Attrib V14    0.5730448721748763
#>     Attrib V15    0.24886654082913276
#>     Attrib V16    0.1524646343507798
#>     Attrib V17    0.07289989847451492
#>     Attrib V18    -0.06551100478865955
#>     Attrib V19    -0.2951363612384251
#>     Attrib V2    0.019778386687863716
#>     Attrib V20    -0.21436641830844702
#>     Attrib V21    -0.8244629916064563
#>     Attrib V22    -1.1318336509974123
#>     Attrib V23    -0.9923855734333185
#>     Attrib V24    -0.6694657695743633
#>     Attrib V25    0.06792361902261378
#>     Attrib V26    1.658383558708156
#>     Attrib V27    1.25469377257344
#>     Attrib V28    0.6580940070310548
#>     Attrib V29    0.9107338421536524
#>     Attrib V3    0.20871376470952738
#>     Attrib V30    -0.4031642692349861
#>     Attrib V31    0.7506916208046226
#>     Attrib V32    -0.0014143347753157417
#>     Attrib V33    -0.8226850812045794
#>     Attrib V34    0.17622573119348336
#>     Attrib V35    0.21432899445416173
#>     Attrib V36    0.5895609638868884
#>     Attrib V37    1.2643975446175229
#>     Attrib V38    -0.3121183009448555
#>     Attrib V39    -0.33703684929421623
#>     Attrib V4    -0.18394011139109315
#>     Attrib V40    0.3686092993508234
#>     Attrib V41    0.29860752314055505
#>     Attrib V42    -0.18354066791748477
#>     Attrib V43    -1.0745722251924203
#>     Attrib V44    -1.1133755723664014
#>     Attrib V45    -0.3079284916921094
#>     Attrib V46    -0.05312599882900131
#>     Attrib V47    -0.13358145577728026
#>     Attrib V48    -0.09487546465511999
#>     Attrib V49    -0.13205007782593842
#>     Attrib V5    -0.0903938590764081
#>     Attrib V50    0.25356779277198893
#>     Attrib V51    0.10919171977981335
#>     Attrib V52    -0.20743882919088932
#>     Attrib V53    -0.26380632034875395
#>     Attrib V54    -0.32640649683696354
#>     Attrib V55    1.2681415335651935
#>     Attrib V56    -0.4198125733557382
#>     Attrib V57    0.21666060879176707
#>     Attrib V58    -0.3530249833978529
#>     Attrib V59    -0.5250425056436203
#>     Attrib V6    0.1632424116335693
#>     Attrib V60    -0.4056161987168665
#>     Attrib V7    -0.5986147546993317
#>     Attrib V8    0.05697671835182581
#>     Attrib V9    -0.9718526048984447
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1619978491563027
#>     Attrib V1    -0.10335454707939755
#>     Attrib V10    -0.27876344154659266
#>     Attrib V11    -0.3335858697549235
#>     Attrib V12    -0.3012775238460912
#>     Attrib V13    -0.20741079251725264
#>     Attrib V14    0.11817547787181942
#>     Attrib V15    0.071514394034613
#>     Attrib V16    0.18603808138808342
#>     Attrib V17    0.26309303247069993
#>     Attrib V18    0.16401239368390785
#>     Attrib V19    -0.015150356216128428
#>     Attrib V2    -0.1826226150412522
#>     Attrib V20    0.07018435939395995
#>     Attrib V21    -0.20372609494590055
#>     Attrib V22    -0.3313689701115028
#>     Attrib V23    -0.2061500992057242
#>     Attrib V24    -0.14854566416067022
#>     Attrib V25    -0.023309821128329328
#>     Attrib V26    0.35424028347467573
#>     Attrib V27    0.10922147779272423
#>     Attrib V28    -0.17513031449827718
#>     Attrib V29    -0.05095533276513392
#>     Attrib V3    0.13482397018427966
#>     Attrib V30    -0.28739114668421584
#>     Attrib V31    0.2877401394904582
#>     Attrib V32    0.1387126685950969
#>     Attrib V33    -0.19011450320182705
#>     Attrib V34    0.12999277934406714
#>     Attrib V35    0.2260158221174227
#>     Attrib V36    0.3542814431389041
#>     Attrib V37    0.42225290288909006
#>     Attrib V38    -0.11217480238984498
#>     Attrib V39    -0.31734638578417973
#>     Attrib V4    -0.06196706120225864
#>     Attrib V40    -0.03830838982387345
#>     Attrib V41    0.00895762800199012
#>     Attrib V42    0.04540383070102448
#>     Attrib V43    -0.2814557813501109
#>     Attrib V44    -0.2700216299954383
#>     Attrib V45    -0.010728550555666724
#>     Attrib V46    -0.04192713596028556
#>     Attrib V47    -0.12594427059251478
#>     Attrib V48    -0.17938720687180698
#>     Attrib V49    -0.16346976849494668
#>     Attrib V5    -0.030997800817805572
#>     Attrib V50    0.2571665226105404
#>     Attrib V51    0.015949541444066195
#>     Attrib V52    -0.10819252262736904
#>     Attrib V53    -0.06210650544589207
#>     Attrib V54    0.054233360327828176
#>     Attrib V55    0.5484398419784932
#>     Attrib V56    -0.13907742871487017
#>     Attrib V57    0.24993021177566965
#>     Attrib V58    0.012330874128507047
#>     Attrib V59    -0.15379500511973213
#>     Attrib V6    0.07132413457463345
#>     Attrib V60    -0.05916310929834272
#>     Attrib V7    -0.10183909931301742
#>     Attrib V8    0.1431221195317058
#>     Attrib V9    -0.33837115060302353
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.15683585402510122
#>     Attrib V1    0.3505495485530714
#>     Attrib V10    0.24590078558603845
#>     Attrib V11    0.17561729122749628
#>     Attrib V12    0.021585108752494093
#>     Attrib V13    -0.016521345474760106
#>     Attrib V14    -0.3278185537284125
#>     Attrib V15    -0.04683265189822685
#>     Attrib V16    -0.07274707195355305
#>     Attrib V17    -0.02955640130071152
#>     Attrib V18    0.05391905477675386
#>     Attrib V19    0.23443557805491558
#>     Attrib V2    0.04516201620990566
#>     Attrib V20    0.2329972304397058
#>     Attrib V21    0.5814003411807399
#>     Attrib V22    0.798076839541161
#>     Attrib V23    0.5708487979462541
#>     Attrib V24    0.3785581852328638
#>     Attrib V25    -0.1570953980608739
#>     Attrib V26    -1.1073591967801697
#>     Attrib V27    -0.9275994383816158
#>     Attrib V28    -0.5880639717253582
#>     Attrib V29    -0.6918006690190979
#>     Attrib V3    -0.10160613284340328
#>     Attrib V30    0.19556573544953418
#>     Attrib V31    -0.42585916259757894
#>     Attrib V32    -0.03230872197943814
#>     Attrib V33    0.5543629342909788
#>     Attrib V34    -0.07312710592447347
#>     Attrib V35    -0.07527211265970524
#>     Attrib V36    -0.37137976208994444
#>     Attrib V37    -0.756542688409002
#>     Attrib V38    0.185473676598975
#>     Attrib V39    0.15036543456878695
#>     Attrib V4    0.11502598310725022
#>     Attrib V40    -0.2449436565284104
#>     Attrib V41    -0.1710027553374392
#>     Attrib V42    0.08392614924691208
#>     Attrib V43    0.6272175690799742
#>     Attrib V44    0.6293060518501972
#>     Attrib V45    0.238953355746186
#>     Attrib V46    -0.0010999273530700776
#>     Attrib V47    0.02050761981653364
#>     Attrib V48    0.09984675615158367
#>     Attrib V49    0.002095499429866318
#>     Attrib V5    0.0597352270514562
#>     Attrib V50    -0.09358152169300282
#>     Attrib V51    -0.026794089480513227
#>     Attrib V52    0.09578186965326292
#>     Attrib V53    0.19711029812965916
#>     Attrib V54    0.28395464257176967
#>     Attrib V55    -0.6288826267572537
#>     Attrib V56    0.39004517834461966
#>     Attrib V57    -0.0271553456087064
#>     Attrib V58    0.21917587441915382
#>     Attrib V59    0.39198139641403873
#>     Attrib V6    -0.03005571484347592
#>     Attrib V60    0.371552572121366
#>     Attrib V7    0.3258522139349334
#>     Attrib V8    0.005567530527789364
#>     Attrib V9    0.5344244076667072
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2463612708705976
#>     Attrib V1    -0.12108867843660011
#>     Attrib V10    -0.3905166337593517
#>     Attrib V11    -0.43515662732920424
#>     Attrib V12    -0.3984913891091675
#>     Attrib V13    -0.2830312216324215
#>     Attrib V14    0.23584532616630147
#>     Attrib V15    0.11893612392466807
#>     Attrib V16    0.19188537352966858
#>     Attrib V17    0.23427710693032186
#>     Attrib V18    0.1810097564992535
#>     Attrib V19    -0.08550689619710436
#>     Attrib V2    -0.16488053486713286
#>     Attrib V20    0.1629858034773797
#>     Attrib V21    -0.22173407278249554
#>     Attrib V22    -0.4885421315134199
#>     Attrib V23    -0.2689157027747145
#>     Attrib V24    -0.2668816827332066
#>     Attrib V25    -0.061846582189090664
#>     Attrib V26    0.5531785149715692
#>     Attrib V27    0.24387032230232564
#>     Attrib V28    -0.2154285795423776
#>     Attrib V29    -0.04515004704358277
#>     Attrib V3    0.24431608954096676
#>     Attrib V30    -0.39708057845566946
#>     Attrib V31    0.3914113311499585
#>     Attrib V32    0.083687492817694
#>     Attrib V33    -0.31180003339743234
#>     Attrib V34    0.12898275988919497
#>     Attrib V35    0.25332531828366
#>     Attrib V36    0.47775060354446447
#>     Attrib V37    0.4786488085542606
#>     Attrib V38    -0.1725866735558336
#>     Attrib V39    -0.39368136200935455
#>     Attrib V4    -0.10281227949399956
#>     Attrib V40    -0.04806482805463541
#>     Attrib V41    -0.06169872193920229
#>     Attrib V42    -0.02686738653159463
#>     Attrib V43    -0.40637688171241215
#>     Attrib V44    -0.3122020970462845
#>     Attrib V45    -0.0591199451186572
#>     Attrib V46    -0.07021334581210079
#>     Attrib V47    -0.10995628286351321
#>     Attrib V48    -0.1926527368664736
#>     Attrib V49    -0.14002622884418667
#>     Attrib V5    -0.005946614277448833
#>     Attrib V50    0.2650733129940593
#>     Attrib V51    0.03467179415114358
#>     Attrib V52    -0.18235634856348426
#>     Attrib V53    -0.10261033979667
#>     Attrib V54    0.07271380493783895
#>     Attrib V55    0.8005613347243264
#>     Attrib V56    -0.1682692248915229
#>     Attrib V57    0.24607573087926055
#>     Attrib V58    -0.03793540356231587
#>     Attrib V59    -0.11826385222691008
#>     Attrib V6    0.07233537330549901
#>     Attrib V60    -0.052588684338860485
#>     Attrib V7    -0.0718520407916433
#>     Attrib V8    0.25405938461488803
#>     Attrib V9    -0.5089727655660274
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.29234408927705235
#>     Attrib V1    0.11057229805099773
#>     Attrib V10    0.3739312255703883
#>     Attrib V11    0.39234607723507714
#>     Attrib V12    0.4271262537400243
#>     Attrib V13    0.2775999133349029
#>     Attrib V14    -0.22520125681183895
#>     Attrib V15    -0.15476117976594397
#>     Attrib V16    -0.24234217332773592
#>     Attrib V17    -0.28423712825781844
#>     Attrib V18    -0.16321865468256164
#>     Attrib V19    0.09781201984071951
#>     Attrib V2    0.14050964560521387
#>     Attrib V20    -0.13270806609516939
#>     Attrib V21    0.233045581005419
#>     Attrib V22    0.4850536375143785
#>     Attrib V23    0.2594867363298786
#>     Attrib V24    0.2696085601933876
#>     Attrib V25    0.13799218016379552
#>     Attrib V26    -0.5212585797368045
#>     Attrib V27    -0.21844626127952543
#>     Attrib V28    0.2628260811707464
#>     Attrib V29    0.07833783670678202
#>     Attrib V3    -0.2623538159575642
#>     Attrib V30    0.3965592565896994
#>     Attrib V31    -0.4539892114370343
#>     Attrib V32    -0.20213811070133586
#>     Attrib V33    0.29898085275837843
#>     Attrib V34    -0.10187303162270181
#>     Attrib V35    -0.15325636174078303
#>     Attrib V36    -0.3554712023170143
#>     Attrib V37    -0.5015218286374339
#>     Attrib V38    0.12464874658915791
#>     Attrib V39    0.37263508647246024
#>     Attrib V4    0.2157750234595736
#>     Attrib V40    0.0221614398094522
#>     Attrib V41    0.04233999265166344
#>     Attrib V42    0.051800451177132514
#>     Attrib V43    0.38752616068482104
#>     Attrib V44    0.4440230798362946
#>     Attrib V45    0.17963916047586148
#>     Attrib V46    0.0885328846052346
#>     Attrib V47    0.08741954010253809
#>     Attrib V48    0.16814761373346346
#>     Attrib V49    0.19725716886663078
#>     Attrib V5    0.06944601575415925
#>     Attrib V50    -0.34740213452029683
#>     Attrib V51    -0.07323660112183118
#>     Attrib V52    0.1358655109018127
#>     Attrib V53    0.15043178182369082
#>     Attrib V54    -0.03145819385439556
#>     Attrib V55    -0.7716087059602198
#>     Attrib V56    0.08905468676356548
#>     Attrib V57    -0.2997632856789581
#>     Attrib V58    0.02830323525286481
#>     Attrib V59    0.25735886900741595
#>     Attrib V6    -0.10955084035589596
#>     Attrib V60    0.12073239553362454
#>     Attrib V7    0.14633573973396727
#>     Attrib V8    -0.23545717907207547
#>     Attrib V9    0.4686419677709445
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.12368628537980164
#>     Attrib V1    0.4155405855771534
#>     Attrib V10    0.04402686166110494
#>     Attrib V11    0.007509707443927016
#>     Attrib V12    -0.0014914070667299093
#>     Attrib V13    -0.010790235780451513
#>     Attrib V14    -0.052462899023064974
#>     Attrib V15    0.09765610583819714
#>     Attrib V16    -0.005952576001702571
#>     Attrib V17    0.021462528059268397
#>     Attrib V18    0.09483649895500336
#>     Attrib V19    0.23721662036307434
#>     Attrib V2    0.10589358424602724
#>     Attrib V20    0.3316575873784907
#>     Attrib V21    0.6371862225877958
#>     Attrib V22    0.683975236929547
#>     Attrib V23    0.45866140067756817
#>     Attrib V24    0.17096104279573524
#>     Attrib V25    -0.3126715031220137
#>     Attrib V26    -1.0414734124322018
#>     Attrib V27    -0.7914153405281485
#>     Attrib V28    -0.5230419330474524
#>     Attrib V29    -0.4010359206459185
#>     Attrib V3    0.012559331586698986
#>     Attrib V30    0.21232811183598566
#>     Attrib V31    -0.46294038897334866
#>     Attrib V32    -0.19185013819759494
#>     Attrib V33    0.28562586857365974
#>     Attrib V34    -0.22472651050300554
#>     Attrib V35    -0.16082585515737718
#>     Attrib V36    -0.20885507782284224
#>     Attrib V37    -0.4672163732197628
#>     Attrib V38    0.2228008967528661
#>     Attrib V39    0.12679234629540362
#>     Attrib V4    0.18615923100712953
#>     Attrib V40    -0.1533177439838605
#>     Attrib V41    -0.15838550314395874
#>     Attrib V42    0.058656959590247894
#>     Attrib V43    0.5011617965546379
#>     Attrib V44    0.5438438802728981
#>     Attrib V45    0.16813999746387875
#>     Attrib V46    -0.03475242873012109
#>     Attrib V47    -0.017889578247191857
#>     Attrib V48    0.023878828159119264
#>     Attrib V49    -0.020997508165856976
#>     Attrib V5    0.13601056637491246
#>     Attrib V50    -0.06737418591547945
#>     Attrib V51    0.014048478564546664
#>     Attrib V52    0.13935636101575533
#>     Attrib V53    0.2726551281150182
#>     Attrib V54    0.42598990418452803
#>     Attrib V55    -0.4483839280069478
#>     Attrib V56    0.38415657001821174
#>     Attrib V57    0.023299924955970806
#>     Attrib V58    0.28506882641909326
#>     Attrib V59    0.5245449013855641
#>     Attrib V6    -0.022476915538884295
#>     Attrib V60    0.4179671739841187
#>     Attrib V7    0.3644306187410191
#>     Attrib V8    -0.10722440299272135
#>     Attrib V9    0.3165702072863078
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.1294501371194216
#>     Attrib V1    -0.08405105061141958
#>     Attrib V10    -0.36060945491636703
#>     Attrib V11    -0.39721630157158827
#>     Attrib V12    -0.3285273611396335
#>     Attrib V13    -0.2744920357443775
#>     Attrib V14    0.17892766034451674
#>     Attrib V15    0.12856611185383485
#>     Attrib V16    0.17720925099825588
#>     Attrib V17    0.264965593573948
#>     Attrib V18    0.14161802844289417
#>     Attrib V19    -0.04772743658164695
#>     Attrib V2    -0.1803425755591939
#>     Attrib V20    0.13401341136855296
#>     Attrib V21    -0.1652387594764423
#>     Attrib V22    -0.41980179365936676
#>     Attrib V23    -0.24488750938818757
#>     Attrib V24    -0.2215235833949026
#>     Attrib V25    -0.07163138276590342
#>     Attrib V26    0.48719444452388666
#>     Attrib V27    0.16495246388090065
#>     Attrib V28    -0.24183100270151953
#>     Attrib V29    -0.03210130028926595
#>     Attrib V3    0.12583178278590876
#>     Attrib V30    -0.2774293263813053
#>     Attrib V31    0.40753898762810314
#>     Attrib V32    0.07182852675441705
#>     Attrib V33    -0.2580623996135478
#>     Attrib V34    0.10430577512711972
#>     Attrib V35    0.2548157369360176
#>     Attrib V36    0.39868404303053506
#>     Attrib V37    0.49447226899329577
#>     Attrib V38    -0.1567779110699083
#>     Attrib V39    -0.38440684365683025
#>     Attrib V4    -0.01917145924576987
#>     Attrib V40    0.008650251869888671
#>     Attrib V41    0.024406351011623195
#>     Attrib V42    -0.05693065264080846
#>     Attrib V43    -0.32550705707118693
#>     Attrib V44    -0.2734178000600971
#>     Attrib V45    -0.027763998913581167
#>     Attrib V46    -0.06877122208612091
#>     Attrib V47    -0.1507118521041009
#>     Attrib V48    -0.15048994725222456
#>     Attrib V49    -0.16793392478492228
#>     Attrib V5    0.0019936716570619754
#>     Attrib V50    0.29647321999236753
#>     Attrib V51    0.0078022336307713115
#>     Attrib V52    -0.13912946926411393
#>     Attrib V53    -0.1025972684773252
#>     Attrib V54    0.10540097200142537
#>     Attrib V55    0.6531902158007311
#>     Attrib V56    -0.18750859184226892
#>     Attrib V57    0.3175202408093179
#>     Attrib V58    -0.04901487977970384
#>     Attrib V59    -0.07921970090536729
#>     Attrib V6    0.07417512076451094
#>     Attrib V60    -0.027479588486039052
#>     Attrib V7    -0.06298761461758212
#>     Attrib V8    0.16306504795180252
#>     Attrib V9    -0.43290801748632796
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.08787489728776049
#>     Attrib V1    0.20763193646078942
#>     Attrib V10    0.09824593219825652
#>     Attrib V11    0.10175772431994899
#>     Attrib V12    0.07355553272544316
#>     Attrib V13    0.062443145755702256
#>     Attrib V14    0.04756723307243949
#>     Attrib V15    0.013777327739425369
#>     Attrib V16    0.08242425597863405
#>     Attrib V17    0.043881958291590195
#>     Attrib V18    0.05064311065636245
#>     Attrib V19    0.06737832581468899
#>     Attrib V2    0.14514298773021267
#>     Attrib V20    0.09043379555301677
#>     Attrib V21    0.13351080729985063
#>     Attrib V22    0.08442659875360206
#>     Attrib V23    -0.03437764059759443
#>     Attrib V24    7.103555209956613E-4
#>     Attrib V25    -0.1269787415367579
#>     Attrib V26    -0.3617899674986925
#>     Attrib V27    -0.31499727677288725
#>     Attrib V28    -0.2345963632690946
#>     Attrib V29    -0.13865217805029054
#>     Attrib V3    0.09567693897913784
#>     Attrib V30    0.02531402192188983
#>     Attrib V31    -0.11894015593964731
#>     Attrib V32    -0.08602441414346834
#>     Attrib V33    0.045732036929102014
#>     Attrib V34    -0.05164964846522635
#>     Attrib V35    -0.027618737005398783
#>     Attrib V36    -0.09007618085330318
#>     Attrib V37    -0.15350744059081645
#>     Attrib V38    0.015718256454216893
#>     Attrib V39    0.04278848240954967
#>     Attrib V4    0.19846577241844948
#>     Attrib V40    -0.013937506648503389
#>     Attrib V41    -0.06416342855061206
#>     Attrib V42    0.008458400426423351
#>     Attrib V43    0.17119340113709064
#>     Attrib V44    0.1386668219990375
#>     Attrib V45    0.022303992175834397
#>     Attrib V46    0.0697108331015349
#>     Attrib V47    0.030386274623164913
#>     Attrib V48    0.07977168416474575
#>     Attrib V49    0.02563941472130549
#>     Attrib V5    0.1557741138958031
#>     Attrib V50    0.009037635251915388
#>     Attrib V51    0.05344071679841223
#>     Attrib V52    0.1037604962664739
#>     Attrib V53    0.16779873357153058
#>     Attrib V54    0.19158584682747612
#>     Attrib V55    -0.020304025702907198
#>     Attrib V56    0.24501115139488217
#>     Attrib V57    0.1365932698105799
#>     Attrib V58    0.18399424200248857
#>     Attrib V59    0.25317843519906147
#>     Attrib V6    0.08995706940734045
#>     Attrib V60    0.25127169635075713
#>     Attrib V7    0.14112446619498803
#>     Attrib V8    -0.06563874156243091
#>     Attrib V9    0.15135155813549145
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.08890392989070044
#>     Attrib V1    0.14429002692409068
#>     Attrib V10    0.0507971207475275
#>     Attrib V11    0.12736943732620526
#>     Attrib V12    0.11090772822144936
#>     Attrib V13    0.08010690701344717
#>     Attrib V14    0.030243808732196367
#>     Attrib V15    0.010292734211087534
#>     Attrib V16    -0.015630291661254916
#>     Attrib V17    0.07057426393233951
#>     Attrib V18    0.045734653126691144
#>     Attrib V19    0.05609419864469264
#>     Attrib V2    0.061265809897248294
#>     Attrib V20    0.007578305089055163
#>     Attrib V21    0.0447320155212809
#>     Attrib V22    0.04442321179773401
#>     Attrib V23    -0.006196010421190417
#>     Attrib V24    -0.06560892353148011
#>     Attrib V25    -0.07214073390321898
#>     Attrib V26    -0.17369695736511426
#>     Attrib V27    -0.21897302735102
#>     Attrib V28    -0.17189536487695065
#>     Attrib V29    -0.14524983215163723
#>     Attrib V3    0.1251705850108318
#>     Attrib V30    0.0013528473858946178
#>     Attrib V31    -0.10968827912075817
#>     Attrib V32    -0.05663221641613755
#>     Attrib V33    0.05138780898184764
#>     Attrib V34    -0.0299268130536428
#>     Attrib V35    0.05069941032094249
#>     Attrib V36    -0.02242958933383874
#>     Attrib V37    -0.035578835102877605
#>     Attrib V38    0.01571108739320683
#>     Attrib V39    0.05049546248575933
#>     Attrib V4    0.18059099297705886
#>     Attrib V40    -0.038243244952845375
#>     Attrib V41    -0.012988596919450023
#>     Attrib V42    0.001953440482971248
#>     Attrib V43    0.11838593298637551
#>     Attrib V44    0.10305912990615788
#>     Attrib V45    0.1030230823977438
#>     Attrib V46    0.06105656147536518
#>     Attrib V47    0.11518330526918379
#>     Attrib V48    0.032028661164792936
#>     Attrib V49    0.02734030912106221
#>     Attrib V5    0.11678580888735995
#>     Attrib V50    -0.007964343897711267
#>     Attrib V51    0.0573535781262473
#>     Attrib V52    0.1517312833158036
#>     Attrib V53    0.1734894230662483
#>     Attrib V54    0.11927563403509735
#>     Attrib V55    0.030965209476829847
#>     Attrib V56    0.2138347919970862
#>     Attrib V57    0.09512076923361593
#>     Attrib V58    0.12419646937286828
#>     Attrib V59    0.2314096218037651
#>     Attrib V6    0.09224240774941508
#>     Attrib V60    0.14857026161017486
#>     Attrib V7    0.10080724652757529
#>     Attrib V8    0.001989045461277641
#>     Attrib V9    0.12427969755582573
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.3191357358495062
#>     Attrib V1    -0.35452448565688216
#>     Attrib V10    -0.6130660310805628
#>     Attrib V11    -0.6002910713509723
#>     Attrib V12    -0.2986762387955722
#>     Attrib V13    -0.16032321826907878
#>     Attrib V14    0.5975542751872002
#>     Attrib V15    0.29907640988531
#>     Attrib V16    0.15251568981582403
#>     Attrib V17    0.11153320266777958
#>     Attrib V18    -0.06209402305661062
#>     Attrib V19    -0.31132571204512083
#>     Attrib V2    0.032335603013735933
#>     Attrib V20    -0.09243187826759416
#>     Attrib V21    -0.7475301309023324
#>     Attrib V22    -1.198283809443827
#>     Attrib V23    -0.8836238619808047
#>     Attrib V24    -0.6406586844259851
#>     Attrib V25    0.028761380909026735
#>     Attrib V26    1.447202868036907
#>     Attrib V27    0.9940765318753236
#>     Attrib V28    0.38004842786140597
#>     Attrib V29    0.610577142716047
#>     Attrib V3    0.2755047759827812
#>     Attrib V30    -0.5014730230858047
#>     Attrib V31    0.8578588966734397
#>     Attrib V32    0.19503004520317904
#>     Attrib V33    -0.7150670706040957
#>     Attrib V34    0.1930720474913349
#>     Attrib V35    0.19154254692832848
#>     Attrib V36    0.4262928960279404
#>     Attrib V37    0.9357059754043097
#>     Attrib V38    -0.4174719107128302
#>     Attrib V39    -0.4545487363803485
#>     Attrib V4    -0.24335460343672125
#>     Attrib V40    0.4133683895758277
#>     Attrib V41    0.3126464822927838
#>     Attrib V42    -0.13138299484994914
#>     Attrib V43    -1.0092997478353563
#>     Attrib V44    -1.2357463903485033
#>     Attrib V45    -0.46568437508560445
#>     Attrib V46    -0.10628400078836005
#>     Attrib V47    -0.11248986456255164
#>     Attrib V48    -0.09784281773390725
#>     Attrib V49    -0.1806268240311853
#>     Attrib V5    -0.15891106638307373
#>     Attrib V50    0.3103321331420229
#>     Attrib V51    0.08424866378869267
#>     Attrib V52    -0.11905760054328134
#>     Attrib V53    -0.2576369847130826
#>     Attrib V54    -0.20404121866690247
#>     Attrib V55    1.349323978313943
#>     Attrib V56    -0.37301576960133875
#>     Attrib V57    0.34783280991339516
#>     Attrib V58    -0.24947529579954872
#>     Attrib V59    -0.5052217973590685
#>     Attrib V6    0.18731382503900174
#>     Attrib V60    -0.37974425930216554
#>     Attrib V7    -0.5001037971504297
#>     Attrib V8    0.16882148106137163
#>     Attrib V9    -0.8859689594478137
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.3634584157274055
#>     Attrib V1    -0.24932562748380296
#>     Attrib V10    0.8919593525742493
#>     Attrib V11    0.9898081787345279
#>     Attrib V12    1.1268389017544715
#>     Attrib V13    0.8727941584653219
#>     Attrib V14    0.028784724948517502
#>     Attrib V15    -0.35608053580200694
#>     Attrib V16    -0.42931540040629257
#>     Attrib V17    -0.7245202980483578
#>     Attrib V18    -0.40971874760457777
#>     Attrib V19    0.002960131210143117
#>     Attrib V2    0.2725971662568421
#>     Attrib V20    -0.7550583083231103
#>     Attrib V21    0.07759160531383005
#>     Attrib V22    0.5799190668667946
#>     Attrib V23    0.18678802517409884
#>     Attrib V24    0.36556601320810794
#>     Attrib V25    0.559887876298565
#>     Attrib V26    0.654004629698463
#>     Attrib V27    1.2775053726286953
#>     Attrib V28    2.0966121288456785
#>     Attrib V29    1.8174820411315429
#>     Attrib V3    -0.3152627907888034
#>     Attrib V30    0.90224130977778
#>     Attrib V31    -0.7461397558866284
#>     Attrib V32    -0.7260649438497759
#>     Attrib V33    -0.39577666372313375
#>     Attrib V34    -0.4059475396794807
#>     Attrib V35    -0.8144565974342981
#>     Attrib V36    -0.6331676918546998
#>     Attrib V37    -0.19841667997699278
#>     Attrib V38    -0.016514701298853164
#>     Attrib V39    1.3116184698482272
#>     Attrib V4    1.0136823184571906
#>     Attrib V40    0.7116175786163086
#>     Attrib V41    1.0617872561897943
#>     Attrib V42    0.31192475328569114
#>     Attrib V43    0.2856642205436209
#>     Attrib V44    0.5276930072039422
#>     Attrib V45    0.18885901126218912
#>     Attrib V46    0.5235352339248885
#>     Attrib V47    0.6409881603298815
#>     Attrib V48    0.7699771364700135
#>     Attrib V49    0.9720072576931429
#>     Attrib V5    0.49905277356286126
#>     Attrib V50    -0.3713368690639117
#>     Attrib V51    0.42451295348647167
#>     Attrib V52    0.5997020930009349
#>     Attrib V53    0.4159538335556447
#>     Attrib V54    -0.22657819325250197
#>     Attrib V55    -1.074605425315849
#>     Attrib V56    -0.11939002787452259
#>     Attrib V57    -0.4122366832867093
#>     Attrib V58    -0.2727774834384182
#>     Attrib V59    0.6489688870751122
#>     Attrib V6    0.14857610395097434
#>     Attrib V60    0.2958633567249421
#>     Attrib V7    -0.03606214047545222
#>     Attrib V8    -0.36064550990424105
#>     Attrib V9    0.545213344223342
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.155610983171665
#>     Attrib V1    0.1245445087787712
#>     Attrib V10    0.07109980977093013
#>     Attrib V11    0.06034198926767541
#>     Attrib V12    0.09232442147376753
#>     Attrib V13    0.05182769494916749
#>     Attrib V14    0.0696013097632166
#>     Attrib V15    0.01481381171271068
#>     Attrib V16    0.02004186920158599
#>     Attrib V17    0.04929870730276406
#>     Attrib V18    -0.005755210687253683
#>     Attrib V19    0.10288649238420142
#>     Attrib V2    0.10479284989647675
#>     Attrib V20    0.03991126443271217
#>     Attrib V21    0.0891714053955958
#>     Attrib V22    0.03698872041472386
#>     Attrib V23    -0.03250022569378973
#>     Attrib V24    -0.057442802350308575
#>     Attrib V25    -0.07895285224371289
#>     Attrib V26    -0.23144058848709492
#>     Attrib V27    -0.14553690921633577
#>     Attrib V28    -0.05928539847827446
#>     Attrib V29    -0.05181152217371109
#>     Attrib V3    0.06260650019050887
#>     Attrib V30    0.04043276876330737
#>     Attrib V31    -0.13620821067264274
#>     Attrib V32    -0.09195058715648749
#>     Attrib V33    0.07469971875611736
#>     Attrib V34    -0.030842443977574907
#>     Attrib V35    0.03521580628948613
#>     Attrib V36    -0.009246884884153426
#>     Attrib V37    -0.03853420461656905
#>     Attrib V38    0.03158606088992237
#>     Attrib V39    0.09862203542976754
#>     Attrib V4    0.1770599072981127
#>     Attrib V40    -0.006742462034903684
#>     Attrib V41    -0.01626412601665118
#>     Attrib V42    0.04388843062280571
#>     Attrib V43    0.09427879856891384
#>     Attrib V44    0.11599854790161533
#>     Attrib V45    0.08032131933100226
#>     Attrib V46    0.03947738615782207
#>     Attrib V47    0.049334773709889486
#>     Attrib V48    0.09743736285736095
#>     Attrib V49    0.017871515343034418
#>     Attrib V5    0.07302303411555419
#>     Attrib V50    0.037008754314479406
#>     Attrib V51    0.05466582738654944
#>     Attrib V52    0.07432093025761875
#>     Attrib V53    0.12333633723073902
#>     Attrib V54    0.11144035763854894
#>     Attrib V55    0.012125726341441304
#>     Attrib V56    0.18298313168680805
#>     Attrib V57    0.142985662112091
#>     Attrib V58    0.11783818070072874
#>     Attrib V59    0.20618437297618314
#>     Attrib V6    0.10714867005962689
#>     Attrib V60    0.22370423907694212
#>     Attrib V7    0.07330344746889204
#>     Attrib V8    0.03912878472824339
#>     Attrib V9    0.10184954731224553
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.31835274801921803
#>     Attrib V1    0.10819148074424774
#>     Attrib V10    0.6074538167272611
#>     Attrib V11    0.5463718018211596
#>     Attrib V12    0.4513638602482099
#>     Attrib V13    0.31664432631661715
#>     Attrib V14    -0.3858531487980918
#>     Attrib V15    -0.3104696777843479
#>     Attrib V16    -0.32048848766152255
#>     Attrib V17    -0.43217988100332944
#>     Attrib V18    -0.20398181688561123
#>     Attrib V19    0.0418821746611443
#>     Attrib V2    0.06058463087145931
#>     Attrib V20    -0.27318277568628385
#>     Attrib V21    0.28354352930334964
#>     Attrib V22    0.5937670993903814
#>     Attrib V23    0.36347061790228236
#>     Attrib V24    0.4019340451628105
#>     Attrib V25    0.19107194788700785
#>     Attrib V26    -0.41261410713743996
#>     Attrib V27    -0.1108112963233997
#>     Attrib V28    0.4083791665889749
#>     Attrib V29    0.22081510198683857
#>     Attrib V3    -0.4529100042116913
#>     Attrib V30    0.481840992541067
#>     Attrib V31    -0.5038644200430282
#>     Attrib V32    -0.15780024286309752
#>     Attrib V33    0.29855490085808795
#>     Attrib V34    -0.07870538908467704
#>     Attrib V35    -0.2684997356779848
#>     Attrib V36    -0.38932791509957554
#>     Attrib V37    -0.46832940799764183
#>     Attrib V38    0.19295424818554296
#>     Attrib V39    0.583490401901639
#>     Attrib V4    0.17124669748709337
#>     Attrib V40    0.05106706415323357
#>     Attrib V41    0.11718450112327758
#>     Attrib V42    0.027340266122608432
#>     Attrib V43    0.4491311896557158
#>     Attrib V44    0.5919713075666626
#>     Attrib V45    0.22711526139657076
#>     Attrib V46    0.1322841143237944
#>     Attrib V47    0.20286543635287474
#>     Attrib V48    0.3423050102417145
#>     Attrib V49    0.25188626885535503
#>     Attrib V5    0.08713585704598474
#>     Attrib V50    -0.27631053135316425
#>     Attrib V51    0.023164799791646522
#>     Attrib V52    0.18145288396267867
#>     Attrib V53    0.024009699996209125
#>     Attrib V54    -0.09487171677388401
#>     Attrib V55    -0.9434185752981132
#>     Attrib V56    0.04290618105521259
#>     Attrib V57    -0.40371347481990805
#>     Attrib V58    -0.008614474659939083
#>     Attrib V59    0.21960876209491306
#>     Attrib V6    -0.01767639443462775
#>     Attrib V60    0.07919730945443262
#>     Attrib V7    0.14632698559191723
#>     Attrib V8    -0.12908555771889077
#>     Attrib V9    0.726463246779026
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.08995410563082638
#>     Attrib V1    -0.020119864149358013
#>     Attrib V10    -0.1681869156579909
#>     Attrib V11    -0.18893667346900742
#>     Attrib V12    -0.19254162829690613
#>     Attrib V13    -0.14223194353166715
#>     Attrib V14    0.05270365380280155
#>     Attrib V15    0.07480634394152341
#>     Attrib V16    0.0999212957082246
#>     Attrib V17    0.07401799578709965
#>     Attrib V18    0.1071099603024371
#>     Attrib V19    -0.08362147214449618
#>     Attrib V2    -0.0917288356711558
#>     Attrib V20    -0.05146278797969892
#>     Attrib V21    -0.13651520899440087
#>     Attrib V22    -0.18374058708661423
#>     Attrib V23    -0.15197033176562671
#>     Attrib V24    -0.12093774994563006
#>     Attrib V25    -0.07165865961877674
#>     Attrib V26    0.14965332870301776
#>     Attrib V27    0.029662708260011716
#>     Attrib V28    -0.1486373565248142
#>     Attrib V29    -0.04735233175095945
#>     Attrib V3    0.07547047584586775
#>     Attrib V30    -0.13916636712399733
#>     Attrib V31    0.16600519269301947
#>     Attrib V32    0.20167389703580021
#>     Attrib V33    -0.03167898583200417
#>     Attrib V34    0.11420818354707635
#>     Attrib V35    0.2130177174312477
#>     Attrib V36    0.3080190900114196
#>     Attrib V37    0.2799459551836584
#>     Attrib V38    0.020074497247405346
#>     Attrib V39    -0.08333866376324567
#>     Attrib V4    -0.03520181685601899
#>     Attrib V40    0.08145691753986349
#>     Attrib V41    0.12307320417455211
#>     Attrib V42    0.08411135739277749
#>     Attrib V43    -0.06279204274622112
#>     Attrib V44    -0.09366281126500746
#>     Attrib V45    0.01917044107297336
#>     Attrib V46    -0.02802588038490727
#>     Attrib V47    -0.07910351902822246
#>     Attrib V48    -0.04961628683680321
#>     Attrib V49    -0.07745263281349801
#>     Attrib V5    -0.07483369714851591
#>     Attrib V50    0.15328144327656223
#>     Attrib V51    -0.02772978466669362
#>     Attrib V52    0.009262643188989231
#>     Attrib V53    -0.0513306743931902
#>     Attrib V54    0.0917064532119362
#>     Attrib V55    0.24091166416344098
#>     Attrib V56    -0.059169305309015534
#>     Attrib V57    0.12904364264792514
#>     Attrib V58    0.023516176961818964
#>     Attrib V59    -0.040667530566889924
#>     Attrib V6    0.042723363282425826
#>     Attrib V60    -0.03029158171659092
#>     Attrib V7    -0.04546738215977668
#>     Attrib V8    0.1513323345811137
#>     Attrib V9    -0.12350824414447845
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.1053909649339035
#>     Attrib V1    0.24563468464870405
#>     Attrib V10    0.13427391246154538
#>     Attrib V11    0.186827590783123
#>     Attrib V12    0.10008014944042698
#>     Attrib V13    0.04584507283932546
#>     Attrib V14    -0.13629320442874468
#>     Attrib V15    -0.03123754664266725
#>     Attrib V16    -0.04772041299323876
#>     Attrib V17    -0.013528878006316823
#>     Attrib V18    0.07667439651924214
#>     Attrib V19    0.17152596687386923
#>     Attrib V2    0.04863022669007012
#>     Attrib V20    0.24925666562625215
#>     Attrib V21    0.5058611269653376
#>     Attrib V22    0.5913279188427122
#>     Attrib V23    0.3661374307896128
#>     Attrib V24    0.2538481680894053
#>     Attrib V25    -0.08378990959739509
#>     Attrib V26    -0.8811511456436716
#>     Attrib V27    -0.7186531416673373
#>     Attrib V28    -0.4096585401347608
#>     Attrib V29    -0.3772768990637577
#>     Attrib V3    -0.011465170838613021
#>     Attrib V30    0.12003196418536596
#>     Attrib V31    -0.38678454892014325
#>     Attrib V32    -0.04412912928360211
#>     Attrib V33    0.35549500068606443
#>     Attrib V34    -0.0724824331522625
#>     Attrib V35    -0.09877939096161449
#>     Attrib V36    -0.29557207906977695
#>     Attrib V37    -0.5042722019244326
#>     Attrib V38    0.12482079373144608
#>     Attrib V39    0.15973842686991793
#>     Attrib V4    0.1324788991114962
#>     Attrib V40    -0.13890671244801628
#>     Attrib V41    -0.08738291657820153
#>     Attrib V42    0.042464016847633866
#>     Attrib V43    0.46311531013005586
#>     Attrib V44    0.4144165564992772
#>     Attrib V45    0.1921563483558358
#>     Attrib V46    0.020156284249564258
#>     Attrib V47    0.0779470995803313
#>     Attrib V48    0.03304367456801081
#>     Attrib V49    0.00488504712722301
#>     Attrib V5    0.04661195069408738
#>     Attrib V50    -0.053574584513815734
#>     Attrib V51    0.011823777760074585
#>     Attrib V52    0.14640020888101807
#>     Attrib V53    0.2166930654189618
#>     Attrib V54    0.22555147450957813
#>     Attrib V55    -0.44440055410226836
#>     Attrib V56    0.3137598368297551
#>     Attrib V57    -0.018294008822393855
#>     Attrib V58    0.164834577772447
#>     Attrib V59    0.3301334066115568
#>     Attrib V6    0.0012137028039285267
#>     Attrib V60    0.2814583117299309
#>     Attrib V7    0.2547054747081125
#>     Attrib V8    -0.04086242452129753
#>     Attrib V9    0.3770825735235411
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.2157668567051032
#>     Attrib V1    -0.10630648068624847
#>     Attrib V10    -0.3610674301586533
#>     Attrib V11    -0.4261695776460997
#>     Attrib V12    -0.3331731654780631
#>     Attrib V13    -0.2227812629382016
#>     Attrib V14    0.25584779864196133
#>     Attrib V15    0.1597547893027319
#>     Attrib V16    0.1888408618508269
#>     Attrib V17    0.288917370969544
#>     Attrib V18    0.11215987414392466
#>     Attrib V19    -0.08891802829453171
#>     Attrib V2    -0.1473805060921813
#>     Attrib V20    0.09755593338183095
#>     Attrib V21    -0.2631194840264558
#>     Attrib V22    -0.5209400222944855
#>     Attrib V23    -0.29781795599895555
#>     Attrib V24    -0.28383751895200987
#>     Attrib V25    -0.041792685429683056
#>     Attrib V26    0.6048188233902021
#>     Attrib V27    0.2607843193213771
#>     Attrib V28    -0.16053287609971645
#>     Attrib V29    -0.038793465752402605
#>     Attrib V3    0.18824951641216262
#>     Attrib V30    -0.3428588769314774
#>     Attrib V31    0.4815224436712294
#>     Attrib V32    0.07001308746160981
#>     Attrib V33    -0.3572397911651202
#>     Attrib V34    0.08131257042873422
#>     Attrib V35    0.2866109292678233
#>     Attrib V36    0.38653366504849934
#>     Attrib V37    0.5278058196558291
#>     Attrib V38    -0.20918660044010046
#>     Attrib V39    -0.37469023230287124
#>     Attrib V4    -0.05439797057452115
#>     Attrib V40    0.009277170944671636
#>     Attrib V41    -0.005388869564626882
#>     Attrib V42    0.002723066151512616
#>     Attrib V43    -0.4554289765110182
#>     Attrib V44    -0.4355454977538512
#>     Attrib V45    -0.03394491357242537
#>     Attrib V46    -0.05324131589455378
#>     Attrib V47    -0.16362263740942398
#>     Attrib V48    -0.16006632360005732
#>     Attrib V49    -0.19224277543273507
#>     Attrib V5    -0.054684711506905896
#>     Attrib V50    0.27874804091381594
#>     Attrib V51    -0.02447199445014145
#>     Attrib V52    -0.16591472434862647
#>     Attrib V53    -0.10780419324403699
#>     Attrib V54    0.09766372697740508
#>     Attrib V55    0.7844412619275956
#>     Attrib V56    -0.14759776947328193
#>     Attrib V57    0.2659302474212551
#>     Attrib V58    -0.02000693839241506
#>     Attrib V59    -0.1150770488715783
#>     Attrib V6    0.1159020291022698
#>     Attrib V60    -0.06557539601653936
#>     Attrib V7    -0.15376717526912642
#>     Attrib V8    0.19510160638176974
#>     Attrib V9    -0.5503978565544078
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.05645884748064564
#>     Attrib V1    0.38874441049774267
#>     Attrib V10    0.057344726128504796
#>     Attrib V11    0.037735000287010254
#>     Attrib V12    -0.08806492585174822
#>     Attrib V13    -0.007414277277148156
#>     Attrib V14    -0.1750822324078809
#>     Attrib V15    0.016426986514958466
#>     Attrib V16    -0.037993709360501636
#>     Attrib V17    0.025014128477324697
#>     Attrib V18    0.09151282957876734
#>     Attrib V19    0.1704357176503905
#>     Attrib V2    0.07681420771570903
#>     Attrib V20    0.3345786587826532
#>     Attrib V21    0.5375543880034649
#>     Attrib V22    0.715636684603758
#>     Attrib V23    0.572823217079209
#>     Attrib V24    0.3233698364721343
#>     Attrib V25    -0.23316245110594164
#>     Attrib V26    -1.0607277419262644
#>     Attrib V27    -0.9749604602502674
#>     Attrib V28    -0.7104422926916493
#>     Attrib V29    -0.703669055779309
#>     Attrib V3    -0.037776252900735705
#>     Attrib V30    0.0785877911734881
#>     Attrib V31    -0.3818160380005741
#>     Attrib V32    -0.03820357621547442
#>     Attrib V33    0.46031036937987324
#>     Attrib V34    -0.039312047978395895
#>     Attrib V35    -0.04326638347121711
#>     Attrib V36    -0.30989467162340917
#>     Attrib V37    -0.6247234276153059
#>     Attrib V38    0.19738763419922667
#>     Attrib V39    0.06298230754451682
#>     Attrib V4    0.08343160043887192
#>     Attrib V40    -0.1888412396955419
#>     Attrib V41    -0.2575989106672235
#>     Attrib V42    0.05287964176154832
#>     Attrib V43    0.53072896303467
#>     Attrib V44    0.5065600517215947
#>     Attrib V45    0.13124012381447844
#>     Attrib V46    0.007197558056705249
#>     Attrib V47    0.04438314295861328
#>     Attrib V48    0.03540225940299463
#>     Attrib V49    -0.00806107592592628
#>     Attrib V5    0.02645130841205885
#>     Attrib V50    -0.05476885028312587
#>     Attrib V51    -0.05138950944114076
#>     Attrib V52    0.11348863131096727
#>     Attrib V53    0.2734016934183033
#>     Attrib V54    0.4308938698260597
#>     Attrib V55    -0.4877347765919036
#>     Attrib V56    0.35660736759904715
#>     Attrib V57    5.970423570854868E-4
#>     Attrib V58    0.25276692404332285
#>     Attrib V59    0.4199241081845462
#>     Attrib V6    -0.01446887611775005
#>     Attrib V60    0.4105497819075851
#>     Attrib V7    0.39105038698766303
#>     Attrib V8    -0.007817139456552876
#>     Attrib V9    0.4451213641982617
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1301609318617663
#>     Attrib V1    -0.05375874467237827
#>     Attrib V10    -0.3038487345882285
#>     Attrib V11    -0.2771620551702357
#>     Attrib V12    -0.2708820511140622
#>     Attrib V13    -0.26310599965817005
#>     Attrib V14    0.17442602563017656
#>     Attrib V15    0.09694959133197756
#>     Attrib V16    0.15426424414820925
#>     Attrib V17    0.17765716135573376
#>     Attrib V18    0.16453009383395473
#>     Attrib V19    -0.08001276438135291
#>     Attrib V2    -0.1485233299369296
#>     Attrib V20    0.0977623720588555
#>     Attrib V21    -0.15443196424718977
#>     Attrib V22    -0.3111653209540357
#>     Attrib V23    -0.1215492844759286
#>     Attrib V24    -0.15816817439103112
#>     Attrib V25    -0.08072317244514639
#>     Attrib V26    0.3170581485841637
#>     Attrib V27    0.09413871944966817
#>     Attrib V28    -0.15791147834206792
#>     Attrib V29    -0.05020057040286555
#>     Attrib V3    0.13243972685508576
#>     Attrib V30    -0.21162161957660902
#>     Attrib V31    0.26944782605361545
#>     Attrib V32    0.11825450071996693
#>     Attrib V33    -0.1269363370644731
#>     Attrib V34    0.12575659368932765
#>     Attrib V35    0.25567030855675654
#>     Attrib V36    0.41788675330526237
#>     Attrib V37    0.39584139959862347
#>     Attrib V38    -0.14086117116349497
#>     Attrib V39    -0.28576355157564537
#>     Attrib V4    -0.10121238299369333
#>     Attrib V40    -0.02347962917866708
#>     Attrib V41    -0.03433778472604585
#>     Attrib V42    0.031156635702817057
#>     Attrib V43    -0.28954863658151914
#>     Attrib V44    -0.20278883332880657
#>     Attrib V45    1.8250119927553374E-4
#>     Attrib V46    -0.06475756482407151
#>     Attrib V47    -0.13309075972353276
#>     Attrib V48    -0.19204133512151683
#>     Attrib V49    -0.10883367076904073
#>     Attrib V5    -0.029882939330242515
#>     Attrib V50    0.1673893885830184
#>     Attrib V51    -0.012207609330491446
#>     Attrib V52    -0.08182740792647378
#>     Attrib V53    -0.07917220141672972
#>     Attrib V54    0.04489910351994113
#>     Attrib V55    0.4797156072010322
#>     Attrib V56    -0.1368886996059533
#>     Attrib V57    0.2090642775290476
#>     Attrib V58    0.031172329740960698
#>     Attrib V59    -0.12185695124375764
#>     Attrib V6    0.09019923057238335
#>     Attrib V60    -0.06679296653782334
#>     Attrib V7    -0.06956699211306333
#>     Attrib V8    0.220455016606671
#>     Attrib V9    -0.3039933185266269
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
