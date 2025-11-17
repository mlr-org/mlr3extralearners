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
#>     Threshold    -0.4358606017586771
#>     Node 2    2.8280645799588324
#>     Node 3    1.5753534417080053
#>     Node 4    1.2178697963190588
#>     Node 5    -1.7335394261642494
#>     Node 6    1.0901160960702738
#>     Node 7    2.7837655290214736
#>     Node 8    0.9386719072403398
#>     Node 9    4.004050651015546
#>     Node 10    -2.34922882649532
#>     Node 11    1.7914798107836694
#>     Node 12    2.0615764663754548
#>     Node 13    -0.02289196174803759
#>     Node 14    1.794383561222818
#>     Node 15    -1.3615483167852218
#>     Node 16    0.30999832178886044
#>     Node 17    0.696082496054892
#>     Node 18    -0.5634991056243069
#>     Node 19    2.281367830322452
#>     Node 20    2.165061931768507
#>     Node 21    -1.972443067777745
#>     Node 22    1.2495343219418367
#>     Node 23    1.1714493989527741
#>     Node 24    -0.06372186816727811
#>     Node 25    4.346296057712829
#>     Node 26    -1.2638267971722172
#>     Node 27    1.3919748813773631
#>     Node 28    -2.234776318834584
#>     Node 29    1.4795761813851906
#>     Node 30    -1.1578231689595566
#>     Node 31    2.1962587104760436
#>     Node 32    0.9519677912914211
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.4850965735983756
#>     Node 2    -2.8662462190232665
#>     Node 3    -1.561212826519552
#>     Node 4    -1.180376188453418
#>     Node 5    1.7351330412052017
#>     Node 6    -1.0707360955662355
#>     Node 7    -2.781398584063131
#>     Node 8    -0.9690495318530945
#>     Node 9    -4.011741531964782
#>     Node 10    2.3124792921895394
#>     Node 11    -1.7446527899908517
#>     Node 12    -2.133142308855521
#>     Node 13    0.06387045502654323
#>     Node 14    -1.7274012982760394
#>     Node 15    1.3399089657961012
#>     Node 16    -0.33708551140662923
#>     Node 17    -0.668853008437861
#>     Node 18    0.5922662925459529
#>     Node 19    -2.2697785863272433
#>     Node 20    -2.1524767922162207
#>     Node 21    2.0226998428937484
#>     Node 22    -1.308499390205478
#>     Node 23    -1.2235865280579787
#>     Node 24    0.03342521993438394
#>     Node 25    -4.360826673321593
#>     Node 26    1.1748637900153498
#>     Node 27    -1.4098145748431927
#>     Node 28    2.19824492836574
#>     Node 29    -1.5008851547121436
#>     Node 30    1.2267145227911571
#>     Node 31    -2.145631812837125
#>     Node 32    -0.9763930451185852
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.12305797262979105
#>     Attrib V1    0.4774302278898893
#>     Attrib V10    0.14907783376557182
#>     Attrib V11    0.5362316152892121
#>     Attrib V12    0.30267574829027366
#>     Attrib V13    -0.8967401955507734
#>     Attrib V14    -0.5130108523979435
#>     Attrib V15    0.30778271301761645
#>     Attrib V16    0.2788637100263973
#>     Attrib V17    0.30386677344969404
#>     Attrib V18    -0.2348494979797424
#>     Attrib V19    0.15322603626945572
#>     Attrib V2    -0.021998687322257935
#>     Attrib V20    0.8838036775001401
#>     Attrib V21    0.8363357425958371
#>     Attrib V22    0.23837217057427149
#>     Attrib V23    0.06048218540475357
#>     Attrib V24    0.37064564389139104
#>     Attrib V25    -0.3872903969245692
#>     Attrib V26    -0.8580790833334642
#>     Attrib V27    -0.8626765537465125
#>     Attrib V28    -0.6022712043985601
#>     Attrib V29    -0.9962573270694955
#>     Attrib V3    0.16694460807117853
#>     Attrib V30    -0.057863063840886506
#>     Attrib V31    -1.790386091978825
#>     Attrib V32    0.268939403766535
#>     Attrib V33    1.333372858399451
#>     Attrib V34    0.6166962240738723
#>     Attrib V35    0.12194351013748748
#>     Attrib V36    -1.0735569599600956
#>     Attrib V37    -1.5199703723877378
#>     Attrib V38    -0.2775306022205187
#>     Attrib V39    0.30777118992366626
#>     Attrib V4    0.4396744333702375
#>     Attrib V40    0.05770890358051268
#>     Attrib V41    -0.2962189030518042
#>     Attrib V42    0.6220210257889799
#>     Attrib V43    0.5641010709233668
#>     Attrib V44    0.6254289132194832
#>     Attrib V45    -0.06590021536601653
#>     Attrib V46    -0.3616951468217769
#>     Attrib V47    -0.6576844710207105
#>     Attrib V48    0.2654473501998782
#>     Attrib V49    0.6051900956798952
#>     Attrib V5    -0.2646527138828964
#>     Attrib V50    -1.1706575030284143
#>     Attrib V51    -0.2431433609808696
#>     Attrib V52    -0.1543969997477895
#>     Attrib V53    0.2773776465720152
#>     Attrib V54    1.0650720306771688
#>     Attrib V55    -0.4940599694572047
#>     Attrib V56    0.8987419737645809
#>     Attrib V57    -0.3490436950686055
#>     Attrib V58    0.6614927246660106
#>     Attrib V59    0.8148454541128293
#>     Attrib V6    -0.5824529209973691
#>     Attrib V60    0.3401011849892771
#>     Attrib V7    -0.26066813856814103
#>     Attrib V8    -0.034221179676028654
#>     Attrib V9    0.4295307069026183
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.058166299172781995
#>     Attrib V1    0.3985392240723373
#>     Attrib V10    -0.1195477270039113
#>     Attrib V11    -0.026680594032074074
#>     Attrib V12    0.08569934633072662
#>     Attrib V13    -0.4742553743451408
#>     Attrib V14    -0.15420684260463133
#>     Attrib V15    0.36147909870476985
#>     Attrib V16    0.18296363273462776
#>     Attrib V17    0.12674393671307224
#>     Attrib V18    -0.23397201858339603
#>     Attrib V19    -0.06876483296845548
#>     Attrib V2    0.060432468513462116
#>     Attrib V20    0.31381837305248755
#>     Attrib V21    0.3599067657439828
#>     Attrib V22    0.06956635341398354
#>     Attrib V23    -0.1699981008478543
#>     Attrib V24    0.05883354157726933
#>     Attrib V25    -0.3551229608972362
#>     Attrib V26    -0.70847288348002
#>     Attrib V27    -0.5882032925076741
#>     Attrib V28    -0.4173166992699229
#>     Attrib V29    -0.6520897901810514
#>     Attrib V3    0.12077467397169162
#>     Attrib V30    -0.13712808520232278
#>     Attrib V31    -0.9978719241216978
#>     Attrib V32    0.01598645691335444
#>     Attrib V33    0.6170743324705756
#>     Attrib V34    0.16719527933376904
#>     Attrib V35    -0.008421296462487567
#>     Attrib V36    -0.5273472011235352
#>     Attrib V37    -0.7036006760403408
#>     Attrib V38    -0.12774372752530416
#>     Attrib V39    0.17971429520251664
#>     Attrib V4    0.31852263524659497
#>     Attrib V40    -0.023839289156290303
#>     Attrib V41    -0.1514070617353719
#>     Attrib V42    0.29927637681347524
#>     Attrib V43    0.2442773658205751
#>     Attrib V44    0.2664827208797484
#>     Attrib V45    -0.052217137275622875
#>     Attrib V46    -0.1494740127753816
#>     Attrib V47    -0.399804624750995
#>     Attrib V48    0.029091287350729418
#>     Attrib V49    0.18648381818604776
#>     Attrib V5    -0.048640382032003694
#>     Attrib V50    -0.5709838707226785
#>     Attrib V51    -0.14195948092404387
#>     Attrib V52    -0.1323183184764514
#>     Attrib V53    0.163938676489912
#>     Attrib V54    0.6776879069914143
#>     Attrib V55    -0.2269367004096163
#>     Attrib V56    0.448522209048916
#>     Attrib V57    0.1449601103511769
#>     Attrib V58    0.365853477924613
#>     Attrib V59    0.7021877189252118
#>     Attrib V6    -0.13326100828930976
#>     Attrib V60    0.4865441437821029
#>     Attrib V7    -0.0026093609253875468
#>     Attrib V8    -0.11755331741806747
#>     Attrib V9    0.014165608720971492
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -2.8224302216154343E-4
#>     Attrib V1    0.290946339904496
#>     Attrib V10    -0.10823890168459778
#>     Attrib V11    -0.007787786206865611
#>     Attrib V12    0.049118183919179936
#>     Attrib V13    -0.39143877116210185
#>     Attrib V14    -0.10722623483807109
#>     Attrib V15    0.27505928628974186
#>     Attrib V16    0.14664504077307
#>     Attrib V17    0.1404801552997376
#>     Attrib V18    -0.16188094055622954
#>     Attrib V19    -0.08741477772324419
#>     Attrib V2    -2.0655449313669805E-4
#>     Attrib V20    0.22771787396064683
#>     Attrib V21    0.30702753074813915
#>     Attrib V22    -0.03291492229424612
#>     Attrib V23    -0.16651693323662597
#>     Attrib V24    -0.03030001014466117
#>     Attrib V25    -0.4208225811945013
#>     Attrib V26    -0.6302065425355754
#>     Attrib V27    -0.49022082928936905
#>     Attrib V28    -0.2222282723060674
#>     Attrib V29    -0.32934755509107666
#>     Attrib V3    0.118678603903271
#>     Attrib V30    -0.06618844906731261
#>     Attrib V31    -0.7990151605309808
#>     Attrib V32    0.002629724075895877
#>     Attrib V33    0.48471903103308084
#>     Attrib V34    0.15434474496727407
#>     Attrib V35    -7.756983938847435E-5
#>     Attrib V36    -0.4237633278735557
#>     Attrib V37    -0.5428387585544856
#>     Attrib V38    -0.056149652955159425
#>     Attrib V39    0.18507176662723734
#>     Attrib V4    0.26485276678771125
#>     Attrib V40    -0.04082418313296871
#>     Attrib V41    -0.18091745237968626
#>     Attrib V42    0.23161875323973632
#>     Attrib V43    0.19719895218378405
#>     Attrib V44    0.24028294015003004
#>     Attrib V45    0.042096662529427176
#>     Attrib V46    -0.11540090710720345
#>     Attrib V47    -0.3328973313949266
#>     Attrib V48    0.10595710265623069
#>     Attrib V49    0.24513864705368946
#>     Attrib V5    0.007259021387400974
#>     Attrib V50    -0.40854692953112637
#>     Attrib V51    -0.03185721035760607
#>     Attrib V52    -0.07086652444489791
#>     Attrib V53    0.17305393152341514
#>     Attrib V54    0.4252545944333298
#>     Attrib V55    -0.19499639346859962
#>     Attrib V56    0.3552761841540334
#>     Attrib V57    0.13149358302457834
#>     Attrib V58    0.24637838140838775
#>     Attrib V59    0.5394188016932026
#>     Attrib V6    -0.1511539777561837
#>     Attrib V60    0.3650179743364708
#>     Attrib V7    -0.040910162553687936
#>     Attrib V8    -0.19445210940629262
#>     Attrib V9    0.056164308334382726
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.08751038423658711
#>     Attrib V1    -0.43761159691569096
#>     Attrib V10    -0.6307684454335855
#>     Attrib V11    -0.907542335562077
#>     Attrib V12    -0.7495971469537218
#>     Attrib V13    0.40880853075385787
#>     Attrib V14    0.5824011673060527
#>     Attrib V15    0.23334183227399827
#>     Attrib V16    0.2164743586272559
#>     Attrib V17    -0.06901349449282222
#>     Attrib V18    0.22790944391461956
#>     Attrib V19    0.05356557332268443
#>     Attrib V2    -0.022322167573046114
#>     Attrib V20    -0.5381097497212994
#>     Attrib V21    -0.6070784286593891
#>     Attrib V22    -0.3682059807038138
#>     Attrib V23    -0.21581286167467417
#>     Attrib V24    -0.43855817188530294
#>     Attrib V25    -0.031464206255218764
#>     Attrib V26    -0.034079573196633864
#>     Attrib V27    -0.17997559222367
#>     Attrib V28    -0.4210751671456696
#>     Attrib V29    -0.17900128001556023
#>     Attrib V3    -0.15315434633614516
#>     Attrib V30    -0.6798208607553681
#>     Attrib V31    1.2357281584526492
#>     Attrib V32    -0.07022111507480452
#>     Attrib V33    -0.41051141616192255
#>     Attrib V34    0.32346491146164125
#>     Attrib V35    0.27162794590010786
#>     Attrib V36    0.7151614038787448
#>     Attrib V37    0.6826969147370993
#>     Attrib V38    -0.19002972296471093
#>     Attrib V39    -0.44788912904049416
#>     Attrib V4    -0.571945564200412
#>     Attrib V40    0.26447611032977936
#>     Attrib V41    0.23327429586321383
#>     Attrib V42    -0.41036453367078213
#>     Attrib V43    -0.37560600131648275
#>     Attrib V44    -0.5574714200675019
#>     Attrib V45    -0.2330735355177132
#>     Attrib V46    -0.15795828754763633
#>     Attrib V47    0.033792726866183134
#>     Attrib V48    -0.4296822887133456
#>     Attrib V49    -0.826436384079307
#>     Attrib V5    0.02036057090804539
#>     Attrib V50    0.6191639861739147
#>     Attrib V51    -0.40992126595372735
#>     Attrib V52    -0.3131431641492
#>     Attrib V53    -0.14903027288218837
#>     Attrib V54    -0.4495155750565422
#>     Attrib V55    0.8146954939109609
#>     Attrib V56    -0.11580704982115768
#>     Attrib V57    0.5978462536263276
#>     Attrib V58    0.16933535872263303
#>     Attrib V59    0.11026019720573714
#>     Attrib V6    0.19592138704854675
#>     Attrib V60    0.41347813004603273
#>     Attrib V7    0.37447103237059354
#>     Attrib V8    0.2624768447292766
#>     Attrib V9    -0.7779278970174346
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.0230022733590603
#>     Attrib V1    0.3258447201544078
#>     Attrib V10    -0.154262301317105
#>     Attrib V11    -0.031578152620592354
#>     Attrib V12    0.09286134662634228
#>     Attrib V13    -0.343722278614074
#>     Attrib V14    -0.0840665920675013
#>     Attrib V15    0.22987449742968052
#>     Attrib V16    0.2017115722524978
#>     Attrib V17    0.08323178845317254
#>     Attrib V18    -0.09236394443591153
#>     Attrib V19    -0.07196618709380018
#>     Attrib V2    0.060291725863023095
#>     Attrib V20    0.2193087223348695
#>     Attrib V21    0.251393194317343
#>     Attrib V22    -0.03479750003933502
#>     Attrib V23    -0.15125703254057685
#>     Attrib V24    0.06864761467414056
#>     Attrib V25    -0.1916971328615951
#>     Attrib V26    -0.45475088551675796
#>     Attrib V27    -0.3462185272001662
#>     Attrib V28    -0.3130285751077731
#>     Attrib V29    -0.4425066004676929
#>     Attrib V3    0.11460862584168648
#>     Attrib V30    -0.18660420790812765
#>     Attrib V31    -0.7339480678716133
#>     Attrib V32    -0.0040173674907192725
#>     Attrib V33    0.40649088082199597
#>     Attrib V34    0.15529687315543755
#>     Attrib V35    0.08103077853508432
#>     Attrib V36    -0.3023166356975105
#>     Attrib V37    -0.41169898296588825
#>     Attrib V38    -0.05296723002303442
#>     Attrib V39    0.12663422425338786
#>     Attrib V4    0.27888929243296007
#>     Attrib V40    -0.03309476016268862
#>     Attrib V41    -0.055184822463436894
#>     Attrib V42    0.21851932892984455
#>     Attrib V43    0.17747446935208563
#>     Attrib V44    0.15092959745882137
#>     Attrib V45    -0.03644584738342792
#>     Attrib V46    -0.08570437738664083
#>     Attrib V47    -0.29817831982330933
#>     Attrib V48    0.0025589298398931972
#>     Attrib V49    0.13316494658283645
#>     Attrib V5    0.008493079716400554
#>     Attrib V50    -0.3103416179424285
#>     Attrib V51    -0.07537485203849541
#>     Attrib V52    -0.12200754430909042
#>     Attrib V53    0.22292172865044776
#>     Attrib V54    0.4534298725910082
#>     Attrib V55    -0.11985492306610875
#>     Attrib V56    0.3398280926614187
#>     Attrib V57    0.164804079561759
#>     Attrib V58    0.2931223425190099
#>     Attrib V59    0.5670459063836102
#>     Attrib V6    -0.01310537572584452
#>     Attrib V60    0.45211491047826796
#>     Attrib V7    0.019978436744990533
#>     Attrib V8    -0.055642028080161846
#>     Attrib V9    0.046538827598989585
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.07376601102933737
#>     Attrib V1    0.3108516488205772
#>     Attrib V10    1.0399207352397255
#>     Attrib V11    1.491926365518968
#>     Attrib V12    1.2735378460119677
#>     Attrib V13    -0.022190394381724352
#>     Attrib V14    -0.6468827643479755
#>     Attrib V15    -0.8034452043439976
#>     Attrib V16    -0.6133771808680409
#>     Attrib V17    -0.009268818647978135
#>     Attrib V18    -0.09982802493626809
#>     Attrib V19    -0.1378899366072938
#>     Attrib V2    -0.08603657696355559
#>     Attrib V20    -0.03260233120166993
#>     Attrib V21    0.20935030057956996
#>     Attrib V22    0.2586740278920256
#>     Attrib V23    0.5705046930759288
#>     Attrib V24    0.7804015639949478
#>     Attrib V25    0.8290351669636518
#>     Attrib V26    1.1328634193547322
#>     Attrib V27    1.059793238911678
#>     Attrib V28    1.0218837582093074
#>     Attrib V29    0.3173765869517232
#>     Attrib V3    0.17795198791855768
#>     Attrib V30    0.6362666199564498
#>     Attrib V31    -0.49839170083543477
#>     Attrib V32    0.26257174709322834
#>     Attrib V33    0.030692475620761765
#>     Attrib V34    -0.2765520469960995
#>     Attrib V35    0.11234712711223371
#>     Attrib V36    -0.3269114348475794
#>     Attrib V37    -0.6744451587056599
#>     Attrib V38    0.10213771022984597
#>     Attrib V39    0.5656405384582865
#>     Attrib V4    0.5855070242675376
#>     Attrib V40    -0.057564351095804156
#>     Attrib V41    -0.08778750468444503
#>     Attrib V42    0.22612987229428508
#>     Attrib V43    0.27372052619446174
#>     Attrib V44    0.36200380807613997
#>     Attrib V45    0.1345476528616605
#>     Attrib V46    0.5710360229228789
#>     Attrib V47    0.6266709464046731
#>     Attrib V48    0.7462597457135437
#>     Attrib V49    1.1457835756272234
#>     Attrib V5    0.3076352264001422
#>     Attrib V50    0.11469763940628759
#>     Attrib V51    1.0723479090755004
#>     Attrib V52    0.7182083804151818
#>     Attrib V53    0.11895762755212443
#>     Attrib V54    0.07674438299906981
#>     Attrib V55    -0.28259085759482383
#>     Attrib V56    -0.37866104483059876
#>     Attrib V57    -0.6320496314535352
#>     Attrib V58    -0.4563981041540215
#>     Attrib V59    -0.36646127038820503
#>     Attrib V6    -0.12968012720892907
#>     Attrib V60    -0.3453811273156812
#>     Attrib V7    -0.4789489733702382
#>     Attrib V8    -0.35285436483842403
#>     Attrib V9    0.9345248243588516
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.16410736403758763
#>     Attrib V1    0.2065344164888743
#>     Attrib V10    0.0954020344142021
#>     Attrib V11    0.23114885891956555
#>     Attrib V12    0.22239613932186605
#>     Attrib V13    -0.2933396226789778
#>     Attrib V14    -0.26558014261172214
#>     Attrib V15    0.01825334478395564
#>     Attrib V16    0.05267713115616142
#>     Attrib V17    0.07745089547649449
#>     Attrib V18    -0.19807997327370322
#>     Attrib V19    -0.11301143671274978
#>     Attrib V2    -0.06905255556476213
#>     Attrib V20    0.06144734517174326
#>     Attrib V21    0.13796711900089945
#>     Attrib V22    -0.08447237525656255
#>     Attrib V23    -0.15244819468266058
#>     Attrib V24    0.07986005678387902
#>     Attrib V25    -0.21154940939133748
#>     Attrib V26    -0.30791109053723675
#>     Attrib V27    -0.12629198970236538
#>     Attrib V28    0.0799409894860611
#>     Attrib V29    -0.09816064812737003
#>     Attrib V3    0.013229050162084552
#>     Attrib V30    0.1493251861337168
#>     Attrib V31    -0.646193115038564
#>     Attrib V32    0.121762250002101
#>     Attrib V33    0.39905347986640444
#>     Attrib V34    0.055233129232066455
#>     Attrib V35    0.012255907638534057
#>     Attrib V36    -0.3083838841759766
#>     Attrib V37    -0.47457653204259803
#>     Attrib V38    0.07151623002365813
#>     Attrib V39    0.19554942470939815
#>     Attrib V4    0.3099092572718667
#>     Attrib V40    -0.11569273119382353
#>     Attrib V41    -0.19629679472524367
#>     Attrib V42    0.08302474833003484
#>     Attrib V43    0.18321450612301887
#>     Attrib V44    0.2930955977926207
#>     Attrib V45    0.0878718607518019
#>     Attrib V46    0.044334036257836724
#>     Attrib V47    -0.13558643421465408
#>     Attrib V48    0.2809723778087148
#>     Attrib V49    0.35676190704945365
#>     Attrib V5    -0.014263093516266891
#>     Attrib V50    -0.4098453397123259
#>     Attrib V51    0.07307041601078194
#>     Attrib V52    0.04654087982354176
#>     Attrib V53    0.10962358030684193
#>     Attrib V54    0.33898059275790443
#>     Attrib V55    -0.24589700693575153
#>     Attrib V56    0.15359540374939526
#>     Attrib V57    0.00829312406480585
#>     Attrib V58    0.06898112635876406
#>     Attrib V59    0.35704602962085347
#>     Attrib V6    -0.15653745834919588
#>     Attrib V60    0.20944892392560374
#>     Attrib V7    -0.11418082598600411
#>     Attrib V8    -0.23468543758425758
#>     Attrib V9    0.1605902083347155
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    -0.013767172198655113
#>     Attrib V1    0.3144931910816931
#>     Attrib V10    1.3821015969922377
#>     Attrib V11    1.8017812893246705
#>     Attrib V12    1.7386875868461698
#>     Attrib V13    0.27848804482986134
#>     Attrib V14    -0.8225776731291387
#>     Attrib V15    -1.200401596635349
#>     Attrib V16    -0.9422520131760014
#>     Attrib V17    -0.1008747861587507
#>     Attrib V18    -0.1261029791695182
#>     Attrib V19    -0.21097220305979253
#>     Attrib V2    -0.20628514990967062
#>     Attrib V20    -0.19170763691940407
#>     Attrib V21    0.17751669938481943
#>     Attrib V22    0.32500159278694835
#>     Attrib V23    0.6187634460930548
#>     Attrib V24    1.065538542828568
#>     Attrib V25    1.458598609719827
#>     Attrib V26    1.7736645222774081
#>     Attrib V27    1.3530177184683603
#>     Attrib V28    0.9967020618685813
#>     Attrib V29    -0.01484960414045771
#>     Attrib V3    0.24086138256892412
#>     Attrib V30    0.5387496560905513
#>     Attrib V31    -0.47633026445924864
#>     Attrib V32    0.2801978557348891
#>     Attrib V33    -0.08604838652903098
#>     Attrib V34    -0.38520211535876964
#>     Attrib V35    0.12215298988211266
#>     Attrib V36    -0.2807071926249866
#>     Attrib V37    -0.8553004840512446
#>     Attrib V38    0.027053562204329227
#>     Attrib V39    0.7705801801320036
#>     Attrib V4    0.7490129614449557
#>     Attrib V40    0.035181000905966646
#>     Attrib V41    0.06910406973864587
#>     Attrib V42    0.1671175917484808
#>     Attrib V43    0.2026574801550686
#>     Attrib V44    0.3191938066432741
#>     Attrib V45    0.12389920532915528
#>     Attrib V46    0.7196868662073567
#>     Attrib V47    0.8673300772628139
#>     Attrib V48    0.8896613494314011
#>     Attrib V49    1.3659151076171538
#>     Attrib V5    0.4942071594382401
#>     Attrib V50    0.244371836604999
#>     Attrib V51    1.5289218207439024
#>     Attrib V52    0.8300220533382509
#>     Attrib V53    0.35991673990767115
#>     Attrib V54    -0.0460110870776258
#>     Attrib V55    -0.35900241745608236
#>     Attrib V56    -0.5042809906831945
#>     Attrib V57    -0.8078273618760842
#>     Attrib V58    -0.6165521666775828
#>     Attrib V59    -0.4633453501238057
#>     Attrib V6    0.016568553182982025
#>     Attrib V60    -0.4577803602786009
#>     Attrib V7    -0.4487222595599452
#>     Attrib V8    -0.3176042211682572
#>     Attrib V9    1.0990073844357022
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.14523336086248823
#>     Attrib V1    -0.33811257115660753
#>     Attrib V10    -0.9163134831008474
#>     Attrib V11    -1.1963756054308596
#>     Attrib V12    -0.9977556577180133
#>     Attrib V13    0.20175620273320094
#>     Attrib V14    0.5622167287105884
#>     Attrib V15    0.46945709620900417
#>     Attrib V16    0.4697398433486691
#>     Attrib V17    -0.05960548364060919
#>     Attrib V18    0.12598332972260717
#>     Attrib V19    0.275946888605754
#>     Attrib V2    -0.039313024339298695
#>     Attrib V20    0.048807407266227475
#>     Attrib V21    -0.26718218711721387
#>     Attrib V22    -0.25201880911031005
#>     Attrib V23    -0.2736255946049795
#>     Attrib V24    -0.3120611679952063
#>     Attrib V25    -0.14226066939549295
#>     Attrib V26    -0.528092882361621
#>     Attrib V27    -0.9410468486402024
#>     Attrib V28    -1.129241535945103
#>     Attrib V29    -0.6996707149782659
#>     Attrib V3    -0.17630193159934412
#>     Attrib V30    -0.894599079623376
#>     Attrib V31    0.6822788640734876
#>     Attrib V32    -0.10361968652763602
#>     Attrib V33    0.10443272349134389
#>     Attrib V34    0.520122934451228
#>     Attrib V35    0.16539542098954557
#>     Attrib V36    0.40756173461438244
#>     Attrib V37    0.521338179518658
#>     Attrib V38    -0.24805729251328354
#>     Attrib V39    -0.5410225987479192
#>     Attrib V4    -0.6193383169364085
#>     Attrib V40    0.2718169977017576
#>     Attrib V41    0.25150113196485174
#>     Attrib V42    -0.2749370622352665
#>     Attrib V43    -0.4359460081706684
#>     Attrib V44    -0.42047209052157697
#>     Attrib V45    -0.11764941792307272
#>     Attrib V46    -0.5122884139844105
#>     Attrib V47    -0.42579858860645214
#>     Attrib V48    -0.5675398871685795
#>     Attrib V49    -1.0157451306512775
#>     Attrib V5    -0.1666316555382447
#>     Attrib V50    -0.0711301578547252
#>     Attrib V51    -0.8315665082783374
#>     Attrib V52    -0.5988032060625652
#>     Attrib V53    -0.12060077006527466
#>     Attrib V54    -0.06129520455551615
#>     Attrib V55    0.42334680784658035
#>     Attrib V56    0.3015965203163523
#>     Attrib V57    0.5173560730923901
#>     Attrib V58    0.29711981712535634
#>     Attrib V59    0.2532419656177978
#>     Attrib V6    0.17383798474711
#>     Attrib V60    0.2651990639147713
#>     Attrib V7    0.34788625997823863
#>     Attrib V8    0.35632850491267465
#>     Attrib V9    -0.8036682929112223
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.0027180547945165577
#>     Attrib V1    0.32719699398587493
#>     Attrib V10    0.09538777224777518
#>     Attrib V11    0.3630029557592022
#>     Attrib V12    0.3070826707806218
#>     Attrib V13    -0.6673406698013746
#>     Attrib V14    -0.4215560603936737
#>     Attrib V15    0.1580858523995932
#>     Attrib V16    0.1713341659073385
#>     Attrib V17    0.30119419286433563
#>     Attrib V18    -0.09546048793734019
#>     Attrib V19    0.09002896944387533
#>     Attrib V2    -0.08082099033879787
#>     Attrib V20    0.5802061187272749
#>     Attrib V21    0.5168807355425533
#>     Attrib V22    0.13316677467281215
#>     Attrib V23    0.04503689413979041
#>     Attrib V24    0.2646133456405881
#>     Attrib V25    -0.28037821009188507
#>     Attrib V26    -0.7127070084723659
#>     Attrib V27    -0.5685888791025981
#>     Attrib V28    -0.2884793182136863
#>     Attrib V29    -0.5659925331921246
#>     Attrib V3    0.0350992323263923
#>     Attrib V30    0.007151272970128428
#>     Attrib V31    -1.3135792238479094
#>     Attrib V32    0.19693263792185683
#>     Attrib V33    0.8986383089391694
#>     Attrib V34    0.3571250315153342
#>     Attrib V35    0.11023219776417785
#>     Attrib V36    -0.6846143431488838
#>     Attrib V37    -1.0084649080963948
#>     Attrib V38    -0.04964251589203657
#>     Attrib V39    0.2852751350051741
#>     Attrib V4    0.3644434234507486
#>     Attrib V40    -0.0622318825032279
#>     Attrib V41    -0.3134447764794617
#>     Attrib V42    0.3587792486811446
#>     Attrib V43    0.3999966264245756
#>     Attrib V44    0.5174325831893681
#>     Attrib V45    0.04087911152288556
#>     Attrib V46    -0.19947830124413035
#>     Attrib V47    -0.40715714224829835
#>     Attrib V48    0.23904340224930432
#>     Attrib V49    0.4613598972691455
#>     Attrib V5    -0.09620346355943815
#>     Attrib V50    -0.7591599027199283
#>     Attrib V51    -0.015125954759420364
#>     Attrib V52    -0.06586766216448718
#>     Attrib V53    0.16161922744050813
#>     Attrib V54    0.7801646957259958
#>     Attrib V55    -0.3651043946782731
#>     Attrib V56    0.5718566857106299
#>     Attrib V57    -0.1618517655692924
#>     Attrib V58    0.3721653431256074
#>     Attrib V59    0.5167358222601178
#>     Attrib V6    -0.30912397044673023
#>     Attrib V60    0.22953790580874348
#>     Attrib V7    -0.2473719316627325
#>     Attrib V8    -0.1976535437625723
#>     Attrib V9    0.30690635571659464
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.15840895469473765
#>     Attrib V1    0.3819721221549465
#>     Attrib V10    -0.04643429120055551
#>     Attrib V11    0.2654036996248724
#>     Attrib V12    0.17601180399414185
#>     Attrib V13    -0.7504219258026925
#>     Attrib V14    -0.37776096401043235
#>     Attrib V15    0.24596705539988278
#>     Attrib V16    0.24017499026372158
#>     Attrib V17    0.22206890310519578
#>     Attrib V18    -0.21116445865170497
#>     Attrib V19    0.0445721862973066
#>     Attrib V2    -0.028987728692206394
#>     Attrib V20    0.4558487635561961
#>     Attrib V21    0.5180330889138793
#>     Attrib V22    0.1465154182542454
#>     Attrib V23    -0.07375534774785164
#>     Attrib V24    0.18576419340488823
#>     Attrib V25    -0.4404599366770779
#>     Attrib V26    -0.8561328968900604
#>     Attrib V27    -0.6528897558203886
#>     Attrib V28    -0.44272318098071645
#>     Attrib V29    -0.6967033189125148
#>     Attrib V3    0.012837856640820447
#>     Attrib V30    -0.10772369102338443
#>     Attrib V31    -1.4240401579772104
#>     Attrib V32    0.132339678559843
#>     Attrib V33    1.0194712073337997
#>     Attrib V34    0.41358972096229696
#>     Attrib V35    0.06695480207259091
#>     Attrib V36    -0.7594665300589228
#>     Attrib V37    -1.1012157218709429
#>     Attrib V38    -0.13883014417925243
#>     Attrib V39    0.21461703277296612
#>     Attrib V4    0.41248164123170905
#>     Attrib V40    0.004173146164626513
#>     Attrib V41    -0.23871672924217144
#>     Attrib V42    0.40052247119005835
#>     Attrib V43    0.44543536413589235
#>     Attrib V44    0.37822416724050395
#>     Attrib V45    -0.06351035766294641
#>     Attrib V46    -0.17843635365496097
#>     Attrib V47    -0.5457678118670163
#>     Attrib V48    0.23192678470902725
#>     Attrib V49    0.3993232042805818
#>     Attrib V5    -0.14302956504915243
#>     Attrib V50    -0.9005761649895481
#>     Attrib V51    -0.12983922082419336
#>     Attrib V52    -0.13669022729607377
#>     Attrib V53    0.231477644971917
#>     Attrib V54    0.8369657466703735
#>     Attrib V55    -0.4505845891753368
#>     Attrib V56    0.6149895897045079
#>     Attrib V57    0.015366598532006717
#>     Attrib V58    0.4449060038743396
#>     Attrib V59    0.8245295045118186
#>     Attrib V6    -0.3277036924340697
#>     Attrib V60    0.5098656351400856
#>     Attrib V7    -0.08683679603627595
#>     Attrib V8    -0.20118209460022762
#>     Attrib V9    0.21777962389884245
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.237395677732105
#>     Attrib V1    0.03306885645397254
#>     Attrib V10    -0.012341875648014745
#>     Attrib V11    -0.009894841881256344
#>     Attrib V12    -0.006895154353023424
#>     Attrib V13    0.1213362054559843
#>     Attrib V14    0.09245996759050214
#>     Attrib V15    0.061207089832787914
#>     Attrib V16    0.04485742505513762
#>     Attrib V17    0.10662865813880876
#>     Attrib V18    0.08537228983766942
#>     Attrib V19    0.023289829065621263
#>     Attrib V2    0.059066098313464106
#>     Attrib V20    0.026064413532350034
#>     Attrib V21    0.010023388573299874
#>     Attrib V22    -0.029866088209939513
#>     Attrib V23    0.03391429717040716
#>     Attrib V24    -0.027274224837425084
#>     Attrib V25    0.0026835763640057544
#>     Attrib V26    -0.10180942204083342
#>     Attrib V27    -0.06648990699750794
#>     Attrib V28    -0.12429978754384911
#>     Attrib V29    -0.038728355667995616
#>     Attrib V3    0.14318229048692763
#>     Attrib V30    -0.0021445066809037613
#>     Attrib V31    0.06738625545801884
#>     Attrib V32    0.07637326502770687
#>     Attrib V33    0.055296613290735146
#>     Attrib V34    0.12473166964642875
#>     Attrib V35    0.07219244219507927
#>     Attrib V36    0.08427564098257773
#>     Attrib V37    0.12030614109498329
#>     Attrib V38    0.06617772216899843
#>     Attrib V39    0.11732225138031567
#>     Attrib V4    0.0831110072941963
#>     Attrib V40    0.10534971815041443
#>     Attrib V41    0.047830523116814204
#>     Attrib V42    0.023306649977863712
#>     Attrib V43    0.032817886103066754
#>     Attrib V44    0.06504762053224834
#>     Attrib V45    -0.018396461555245786
#>     Attrib V46    0.02896976996332126
#>     Attrib V47    0.08269177168257885
#>     Attrib V48    -0.013941258748095478
#>     Attrib V49    0.029299179274144212
#>     Attrib V5    0.12319449785929987
#>     Attrib V50    0.04929144129217366
#>     Attrib V51    -0.021651301561704445
#>     Attrib V52    -0.024249892512772264
#>     Attrib V53    0.02570548953176422
#>     Attrib V54    -0.030895327205600315
#>     Attrib V55    0.09737817081788999
#>     Attrib V56    0.07721248474269594
#>     Attrib V57    0.09244253509769948
#>     Attrib V58    0.05496469550095657
#>     Attrib V59    0.06401747146687556
#>     Attrib V6    0.10807589091933775
#>     Attrib V60    0.11487530394258576
#>     Attrib V7    0.10336706758438564
#>     Attrib V8    0.058274024936925725
#>     Attrib V9    0.019798801460405656
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.08955598005860647
#>     Attrib V1    0.44321313872393553
#>     Attrib V10    -0.0900449534592084
#>     Attrib V11    0.08596142996909521
#>     Attrib V12    0.13065288076952353
#>     Attrib V13    -0.5978562746408044
#>     Attrib V14    -0.2715838761550952
#>     Attrib V15    0.33474515919113007
#>     Attrib V16    0.19084796375459115
#>     Attrib V17    0.16060148194475832
#>     Attrib V18    -0.20986863808783543
#>     Attrib V19    -0.10247158130010903
#>     Attrib V2    0.010438117458189412
#>     Attrib V20    0.31871705740003653
#>     Attrib V21    0.38748892717516614
#>     Attrib V22    0.04653921116249307
#>     Attrib V23    -0.14221280024642338
#>     Attrib V24    0.07944558188617203
#>     Attrib V25    -0.363324974729086
#>     Attrib V26    -0.7113212615381246
#>     Attrib V27    -0.6298980810182878
#>     Attrib V28    -0.48320218420179206
#>     Attrib V29    -0.7238537461703993
#>     Attrib V3    0.021443257458196547
#>     Attrib V30    -0.16528742161515286
#>     Attrib V31    -1.0815006505056475
#>     Attrib V32    0.049950038163400524
#>     Attrib V33    0.7496344534138288
#>     Attrib V34    0.26177567349368214
#>     Attrib V35    0.06066249880838832
#>     Attrib V36    -0.6041863675957242
#>     Attrib V37    -0.7895042721904724
#>     Attrib V38    -0.1492477452622112
#>     Attrib V39    0.17316648162172713
#>     Attrib V4    0.3089555541685892
#>     Attrib V40    -0.05192512057811657
#>     Attrib V41    -0.21834923128430858
#>     Attrib V42    0.26373922136893824
#>     Attrib V43    0.24734466400830454
#>     Attrib V44    0.3155104380418795
#>     Attrib V45    -0.09415642287057308
#>     Attrib V46    -0.13901086201979174
#>     Attrib V47    -0.45832605540811444
#>     Attrib V48    0.1635572076670787
#>     Attrib V49    0.30721514517744064
#>     Attrib V5    -0.11184606704661011
#>     Attrib V50    -0.6563731307693209
#>     Attrib V51    -0.1457153465988234
#>     Attrib V52    -0.18710545426700695
#>     Attrib V53    0.1499639037901609
#>     Attrib V54    0.7520045846384841
#>     Attrib V55    -0.2751915285705005
#>     Attrib V56    0.5095214832095768
#>     Attrib V57    0.11228249117706521
#>     Attrib V58    0.3766027448030606
#>     Attrib V59    0.7190707858980373
#>     Attrib V6    -0.15845465820377375
#>     Attrib V60    0.5819777948077641
#>     Attrib V7    0.011923557657016328
#>     Attrib V8    -0.21245679540974496
#>     Attrib V9    0.0927097811128764
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.21321515278505737
#>     Attrib V1    -0.35053771083790347
#>     Attrib V10    -0.32190740808248997
#>     Attrib V11    -0.6206191565722623
#>     Attrib V12    -0.4639139184397511
#>     Attrib V13    0.42265582483451847
#>     Attrib V14    0.43951390067564633
#>     Attrib V15    0.11229028007125401
#>     Attrib V16    0.09552341908000495
#>     Attrib V17    -0.11096515169226208
#>     Attrib V18    0.17741613638889261
#>     Attrib V19    0.09886615218601907
#>     Attrib V2    0.03363387041644886
#>     Attrib V20    -0.3509755529756322
#>     Attrib V21    -0.4473651297938854
#>     Attrib V22    -0.06989894862377106
#>     Attrib V23    0.06916363997993569
#>     Attrib V24    -0.15863478529686328
#>     Attrib V25    0.19109494152821002
#>     Attrib V26    0.3559469989761199
#>     Attrib V27    0.05359237012530019
#>     Attrib V28    -0.15060225675327948
#>     Attrib V29    0.03926719086408949
#>     Attrib V3    -0.06266600455894146
#>     Attrib V30    -0.40298446782787156
#>     Attrib V31    1.0661070282180602
#>     Attrib V32    -0.0669536317947701
#>     Attrib V33    -0.4354317794483754
#>     Attrib V34    0.21748904877109335
#>     Attrib V35    0.16526253478862538
#>     Attrib V36    0.6325856650271768
#>     Attrib V37    0.7064702557012207
#>     Attrib V38    -0.1123261727760472
#>     Attrib V39    -0.31765441235734115
#>     Attrib V4    -0.4028697409355974
#>     Attrib V40    0.1630521489575615
#>     Attrib V41    0.19002974773798675
#>     Attrib V42    -0.37343039921391613
#>     Attrib V43    -0.3196601023292809
#>     Attrib V44    -0.4315822348358264
#>     Attrib V45    -0.06498683909020332
#>     Attrib V46    -0.02047056323714294
#>     Attrib V47    0.1751123483421493
#>     Attrib V48    -0.2994776664172693
#>     Attrib V49    -0.5674988744126589
#>     Attrib V5    0.0871845002012359
#>     Attrib V50    0.6211962408358217
#>     Attrib V51    -0.17403795109656103
#>     Attrib V52    -0.166196074548978
#>     Attrib V53    -0.15261707409829214
#>     Attrib V54    -0.49399283743844574
#>     Attrib V55    0.540483985400599
#>     Attrib V56    -0.21506123295973495
#>     Attrib V57    0.24444234321561437
#>     Attrib V58    -0.08584509968201202
#>     Attrib V59    -0.26564902995660006
#>     Attrib V6    0.19281755768080394
#>     Attrib V60    0.05737430805784001
#>     Attrib V7    0.18951216116668784
#>     Attrib V8    0.2571793532831229
#>     Attrib V9    -0.42141704526161455
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.15641536202105677
#>     Attrib V1    0.1330816741293213
#>     Attrib V10    0.009824465534927754
#>     Attrib V11    0.011709007078462322
#>     Attrib V12    0.04621281056921898
#>     Attrib V13    -4.768187403539095E-4
#>     Attrib V14    -0.0016149614113109487
#>     Attrib V15    0.06978801936547133
#>     Attrib V16    0.08977935640829582
#>     Attrib V17    0.07963389518014989
#>     Attrib V18    0.01603041137756744
#>     Attrib V19    -0.013285097885254407
#>     Attrib V2    0.020338790621958133
#>     Attrib V20    -0.005421759288388092
#>     Attrib V21    -0.024830670420273666
#>     Attrib V22    -0.09592132594871235
#>     Attrib V23    -0.13746193044413288
#>     Attrib V24    -0.023591362182360614
#>     Attrib V25    -0.08506523021792592
#>     Attrib V26    -0.1691504112236904
#>     Attrib V27    -0.11612067473661519
#>     Attrib V28    -0.0520282266401986
#>     Attrib V29    -0.11833824347087324
#>     Attrib V3    0.11958585617041866
#>     Attrib V30    -0.10318456269179171
#>     Attrib V31    -0.2073265829049272
#>     Attrib V32    0.03502440350893121
#>     Attrib V33    0.1069828721778729
#>     Attrib V34    0.11900650787471807
#>     Attrib V35    0.08471410187107924
#>     Attrib V36    -0.02907929160777483
#>     Attrib V37    -0.038627735842304195
#>     Attrib V38    0.0436445025498668
#>     Attrib V39    0.09689594265705814
#>     Attrib V4    0.1701092442626434
#>     Attrib V40    -0.008482363769506736
#>     Attrib V41    -0.016061085297628248
#>     Attrib V42    0.07469791610556363
#>     Attrib V43    0.08156300718121548
#>     Attrib V44    0.06102505815756202
#>     Attrib V45    0.04686918923314194
#>     Attrib V46    0.03654064208072887
#>     Attrib V47    -0.017550781170891788
#>     Attrib V48    0.05542047670247091
#>     Attrib V49    0.06853179732339648
#>     Attrib V5    0.09105429597848437
#>     Attrib V50    0.025903970303129128
#>     Attrib V51    0.066461721968038
#>     Attrib V52    0.05890761701572199
#>     Attrib V53    0.13226232865564735
#>     Attrib V54    0.14439035624867164
#>     Attrib V55    0.08753474633383358
#>     Attrib V56    0.1468381798415843
#>     Attrib V57    0.12562085501465237
#>     Attrib V58    0.18100524257991468
#>     Attrib V59    0.16435618560269652
#>     Attrib V6    0.03214028164266246
#>     Attrib V60    0.20703243213338626
#>     Attrib V7    0.005599057661442221
#>     Attrib V8    -0.036077028507071576
#>     Attrib V9    0.06389401876107055
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.02039102802632617
#>     Attrib V1    0.23857881573097592
#>     Attrib V10    -0.01217277770564648
#>     Attrib V11    0.03883477181019355
#>     Attrib V12    0.029604746622475732
#>     Attrib V13    -0.22966751165030505
#>     Attrib V14    -0.07194755916601925
#>     Attrib V15    0.2010863416867123
#>     Attrib V16    0.09074909192307244
#>     Attrib V17    0.0708378300653456
#>     Attrib V18    -0.09981493809755744
#>     Attrib V19    -0.041087741154833296
#>     Attrib V2    0.09664330828962121
#>     Attrib V20    0.09267432484548302
#>     Attrib V21    0.08957639631149612
#>     Attrib V22    -0.01288452669216155
#>     Attrib V23    -0.15325836258296008
#>     Attrib V24    -0.007662202746732419
#>     Attrib V25    -0.24826157652206002
#>     Attrib V26    -0.35748515312575646
#>     Attrib V27    -0.2221696388104923
#>     Attrib V28    -0.14538828513961094
#>     Attrib V29    -0.2588692656105968
#>     Attrib V3    0.07706737584597677
#>     Attrib V30    -0.056447923363799425
#>     Attrib V31    -0.42459916215717225
#>     Attrib V32    -0.03334237288324645
#>     Attrib V33    0.2916203602927496
#>     Attrib V34    0.08030330947422541
#>     Attrib V35    0.09415616146469302
#>     Attrib V36    -0.20182345386617315
#>     Attrib V37    -0.2897655253603687
#>     Attrib V38    0.05748532530034117
#>     Attrib V39    0.14546937896956552
#>     Attrib V4    0.21122154660216635
#>     Attrib V40    -0.06828782892393155
#>     Attrib V41    -0.08943700488195444
#>     Attrib V42    0.07266882288324186
#>     Attrib V43    0.1764031283673793
#>     Attrib V44    0.165900920607788
#>     Attrib V45    0.04388073825187565
#>     Attrib V46    -0.0594256676324327
#>     Attrib V47    -0.19790076895693395
#>     Attrib V48    0.11103244018925056
#>     Attrib V49    0.11985101701446563
#>     Attrib V5    0.029428898076941223
#>     Attrib V50    -0.17975149541428548
#>     Attrib V51    -0.007671008662766166
#>     Attrib V52    -0.0330976610054012
#>     Attrib V53    0.08459296357912091
#>     Attrib V54    0.27837922196069936
#>     Attrib V55    0.007447648106272571
#>     Attrib V56    0.22588176056135312
#>     Attrib V57    0.14623220068362938
#>     Attrib V58    0.15275897270985547
#>     Attrib V59    0.30891369156885856
#>     Attrib V6    -0.05023377373808445
#>     Attrib V60    0.28724058458455665
#>     Attrib V7    -0.07138445510544753
#>     Attrib V8    -0.05029830032283294
#>     Attrib V9    0.03620423773715261
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.23588237354526417
#>     Attrib V1    -0.12105789401166829
#>     Attrib V10    -0.07467696133632282
#>     Attrib V11    -0.19866990737432663
#>     Attrib V12    -0.2307100943795499
#>     Attrib V13    0.16944399594692383
#>     Attrib V14    0.2091375385081721
#>     Attrib V15    0.049540076557318964
#>     Attrib V16    0.09413114738285522
#>     Attrib V17    0.056855222472423715
#>     Attrib V18    0.26508874230948076
#>     Attrib V19    0.0626124141327778
#>     Attrib V2    0.057834473288562394
#>     Attrib V20    -0.039005495083327985
#>     Attrib V21    -0.01268293499124264
#>     Attrib V22    0.08733257558762421
#>     Attrib V23    0.18028749933634777
#>     Attrib V24    -0.029677018660525918
#>     Attrib V25    0.09797660751109781
#>     Attrib V26    0.0696140327372084
#>     Attrib V27    -0.11333460312535243
#>     Attrib V28    -0.22425022535339892
#>     Attrib V29    -0.038092343196954905
#>     Attrib V3    0.06336425228220362
#>     Attrib V30    -0.1478629768781944
#>     Attrib V31    0.42932062363083
#>     Attrib V32    0.026795299824807665
#>     Attrib V33    -0.10284297463295407
#>     Attrib V34    0.08255266258962228
#>     Attrib V35    0.018109490733755656
#>     Attrib V36    0.29607659912758
#>     Attrib V37    0.26514000697610846
#>     Attrib V38    -0.03431375623820057
#>     Attrib V39    -0.06904864257477765
#>     Attrib V4    -0.16121318151266714
#>     Attrib V40    0.06728294364184623
#>     Attrib V41    0.03146754896033046
#>     Attrib V42    -0.10212163284380762
#>     Attrib V43    -0.040207342176097824
#>     Attrib V44    -0.03640203998559634
#>     Attrib V45    -0.10921646418963571
#>     Attrib V46    -0.1007705787920379
#>     Attrib V47    0.10374207211577227
#>     Attrib V48    -0.16595634438270532
#>     Attrib V49    -0.22358916544793778
#>     Attrib V5    0.048170636009912435
#>     Attrib V50    0.17003416725457526
#>     Attrib V51    -0.008829437732286304
#>     Attrib V52    -0.06037142725628051
#>     Attrib V53    -0.06897523159516679
#>     Attrib V54    -0.2839151663385301
#>     Attrib V55    0.19947476793893895
#>     Attrib V56    -0.01939014211350379
#>     Attrib V57    -0.006026978585139119
#>     Attrib V58    -0.03052302978409428
#>     Attrib V59    -0.17597308156129857
#>     Attrib V6    0.06218815324365078
#>     Attrib V60    -0.042292114237353184
#>     Attrib V7    0.11941750711832834
#>     Attrib V8    0.18809743058530276
#>     Attrib V9    -0.1046348066105703
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.13606176217845484
#>     Attrib V1    0.4421264330802249
#>     Attrib V10    -0.05890860439107371
#>     Attrib V11    0.15300133930396398
#>     Attrib V12    0.2600492262692964
#>     Attrib V13    -0.7009555883292776
#>     Attrib V14    -0.3383680604742016
#>     Attrib V15    0.3734734500481495
#>     Attrib V16    0.20471392278434059
#>     Attrib V17    0.13952685619420227
#>     Attrib V18    -0.3257549890518463
#>     Attrib V19    -0.01586641556750557
#>     Attrib V2    -0.03311127565201171
#>     Attrib V20    0.49817006653098383
#>     Attrib V21    0.5529683342692425
#>     Attrib V22    0.16122597701083663
#>     Attrib V23    -0.13625183326505694
#>     Attrib V24    0.3094491888773695
#>     Attrib V25    -0.2001112220456011
#>     Attrib V26    -0.724343055761711
#>     Attrib V27    -0.7460666711746682
#>     Attrib V28    -0.6228858513342033
#>     Attrib V29    -0.9971630413876844
#>     Attrib V3    0.027097993353017585
#>     Attrib V30    -0.3005998976295897
#>     Attrib V31    -1.4175319987601487
#>     Attrib V32    0.09530408048708466
#>     Attrib V33    1.0568009315254177
#>     Attrib V34    0.49665169319429736
#>     Attrib V35    0.19351790721938256
#>     Attrib V36    -0.7140153107580738
#>     Attrib V37    -1.1509928121555724
#>     Attrib V38    -0.27891066440863005
#>     Attrib V39    0.17313809506236574
#>     Attrib V4    0.39965648679572985
#>     Attrib V40    0.028990355416394182
#>     Attrib V41    -0.17430252433553917
#>     Attrib V42    0.48071192407269836
#>     Attrib V43    0.29436531242428754
#>     Attrib V44    0.2836768253973542
#>     Attrib V45    -0.011814199688081188
#>     Attrib V46    -0.21478953161093967
#>     Attrib V47    -0.6097186292226512
#>     Attrib V48    0.19261806486083058
#>     Attrib V49    0.4416581912852982
#>     Attrib V5    -0.12159593726195303
#>     Attrib V50    -0.931392559447566
#>     Attrib V51    -0.18182830189305302
#>     Attrib V52    -0.2544773960384644
#>     Attrib V53    0.23531257738793954
#>     Attrib V54    0.9685093271521653
#>     Attrib V55    -0.3743809413004448
#>     Attrib V56    0.600368334382702
#>     Attrib V57    0.004536305393022006
#>     Attrib V58    0.527136508769512
#>     Attrib V59    0.8822103432296575
#>     Attrib V6    -0.2077781709692813
#>     Attrib V60    0.6301994115973624
#>     Attrib V7    0.042521913867557146
#>     Attrib V8    -0.1359951061787343
#>     Attrib V9    0.19749723413772077
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.06950504121307
#>     Attrib V1    0.5213106349937567
#>     Attrib V10    -0.09198423477597151
#>     Attrib V11    0.09198128864138326
#>     Attrib V12    0.16853373397738652
#>     Attrib V13    -0.721104558919397
#>     Attrib V14    -0.2863455730483035
#>     Attrib V15    0.3791269744280363
#>     Attrib V16    0.22664346731463314
#>     Attrib V17    0.1628578063712267
#>     Attrib V18    -0.25551158088387155
#>     Attrib V19    -0.05072383571403956
#>     Attrib V2    -0.020296863557484234
#>     Attrib V20    0.4857006523089384
#>     Attrib V21    0.5942938728521763
#>     Attrib V22    0.1484285558007797
#>     Attrib V23    -0.11893597978695547
#>     Attrib V24    0.1906992063725021
#>     Attrib V25    -0.38211729419141505
#>     Attrib V26    -0.7855307710492336
#>     Attrib V27    -0.6694793540978351
#>     Attrib V28    -0.5782299256328274
#>     Attrib V29    -0.7962889274193418
#>     Attrib V3    0.04942357773461162
#>     Attrib V30    -0.1918416495271961
#>     Attrib V31    -1.3906746481881969
#>     Attrib V32    -0.003197258949752865
#>     Attrib V33    0.913798384903434
#>     Attrib V34    0.35877572794446305
#>     Attrib V35    0.054106486636809205
#>     Attrib V36    -0.6680629899909495
#>     Attrib V37    -0.9705382571523561
#>     Attrib V38    -0.17193170377608236
#>     Attrib V39    0.17015989916272595
#>     Attrib V4    0.3687435980811059
#>     Attrib V40    -0.005739649394194891
#>     Attrib V41    -0.19157701495811622
#>     Attrib V42    0.3888159505305054
#>     Attrib V43    0.40608845765518564
#>     Attrib V44    0.40101255659189466
#>     Attrib V45    -0.10924647295607957
#>     Attrib V46    -0.2884590991683921
#>     Attrib V47    -0.624409366991173
#>     Attrib V48    0.14787960142069073
#>     Attrib V49    0.3081969823391744
#>     Attrib V5    -0.09294209917032178
#>     Attrib V50    -0.8742374206362139
#>     Attrib V51    -0.15169216420949863
#>     Attrib V52    -0.26165341199444925
#>     Attrib V53    0.21509755924913293
#>     Attrib V54    0.9265868931655915
#>     Attrib V55    -0.3953454230735245
#>     Attrib V56    0.6389576952444455
#>     Attrib V57    0.03515018023448375
#>     Attrib V58    0.4953601036021311
#>     Attrib V59    0.8959976135251685
#>     Attrib V6    -0.2078615035524018
#>     Attrib V60    0.6473288799735075
#>     Attrib V7    0.04647353717248689
#>     Attrib V8    -0.19709945368468643
#>     Attrib V9    0.15740588881632017
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.011463343981582087
#>     Attrib V1    -0.3929474500426787
#>     Attrib V10    -0.8561715178020968
#>     Attrib V11    -1.142182738980825
#>     Attrib V12    -0.8102554711243937
#>     Attrib V13    0.40501172293256044
#>     Attrib V14    0.6430176088325886
#>     Attrib V15    0.3321072029223068
#>     Attrib V16    0.3223593334551273
#>     Attrib V17    -0.07162056569047288
#>     Attrib V18    0.23395936183068664
#>     Attrib V19    0.09657148483210075
#>     Attrib V2    -0.1135193115494528
#>     Attrib V20    -0.4003369973686284
#>     Attrib V21    -0.5558214399203141
#>     Attrib V22    -0.43611625692477207
#>     Attrib V23    -0.3858726400933983
#>     Attrib V24    -0.46333950944374624
#>     Attrib V25    -0.1509581972535893
#>     Attrib V26    -0.20867901879589404
#>     Attrib V27    -0.39498567955141417
#>     Attrib V28    -0.5827759122908323
#>     Attrib V29    -0.270282381638535
#>     Attrib V3    -0.20337437578945922
#>     Attrib V30    -0.8385680215500428
#>     Attrib V31    1.2262264329775963
#>     Attrib V32    -0.08312452695343299
#>     Attrib V33    -0.33155112792820446
#>     Attrib V34    0.4043958802368688
#>     Attrib V35    0.23123610188286112
#>     Attrib V36    0.6815340833653075
#>     Attrib V37    0.7817896907968849
#>     Attrib V38    -0.14694971069755156
#>     Attrib V39    -0.42462663771849724
#>     Attrib V4    -0.5125108207309704
#>     Attrib V40    0.3675799759815691
#>     Attrib V41    0.33106169084849624
#>     Attrib V42    -0.5225077624082961
#>     Attrib V43    -0.4156036469262563
#>     Attrib V44    -0.5918838802454861
#>     Attrib V45    -0.26929154223340057
#>     Attrib V46    -0.23467016307930894
#>     Attrib V47    -0.14102326072406254
#>     Attrib V48    -0.536399373963865
#>     Attrib V49    -0.9953504249190648
#>     Attrib V5    0.010200347592260971
#>     Attrib V50    0.4750734356758622
#>     Attrib V51    -0.6006092787624716
#>     Attrib V52    -0.42323401840640085
#>     Attrib V53    -0.051518040712972175
#>     Attrib V54    -0.36514191554569475
#>     Attrib V55    0.6981718445272203
#>     Attrib V56    -0.01116860304276275
#>     Attrib V57    0.8042809769543631
#>     Attrib V58    0.27554684780021516
#>     Attrib V59    0.2791529104674632
#>     Attrib V6    0.22161311821135907
#>     Attrib V60    0.5373888172926079
#>     Attrib V7    0.4747831225520797
#>     Attrib V8    0.19493350344650384
#>     Attrib V9    -0.8570950515237796
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.006260281373681388
#>     Attrib V1    0.39524465574453804
#>     Attrib V10    -0.1391352645289929
#>     Attrib V11    -0.05836894763058249
#>     Attrib V12    0.02027348806843903
#>     Attrib V13    -0.4098417023100035
#>     Attrib V14    -0.08344892993383894
#>     Attrib V15    0.2505961739185188
#>     Attrib V16    0.24108993329428094
#>     Attrib V17    0.12909519309601394
#>     Attrib V18    -0.15737005356099176
#>     Attrib V19    -0.12964069086987012
#>     Attrib V2    0.08274475889181693
#>     Attrib V20    0.2158757917015948
#>     Attrib V21    0.24068735169591324
#>     Attrib V22    -0.05349901962151612
#>     Attrib V23    -0.24651427848301946
#>     Attrib V24    0.011404692671573825
#>     Attrib V25    -0.3817204553336704
#>     Attrib V26    -0.6411610303369146
#>     Attrib V27    -0.4827187861270234
#>     Attrib V28    -0.3743535556986114
#>     Attrib V29    -0.4234486342428759
#>     Attrib V3    0.08203984049712855
#>     Attrib V30    -0.17887682273874458
#>     Attrib V31    -0.7562035105352378
#>     Attrib V32    -0.04854392842120123
#>     Attrib V33    0.3923659774021714
#>     Attrib V34    0.1308106065486163
#>     Attrib V35    0.009685151248656184
#>     Attrib V36    -0.36057407808407066
#>     Attrib V37    -0.4575400332267445
#>     Attrib V38    -0.04114750050175337
#>     Attrib V39    0.11550117289627869
#>     Attrib V4    0.28163025729346064
#>     Attrib V40    -0.02980919063999692
#>     Attrib V41    -0.2025342121652335
#>     Attrib V42    0.15964345621580806
#>     Attrib V43    0.25358107423145804
#>     Attrib V44    0.18831118420343887
#>     Attrib V45    -0.08251680244066502
#>     Attrib V46    -0.07162573711399624
#>     Attrib V47    -0.3680358934261868
#>     Attrib V48    0.07272878271036569
#>     Attrib V49    0.1528038671518527
#>     Attrib V5    0.0016803977100094932
#>     Attrib V50    -0.40054506593071043
#>     Attrib V51    -0.12571146792993348
#>     Attrib V52    -0.12354421121814421
#>     Attrib V53    0.16284499720921386
#>     Attrib V54    0.5414846947750064
#>     Attrib V55    -0.1332821461820926
#>     Attrib V56    0.3958464588891656
#>     Attrib V57    0.18871332970775948
#>     Attrib V58    0.3322827095993159
#>     Attrib V59    0.5779684528373659
#>     Attrib V6    -0.05677630692014709
#>     Attrib V60    0.5103524211100889
#>     Attrib V7    0.04670852070636954
#>     Attrib V8    -0.1958353446168116
#>     Attrib V9    0.0077646415011908805
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.0018806931314164247
#>     Attrib V1    0.36991121442137487
#>     Attrib V10    -0.19857132244842038
#>     Attrib V11    -0.026866399084518277
#>     Attrib V12    0.08478006310439314
#>     Attrib V13    -0.34182747366224187
#>     Attrib V14    -0.07618383304377525
#>     Attrib V15    0.27077791735156376
#>     Attrib V16    0.15010415500232893
#>     Attrib V17    0.15940621432770194
#>     Attrib V18    -0.12813281892079045
#>     Attrib V19    -0.07140662907567069
#>     Attrib V2    0.035588034319868136
#>     Attrib V20    0.20291303848675488
#>     Attrib V21    0.22424057683404952
#>     Attrib V22    -0.0079764244776043
#>     Attrib V23    -0.1424953639723869
#>     Attrib V24    0.005237945022840083
#>     Attrib V25    -0.2706652820918711
#>     Attrib V26    -0.493513187747006
#>     Attrib V27    -0.4587787594367271
#>     Attrib V28    -0.3798252028891629
#>     Attrib V29    -0.5104288929392561
#>     Attrib V3    0.14011352459359755
#>     Attrib V30    -0.2275184004608765
#>     Attrib V31    -0.8022699513635557
#>     Attrib V32    -0.04970888576783138
#>     Attrib V33    0.425789170109922
#>     Attrib V34    0.16439214710257868
#>     Attrib V35    0.11235646362305174
#>     Attrib V36    -0.2906939534294197
#>     Attrib V37    -0.3948716317882018
#>     Attrib V38    -0.05092717441410951
#>     Attrib V39    0.13187212180609287
#>     Attrib V4    0.31051845381906285
#>     Attrib V40    -0.04770032317988569
#>     Attrib V41    -0.14137228631414003
#>     Attrib V42    0.1648166031701508
#>     Attrib V43    0.24828295762931865
#>     Attrib V44    0.18667699204736118
#>     Attrib V45    -0.026254641085800282
#>     Attrib V46    -0.12446283666358406
#>     Attrib V47    -0.3014638044773772
#>     Attrib V48    -0.01971284189933112
#>     Attrib V49    0.13343268289845245
#>     Attrib V5    -0.002866560433104706
#>     Attrib V50    -0.41445037909583504
#>     Attrib V51    -0.1585853512510876
#>     Attrib V52    -0.10495437322342661
#>     Attrib V53    0.22482565508007088
#>     Attrib V54    0.5359482293844873
#>     Attrib V55    -0.10544142084053916
#>     Attrib V56    0.4194387453216051
#>     Attrib V57    0.13531601617557862
#>     Attrib V58    0.3015445866204148
#>     Attrib V59    0.6118962177305253
#>     Attrib V6    -0.04705512600246015
#>     Attrib V60    0.45889406835778057
#>     Attrib V7    0.03304487476970918
#>     Attrib V8    -0.11944871561687653
#>     Attrib V9    -0.00524273311312533
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.16574812919953294
#>     Attrib V1    0.043817685281430936
#>     Attrib V10    -0.0019761547201407785
#>     Attrib V11    -0.006839254945789696
#>     Attrib V12    0.023050793497077005
#>     Attrib V13    0.03893559669020972
#>     Attrib V14    0.07840504869802419
#>     Attrib V15    0.11916469067390774
#>     Attrib V16    0.06517268232793645
#>     Attrib V17    0.14128046088174656
#>     Attrib V18    0.07137358260827248
#>     Attrib V19    0.04042199438467364
#>     Attrib V2    0.060489383930898
#>     Attrib V20    -0.005829483065379456
#>     Attrib V21    -0.014206548272469402
#>     Attrib V22    -0.03567950059599136
#>     Attrib V23    0.018695446908006178
#>     Attrib V24    -0.07966976072384396
#>     Attrib V25    -0.05014696069839715
#>     Attrib V26    -0.04626373267935477
#>     Attrib V27    -0.14353158118758033
#>     Attrib V28    -0.09227285578751912
#>     Attrib V29    -0.06769942465744358
#>     Attrib V3    0.07709317677097567
#>     Attrib V30    -0.023829904304950286
#>     Attrib V31    0.08337652039420104
#>     Attrib V32    0.09686592469297912
#>     Attrib V33    0.004004173279916579
#>     Attrib V34    0.06325027894834431
#>     Attrib V35    0.06525478209257508
#>     Attrib V36    0.12191760931489969
#>     Attrib V37    0.07545892347659927
#>     Attrib V38    0.06791106429017527
#>     Attrib V39    0.05638165287663128
#>     Attrib V4    0.1082018659737818
#>     Attrib V40    0.10493642824406364
#>     Attrib V41    0.07037516141890184
#>     Attrib V42    -0.020884023454038347
#>     Attrib V43    0.10446995879492844
#>     Attrib V44    0.04673038308993211
#>     Attrib V45    -0.02862732537689467
#>     Attrib V46    0.01642633306816103
#>     Attrib V47    0.09525502021400688
#>     Attrib V48    0.01884558407089148
#>     Attrib V49    -0.01679089638410756
#>     Attrib V5    0.07022609130232459
#>     Attrib V50    0.12018744294802168
#>     Attrib V51    0.03574598320708327
#>     Attrib V52    0.06588863203287755
#>     Attrib V53    0.0010382943992906723
#>     Attrib V54    -0.02175209740620329
#>     Attrib V55    0.1149936647067695
#>     Attrib V56    0.10808226802998434
#>     Attrib V57    0.1336089245195911
#>     Attrib V58    0.07137652830489478
#>     Attrib V59    0.03565547992480028
#>     Attrib V6    0.116069552461641
#>     Attrib V60    0.05281800301448987
#>     Attrib V7    0.03412312146504777
#>     Attrib V8    0.0943180237158083
#>     Attrib V9    0.07994550890993447
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.1584381835188277
#>     Attrib V1    0.6589279647498979
#>     Attrib V10    1.0889210372049956
#>     Attrib V11    1.6475855779408133
#>     Attrib V12    1.5361989175008741
#>     Attrib V13    0.1255689265565398
#>     Attrib V14    -0.4163252972001616
#>     Attrib V15    -0.8343321224558347
#>     Attrib V16    -0.7343515377905432
#>     Attrib V17    0.1163717917983578
#>     Attrib V18    0.07139058775970301
#>     Attrib V19    -0.488765603317885
#>     Attrib V2    0.056020613852595935
#>     Attrib V20    -0.3167698916597221
#>     Attrib V21    0.35406973670506153
#>     Attrib V22    0.45176270451850525
#>     Attrib V23    0.5855433441131677
#>     Attrib V24    0.36230165684993176
#>     Attrib V25    0.23168697292256415
#>     Attrib V26    1.0669033106038803
#>     Attrib V27    1.5541398475837187
#>     Attrib V28    1.7161090389790765
#>     Attrib V29    1.2974556438551839
#>     Attrib V3    0.39664392641436463
#>     Attrib V30    1.2549483838266995
#>     Attrib V31    -0.6035463924871386
#>     Attrib V32    -0.21379188105448854
#>     Attrib V33    -0.6925294928573258
#>     Attrib V34    -1.1959277160258175
#>     Attrib V35    -0.604222547375573
#>     Attrib V36    -0.5943917944976179
#>     Attrib V37    -0.5070471528988248
#>     Attrib V38    0.5025658082623654
#>     Attrib V39    1.0141369956210105
#>     Attrib V4    0.9224720803233243
#>     Attrib V40    -0.11824034862040596
#>     Attrib V41    -0.14870434698214072
#>     Attrib V42    0.22168128246343724
#>     Attrib V43    0.5698268681484969
#>     Attrib V44    0.7206916697185017
#>     Attrib V45    0.22252890505963765
#>     Attrib V46    0.8656023353203074
#>     Attrib V47    0.7144297567804999
#>     Attrib V48    0.5122320984771606
#>     Attrib V49    1.1844367767296202
#>     Attrib V5    0.5079683128551699
#>     Attrib V50    0.5151257204397958
#>     Attrib V51    1.4234342941133535
#>     Attrib V52    0.9855961618811782
#>     Attrib V53    0.4703661353082575
#>     Attrib V54    -0.21628849361623498
#>     Attrib V55    -0.6455628003872655
#>     Attrib V56    -0.715095264859484
#>     Attrib V57    -0.4776404451283048
#>     Attrib V58    -0.655822091961173
#>     Attrib V59    -0.3986850757989389
#>     Attrib V6    -0.012105872521557577
#>     Attrib V60    -0.4772726773631469
#>     Attrib V7    -0.38290175586349107
#>     Attrib V8    -0.7033631004267664
#>     Attrib V9    0.7637211868358178
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.26181990393035265
#>     Attrib V1    -0.28638811209818016
#>     Attrib V10    -0.29686294453886247
#>     Attrib V11    -0.572160552719787
#>     Attrib V12    -0.4723305271546327
#>     Attrib V13    0.38259817026230947
#>     Attrib V14    0.4806725498709014
#>     Attrib V15    0.07214016255116439
#>     Attrib V16    0.09172691693825134
#>     Attrib V17    -0.04129972961998096
#>     Attrib V18    0.19036511827706953
#>     Attrib V19    0.16388130360689468
#>     Attrib V2    0.090688376412696
#>     Attrib V20    -0.23204968893461264
#>     Attrib V21    -0.28235522232234844
#>     Attrib V22    -0.011782598601205875
#>     Attrib V23    0.1449909542800052
#>     Attrib V24    -0.13015576807692025
#>     Attrib V25    0.20399287379091488
#>     Attrib V26    0.24570468675378973
#>     Attrib V27    0.05421888229912376
#>     Attrib V28    -0.16507188010444307
#>     Attrib V29    0.015815354573333613
#>     Attrib V3    -0.08301254051545608
#>     Attrib V30    -0.3779632501128445
#>     Attrib V31    0.9144655969667458
#>     Attrib V32    -0.09561248156982743
#>     Attrib V33    -0.3512238525495905
#>     Attrib V34    0.1335911917743971
#>     Attrib V35    0.17191361837683922
#>     Attrib V36    0.592857839302346
#>     Attrib V37    0.6427196804843772
#>     Attrib V38    -0.1278003689463003
#>     Attrib V39    -0.2822253618713735
#>     Attrib V4    -0.33687946565323823
#>     Attrib V40    0.15505535637264622
#>     Attrib V41    0.17717932343887183
#>     Attrib V42    -0.2832362264576386
#>     Attrib V43    -0.24880683809446952
#>     Attrib V44    -0.33932766520214175
#>     Attrib V45    -0.09365635686607565
#>     Attrib V46    -0.09144148266507686
#>     Attrib V47    0.1210343923656926
#>     Attrib V48    -0.27149213460959154
#>     Attrib V49    -0.5383383944127985
#>     Attrib V5    0.03327788055420631
#>     Attrib V50    0.5434188476687034
#>     Attrib V51    -0.21960335240688852
#>     Attrib V52    -0.14071652894545586
#>     Attrib V53    -0.18301073422025463
#>     Attrib V54    -0.4351563736328853
#>     Attrib V55    0.47249955354426765
#>     Attrib V56    -0.17773049504345292
#>     Attrib V57    0.25949564301199896
#>     Attrib V58    -0.05768419737056545
#>     Attrib V59    -0.24300994048394323
#>     Attrib V6    0.21538179222538006
#>     Attrib V60    0.08391613928017673
#>     Attrib V7    0.17906209444058124
#>     Attrib V8    0.26682498101101315
#>     Attrib V9    -0.3796374407353733
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.14349506057038305
#>     Attrib V1    0.439881956375615
#>     Attrib V10    0.4225278156500555
#>     Attrib V11    0.7397968186399634
#>     Attrib V12    0.6007375756457044
#>     Attrib V13    -0.3218276353251477
#>     Attrib V14    -0.4459793139321345
#>     Attrib V15    -0.03299590887083872
#>     Attrib V16    -0.0944010577535462
#>     Attrib V17    0.17832063996211603
#>     Attrib V18    -0.0620711059494341
#>     Attrib V19    -0.008216664004616384
#>     Attrib V2    -0.023155845057740865
#>     Attrib V20    0.41226643446864997
#>     Attrib V21    0.5869111399896398
#>     Attrib V22    0.27780789298752484
#>     Attrib V23    0.13336800988178146
#>     Attrib V24    0.33808829018485864
#>     Attrib V25    -0.11739324079395726
#>     Attrib V26    -0.13905654749519353
#>     Attrib V27    -0.08004373492482035
#>     Attrib V28    0.08671664787357539
#>     Attrib V29    -0.07940604261486575
#>     Attrib V3    0.0836807923313654
#>     Attrib V30    0.3703512837800847
#>     Attrib V31    -1.1184746323249544
#>     Attrib V32    0.1592626224733676
#>     Attrib V33    0.507334851931338
#>     Attrib V34    -0.06952558544146269
#>     Attrib V35    -0.04512462959205403
#>     Attrib V36    -0.6346510722629553
#>     Attrib V37    -0.7555925192912404
#>     Attrib V38    0.10930074668789119
#>     Attrib V39    0.44133271928438306
#>     Attrib V4    0.45441703834497993
#>     Attrib V40    -0.23673880459101052
#>     Attrib V41    -0.3705415840679257
#>     Attrib V42    0.2818538529220317
#>     Attrib V43    0.37355165705664095
#>     Attrib V44    0.6049046443882783
#>     Attrib V45    0.2164832779399038
#>     Attrib V46    -0.04623708360269087
#>     Attrib V47    -0.27958345109533195
#>     Attrib V48    0.3000011579283183
#>     Attrib V49    0.561947429251466
#>     Attrib V5    -0.03650384366752123
#>     Attrib V50    -0.6086368975431109
#>     Attrib V51    0.24626834811042372
#>     Attrib V52    0.21152676965698952
#>     Attrib V53    0.13879612501760888
#>     Attrib V54    0.515111504508968
#>     Attrib V55    -0.4453654730941178
#>     Attrib V56    0.27793289844648006
#>     Attrib V57    -0.5241591869098048
#>     Attrib V58    0.09892010191480088
#>     Attrib V59    0.1660454470793081
#>     Attrib V6    -0.22292775416520122
#>     Attrib V60    -0.2024657072781447
#>     Attrib V7    -0.31844096756001605
#>     Attrib V8    -0.27786869503862793
#>     Attrib V9    0.522884264306429
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.05080141722886168
#>     Attrib V1    -0.3065606415888254
#>     Attrib V10    -0.9636913651007755
#>     Attrib V11    -1.2264232552407293
#>     Attrib V12    -1.0348294159328726
#>     Attrib V13    0.250033636622316
#>     Attrib V14    0.5930969404436564
#>     Attrib V15    0.5771514332776868
#>     Attrib V16    0.49433018838048093
#>     Attrib V17    -0.07900582563440547
#>     Attrib V18    0.1424609609556288
#>     Attrib V19    0.1234811592903317
#>     Attrib V2    -0.07346957518454267
#>     Attrib V20    -0.09703018138793298
#>     Attrib V21    -0.2980115524460804
#>     Attrib V22    -0.27217640853255365
#>     Attrib V23    -0.44705182829070633
#>     Attrib V24    -0.44779725265019554
#>     Attrib V25    -0.3069024209526143
#>     Attrib V26    -0.5873069087360103
#>     Attrib V27    -0.8343161789654869
#>     Attrib V28    -0.995732946550534
#>     Attrib V29    -0.47193412887257397
#>     Attrib V3    -0.16595562744427253
#>     Attrib V30    -0.8645490130635991
#>     Attrib V31    0.7070865171564502
#>     Attrib V32    -0.08378848346752113
#>     Attrib V33    -0.12226782209043348
#>     Attrib V34    0.354265796044876
#>     Attrib V35    0.0944434548510218
#>     Attrib V36    0.48346898403077443
#>     Attrib V37    0.6375279766459545
#>     Attrib V38    -0.12165581954177347
#>     Attrib V39    -0.4600089995672843
#>     Attrib V4    -0.5340233743247182
#>     Attrib V40    0.20951845378191042
#>     Attrib V41    0.20361073515753136
#>     Attrib V42    -0.3598153612619198
#>     Attrib V43    -0.41377267580887295
#>     Attrib V44    -0.46757248021843983
#>     Attrib V45    -0.10365709369575017
#>     Attrib V46    -0.3945512760128502
#>     Attrib V47    -0.41417746142498774
#>     Attrib V48    -0.6086491785496768
#>     Attrib V49    -1.0904095390575919
#>     Attrib V5    -0.16756988691438485
#>     Attrib V50    0.07859013623891835
#>     Attrib V51    -0.8362680886181433
#>     Attrib V52    -0.5500715905831333
#>     Attrib V53    -0.1568818203382688
#>     Attrib V54    -0.08968046644221911
#>     Attrib V55    0.46494296604689
#>     Attrib V56    0.2337581652167064
#>     Attrib V57    0.6242087312083339
#>     Attrib V58    0.33680151032247924
#>     Attrib V59    0.2957451952001704
#>     Attrib V6    0.16664152952114386
#>     Attrib V60    0.33725708268985854
#>     Attrib V7    0.4645562774403443
#>     Attrib V8    0.3328294181497614
#>     Attrib V9    -0.7797289624261033
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.059227788089950766
#>     Attrib V1    0.3441304320043587
#>     Attrib V10    0.03374843344996375
#>     Attrib V11    0.34521395494831747
#>     Attrib V12    0.29174328189910737
#>     Attrib V13    -0.5237714814218261
#>     Attrib V14    -0.28482673903753986
#>     Attrib V15    0.17657888270942032
#>     Attrib V16    0.1075971047353753
#>     Attrib V17    0.1884968549676989
#>     Attrib V18    -0.14103665947245664
#>     Attrib V19    -0.01352628705590756
#>     Attrib V2    -0.03131855348371836
#>     Attrib V20    0.46445850545901907
#>     Attrib V21    0.5163653198195928
#>     Attrib V22    0.18287154965338354
#>     Attrib V23    -0.030481608391597376
#>     Attrib V24    0.27507602749252724
#>     Attrib V25    -0.20565046531983464
#>     Attrib V26    -0.5936936392915592
#>     Attrib V27    -0.48276697965408233
#>     Attrib V28    -0.31698818595454314
#>     Attrib V29    -0.47191836240942253
#>     Attrib V3    0.1071863645484912
#>     Attrib V30    -0.0725163138633263
#>     Attrib V31    -1.1260429001724774
#>     Attrib V32    0.14275745877988516
#>     Attrib V33    0.7122248717630559
#>     Attrib V34    0.2084201450462027
#>     Attrib V35    0.03284441870456305
#>     Attrib V36    -0.6565989261120551
#>     Attrib V37    -0.8601392231919235
#>     Attrib V38    -0.09119752372215296
#>     Attrib V39    0.27504806939770987
#>     Attrib V4    0.33335061231237356
#>     Attrib V40    -0.06814057052408733
#>     Attrib V41    -0.2129129307496533
#>     Attrib V42    0.30954749944045623
#>     Attrib V43    0.39538851776431777
#>     Attrib V44    0.3521594917480026
#>     Attrib V45    0.055133124262997955
#>     Attrib V46    -0.12356846086878745
#>     Attrib V47    -0.3530158322817803
#>     Attrib V48    0.16762655815689317
#>     Attrib V49    0.382295359419698
#>     Attrib V5    -0.09142177239996102
#>     Attrib V50    -0.6533372733272986
#>     Attrib V51    0.007698923070394482
#>     Attrib V52    -0.006880497480728757
#>     Attrib V53    0.15405460278015
#>     Attrib V54    0.6386361918673217
#>     Attrib V55    -0.2722063941911028
#>     Attrib V56    0.48064955752218197
#>     Attrib V57    -0.13038726302703688
#>     Attrib V58    0.2886560757862895
#>     Attrib V59    0.530019912895567
#>     Attrib V6    -0.20577223827257646
#>     Attrib V60    0.267095566604364
#>     Attrib V7    -0.15148955750206297
#>     Attrib V8    -0.18663990468301198
#>     Attrib V9    0.2335993072587205
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.29512681343576397
#>     Attrib V1    -0.24549496267044305
#>     Attrib V10    -0.1886246272944074
#>     Attrib V11    -0.470265406584849
#>     Attrib V12    -0.4487882988934136
#>     Attrib V13    0.4275863801675349
#>     Attrib V14    0.4193651241766742
#>     Attrib V15    0.1061954791645252
#>     Attrib V16    0.11992228437982758
#>     Attrib V17    0.02963835509214878
#>     Attrib V18    0.2749713476999217
#>     Attrib V19    0.1355150605893404
#>     Attrib V2    0.1360180883379224
#>     Attrib V20    -0.19478391371933632
#>     Attrib V21    -0.20199929417824183
#>     Attrib V22    0.05334386941264896
#>     Attrib V23    0.2133716783734795
#>     Attrib V24    -0.11840399552181012
#>     Attrib V25    0.2396836052408557
#>     Attrib V26    0.29288057130441536
#>     Attrib V27    -0.04389123401917023
#>     Attrib V28    -0.2346616937934041
#>     Attrib V29    -0.051162622343055325
#>     Attrib V3    -0.039626129314924576
#>     Attrib V30    -0.3048373568203509
#>     Attrib V31    0.9737249442165932
#>     Attrib V32    -0.06422161132086672
#>     Attrib V33    -0.3518998737326196
#>     Attrib V34    0.13755716298841447
#>     Attrib V35    0.15544330341477436
#>     Attrib V36    0.5066619608288883
#>     Attrib V37    0.5847247028899752
#>     Attrib V38    -0.15279887734015907
#>     Attrib V39    -0.2424828521766853
#>     Attrib V4    -0.30559438609135775
#>     Attrib V40    0.16120564968346576
#>     Attrib V41    0.17249742386855912
#>     Attrib V42    -0.24664723227108695
#>     Attrib V43    -0.24616647978076672
#>     Attrib V44    -0.33699786959876044
#>     Attrib V45    -0.07132521676408206
#>     Attrib V46    -0.08432210002113606
#>     Attrib V47    0.11922183896168333
#>     Attrib V48    -0.29127416335902223
#>     Attrib V49    -0.5165660152406791
#>     Attrib V5    0.021858447872022478
#>     Attrib V50    0.5084083061523179
#>     Attrib V51    -0.20218031500695088
#>     Attrib V52    -0.09142414752819007
#>     Attrib V53    -0.17171004019000172
#>     Attrib V54    -0.4339236629255094
#>     Attrib V55    0.4440092929282299
#>     Attrib V56    -0.13724824151209927
#>     Attrib V57    0.13854231416579368
#>     Attrib V58    -0.03375424855827584
#>     Attrib V59    -0.28003203452503295
#>     Attrib V6    0.14436289397665536
#>     Attrib V60    -0.014836789691773171
#>     Attrib V7    0.131187560164282
#>     Attrib V8    0.23816267107320238
#>     Attrib V9    -0.3227407643819344
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.02133803836708952
#>     Attrib V1    0.5039835821262688
#>     Attrib V10    -0.20335479435633597
#>     Attrib V11    -0.03141706538822698
#>     Attrib V12    -0.03266652324209714
#>     Attrib V13    -0.6501366079959101
#>     Attrib V14    -0.20421912585144522
#>     Attrib V15    0.4681273749310029
#>     Attrib V16    0.3137544998672748
#>     Attrib V17    0.16268713248100966
#>     Attrib V18    -0.2802009613589412
#>     Attrib V19    -0.11064620131422406
#>     Attrib V2    0.09436241613446698
#>     Attrib V20    0.4680419643273504
#>     Attrib V21    0.448302891597302
#>     Attrib V22    0.08982965888366615
#>     Attrib V23    -0.2070792762245988
#>     Attrib V24    0.11625448156809623
#>     Attrib V25    -0.45483793985295917
#>     Attrib V26    -0.8351426154334342
#>     Attrib V27    -0.7584919831574971
#>     Attrib V28    -0.6298150263504543
#>     Attrib V29    -0.8580373037278166
#>     Attrib V3    0.0826903203281782
#>     Attrib V30    -0.3119501914660293
#>     Attrib V31    -1.268962129561473
#>     Attrib V32    -0.07199095149069626
#>     Attrib V33    0.8370923243893037
#>     Attrib V34    0.3904180646445651
#>     Attrib V35    0.08402988400570524
#>     Attrib V36    -0.6678993414496907
#>     Attrib V37    -0.8498663355742737
#>     Attrib V38    -0.14249540504934102
#>     Attrib V39    0.10766955059216227
#>     Attrib V4    0.3524454477640946
#>     Attrib V40    -0.02159414404626425
#>     Attrib V41    -0.22178927462308684
#>     Attrib V42    0.3401826996522059
#>     Attrib V43    0.3193091880139133
#>     Attrib V44    0.3198713047212213
#>     Attrib V45    -0.10968408366830594
#>     Attrib V46    -0.23362645369857318
#>     Attrib V47    -0.564452211541111
#>     Attrib V48    0.06422727627281541
#>     Attrib V49    0.20015789196568043
#>     Attrib V5    -0.13323668041181888
#>     Attrib V50    -0.7838842562940301
#>     Attrib V51    -0.2934801682507962
#>     Attrib V52    -0.3260423544007584
#>     Attrib V53    0.27951327967464
#>     Attrib V54    0.9281251857062842
#>     Attrib V55    -0.32944970769629184
#>     Attrib V56    0.6041833419942921
#>     Attrib V57    0.1834456713538087
#>     Attrib V58    0.44540133237326157
#>     Attrib V59    0.8624613580839323
#>     Attrib V6    -0.1299672710294378
#>     Attrib V60    0.7025965005086495
#>     Attrib V7    0.09333294382153262
#>     Attrib V8    -0.11272787932485846
#>     Attrib V9    0.08965746022753007
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.0484832850017189
#>     Attrib V1    0.315967422644157
#>     Attrib V10    -0.17893533322918043
#>     Attrib V11    -0.03825097975036892
#>     Attrib V12    0.025909917298165924
#>     Attrib V13    -0.32705852554323983
#>     Attrib V14    -0.013754706336908458
#>     Attrib V15    0.24757222175671104
#>     Attrib V16    0.18752809716851715
#>     Attrib V17    0.08744982770267411
#>     Attrib V18    -0.04576282659446218
#>     Attrib V19    -0.10409224825266288
#>     Attrib V2    0.04754093939004416
#>     Attrib V20    0.18359545506732114
#>     Attrib V21    0.21110676068842713
#>     Attrib V22    -0.04445885486533637
#>     Attrib V23    -0.1395302140501968
#>     Attrib V24    -0.040159766061642364
#>     Attrib V25    -0.3354609961249609
#>     Attrib V26    -0.4934165179690961
#>     Attrib V27    -0.35655517197014064
#>     Attrib V28    -0.216735131328073
#>     Attrib V29    -0.33395778368247675
#>     Attrib V3    0.13249146909458695
#>     Attrib V30    -0.1021263118142846
#>     Attrib V31    -0.6750595736770805
#>     Attrib V32    -0.059310206881468944
#>     Attrib V33    0.35561987634331665
#>     Attrib V34    0.14505813410085283
#>     Attrib V35    0.06392033250620689
#>     Attrib V36    -0.19251811765238983
#>     Attrib V37    -0.33587015418753796
#>     Attrib V38    -0.027000794375126
#>     Attrib V39    0.15392411002408785
#>     Attrib V4    0.21705951106414295
#>     Attrib V40    -0.043895455374250644
#>     Attrib V41    -0.1519133906199173
#>     Attrib V42    0.1774932852094627
#>     Attrib V43    0.15163838424348952
#>     Attrib V44    0.18807228555319785
#>     Attrib V45    0.008644418074488019
#>     Attrib V46    -0.06903533354533577
#>     Attrib V47    -0.2559356110204201
#>     Attrib V48    0.0076770564637920055
#>     Attrib V49    0.1808572484794706
#>     Attrib V5    0.00735862177697586
#>     Attrib V50    -0.3021383903916232
#>     Attrib V51    -0.07711998216905318
#>     Attrib V52    -0.06400504150697361
#>     Attrib V53    0.16408559818460455
#>     Attrib V54    0.3743703814444958
#>     Attrib V55    -0.08788153101005926
#>     Attrib V56    0.2885442534509891
#>     Attrib V57    0.14081628906345273
#>     Attrib V58    0.30839493151167713
#>     Attrib V59    0.4580159408441132
#>     Attrib V6    -0.049044849869862295
#>     Attrib V60    0.3890671821904744
#>     Attrib V7    -0.004132792529731916
#>     Attrib V8    -0.07599901757999934
#>     Attrib V9    0.010349153349749639
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
