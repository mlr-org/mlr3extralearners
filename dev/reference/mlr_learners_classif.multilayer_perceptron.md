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
#>     Threshold    -1.5048134833390703
#>     Node 2    2.3633899063313493
#>     Node 3    1.4141422406483113
#>     Node 4    0.7245624185945639
#>     Node 5    -2.313878594651365
#>     Node 6    1.48777531150358
#>     Node 7    1.6164176637214505
#>     Node 8    0.797774173700293
#>     Node 9    2.714297708193435
#>     Node 10    -1.5318861879546897
#>     Node 11    1.07211215950322
#>     Node 12    1.3802208413821206
#>     Node 13    1.0779262217073264
#>     Node 14    1.4342569909989078
#>     Node 15    -3.2207279441789227
#>     Node 16    0.1740329424629234
#>     Node 17    0.7001529017710605
#>     Node 18    0.4312948149624813
#>     Node 19    2.195469956033399
#>     Node 20    1.7036479546067633
#>     Node 21    -2.529016026755582
#>     Node 22    1.8303192780739874
#>     Node 23    1.6019868735236231
#>     Node 24    -0.9288841036807677
#>     Node 25    3.8940538690446562
#>     Node 26    0.29009365711903323
#>     Node 27    2.000891214555904
#>     Node 28    -4.228528215070754
#>     Node 29    0.6805089833498353
#>     Node 30    0.958327469422771
#>     Node 31    1.1973057275925254
#>     Node 32    1.5370606376629767
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    1.5107822832409499
#>     Node 2    -2.3822747224433987
#>     Node 3    -1.4009208478373114
#>     Node 4    -0.6879765328404184
#>     Node 5    2.3483275963213317
#>     Node 6    -1.4628124893301084
#>     Node 7    -1.6013485712514997
#>     Node 8    -0.8268563983253916
#>     Node 9    -2.7106296573944277
#>     Node 10    1.4726028593294933
#>     Node 11    -1.0381571005497017
#>     Node 12    -1.4547776291457175
#>     Node 13    -1.0245854509775771
#>     Node 14    -1.3752862446901568
#>     Node 15    3.1934385275362938
#>     Node 16    -0.19205705927739658
#>     Node 17    -0.6690844415281293
#>     Node 18    -0.39358768857894544
#>     Node 19    -2.201486082564317
#>     Node 20    -1.6960580863307246
#>     Node 21    2.5758698460395557
#>     Node 22    -1.8808892290622015
#>     Node 23    -1.6412516095114196
#>     Node 24    0.9246622297548638
#>     Node 25    -3.8831216627656957
#>     Node 26    -0.37404661551741153
#>     Node 27    -2.0428735445386934
#>     Node 28    4.2157419371683815
#>     Node 29    -0.7184004870233625
#>     Node 30    -0.8895404776015543
#>     Node 31    -1.1429129031180596
#>     Node 32    -1.553066937233343
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.5517950594868045
#>     Attrib V1    0.5408139039782061
#>     Attrib V10    -0.3539988207303349
#>     Attrib V11    0.09727847080123643
#>     Attrib V12    0.08901412372838924
#>     Attrib V13    0.009080781926154647
#>     Attrib V14    -0.6078289618343353
#>     Attrib V15    -0.8239815597334647
#>     Attrib V16    -0.6279604038376659
#>     Attrib V17    -0.6795209731424253
#>     Attrib V18    -0.42230790149161285
#>     Attrib V19    -0.526431168632736
#>     Attrib V2    -0.43929607447565366
#>     Attrib V20    -0.24562879464891216
#>     Attrib V21    0.19381990286428263
#>     Attrib V22    0.5764443389944267
#>     Attrib V23    0.7298435771408712
#>     Attrib V24    0.6470188042367716
#>     Attrib V25    -0.13768785108051507
#>     Attrib V26    -1.1314446625459291
#>     Attrib V27    -0.5407846680620653
#>     Attrib V28    0.6584832867939331
#>     Attrib V29    0.11697284999720836
#>     Attrib V3    -0.49866753178994505
#>     Attrib V30    0.7494179448990128
#>     Attrib V31    -0.8607251466278717
#>     Attrib V32    0.32579903980854
#>     Attrib V33    1.118692245269014
#>     Attrib V34    -0.05292416727487698
#>     Attrib V35    -0.11685379568868572
#>     Attrib V36    -0.7045585817774775
#>     Attrib V37    -0.7532939375700921
#>     Attrib V38    0.4749514502725404
#>     Attrib V39    0.5343818553242369
#>     Attrib V4    -0.43754509857581264
#>     Attrib V40    0.25025259627238267
#>     Attrib V41    0.5891028266495263
#>     Attrib V42    0.45530975187428985
#>     Attrib V43    0.3864212127261431
#>     Attrib V44    0.6614879543763571
#>     Attrib V45    0.3233909382373122
#>     Attrib V46    0.019318241736827408
#>     Attrib V47    0.031449062860153726
#>     Attrib V48    0.3677765041484424
#>     Attrib V49    0.3633469365987162
#>     Attrib V5    -0.4724896025325534
#>     Attrib V50    -1.494799428311079
#>     Attrib V51    0.15677446741899664
#>     Attrib V52    0.1783397108394121
#>     Attrib V53    0.017381102813467088
#>     Attrib V54    0.2464830750438679
#>     Attrib V55    -1.2601350943109921
#>     Attrib V56    0.20473524873133575
#>     Attrib V57    -0.25967894227969934
#>     Attrib V58    0.3005819353459374
#>     Attrib V59    0.7684761716754712
#>     Attrib V6    -0.2704719072140116
#>     Attrib V60    0.4385096495206965
#>     Attrib V7    0.05030423903502874
#>     Attrib V8    -0.009189742734004141
#>     Attrib V9    0.38107404609996154
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.1388884875753175
#>     Attrib V1    0.483658789940569
#>     Attrib V10    -0.13919754648012897
#>     Attrib V11    0.04341531305220752
#>     Attrib V12    -0.17864333106414088
#>     Attrib V13    0.08474038709707243
#>     Attrib V14    -0.022984527252680548
#>     Attrib V15    0.11463030604630013
#>     Attrib V16    0.1571953260834703
#>     Attrib V17    -0.054438676058813855
#>     Attrib V18    -0.11849094572130657
#>     Attrib V19    0.10426691293371038
#>     Attrib V2    -0.0653116003435691
#>     Attrib V20    0.27613242339923555
#>     Attrib V21    0.33355100325863846
#>     Attrib V22    0.3791244323144714
#>     Attrib V23    0.1802412293231133
#>     Attrib V24    0.08083456760630774
#>     Attrib V25    -0.304035349458454
#>     Attrib V26    -0.8830693550190335
#>     Attrib V27    -0.59582370523649
#>     Attrib V28    0.03470328492857778
#>     Attrib V29    -0.3505179837887574
#>     Attrib V3    -0.1194324870080228
#>     Attrib V30    0.13466288171339402
#>     Attrib V31    -0.8769698428538263
#>     Attrib V32    -0.13124938466297872
#>     Attrib V33    0.41542564301692964
#>     Attrib V34    -0.32296307516673795
#>     Attrib V35    -0.21721075999565004
#>     Attrib V36    -0.6163449316440818
#>     Attrib V37    -0.638486166960141
#>     Attrib V38    0.12253319857729204
#>     Attrib V39    0.3259757560057376
#>     Attrib V4    -0.07370494680093684
#>     Attrib V40    0.010311760802150538
#>     Attrib V41    0.11630838015285333
#>     Attrib V42    0.12698612216486663
#>     Attrib V43    -0.008228946781128609
#>     Attrib V44    0.1952583417856951
#>     Attrib V45    0.11489141298104609
#>     Attrib V46    -0.10900053883171401
#>     Attrib V47    -0.0021759064491277008
#>     Attrib V48    0.1916507026563409
#>     Attrib V49    0.24620956501451935
#>     Attrib V5    -0.16049452680071355
#>     Attrib V50    -0.8756186176367245
#>     Attrib V51    0.14911943816924764
#>     Attrib V52    0.14963946796870317
#>     Attrib V53    0.03486791836161707
#>     Attrib V54    0.5070922677175116
#>     Attrib V55    -0.29558328083317686
#>     Attrib V56    0.47361033662807195
#>     Attrib V57    0.10601064495828287
#>     Attrib V58    0.5808439646676806
#>     Attrib V59    0.7544170257562701
#>     Attrib V6    -0.25161987509117084
#>     Attrib V60    0.42085268396230574
#>     Attrib V7    -0.009039739879453638
#>     Attrib V8    0.0779938873516092
#>     Attrib V9    0.3251938656824088
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.015168784767461136
#>     Attrib V1    0.3206897088441698
#>     Attrib V10    -0.05489334461362346
#>     Attrib V11    0.05045773780958144
#>     Attrib V12    -0.10754560932329829
#>     Attrib V13    0.04442308659062802
#>     Attrib V14    0.08568833691376834
#>     Attrib V15    0.11032198103023144
#>     Attrib V16    0.06753289962212852
#>     Attrib V17    -0.039260190275230304
#>     Attrib V18    -0.06316181222252276
#>     Attrib V19    0.033560939890582016
#>     Attrib V2    -0.0022399223241703313
#>     Attrib V20    0.1780405705013867
#>     Attrib V21    0.24606653681789048
#>     Attrib V22    0.10696455518604309
#>     Attrib V23    0.0201997967619016
#>     Attrib V24    -0.042833266587948796
#>     Attrib V25    -0.2419095039621148
#>     Attrib V26    -0.43835400363340543
#>     Attrib V27    -0.2930212699803699
#>     Attrib V28    0.0979583052201853
#>     Attrib V29    -0.013227446220211495
#>     Attrib V3    0.01748150046679045
#>     Attrib V30    0.08755114020508604
#>     Attrib V31    -0.4518122310375457
#>     Attrib V32    -0.1675647459927621
#>     Attrib V33    0.09351699790073684
#>     Attrib V34    -0.18481334868121863
#>     Attrib V35    -0.0761741513234336
#>     Attrib V36    -0.26993722250506086
#>     Attrib V37    -0.2495615397259363
#>     Attrib V38    0.11810666478697415
#>     Attrib V39    0.21498865021822403
#>     Attrib V4    0.023404415308620617
#>     Attrib V40    -0.027291169826639837
#>     Attrib V41    -0.021787963086106515
#>     Attrib V42    0.015776774156135428
#>     Attrib V43    -0.013542815611474109
#>     Attrib V44    0.17048758151160542
#>     Attrib V45    0.19692668522533
#>     Attrib V46    -0.040874419400027465
#>     Attrib V47    -0.009164765835456966
#>     Attrib V48    0.14209936514104093
#>     Attrib V49    0.13983686035917794
#>     Attrib V5    0.008273756501525844
#>     Attrib V50    -0.3668638606480901
#>     Attrib V51    0.15696744689127723
#>     Attrib V52    0.11292706862354668
#>     Attrib V53    0.14643075714105586
#>     Attrib V54    0.21781418121707433
#>     Attrib V55    -0.08396038127961504
#>     Attrib V56    0.2557957768284219
#>     Attrib V57    0.11846397290286308
#>     Attrib V58    0.2779062428542379
#>     Attrib V59    0.4254716844252474
#>     Attrib V6    -0.12439346693444076
#>     Attrib V60    0.2643798683274134
#>     Attrib V7    0.011350136100105086
#>     Attrib V8    0.002911915271167496
#>     Attrib V9    0.20999263487407782
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.4263549568226382
#>     Attrib V1    -0.18750381433639965
#>     Attrib V10    -0.16405475741658856
#>     Attrib V11    -0.9306057739126797
#>     Attrib V12    -0.7531447266206955
#>     Attrib V13    -0.057710915886098835
#>     Attrib V14    0.32390769067883446
#>     Attrib V15    -0.10164553265819397
#>     Attrib V16    -0.7975150277737328
#>     Attrib V17    -0.5836479117716942
#>     Attrib V18    -0.25462508065938605
#>     Attrib V19    -0.22589122899009825
#>     Attrib V2    0.585230302329905
#>     Attrib V20    -0.24726925682699571
#>     Attrib V21    -0.4105695360985335
#>     Attrib V22    -0.6609916058028121
#>     Attrib V23    0.028640519720190563
#>     Attrib V24    -0.19191413660862275
#>     Attrib V25    -0.3505168174206285
#>     Attrib V26    -0.057798255792423016
#>     Attrib V27    0.45361104350462605
#>     Attrib V28    0.18983899242532326
#>     Attrib V29    0.36576079909335485
#>     Attrib V3    0.7456307403359614
#>     Attrib V30    -0.8967882209238869
#>     Attrib V31    0.6948657022034762
#>     Attrib V32    0.02094304158810341
#>     Attrib V33    -0.7608295322797327
#>     Attrib V34    -0.03715485890292027
#>     Attrib V35    0.47989619338739903
#>     Attrib V36    1.0452615893455945
#>     Attrib V37    0.8339576350122637
#>     Attrib V38    0.15130644548082908
#>     Attrib V39    -0.2590438256840197
#>     Attrib V4    0.4530770826230216
#>     Attrib V40    -0.24293287878993344
#>     Attrib V41    -0.1829793415974057
#>     Attrib V42    0.08997452163991161
#>     Attrib V43    0.5150235180073609
#>     Attrib V44    0.06000532964057196
#>     Attrib V45    -0.192668230033783
#>     Attrib V46    -0.3885163929411612
#>     Attrib V47    -0.6304948681170128
#>     Attrib V48    -1.1403573747461895
#>     Attrib V49    -0.9262804789645642
#>     Attrib V5    0.38117437818296007
#>     Attrib V50    1.3952273197631875
#>     Attrib V51    -0.3545409390417479
#>     Attrib V52    -0.19391149132584917
#>     Attrib V53    -0.11443242507855922
#>     Attrib V54    -0.29118254641970054
#>     Attrib V55    1.011735873276187
#>     Attrib V56    -0.2778681517466419
#>     Attrib V57    -0.07778679319605548
#>     Attrib V58    -0.2338507754884551
#>     Attrib V59    -0.6553868702925618
#>     Attrib V6    0.47638135266848747
#>     Attrib V60    -0.32022585724074726
#>     Attrib V7    0.07834997031545786
#>     Attrib V8    -0.07326194341132929
#>     Attrib V9    -0.7447588022906788
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.1763531786544304
#>     Attrib V1    0.5009262705243764
#>     Attrib V10    -0.24454240293546706
#>     Attrib V11    0.014445389864127647
#>     Attrib V12    -0.22715623332454013
#>     Attrib V13    -0.018482745932571185
#>     Attrib V14    -0.10003079757526338
#>     Attrib V15    0.020935038836687913
#>     Attrib V16    0.20513139850156797
#>     Attrib V17    -0.04692688879641958
#>     Attrib V18    -0.043368314171948065
#>     Attrib V19    0.12175846196806013
#>     Attrib V2    -0.13007894020749097
#>     Attrib V20    0.3223943658013254
#>     Attrib V21    0.40588484556164117
#>     Attrib V22    0.404622136794867
#>     Attrib V23    0.28461532852088617
#>     Attrib V24    0.2579004689340765
#>     Attrib V25    -0.18465373735337814
#>     Attrib V26    -0.833002959877667
#>     Attrib V27    -0.5933450951611653
#>     Attrib V28    -0.07732853135127793
#>     Attrib V29    -0.4381937183114343
#>     Attrib V3    -0.13945935289756886
#>     Attrib V30    0.08789836265915066
#>     Attrib V31    -0.933464075041016
#>     Attrib V32    -0.13195232345841273
#>     Attrib V33    0.4588922568153711
#>     Attrib V34    -0.284471458778016
#>     Attrib V35    -0.19647102465190439
#>     Attrib V36    -0.6504044018204579
#>     Attrib V37    -0.7282554400380934
#>     Attrib V38    0.12287264974606156
#>     Attrib V39    0.2825804993887851
#>     Attrib V4    -0.060155213655745575
#>     Attrib V40    -0.03688374574444707
#>     Attrib V41    0.17169952546139547
#>     Attrib V42    0.23223269589475828
#>     Attrib V43    0.046215016376685646
#>     Attrib V44    0.14705333584673413
#>     Attrib V45    0.12362867127172684
#>     Attrib V46    -0.05435872355137509
#>     Attrib V47    0.008939438392201318
#>     Attrib V48    0.24772184469690195
#>     Attrib V49    0.34924314283046676
#>     Attrib V5    -0.14111590853219594
#>     Attrib V50    -0.8263638387019668
#>     Attrib V51    0.20789519419700517
#>     Attrib V52    0.12138246053701304
#>     Attrib V53    0.15566017829030226
#>     Attrib V54    0.4751925139623179
#>     Attrib V55    -0.4042507998348846
#>     Attrib V56    0.5202974411316953
#>     Attrib V57    0.1503223701541953
#>     Attrib V58    0.606674015567646
#>     Attrib V59    0.8372143335745184
#>     Attrib V6    -0.18419687703173615
#>     Attrib V60    0.5106765360949267
#>     Attrib V7    0.06340534208017508
#>     Attrib V8    0.08707953608398955
#>     Attrib V9    0.3870410686046585
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.19873365465741907
#>     Attrib V1    0.3792426373808593
#>     Attrib V10    0.4558911208135832
#>     Attrib V11    0.7930659218836527
#>     Attrib V12    0.44015665158945916
#>     Attrib V13    -0.038609986950091886
#>     Attrib V14    -0.1537394012054502
#>     Attrib V15    -0.35074439490158404
#>     Attrib V16    -0.2445213666395507
#>     Attrib V17    -0.5255893730343844
#>     Attrib V18    -0.24985853331697291
#>     Attrib V19    -0.14470641469048964
#>     Attrib V2    -0.05808958335938856
#>     Attrib V20    -0.19700702851998553
#>     Attrib V21    -0.032218503343565276
#>     Attrib V22    0.008171399351426741
#>     Attrib V23    -0.012102395633085614
#>     Attrib V24    0.06798975260706981
#>     Attrib V25    0.20203317927749828
#>     Attrib V26    0.28081747940824575
#>     Attrib V27    0.41893504959808825
#>     Attrib V28    0.9551701149559655
#>     Attrib V29    0.7489171509380926
#>     Attrib V3    -0.21440846227955487
#>     Attrib V30    0.5118770695851537
#>     Attrib V31    -0.6305058565898677
#>     Attrib V32    -0.33331295604224537
#>     Attrib V33    -0.0721139899008369
#>     Attrib V34    -0.14042308722761945
#>     Attrib V35    0.1444740137183695
#>     Attrib V36    -0.20441511462662884
#>     Attrib V37    -0.08763696799376479
#>     Attrib V38    0.02160876573721894
#>     Attrib V39    0.23657956845526942
#>     Attrib V4    0.1278812084252917
#>     Attrib V40    0.06086527847840941
#>     Attrib V41    0.19969854809971177
#>     Attrib V42    -0.30934499958153605
#>     Attrib V43    -0.2702994443628237
#>     Attrib V44    0.3096059527420108
#>     Attrib V45    0.4210307921717221
#>     Attrib V46    0.36504218575930925
#>     Attrib V47    0.42615083930979875
#>     Attrib V48    0.5184162378923408
#>     Attrib V49    0.3915440383102267
#>     Attrib V5    0.009304780409086671
#>     Attrib V50    -0.7440183898431335
#>     Attrib V51    0.41908664493773534
#>     Attrib V52    0.6580215047380866
#>     Attrib V53    0.17138337203116707
#>     Attrib V54    0.01883512071274374
#>     Attrib V55    -0.4244972001535307
#>     Attrib V56    -0.3360405811485711
#>     Attrib V57    -0.12254526852652578
#>     Attrib V58    0.174976605663501
#>     Attrib V59    0.3366233826655234
#>     Attrib V6    0.007154162308643086
#>     Attrib V60    0.4313279478485377
#>     Attrib V7    -0.013205184077191543
#>     Attrib V8    -0.017427739985701633
#>     Attrib V9    0.47150031087589384
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.12037434228372684
#>     Attrib V1    0.26660569234150455
#>     Attrib V10    0.03075513721730354
#>     Attrib V11    0.20686973034045603
#>     Attrib V12    -0.009507965522996877
#>     Attrib V13    -0.0490445688405244
#>     Attrib V14    -0.15243839817552823
#>     Attrib V15    -0.1552206705723018
#>     Attrib V16    -0.06189793136237131
#>     Attrib V17    -0.21579201425044023
#>     Attrib V18    -0.18079061304261593
#>     Attrib V19    0.011633655549051132
#>     Attrib V2    -0.08178217048700555
#>     Attrib V20    0.02244698746719584
#>     Attrib V21    0.10973400977199949
#>     Attrib V22    0.13620532501415614
#>     Attrib V23    0.10661708053818332
#>     Attrib V24    0.19079343322510695
#>     Attrib V25    0.07091354614485787
#>     Attrib V26    -0.08650138715984536
#>     Attrib V27    -0.014407404268965588
#>     Attrib V28    0.28843159834948956
#>     Attrib V29    0.0689860248177364
#>     Attrib V3    -0.13584016316539407
#>     Attrib V30    0.22637194835096558
#>     Attrib V31    -0.5637890761718014
#>     Attrib V32    -0.20604090358970428
#>     Attrib V33    0.09570934667876742
#>     Attrib V34    -0.1335310469308822
#>     Attrib V35    0.03509487165763518
#>     Attrib V36    -0.15170533150490545
#>     Attrib V37    -0.21913874335205558
#>     Attrib V38    0.18258610513640422
#>     Attrib V39    0.20763639741863688
#>     Attrib V4    0.046523331730953535
#>     Attrib V40    -0.02614884109884317
#>     Attrib V41    0.0489778311005538
#>     Attrib V42    -0.11775831352801865
#>     Attrib V43    -0.02201208355082427
#>     Attrib V44    0.3186840819334193
#>     Attrib V45    0.2801089638520103
#>     Attrib V46    0.13300446272266223
#>     Attrib V47    0.15830040060579878
#>     Attrib V48    0.28859804260344524
#>     Attrib V49    0.2412320590390923
#>     Attrib V5    -0.04569276965874141
#>     Attrib V50    -0.602372959141058
#>     Attrib V51    0.14960351150179943
#>     Attrib V52    0.20269929293689146
#>     Attrib V53    0.1417082670456505
#>     Attrib V54    0.17764442971590907
#>     Attrib V55    -0.3177601562579226
#>     Attrib V56    0.030784653238792287
#>     Attrib V57    0.052860654432243366
#>     Attrib V58    0.18108758483489673
#>     Attrib V59    0.41240659873115204
#>     Attrib V6    -0.13556523275113208
#>     Attrib V60    0.3415285439675965
#>     Attrib V7    -0.03610292082809271
#>     Attrib V8    -0.0773253740555611
#>     Attrib V9    0.21410305212199848
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.09659149928753259
#>     Attrib V1    0.2868157038202449
#>     Attrib V10    0.8417315138287199
#>     Attrib V11    1.287563853905486
#>     Attrib V12    1.3528461466458523
#>     Attrib V13    0.398459591932177
#>     Attrib V14    -0.15588174854354198
#>     Attrib V15    -0.5545565629048707
#>     Attrib V16    -0.4242794118031997
#>     Attrib V17    -0.611236067075612
#>     Attrib V18    -0.14211316272795332
#>     Attrib V19    -0.2199703826324654
#>     Attrib V2    0.03932149596320182
#>     Attrib V20    -0.5794418343595287
#>     Attrib V21    -0.3003954303649326
#>     Attrib V22    -0.06687370332115
#>     Attrib V23    0.028736769696317683
#>     Attrib V24    0.20729567109470567
#>     Attrib V25    0.561279987128132
#>     Attrib V26    0.6596289125512634
#>     Attrib V27    0.8636936366357453
#>     Attrib V28    1.4750640125643746
#>     Attrib V29    1.0852827206058877
#>     Attrib V3    -0.1627832359050586
#>     Attrib V30    0.5283368473258109
#>     Attrib V31    -0.702232192321404
#>     Attrib V32    -0.23686969466936772
#>     Attrib V33    -0.12669844686228954
#>     Attrib V34    -0.03506387160522861
#>     Attrib V35    0.19760239996618525
#>     Attrib V36    -0.23766369177049826
#>     Attrib V37    -0.05800736824889304
#>     Attrib V38    -0.1370486948092625
#>     Attrib V39    0.3053493985326945
#>     Attrib V4    0.3709138671754481
#>     Attrib V40    0.10953510043012879
#>     Attrib V41    0.362911052519301
#>     Attrib V42    -0.5292126322055516
#>     Attrib V43    -0.2478104969733674
#>     Attrib V44    0.41987853307551193
#>     Attrib V45    0.4333425998588211
#>     Attrib V46    0.4536138904509608
#>     Attrib V47    0.5189689605048741
#>     Attrib V48    0.5783493018803721
#>     Attrib V49    0.5207211513576695
#>     Attrib V5    0.16074986475701739
#>     Attrib V50    -1.0340722493421228
#>     Attrib V51    0.6667773458896701
#>     Attrib V52    1.0739698972479435
#>     Attrib V53    0.42123608471318047
#>     Attrib V54    -0.24669796876579794
#>     Attrib V55    -0.5256346161953704
#>     Attrib V56    -0.5439016559102554
#>     Attrib V57    -0.33892700192737846
#>     Attrib V58    0.14636243867888046
#>     Attrib V59    0.39201359747970044
#>     Attrib V6    0.25721942830623773
#>     Attrib V60    0.5160673640417106
#>     Attrib V7    -0.12604293255590662
#>     Attrib V8    -0.18398324271251226
#>     Attrib V9    0.47521516702932043
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.18471724639393203
#>     Attrib V1    -0.21209009159951012
#>     Attrib V10    0.004264081010731957
#>     Attrib V11    -0.3756313869054742
#>     Attrib V12    -0.18964390155465435
#>     Attrib V13    -0.06882759835890168
#>     Attrib V14    0.25815344419747926
#>     Attrib V15    0.15966543837254316
#>     Attrib V16    0.09568878462126044
#>     Attrib V17    0.14287386022854032
#>     Attrib V18    0.19503804709382974
#>     Attrib V19    -0.020527389145208016
#>     Attrib V2    0.22512559048737887
#>     Attrib V20    0.05004084043581651
#>     Attrib V21    0.022653862318056543
#>     Attrib V22    -0.26456025086627655
#>     Attrib V23    -0.22133759901741343
#>     Attrib V24    -0.3605723583924786
#>     Attrib V25    -0.0851588798691411
#>     Attrib V26    0.4187672935870881
#>     Attrib V27    0.35749113022026485
#>     Attrib V28    -0.08671883692527459
#>     Attrib V29    0.23390121773487121
#>     Attrib V3    0.22965826353526167
#>     Attrib V30    -0.23068694971387158
#>     Attrib V31    0.7850750249426464
#>     Attrib V32    0.054458203009265904
#>     Attrib V33    -0.4458209259738587
#>     Attrib V34    0.08811802616663247
#>     Attrib V35    0.16041800047150645
#>     Attrib V36    0.6831379426638443
#>     Attrib V37    0.7756796058755622
#>     Attrib V38    0.055434158797937796
#>     Attrib V39    -0.23937779556000277
#>     Attrib V4    0.13387499515424633
#>     Attrib V40    -0.012123962320200138
#>     Attrib V41    -0.1945644803323482
#>     Attrib V42    -0.11812130191793431
#>     Attrib V43    0.06293391579160626
#>     Attrib V44    -0.05515095257916038
#>     Attrib V45    -0.07369838421957524
#>     Attrib V46    -0.1647175906000605
#>     Attrib V47    -0.26460039114454176
#>     Attrib V48    -0.47220571641009923
#>     Attrib V49    -0.4755101101826788
#>     Attrib V5    0.15437371054026328
#>     Attrib V50    1.0442337285203904
#>     Attrib V51    -0.3378787470333171
#>     Attrib V52    -0.27120474768302744
#>     Attrib V53    0.06619771217458063
#>     Attrib V54    -0.11441699687323532
#>     Attrib V55    0.5696642050271974
#>     Attrib V56    -0.20254824572481311
#>     Attrib V57    0.09777398560899339
#>     Attrib V58    -0.40359187727526075
#>     Attrib V59    -0.4953856528119185
#>     Attrib V6    0.1572659267739193
#>     Attrib V60    -0.4138629011288836
#>     Attrib V7    0.020398890098962737
#>     Attrib V8    0.05594744529286834
#>     Attrib V9    -0.39200345244474416
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.1456361227458051
#>     Attrib V1    0.2731185765608492
#>     Attrib V10    -0.014868143619063164
#>     Attrib V11    0.25781853794852466
#>     Attrib V12    0.08958432248460788
#>     Attrib V13    -0.06138881107945136
#>     Attrib V14    -0.21705596991324114
#>     Attrib V15    -0.2378070403259878
#>     Attrib V16    -0.1511704853262535
#>     Attrib V17    -0.24494771771900017
#>     Attrib V18    -0.20422531498910146
#>     Attrib V19    -0.05952364892920301
#>     Attrib V2    -0.21416132330209006
#>     Attrib V20    0.07105150745741604
#>     Attrib V21    0.10631736042799707
#>     Attrib V22    0.22978688899099825
#>     Attrib V23    0.2129392798766212
#>     Attrib V24    0.2403145302269564
#>     Attrib V25    0.07602095217416677
#>     Attrib V26    -0.3131788744771241
#>     Attrib V27    -0.13117671705241013
#>     Attrib V28    0.31272795547106574
#>     Attrib V29    -0.09718333373587346
#>     Attrib V3    -0.2941849128073374
#>     Attrib V30    0.21816480643916492
#>     Attrib V31    -0.8133570013255211
#>     Attrib V32    -0.22470353717736144
#>     Attrib V33    0.22172510790906796
#>     Attrib V34    -0.12393363919985668
#>     Attrib V35    0.028993833250051667
#>     Attrib V36    -0.3519745373438573
#>     Attrib V37    -0.4429570679370815
#>     Attrib V38    0.17445669814808148
#>     Attrib V39    0.2325029679748965
#>     Attrib V4    -0.11157319838091148
#>     Attrib V40    -0.0541835375353023
#>     Attrib V41    0.031302497041074316
#>     Attrib V42    -0.02794354052753265
#>     Attrib V43    -0.010563433741023589
#>     Attrib V44    0.34113280591848855
#>     Attrib V45    0.3350732525391875
#>     Attrib V46    0.09359407561428276
#>     Attrib V47    0.17794329143256252
#>     Attrib V48    0.32639419672622894
#>     Attrib V49    0.2769807642829074
#>     Attrib V5    -0.10275348485108497
#>     Attrib V50    -0.8312825417373276
#>     Attrib V51    0.2606243247571786
#>     Attrib V52    0.203154245493993
#>     Attrib V53    0.019866795995268385
#>     Attrib V54    0.25677770498469504
#>     Attrib V55    -0.4537013681280879
#>     Attrib V56    0.12776078876838093
#>     Attrib V57    -0.05337793277736343
#>     Attrib V58    0.3145024029729075
#>     Attrib V59    0.4262830259477798
#>     Attrib V6    -0.16040680743794863
#>     Attrib V60    0.3512697835993405
#>     Attrib V7    -0.12039271906769902
#>     Attrib V8    -0.05346951755424063
#>     Attrib V9    0.29818795443919904
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.186697208938627
#>     Attrib V1    0.5164990839738388
#>     Attrib V10    -0.2995606746884552
#>     Attrib V11    0.014038215291624714
#>     Attrib V12    -0.3556058464268418
#>     Attrib V13    0.002600718777748697
#>     Attrib V14    0.04193243241125986
#>     Attrib V15    0.14963021663567624
#>     Attrib V16    0.2689131199929915
#>     Attrib V17    0.019046417982518087
#>     Attrib V18    -0.04800475834815702
#>     Attrib V19    0.15419470739767308
#>     Attrib V2    -0.007228221563839542
#>     Attrib V20    0.3496484136378481
#>     Attrib V21    0.4345817229266562
#>     Attrib V22    0.44123930747948037
#>     Attrib V23    0.19551917492407778
#>     Attrib V24    0.002112569657712087
#>     Attrib V25    -0.4504280095933443
#>     Attrib V26    -0.9206005120416538
#>     Attrib V27    -0.5150239153039031
#>     Attrib V28    0.07552545235580481
#>     Attrib V29    -0.09894015922935274
#>     Attrib V3    -0.12897331255126307
#>     Attrib V30    0.1543562067171683
#>     Attrib V31    -0.9439410920595198
#>     Attrib V32    -0.3124912095696602
#>     Attrib V33    0.26561736191562435
#>     Attrib V34    -0.37605841493927616
#>     Attrib V35    -0.23205252254826322
#>     Attrib V36    -0.475966360397803
#>     Attrib V37    -0.46450115325822333
#>     Attrib V38    0.2958178842016322
#>     Attrib V39    0.29966988939828365
#>     Attrib V4    -0.011422523060103966
#>     Attrib V40    0.01083761608881302
#>     Attrib V41    0.09522285628195751
#>     Attrib V42    0.13134467178395587
#>     Attrib V43    0.09782061866626794
#>     Attrib V44    0.21359973664672544
#>     Attrib V45    0.2184892415110006
#>     Attrib V46    0.012307620588950439
#>     Attrib V47    -0.022419336227085963
#>     Attrib V48    0.1805651697660309
#>     Attrib V49    0.1922494782720661
#>     Attrib V5    -0.10047518224320792
#>     Attrib V50    -0.781115687066317
#>     Attrib V51    0.14238172456875986
#>     Attrib V52    0.14780114153114637
#>     Attrib V53    0.17493329509984648
#>     Attrib V54    0.4943316470308857
#>     Attrib V55    -0.33573451225188145
#>     Attrib V56    0.4549576855585938
#>     Attrib V57    0.1998697289644872
#>     Attrib V58    0.5471092279734284
#>     Attrib V59    0.7768876463629315
#>     Attrib V6    -0.21800767384654193
#>     Attrib V60    0.4539837140446389
#>     Attrib V7    0.07588609634655666
#>     Attrib V8    0.06464146641053135
#>     Attrib V9    0.24802992562578732
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.02136334277275749
#>     Attrib V1    0.3637025695919729
#>     Attrib V10    -0.20077265896199073
#>     Attrib V11    0.049231058056038626
#>     Attrib V12    -0.13776731772372502
#>     Attrib V13    0.08634841687605246
#>     Attrib V14    -0.04146424781136126
#>     Attrib V15    -0.02331933041902689
#>     Attrib V16    0.050160479977071605
#>     Attrib V17    -0.029958766572184267
#>     Attrib V18    -0.039486062046670684
#>     Attrib V19    0.10290310184946083
#>     Attrib V2    -0.1041774101084799
#>     Attrib V20    0.24395175492729598
#>     Attrib V21    0.28002668695509403
#>     Attrib V22    0.2962753530007271
#>     Attrib V23    0.27537947378384764
#>     Attrib V24    0.22305150234407586
#>     Attrib V25    -0.0650222801458243
#>     Attrib V26    -0.5873158519382435
#>     Attrib V27    -0.3593544833837643
#>     Attrib V28    0.009832919862121982
#>     Attrib V29    -0.2193685639288249
#>     Attrib V3    -0.06345980706192386
#>     Attrib V30    0.09677078384711832
#>     Attrib V31    -0.7577639277001886
#>     Attrib V32    -0.14083100021428635
#>     Attrib V33    0.2772648146024952
#>     Attrib V34    -0.17403244802556883
#>     Attrib V35    -0.14510543324718939
#>     Attrib V36    -0.4422355341753829
#>     Attrib V37    -0.4854965302831406
#>     Attrib V38    0.12673142640980933
#>     Attrib V39    0.29741698412411366
#>     Attrib V4    -0.02090429983411484
#>     Attrib V40    0.00885949596126312
#>     Attrib V41    0.09113511805433085
#>     Attrib V42    0.10891055999878806
#>     Attrib V43    0.005221398448552434
#>     Attrib V44    0.16799305274370377
#>     Attrib V45    0.09069626974914514
#>     Attrib V46    0.005763594615165706
#>     Attrib V47    0.07988349833184115
#>     Attrib V48    0.20193988735743193
#>     Attrib V49    0.2961932253710859
#>     Attrib V5    -0.05643937653772137
#>     Attrib V50    -0.6945821866842016
#>     Attrib V51    0.16262605968892832
#>     Attrib V52    0.13415957612284088
#>     Attrib V53    0.13413963707694612
#>     Attrib V54    0.3451607846980237
#>     Attrib V55    -0.3105908254777846
#>     Attrib V56    0.3383785899435504
#>     Attrib V57    0.09869385853069024
#>     Attrib V58    0.40842172513461233
#>     Attrib V59    0.6669542515994786
#>     Attrib V6    -0.1387821451879796
#>     Attrib V60    0.44432071946100304
#>     Attrib V7    0.03803308182804709
#>     Attrib V8    -0.05702047147354362
#>     Attrib V9    0.21886097212614405
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.13675562187779483
#>     Attrib V1    0.2994667271130397
#>     Attrib V10    0.4094904710950709
#>     Attrib V11    0.6640629939829877
#>     Attrib V12    0.37614845825825616
#>     Attrib V13    -0.055848618868974576
#>     Attrib V14    -0.3352746100705773
#>     Attrib V15    -0.3762247117302515
#>     Attrib V16    -0.32158001245691126
#>     Attrib V17    -0.4595861166746517
#>     Attrib V18    -0.28531260874832387
#>     Attrib V19    -0.1831858785881709
#>     Attrib V2    -0.18684903217668541
#>     Attrib V20    -0.26622910032406294
#>     Attrib V21    -0.13901430937381554
#>     Attrib V22    0.04247960606669937
#>     Attrib V23    0.0721925336458213
#>     Attrib V24    0.1687991924591587
#>     Attrib V25    0.2634935727570553
#>     Attrib V26    0.10749427261381217
#>     Attrib V27    0.06397230407249781
#>     Attrib V28    0.41829934838957894
#>     Attrib V29    -0.07402506910057005
#>     Attrib V3    -0.3736592422864635
#>     Attrib V30    0.25691384739488826
#>     Attrib V31    -0.6962135331606817
#>     Attrib V32    -0.10083749801461965
#>     Attrib V33    0.31049318401033416
#>     Attrib V34    0.026780622063403883
#>     Attrib V35    0.22459775511808083
#>     Attrib V36    -0.3563316892173372
#>     Attrib V37    -0.4445559993541147
#>     Attrib V38    -0.11779738354722936
#>     Attrib V39    0.17400574757487652
#>     Attrib V4    -0.033634680216657685
#>     Attrib V40    -0.027156585892156804
#>     Attrib V41    0.055871010129726506
#>     Attrib V42    -0.33698429771643845
#>     Attrib V43    -0.2568975284897027
#>     Attrib V44    0.2765091220468735
#>     Attrib V45    0.2726244481144186
#>     Attrib V46    0.20289533945990143
#>     Attrib V47    0.2910118820937241
#>     Attrib V48    0.575911688794098
#>     Attrib V49    0.47310566115825214
#>     Attrib V5    -0.17737717274930118
#>     Attrib V50    -0.8896101381111731
#>     Attrib V51    0.37337953235180377
#>     Attrib V52    0.4338788039374109
#>     Attrib V53    -0.038205741842039814
#>     Attrib V54    0.09817626025269588
#>     Attrib V55    -0.4461097981061164
#>     Attrib V56    -0.06758153010869944
#>     Attrib V57    -0.2023634503534291
#>     Attrib V58    0.32992507984056235
#>     Attrib V59    0.3543479319776759
#>     Attrib V6    -0.16428740714823145
#>     Attrib V60    0.4398275264820917
#>     Attrib V7    -0.0777885822035235
#>     Attrib V8    -0.05064867703522474
#>     Attrib V9    0.526822564904092
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.13140514633371514
#>     Attrib V1    -0.40888805684832713
#>     Attrib V10    0.22497256427693146
#>     Attrib V11    -0.3368330385152267
#>     Attrib V12    0.07663956802523678
#>     Attrib V13    -0.06284893362029997
#>     Attrib V14    0.38693486399702953
#>     Attrib V15    0.30513285568344356
#>     Attrib V16    -0.06616328233694362
#>     Attrib V17    -0.02343330074323518
#>     Attrib V18    0.09349954531024013
#>     Attrib V19    -0.332117518024219
#>     Attrib V2    0.5007579424923821
#>     Attrib V20    -0.3787773183663992
#>     Attrib V21    -0.4401250639012444
#>     Attrib V22    -0.7885164384402158
#>     Attrib V23    -0.7957775304373581
#>     Attrib V24    -0.8665243938284573
#>     Attrib V25    -0.26770759500140456
#>     Attrib V26    0.8931829806203937
#>     Attrib V27    0.8675092403242649
#>     Attrib V28    0.430232457860336
#>     Attrib V29    1.3971122134153515
#>     Attrib V3    0.3616499397444701
#>     Attrib V30    -0.09313114503154125
#>     Attrib V31    1.3567515569048278
#>     Attrib V32    0.1128461911030975
#>     Attrib V33    -1.0538805481654505
#>     Attrib V34    0.1764642437288521
#>     Attrib V35    0.38193471174941857
#>     Attrib V36    1.365546803462204
#>     Attrib V37    1.8354516999048958
#>     Attrib V38    0.04064815458031296
#>     Attrib V39    -0.41127533821492407
#>     Attrib V4    0.3289048650247909
#>     Attrib V40    -0.16282192394595812
#>     Attrib V41    -0.36908816803407674
#>     Attrib V42    -0.4360221826002895
#>     Attrib V43    -0.04755552541281269
#>     Attrib V44    -0.13884965918580497
#>     Attrib V45    0.11195123753850507
#>     Attrib V46    0.0625380348318726
#>     Attrib V47    -0.2965336790357877
#>     Attrib V48    -0.8026727583717077
#>     Attrib V49    -1.0137908716279618
#>     Attrib V5    0.22967203625985766
#>     Attrib V50    1.400771654913215
#>     Attrib V51    -0.5435900316168771
#>     Attrib V52    -0.30559447692507313
#>     Attrib V53    -0.27493354651287377
#>     Attrib V54    -0.8501262447520063
#>     Attrib V55    0.8972560985250222
#>     Attrib V56    -1.050287989694826
#>     Attrib V57    -0.18811685149820445
#>     Attrib V58    -1.02157597528776
#>     Attrib V59    -1.2369997084742843
#>     Attrib V6    0.21360399080147885
#>     Attrib V60    -0.8404733374976064
#>     Attrib V7    -0.1832283140013275
#>     Attrib V8    -0.1323062650771252
#>     Attrib V9    -0.8195718168588714
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.15268058844807283
#>     Attrib V1    0.1747732069854557
#>     Attrib V10    0.053249576162514446
#>     Attrib V11    0.06043465634624928
#>     Attrib V12    0.010191382655026721
#>     Attrib V13    0.06596773081640295
#>     Attrib V14    0.021552326055205163
#>     Attrib V15    0.002619674377253851
#>     Attrib V16    0.051984965790159515
#>     Attrib V17    0.010362241561104013
#>     Attrib V18    -0.0016390793037232058
#>     Attrib V19    0.009014567247993233
#>     Attrib V2    0.03287273002556183
#>     Attrib V20    -0.0059825493199306525
#>     Attrib V21    -0.019974104077761182
#>     Attrib V22    -0.048930919448944336
#>     Attrib V23    -0.07138919509602698
#>     Attrib V24    -9.524124609901038E-4
#>     Attrib V25    -0.03943618950307481
#>     Attrib V26    -0.14315562106731478
#>     Attrib V27    -0.08993853536521966
#>     Attrib V28    0.023639922959789204
#>     Attrib V29    -0.05463666305957807
#>     Attrib V3    0.09932197672158848
#>     Attrib V30    -0.02463385136198214
#>     Attrib V31    -0.1492290912593829
#>     Attrib V32    -0.012455748412945476
#>     Attrib V33    0.018781574633984974
#>     Attrib V34    0.002966305762458672
#>     Attrib V35    0.006360445849146197
#>     Attrib V36    -0.06581616164220416
#>     Attrib V37    -0.03244666609043509
#>     Attrib V38    0.09112701526249999
#>     Attrib V39    0.11672950733781724
#>     Attrib V4    0.1146873000986299
#>     Attrib V40    -0.015529586947141946
#>     Attrib V41    0.021338376976468166
#>     Attrib V42    0.0535146727186551
#>     Attrib V43    0.04154696395631176
#>     Attrib V44    0.048314027675868766
#>     Attrib V45    0.10543102844202669
#>     Attrib V46    0.07742660014544799
#>     Attrib V47    0.07387085801998244
#>     Attrib V48    0.08130653428480439
#>     Attrib V49    0.05091719173664732
#>     Attrib V5    0.07801543670107872
#>     Attrib V50    -0.0011357321764762542
#>     Attrib V51    0.16671444618894266
#>     Attrib V52    0.1449739934175621
#>     Attrib V53    0.1588641454795912
#>     Attrib V54    0.10729864584472934
#>     Attrib V55    0.07313194897544735
#>     Attrib V56    0.1534855362750138
#>     Attrib V57    0.1290579128584381
#>     Attrib V58    0.19000920578837552
#>     Attrib V59    0.1588122760009123
#>     Attrib V6    0.0312679217448679
#>     Attrib V60    0.18787490367048573
#>     Attrib V7    0.02956838256548945
#>     Attrib V8    0.021837516492995947
#>     Attrib V9    0.14719920544992565
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.017278639990309336
#>     Attrib V1    0.3887340502577751
#>     Attrib V10    0.0066436326621425274
#>     Attrib V11    0.09417123611549412
#>     Attrib V12    -0.12527205582941633
#>     Attrib V13    -0.026488508632826358
#>     Attrib V14    0.03464125034817228
#>     Attrib V15    0.14461663905694913
#>     Attrib V16    0.09709211165279369
#>     Attrib V17    -0.022661548435311433
#>     Attrib V18    -0.04822342219660051
#>     Attrib V19    0.05516667021013562
#>     Attrib V2    0.10121695699903535
#>     Attrib V20    0.14791393661910135
#>     Attrib V21    0.1660953099408674
#>     Attrib V22    0.13758015928017947
#>     Attrib V23    -0.05220142858211815
#>     Attrib V24    -0.038375283479582925
#>     Attrib V25    -0.24779880840645122
#>     Attrib V26    -0.42883325758121504
#>     Attrib V27    -0.2552388796498869
#>     Attrib V28    -0.00850928053597497
#>     Attrib V29    -0.12374873120834409
#>     Attrib V3    -0.002734072115879581
#>     Attrib V30    0.08777024244342538
#>     Attrib V31    -0.3817786323977208
#>     Attrib V32    -0.18553576654496168
#>     Attrib V33    0.09904699121614038
#>     Attrib V34    -0.20122935835540673
#>     Attrib V35    -0.01483606803189416
#>     Attrib V36    -0.22227585655775486
#>     Attrib V37    -0.2112620404204357
#>     Attrib V38    0.22006281302487968
#>     Attrib V39    0.21571770664291534
#>     Attrib V4    0.062147783192666145
#>     Attrib V40    -0.09268414230723265
#>     Attrib V41    -0.019656654044301815
#>     Attrib V42    -0.04774401058275709
#>     Attrib V43    0.06585419911055898
#>     Attrib V44    0.18439859044269694
#>     Attrib V45    0.20318862863795104
#>     Attrib V46    -0.024193854536176465
#>     Attrib V47    -0.022946547810223133
#>     Attrib V48    0.16980332131863668
#>     Attrib V49    0.07572439504972638
#>     Attrib V5    -0.02136762615857554
#>     Attrib V50    -0.3137990001357758
#>     Attrib V51    0.13442616336970775
#>     Attrib V52    0.08525261924188023
#>     Attrib V53    0.09355463880086415
#>     Attrib V54    0.26350933274127497
#>     Attrib V55    0.00952841187132032
#>     Attrib V56    0.2561116005077773
#>     Attrib V57    0.16416921743136087
#>     Attrib V58    0.24225780498792793
#>     Attrib V59    0.3713457928297057
#>     Attrib V6    -0.09434400083679827
#>     Attrib V60    0.30836048778552105
#>     Attrib V7    -0.031256549899701364
#>     Attrib V8    0.06616742482514686
#>     Attrib V9    0.19135959287877627
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.12999042452162687
#>     Attrib V1    0.2743987220278368
#>     Attrib V10    0.037537820153926794
#>     Attrib V11    0.09059404930143984
#>     Attrib V12    -0.03941887324387888
#>     Attrib V13    0.019453855921616105
#>     Attrib V14    0.04845076384552807
#>     Attrib V15    0.01452758460094752
#>     Attrib V16    0.03194626209976403
#>     Attrib V17    -0.07857232487446088
#>     Attrib V18    -0.015587778669666479
#>     Attrib V19    -0.0452229448199458
#>     Attrib V2    0.07449471643515998
#>     Attrib V20    0.08720800104555905
#>     Attrib V21    0.10073319367249037
#>     Attrib V22    0.0012355895112561312
#>     Attrib V23    -0.030002148912069145
#>     Attrib V24    -0.04511028609470534
#>     Attrib V25    -0.09236769305985335
#>     Attrib V26    -0.18941843646828666
#>     Attrib V27    -0.11970843449412384
#>     Attrib V28    0.006257856338342101
#>     Attrib V29    -0.0810708503782479
#>     Attrib V3    0.10053188067712213
#>     Attrib V30    0.005736116039376075
#>     Attrib V31    -0.2682865313523868
#>     Attrib V32    -0.094105216265559
#>     Attrib V33    0.05019097889111052
#>     Attrib V34    -0.04455214979743085
#>     Attrib V35    -0.019275517587482655
#>     Attrib V36    -0.054594319989534866
#>     Attrib V37    -0.1308697090731788
#>     Attrib V38    0.11130068219600403
#>     Attrib V39    0.1828143237710301
#>     Attrib V4    0.061906765942371295
#>     Attrib V40    -0.04271205508809504
#>     Attrib V41    -0.056735748709901085
#>     Attrib V42    -0.018299815666469356
#>     Attrib V43    0.03577583140686906
#>     Attrib V44    0.15211297107257982
#>     Attrib V45    0.09395668778776778
#>     Attrib V46    0.03051154607571671
#>     Attrib V47    0.10025085879194241
#>     Attrib V48    0.12981867809993397
#>     Attrib V49    0.12949469807290254
#>     Attrib V5    0.03634428653157862
#>     Attrib V50    -0.20032671501956328
#>     Attrib V51    0.1873220551363915
#>     Attrib V52    0.11109203750196926
#>     Attrib V53    0.12805625315758787
#>     Attrib V54    0.15114450761016873
#>     Attrib V55    0.043433764318252126
#>     Attrib V56    0.19955869679526575
#>     Attrib V57    0.06828013604826363
#>     Attrib V58    0.20653517331631147
#>     Attrib V59    0.31658368119491703
#>     Attrib V6    -0.06457666065120946
#>     Attrib V60    0.27605984894074426
#>     Attrib V7    0.06459970270389816
#>     Attrib V8    0.08241006766578672
#>     Attrib V9    0.16614083231147359
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    -0.03328053644067207
#>     Attrib V1    -0.061074369888749404
#>     Attrib V10    0.5394429999361857
#>     Attrib V11    0.9121270692761916
#>     Attrib V12    0.9481240259251473
#>     Attrib V13    0.12957998532975484
#>     Attrib V14    -0.35470642170788597
#>     Attrib V15    -0.7606892965224785
#>     Attrib V16    -0.6108383488352702
#>     Attrib V17    -0.5292203799535343
#>     Attrib V18    -0.05558380696613429
#>     Attrib V19    0.11128272117421886
#>     Attrib V2    -0.21904638277282024
#>     Attrib V20    -0.48770209126160735
#>     Attrib V21    -0.40359872767281213
#>     Attrib V22    0.1642724137594353
#>     Attrib V23    0.445522202382909
#>     Attrib V24    0.717871399171808
#>     Attrib V25    0.9760803002012758
#>     Attrib V26    0.718762418969874
#>     Attrib V27    0.46255723693451006
#>     Attrib V28    0.6693563354839285
#>     Attrib V29    0.008096241439231473
#>     Attrib V3    -0.30157145185174283
#>     Attrib V30    0.19791925594429477
#>     Attrib V31    -0.5802223250372374
#>     Attrib V32    -0.11418239725634063
#>     Attrib V33    0.21517053942058964
#>     Attrib V34    0.17124151251374695
#>     Attrib V35    0.35956899754584876
#>     Attrib V36    -0.3109204204241449
#>     Attrib V37    -0.5933750146170488
#>     Attrib V38    -0.3934473657831253
#>     Attrib V39    0.06131503763761328
#>     Attrib V4    0.26181507987176045
#>     Attrib V40    0.1021188302993399
#>     Attrib V41    0.32425703449610593
#>     Attrib V42    -0.2841591157070529
#>     Attrib V43    -0.24168075321823507
#>     Attrib V44    0.22182414574012763
#>     Attrib V45    0.27168797311186926
#>     Attrib V46    0.36844480107805266
#>     Attrib V47    0.5533205985355046
#>     Attrib V48    0.786656181575378
#>     Attrib V49    0.7875154394543745
#>     Attrib V5    0.16458017393660596
#>     Attrib V50    -0.9045575225904032
#>     Attrib V51    0.7050292859141837
#>     Attrib V52    0.9642505837334061
#>     Attrib V53    0.3601459306273359
#>     Attrib V54    -0.0070133539973453165
#>     Attrib V55    -0.5512095921356235
#>     Attrib V56    -0.3534380135380833
#>     Attrib V57    -0.31356745537765957
#>     Attrib V58    0.30524137928794776
#>     Attrib V59    0.3695564407479338
#>     Attrib V6    0.09465506011828038
#>     Attrib V60    0.5286436143437263
#>     Attrib V7    -0.08932335793702
#>     Attrib V8    -0.23897023864716166
#>     Attrib V9    0.46988802150596437
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.1359772771697366
#>     Attrib V1    0.1387080410068002
#>     Attrib V10    0.24744501613014108
#>     Attrib V11    0.5805067346453966
#>     Attrib V12    0.503176874741135
#>     Attrib V13    0.031179490601617527
#>     Attrib V14    -0.16019033294381174
#>     Attrib V15    -0.46489969805223846
#>     Attrib V16    -0.3657064755955408
#>     Attrib V17    -0.4129568623075846
#>     Attrib V18    -0.03745365019359671
#>     Attrib V19    0.1318583144871392
#>     Attrib V2    -0.25151891594203973
#>     Attrib V20    -0.20028220727162488
#>     Attrib V21    -0.06419987367455461
#>     Attrib V22    0.27016145803966973
#>     Attrib V23    0.3990978658629645
#>     Attrib V24    0.4835910209453569
#>     Attrib V25    0.46852497148304456
#>     Attrib V26    0.2908133083747968
#>     Attrib V27    0.4461549121691212
#>     Attrib V28    0.8325594992332668
#>     Attrib V29    0.506465095510478
#>     Attrib V3    -0.3307451903146232
#>     Attrib V30    0.4692046056596562
#>     Attrib V31    -0.7375973717041824
#>     Attrib V32    -0.3970542653423296
#>     Attrib V33    -0.056665032014265884
#>     Attrib V34    -0.2558807421456533
#>     Attrib V35    0.007537591622155508
#>     Attrib V36    -0.3143742853819028
#>     Attrib V37    -0.3455436145780731
#>     Attrib V38    -0.06771362970063315
#>     Attrib V39    0.22715223196482737
#>     Attrib V4    0.14229083776183732
#>     Attrib V40    0.12297897749677021
#>     Attrib V41    0.40033165534724224
#>     Attrib V42    -0.10138547251494347
#>     Attrib V43    -0.03323439099740998
#>     Attrib V44    0.4562221037998305
#>     Attrib V45    0.27791464940808447
#>     Attrib V46    0.2743311071975587
#>     Attrib V47    0.43206855645752085
#>     Attrib V48    0.6093824010302002
#>     Attrib V49    0.5667429017496245
#>     Attrib V5    0.214166403036018
#>     Attrib V50    -0.9070254185711838
#>     Attrib V51    0.5619792293572272
#>     Attrib V52    0.7659364104595466
#>     Attrib V53    0.4046678437922936
#>     Attrib V54    0.12464946814295057
#>     Attrib V55    -0.613357556169651
#>     Attrib V56    -0.2213978997480678
#>     Attrib V57    -0.1984534598634325
#>     Attrib V58    0.28225569976231896
#>     Attrib V59    0.5703084158117582
#>     Attrib V6    0.11004877867367426
#>     Attrib V60    0.5034996043848704
#>     Attrib V7    -0.05824290506557442
#>     Attrib V8    -0.2144358658680366
#>     Attrib V9    0.3069088324857562
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.022934731164197097
#>     Attrib V1    -0.2807297552492262
#>     Attrib V10    0.1878094887569494
#>     Attrib V11    -0.2846994263280271
#>     Attrib V12    0.017416246537573295
#>     Attrib V13    -0.09830678680124287
#>     Attrib V14    0.2890012387909519
#>     Attrib V15    0.24324687578510562
#>     Attrib V16    -0.031061494019874163
#>     Attrib V17    0.01002494960042745
#>     Attrib V18    0.06707573000627137
#>     Attrib V19    -0.32214061737544986
#>     Attrib V2    0.36951088116855924
#>     Attrib V20    -0.2333413630327489
#>     Attrib V21    -0.21634114956566422
#>     Attrib V22    -0.7067334264314643
#>     Attrib V23    -0.7285189980296379
#>     Attrib V24    -0.7165451682467661
#>     Attrib V25    -0.18746461216428068
#>     Attrib V26    0.7545461338322629
#>     Attrib V27    0.729838594671635
#>     Attrib V28    0.28037350345851547
#>     Attrib V29    1.0402948541123758
#>     Attrib V3    0.21546615985896433
#>     Attrib V30    -0.05416004991556685
#>     Attrib V31    1.158718848144587
#>     Attrib V32    0.029972760190432258
#>     Attrib V33    -0.8741355493150093
#>     Attrib V34    0.13094661261041626
#>     Attrib V35    0.34250810975438134
#>     Attrib V36    1.1362788218305269
#>     Attrib V37    1.5167653740641451
#>     Attrib V38    0.09634943930606278
#>     Attrib V39    -0.30008722088435946
#>     Attrib V4    0.22067667836683647
#>     Attrib V40    -0.06071734047458737
#>     Attrib V41    -0.3071316571580446
#>     Attrib V42    -0.40303503363931253
#>     Attrib V43    -0.021847773761257287
#>     Attrib V44    -0.06758690680184139
#>     Attrib V45    0.06301104266608676
#>     Attrib V46    -0.006540406894648584
#>     Attrib V47    -0.2848021133067881
#>     Attrib V48    -0.6182503872355192
#>     Attrib V49    -0.8202225320880526
#>     Attrib V5    0.13770870378472372
#>     Attrib V50    1.2338555439370376
#>     Attrib V51    -0.5040125773486013
#>     Attrib V52    -0.289221566518357
#>     Attrib V53    -0.1812968640714134
#>     Attrib V54    -0.5839008079314152
#>     Attrib V55    0.7195556090879878
#>     Attrib V56    -0.824415876498929
#>     Attrib V57    -0.02206583928616799
#>     Attrib V58    -0.853000059871654
#>     Attrib V59    -0.9625778536739513
#>     Attrib V6    0.13132500930635446
#>     Attrib V60    -0.6515772954198968
#>     Attrib V7    -0.02056327512098642
#>     Attrib V8    -0.06707039363833274
#>     Attrib V9    -0.60584383180883
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.2036717501010469
#>     Attrib V1    0.7419611418704897
#>     Attrib V10    -0.34099074508904814
#>     Attrib V11    -0.10104201270644123
#>     Attrib V12    -0.4291686284148333
#>     Attrib V13    -0.003101758892052746
#>     Attrib V14    0.05349058536558938
#>     Attrib V15    0.25894423071632855
#>     Attrib V16    0.4648458835935485
#>     Attrib V17    0.10767265540988628
#>     Attrib V18    -0.06260527328297268
#>     Attrib V19    0.042827196916978234
#>     Attrib V2    0.0066931980092361995
#>     Attrib V20    0.4516622664879135
#>     Attrib V21    0.5613111462117243
#>     Attrib V22    0.44458700738968376
#>     Attrib V23    0.09086853199170536
#>     Attrib V24    -0.008515883366088146
#>     Attrib V25    -0.6211852250692076
#>     Attrib V26    -1.244528890727991
#>     Attrib V27    -0.7581888203020676
#>     Attrib V28    0.005868109067293252
#>     Attrib V29    -0.1545840383233369
#>     Attrib V3    -0.1113494589400071
#>     Attrib V30    0.13241715518815708
#>     Attrib V31    -1.0275626133767408
#>     Attrib V32    -0.2634289634856027
#>     Attrib V33    0.3297335707060771
#>     Attrib V34    -0.4828253828262416
#>     Attrib V35    -0.3485590270634604
#>     Attrib V36    -0.6503336899035874
#>     Attrib V37    -0.5510155122108146
#>     Attrib V38    0.2896039001620734
#>     Attrib V39    0.3539422120781167
#>     Attrib V4    -0.07016380185013536
#>     Attrib V40    0.0014500790638085626
#>     Attrib V41    0.06327768844233272
#>     Attrib V42    0.2050414378393781
#>     Attrib V43    0.11209084922377277
#>     Attrib V44    0.2768055811705905
#>     Attrib V45    0.17310134053810658
#>     Attrib V46    -0.050911942838528276
#>     Attrib V47    -0.11614879126464124
#>     Attrib V48    0.1920711857818401
#>     Attrib V49    0.2385108954310379
#>     Attrib V5    -0.14305997834431308
#>     Attrib V50    -0.9431359866079877
#>     Attrib V51    0.06951350777736462
#>     Attrib V52    0.043675989233314165
#>     Attrib V53    0.09981965050635837
#>     Attrib V54    0.6375230808793095
#>     Attrib V55    -0.35656624128751774
#>     Attrib V56    0.6388458871835005
#>     Attrib V57    0.202136106020801
#>     Attrib V58    0.6713330653918282
#>     Attrib V59    0.8973817394817198
#>     Attrib V6    -0.19906349626909794
#>     Attrib V60    0.5475624876157359
#>     Attrib V7    0.09568021779452636
#>     Attrib V8    -0.00720724337269559
#>     Attrib V9    0.3015858025214476
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.2102953348654936
#>     Attrib V1    0.2609019846140794
#>     Attrib V10    -0.3649247859439875
#>     Attrib V11    0.23647727578467306
#>     Attrib V12    0.3245565507513554
#>     Attrib V13    0.16963676386681764
#>     Attrib V14    -0.28681704829331744
#>     Attrib V15    -0.5595869732003357
#>     Attrib V16    -0.4457181116405097
#>     Attrib V17    -0.38567584927691684
#>     Attrib V18    -0.26839287608034834
#>     Attrib V19    -0.27538037658979825
#>     Attrib V2    -0.3497717496961996
#>     Attrib V20    -0.30614455627754433
#>     Attrib V21    -0.07597919538641347
#>     Attrib V22    0.38645675843499344
#>     Attrib V23    0.5808066529457848
#>     Attrib V24    0.5798326432748467
#>     Attrib V25    0.3385823425024512
#>     Attrib V26    -0.23932481199702135
#>     Attrib V27    -0.09763004182905341
#>     Attrib V28    0.4294730761541547
#>     Attrib V29    -0.06906429555193462
#>     Attrib V3    -0.2748401660505114
#>     Attrib V30    0.260907957871594
#>     Attrib V31    -0.8944449016349153
#>     Attrib V32    -0.033161390524647574
#>     Attrib V33    0.5435463931377894
#>     Attrib V34    -0.1983338090477263
#>     Attrib V35    -0.08997334703304931
#>     Attrib V36    -0.5979442417119867
#>     Attrib V37    -0.6486213952978453
#>     Attrib V38    -0.058433178725736036
#>     Attrib V39    0.16838517311399587
#>     Attrib V4    -0.09523565734366651
#>     Attrib V40    0.04430248315763739
#>     Attrib V41    0.43276560738540587
#>     Attrib V42    0.36109437600912975
#>     Attrib V43    0.3584715932056044
#>     Attrib V44    0.46814847612699473
#>     Attrib V45    0.267604451319799
#>     Attrib V46    0.11206484757854694
#>     Attrib V47    0.23577355776911127
#>     Attrib V48    0.39107488493693104
#>     Attrib V49    0.3647695628623347
#>     Attrib V5    -0.17965928712119367
#>     Attrib V50    -1.245336116973218
#>     Attrib V51    0.21513713754917166
#>     Attrib V52    0.3291033079849711
#>     Attrib V53    0.11058143800821481
#>     Attrib V54    0.2103818240817096
#>     Attrib V55    -0.7585847454435494
#>     Attrib V56    0.30459504286291983
#>     Attrib V57    -0.14485337013452745
#>     Attrib V58    0.36665580218885524
#>     Attrib V59    0.7762648639165278
#>     Attrib V6    -0.2144758455881688
#>     Attrib V60    0.48204151379917504
#>     Attrib V7    -0.2694443798948036
#>     Attrib V8    -0.2431208543742943
#>     Attrib V9    0.18336133306063462
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.09440979887330266
#>     Attrib V1    -0.1914299689808918
#>     Attrib V10    -0.05847868664665386
#>     Attrib V11    -0.29071305959522825
#>     Attrib V12    -0.1835232097570822
#>     Attrib V13    -0.1080523373294748
#>     Attrib V14    0.11521427002428934
#>     Attrib V15    0.16204809565283934
#>     Attrib V16    0.08719162261064796
#>     Attrib V17    0.21457723481592197
#>     Attrib V18    0.1306465541160451
#>     Attrib V19    3.752098748268479E-4
#>     Attrib V2    0.08590185787113121
#>     Attrib V20    0.030703789493981302
#>     Attrib V21    0.027339467396767837
#>     Attrib V22    -0.11601616818116448
#>     Attrib V23    -0.04610839377259398
#>     Attrib V24    -0.19351664154197878
#>     Attrib V25    -0.026246930005218383
#>     Attrib V26    0.23056291485519972
#>     Attrib V27    0.12440522243033127
#>     Attrib V28    -0.06321521871896782
#>     Attrib V29    0.09359612139246977
#>     Attrib V3    0.1157374578496227
#>     Attrib V30    -0.1751715888517916
#>     Attrib V31    0.45974352026942034
#>     Attrib V32    0.17363975429887843
#>     Attrib V33    -0.25677350956369155
#>     Attrib V34    0.028724858982233172
#>     Attrib V35    0.015053139067265884
#>     Attrib V36    0.3606240396324494
#>     Attrib V37    0.33617707420291515
#>     Attrib V38    -0.0535343209644717
#>     Attrib V39    -0.16467984762611554
#>     Attrib V4    0.11270616316701985
#>     Attrib V40    0.02956445949615574
#>     Attrib V41    -0.08747458840933474
#>     Attrib V42    -0.050356632418601104
#>     Attrib V43    0.07337997389756779
#>     Attrib V44    -0.1360547514363202
#>     Attrib V45    -0.20665117191122118
#>     Attrib V46    -0.12784996335601226
#>     Attrib V47    -0.11416935972484836
#>     Attrib V48    -0.24923660410918508
#>     Attrib V49    -0.28376481979412554
#>     Attrib V5    0.05930990552980919
#>     Attrib V50    0.6594444094445177
#>     Attrib V51    -0.13762714296380876
#>     Attrib V52    -0.08564396550415677
#>     Attrib V53    0.035129172251482654
#>     Attrib V54    -0.02597588786265815
#>     Attrib V55    0.3330885894964864
#>     Attrib V56    -0.012628922270867093
#>     Attrib V57    0.13350158420793606
#>     Attrib V58    -0.18623994812535308
#>     Attrib V59    -0.25105766172862254
#>     Attrib V6    0.09357544290525295
#>     Attrib V60    -0.2599226250747242
#>     Attrib V7    -0.006396524237483291
#>     Attrib V8    0.07575563543855243
#>     Attrib V9    -0.1508028462651179
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.26850757109575857
#>     Attrib V1    0.34180126005541966
#>     Attrib V10    0.9852153166284374
#>     Attrib V11    1.6651454235088226
#>     Attrib V12    2.0214173570501077
#>     Attrib V13    0.6236161475827927
#>     Attrib V14    -0.010452173799928228
#>     Attrib V15    -0.5802903605098796
#>     Attrib V16    -0.4532806069200628
#>     Attrib V17    -0.6338657268865969
#>     Attrib V18    -0.07806455226412312
#>     Attrib V19    -0.329406284351216
#>     Attrib V2    0.20714512112946357
#>     Attrib V20    -0.7436233241286097
#>     Attrib V21    -0.3715989502249245
#>     Attrib V22    -0.025827832639588946
#>     Attrib V23    0.049568050044978
#>     Attrib V24    0.10859134831449246
#>     Attrib V25    0.46954160770327696
#>     Attrib V26    0.7142156610474547
#>     Attrib V27    1.1854480393128246
#>     Attrib V28    2.030480074109812
#>     Attrib V29    1.71496458754785
#>     Attrib V3    -0.016468065813639705
#>     Attrib V30    0.6926911476686209
#>     Attrib V31    -0.9060409937801283
#>     Attrib V32    -0.3762955892390166
#>     Attrib V33    -0.3610223101235599
#>     Attrib V34    -0.17854912751105365
#>     Attrib V35    0.11503856205663679
#>     Attrib V36    -0.3954788032921199
#>     Attrib V37    0.16707142040201303
#>     Attrib V38    -0.14664369026959542
#>     Attrib V39    0.293799176112986
#>     Attrib V4    0.45068725652033037
#>     Attrib V40    0.17864219693933356
#>     Attrib V41    0.5551076020143775
#>     Attrib V42    -0.5702914108970554
#>     Attrib V43    -0.34128833731325076
#>     Attrib V44    0.7319697425834404
#>     Attrib V45    0.6233214368376397
#>     Attrib V46    0.5348930903251108
#>     Attrib V47    0.478878893748288
#>     Attrib V48    0.578101349508712
#>     Attrib V49    0.5239915146586347
#>     Attrib V5    0.2323097395041409
#>     Attrib V50    -1.3732123069536875
#>     Attrib V51    0.6923497577480084
#>     Attrib V52    1.3549856380580276
#>     Attrib V53    0.6034953941018191
#>     Attrib V54    -0.33006248843986546
#>     Attrib V55    -0.7053335185489311
#>     Attrib V56    -0.6558808660668566
#>     Attrib V57    -0.3642884198346894
#>     Attrib V58    0.05978016965435653
#>     Attrib V59    0.47567672029876945
#>     Attrib V6    0.5148383885394382
#>     Attrib V60    0.6253742650910565
#>     Attrib V7    -0.15970465027095784
#>     Attrib V8    -0.4044031135494955
#>     Attrib V9    0.45417789905452766
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.14869154142798915
#>     Attrib V1    0.25450414358155854
#>     Attrib V10    0.018748809977706265
#>     Attrib V11    0.051355116170081774
#>     Attrib V12    0.01142239812350084
#>     Attrib V13    0.018938058252408914
#>     Attrib V14    0.10871408413210926
#>     Attrib V15    0.035962832704320435
#>     Attrib V16    0.025202017422350044
#>     Attrib V17    -5.658595652146304E-4
#>     Attrib V18    -0.08308052497043188
#>     Attrib V19    0.05031955069310946
#>     Attrib V2    0.10313405081613876
#>     Attrib V20    0.07195875081118867
#>     Attrib V21    0.0662788872467321
#>     Attrib V22    -0.01872338267856246
#>     Attrib V23    -0.04865122264293656
#>     Attrib V24    -0.05357203546587098
#>     Attrib V25    -0.09659804560203822
#>     Attrib V26    -0.19301197623775848
#>     Attrib V27    -0.07456628174765331
#>     Attrib V28    0.05376510144671385
#>     Attrib V29    -0.015216701850916513
#>     Attrib V3    0.047415418118566574
#>     Attrib V30    0.035325368528107665
#>     Attrib V31    -0.22754294155705845
#>     Attrib V32    -0.11572257602762286
#>     Attrib V33    0.04312666870524183
#>     Attrib V34    -0.07981027880229978
#>     Attrib V35    0.060706883445017644
#>     Attrib V36    -0.022837562166798712
#>     Attrib V37    -0.011417936357687411
#>     Attrib V38    0.11739127536076793
#>     Attrib V39    0.15784562424739867
#>     Attrib V4    0.1407376669980197
#>     Attrib V40    -0.01827508823101021
#>     Attrib V41    -0.024909764605032043
#>     Attrib V42    0.009979974296980297
#>     Attrib V43    0.06204615184616212
#>     Attrib V44    0.1256676482440096
#>     Attrib V45    0.13490227732055277
#>     Attrib V46    0.03812700005218507
#>     Attrib V47    0.042724839021609604
#>     Attrib V48    0.14425442326910345
#>     Attrib V49    0.07702373115837888
#>     Attrib V5    0.021982835955887382
#>     Attrib V50    -0.08176480633158086
#>     Attrib V51    0.1012129521613661
#>     Attrib V52    0.1005665034359491
#>     Attrib V53    0.1203671055844056
#>     Attrib V54    0.16003841096280935
#>     Attrib V55    0.049277954883670184
#>     Attrib V56    0.18071704904913508
#>     Attrib V57    0.1492231480975069
#>     Attrib V58    0.18447690382468568
#>     Attrib V59    0.2774763259428374
#>     Attrib V6    0.02490360532915438
#>     Attrib V60    0.2708941292831705
#>     Attrib V7    0.008524460369596313
#>     Attrib V8    0.06917291136288425
#>     Attrib V9    0.11702341288990727
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.2328228325487874
#>     Attrib V1    0.575312339082548
#>     Attrib V10    0.6737303492620709
#>     Attrib V11    0.9644666343133971
#>     Attrib V12    0.7381525979993492
#>     Attrib V13    0.06833838557729788
#>     Attrib V14    -0.15169672020566063
#>     Attrib V15    -0.326099460040287
#>     Attrib V16    -0.35360712934180616
#>     Attrib V17    -0.6524065401415592
#>     Attrib V18    -0.33183364916274033
#>     Attrib V19    -0.4158698349734844
#>     Attrib V2    0.05123160227737037
#>     Attrib V20    -0.43126339595473456
#>     Attrib V21    -0.10651264086042059
#>     Attrib V22    -0.13308567443856
#>     Attrib V23    -0.37422879961560374
#>     Attrib V24    -0.15290876080611104
#>     Attrib V25    0.07370672523852874
#>     Attrib V26    0.3200374986125808
#>     Attrib V27    0.4641337038836346
#>     Attrib V28    1.0318071499906685
#>     Attrib V29    0.8955702184310009
#>     Attrib V3    -0.21890015058783316
#>     Attrib V30    0.6266401946750934
#>     Attrib V31    -0.6662150070991933
#>     Attrib V32    -0.30127344733673883
#>     Attrib V33    -0.12523848384100028
#>     Attrib V34    -0.1271871497120291
#>     Attrib V35    0.19685811680439422
#>     Attrib V36    -0.13822932127215914
#>     Attrib V37    0.022659409199212777
#>     Attrib V38    0.07421272088027275
#>     Attrib V39    0.31105813393829934
#>     Attrib V4    0.1881968809768107
#>     Attrib V40    -0.04895702623735882
#>     Attrib V41    0.08800142689359738
#>     Attrib V42    -0.5446858360187196
#>     Attrib V43    -0.3938692454845989
#>     Attrib V44    0.375737619474649
#>     Attrib V45    0.6132948967578243
#>     Attrib V46    0.35761907141387567
#>     Attrib V47    0.33919431968630087
#>     Attrib V48    0.5692556502200525
#>     Attrib V49    0.33861557733012104
#>     Attrib V5    -0.05150694419503024
#>     Attrib V50    -0.8371348799909898
#>     Attrib V51    0.4342211251561255
#>     Attrib V52    0.673077591846186
#>     Attrib V53    0.15334407784545953
#>     Attrib V54    -0.07477583176969703
#>     Attrib V55    -0.35804415434466574
#>     Attrib V56    -0.4337705361399207
#>     Attrib V57    -0.1702895560818542
#>     Attrib V58    0.17043113336628976
#>     Attrib V59    0.3451943056593815
#>     Attrib V6    0.04623148819039053
#>     Attrib V60    0.46546343892058684
#>     Attrib V7    -0.09762765323978245
#>     Attrib V8    -0.04094793036564504
#>     Attrib V9    0.4997380160353702
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.6743073807876651
#>     Attrib V1    -0.031750169717311524
#>     Attrib V10    -0.4901723736019144
#>     Attrib V11    -2.002256778758549
#>     Attrib V12    -1.697917955136882
#>     Attrib V13    0.2670892193644133
#>     Attrib V14    0.7305455180874473
#>     Attrib V15    -0.11671249424438847
#>     Attrib V16    -1.6951296996125347
#>     Attrib V17    -1.5646200263279677
#>     Attrib V18    -0.8339084894929856
#>     Attrib V19    -0.4533562737415825
#>     Attrib V2    0.7152142798801434
#>     Attrib V20    -0.29840549623940593
#>     Attrib V21    -0.7016402553886347
#>     Attrib V22    -0.98966067881902
#>     Attrib V23    0.44397101444142406
#>     Attrib V24    0.3438178783171272
#>     Attrib V25    -0.7366137729336243
#>     Attrib V26    -0.8081972636852062
#>     Attrib V27    0.1297384149090448
#>     Attrib V28    -0.2723588703986631
#>     Attrib V29    -0.35265269851618064
#>     Attrib V3    1.2383375731217003
#>     Attrib V30    -1.6071206959343152
#>     Attrib V31    0.8639389165229919
#>     Attrib V32    -0.185554564266298
#>     Attrib V33    -0.8693801767724134
#>     Attrib V34    -0.39917027401561517
#>     Attrib V35    0.20895629629679124
#>     Attrib V36    0.7919402631110363
#>     Attrib V37    -0.16948282364964118
#>     Attrib V38    0.2989686266872666
#>     Attrib V39    -0.43947417017235724
#>     Attrib V4    0.5821867144720836
#>     Attrib V40    -0.5032521799131128
#>     Attrib V41    -0.1236714111456093
#>     Attrib V42    0.4979823087932967
#>     Attrib V43    1.0531813603733948
#>     Attrib V44    -0.3032893629835151
#>     Attrib V45    -0.3973385492687134
#>     Attrib V46    -0.9206865319033475
#>     Attrib V47    -1.226411762379404
#>     Attrib V48    -1.6193069540199005
#>     Attrib V49    -1.1555304045706944
#>     Attrib V5    0.33447021494902174
#>     Attrib V50    2.221378410002999
#>     Attrib V51    -0.47751289141260683
#>     Attrib V52    -0.34945928720158415
#>     Attrib V53    -0.09854670774515771
#>     Attrib V54    -0.2861753084928421
#>     Attrib V55    1.646886030347711
#>     Attrib V56    0.16739723099206527
#>     Attrib V57    0.23285146388350192
#>     Attrib V58    0.14131421205762176
#>     Attrib V59    -0.33296476092471916
#>     Attrib V6    0.6070268913196761
#>     Attrib V60    0.015686793425119572
#>     Attrib V7    0.5099081891070416
#>     Attrib V8    0.3620450629324346
#>     Attrib V9    -0.6010760861493132
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.05907428010807037
#>     Attrib V1    0.308853511377336
#>     Attrib V10    -0.03722888937894115
#>     Attrib V11    0.1858932848356923
#>     Attrib V12    0.02081107098875451
#>     Attrib V13    0.013608825964740863
#>     Attrib V14    0.05472774551309784
#>     Attrib V15    0.01475327554887005
#>     Attrib V16    0.013414048451877625
#>     Attrib V17    -0.10402002540668219
#>     Attrib V18    -0.07562352015729852
#>     Attrib V19    -0.039702411944741244
#>     Attrib V2    -0.03006912983455611
#>     Attrib V20    0.14152142997746636
#>     Attrib V21    0.18975622654930108
#>     Attrib V22    0.14920176978005967
#>     Attrib V23    -0.012714169343442723
#>     Attrib V24    0.05198602045610327
#>     Attrib V25    -0.07888663394281455
#>     Attrib V26    -0.3738498993055751
#>     Attrib V27    -0.1869439544515207
#>     Attrib V28    0.11845287483873093
#>     Attrib V29    0.018924819047171665
#>     Attrib V3    -0.03815727811082071
#>     Attrib V30    0.06530996111725053
#>     Attrib V31    -0.47725306565405967
#>     Attrib V32    -0.14582411553413818
#>     Attrib V33    0.08879982629471121
#>     Attrib V34    -0.17768086064235783
#>     Attrib V35    -0.04836479400070645
#>     Attrib V36    -0.2864153821349158
#>     Attrib V37    -0.2267478973108238
#>     Attrib V38    0.15298919347065387
#>     Attrib V39    0.2252618170228891
#>     Attrib V4    0.004551686034163071
#>     Attrib V40    -0.051981225458978854
#>     Attrib V41    4.0196428528069435E-4
#>     Attrib V42    -0.09316242457171707
#>     Attrib V43    0.026646864277121762
#>     Attrib V44    0.13759266919168142
#>     Attrib V45    0.21404395139126045
#>     Attrib V46    0.013005500627953576
#>     Attrib V47    0.0649509988373286
#>     Attrib V48    0.1765976408936446
#>     Attrib V49    0.12414954764753178
#>     Attrib V5    -0.06529667151417319
#>     Attrib V50    -0.4302412830114433
#>     Attrib V51    0.17464353283548303
#>     Attrib V52    0.18945689293588613
#>     Attrib V53    0.11264818411757214
#>     Attrib V54    0.24400357503273798
#>     Attrib V55    -0.06899954307823787
#>     Attrib V56    0.2262571219372234
#>     Attrib V57    0.07737521472746951
#>     Attrib V58    0.2567120904249916
#>     Attrib V59    0.39694888545830437
#>     Attrib V6    -0.0794335041998664
#>     Attrib V60    0.3186243332679846
#>     Attrib V7    -0.0020340937876586257
#>     Attrib V8    0.02607050946755646
#>     Attrib V9    0.21625030107917984
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.10029557566609128
#>     Attrib V1    0.4338515931766395
#>     Attrib V10    -0.05418213579360105
#>     Attrib V11    0.0870392855774067
#>     Attrib V12    -0.037288093364551425
#>     Attrib V13    0.07968775375382409
#>     Attrib V14    -0.010670664604837508
#>     Attrib V15    0.04058215571662271
#>     Attrib V16    0.06946091583662897
#>     Attrib V17    -0.035089956973104554
#>     Attrib V18    -0.05716954607932037
#>     Attrib V19    0.026097924116065995
#>     Attrib V2    -0.023675232168197453
#>     Attrib V20    0.14632666058216645
#>     Attrib V21    0.24799010117248496
#>     Attrib V22    0.18861991630802027
#>     Attrib V23    0.07962936551856024
#>     Attrib V24    0.02569387233720018
#>     Attrib V25    -0.17896862899721308
#>     Attrib V26    -0.518119351470549
#>     Attrib V27    -0.34514428521839025
#>     Attrib V28    0.10161081129891555
#>     Attrib V29    -0.13955768549372172
#>     Attrib V3    -0.11502838796680943
#>     Attrib V30    0.11656300667676933
#>     Attrib V31    -0.5735052801393209
#>     Attrib V32    -0.1871968352186084
#>     Attrib V33    0.13623110204074312
#>     Attrib V34    -0.24713215347709724
#>     Attrib V35    -0.09274908726488577
#>     Attrib V36    -0.3867380139667921
#>     Attrib V37    -0.33385965478980906
#>     Attrib V38    0.14451350757351877
#>     Attrib V39    0.30425896106146144
#>     Attrib V4    0.015191897585319518
#>     Attrib V40    -0.020974717873115396
#>     Attrib V41    0.0200606587109168
#>     Attrib V42    0.022519480031629183
#>     Attrib V43    -0.020974836768756357
#>     Attrib V44    0.12467242877077162
#>     Attrib V45    0.12878244573630424
#>     Attrib V46    -0.05280578858327089
#>     Attrib V47    -0.031541390953869895
#>     Attrib V48    0.18377307274125027
#>     Attrib V49    0.1351195901131574
#>     Attrib V5    -0.12718989465463407
#>     Attrib V50    -0.600233366862153
#>     Attrib V51    0.12727283250164073
#>     Attrib V52    0.13987610212629464
#>     Attrib V53    0.1345766810649706
#>     Attrib V54    0.33442466019229694
#>     Attrib V55    -0.23325041965803303
#>     Attrib V56    0.3204301926004345
#>     Attrib V57    0.045840722720455626
#>     Attrib V58    0.38596564819540585
#>     Attrib V59    0.5743388078782353
#>     Attrib V6    -0.13565548618876094
#>     Attrib V60    0.38704929289166295
#>     Attrib V7    -0.03570869195676001
#>     Attrib V8    -0.026390431446065992
#>     Attrib V9    0.20272996731464324
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.04855325161844806
#>     Attrib V1    0.5273366586745315
#>     Attrib V10    -0.24954617754244474
#>     Attrib V11    -0.027653780610885834
#>     Attrib V12    -0.3142628358103749
#>     Attrib V13    0.05695260980691273
#>     Attrib V14    0.08250047464223903
#>     Attrib V15    0.20790284128311312
#>     Attrib V16    0.23149457721685876
#>     Attrib V17    0.08737072152833263
#>     Attrib V18    -0.002408301048946731
#>     Attrib V19    0.07715159585097507
#>     Attrib V2    0.08172674279831865
#>     Attrib V20    0.3492446337617331
#>     Attrib V21    0.2982635248894646
#>     Attrib V22    0.2801515185770504
#>     Attrib V23    0.09321670816510126
#>     Attrib V24    0.013203255036064286
#>     Attrib V25    -0.4123589078854092
#>     Attrib V26    -0.7725290715992847
#>     Attrib V27    -0.5690160654937899
#>     Attrib V28    -0.13189682001979616
#>     Attrib V29    -0.2674598844021219
#>     Attrib V3    -0.0555031248194485
#>     Attrib V30    0.025816176149396457
#>     Attrib V31    -0.6780706313791589
#>     Attrib V32    -0.21707394823840184
#>     Attrib V33    0.2206478828141184
#>     Attrib V34    -0.28059252363141224
#>     Attrib V35    -0.13297904859558998
#>     Attrib V36    -0.3910765777872026
#>     Attrib V37    -0.337569918076432
#>     Attrib V38    0.3034539810918086
#>     Attrib V39    0.23638241745908722
#>     Attrib V4    0.003887472862220582
#>     Attrib V40    -0.06978693998542969
#>     Attrib V41    -0.038403884715829596
#>     Attrib V42    0.07974338810526745
#>     Attrib V43    0.10632784876600153
#>     Attrib V44    0.22643073773638214
#>     Attrib V45    0.152848132856353
#>     Attrib V46    -0.05364372905818191
#>     Attrib V47    -0.04896219533875757
#>     Attrib V48    0.11256885928335307
#>     Attrib V49    0.1348976434767517
#>     Attrib V5    -0.12142149998542069
#>     Attrib V50    -0.5706970881203496
#>     Attrib V51    0.0704354952743056
#>     Attrib V52    0.04828312876953039
#>     Attrib V53    0.14107042516645585
#>     Attrib V54    0.5056597806031875
#>     Attrib V55    -0.11207272053428997
#>     Attrib V56    0.39687128304092717
#>     Attrib V57    0.1708982163379769
#>     Attrib V58    0.40242408582803685
#>     Attrib V59    0.6034440218894186
#>     Attrib V6    -0.17784160924921547
#>     Attrib V60    0.39187730333821186
#>     Attrib V7    0.06176594581526458
#>     Attrib V8    0.02311212868920708
#>     Attrib V9    0.21473635535272473
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.1036152799334858
#>     Attrib V1    0.6403294495707975
#>     Attrib V10    -0.38992170418782235
#>     Attrib V11    -0.11076828633524273
#>     Attrib V12    -0.413038461199782
#>     Attrib V13    -0.0012981824361633456
#>     Attrib V14    0.13391574220003116
#>     Attrib V15    0.29066275677470504
#>     Attrib V16    0.36632191504015826
#>     Attrib V17    0.07372642269783383
#>     Attrib V18    0.03612069768543751
#>     Attrib V19    0.06253089107754117
#>     Attrib V2    0.0164355633351768
#>     Attrib V20    0.43924450810470556
#>     Attrib V21    0.5249841983770374
#>     Attrib V22    0.3943084660554803
#>     Attrib V23    0.14487561236406182
#>     Attrib V24    -0.06809355680330598
#>     Attrib V25    -0.5902703245753411
#>     Attrib V26    -1.045320267511771
#>     Attrib V27    -0.6350129497974912
#>     Attrib V28    0.059428268518684144
#>     Attrib V29    -0.0969051790248074
#>     Attrib V3    -0.0016292428622624474
#>     Attrib V30    0.17357364827256969
#>     Attrib V31    -0.9427169406775785
#>     Attrib V32    -0.3139536198640927
#>     Attrib V33    0.23145386424410322
#>     Attrib V34    -0.4485782581225152
#>     Attrib V35    -0.27755564446291925
#>     Attrib V36    -0.41458423878936007
#>     Attrib V37    -0.38489347486545666
#>     Attrib V38    0.29765900606662554
#>     Attrib V39    0.3340884273661531
#>     Attrib V4    -0.053098667849928824
#>     Attrib V40    -0.08754455080496892
#>     Attrib V41    0.006474618591568277
#>     Attrib V42    0.21348895801192944
#>     Attrib V43    0.05884122463588554
#>     Attrib V44    0.286064368872365
#>     Attrib V45    0.2679114962411022
#>     Attrib V46    -0.024845628670774687
#>     Attrib V47    -0.061922939245747745
#>     Attrib V48    0.05607233674070336
#>     Attrib V49    0.20237895277313064
#>     Attrib V5    -0.11653848204162516
#>     Attrib V50    -0.7180126828928299
#>     Attrib V51    0.08735365304515148
#>     Attrib V52    0.0750996001643937
#>     Attrib V53    0.1428403955034682
#>     Attrib V54    0.4742780947553237
#>     Attrib V55    -0.27514766583763706
#>     Attrib V56    0.48822191258921477
#>     Attrib V57    0.19343469676391697
#>     Attrib V58    0.5845755430423257
#>     Attrib V59    0.7282897346754166
#>     Attrib V6    -0.16848293888353813
#>     Attrib V60    0.44738960415089446
#>     Attrib V7    0.07824137764887569
#>     Attrib V8    0.06328125083248798
#>     Attrib V9    0.20836342194776908
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
#>   0.173913 
```
