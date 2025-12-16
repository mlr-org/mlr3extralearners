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
#>     Threshold    0.05889118873790305
#>     Node 2    2.42835597945687
#>     Node 3    2.0470207404572167
#>     Node 4    1.201659239837088
#>     Node 5    -1.8741382876477832
#>     Node 6    1.2815507263806474
#>     Node 7    2.0944706459739844
#>     Node 8    1.9856776383953756
#>     Node 9    2.3277100249889187
#>     Node 10    -1.440656946412014
#>     Node 11    1.2219166899565663
#>     Node 12    1.9621273057598263
#>     Node 13    0.27225679905822175
#>     Node 14    2.133791283026281
#>     Node 15    -1.9543102450026264
#>     Node 16    0.5310191290876861
#>     Node 17    0.47273377707653863
#>     Node 18    -0.37598810448006925
#>     Node 19    2.590589984006969
#>     Node 20    1.9136509739163725
#>     Node 21    -2.589259109357901
#>     Node 22    1.0291600693821816
#>     Node 23    1.7021795743457244
#>     Node 24    -2.4227727843973264
#>     Node 25    4.028033366671409
#>     Node 26    0.035908895417857904
#>     Node 27    2.00561743442814
#>     Node 28    -3.030759990599508
#>     Node 29    1.0608433993439965
#>     Node 30    -1.3994429758468583
#>     Node 31    1.4398887687952369
#>     Node 32    0.3634741469422583
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.06113836954066313
#>     Node 2    -2.4663339085502445
#>     Node 3    -2.018195829754852
#>     Node 4    -1.1631085555241027
#>     Node 5    1.8827794978452017
#>     Node 6    -1.255249741516764
#>     Node 7    -2.077898419582176
#>     Node 8    -2.027038860070429
#>     Node 9    -2.333566858499766
#>     Node 10    1.3703739653226281
#>     Node 11    -1.190616298581851
#>     Node 12    -2.0300176020976086
#>     Node 13    -0.22005169525831605
#>     Node 14    -2.0584627997749947
#>     Node 15    1.9421542778738519
#>     Node 16    -0.5449929921169646
#>     Node 17    -0.43988809988996647
#>     Node 18    0.4098447785396699
#>     Node 19    -2.583929883110351
#>     Node 20    -1.89664639484388
#>     Node 21    2.6363087699490446
#>     Node 22    -1.0744579713829296
#>     Node 23    -1.7398422605882287
#>     Node 24    2.414662216885878
#>     Node 25    -4.02249771878142
#>     Node 26    -0.12240376869941462
#>     Node 27    -2.0461793678415403
#>     Node 28    2.9820837807816396
#>     Node 29    -1.094777809659427
#>     Node 30    1.4747661500456624
#>     Node 31    -1.3770503164640666
#>     Node 32    -0.38201458752298656
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.34368470772760673
#>     Attrib V1    0.3039781130442142
#>     Attrib V10    -0.4100842081508006
#>     Attrib V11    -0.007837689130383308
#>     Attrib V12    0.18974696281156395
#>     Attrib V13    -0.1186371821293238
#>     Attrib V14    -0.11466698078750102
#>     Attrib V15    0.32376849365860744
#>     Attrib V16    0.32092839911029675
#>     Attrib V17    -0.020206610422718194
#>     Attrib V18    -0.22813657794274242
#>     Attrib V19    0.25761311092406497
#>     Attrib V2    -0.1487053949872843
#>     Attrib V20    0.5933795641294463
#>     Attrib V21    0.7981837996730079
#>     Attrib V22    0.2706787389095884
#>     Attrib V23    -0.03076971900264376
#>     Attrib V24    0.45872346631029987
#>     Attrib V25    -0.7141953934339409
#>     Attrib V26    -1.0989243850057568
#>     Attrib V27    -0.4939906183995824
#>     Attrib V28    -0.20902265964976935
#>     Attrib V29    -0.9496823009631805
#>     Attrib V3    0.19835148809995876
#>     Attrib V30    0.021297434658791463
#>     Attrib V31    -1.1871847621503495
#>     Attrib V32    -0.45156016857694997
#>     Attrib V33    0.15961332580879506
#>     Attrib V34    -0.14399108381110853
#>     Attrib V35    -0.21879820668019104
#>     Attrib V36    -0.6778031138578248
#>     Attrib V37    -0.9558790227875598
#>     Attrib V38    0.6750265440770211
#>     Attrib V39    0.36641399981285266
#>     Attrib V4    0.10439672584181878
#>     Attrib V40    -0.33951720941202784
#>     Attrib V41    -0.2895889529010542
#>     Attrib V42    0.451065113018462
#>     Attrib V43    0.542245708665295
#>     Attrib V44    0.5751916506054512
#>     Attrib V45    0.43797766633416824
#>     Attrib V46    0.26553984553648724
#>     Attrib V47    -0.3362627331804463
#>     Attrib V48    0.04008575256079072
#>     Attrib V49    0.42871663499446216
#>     Attrib V5    0.10995593533730831
#>     Attrib V50    -0.9189609421601334
#>     Attrib V51    -0.6284471190908018
#>     Attrib V52    -0.2638262823278741
#>     Attrib V53    0.3950531862722765
#>     Attrib V54    0.666396534057706
#>     Attrib V55    -0.009071222799516132
#>     Attrib V56    0.7765610480818725
#>     Attrib V57    0.3010950257836554
#>     Attrib V58    0.4418254558688266
#>     Attrib V59    0.8190662573716577
#>     Attrib V6    -0.5186940479709574
#>     Attrib V60    0.8866307282851172
#>     Attrib V7    -0.20077516359150827
#>     Attrib V8    -0.056294919907800965
#>     Attrib V9    0.4586098296765635
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.34767310842771654
#>     Attrib V1    0.2872247833901558
#>     Attrib V10    -0.39571629672961106
#>     Attrib V11    0.01269270173175762
#>     Attrib V12    0.23868393230919277
#>     Attrib V13    -0.07728634163654731
#>     Attrib V14    -0.12277698279176474
#>     Attrib V15    0.338978454830954
#>     Attrib V16    0.27770817309511103
#>     Attrib V17    -0.02239594160181435
#>     Attrib V18    -0.2570940520351131
#>     Attrib V19    0.2561467294870784
#>     Attrib V2    -0.06769899229365543
#>     Attrib V20    0.4710397918589011
#>     Attrib V21    0.5708096672116226
#>     Attrib V22    0.22992874920776593
#>     Attrib V23    -0.051851766895237086
#>     Attrib V24    0.403603025601966
#>     Attrib V25    -0.5196031571129011
#>     Attrib V26    -0.9084303573241064
#>     Attrib V27    -0.474314510319124
#>     Attrib V28    -0.3436789753435618
#>     Attrib V29    -1.0311184112620935
#>     Attrib V3    0.1525024322690094
#>     Attrib V30    -0.024012076175524057
#>     Attrib V31    -0.8827425530356192
#>     Attrib V32    -0.3684309912581667
#>     Attrib V33    0.15515735541314565
#>     Attrib V34    -0.07942086883524191
#>     Attrib V35    -0.08851421646214544
#>     Attrib V36    -0.48405554512798066
#>     Attrib V37    -0.7434806278491853
#>     Attrib V38    0.5192433064804322
#>     Attrib V39    0.30795572282928474
#>     Attrib V4    0.08788847719200876
#>     Attrib V40    -0.3091063477866329
#>     Attrib V41    -0.30541546455394086
#>     Attrib V42    0.30979026503361456
#>     Attrib V43    0.4215254922852595
#>     Attrib V44    0.4220410921806627
#>     Attrib V45    0.3587450923414949
#>     Attrib V46    0.20462973354405398
#>     Attrib V47    -0.243426501447916
#>     Attrib V48    0.04424555404510757
#>     Attrib V49    0.3650579921892682
#>     Attrib V5    0.06771421037182951
#>     Attrib V50    -0.7490289121582248
#>     Attrib V51    -0.5645774800259132
#>     Attrib V52    -0.1716334628979179
#>     Attrib V53    0.35850572245334467
#>     Attrib V54    0.6946156399439526
#>     Attrib V55    0.11356163789826554
#>     Attrib V56    0.659246558125995
#>     Attrib V57    0.33384324297287005
#>     Attrib V58    0.42922518123259623
#>     Attrib V59    0.724604356030126
#>     Attrib V6    -0.4654263393637877
#>     Attrib V60    0.7061498146557766
#>     Attrib V7    -0.2598153250387554
#>     Attrib V8    -0.056953190949989865
#>     Attrib V9    0.333002634083993
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.27250997312603153
#>     Attrib V1    -0.005889002114810296
#>     Attrib V10    0.1918443388629387
#>     Attrib V11    0.35486415642746705
#>     Attrib V12    0.35425235970572333
#>     Attrib V13    0.13601480627288892
#>     Attrib V14    -0.12606700580679803
#>     Attrib V15    -0.092936630893611
#>     Attrib V16    -0.05003973324572003
#>     Attrib V17    -0.3684639209070663
#>     Attrib V18    -0.30768324483633014
#>     Attrib V19    0.1968617021922851
#>     Attrib V2    -0.2549097618050696
#>     Attrib V20    -0.08921912385215269
#>     Attrib V21    0.06501682349886555
#>     Attrib V22    -0.04727849334241684
#>     Attrib V23    -0.24337981219283883
#>     Attrib V24    0.17398214580251908
#>     Attrib V25    -0.1742147415760415
#>     Attrib V26    -0.020656688520232346
#>     Attrib V27    0.4147566772274085
#>     Attrib V28    0.6048965234956001
#>     Attrib V29    0.1772239544350773
#>     Attrib V3    -0.0068550190450472025
#>     Attrib V30    0.3417234087738684
#>     Attrib V31    -0.20439299581035647
#>     Attrib V32    0.07468465492105801
#>     Attrib V33    0.05641723953133086
#>     Attrib V34    0.023966352664426344
#>     Attrib V35    0.12395400130161661
#>     Attrib V36    -0.17920820674433408
#>     Attrib V37    -0.3938683835377139
#>     Attrib V38    0.19247216778548612
#>     Attrib V39    0.12481880203392046
#>     Attrib V4    0.09424393774231073
#>     Attrib V40    -0.1692409169164136
#>     Attrib V41    -0.07918459719896195
#>     Attrib V42    0.03716886375019687
#>     Attrib V43    0.07505339822649328
#>     Attrib V44    0.19802323863074883
#>     Attrib V45    0.3080525085534966
#>     Attrib V46    0.2798004759413151
#>     Attrib V47    0.06725690110534036
#>     Attrib V48    0.3078448356558548
#>     Attrib V49    0.48400541132006686
#>     Attrib V5    0.19645951470320125
#>     Attrib V50    -0.5430645869376906
#>     Attrib V51    -0.14100510128436464
#>     Attrib V52    0.11124877673024396
#>     Attrib V53    0.33720674988893184
#>     Attrib V54    -0.021495590249703364
#>     Attrib V55    -0.11205294516586847
#>     Attrib V56    -0.11663355799029816
#>     Attrib V57    0.031017289263518575
#>     Attrib V58    0.003869559978401024
#>     Attrib V59    0.34555409954346034
#>     Attrib V6    -0.23278461608100523
#>     Attrib V60    0.24756338254612514
#>     Attrib V7    -0.27312205121719707
#>     Attrib V8    -0.09127018805855844
#>     Attrib V9    0.498596923666283
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.439623635545428
#>     Attrib V1    0.11859454646239252
#>     Attrib V10    -0.4723921423978061
#>     Attrib V11    -0.7218122515070536
#>     Attrib V12    -0.7528283327859348
#>     Attrib V13    -0.40436898135351595
#>     Attrib V14    0.26410575914266177
#>     Attrib V15    0.35866071755302587
#>     Attrib V16    0.15971035229539923
#>     Attrib V17    0.5857401338703414
#>     Attrib V18    0.3781960299807475
#>     Attrib V19    -0.6999615566682895
#>     Attrib V2    0.4706848551345249
#>     Attrib V20    -0.20925184283394577
#>     Attrib V21    -0.30622743836976135
#>     Attrib V22    -0.2955774663086774
#>     Attrib V23    -0.012369799838688321
#>     Attrib V24    -0.8255542699527132
#>     Attrib V25    0.04125123987161416
#>     Attrib V26    0.04665611770462414
#>     Attrib V27    -0.529980775124539
#>     Attrib V28    -0.675105669189531
#>     Attrib V29    0.23349259218318294
#>     Attrib V3    7.890859819059552E-4
#>     Attrib V30    -0.3296444054435215
#>     Attrib V31    0.6752006388706214
#>     Attrib V32    -0.003089986546389725
#>     Attrib V33    -0.11885763563028047
#>     Attrib V34    -0.010527518491888654
#>     Attrib V35    -0.0928013295549685
#>     Attrib V36    0.5217900632422942
#>     Attrib V37    0.8914168841007313
#>     Attrib V38    -0.4792907107899703
#>     Attrib V39    -0.3621967670425194
#>     Attrib V4    -0.1989798461522311
#>     Attrib V40    0.1868120725535617
#>     Attrib V41    -0.11435566923107358
#>     Attrib V42    -0.23195419508492632
#>     Attrib V43    -0.1895461452309997
#>     Attrib V44    -0.19840324498012335
#>     Attrib V45    -0.38998068650998774
#>     Attrib V46    -0.5999875362358942
#>     Attrib V47    -0.17884164114220308
#>     Attrib V48    -0.4990115997021379
#>     Attrib V49    -0.9731313991833103
#>     Attrib V5    -0.2572105691460136
#>     Attrib V50    1.0521272611948091
#>     Attrib V51    0.24684825992257964
#>     Attrib V52    -0.20036641743266093
#>     Attrib V53    -0.39110563950115484
#>     Attrib V54    0.12309687824867686
#>     Attrib V55    0.48054227497079927
#>     Attrib V56    0.09404196455981725
#>     Attrib V57    0.2735428586543928
#>     Attrib V58    -0.053388286177518805
#>     Attrib V59    -0.36290404867671755
#>     Attrib V6    0.42141869382299896
#>     Attrib V60    -0.3643627121378923
#>     Attrib V7    0.5210631854627791
#>     Attrib V8    0.21778352287163963
#>     Attrib V9    -1.0513113841693398
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.3612675097543005
#>     Attrib V1    0.22232086773829068
#>     Attrib V10    -0.25429992173085597
#>     Attrib V11    0.08840810246773012
#>     Attrib V12    0.2757626881565011
#>     Attrib V13    -0.06889627883678696
#>     Attrib V14    -0.13678771892791086
#>     Attrib V15    0.10139438430574584
#>     Attrib V16    0.2145900959075412
#>     Attrib V17    -0.09754438553275177
#>     Attrib V18    -0.1005841948948377
#>     Attrib V19    0.23006554150299627
#>     Attrib V2    -0.11547003022655669
#>     Attrib V20    0.24045855883940634
#>     Attrib V21    0.29705547357664264
#>     Attrib V22    0.016772750877397942
#>     Attrib V23    -0.1755564000724477
#>     Attrib V24    0.28730310696982353
#>     Attrib V25    -0.2244360877963162
#>     Attrib V26    -0.4493923518973261
#>     Attrib V27    -0.11859764306576658
#>     Attrib V28    -0.14978099966790642
#>     Attrib V29    -0.5558888027871711
#>     Attrib V3    0.036803798533457
#>     Attrib V30    -0.019876566547840605
#>     Attrib V31    -0.5477531005758336
#>     Attrib V32    -0.18658107332582044
#>     Attrib V33    0.05475552093646832
#>     Attrib V34    -0.020070550754651154
#>     Attrib V35    0.0476689251377248
#>     Attrib V36    -0.2729471695629031
#>     Attrib V37    -0.4666973028490171
#>     Attrib V38    0.33480299754595233
#>     Attrib V39    0.16537455336634116
#>     Attrib V4    0.10844997319130727
#>     Attrib V40    -0.2686009264307342
#>     Attrib V41    -0.17093767683933234
#>     Attrib V42    0.12664554935180336
#>     Attrib V43    0.20884905446160745
#>     Attrib V44    0.22969665668382652
#>     Attrib V45    0.29591586057597463
#>     Attrib V46    0.2033181565520078
#>     Attrib V47    -0.13273120430775634
#>     Attrib V48    0.09011324455135908
#>     Attrib V49    0.29039180867889786
#>     Attrib V5    0.0992146442935968
#>     Attrib V50    -0.5065616738624213
#>     Attrib V51    -0.34460218983323887
#>     Attrib V52    -0.07885954012269754
#>     Attrib V53    0.40976628773459334
#>     Attrib V54    0.3596229602722737
#>     Attrib V55    0.026096513305883022
#>     Attrib V56    0.2703292368322351
#>     Attrib V57    0.24625641744880541
#>     Attrib V58    0.20764614819778718
#>     Attrib V59    0.5797111205582899
#>     Attrib V6    -0.22444458794596736
#>     Attrib V60    0.48317114962614394
#>     Attrib V7    -0.1661073659743585
#>     Attrib V8    -0.036530633100551976
#>     Attrib V9    0.3056317912249111
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.14287620973906756
#>     Attrib V1    0.21161591338648233
#>     Attrib V10    0.1692812895326193
#>     Attrib V11    0.5920766999476453
#>     Attrib V12    0.47601749168048096
#>     Attrib V13    0.2744672494757872
#>     Attrib V14    -0.23453069442938074
#>     Attrib V15    -0.2172794564449151
#>     Attrib V16    -0.0689595009929098
#>     Attrib V17    -0.29058000583998855
#>     Attrib V18    -0.2620103144807363
#>     Attrib V19    0.6567534496552245
#>     Attrib V2    -0.25360636549327753
#>     Attrib V20    0.7616097429749742
#>     Attrib V21    0.9573623888343535
#>     Attrib V22    0.7351969755766787
#>     Attrib V23    0.6529308840522193
#>     Attrib V24    0.949406733177469
#>     Attrib V25    -0.08643244488529467
#>     Attrib V26    -0.25196862908880113
#>     Attrib V27    0.1274863330858896
#>     Attrib V28    0.2378746677200376
#>     Attrib V29    -0.63706406925884
#>     Attrib V3    0.25077774330449915
#>     Attrib V30    0.2401674174623537
#>     Attrib V31    -0.9523965152411726
#>     Attrib V32    -0.24161528214266265
#>     Attrib V33    0.11964969380191791
#>     Attrib V34    -0.08637292226211396
#>     Attrib V35    0.23100378919244544
#>     Attrib V36    -0.364423534807769
#>     Attrib V37    -0.8100772316739243
#>     Attrib V38    0.7633193737595856
#>     Attrib V39    0.38995135504689676
#>     Attrib V4    0.1804385128590166
#>     Attrib V40    -0.3833191757523068
#>     Attrib V41    -0.19522275592149643
#>     Attrib V42    0.3141138016912513
#>     Attrib V43    0.4482606397298112
#>     Attrib V44    0.4132642036929024
#>     Attrib V45    0.4464249281573788
#>     Attrib V46    0.5286820988323909
#>     Attrib V47    0.026928333364157536
#>     Attrib V48    0.06822347653377545
#>     Attrib V49    0.6971256263878234
#>     Attrib V5    0.11583563423234153
#>     Attrib V50    -0.7756179947388014
#>     Attrib V51    -0.23710811337504964
#>     Attrib V52    -0.029370344382300927
#>     Attrib V53    0.03923634045584264
#>     Attrib V54    0.2720678942336273
#>     Attrib V55    -0.17214577724067137
#>     Attrib V56    0.46366463513554756
#>     Attrib V57    -0.276248047262628
#>     Attrib V58    0.31090736651102097
#>     Attrib V59    0.5126121941620646
#>     Attrib V6    -0.6562619212753248
#>     Attrib V60    0.6867477176615503
#>     Attrib V7    -0.47169835711023905
#>     Attrib V8    -0.23458759269177873
#>     Attrib V9    0.9537138337421137
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.5200783720121679
#>     Attrib V1    0.10272161728772353
#>     Attrib V10    0.3988709433440004
#>     Attrib V11    0.6376998829184856
#>     Attrib V12    0.6476695641731847
#>     Attrib V13    0.27103705041734066
#>     Attrib V14    -0.2073133390819003
#>     Attrib V15    -0.1496559375135334
#>     Attrib V16    -0.017193214722234534
#>     Attrib V17    -0.6723739563029348
#>     Attrib V18    -0.5930920648325947
#>     Attrib V19    2.2645968236610913E-4
#>     Attrib V2    -0.18581780087117772
#>     Attrib V20    -0.6262964347652554
#>     Attrib V21    -0.37026224817343373
#>     Attrib V22    -0.2796710181002593
#>     Attrib V23    -0.6140374833163188
#>     Attrib V24    0.03636204253022767
#>     Attrib V25    -0.1330522079051587
#>     Attrib V26    0.29620375784757774
#>     Attrib V27    0.9387595294965827
#>     Attrib V28    1.1236125943533521
#>     Attrib V29    0.7150712997341747
#>     Attrib V3    -0.05080799947343273
#>     Attrib V30    0.5053386033902069
#>     Attrib V31    -0.03712062648644737
#>     Attrib V32    0.15919462589726058
#>     Attrib V33    -0.09267372557620684
#>     Attrib V34    0.03545702617033032
#>     Attrib V35    0.17163018456247123
#>     Attrib V36    -0.014836682898122797
#>     Attrib V37    -0.23544545935636005
#>     Attrib V38    0.17228223523673225
#>     Attrib V39    0.13387709202886214
#>     Attrib V4    0.22776376302344184
#>     Attrib V40    -0.04843129827051679
#>     Attrib V41    0.09124414814459093
#>     Attrib V42    -0.16414975831171733
#>     Attrib V43    -0.016385949636449237
#>     Attrib V44    0.07919723032713126
#>     Attrib V45    0.2960104584922285
#>     Attrib V46    0.5492129002492642
#>     Attrib V47    0.36048505961203264
#>     Attrib V48    0.5320817872951178
#>     Attrib V49    0.5968811536234347
#>     Attrib V5    0.2997711029313774
#>     Attrib V50    -0.5592366378695803
#>     Attrib V51    -0.13801532088016683
#>     Attrib V52    0.25669823496861105
#>     Attrib V53    0.5541077000808164
#>     Attrib V54    0.011525870433011903
#>     Attrib V55    -0.0670365738257366
#>     Attrib V56    -0.49655408693793596
#>     Attrib V57    0.3212792622482167
#>     Attrib V58    -0.056600249386209646
#>     Attrib V59    0.5839116318225932
#>     Attrib V6    0.039997149903387964
#>     Attrib V60    0.3261868985104318
#>     Attrib V7    -0.1137719838907376
#>     Attrib V8    -0.008804522696880252
#>     Attrib V9    0.46412552620608905
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.19560014358554081
#>     Attrib V1    0.01105521556351922
#>     Attrib V10    0.8891186363054838
#>     Attrib V11    0.9807594609196796
#>     Attrib V12    0.8483894048372134
#>     Attrib V13    0.48940609852547157
#>     Attrib V14    -0.38986851984583387
#>     Attrib V15    -0.7025191639221323
#>     Attrib V16    -0.3309273804541794
#>     Attrib V17    -0.695018838961764
#>     Attrib V18    -0.29093354866981685
#>     Attrib V19    0.6330294517580747
#>     Attrib V2    -0.33869594791925073
#>     Attrib V20    -0.1542930447539792
#>     Attrib V21    0.05508714979430533
#>     Attrib V22    0.28208085864963006
#>     Attrib V23    0.1446903459956841
#>     Attrib V24    0.5852755994709288
#>     Attrib V25    0.2535932325294079
#>     Attrib V26    0.6099154297208343
#>     Attrib V27    1.1592153739782598
#>     Attrib V28    1.2104955615735105
#>     Attrib V29    0.5048486222785378
#>     Attrib V3    0.07308804209428701
#>     Attrib V30    0.5303101015516501
#>     Attrib V31    -0.11226127089424275
#>     Attrib V32    0.4151100835563056
#>     Attrib V33    0.05874450948081174
#>     Attrib V34    0.06657197843481902
#>     Attrib V35    0.2893779970969667
#>     Attrib V36    -0.2428772484222206
#>     Attrib V37    -0.7025939188315495
#>     Attrib V38    0.08469410652638752
#>     Attrib V39    0.23605134106656547
#>     Attrib V4    0.2985058906188984
#>     Attrib V40    -0.0357273260546695
#>     Attrib V41    0.3351440802429824
#>     Attrib V42    0.0022907453324423426
#>     Attrib V43    0.0810685811275115
#>     Attrib V44    0.0024716194474871988
#>     Attrib V45    0.2598527847256702
#>     Attrib V46    0.6591932482372648
#>     Attrib V47    0.5753576798724326
#>     Attrib V48    0.6273835610851383
#>     Attrib V49    0.9921331830985698
#>     Attrib V5    0.3542777789717806
#>     Attrib V50    -0.5847533211930228
#>     Attrib V51    0.21146949103872248
#>     Attrib V52    0.5403847046158956
#>     Attrib V53    0.4581277959032835
#>     Attrib V54    -0.3539148785037741
#>     Attrib V55    -0.3097171303401767
#>     Attrib V56    -0.42907094526908174
#>     Attrib V57    -0.38673965152999146
#>     Attrib V58    -0.06742908921424517
#>     Attrib V59    0.33727954008357297
#>     Attrib V6    -0.05863112149992336
#>     Attrib V60    0.17879806213035526
#>     Attrib V7    -0.38955317072147416
#>     Attrib V8    -0.05120160042150216
#>     Attrib V9    0.987579970934236
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.41501314977556675
#>     Attrib V1    0.11788239082127482
#>     Attrib V10    -0.3343266015729666
#>     Attrib V11    -0.5772114576173668
#>     Attrib V12    -0.5173958621839992
#>     Attrib V13    -0.20900310362908436
#>     Attrib V14    0.27346474690016526
#>     Attrib V15    0.19605842164244727
#>     Attrib V16    0.1297867904119764
#>     Attrib V17    0.3763291120796609
#>     Attrib V18    0.3890081017749914
#>     Attrib V19    -0.4129137532283496
#>     Attrib V2    0.3421252116917416
#>     Attrib V20    -0.10682161305831804
#>     Attrib V21    -0.22694038713664721
#>     Attrib V22    -0.19105495120116756
#>     Attrib V23    0.04821838411592223
#>     Attrib V24    -0.5726129760464498
#>     Attrib V25    0.055259141744148074
#>     Attrib V26    0.06724008235555773
#>     Attrib V27    -0.3813006722931342
#>     Attrib V28    -0.4403562751906677
#>     Attrib V29    0.20355676098385483
#>     Attrib V3    0.004423831862253483
#>     Attrib V30    -0.26115864268848626
#>     Attrib V31    0.5541036388974316
#>     Attrib V32    -0.07675539404959308
#>     Attrib V33    -0.11860055271811926
#>     Attrib V34    0.005445888273611541
#>     Attrib V35    -0.04028480753567834
#>     Attrib V36    0.40018849552431834
#>     Attrib V37    0.708330817673114
#>     Attrib V38    -0.33190249893243995
#>     Attrib V39    -0.308943206607482
#>     Attrib V4    -0.11294265950922391
#>     Attrib V40    0.17259959321253965
#>     Attrib V41    0.03617249608142295
#>     Attrib V42    -0.2148488908787124
#>     Attrib V43    -0.19380537371585171
#>     Attrib V44    -0.1835547343449222
#>     Attrib V45    -0.2558837418557375
#>     Attrib V46    -0.4224872984155439
#>     Attrib V47    -0.08592298602130165
#>     Attrib V48    -0.39656022175828204
#>     Attrib V49    -0.7345422809473974
#>     Attrib V5    -0.1718624602301433
#>     Attrib V50    0.8411058762322581
#>     Attrib V51    0.23388937508936067
#>     Attrib V52    -0.1107266227812226
#>     Attrib V53    -0.18212434458487808
#>     Attrib V54    0.04150376947547694
#>     Attrib V55    0.3115703430113223
#>     Attrib V56    -0.025183851742532074
#>     Attrib V57    0.19217672617559978
#>     Attrib V58    -0.09685678787172416
#>     Attrib V59    -0.3068316209269698
#>     Attrib V6    0.4108296413219928
#>     Attrib V60    -0.3315769842131427
#>     Attrib V7    0.4051592463793191
#>     Attrib V8    0.13116580101949984
#>     Attrib V9    -0.813628409162697
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.33961961636969007
#>     Attrib V1    0.03562333612420557
#>     Attrib V10    0.09189628437079164
#>     Attrib V11    0.3707366143462218
#>     Attrib V12    0.4294915036896998
#>     Attrib V13    0.04909522636471748
#>     Attrib V14    -0.21109579151217256
#>     Attrib V15    -0.12103307825859645
#>     Attrib V16    -0.005658850622258862
#>     Attrib V17    -0.26303089525659784
#>     Attrib V18    -0.24221905644916056
#>     Attrib V19    0.1627855677267336
#>     Attrib V2    -0.2849189982351494
#>     Attrib V20    -0.053282165317385374
#>     Attrib V21    -0.024017508431869006
#>     Attrib V22    -0.11499011535952076
#>     Attrib V23    -0.30924379896767223
#>     Attrib V24    0.19308991826948935
#>     Attrib V25    -0.09275380494500114
#>     Attrib V26    -0.0726351014264602
#>     Attrib V27    0.3633046760539151
#>     Attrib V28    0.4360447009979047
#>     Attrib V29    -0.029048422395181968
#>     Attrib V3    -0.1245804790239129
#>     Attrib V30    0.32030069147994655
#>     Attrib V31    -0.2653605770274374
#>     Attrib V32    -0.03888983073939873
#>     Attrib V33    -0.00851376449199259
#>     Attrib V34    0.10112432503892364
#>     Attrib V35    0.23329662679462884
#>     Attrib V36    -0.0508842205707824
#>     Attrib V37    -0.3380349549705827
#>     Attrib V38    0.3600484260396995
#>     Attrib V39    0.11515944892561533
#>     Attrib V4    0.06455002776312618
#>     Attrib V40    -0.28319320014445176
#>     Attrib V41    -0.24335163675493746
#>     Attrib V42    -0.05165221463938763
#>     Attrib V43    0.1341024187707515
#>     Attrib V44    0.30111193020845695
#>     Attrib V45    0.3795807992311049
#>     Attrib V46    0.30029678645328933
#>     Attrib V47    0.08036911464101654
#>     Attrib V48    0.2959862167791138
#>     Attrib V49    0.39732126909591
#>     Attrib V5    0.16604665674606933
#>     Attrib V50    -0.5298250746022775
#>     Attrib V51    -0.14776823982768036
#>     Attrib V52    0.04746805738627404
#>     Attrib V53    0.2944027038548661
#>     Attrib V54    0.1846452836206197
#>     Attrib V55    -0.024744954481376466
#>     Attrib V56    -0.09853819191608724
#>     Attrib V57    0.10912023693463058
#>     Attrib V58    0.034408668367019224
#>     Attrib V59    0.36051683341229823
#>     Attrib V6    -0.2312806610098535
#>     Attrib V60    0.2812013431722478
#>     Attrib V7    -0.2916143486739818
#>     Attrib V8    -0.05532073095772877
#>     Attrib V9    0.42693809929213455
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.41541068068935083
#>     Attrib V1    0.23785214138199803
#>     Attrib V10    -0.42270374897450036
#>     Attrib V11    0.08145665511327314
#>     Attrib V12    0.16649568742567766
#>     Attrib V13    -0.12690246591843368
#>     Attrib V14    -0.12397316571587567
#>     Attrib V15    0.26422158909719373
#>     Attrib V16    0.33995256660503326
#>     Attrib V17    -0.006638080286641891
#>     Attrib V18    -0.19717481388956748
#>     Attrib V19    0.3200035889791388
#>     Attrib V2    -0.08731766945494875
#>     Attrib V20    0.4406021368018654
#>     Attrib V21    0.5861459135959223
#>     Attrib V22    0.22782224277872112
#>     Attrib V23    -0.086855628735348
#>     Attrib V24    0.3339741465660929
#>     Attrib V25    -0.6259437431353382
#>     Attrib V26    -0.9178362749023522
#>     Attrib V27    -0.34916674007668774
#>     Attrib V28    -0.2426796896728252
#>     Attrib V29    -0.8329693238213361
#>     Attrib V3    0.05333497724292394
#>     Attrib V30    -0.014768296551050494
#>     Attrib V31    -0.9648600870836885
#>     Attrib V32    -0.4234207702963735
#>     Attrib V33    0.1552610800550733
#>     Attrib V34    -0.03387144775102166
#>     Attrib V35    -0.04093262905088881
#>     Attrib V36    -0.4286004145959657
#>     Attrib V37    -0.724750644546707
#>     Attrib V38    0.6109853672976825
#>     Attrib V39    0.2574650299578037
#>     Attrib V4    0.1204608055251548
#>     Attrib V40    -0.32376440119696165
#>     Attrib V41    -0.3474093111042786
#>     Attrib V42    0.24047554171017288
#>     Attrib V43    0.48896391173985865
#>     Attrib V44    0.45785840380854065
#>     Attrib V45    0.4425704737729803
#>     Attrib V46    0.30761499085404015
#>     Attrib V47    -0.27050666893076986
#>     Attrib V48    0.0783529546292949
#>     Attrib V49    0.35010375870482463
#>     Attrib V5    0.08166556958954845
#>     Attrib V50    -0.776568161419907
#>     Attrib V51    -0.5407605186360482
#>     Attrib V52    -0.17107280529670255
#>     Attrib V53    0.39406949462906143
#>     Attrib V54    0.5999499489883808
#>     Attrib V55    0.013954109332655113
#>     Attrib V56    0.6012255703342068
#>     Attrib V57    0.3664291288581734
#>     Attrib V58    0.3791386458259051
#>     Attrib V59    0.7242726530050544
#>     Attrib V6    -0.4872217445180215
#>     Attrib V60    0.7313274873019667
#>     Attrib V7    -0.21555221067965863
#>     Attrib V8    -0.06987748826090273
#>     Attrib V9    0.40329385258441103
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.19547619539840808
#>     Attrib V1    0.08588520958763886
#>     Attrib V10    -0.0148258226551389
#>     Attrib V11    0.03247804560689004
#>     Attrib V12    0.061099765260276044
#>     Attrib V13    0.05358073909086782
#>     Attrib V14    0.02283430457868915
#>     Attrib V15    -0.01771379402004043
#>     Attrib V16    -0.009322998930780342
#>     Attrib V17    -0.004696927119452172
#>     Attrib V18    -0.041302699679616646
#>     Attrib V19    -0.00343458861047793
#>     Attrib V2    0.039243782725294024
#>     Attrib V20    -0.03416707758122322
#>     Attrib V21    -0.06861392221232598
#>     Attrib V22    -0.12594843395752092
#>     Attrib V23    -0.07674396746444631
#>     Attrib V24    -0.023039327741359663
#>     Attrib V25    -0.04116793950347252
#>     Attrib V26    -0.1325091130145259
#>     Attrib V27    0.022607207021837366
#>     Attrib V28    -0.008860833195976246
#>     Attrib V29    -0.03610520273196253
#>     Attrib V3    0.15724431297551333
#>     Attrib V30    0.046590846578739416
#>     Attrib V31    -0.017089144541314424
#>     Attrib V32    0.07112517411083659
#>     Attrib V33    0.04633044840422871
#>     Attrib V34    0.09010802713943919
#>     Attrib V35    0.05697103369052369
#>     Attrib V36    -1.0127454317214608E-4
#>     Attrib V37    -0.0014817011127041379
#>     Attrib V38    0.08862142010944761
#>     Attrib V39    0.11868774533971148
#>     Attrib V4    0.121420044695929
#>     Attrib V40    0.03445336298635654
#>     Attrib V41    0.022784927325967038
#>     Attrib V42    0.025193921294463215
#>     Attrib V43    -0.0035637130181205593
#>     Attrib V44    0.002343025796769066
#>     Attrib V45    0.033381243755555574
#>     Attrib V46    0.11648809824999996
#>     Attrib V47    0.10478168753983552
#>     Attrib V48    0.06812198750731176
#>     Attrib V49    0.12979415624646579
#>     Attrib V5    0.11696655403607814
#>     Attrib V50    -0.038464039393473946
#>     Attrib V51    0.021305955354987218
#>     Attrib V52    0.058290617538741256
#>     Attrib V53    0.10884954922837596
#>     Attrib V54    0.03417812303935358
#>     Attrib V55    0.08498013218120533
#>     Attrib V56    0.10301628671424248
#>     Attrib V57    0.13495224061665992
#>     Attrib V58    0.06512279685696025
#>     Attrib V59    0.16693663210140683
#>     Attrib V6    0.050192979020821295
#>     Attrib V60    0.20024278731766473
#>     Attrib V7    0.025885837023865384
#>     Attrib V8    -0.003826131093442222
#>     Attrib V9    0.0781599899985216
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.37943997084996756
#>     Attrib V1    0.34155375174344393
#>     Attrib V10    -0.37488935639363913
#>     Attrib V11    0.2053477111806443
#>     Attrib V12    0.4004987302551577
#>     Attrib V13    -0.10050373804675537
#>     Attrib V14    -0.2541071171960913
#>     Attrib V15    0.2370633070503353
#>     Attrib V16    0.22072023148760592
#>     Attrib V17    -0.020318124579036177
#>     Attrib V18    -0.24815994087167148
#>     Attrib V19    0.19979990268270661
#>     Attrib V2    -0.1173642151845939
#>     Attrib V20    0.4210840384496726
#>     Attrib V21    0.5064406243799217
#>     Attrib V22    0.1557743473224329
#>     Attrib V23    -0.05797819780919907
#>     Attrib V24    0.49245539640700275
#>     Attrib V25    -0.35115496100417476
#>     Attrib V26    -0.7236269950087927
#>     Attrib V27    -0.47373426855243017
#>     Attrib V28    -0.5359365455940467
#>     Attrib V29    -1.2652368807486989
#>     Attrib V3    0.034695967388046325
#>     Attrib V30    -0.06982780201172893
#>     Attrib V31    -0.806103856111982
#>     Attrib V32    -0.39957700121240414
#>     Attrib V33    0.19574457936340908
#>     Attrib V34    0.08748424044642218
#>     Attrib V35    0.09806234580355813
#>     Attrib V36    -0.4045396099409004
#>     Attrib V37    -0.7293566822901842
#>     Attrib V38    0.5531287522158908
#>     Attrib V39    0.2857128377604656
#>     Attrib V4    0.03192407218849276
#>     Attrib V40    -0.3878620185136919
#>     Attrib V41    -0.4685052516408514
#>     Attrib V42    0.14631163493816826
#>     Attrib V43    0.37709922154459863
#>     Attrib V44    0.3878004503223824
#>     Attrib V45    0.3321133416135771
#>     Attrib V46    0.2545437983690539
#>     Attrib V47    -0.25835646866475587
#>     Attrib V48    0.18488793111553556
#>     Attrib V49    0.4644830076869619
#>     Attrib V5    0.014328838509882758
#>     Attrib V50    -0.7626185344333001
#>     Attrib V51    -0.541194876095223
#>     Attrib V52    -0.2201532749142248
#>     Attrib V53    0.35498421337207253
#>     Attrib V54    0.7723746250440188
#>     Attrib V55    0.1508723537786465
#>     Attrib V56    0.6539693044451667
#>     Attrib V57    0.3167322908267145
#>     Attrib V58    0.3580717159070924
#>     Attrib V59    0.7235725201381518
#>     Attrib V6    -0.5139941723705704
#>     Attrib V60    0.8083553110807555
#>     Attrib V7    -0.2510249390932737
#>     Attrib V8    -0.16322493386572848
#>     Attrib V9    0.41600129735877245
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.40010479574484414
#>     Attrib V1    0.09060841906876359
#>     Attrib V10    -0.6222075995324634
#>     Attrib V11    -0.858245188368496
#>     Attrib V12    -0.7149256251018841
#>     Attrib V13    -0.47904693119131847
#>     Attrib V14    0.26527903124969
#>     Attrib V15    0.48571389547930605
#>     Attrib V16    0.2855839277899069
#>     Attrib V17    0.629479214621119
#>     Attrib V18    0.3109176780096051
#>     Attrib V19    -0.7151610231030081
#>     Attrib V2    0.40244071098977613
#>     Attrib V20    -0.14193407999802476
#>     Attrib V21    -0.3432089558467293
#>     Attrib V22    -0.33111398689720906
#>     Attrib V23    -0.16290069363513476
#>     Attrib V24    -0.8382315871682541
#>     Attrib V25    -0.0911653602162695
#>     Attrib V26    -0.04518091060734123
#>     Attrib V27    -0.6851401139536661
#>     Attrib V28    -0.7829931565885141
#>     Attrib V29    0.08667135728861777
#>     Attrib V3    -0.02454762702408031
#>     Attrib V30    -0.42948930992659207
#>     Attrib V31    0.6073544384638448
#>     Attrib V32    -0.0356482514902531
#>     Attrib V33    -0.09754739408416546
#>     Attrib V34    0.06034673925191992
#>     Attrib V35    -0.15020641306805116
#>     Attrib V36    0.5096180113485262
#>     Attrib V37    0.9386423866141795
#>     Attrib V38    -0.40984185339250756
#>     Attrib V39    -0.29322145433203217
#>     Attrib V4    -0.19122594082052072
#>     Attrib V40    0.16858854610142426
#>     Attrib V41    -0.1929652873918864
#>     Attrib V42    -0.32900458068816507
#>     Attrib V43    -0.2348684197245132
#>     Attrib V44    -0.2646589032444707
#>     Attrib V45    -0.3731900590758796
#>     Attrib V46    -0.5983881629608918
#>     Attrib V47    -0.2862843698888888
#>     Attrib V48    -0.5635808789674315
#>     Attrib V49    -0.9990136765931552
#>     Attrib V5    -0.326731547844715
#>     Attrib V50    1.0296555662223863
#>     Attrib V51    0.15052095851712496
#>     Attrib V52    -0.29780971970310566
#>     Attrib V53    -0.3238341620496049
#>     Attrib V54    0.16050008454135933
#>     Attrib V55    0.48821998390644245
#>     Attrib V56    0.1807072444276408
#>     Attrib V57    0.3686627378271081
#>     Attrib V58    0.008597335113543058
#>     Attrib V59    -0.3618989191610299
#>     Attrib V6    0.3143687412010944
#>     Attrib V60    -0.3811580243613537
#>     Attrib V7    0.40837873096317295
#>     Attrib V8    0.19998800189970953
#>     Attrib V9    -1.0992387475826895
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.04635012026185169
#>     Attrib V1    0.12400381867129635
#>     Attrib V10    -0.012758856269518302
#>     Attrib V11    0.08133809511483123
#>     Attrib V12    0.13924582999431934
#>     Attrib V13    0.018182058220383795
#>     Attrib V14    -0.056802052060871154
#>     Attrib V15    -0.015435723837967704
#>     Attrib V16    0.06723749963517614
#>     Attrib V17    -0.07092126087295039
#>     Attrib V18    -0.08456602777429119
#>     Attrib V19    0.010716879530225069
#>     Attrib V2    -0.03457514962519062
#>     Attrib V20    -0.1309057608759846
#>     Attrib V21    -0.1414602453813135
#>     Attrib V22    -0.1889933960359723
#>     Attrib V23    -0.25483251260424866
#>     Attrib V24    0.026252043257470256
#>     Attrib V25    -0.07514378035536129
#>     Attrib V26    -0.150333708645079
#>     Attrib V27    0.004675759072890155
#>     Attrib V28    0.05694253459195372
#>     Attrib V29    -0.11717363068745124
#>     Attrib V3    0.09015457912079018
#>     Attrib V30    0.017338946806488825
#>     Attrib V31    -0.08071805056447248
#>     Attrib V32    0.028695093690354292
#>     Attrib V33    0.02366706338340904
#>     Attrib V34    0.0795771514562367
#>     Attrib V35    0.05957672850813229
#>     Attrib V36    -0.055410545987739514
#>     Attrib V37    -0.10990240385228618
#>     Attrib V38    0.11454275003325065
#>     Attrib V39    0.08122548323575324
#>     Attrib V4    0.13333062839133766
#>     Attrib V40    -0.08369195176818477
#>     Attrib V41    -0.02821240618780284
#>     Attrib V42    0.04183507500459454
#>     Attrib V43    0.04298366427847111
#>     Attrib V44    0.027798261644666346
#>     Attrib V45    0.14301314444309743
#>     Attrib V46    0.13946372345103847
#>     Attrib V47    0.04209839343806742
#>     Attrib V48    0.13072534806637912
#>     Attrib V49    0.13399442221536048
#>     Attrib V5    0.11721178254859657
#>     Attrib V50    -0.10506637832438744
#>     Attrib V51    0.017943334610523286
#>     Attrib V52    0.1071438977520938
#>     Attrib V53    0.24638338365961324
#>     Attrib V54    0.129321333345268
#>     Attrib V55    0.1426425511373889
#>     Attrib V56    0.11766704599511259
#>     Attrib V57    0.22596987307789412
#>     Attrib V58    0.16536769180576705
#>     Attrib V59    0.24386388240917176
#>     Attrib V6    -0.0031679297512401394
#>     Attrib V60    0.2659379998199432
#>     Attrib V7    -0.03617754606831988
#>     Attrib V8    0.010818020853037295
#>     Attrib V9    0.16508049692944082
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.04461820404311304
#>     Attrib V1    0.1296200828361303
#>     Attrib V10    0.055836922720412484
#>     Attrib V11    0.11174948271791207
#>     Attrib V12    0.08426674421718679
#>     Attrib V13    -0.057195825011050576
#>     Attrib V14    -0.03981899270253491
#>     Attrib V15    0.054150453372652306
#>     Attrib V16    0.02843837393120184
#>     Attrib V17    -0.08502610714130385
#>     Attrib V18    -0.12828906850434105
#>     Attrib V19    7.48170827138528E-4
#>     Attrib V2    0.08060792483380115
#>     Attrib V20    -0.1416133174203842
#>     Attrib V21    -0.1537998012457224
#>     Attrib V22    -0.12154358459269238
#>     Attrib V23    -0.23375759458834064
#>     Attrib V24    -0.03088319936764351
#>     Attrib V25    -0.13663856507779257
#>     Attrib V26    -0.1286826561641333
#>     Attrib V27    0.0483241491170489
#>     Attrib V28    0.07323967451795188
#>     Attrib V29    -0.08006470661290939
#>     Attrib V3    0.06911753713928669
#>     Attrib V30    0.1040815122521411
#>     Attrib V31    0.040048236501348894
#>     Attrib V32    0.004564281663759576
#>     Attrib V33    0.06602767838141685
#>     Attrib V34    0.025112844949782012
#>     Attrib V35    0.12508108783760097
#>     Attrib V36    -0.010645704374651153
#>     Attrib V37    -0.07237228376419057
#>     Attrib V38    0.1687098143645781
#>     Attrib V39    0.1126115562182539
#>     Attrib V4    0.12227240060540318
#>     Attrib V40    -0.06584705961277024
#>     Attrib V41    -0.007085372585218332
#>     Attrib V42    -0.022957127483893502
#>     Attrib V43    0.08339508325624063
#>     Attrib V44    0.07197027336809858
#>     Attrib V45    0.15426415057099355
#>     Attrib V46    0.09633339111293521
#>     Attrib V47    0.022900702841133005
#>     Attrib V48    0.1701568617070575
#>     Attrib V49    0.12165441244382261
#>     Attrib V5    0.10948273141233443
#>     Attrib V50    -0.08226031080641313
#>     Attrib V51    0.014172379103143687
#>     Attrib V52    0.07389315465176462
#>     Attrib V53    0.13826286610685193
#>     Attrib V54    0.0835402671274306
#>     Attrib V55    0.15626175512599633
#>     Attrib V56    0.10709342114111463
#>     Attrib V57    0.21803124203811203
#>     Attrib V58    0.06713901578134741
#>     Attrib V59    0.17772916990822837
#>     Attrib V6    0.002876263327156571
#>     Attrib V60    0.22631428212276913
#>     Attrib V7    -0.08131767067876225
#>     Attrib V8    0.07689654759443217
#>     Attrib V9    0.1391612164455059
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.25948269173997246
#>     Attrib V1    0.019745159611722327
#>     Attrib V10    -0.054739296386891324
#>     Attrib V11    -0.1975101829694907
#>     Attrib V12    -0.19136787012632575
#>     Attrib V13    -0.08194896328777637
#>     Attrib V14    0.06654855268800977
#>     Attrib V15    0.007197689629181761
#>     Attrib V16    0.03497673410028228
#>     Attrib V17    0.10539120052774192
#>     Attrib V18    0.2020439999627038
#>     Attrib V19    -0.11577149892488302
#>     Attrib V2    0.1304130983461367
#>     Attrib V20    -0.03124193249266592
#>     Attrib V21    -0.045626043862175704
#>     Attrib V22    -0.03769120394417295
#>     Attrib V23    0.036152921387894575
#>     Attrib V24    -0.191120379113053
#>     Attrib V25    -0.021653086695364587
#>     Attrib V26    -0.059482080282246275
#>     Attrib V27    -0.14725843802248034
#>     Attrib V28    -0.14798009408141105
#>     Attrib V29    0.030157971188409346
#>     Attrib V3    0.10213234893867922
#>     Attrib V30    -0.15223831870603538
#>     Attrib V31    0.16204904931188305
#>     Attrib V32    0.0827061210351014
#>     Attrib V33    0.024205290083999954
#>     Attrib V34    0.04408925078932108
#>     Attrib V35    0.010367212714336708
#>     Attrib V36    0.2335776642614435
#>     Attrib V37    0.26072697490381014
#>     Attrib V38    -0.06018352525084889
#>     Attrib V39    -0.01069635048424544
#>     Attrib V4    -0.025917284361668316
#>     Attrib V40    0.10071454715070818
#>     Attrib V41    0.05662874683753726
#>     Attrib V42    -0.011978359835299525
#>     Attrib V43    -0.03479065928980387
#>     Attrib V44    -0.029552747287957322
#>     Attrib V45    -0.1481849906715047
#>     Attrib V46    -0.10643354597127318
#>     Attrib V47    0.056383441282919326
#>     Attrib V48    -0.12029223791459906
#>     Attrib V49    -0.1672457591795664
#>     Attrib V5    -0.014616302185291105
#>     Attrib V50    0.24166788571782633
#>     Attrib V51    0.15304110832235307
#>     Attrib V52    -0.002076142669290125
#>     Attrib V53    -0.03987092465924258
#>     Attrib V54    -0.0722523240135371
#>     Attrib V55    0.09655995721757601
#>     Attrib V56    0.029110535987513585
#>     Attrib V57    0.0230596552480058
#>     Attrib V58    -0.03500118600875565
#>     Attrib V59    -0.09691427153255044
#>     Attrib V6    0.12346698182424524
#>     Attrib V60    -0.03305623465795501
#>     Attrib V7    0.14429903540412245
#>     Attrib V8    0.06675323784606688
#>     Attrib V9    -0.19916412864567334
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3142246818788641
#>     Attrib V1    0.1391764044412934
#>     Attrib V10    -0.23883363197993604
#>     Attrib V11    0.31105360235121354
#>     Attrib V12    0.6208447726306151
#>     Attrib V13    0.10316418342672858
#>     Attrib V14    -0.34188861665696196
#>     Attrib V15    -0.17909811976443904
#>     Attrib V16    -0.0675306825813355
#>     Attrib V17    -0.18062880489348576
#>     Attrib V18    -0.27573106945176584
#>     Attrib V19    0.5668819876890658
#>     Attrib V2    -0.2651466469446118
#>     Attrib V20    0.5547576441511503
#>     Attrib V21    0.6801136307823448
#>     Attrib V22    0.45937353629526667
#>     Attrib V23    0.37234986421713334
#>     Attrib V24    1.0360711742349022
#>     Attrib V25    -0.15345872711119193
#>     Attrib V26    -0.6897503477058388
#>     Attrib V27    -0.3353585367356832
#>     Attrib V28    -0.37015200682130867
#>     Attrib V29    -1.4058885716963068
#>     Attrib V3    0.2290113606179366
#>     Attrib V30    0.04400391229236276
#>     Attrib V31    -0.9204657271529427
#>     Attrib V32    -0.1498030633276504
#>     Attrib V33    0.5084955617713923
#>     Attrib V34    0.04497281792858343
#>     Attrib V35    -0.048031550666930864
#>     Attrib V36    -0.8016582852551927
#>     Attrib V37    -1.5007341937055039
#>     Attrib V38    0.4320967535067891
#>     Attrib V39    0.2958837561741924
#>     Attrib V4    0.213691288908681
#>     Attrib V40    -0.3550771782134635
#>     Attrib V41    -0.20870879763623668
#>     Attrib V42    0.49078414198366954
#>     Attrib V43    0.3973420750087282
#>     Attrib V44    0.09921876994567035
#>     Attrib V45    0.29929216888944504
#>     Attrib V46    0.2643782506022341
#>     Attrib V47    -0.23403376651543212
#>     Attrib V48    0.3751074910849615
#>     Attrib V49    0.9921191192763481
#>     Attrib V5    0.10489624153988714
#>     Attrib V50    -1.0584578330444547
#>     Attrib V51    -0.4175490289305705
#>     Attrib V52    -0.11716210049658728
#>     Attrib V53    0.30245331257450886
#>     Attrib V54    0.6555533392664693
#>     Attrib V55    0.08659285507563974
#>     Attrib V56    0.7497031504219541
#>     Attrib V57    -0.02150488661765184
#>     Attrib V58    0.5906634242730362
#>     Attrib V59    0.8786748943137588
#>     Attrib V6    -0.6238502471293144
#>     Attrib V60    0.8834252235349359
#>     Attrib V7    -0.4105084159072531
#>     Attrib V8    -0.078206133034317
#>     Attrib V9    0.7937360524029149
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.24230222491458075
#>     Attrib V1    0.2634913767489847
#>     Attrib V10    -0.05235943362107621
#>     Attrib V11    0.25869135366626866
#>     Attrib V12    0.3659330740376441
#>     Attrib V13    0.1398508615638172
#>     Attrib V14    -0.11972304446779902
#>     Attrib V15    0.12777395787909335
#>     Attrib V16    0.08034615371722213
#>     Attrib V17    -0.1192445960859869
#>     Attrib V18    -0.21842074978498793
#>     Attrib V19    0.4225316290264163
#>     Attrib V2    -0.22882611795914853
#>     Attrib V20    0.564431046555584
#>     Attrib V21    0.8069884777413768
#>     Attrib V22    0.5748406489637006
#>     Attrib V23    0.2972124388310787
#>     Attrib V24    0.59868194381791
#>     Attrib V25    -0.35330447997551706
#>     Attrib V26    -0.4998164825517597
#>     Attrib V27    0.018494947531920224
#>     Attrib V28    0.12168935638091699
#>     Attrib V29    -0.5306224712538216
#>     Attrib V3    0.08391254809120435
#>     Attrib V30    0.22234296308734877
#>     Attrib V31    -1.0146440496718843
#>     Attrib V32    -0.5368425639487295
#>     Attrib V33    -0.09376705521032616
#>     Attrib V34    -0.18925205143984664
#>     Attrib V35    0.12938605991192412
#>     Attrib V36    -0.16219208939810087
#>     Attrib V37    -0.4414007226009934
#>     Attrib V38    0.8617431409252454
#>     Attrib V39    0.3735218667442667
#>     Attrib V4    0.1071800615430379
#>     Attrib V40    -0.4421418098197872
#>     Attrib V41    -0.368347298036398
#>     Attrib V42    0.16813616991222502
#>     Attrib V43    0.5382312779394386
#>     Attrib V44    0.6714150599408429
#>     Attrib V45    0.5706140972303131
#>     Attrib V46    0.4364893232427265
#>     Attrib V47    -0.13573860322170547
#>     Attrib V48    0.014130610148619447
#>     Attrib V49    0.4454849132073844
#>     Attrib V5    0.15743681913731516
#>     Attrib V50    -0.766693300963015
#>     Attrib V51    -0.33463401892202926
#>     Attrib V52    -0.12983798965135393
#>     Attrib V53    0.11757074483630593
#>     Attrib V54    0.42609959919892837
#>     Attrib V55    -0.1347611152242021
#>     Attrib V56    0.47503879808777605
#>     Attrib V57    -0.04631164423684447
#>     Attrib V58    0.2706407871582778
#>     Attrib V59    0.6006747948100296
#>     Attrib V6    -0.518931328617168
#>     Attrib V60    0.7580575311646144
#>     Attrib V7    -0.28595944593322664
#>     Attrib V8    -0.31336065303963245
#>     Attrib V9    0.5908167856724931
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.24088120846929656
#>     Attrib V1    0.1326710262297758
#>     Attrib V10    -0.9276988763964769
#>     Attrib V11    -1.1467025501913735
#>     Attrib V12    -1.0008428658752255
#>     Attrib V13    -0.7585045997653825
#>     Attrib V14    0.30170378447090385
#>     Attrib V15    0.6329388521596119
#>     Attrib V16    0.45310790705675824
#>     Attrib V17    0.7962193229469502
#>     Attrib V18    0.36312215525827557
#>     Attrib V19    -1.1004006375093554
#>     Attrib V2    0.3628839131943647
#>     Attrib V20    -0.33869386592673045
#>     Attrib V21    -0.4158821695420283
#>     Attrib V22    -0.6014376698209405
#>     Attrib V23    -0.4585912300531807
#>     Attrib V24    -1.1309986819984397
#>     Attrib V25    -0.1075332966104367
#>     Attrib V26    -0.1318487526387862
#>     Attrib V27    -0.8589396155923418
#>     Attrib V28    -1.0568575320821472
#>     Attrib V29    0.08835174228084093
#>     Attrib V3    -0.25403247411911756
#>     Attrib V30    -0.4495250197913844
#>     Attrib V31    0.8465707605356292
#>     Attrib V32    -0.08185926665275217
#>     Attrib V33    -0.005159902874029699
#>     Attrib V34    0.17900972810971819
#>     Attrib V35    -0.15297440136222573
#>     Attrib V36    0.6521258413475439
#>     Attrib V37    1.1152557471993452
#>     Attrib V38    -0.5721162949748633
#>     Attrib V39    -0.40060296802064815
#>     Attrib V4    -0.23207417523939564
#>     Attrib V40    0.2824788994402467
#>     Attrib V41    -0.17061702997550923
#>     Attrib V42    -0.4675638048675629
#>     Attrib V43    -0.2483769313104513
#>     Attrib V44    -0.20779067168898377
#>     Attrib V45    -0.5067113399665307
#>     Attrib V46    -0.8043239186273939
#>     Attrib V47    -0.4666253620340722
#>     Attrib V48    -0.6375454153704497
#>     Attrib V49    -1.297012350220016
#>     Attrib V5    -0.4021654925577401
#>     Attrib V50    1.1664325125041155
#>     Attrib V51    0.0019515370677961959
#>     Attrib V52    -0.45493086522718296
#>     Attrib V53    -0.4133126222266991
#>     Attrib V54    0.2678057338958466
#>     Attrib V55    0.6109552863671807
#>     Attrib V56    0.06352616840826356
#>     Attrib V57    0.7527814135550829
#>     Attrib V58    0.04670882749169666
#>     Attrib V59    -0.17984900985698293
#>     Attrib V6    0.4092369583504288
#>     Attrib V60    -0.2303877524667715
#>     Attrib V7    0.676730335022001
#>     Attrib V8    0.3281320472493907
#>     Attrib V9    -1.356011864708017
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.21852620305195106
#>     Attrib V1    0.24738985000556318
#>     Attrib V10    -0.18905832894903654
#>     Attrib V11    0.0877905353607975
#>     Attrib V12    0.20978436796817285
#>     Attrib V13    -0.06887547972870618
#>     Attrib V14    -0.06327122722538266
#>     Attrib V15    0.07408618522962407
#>     Attrib V16    0.183429110962897
#>     Attrib V17    -0.09841917967359771
#>     Attrib V18    -0.15406295057708994
#>     Attrib V19    0.036687658630003665
#>     Attrib V2    -0.034842407841795736
#>     Attrib V20    0.010178201271658442
#>     Attrib V21    -0.009942884119196619
#>     Attrib V22    -0.19650704893151455
#>     Attrib V23    -0.3499210803932835
#>     Attrib V24    0.11109325096322607
#>     Attrib V25    -0.2258766525172337
#>     Attrib V26    -0.37535685507423766
#>     Attrib V27    -0.16527480847370427
#>     Attrib V28    -0.18713970127870028
#>     Attrib V29    -0.3680139725347379
#>     Attrib V3    -0.007704204561520477
#>     Attrib V30    -0.059310842891468527
#>     Attrib V31    -0.23086074705357307
#>     Attrib V32    -0.12674819882234759
#>     Attrib V33    0.002670563941725551
#>     Attrib V34    0.06038437583360312
#>     Attrib V35    0.07115044861340698
#>     Attrib V36    -0.11048933461959934
#>     Attrib V37    -0.2712423029361061
#>     Attrib V38    0.1771783116509058
#>     Attrib V39    0.07116941136385532
#>     Attrib V4    0.11083000617416865
#>     Attrib V40    -0.16243707952866104
#>     Attrib V41    -0.21139774845759104
#>     Attrib V42    -0.0029965174121621965
#>     Attrib V43    0.1775871697258234
#>     Attrib V44    0.14390082711389968
#>     Attrib V45    0.15792867125232435
#>     Attrib V46    0.16310284959052482
#>     Attrib V47    -0.09365770842358757
#>     Attrib V48    0.2017871499082393
#>     Attrib V49    0.2211720966431975
#>     Attrib V5    0.12941370207214808
#>     Attrib V50    -0.35148146887160575
#>     Attrib V51    -0.23367964858151585
#>     Attrib V52    0.0020604995986854948
#>     Attrib V53    0.32290277848056975
#>     Attrib V54    0.40319466456812003
#>     Attrib V55    0.2078779017448915
#>     Attrib V56    0.22261834873646036
#>     Attrib V57    0.35357920881754634
#>     Attrib V58    0.2505752683679776
#>     Attrib V59    0.5253812596708551
#>     Attrib V6    -0.11968763980587738
#>     Attrib V60    0.42363061483004616
#>     Attrib V7    -0.07249680697688307
#>     Attrib V8    -0.05430170240671274
#>     Attrib V9    0.1366543910496569
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.32652134971548963
#>     Attrib V1    0.3116894359762456
#>     Attrib V10    -0.4153686611803114
#>     Attrib V11    0.1099679958409019
#>     Attrib V12    0.36475422211982267
#>     Attrib V13    -0.038455003709991886
#>     Attrib V14    -0.14663288953165127
#>     Attrib V15    0.17382608428020574
#>     Attrib V16    0.17108717846911017
#>     Attrib V17    0.029054623682340786
#>     Attrib V18    -0.17481713775990165
#>     Attrib V19    0.2095289990584281
#>     Attrib V2    -0.10379982308465761
#>     Attrib V20    0.3221778391333503
#>     Attrib V21    0.36979395971610585
#>     Attrib V22    0.10373943751231193
#>     Attrib V23    -0.08951904636244509
#>     Attrib V24    0.3845929185046758
#>     Attrib V25    -0.28535249129691953
#>     Attrib V26    -0.6075922485521696
#>     Attrib V27    -0.44085852684828186
#>     Attrib V28    -0.5110687995621381
#>     Attrib V29    -1.0566759146015163
#>     Attrib V3    0.11881394693970548
#>     Attrib V30    -0.13035817367461772
#>     Attrib V31    -0.6954147914098112
#>     Attrib V32    -0.3372683863238675
#>     Attrib V33    0.12033493405548773
#>     Attrib V34    0.043019475121376036
#>     Attrib V35    0.07790582857168876
#>     Attrib V36    -0.30515277280849684
#>     Attrib V37    -0.5481091396765688
#>     Attrib V38    0.4663970629142463
#>     Attrib V39    0.2389689805770115
#>     Attrib V4    0.09176105200365528
#>     Attrib V40    -0.32273956505675255
#>     Attrib V41    -0.3666934484065788
#>     Attrib V42    0.12584030499556426
#>     Attrib V43    0.3492807375901042
#>     Attrib V44    0.22263756435818824
#>     Attrib V45    0.3077556868811272
#>     Attrib V46    0.1672100262865855
#>     Attrib V47    -0.18274822747906602
#>     Attrib V48    0.07862066647255966
#>     Attrib V49    0.331463331345466
#>     Attrib V5    0.04057924281628829
#>     Attrib V50    -0.6370997377050045
#>     Attrib V51    -0.46497644167808755
#>     Attrib V52    -0.12288788388395436
#>     Attrib V53    0.37586582646513217
#>     Attrib V54    0.6330912527628177
#>     Attrib V55    0.1471508056656435
#>     Attrib V56    0.604838620112
#>     Attrib V57    0.2762783855403523
#>     Attrib V58    0.27960167770684363
#>     Attrib V59    0.6817996312544529
#>     Attrib V6    -0.38392631968957874
#>     Attrib V60    0.6342410915189424
#>     Attrib V7    -0.19461613695510419
#>     Attrib V8    -0.14981389628680222
#>     Attrib V9    0.27108424371214684
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.2583110228105122
#>     Attrib V1    0.10743384005887495
#>     Attrib V10    -0.9950797689599513
#>     Attrib V11    -1.031832792417249
#>     Attrib V12    -0.8736851528299407
#>     Attrib V13    -0.6525129560240228
#>     Attrib V14    0.34626152502885094
#>     Attrib V15    0.7109100857244185
#>     Attrib V16    0.40638377986733626
#>     Attrib V17    0.8511708941404725
#>     Attrib V18    0.32243363835341693
#>     Attrib V19    -0.9563111421965278
#>     Attrib V2    0.4228447184828077
#>     Attrib V20    -0.1262154253795415
#>     Attrib V21    -0.25883199891745096
#>     Attrib V22    -0.47707680946172165
#>     Attrib V23    -0.2777402950956731
#>     Attrib V24    -0.9855267571557278
#>     Attrib V25    -0.24917298220374487
#>     Attrib V26    -0.3229911480219246
#>     Attrib V27    -0.9763866076394826
#>     Attrib V28    -1.1215962129307098
#>     Attrib V29    -0.12130840945915816
#>     Attrib V3    -0.12596305567365637
#>     Attrib V30    -0.4809770433480109
#>     Attrib V31    0.5243573651835227
#>     Attrib V32    -0.09657473558696078
#>     Attrib V33    -0.04592578789605985
#>     Attrib V34    0.04891052716697985
#>     Attrib V35    -0.26694119196451654
#>     Attrib V36    0.5393302507335087
#>     Attrib V37    0.966090865038774
#>     Attrib V38    -0.3227664240164462
#>     Attrib V39    -0.2751836323266023
#>     Attrib V4    -0.2562721322363212
#>     Attrib V40    0.2079869401475504
#>     Attrib V41    -0.2716635537746699
#>     Attrib V42    -0.3012770503924116
#>     Attrib V43    -0.08425010807059566
#>     Attrib V44    -0.214926053588296
#>     Attrib V45    -0.5085374456176692
#>     Attrib V46    -0.7728697971471848
#>     Attrib V47    -0.48894686431368156
#>     Attrib V48    -0.7140466630856345
#>     Attrib V49    -1.211119707643608
#>     Attrib V5    -0.4901299903755933
#>     Attrib V50    1.0199334413500056
#>     Attrib V51    -0.07550140164318789
#>     Attrib V52    -0.3802194680702802
#>     Attrib V53    -0.40299857318878923
#>     Attrib V54    0.3189713523988698
#>     Attrib V55    0.5949825902688591
#>     Attrib V56    0.30955944112294437
#>     Attrib V57    0.6392272847419188
#>     Attrib V58    0.11025198717478099
#>     Attrib V59    -0.3023951339243484
#>     Attrib V6    0.23570154183057793
#>     Attrib V60    -0.40571445321129657
#>     Attrib V7    0.3680777417084924
#>     Attrib V8    0.18396828541158264
#>     Attrib V9    -1.2850326233967844
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.7765669530225672
#>     Attrib V1    -0.29587991108125433
#>     Attrib V10    0.5406804427186402
#>     Attrib V11    0.5777803530895985
#>     Attrib V12    0.390653410133456
#>     Attrib V13    0.023280065331172443
#>     Attrib V14    -0.3359743983248656
#>     Attrib V15    -0.6010875522403123
#>     Attrib V16    0.09945644291132563
#>     Attrib V17    -0.7871618298623756
#>     Attrib V18    -0.04111531173529896
#>     Attrib V19    0.777021901208196
#>     Attrib V2    -0.29910206731058503
#>     Attrib V20    -0.649149423170428
#>     Attrib V21    -0.2740085717180278
#>     Attrib V22    -0.18595768731685278
#>     Attrib V23    -0.33922668390612276
#>     Attrib V24    -0.10059265744637107
#>     Attrib V25    -1.3063697100458687
#>     Attrib V26    -0.5167127403425047
#>     Attrib V27    1.5580057529059508
#>     Attrib V28    2.27635001447212
#>     Attrib V29    1.6663829929471994
#>     Attrib V3    0.2469340832847433
#>     Attrib V30    0.7275129599299002
#>     Attrib V31    -0.622066551512684
#>     Attrib V32    0.4900143425474377
#>     Attrib V33    -0.12152215455964874
#>     Attrib V34    -0.7644520584499566
#>     Attrib V35    -0.7806339089809278
#>     Attrib V36    -1.6143840344515104
#>     Attrib V37    -1.851579275818698
#>     Attrib V38    -0.5502935589041187
#>     Attrib V39    0.11045792890772199
#>     Attrib V4    0.5756544023839214
#>     Attrib V40    0.35811571904742834
#>     Attrib V41    1.2180589578179009
#>     Attrib V42    0.7373961780431331
#>     Attrib V43    0.3789642222553317
#>     Attrib V44    0.7196798671545858
#>     Attrib V45    0.6460376461187923
#>     Attrib V46    0.8706048937356107
#>     Attrib V47    0.4507469748974144
#>     Attrib V48    0.7722357925550561
#>     Attrib V49    1.4154338618482887
#>     Attrib V5    0.6183384252081718
#>     Attrib V50    -0.9047800770345427
#>     Attrib V51    -0.24725355629270063
#>     Attrib V52    0.9196320160611199
#>     Attrib V53    1.4137434260988633
#>     Attrib V54    -0.8370273344771018
#>     Attrib V55    -0.6297134788078881
#>     Attrib V56    -0.6582451336533793
#>     Attrib V57    0.19828681172100415
#>     Attrib V58    0.38456966055996594
#>     Attrib V59    0.5593352230802887
#>     Attrib V6    0.4190623756909585
#>     Attrib V60    -0.06603968824883388
#>     Attrib V7    -0.24954669238818758
#>     Attrib V8    0.4476463042939733
#>     Attrib V9    1.072119599617744
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.22988440180809974
#>     Attrib V1    0.08383659980320608
#>     Attrib V10    2.0212215268438727E-4
#>     Attrib V11    -0.033556237652470115
#>     Attrib V12    0.05027205861177406
#>     Attrib V13    -0.021574889938654578
#>     Attrib V14    0.0779815795377398
#>     Attrib V15    -0.0024746383177765095
#>     Attrib V16    0.02613551681135301
#>     Attrib V17    0.061056303658723346
#>     Attrib V18    -0.021433964431357082
#>     Attrib V19    0.05042918119434199
#>     Attrib V2    0.09727287085919022
#>     Attrib V20    -0.04119579635367795
#>     Attrib V21    -0.05578534527966819
#>     Attrib V22    -0.07440646210638967
#>     Attrib V23    -0.07148893182798595
#>     Attrib V24    -0.08917092285007146
#>     Attrib V25    -0.07592730867599592
#>     Attrib V26    -0.12932158433966015
#>     Attrib V27    -0.03702785111914653
#>     Attrib V28    0.0022948214055161986
#>     Attrib V29    -0.01615114904101464
#>     Attrib V3    0.07708562260979451
#>     Attrib V30    -4.8575854262201886E-4
#>     Attrib V31    0.02802891045426225
#>     Attrib V32    0.04843955816013963
#>     Attrib V33    0.08088889990856718
#>     Attrib V34    0.0318758074754449
#>     Attrib V35    0.11427326608124794
#>     Attrib V36    0.09744888354946848
#>     Attrib V37    0.10734182718224172
#>     Attrib V38    0.060134202282358745
#>     Attrib V39    0.08017145252091773
#>     Attrib V4    0.12423443141032772
#>     Attrib V40    0.04505128437578223
#>     Attrib V41    0.030817036064759964
#>     Attrib V42    0.03493230536964866
#>     Attrib V43    0.03831587718862358
#>     Attrib V44    1.9316867448720572E-4
#>     Attrib V45    0.02330488409963284
#>     Attrib V46    0.037669670877371955
#>     Attrib V47    0.04852993715781213
#>     Attrib V48    0.07817173511465497
#>     Attrib V49    0.033392266310733845
#>     Attrib V5    0.030030844583762463
#>     Attrib V50    0.08797775868093549
#>     Attrib V51    0.045481793982324506
#>     Attrib V52    0.05301028268371941
#>     Attrib V53    0.05011628810394627
#>     Attrib V54    0.01696752953181099
#>     Attrib V55    0.09019252430075375
#>     Attrib V56    0.11901315876327476
#>     Attrib V57    0.13175764379393518
#>     Attrib V58    0.058935681113248664
#>     Attrib V59    0.07466969416765543
#>     Attrib V6    0.09174757641783937
#>     Attrib V60    0.1622586007893724
#>     Attrib V7    -0.016795528074602037
#>     Attrib V8    0.04825411705245657
#>     Attrib V9    0.017160507478673353
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.30163767670704844
#>     Attrib V1    0.22837363625280438
#>     Attrib V10    0.09794976461368851
#>     Attrib V11    0.48968188651521755
#>     Attrib V12    0.4999334332992704
#>     Attrib V13    0.23293435168972776
#>     Attrib V14    -0.28734396742661583
#>     Attrib V15    -0.06710199985181975
#>     Attrib V16    0.009493138070108261
#>     Attrib V17    -0.21491510247610807
#>     Attrib V18    -0.21387762834155458
#>     Attrib V19    0.5371202154495031
#>     Attrib V2    -0.3224608081130531
#>     Attrib V20    0.5735321580672851
#>     Attrib V21    0.8230939301706084
#>     Attrib V22    0.5924940859053782
#>     Attrib V23    0.31530978420578837
#>     Attrib V24    0.8228539967887953
#>     Attrib V25    -0.15297312828219703
#>     Attrib V26    -0.2734937110432322
#>     Attrib V27    0.04772101737368076
#>     Attrib V28    0.0782809092954237
#>     Attrib V29    -0.7753575407204538
#>     Attrib V3    0.07681005864187555
#>     Attrib V30    0.2412893846383863
#>     Attrib V31    -0.9535199086980036
#>     Attrib V32    -0.3413485667407007
#>     Attrib V33    0.07668370415027767
#>     Attrib V34    0.0484372871808503
#>     Attrib V35    0.3330645478357521
#>     Attrib V36    -0.19246674240732406
#>     Attrib V37    -0.6966947178292282
#>     Attrib V38    0.8167018238057436
#>     Attrib V39    0.4189324903433362
#>     Attrib V4    0.12500294844744977
#>     Attrib V40    -0.5351935137702654
#>     Attrib V41    -0.39575692126376305
#>     Attrib V42    0.16198806065915144
#>     Attrib V43    0.4155697726833382
#>     Attrib V44    0.5585360825073589
#>     Attrib V45    0.5878994735861144
#>     Attrib V46    0.4442682960645858
#>     Attrib V47    -0.12352517301496704
#>     Attrib V48    0.10291352718408532
#>     Attrib V49    0.5909861068290154
#>     Attrib V5    0.09185389026978275
#>     Attrib V50    -0.8054224330372924
#>     Attrib V51    -0.32447690161382375
#>     Attrib V52    -0.1446463747337701
#>     Attrib V53    0.11878624677441926
#>     Attrib V54    0.4080737922553837
#>     Attrib V55    -0.08844641735389892
#>     Attrib V56    0.3735616456940522
#>     Attrib V57    -0.13329555316280334
#>     Attrib V58    0.270954912502077
#>     Attrib V59    0.6288762873160446
#>     Attrib V6    -0.6107653348645536
#>     Attrib V60    0.7599963172792722
#>     Attrib V7    -0.46176947279200586
#>     Attrib V8    -0.20982158321286104
#>     Attrib V9    0.8256239212482157
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.12029372021077027
#>     Attrib V1    0.2224626768713312
#>     Attrib V10    -1.307405501732427
#>     Attrib V11    -1.2409435055795837
#>     Attrib V12    -1.0336570994221252
#>     Attrib V13    -0.7666534215451845
#>     Attrib V14    0.42026703439051977
#>     Attrib V15    1.0161459389430574
#>     Attrib V16    0.6222543014703107
#>     Attrib V17    0.8522428727895667
#>     Attrib V18    0.29999084541151805
#>     Attrib V19    -1.2046100325746365
#>     Attrib V2    0.394524403529346
#>     Attrib V20    -0.13103679770060409
#>     Attrib V21    -0.21118705496122162
#>     Attrib V22    -0.575208233307681
#>     Attrib V23    -0.5713374992494086
#>     Attrib V24    -1.0480425405211378
#>     Attrib V25    -0.3037962966467357
#>     Attrib V26    -0.5150056996763639
#>     Attrib V27    -1.255585245727774
#>     Attrib V28    -1.493804914850845
#>     Attrib V29    -0.29814971943423235
#>     Attrib V3    -0.21952518652541414
#>     Attrib V30    -0.5403591504243291
#>     Attrib V31    0.5338230402738157
#>     Attrib V32    -0.2042673266821904
#>     Attrib V33    0.02521295838409457
#>     Attrib V34    0.1445923712151229
#>     Attrib V35    -0.27444065039239424
#>     Attrib V36    0.6011097768933169
#>     Attrib V37    1.11185206320691
#>     Attrib V38    -0.19101259999740133
#>     Attrib V39    -0.2350291121308043
#>     Attrib V4    -0.3618668065806738
#>     Attrib V40    0.14170124902708356
#>     Attrib V41    -0.4144696471080711
#>     Attrib V42    -0.3212040816083397
#>     Attrib V43    -0.1455675672978204
#>     Attrib V44    -0.2789555032873437
#>     Attrib V45    -0.5122853906111047
#>     Attrib V46    -0.9166653028070733
#>     Attrib V47    -0.7509207722490798
#>     Attrib V48    -0.8290014204514712
#>     Attrib V49    -1.4249892925565077
#>     Attrib V5    -0.5532963264625771
#>     Attrib V50    1.0131438997809696
#>     Attrib V51    -0.32560879141761984
#>     Attrib V52    -0.6033800342264339
#>     Attrib V53    -0.39217843426018495
#>     Attrib V54    0.5421661233758043
#>     Attrib V55    0.6938977020264243
#>     Attrib V56    0.3653435382080405
#>     Attrib V57    0.80077439624785
#>     Attrib V58    0.13958811651490796
#>     Attrib V59    -0.16023813375852983
#>     Attrib V6    0.14434344199091717
#>     Attrib V60    -0.27624637587891643
#>     Attrib V7    0.4763198637949831
#>     Attrib V8    0.23943883233420493
#>     Attrib V9    -1.481688907359869
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.3091482902171996
#>     Attrib V1    0.03555380294808295
#>     Attrib V10    0.029765845725195195
#>     Attrib V11    0.339131913472384
#>     Attrib V12    0.38561995994397547
#>     Attrib V13    0.10066939774118079
#>     Attrib V14    -0.13459080109617502
#>     Attrib V15    -0.09877980112554215
#>     Attrib V16    -0.036136912390369334
#>     Attrib V17    -0.2736928120318353
#>     Attrib V18    -0.23964194503722797
#>     Attrib V19    0.2075525597626018
#>     Attrib V2    -0.23029454952364872
#>     Attrib V20    0.14684323777228847
#>     Attrib V21    0.21678862831286036
#>     Attrib V22    0.11409382350863971
#>     Attrib V23    -0.14361102811536128
#>     Attrib V24    0.35983915196409577
#>     Attrib V25    -0.023184510096331955
#>     Attrib V26    -0.1157047173146769
#>     Attrib V27    0.23579247762217015
#>     Attrib V28    0.24089423639886198
#>     Attrib V29    -0.16809623698501475
#>     Attrib V3    0.003966879675867204
#>     Attrib V30    0.14959057357602448
#>     Attrib V31    -0.3218414484522884
#>     Attrib V32    0.003374495057422161
#>     Attrib V33    0.0794083608552492
#>     Attrib V34    0.04893783774436719
#>     Attrib V35    0.1440979666781754
#>     Attrib V36    -0.20254223906401353
#>     Attrib V37    -0.4041122072520535
#>     Attrib V38    0.2963489447509864
#>     Attrib V39    0.17276573158224404
#>     Attrib V4    0.014157594466759888
#>     Attrib V40    -0.1952776905237174
#>     Attrib V41    -0.12864994187467693
#>     Attrib V42    6.01149862586264E-4
#>     Attrib V43    0.16549831691056646
#>     Attrib V44    0.10412627380293951
#>     Attrib V45    0.26320466124444686
#>     Attrib V46    0.24498979632826573
#>     Attrib V47    0.009604892263276772
#>     Attrib V48    0.18501461766057226
#>     Attrib V49    0.3778582235445407
#>     Attrib V5    0.050535117146837144
#>     Attrib V50    -0.5461728215646439
#>     Attrib V51    -0.2191351808554351
#>     Attrib V52    0.052246564310767865
#>     Attrib V53    0.24984444449076035
#>     Attrib V54    0.10383448199402258
#>     Attrib V55    -0.05777944510761946
#>     Attrib V56    0.036228410495917296
#>     Attrib V57    -0.019402478900836018
#>     Attrib V58    0.01815079446346343
#>     Attrib V59    0.30205545201197226
#>     Attrib V6    -0.27181120350921223
#>     Attrib V60    0.2966230926803427
#>     Attrib V7    -0.3057187605048404
#>     Attrib V8    -0.12173435544737679
#>     Attrib V9    0.4262747213439739
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.37799559377179415
#>     Attrib V1    0.09872975260161608
#>     Attrib V10    -0.34948110489127054
#>     Attrib V11    -0.633679929856551
#>     Attrib V12    -0.5592296057767507
#>     Attrib V13    -0.2502240122407582
#>     Attrib V14    0.21927127487762432
#>     Attrib V15    0.25324218004179255
#>     Attrib V16    0.13352853654174054
#>     Attrib V17    0.48453631520936236
#>     Attrib V18    0.3510750952726222
#>     Attrib V19    -0.4916836535615335
#>     Attrib V2    0.3598436407269562
#>     Attrib V20    -0.14023705060639394
#>     Attrib V21    -0.21874299997612412
#>     Attrib V22    -0.1868429753050919
#>     Attrib V23    0.013465034854036958
#>     Attrib V24    -0.6107537533886435
#>     Attrib V25    0.06725539649518772
#>     Attrib V26    0.03956638504532083
#>     Attrib V27    -0.44370301380026095
#>     Attrib V28    -0.48293244623509746
#>     Attrib V29    0.1520727674280362
#>     Attrib V3    -0.01703384502541736
#>     Attrib V30    -0.28807595249379925
#>     Attrib V31    0.5790884978834612
#>     Attrib V32    -0.04322122842150575
#>     Attrib V33    -0.16404048942542487
#>     Attrib V34    -0.042899975036663464
#>     Attrib V35    -0.05649513499663407
#>     Attrib V36    0.4053792788071488
#>     Attrib V37    0.7658946149922304
#>     Attrib V38    -0.3793830007353132
#>     Attrib V39    -0.22497195334521203
#>     Attrib V4    -0.08420621957571287
#>     Attrib V40    0.1686685658195332
#>     Attrib V41    -0.013228494196967068
#>     Attrib V42    -0.16915864820257132
#>     Attrib V43    -0.18230057173007247
#>     Attrib V44    -0.22146857337106773
#>     Attrib V45    -0.28966756073784294
#>     Attrib V46    -0.4312283173007024
#>     Attrib V47    -0.14139379041350547
#>     Attrib V48    -0.38160393895521544
#>     Attrib V49    -0.772027434261299
#>     Attrib V5    -0.23974505098975507
#>     Attrib V50    0.8081259305675247
#>     Attrib V51    0.17802964855717313
#>     Attrib V52    -0.12089616931272334
#>     Attrib V53    -0.24010047472694546
#>     Attrib V54    0.050492928760289206
#>     Attrib V55    0.2968094536358333
#>     Attrib V56    0.07793210881594533
#>     Attrib V57    0.2120908003161815
#>     Attrib V58    -0.02491701199078625
#>     Attrib V59    -0.25685228472044885
#>     Attrib V6    0.3577083249810421
#>     Attrib V60    -0.2752211904253581
#>     Attrib V7    0.3535346502549726
#>     Attrib V8    0.09864597955255945
#>     Attrib V9    -0.8473172435465091
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.24348683647953812
#>     Attrib V1    0.2600802547952601
#>     Attrib V10    -0.30614392268268154
#>     Attrib V11    0.11188256991325417
#>     Attrib V12    0.21758035989183908
#>     Attrib V13    -0.030047603810974412
#>     Attrib V14    -0.08899344753778024
#>     Attrib V15    0.19069098406361704
#>     Attrib V16    0.2042533675190438
#>     Attrib V17    0.0042540718069309464
#>     Attrib V18    -0.14662339146981773
#>     Attrib V19    0.15587914625077365
#>     Attrib V2    -0.021112524598043064
#>     Attrib V20    0.3011568857214974
#>     Attrib V21    0.2731235900161019
#>     Attrib V22    0.07824164018953844
#>     Attrib V23    -0.13881192638076548
#>     Attrib V24    0.29279063327589794
#>     Attrib V25    -0.3107161780487218
#>     Attrib V26    -0.514030160534523
#>     Attrib V27    -0.3236305141083306
#>     Attrib V28    -0.3874144830091841
#>     Attrib V29    -0.8163679497811869
#>     Attrib V3    0.01865331111763334
#>     Attrib V30    -0.11921500154928359
#>     Attrib V31    -0.5553781481950593
#>     Attrib V32    -0.29628668608898584
#>     Attrib V33    0.08725767144858462
#>     Attrib V34    0.08418589547893288
#>     Attrib V35    0.11918946960594111
#>     Attrib V36    -0.22104066078428974
#>     Attrib V37    -0.4174503244070285
#>     Attrib V38    0.4456076408833374
#>     Attrib V39    0.15984669162308235
#>     Attrib V4    0.07658728268236892
#>     Attrib V40    -0.28462430526511484
#>     Attrib V41    -0.35917796983641015
#>     Attrib V42    0.05660878790777006
#>     Attrib V43    0.28462403051739593
#>     Attrib V44    0.26964271397947936
#>     Attrib V45    0.24683079745103828
#>     Attrib V46    0.15879633781586597
#>     Attrib V47    -0.1699521800229188
#>     Attrib V48    0.0958618999690551
#>     Attrib V49    0.2580479783190538
#>     Attrib V5    0.026905227472042288
#>     Attrib V50    -0.5273992874709243
#>     Attrib V51    -0.38867168673459673
#>     Attrib V52    -0.11100616239083932
#>     Attrib V53    0.3397104367199983
#>     Attrib V54    0.5619987230850139
#>     Attrib V55    0.1499071172823494
#>     Attrib V56    0.37162295274054863
#>     Attrib V57    0.28261971175984335
#>     Attrib V58    0.20702323676608106
#>     Attrib V59    0.535368078298094
#>     Attrib V6    -0.33890020827945055
#>     Attrib V60    0.5435445710818698
#>     Attrib V7    -0.1909918801736734
#>     Attrib V8    -0.12073312608210021
#>     Attrib V9    0.2554015742297606
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.11045553648091656
#>     Attrib V1    0.14610744057649086
#>     Attrib V10    -0.04086517519205545
#>     Attrib V11    0.0749230241192663
#>     Attrib V12    0.09680247096171171
#>     Attrib V13    -0.04425945034934384
#>     Attrib V14    0.04655539791999666
#>     Attrib V15    0.02208636012201575
#>     Attrib V16    0.0569929758264542
#>     Attrib V17    -0.07858501790327288
#>     Attrib V18    -0.02853355085062369
#>     Attrib V19    -0.048910613540149174
#>     Attrib V2    0.02919282872366966
#>     Attrib V20    -0.08699527828200479
#>     Attrib V21    -0.09165525213571706
#>     Attrib V22    -0.1475967420501458
#>     Attrib V23    -0.14096315526309303
#>     Attrib V24    -0.05466225596861675
#>     Attrib V25    -0.14741404113304665
#>     Attrib V26    -0.13831337980822464
#>     Attrib V27    0.0013385346297004415
#>     Attrib V28    0.06276533707708136
#>     Attrib V29    -0.061394887920496355
#>     Attrib V3    0.12283049385758918
#>     Attrib V30    0.08184108928705396
#>     Attrib V31    -0.039522965487975785
#>     Attrib V32    0.01899749391759393
#>     Attrib V33    0.056289291500477664
#>     Attrib V34    0.05374733695019104
#>     Attrib V35    0.08896395233165312
#>     Attrib V36    0.06886806973601409
#>     Attrib V37    -0.016302439509312688
#>     Attrib V38    0.08704177452137393
#>     Attrib V39    0.09468335264722726
#>     Attrib V4    0.10407042673400377
#>     Attrib V40    -0.04084161568961052
#>     Attrib V41    -0.046430364036546615
#>     Attrib V42    0.029986956797985374
#>     Attrib V43    0.014646572491772378
#>     Attrib V44    0.06713580338285703
#>     Attrib V45    0.14132335674984095
#>     Attrib V46    0.118118416688307
#>     Attrib V47    0.05911170248876317
#>     Attrib V48    0.08189391454623501
#>     Attrib V49    0.16745454320695968
#>     Attrib V5    0.11492861441093491
#>     Attrib V50    -0.07729039632951136
#>     Attrib V51    0.032458182645690316
#>     Attrib V52    0.12291699951918818
#>     Attrib V53    0.1447708807256236
#>     Attrib V54    0.06969553291408276
#>     Attrib V55    0.10195023011663285
#>     Attrib V56    0.10179077577305816
#>     Attrib V57    0.16138628742812472
#>     Attrib V58    0.1557010789283917
#>     Attrib V59    0.17624851763651855
#>     Attrib V6    0.0321729908632767
#>     Attrib V60    0.19882701624615068
#>     Attrib V7    -0.017542761879440753
#>     Attrib V8    0.07349090687299294
#>     Attrib V9    0.1348252862334477
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
#>   0.115942 
```
