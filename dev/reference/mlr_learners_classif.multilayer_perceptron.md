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
#>     Threshold    0.4097239453848874
#>     Node 2    2.0557191630812
#>     Node 3    1.4655285187279636
#>     Node 4    1.1665742654970985
#>     Node 5    -2.5429405501475006
#>     Node 6    1.0758317562601274
#>     Node 7    2.5275940891523554
#>     Node 8    0.5075555646283949
#>     Node 9    2.921736157251006
#>     Node 10    -2.555429058868799
#>     Node 11    1.418140906157046
#>     Node 12    1.7580518162943157
#>     Node 13    1.124383088902973
#>     Node 14    1.6185311820752597
#>     Node 15    -1.8198754315855197
#>     Node 16    -0.24421964356760545
#>     Node 17    0.014021942134495567
#>     Node 18    0.8785321401270436
#>     Node 19    2.065656415939487
#>     Node 20    1.856141343039885
#>     Node 21    -2.171454032714806
#>     Node 22    0.5978143211814716
#>     Node 23    1.1345917179337326
#>     Node 24    -1.296754493780484
#>     Node 25    3.1063979331573104
#>     Node 26    -0.9834499147057949
#>     Node 27    1.8300381914093231
#>     Node 28    -3.679846158331512
#>     Node 29    1.5774591243740301
#>     Node 30    -0.03405456931540388
#>     Node 31    0.47069537414258866
#>     Node 32    0.6543472366311975
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.38205010047588595
#>     Node 2    -2.1065118703318126
#>     Node 3    -1.4453643946922485
#>     Node 4    -1.124387239707975
#>     Node 5    2.570453543419378
#>     Node 6    -1.053513941259191
#>     Node 7    -2.526859943344849
#>     Node 8    -0.5457610221110459
#>     Node 9    -2.9372260647472124
#>     Node 10    2.504301616476269
#>     Node 11    -1.3830526165078898
#>     Node 12    -1.8300974633931033
#>     Node 13    -1.0712906775712785
#>     Node 14    -1.5490804015188384
#>     Node 15    1.8126779668556787
#>     Node 16    0.2199428653013726
#>     Node 17    0.010449208002412003
#>     Node 18    -0.8406888913022084
#>     Node 19    -2.0569288203728293
#>     Node 20    -1.8436507063231065
#>     Node 21    2.2355833474818776
#>     Node 22    -0.653009998266296
#>     Node 23    -1.1824524406582735
#>     Node 24    1.2870548651375435
#>     Node 25    -3.108114177904632
#>     Node 26    0.9017721088821569
#>     Node 27    -1.8667475681375891
#>     Node 28    3.6585985872739744
#>     Node 29    -1.608857414556534
#>     Node 30    0.10432616796099
#>     Node 31    -0.42176365520375425
#>     Node 32    -0.6756253403751655
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.19306965861105546
#>     Attrib V1    0.3124853184259213
#>     Attrib V10    -0.3659243246587239
#>     Attrib V11    0.30277680991019623
#>     Attrib V12    0.03201373754677251
#>     Attrib V13    -0.19033786007353815
#>     Attrib V14    0.14018201004164324
#>     Attrib V15    0.25702701165403324
#>     Attrib V16    0.06584678239310375
#>     Attrib V17    -0.01333274114859103
#>     Attrib V18    -0.37368576299323747
#>     Attrib V19    0.07283969356339164
#>     Attrib V2    0.07790989028477843
#>     Attrib V20    0.7532660105451637
#>     Attrib V21    0.8509114720280901
#>     Attrib V22    0.24902618596089626
#>     Attrib V23    0.3345615269215949
#>     Attrib V24    0.48202119961919887
#>     Attrib V25    -0.22932905367037437
#>     Attrib V26    -0.6329148333669573
#>     Attrib V27    -0.9613488629665317
#>     Attrib V28    -0.3952416307239257
#>     Attrib V29    -0.09466034603872261
#>     Attrib V3    0.16691584170813784
#>     Attrib V30    0.21131931158746545
#>     Attrib V31    -0.6349593532562956
#>     Attrib V32    -0.1703576219190711
#>     Attrib V33    0.28872107695396015
#>     Attrib V34    -0.013561560013504765
#>     Attrib V35    -0.3151207599974085
#>     Attrib V36    -0.7533514369457581
#>     Attrib V37    -0.9288435089107457
#>     Attrib V38    -0.08691967583823612
#>     Attrib V39    0.2912639971365621
#>     Attrib V4    -0.048858882265998174
#>     Attrib V40    -0.3217735659990346
#>     Attrib V41    -0.04879637584496984
#>     Attrib V42    0.6676707179333928
#>     Attrib V43    0.17733603878424645
#>     Attrib V44    0.3323939656077346
#>     Attrib V45    0.44710310822579885
#>     Attrib V46    0.20216114764226598
#>     Attrib V47    -0.1184109428803263
#>     Attrib V48    0.1555703559225131
#>     Attrib V49    0.4557822200918521
#>     Attrib V5    -0.0237191817831053
#>     Attrib V50    -0.9657941587027873
#>     Attrib V51    0.20583611170430335
#>     Attrib V52    0.30485724952021914
#>     Attrib V53    0.35171379614756104
#>     Attrib V54    -0.06787374146834282
#>     Attrib V55    0.2783544680253908
#>     Attrib V56    0.17817141202504083
#>     Attrib V57    0.17322296993151373
#>     Attrib V58    0.8552840182380138
#>     Attrib V59    0.9475835283750228
#>     Attrib V6    -0.5022287166356518
#>     Attrib V60    -0.15065941423079457
#>     Attrib V7    -0.2319624581179018
#>     Attrib V8    0.19033200561745856
#>     Attrib V9    0.3090979868825401
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.04815737287491705
#>     Attrib V1    0.24534372335654483
#>     Attrib V10    -0.3066569908678441
#>     Attrib V11    0.08278250140377093
#>     Attrib V12    -0.0468666948706357
#>     Attrib V13    -0.11206974923891408
#>     Attrib V14    0.14987983579421096
#>     Attrib V15    0.31174045293273156
#>     Attrib V16    0.10216597862344269
#>     Attrib V17    0.05634433698711921
#>     Attrib V18    -0.23375582666983322
#>     Attrib V19    0.11816548077675383
#>     Attrib V2    0.14396002426476406
#>     Attrib V20    0.5121271397054686
#>     Attrib V21    0.4986502938316839
#>     Attrib V22    0.17610541827368736
#>     Attrib V23    0.1889327326952502
#>     Attrib V24    0.2274702075658919
#>     Attrib V25    -0.2375890672555576
#>     Attrib V26    -0.5500073529854215
#>     Attrib V27    -0.7815527420005461
#>     Attrib V28    -0.43267261497706583
#>     Attrib V29    -0.24490632370806706
#>     Attrib V3    0.16881673246686135
#>     Attrib V30    0.07869912195961651
#>     Attrib V31    -0.4215702484701374
#>     Attrib V32    -0.16627907170521264
#>     Attrib V33    0.1566804329624693
#>     Attrib V34    -0.08912090218105448
#>     Attrib V35    -0.20460915153041723
#>     Attrib V36    -0.5034286560734075
#>     Attrib V37    -0.5908212960342052
#>     Attrib V38    -0.07992644059002417
#>     Attrib V39    0.2083548599984774
#>     Attrib V4    0.01737501796837572
#>     Attrib V40    -0.21272898817968613
#>     Attrib V41    -0.0693551893327287
#>     Attrib V42    0.3844617068538333
#>     Attrib V43    0.08516772142315515
#>     Attrib V44    0.2548765982674759
#>     Attrib V45    0.32227779392426137
#>     Attrib V46    0.108833199167771
#>     Attrib V47    -0.09443286092316103
#>     Attrib V48    -0.012582955458959507
#>     Attrib V49    0.23240908870340152
#>     Attrib V5    -0.010934564980678107
#>     Attrib V50    -0.5880683102599437
#>     Attrib V51    -0.015652505262236174
#>     Attrib V52    0.2076329868495763
#>     Attrib V53    0.2385876238962316
#>     Attrib V54    0.09460476298189886
#>     Attrib V55    0.2894134210670423
#>     Attrib V56    0.20586695787384512
#>     Attrib V57    0.24998115730757184
#>     Attrib V58    0.6574378713396911
#>     Attrib V59    0.6741737581771091
#>     Attrib V6    -0.30284820198055307
#>     Attrib V60    -0.05682208756756984
#>     Attrib V7    -0.14587986548943443
#>     Attrib V8    0.10550377006856489
#>     Attrib V9    0.11354801203185126
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.029576959676463784
#>     Attrib V1    0.14545570167776617
#>     Attrib V10    -0.27107001728256397
#>     Attrib V11    0.09883500795602382
#>     Attrib V12    -0.017147861339647172
#>     Attrib V13    -0.0678245929497498
#>     Attrib V14    0.14152668098649188
#>     Attrib V15    0.21656523878352205
#>     Attrib V16    0.06789861154145917
#>     Attrib V17    0.06687008213039462
#>     Attrib V18    -0.16482476045561875
#>     Attrib V19    0.09916561025416554
#>     Attrib V2    0.0806747429779973
#>     Attrib V20    0.41185852631577713
#>     Attrib V21    0.46300194960001734
#>     Attrib V22    0.09819248951871035
#>     Attrib V23    0.17437536219535224
#>     Attrib V24    0.19794245561168392
#>     Attrib V25    -0.20913394176985556
#>     Attrib V26    -0.4035833697917797
#>     Attrib V27    -0.6292263511496949
#>     Attrib V28    -0.2613593220380942
#>     Attrib V29    -0.0747768516861673
#>     Attrib V3    0.16054882516441768
#>     Attrib V30    0.03554153323996678
#>     Attrib V31    -0.35848097237613974
#>     Attrib V32    -0.14936174894897813
#>     Attrib V33    0.14069455786986998
#>     Attrib V34    -0.0011539788826707008
#>     Attrib V35    -0.11380462575835823
#>     Attrib V36    -0.3938809460043618
#>     Attrib V37    -0.46469017124500783
#>     Attrib V38    -0.06434291162296515
#>     Attrib V39    0.20765711939235726
#>     Attrib V4    -0.0015689535800453207
#>     Attrib V40    -0.16733227367821263
#>     Attrib V41    -0.07589708616763803
#>     Attrib V42    0.3181439253838969
#>     Attrib V43    0.038939551683081525
#>     Attrib V44    0.18938926316412522
#>     Attrib V45    0.3273103914424033
#>     Attrib V46    0.07516516882541717
#>     Attrib V47    -0.11135786446196907
#>     Attrib V48    0.04760778841549502
#>     Attrib V49    0.25368678859557914
#>     Attrib V5    0.042608274267275405
#>     Attrib V50    -0.49525958047670793
#>     Attrib V51    0.030126263297045038
#>     Attrib V52    0.1562322485931902
#>     Attrib V53    0.24767596377985207
#>     Attrib V54    -0.034475272972163816
#>     Attrib V55    0.20685092382397682
#>     Attrib V56    0.14468450076510658
#>     Attrib V57    0.16062033536310197
#>     Attrib V58    0.4855306572965543
#>     Attrib V59    0.5304916343039471
#>     Attrib V6    -0.25108019502571266
#>     Attrib V60    -0.05923428796539462
#>     Attrib V7    -0.13474288192833953
#>     Attrib V8    0.0016093266364319047
#>     Attrib V9    0.13333146524862147
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3851389346586294
#>     Attrib V1    0.03366869587717493
#>     Attrib V10    -0.2713522413780003
#>     Attrib V11    -0.9577205422041474
#>     Attrib V12    -0.7956502074419726
#>     Attrib V13    -0.09198707584965485
#>     Attrib V14    0.07564742853326283
#>     Attrib V15    0.33019897601371695
#>     Attrib V16    0.4174625279529249
#>     Attrib V17    0.4532523154293788
#>     Attrib V18    0.7104348520827706
#>     Attrib V19    -0.016503095003318955
#>     Attrib V2    -0.12951524952878807
#>     Attrib V20    -0.3140849037325237
#>     Attrib V21    -0.6773533792755201
#>     Attrib V22    -0.12233430644788602
#>     Attrib V23    -0.5179768805587721
#>     Attrib V24    -0.7791104299895484
#>     Attrib V25    -0.007009065335840016
#>     Attrib V26    -0.3333261427552636
#>     Attrib V27    -0.4382701890236022
#>     Attrib V28    -1.2815194802670697
#>     Attrib V29    -1.0070120765783557
#>     Attrib V3    -0.23229360811874683
#>     Attrib V30    -0.477149532748416
#>     Attrib V31    0.8829152355371394
#>     Attrib V32    0.27816870415914324
#>     Attrib V33    -0.1395912871934221
#>     Attrib V34    -0.2192839033937491
#>     Attrib V35    -0.277575135928492
#>     Attrib V36    0.6575734684706362
#>     Attrib V37    0.6235234050829506
#>     Attrib V38    0.3099371509421023
#>     Attrib V39    -0.5655468469671869
#>     Attrib V4    -0.0915672492573053
#>     Attrib V40    0.15345878227203283
#>     Attrib V41    -0.32601421805150277
#>     Attrib V42    -0.17964618213124042
#>     Attrib V43    -0.03856348516867339
#>     Attrib V44    -0.3445988379833122
#>     Attrib V45    -0.6725301685164208
#>     Attrib V46    -0.73971667638887
#>     Attrib V47    -0.30435658030560214
#>     Attrib V48    -0.5629836358596623
#>     Attrib V49    -0.7317582228717828
#>     Attrib V5    -0.13379708136028953
#>     Attrib V50    1.3061642544364274
#>     Attrib V51    -1.0201111535355551
#>     Attrib V52    -0.8563746680897647
#>     Attrib V53    -0.23479150649730465
#>     Attrib V54    0.7464601041190247
#>     Attrib V55    -0.07663148759284927
#>     Attrib V56    0.29499588358996504
#>     Attrib V57    0.33867426373293247
#>     Attrib V58    -0.7155635343875641
#>     Attrib V59    -0.24515084459365932
#>     Attrib V6    0.07021572402985683
#>     Attrib V60    0.06494514957640717
#>     Attrib V7    0.3534324249998374
#>     Attrib V8    -0.11212679995989715
#>     Attrib V9    -1.0018722135358158
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.04585119198255679
#>     Attrib V1    0.20594937825816176
#>     Attrib V10    -0.2869178936679538
#>     Attrib V11    0.08573901047681456
#>     Attrib V12    0.02059272026048672
#>     Attrib V13    -0.10160743247224541
#>     Attrib V14    0.10500979517173677
#>     Attrib V15    0.1711234205259087
#>     Attrib V16    0.1427216231495434
#>     Attrib V17    0.054985045027538634
#>     Attrib V18    -0.083508477778449
#>     Attrib V19    0.0911963803251732
#>     Attrib V2    0.11718593354922957
#>     Attrib V20    0.3891797841012376
#>     Attrib V21    0.4065768733172943
#>     Attrib V22    0.07464271894888026
#>     Attrib V23    0.13038240350249675
#>     Attrib V24    0.2168484258937944
#>     Attrib V25    -0.14751509227622156
#>     Attrib V26    -0.3966107022564636
#>     Attrib V27    -0.5348147158251374
#>     Attrib V28    -0.32099016202727476
#>     Attrib V29    -0.1393771981927515
#>     Attrib V3    0.13956429265820186
#>     Attrib V30    0.003794686234723175
#>     Attrib V31    -0.3612873020685939
#>     Attrib V32    -0.10724155400243653
#>     Attrib V33    0.11577571334649875
#>     Attrib V34    -0.049732258212431865
#>     Attrib V35    -0.10973358630627515
#>     Attrib V36    -0.3852186938391023
#>     Attrib V37    -0.42197382610589457
#>     Attrib V38    -0.039424579355648144
#>     Attrib V39    0.15113392985908836
#>     Attrib V4    0.06041035588576339
#>     Attrib V40    -0.21035797741611642
#>     Attrib V41    -0.02208684974469632
#>     Attrib V42    0.29103245587129
#>     Attrib V43    0.06065581799206245
#>     Attrib V44    0.154208587389643
#>     Attrib V45    0.2583102822422213
#>     Attrib V46    0.0912459808723155
#>     Attrib V47    -0.11209257058476824
#>     Attrib V48    -0.01424554966834211
#>     Attrib V49    0.1846300227073956
#>     Attrib V5    0.01666620560921843
#>     Attrib V50    -0.42283717620580596
#>     Attrib V51    -0.005912364950056559
#>     Attrib V52    0.12943835409803597
#>     Attrib V53    0.25795487396580613
#>     Attrib V54    0.03532754549029043
#>     Attrib V55    0.19873525291056557
#>     Attrib V56    0.1605544446621716
#>     Attrib V57    0.18163921187678378
#>     Attrib V58    0.4955484540018849
#>     Attrib V59    0.5555963086285853
#>     Attrib V6    -0.16461181853586782
#>     Attrib V60    0.017315895980803967
#>     Attrib V7    -0.10505926525590947
#>     Attrib V8    0.05430566202645089
#>     Attrib V9    0.11503306436049451
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5727733439470132
#>     Attrib V1    0.16259062513457348
#>     Attrib V10    -0.34552943278878695
#>     Attrib V11    0.7663153406355253
#>     Attrib V12    0.5498210250145908
#>     Attrib V13    -0.03369830345974129
#>     Attrib V14    -0.08137805707712203
#>     Attrib V15    -0.161120877602541
#>     Attrib V16    -0.3422325443369575
#>     Attrib V17    -0.2927641500995086
#>     Attrib V18    -0.7452362620340591
#>     Attrib V19    0.010892028472589249
#>     Attrib V2    0.14385702675128292
#>     Attrib V20    0.5393503305699299
#>     Attrib V21    0.6839739795710709
#>     Attrib V22    0.022199857921650124
#>     Attrib V23    0.6261163266249866
#>     Attrib V24    0.8847859817405418
#>     Attrib V25    -0.08723501668716963
#>     Attrib V26    -0.15024012680756613
#>     Attrib V27    -0.2721879743786038
#>     Attrib V28    0.7428736220817719
#>     Attrib V29    0.8670374758814432
#>     Attrib V3    0.19982319627802603
#>     Attrib V30    0.2953445222420512
#>     Attrib V31    -0.9278808269792207
#>     Attrib V32    -0.2886313785369117
#>     Attrib V33    0.27834548348686516
#>     Attrib V34    0.19138691514252823
#>     Attrib V35    0.16588447303952825
#>     Attrib V36    -0.7994014100168099
#>     Attrib V37    -0.6511506831107122
#>     Attrib V38    -0.16379741961997268
#>     Attrib V39    0.5715815097505703
#>     Attrib V4    -0.24624975165838717
#>     Attrib V40    -0.32765475755322654
#>     Attrib V41    0.14061916031082589
#>     Attrib V42    0.4830826298130279
#>     Attrib V43    0.06268234617634451
#>     Attrib V44    0.44218586148301603
#>     Attrib V45    0.688457705764596
#>     Attrib V46    0.6739979023197413
#>     Attrib V47    0.14300170953948604
#>     Attrib V48    0.376251725853458
#>     Attrib V49    0.6392582580872954
#>     Attrib V5    0.056390492603554124
#>     Attrib V50    -1.5881205255123008
#>     Attrib V51    0.5710035491141184
#>     Attrib V52    0.7241164524945441
#>     Attrib V53    0.268900464695973
#>     Attrib V54    -0.64032544316946
#>     Attrib V55    0.18780594938906886
#>     Attrib V56    -0.10113959713282958
#>     Attrib V57    -0.24317857025116213
#>     Attrib V58    0.8131144012461964
#>     Attrib V59    0.615109580688968
#>     Attrib V6    -0.2581137755493166
#>     Attrib V60    -0.24270238452482465
#>     Attrib V7    -0.4330984024601803
#>     Attrib V8    -0.2880258000425073
#>     Attrib V9    0.6466854647969797
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.02672117194938209
#>     Attrib V1    0.045728372187044286
#>     Attrib V10    -0.125332343751153
#>     Attrib V11    0.07430934462939863
#>     Attrib V12    0.006442599253556941
#>     Attrib V13    -0.0012684494219732817
#>     Attrib V14    0.011317820254643784
#>     Attrib V15    0.03249242912859095
#>     Attrib V16    0.07526932515310887
#>     Attrib V17    0.053943860592831544
#>     Attrib V18    -0.06232262062152314
#>     Attrib V19    0.10161823364163249
#>     Attrib V2    0.09049153158570132
#>     Attrib V20    0.14056903445887498
#>     Attrib V21    0.17530123198650555
#>     Attrib V22    0.02446937702258313
#>     Attrib V23    0.08250197458309197
#>     Attrib V24    0.14464500875346448
#>     Attrib V25    -0.05136489721402559
#>     Attrib V26    -0.12434127643600447
#>     Attrib V27    -0.23409256456255803
#>     Attrib V28    -0.07487526228040624
#>     Attrib V29    -0.01992940065588322
#>     Attrib V3    0.0981113343410582
#>     Attrib V30    -0.010096431387845998
#>     Attrib V31    -0.21764475326979743
#>     Attrib V32    -0.058094640856173725
#>     Attrib V33    0.07115952130016924
#>     Attrib V34    0.016084864194894213
#>     Attrib V35    0.02649136906579613
#>     Attrib V36    -0.05917217758369316
#>     Attrib V37    -0.12428875360305479
#>     Attrib V38    0.08924673912372644
#>     Attrib V39    0.1388503141950794
#>     Attrib V4    0.07896581382312264
#>     Attrib V40    -0.07834392622118001
#>     Attrib V41    -0.025077287370790402
#>     Attrib V42    0.04224620911731039
#>     Attrib V43    0.024087665355548224
#>     Attrib V44    0.14834154776718983
#>     Attrib V45    0.16637645540136722
#>     Attrib V46    0.08632039433997728
#>     Attrib V47    -0.020977516941963884
#>     Attrib V48    0.0479796182292527
#>     Attrib V49    0.11850954090362455
#>     Attrib V5    0.0415081595933837
#>     Attrib V50    -0.27959536936156865
#>     Attrib V51    -0.06505893182013925
#>     Attrib V52    0.08125355018346175
#>     Attrib V53    0.1666549349200892
#>     Attrib V54    0.02348562179701008
#>     Attrib V55    0.09549603312845482
#>     Attrib V56    0.02477736631871675
#>     Attrib V57    0.09733308852263489
#>     Attrib V58    0.20297494722907936
#>     Attrib V59    0.279985394059858
#>     Attrib V6    -0.109050376048945
#>     Attrib V60    0.04798347478433246
#>     Attrib V7    -0.08069339958282745
#>     Attrib V8    -0.07106840970157843
#>     Attrib V9    0.017452059069105453
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.34040030053760484
#>     Attrib V1    -0.054237516926987105
#>     Attrib V10    0.23483667764589625
#>     Attrib V11    1.0978433066642928
#>     Attrib V12    1.1176808609980236
#>     Attrib V13    0.2625327660471109
#>     Attrib V14    -0.147156775825347
#>     Attrib V15    -0.47950684741440636
#>     Attrib V16    -0.5646596358949371
#>     Attrib V17    -0.4050033394937897
#>     Attrib V18    -0.6136719181056757
#>     Attrib V19    0.05813235498904487
#>     Attrib V2    0.19547909556356463
#>     Attrib V20    0.1757731290556837
#>     Attrib V21    0.5592233244680423
#>     Attrib V22    -0.024893238554587492
#>     Attrib V23    0.5934748269421051
#>     Attrib V24    0.9324443221348908
#>     Attrib V25    0.29608956522021657
#>     Attrib V26    0.5874034130274915
#>     Attrib V27    0.6886771896669073
#>     Attrib V28    1.3585464926725055
#>     Attrib V29    0.9294541569069584
#>     Attrib V3    0.2931844443617186
#>     Attrib V30    0.35066315026963735
#>     Attrib V31    -0.7379990810680391
#>     Attrib V32    -0.15278448065208972
#>     Attrib V33    0.15922097192636672
#>     Attrib V34    0.38683092618041015
#>     Attrib V35    0.40775212920524573
#>     Attrib V36    -0.6404944971889384
#>     Attrib V37    -0.5672083186152372
#>     Attrib V38    -0.2638223395262469
#>     Attrib V39    0.7525485614315783
#>     Attrib V4    0.051581232963052254
#>     Attrib V40    -0.007750442542658971
#>     Attrib V41    0.3381049216362385
#>     Attrib V42    0.09573964754940865
#>     Attrib V43    0.1289578298887643
#>     Attrib V44    0.2411594118912778
#>     Attrib V45    0.47434464248492636
#>     Attrib V46    0.6465844016520583
#>     Attrib V47    0.32852352515403843
#>     Attrib V48    0.6146210975727024
#>     Attrib V49    0.7561895201184077
#>     Attrib V5    0.1885784750259935
#>     Attrib V50    -1.235320123614401
#>     Attrib V51    1.0716302759691272
#>     Attrib V52    0.9824294320477369
#>     Attrib V53    0.4062733156160452
#>     Attrib V54    -0.605650706438467
#>     Attrib V55    0.2558013314762998
#>     Attrib V56    -0.20155868670325597
#>     Attrib V57    -0.37370125399546217
#>     Attrib V58    0.6345353453834424
#>     Attrib V59    0.26618151789954836
#>     Attrib V6    -0.018384881334799028
#>     Attrib V60    -6.35772845865637E-4
#>     Attrib V7    -0.4452867759945325
#>     Attrib V8    -0.057215015830255636
#>     Attrib V9    0.8557574034570945
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.40593550896647007
#>     Attrib V1    0.0637649491568264
#>     Attrib V10    -0.3074330922682281
#>     Attrib V11    -0.9845546202525746
#>     Attrib V12    -0.7356360926032105
#>     Attrib V13    -0.057785956167293616
#>     Attrib V14    0.12916420584498645
#>     Attrib V15    0.2904789872704586
#>     Attrib V16    0.4670899474673269
#>     Attrib V17    0.40228817589181337
#>     Attrib V18    0.7318241527359876
#>     Attrib V19    6.433959319750598E-4
#>     Attrib V2    -0.17003262177008371
#>     Attrib V20    -0.27278702444481095
#>     Attrib V21    -0.6734136792909755
#>     Attrib V22    -0.13194815266589865
#>     Attrib V23    -0.5119108864545475
#>     Attrib V24    -0.7393482528868596
#>     Attrib V25    -0.027362270294174647
#>     Attrib V26    -0.3425313907595341
#>     Attrib V27    -0.4873858375109787
#>     Attrib V28    -1.2562495592355425
#>     Attrib V29    -1.0255413591400813
#>     Attrib V3    -0.2697016968256481
#>     Attrib V30    -0.45592590591783116
#>     Attrib V31    0.8694888690298886
#>     Attrib V32    0.208630612174078
#>     Attrib V33    -0.10131737625099695
#>     Attrib V34    -0.20381913088460255
#>     Attrib V35    -0.3113877252662877
#>     Attrib V36    0.6055349478210373
#>     Attrib V37    0.6038079015321736
#>     Attrib V38    0.354624868033689
#>     Attrib V39    -0.5666580948015533
#>     Attrib V4    -0.07631308795586277
#>     Attrib V40    0.1322528993280263
#>     Attrib V41    -0.2729363166958268
#>     Attrib V42    -0.17595451972002277
#>     Attrib V43    -0.051844039717188393
#>     Attrib V44    -0.3443398497616936
#>     Attrib V45    -0.6083275633346257
#>     Attrib V46    -0.726237060323097
#>     Attrib V47    -0.32241783608717534
#>     Attrib V48    -0.5804371212365306
#>     Attrib V49    -0.71874788226176
#>     Attrib V5    -0.15417715921958206
#>     Attrib V50    1.261227596591169
#>     Attrib V51    -1.0167372043853034
#>     Attrib V52    -0.8493477999134053
#>     Attrib V53    -0.15969750424511492
#>     Attrib V54    0.7189460211937104
#>     Attrib V55    -0.12413788979870931
#>     Attrib V56    0.26925938617185013
#>     Attrib V57    0.3416909511198331
#>     Attrib V58    -0.6936070094242238
#>     Attrib V59    -0.2543489824678865
#>     Attrib V6    0.067674447962486
#>     Attrib V60    0.026100524426591915
#>     Attrib V7    0.3103203080780081
#>     Attrib V8    -0.12367808014520339
#>     Attrib V9    -0.988375503078257
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.01226408288809452
#>     Attrib V1    0.20832253476854473
#>     Attrib V10    -0.32338883084542636
#>     Attrib V11    0.12676462140727085
#>     Attrib V12    -0.015121499097821931
#>     Attrib V13    -0.18112842207264324
#>     Attrib V14    0.09942463399935045
#>     Attrib V15    0.22198902807376655
#>     Attrib V16    0.12889106255982608
#>     Attrib V17    0.11103890028567155
#>     Attrib V18    -0.16781678786204574
#>     Attrib V19    0.09436362743974956
#>     Attrib V2    0.08316388846219828
#>     Attrib V20    0.5598685931110652
#>     Attrib V21    0.5253177708107185
#>     Attrib V22    0.14165492544260688
#>     Attrib V23    0.19353175207440937
#>     Attrib V24    0.24735135967133792
#>     Attrib V25    -0.2057609641332373
#>     Attrib V26    -0.5417258257016035
#>     Attrib V27    -0.746527116092519
#>     Attrib V28    -0.3888050517463945
#>     Attrib V29    -0.17440180958792245
#>     Attrib V3    0.1059330160272313
#>     Attrib V30    0.040182843948278174
#>     Attrib V31    -0.5070290196012097
#>     Attrib V32    -0.2342596419473942
#>     Attrib V33    0.10992985609831704
#>     Attrib V34    -0.017462083153329082
#>     Attrib V35    -0.13159934462273298
#>     Attrib V36    -0.42097296078567675
#>     Attrib V37    -0.5535958968124787
#>     Attrib V38    0.03929975767890484
#>     Attrib V39    0.19492853160554507
#>     Attrib V4    0.010235668382934089
#>     Attrib V40    -0.2770250839728598
#>     Attrib V41    -0.14617985859190805
#>     Attrib V42    0.3554127842958931
#>     Attrib V43    0.09949353862292809
#>     Attrib V44    0.30054011996382546
#>     Attrib V45    0.4352713104363475
#>     Attrib V46    0.15849717836451852
#>     Attrib V47    -0.05741885915253928
#>     Attrib V48    0.0647509223845379
#>     Attrib V49    0.26596469699166764
#>     Attrib V5    0.03516681875036813
#>     Attrib V50    -0.5507661374775038
#>     Attrib V51    0.048374775332325134
#>     Attrib V52    0.15690274822269362
#>     Attrib V53    0.2698467029043515
#>     Attrib V54    0.09328841836103285
#>     Attrib V55    0.2486447949303535
#>     Attrib V56    0.17423333482712525
#>     Attrib V57    0.24152108184961238
#>     Attrib V58    0.6322083776529991
#>     Attrib V59    0.6281774775888056
#>     Attrib V6    -0.25657711559483243
#>     Attrib V60    -0.05574105578232035
#>     Attrib V7    -0.17433344897574474
#>     Attrib V8    0.07275196776706458
#>     Attrib V9    0.13355853869399217
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.1535832334633436
#>     Attrib V1    0.24759701385332972
#>     Attrib V10    -0.41481078663528587
#>     Attrib V11    0.20238208583377323
#>     Attrib V12    -0.12407202733074033
#>     Attrib V13    -0.1981053821952232
#>     Attrib V14    0.1460139485531951
#>     Attrib V15    0.2865601731424891
#>     Attrib V16    0.1735649346473217
#>     Attrib V17    0.05866795475057704
#>     Attrib V18    -0.28743677343597407
#>     Attrib V19    0.11575438534194886
#>     Attrib V2    0.15854898208054805
#>     Attrib V20    0.6036006600078774
#>     Attrib V21    0.669123920234299
#>     Attrib V22    0.25613763612122487
#>     Attrib V23    0.2749310485149543
#>     Attrib V24    0.29409099850380377
#>     Attrib V25    -0.32701163690425256
#>     Attrib V26    -0.6531190408782857
#>     Attrib V27    -0.8733547258522015
#>     Attrib V28    -0.49260929114233776
#>     Attrib V29    -0.13474503953697015
#>     Attrib V3    0.11664445490462315
#>     Attrib V30    0.07131092808389788
#>     Attrib V31    -0.6137210799850877
#>     Attrib V32    -0.3004151955717253
#>     Attrib V33    0.17978997723981394
#>     Attrib V34    -0.07081348979690201
#>     Attrib V35    -0.26587831408548457
#>     Attrib V36    -0.5714706311076226
#>     Attrib V37    -0.698688214662003
#>     Attrib V38    -0.0277720802493492
#>     Attrib V39    0.19182670491100945
#>     Attrib V4    0.04438205403937651
#>     Attrib V40    -0.29118071452683536
#>     Attrib V41    -0.12319560498747233
#>     Attrib V42    0.45295927731283214
#>     Attrib V43    0.18134899521114964
#>     Attrib V44    0.29713009411328123
#>     Attrib V45    0.478757152671338
#>     Attrib V46    0.2574822946996482
#>     Attrib V47    -0.11802925720939429
#>     Attrib V48    0.07511340155690811
#>     Attrib V49    0.3087004324022276
#>     Attrib V5    0.007397248525102883
#>     Attrib V50    -0.7572753555156451
#>     Attrib V51    0.037231068399171535
#>     Attrib V52    0.24807413996241773
#>     Attrib V53    0.36216984345240655
#>     Attrib V54    0.04101698666607822
#>     Attrib V55    0.23481366421447356
#>     Attrib V56    0.20188674616937996
#>     Attrib V57    0.3025912156364752
#>     Attrib V58    0.8000070478259582
#>     Attrib V59    0.8483012274813259
#>     Attrib V6    -0.37544050721227656
#>     Attrib V60    -0.07902718633438634
#>     Attrib V7    -0.1222646811807153
#>     Attrib V8    0.15089381700495152
#>     Attrib V9    0.20625733802482069
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.027521886116524733
#>     Attrib V1    0.16104088766664107
#>     Attrib V10    -0.2764632114992845
#>     Attrib V11    0.1280493623922879
#>     Attrib V12    0.007993085004862491
#>     Attrib V13    -0.014825476919666382
#>     Attrib V14    0.10181348150295762
#>     Attrib V15    0.13500736784184042
#>     Attrib V16    0.038031248285462727
#>     Attrib V17    0.07029671416121012
#>     Attrib V18    -0.1472974449339805
#>     Attrib V19    0.09027150776349342
#>     Attrib V2    0.07463168854741281
#>     Attrib V20    0.4221854747428109
#>     Attrib V21    0.42246777501471927
#>     Attrib V22    0.08721825876624602
#>     Attrib V23    0.2065281203270523
#>     Attrib V24    0.2456578862331109
#>     Attrib V25    -0.11994726824667601
#>     Attrib V26    -0.39778700339904877
#>     Attrib V27    -0.5031933590792759
#>     Attrib V28    -0.2683647055726529
#>     Attrib V29    -0.053267730385461835
#>     Attrib V3    0.16078076447124864
#>     Attrib V30    0.044451791277321795
#>     Attrib V31    -0.42981349576898725
#>     Attrib V32    -0.14221271214755152
#>     Attrib V33    0.10953268159290354
#>     Attrib V34    0.035335305889937454
#>     Attrib V35    -0.10167663510072343
#>     Attrib V36    -0.35730724170633804
#>     Attrib V37    -0.40400380319042667
#>     Attrib V38    -0.014437611390903778
#>     Attrib V39    0.23428607754675343
#>     Attrib V4    0.02151493879016393
#>     Attrib V40    -0.18275267020913297
#>     Attrib V41    -0.0692637866610372
#>     Attrib V42    0.28017117961012766
#>     Attrib V43    0.029800664607039038
#>     Attrib V44    0.18049154894683606
#>     Attrib V45    0.254592322562313
#>     Attrib V46    0.14701477883096084
#>     Attrib V47    -0.046766955156789296
#>     Attrib V48    0.017656227986584346
#>     Attrib V49    0.25247259617744944
#>     Attrib V5    0.02219244578395623
#>     Attrib V50    -0.5265637237970818
#>     Attrib V51    0.010317301075263146
#>     Attrib V52    0.14426163460892386
#>     Attrib V53    0.21218252126930195
#>     Attrib V54    -0.0073927244073351975
#>     Attrib V55    0.1968626061130316
#>     Attrib V56    0.10802291767567468
#>     Attrib V57    0.13139052421476272
#>     Attrib V58    0.46786063824473595
#>     Attrib V59    0.5487461398387912
#>     Attrib V6    -0.2108114662640334
#>     Attrib V60    0.003746749755625113
#>     Attrib V7    -0.10632830790344651
#>     Attrib V8    -0.026549802460283906
#>     Attrib V9    0.09630204878420066
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.07786361812372486
#>     Attrib V1    0.3162555413536127
#>     Attrib V10    -0.3411112371485625
#>     Attrib V11    0.17760880442957927
#>     Attrib V12    -0.032756908336374194
#>     Attrib V13    -0.20069629686436394
#>     Attrib V14    0.07820808262112017
#>     Attrib V15    0.30127595268758456
#>     Attrib V16    0.10025553244189793
#>     Attrib V17    0.0716975824369198
#>     Attrib V18    -0.2286829095321139
#>     Attrib V19    0.053844997542170904
#>     Attrib V2    0.1443735016092236
#>     Attrib V20    0.5554709939065439
#>     Attrib V21    0.5680011950185851
#>     Attrib V22    0.16533906554949004
#>     Attrib V23    0.23417632593241505
#>     Attrib V24    0.2433975627044685
#>     Attrib V25    -0.2687403727921108
#>     Attrib V26    -0.5475475688813646
#>     Attrib V27    -0.8544063160077829
#>     Attrib V28    -0.5435611805402009
#>     Attrib V29    -0.26465224247356883
#>     Attrib V3    0.10202132429338567
#>     Attrib V30    0.047706467926911265
#>     Attrib V31    -0.4855121192551196
#>     Attrib V32    -0.25352034548126884
#>     Attrib V33    0.14167489587741233
#>     Attrib V34    -0.07370535053251628
#>     Attrib V35    -0.17675234293802924
#>     Attrib V36    -0.5271588884543136
#>     Attrib V37    -0.580556497924766
#>     Attrib V38    -0.056625697833124294
#>     Attrib V39    0.20723301619205622
#>     Attrib V4    0.004693082103336309
#>     Attrib V40    -0.2807440327615536
#>     Attrib V41    -0.14214931314297033
#>     Attrib V42    0.34023301201695877
#>     Attrib V43    0.08220628489453351
#>     Attrib V44    0.3229455145656647
#>     Attrib V45    0.35315828680743283
#>     Attrib V46    0.19123705098988417
#>     Attrib V47    -0.12366940832484355
#>     Attrib V48    0.06274510837743942
#>     Attrib V49    0.32746475754676035
#>     Attrib V5    -0.046463545093119375
#>     Attrib V50    -0.6144638785900524
#>     Attrib V51    0.015006843432923543
#>     Attrib V52    0.19922962286568002
#>     Attrib V53    0.2725381358817771
#>     Attrib V54    0.12472842779383429
#>     Attrib V55    0.3096171529485313
#>     Attrib V56    0.22995518789837838
#>     Attrib V57    0.2754300541969984
#>     Attrib V58    0.6935110134965891
#>     Attrib V59    0.7158258552453846
#>     Attrib V6    -0.3182156958435714
#>     Attrib V60    -0.0030960292939430064
#>     Attrib V7    -0.13742130927948382
#>     Attrib V8    0.02698670160301614
#>     Attrib V9    0.14748883356670814
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.4316758421956069
#>     Attrib V1    -0.08663984244022371
#>     Attrib V10    0.13966111260791816
#>     Attrib V11    -0.6370721577554418
#>     Attrib V12    -0.3749758866210809
#>     Attrib V13    0.044752522805155376
#>     Attrib V14    0.054545043998439305
#>     Attrib V15    0.14650189011186424
#>     Attrib V16    0.3066608806619812
#>     Attrib V17    0.26483163878166843
#>     Attrib V18    0.5914983988525199
#>     Attrib V19    0.06713977382055039
#>     Attrib V2    -0.09847090895429325
#>     Attrib V20    -0.36370815888685476
#>     Attrib V21    -0.5327013763373526
#>     Attrib V22    -0.015109260338392442
#>     Attrib V23    -0.4563378667930302
#>     Attrib V24    -0.6488338262213206
#>     Attrib V25    0.0987736256704911
#>     Attrib V26    0.19671340794058215
#>     Attrib V27    0.17726898427125984
#>     Attrib V28    -0.5498203996427936
#>     Attrib V29    -0.6397255826687375
#>     Attrib V3    -0.09576747070102
#>     Attrib V30    -0.3327048907131085
#>     Attrib V31    0.752392278055539
#>     Attrib V32    0.2227935578708872
#>     Attrib V33    -0.23580991314226338
#>     Attrib V34    -0.1280718707294414
#>     Attrib V35    -0.13501923991338424
#>     Attrib V36    0.6238802582491457
#>     Attrib V37    0.5903796607963396
#>     Attrib V38    0.15296291154328148
#>     Attrib V39    -0.40545943335152507
#>     Attrib V4    0.1755444264136157
#>     Attrib V40    0.3173974674038596
#>     Attrib V41    -0.09604007143304204
#>     Attrib V42    -0.367401623165361
#>     Attrib V43    -0.09060789369095004
#>     Attrib V44    -0.45311104828655574
#>     Attrib V45    -0.5974490436641696
#>     Attrib V46    -0.513258146302373
#>     Attrib V47    -0.10175480239631873
#>     Attrib V48    -0.31882158647960285
#>     Attrib V49    -0.5466659684232139
#>     Attrib V5    0.012000653571146299
#>     Attrib V50    1.2991595590986313
#>     Attrib V51    -0.48253135629388444
#>     Attrib V52    -0.6048839861577622
#>     Attrib V53    -0.1198955798332914
#>     Attrib V54    0.4947623180908597
#>     Attrib V55    -0.1495227018226233
#>     Attrib V56    0.1435287515398796
#>     Attrib V57    0.20020786567328655
#>     Attrib V58    -0.6815546139684008
#>     Attrib V59    -0.4530558229746087
#>     Attrib V6    0.21001110602743153
#>     Attrib V60    0.29327054256461177
#>     Attrib V7    0.3054551693460752
#>     Attrib V8    0.1583264543930176
#>     Attrib V9    -0.5315354393901135
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.19060075502696053
#>     Attrib V1    0.007359449169302692
#>     Attrib V10    0.026894717425172455
#>     Attrib V11    -0.12010949621996914
#>     Attrib V12    -0.09471186861218536
#>     Attrib V13    0.03219405279376837
#>     Attrib V14    0.002859138620096235
#>     Attrib V15    0.008902949718457108
#>     Attrib V16    0.13601077581214024
#>     Attrib V17    0.14460785819984182
#>     Attrib V18    0.17561684178758125
#>     Attrib V19    0.0358093689270803
#>     Attrib V2    -0.008045543873952968
#>     Attrib V20    -0.10362807031484947
#>     Attrib V21    -0.11991879105832307
#>     Attrib V22    -0.03879217425540856
#>     Attrib V23    -0.11028050525864082
#>     Attrib V24    -0.10545592790782501
#>     Attrib V25    0.008249568934742518
#>     Attrib V26    -0.03798175463548766
#>     Attrib V27    -0.025724543592428508
#>     Attrib V28    -0.07685400275467921
#>     Attrib V29    -0.10888698313974167
#>     Attrib V3    0.054538640485716154
#>     Attrib V30    -0.09472535230416729
#>     Attrib V31    0.09408011907744925
#>     Attrib V32    0.0847505385581283
#>     Attrib V33    0.010420292788317952
#>     Attrib V34    0.0428830084372577
#>     Attrib V35    0.02083132557896601
#>     Attrib V36    0.13646163804742262
#>     Attrib V37    0.15842864439597656
#>     Attrib V38    0.04596359391207471
#>     Attrib V39    -0.011246473496979818
#>     Attrib V4    0.09229888991548091
#>     Attrib V40    0.07857799563904176
#>     Attrib V41    0.05524220197631444
#>     Attrib V42    0.027088672433671846
#>     Attrib V43    -0.0086669570806663
#>     Attrib V44    -0.10376447016273467
#>     Attrib V45    -0.09151651835681307
#>     Attrib V46    -0.05699940877701216
#>     Attrib V47    0.00644202795706865
#>     Attrib V48    -0.04713839426396163
#>     Attrib V49    -0.09373737849174878
#>     Attrib V5    0.09431339652746328
#>     Attrib V50    0.25276920909528205
#>     Attrib V51    -9.265470995000934E-4
#>     Attrib V52    -0.02009989685960252
#>     Attrib V53    0.08574704569638736
#>     Attrib V54    0.04062132812158291
#>     Attrib V55    -0.006494176901154987
#>     Attrib V56    0.051290888613062954
#>     Attrib V57    0.0929938193478215
#>     Attrib V58    -0.025493839532483287
#>     Attrib V59    -0.05862673920555016
#>     Attrib V6    0.1335596865418594
#>     Attrib V60    0.11584637621468347
#>     Attrib V7    0.07556754668015572
#>     Attrib V8    0.019153558662794876
#>     Attrib V9    -0.029920886499991924
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.1192891000387326
#>     Attrib V1    0.057197872514414445
#>     Attrib V10    0.020720781885317154
#>     Attrib V11    -0.011659655614832919
#>     Attrib V12    -0.05705736197295504
#>     Attrib V13    -0.02913823444597396
#>     Attrib V14    0.023786064133438874
#>     Attrib V15    0.08299223237046761
#>     Attrib V16    0.061062208920730075
#>     Attrib V17    0.06767208721352277
#>     Attrib V18    0.052578834889597574
#>     Attrib V19    0.03501510638751607
#>     Attrib V2    0.12197350695772698
#>     Attrib V20    -0.04210342745910929
#>     Attrib V21    -0.0450524660850153
#>     Attrib V22    0.018908873278323794
#>     Attrib V23    -0.05950578333497692
#>     Attrib V24    -0.03463011853257005
#>     Attrib V25    -0.051738885491178846
#>     Attrib V26    -0.07345694571479608
#>     Attrib V27    -0.05990697107843685
#>     Attrib V28    -0.07300431462063736
#>     Attrib V29    -0.09869349658826712
#>     Attrib V3    0.0637956317587027
#>     Attrib V30    -0.026610171349352497
#>     Attrib V31    0.07084579112184712
#>     Attrib V32    0.007935671411356164
#>     Attrib V33    0.07795018310929659
#>     Attrib V34    0.0013964520636754805
#>     Attrib V35    0.08804189444981242
#>     Attrib V36    0.051523508048096155
#>     Attrib V37    0.0369390298070175
#>     Attrib V38    0.09774870462895335
#>     Attrib V39    0.08756666338816535
#>     Attrib V4    0.08344756992785671
#>     Attrib V40    0.031318122526375156
#>     Attrib V41    0.05887292497779108
#>     Attrib V42    0.020651106022118552
#>     Attrib V43    0.06844995564128833
#>     Attrib V44    0.022086803378527725
#>     Attrib V45    0.02223344694316601
#>     Attrib V46    -0.05348233987533173
#>     Attrib V47    -0.04600267683805477
#>     Attrib V48    0.030702363405622126
#>     Attrib V49    -0.03835644440044429
#>     Attrib V5    0.09655396671667714
#>     Attrib V50    0.0634798554854066
#>     Attrib V51    -0.048383966648337356
#>     Attrib V52    -0.025354205667421182
#>     Attrib V53    0.059925460513399455
#>     Attrib V54    0.02630797491106837
#>     Attrib V55    0.06379049816653859
#>     Attrib V56    0.06826772713165262
#>     Attrib V57    0.10367895360809967
#>     Attrib V58    0.0026126101824065656
#>     Attrib V59    0.03770843076761972
#>     Attrib V6    0.08757533964540573
#>     Attrib V60    0.09154967792521082
#>     Attrib V7    -0.006753985565980588
#>     Attrib V8    0.05845204456130602
#>     Attrib V9    -0.0188874910024222
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.06205829326548767
#>     Attrib V1    0.14591433149852762
#>     Attrib V10    -0.2065230976412037
#>     Attrib V11    0.0923462833339115
#>     Attrib V12    -1.5727805210191418E-4
#>     Attrib V13    -0.0579746591074104
#>     Attrib V14    0.07878025945868898
#>     Attrib V15    0.09244383055586095
#>     Attrib V16    0.06466959894776458
#>     Attrib V17    0.03223065881732303
#>     Attrib V18    -0.04584727139214455
#>     Attrib V19    0.055074707566248604
#>     Attrib V2    0.10345468843571029
#>     Attrib V20    0.3236051033139407
#>     Attrib V21    0.339668289927085
#>     Attrib V22    0.07188764113183933
#>     Attrib V23    0.13132926393191927
#>     Attrib V24    0.15645472201187413
#>     Attrib V25    -0.1149211529344447
#>     Attrib V26    -0.27334550907050165
#>     Attrib V27    -0.4209790663202097
#>     Attrib V28    -0.2241936680922688
#>     Attrib V29    -0.09409144928794505
#>     Attrib V3    0.15931757053149387
#>     Attrib V30    -0.04098813992350335
#>     Attrib V31    -0.3392732267751906
#>     Attrib V32    -0.13787619946637122
#>     Attrib V33    0.0737849782639428
#>     Attrib V34    0.029182766750112863
#>     Attrib V35    -0.06403325316265515
#>     Attrib V36    -0.18471421941495178
#>     Attrib V37    -0.3067651357058965
#>     Attrib V38    0.0011696926082370414
#>     Attrib V39    0.20181841109321166
#>     Attrib V4    -0.007120142914393542
#>     Attrib V40    -0.17973195905257452
#>     Attrib V41    -0.10746661697972917
#>     Attrib V42    0.18082602292145092
#>     Attrib V43    0.04428333328530069
#>     Attrib V44    0.18807952201176908
#>     Attrib V45    0.1881652560686442
#>     Attrib V46    0.07721572721871216
#>     Attrib V47    -0.031415483202022185
#>     Attrib V48    0.018702402990097216
#>     Attrib V49    0.19228738542540022
#>     Attrib V5    0.020662998002585906
#>     Attrib V50    -0.42921624262489744
#>     Attrib V51    0.03807019307738806
#>     Attrib V52    0.11990400708487489
#>     Attrib V53    0.18557648947385066
#>     Attrib V54    -0.009934499042324848
#>     Attrib V55    0.20589542934277136
#>     Attrib V56    0.11982324205338922
#>     Attrib V57    0.06523363859535107
#>     Attrib V58    0.37530211830282684
#>     Attrib V59    0.43257838846030316
#>     Attrib V6    -0.1975120057382648
#>     Attrib V60    0.028952976726222712
#>     Attrib V7    -0.09086104328395377
#>     Attrib V8    0.008731164302365292
#>     Attrib V9    0.065409673673638
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.32123083876410635
#>     Attrib V1    0.2080577521248243
#>     Attrib V10    -0.4031758125356266
#>     Attrib V11    0.36695354887660364
#>     Attrib V12    0.22250499452968714
#>     Attrib V13    -0.14485227511895765
#>     Attrib V14    0.07422474795705902
#>     Attrib V15    0.20088933073661525
#>     Attrib V16    -0.08927641574296165
#>     Attrib V17    -0.11090674237436447
#>     Attrib V18    -0.5241572897631221
#>     Attrib V19    0.07679193263859424
#>     Attrib V2    0.074928886949622
#>     Attrib V20    0.6222562453268757
#>     Attrib V21    0.6963970504496934
#>     Attrib V22    0.18399707553092323
#>     Attrib V23    0.35970815194395606
#>     Attrib V24    0.570757252338439
#>     Attrib V25    -0.14618144349259765
#>     Attrib V26    -0.5162850239661083
#>     Attrib V27    -0.7773941018365297
#>     Attrib V28    -0.15950681528758479
#>     Attrib V29    0.07495926242800934
#>     Attrib V3    0.06426528510546939
#>     Attrib V30    0.2653439553943926
#>     Attrib V31    -0.5319969450968953
#>     Attrib V32    -0.15469060003366558
#>     Attrib V33    0.38543559152603674
#>     Attrib V34    0.06502950377586426
#>     Attrib V35    -0.23564045419105661
#>     Attrib V36    -0.8460311988859863
#>     Attrib V37    -1.0042624771014668
#>     Attrib V38    -0.18762440489249185
#>     Attrib V39    0.3123625202286846
#>     Attrib V4    -0.06832236246922375
#>     Attrib V40    -0.2983563408693328
#>     Attrib V41    -0.0583668508841174
#>     Attrib V42    0.629143252789578
#>     Attrib V43    0.07293398246425206
#>     Attrib V44    0.18534437784709054
#>     Attrib V45    0.45823540635116805
#>     Attrib V46    0.2340074697905662
#>     Attrib V47    -0.1376853881497261
#>     Attrib V48    0.20670973101975174
#>     Attrib V49    0.5685999413288882
#>     Attrib V5    -0.0723702189741189
#>     Attrib V50    -1.1412073629883204
#>     Attrib V51    0.3044260292422287
#>     Attrib V52    0.43112734860358154
#>     Attrib V53    0.32793059577983463
#>     Attrib V54    -0.13243415591158123
#>     Attrib V55    0.3507839890299785
#>     Attrib V56    0.10459295080692743
#>     Attrib V57    0.06790167196523943
#>     Attrib V58    0.8989112657489349
#>     Attrib V59    0.8209334159119044
#>     Attrib V6    -0.4639114884035052
#>     Attrib V60    -0.17382380329438318
#>     Attrib V7    -0.259759759555551
#>     Attrib V8    0.08007062052318605
#>     Attrib V9    0.36041208914089323
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.17158406549917468
#>     Attrib V1    0.27825736702040393
#>     Attrib V10    -0.375137942168253
#>     Attrib V11    0.24719264302914284
#>     Attrib V12    0.040848433890398876
#>     Attrib V13    -0.17701604717461827
#>     Attrib V14    0.12926215899746255
#>     Attrib V15    0.2526825268005027
#>     Attrib V16    0.06456184333506373
#>     Attrib V17    0.02705127350573473
#>     Attrib V18    -0.30847885304701866
#>     Attrib V19    0.11317972116960208
#>     Attrib V2    0.10168792060816048
#>     Attrib V20    0.6708033467711839
#>     Attrib V21    0.7932288148515353
#>     Attrib V22    0.2909741193011804
#>     Attrib V23    0.33874619975382875
#>     Attrib V24    0.4039686512187253
#>     Attrib V25    -0.25205260531437473
#>     Attrib V26    -0.5495411607907958
#>     Attrib V27    -0.8205651564928056
#>     Attrib V28    -0.40830165656064465
#>     Attrib V29    -0.026992046608759413
#>     Attrib V3    0.09155476770461733
#>     Attrib V30    0.18864103849317948
#>     Attrib V31    -0.6262199028951229
#>     Attrib V32    -0.3308234867919967
#>     Attrib V33    0.15519232832317828
#>     Attrib V34    -0.10743929313543611
#>     Attrib V35    -0.2334782331983803
#>     Attrib V36    -0.5171719365251818
#>     Attrib V37    -0.6614229434664005
#>     Attrib V38    1.5718073414392275E-4
#>     Attrib V39    0.24201071615371642
#>     Attrib V4    -0.020542335487255994
#>     Attrib V40    -0.37018544208568843
#>     Attrib V41    -0.11515634968872651
#>     Attrib V42    0.4767564878935175
#>     Attrib V43    0.22414223388703497
#>     Attrib V44    0.46148286358383145
#>     Attrib V45    0.5400695375975219
#>     Attrib V46    0.23701301531235427
#>     Attrib V47    -0.12330934362687306
#>     Attrib V48    0.12871180546112576
#>     Attrib V49    0.4147156026766679
#>     Attrib V5    -6.974845284895143E-4
#>     Attrib V50    -0.8583914479793378
#>     Attrib V51    0.1985644401173521
#>     Attrib V52    0.3029496713451865
#>     Attrib V53    0.32013630706294655
#>     Attrib V54    0.010440797761539243
#>     Attrib V55    0.27787419176710026
#>     Attrib V56    0.1750219401002354
#>     Attrib V57    0.1368677539390935
#>     Attrib V58    0.8257998850138515
#>     Attrib V59    0.8600730354162928
#>     Attrib V6    -0.4064580897286531
#>     Attrib V60    -0.11239529721526281
#>     Attrib V7    -0.16570193409879308
#>     Attrib V8    0.040398157827875696
#>     Attrib V9    0.24308760805298876
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3760184482353415
#>     Attrib V1    0.02138676510182562
#>     Attrib V10    -0.07324369034238327
#>     Attrib V11    -0.8149322365940129
#>     Attrib V12    -0.5168305082583239
#>     Attrib V13    0.03625189468897727
#>     Attrib V14    0.07219101705967111
#>     Attrib V15    0.1924331863578032
#>     Attrib V16    0.35127528163516947
#>     Attrib V17    0.34992258038631385
#>     Attrib V18    0.713159725709962
#>     Attrib V19    -0.014901401080217586
#>     Attrib V2    -0.1205230508081469
#>     Attrib V20    -0.3705878155236063
#>     Attrib V21    -0.5724393857110744
#>     Attrib V22    -0.09919682808875553
#>     Attrib V23    -0.5177433238330843
#>     Attrib V24    -0.6716159816891861
#>     Attrib V25    0.13758137975193277
#>     Attrib V26    0.04666024116675273
#>     Attrib V27    -0.016005243009748475
#>     Attrib V28    -0.9124208385626719
#>     Attrib V29    -0.8570403837244979
#>     Attrib V3    -0.17983552749676332
#>     Attrib V30    -0.43801700957291667
#>     Attrib V31    0.8684572249822576
#>     Attrib V32    0.21796210056125834
#>     Attrib V33    -0.2514692114501798
#>     Attrib V34    -0.17530308346314982
#>     Attrib V35    -0.20877284152392794
#>     Attrib V36    0.6550759770946736
#>     Attrib V37    0.6879008741491519
#>     Attrib V38    0.24716573013199977
#>     Attrib V39    -0.42860719514329365
#>     Attrib V4    0.1174995180344386
#>     Attrib V40    0.3810085221892423
#>     Attrib V41    -0.09449489307876022
#>     Attrib V42    -0.3513975653938514
#>     Attrib V43    -0.021784257417775597
#>     Attrib V44    -0.4069730339798825
#>     Attrib V45    -0.7054528415479276
#>     Attrib V46    -0.642187977808772
#>     Attrib V47    -0.222594984987437
#>     Attrib V48    -0.48744802776964724
#>     Attrib V49    -0.7187540435762914
#>     Attrib V5    -0.04744451246896011
#>     Attrib V50    1.3749509520231813
#>     Attrib V51    -0.8442863297644287
#>     Attrib V52    -0.7546536897507142
#>     Attrib V53    -0.17857029944991643
#>     Attrib V54    0.6771013143069968
#>     Attrib V55    -0.12391482543879205
#>     Attrib V56    0.20017328653156802
#>     Attrib V57    0.39595026219793394
#>     Attrib V58    -0.7436887053508118
#>     Attrib V59    -0.38016502102962857
#>     Attrib V6    0.14029784538243847
#>     Attrib V60    0.2947339737258246
#>     Attrib V7    0.3668342331137479
#>     Attrib V8    -0.019009238754513307
#>     Attrib V9    -0.7532303002589221
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.05990288888327466
#>     Attrib V1    0.1621184168696142
#>     Attrib V10    -0.14532602218765492
#>     Attrib V11    0.07080319843567538
#>     Attrib V12    0.024668166245950134
#>     Attrib V13    -0.04160474523391567
#>     Attrib V14    0.09313673798792073
#>     Attrib V15    0.05902281965854656
#>     Attrib V16    0.10549160468464673
#>     Attrib V17    0.07958646608551491
#>     Attrib V18    -0.042862748026099844
#>     Attrib V19    0.04990335396264498
#>     Attrib V2    0.12154493234868344
#>     Attrib V20    0.20987491633943017
#>     Attrib V21    0.16801279722724372
#>     Attrib V22    -0.017413164040516127
#>     Attrib V23    0.010497555229436368
#>     Attrib V24    0.1368542823957237
#>     Attrib V25    -0.11144162886222354
#>     Attrib V26    -0.2469227775043017
#>     Attrib V27    -0.3443984203759523
#>     Attrib V28    -0.24330016040692268
#>     Attrib V29    -0.09787002341459128
#>     Attrib V3    0.09073497330707951
#>     Attrib V30    -0.06961647356278097
#>     Attrib V31    -0.17997340346895316
#>     Attrib V32    -0.09616255382084668
#>     Attrib V33    -0.008545721820394234
#>     Attrib V34    -0.029103265734619035
#>     Attrib V35    -0.031237028715511893
#>     Attrib V36    -0.17578120210877635
#>     Attrib V37    -0.1966914845885462
#>     Attrib V38    -0.010477494852804295
#>     Attrib V39    0.1001687844546046
#>     Attrib V4    0.05128623311435115
#>     Attrib V40    -0.07771945720037027
#>     Attrib V41    -0.09534575553391934
#>     Attrib V42    0.0875430610362119
#>     Attrib V43    0.07879269170518317
#>     Attrib V44    0.09547415577530859
#>     Attrib V45    0.0948192839198981
#>     Attrib V46    0.07044227821852281
#>     Attrib V47    -0.0944983945820936
#>     Attrib V48    0.03993406703646172
#>     Attrib V49    0.11622522928471417
#>     Attrib V5    0.06461403023903327
#>     Attrib V50    -0.25886052069951815
#>     Attrib V51    -0.053452143010006656
#>     Attrib V52    0.11210428830048166
#>     Attrib V53    0.14647858003562692
#>     Attrib V54    0.08251624880203011
#>     Attrib V55    0.19310318571301383
#>     Attrib V56    0.14999087625319343
#>     Attrib V57    0.133757219463097
#>     Attrib V58    0.33726305175213184
#>     Attrib V59    0.3196397739107653
#>     Attrib V6    -0.07758922579369124
#>     Attrib V60    0.06786890596188877
#>     Attrib V7    -0.0723398507212839
#>     Attrib V8    -0.085702616566119
#>     Attrib V9    0.03943567013877187
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.031925191847529795
#>     Attrib V1    0.2354009473199371
#>     Attrib V10    -0.3277094582311721
#>     Attrib V11    0.12224436326369233
#>     Attrib V12    0.0212659756856081
#>     Attrib V13    -0.07549757029442278
#>     Attrib V14    0.11803510438061189
#>     Attrib V15    0.17901346219722167
#>     Attrib V16    0.06869678692343308
#>     Attrib V17    0.1318847645722205
#>     Attrib V18    -0.10662198243415756
#>     Attrib V19    0.10601344459494781
#>     Attrib V2    0.09504884929976506
#>     Attrib V20    0.3918749024781145
#>     Attrib V21    0.3870665745260516
#>     Attrib V22    0.1192546263061531
#>     Attrib V23    0.16240371692716332
#>     Attrib V24    0.16815438600926405
#>     Attrib V25    -0.1958959566988654
#>     Attrib V26    -0.38465806417613574
#>     Attrib V27    -0.6427541386639151
#>     Attrib V28    -0.4177828663894741
#>     Attrib V29    -0.2023908896760852
#>     Attrib V3    0.15993326823182533
#>     Attrib V30    -0.03544494279177935
#>     Attrib V31    -0.4146966386918061
#>     Attrib V32    -0.21624274553105885
#>     Attrib V33    0.044378387360937493
#>     Attrib V34    -0.080922260313831
#>     Attrib V35    -0.0686587854123343
#>     Attrib V36    -0.28972109436892585
#>     Attrib V37    -0.3151240556042134
#>     Attrib V38    0.01899041964975906
#>     Attrib V39    0.16444066262530344
#>     Attrib V4    0.0752047870831602
#>     Attrib V40    -0.2631742201529856
#>     Attrib V41    -0.12824827386735319
#>     Attrib V42    0.22520173212805375
#>     Attrib V43    0.12406047751813555
#>     Attrib V44    0.22130812375059258
#>     Attrib V45    0.33614637816556353
#>     Attrib V46    0.11833133171149547
#>     Attrib V47    -0.06089348118369118
#>     Attrib V48    -0.02679535847132018
#>     Attrib V49    0.20476928459380267
#>     Attrib V5    0.014671724773428058
#>     Attrib V50    -0.47115005110257896
#>     Attrib V51    -0.04557975229016812
#>     Attrib V52    0.20437496555538748
#>     Attrib V53    0.27769513309264043
#>     Attrib V54    0.09241903593170497
#>     Attrib V55    0.2514695614703409
#>     Attrib V56    0.1969654691418207
#>     Attrib V57    0.17882635909715688
#>     Attrib V58    0.4958837328464368
#>     Attrib V59    0.5988033862745208
#>     Attrib V6    -0.20846438438550782
#>     Attrib V60    -0.0134818948867638
#>     Attrib V7    -0.1193525625844993
#>     Attrib V8    -0.031011457012154724
#>     Attrib V9    0.049082991793973005
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.29766350799846186
#>     Attrib V1    -0.05531761106330558
#>     Attrib V10    0.09313875090799226
#>     Attrib V11    -0.45980606014913544
#>     Attrib V12    -0.34970384657092524
#>     Attrib V13    -0.03284573663957805
#>     Attrib V14    0.046348336461774164
#>     Attrib V15    0.11555836746556132
#>     Attrib V16    0.23237247310016032
#>     Attrib V17    0.26204092129970835
#>     Attrib V18    0.44449268015413584
#>     Attrib V19    0.03465587331142725
#>     Attrib V2    -0.0567600849122527
#>     Attrib V20    -0.2561604409705271
#>     Attrib V21    -0.337554401054369
#>     Attrib V22    -0.041948095421271
#>     Attrib V23    -0.30062887614902234
#>     Attrib V24    -0.5197452364326698
#>     Attrib V25    0.09215217512192596
#>     Attrib V26    0.19450104991626813
#>     Attrib V27    0.17622023096432868
#>     Attrib V28    -0.332402508369275
#>     Attrib V29    -0.4404032281589726
#>     Attrib V3    -0.09947381831845446
#>     Attrib V30    -0.2154130856588941
#>     Attrib V31    0.5214763410678456
#>     Attrib V32    0.1983174057134243
#>     Attrib V33    -0.1831718020126329
#>     Attrib V34    -0.13905679057516498
#>     Attrib V35    -0.12025476619330225
#>     Attrib V36    0.480702649579398
#>     Attrib V37    0.3530833389462991
#>     Attrib V38    0.05721534916712707
#>     Attrib V39    -0.3208637309451789
#>     Attrib V4    0.1749354169625247
#>     Attrib V40    0.28346705709082204
#>     Attrib V41    -0.026479002774127288
#>     Attrib V42    -0.2725219735810449
#>     Attrib V43    -0.004415767175264364
#>     Attrib V44    -0.3237317494860927
#>     Attrib V45    -0.5034966181184561
#>     Attrib V46    -0.3874902553683432
#>     Attrib V47    -0.02124200222898153
#>     Attrib V48    -0.19375259441428547
#>     Attrib V49    -0.4024206509158365
#>     Attrib V5    -0.00810802576106647
#>     Attrib V50    0.9786025839763411
#>     Attrib V51    -0.2979031293939976
#>     Attrib V52    -0.33670960075416606
#>     Attrib V53    -0.13268246540104048
#>     Attrib V54    0.2914380841505812
#>     Attrib V55    -0.1426946001620278
#>     Attrib V56    0.10624912420278355
#>     Attrib V57    0.24275218704517754
#>     Attrib V58    -0.4781611077470715
#>     Attrib V59    -0.32070191845162593
#>     Attrib V6    0.23089099550764397
#>     Attrib V60    0.2287259364284226
#>     Attrib V7    0.22743404887888308
#>     Attrib V8    0.16021037394244864
#>     Attrib V9    -0.30087779419465327
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.47270469364840867
#>     Attrib V1    -0.1486460585832917
#>     Attrib V10    0.11750253566236846
#>     Attrib V11    1.117628508729773
#>     Attrib V12    1.1022370786531022
#>     Attrib V13    0.18913175904675134
#>     Attrib V14    -0.07798759364436487
#>     Attrib V15    -0.5025689981262081
#>     Attrib V16    -0.5649173202357962
#>     Attrib V17    -0.3710745526088645
#>     Attrib V18    -0.5889614711164186
#>     Attrib V19    0.11344017641214436
#>     Attrib V2    0.1609450268026976
#>     Attrib V20    0.20014238712625898
#>     Attrib V21    0.5601915805314684
#>     Attrib V22    0.030493915674428055
#>     Attrib V23    0.701661152107293
#>     Attrib V24    0.9321775966466403
#>     Attrib V25    0.16477975343505827
#>     Attrib V26    0.5302077618328733
#>     Attrib V27    0.7039902285998165
#>     Attrib V28    1.4541074203983713
#>     Attrib V29    0.9996943496962614
#>     Attrib V3    0.33363250136713374
#>     Attrib V30    0.3850115523710253
#>     Attrib V31    -0.8173653144140537
#>     Attrib V32    -0.17373851610177463
#>     Attrib V33    0.17358937160589302
#>     Attrib V34    0.37875384891993424
#>     Attrib V35    0.39442652694832353
#>     Attrib V36    -0.7141089600616927
#>     Attrib V37    -0.6864153443186335
#>     Attrib V38    -0.35661136310582114
#>     Attrib V39    0.7620768743199768
#>     Attrib V4    0.0628720138887305
#>     Attrib V40    -0.02947744750502109
#>     Attrib V41    0.38942758102007946
#>     Attrib V42    0.2242603721963581
#>     Attrib V43    0.10229985046484885
#>     Attrib V44    0.36555196574481924
#>     Attrib V45    0.5410263511484342
#>     Attrib V46    0.6386013556112272
#>     Attrib V47    0.2566133966442267
#>     Attrib V48    0.6299128654781492
#>     Attrib V49    0.8582559302373907
#>     Attrib V5    0.2522346994761822
#>     Attrib V50    -1.3702266556812464
#>     Attrib V51    1.0758420341870116
#>     Attrib V52    1.0793604593998278
#>     Attrib V53    0.3684117940431274
#>     Attrib V54    -0.6941159732639536
#>     Attrib V55    0.25299205029943733
#>     Attrib V56    -0.2687811539937336
#>     Attrib V57    -0.28314740962643936
#>     Attrib V58    0.7685434617374295
#>     Attrib V59    0.33054503986259814
#>     Attrib V6    0.004018845370538046
#>     Attrib V60    -0.009773464056388615
#>     Attrib V7    -0.47977144434363556
#>     Attrib V8    -0.0168852374866981
#>     Attrib V9    0.9034690825443996
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.29189706676546334
#>     Attrib V1    -0.024094615713212458
#>     Attrib V10    0.06799899785991155
#>     Attrib V11    -0.38058874020463446
#>     Attrib V12    -0.25904767475977475
#>     Attrib V13    -0.02269310110303676
#>     Attrib V14    0.08660498687397498
#>     Attrib V15    0.04785506714550282
#>     Attrib V16    0.19381532107240904
#>     Attrib V17    0.2062434490109765
#>     Attrib V18    0.3265190391314382
#>     Attrib V19    0.09054754829209574
#>     Attrib V2    -0.007820375774560713
#>     Attrib V20    -0.1764911591428849
#>     Attrib V21    -0.22505311303777636
#>     Attrib V22    -0.001950617246506929
#>     Attrib V23    -0.2374364128905225
#>     Attrib V24    -0.3706452093149506
#>     Attrib V25    0.09926727975794111
#>     Attrib V26    0.1138711465706191
#>     Attrib V27    0.18222732203817252
#>     Attrib V28    -0.22156434184428797
#>     Attrib V29    -0.30067000007553524
#>     Attrib V3    -0.08804215966044288
#>     Attrib V30    -0.1680787367382258
#>     Attrib V31    0.3935775044528526
#>     Attrib V32    0.10500506004362363
#>     Attrib V33    -0.0800606374534188
#>     Attrib V34    -0.13418416100927907
#>     Attrib V35    -0.0640856112844332
#>     Attrib V36    0.3579552598768832
#>     Attrib V37    0.31166861089887543
#>     Attrib V38    0.002852577742919067
#>     Attrib V39    -0.21821348814931252
#>     Attrib V4    0.14550833350630876
#>     Attrib V40    0.18994308992507736
#>     Attrib V41    -0.04570072383641656
#>     Attrib V42    -0.15721850418534714
#>     Attrib V43    -0.03234882110751571
#>     Attrib V44    -0.24119343355626655
#>     Attrib V45    -0.3698938347860431
#>     Attrib V46    -0.338133106348045
#>     Attrib V47    -0.06477058079211244
#>     Attrib V48    -0.09617518813872249
#>     Attrib V49    -0.28487960306640053
#>     Attrib V5    0.0024602640571875713
#>     Attrib V50    0.7254444178186572
#>     Attrib V51    -0.25328100045396407
#>     Attrib V52    -0.31704187926112476
#>     Attrib V53    -0.07555961757896809
#>     Attrib V54    0.2146914507484678
#>     Attrib V55    -0.13450758148672715
#>     Attrib V56    0.09880445513228074
#>     Attrib V57    0.18107934102943204
#>     Attrib V58    -0.35900397297492
#>     Attrib V59    -0.21922260153992404
#>     Attrib V6    0.20569381719093766
#>     Attrib V60    0.25311360535683447
#>     Attrib V7    0.16994346073582595
#>     Attrib V8    0.13641835413227205
#>     Attrib V9    -0.2682988133108659
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.18305265506991952
#>     Attrib V1    0.35668614488409184
#>     Attrib V10    -0.3664075131678227
#>     Attrib V11    0.19522367608991145
#>     Attrib V12    -0.053490182740724375
#>     Attrib V13    -0.18740998803594608
#>     Attrib V14    0.08182796387813153
#>     Attrib V15    0.31119739869643576
#>     Attrib V16    0.1346694297241836
#>     Attrib V17    0.023954376156857318
#>     Attrib V18    -0.2546980050995744
#>     Attrib V19    0.05628128464837762
#>     Attrib V2    0.13425147676288626
#>     Attrib V20    0.617818002547126
#>     Attrib V21    0.7471086433295366
#>     Attrib V22    0.2543110239236094
#>     Attrib V23    0.2452508905237304
#>     Attrib V24    0.3610350970937402
#>     Attrib V25    -0.3180658939965439
#>     Attrib V26    -0.5957947867560465
#>     Attrib V27    -0.9428223140856504
#>     Attrib V28    -0.5550059110784913
#>     Attrib V29    -0.17635290853044616
#>     Attrib V3    0.12888612670359426
#>     Attrib V30    0.0645545575736218
#>     Attrib V31    -0.6165155714096351
#>     Attrib V32    -0.324264074072156
#>     Attrib V33    0.10724532440007047
#>     Attrib V34    -0.0839440276491607
#>     Attrib V35    -0.263365368314832
#>     Attrib V36    -0.5768549115752034
#>     Attrib V37    -0.6881517320913942
#>     Attrib V38    -0.02822108675871778
#>     Attrib V39    0.25090899068596656
#>     Attrib V4    0.009385754348729724
#>     Attrib V40    -0.4088108708095138
#>     Attrib V41    -0.15486673857868977
#>     Attrib V42    0.4737252828737979
#>     Attrib V43    0.12554851426607494
#>     Attrib V44    0.3986612939704153
#>     Attrib V45    0.5431017440158823
#>     Attrib V46    0.21949305494935756
#>     Attrib V47    -0.1343818491692804
#>     Attrib V48    0.0873359188893431
#>     Attrib V49    0.32876865627194096
#>     Attrib V5    -0.024804831340288006
#>     Attrib V50    -0.7006074921268686
#>     Attrib V51    0.08723673623943502
#>     Attrib V52    0.252597178511143
#>     Attrib V53    0.3769085881845493
#>     Attrib V54    0.07228859253123514
#>     Attrib V55    0.30341296133980056
#>     Attrib V56    0.15614307531249477
#>     Attrib V57    0.2880755033301062
#>     Attrib V58    0.8033838311993078
#>     Attrib V59    0.845835010355395
#>     Attrib V6    -0.33656565196171534
#>     Attrib V60    -0.06638364732055277
#>     Attrib V7    -0.18491051062590966
#>     Attrib V8    0.09773161419464842
#>     Attrib V9    0.21755516296843858
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.312668032399478
#>     Attrib V1    0.028164899930033294
#>     Attrib V10    -0.49147030691140675
#>     Attrib V11    -1.3455037420829954
#>     Attrib V12    -1.2596817897893158
#>     Attrib V13    -0.2768680495796183
#>     Attrib V14    0.11726970768880073
#>     Attrib V15    0.6237406267905116
#>     Attrib V16    0.7459546435946711
#>     Attrib V17    0.5165441513901573
#>     Attrib V18    0.7885879709130262
#>     Attrib V19    -0.20916154176849752
#>     Attrib V2    -0.3430663487836589
#>     Attrib V20    -0.30645998583635947
#>     Attrib V21    -0.868737326614587
#>     Attrib V22    -0.2573194339907194
#>     Attrib V23    -0.9649600631715289
#>     Attrib V24    -1.2007488900214074
#>     Attrib V25    -0.4944303696737046
#>     Attrib V26    -0.812148384373468
#>     Attrib V27    -0.8066032961344903
#>     Attrib V28    -1.7016224326906735
#>     Attrib V29    -1.200718832436843
#>     Attrib V3    -0.4239849868793363
#>     Attrib V30    -0.4985292867828649
#>     Attrib V31    0.9163248074651087
#>     Attrib V32    0.248541096034491
#>     Attrib V33    -0.1178061360381626
#>     Attrib V34    -0.39566162885839895
#>     Attrib V35    -0.5337692590804531
#>     Attrib V36    0.8193955974622427
#>     Attrib V37    0.7015788421882146
#>     Attrib V38    0.4921583175504378
#>     Attrib V39    -0.840441860177396
#>     Attrib V4    -0.14871724047975768
#>     Attrib V40    -0.12662330156058316
#>     Attrib V41    -0.6223900880306743
#>     Attrib V42    -0.15718644378408178
#>     Attrib V43    -0.06080754852010803
#>     Attrib V44    -0.34873718436762213
#>     Attrib V45    -0.5921733518713875
#>     Attrib V46    -0.8331925851589942
#>     Attrib V47    -0.558552606176305
#>     Attrib V48    -0.8439623225292889
#>     Attrib V49    -1.0000148685125725
#>     Attrib V5    -0.34093030364365146
#>     Attrib V50    1.3860926692413307
#>     Attrib V51    -1.6009057865232317
#>     Attrib V52    -1.0833151223261952
#>     Attrib V53    -0.3492843685342461
#>     Attrib V54    0.7890972809890582
#>     Attrib V55    -0.07337672911057538
#>     Attrib V56    0.2014046018887051
#>     Attrib V57    0.5653624701900251
#>     Attrib V58    -0.6760823828271197
#>     Attrib V59    -0.15266012278063026
#>     Attrib V6    -0.04515334418290944
#>     Attrib V60    -0.028337303245984834
#>     Attrib V7    0.4972346765002853
#>     Attrib V8    0.0817080154934033
#>     Attrib V9    -1.1334601461732192
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.11419151881824073
#>     Attrib V1    0.20606226284729642
#>     Attrib V10    -0.35439305762671003
#>     Attrib V11    0.26422837056081044
#>     Attrib V12    0.04994667886184841
#>     Attrib V13    -0.1647887723947059
#>     Attrib V14    0.14027880734077985
#>     Attrib V15    0.22015131273004282
#>     Attrib V16    0.05459461280649895
#>     Attrib V17    0.01039564663246725
#>     Attrib V18    -0.28044459432388996
#>     Attrib V19    0.06773615894904501
#>     Attrib V2    0.08626619163065832
#>     Attrib V20    0.6140374478306554
#>     Attrib V21    0.6508409460746232
#>     Attrib V22    0.21696118732753678
#>     Attrib V23    0.21912172161661292
#>     Attrib V24    0.378712902169067
#>     Attrib V25    -0.1687526553577307
#>     Attrib V26    -0.5421981746407227
#>     Attrib V27    -0.7800038728852252
#>     Attrib V28    -0.3798973200424309
#>     Attrib V29    -0.05942939807725804
#>     Attrib V3    0.1552725860996737
#>     Attrib V30    0.05942806864045067
#>     Attrib V31    -0.5058940016546056
#>     Attrib V32    -0.19720026469825924
#>     Attrib V33    0.1860098507510293
#>     Attrib V34    -0.014045277754650202
#>     Attrib V35    -0.17897705631249983
#>     Attrib V36    -0.5702870887675922
#>     Attrib V37    -0.6482638074049577
#>     Attrib V38    -0.05279277177363924
#>     Attrib V39    0.26110829630366295
#>     Attrib V4    -0.03663517024205121
#>     Attrib V40    -0.2919866306253797
#>     Attrib V41    -0.08619820901606814
#>     Attrib V42    0.40158486719160397
#>     Attrib V43    0.14791002173780074
#>     Attrib V44    0.22458997924380572
#>     Attrib V45    0.4513682051597433
#>     Attrib V46    0.19166596175825387
#>     Attrib V47    -0.06840759603914366
#>     Attrib V48    0.08124103845346337
#>     Attrib V49    0.32754914447433214
#>     Attrib V5    -0.059412266425467125
#>     Attrib V50    -0.7102671320904166
#>     Attrib V51    0.12316042355588407
#>     Attrib V52    0.2755007547948057
#>     Attrib V53    0.27785728467652876
#>     Attrib V54    -0.027582091596442634
#>     Attrib V55    0.3134965837996226
#>     Attrib V56    0.172685701344569
#>     Attrib V57    0.1909459178183118
#>     Attrib V58    0.669830300389548
#>     Attrib V59    0.6979737674110003
#>     Attrib V6    -0.3200176591635655
#>     Attrib V60    -0.0676669440528432
#>     Attrib V7    -0.19555235855413375
#>     Attrib V8    0.0862863861736478
#>     Attrib V9    0.2141969788437424
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1629006533874296
#>     Attrib V1    0.059135257986266426
#>     Attrib V10    0.04352236368778692
#>     Attrib V11    -0.04737978128393254
#>     Attrib V12    -0.012016308367769003
#>     Attrib V13    0.056138701110397045
#>     Attrib V14    0.05187554027330071
#>     Attrib V15    0.04629573569988756
#>     Attrib V16    0.08154691806543285
#>     Attrib V17    0.12972977345343745
#>     Attrib V18    0.08823951694525024
#>     Attrib V19    -0.004180367619021934
#>     Attrib V2    0.08239853388226198
#>     Attrib V20    -0.06065490705187999
#>     Attrib V21    -0.02111584612532892
#>     Attrib V22    -0.025570489089883446
#>     Attrib V23    -0.05465577688524957
#>     Attrib V24    -0.11448013190705512
#>     Attrib V25    0.014683847216520569
#>     Attrib V26    0.015223209426492395
#>     Attrib V27    -0.03559467982440947
#>     Attrib V28    -0.05196847339027475
#>     Attrib V29    -0.11272953082523982
#>     Attrib V3    0.04220437211942557
#>     Attrib V30    -0.036800450756267124
#>     Attrib V31    0.10844353860532087
#>     Attrib V32    0.018636752260250807
#>     Attrib V33    -0.009360340587578246
#>     Attrib V34    -0.01575690085276038
#>     Attrib V35    0.0523066827083951
#>     Attrib V36    0.07721175054519307
#>     Attrib V37    0.11697150683899156
#>     Attrib V38    0.009349145939669306
#>     Attrib V39    0.07977603938722903
#>     Attrib V4    0.11400107783150129
#>     Attrib V40    0.08557407220977015
#>     Attrib V41    0.0328060376202103
#>     Attrib V42    0.046344560257627766
#>     Attrib V43    -0.007974783209393472
#>     Attrib V44    -0.07258208514602439
#>     Attrib V45    -0.04156783208839053
#>     Attrib V46    -0.04874857241923847
#>     Attrib V47    -0.023036137087969522
#>     Attrib V48    0.020794317888719393
#>     Attrib V49    -0.04262962863383333
#>     Attrib V5    0.050997211354209517
#>     Attrib V50    0.09542852484221537
#>     Attrib V51    -0.07105376135865672
#>     Attrib V52    -0.01830813713305489
#>     Attrib V53    0.07162177320680298
#>     Attrib V54    0.054856856465634075
#>     Attrib V55    -0.004436341627145878
#>     Attrib V56    0.08960228225201759
#>     Attrib V57    0.034820442524415095
#>     Attrib V58    0.03188466066572836
#>     Attrib V59    0.08074172976276404
#>     Attrib V6    0.09314741380825815
#>     Attrib V60    0.1152303032061288
#>     Attrib V7    8.527138501081572E-4
#>     Attrib V8    0.0172003618726653
#>     Attrib V9    -0.054252417852503766
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.10222510214848411
#>     Attrib V1    0.09984554924770496
#>     Attrib V10    -0.12469899939772912
#>     Attrib V11    0.08767617229293927
#>     Attrib V12    -0.005222311839021304
#>     Attrib V13    0.027518069240315027
#>     Attrib V14    0.10699280645096179
#>     Attrib V15    0.07852140403815708
#>     Attrib V16    0.048830939821924296
#>     Attrib V17    0.09470991657485679
#>     Attrib V18    0.01755308810969294
#>     Attrib V19    0.059771797085543914
#>     Attrib V2    0.1470755177226472
#>     Attrib V20    0.1696176184922435
#>     Attrib V21    0.08231768992450797
#>     Attrib V22    0.036971377900686976
#>     Attrib V23    0.07629698157741466
#>     Attrib V24    0.11046282925636199
#>     Attrib V25    -0.08019245417297259
#>     Attrib V26    -0.1322948121452492
#>     Attrib V27    -0.2621389259818409
#>     Attrib V28    -0.18083198091635994
#>     Attrib V29    -0.1139776761278505
#>     Attrib V3    0.06477392530100586
#>     Attrib V30    -0.09191663560428147
#>     Attrib V31    -0.1512120479512442
#>     Attrib V32    -0.06551564722761072
#>     Attrib V33    0.06262409347060133
#>     Attrib V34    0.024598217290883257
#>     Attrib V35    0.05340216337011138
#>     Attrib V36    -0.08903353925632515
#>     Attrib V37    -0.0787564938398817
#>     Attrib V38    0.07934425793182324
#>     Attrib V39    0.08444006884590734
#>     Attrib V4    0.08719816737336047
#>     Attrib V40    -0.07549864239336022
#>     Attrib V41    -0.0611003628661191
#>     Attrib V42    0.06906340226371899
#>     Attrib V43    0.0612619566201468
#>     Attrib V44    0.11638964204741964
#>     Attrib V45    0.08778216534466333
#>     Attrib V46    0.02733985097343765
#>     Attrib V47    -0.039265711516123854
#>     Attrib V48    0.02069239257494158
#>     Attrib V49    0.08952520222521512
#>     Attrib V5    0.04829907511828915
#>     Attrib V50    -0.19747991298403236
#>     Attrib V51    -0.07299650868680113
#>     Attrib V52    0.07998043077616385
#>     Attrib V53    0.1668717337565671
#>     Attrib V54    0.09826167630322524
#>     Attrib V55    0.16174624411739885
#>     Attrib V56    0.050720673760037804
#>     Attrib V57    0.07856137991464987
#>     Attrib V58    0.18341612119125608
#>     Attrib V59    0.245414922179629
#>     Attrib V6    -0.05763673835891387
#>     Attrib V60    0.048754393681179994
#>     Attrib V7    -0.058915211974602685
#>     Attrib V8    -0.026801320623047034
#>     Attrib V9    0.04049704582437632
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.06621632466889493
#>     Attrib V1    0.13152043834576724
#>     Attrib V10    -0.23366176452410606
#>     Attrib V11    0.057586058163293534
#>     Attrib V12    2.8255606901747848E-5
#>     Attrib V13    -0.05910736521502137
#>     Attrib V14    0.12309696849657657
#>     Attrib V15    0.09870598318748508
#>     Attrib V16    0.07922906412199406
#>     Attrib V17    0.0437871842488636
#>     Attrib V18    0.00182947887538904
#>     Attrib V19    0.034444226946496896
#>     Attrib V2    0.06942299161859003
#>     Attrib V20    0.2222712201146813
#>     Attrib V21    0.23075051097490798
#>     Attrib V22    0.03195652176802964
#>     Attrib V23    0.1161694510534087
#>     Attrib V24    0.11004563773198452
#>     Attrib V25    -0.14166436563776313
#>     Attrib V26    -0.23329972086214157
#>     Attrib V27    -0.3214976536820578
#>     Attrib V28    -0.12122906018539367
#>     Attrib V29    -0.06067074832457221
#>     Attrib V3    0.13111264523932287
#>     Attrib V30    -0.008650537795828646
#>     Attrib V31    -0.29848012105465604
#>     Attrib V32    -0.12244778683948496
#>     Attrib V33    0.06079357992950626
#>     Attrib V34    0.0024811368773823253
#>     Attrib V35    0.012160747843670862
#>     Attrib V36    -0.08307876117181956
#>     Attrib V37    -0.16690506333695934
#>     Attrib V38    -0.001842548077495485
#>     Attrib V39    0.15872838728267896
#>     Attrib V4    0.016923615530108578
#>     Attrib V40    -0.13813904149421583
#>     Attrib V41    -0.0942440490297719
#>     Attrib V42    0.14584834228655283
#>     Attrib V43    0.00492301145178768
#>     Attrib V44    0.1407715269888528
#>     Attrib V45    0.20128508823659114
#>     Attrib V46    0.05849186821130236
#>     Attrib V47    -0.07248619962825142
#>     Attrib V48    -0.03593786947355204
#>     Attrib V49    0.14741852774922468
#>     Attrib V5    0.04692530358807962
#>     Attrib V50    -0.3191856631942599
#>     Attrib V51    -0.04880874603659314
#>     Attrib V52    0.1230894113104377
#>     Attrib V53    0.16216625973559257
#>     Attrib V54    -0.0158985007198603
#>     Attrib V55    0.12290439219538561
#>     Attrib V56    0.07335409002172223
#>     Attrib V57    0.07368537890172673
#>     Attrib V58    0.34113668005523534
#>     Attrib V59    0.3083034003964781
#>     Attrib V6    -0.07726005388647676
#>     Attrib V60    0.012231681037258418
#>     Attrib V7    -0.0857288744993775
#>     Attrib V8    -0.003447087866463264
#>     Attrib V9    0.03162942663680346
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
#>  0.2608696 
```
