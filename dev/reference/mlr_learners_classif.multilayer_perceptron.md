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
#>     Threshold    -0.4948838194720772
#>     Node 2    1.5902389974928202
#>     Node 3    1.4872084786298374
#>     Node 4    0.5900509109769697
#>     Node 5    -2.5802556128195806
#>     Node 6    1.0737604586150071
#>     Node 7    3.3266320727226115
#>     Node 8    1.0918218584445027
#>     Node 9    3.4628337876541706
#>     Node 10    -2.3687498467038335
#>     Node 11    0.8825431185057984
#>     Node 12    1.5759845303845579
#>     Node 13    0.6667120166960143
#>     Node 14    1.4356462321448342
#>     Node 15    -2.280505375253028
#>     Node 16    0.02389159158084612
#>     Node 17    0.4578123187647239
#>     Node 18    0.30948421237404883
#>     Node 19    1.7380656769608112
#>     Node 20    1.436468118327302
#>     Node 21    -1.85652543506301
#>     Node 22    1.3103394182706978
#>     Node 23    1.8216194708746214
#>     Node 24    -0.048594596724185396
#>     Node 25    4.1654721067734055
#>     Node 26    -0.6859253470504822
#>     Node 27    1.4870887204637508
#>     Node 28    -2.271883040771064
#>     Node 29    0.9236127492142803
#>     Node 30    0.4172928908834382
#>     Node 31    0.45203321126841534
#>     Node 32    0.28810974504177234
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5538606590272347
#>     Node 2    -1.6345450372945407
#>     Node 3    -1.4608912170556145
#>     Node 4    -0.5537931502071606
#>     Node 5    2.603286171158797
#>     Node 6    -1.0494291786872512
#>     Node 7    -3.328130921645915
#>     Node 8    -1.1296192144190669
#>     Node 9    -3.4643158967386745
#>     Node 10    2.3099276249451526
#>     Node 11    -0.8494098226597389
#>     Node 12    -1.6454451409051039
#>     Node 13    -0.6174156513707454
#>     Node 14    -1.3611985837354765
#>     Node 15    2.2759067775292
#>     Node 16    -0.04427916828720172
#>     Node 17    -0.43141240643317247
#>     Node 18    -0.2757828335805735
#>     Node 19    -1.7355326409718006
#>     Node 20    -1.428149614084778
#>     Node 21    1.9205875708557565
#>     Node 22    -1.3553903834779413
#>     Node 23    -1.8547469808506407
#>     Node 24    0.02985997325685611
#>     Node 25    -4.155692082872482
#>     Node 26    0.614320208392002
#>     Node 27    -1.528846331685121
#>     Node 28    2.228734311236761
#>     Node 29    -0.9552650126252499
#>     Node 30    -0.3481646571871278
#>     Node 31    -0.40186889813551846
#>     Node 32    -0.31322510581756596
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.1471569031684959
#>     Attrib V1    0.3117831762551602
#>     Attrib V10    0.13275249216641002
#>     Attrib V11    0.10451084466584461
#>     Attrib V12    -0.06510094439120685
#>     Attrib V13    -0.008858902927276013
#>     Attrib V14    -0.2565759765943933
#>     Attrib V15    0.21515747335726731
#>     Attrib V16    -0.09759903689390435
#>     Attrib V17    -0.2660061792395277
#>     Attrib V18    -0.2767496077952657
#>     Attrib V19    0.3524444855585799
#>     Attrib V2    -0.03514835538499087
#>     Attrib V20    0.3001425990057028
#>     Attrib V21    0.2539984006679178
#>     Attrib V22    0.38487630639040515
#>     Attrib V23    0.4165918065199166
#>     Attrib V24    0.4015005916980977
#>     Attrib V25    -0.41048193723065224
#>     Attrib V26    -0.755511734284073
#>     Attrib V27    -0.6510015584857428
#>     Attrib V28    -0.22003408631464505
#>     Attrib V29    -0.4344028970436868
#>     Attrib V3    -0.24072004754754192
#>     Attrib V30    -0.21616968802208464
#>     Attrib V31    -0.8420619826584395
#>     Attrib V32    0.0586656332817489
#>     Attrib V33    0.07319272267338253
#>     Attrib V34    0.1522810609612069
#>     Attrib V35    -0.033681875317742145
#>     Attrib V36    -0.5030204809067993
#>     Attrib V37    -1.0592052277598731
#>     Attrib V38    -0.0742077839480394
#>     Attrib V39    -0.07313312407772585
#>     Attrib V4    0.032300699446792314
#>     Attrib V40    -0.4195518358786661
#>     Attrib V41    -0.10787358462755532
#>     Attrib V42    0.10867122663520021
#>     Attrib V43    0.6104259054788448
#>     Attrib V44    0.38035720036282883
#>     Attrib V45    0.34967905319586845
#>     Attrib V46    0.16319916122695152
#>     Attrib V47    0.17837741143377892
#>     Attrib V48    0.40407951396057323
#>     Attrib V49    0.11144924850096381
#>     Attrib V5    0.18799764578212905
#>     Attrib V50    -0.5594630311430455
#>     Attrib V51    -0.21738416430518306
#>     Attrib V52    0.41505947306546603
#>     Attrib V53    0.07979489262301033
#>     Attrib V54    0.12672310699399597
#>     Attrib V55    -0.40400550968024435
#>     Attrib V56    0.3873267175130622
#>     Attrib V57    0.2653790068927309
#>     Attrib V58    0.5881387332242599
#>     Attrib V59    0.6745076964184136
#>     Attrib V6    -0.3130447130216789
#>     Attrib V60    0.21249074296513185
#>     Attrib V7    -0.015957794491056616
#>     Attrib V8    -0.15326884122452547
#>     Attrib V9    0.3291774175712724
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.1604698383759435
#>     Attrib V1    0.24914003093370515
#>     Attrib V10    0.13233027400327185
#>     Attrib V11    0.08665185252606111
#>     Attrib V12    -0.026817949993689798
#>     Attrib V13    0.024656642240078092
#>     Attrib V14    -0.24526766384893392
#>     Attrib V15    0.26021856000395754
#>     Attrib V16    -0.08997485611870822
#>     Attrib V17    -0.24935837921335163
#>     Attrib V18    -0.31139259387298335
#>     Attrib V19    0.38432075736941895
#>     Attrib V2    9.748840692569071E-4
#>     Attrib V20    0.27292385994964624
#>     Attrib V21    0.18074350723287905
#>     Attrib V22    0.3803018282796974
#>     Attrib V23    0.377181603890939
#>     Attrib V24    0.34661880874315504
#>     Attrib V25    -0.3604455233082656
#>     Attrib V26    -0.6788584379670105
#>     Attrib V27    -0.5893800590142881
#>     Attrib V28    -0.20621540340691394
#>     Attrib V29    -0.4564723252713751
#>     Attrib V3    -0.22731180901881753
#>     Attrib V30    -0.16680301522160884
#>     Attrib V31    -0.6735504631738123
#>     Attrib V32    0.08263909383227049
#>     Attrib V33    0.0859627960423404
#>     Attrib V34    0.10265923005115876
#>     Attrib V35    -0.034720568188233936
#>     Attrib V36    -0.49348336873958537
#>     Attrib V37    -0.9633841184536222
#>     Attrib V38    -0.14173051852373156
#>     Attrib V39    -0.06710779551594205
#>     Attrib V4    0.04547221582037955
#>     Attrib V40    -0.36363911295437507
#>     Attrib V41    -0.09314596064417731
#>     Attrib V42    0.06736230770089825
#>     Attrib V43    0.4951526951778821
#>     Attrib V44    0.322442956862523
#>     Attrib V45    0.30803321852534127
#>     Attrib V46    0.1457143871143111
#>     Attrib V47    0.19450500289061604
#>     Attrib V48    0.3441110224819472
#>     Attrib V49    0.11342583888246392
#>     Attrib V5    0.14541421888769557
#>     Attrib V50    -0.5114256150915352
#>     Attrib V51    -0.23593621411678092
#>     Attrib V52    0.44857805183142213
#>     Attrib V53    0.07343321424657932
#>     Attrib V54    0.16594106549958243
#>     Attrib V55    -0.31124788724209895
#>     Attrib V56    0.38146182005233376
#>     Attrib V57    0.2785202986957109
#>     Attrib V58    0.6025637433361097
#>     Attrib V59    0.6027121341495854
#>     Attrib V6    -0.26995544942938937
#>     Attrib V60    0.15022619767353482
#>     Attrib V7    -0.05433643624413285
#>     Attrib V8    -0.12211795246696648
#>     Attrib V9    0.30225246407850714
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.03603531319512791
#>     Attrib V1    0.11023974000295504
#>     Attrib V10    0.04277332772201573
#>     Attrib V11    0.05068994242106369
#>     Attrib V12    0.022963948514692495
#>     Attrib V13    0.06608400535440707
#>     Attrib V14    -0.01838566651309833
#>     Attrib V15    0.11742369820465642
#>     Attrib V16    -0.029715919474108763
#>     Attrib V17    -0.09033379107366571
#>     Attrib V18    -0.12813334926471764
#>     Attrib V19    0.11594817619834344
#>     Attrib V2    -3.1909813799422355E-4
#>     Attrib V20    0.089020284845586
#>     Attrib V21    0.0966033222648514
#>     Attrib V22    0.019022507957069505
#>     Attrib V23    -0.004280795903628223
#>     Attrib V24    0.028604318607526977
#>     Attrib V25    -0.17971136163427776
#>     Attrib V26    -0.2124543463070623
#>     Attrib V27    -0.17187107880089855
#>     Attrib V28    0.031558458663933586
#>     Attrib V29    -0.04479703829254274
#>     Attrib V3    -0.01895833546015886
#>     Attrib V30    -0.0014615720236170466
#>     Attrib V31    -0.1842644832063877
#>     Attrib V32    0.036532126170337326
#>     Attrib V33    0.04057385088107588
#>     Attrib V34    0.07838370985317258
#>     Attrib V35    0.04226336665288274
#>     Attrib V36    -0.13550932722712858
#>     Attrib V37    -0.26982297028890223
#>     Attrib V38    -0.004725397218654998
#>     Attrib V39    0.040901932988808086
#>     Attrib V4    0.051778106507732985
#>     Attrib V40    -0.09724035586016876
#>     Attrib V41    -0.05215133707838949
#>     Attrib V42    0.014947703091422678
#>     Attrib V43    0.15186656329360115
#>     Attrib V44    0.20437933036360073
#>     Attrib V45    0.24435294317440398
#>     Attrib V46    0.050100438420646765
#>     Attrib V47    0.016926650581109162
#>     Attrib V48    0.17647391932357898
#>     Attrib V49    0.08447295597086675
#>     Attrib V5    0.13868256173674665
#>     Attrib V50    -0.1562819495304797
#>     Attrib V51    -0.017481501618840146
#>     Attrib V52    0.17685546128856783
#>     Attrib V53    0.1482096736139318
#>     Attrib V54    0.06645271790611754
#>     Attrib V55    -0.0620716999174923
#>     Attrib V56    0.1808265954983496
#>     Attrib V57    0.2010425862922794
#>     Attrib V58    0.21798794178636136
#>     Attrib V59    0.30728228141271385
#>     Attrib V6    -0.09941302135519653
#>     Attrib V60    0.13158630310893984
#>     Attrib V7    -0.026837747438856422
#>     Attrib V8    -0.09109697020337727
#>     Attrib V9    0.16506804109878465
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.42468500257692143
#>     Attrib V1    -0.5203685692874581
#>     Attrib V10    -0.45910951910671316
#>     Attrib V11    -0.6372506906300018
#>     Attrib V12    -0.4009754650504034
#>     Attrib V13    -0.3731526940774205
#>     Attrib V14    0.495467939188861
#>     Attrib V15    -0.31403155013162837
#>     Attrib V16    0.4057477822328627
#>     Attrib V17    0.9039401873180088
#>     Attrib V18    0.9569684854122771
#>     Attrib V19    -0.5074435225425724
#>     Attrib V2    -0.06523165964023611
#>     Attrib V20    -0.41655251120213005
#>     Attrib V21    -0.21041391603097986
#>     Attrib V22    -0.6875717881681854
#>     Attrib V23    -0.6577159707029155
#>     Attrib V24    -0.7024627800939428
#>     Attrib V25    0.6082196032880036
#>     Attrib V26    0.7138392137620474
#>     Attrib V27    0.31166386948498653
#>     Attrib V28    -0.30199363934893153
#>     Attrib V29    0.2508575757382919
#>     Attrib V3    0.5709640236724127
#>     Attrib V30    0.3359460590731345
#>     Attrib V31    1.3701284915218246
#>     Attrib V32    0.08795824373815406
#>     Attrib V33    0.16681886471961183
#>     Attrib V34    -0.2514105046121283
#>     Attrib V35    0.13628675243294563
#>     Attrib V36    0.9027161609467884
#>     Attrib V37    1.5797767476748423
#>     Attrib V38    0.01924236523676623
#>     Attrib V39    -0.0692219832946031
#>     Attrib V4    -0.0022890859918458214
#>     Attrib V40    0.50227491125052
#>     Attrib V41    0.05986057331547986
#>     Attrib V42    0.055190450185873194
#>     Attrib V43    -0.6711329408096426
#>     Attrib V44    -0.1654937556069271
#>     Attrib V45    -0.5592789893837293
#>     Attrib V46    -0.463546725615222
#>     Attrib V47    -0.5467586271453931
#>     Attrib V48    -0.7941385151319387
#>     Attrib V49    -0.3361938266378358
#>     Attrib V5    -0.22147744909356912
#>     Attrib V50    1.1443248788569313
#>     Attrib V51    0.47553351884412554
#>     Attrib V52    -0.8144566104141853
#>     Attrib V53    -0.04513889846150157
#>     Attrib V54    0.044430803479899854
#>     Attrib V55    0.8092070155557705
#>     Attrib V56    -0.2954733989587711
#>     Attrib V57    -0.011617597074555409
#>     Attrib V58    -0.8103300908043088
#>     Attrib V59    -0.7602241103928097
#>     Attrib V6    0.533248980353249
#>     Attrib V60    -0.047166641811087234
#>     Attrib V7    0.2022137443232029
#>     Attrib V8    0.41891513725223406
#>     Attrib V9    -0.6192260724811448
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.13264834492620384
#>     Attrib V1    0.23763162776659286
#>     Attrib V10    -0.052731205618218535
#>     Attrib V11    -0.013251985493475326
#>     Attrib V12    -0.019700385009441233
#>     Attrib V13    -0.04597923942843708
#>     Attrib V14    -0.14461973013909724
#>     Attrib V15    0.1740977200415171
#>     Attrib V16    0.053856483288058685
#>     Attrib V17    -0.1319089552833101
#>     Attrib V18    -0.10918665443461392
#>     Attrib V19    0.22721398441457774
#>     Attrib V2    0.0011867250188382112
#>     Attrib V20    0.2019303141570429
#>     Attrib V21    0.18164646624155192
#>     Attrib V22    0.1721347560740184
#>     Attrib V23    0.17030729451004534
#>     Attrib V24    0.23637912724653914
#>     Attrib V25    -0.24663004490592444
#>     Attrib V26    -0.529983040739662
#>     Attrib V27    -0.4577820276995591
#>     Attrib V28    -0.28227444556211895
#>     Attrib V29    -0.35822108230151806
#>     Attrib V3    -0.12075094059836833
#>     Attrib V30    -0.16544329956901194
#>     Attrib V31    -0.49185318194039734
#>     Attrib V32    0.03528835979844964
#>     Attrib V33    0.07188923291440458
#>     Attrib V34    0.07735394070117821
#>     Attrib V35    0.008310890506870354
#>     Attrib V36    -0.33585136424870393
#>     Attrib V37    -0.6318010879232278
#>     Attrib V38    -0.05644882428030351
#>     Attrib V39    -0.05554319572194323
#>     Attrib V4    0.08627304160399034
#>     Attrib V40    -0.29595685529138077
#>     Attrib V41    -0.04794042121620276
#>     Attrib V42    0.061723425017247764
#>     Attrib V43    0.32978113940530535
#>     Attrib V44    0.21801209059970536
#>     Attrib V45    0.24323243920110227
#>     Attrib V46    0.09486890020257925
#>     Attrib V47    0.038902818784610924
#>     Attrib V48    0.1705622485987463
#>     Attrib V49    0.023001484549408563
#>     Attrib V5    0.12103217998270353
#>     Attrib V50    -0.29237066089574015
#>     Attrib V51    -0.1310359966480412
#>     Attrib V52    0.20327026036844087
#>     Attrib V53    0.16570512520677927
#>     Attrib V54    0.151856482510344
#>     Attrib V55    -0.1704965158996014
#>     Attrib V56    0.3285639826909193
#>     Attrib V57    0.3186475525231948
#>     Attrib V58    0.43895926873312735
#>     Attrib V59    0.5570198517557984
#>     Attrib V6    -0.10949402697375095
#>     Attrib V60    0.26868964629516556
#>     Attrib V7    0.039575666358532526
#>     Attrib V8    -0.09790896715332481
#>     Attrib V9    0.1858582490855081
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4179340485549934
#>     Attrib V1    0.43024480600129733
#>     Attrib V10    1.0755934043143205
#>     Attrib V11    1.212825085795699
#>     Attrib V12    0.826186268737546
#>     Attrib V13    0.40551059853072785
#>     Attrib V14    -0.541036729863748
#>     Attrib V15    -0.2852829833418338
#>     Attrib V16    -0.28292389091019504
#>     Attrib V17    -0.7342905514455591
#>     Attrib V18    -0.8212138807193496
#>     Attrib V19    0.3077041628801093
#>     Attrib V2    0.23750605781539666
#>     Attrib V20    0.015116544657398971
#>     Attrib V21    0.15371846851314794
#>     Attrib V22    0.21729578264061172
#>     Attrib V23    -0.17182395849608564
#>     Attrib V24    0.18996384404032604
#>     Attrib V25    0.13306372493740412
#>     Attrib V26    0.9649793365530533
#>     Attrib V27    1.4636793554445386
#>     Attrib V28    1.6683961844971038
#>     Attrib V29    0.8574991616980397
#>     Attrib V3    -0.35845961862928166
#>     Attrib V30    0.2821803498795239
#>     Attrib V31    -0.48791021861176287
#>     Attrib V32    -0.1407628431974925
#>     Attrib V33    -0.7822489600200109
#>     Attrib V34    -0.1624844332739547
#>     Attrib V35    -0.025558266998611454
#>     Attrib V36    -0.4003012161907175
#>     Attrib V37    -0.06976514412504184
#>     Attrib V38    0.4143441800656375
#>     Attrib V39    0.5384353715514817
#>     Attrib V4    0.19173380070370213
#>     Attrib V40    0.308919180475147
#>     Attrib V41    0.47723751507849327
#>     Attrib V42    -0.4833552670717457
#>     Attrib V43    -0.20314266606255174
#>     Attrib V44    0.43384191066110295
#>     Attrib V45    0.6765286863850086
#>     Attrib V46    0.6027093727466512
#>     Attrib V47    0.5542941025385677
#>     Attrib V48    0.9859456250657904
#>     Attrib V49    0.537251155638412
#>     Attrib V5    0.38350528545068285
#>     Attrib V50    -1.0127424747075513
#>     Attrib V51    -0.019695894369410074
#>     Attrib V52    0.7947638726411805
#>     Attrib V53    0.2433613550304319
#>     Attrib V54    -0.044777427598662704
#>     Attrib V55    -0.5684967905525945
#>     Attrib V56    -0.26398561800914877
#>     Attrib V57    -0.5773047081014041
#>     Attrib V58    -0.009210696729609823
#>     Attrib V59    0.6304898479905743
#>     Attrib V6    0.12517683639036364
#>     Attrib V60    0.3331474449661442
#>     Attrib V7    -0.15916173834114675
#>     Attrib V8    -0.2056892389867408
#>     Attrib V9    0.9946836067299196
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.23995751968209872
#>     Attrib V1    0.11168906467268926
#>     Attrib V10    0.24988558777836037
#>     Attrib V11    0.28745317669910003
#>     Attrib V12    0.14772827911609498
#>     Attrib V13    0.11184481188355908
#>     Attrib V14    -0.32232636006838083
#>     Attrib V15    -0.054361694784365186
#>     Attrib V16    -0.07729475551803527
#>     Attrib V17    -0.2785984536291147
#>     Attrib V18    -0.3634096186522021
#>     Attrib V19    0.11616364354108803
#>     Attrib V2    -0.038292156839257185
#>     Attrib V20    -0.07738716727502852
#>     Attrib V21    -0.03670007580970084
#>     Attrib V22    -0.024387251325461788
#>     Attrib V23    -0.11223140095344133
#>     Attrib V24    0.16855801522090516
#>     Attrib V25    -0.056063959286129554
#>     Attrib V26    0.04217583512554047
#>     Attrib V27    0.2202657005872295
#>     Attrib V28    0.43710459449996664
#>     Attrib V29    0.1602536028088953
#>     Attrib V3    -0.26349137655782406
#>     Attrib V30    0.16305597150151713
#>     Attrib V31    -0.23012973785563892
#>     Attrib V32    0.07928532671472578
#>     Attrib V33    -0.08526460975766376
#>     Attrib V34    0.08708478110879991
#>     Attrib V35    0.057283331560928435
#>     Attrib V36    -0.12878269370607426
#>     Attrib V37    -0.3441767389294284
#>     Attrib V38    0.10045803449927136
#>     Attrib V39    0.07198343266737642
#>     Attrib V4    0.06609349480496138
#>     Attrib V40    -0.1261686126487347
#>     Attrib V41    0.011997992455565234
#>     Attrib V42    -0.18618038514230345
#>     Attrib V43    0.22207637270980368
#>     Attrib V44    0.4317500307056827
#>     Attrib V45    0.3678137076595059
#>     Attrib V46    0.2031004851898479
#>     Attrib V47    0.12405079030964754
#>     Attrib V48    0.44633902415667287
#>     Attrib V49    0.19499180783110193
#>     Attrib V5    0.12799059660375975
#>     Attrib V50    -0.4858775111901981
#>     Attrib V51    -0.1398595752255106
#>     Attrib V52    0.31538074889811185
#>     Attrib V53    0.19700695335037743
#>     Attrib V54    4.8373855303590835E-4
#>     Attrib V55    -0.3136902807668665
#>     Attrib V56    -0.019420646844241045
#>     Attrib V57    0.09974143747374785
#>     Attrib V58    0.1883367045470776
#>     Attrib V59    0.43902544348989014
#>     Attrib V6    -0.09286163818118548
#>     Attrib V60    0.15448020848391106
#>     Attrib V7    -0.08329346797127503
#>     Attrib V8    -0.19130488132634252
#>     Attrib V9    0.31432923489509335
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.27063548217443106
#>     Attrib V1    0.39257359364901534
#>     Attrib V10    1.2059557117469122
#>     Attrib V11    1.2766933815344295
#>     Attrib V12    0.9668380074820678
#>     Attrib V13    0.4975477135231396
#>     Attrib V14    -0.5756979359412322
#>     Attrib V15    -0.2947034025267068
#>     Attrib V16    -0.28460445516509386
#>     Attrib V17    -0.6770649777853048
#>     Attrib V18    -0.797105809156631
#>     Attrib V19    0.2552676626420563
#>     Attrib V2    0.28087709457919563
#>     Attrib V20    -0.03024796090904545
#>     Attrib V21    0.15468046000528532
#>     Attrib V22    0.2592954413275419
#>     Attrib V23    -0.1729142057601653
#>     Attrib V24    0.21555090237276206
#>     Attrib V25    0.26749781808523776
#>     Attrib V26    1.0884937642419423
#>     Attrib V27    1.5609865536828178
#>     Attrib V28    1.6596659960615432
#>     Attrib V29    0.762412713748859
#>     Attrib V3    -0.35683213484414944
#>     Attrib V30    0.32830378961200696
#>     Attrib V31    -0.4213210483286594
#>     Attrib V32    -0.0808653092396696
#>     Attrib V33    -0.7672931983852274
#>     Attrib V34    -0.14536457705777608
#>     Attrib V35    -0.069841155541401
#>     Attrib V36    -0.41860516569231176
#>     Attrib V37    -0.10582987747339083
#>     Attrib V38    0.42115439267630556
#>     Attrib V39    0.6300433487689232
#>     Attrib V4    0.20141158596144862
#>     Attrib V40    0.33833890743719086
#>     Attrib V41    0.4563854410601768
#>     Attrib V42    -0.5652571497521077
#>     Attrib V43    -0.19546220272529127
#>     Attrib V44    0.38959991401478683
#>     Attrib V45    0.7072296651160104
#>     Attrib V46    0.6050094091406942
#>     Attrib V47    0.564649385861108
#>     Attrib V48    0.9592879587253171
#>     Attrib V49    0.6074566708546483
#>     Attrib V5    0.33408033977131546
#>     Attrib V50    -0.9854509576456318
#>     Attrib V51    0.0333164860911762
#>     Attrib V52    0.8243136292334633
#>     Attrib V53    0.2891709518117146
#>     Attrib V54    -0.05498509125323002
#>     Attrib V55    -0.4834271639395392
#>     Attrib V56    -0.2707469150358416
#>     Attrib V57    -0.7028488349160503
#>     Attrib V58    -0.071700571835701
#>     Attrib V59    0.4712827812961107
#>     Attrib V6    0.09421616018971127
#>     Attrib V60    0.2100872700455579
#>     Attrib V7    -0.19194215062043346
#>     Attrib V8    -0.10423332960873524
#>     Attrib V9    1.0093610751795437
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.40309910772191176
#>     Attrib V1    -0.3645119721109792
#>     Attrib V10    -0.36274937584618033
#>     Attrib V11    -0.4536889659295785
#>     Attrib V12    -0.15329721883642755
#>     Attrib V13    -0.1736530313620471
#>     Attrib V14    0.4942505642081616
#>     Attrib V15    -0.34426061441708167
#>     Attrib V16    0.29337116884118175
#>     Attrib V17    0.5759179244756698
#>     Attrib V18    0.7060939935179389
#>     Attrib V19    -0.482948133329868
#>     Attrib V2    -0.006554182042792426
#>     Attrib V20    -0.33740720857840656
#>     Attrib V21    -0.19660897138822617
#>     Attrib V22    -0.6263220505178155
#>     Attrib V23    -0.6403348080663499
#>     Attrib V24    -0.6313870976139634
#>     Attrib V25    0.5578799022983761
#>     Attrib V26    0.8644291424184724
#>     Attrib V27    0.574467712149396
#>     Attrib V28    0.023283516280030187
#>     Attrib V29    0.3617937113871908
#>     Attrib V3    0.4768319576277603
#>     Attrib V30    0.33067557081046883
#>     Attrib V31    1.2406835808148988
#>     Attrib V32    -0.025429328556239306
#>     Attrib V33    0.045903372635631295
#>     Attrib V34    -0.22709909901095038
#>     Attrib V35    0.0719747510723214
#>     Attrib V36    0.7275844354852912
#>     Attrib V37    1.4761629165276655
#>     Attrib V38    0.12470262354067213
#>     Attrib V39    0.008785175764561483
#>     Attrib V4    -0.018313135323672767
#>     Attrib V40    0.5397006594001484
#>     Attrib V41    0.12884806599032503
#>     Attrib V42    -0.08140285014928367
#>     Attrib V43    -0.7535833552316556
#>     Attrib V44    -0.33673777773540314
#>     Attrib V45    -0.48695472490783526
#>     Attrib V46    -0.36366401323547454
#>     Attrib V47    -0.4249880508368309
#>     Attrib V48    -0.7090815906545181
#>     Attrib V49    -0.2831925356303168
#>     Attrib V5    -0.23298173094322047
#>     Attrib V50    0.9677310170213025
#>     Attrib V51    0.3923208167472702
#>     Attrib V52    -0.6708905995179923
#>     Attrib V53    0.014949450255937415
#>     Attrib V54    -0.047316893316085136
#>     Attrib V55    0.6755954575181937
#>     Attrib V56    -0.40776163744407085
#>     Attrib V57    -0.1388080436034064
#>     Attrib V58    -0.8127418727640675
#>     Attrib V59    -0.8184760474411117
#>     Attrib V6    0.43565600525787357
#>     Attrib V60    -0.19048643575112925
#>     Attrib V7    0.05851913574418026
#>     Attrib V8    0.31363397669471094
#>     Attrib V9    -0.5708245750945276
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.06171886439838321
#>     Attrib V1    0.14839118477106272
#>     Attrib V10    0.02339214934154713
#>     Attrib V11    0.04834741533629711
#>     Attrib V12    0.02949018906732386
#>     Attrib V13    -0.01825304936856017
#>     Attrib V14    -0.14493838716056345
#>     Attrib V15    0.11372408695936724
#>     Attrib V16    -0.016722914239077916
#>     Attrib V17    -0.07979243899619103
#>     Attrib V18    -0.1255924617479869
#>     Attrib V19    0.1905688265352914
#>     Attrib V2    -0.053340875629469035
#>     Attrib V20    0.18826212598523343
#>     Attrib V21    0.0928444229701043
#>     Attrib V22    0.10668338324845555
#>     Attrib V23    0.10688656357809279
#>     Attrib V24    0.15343103538226513
#>     Attrib V25    -0.19723501823134662
#>     Attrib V26    -0.42263717822834546
#>     Attrib V27    -0.32457305682567145
#>     Attrib V28    -0.10737629999941854
#>     Attrib V29    -0.248943876707173
#>     Attrib V3    -0.1709862281300031
#>     Attrib V30    -0.07832176896068833
#>     Attrib V31    -0.4147344886998988
#>     Attrib V32    0.003010855089356144
#>     Attrib V33    0.02941245146377861
#>     Attrib V34    0.13856053332840676
#>     Attrib V35    0.06291454525587697
#>     Attrib V36    -0.21378131580045803
#>     Attrib V37    -0.515245657391964
#>     Attrib V38    0.038881920356799826
#>     Attrib V39    -0.035813760872655025
#>     Attrib V4    0.03291154088396385
#>     Attrib V40    -0.2569830186009618
#>     Attrib V41    -0.147912907784962
#>     Attrib V42    -0.02016298376162649
#>     Attrib V43    0.27493427128841225
#>     Attrib V44    0.2704930868153732
#>     Attrib V45    0.2853557083632484
#>     Attrib V46    0.07241604241374389
#>     Attrib V47    0.07064411666351224
#>     Attrib V48    0.22757519090289652
#>     Attrib V49    0.03622697356522036
#>     Attrib V5    0.1434903800844119
#>     Attrib V50    -0.27759660407928
#>     Attrib V51    -0.045277655125880986
#>     Attrib V52    0.2007970579620912
#>     Attrib V53    0.10226210465692018
#>     Attrib V54    0.19267492385620655
#>     Attrib V55    -0.1288970228937694
#>     Attrib V56    0.23799019322145706
#>     Attrib V57    0.23886968211536042
#>     Attrib V58    0.3547674126744064
#>     Attrib V59    0.36404308616983827
#>     Attrib V6    -0.11676759732527453
#>     Attrib V60    0.16555796545353868
#>     Attrib V7    -0.053087421091224406
#>     Attrib V8    -0.08131238893429547
#>     Attrib V9    0.1900629092636791
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.2629286577113739
#>     Attrib V1    0.23581047992869397
#>     Attrib V10    0.1021678918123009
#>     Attrib V11    0.19016425416491006
#>     Attrib V12    -0.05944343149984469
#>     Attrib V13    0.013723557863250874
#>     Attrib V14    -0.29419318982269677
#>     Attrib V15    0.18685580983351235
#>     Attrib V16    -0.07948529290585982
#>     Attrib V17    -0.293818196098458
#>     Attrib V18    -0.3497187288175112
#>     Attrib V19    0.4029191942153336
#>     Attrib V2    -0.011037660250240467
#>     Attrib V20    0.22878913442782398
#>     Attrib V21    0.17260050320662967
#>     Attrib V22    0.4012711666857959
#>     Attrib V23    0.41099866387574524
#>     Attrib V24    0.3602774246710306
#>     Attrib V25    -0.4426962886659061
#>     Attrib V26    -0.6988939620750494
#>     Attrib V27    -0.522296078867252
#>     Attrib V28    -0.18391165369087675
#>     Attrib V29    -0.3732123999268709
#>     Attrib V3    -0.3410796527512263
#>     Attrib V30    -0.23541808485800692
#>     Attrib V31    -0.842769565413514
#>     Attrib V32    0.002188723940678358
#>     Attrib V33    0.08217451390434423
#>     Attrib V34    0.19205247173433346
#>     Attrib V35    -0.0064709486838964185
#>     Attrib V36    -0.4829311073490623
#>     Attrib V37    -1.0229096498954715
#>     Attrib V38    -0.07751854632103429
#>     Attrib V39    -0.10111492685683528
#>     Attrib V4    0.06655926086113527
#>     Attrib V40    -0.38483351326564846
#>     Attrib V41    -0.1256228845564054
#>     Attrib V42    -0.0011780888133401109
#>     Attrib V43    0.5784869206502073
#>     Attrib V44    0.31998540723330876
#>     Attrib V45    0.4014255844978738
#>     Attrib V46    0.23755173084949013
#>     Attrib V47    0.1752682871408959
#>     Attrib V48    0.4494118978312331
#>     Attrib V49    0.10532676341265335
#>     Attrib V5    0.18457684309566996
#>     Attrib V50    -0.6370190589717845
#>     Attrib V51    -0.2213713767071477
#>     Attrib V52    0.4530332532484409
#>     Attrib V53    0.11640796287383147
#>     Attrib V54    0.12457768456452736
#>     Attrib V55    -0.44899943413800597
#>     Attrib V56    0.37243749858450004
#>     Attrib V57    0.27757273136139743
#>     Attrib V58    0.6221892000750855
#>     Attrib V59    0.6889100886784283
#>     Attrib V6    -0.2811037573826604
#>     Attrib V60    0.19541405159376526
#>     Attrib V7    -0.010008221864672949
#>     Attrib V8    -0.1504295043184506
#>     Attrib V9    0.38312689762223273
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.02920134795204314
#>     Attrib V1    0.1574095091358981
#>     Attrib V10    0.009652618247531377
#>     Attrib V11    0.05302292816972537
#>     Attrib V12    0.023743964759367162
#>     Attrib V13    0.09254532556144598
#>     Attrib V14    -0.07073086148475695
#>     Attrib V15    0.06564981238611188
#>     Attrib V16    -0.05569544106527005
#>     Attrib V17    -0.09700045241781692
#>     Attrib V18    -0.12768042179211386
#>     Attrib V19    0.1140549948633355
#>     Attrib V2    -0.0016706446144669814
#>     Attrib V20    0.10819940096110248
#>     Attrib V21    0.07482678654663955
#>     Attrib V22    0.03493219153384208
#>     Attrib V23    0.06394269388358997
#>     Attrib V24    0.1228908242957758
#>     Attrib V25    -0.09209860259515404
#>     Attrib V26    -0.2579226961772085
#>     Attrib V27    -0.11955187764499756
#>     Attrib V28    -0.0440940578299573
#>     Attrib V29    -0.10406831250752674
#>     Attrib V3    -0.017423824089665137
#>     Attrib V30    -0.04968246606231239
#>     Attrib V31    -0.31370350861725954
#>     Attrib V32    0.019203804419617672
#>     Attrib V33    -0.00680368403906022
#>     Attrib V34    0.09674793653007058
#>     Attrib V35    0.012288803134170176
#>     Attrib V36    -0.17738455116749977
#>     Attrib V37    -0.32209662450312443
#>     Attrib V38    0.006519778492726387
#>     Attrib V39    0.05956607962392989
#>     Attrib V4    0.08628910351219345
#>     Attrib V40    -0.1224541764360142
#>     Attrib V41    -0.030436989748109943
#>     Attrib V42    0.0022182104830928287
#>     Attrib V43    0.15363424066594825
#>     Attrib V44    0.18083739314913513
#>     Attrib V45    0.1662695441523377
#>     Attrib V46    0.11544443222941148
#>     Attrib V47    0.0845037888730409
#>     Attrib V48    0.15757388714450518
#>     Attrib V49    0.08095559007959346
#>     Attrib V5    0.14233895252574394
#>     Attrib V50    -0.24487630982576103
#>     Attrib V51    -0.08525698326773773
#>     Attrib V52    0.15378520961391198
#>     Attrib V53    0.12772008687322497
#>     Attrib V54    0.08197327147426228
#>     Attrib V55    -0.10189628589567576
#>     Attrib V56    0.17622350086848917
#>     Attrib V57    0.20939107288275885
#>     Attrib V58    0.24652502591452924
#>     Attrib V59    0.4018200918641761
#>     Attrib V6    -0.04678877119190205
#>     Attrib V60    0.2269801849329524
#>     Attrib V7    0.03083821344446018
#>     Attrib V8    -0.12399391710441827
#>     Attrib V9    0.12352831533131411
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.16799142779611184
#>     Attrib V1    0.28560844834218235
#>     Attrib V10    0.10374126847199758
#>     Attrib V11    0.1435188078838213
#>     Attrib V12    -0.004617568853392728
#>     Attrib V13    -0.03319556631568835
#>     Attrib V14    -0.2943451449222538
#>     Attrib V15    0.2267554380317898
#>     Attrib V16    -0.08581276781720044
#>     Attrib V17    -0.21794762919937727
#>     Attrib V18    -0.26812027055964305
#>     Attrib V19    0.28996464915853126
#>     Attrib V2    -0.0223792711223751
#>     Attrib V20    0.21421290318895989
#>     Attrib V21    0.14731675075550857
#>     Attrib V22    0.2902474909613793
#>     Attrib V23    0.3526785850903321
#>     Attrib V24    0.31183784783178176
#>     Attrib V25    -0.3436821300250191
#>     Attrib V26    -0.601510044719852
#>     Attrib V27    -0.5521274290879479
#>     Attrib V28    -0.2521533025902899
#>     Attrib V29    -0.44366888484979855
#>     Attrib V3    -0.3006088391629542
#>     Attrib V30    -0.18836782478591327
#>     Attrib V31    -0.6453197378653407
#>     Attrib V32    0.033041441049158314
#>     Attrib V33    0.08774899423716101
#>     Attrib V34    0.1410947218737877
#>     Attrib V35    0.025838328014058103
#>     Attrib V36    -0.4437971616745312
#>     Attrib V37    -0.8516821748079335
#>     Attrib V38    -0.11273445344509017
#>     Attrib V39    -0.07299072338304274
#>     Attrib V4    0.03158791940462586
#>     Attrib V40    -0.376907699363712
#>     Attrib V41    -0.15528822923432387
#>     Attrib V42    -0.03735318315778575
#>     Attrib V43    0.43768368990128587
#>     Attrib V44    0.3554346484357934
#>     Attrib V45    0.2684322449764518
#>     Attrib V46    0.1634840234986094
#>     Attrib V47    0.12412006524499969
#>     Attrib V48    0.3877948688412494
#>     Attrib V49    0.15096556410029996
#>     Attrib V5    0.11895252292483992
#>     Attrib V50    -0.4864987824206618
#>     Attrib V51    -0.20710718413571585
#>     Attrib V52    0.38204049945623897
#>     Attrib V53    0.0734046444424899
#>     Attrib V54    0.2004521505307031
#>     Attrib V55    -0.2870987556279211
#>     Attrib V56    0.3570088048744202
#>     Attrib V57    0.26557799810267185
#>     Attrib V58    0.5580360767495761
#>     Attrib V59    0.5841103071476688
#>     Attrib V6    -0.21028329438694338
#>     Attrib V60    0.25455707142385403
#>     Attrib V7    -4.3152249438807317E-4
#>     Attrib V8    -0.19638452348323276
#>     Attrib V9    0.30631033790744844
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.30226667229366044
#>     Attrib V1    -0.39341632789223674
#>     Attrib V10    -0.2794499905873571
#>     Attrib V11    -0.3799767753536051
#>     Attrib V12    -0.021427526234654687
#>     Attrib V13    -0.12398466222567765
#>     Attrib V14    0.39829749767036204
#>     Attrib V15    -0.263718498474964
#>     Attrib V16    0.24242085619804524
#>     Attrib V17    0.5152505166162286
#>     Attrib V18    0.5402758701167344
#>     Attrib V19    -0.4555872974889802
#>     Attrib V2    -0.023935711780599063
#>     Attrib V20    -0.3615019682867669
#>     Attrib V21    -0.29047400561210557
#>     Attrib V22    -0.5891998335241677
#>     Attrib V23    -0.6970436898460879
#>     Attrib V24    -0.5940613899914057
#>     Attrib V25    0.5496875088562466
#>     Attrib V26    0.9554581458774503
#>     Attrib V27    0.6789062426659661
#>     Attrib V28    0.20275059621276206
#>     Attrib V29    0.5133780235217142
#>     Attrib V3    0.46054895604808604
#>     Attrib V30    0.3160362073719961
#>     Attrib V31    1.1941218110204366
#>     Attrib V32    0.0447366471191748
#>     Attrib V33    -0.06060740238139217
#>     Attrib V34    -0.1949507544028556
#>     Attrib V35    0.04989174155944531
#>     Attrib V36    0.6938098400313387
#>     Attrib V37    1.513586444812218
#>     Attrib V38    0.13592065917056095
#>     Attrib V39    0.06570310070285852
#>     Attrib V4    -0.017787147891249324
#>     Attrib V40    0.5226414990726796
#>     Attrib V41    0.11396647225927473
#>     Attrib V42    -0.14638363871916946
#>     Attrib V43    -0.811871716240626
#>     Attrib V44    -0.43946747489454946
#>     Attrib V45    -0.48348831240327916
#>     Attrib V46    -0.2953225575997407
#>     Attrib V47    -0.3798549467215836
#>     Attrib V48    -0.6086186903548186
#>     Attrib V49    -0.25537664488791734
#>     Attrib V5    -0.19307654806657948
#>     Attrib V50    0.7983437832107425
#>     Attrib V51    0.3821267650329977
#>     Attrib V52    -0.5962194535598522
#>     Attrib V53    0.008238570553134641
#>     Attrib V54    -0.11367626618935826
#>     Attrib V55    0.610063420172931
#>     Attrib V56    -0.4066881548675501
#>     Attrib V57    -0.25553355437605396
#>     Attrib V58    -0.8214421791144276
#>     Attrib V59    -0.8018925610072043
#>     Attrib V6    0.3848227752386167
#>     Attrib V60    -0.2381284847434338
#>     Attrib V7    -0.03389986572123823
#>     Attrib V8    0.26406848064548866
#>     Attrib V9    -0.4919279919713189
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1774415087899777
#>     Attrib V1    0.07396412154142397
#>     Attrib V10    0.05127464906889374
#>     Attrib V11    0.008117534301510451
#>     Attrib V12    0.006373656084197903
#>     Attrib V13    0.060041372486074114
#>     Attrib V14    0.026723049867626667
#>     Attrib V15    0.0075258010738427005
#>     Attrib V16    0.06188072569233372
#>     Attrib V17    0.05846628053688037
#>     Attrib V18    0.047390459808697764
#>     Attrib V19    -0.0022255867000242546
#>     Attrib V2    0.03731272952868712
#>     Attrib V20    -0.051413382813295445
#>     Attrib V21    -0.061816972654552674
#>     Attrib V22    -0.07010770355839414
#>     Attrib V23    -0.07989538008391456
#>     Attrib V24    -0.02410357224595292
#>     Attrib V25    -0.007688639547329461
#>     Attrib V26    -0.05185538301381702
#>     Attrib V27    -0.04529014239670576
#>     Attrib V28    -0.006609203510912739
#>     Attrib V29    -0.031493179596106896
#>     Attrib V3    0.12342913640234895
#>     Attrib V30    -0.04674519075584759
#>     Attrib V31    -0.020198920135588237
#>     Attrib V32    0.048516996940513105
#>     Attrib V33    0.030045542193529888
#>     Attrib V34    0.06701460227228549
#>     Attrib V35    0.03648065656334536
#>     Attrib V36    0.03128668407566512
#>     Attrib V37    0.07545409325376785
#>     Attrib V38    0.049034816089600496
#>     Attrib V39    0.058871027922729476
#>     Attrib V4    0.10317543404378751
#>     Attrib V40    0.029779851364714827
#>     Attrib V41    0.057615193806458465
#>     Attrib V42    0.0682716099253847
#>     Attrib V43    0.007825054666407387
#>     Attrib V44    -0.010168604061028003
#>     Attrib V45    0.052453944629647774
#>     Attrib V46    0.057837247966180165
#>     Attrib V47    0.03326990142730001
#>     Attrib V48    0.0012072749593698552
#>     Attrib V49    -0.0010057569170861143
#>     Attrib V5    0.08615969264850783
#>     Attrib V50    0.10116518633813153
#>     Attrib V51    0.11603908544085341
#>     Attrib V52    0.06240442310755098
#>     Attrib V53    0.1060441364230465
#>     Attrib V54    0.030299639143796547
#>     Attrib V55    0.07789054309004187
#>     Attrib V56    0.08143118001302387
#>     Attrib V57    0.10457882344681803
#>     Attrib V58    0.11672318182662961
#>     Attrib V59    0.011702464803583076
#>     Attrib V6    0.07289797304242235
#>     Attrib V60    0.09986010841921099
#>     Attrib V7    0.02036665980708273
#>     Attrib V8    0.025799726930532656
#>     Attrib V9    0.08917203974973274
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.02667483697911279
#>     Attrib V1    0.15821668749620785
#>     Attrib V10    0.10473042305500843
#>     Attrib V11    0.09643510461046632
#>     Attrib V12    0.01144768231367463
#>     Attrib V13    0.014817408090277309
#>     Attrib V14    -0.049883241285482646
#>     Attrib V15    0.10999218781627795
#>     Attrib V16    -0.00568102367022779
#>     Attrib V17    -0.0709766891373802
#>     Attrib V18    -0.1067701577762504
#>     Attrib V19    0.0650114718691789
#>     Attrib V2    0.1040985465541654
#>     Attrib V20    -0.0025789811601997802
#>     Attrib V21    -0.013689180402282461
#>     Attrib V22    0.01911442931110794
#>     Attrib V23    -0.09140457504732485
#>     Attrib V24    0.024640473300962112
#>     Attrib V25    -0.12918524367563153
#>     Attrib V26    -0.15874296639868743
#>     Attrib V27    -0.07183752729615886
#>     Attrib V28    0.007005951603366669
#>     Attrib V29    -0.07782651377591318
#>     Attrib V3    -0.016039627296375227
#>     Attrib V30    0.04358282101706578
#>     Attrib V31    -0.07848122059870699
#>     Attrib V32    0.005189539467319588
#>     Attrib V33    0.0657494237022538
#>     Attrib V34    0.04418733149733112
#>     Attrib V35    0.09971904447572259
#>     Attrib V36    -0.06923641627955585
#>     Attrib V37    -0.17516201508582038
#>     Attrib V38    0.08943794463761813
#>     Attrib V39    0.06615043159636408
#>     Attrib V4    0.09371406689709025
#>     Attrib V40    -0.10177840390599593
#>     Attrib V41    0.0059756168962695096
#>     Attrib V42    -0.030912589945451808
#>     Attrib V43    0.17341903021879035
#>     Attrib V44    0.20325747606627528
#>     Attrib V45    0.21143062199692997
#>     Attrib V46    0.04120987918498925
#>     Attrib V47    -0.019931012385920484
#>     Attrib V48    0.16693720464131048
#>     Attrib V49    0.02293775365260378
#>     Attrib V5    0.10802174197623553
#>     Attrib V50    -0.10160860545764609
#>     Attrib V51    0.0012647336445238738
#>     Attrib V52    0.10252785877967038
#>     Attrib V53    0.09116053097809648
#>     Attrib V54    0.08224451416105383
#>     Attrib V55    0.030936650212689383
#>     Attrib V56    0.150034604158458
#>     Attrib V57    0.20615140584702912
#>     Attrib V58    0.1556752503935254
#>     Attrib V59    0.2165096672996311
#>     Attrib V6    -0.015014997120670394
#>     Attrib V60    0.17276558122857136
#>     Attrib V7    -0.048882488256690705
#>     Attrib V8    0.008606553719139085
#>     Attrib V9    0.14563290176112176
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.15698274168838594
#>     Attrib V1    0.13167946755930585
#>     Attrib V10    0.08136901081115376
#>     Attrib V11    0.06356492828651862
#>     Attrib V12    0.01837473382976414
#>     Attrib V13    0.04082884862248853
#>     Attrib V14    0.00574392143422254
#>     Attrib V15    0.01437683725081654
#>     Attrib V16    -0.00894257025818866
#>     Attrib V17    -0.08848897575897452
#>     Attrib V18    -0.028824330425277406
#>     Attrib V19    -0.0260273650244475
#>     Attrib V2    0.07837084478312696
#>     Attrib V20    0.011253223004894975
#>     Attrib V21    0.011066809797075392
#>     Attrib V22    -0.04851143655649389
#>     Attrib V23    -0.058116734934984454
#>     Attrib V24    -0.038294279455927296
#>     Attrib V25    -0.05925474943319922
#>     Attrib V26    -0.06584442599085157
#>     Attrib V27    -0.02699936216940415
#>     Attrib V28    0.006525538050076437
#>     Attrib V29    -0.042423608850656984
#>     Attrib V3    0.09331483021032388
#>     Attrib V30    -0.02860887926841375
#>     Attrib V31    -0.09572207964289099
#>     Attrib V32    0.022622189898148466
#>     Attrib V33    0.026491186768817312
#>     Attrib V34    0.07981059176849922
#>     Attrib V35    0.031871192114619286
#>     Attrib V36    0.04310661044994728
#>     Attrib V37    -0.09027399521480865
#>     Attrib V38    0.03173149658281492
#>     Attrib V39    0.08464537227635459
#>     Attrib V4    0.07553575118878322
#>     Attrib V40    -0.04409830387015962
#>     Attrib V41    -0.0348556717264624
#>     Attrib V42    -0.003513395642353001
#>     Attrib V43    0.08687033590208715
#>     Attrib V44    0.1624870433083524
#>     Attrib V45    0.09705903546806738
#>     Attrib V46    0.055650727962568855
#>     Attrib V47    0.08048361605470322
#>     Attrib V48    0.10667614277667407
#>     Attrib V49    0.07943859472996381
#>     Attrib V5    0.11178258717444235
#>     Attrib V50    -0.07699249422349738
#>     Attrib V51    0.08691943058672953
#>     Attrib V52    0.09371075555194618
#>     Attrib V53    0.10716695742081092
#>     Attrib V54    0.05212980774103971
#>     Attrib V55    0.041086273878001865
#>     Attrib V56    0.13551872692271294
#>     Attrib V57    0.09506564289921139
#>     Attrib V58    0.15554403898464844
#>     Attrib V59    0.20914030272146217
#>     Attrib V6    -0.017449223517485807
#>     Attrib V60    0.1899559429531334
#>     Attrib V7    0.04371164977490733
#>     Attrib V8    0.045370642273622835
#>     Attrib V9    0.1253996673204742
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.34976284745796044
#>     Attrib V1    0.1676331069916204
#>     Attrib V10    0.5130065110605069
#>     Attrib V11    0.5654018427001336
#>     Attrib V12    0.4360388776626239
#>     Attrib V13    0.20397809257556168
#>     Attrib V14    -0.4382070263828745
#>     Attrib V15    -0.07669186441698643
#>     Attrib V16    -0.23989271529158981
#>     Attrib V17    -0.43363707789553013
#>     Attrib V18    -0.5220706622443447
#>     Attrib V19    0.23499827940906473
#>     Attrib V2    -0.005950570228010533
#>     Attrib V20    -0.0750609729434846
#>     Attrib V21    -0.08851617105077271
#>     Attrib V22    0.06817437267490369
#>     Attrib V23    -0.11162545945240637
#>     Attrib V24    0.26482918063900046
#>     Attrib V25    0.023695424672955344
#>     Attrib V26    0.25299156447761695
#>     Attrib V27    0.5754961476642131
#>     Attrib V28    0.816873803684075
#>     Attrib V29    0.2654001879255034
#>     Attrib V3    -0.43631378896952344
#>     Attrib V30    0.15441380960261697
#>     Attrib V31    -0.3601958926130861
#>     Attrib V32    -0.00559137690142169
#>     Attrib V33    -0.26864301144485264
#>     Attrib V34    0.09613863484453579
#>     Attrib V35    0.12289904318841847
#>     Attrib V36    -0.2713227904136928
#>     Attrib V37    -0.49503540947380426
#>     Attrib V38    0.060516622691315095
#>     Attrib V39    0.14857335684338263
#>     Attrib V4    0.07981184308644966
#>     Attrib V40    -0.05463415468541647
#>     Attrib V41    0.11697169417271171
#>     Attrib V42    -0.18827038151959452
#>     Attrib V43    0.1992898644235357
#>     Attrib V44    0.4239945379845939
#>     Attrib V45    0.5552189961559181
#>     Attrib V46    0.38891204354494
#>     Attrib V47    0.25623710978610303
#>     Attrib V48    0.6840909363427874
#>     Attrib V49    0.4147014198225379
#>     Attrib V5    0.2514684150490802
#>     Attrib V50    -0.7318023619819148
#>     Attrib V51    -0.18701942909060695
#>     Attrib V52    0.5760900187153112
#>     Attrib V53    0.24123691981693238
#>     Attrib V54    -0.08218207521059986
#>     Attrib V55    -0.45166372274290867
#>     Attrib V56    -0.16910471658515225
#>     Attrib V57    -0.13892050527928199
#>     Attrib V58    0.2906391625764513
#>     Attrib V59    0.5477044692580488
#>     Attrib V6    -0.0333616663917064
#>     Attrib V60    0.13409001871126033
#>     Attrib V7    -0.12826776567099732
#>     Attrib V8    -0.25354635223052
#>     Attrib V9    0.5343938133395629
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.33154308915336406
#>     Attrib V1    0.19201168619942427
#>     Attrib V10    0.3527067171131794
#>     Attrib V11    0.36951428473705616
#>     Attrib V12    0.24076222061072505
#>     Attrib V13    0.11904432633488295
#>     Attrib V14    -0.37751722132597554
#>     Attrib V15    -0.04599041826408775
#>     Attrib V16    -0.21129759891217473
#>     Attrib V17    -0.382378046731836
#>     Attrib V18    -0.4193755853276609
#>     Attrib V19    0.2238349014311319
#>     Attrib V2    -0.0820422106254141
#>     Attrib V20    -0.004985781914140346
#>     Attrib V21    0.006200868853549456
#>     Attrib V22    0.11103957973969973
#>     Attrib V23    0.010068566872916011
#>     Attrib V24    0.2515249783419702
#>     Attrib V25    -0.10887252613410679
#>     Attrib V26    0.049184274390240035
#>     Attrib V27    0.31676058956863135
#>     Attrib V28    0.5088942707585118
#>     Attrib V29    0.19205508300348592
#>     Attrib V3    -0.44643306380128317
#>     Attrib V30    0.16911283331253654
#>     Attrib V31    -0.3664280665177376
#>     Attrib V32    0.02487127615313514
#>     Attrib V33    -0.1954943142815083
#>     Attrib V34    0.056257517313744315
#>     Attrib V35    0.05878677398374672
#>     Attrib V36    -0.21135029852078902
#>     Attrib V37    -0.4899778416898799
#>     Attrib V38    0.08238132318797357
#>     Attrib V39    0.07389477445722134
#>     Attrib V4    -0.014496602955656497
#>     Attrib V40    -0.1784475000134841
#>     Attrib V41    0.04336501500193857
#>     Attrib V42    -0.1685247528256956
#>     Attrib V43    0.3989408062516969
#>     Attrib V44    0.5576962211739617
#>     Attrib V45    0.4773981170497042
#>     Attrib V46    0.24382741564523686
#>     Attrib V47    0.18290342031078802
#>     Attrib V48    0.611030256090173
#>     Attrib V49    0.26400145098273464
#>     Attrib V5    0.21110787567487974
#>     Attrib V50    -0.6549005974270636
#>     Attrib V51    -0.1265385229567063
#>     Attrib V52    0.5009560200672966
#>     Attrib V53    0.14974279630021234
#>     Attrib V54    -0.06955278751957979
#>     Attrib V55    -0.46749155051497765
#>     Attrib V56    0.016422838457913803
#>     Attrib V57    -0.07079974896883044
#>     Attrib V58    0.30110132614295726
#>     Attrib V59    0.5315742093958821
#>     Attrib V6    -0.1206599817787279
#>     Attrib V60    0.0857383170533512
#>     Attrib V7    -0.11954606553787313
#>     Attrib V8    -0.29387220055620294
#>     Attrib V9    0.442923458761301
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.17102564066241013
#>     Attrib V1    -0.31277334439420024
#>     Attrib V10    -0.30653805051389044
#>     Attrib V11    -0.38407449902517055
#>     Attrib V12    -0.10416781351370007
#>     Attrib V13    -0.1678517200374991
#>     Attrib V14    0.3341747565938652
#>     Attrib V15    -0.24778008325219253
#>     Attrib V16    0.21920308441745778
#>     Attrib V17    0.4703604229603428
#>     Attrib V18    0.5141675491374414
#>     Attrib V19    -0.4345385088724833
#>     Attrib V2    -0.05235431269222898
#>     Attrib V20    -0.31469586336611377
#>     Attrib V21    -0.17058029954076226
#>     Attrib V22    -0.5652122535848685
#>     Attrib V23    -0.6177811058313949
#>     Attrib V24    -0.5124152401977439
#>     Attrib V25    0.44723509649853976
#>     Attrib V26    0.7147325754336645
#>     Attrib V27    0.5153086382718448
#>     Attrib V28    0.0764693334801994
#>     Attrib V29    0.3655955946422354
#>     Attrib V3    0.33433786904998214
#>     Attrib V30    0.2708936500522614
#>     Attrib V31    1.035532150278543
#>     Attrib V32    0.007294714578676137
#>     Attrib V33    -0.005625682367528692
#>     Attrib V34    -0.16607928231307506
#>     Attrib V35    0.06648669832829614
#>     Attrib V36    0.5975698542534192
#>     Attrib V37    1.2578754638575531
#>     Attrib V38    0.05945677389441684
#>     Attrib V39    0.026237376427101347
#>     Attrib V4    0.011625525076127635
#>     Attrib V40    0.4767633524478041
#>     Attrib V41    0.15067723567603375
#>     Attrib V42    -0.11582330995093015
#>     Attrib V43    -0.6160701320069268
#>     Attrib V44    -0.31155481654273903
#>     Attrib V45    -0.4727595279694179
#>     Attrib V46    -0.3111851569405107
#>     Attrib V47    -0.3666541202916065
#>     Attrib V48    -0.5135477731946402
#>     Attrib V49    -0.25601094314604844
#>     Attrib V5    -0.1691434120678121
#>     Attrib V50    0.7020822167585378
#>     Attrib V51    0.3120268734640975
#>     Attrib V52    -0.5041472215440814
#>     Attrib V53    -0.01964437119388746
#>     Attrib V54    -0.043705424580986085
#>     Attrib V55    0.5032084094574424
#>     Attrib V56    -0.366483856102946
#>     Attrib V57    -0.04224255943764224
#>     Attrib V58    -0.6759147922594413
#>     Attrib V59    -0.5600658643592874
#>     Attrib V6    0.34183706159240024
#>     Attrib V60    -0.0820601521004906
#>     Attrib V7    0.0862123590137018
#>     Attrib V8    0.1856714629575018
#>     Attrib V9    -0.4419606258223159
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.07466253841291466
#>     Attrib V1    0.294558106666225
#>     Attrib V10    -0.06192664160931709
#>     Attrib V11    -0.08171383016875157
#>     Attrib V12    -0.1600549525505334
#>     Attrib V13    -0.11435061589717765
#>     Attrib V14    -0.14379558002809065
#>     Attrib V15    0.19406171589602064
#>     Attrib V16    0.05983223169092428
#>     Attrib V17    -0.11646712037035009
#>     Attrib V18    -0.1688372907131272
#>     Attrib V19    0.23280279317350994
#>     Attrib V2    0.007367765082184525
#>     Attrib V20    0.2441520929581776
#>     Attrib V21    0.1779875321471129
#>     Attrib V22    0.21502197868587455
#>     Attrib V23    0.22137899223302826
#>     Attrib V24    0.296958398185298
#>     Attrib V25    -0.35870934993682385
#>     Attrib V26    -0.7101995073660402
#>     Attrib V27    -0.6940918813745152
#>     Attrib V28    -0.4709367085709688
#>     Attrib V29    -0.4587062381598749
#>     Attrib V3    -0.15007406655664252
#>     Attrib V30    -0.24247203421094501
#>     Attrib V31    -0.529856240859552
#>     Attrib V32    0.008248599844038746
#>     Attrib V33    0.08003884375527945
#>     Attrib V34    0.11964076289796059
#>     Attrib V35    0.006046429516668667
#>     Attrib V36    -0.335355668376164
#>     Attrib V37    -0.743603087290572
#>     Attrib V38    -0.10095852395872643
#>     Attrib V39    -0.12151699627880612
#>     Attrib V4    0.06939392256669137
#>     Attrib V40    -0.3269379989520733
#>     Attrib V41    -0.19801336617583717
#>     Attrib V42    0.023161070988122485
#>     Attrib V43    0.4633268505198367
#>     Attrib V44    0.22889914777261208
#>     Attrib V45    0.1675689169202327
#>     Attrib V46    0.09708820387139197
#>     Attrib V47    0.01890802156473808
#>     Attrib V48    0.24509131052150418
#>     Attrib V49    0.04644481957039437
#>     Attrib V5    0.14035096321077745
#>     Attrib V50    -0.3188590880700084
#>     Attrib V51    -0.15019464353242098
#>     Attrib V52    0.2700438790217694
#>     Attrib V53    0.12226708545986559
#>     Attrib V54    0.24304046331411303
#>     Attrib V55    -0.1409499021358605
#>     Attrib V56    0.4451940965429614
#>     Attrib V57    0.38058420770241175
#>     Attrib V58    0.5645029526839918
#>     Attrib V59    0.5675601051606625
#>     Attrib V6    -0.15653804083390307
#>     Attrib V60    0.3309004403824813
#>     Attrib V7    0.07341368558990012
#>     Attrib V8    -0.19071748528258767
#>     Attrib V9    0.17120981493453605
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.20583597727252612
#>     Attrib V1    0.3308463311996078
#>     Attrib V10    0.013563005103115615
#>     Attrib V11    0.057921528920375845
#>     Attrib V12    -0.10498997900565213
#>     Attrib V13    -0.06917896461792197
#>     Attrib V14    -0.3046877384095905
#>     Attrib V15    0.24753026484425036
#>     Attrib V16    -0.11913666770816349
#>     Attrib V17    -0.23071914576335598
#>     Attrib V18    -0.3013606625331023
#>     Attrib V19    0.3692778702031804
#>     Attrib V2    -0.08592463700112588
#>     Attrib V20    0.25322849028601524
#>     Attrib V21    0.19275639385846352
#>     Attrib V22    0.4065450582413605
#>     Attrib V23    0.5167948203399366
#>     Attrib V24    0.4317272700606937
#>     Attrib V25    -0.44701008378826124
#>     Attrib V26    -0.8351341596460511
#>     Attrib V27    -0.820281528523014
#>     Attrib V28    -0.4212414834264631
#>     Attrib V29    -0.5824641768572413
#>     Attrib V3    -0.26081402842581314
#>     Attrib V30    -0.29480860180121027
#>     Attrib V31    -0.8674636460904374
#>     Attrib V32    0.009049730102634386
#>     Attrib V33    0.13192480093251882
#>     Attrib V34    0.1763928340007668
#>     Attrib V35    0.03493983103184878
#>     Attrib V36    -0.5218201395595229
#>     Attrib V37    -1.1288681094772348
#>     Attrib V38    -0.18306263483846005
#>     Attrib V39    -0.12679587828805516
#>     Attrib V4    0.08467435917265899
#>     Attrib V40    -0.5242548488759736
#>     Attrib V41    -0.1945319946164676
#>     Attrib V42    0.06805297707152239
#>     Attrib V43    0.6910134965683004
#>     Attrib V44    0.3893892165266498
#>     Attrib V45    0.40707131012403375
#>     Attrib V46    0.1867115192325423
#>     Attrib V47    0.23645443009312825
#>     Attrib V48    0.363569415599833
#>     Attrib V49    0.1259335958562616
#>     Attrib V5    0.15574937729893681
#>     Attrib V50    -0.5206206165433451
#>     Attrib V51    -0.23907516404726287
#>     Attrib V52    0.432767658458649
#>     Attrib V53    0.11435846907064998
#>     Attrib V54    0.18297648144908424
#>     Attrib V55    -0.3899834494805724
#>     Attrib V56    0.5050634393753058
#>     Attrib V57    0.35777312320672505
#>     Attrib V58    0.7101541991131153
#>     Attrib V59    0.7682635483195249
#>     Attrib V6    -0.25025025327054135
#>     Attrib V60    0.2657807968307657
#>     Attrib V7    0.06602136639520613
#>     Attrib V8    -0.2071175267514053
#>     Attrib V9    0.30767506833596886
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.13979788993489986
#>     Attrib V1    0.0681922860340823
#>     Attrib V10    8.961716897266757E-4
#>     Attrib V11    -0.016053118299360424
#>     Attrib V12    0.007258276115879257
#>     Attrib V13    -0.00484000264740082
#>     Attrib V14    0.07264966714624099
#>     Attrib V15    0.07142795355738801
#>     Attrib V16    0.013655078535839273
#>     Attrib V17    0.08390544055401823
#>     Attrib V18    0.005787643823703078
#>     Attrib V19    -0.04886710624102595
#>     Attrib V2    0.06753500496818081
#>     Attrib V20    -0.02996684996543422
#>     Attrib V21    -0.04064997202647547
#>     Attrib V22    -0.10188123789161828
#>     Attrib V23    -0.029293833033651698
#>     Attrib V24    -0.10625276338514031
#>     Attrib V25    -0.03871643414649049
#>     Attrib V26    0.00660150835190294
#>     Attrib V27    -0.06360154973355767
#>     Attrib V28    -0.02293284857209787
#>     Attrib V29    -0.03379473639287846
#>     Attrib V3    0.1070200044033478
#>     Attrib V30    -0.02715418272026246
#>     Attrib V31    0.012651972951568084
#>     Attrib V32    0.06543649219266999
#>     Attrib V33    0.009624016981274373
#>     Attrib V34    0.03435474585242424
#>     Attrib V35    0.042267956997484826
#>     Attrib V36    0.09004572456098153
#>     Attrib V37    0.05948651638626883
#>     Attrib V38    0.0366800650554786
#>     Attrib V39    0.038005195529878716
#>     Attrib V4    0.1190294931153712
#>     Attrib V40    0.10288016596918884
#>     Attrib V41    0.07579966744563027
#>     Attrib V42    0.006631489269794826
#>     Attrib V43    0.03619074162353229
#>     Attrib V44    -0.03364306450375387
#>     Attrib V45    -0.04092244965302942
#>     Attrib V46    0.028524103650260403
#>     Attrib V47    0.05580093047151354
#>     Attrib V48    -0.017571821218296122
#>     Attrib V49    -0.017330869256996943
#>     Attrib V5    0.028822265025671593
#>     Attrib V50    0.13081313773064382
#>     Attrib V51    0.10465882112709071
#>     Attrib V52    0.05502566948396762
#>     Attrib V53    0.016645121532333978
#>     Attrib V54    0.02428759687364691
#>     Attrib V55    0.0923470191417652
#>     Attrib V56    0.08823403897077889
#>     Attrib V57    0.1182883263627788
#>     Attrib V58    0.05627169397870509
#>     Attrib V59    0.01365719105891273
#>     Attrib V6    0.0941783946571879
#>     Attrib V60    0.04456354425124771
#>     Attrib V7    0.0030643214352383407
#>     Attrib V8    0.08123703303125429
#>     Attrib V9    0.07932869971309262
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.32951356959572375
#>     Attrib V1    0.40658012921771114
#>     Attrib V10    1.283712373150075
#>     Attrib V11    1.484125149673658
#>     Attrib V12    1.0920571455045052
#>     Attrib V13    0.4873143898887185
#>     Attrib V14    -0.5365857462255489
#>     Attrib V15    -0.3583949272796682
#>     Attrib V16    -0.32888993477642353
#>     Attrib V17    -0.7202358934186502
#>     Attrib V18    -0.8265963627334152
#>     Attrib V19    0.3881121714940114
#>     Attrib V2    0.40284932547597346
#>     Attrib V20    0.049961115925259446
#>     Attrib V21    0.18628767145374056
#>     Attrib V22    0.40167470274169226
#>     Attrib V23    -0.04649798675196995
#>     Attrib V24    0.220185575033858
#>     Attrib V25    0.2362242781622008
#>     Attrib V26    1.278584361858403
#>     Attrib V27    1.8138742167044
#>     Attrib V28    1.9410604605355406
#>     Attrib V29    0.9990822767523494
#>     Attrib V3    -0.2641082610478195
#>     Attrib V30    0.43818553947931643
#>     Attrib V31    -0.4773124230724501
#>     Attrib V32    -0.0932544033094509
#>     Attrib V33    -0.9185348482479808
#>     Attrib V34    -0.2320904205249084
#>     Attrib V35    -0.13250274904674955
#>     Attrib V36    -0.5849184726249183
#>     Attrib V37    -0.11775258988251601
#>     Attrib V38    0.4601141060741963
#>     Attrib V39    0.7464206875779171
#>     Attrib V4    0.2795079956886986
#>     Attrib V40    0.4652530327573463
#>     Attrib V41    0.6186397285452124
#>     Attrib V42    -0.514172635586564
#>     Attrib V43    -0.3334507136882061
#>     Attrib V44    0.50240642581898
#>     Attrib V45    0.8550665329719676
#>     Attrib V46    0.6524911323977802
#>     Attrib V47    0.6025515273476862
#>     Attrib V48    1.0712848983675316
#>     Attrib V49    0.7989032355338568
#>     Attrib V5    0.41233345819602957
#>     Attrib V50    -1.18315641886476
#>     Attrib V51    0.016584795101684178
#>     Attrib V52    1.102017204341803
#>     Attrib V53    0.2753710004638397
#>     Attrib V54    -0.08130625258831126
#>     Attrib V55    -0.5072453879801155
#>     Attrib V56    -0.2789955126197942
#>     Attrib V57    -0.8733844249568198
#>     Attrib V58    -0.12386423459835075
#>     Attrib V59    0.40613788163245934
#>     Attrib V6    0.09446902523885996
#>     Attrib V60    0.10053998695285085
#>     Attrib V7    -0.2947375820535605
#>     Attrib V8    -0.07106545317923157
#>     Attrib V9    1.1466953559962028
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20148688598231457
#>     Attrib V1    -0.06003466336447604
#>     Attrib V10    -0.1788605706281678
#>     Attrib V11    -0.24250003648344007
#>     Attrib V12    -0.105243185567036
#>     Attrib V13    -0.11568704890539203
#>     Attrib V14    0.20639362095595434
#>     Attrib V15    -0.06017504830335942
#>     Attrib V16    0.05655514531342972
#>     Attrib V17    0.17623923208702982
#>     Attrib V18    0.1497560829578718
#>     Attrib V19    -0.08993515433536643
#>     Attrib V2    0.03882119987149317
#>     Attrib V20    -0.025639301018166406
#>     Attrib V21    0.01903988812336769
#>     Attrib V22    -0.10725741151343285
#>     Attrib V23    -0.05080213123408433
#>     Attrib V24    -0.11870337150400423
#>     Attrib V25    0.15759998003392245
#>     Attrib V26    0.11096831036351147
#>     Attrib V27    0.044759981865843186
#>     Attrib V28    -0.07270989701100601
#>     Attrib V29    0.022765203992559557
#>     Attrib V3    0.1661370677530649
#>     Attrib V30    -0.04956700412961531
#>     Attrib V31    0.1858183980562378
#>     Attrib V32    -0.07159278938389856
#>     Attrib V33    0.10978184114623031
#>     Attrib V34    -0.022633501624458895
#>     Attrib V35    0.07453599417549636
#>     Attrib V36    0.20018492502069676
#>     Attrib V37    0.33902939930124687
#>     Attrib V38    -0.10069562311018791
#>     Attrib V39    -0.05062041226321748
#>     Attrib V4    0.047460870703007495
#>     Attrib V40    0.11577331772128995
#>     Attrib V41    0.012036961793025344
#>     Attrib V42    0.07166266458310953
#>     Attrib V43    -0.188678593697027
#>     Attrib V44    -0.22059784174927216
#>     Attrib V45    -0.2557820772781799
#>     Attrib V46    -0.16393583120382443
#>     Attrib V47    -0.1531358297554599
#>     Attrib V48    -0.28120587891297455
#>     Attrib V49    -0.170993258921927
#>     Attrib V5    -0.10382387555823099
#>     Attrib V50    0.31238157931710353
#>     Attrib V51    0.0685432972921449
#>     Attrib V52    -0.2663624422458168
#>     Attrib V53    -0.047608511702408006
#>     Attrib V54    0.012837044208616156
#>     Attrib V55    0.23013089946706897
#>     Attrib V56    -0.012250637256387552
#>     Attrib V57    0.11724057101600921
#>     Attrib V58    -0.1441140904450728
#>     Attrib V59    -0.1528045174626532
#>     Attrib V6    0.1502786378576926
#>     Attrib V60    0.042966175419054904
#>     Attrib V7    0.037620013694560736
#>     Attrib V8    0.1360671307009093
#>     Attrib V9    -0.22829450258470765
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3761460710408672
#>     Attrib V1    0.21590777173564846
#>     Attrib V10    0.4263030498982525
#>     Attrib V11    0.4504177622704601
#>     Attrib V12    0.24459616330096665
#>     Attrib V13    0.1549561067339852
#>     Attrib V14    -0.47194681473893607
#>     Attrib V15    -0.06351576564922792
#>     Attrib V16    -0.20958936409884155
#>     Attrib V17    -0.4362700184201057
#>     Attrib V18    -0.42201873059041844
#>     Attrib V19    0.2011371623079724
#>     Attrib V2    -0.0764582054384786
#>     Attrib V20    -0.07612514794868684
#>     Attrib V21    -0.0405066873747292
#>     Attrib V22    0.0917916958491524
#>     Attrib V23    -0.025433524217784498
#>     Attrib V24    0.29031914541134585
#>     Attrib V25    -0.10064824882762549
#>     Attrib V26    0.09957805684286317
#>     Attrib V27    0.3006720541375727
#>     Attrib V28    0.5273935542624745
#>     Attrib V29    0.1496220871427874
#>     Attrib V3    -0.4460886866341383
#>     Attrib V30    0.12146689950052954
#>     Attrib V31    -0.40138742686308426
#>     Attrib V32    0.05544746987159602
#>     Attrib V33    -0.2087934515615819
#>     Attrib V34    0.13454576270453136
#>     Attrib V35    0.0754827127819729
#>     Attrib V36    -0.2804990451252624
#>     Attrib V37    -0.5613835068540849
#>     Attrib V38    0.039941056490630816
#>     Attrib V39    0.1070082880622623
#>     Attrib V4    0.0031007413279028756
#>     Attrib V40    -0.23291069945911252
#>     Attrib V41    0.02278040139487677
#>     Attrib V42    -0.17600534342140725
#>     Attrib V43    0.3049149484262421
#>     Attrib V44    0.5359707029582188
#>     Attrib V45    0.536879162667538
#>     Attrib V46    0.2604684835443503
#>     Attrib V47    0.20544535479655304
#>     Attrib V48    0.6625652956831641
#>     Attrib V49    0.26184515139775166
#>     Attrib V5    0.17665073512770774
#>     Attrib V50    -0.6205729720283517
#>     Attrib V51    -0.16734245418617533
#>     Attrib V52    0.5131103338823941
#>     Attrib V53    0.1731322209131879
#>     Attrib V54    -0.055813703044224124
#>     Attrib V55    -0.47514016627969063
#>     Attrib V56    -0.08032036396217147
#>     Attrib V57    -0.060684846521131285
#>     Attrib V58    0.3071212328826943
#>     Attrib V59    0.5178872060513093
#>     Attrib V6    -0.07845797071160959
#>     Attrib V60    0.08650566442875843
#>     Attrib V7    -0.16993620409225577
#>     Attrib V8    -0.22296795221257215
#>     Attrib V9    0.5074472769763291
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.2968336969717758
#>     Attrib V1    -0.4444025590240704
#>     Attrib V10    -0.47653644699689884
#>     Attrib V11    -0.7179204693975314
#>     Attrib V12    -0.4959397440180825
#>     Attrib V13    -0.3810380838842425
#>     Attrib V14    0.4175001419321691
#>     Attrib V15    -0.23832529687194545
#>     Attrib V16    0.42594302650209537
#>     Attrib V17    0.721017006931346
#>     Attrib V18    0.8230522351689619
#>     Attrib V19    -0.5584375924425983
#>     Attrib V2    -0.1863649012095269
#>     Attrib V20    -0.40850115106627066
#>     Attrib V21    -0.18917466328117258
#>     Attrib V22    -0.644263039704195
#>     Attrib V23    -0.6922984291133286
#>     Attrib V24    -0.5916366574508137
#>     Attrib V25    0.45159006284981995
#>     Attrib V26    0.5373582917526231
#>     Attrib V27    0.20551897291695115
#>     Attrib V28    -0.2766368329492857
#>     Attrib V29    0.1665725882359552
#>     Attrib V3    0.46723739671353604
#>     Attrib V30    0.19520985956947046
#>     Attrib V31    1.077460382053546
#>     Attrib V32    0.09644285009932461
#>     Attrib V33    0.1830668002561771
#>     Attrib V34    -0.1378507465977238
#>     Attrib V35    0.19319285067816602
#>     Attrib V36    0.926422221055296
#>     Attrib V37    1.4331384154563762
#>     Attrib V38    0.056075519506706195
#>     Attrib V39    -0.058652456051457594
#>     Attrib V4    0.06357885020797678
#>     Attrib V40    0.3752407701675819
#>     Attrib V41    0.0711476990503777
#>     Attrib V42    0.043803028678691326
#>     Attrib V43    -0.5131372641118789
#>     Attrib V44    -0.16405887659936433
#>     Attrib V45    -0.4980679448595028
#>     Attrib V46    -0.42111300410641556
#>     Attrib V47    -0.6199910178955753
#>     Attrib V48    -0.7852454813187387
#>     Attrib V49    -0.36755089661353674
#>     Attrib V5    -0.24330038679101768
#>     Attrib V50    0.9689223290216815
#>     Attrib V51    0.316403250012528
#>     Attrib V52    -0.7233726076808528
#>     Attrib V53    -0.027387880670075308
#>     Attrib V54    0.06650481924060975
#>     Attrib V55    0.6587031588117097
#>     Attrib V56    -0.2869706155180565
#>     Attrib V57    0.15584601805766435
#>     Attrib V58    -0.5968822902058322
#>     Attrib V59    -0.544160894227404
#>     Attrib V6    0.49707167740642466
#>     Attrib V60    -0.004756080745875447
#>     Attrib V7    0.21075918795486798
#>     Attrib V8    0.42862579879905033
#>     Attrib V9    -0.45722008853009066
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.13057771883155123
#>     Attrib V1    0.15590326381494787
#>     Attrib V10    0.06855678125302135
#>     Attrib V11    0.16885421770113046
#>     Attrib V12    0.07988611970782934
#>     Attrib V13    0.04205778099602193
#>     Attrib V14    -0.14027344377261514
#>     Attrib V15    0.11565651952892152
#>     Attrib V16    -0.08618439721650092
#>     Attrib V17    -0.2156130620827702
#>     Attrib V18    -0.2261670601258929
#>     Attrib V19    0.1901318377856726
#>     Attrib V2    -0.03344619178511694
#>     Attrib V20    0.1885897694631864
#>     Attrib V21    0.14406219459863476
#>     Attrib V22    0.22011092637257385
#>     Attrib V23    0.12580254864860343
#>     Attrib V24    0.24863819723799033
#>     Attrib V25    -0.17260841825488
#>     Attrib V26    -0.39058996212486335
#>     Attrib V27    -0.25370853886291356
#>     Attrib V28    -0.043505761158672704
#>     Attrib V29    -0.15513891586861203
#>     Attrib V3    -0.1649163487699141
#>     Attrib V30    -0.14485314010525038
#>     Attrib V31    -0.4189041103543081
#>     Attrib V32    0.05627435605783661
#>     Attrib V33    1.8699874219690296E-4
#>     Attrib V34    0.08814215440909691
#>     Attrib V35    0.016173161585332683
#>     Attrib V36    -0.31575781045737267
#>     Attrib V37    -0.5511906393874769
#>     Attrib V38    -0.014477485850115499
#>     Attrib V39    6.377529885262705E-4
#>     Attrib V4    0.003331561655405837
#>     Attrib V40    -0.25020705104444885
#>     Attrib V41    -0.0743930879395481
#>     Attrib V42    -0.07352586772602832
#>     Attrib V43    0.34309113404797836
#>     Attrib V44    0.20807064623810567
#>     Attrib V45    0.3040778588895467
#>     Attrib V46    0.128330200977615
#>     Attrib V47    0.12330849962464902
#>     Attrib V48    0.2663706436924612
#>     Attrib V49    0.061739072388201414
#>     Attrib V5    0.08802964918804529
#>     Attrib V50    -0.3550680615043787
#>     Attrib V51    -0.11537963245920546
#>     Attrib V52    0.3349877391801422
#>     Attrib V53    0.09787426124884493
#>     Attrib V54    0.0889491572266347
#>     Attrib V55    -0.178527544785296
#>     Attrib V56    0.22258685475095924
#>     Attrib V57    0.18159980599309067
#>     Attrib V58    0.3376647433597184
#>     Attrib V59    0.3943506081899555
#>     Attrib V6    -0.13834640875324763
#>     Attrib V60    0.15768710284433082
#>     Attrib V7    -0.05993325540375076
#>     Attrib V8    -0.14458133271976864
#>     Attrib V9    0.22786737390303852
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.07988061543877768
#>     Attrib V1    0.1703951486542302
#>     Attrib V10    0.11769657479802395
#>     Attrib V11    0.0833029282204581
#>     Attrib V12    0.08724777690023017
#>     Attrib V13    0.09736408864434294
#>     Attrib V14    -0.007229681463420135
#>     Attrib V15    0.05919010099487677
#>     Attrib V16    -0.013955872393621699
#>     Attrib V17    -0.040899470995601594
#>     Attrib V18    -0.10244705933634904
#>     Attrib V19    0.004903479513134853
#>     Attrib V2    0.08173649813646348
#>     Attrib V20    -0.025639779284890054
#>     Attrib V21    0.004203229760018873
#>     Attrib V22    -0.05001976807554794
#>     Attrib V23    -0.07092402533709201
#>     Attrib V24    -0.031208543246626152
#>     Attrib V25    -0.056948607632394135
#>     Attrib V26    -0.06306094455444743
#>     Attrib V27    -0.042002049163073006
#>     Attrib V28    0.05392077813535894
#>     Attrib V29    -0.059401181907795954
#>     Attrib V3    -7.307040068894871E-4
#>     Attrib V30    0.047181471379231794
#>     Attrib V31    -0.03489823084138074
#>     Attrib V32    0.019521609299217254
#>     Attrib V33    -0.004388682874735799
#>     Attrib V34    0.03597817096764945
#>     Attrib V35    0.07655815125242149
#>     Attrib V36    -0.05618890978988214
#>     Attrib V37    -0.08177056478164563
#>     Attrib V38    0.025123122314683
#>     Attrib V39    0.10998948929859577
#>     Attrib V4    0.12963291262786694
#>     Attrib V40    -0.022438107817836367
#>     Attrib V41    0.007450186464867678
#>     Attrib V42    0.02839713387940589
#>     Attrib V43    0.09492283108812732
#>     Attrib V44    0.11026526146578167
#>     Attrib V45    0.1621730325606347
#>     Attrib V46    0.07052971428538433
#>     Attrib V47    0.01243807719537283
#>     Attrib V48    0.15148861279761294
#>     Attrib V49    0.03678779169407279
#>     Attrib V5    0.06979234799254755
#>     Attrib V50    -0.09827070496040884
#>     Attrib V51    -0.0017595048668120814
#>     Attrib V52    0.13662172668370265
#>     Attrib V53    0.12107270342602702
#>     Attrib V54    0.0976263202200891
#>     Attrib V55    -0.014736434329943952
#>     Attrib V56    0.16713823191686986
#>     Attrib V57    0.124925525478906
#>     Attrib V58    0.2043246481100867
#>     Attrib V59    0.271714981519606
#>     Attrib V6    0.004402247365325631
#>     Attrib V60    0.18992855752490087
#>     Attrib V7    -0.036914959813736575
#>     Attrib V8    -0.028598292323135554
#>     Attrib V9    0.1133950594987868
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.07293194895886591
#>     Attrib V1    0.15040986907876716
#>     Attrib V10    0.04117852551232862
#>     Attrib V11    0.09222293445545046
#>     Attrib V12    0.0021705482375744133
#>     Attrib V13    0.07630252901551182
#>     Attrib V14    0.018765155060024644
#>     Attrib V15    0.08215112726206553
#>     Attrib V16    -0.00877214248999429
#>     Attrib V17    -0.041831091546222596
#>     Attrib V18    -0.061062347805005045
#>     Attrib V19    0.050004737335777635
#>     Attrib V2    0.09869193535044857
#>     Attrib V20    0.06537125530052312
#>     Attrib V21    -0.03628954472008518
#>     Attrib V22    0.013616990868350382
#>     Attrib V23    -0.007316918972126315
#>     Attrib V24    0.0464454310110125
#>     Attrib V25    -0.13933329249235468
#>     Attrib V26    -0.15405323700154155
#>     Attrib V27    -0.15406489310092353
#>     Attrib V28    -0.08519410723088755
#>     Attrib V29    -0.11395923720043484
#>     Attrib V3    -0.03962561371628752
#>     Attrib V30    -0.045476798942796506
#>     Attrib V31    -0.11067130877598019
#>     Attrib V32    0.016381866001599413
#>     Attrib V33    0.05293589403157571
#>     Attrib V34    0.08476057191110103
#>     Attrib V35    0.09646900427270033
#>     Attrib V36    -0.06967866396633085
#>     Attrib V37    -0.14876351042868718
#>     Attrib V38    0.07072961265311697
#>     Attrib V39    -0.00754090309121448
#>     Attrib V4    0.11663466819648707
#>     Attrib V40    -0.0921711014468546
#>     Attrib V41    -0.06333013691894436
#>     Attrib V42    -0.037146352714356706
#>     Attrib V43    0.15719832971898245
#>     Attrib V44    0.18047190688054937
#>     Attrib V45    0.12796472848282403
#>     Attrib V46    0.06201571177866603
#>     Attrib V47    0.031632026030829416
#>     Attrib V48    0.12511634854906528
#>     Attrib V49    0.046749929293633787
#>     Attrib V5    0.08894415608588743
#>     Attrib V50    -0.10185502541592491
#>     Attrib V51    -0.018884164168513472
#>     Attrib V52    0.1309729817249218
#>     Attrib V53    0.14422428724889605
#>     Attrib V54    0.16467183609047373
#>     Attrib V55    0.03711456313886666
#>     Attrib V56    0.10915852988163899
#>     Attrib V57    0.16890173390983115
#>     Attrib V58    0.16699094172082127
#>     Attrib V59    0.24435389115067593
#>     Attrib V6    -0.035645828010798165
#>     Attrib V60    0.1710950917746851
#>     Attrib V7    0.009488866865711933
#>     Attrib V8    -0.024799270348131154
#>     Attrib V9    0.14878689502084416
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.10925419199381899
#>     Attrib V1    0.15577784813592777
#>     Attrib V10    0.009717444838991845
#>     Attrib V11    0.06706496287133887
#>     Attrib V12    0.03482239509046918
#>     Attrib V13    0.01294221014802829
#>     Attrib V14    0.05707060607489301
#>     Attrib V15    0.0608784388682394
#>     Attrib V16    0.021324978592171952
#>     Attrib V17    -0.07303945148895113
#>     Attrib V18    -0.01582053397119685
#>     Attrib V19    -0.020939236708237774
#>     Attrib V2    0.04974597014210006
#>     Attrib V20    0.015030603364173606
#>     Attrib V21    0.002559789636976179
#>     Attrib V22    -0.057895034594328966
#>     Attrib V23    -0.03392574050203282
#>     Attrib V24    -0.026684423945490313
#>     Attrib V25    -0.1288766323002648
#>     Attrib V26    -0.12197775317349648
#>     Attrib V27    -0.06851636986897751
#>     Attrib V28    0.024348669052505118
#>     Attrib V29    -0.03456282766352812
#>     Attrib V3    0.07119324682707293
#>     Attrib V30    0.03301592157107611
#>     Attrib V31    -0.11383681436570871
#>     Attrib V32    0.013879506842022323
#>     Attrib V33    0.04576612694897356
#>     Attrib V34    0.06651385067494445
#>     Attrib V35    0.07418609623593343
#>     Attrib V36    0.044932700082136054
#>     Attrib V37    -0.06522398641274453
#>     Attrib V38    0.01812886230459357
#>     Attrib V39    0.06652587339089362
#>     Attrib V4    0.08199418749800458
#>     Attrib V40    -0.048368432962043496
#>     Attrib V41    -0.03710844149527393
#>     Attrib V42    0.020583100934351645
#>     Attrib V43    0.05722366442934848
#>     Attrib V44    0.1474473073989099
#>     Attrib V45    0.1706937136721848
#>     Attrib V46    0.0702097709058711
#>     Attrib V47    0.024845466476377663
#>     Attrib V48    0.061478212644858476
#>     Attrib V49    0.08435787346995086
#>     Attrib V5    0.11218914191952259
#>     Attrib V50    -0.06592286832543466
#>     Attrib V51    0.046904160119906356
#>     Attrib V52    0.13272232546744128
#>     Attrib V53    0.11216268076442872
#>     Attrib V54    0.05462290872950276
#>     Attrib V55    0.00787917534755462
#>     Attrib V56    0.11441413995429975
#>     Attrib V57    0.13045750574377582
#>     Attrib V58    0.21375771140158745
#>     Attrib V59    0.17552102645946616
#>     Attrib V6    0.030386990088337163
#>     Attrib V60    0.14554253822488117
#>     Attrib V7    0.012798838310712183
#>     Attrib V8    0.044961375578702584
#>     Attrib V9    0.13483247821267888
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
#>  0.1449275 
```
