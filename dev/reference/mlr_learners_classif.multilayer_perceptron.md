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
#>     Threshold    -0.19783748925794148
#>     Node 2    2.651118029456778
#>     Node 3    1.6058965850236417
#>     Node 4    1.2523032231381255
#>     Node 5    -3.0054679105198896
#>     Node 6    1.2016889932324344
#>     Node 7    2.6378048945246957
#>     Node 8    0.6275630487619296
#>     Node 9    2.722506162583387
#>     Node 10    -1.2059591227929294
#>     Node 11    1.4846077158953135
#>     Node 12    1.599909666372891
#>     Node 13    1.063292409736176
#>     Node 14    1.5009613703124864
#>     Node 15    -2.7029946837467786
#>     Node 16    0.2711281776976872
#>     Node 17    0.6710735922801425
#>     Node 18    -0.5255226466945102
#>     Node 19    1.9738830827953426
#>     Node 20    1.999276164146708
#>     Node 21    -2.341339052865312
#>     Node 22    0.7266971823210652
#>     Node 23    0.8471089506635875
#>     Node 24    -1.4306431825686405
#>     Node 25    2.7317410361646663
#>     Node 26    0.0376933952575675
#>     Node 27    1.8181179290074079
#>     Node 28    -3.1424823720016803
#>     Node 29    1.549362185089194
#>     Node 30    0.1320380178749646
#>     Node 31    0.8256785312010924
#>     Node 32    0.6257896464230488
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.21758425640523138
#>     Node 2    -2.6948163567784444
#>     Node 3    -1.5813623433917656
#>     Node 4    -1.2106012369342534
#>     Node 5    3.0327621590139855
#>     Node 6    -1.174575843606492
#>     Node 7    -2.6355734195864278
#>     Node 8    -0.6628392449961906
#>     Node 9    -2.737844298002675
#>     Node 10    1.131813863212458
#>     Node 11    -1.4545263522881189
#>     Node 12    -1.6751597509818108
#>     Node 13    -1.0047713944258332
#>     Node 14    -1.4320669262251242
#>     Node 15    2.6891764195593733
#>     Node 16    -0.28858460262621516
#>     Node 17    -0.638088910097987
#>     Node 18    0.5612444188401406
#>     Node 19    -1.9693535232859112
#>     Node 20    -1.980590068228584
#>     Node 21    2.3926435515187903
#>     Node 22    -0.7767084834559477
#>     Node 23    -0.8903689001563967
#>     Node 24    1.408316260342359
#>     Node 25    -2.727438713620141
#>     Node 26    -0.12361614138755864
#>     Node 27    -1.8564179140030996
#>     Node 28    3.104843990503834
#>     Node 29    -1.5797361645444226
#>     Node 30    -0.05723054212562641
#>     Node 31    -0.7671804479263433
#>     Node 32    -0.6428347537795277
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.5467380667409535
#>     Attrib V1    0.8330085657218537
#>     Attrib V10    0.43360543714572725
#>     Attrib V11    0.8834629126140692
#>     Attrib V12    0.7506821921427901
#>     Attrib V13    0.5179092218532169
#>     Attrib V14    -0.2302068682434205
#>     Attrib V15    -0.0019991292178489326
#>     Attrib V16    -0.5123135109392537
#>     Attrib V17    -0.23359070263893253
#>     Attrib V18    -0.3303263989937354
#>     Attrib V19    0.2855842630112239
#>     Attrib V2    0.10429278096691617
#>     Attrib V20    0.7964479378173036
#>     Attrib V21    0.754646684668784
#>     Attrib V22    0.7729308505759831
#>     Attrib V23    1.162954324500387
#>     Attrib V24    0.8989553399682669
#>     Attrib V25    -0.1627048708992652
#>     Attrib V26    -1.025948607460852
#>     Attrib V27    -0.19571430869918668
#>     Attrib V28    0.3253813580978014
#>     Attrib V29    -0.9592873407285646
#>     Attrib V3    0.0878992462920898
#>     Attrib V30    0.14344659207523958
#>     Attrib V31    -0.6537992405197771
#>     Attrib V32    0.20540123690458106
#>     Attrib V33    0.39593244444692666
#>     Attrib V34    -0.12580408820011804
#>     Attrib V35    -0.10549165321636994
#>     Attrib V36    -0.9816667036260296
#>     Attrib V37    -1.3852419456379832
#>     Attrib V38    0.8263202916469037
#>     Attrib V39    0.5166211647237041
#>     Attrib V4    -0.23533394839906271
#>     Attrib V40    -0.05614054448842441
#>     Attrib V41    -0.1450330577936911
#>     Attrib V42    0.0344236474698264
#>     Attrib V43    0.18714434063389015
#>     Attrib V44    0.24471780017506675
#>     Attrib V45    0.21912052619434047
#>     Attrib V46    -0.21408426575885892
#>     Attrib V47    -0.2190295006618415
#>     Attrib V48    -0.2861303061038259
#>     Attrib V49    0.7594455903278525
#>     Attrib V5    0.5980216856691507
#>     Attrib V50    -0.22907252583123738
#>     Attrib V51    -0.2390354785583828
#>     Attrib V52    0.5486808377269128
#>     Attrib V53    0.24154956037813752
#>     Attrib V54    0.0260501889378152
#>     Attrib V55    -0.46079759102792495
#>     Attrib V56    0.415105850538582
#>     Attrib V57    -0.3645161527234045
#>     Attrib V58    0.7185741160785429
#>     Attrib V59    0.23480799724230347
#>     Attrib V6    -0.26497575375604515
#>     Attrib V60    0.7703466888844932
#>     Attrib V7    0.15141125872256686
#>     Attrib V8    -0.5234472192688794
#>     Attrib V9    0.7794668522232268
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.28221393619875607
#>     Attrib V1    0.5020367514052395
#>     Attrib V10    0.16268899801191022
#>     Attrib V11    0.4283976144934091
#>     Attrib V12    0.37637960339519144
#>     Attrib V13    0.2822202747296945
#>     Attrib V14    -0.10162479195609138
#>     Attrib V15    0.10441525054086492
#>     Attrib V16    -0.2815561137428202
#>     Attrib V17    -0.09301082444533139
#>     Attrib V18    -0.1992700557291287
#>     Attrib V19    0.22336000230726952
#>     Attrib V2    0.12861858169096047
#>     Attrib V20    0.4920045336417459
#>     Attrib V21    0.4264993813442175
#>     Attrib V22    0.44565079476802755
#>     Attrib V23    0.6694981523193652
#>     Attrib V24    0.49475966577158204
#>     Attrib V25    -0.1269466734674948
#>     Attrib V26    -0.7268585062562765
#>     Attrib V27    -0.24623213435802688
#>     Attrib V28    0.10962888542319117
#>     Attrib V29    -0.6910825684044597
#>     Attrib V3    0.09010285700840648
#>     Attrib V30    0.032249000913992
#>     Attrib V31    -0.3893593209692201
#>     Attrib V32    0.13757689191085942
#>     Attrib V33    0.30897078987262977
#>     Attrib V34    -0.07222518111525407
#>     Attrib V35    -0.02782372974691552
#>     Attrib V36    -0.6192354186243945
#>     Attrib V37    -0.8424690229929653
#>     Attrib V38    0.3808077375187316
#>     Attrib V39    0.3028686907664466
#>     Attrib V4    -0.08752338014748699
#>     Attrib V40    -0.04761868772193878
#>     Attrib V41    -0.10870145147588804
#>     Attrib V42    0.0356482111610404
#>     Attrib V43    0.06916484379261194
#>     Attrib V44    0.1384480355632159
#>     Attrib V45    0.13739155199780637
#>     Attrib V46    -0.11581765882275179
#>     Attrib V47    -0.08693775879181286
#>     Attrib V48    -0.1828972282725448
#>     Attrib V49    0.4193357304096318
#>     Attrib V5    0.38267510442096664
#>     Attrib V50    -0.1262343371289704
#>     Attrib V51    -0.1789473809647548
#>     Attrib V52    0.3733997336184405
#>     Attrib V53    0.14995531403345827
#>     Attrib V54    0.14413821584569697
#>     Attrib V55    -0.12293456787354519
#>     Attrib V56    0.27945284949590193
#>     Attrib V57    -0.10236970024696897
#>     Attrib V58    0.5341295401476562
#>     Attrib V59    0.1533315507332071
#>     Attrib V6    -0.17391976806070708
#>     Attrib V60    0.4154289778423965
#>     Attrib V7    0.026087418106400515
#>     Attrib V8    -0.34729621142886197
#>     Attrib V9    0.39241053017271604
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.30908081192124115
#>     Attrib V1    0.3087171764545418
#>     Attrib V10    0.10905371277832433
#>     Attrib V11    0.39119303759057217
#>     Attrib V12    0.31724126409515335
#>     Attrib V13    0.25315761822285043
#>     Attrib V14    -0.09603453605335979
#>     Attrib V15    0.034585624709125844
#>     Attrib V16    -0.30418798800932245
#>     Attrib V17    -0.11178547361386224
#>     Attrib V18    -0.2003586837774623
#>     Attrib V19    0.10066234431041937
#>     Attrib V2    0.02328947389029908
#>     Attrib V20    0.3124909975927387
#>     Attrib V21    0.2927243795545544
#>     Attrib V22    0.12523652692214435
#>     Attrib V23    0.4027012749785704
#>     Attrib V24    0.31185356701650796
#>     Attrib V25    -0.22007540271334647
#>     Attrib V26    -0.5725375796687507
#>     Attrib V27    -0.10081929878596532
#>     Attrib V28    0.335292741286866
#>     Attrib V29    -0.31274737052559143
#>     Attrib V3    0.01951474715804692
#>     Attrib V30    0.03205033332228136
#>     Attrib V31    -0.32409744757488496
#>     Attrib V32    0.05537957888116705
#>     Attrib V33    0.19190142323942205
#>     Attrib V34    0.019689925502690716
#>     Attrib V35    0.10594527930037655
#>     Attrib V36    -0.4812037008234715
#>     Attrib V37    -0.5905014441742543
#>     Attrib V38    0.2883100194783913
#>     Attrib V39    0.22923199516851134
#>     Attrib V4    -0.10498665283247079
#>     Attrib V40    -0.0899840178901244
#>     Attrib V41    -0.14102100170857235
#>     Attrib V42    -0.026685403000117562
#>     Attrib V43    -0.024030370922209526
#>     Attrib V44    0.1455401296946657
#>     Attrib V45    0.30192465333623847
#>     Attrib V46    -0.04883216913428517
#>     Attrib V47    -0.08157438605813089
#>     Attrib V48    -0.034956010555376574
#>     Attrib V49    0.43108156516563806
#>     Attrib V5    0.3810454346648547
#>     Attrib V50    -0.1504700260796395
#>     Attrib V51    -0.08591883125683802
#>     Attrib V52    0.315118403812146
#>     Attrib V53    0.15621450865933767
#>     Attrib V54    -0.039405722673369996
#>     Attrib V55    -0.13728960260821416
#>     Attrib V56    0.10429210027429738
#>     Attrib V57    -0.11333214959965145
#>     Attrib V58    0.3102947926700448
#>     Attrib V59    -0.03687630382087849
#>     Attrib V6    -0.11980495295646408
#>     Attrib V60    0.19029611810405186
#>     Attrib V7    0.021898939790990096
#>     Attrib V8    -0.3929093528677216
#>     Attrib V9    0.34655880748951984
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.8911411088694968
#>     Attrib V1    -0.16761729567752626
#>     Attrib V10    -0.9768189224505474
#>     Attrib V11    -1.2765758555171918
#>     Attrib V12    -1.189284366803102
#>     Attrib V13    -0.7696214917905447
#>     Attrib V14    0.34058587356012365
#>     Attrib V15    0.2645035561219268
#>     Attrib V16    0.734641010953312
#>     Attrib V17    0.5177309794326477
#>     Attrib V18    0.5086638530995362
#>     Attrib V19    0.08943563933943699
#>     Attrib V2    0.17337546429290482
#>     Attrib V20    -0.09030945768024204
#>     Attrib V21    -0.043867540304161214
#>     Attrib V22    0.30879869573964197
#>     Attrib V23    -0.46702212545301597
#>     Attrib V24    -0.6498468805021103
#>     Attrib V25    0.278981295097385
#>     Attrib V26    0.04185901042722319
#>     Attrib V27    -1.092375765223074
#>     Attrib V28    -1.639476560564831
#>     Attrib V29    -0.4391994167516874
#>     Attrib V3    0.324701719649332
#>     Attrib V30    -0.24056446155567804
#>     Attrib V31    0.44947146154125067
#>     Attrib V32    0.24937571694901634
#>     Attrib V33    0.6054140915528722
#>     Attrib V34    0.17593984692599113
#>     Attrib V35    -0.5388083623125864
#>     Attrib V36    0.6954949103273478
#>     Attrib V37    0.3060040564874954
#>     Attrib V38    -0.29174337759972957
#>     Attrib V39    -0.08914609656216736
#>     Attrib V4    -0.11443047345776938
#>     Attrib V40    0.29183709219689796
#>     Attrib V41    -0.41053443299889814
#>     Attrib V42    0.4271915492719359
#>     Attrib V43    -0.005295106857236942
#>     Attrib V44    -0.4490637696545755
#>     Attrib V45    -1.0678597521218849
#>     Attrib V46    -0.4298038511641509
#>     Attrib V47    -0.19467826383783776
#>     Attrib V48    -0.2448198338965544
#>     Attrib V49    -0.9423044195606367
#>     Attrib V5    -0.6538016292132652
#>     Attrib V50    0.1555582832626417
#>     Attrib V51    -0.36451280669900193
#>     Attrib V52    -0.9835877740548193
#>     Attrib V53    -0.3069957533871924
#>     Attrib V54    0.43257925521367796
#>     Attrib V55    0.13811751069203698
#>     Attrib V56    0.5077288059553895
#>     Attrib V57    0.22029787297467726
#>     Attrib V58    -0.35862723109512673
#>     Attrib V59    0.4244047610352269
#>     Attrib V6    -0.3141702975558242
#>     Attrib V60    -0.057720289565514095
#>     Attrib V7    -0.0535801109101143
#>     Attrib V8    0.06152867327683711
#>     Attrib V9    -1.0435442123722547
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.2363082069964774
#>     Attrib V1    0.4179186053375387
#>     Attrib V10    0.06384326578498235
#>     Attrib V11    0.3247488948095094
#>     Attrib V12    0.2931981656220269
#>     Attrib V13    0.14048205160929594
#>     Attrib V14    -0.10488487151565079
#>     Attrib V15    0.034058431620895786
#>     Attrib V16    -0.14885516728738565
#>     Attrib V17    -0.05631175449785073
#>     Attrib V18    -0.060173857514508905
#>     Attrib V19    0.13867389438636982
#>     Attrib V2    0.10286056123164034
#>     Attrib V20    0.35758003340034933
#>     Attrib V21    0.3269550212682432
#>     Attrib V22    0.24057052755090355
#>     Attrib V23    0.4705142904256574
#>     Attrib V24    0.4159734697494287
#>     Attrib V25    -0.07029413065981381
#>     Attrib V26    -0.5572107803534416
#>     Attrib V27    -0.17809997569931135
#>     Attrib V28    0.03472611337082512
#>     Attrib V29    -0.49604160941316827
#>     Attrib V3    0.08246943938099566
#>     Attrib V30    -0.017507352647543856
#>     Attrib V31    -0.31602987688202844
#>     Attrib V32    0.11559736211705882
#>     Attrib V33    0.24019893111061946
#>     Attrib V34    -0.041495740318233776
#>     Attrib V35    3.7991643413031525E-4
#>     Attrib V36    -0.4849686200726106
#>     Attrib V37    -0.6029479606560373
#>     Attrib V38    0.2958159300751609
#>     Attrib V39    0.20082775683179482
#>     Attrib V4    -0.012661160547251134
#>     Attrib V40    -0.10012254450777218
#>     Attrib V41    -0.09255197836124099
#>     Attrib V42    0.029451852846451184
#>     Attrib V43    0.03228366348697571
#>     Attrib V44    0.09512888467784336
#>     Attrib V45    0.15078646889659209
#>     Attrib V46    -0.046692649463835445
#>     Attrib V47    -0.09513783542670502
#>     Attrib V48    -0.14008278750136302
#>     Attrib V49    0.3074734822333803
#>     Attrib V5    0.3218004933637587
#>     Attrib V50    -0.08684935542747688
#>     Attrib V51    -0.10081339291460606
#>     Attrib V52    0.25827402954097123
#>     Attrib V53    0.19574897326341034
#>     Attrib V54    0.06428053418359672
#>     Attrib V55    -0.11898904490880044
#>     Attrib V56    0.20326471751481587
#>     Attrib V57    -0.030285438602995287
#>     Attrib V58    0.39460454035252407
#>     Attrib V59    0.13629970433494845
#>     Attrib V6    -0.04256565285759815
#>     Attrib V60    0.3285853406791889
#>     Attrib V7    0.07275894426055467
#>     Attrib V8    -0.24893591803385376
#>     Attrib V9    0.3596550127549778
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    1.2406756435122064
#>     Attrib V1    0.5280673003109729
#>     Attrib V10    0.633937224867043
#>     Attrib V11    1.2285817702596287
#>     Attrib V12    0.91781776039861
#>     Attrib V13    0.7035825153590939
#>     Attrib V14    -0.333040896158532
#>     Attrib V15    -0.14202401826215177
#>     Attrib V16    -0.7573476441311385
#>     Attrib V17    -0.38289881327974506
#>     Attrib V18    -0.4640140039465441
#>     Attrib V19    0.2580564564701753
#>     Attrib V2    -0.12361494859309788
#>     Attrib V20    0.5860505528040219
#>     Attrib V21    0.407802248731437
#>     Attrib V22    0.06526221072779911
#>     Attrib V23    0.8597178540974786
#>     Attrib V24    0.7051762978090189
#>     Attrib V25    -0.5784690168499732
#>     Attrib V26    -0.9303045356594383
#>     Attrib V27    0.4181195806656261
#>     Attrib V28    1.1562372158004581
#>     Attrib V29    -0.29708514044389606
#>     Attrib V3    -0.3637344174941575
#>     Attrib V30    0.2281768461663294
#>     Attrib V31    -0.49278029776469884
#>     Attrib V32    0.10406883514475872
#>     Attrib V33    0.04388813444321109
#>     Attrib V34    0.006969496863714602
#>     Attrib V35    0.5183946380945313
#>     Attrib V36    -0.8550398774038043
#>     Attrib V37    -0.8250282452289474
#>     Attrib V38    0.6963785938935569
#>     Attrib V39    0.3343835134376141
#>     Attrib V4    -0.3276239578587847
#>     Attrib V40    -0.2537741237546454
#>     Attrib V41    -0.032234905541408
#>     Attrib V42    -0.2945792691397147
#>     Attrib V43    -0.04846944320917745
#>     Attrib V44    0.44213862207731747
#>     Attrib V45    0.858085488775824
#>     Attrib V46    0.06146914899493519
#>     Attrib V47    -0.0781526968812316
#>     Attrib V48    0.04436620723643915
#>     Attrib V49    1.0511180557125595
#>     Attrib V5    0.7635005677577994
#>     Attrib V50    -0.3981902310873954
#>     Attrib V51    -0.10694219974807143
#>     Attrib V52    0.9221396946375378
#>     Attrib V53    0.03571506619467045
#>     Attrib V54    -0.21202063004812746
#>     Attrib V55    -0.3925326329181867
#>     Attrib V56    -0.23831240704672738
#>     Attrib V57    -0.5829239716892036
#>     Attrib V58    0.514870314231162
#>     Attrib V59    -0.5275596205938715
#>     Attrib V6    -0.04272947068116907
#>     Attrib V60    0.22658102328357593
#>     Attrib V7    0.013934691202960658
#>     Attrib V8    -0.7040242835685315
#>     Attrib V9    1.0270201445905727
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.11979093971330282
#>     Attrib V1    0.12995588852551224
#>     Attrib V10    0.08384835063786006
#>     Attrib V11    0.20971666767556027
#>     Attrib V12    0.1307907654599141
#>     Attrib V13    0.11254018801860816
#>     Attrib V14    -0.10119829800544601
#>     Attrib V15    -0.024600951077233892
#>     Attrib V16    -0.0943937727011928
#>     Attrib V17    -0.03844180537379667
#>     Attrib V18    -0.09311374418843113
#>     Attrib V19    0.03662633108593321
#>     Attrib V2    0.04827085997404159
#>     Attrib V20    0.02721802391742208
#>     Attrib V21    0.008137336963940197
#>     Attrib V22    -0.06712672667562229
#>     Attrib V23    0.1026707125580971
#>     Attrib V24    0.1576347138108536
#>     Attrib V25    -0.06709534849802766
#>     Attrib V26    -0.21306630514375718
#>     Attrib V27    -0.019765625648487474
#>     Attrib V28    0.18327800618763762
#>     Attrib V29    -0.08633567250726659
#>     Attrib V3    0.030880939534755993
#>     Attrib V30    0.0736751920499558
#>     Attrib V31    -0.08304277292449025
#>     Attrib V32    0.06556425972271139
#>     Attrib V33    0.1002807111633875
#>     Attrib V34    0.012965844798523626
#>     Attrib V35    0.0944889747990602
#>     Attrib V36    -0.11351532095361985
#>     Attrib V37    -0.17464334544755597
#>     Attrib V38    0.22471970217396423
#>     Attrib V39    0.11547782512211299
#>     Attrib V4    0.05793580667231237
#>     Attrib V40    -0.053951227305672166
#>     Attrib V41    -0.08833843970878369
#>     Attrib V42    -0.12156719945613458
#>     Attrib V43    -0.01978813213818085
#>     Attrib V44    0.14816315037192265
#>     Attrib V45    0.1977707484033536
#>     Attrib V46    0.05742562081636536
#>     Attrib V47    0.0215591257628296
#>     Attrib V48    0.06852525191991485
#>     Attrib V49    0.2209448268580049
#>     Attrib V5    0.1879769525547195
#>     Attrib V50    -0.1046592691066582
#>     Attrib V51    -0.01714679913197096
#>     Attrib V52    0.18124465164203465
#>     Attrib V53    0.14793166325968826
#>     Attrib V54    0.0079605828389047
#>     Attrib V55    -0.058027998974760645
#>     Attrib V56    -0.01558761343334544
#>     Attrib V57    0.0319824006065784
#>     Attrib V58    0.11101770456123554
#>     Attrib V59    -0.009356593115167889
#>     Attrib V6    -0.03323677140729033
#>     Attrib V60    0.08927541211659763
#>     Attrib V7    0.038555891609978514
#>     Attrib V8    -0.1600714129462407
#>     Attrib V9    0.17722800501502253
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6706039145746168
#>     Attrib V1    0.18605980752665885
#>     Attrib V10    0.9206918455375347
#>     Attrib V11    1.232794713072729
#>     Attrib V12    1.1487964103541302
#>     Attrib V13    0.7064259878490587
#>     Attrib V14    -0.4234376591284508
#>     Attrib V15    -0.3250144570608444
#>     Attrib V16    -0.7997104184294406
#>     Attrib V17    -0.5205176514250895
#>     Attrib V18    -0.5170527078996143
#>     Attrib V19    -0.16854777428403
#>     Attrib V2    -0.08995561974070543
#>     Attrib V20    -0.022688405269553076
#>     Attrib V21    -0.04372788928558609
#>     Attrib V22    -0.4232874049985913
#>     Attrib V23    0.4095016595814037
#>     Attrib V24    0.5713381248645827
#>     Attrib V25    -0.17014876308410917
#>     Attrib V26    -0.010092658505570689
#>     Attrib V27    0.9971642782366459
#>     Attrib V28    1.4879332813188315
#>     Attrib V29    0.40315145700134447
#>     Attrib V3    -0.2431496591978946
#>     Attrib V30    0.22121507788118347
#>     Attrib V31    -0.3003331357451091
#>     Attrib V32    -0.1700445087827151
#>     Attrib V33    -0.49474809180738916
#>     Attrib V34    -0.05478290537729507
#>     Attrib V35    0.5644806345637752
#>     Attrib V36    -0.5652313827125358
#>     Attrib V37    -0.24156022461812895
#>     Attrib V38    0.2481304347046484
#>     Attrib V39    0.1432934064776721
#>     Attrib V4    0.10512791989585964
#>     Attrib V40    -0.28743932846157716
#>     Attrib V41    0.24069633964583717
#>     Attrib V42    -0.4062801581493652
#>     Attrib V43    0.032587445717311536
#>     Attrib V44    0.37281132430804814
#>     Attrib V45    0.9336381615404963
#>     Attrib V46    0.4548997048231355
#>     Attrib V47    0.28166448240349923
#>     Attrib V48    0.2716068979257076
#>     Attrib V49    0.8409013976014916
#>     Attrib V5    0.5799585383221559
#>     Attrib V50    -0.12015054640938493
#>     Attrib V51    0.41154064549692215
#>     Attrib V52    0.9089049144634843
#>     Attrib V53    0.2372534967962604
#>     Attrib V54    -0.35319456162538276
#>     Attrib V55    0.010338802783685274
#>     Attrib V56    -0.4313559407029056
#>     Attrib V57    -0.2672419730509294
#>     Attrib V58    0.25481357029098667
#>     Attrib V59    -0.4380696460237665
#>     Attrib V6    0.2718304951297528
#>     Attrib V60    -0.01100025496736552
#>     Attrib V7    0.049003275671374934
#>     Attrib V8    -0.07879722007311361
#>     Attrib V9    0.8924748821578266
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.5271154870883387
#>     Attrib V1    -0.1590525539049501
#>     Attrib V10    -0.2626200599149135
#>     Attrib V11    -0.5115365676961035
#>     Attrib V12    -0.3888095874498961
#>     Attrib V13    -0.26319380328882214
#>     Attrib V14    0.20295199957977536
#>     Attrib V15    0.014677552499380294
#>     Attrib V16    0.31064624814676595
#>     Attrib V17    0.13038789514626598
#>     Attrib V18    0.2819788667023182
#>     Attrib V19    7.393898273669748E-4
#>     Attrib V2    0.044349736099670196
#>     Attrib V20    -0.1345629301358333
#>     Attrib V21    -0.051987380941972416
#>     Attrib V22    0.035743226800100086
#>     Attrib V23    -0.2135820187453919
#>     Attrib V24    -0.3180641909716068
#>     Attrib V25    0.14473424015440106
#>     Attrib V26    0.3755686662179966
#>     Attrib V27    -0.11451117227544717
#>     Attrib V28    -0.41734128765112005
#>     Attrib V29    0.17416453808157328
#>     Attrib V3    0.12959954829660764
#>     Attrib V30    -0.0824988404988178
#>     Attrib V31    0.22248243029292575
#>     Attrib V32    -0.13566869090038408
#>     Attrib V33    -0.04566233418120525
#>     Attrib V34    -0.031134666960933605
#>     Attrib V35    -0.2027698608552757
#>     Attrib V36    0.40049107004861656
#>     Attrib V37    0.49331872976022206
#>     Attrib V38    -0.2377154312974925
#>     Attrib V39    -0.18836317691308932
#>     Attrib V4    0.10738183790304034
#>     Attrib V40    0.12750743545572263
#>     Attrib V41    0.07598673442849786
#>     Attrib V42    0.11935991971273989
#>     Attrib V43    -0.01292211033002357
#>     Attrib V44    -0.1992845638410455
#>     Attrib V45    -0.3794887581357082
#>     Attrib V46    -0.12326850853688398
#>     Attrib V47    0.010017994563198528
#>     Attrib V48    -0.05187807973817924
#>     Attrib V49    -0.5149597108544046
#>     Attrib V5    -0.3135077946421912
#>     Attrib V50    0.23536695931019003
#>     Attrib V51    0.07106436060216294
#>     Attrib V52    -0.3798314830029437
#>     Attrib V53    -0.05495031076173076
#>     Attrib V54    0.11053394489890572
#>     Attrib V55    0.11869064359414443
#>     Attrib V56    0.06773158007455261
#>     Attrib V57    0.21025064760316053
#>     Attrib V58    -0.29225051297606397
#>     Attrib V59    0.12102800668507316
#>     Attrib V6    0.0802183190187635
#>     Attrib V60    -0.10824589761266537
#>     Attrib V7    -0.03524834819543814
#>     Attrib V8    0.27597705664774114
#>     Attrib V9    -0.45072079143544275
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.538166649578623
#>     Attrib V1    0.3067225820734049
#>     Attrib V10    0.20294633356244549
#>     Attrib V11    0.566982267604043
#>     Attrib V12    0.5024867689734935
#>     Attrib V13    0.2865990570387332
#>     Attrib V14    -0.24001607087911206
#>     Attrib V15    -0.09482312461075183
#>     Attrib V16    -0.4250575947011519
#>     Attrib V17    -0.14846769934476256
#>     Attrib V18    -0.24884740857572676
#>     Attrib V19    0.07048626642873267
#>     Attrib V2    -0.0633873607343738
#>     Attrib V20    0.30310284461431297
#>     Attrib V21    0.15049563183031509
#>     Attrib V22    -0.006716046705069907
#>     Attrib V23    0.3786778779288069
#>     Attrib V24    0.36574322033962675
#>     Attrib V25    -0.21065259290505356
#>     Attrib V26    -0.6270745909824013
#>     Attrib V27    0.06927810278322329
#>     Attrib V28    0.54698913634533
#>     Attrib V29    -0.31699870223009496
#>     Attrib V3    -0.15990385136612584
#>     Attrib V30    0.13623109823598145
#>     Attrib V31    -0.35569040020817666
#>     Attrib V32    0.07064112039636404
#>     Attrib V33    0.14964665139150204
#>     Attrib V34    0.09483676841613885
#>     Attrib V35    0.29472990640001573
#>     Attrib V36    -0.4714606745080614
#>     Attrib V37    -0.6191023866959382
#>     Attrib V38    0.4532117182698326
#>     Attrib V39    0.24544964575819442
#>     Attrib V4    -0.17750155666928788
#>     Attrib V40    -0.16773821436222924
#>     Attrib V41    -0.201516397585494
#>     Attrib V42    -0.13751326507029168
#>     Attrib V43    -0.017927121163423012
#>     Attrib V44    0.2679297518123056
#>     Attrib V45    0.4855816468014469
#>     Attrib V46    0.01533424172456483
#>     Attrib V47    -0.03698484868514959
#>     Attrib V48    0.005229148023408139
#>     Attrib V49    0.5099043923998079
#>     Attrib V5    0.4486752299046359
#>     Attrib V50    -0.26685937050790853
#>     Attrib V51    -0.07477982852409783
#>     Attrib V52    0.3772966073970478
#>     Attrib V53    0.08542366807629863
#>     Attrib V54    -0.055828364103482464
#>     Attrib V55    -0.20613437325214437
#>     Attrib V56    -0.022674569290027626
#>     Attrib V57    -0.23440820847950633
#>     Attrib V58    0.3261520178740633
#>     Attrib V59    -0.23583062875801927
#>     Attrib V6    -0.06436940240928751
#>     Attrib V60    0.1520372457255444
#>     Attrib V7    -0.017435756234516545
#>     Attrib V8    -0.41215049170633145
#>     Attrib V9    0.46277303716215024
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.5267956523171939
#>     Attrib V1    0.4551062227073215
#>     Attrib V10    0.14779024205009136
#>     Attrib V11    0.6237540047867628
#>     Attrib V12    0.44547161337375235
#>     Attrib V13    0.33094518915190574
#>     Attrib V14    -0.1608245301330723
#>     Attrib V15    -0.02126889179022451
#>     Attrib V16    -0.35796421318128246
#>     Attrib V17    -0.16758958632113558
#>     Attrib V18    -0.26291037900536796
#>     Attrib V19    0.20203337443604064
#>     Attrib V2    0.09119648690043416
#>     Attrib V20    0.42358414146609724
#>     Attrib V21    0.37795191276236684
#>     Attrib V22    0.3376079342851173
#>     Attrib V23    0.6322699466490451
#>     Attrib V24    0.4518965356362398
#>     Attrib V25    -0.26776278242294654
#>     Attrib V26    -0.7459445635868431
#>     Attrib V27    -0.022257585177507845
#>     Attrib V28    0.3683175606556113
#>     Attrib V29    -0.4700948973147649
#>     Attrib V3    -0.06117489153043495
#>     Attrib V30    0.03753809524796928
#>     Attrib V31    -0.506665842166185
#>     Attrib V32    0.028307688332170747
#>     Attrib V33    0.24348968392337025
#>     Attrib V34    -0.0052310703526632805
#>     Attrib V35    0.08288224688975897
#>     Attrib V36    -0.6355248903186569
#>     Attrib V37    -0.8352026816833255
#>     Attrib V38    0.4573859597882637
#>     Attrib V39    0.24657508526224653
#>     Attrib V4    -0.10718049562067113
#>     Attrib V40    -0.09853812141443367
#>     Attrib V41    -0.13711612417481764
#>     Attrib V42    -0.05807462460908033
#>     Attrib V43    0.07797766486025397
#>     Attrib V44    0.12221896883353042
#>     Attrib V45    0.30128262269670164
#>     Attrib V46    -0.01258932432369649
#>     Attrib V47    -0.10075334107968852
#>     Attrib V48    -0.08560537162088395
#>     Attrib V49    0.4868694714792722
#>     Attrib V5    0.44881878938101893
#>     Attrib V50    -0.24729959541301771
#>     Attrib V51    -0.1436010349723118
#>     Attrib V52    0.44860359290663765
#>     Attrib V53    0.1628557708948636
#>     Attrib V54    0.004159237184574224
#>     Attrib V55    -0.22741321503574874
#>     Attrib V56    0.1637815519506181
#>     Attrib V57    -0.1569517826173103
#>     Attrib V58    0.4921141289141802
#>     Attrib V59    0.05552192918373092
#>     Attrib V6    -0.16935862039281444
#>     Attrib V60    0.3788027004243063
#>     Attrib V7    0.04327047966819905
#>     Attrib V8    -0.42825029808585435
#>     Attrib V9    0.46198368101055703
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.09191633678449118
#>     Attrib V1    0.34241038755052877
#>     Attrib V10    0.019494487401236202
#>     Attrib V11    0.2593948749243045
#>     Attrib V12    0.2015867423799552
#>     Attrib V13    0.21423308124537682
#>     Attrib V14    -0.05559243964822463
#>     Attrib V15    0.03476193011573128
#>     Attrib V16    -0.18561407753296957
#>     Attrib V17    8.254644699894161E-4
#>     Attrib V18    -0.06363699355311249
#>     Attrib V19    0.12719379114358237
#>     Attrib V2    0.080805817305071
#>     Attrib V20    0.34048366432766536
#>     Attrib V21    0.2855870469609273
#>     Attrib V22    0.18768236173715558
#>     Attrib V23    0.4245399160926255
#>     Attrib V24    0.32632776035265565
#>     Attrib V25    -0.07529966649219126
#>     Attrib V26    -0.5265619222178195
#>     Attrib V27    -0.14047163575612062
#>     Attrib V28    0.04239699489840382
#>     Attrib V29    -0.3808634648179752
#>     Attrib V3    0.1308011147769106
#>     Attrib V30    -0.03505154870252317
#>     Attrib V31    -0.3425753773126751
#>     Attrib V32    0.04776436153840432
#>     Attrib V33    0.1772436573493276
#>     Attrib V34    0.03078446797013568
#>     Attrib V35    0.00657419129058283
#>     Attrib V36    -0.3762762067057736
#>     Attrib V37    -0.4597988550549314
#>     Attrib V38    0.2916785736247764
#>     Attrib V39    0.25309321308324173
#>     Attrib V4    -0.011295531729036988
#>     Attrib V40    -0.03434445382374419
#>     Attrib V41    -0.11286203646513403
#>     Attrib V42    0.0023370592070326495
#>     Attrib V43    -0.013048317846070535
#>     Attrib V44    0.09407375694307044
#>     Attrib V45    0.11018150867045881
#>     Attrib V46    -0.005325929537221097
#>     Attrib V47    -0.019185783023798843
#>     Attrib V48    -0.09261131067655415
#>     Attrib V49    0.305509657077963
#>     Attrib V5    0.3150588893976185
#>     Attrib V50    -0.11358928140363113
#>     Attrib V51    -0.10104698934841823
#>     Attrib V52    0.2087674727078826
#>     Attrib V53    0.14980992353679326
#>     Attrib V54    0.06100318665230435
#>     Attrib V55    -0.07497317363181646
#>     Attrib V56    0.16606966289088312
#>     Attrib V57    -0.012095473191088418
#>     Attrib V58    0.30568912866606474
#>     Attrib V59    0.12465524348365262
#>     Attrib V6    -0.03149342135129636
#>     Attrib V60    0.2874868566843193
#>     Attrib V7    0.0990137976188852
#>     Attrib V8    -0.3055243147452167
#>     Attrib V9    0.23608275610972929
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.39581202094650136
#>     Attrib V1    0.4778422819331761
#>     Attrib V10    0.18654498504844957
#>     Attrib V11    0.5566029783393776
#>     Attrib V12    0.45499605802206994
#>     Attrib V13    0.25669898204455044
#>     Attrib V14    -0.19603130429277077
#>     Attrib V15    0.040170792711492175
#>     Attrib V16    -0.35266905743529775
#>     Attrib V17    -0.11510407615332015
#>     Attrib V18    -0.2080793477913646
#>     Attrib V19    0.09923019779981507
#>     Attrib V2    0.06581777426442136
#>     Attrib V20    0.34993445903674486
#>     Attrib V21    0.28109431402431995
#>     Attrib V22    0.2120610550342074
#>     Attrib V23    0.5604870284277136
#>     Attrib V24    0.4225946221043216
#>     Attrib V25    -0.16352341067201376
#>     Attrib V26    -0.6008131679263269
#>     Attrib V27    -0.10680024996369283
#>     Attrib V28    0.22713790973375889
#>     Attrib V29    -0.5553244863365808
#>     Attrib V3    -0.06237699434579291
#>     Attrib V30    0.03843273827430537
#>     Attrib V31    -0.34187589928798634
#>     Attrib V32    0.09077320852349012
#>     Attrib V33    0.2251328118946756
#>     Attrib V34    -0.01632575010572557
#>     Attrib V35    0.11806496159738641
#>     Attrib V36    -0.5984520368539176
#>     Attrib V37    -0.7370043185654236
#>     Attrib V38    0.31467808573620254
#>     Attrib V39    0.23055939063337935
#>     Attrib V4    -0.12149606843395704
#>     Attrib V40    -0.12226777197349505
#>     Attrib V41    -0.16947090257149974
#>     Attrib V42    -0.09029142970053883
#>     Attrib V43    0.0015146716857660882
#>     Attrib V44    0.1703495782546354
#>     Attrib V45    0.19506052639273896
#>     Attrib V46    -0.0282806742691929
#>     Attrib V47    -0.09277863915753361
#>     Attrib V48    -0.06654909523338762
#>     Attrib V49    0.4832454837163879
#>     Attrib V5    0.36229409355659914
#>     Attrib V50    -0.19496401596358517
#>     Attrib V51    -0.14697617561174975
#>     Attrib V52    0.37091899141265694
#>     Attrib V53    0.1165490076821318
#>     Attrib V54    0.0845643539419169
#>     Attrib V55    -0.12423410636535093
#>     Attrib V56    0.15289793156894363
#>     Attrib V57    -0.1556405030377037
#>     Attrib V58    0.43735641795032254
#>     Attrib V59    -0.009413523530808775
#>     Attrib V6    -0.12492614458385301
#>     Attrib V60    0.38684436390354726
#>     Attrib V7    0.034422321166889744
#>     Attrib V8    -0.4241377314170955
#>     Attrib V9    0.42726741792922396
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -1.2552737608364104
#>     Attrib V1    -0.5224782341661365
#>     Attrib V10    -0.6382451120993984
#>     Attrib V11    -1.1973775963973148
#>     Attrib V12    -0.8747220451672115
#>     Attrib V13    -0.7363853226487492
#>     Attrib V14    0.3330038071907898
#>     Attrib V15    0.13617899548910223
#>     Attrib V16    0.7535078687387285
#>     Attrib V17    0.33508925037838877
#>     Attrib V18    0.4548778224945011
#>     Attrib V19    -0.17938691777977558
#>     Attrib V2    0.10234469463411539
#>     Attrib V20    -0.5347641660823769
#>     Attrib V21    -0.38198967829136543
#>     Attrib V22    -0.055827953044260116
#>     Attrib V23    -0.7973921601261289
#>     Attrib V24    -0.7297704239716607
#>     Attrib V25    0.5085300875952153
#>     Attrib V26    1.0161678291496128
#>     Attrib V27    -0.35561809688262724
#>     Attrib V28    -1.051833285004973
#>     Attrib V29    0.4789794470242695
#>     Attrib V3    0.406772337894285
#>     Attrib V30    -0.2945622779811677
#>     Attrib V31    0.5074050038653286
#>     Attrib V32    -0.15358701623207352
#>     Attrib V33    -0.1340584601903345
#>     Attrib V34    -0.029986340354794264
#>     Attrib V35    -0.5501821336138132
#>     Attrib V36    0.8655905742929537
#>     Attrib V37    1.0169317043606725
#>     Attrib V38    -0.7582135776969164
#>     Attrib V39    -0.37922288548070526
#>     Attrib V4    0.35109147056128376
#>     Attrib V40    0.2807794154211766
#>     Attrib V41    0.11516719017460066
#>     Attrib V42    0.325530297872558
#>     Attrib V43    0.017994480323358198
#>     Attrib V44    -0.5298040039783947
#>     Attrib V45    -0.8754836095207389
#>     Attrib V46    -0.0433117911104774
#>     Attrib V47    0.1293034979782964
#>     Attrib V48    -0.009810759904076469
#>     Attrib V49    -1.1514997872436723
#>     Attrib V5    -0.7561308699815712
#>     Attrib V50    0.4966513741090349
#>     Attrib V51    0.1933622552644238
#>     Attrib V52    -0.9100906754782472
#>     Attrib V53    -0.06711552840869148
#>     Attrib V54    0.2442967431775167
#>     Attrib V55    0.4501506364806322
#>     Attrib V56    0.22805200092045033
#>     Attrib V57    0.590452693939018
#>     Attrib V58    -0.566044417938655
#>     Attrib V59    0.4903872114987349
#>     Attrib V6    0.05536135190743033
#>     Attrib V60    -0.19141099704984937
#>     Attrib V7    -0.11066126922112643
#>     Attrib V8    0.7509078794030556
#>     Attrib V9    -1.0089304373243013
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.11383731279221494
#>     Attrib V1    0.09027504669659431
#>     Attrib V10    0.02770291107744778
#>     Attrib V11    0.047521575062411475
#>     Attrib V12    0.03082843111662333
#>     Attrib V13    0.054803615042311286
#>     Attrib V14    -0.026076113924702948
#>     Attrib V15    0.008168887484160885
#>     Attrib V16    0.025553168748353474
#>     Attrib V17    0.06276202488290657
#>     Attrib V18    0.046040339502344485
#>     Attrib V19    0.024528082412906823
#>     Attrib V2    0.018356095080987535
#>     Attrib V20    -0.03136895352419401
#>     Attrib V21    -0.05636585514281557
#>     Attrib V22    -0.0618724868253763
#>     Attrib V23    -0.02189537930964121
#>     Attrib V24    0.050452733146502934
#>     Attrib V25    -0.008877989597545728
#>     Attrib V26    -0.12594880364456382
#>     Attrib V27    -0.059611034016641785
#>     Attrib V28    0.03563495098623246
#>     Attrib V29    -0.0747117615955427
#>     Attrib V3    0.09408854846671347
#>     Attrib V30    -0.03554344890165874
#>     Attrib V31    -0.053330669633776036
#>     Attrib V32    0.047574203275327506
#>     Attrib V33    0.04085015616670039
#>     Attrib V34    0.042350367516152586
#>     Attrib V35    0.0425011626405382
#>     Attrib V36    -0.026774255802428745
#>     Attrib V37    0.011383503715505018
#>     Attrib V38    0.10699719781487409
#>     Attrib V39    0.08318387472244619
#>     Attrib V4    0.07287401086312824
#>     Attrib V40    -0.015730023646194007
#>     Attrib V41    -0.018787036310287736
#>     Attrib V42    0.04298602679192852
#>     Attrib V43    0.0016031885049340403
#>     Attrib V44    0.02222806420472221
#>     Attrib V45    0.07707652167072203
#>     Attrib V46    0.047318873472021794
#>     Attrib V47    0.03810779649555649
#>     Attrib V48    0.020068762210625844
#>     Attrib V49    0.03894513661188548
#>     Attrib V5    0.1231311134065704
#>     Attrib V50    0.04080302203346843
#>     Attrib V51    0.09485078192566
#>     Attrib V52    0.12465691488330337
#>     Attrib V53    0.12684812713298466
#>     Attrib V54    0.019502324484434723
#>     Attrib V55    0.049620591925133774
#>     Attrib V56    0.07531970647925305
#>     Attrib V57    0.08670961110767655
#>     Attrib V58    0.13508384563842712
#>     Attrib V59    -7.349830997086985E-4
#>     Attrib V6    0.05179028398450653
#>     Attrib V60    0.0822345267846667
#>     Attrib V7    0.03303439728153063
#>     Attrib V8    -0.05632396630690801
#>     Attrib V9    0.10232870526236139
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.10505711102157234
#>     Attrib V1    0.21139642966575128
#>     Attrib V10    0.09739404409411653
#>     Attrib V11    0.21396248510551752
#>     Attrib V12    0.10801672985816599
#>     Attrib V13    0.04949898036368461
#>     Attrib V14    -0.08330336636537934
#>     Attrib V15    0.061654296289347585
#>     Attrib V16    -0.11857038086160869
#>     Attrib V17    -0.016533214585004084
#>     Attrib V18    -0.06052049218020907
#>     Attrib V19    0.06269875813944678
#>     Attrib V2    0.11276913830665843
#>     Attrib V20    0.0913255682494605
#>     Attrib V21    0.04889434060353789
#>     Attrib V22    0.05640954579551661
#>     Attrib V23    0.1222430919105815
#>     Attrib V24    0.160478550368431
#>     Attrib V25    -0.11003760626081827
#>     Attrib V26    -0.3039876049839524
#>     Attrib V27    -0.05575802521180436
#>     Attrib V28    0.10485675987227062
#>     Attrib V29    -0.22041318963055725
#>     Attrib V3    0.033751289190747505
#>     Attrib V30    0.03897688635370453
#>     Attrib V31    -0.0888477477988271
#>     Attrib V32    0.01069384110137441
#>     Attrib V33    0.13348841903736108
#>     Attrib V34    -0.01806930600044594
#>     Attrib V35    0.11328559438233984
#>     Attrib V36    -0.19793851553653263
#>     Attrib V37    -0.23580027713491766
#>     Attrib V38    0.24598036751052296
#>     Attrib V39    0.16175407886044926
#>     Attrib V4    0.011475448333367416
#>     Attrib V40    -0.0888428885378304
#>     Attrib V41    -0.0962451105796289
#>     Attrib V42    -0.06880054849413905
#>     Attrib V43    0.03850075481397935
#>     Attrib V44    0.13055736135473417
#>     Attrib V45    0.18872114741955318
#>     Attrib V46    -0.023746054894286328
#>     Attrib V47    -0.062274166781342975
#>     Attrib V48    0.0372446265547172
#>     Attrib V49    0.1584930277281431
#>     Attrib V5    0.20307792003196803
#>     Attrib V50    -0.07180510894844995
#>     Attrib V51    -0.016750662261254518
#>     Attrib V52    0.1502476798944659
#>     Attrib V53    0.08202776482096956
#>     Attrib V54    0.02094932552361764
#>     Attrib V55    0.011885308079124374
#>     Attrib V56    0.08233188770347555
#>     Attrib V57    0.04177019626278615
#>     Attrib V58    0.1312969958970016
#>     Attrib V59    -0.04354801703785881
#>     Attrib V6    -0.010628811939960039
#>     Attrib V60    0.11192085111067578
#>     Attrib V7    -0.015145504663326934
#>     Attrib V8    -0.1291591078467112
#>     Attrib V9    0.18643913566908957
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.26494450770367983
#>     Attrib V1    -0.1173046455909676
#>     Attrib V10    -0.12489129763305844
#>     Attrib V11    -0.2612045069943633
#>     Attrib V12    -0.23798678260698788
#>     Attrib V13    -0.16162306279498345
#>     Attrib V14    0.041646733437212015
#>     Attrib V15    -0.024651794327721955
#>     Attrib V16    0.11922311026635751
#>     Attrib V17    0.04044560176462165
#>     Attrib V18    0.16308100742211729
#>     Attrib V19    -0.03980167894369625
#>     Attrib V2    -0.003174376089705748
#>     Attrib V20    -0.0438699949945326
#>     Attrib V21    0.006166309122538443
#>     Attrib V22    0.03236371784958474
#>     Attrib V23    -0.06766100844549426
#>     Attrib V24    -0.12336855850114861
#>     Attrib V25    0.10776873433955966
#>     Attrib V26    0.18983466937772256
#>     Attrib V27    -0.02021974523946887
#>     Attrib V28    -0.1859425256903138
#>     Attrib V29    0.0571421114870946
#>     Attrib V3    0.09441462461891993
#>     Attrib V30    -0.11173774296688925
#>     Attrib V31    0.059456521118106065
#>     Attrib V32    -0.04380529923115846
#>     Attrib V33    -0.0315518816145373
#>     Attrib V34    0.00412392644904851
#>     Attrib V35    -0.10871151240225851
#>     Attrib V36    0.25133200866080313
#>     Attrib V37    0.22429717128815682
#>     Attrib V38    -0.15487067189308854
#>     Attrib V39    -0.07277749110098691
#>     Attrib V4    0.006892328685468135
#>     Attrib V40    0.01992452335565781
#>     Attrib V41    -0.0131684622056908
#>     Attrib V42    0.06238306973131022
#>     Attrib V43    -0.01839500060930733
#>     Attrib V44    -0.07722767969457332
#>     Attrib V45    -0.2593388165965834
#>     Attrib V46    -0.10272421003325244
#>     Attrib V47    0.028142301040783226
#>     Attrib V48    -0.03658428764593074
#>     Attrib V49    -0.2470131647716274
#>     Attrib V5    -0.1396649673036581
#>     Attrib V50    0.013144995810436265
#>     Attrib V51    0.0740392328635294
#>     Attrib V52    -0.1903424085841796
#>     Attrib V53    -0.051930916697866654
#>     Attrib V54    -0.026518970352802484
#>     Attrib V55    0.04276140638556086
#>     Attrib V56    0.048322303151215544
#>     Attrib V57    0.05086589232253628
#>     Attrib V58    -0.14517094827301613
#>     Attrib V59    0.05628016205807885
#>     Attrib V6    -0.013091271984284432
#>     Attrib V60    -0.01211832532015007
#>     Attrib V7    -3.5656383941900756E-4
#>     Attrib V8    0.14140180113378914
#>     Attrib V9    -0.204823063072011
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.7294831974659558
#>     Attrib V1    0.5250989294823151
#>     Attrib V10    0.24792469998123245
#>     Attrib V11    0.7630952943907389
#>     Attrib V12    0.7557642565000575
#>     Attrib V13    0.5116405380990482
#>     Attrib V14    -0.2095753718044827
#>     Attrib V15    0.01661403459585197
#>     Attrib V16    -0.5829180591289396
#>     Attrib V17    -0.28976067003282857
#>     Attrib V18    -0.41555475818311133
#>     Attrib V19    0.1594998984108322
#>     Attrib V2    0.03345161863827446
#>     Attrib V20    0.44499798855214096
#>     Attrib V21    0.32587001836218127
#>     Attrib V22    0.2279801997985837
#>     Attrib V23    0.6557786726401702
#>     Attrib V24    0.5963843176332031
#>     Attrib V25    -0.2704694110199036
#>     Attrib V26    -0.7986222963483943
#>     Attrib V27    0.08511814307396627
#>     Attrib V28    0.6408982258742862
#>     Attrib V29    -0.48281878315451143
#>     Attrib V3    -0.14867096491154763
#>     Attrib V30    0.0970024202524349
#>     Attrib V31    -0.5023537202488016
#>     Attrib V32    0.026455660544189293
#>     Attrib V33    0.20418680737781988
#>     Attrib V34    0.007025538377276309
#>     Attrib V35    0.28017892882242573
#>     Attrib V36    -0.732564237727525
#>     Attrib V37    -0.9505840049737323
#>     Attrib V38    0.5037294576834601
#>     Attrib V39    0.29474261316371236
#>     Attrib V4    -0.17908438149137046
#>     Attrib V40    -0.17741126176943867
#>     Attrib V41    -0.17618219995590897
#>     Attrib V42    -0.07859609637514096
#>     Attrib V43    -0.012736411826857526
#>     Attrib V44    0.18065391343342435
#>     Attrib V45    0.4964761844715817
#>     Attrib V46    0.038990035839034314
#>     Attrib V47    -0.1054622433624605
#>     Attrib V48    -0.12681850518624838
#>     Attrib V49    0.6997827928532658
#>     Attrib V5    0.5494775758618495
#>     Attrib V50    -0.37087454427341765
#>     Attrib V51    -0.1954374213855793
#>     Attrib V52    0.5795044907823806
#>     Attrib V53    0.14718519543487157
#>     Attrib V54    -0.07426409235103193
#>     Attrib V55    -0.24351738189193767
#>     Attrib V56    -0.014223025890603804
#>     Attrib V57    -0.36357871053720564
#>     Attrib V58    0.523514343297735
#>     Attrib V59    -0.15849228725095166
#>     Attrib V6    -0.14928275453205989
#>     Attrib V60    0.38385660545244793
#>     Attrib V7    0.06123098231178541
#>     Attrib V8    -0.6464246112607462
#>     Attrib V9    0.5427612785212897
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.42829196193447977
#>     Attrib V1    0.6649280197015214
#>     Attrib V10    0.22581206126836456
#>     Attrib V11    0.6029346956537911
#>     Attrib V12    0.5477117967456361
#>     Attrib V13    0.36420844928580975
#>     Attrib V14    -0.14718406740325118
#>     Attrib V15    0.037706049414434284
#>     Attrib V16    -0.38653916538066097
#>     Attrib V17    -0.15232344797535444
#>     Attrib V18    -0.21520129356829779
#>     Attrib V19    0.26392945115414834
#>     Attrib V2    0.1103329120133346
#>     Attrib V20    0.610802321636062
#>     Attrib V21    0.6055799453384482
#>     Attrib V22    0.6075725469099773
#>     Attrib V23    0.8995795723554233
#>     Attrib V24    0.6443572644658104
#>     Attrib V25    -0.19509496772657983
#>     Attrib V26    -0.8290322077907322
#>     Attrib V27    -0.15227081367290438
#>     Attrib V28    0.17742197358362555
#>     Attrib V29    -0.7096026822775827
#>     Attrib V3    0.01833374876383956
#>     Attrib V30    0.06674013791044463
#>     Attrib V31    -0.5138014666645688
#>     Attrib V32    0.054646615982761874
#>     Attrib V33    0.30537904737521626
#>     Attrib V34    -0.10488664233567793
#>     Attrib V35    -0.02435725112834122
#>     Attrib V36    -0.6475247862161858
#>     Attrib V37    -0.9461087408456915
#>     Attrib V38    0.6375139387495586
#>     Attrib V39    0.3724423721007559
#>     Attrib V4    -0.15445100246686827
#>     Attrib V40    -0.05639156617360682
#>     Attrib V41    -0.12075535059599272
#>     Attrib V42    -0.04592594679164036
#>     Attrib V43    0.15807936052454322
#>     Attrib V44    0.2526435095002197
#>     Attrib V45    0.2330412055182669
#>     Attrib V46    -0.15596050350312868
#>     Attrib V47    -0.1937409017284215
#>     Attrib V48    -0.1856056067442353
#>     Attrib V49    0.5765342504897981
#>     Attrib V5    0.4914195931190758
#>     Attrib V50    -0.16581524613373103
#>     Attrib V51    -0.12758547110320156
#>     Attrib V52    0.4572222689297886
#>     Attrib V53    0.1852861805913848
#>     Attrib V54    0.08624949281398743
#>     Attrib V55    -0.27073375013116907
#>     Attrib V56    0.3223336527966995
#>     Attrib V57    -0.2318401292225447
#>     Attrib V58    0.6131731329234109
#>     Attrib V59    0.18735197487677346
#>     Attrib V6    -0.16674547403044693
#>     Attrib V60    0.5663996350292192
#>     Attrib V7    0.12466406316606478
#>     Attrib V8    -0.5216915633104156
#>     Attrib V9    0.5455301165485601
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -1.0351541860920734
#>     Attrib V1    -0.43661608922025674
#>     Attrib V10    -0.5020926716846653
#>     Attrib V11    -1.0119656664323748
#>     Attrib V12    -0.8033866297149479
#>     Attrib V13    -0.6491269395869406
#>     Attrib V14    0.31190749529396605
#>     Attrib V15    0.09132481343509408
#>     Attrib V16    0.6456137701030032
#>     Attrib V17    0.31231879948963887
#>     Attrib V18    0.4479067099087647
#>     Attrib V19    -0.18648277635317032
#>     Attrib V2    0.08574394086118617
#>     Attrib V20    -0.4512142932146457
#>     Attrib V21    -0.24481249597967
#>     Attrib V22    -0.07516557159744082
#>     Attrib V23    -0.6655953385064053
#>     Attrib V24    -0.6429365100917106
#>     Attrib V25    0.432306660209538
#>     Attrib V26    0.8953559869949821
#>     Attrib V27    -0.24382485631486212
#>     Attrib V28    -0.9194436905776362
#>     Attrib V29    0.44805239037661154
#>     Attrib V3    0.2878019173950391
#>     Attrib V30    -0.2161137917352551
#>     Attrib V31    0.4826045216923927
#>     Attrib V32    -0.168402508790531
#>     Attrib V33    -0.15329933573323037
#>     Attrib V34    -0.09012211638885546
#>     Attrib V35    -0.49772786311411854
#>     Attrib V36    0.7595845573249459
#>     Attrib V37    0.9519754921043337
#>     Attrib V38    -0.6923821251888577
#>     Attrib V39    -0.35593682607968297
#>     Attrib V4    0.3446719327140986
#>     Attrib V40    0.28122588196499676
#>     Attrib V41    0.1793019755014047
#>     Attrib V42    0.25168285361107773
#>     Attrib V43    0.041181510026990505
#>     Attrib V44    -0.4229073837651723
#>     Attrib V45    -0.815463400119042
#>     Attrib V46    -0.12055134316073834
#>     Attrib V47    0.07338610091323644
#>     Attrib V48    0.023182279884813993
#>     Attrib V49    -1.0125966589314397
#>     Attrib V5    -0.6538939717276232
#>     Attrib V50    0.45223496510597877
#>     Attrib V51    0.20479732392795683
#>     Attrib V52    -0.7083877497049239
#>     Attrib V53    -0.10303571325850475
#>     Attrib V54    0.2306297148211033
#>     Attrib V55    0.3634968789093939
#>     Attrib V56    0.12484885991359129
#>     Attrib V57    0.5983894903009436
#>     Attrib V58    -0.5103062862911663
#>     Attrib V59    0.40732628083610467
#>     Attrib V6    0.060080249315193346
#>     Attrib V60    -0.14686496501347931
#>     Attrib V7    -0.06216744424383015
#>     Attrib V8    0.6545741550545596
#>     Attrib V9    -0.8131821434214929
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.08638753312442791
#>     Attrib V1    0.28865456253677013
#>     Attrib V10    0.052143545320308904
#>     Attrib V11    0.20880230308219086
#>     Attrib V12    0.15489661692217532
#>     Attrib V13    0.07557505209116165
#>     Attrib V14    -0.04565349792450421
#>     Attrib V15    -0.01778617484854224
#>     Attrib V16    -0.0741886404389264
#>     Attrib V17    0.00376898070472005
#>     Attrib V18    -0.053998227236662234
#>     Attrib V19    0.03608105990986433
#>     Attrib V2    0.09882941553403962
#>     Attrib V20    0.165798210789823
#>     Attrib V21    0.10917497515537536
#>     Attrib V22    0.04127540190473786
#>     Attrib V23    0.1693445796897996
#>     Attrib V24    0.2187546123695984
#>     Attrib V25    -0.09636668604254613
#>     Attrib V26    -0.3655695608726499
#>     Attrib V27    -0.12337918588730222
#>     Attrib V28    0.028001758144970364
#>     Attrib V29    -0.23837468199841125
#>     Attrib V3    0.038528977798740954
#>     Attrib V30    -0.038892930232785373
#>     Attrib V31    -0.14390803541171554
#>     Attrib V32    0.034413799322251554
#>     Attrib V33    0.0723289167934779
#>     Attrib V34    -0.02608591572416416
#>     Attrib V35    0.036115387493296965
#>     Attrib V36    -0.25327119189556013
#>     Attrib V37    -0.30606198297674625
#>     Attrib V38    0.15728800962404899
#>     Attrib V39    0.0986931149251907
#>     Attrib V4    0.014436704010798065
#>     Attrib V40    -0.046127317456320226
#>     Attrib V41    -0.14843650125471977
#>     Attrib V42    -0.046719858615375656
#>     Attrib V43    0.060885171613981784
#>     Attrib V44    0.0778553559630512
#>     Attrib V45    0.07269605219381557
#>     Attrib V46    0.011173779801944693
#>     Attrib V47    -0.06481779139156986
#>     Attrib V48    0.005398352234808012
#>     Attrib V49    0.20196599977684168
#>     Attrib V5    0.23779625394762413
#>     Attrib V50    -0.07343971565227916
#>     Attrib V51    -0.055134337697668095
#>     Attrib V52    0.19640923097651444
#>     Attrib V53    0.11388486314955146
#>     Attrib V54    0.09588220086487337
#>     Attrib V55    0.004306838876480175
#>     Attrib V56    0.144182582160321
#>     Attrib V57    0.016876679374773284
#>     Attrib V58    0.26300864519073636
#>     Attrib V59    0.04692584736947124
#>     Attrib V6    -0.028064945662498585
#>     Attrib V60    0.20911495714261388
#>     Attrib V7    0.020151736426744185
#>     Attrib V8    -0.2591246158411562
#>     Attrib V9    0.18652080055118198
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.14564321407535605
#>     Attrib V1    0.3115047433919709
#>     Attrib V10    -7.862279907987767E-5
#>     Attrib V11    0.26810042445872645
#>     Attrib V12    0.23844040626844384
#>     Attrib V13    0.14475425302554287
#>     Attrib V14    -0.06908699119035983
#>     Attrib V15    0.002578421853654558
#>     Attrib V16    -0.19304456691498026
#>     Attrib V17    0.019454503040780172
#>     Attrib V18    -0.05519778917930136
#>     Attrib V19    0.09933816696827769
#>     Attrib V2    0.05298169860031282
#>     Attrib V20    0.19156093262282414
#>     Attrib V21    0.14582030922851844
#>     Attrib V22    0.13600185613500876
#>     Attrib V23    0.3231325741479394
#>     Attrib V24    0.2366558501302373
#>     Attrib V25    -0.06481407951635082
#>     Attrib V26    -0.334766180077592
#>     Attrib V27    -0.1437114953113203
#>     Attrib V28    0.030175618243801217
#>     Attrib V29    -0.36990721922825714
#>     Attrib V3    0.09493615026272649
#>     Attrib V30    -0.056802823633929106
#>     Attrib V31    -0.24503038556066534
#>     Attrib V32    0.03278758300470915
#>     Attrib V33    0.12922861382782813
#>     Attrib V34    -0.026135284824229808
#>     Attrib V35    0.09520161225307684
#>     Attrib V36    -0.266131217328369
#>     Attrib V37    -0.3199473337876404
#>     Attrib V38    0.22990565842193803
#>     Attrib V39    0.14566194941898128
#>     Attrib V4    0.034064575664385026
#>     Attrib V40    -0.11056839016556026
#>     Attrib V41    -0.14052977469804198
#>     Attrib V42    -0.047982079053186376
#>     Attrib V43    0.06451497200908168
#>     Attrib V44    0.10890986923794928
#>     Attrib V45    0.18030706278999148
#>     Attrib V46    -0.011755861764383731
#>     Attrib V47    -0.0022440466092821807
#>     Attrib V48    -0.08173675256209505
#>     Attrib V49    0.22851741579793453
#>     Attrib V5    0.2585246294258485
#>     Attrib V50    -0.12209712516987406
#>     Attrib V51    -0.08125301435092654
#>     Attrib V52    0.2689802846465675
#>     Attrib V53    0.16537335970421096
#>     Attrib V54    0.06926344771516874
#>     Attrib V55    -0.028695034258258176
#>     Attrib V56    0.17559774652873164
#>     Attrib V57    -0.050779511713717695
#>     Attrib V58    0.25841827392260736
#>     Attrib V59    0.09588508364728827
#>     Attrib V6    -0.03707409026580285
#>     Attrib V60    0.1815391850775711
#>     Attrib V7    0.027788942248261866
#>     Attrib V8    -0.26883766130888137
#>     Attrib V9    0.20396877255442997
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.5730743556242248
#>     Attrib V1    -0.2852570039693678
#>     Attrib V10    -0.28996543195808994
#>     Attrib V11    -0.6005583155154974
#>     Attrib V12    -0.4783796276567544
#>     Attrib V13    -0.39147665033610024
#>     Attrib V14    0.18331259720100143
#>     Attrib V15    0.0892454109442104
#>     Attrib V16    0.35793842451095764
#>     Attrib V17    0.23789443776145913
#>     Attrib V18    0.2577138187818737
#>     Attrib V19    -0.07932191432004573
#>     Attrib V2    0.02417098683593993
#>     Attrib V20    -0.24254350601276595
#>     Attrib V21    -0.14410325484155853
#>     Attrib V22    -0.04585085100075167
#>     Attrib V23    -0.33893537636822874
#>     Attrib V24    -0.4268970210248714
#>     Attrib V25    0.18802337163660704
#>     Attrib V26    0.5128830541053444
#>     Attrib V27    -0.12982215363301602
#>     Attrib V28    -0.45801579147394517
#>     Attrib V29    0.27538494121810686
#>     Attrib V3    0.14082584078269678
#>     Attrib V30    -0.12671540661271427
#>     Attrib V31    0.2532057581558045
#>     Attrib V32    -0.050374957126318086
#>     Attrib V33    -0.15187401307406936
#>     Attrib V34    -0.07506882778697518
#>     Attrib V35    -0.28029506683095223
#>     Attrib V36    0.49352639241490337
#>     Attrib V37    0.5648664471965325
#>     Attrib V38    -0.3812850268927764
#>     Attrib V39    -0.25214285559626076
#>     Attrib V4    0.19793976517671083
#>     Attrib V40    0.1454040305522082
#>     Attrib V41    0.11034508007951252
#>     Attrib V42    0.1336080119328935
#>     Attrib V43    0.04047389606599231
#>     Attrib V44    -0.28397977689245313
#>     Attrib V45    -0.5171550208828382
#>     Attrib V46    -0.08602831598072519
#>     Attrib V47    0.08124012131356317
#>     Attrib V48    0.006510237025563962
#>     Attrib V49    -0.6225061794992479
#>     Attrib V5    -0.4236334309586876
#>     Attrib V50    0.28046625815521764
#>     Attrib V51    0.1451549050559925
#>     Attrib V52    -0.36656183922586155
#>     Attrib V53    -0.13395358594857137
#>     Attrib V54    0.09748626212600553
#>     Attrib V55    0.19866433665485897
#>     Attrib V56    0.10958652755451946
#>     Attrib V57    0.33778481482074457
#>     Attrib V58    -0.3168512968944337
#>     Attrib V59    0.17046973526311526
#>     Attrib V6    0.07558475057244132
#>     Attrib V60    -0.13994331680002642
#>     Attrib V7    -0.09412468590982853
#>     Attrib V8    0.4003277344042133
#>     Attrib V9    -0.434744099820658
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.9531463454176381
#>     Attrib V1    0.2364254273333601
#>     Attrib V10    0.8929150738538111
#>     Attrib V11    1.2556943616144973
#>     Attrib V12    1.0308945470877469
#>     Attrib V13    0.6820303932751158
#>     Attrib V14    -0.32287628606263297
#>     Attrib V15    -0.26116396673739317
#>     Attrib V16    -0.7367096617889203
#>     Attrib V17    -0.4244976158918637
#>     Attrib V18    -0.43745907192552486
#>     Attrib V19    -0.004316126123454468
#>     Attrib V2    -0.11169998501800987
#>     Attrib V20    0.16697863483544667
#>     Attrib V21    0.1130247765634741
#>     Attrib V22    -0.2236192942067832
#>     Attrib V23    0.5570957167596498
#>     Attrib V24    0.49816834536043153
#>     Attrib V25    -0.4706239204025282
#>     Attrib V26    -0.37064128725220885
#>     Attrib V27    0.9229836532564913
#>     Attrib V28    1.556704622634369
#>     Attrib V29    0.3375658104962401
#>     Attrib V3    -0.27563567341442696
#>     Attrib V30    0.2985638277321535
#>     Attrib V31    -0.42242035414599566
#>     Attrib V32    -0.16356554393803804
#>     Attrib V33    -0.455813731567313
#>     Attrib V34    -0.13865328782821718
#>     Attrib V35    0.5233180720060863
#>     Attrib V36    -0.729314972689753
#>     Attrib V37    -0.4843469595652051
#>     Attrib V38    0.3207140785760417
#>     Attrib V39    0.1507812661577994
#>     Attrib V4    0.029061862240846847
#>     Attrib V40    -0.3703542131224701
#>     Attrib V41    0.2642148753594014
#>     Attrib V42    -0.3366206088105063
#>     Attrib V43    -0.049080850917708044
#>     Attrib V44    0.5064329481072968
#>     Attrib V45    1.0204750774333242
#>     Attrib V46    0.23353177064439234
#>     Attrib V47    0.05200438268587009
#>     Attrib V48    0.18782508336194387
#>     Attrib V49    0.956930269351354
#>     Attrib V5    0.7028649608793122
#>     Attrib V50    -0.24409228094415214
#>     Attrib V51    0.26779322760534396
#>     Attrib V52    0.9901479111811742
#>     Attrib V53    0.11552782559442004
#>     Attrib V54    -0.38207225087415875
#>     Attrib V55    -0.11479014879470001
#>     Attrib V56    -0.43340416867992004
#>     Attrib V57    -0.32702802158229183
#>     Attrib V58    0.32638325134834906
#>     Attrib V59    -0.4117817245306698
#>     Attrib V6    0.2131829345658402
#>     Attrib V60    0.0862666418741626
#>     Attrib V7    -4.121141503366655E-4
#>     Attrib V8    -0.1958644901225113
#>     Attrib V9    0.9647907145732865
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.19009432685502498
#>     Attrib V1    0.0677799664904273
#>     Attrib V10    -0.01352948929912328
#>     Attrib V11    -0.031924238736885685
#>     Attrib V12    0.01464699580792179
#>     Attrib V13    -0.015016873324425084
#>     Attrib V14    0.07398899571527366
#>     Attrib V15    0.030850762606303404
#>     Attrib V16    0.023558804911788828
#>     Attrib V17    0.06695311287577677
#>     Attrib V18    -0.0032271781297715696
#>     Attrib V19    0.05476765007176205
#>     Attrib V2    0.0794085306649806
#>     Attrib V20    -0.012485101386739852
#>     Attrib V21    -0.02221322301533609
#>     Attrib V22    -0.04157903656834568
#>     Attrib V23    -0.02475176785842783
#>     Attrib V24    -0.04392286607614093
#>     Attrib V25    -0.02367728788455323
#>     Attrib V26    -0.06801413688849837
#>     Attrib V27    -0.026959789467368205
#>     Attrib V28    -0.01228151135878568
#>     Attrib V29    -0.017420876349224155
#>     Attrib V3    0.05170756426910237
#>     Attrib V30    -0.027707000976788892
#>     Attrib V31    -0.025767684563377108
#>     Attrib V32    -0.009345381175337458
#>     Attrib V33    0.07161718808892524
#>     Attrib V34    0.010018823629464702
#>     Attrib V35    0.09533620067326201
#>     Attrib V36    0.1085438428572661
#>     Attrib V37    0.12867943197678075
#>     Attrib V38    0.034711091908934344
#>     Attrib V39    0.06159946439544157
#>     Attrib V4    0.10812336899119335
#>     Attrib V40    0.03579964566550311
#>     Attrib V41    0.002156849943163139
#>     Attrib V42    0.06877429578136791
#>     Attrib V43    0.042326088582810624
#>     Attrib V44    0.04809729588870423
#>     Attrib V45    0.01848597596717098
#>     Attrib V46    0.009319087975577922
#>     Attrib V47    0.029921826707615406
#>     Attrib V48    0.07297369002720683
#>     Attrib V49    -0.01592346104562582
#>     Attrib V5    0.03991399035771827
#>     Attrib V50    0.046561188142857625
#>     Attrib V51    0.048062994020919576
#>     Attrib V52    0.026385192423702547
#>     Attrib V53    0.041844668027988044
#>     Attrib V54    0.037600971896951475
#>     Attrib V55    0.052756330936486955
#>     Attrib V56    0.085594070181545
#>     Attrib V57    0.12021138621632453
#>     Attrib V58    0.06957060295729361
#>     Attrib V59    0.07301869885645032
#>     Attrib V6    0.08661700060674951
#>     Attrib V60    0.11684094930369121
#>     Attrib V7    0.006068894242948666
#>     Attrib V8    0.05128077561511722
#>     Attrib V9    0.004920872987642513
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.6037496163462327
#>     Attrib V1    0.6052801920594834
#>     Attrib V10    0.2966570062798754
#>     Attrib V11    0.701427201734887
#>     Attrib V12    0.5978877062523834
#>     Attrib V13    0.43316887061280696
#>     Attrib V14    -0.25551841365965483
#>     Attrib V15    -0.01874360507592034
#>     Attrib V16    -0.458264526768814
#>     Attrib V17    -0.22607310143201675
#>     Attrib V18    -0.242214493892038
#>     Attrib V19    0.18470495382488686
#>     Attrib V2    0.054089863009569784
#>     Attrib V20    0.45664334416826646
#>     Attrib V21    0.44353680192252604
#>     Attrib V22    0.3769394741607954
#>     Attrib V23    0.7187787372693745
#>     Attrib V24    0.6132077046854546
#>     Attrib V25    -0.23848298798093356
#>     Attrib V26    -0.7044204262429866
#>     Attrib V27    -0.04143739509984551
#>     Attrib V28    0.36568340514683706
#>     Attrib V29    -0.5967803101833719
#>     Attrib V3    -0.05974844808979384
#>     Attrib V30    0.0674626585105913
#>     Attrib V31    -0.4703970035975666
#>     Attrib V32    0.07409418660623604
#>     Attrib V33    0.1987167891760733
#>     Attrib V34    0.008638641113851207
#>     Attrib V35    0.1466122996883618
#>     Attrib V36    -0.662873018129144
#>     Attrib V37    -0.8924426496226255
#>     Attrib V38    0.5456409374693454
#>     Attrib V39    0.3469239266620032
#>     Attrib V4    -0.163215787998616
#>     Attrib V40    -0.19477280702024966
#>     Attrib V41    -0.17398860482118997
#>     Attrib V42    -0.09576572304675032
#>     Attrib V43    0.019775593540717347
#>     Attrib V44    0.2517376141460484
#>     Attrib V45    0.3986849055307295
#>     Attrib V46    -0.07955750511407107
#>     Attrib V47    -0.15788182963906963
#>     Attrib V48    -0.1458074136424137
#>     Attrib V49    0.5513086785216567
#>     Attrib V5    0.4842981564023632
#>     Attrib V50    -0.2133212979594398
#>     Attrib V51    -0.14610448955856256
#>     Attrib V52    0.49189777365100473
#>     Attrib V53    0.16883822184148164
#>     Attrib V54    0.014024297269905709
#>     Attrib V55    -0.24170474042556944
#>     Attrib V56    0.10554963562968683
#>     Attrib V57    -0.2634651487581456
#>     Attrib V58    0.5105556574070663
#>     Attrib V59    -0.008568624909966257
#>     Attrib V6    -0.10148188502234136
#>     Attrib V60    0.4484929543621329
#>     Attrib V7    0.03624772048010779
#>     Attrib V8    -0.5046366468768911
#>     Attrib V9    0.5846753067695312
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.8770416307672566
#>     Attrib V1    -0.16635630679646338
#>     Attrib V10    -1.0694511340323472
#>     Attrib V11    -1.3899165564446103
#>     Attrib V12    -1.2543937220558952
#>     Attrib V13    -0.7709746079308843
#>     Attrib V14    0.37340086050275106
#>     Attrib V15    0.3210804218372928
#>     Attrib V16    0.8391636307864778
#>     Attrib V17    0.4895268921855206
#>     Attrib V18    0.56274699891546
#>     Attrib V19    0.06356767841264625
#>     Attrib V2    0.09009220230999852
#>     Attrib V20    -0.0673095835157863
#>     Attrib V21    -0.01836325886344419
#>     Attrib V22    0.3556118934734514
#>     Attrib V23    -0.5586837771794995
#>     Attrib V24    -0.6507205219179488
#>     Attrib V25    0.19777882413269735
#>     Attrib V26    -0.0031211588506931246
#>     Attrib V27    -1.1151865355612747
#>     Attrib V28    -1.6701647673696545
#>     Attrib V29    -0.44994618640889317
#>     Attrib V3    0.3127833557890939
#>     Attrib V30    -0.2268186592758105
#>     Attrib V31    0.39969851749430935
#>     Attrib V32    0.2562963853765506
#>     Attrib V33    0.5881694995563135
#>     Attrib V34    0.1746890812820398
#>     Attrib V35    -0.5958207864009881
#>     Attrib V36    0.692209868055746
#>     Attrib V37    0.27026848517377994
#>     Attrib V38    -0.23502330085105164
#>     Attrib V39    -0.0730914385500644
#>     Attrib V4    -0.045096165720651935
#>     Attrib V40    0.25217467151612516
#>     Attrib V41    -0.39463156813035133
#>     Attrib V42    0.40964657687688494
#>     Attrib V43    2.288031302368844E-4
#>     Attrib V44    -0.49658151580818244
#>     Attrib V45    -1.0338412674575055
#>     Attrib V46    -0.42612588338039237
#>     Attrib V47    -0.2654628018654525
#>     Attrib V48    -0.2815022785399592
#>     Attrib V49    -0.9923943017875629
#>     Attrib V5    -0.7001844358669802
#>     Attrib V50    0.13745947145382745
#>     Attrib V51    -0.45670486889546286
#>     Attrib V52    -0.9438528056537175
#>     Attrib V53    -0.29938665770547646
#>     Attrib V54    0.45785921876643026
#>     Attrib V55    0.07896899472913299
#>     Attrib V56    0.5123446062302859
#>     Attrib V57    0.2510825100924641
#>     Attrib V58    -0.3248441981969897
#>     Attrib V59    0.44801717925580614
#>     Attrib V6    -0.33125549850781555
#>     Attrib V60    -0.05666115142533518
#>     Attrib V7    -0.06286246640544227
#>     Attrib V8    0.08136910517509426
#>     Attrib V9    -0.9898553970311136
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.4476684017709763
#>     Attrib V1    0.43843599658210536
#>     Attrib V10    0.17833232231104013
#>     Attrib V11    0.6094977782966277
#>     Attrib V12    0.5100743995379105
#>     Attrib V13    0.33229213255439083
#>     Attrib V14    -0.13710412856947665
#>     Attrib V15    8.594394194066517E-4
#>     Attrib V16    -0.3964802080316294
#>     Attrib V17    -0.17360768904281024
#>     Attrib V18    -0.2412324438802288
#>     Attrib V19    0.13670848982571449
#>     Attrib V2    0.037411298680430596
#>     Attrib V20    0.4735931933689755
#>     Attrib V21    0.3933199955991211
#>     Attrib V22    0.3207942511838011
#>     Attrib V23    0.5812225776860115
#>     Attrib V24    0.5331485540840886
#>     Attrib V25    -0.147870086413863
#>     Attrib V26    -0.7037474357646513
#>     Attrib V27    -0.06220698446755124
#>     Attrib V28    0.3338054582367111
#>     Attrib V29    -0.4701937245815062
#>     Attrib V3    0.011900010443487014
#>     Attrib V30    -0.009484066360138344
#>     Attrib V31    -0.42006109703247657
#>     Attrib V32    0.0771221287425503
#>     Attrib V33    0.20766585288666303
#>     Attrib V34    -1.570337515506994E-4
#>     Attrib V35    0.129451734452117
#>     Attrib V36    -0.6149277670488928
#>     Attrib V37    -0.7583305620497077
#>     Attrib V38    0.45241782451580925
#>     Attrib V39    0.300172961872716
#>     Attrib V4    -0.15680195035052352
#>     Attrib V40    -0.1275291888686855
#>     Attrib V41    -0.14303340599559075
#>     Attrib V42    -0.09696358503274383
#>     Attrib V43    0.07426420967934022
#>     Attrib V44    0.1245190170483832
#>     Attrib V45    0.33226751244603986
#>     Attrib V46    -0.020614045265375924
#>     Attrib V47    -0.051574279293838274
#>     Attrib V48    -0.127788787088703
#>     Attrib V49    0.480422128143666
#>     Attrib V5    0.398736076739788
#>     Attrib V50    -0.178350661819764
#>     Attrib V51    -0.11174486347473024
#>     Attrib V52    0.44661521836666523
#>     Attrib V53    0.13900635609342737
#>     Attrib V54    -0.01513623775320752
#>     Attrib V55    -0.15706330946084895
#>     Attrib V56    0.15339175494458146
#>     Attrib V57    -0.19047872077060662
#>     Attrib V58    0.4146795505063226
#>     Attrib V59    -0.04979619690158937
#>     Attrib V6    -0.0895097709062165
#>     Attrib V60    0.35834161399669245
#>     Attrib V7    0.052510003698121546
#>     Attrib V8    -0.4382442754379796
#>     Attrib V9    0.4620162255654622
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.149450175934726
#>     Attrib V1    0.0933495343823648
#>     Attrib V10    0.05008245007397025
#>     Attrib V11    0.015711617981174406
#>     Attrib V12    0.03193704346113327
#>     Attrib V13    0.047279394954556
#>     Attrib V14    0.035051351924066866
#>     Attrib V15    0.06472783806736947
#>     Attrib V16    0.03891043853266268
#>     Attrib V17    0.09202534438712467
#>     Attrib V18    0.03505847023391968
#>     Attrib V19    -0.020405852773002577
#>     Attrib V2    0.08801729492845659
#>     Attrib V20    -0.048137674822498956
#>     Attrib V21    -0.012945296628124162
#>     Attrib V22    -0.03608795528515516
#>     Attrib V23    -0.01875579952134388
#>     Attrib V24    -0.056142888536372414
#>     Attrib V25    0.004758819667327346
#>     Attrib V26    -0.005771015789866506
#>     Attrib V27    -0.05432718433782932
#>     Attrib V28    -0.024239547663451638
#>     Attrib V29    -0.08042056211582001
#>     Attrib V3    0.06478198912618134
#>     Attrib V30    -8.237166138264672E-4
#>     Attrib V31    0.061531397291567466
#>     Attrib V32    3.352511974256752E-4
#>     Attrib V33    0.01635730459593336
#>     Attrib V34    0.003790440190194735
#>     Attrib V35    0.07940216204108605
#>     Attrib V36    0.05957190928147218
#>     Attrib V37    0.1234342167415209
#>     Attrib V38    0.026450779313699
#>     Attrib V39    0.10245201503465322
#>     Attrib V4    0.10230083093276114
#>     Attrib V40    0.06619839830267542
#>     Attrib V41    0.023055978662684398
#>     Attrib V42    0.0881265769779781
#>     Attrib V43    0.011532480050784064
#>     Attrib V44    -0.0028790651593344485
#>     Attrib V45    0.023290776359602413
#>     Attrib V46    0.027031851493267516
#>     Attrib V47    0.028610074433895228
#>     Attrib V48    0.060639003628833586
#>     Attrib V49    -0.023834151699761455
#>     Attrib V5    0.03777602071397259
#>     Attrib V50    0.009703380636990264
#>     Attrib V51    0.05068034748956712
#>     Attrib V52    0.04856207545026049
#>     Attrib V53    0.05941530997552752
#>     Attrib V54    0.04528352396703576
#>     Attrib V55    0.030423876070563082
#>     Attrib V56    0.10644010966085829
#>     Attrib V57    0.06281500058774793
#>     Attrib V58    0.09219432143489316
#>     Attrib V59    0.08677877263196511
#>     Attrib V6    0.06034032339240274
#>     Attrib V60    0.08536762063844429
#>     Attrib V7    -0.008445513517652574
#>     Attrib V8    0.013447766490413302
#>     Attrib V9    0.009844388144321072
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.08036900888828516
#>     Attrib V1    0.2752509485147083
#>     Attrib V10    0.0372912927691701
#>     Attrib V11    0.2453826064312616
#>     Attrib V12    0.1287718843785056
#>     Attrib V13    0.13312231858466939
#>     Attrib V14    -0.039614921911834834
#>     Attrib V15    0.024366349633334058
#>     Attrib V16    -0.14071051939846502
#>     Attrib V17    0.009974194103293818
#>     Attrib V18    -0.024406542004195182
#>     Attrib V19    0.08225311990447623
#>     Attrib V2    0.1314883898607004
#>     Attrib V20    0.22498593347962625
#>     Attrib V21    0.10740089587914496
#>     Attrib V22    0.13519915525206377
#>     Attrib V23    0.287471079156191
#>     Attrib V24    0.2573197524394115
#>     Attrib V25    -0.09806699342079765
#>     Attrib V26    -0.34541978938701134
#>     Attrib V27    -0.16176625621717353
#>     Attrib V28    -0.0019485690384455987
#>     Attrib V29    -0.34939421061531245
#>     Attrib V3    0.029316190335201456
#>     Attrib V30    -0.060107014871222976
#>     Attrib V31    -0.168072429061115
#>     Attrib V32    0.040039797418382
#>     Attrib V33    0.1649031741151916
#>     Attrib V34    0.028446636680572696
#>     Attrib V35    0.09203697974116107
#>     Attrib V36    -0.24963640221320624
#>     Attrib V37    -0.2983222507313273
#>     Attrib V38    0.2732416858755222
#>     Attrib V39    0.12583942150390168
#>     Attrib V4    0.025143549256028627
#>     Attrib V40    -0.06527034880357602
#>     Attrib V41    -0.15656952125768203
#>     Attrib V42    -0.05311773775132876
#>     Attrib V43    0.04639801524018427
#>     Attrib V44    0.13635882887024084
#>     Attrib V45    0.11131287683479667
#>     Attrib V46    -0.017727632814455715
#>     Attrib V47    -0.03568840186141639
#>     Attrib V48    -0.027166238752793823
#>     Attrib V49    0.21987506400786383
#>     Attrib V5    0.21861583018137898
#>     Attrib V50    -0.09056273106743537
#>     Attrib V51    -0.07154023863684092
#>     Attrib V52    0.20146445707285782
#>     Attrib V53    0.15327714809283244
#>     Attrib V54    0.12610662627779987
#>     Attrib V55    -0.006541423028903385
#>     Attrib V56    0.08726871921547567
#>     Attrib V57    -0.01361485670749026
#>     Attrib V58    0.19553770503666948
#>     Attrib V59    0.037218841518589466
#>     Attrib V6    -0.04044499432976364
#>     Attrib V60    0.18354708428892735
#>     Attrib V7    0.045839205945852224
#>     Attrib V8    -0.20933188516486456
#>     Attrib V9    0.23170116272321306
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.046705119918432944
#>     Attrib V1    0.22910742669519296
#>     Attrib V10    -0.023031123913688393
#>     Attrib V11    0.16430858513868637
#>     Attrib V12    0.1061909822988893
#>     Attrib V13    0.041623515395820834
#>     Attrib V14    4.1522169200634433E-4
#>     Attrib V15    0.032755798384400917
#>     Attrib V16    -0.07608616074239248
#>     Attrib V17    -0.03143490733771265
#>     Attrib V18    0.01326198545672084
#>     Attrib V19    0.0104552379344223
#>     Attrib V2    0.052296612890845626
#>     Attrib V20    0.1325212420101962
#>     Attrib V21    0.10701108818465983
#>     Attrib V22    0.02826271370740695
#>     Attrib V23    0.18971263832208654
#>     Attrib V24    0.13410875406218603
#>     Attrib V25    -0.12978188184899342
#>     Attrib V26    -0.3076659467333443
#>     Attrib V27    -0.08633647040973684
#>     Attrib V28    0.11251382248970455
#>     Attrib V29    -0.1771914264555698
#>     Attrib V3    0.0865362945588582
#>     Attrib V30    0.025510919869077744
#>     Attrib V31    -0.18692725938060428
#>     Attrib V32    1.2094807247332996E-5
#>     Attrib V33    0.10344661859740899
#>     Attrib V34    6.115750071718573E-4
#>     Attrib V35    0.06305440483401296
#>     Attrib V36    -0.11254969953120776
#>     Attrib V37    -0.18687224706304004
#>     Attrib V38    0.16414057990817835
#>     Attrib V39    0.14580267851293702
#>     Attrib V4    -0.0022824022803835473
#>     Attrib V40    -0.07309514365083607
#>     Attrib V41    -0.13979489160049619
#>     Attrib V42    -0.009950479210172463
#>     Attrib V43    -0.0309790896982025
#>     Attrib V44    0.11747485492267012
#>     Attrib V45    0.16740341406401707
#>     Attrib V46    0.007301345598576762
#>     Attrib V47    -0.023331672059482462
#>     Attrib V48    -0.043186848021856565
#>     Attrib V49    0.20267346044853418
#>     Attrib V5    0.20186443197437684
#>     Attrib V50    -0.0867687527135447
#>     Attrib V51    -0.00813997541060934
#>     Attrib V52    0.1952576258616169
#>     Attrib V53    0.11447410094770491
#>     Attrib V54    0.00910372869092534
#>     Attrib V55    -0.03458028171527478
#>     Attrib V56    0.07601811143671289
#>     Attrib V57    0.006588883961610657
#>     Attrib V58    0.22982657996277853
#>     Attrib V59    0.019538841941755668
#>     Attrib V6    0.0057256951822789864
#>     Attrib V60    0.11901647719873053
#>     Attrib V7    0.03259226647527347
#>     Attrib V8    -0.12477221803689836
#>     Attrib V9    0.165219760669983
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
#>  0.1594203 
```
