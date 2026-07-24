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
#>     Threshold    -0.7448808659699658
#>     Node 2    2.2342958002958877
#>     Node 3    1.4308914870021097
#>     Node 4    0.6786063473113371
#>     Node 5    -1.808267260235631
#>     Node 6    1.4549168326456534
#>     Node 7    3.550679528008321
#>     Node 8    0.6038771052171565
#>     Node 9    2.921287877151919
#>     Node 10    0.22382789431298114
#>     Node 11    1.469499880847134
#>     Node 12    1.3457533039297345
#>     Node 13    0.49733129310413354
#>     Node 14    1.6403692870846662
#>     Node 15    -3.836332461744318
#>     Node 16    0.21672858666345887
#>     Node 17    0.4512123431346011
#>     Node 18    -1.3360831101968895
#>     Node 19    1.7596686342073653
#>     Node 20    1.6804888693394129
#>     Node 21    -2.353645799455326
#>     Node 22    1.2199151752660122
#>     Node 23    1.2363298319933889
#>     Node 24    -1.6553485278033502
#>     Node 25    2.8014907245587
#>     Node 26    0.16243865017194803
#>     Node 27    2.164678126098829
#>     Node 28    -1.5747149518658772
#>     Node 29    1.393236592371542
#>     Node 30    -0.6065690926443806
#>     Node 31    2.2370122354208664
#>     Node 32    1.1845485233783186
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7531124052836601
#>     Node 2    -2.2745462964631598
#>     Node 3    -1.4169197034988457
#>     Node 4    -0.6337410246785459
#>     Node 5    1.8034036182046969
#>     Node 6    -1.4328877299334606
#>     Node 7    -3.5532337446865814
#>     Node 8    -0.6285543293075866
#>     Node 9    -2.9226121166205656
#>     Node 10    -0.2846794684404806
#>     Node 11    -1.4343321969000875
#>     Node 12    -1.4218801863631436
#>     Node 13    -0.4369180210318105
#>     Node 14    -1.5707905879588184
#>     Node 15    3.822695211372362
#>     Node 16    -0.22493000458493773
#>     Node 17    -0.4112721940676393
#>     Node 18    1.370418678938184
#>     Node 19    -1.7481039839033579
#>     Node 20    -1.6557848326869973
#>     Node 21    2.379367663451311
#>     Node 22    -1.2729751790863582
#>     Node 23    -1.2790562393154905
#>     Node 24    1.6237790069578069
#>     Node 25    -2.7976031889482598
#>     Node 26    -0.23707107167797054
#>     Node 27    -2.203087212459069
#>     Node 28    1.508768207737357
#>     Node 29    -1.416194842656442
#>     Node 30    0.6797423919081452
#>     Node 31    -2.186839807447836
#>     Node 32    -1.2035035257500575
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.38380985034383847
#>     Attrib V1    0.32360273286727814
#>     Attrib V10    0.2633417888049239
#>     Attrib V11    0.5763644069086469
#>     Attrib V12    0.5268270784484069
#>     Attrib V13    0.2621872108433556
#>     Attrib V14    -0.10708314916112502
#>     Attrib V15    -0.482913770597818
#>     Attrib V16    -0.16593057126430136
#>     Attrib V17    -0.1102351040862593
#>     Attrib V18    0.2499519739271163
#>     Attrib V19    0.662432466098736
#>     Attrib V2    -0.10229315065589503
#>     Attrib V20    1.14963277945344
#>     Attrib V21    1.0751338269673028
#>     Attrib V22    0.9626913400695688
#>     Attrib V23    0.8688335663683192
#>     Attrib V24    0.19740091212472471
#>     Attrib V25    -0.2658723357911504
#>     Attrib V26    -0.6129872573387929
#>     Attrib V27    -0.3836571498710175
#>     Attrib V28    0.577585803711801
#>     Attrib V29    0.13600022692616665
#>     Attrib V3    -0.2710637615279437
#>     Attrib V30    0.25796538228672317
#>     Attrib V31    -1.2711052901423794
#>     Attrib V32    0.5166066968873783
#>     Attrib V33    0.4938830200500334
#>     Attrib V34    -0.07310480510990189
#>     Attrib V35    0.3931605397777166
#>     Attrib V36    0.050373178659371264
#>     Attrib V37    0.03285216562873812
#>     Attrib V38    0.7167565951549835
#>     Attrib V39    0.4478053329268236
#>     Attrib V4    0.635296946766036
#>     Attrib V40    -0.11379749152031075
#>     Attrib V41    0.18885830637822468
#>     Attrib V42    -0.09166176131869974
#>     Attrib V43    0.23966672441764134
#>     Attrib V44    0.6611400314720409
#>     Attrib V45    0.13144886465539432
#>     Attrib V46    -0.13173012561231015
#>     Attrib V47    -0.37243197057396593
#>     Attrib V48    -0.08665530866126316
#>     Attrib V49    0.6890598594953482
#>     Attrib V5    -0.23904688665013504
#>     Attrib V50    0.017048688709807868
#>     Attrib V51    0.026338738249636052
#>     Attrib V52    -0.008780238723381573
#>     Attrib V53    0.05209898781171608
#>     Attrib V54    0.5877845414388282
#>     Attrib V55    -1.2316492618560548
#>     Attrib V56    -0.20796807576986945
#>     Attrib V57    -0.16331027603548512
#>     Attrib V58    0.5418372297671914
#>     Attrib V59    0.7292354847898234
#>     Attrib V6    0.126904900209835
#>     Attrib V60    0.4209953658241139
#>     Attrib V7    0.7202383520630258
#>     Attrib V8    -0.18090910994773748
#>     Attrib V9    0.20420260443675683
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.17123615902455175
#>     Attrib V1    0.28217463128985903
#>     Attrib V10    0.08709795665254036
#>     Attrib V11    0.12058327241317562
#>     Attrib V12    0.11566925743885215
#>     Attrib V13    0.03399334833774356
#>     Attrib V14    0.039627173142044364
#>     Attrib V15    -0.0053211524802992535
#>     Attrib V16    0.11083370254714446
#>     Attrib V17    0.06015858299599179
#>     Attrib V18    0.1554431242245001
#>     Attrib V19    0.5176284611845934
#>     Attrib V2    -0.010297787093306263
#>     Attrib V20    0.767563564871891
#>     Attrib V21    0.6156536665307921
#>     Attrib V22    0.5366230860548719
#>     Attrib V23    0.4399303669351729
#>     Attrib V24    0.06343487474906222
#>     Attrib V25    -0.28228369676786635
#>     Attrib V26    -0.6475088241064771
#>     Attrib V27    -0.5454597632180103
#>     Attrib V28    0.04889881012003693
#>     Attrib V29    -0.20837364166915606
#>     Attrib V3    -0.12044702429912711
#>     Attrib V30    0.1419323392184134
#>     Attrib V31    -0.5099781596354312
#>     Attrib V32    0.37897571786655476
#>     Attrib V33    0.3474926942944238
#>     Attrib V34    -0.07553517361592654
#>     Attrib V35    0.10405390624490378
#>     Attrib V36    -0.24401127967562228
#>     Attrib V37    -0.30038698223449967
#>     Attrib V38    0.2711132352477325
#>     Attrib V39    0.2703664814704437
#>     Attrib V4    0.43414027554124923
#>     Attrib V40    -0.012947084112213925
#>     Attrib V41    0.10099053296776056
#>     Attrib V42    -0.0655298189461693
#>     Attrib V43    0.07281495666342794
#>     Attrib V44    0.29202369082218005
#>     Attrib V45    -0.1143983176278402
#>     Attrib V46    -0.20043981596640054
#>     Attrib V47    -0.22202882266596355
#>     Attrib V48    -0.04919611702966016
#>     Attrib V49    0.40295772274422476
#>     Attrib V5    -0.13153645669383604
#>     Attrib V50    0.10940709836352988
#>     Attrib V51    0.037969334691523894
#>     Attrib V52    -0.02231345131815221
#>     Attrib V53    0.14356302313235098
#>     Attrib V54    0.6117796378851365
#>     Attrib V55    -0.507017020770371
#>     Attrib V56    0.08743660569207039
#>     Attrib V57    0.0711426050439639
#>     Attrib V58    0.5149908271505793
#>     Attrib V59    0.6539492383029389
#>     Attrib V6    -0.006572559871426075
#>     Attrib V60    0.3566650024407266
#>     Attrib V7    0.44221385010347947
#>     Attrib V8    0.015285862500469111
#>     Attrib V9    0.09301251081983608
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.009293534596725274
#>     Attrib V1    0.12311526652089207
#>     Attrib V10    0.08020803102685169
#>     Attrib V11    0.10860399919949604
#>     Attrib V12    0.11965309233011374
#>     Attrib V13    0.09268231810236828
#>     Attrib V14    0.08267944782168395
#>     Attrib V15    0.0020116818896975066
#>     Attrib V16    -0.004521919819629826
#>     Attrib V17    -0.002429694891458353
#>     Attrib V18    0.07995298877526823
#>     Attrib V19    0.21045417235592906
#>     Attrib V2    -0.0029917852787448634
#>     Attrib V20    0.3244377677920643
#>     Attrib V21    0.2984245790637308
#>     Attrib V22    0.1793899712139424
#>     Attrib V23    0.2110870738564415
#>     Attrib V24    0.01851503674396979
#>     Attrib V25    -0.15601672646650316
#>     Attrib V26    -0.286917315778654
#>     Attrib V27    -0.26147995796634754
#>     Attrib V28    0.08821681634732567
#>     Attrib V29    -0.013757119551464693
#>     Attrib V3    0.027002575554097165
#>     Attrib V30    0.038680422120880166
#>     Attrib V31    -0.24013837310774214
#>     Attrib V32    0.19030619971410465
#>     Attrib V33    0.16702273188271702
#>     Attrib V34    -0.011199385573764965
#>     Attrib V35    0.06299789383244031
#>     Attrib V36    -0.1821624853872803
#>     Attrib V37    -0.1508865403343543
#>     Attrib V38    0.04602766884012916
#>     Attrib V39    0.10270256849557917
#>     Attrib V4    0.24019720182532825
#>     Attrib V40    -0.025760274613093888
#>     Attrib V41    0.03354660533126169
#>     Attrib V42    -0.053176027433717375
#>     Attrib V43    -0.01083679353874016
#>     Attrib V44    0.11909832331746023
#>     Attrib V45    0.0024007643719796946
#>     Attrib V46    -0.0759376723055833
#>     Attrib V47    -0.07798024813203158
#>     Attrib V48    0.07627910275038027
#>     Attrib V49    0.2672675052075946
#>     Attrib V5    0.013732871399608554
#>     Attrib V50    0.06225425861601414
#>     Attrib V51    0.11742724519702134
#>     Attrib V52    0.056025655322184516
#>     Attrib V53    0.14400003440282524
#>     Attrib V54    0.17870810608197618
#>     Attrib V55    -0.26316987019123345
#>     Attrib V56    0.06824060820140548
#>     Attrib V57    0.06778207670842325
#>     Attrib V58    0.2514697763021288
#>     Attrib V59    0.31017635713614466
#>     Attrib V6    -0.02243189082156554
#>     Attrib V60    0.20264458973668958
#>     Attrib V7    0.1419621503099535
#>     Attrib V8    -0.08844041822337952
#>     Attrib V9    0.11882601082601735
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.52392457883454
#>     Attrib V1    -0.21918839064984613
#>     Attrib V10    -0.2879678148439898
#>     Attrib V11    -0.5735306824125959
#>     Attrib V12    -0.7689538251132428
#>     Attrib V13    -0.324027103110329
#>     Attrib V14    0.358731991009597
#>     Attrib V15    0.568966410729016
#>     Attrib V16    0.43333715146770385
#>     Attrib V17    0.6001928279123953
#>     Attrib V18    0.13523266484503424
#>     Attrib V19    -0.2991727671664852
#>     Attrib V2    0.04167802499561385
#>     Attrib V20    -0.49746036282815725
#>     Attrib V21    -0.3296866933810888
#>     Attrib V22    -0.40883940887411907
#>     Attrib V23    -0.49977230876465384
#>     Attrib V24    -0.1780861121626606
#>     Attrib V25    0.33737069073064657
#>     Attrib V26    0.5131749290097641
#>     Attrib V27    0.32467075368006104
#>     Attrib V28    -0.4872105510505243
#>     Attrib V29    -0.2348085599020533
#>     Attrib V3    0.21563157071839928
#>     Attrib V30    -0.30806990234375425
#>     Attrib V31    0.642735061506406
#>     Attrib V32    -0.5511174118377261
#>     Attrib V33    -0.22484016388810416
#>     Attrib V34    0.16333659806546277
#>     Attrib V35    -0.03109661857177212
#>     Attrib V36    0.7306454751172191
#>     Attrib V37    0.32088205434021955
#>     Attrib V38    -0.1021921876467158
#>     Attrib V39    -0.2557454939359008
#>     Attrib V4    -0.49801070467292996
#>     Attrib V40    0.05407127081341099
#>     Attrib V41    -0.4371711052663379
#>     Attrib V42    0.11432009630142853
#>     Attrib V43    -0.025838525145627542
#>     Attrib V44    -0.11959617731773617
#>     Attrib V45    0.02523333941243601
#>     Attrib V46    -0.13201707821514927
#>     Attrib V47    0.08157816463227524
#>     Attrib V48    -0.0103321137358075
#>     Attrib V49    -0.5758329405677843
#>     Attrib V5    0.14329198344738125
#>     Attrib V50    0.31957718355416587
#>     Attrib V51    -0.14183755700439013
#>     Attrib V52    -0.25542474878173177
#>     Attrib V53    -0.11135379686306908
#>     Attrib V54    -0.06972507408179561
#>     Attrib V55    1.1717767906098118
#>     Attrib V56    0.24691342198280405
#>     Attrib V57    0.23825562624713892
#>     Attrib V58    -0.4666661399939052
#>     Attrib V59    -0.5104098637289529
#>     Attrib V6    -0.3207769215232261
#>     Attrib V60    -0.4099510460569517
#>     Attrib V7    -0.2077286368550983
#>     Attrib V8    0.372192373888583
#>     Attrib V9    -0.2830134641289701
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.23492911233606045
#>     Attrib V1    0.306308691852789
#>     Attrib V10    0.04740118093391133
#>     Attrib V11    0.15381508707655647
#>     Attrib V12    0.1749142660151388
#>     Attrib V13    -0.04891067311145406
#>     Attrib V14    -0.02279878145715223
#>     Attrib V15    -0.10070685102312296
#>     Attrib V16    0.15685341638037387
#>     Attrib V17    0.06499371129343597
#>     Attrib V18    0.25667640516947954
#>     Attrib V19    0.45831671506348576
#>     Attrib V2    -0.04888883485334685
#>     Attrib V20    0.7409584860568296
#>     Attrib V21    0.6615994546503837
#>     Attrib V22    0.4999424996680121
#>     Attrib V23    0.4390209024174166
#>     Attrib V24    0.11504397935076602
#>     Attrib V25    -0.2273446095198321
#>     Attrib V26    -0.5969750029810509
#>     Attrib V27    -0.46030039570479836
#>     Attrib V28    0.035797877623379985
#>     Attrib V29    -0.1713609894086356
#>     Attrib V3    -0.1438521179051563
#>     Attrib V30    0.08130759650475125
#>     Attrib V31    -0.595854817563841
#>     Attrib V32    0.36135545371712735
#>     Attrib V33    0.3424378382426592
#>     Attrib V34    -0.061995413406437404
#>     Attrib V35    0.1439381838007915
#>     Attrib V36    -0.18704541637534156
#>     Attrib V37    -0.2076871189559401
#>     Attrib V38    0.3161443840000734
#>     Attrib V39    0.2305903892687009
#>     Attrib V4    0.4769326259252427
#>     Attrib V40    -0.0705502066247138
#>     Attrib V41    0.14919505122711157
#>     Attrib V42    -0.03737780353019032
#>     Attrib V43    0.08570917474278614
#>     Attrib V44    0.27233959555843995
#>     Attrib V45    -0.09683099040586668
#>     Attrib V46    -0.17533264152250588
#>     Attrib V47    -0.2786633726007335
#>     Attrib V48    -0.06911992230830659
#>     Attrib V49    0.38744620056101525
#>     Attrib V5    -0.11437168466469494
#>     Attrib V50    0.11312256623695119
#>     Attrib V51    0.05222529702705244
#>     Attrib V52    -0.08590238956788336
#>     Attrib V53    0.229419536149187
#>     Attrib V54    0.5272635848165032
#>     Attrib V55    -0.6306542721406778
#>     Attrib V56    0.06543609956529449
#>     Attrib V57    0.10225409266626864
#>     Attrib V58    0.48170873173860734
#>     Attrib V59    0.67251552732938
#>     Attrib V6    0.09407562156265205
#>     Attrib V60    0.45836548382187864
#>     Attrib V7    0.5166527863361783
#>     Attrib V8    0.012912146492652085
#>     Attrib V9    0.16711681053110425
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6719449096804695
#>     Attrib V1    0.006234819260928201
#>     Attrib V10    1.0788959865649956
#>     Attrib V11    1.5197337183895703
#>     Attrib V12    1.2881317326609514
#>     Attrib V13    0.9900857151129118
#>     Attrib V14    -0.27777948402399355
#>     Attrib V15    -0.9083848894551861
#>     Attrib V16    -1.0990166132922827
#>     Attrib V17    -1.1885995957650326
#>     Attrib V18    -0.15440483043112108
#>     Attrib V19    -0.010880373496678435
#>     Attrib V2    0.1898414269408032
#>     Attrib V20    -0.20778967649072427
#>     Attrib V21    0.11963121036234546
#>     Attrib V22    0.5791989430507699
#>     Attrib V23    1.2789647845731718
#>     Attrib V24    0.7039777768633981
#>     Attrib V25    0.22866962149460865
#>     Attrib V26    0.7291949019203532
#>     Attrib V27    0.7508830399096148
#>     Attrib V28    1.1913455953871015
#>     Attrib V29    1.1214010910514678
#>     Attrib V3    0.1833312595191712
#>     Attrib V30    0.22194307747237407
#>     Attrib V31    -0.9206830804319722
#>     Attrib V32    0.23977631505192845
#>     Attrib V33    -0.4940000767994631
#>     Attrib V34    -0.5401424954277455
#>     Attrib V35    0.239097487380283
#>     Attrib V36    -0.8340245673275689
#>     Attrib V37    0.13316982347927542
#>     Attrib V38    -0.8411184916737218
#>     Attrib V39    -0.15336387521315187
#>     Attrib V4    0.28639785988247174
#>     Attrib V40    0.1787539264399379
#>     Attrib V41    1.160369074167113
#>     Attrib V42    -0.010566038406491014
#>     Attrib V43    0.03787742124115298
#>     Attrib V44    0.08981364453259606
#>     Attrib V45    0.44214179183181307
#>     Attrib V46    1.1059736460361733
#>     Attrib V47    0.9406759330347771
#>     Attrib V48    0.7630831647469075
#>     Attrib V49    1.0050249515864367
#>     Attrib V5    0.250473406756818
#>     Attrib V50    -0.22703603850447085
#>     Attrib V51    0.6786177079320772
#>     Attrib V52    1.080643461495752
#>     Attrib V53    0.5430991216141379
#>     Attrib V54    -0.6835320564974816
#>     Attrib V55    -1.0602244176765385
#>     Attrib V56    -0.5782288451046271
#>     Attrib V57    -0.45903784890759053
#>     Attrib V58    0.6653045314496976
#>     Attrib V59    -0.0794658818258974
#>     Attrib V6    0.9251032359771076
#>     Attrib V60    0.17595249143635078
#>     Attrib V7    -0.1389598738284015
#>     Attrib V8    -0.5111444268513773
#>     Attrib V9    0.7884159433818451
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.054586739761571655
#>     Attrib V1    0.12467887809544466
#>     Attrib V10    0.11146474490455709
#>     Attrib V11    0.14751106384437035
#>     Attrib V12    0.13418633813497088
#>     Attrib V13    0.07440961985713979
#>     Attrib V14    -0.02008668278444185
#>     Attrib V15    -0.07273958281679714
#>     Attrib V16    0.032808270317668316
#>     Attrib V17    -0.014740095889337142
#>     Attrib V18    0.06174053021018789
#>     Attrib V19    0.19364695973393226
#>     Attrib V2    0.028924637536661343
#>     Attrib V20    0.22029282823154347
#>     Attrib V21    0.20311514375600145
#>     Attrib V22    0.15377502461584017
#>     Attrib V23    0.19580929078592302
#>     Attrib V24    0.08973231407222788
#>     Attrib V25    -0.06505773609541275
#>     Attrib V26    -0.1965715091145164
#>     Attrib V27    -0.1739497668216895
#>     Attrib V28    0.06937472235328834
#>     Attrib V29    -0.03204854072539398
#>     Attrib V3    0.012637214255529206
#>     Attrib V30    0.03252202828912822
#>     Attrib V31    -0.2477574981961878
#>     Attrib V32    0.17708669604492822
#>     Attrib V33    0.14663019853578318
#>     Attrib V34    -0.030126628313003067
#>     Attrib V35    0.06479880350176713
#>     Attrib V36    -0.077829356043413
#>     Attrib V37    -0.07876218201621307
#>     Attrib V38    0.11400585516223871
#>     Attrib V39    0.06058740868439578
#>     Attrib V4    0.3002688941681276
#>     Attrib V40    -0.05480906804888758
#>     Attrib V41    0.062013674079301154
#>     Attrib V42    -0.13728365986110633
#>     Attrib V43    -8.413063414579016E-4
#>     Attrib V44    0.12982382891352567
#>     Attrib V45    -0.036837830862891524
#>     Attrib V46    -0.0014979547609857442
#>     Attrib V47    -0.01892145902554022
#>     Attrib V48    0.09392531200668247
#>     Attrib V49    0.22613943595950758
#>     Attrib V5    -5.526915116194309E-4
#>     Attrib V50    -0.009380654991959324
#>     Attrib V51    0.06993811747168044
#>     Attrib V52    0.054004120034064844
#>     Attrib V53    0.15424125833951813
#>     Attrib V54    0.18523564754824026
#>     Attrib V55    -0.29192471212447885
#>     Attrib V56    -0.005187527282697192
#>     Attrib V57    0.11634679746474531
#>     Attrib V58    0.19570803499106024
#>     Attrib V59    0.3067357927767015
#>     Attrib V6    -8.470010870358203E-6
#>     Attrib V60    0.27800729240822053
#>     Attrib V7    0.12240332369006883
#>     Attrib V8    -0.09593955638846376
#>     Attrib V9    0.09763292978708452
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.3848768301476844
#>     Attrib V1    0.15019328260556639
#>     Attrib V10    0.988289222470119
#>     Attrib V11    1.3047981169427034
#>     Attrib V12    1.4021165676397818
#>     Attrib V13    0.8885705761767194
#>     Attrib V14    -0.434980548629397
#>     Attrib V15    -0.840678240682677
#>     Attrib V16    -1.086753366724589
#>     Attrib V17    -1.131019530683983
#>     Attrib V18    -0.3865753496580295
#>     Attrib V19    -0.3054573058624683
#>     Attrib V2    0.2724506515625652
#>     Attrib V20    -0.4199498555816157
#>     Attrib V21    -0.13417635069896056
#>     Attrib V22    0.15034822002304538
#>     Attrib V23    0.6988890629865765
#>     Attrib V24    0.49068194875687926
#>     Attrib V25    0.2110370815397456
#>     Attrib V26    0.5851973169716524
#>     Attrib V27    0.7244164865854815
#>     Attrib V28    1.006428480788248
#>     Attrib V29    0.7641676621013904
#>     Attrib V3    0.2480819578411018
#>     Attrib V30    0.16226919716841365
#>     Attrib V31    -0.6633801974359465
#>     Attrib V32    0.38902014458687656
#>     Attrib V33    -0.22709845232772494
#>     Attrib V34    -0.29499956774689196
#>     Attrib V35    0.22213063829526572
#>     Attrib V36    -0.7141498265353274
#>     Attrib V37    0.1607729624123036
#>     Attrib V38    -0.5636871330673744
#>     Attrib V39    -0.05015894952300062
#>     Attrib V4    0.3186896774143078
#>     Attrib V40    -0.024908840561594463
#>     Attrib V41    0.7878843539545645
#>     Attrib V42    -0.11708160944697442
#>     Attrib V43    0.07697565826436265
#>     Attrib V44    0.034112129327442314
#>     Attrib V45    0.34636406098560446
#>     Attrib V46    0.9330467263255849
#>     Attrib V47    0.7115935472328974
#>     Attrib V48    0.4912513380340596
#>     Attrib V49    0.6682343563547056
#>     Attrib V5    0.2773756728982298
#>     Attrib V50    -0.3331446675411713
#>     Attrib V51    0.5858849586369034
#>     Attrib V52    0.9398431430241581
#>     Attrib V53    0.43951824870166006
#>     Attrib V54    -0.6034364074996317
#>     Attrib V55    -0.9440002986800405
#>     Attrib V56    -0.39904093127541596
#>     Attrib V57    -0.39772034264273504
#>     Attrib V58    0.46862148173138946
#>     Attrib V59    0.061404845449704995
#>     Attrib V6    0.8031812065759238
#>     Attrib V60    0.3882054032492056
#>     Attrib V7    -0.29651516994601185
#>     Attrib V8    -0.6036647265796472
#>     Attrib V9    0.6666469397107918
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.14578516262968236
#>     Attrib V1    0.15201087449480605
#>     Attrib V10    0.05818291525111544
#>     Attrib V11    0.06560581991154252
#>     Attrib V12    0.09946783988032203
#>     Attrib V13    0.06347593915219221
#>     Attrib V14    0.10553620322035143
#>     Attrib V15    -0.01820963235418068
#>     Attrib V16    0.050665338316827735
#>     Attrib V17    0.023491878755044895
#>     Attrib V18    0.11906952865157631
#>     Attrib V19    0.11168491998095102
#>     Attrib V2    0.07031679114483667
#>     Attrib V20    0.13005659016997678
#>     Attrib V21    0.10269903016797345
#>     Attrib V22    0.03306902876322544
#>     Attrib V23    0.08817685185355856
#>     Attrib V24    -0.03317955819871891
#>     Attrib V25    -0.06836159090685688
#>     Attrib V26    -0.10531129569275899
#>     Attrib V27    -0.09645849871522755
#>     Attrib V28    -0.011639722185762603
#>     Attrib V29    -0.08917552472915596
#>     Attrib V3    0.06548543090841541
#>     Attrib V30    0.00538367525637976
#>     Attrib V31    -0.08594106040084606
#>     Attrib V32    0.03368535927368213
#>     Attrib V33    0.11615519828751357
#>     Attrib V34    0.04521572862697342
#>     Attrib V35    0.08942853704828538
#>     Attrib V36    -0.001093646657115763
#>     Attrib V37    0.013711726535705208
#>     Attrib V38    0.09118460131610928
#>     Attrib V39    0.04160176410002502
#>     Attrib V4    0.15964072412144462
#>     Attrib V40    0.024200043001251906
#>     Attrib V41    0.05752304380227202
#>     Attrib V42    -0.047264924496346415
#>     Attrib V43    0.006559011061117033
#>     Attrib V44    0.08579836467106278
#>     Attrib V45    0.004244665366870458
#>     Attrib V46    -0.03914897676790342
#>     Attrib V47    -0.006617107164047462
#>     Attrib V48    0.04314491718966213
#>     Attrib V49    0.10238178203639706
#>     Attrib V5    0.04901863902758937
#>     Attrib V50    0.09124079352177622
#>     Attrib V51    0.08339505290154754
#>     Attrib V52    0.04426922963184234
#>     Attrib V53    0.13971197004032812
#>     Attrib V54    0.10715261100916877
#>     Attrib V55    -0.06308985527862994
#>     Attrib V56    0.0683932079954885
#>     Attrib V57    0.0764499890032166
#>     Attrib V58    0.1233422269471048
#>     Attrib V59    0.12676297502044523
#>     Attrib V6    0.037356898994659285
#>     Attrib V60    0.1304616875720771
#>     Attrib V7    0.05027991864771318
#>     Attrib V8    -0.008855249374851245
#>     Attrib V9    0.03579441189950374
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.18376143300372644
#>     Attrib V1    0.25930779850942687
#>     Attrib V10    0.09754464554115941
#>     Attrib V11    0.2073770117412934
#>     Attrib V12    0.19698624187952493
#>     Attrib V13    -0.02683592013384632
#>     Attrib V14    -0.04384878244592244
#>     Attrib V15    -0.14926699877985902
#>     Attrib V16    0.0837129891976905
#>     Attrib V17    0.10091823838213916
#>     Attrib V18    0.22254642896700827
#>     Attrib V19    0.4782190637057311
#>     Attrib V2    -0.08191995042706916
#>     Attrib V20    0.8291333028767904
#>     Attrib V21    0.6721075450395692
#>     Attrib V22    0.5404548458765269
#>     Attrib V23    0.4965921216343071
#>     Attrib V24    0.10254830095341395
#>     Attrib V25    -0.24378688020093087
#>     Attrib V26    -0.6402334223944104
#>     Attrib V27    -0.48646819642087474
#>     Attrib V28    0.14908668193951669
#>     Attrib V29    -0.11088600345242443
#>     Attrib V3    -0.19507030745494264
#>     Attrib V30    0.14154651107853444
#>     Attrib V31    -0.6375301239977575
#>     Attrib V32    0.34118175417921504
#>     Attrib V33    0.33194257260966914
#>     Attrib V34    -0.005368792619736506
#>     Attrib V35    0.19348897697066367
#>     Attrib V36    -0.12996120962401106
#>     Attrib V37    -0.20533740130876565
#>     Attrib V38    0.4160720237538772
#>     Attrib V39    0.2551031548963654
#>     Attrib V4    0.43655102382848776
#>     Attrib V40    -0.08770936054916062
#>     Attrib V41    0.03637100970111898
#>     Attrib V42    -0.09619446782099078
#>     Attrib V43    0.08853519435583969
#>     Attrib V44    0.3680715492305667
#>     Attrib V45    0.021611957168586757
#>     Attrib V46    -0.15375058454044246
#>     Attrib V47    -0.21740185749658594
#>     Attrib V48    -0.0014906789361493688
#>     Attrib V49    0.44290091645527535
#>     Attrib V5    -0.10886705055346865
#>     Attrib V50    0.10310127173823393
#>     Attrib V51    0.1131298073374275
#>     Attrib V52    -0.06234374036085583
#>     Attrib V53    0.1342987992887571
#>     Attrib V54    0.5716523157325937
#>     Attrib V55    -0.6371609263521074
#>     Attrib V56    0.027894690103256795
#>     Attrib V57    0.04703926393281779
#>     Attrib V58    0.47367692606048123
#>     Attrib V59    0.5577438864671882
#>     Attrib V6    0.0460771078249191
#>     Attrib V60    0.35616556956308626
#>     Attrib V7    0.43306471862514195
#>     Attrib V8    -0.02277441909053344
#>     Attrib V9    0.15318940516847127
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.27812314583789866
#>     Attrib V1    0.21832471609585918
#>     Attrib V10    0.07370821027723452
#>     Attrib V11    0.27300810089172534
#>     Attrib V12    0.16744816912805074
#>     Attrib V13    0.05422488459026587
#>     Attrib V14    -0.012368385589211316
#>     Attrib V15    -0.18654282023845808
#>     Attrib V16    0.04905792975279434
#>     Attrib V17    -0.01045100939868506
#>     Attrib V18    0.15446071033903044
#>     Attrib V19    0.4977781799626367
#>     Attrib V2    -0.021175053836493155
#>     Attrib V20    0.6782777446364264
#>     Attrib V21    0.5911304457481271
#>     Attrib V22    0.5448498502586541
#>     Attrib V23    0.4872035205337735
#>     Attrib V24    0.0659225839004515
#>     Attrib V25    -0.2908100155826896
#>     Attrib V26    -0.5626762084287866
#>     Attrib V27    -0.37946089205281125
#>     Attrib V28    0.15926314398467947
#>     Attrib V29    -0.028965126387717244
#>     Attrib V3    -0.19904396152688955
#>     Attrib V30    0.11649985457513785
#>     Attrib V31    -0.6505127665978365
#>     Attrib V32    0.32342643670512694
#>     Attrib V33    0.3400556882488981
#>     Attrib V34    -0.0495703534640779
#>     Attrib V35    0.12634979090563536
#>     Attrib V36    -0.2056026409400284
#>     Attrib V37    -0.2239671589424625
#>     Attrib V38    0.32236305426918493
#>     Attrib V39    0.2071312624996219
#>     Attrib V4    0.46749319668636097
#>     Attrib V40    -0.023978793377721044
#>     Attrib V41    0.11805912680340948
#>     Attrib V42    -0.1299377094079967
#>     Attrib V43    0.10035349738019277
#>     Attrib V44    0.24179182997024823
#>     Attrib V45    -0.030998002551465353
#>     Attrib V46    -0.0910719844378435
#>     Attrib V47    -0.23323123353193514
#>     Attrib V48    0.03882077709337736
#>     Attrib V49    0.43254322210894125
#>     Attrib V5    -0.11969569676509659
#>     Attrib V50    0.012730737690415826
#>     Attrib V51    0.07145917490916166
#>     Attrib V52    0.023003280091953807
#>     Attrib V53    0.15817183311923125
#>     Attrib V54    0.459786040838788
#>     Attrib V55    -0.6874709056311326
#>     Attrib V56    0.011199630191883867
#>     Attrib V57    0.046380578142229074
#>     Attrib V58    0.47799009245989316
#>     Attrib V59    0.6475727143609169
#>     Attrib V6    0.02047590964921832
#>     Attrib V60    0.3842192575130509
#>     Attrib V7    0.45339310215202344
#>     Attrib V8    -0.049736797511914455
#>     Attrib V9    0.15485942460783644
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.1004705975250004
#>     Attrib V1    0.11440972354708168
#>     Attrib V10    0.049210113786837206
#>     Attrib V11    0.09476601371381775
#>     Attrib V12    0.1046235797613877
#>     Attrib V13    0.11067283403348827
#>     Attrib V14    0.06144154833443061
#>     Attrib V15    -0.03688084802180164
#>     Attrib V16    -0.020099633276931404
#>     Attrib V17    0.03365576904083568
#>     Attrib V18    0.08848190005832948
#>     Attrib V19    0.11519212208677711
#>     Attrib V2    0.019268683739234713
#>     Attrib V20    0.21325717620984525
#>     Attrib V21    0.15847204971954218
#>     Attrib V22    0.07595931800081525
#>     Attrib V23    0.163425509220694
#>     Attrib V24    0.0475609966066692
#>     Attrib V25    -0.010274588690710545
#>     Attrib V26    -0.1877822305035874
#>     Attrib V27    -0.0748909825451631
#>     Attrib V28    0.014697509783494704
#>     Attrib V29    -0.038320370954307854
#>     Attrib V3    0.09127314810038124
#>     Attrib V30    -0.005261476508847831
#>     Attrib V31    -0.23660135563276768
#>     Attrib V32    0.13515710292216968
#>     Attrib V33    0.10361341193425957
#>     Attrib V34    0.04032378332281117
#>     Attrib V35    0.06581626356692963
#>     Attrib V36    -0.06806826312550626
#>     Attrib V37    -0.015106136403763319
#>     Attrib V38    0.06564105248070451
#>     Attrib V39    0.10820497486723692
#>     Attrib V4    0.23307877297060617
#>     Attrib V40    0.0012500708908988628
#>     Attrib V41    0.05444352423693103
#>     Attrib V42    -0.0418184021362096
#>     Attrib V43    -0.021207152429993343
#>     Attrib V44    0.07492794630569377
#>     Attrib V45    -0.08034455691188354
#>     Attrib V46    -0.00551621020994662
#>     Attrib V47    0.004555329460996315
#>     Attrib V48    0.034268890044974895
#>     Attrib V49    0.17889553904243352
#>     Attrib V5    0.05314712469880278
#>     Attrib V50    0.0019723174360034984
#>     Attrib V51    0.06825913664843992
#>     Attrib V52    0.034504072650850426
#>     Attrib V53    0.12232597040650611
#>     Attrib V54    0.14091959517386193
#>     Attrib V55    -0.16378955616776295
#>     Attrib V56    0.06291339443603491
#>     Attrib V57    0.10135729077229907
#>     Attrib V58    0.19081250015022816
#>     Attrib V59    0.2734270770225496
#>     Attrib V6    0.03341811405652059
#>     Attrib V60    0.25938449078644166
#>     Attrib V7    0.13128591773554446
#>     Attrib V8    -0.07164064073342273
#>     Attrib V9    0.07375784640546058
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.29036138050261806
#>     Attrib V1    0.3553307485514883
#>     Attrib V10    0.1316183442654034
#>     Attrib V11    0.293165171258707
#>     Attrib V12    0.24775994294384596
#>     Attrib V13    0.02316900612217731
#>     Attrib V14    -0.0839624874657444
#>     Attrib V15    -0.1513088819372025
#>     Attrib V16    0.016992518687134524
#>     Attrib V17    0.0037114814872035336
#>     Attrib V18    0.16833868688949133
#>     Attrib V19    0.4813761982018343
#>     Attrib V2    -0.06372410947241623
#>     Attrib V20    0.8057691788819065
#>     Attrib V21    0.6845491963232018
#>     Attrib V22    0.5843991310170977
#>     Attrib V23    0.5508041636158183
#>     Attrib V24    0.07440299287407438
#>     Attrib V25    -0.2891439830993201
#>     Attrib V26    -0.6033106146037394
#>     Attrib V27    -0.5088445988524714
#>     Attrib V28    0.1365682565145432
#>     Attrib V29    -0.13164766303344783
#>     Attrib V3    -0.25249974341962056
#>     Attrib V30    0.16124607030594704
#>     Attrib V31    -0.6660683806213532
#>     Attrib V32    0.39658930829386974
#>     Attrib V33    0.39532209029740617
#>     Attrib V34    -0.06639912404792683
#>     Attrib V35    0.1981972383574508
#>     Attrib V36    -0.22147064246224715
#>     Attrib V37    -0.19854467845899673
#>     Attrib V38    0.3594773963164344
#>     Attrib V39    0.2967145128346127
#>     Attrib V4    0.47646839712551703
#>     Attrib V40    -0.06464391592483955
#>     Attrib V41    0.09111999048793454
#>     Attrib V42    -0.14977790347309564
#>     Attrib V43    0.062262433164852624
#>     Attrib V44    0.3725964740107306
#>     Attrib V45    -0.09199093849545811
#>     Attrib V46    -0.12708657085100677
#>     Attrib V47    -0.27409838647709556
#>     Attrib V48    0.029412965820117376
#>     Attrib V49    0.5716099793536283
#>     Attrib V5    -0.1997659786041699
#>     Attrib V50    0.07377741962196856
#>     Attrib V51    0.018572369832481967
#>     Attrib V52    -0.055112354354932246
#>     Attrib V53    0.10008321242860035
#>     Attrib V54    0.5943152973884773
#>     Attrib V55    -0.7476489597370968
#>     Attrib V56    0.005784203770382373
#>     Attrib V57    0.030139295312547644
#>     Attrib V58    0.5171184972576353
#>     Attrib V59    0.7007001775612282
#>     Attrib V6    0.06554150921770974
#>     Attrib V60    0.4810741199892255
#>     Attrib V7    0.5268131615521319
#>     Attrib V8    -0.14154385470058167
#>     Attrib V9    0.14623608116801412
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.926141377445301
#>     Attrib V1    0.13113793873139185
#>     Attrib V10    -1.2234491632713356
#>     Attrib V11    -1.5296076891790673
#>     Attrib V12    -1.161730185140206
#>     Attrib V13    -1.0290995291461955
#>     Attrib V14    0.19810472338203444
#>     Attrib V15    0.849627390540634
#>     Attrib V16    1.1200911734175398
#>     Attrib V17    1.3459156761624822
#>     Attrib V18    0.14960224785950368
#>     Attrib V19    -0.06603567709752804
#>     Attrib V2    -0.016452261609086683
#>     Attrib V20    0.13776768753722368
#>     Attrib V21    -0.32774753530407696
#>     Attrib V22    -0.7970419210473916
#>     Attrib V23    -1.415935991269827
#>     Attrib V24    -0.7509088110748738
#>     Attrib V25    -0.13639640420349702
#>     Attrib V26    -0.5035841922318022
#>     Attrib V27    -0.6442565614469973
#>     Attrib V28    -1.1785168122839533
#>     Attrib V29    -1.0218135488067845
#>     Attrib V3    0.07394965005784555
#>     Attrib V30    -0.23913414218711965
#>     Attrib V31    1.0942104805363995
#>     Attrib V32    -0.2911410947320619
#>     Attrib V33    0.41514004372550506
#>     Attrib V34    0.5672159387310146
#>     Attrib V35    -0.24643025775995483
#>     Attrib V36    0.9414182121736385
#>     Attrib V37    0.059625032033006065
#>     Attrib V38    0.8624318655477127
#>     Attrib V39    0.1970664485988084
#>     Attrib V4    -0.3295004785983122
#>     Attrib V40    -0.08439084006035281
#>     Attrib V41    -1.2276622017786325
#>     Attrib V42    0.007439659921212469
#>     Attrib V43    -0.04850921318277137
#>     Attrib V44    -0.13437585428446877
#>     Attrib V45    -0.37208901307580017
#>     Attrib V46    -1.0433804147339718
#>     Attrib V47    -0.8717933209395755
#>     Attrib V48    -0.7768682195485495
#>     Attrib V49    -1.2108690313977004
#>     Attrib V5    -0.18882426739717764
#>     Attrib V50    0.2758768900375282
#>     Attrib V51    -0.6851368529034075
#>     Attrib V52    -1.0542021277702125
#>     Attrib V53    -0.4937938822205958
#>     Attrib V54    0.7568697012478406
#>     Attrib V55    1.177287800457064
#>     Attrib V56    0.7565837900123392
#>     Attrib V57    0.4588674576845631
#>     Attrib V58    -0.9571887349996091
#>     Attrib V59    -0.12106518349795904
#>     Attrib V6    -1.1273564760097914
#>     Attrib V60    -0.24372125204145068
#>     Attrib V7    -0.2566929531470036
#>     Attrib V8    0.4237874514755548
#>     Attrib V9    -0.7982108343038122
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.14307320958834624
#>     Attrib V1    0.08480401781233782
#>     Attrib V10    0.0827395792068445
#>     Attrib V11    0.05943616016395518
#>     Attrib V12    0.05909649800800395
#>     Attrib V13    0.0613677512423462
#>     Attrib V14    0.02819855331030753
#>     Attrib V15    -0.004050792674886273
#>     Attrib V16    0.07243415026569687
#>     Attrib V17    0.07527831684235735
#>     Attrib V18    0.09660785906358799
#>     Attrib V19    0.07590929613713661
#>     Attrib V2    0.015768571480928667
#>     Attrib V20    0.04535317474786357
#>     Attrib V21    0.01879828630484856
#>     Attrib V22    0.0032714570324357093
#>     Attrib V23    0.007095283813663748
#>     Attrib V24    0.027863342834398872
#>     Attrib V25    0.0036323238623009583
#>     Attrib V26    -0.09303036862226735
#>     Attrib V27    -0.07342913188927734
#>     Attrib V28    0.02331003563160055
#>     Attrib V29    -0.05035743494377598
#>     Attrib V3    0.09754214768940633
#>     Attrib V30    -0.04954249110968286
#>     Attrib V31    -0.10881606291087136
#>     Attrib V32    0.09074247214064095
#>     Attrib V33    0.0506766638422624
#>     Attrib V34    0.037556721505794484
#>     Attrib V35    0.044177199020980044
#>     Attrib V36    -0.025242885735240986
#>     Attrib V37    0.030046903196232492
#>     Attrib V38    0.04628930722852587
#>     Attrib V39    0.047044793290989255
#>     Attrib V4    0.16939467138565165
#>     Attrib V40    -0.028961220595082594
#>     Attrib V41    0.039418229114244314
#>     Attrib V42    0.015565098941097583
#>     Attrib V43    0.0017087579769877518
#>     Attrib V44    0.02325739120837408
#>     Attrib V45    0.0032477589294836757
#>     Attrib V46    0.028559967238835717
#>     Attrib V47    0.026651418731320816
#>     Attrib V48    0.04998131597945911
#>     Attrib V49    0.07098266588760524
#>     Attrib V5    0.06373378272416419
#>     Attrib V50    0.08453854176569124
#>     Attrib V51    0.1386818117542611
#>     Attrib V52    0.1043287691324808
#>     Attrib V53    0.14434377298834702
#>     Attrib V54    0.06391714335038484
#>     Attrib V55    -0.015740002236297734
#>     Attrib V56    0.09760400793047856
#>     Attrib V57    0.11814815170986367
#>     Attrib V58    0.18441541733878195
#>     Attrib V59    0.0961874551314173
#>     Attrib V6    0.017529475161549315
#>     Attrib V60    0.15605287693844352
#>     Attrib V7    0.03436949977376956
#>     Attrib V8    -0.02850778260725873
#>     Attrib V9    0.1078665347035195
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.017724004742066677
#>     Attrib V1    0.1604486908804845
#>     Attrib V10    0.13312408996746722
#>     Attrib V11    0.1353510206776492
#>     Attrib V12    0.08424641551249282
#>     Attrib V13    0.013460155981013
#>     Attrib V14    0.02647545735012585
#>     Attrib V15    0.04067288846701278
#>     Attrib V16    0.012173666261961109
#>     Attrib V17    0.013065372830062724
#>     Attrib V18    0.07396548469007715
#>     Attrib V19    0.15406805362348758
#>     Attrib V2    0.10216456388007678
#>     Attrib V20    0.1845676347962582
#>     Attrib V21    0.14454245850397512
#>     Attrib V22    0.16440741888431468
#>     Attrib V23    0.11878553076330482
#>     Attrib V24    0.05978383447155318
#>     Attrib V25    -0.08068947403062655
#>     Attrib V26    -0.20006117327679582
#>     Attrib V27    -0.1426731610636645
#>     Attrib V28    0.009291848006447254
#>     Attrib V29    -0.09187616062993964
#>     Attrib V3    0.03254825037705322
#>     Attrib V30    0.022396444415363807
#>     Attrib V31    -0.12935910433000158
#>     Attrib V32    0.10298930121073956
#>     Attrib V33    0.14629444050681636
#>     Attrib V34    -0.03481194335747022
#>     Attrib V35    0.0939665975578189
#>     Attrib V36    -0.1077817132643708
#>     Attrib V37    -0.08467770097913442
#>     Attrib V38    0.10464051768515675
#>     Attrib V39    0.08076339901523731
#>     Attrib V4    0.22577384315367782
#>     Attrib V40    -0.07740797601724099
#>     Attrib V41    0.04866189078022437
#>     Attrib V42    -0.07694972993330917
#>     Attrib V43    0.05309031622075633
#>     Attrib V44    0.11490314960589607
#>     Attrib V45    0.012614355166226837
#>     Attrib V46    -0.041847581393455145
#>     Attrib V47    -0.05782401491456999
#>     Attrib V48    0.10098182142411352
#>     Attrib V49    0.1359635300464784
#>     Attrib V5    0.030451903958405083
#>     Attrib V50    0.051038162020095854
#>     Attrib V51    0.09594129110656562
#>     Attrib V52    0.04512506657230582
#>     Attrib V53    0.08285351986239536
#>     Attrib V54    0.13638625374751864
#>     Attrib V55    -0.1064385034758971
#>     Attrib V56    0.07505404071805305
#>     Attrib V57    0.13419474566101805
#>     Attrib V58    0.1631211073312589
#>     Attrib V59    0.18435825844930526
#>     Attrib V6    0.021482346031414672
#>     Attrib V60    0.20445555997615786
#>     Attrib V7    0.05422877060919996
#>     Attrib V8    0.005026816640428194
#>     Attrib V9    0.10877771146087184
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.42200245571593314
#>     Attrib V1    -0.18824392929102632
#>     Attrib V10    -0.24078967785907168
#>     Attrib V11    -0.46402262546837936
#>     Attrib V12    -0.5996232070960178
#>     Attrib V13    -0.22850695271142044
#>     Attrib V14    0.23293928617195012
#>     Attrib V15    0.31218554442576485
#>     Attrib V16    0.30124889112091463
#>     Attrib V17    0.3888547499387343
#>     Attrib V18    0.14216366778378958
#>     Attrib V19    -0.20833182764613895
#>     Attrib V2    -0.007595242860724966
#>     Attrib V20    -0.23222377219534418
#>     Attrib V21    -0.13627569061247777
#>     Attrib V22    -0.2066470286017614
#>     Attrib V23    -0.3147359597053592
#>     Attrib V24    -0.10338664682260969
#>     Attrib V25    0.28169291250148437
#>     Attrib V26    0.44796027237114
#>     Attrib V27    0.32042572043014084
#>     Attrib V28    -0.26998529790154113
#>     Attrib V29    -0.17671395218339384
#>     Attrib V3    0.16075519253301335
#>     Attrib V30    -0.2768333814915767
#>     Attrib V31    0.3223815442343697
#>     Attrib V32    -0.4538802663406436
#>     Attrib V33    -0.1301995302894247
#>     Attrib V34    0.20238709559639034
#>     Attrib V35    0.05827989999095406
#>     Attrib V36    0.7647265727196279
#>     Attrib V37    0.39023137476283615
#>     Attrib V38    0.05776257292593669
#>     Attrib V39    -0.09184022387850296
#>     Attrib V4    -0.36065421881404897
#>     Attrib V40    0.028630276961350797
#>     Attrib V41    -0.34973757623435753
#>     Attrib V42    0.08453674832375696
#>     Attrib V43    0.02239216737682097
#>     Attrib V44    0.012311912476701442
#>     Attrib V45    0.07700088843093737
#>     Attrib V46    -0.09012962411046241
#>     Attrib V47    0.04742129555301121
#>     Attrib V48    -0.0729876518224699
#>     Attrib V49    -0.39689568147220117
#>     Attrib V5    0.05492794259479407
#>     Attrib V50    0.15566741232984346
#>     Attrib V51    -0.10728632874469649
#>     Attrib V52    -0.19812947774685258
#>     Attrib V53    -0.08482687950465635
#>     Attrib V54    -0.08942909023656363
#>     Attrib V55    0.7637880279895657
#>     Attrib V56    0.15177919011936308
#>     Attrib V57    0.14535174874103166
#>     Attrib V58    -0.3586658275720944
#>     Attrib V59    -0.37470500981723864
#>     Attrib V6    -0.34619517266409566
#>     Attrib V60    -0.29092534045890295
#>     Attrib V7    -0.16447231897579004
#>     Attrib V8    0.24049730994608975
#>     Attrib V9    -0.22420561650373363
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.47363936476408536
#>     Attrib V1    0.16798800161429578
#>     Attrib V10    0.5140661214446646
#>     Attrib V11    0.7451669884048384
#>     Attrib V12    0.9138146389483845
#>     Attrib V13    0.5003167723087905
#>     Attrib V14    -0.2154334947537999
#>     Attrib V15    -0.46993372395084515
#>     Attrib V16    -0.671697458694453
#>     Attrib V17    -0.7982362513481273
#>     Attrib V18    -0.27736345994507633
#>     Attrib V19    -0.003875979992140577
#>     Attrib V2    0.07386011605404762
#>     Attrib V20    -0.003169506466323245
#>     Attrib V21    0.08515345323267219
#>     Attrib V22    0.2238162689100972
#>     Attrib V23    0.4590447640283167
#>     Attrib V24    0.2539606683731106
#>     Attrib V25    -0.017039763216742443
#>     Attrib V26    0.049262567407509436
#>     Attrib V27    0.26558132782243415
#>     Attrib V28    0.7605578540460006
#>     Attrib V29    0.4621812264596861
#>     Attrib V3    -0.0728173243227202
#>     Attrib V30    0.17836378144251885
#>     Attrib V31    -0.5944835097179337
#>     Attrib V32    0.38957598028240203
#>     Attrib V33    0.09423285712441903
#>     Attrib V34    -0.2141836034817488
#>     Attrib V35    0.17119360034607115
#>     Attrib V36    -0.6020173253231653
#>     Attrib V37    -0.10559702500629292
#>     Attrib V38    -0.24971961216745936
#>     Attrib V39    -0.053983290950350114
#>     Attrib V4    0.3737910357086126
#>     Attrib V40    -0.0943363438504911
#>     Attrib V41    0.43276309335119906
#>     Attrib V42    -0.04617943625183326
#>     Attrib V43    -0.0177884839571709
#>     Attrib V44    0.02207554651715941
#>     Attrib V45    0.12145965651866143
#>     Attrib V46    0.4180358191790577
#>     Attrib V47    0.21699849421886436
#>     Attrib V48    0.280652695778019
#>     Attrib V49    0.6478967008436296
#>     Attrib V5    0.038575311594970386
#>     Attrib V50    -0.20254717344185777
#>     Attrib V51    0.29218325774928183
#>     Attrib V52    0.5271911316969182
#>     Attrib V53    0.26062276013301783
#>     Attrib V54    -0.13459099368127372
#>     Attrib V55    -0.9211403171256852
#>     Attrib V56    -0.34282342337548705
#>     Attrib V57    -0.2840989941458274
#>     Attrib V58    0.5327719904048605
#>     Attrib V59    0.3846348307883695
#>     Attrib V6    0.4102078524543913
#>     Attrib V60    0.5046720541312766
#>     Attrib V7    0.062323765282356884
#>     Attrib V8    -0.5100721315812818
#>     Attrib V9    0.3581921862812161
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.46697303000394325
#>     Attrib V1    0.2691111801294094
#>     Attrib V10    0.2911636058466747
#>     Attrib V11    0.5278321935638346
#>     Attrib V12    0.6031788158781222
#>     Attrib V13    0.2692300488794553
#>     Attrib V14    -0.16722054868369784
#>     Attrib V15    -0.4443106599103122
#>     Attrib V16    -0.30142494406162024
#>     Attrib V17    -0.3049131326870236
#>     Attrib V18    0.11114365943361063
#>     Attrib V19    0.46965680902790713
#>     Attrib V2    -0.03255025252994482
#>     Attrib V20    0.7040128320268982
#>     Attrib V21    0.6755324972261246
#>     Attrib V22    0.6759892227926264
#>     Attrib V23    0.7304814005707053
#>     Attrib V24    0.21242147160105992
#>     Attrib V25    -0.21574805580575512
#>     Attrib V26    -0.38631396496925957
#>     Attrib V27    -0.19898543189956422
#>     Attrib V28    0.4283667188527099
#>     Attrib V29    0.22390849505503682
#>     Attrib V3    -0.27689604741947615
#>     Attrib V30    0.24583121067092156
#>     Attrib V31    -0.8677120385963635
#>     Attrib V32    0.40793696749446134
#>     Attrib V33    0.2860588810452836
#>     Attrib V34    -0.1923762954812881
#>     Attrib V35    0.19879936531329626
#>     Attrib V36    -0.17978030073551565
#>     Attrib V37    0.010939565085798802
#>     Attrib V38    0.29814861430523537
#>     Attrib V39    0.20256346309248077
#>     Attrib V4    0.45984317703421124
#>     Attrib V40    -0.06801690866990028
#>     Attrib V41    0.30839290975295464
#>     Attrib V42    -0.14680574830309925
#>     Attrib V43    0.16447177746701933
#>     Attrib V44    0.41898225280808166
#>     Attrib V45    0.06392609424672982
#>     Attrib V46    -0.015670115394546484
#>     Attrib V47    -0.2059584165653234
#>     Attrib V48    0.024090467209555842
#>     Attrib V49    0.610678763176687
#>     Attrib V5    -0.1410028886998698
#>     Attrib V50    -0.08077093959077257
#>     Attrib V51    0.13898326495712557
#>     Attrib V52    0.13166228441068187
#>     Attrib V53    0.06575933346493418
#>     Attrib V54    0.2754143154537384
#>     Attrib V55    -1.04491244281973
#>     Attrib V56    -0.21227209480777634
#>     Attrib V57    -0.19110578967163602
#>     Attrib V58    0.47190858940634306
#>     Attrib V59    0.585635983172391
#>     Attrib V6    0.23922148220501052
#>     Attrib V60    0.44550280928703656
#>     Attrib V7    0.4422845573036572
#>     Attrib V8    -0.30429013722211823
#>     Attrib V9    0.258267899016136
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.7213424009551723
#>     Attrib V1    -0.3107861827861608
#>     Attrib V10    -0.5201579842728288
#>     Attrib V11    -0.9080756995708631
#>     Attrib V12    -0.9852436853144554
#>     Attrib V13    -0.5284967768119336
#>     Attrib V14    0.36036324020585125
#>     Attrib V15    0.6607036127480825
#>     Attrib V16    0.6206474605029297
#>     Attrib V17    0.7767667917948498
#>     Attrib V18    0.22852982272822236
#>     Attrib V19    -0.6053504636731217
#>     Attrib V2    -0.02601128176030581
#>     Attrib V20    -0.917004923924541
#>     Attrib V21    -0.5734011856768096
#>     Attrib V22    -0.6145787389128918
#>     Attrib V23    -0.8320700229170704
#>     Attrib V24    -0.31428476906374647
#>     Attrib V25    0.34183097257546535
#>     Attrib V26    0.5634726676661113
#>     Attrib V27    0.31158819539942273
#>     Attrib V28    -0.6279125837665055
#>     Attrib V29    -0.2221358911658975
#>     Attrib V3    0.2684840260906368
#>     Attrib V30    -0.35006645901666833
#>     Attrib V31    1.0804040826359025
#>     Attrib V32    -0.5448485079717894
#>     Attrib V33    -0.1789883607582716
#>     Attrib V34    0.17418741519866843
#>     Attrib V35    -0.2710252347326369
#>     Attrib V36    0.7597509607744589
#>     Attrib V37    0.4478822536930871
#>     Attrib V38    -0.33369703643992604
#>     Attrib V39    -0.4559404110574639
#>     Attrib V4    -0.5442153888052826
#>     Attrib V40    0.025149399497246372
#>     Attrib V41    -0.40423362132692625
#>     Attrib V42    0.0612446972135791
#>     Attrib V43    -0.13342758981207065
#>     Attrib V44    -0.2882769261340627
#>     Attrib V45    -0.07625435313329597
#>     Attrib V46    -0.08837829084943699
#>     Attrib V47    0.18028598405181678
#>     Attrib V48    0.10623952949095838
#>     Attrib V49    -0.8092831026695275
#>     Attrib V5    0.259841948920522
#>     Attrib V50    0.29178393477141235
#>     Attrib V51    -0.09004478876640343
#>     Attrib V52    -0.2124504288030722
#>     Attrib V53    -0.10228085187668406
#>     Attrib V54    -0.1336482233763416
#>     Attrib V55    1.3889087087056267
#>     Attrib V56    0.2567348687207451
#>     Attrib V57    0.44593556294046005
#>     Attrib V58    -0.5782381623352951
#>     Attrib V59    -0.6251983042090216
#>     Attrib V6    -0.3549759051900979
#>     Attrib V60    -0.40775417655888263
#>     Attrib V7    -0.3683934154944232
#>     Attrib V8    0.42217484496608687
#>     Attrib V9    -0.2727793195206719
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.1371879126723215
#>     Attrib V1    0.31272043182586445
#>     Attrib V10    0.06479004868069328
#>     Attrib V11    0.10553138087540741
#>     Attrib V12    0.0821593580326279
#>     Attrib V13    -0.054245408195383135
#>     Attrib V14    0.0144987270812528
#>     Attrib V15    -0.08071374533665714
#>     Attrib V16    0.18064581373234473
#>     Attrib V17    0.09925949716725281
#>     Attrib V18    0.1767152985227087
#>     Attrib V19    0.3939861326585919
#>     Attrib V2    -0.017368720780443804
#>     Attrib V20    0.6449232138321441
#>     Attrib V21    0.5096487040049562
#>     Attrib V22    0.3833965245765848
#>     Attrib V23    0.3026656780818583
#>     Attrib V24    0.08839353961554389
#>     Attrib V25    -0.2771466203922664
#>     Attrib V26    -0.6108498719687637
#>     Attrib V27    -0.5284330476739313
#>     Attrib V28    -0.08683400720202998
#>     Attrib V29    -0.18566793714338495
#>     Attrib V3    -0.1359238616957356
#>     Attrib V30    0.04429462355215815
#>     Attrib V31    -0.3888310212362419
#>     Attrib V32    0.30932720297171107
#>     Attrib V33    0.26363054149760845
#>     Attrib V34    -0.021639771663863112
#>     Attrib V35    0.09955872733748705
#>     Attrib V36    -0.2066974553416807
#>     Attrib V37    -0.2482741943859237
#>     Attrib V38    0.23843752228431092
#>     Attrib V39    0.18059771704239477
#>     Attrib V4    0.4074780145116938
#>     Attrib V40    -0.024111566249185347
#>     Attrib V41    0.02024141455613579
#>     Attrib V42    -0.12055159750280389
#>     Attrib V43    0.08873237846309881
#>     Attrib V44    0.1951435342083305
#>     Attrib V45    -0.16868454197646962
#>     Attrib V46    -0.14094892712114665
#>     Attrib V47    -0.2511188732185634
#>     Attrib V48    0.03935777438380192
#>     Attrib V49    0.37631629869009947
#>     Attrib V5    -0.06698301335908204
#>     Attrib V50    0.08370655879299034
#>     Attrib V51    0.05745051135108463
#>     Attrib V52    -0.03766946197121145
#>     Attrib V53    0.1458133488327165
#>     Attrib V54    0.5227274234359705
#>     Attrib V55    -0.4453630271586359
#>     Attrib V56    0.11567178521158383
#>     Attrib V57    0.10161762527058674
#>     Attrib V58    0.46053657151286803
#>     Attrib V59    0.5985987206084676
#>     Attrib V6    0.0363241448531523
#>     Attrib V60    0.4330109746438856
#>     Attrib V7    0.4092565793591877
#>     Attrib V8    -0.10296439544406713
#>     Attrib V9    0.110647963378376
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.1728192151127118
#>     Attrib V1    0.2767740825048543
#>     Attrib V10    0.011417697559387829
#>     Attrib V11    0.19776570013099418
#>     Attrib V12    0.21022391503384877
#>     Attrib V13    0.022100301383362816
#>     Attrib V14    -0.02573441965796235
#>     Attrib V15    -0.13662614953027596
#>     Attrib V16    0.045102498031332615
#>     Attrib V17    0.14072755986553223
#>     Attrib V18    0.2325385404693465
#>     Attrib V19    0.43143455976226186
#>     Attrib V2    -0.07388606340278316
#>     Attrib V20    0.6281264139432532
#>     Attrib V21    0.5371830940124558
#>     Attrib V22    0.46562493560801044
#>     Attrib V23    0.4128471412115952
#>     Attrib V24    0.05271357157576315
#>     Attrib V25    -0.18873602650443114
#>     Attrib V26    -0.4392885984394598
#>     Attrib V27    -0.4157261078164627
#>     Attrib V28    0.029133639700128354
#>     Attrib V29    -0.18776525504567482
#>     Attrib V3    -0.10831818763569215
#>     Attrib V30    0.025702018554167854
#>     Attrib V31    -0.579664047830409
#>     Attrib V32    0.28805393779711
#>     Attrib V33    0.30438721031478494
#>     Attrib V34    -0.0215462013411238
#>     Attrib V35    0.2415402005349944
#>     Attrib V36    -0.013349083294109774
#>     Attrib V37    -0.035929658555361524
#>     Attrib V38    0.3341033438470789
#>     Attrib V39    0.2238856894095357
#>     Attrib V4    0.4527948371233692
#>     Attrib V40    -0.11187284940218745
#>     Attrib V41    0.037488665529513736
#>     Attrib V42    -0.10910537753610018
#>     Attrib V43    0.14065327652180581
#>     Attrib V44    0.28899834286620363
#>     Attrib V45    -0.03642945660627443
#>     Attrib V46    -0.16322284923996142
#>     Attrib V47    -0.217949426552424
#>     Attrib V48    -0.09480738085773337
#>     Attrib V49    0.34310417928638015
#>     Attrib V5    -0.09778938908668704
#>     Attrib V50    0.017261719789219813
#>     Attrib V51    0.013150704391180459
#>     Attrib V52    -0.010589656042876414
#>     Attrib V53    0.16443824388358175
#>     Attrib V54    0.495857495058375
#>     Attrib V55    -0.5150535293744625
#>     Attrib V56    0.062067520702389294
#>     Attrib V57    0.03989697570991416
#>     Attrib V58    0.3992837596516229
#>     Attrib V59    0.6053365714340474
#>     Attrib V6    0.01687425335651719
#>     Attrib V60    0.3749885675912655
#>     Attrib V7    0.39806535576998336
#>     Attrib V8    -0.10272037706563414
#>     Attrib V9    0.08179131300614549
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.4586691605762794
#>     Attrib V1    -0.2132050885973153
#>     Attrib V10    -0.3050527657316438
#>     Attrib V11    -0.562049547297028
#>     Attrib V12    -0.6616552434862746
#>     Attrib V13    -0.31116393882147925
#>     Attrib V14    0.30598507759826143
#>     Attrib V15    0.5258425091908152
#>     Attrib V16    0.38849888181141085
#>     Attrib V17    0.5405721155131509
#>     Attrib V18    0.06917748967054317
#>     Attrib V19    -0.2915344551051938
#>     Attrib V2    -0.0078070057064542325
#>     Attrib V20    -0.4348056524927467
#>     Attrib V21    -0.3279995342456879
#>     Attrib V22    -0.4211871466905474
#>     Attrib V23    -0.4773195479755488
#>     Attrib V24    -0.15479035369455243
#>     Attrib V25    0.2851793777942179
#>     Attrib V26    0.503026435480362
#>     Attrib V27    0.2742310451695572
#>     Attrib V28    -0.39290396343115097
#>     Attrib V29    -0.22715212051324313
#>     Attrib V3    0.17237184128729546
#>     Attrib V30    -0.29844391230414663
#>     Attrib V31    0.5786059827658714
#>     Attrib V32    -0.4656426305413044
#>     Attrib V33    -0.24833595371747066
#>     Attrib V34    0.15263034233904216
#>     Attrib V35    -0.07816164679418278
#>     Attrib V36    0.6297429817402989
#>     Attrib V37    0.2671053478127224
#>     Attrib V38    -0.08797225536189494
#>     Attrib V39    -0.2337215227397034
#>     Attrib V4    -0.392104012654377
#>     Attrib V40    0.06888400381459876
#>     Attrib V41    -0.3350071623876612
#>     Attrib V42    0.06423369886236084
#>     Attrib V43    0.002883078391206929
#>     Attrib V44    -0.17689062259594293
#>     Attrib V45    -8.99706212927814E-4
#>     Attrib V46    -0.059301066366938805
#>     Attrib V47    0.12586522396176894
#>     Attrib V48    -0.011207212132732102
#>     Attrib V49    -0.5583525556101122
#>     Attrib V5    0.09448188917999366
#>     Attrib V50    0.27507142223928455
#>     Attrib V51    -0.09787609190284162
#>     Attrib V52    -0.13499462181447272
#>     Attrib V53    -0.0865010582677962
#>     Attrib V54    -0.10855968152756404
#>     Attrib V55    1.0322091847443573
#>     Attrib V56    0.23382568172380214
#>     Attrib V57    0.2910038311501389
#>     Attrib V58    -0.39935142920342787
#>     Attrib V59    -0.47376117118680716
#>     Attrib V6    -0.27996493949649465
#>     Attrib V60    -0.41975717840796933
#>     Attrib V7    -0.280986085377992
#>     Attrib V8    0.323182039767716
#>     Attrib V9    -0.17685092851172404
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.40799493385981245
#>     Attrib V1    0.23813420790769627
#>     Attrib V10    0.9019899488092283
#>     Attrib V11    1.1849207407351523
#>     Attrib V12    1.3245880854710579
#>     Attrib V13    0.7219505763349446
#>     Attrib V14    -0.3364624197741551
#>     Attrib V15    -0.6787957799409389
#>     Attrib V16    -1.0043103935536593
#>     Attrib V17    -1.161224924433001
#>     Attrib V18    -0.5416452644446972
#>     Attrib V19    -0.4028932701526905
#>     Attrib V2    0.3140803033480968
#>     Attrib V20    -0.5049746207359347
#>     Attrib V21    -0.3347154936534537
#>     Attrib V22    -0.04882789531979881
#>     Attrib V23    0.47710868201478196
#>     Attrib V24    0.3600829598586775
#>     Attrib V25    0.04282712438394736
#>     Attrib V26    0.4336434501363846
#>     Attrib V27    0.6224619887519365
#>     Attrib V28    0.8626379549023105
#>     Attrib V29    0.6174000150264286
#>     Attrib V3    0.338038817624019
#>     Attrib V30    0.183595538090404
#>     Attrib V31    -0.3073220776657702
#>     Attrib V32    0.4922787343509172
#>     Attrib V33    -0.2255279319743841
#>     Attrib V34    -0.2954266229742668
#>     Attrib V35    0.03554678384827653
#>     Attrib V36    -1.045196270814372
#>     Attrib V37    -0.16749593274249244
#>     Attrib V38    -0.717542675259925
#>     Attrib V39    -0.16594084280206725
#>     Attrib V4    0.3257562674821519
#>     Attrib V40    -0.08030234635250467
#>     Attrib V41    0.7267129807142355
#>     Attrib V42    -0.07173676652932338
#>     Attrib V43    -0.11570205692970834
#>     Attrib V44    -0.12686805142936922
#>     Attrib V45    0.18510966239380988
#>     Attrib V46    0.7922817451366393
#>     Attrib V47    0.6229302800462398
#>     Attrib V48    0.5196795739480193
#>     Attrib V49    0.6706440401569002
#>     Attrib V5    0.35690081767166787
#>     Attrib V50    -0.30687401188922186
#>     Attrib V51    0.5923830723911233
#>     Attrib V52    0.9138294989997111
#>     Attrib V53    0.395545330166431
#>     Attrib V54    -0.5357894228218376
#>     Attrib V55    -0.8061165905382258
#>     Attrib V56    -0.25079155492691985
#>     Attrib V57    -0.25997790906640444
#>     Attrib V58    0.5087965938114104
#>     Attrib V59    0.28144994332229717
#>     Attrib V6    0.778599086217134
#>     Attrib V60    0.5956436321757222
#>     Attrib V7    -0.3361476648425725
#>     Attrib V8    -0.6262424989351258
#>     Attrib V9    0.6642931315081749
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.17337494449881985
#>     Attrib V1    0.09356727984999907
#>     Attrib V10    0.05153412774603715
#>     Attrib V11    0.029479313934484767
#>     Attrib V12    0.08051336609252488
#>     Attrib V13    0.015984191117235917
#>     Attrib V14    0.10803115559123111
#>     Attrib V15    0.010587588165106552
#>     Attrib V16    0.034586728781475416
#>     Attrib V17    0.07900260355208677
#>     Attrib V18    0.025309175267759262
#>     Attrib V19    0.09972159363767841
#>     Attrib V2    0.08083308953270936
#>     Attrib V20    0.07452281273462723
#>     Attrib V21    0.053898109859562365
#>     Attrib V22    0.013823647481951144
#>     Attrib V23    0.041185887032293096
#>     Attrib V24    -0.01670516123335393
#>     Attrib V25    -0.010133770500703205
#>     Attrib V26    -0.0811504218923439
#>     Attrib V27    -0.01853587238892183
#>     Attrib V28    0.04359608519449985
#>     Attrib V29    -0.019736043381648676
#>     Attrib V3    0.057766575000996905
#>     Attrib V30    -0.027273903585244095
#>     Attrib V31    -0.10702329083953083
#>     Attrib V32    0.03523715521217958
#>     Attrib V33    0.08655463585873399
#>     Attrib V34    3.2373144088632675E-4
#>     Attrib V35    0.11193632532838994
#>     Attrib V36    0.05914805562348464
#>     Attrib V37    0.08252077974731098
#>     Attrib V38    0.023705564453722107
#>     Attrib V39    0.05096241604011893
#>     Attrib V4    0.1907413508963849
#>     Attrib V40    -0.003495666282382841
#>     Attrib V41    0.023361984384911813
#>     Attrib V42    0.0036874947928210917
#>     Attrib V43    0.032723491813541124
#>     Attrib V44    0.07341326648064322
#>     Attrib V45    -0.007507351407965857
#>     Attrib V46    -0.01193020850145979
#>     Attrib V47    0.00308068664376458
#>     Attrib V48    0.10060389573831184
#>     Attrib V49    0.07665101751316394
#>     Attrib V5    0.030583691775773306
#>     Attrib V50    0.05969392099518096
#>     Attrib V51    0.06626952901974068
#>     Attrib V52    0.04986111611848458
#>     Attrib V53    0.08741355729288937
#>     Attrib V54    0.06960608351717346
#>     Attrib V55    -0.01922759827491631
#>     Attrib V56    0.11368338979722196
#>     Attrib V57    0.1374997098622707
#>     Attrib V58    0.1318132522651967
#>     Attrib V59    0.1385605896186327
#>     Attrib V6    0.03676771184115431
#>     Attrib V60    0.1926214612693718
#>     Attrib V7    -0.0011795162525946484
#>     Attrib V8    0.02443658664188508
#>     Attrib V9    0.052286523725868395
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5306144519522886
#>     Attrib V1    0.27330976219113773
#>     Attrib V10    0.7328850572367549
#>     Attrib V11    0.9640493851567832
#>     Attrib V12    1.0668189398448222
#>     Attrib V13    0.5836501963613485
#>     Attrib V14    -0.41442065806417183
#>     Attrib V15    -0.6805532337044857
#>     Attrib V16    -0.8633245323413541
#>     Attrib V17    -1.0370724254664188
#>     Attrib V18    -0.31931689154933474
#>     Attrib V19    -0.11078040325614807
#>     Attrib V2    0.13267853930509663
#>     Attrib V20    -0.13589119958324952
#>     Attrib V21    0.10748674261391096
#>     Attrib V22    0.23734329161704681
#>     Attrib V23    0.5639661784067976
#>     Attrib V24    0.3596138691046517
#>     Attrib V25    -0.03149030030623416
#>     Attrib V26    0.20276602863121634
#>     Attrib V27    0.3591722279867085
#>     Attrib V28    0.8302844387935452
#>     Attrib V29    0.5700144893407202
#>     Attrib V3    0.017200076486554226
#>     Attrib V30    0.1868963216622091
#>     Attrib V31    -0.6764705593202789
#>     Attrib V32    0.47611931866447643
#>     Attrib V33    0.015694885880439817
#>     Attrib V34    -0.23842692151680003
#>     Attrib V35    0.13651484008756126
#>     Attrib V36    -0.7037627441345302
#>     Attrib V37    0.0073910970300514415
#>     Attrib V38    -0.31282822925766185
#>     Attrib V39    -0.05153408816194421
#>     Attrib V4    0.39196107810693637
#>     Attrib V40    -0.1931496993659167
#>     Attrib V41    0.5934977245885064
#>     Attrib V42    -0.06505797017846889
#>     Attrib V43    -0.06307526194032695
#>     Attrib V44    0.07530419103318985
#>     Attrib V45    0.21628298841697974
#>     Attrib V46    0.572198577085139
#>     Attrib V47    0.3743952215611748
#>     Attrib V48    0.4050176810557241
#>     Attrib V49    0.653689944739626
#>     Attrib V5    0.14836673169354667
#>     Attrib V50    -0.17854783598625268
#>     Attrib V51    0.4356302302765462
#>     Attrib V52    0.670915977966813
#>     Attrib V53    0.2299372543169039
#>     Attrib V54    -0.3207828729847157
#>     Attrib V55    -1.0841043838197417
#>     Attrib V56    -0.4670388040691927
#>     Attrib V57    -0.27130102297299696
#>     Attrib V58    0.4963391552165586
#>     Attrib V59    0.38415827914594125
#>     Attrib V6    0.6624778355449233
#>     Attrib V60    0.5742442844730544
#>     Attrib V7    -0.028411348037107983
#>     Attrib V8    -0.5962694081258646
#>     Attrib V9    0.5309892696091496
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.4532931979854733
#>     Attrib V1    -0.19055366383625263
#>     Attrib V10    -0.31536854716330576
#>     Attrib V11    -0.5633263248780418
#>     Attrib V12    -0.695773623161816
#>     Attrib V13    -0.2680789777874414
#>     Attrib V14    0.3022062653866961
#>     Attrib V15    0.4916866072311498
#>     Attrib V16    0.4228027895494888
#>     Attrib V17    0.46999081506600754
#>     Attrib V18    0.14817828539963523
#>     Attrib V19    -0.2724464362563559
#>     Attrib V2    -0.04620454344422195
#>     Attrib V20    -0.38790354944537675
#>     Attrib V21    -0.24866182728699335
#>     Attrib V22    -0.3007448528254129
#>     Attrib V23    -0.46666509838049713
#>     Attrib V24    -0.1101380205056391
#>     Attrib V25    0.26574962299808974
#>     Attrib V26    0.4609733673114622
#>     Attrib V27    0.32636738924263237
#>     Attrib V28    -0.38111414356454143
#>     Attrib V29    -0.20172931292755447
#>     Attrib V3    0.17493975038574075
#>     Attrib V30    -0.26932836800941545
#>     Attrib V31    0.4609476121741507
#>     Attrib V32    -0.46368665778511503
#>     Attrib V33    -0.2099956036720302
#>     Attrib V34    0.16437457567204444
#>     Attrib V35    0.006799373688140775
#>     Attrib V36    0.7235637803668146
#>     Attrib V37    0.3372527936320299
#>     Attrib V38    0.02450464605582667
#>     Attrib V39    -0.15953580362465214
#>     Attrib V4    -0.33508566757148367
#>     Attrib V40    0.029026587638583047
#>     Attrib V41    -0.3531220872693626
#>     Attrib V42    0.0487991547475667
#>     Attrib V43    -0.010358968861227601
#>     Attrib V44    -0.10173483046496516
#>     Attrib V45    0.1040223999945825
#>     Attrib V46    -0.10013426527652222
#>     Attrib V47    -0.004048802556932101
#>     Attrib V48    -0.04267886467254176
#>     Attrib V49    -0.5163318899076247
#>     Attrib V5    0.05635993220202823
#>     Attrib V50    0.26108550589099294
#>     Attrib V51    -0.19294463988294358
#>     Attrib V52    -0.1659868330926467
#>     Attrib V53    -0.09919445876287267
#>     Attrib V54    -0.03250641538477267
#>     Attrib V55    0.9197205827484896
#>     Attrib V56    0.18821189660089666
#>     Attrib V57    0.24038686534293954
#>     Attrib V58    -0.3788695921720995
#>     Attrib V59    -0.4185555269637568
#>     Attrib V6    -0.32472039602768743
#>     Attrib V60    -0.3697111696077473
#>     Attrib V7    -0.20068933316462614
#>     Attrib V8    0.3203368659353562
#>     Attrib V9    -0.17934744977194
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2815253639888771
#>     Attrib V1    0.20740458623506017
#>     Attrib V10    0.11887684218855928
#>     Attrib V11    0.38086207855933507
#>     Attrib V12    0.35821152325897715
#>     Attrib V13    0.14139761806728235
#>     Attrib V14    -0.051837667657042556
#>     Attrib V15    -0.2794806427460969
#>     Attrib V16    -0.10097605972714761
#>     Attrib V17    -0.09166613459887914
#>     Attrib V18    0.15374282341336867
#>     Attrib V19    0.4102193368462515
#>     Attrib V2    -0.057424803685473064
#>     Attrib V20    0.7518498121314184
#>     Attrib V21    0.6893461191220869
#>     Attrib V22    0.6390145352567711
#>     Attrib V23    0.5293016247611597
#>     Attrib V24    0.1743501581097355
#>     Attrib V25    -0.15837453871684662
#>     Attrib V26    -0.5058137609967218
#>     Attrib V27    -0.33679781911137646
#>     Attrib V28    0.28769455622450363
#>     Attrib V29    0.08418969724988742
#>     Attrib V3    -0.16558294884650676
#>     Attrib V30    0.11246727165720144
#>     Attrib V31    -0.7134717233451146
#>     Attrib V32    0.3937755159727572
#>     Attrib V33    0.33641414497231015
#>     Attrib V34    -0.04030289420554628
#>     Attrib V35    0.2615444408577867
#>     Attrib V36    -0.08430247110299358
#>     Attrib V37    -0.016734354308830593
#>     Attrib V38    0.38492685435657364
#>     Attrib V39    0.2911339660165193
#>     Attrib V4    0.4045523701396706
#>     Attrib V40    -0.0879822629992036
#>     Attrib V41    0.13207515756540306
#>     Attrib V42    -0.1374707449498497
#>     Attrib V43    0.1840800915484386
#>     Attrib V44    0.349195700735468
#>     Attrib V45    0.10112001433651754
#>     Attrib V46    -0.05575101835908147
#>     Attrib V47    -0.18972585163393646
#>     Attrib V48    -0.03322251919255726
#>     Attrib V49    0.46714495047587506
#>     Attrib V5    -0.20110890571756102
#>     Attrib V50    0.019622160789305974
#>     Attrib V51    0.055417431559847366
#>     Attrib V52    0.0461731329941452
#>     Attrib V53    0.056926724587224704
#>     Attrib V54    0.37857687919792193
#>     Attrib V55    -0.7527646894698817
#>     Attrib V56    -0.08010580866863756
#>     Attrib V57    -0.052580693596790726
#>     Attrib V58    0.3948481015000709
#>     Attrib V59    0.490664999663798
#>     Attrib V6    0.08750526173165817
#>     Attrib V60    0.3538415070167196
#>     Attrib V7    0.3892102795362746
#>     Attrib V8    -0.15602006646625655
#>     Attrib V9    0.14564561802588938
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.19457867836545792
#>     Attrib V1    -0.07617989844078933
#>     Attrib V10    -0.08099574389304294
#>     Attrib V11    -0.24511111056585672
#>     Attrib V12    -0.29894005868399376
#>     Attrib V13    -0.08952671437263587
#>     Attrib V14    0.11759562276713785
#>     Attrib V15    0.1828461916517165
#>     Attrib V16    0.18900734875796515
#>     Attrib V17    0.2988991976626429
#>     Attrib V18    0.07743741294253767
#>     Attrib V19    -0.06224150187805077
#>     Attrib V2    -0.001285077817064829
#>     Attrib V20    -0.10240277830775042
#>     Attrib V21    -0.012238371136017284
#>     Attrib V22    -0.03643730069641918
#>     Attrib V23    -0.11291337255138233
#>     Attrib V24    -0.06872851975959579
#>     Attrib V25    0.15946526349634796
#>     Attrib V26    0.23717247616081513
#>     Attrib V27    0.13066579424067756
#>     Attrib V28    -0.11541089170353802
#>     Attrib V29    -0.12668355199364542
#>     Attrib V3    0.01866946731432106
#>     Attrib V30    -0.06941599417670642
#>     Attrib V31    0.2446046066081098
#>     Attrib V32    -0.19624635451826508
#>     Attrib V33    -0.0731599292091259
#>     Attrib V34    0.05143582219129129
#>     Attrib V35    0.046813149652160435
#>     Attrib V36    0.3272340562849859
#>     Attrib V37    0.2391828845054508
#>     Attrib V38    0.015733633125761336
#>     Attrib V39    -0.011926536728234233
#>     Attrib V4    -0.12980197596941956
#>     Attrib V40    0.0664567230105328
#>     Attrib V41    -0.13415825594152095
#>     Attrib V42    0.06383539872098423
#>     Attrib V43    -0.05357176781215059
#>     Attrib V44    -0.08406105549892498
#>     Attrib V45    0.014239002668579536
#>     Attrib V46    -0.09520491559811413
#>     Attrib V47    -0.051011279227323035
#>     Attrib V48    -0.010927102625409465
#>     Attrib V49    -0.22971441575746782
#>     Attrib V5    -0.026860496603757954
#>     Attrib V50    0.05712360267439083
#>     Attrib V51    -0.10546947599178905
#>     Attrib V52    -0.10968055269150269
#>     Attrib V53    -0.05370285889368665
#>     Attrib V54    -0.055815036318303514
#>     Attrib V55    0.283055162553089
#>     Attrib V56    0.13006172356654008
#>     Attrib V57    0.07904791227572167
#>     Attrib V58    -0.15884892473584694
#>     Attrib V59    -0.15810044674292892
#>     Attrib V6    -0.17996889469480642
#>     Attrib V60    -0.14743240755859266
#>     Attrib V7    -0.14363723417456892
#>     Attrib V8    0.0812050719691039
#>     Attrib V9    -0.12371972313413386
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.2440112156753697
#>     Attrib V1    0.4855342117090597
#>     Attrib V10    0.0523279881057123
#>     Attrib V11    0.11491700529625071
#>     Attrib V12    -0.04594544549271601
#>     Attrib V13    -0.15109719587794154
#>     Attrib V14    0.010898743658921553
#>     Attrib V15    0.026599044227056612
#>     Attrib V16    0.3230587164563553
#>     Attrib V17    0.21237223617868906
#>     Attrib V18    0.22732653727969196
#>     Attrib V19    0.6159008486358591
#>     Attrib V2    -0.03986712579331097
#>     Attrib V20    1.1226402862126272
#>     Attrib V21    0.8826087241743079
#>     Attrib V22    0.7351546192819179
#>     Attrib V23    0.5785149939360394
#>     Attrib V24    0.11496913007869014
#>     Attrib V25    -0.4963484085143147
#>     Attrib V26    -0.9408627846288656
#>     Attrib V27    -0.7711051478082478
#>     Attrib V28    0.023571283781539935
#>     Attrib V29    -0.30570838538026557
#>     Attrib V3    -0.26566952748024353
#>     Attrib V30    0.11501987081909759
#>     Attrib V31    -0.6359278716843506
#>     Attrib V32    0.43681996224690206
#>     Attrib V33    0.5162483141405
#>     Attrib V34    0.028823458211534557
#>     Attrib V35    0.21519306620126089
#>     Attrib V36    -0.23087571431737222
#>     Attrib V37    -0.35466352535325757
#>     Attrib V38    0.5607731168907698
#>     Attrib V39    0.35301839364414994
#>     Attrib V4    0.5876225614746396
#>     Attrib V40    -0.04054711132324522
#>     Attrib V41    0.04591277443228808
#>     Attrib V42    -0.09670910739451431
#>     Attrib V43    0.16953421362849427
#>     Attrib V44    0.43040804218998296
#>     Attrib V45    -0.21322386676011176
#>     Attrib V46    -0.3051701812747583
#>     Attrib V47    -0.43161006307104427
#>     Attrib V48    -0.11437998285856837
#>     Attrib V49    0.5373831098223812
#>     Attrib V5    -0.1978983327668667
#>     Attrib V50    0.17998784492185502
#>     Attrib V51    0.012662427353105323
#>     Attrib V52    -0.21639677077331115
#>     Attrib V53    0.2973466488841417
#>     Attrib V54    0.888517686359288
#>     Attrib V55    -0.6994423705958857
#>     Attrib V56    0.11211526067760255
#>     Attrib V57    0.1613510764338139
#>     Attrib V58    0.6092330899935627
#>     Attrib V59    0.9352142145185011
#>     Attrib V6    0.05036987368454269
#>     Attrib V60    0.6236528476745176
#>     Attrib V7    0.8384013668242217
#>     Attrib V8    0.041339449771999125
#>     Attrib V9    0.16857371145654035
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.10077207457078242
#>     Attrib V1    0.2677666622337863
#>     Attrib V10    0.00399073110422421
#>     Attrib V11    0.125541529987748
#>     Attrib V12    0.08369977604169904
#>     Attrib V13    -0.05601971929553309
#>     Attrib V14    0.0514785256628493
#>     Attrib V15    -0.03915216231700075
#>     Attrib V16    0.15416300547335857
#>     Attrib V17    0.08072173762296823
#>     Attrib V18    0.26022444019309654
#>     Attrib V19    0.38757712457464866
#>     Attrib V2    -0.04564087171885605
#>     Attrib V20    0.6472923448342096
#>     Attrib V21    0.564561719750405
#>     Attrib V22    0.4325891856780297
#>     Attrib V23    0.4110354491848911
#>     Attrib V24    0.06392881225051383
#>     Attrib V25    -0.27896695665195315
#>     Attrib V26    -0.5500875260215633
#>     Attrib V27    -0.45883650398037956
#>     Attrib V28    0.03323106256508012
#>     Attrib V29    -0.1541640490320715
#>     Attrib V3    -0.07349328046507103
#>     Attrib V30    0.09144262539866595
#>     Attrib V31    -0.5023169338004418
#>     Attrib V32    0.2569773249281004
#>     Attrib V33    0.293016363468085
#>     Attrib V34    -0.009585166202827166
#>     Attrib V35    0.1323505289954498
#>     Attrib V36    -0.080320549645834
#>     Attrib V37    -0.17053021959286394
#>     Attrib V38    0.25017816904442836
#>     Attrib V39    0.22224852505418316
#>     Attrib V4    0.36946526897051046
#>     Attrib V40    -0.0748251593461541
#>     Attrib V41    0.021073714605581006
#>     Attrib V42    -0.06577176135862028
#>     Attrib V43    0.02811971583318197
#>     Attrib V44    0.27366888269830125
#>     Attrib V45    -0.03583554251540057
#>     Attrib V46    -0.14401782476852834
#>     Attrib V47    -0.21973034192827604
#>     Attrib V48    -0.05290643052314577
#>     Attrib V49    0.3803519839258238
#>     Attrib V5    -0.07421431650157335
#>     Attrib V50    0.048628914900721944
#>     Attrib V51    0.07524741933900969
#>     Attrib V52    -0.0019491595101420345
#>     Attrib V53    0.16636757312170197
#>     Attrib V54    0.4213423897148345
#>     Attrib V55    -0.46974232906618096
#>     Attrib V56    0.06889310100495935
#>     Attrib V57    0.05963575917853578
#>     Attrib V58    0.4588031387320859
#>     Attrib V59    0.502941476326793
#>     Attrib V6    0.04507878541706808
#>     Attrib V60    0.34121158688561465
#>     Attrib V7    0.40425289423433
#>     Attrib V8    0.018334615789295548
#>     Attrib V9    0.12723934520607136
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
