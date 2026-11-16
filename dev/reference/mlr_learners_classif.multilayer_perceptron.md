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
#>     Threshold    0.17868885943950583
#>     Node 2    2.1710970323894867
#>     Node 3    0.4549250835724504
#>     Node 4    0.26359845236601454
#>     Node 5    -1.1383564346419763
#>     Node 6    1.768608235759721
#>     Node 7    2.040711875979658
#>     Node 8    0.9928815230869494
#>     Node 9    2.199673923517618
#>     Node 10    -0.8220900797088001
#>     Node 11    1.4118939673245063
#>     Node 12    2.0161526624820567
#>     Node 13    1.1013949208917855
#>     Node 14    1.5308448585220098
#>     Node 15    -3.6159504141446037
#>     Node 16    0.5864397141335114
#>     Node 17    0.28374410328289124
#>     Node 18    -0.0027968781568681114
#>     Node 19    1.909804535437287
#>     Node 20    2.338586194169418
#>     Node 21    -3.1489567569447265
#>     Node 22    1.2660671023756072
#>     Node 23    2.0060997808455676
#>     Node 24    -1.4262209437411641
#>     Node 25    2.2348258511072303
#>     Node 26    0.1831366015316918
#>     Node 27    2.0345727096218127
#>     Node 28    -5.774984363399015
#>     Node 29    1.3396144132941596
#>     Node 30    -0.26255721729478904
#>     Node 31    2.0910421709141795
#>     Node 32    1.499097374680477
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.1693013341481996
#>     Node 2    -2.2083486467993
#>     Node 3    -0.439221344581958
#>     Node 4    -0.2276781195610629
#>     Node 5    1.1405833796201974
#>     Node 6    -1.7403874393675458
#>     Node 7    -2.0255126440252864
#>     Node 8    -1.0266149778486866
#>     Node 9    -2.1915362003329126
#>     Node 10    0.7434404325278728
#>     Node 11    -1.382858824526638
#>     Node 12    -2.082221694418736
#>     Node 13    -1.0500199358608335
#>     Node 14    -1.4634472134194396
#>     Node 15    3.6096180304901475
#>     Node 16    -0.604481686572659
#>     Node 17    -0.2581594657833795
#>     Node 18    0.033561620922258326
#>     Node 19    -1.8971844047810729
#>     Node 20    -2.328530572574706
#>     Node 21    3.2097118218874283
#>     Node 22    -1.3127252321961127
#>     Node 23    -2.042421146193346
#>     Node 24    1.4148079858003961
#>     Node 25    -2.21335839596469
#>     Node 26    -0.274015126557304
#>     Node 27    -2.0722845808348924
#>     Node 28    5.746830687239244
#>     Node 29    -1.377171384265139
#>     Node 30    0.3265596411117228
#>     Node 31    -2.0238084146226956
#>     Node 32    -1.5105615060401063
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.09865997756046721
#>     Attrib V1    0.48796026431995776
#>     Attrib V10    -0.22868871139141647
#>     Attrib V11    -0.2899880369640149
#>     Attrib V12    -0.24342955831440094
#>     Attrib V13    0.1738180328568831
#>     Attrib V14    -0.022919268633088605
#>     Attrib V15    0.15616435623153346
#>     Attrib V16    0.2783837328879754
#>     Attrib V17    0.43951539116726507
#>     Attrib V18    0.22895447915994901
#>     Attrib V19    0.35648948461014396
#>     Attrib V2    0.08270655865495619
#>     Attrib V20    0.7543277814587811
#>     Attrib V21    0.7201304607274313
#>     Attrib V22    0.4891666154248985
#>     Attrib V23    0.29155277740532276
#>     Attrib V24    0.045421441831315086
#>     Attrib V25    -0.8665334545444002
#>     Attrib V26    -1.2059418241056832
#>     Attrib V27    -0.6324294699602029
#>     Attrib V28    -0.2799893028690337
#>     Attrib V29    -0.38391337631153144
#>     Attrib V3    0.036751738300877516
#>     Attrib V30    0.004904155641320552
#>     Attrib V31    -1.1090104975514772
#>     Attrib V32    -0.14523812684882947
#>     Attrib V33    0.7016418443840806
#>     Attrib V34    -0.12850116766119402
#>     Attrib V35    -0.2542436535630092
#>     Attrib V36    -0.4472495899036341
#>     Attrib V37    0.08614052124645405
#>     Attrib V38    0.9255148464422328
#>     Attrib V39    0.09995536871579223
#>     Attrib V4    0.2871698802272809
#>     Attrib V40    -0.4264348508138815
#>     Attrib V41    -0.2787743187040295
#>     Attrib V42    0.12889816688834072
#>     Attrib V43    0.32565950712004393
#>     Attrib V44    0.4139988604624096
#>     Attrib V45    0.3661980789483774
#>     Attrib V46    -0.01195251576341813
#>     Attrib V47    -0.48582696314248336
#>     Attrib V48    0.18549801849372452
#>     Attrib V49    0.30412060009997915
#>     Attrib V5    0.14955607989003813
#>     Attrib V50    -0.7013563887197092
#>     Attrib V51    0.329604209117363
#>     Attrib V52    0.22031620489547726
#>     Attrib V53    0.023007053268659077
#>     Attrib V54    0.6524571809958775
#>     Attrib V55    -0.38617178124296897
#>     Attrib V56    0.426241888275037
#>     Attrib V57    -0.11166958765601528
#>     Attrib V58    0.2114033505217539
#>     Attrib V59    0.8798506831817284
#>     Attrib V6    -0.23924060975875114
#>     Attrib V60    0.6836218745469336
#>     Attrib V7    0.34351631202002847
#>     Attrib V8    -0.5603048682430891
#>     Attrib V9    0.26300016355221256
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.09832066612502037
#>     Attrib V1    0.16677622618444032
#>     Attrib V10    0.04470759658549641
#>     Attrib V11    -0.019501401183637395
#>     Attrib V12    0.06242593973263547
#>     Attrib V13    0.1674080182725198
#>     Attrib V14    0.04458404494200433
#>     Attrib V15    0.04568183232067776
#>     Attrib V16    -0.006302893226861085
#>     Attrib V17    0.034978674891923335
#>     Attrib V18    -0.017942848202822607
#>     Attrib V19    0.07590843893775812
#>     Attrib V2    0.11020263765937416
#>     Attrib V20    0.10950031194514782
#>     Attrib V21    0.01146412953244313
#>     Attrib V22    0.006253490374750679
#>     Attrib V23    -0.049317333235290466
#>     Attrib V24    -0.09599132254744698
#>     Attrib V25    -0.15105324759282868
#>     Attrib V26    -0.2005405453799711
#>     Attrib V27    -0.08192205668825249
#>     Attrib V28    0.02058594320605848
#>     Attrib V29    -0.1560325110453727
#>     Attrib V3    0.07793528086691308
#>     Attrib V30    0.004883763635765382
#>     Attrib V31    -0.2015412178307387
#>     Attrib V32    0.023486071507591025
#>     Attrib V33    0.1431390966359836
#>     Attrib V34    -0.04732925479351701
#>     Attrib V35    0.023840686166974937
#>     Attrib V36    -0.11222762315324102
#>     Attrib V37    -0.022936190577261168
#>     Attrib V38    0.09639000077208433
#>     Attrib V39    0.031307902967618255
#>     Attrib V4    0.1501728359106543
#>     Attrib V40    -0.08716799698697482
#>     Attrib V41    -0.050380836235479544
#>     Attrib V42    -0.025451547838858873
#>     Attrib V43    0.00802741827597905
#>     Attrib V44    0.06442459386269815
#>     Attrib V45    0.09029729732940482
#>     Attrib V46    0.02519981662401988
#>     Attrib V47    -0.03643220937079658
#>     Attrib V48    0.0754861110438016
#>     Attrib V49    0.10390600834345086
#>     Attrib V5    0.07575047248283653
#>     Attrib V50    -0.12327185695372123
#>     Attrib V51    0.05902841719782782
#>     Attrib V52    0.14190717317508308
#>     Attrib V53    0.018307365361216982
#>     Attrib V54    0.1638603581412499
#>     Attrib V55    0.02976917072222789
#>     Attrib V56    0.10772520847733082
#>     Attrib V57    0.03268220674443338
#>     Attrib V58    0.10147732516353287
#>     Attrib V59    0.1761706962737075
#>     Attrib V6    -0.04004513034313711
#>     Attrib V60    0.17076509353879976
#>     Attrib V7    0.016557253679795512
#>     Attrib V8    -0.07321845949066691
#>     Attrib V9    0.119680174869282
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.17676376786218417
#>     Attrib V1    0.07370781401950958
#>     Attrib V10    0.030314338399606705
#>     Attrib V11    -0.012624598912112981
#>     Attrib V12    0.016625653625880445
#>     Attrib V13    0.09223762807134074
#>     Attrib V14    0.06594495709418477
#>     Attrib V15    0.059260652152042785
#>     Attrib V16    0.012203433432371706
#>     Attrib V17    0.04778970210202187
#>     Attrib V18    -0.005960634640179098
#>     Attrib V19    0.019153619613276242
#>     Attrib V2    0.052173580119241475
#>     Attrib V20    0.053280251642541854
#>     Attrib V21    0.03283120542656567
#>     Attrib V22    -0.04914381604405669
#>     Attrib V23    -0.030615469813587183
#>     Attrib V24    -0.08753992389242068
#>     Attrib V25    -0.13760931329472043
#>     Attrib V26    -0.11264651201119223
#>     Attrib V27    -0.08613071991388625
#>     Attrib V28    0.04342281022076924
#>     Attrib V29    -0.017771225111155635
#>     Attrib V3    0.11654440442615221
#>     Attrib V30    1.8069325274357127E-4
#>     Attrib V31    -0.07016147544633135
#>     Attrib V32    0.007147670492444609
#>     Attrib V33    0.0785520239241012
#>     Attrib V34    0.03516096325356015
#>     Attrib V35    0.055307152776371944
#>     Attrib V36    -0.028832313518579594
#>     Attrib V37    0.03193898897150813
#>     Attrib V38    0.0596804384988453
#>     Attrib V39    0.04674951270802508
#>     Attrib V4    0.1134147908754363
#>     Attrib V40    -0.003861447480662837
#>     Attrib V41    -0.021177814708407024
#>     Attrib V42    0.027149671550750088
#>     Attrib V43    -0.006336435309424988
#>     Attrib V44    0.03758253263240493
#>     Attrib V45    0.10421311238591276
#>     Attrib V46    0.015178373361814148
#>     Attrib V47    -0.022937221974061436
#>     Attrib V48    0.07619271628762074
#>     Attrib V49    0.11288889200511434
#>     Attrib V5    0.12206138945179273
#>     Attrib V50    -0.006035503999166135
#>     Attrib V51    0.04769428999492683
#>     Attrib V52    0.0792175650477269
#>     Attrib V53    0.06622167837396283
#>     Attrib V54    0.0031004067701341427
#>     Attrib V55    0.01251760694484009
#>     Attrib V56    0.09972320033466894
#>     Attrib V57    0.08097490379359211
#>     Attrib V58    0.0367829042425265
#>     Attrib V59    0.08406627306612538
#>     Attrib V6    -0.03342294217532695
#>     Attrib V60    0.09221232945418585
#>     Attrib V7    0.019227247375094476
#>     Attrib V8    -0.04850767949963644
#>     Attrib V9    0.1358583535510346
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.34361324741260946
#>     Attrib V1    -0.17945706098860242
#>     Attrib V10    -0.09037824708264959
#>     Attrib V11    -0.047845981222403966
#>     Attrib V12    -0.4034258028465286
#>     Attrib V13    -0.5149283827327316
#>     Attrib V14    0.22500640165999888
#>     Attrib V15    0.33763922521426293
#>     Attrib V16    0.15321984105056008
#>     Attrib V17    0.07914542154801406
#>     Attrib V18    0.1153670468552014
#>     Attrib V19    -0.05155394769283089
#>     Attrib V2    0.0036995435341310302
#>     Attrib V20    -0.14338483919006387
#>     Attrib V21    -0.05723146796297812
#>     Attrib V22    -0.1432863025902887
#>     Attrib V23    -0.11885783140950097
#>     Attrib V24    -0.2561660039912326
#>     Attrib V25    0.24790732095466506
#>     Attrib V26    0.308985626454952
#>     Attrib V27    -0.13386022403997885
#>     Attrib V28    -0.4558351889127983
#>     Attrib V29    0.045460502529174
#>     Attrib V3    0.2329114624976806
#>     Attrib V30    -0.03425446590752747
#>     Attrib V31    0.6125219404883587
#>     Attrib V32    0.010849538960403452
#>     Attrib V33    -0.31917217076763554
#>     Attrib V34    0.07745303050409157
#>     Attrib V35    0.08994462730361878
#>     Attrib V36    0.6058728421638729
#>     Attrib V37    0.09007918374585366
#>     Attrib V38    -0.38122990815283
#>     Attrib V39    -0.10364350591245189
#>     Attrib V4    -0.06984698211010978
#>     Attrib V40    0.14591055146759205
#>     Attrib V41    -0.14162786641381375
#>     Attrib V42    0.12404186035231056
#>     Attrib V43    -0.006812857115324548
#>     Attrib V44    -0.058368789901441086
#>     Attrib V45    -0.3519027405691541
#>     Attrib V46    -0.17556173149800403
#>     Attrib V47    0.18771411500378557
#>     Attrib V48    -0.5645105519767452
#>     Attrib V49    -0.5327251931707451
#>     Attrib V5    -0.050749345571074266
#>     Attrib V50    0.8885732267366926
#>     Attrib V51    -0.3575217090493565
#>     Attrib V52    -0.3257702188783324
#>     Attrib V53    -0.07664904315488152
#>     Attrib V54    -0.19402744905891062
#>     Attrib V55    0.3831342882385999
#>     Attrib V56    0.06610666525860223
#>     Attrib V57    0.3627779086731965
#>     Attrib V58    0.18263133395536715
#>     Attrib V59    -0.07235404585738
#>     Attrib V6    -0.16058032036000547
#>     Attrib V60    -0.16347922982103902
#>     Attrib V7    -0.021216320775524582
#>     Attrib V8    0.5501214217309754
#>     Attrib V9    -0.510138899488225
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -7.697451324613315E-4
#>     Attrib V1    0.39650186120992326
#>     Attrib V10    -0.15377177790290353
#>     Attrib V11    -0.1943204240331275
#>     Attrib V12    -0.08748440342606663
#>     Attrib V13    0.14200935895537153
#>     Attrib V14    -0.18234379276985282
#>     Attrib V15    0.019768822750254253
#>     Attrib V16    0.22350456878973257
#>     Attrib V17    0.3339714915944639
#>     Attrib V18    0.22500432889067962
#>     Attrib V19    0.3015124261430203
#>     Attrib V2    0.03745105706162715
#>     Attrib V20    0.5729211665855684
#>     Attrib V21    0.537053785961851
#>     Attrib V22    0.39744635409617896
#>     Attrib V23    0.2694277628366303
#>     Attrib V24    0.17878273053955834
#>     Attrib V25    -0.487726168644407
#>     Attrib V26    -0.8682306313888739
#>     Attrib V27    -0.5246825494943647
#>     Attrib V28    -0.4204251844546417
#>     Attrib V29    -0.6030218434756068
#>     Attrib V3    -0.016134533069252662
#>     Attrib V30    -0.06657336532402112
#>     Attrib V31    -0.8497493419895119
#>     Attrib V32    -0.03271883044812975
#>     Attrib V33    0.6806946248716337
#>     Attrib V34    -0.03535995242874916
#>     Attrib V35    -0.09628984736943359
#>     Attrib V36    -0.3893243460219362
#>     Attrib V37    0.023204241243041265
#>     Attrib V38    0.6981720086543193
#>     Attrib V39    0.007334651380344862
#>     Attrib V4    0.26235514279790967
#>     Attrib V40    -0.4357113096380653
#>     Attrib V41    -0.22758533692319916
#>     Attrib V42    0.08431968949826767
#>     Attrib V43    0.23121709001025958
#>     Attrib V44    0.30142818848997655
#>     Attrib V45    0.3575081539393988
#>     Attrib V46    0.03427602979875221
#>     Attrib V47    -0.39332593576922026
#>     Attrib V48    0.201324692699381
#>     Attrib V49    0.3083841639029643
#>     Attrib V5    0.09548432245394628
#>     Attrib V50    -0.5999230089987175
#>     Attrib V51    0.29713768028701026
#>     Attrib V52    0.13074685185488483
#>     Attrib V53    0.07064626046323465
#>     Attrib V54    0.6147628547202663
#>     Attrib V55    -0.35916048849610455
#>     Attrib V56    0.3560408778391392
#>     Attrib V57    -0.09911504645344296
#>     Attrib V58    0.185489588198143
#>     Attrib V59    0.6936561433678782
#>     Attrib V6    -0.12514072887577932
#>     Attrib V60    0.5927236153259057
#>     Attrib V7    0.35874834346582063
#>     Attrib V8    -0.409617151439893
#>     Attrib V9    0.40037985590943176
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4451246691801071
#>     Attrib V1    0.4208241435505524
#>     Attrib V10    0.176848198466295
#>     Attrib V11    0.13855459683753013
#>     Attrib V12    0.543536993511467
#>     Attrib V13    0.7832403058897267
#>     Attrib V14    -0.40208085285920964
#>     Attrib V15    -0.5723865000282328
#>     Attrib V16    -0.3216135236817627
#>     Attrib V17    -0.12754828579447525
#>     Attrib V18    -0.19313206407503095
#>     Attrib V19    0.11921703197405324
#>     Attrib V2    0.16003228322686827
#>     Attrib V20    0.3092930924148056
#>     Attrib V21    0.25015190160413975
#>     Attrib V22    0.34131037545952037
#>     Attrib V23    0.44267650562109934
#>     Attrib V24    0.4214315564591673
#>     Attrib V25    -0.3419999973061487
#>     Attrib V26    -0.48857598176040534
#>     Attrib V27    0.2034326065311713
#>     Attrib V28    0.7514249404600597
#>     Attrib V29    0.02602314041174804
#>     Attrib V3    -0.23847433256253361
#>     Attrib V30    0.07456042504681036
#>     Attrib V31    -0.892660303122958
#>     Attrib V32    0.09498357236899523
#>     Attrib V33    0.5328561379166743
#>     Attrib V34    -0.11402904973444383
#>     Attrib V35    0.03398766908081256
#>     Attrib V36    -0.8773988036635633
#>     Attrib V37    -0.08509481588677303
#>     Attrib V38    0.5620035565267961
#>     Attrib V39    0.09406686744150129
#>     Attrib V4    0.12365803391250987
#>     Attrib V40    -0.16307964937972907
#>     Attrib V41    0.21552653345672357
#>     Attrib V42    -0.10333856721340384
#>     Attrib V43    0.0333126881406284
#>     Attrib V44    0.023399302740412645
#>     Attrib V45    0.4079857442589233
#>     Attrib V46    0.20782443481399193
#>     Attrib V47    -0.20415138393927995
#>     Attrib V48    0.9039038266118411
#>     Attrib V49    0.8130934357742529
#>     Attrib V5    0.15207609233069327
#>     Attrib V50    -1.308430715501487
#>     Attrib V51    0.5238174185005642
#>     Attrib V52    0.5861292042852914
#>     Attrib V53    -0.0571186607344594
#>     Attrib V54    0.24702658452417153
#>     Attrib V55    -0.5728082316874005
#>     Attrib V56    -0.06511182473288853
#>     Attrib V57    -0.6228910375028697
#>     Attrib V58    -0.36191115300881527
#>     Attrib V59    0.09729185284758794
#>     Attrib V6    0.24342720905241547
#>     Attrib V60    0.2683802822137344
#>     Attrib V7    0.03909058574590959
#>     Attrib V8    -0.8845764971093221
#>     Attrib V9    0.8549355425837434
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.17276272745615043
#>     Attrib V1    0.17982483088299184
#>     Attrib V10    0.07202622968707113
#>     Attrib V11    0.006655433051846952
#>     Attrib V12    0.1473155388838521
#>     Attrib V13    0.31667525296867216
#>     Attrib V14    -0.17243137425509428
#>     Attrib V15    -0.1859073812821269
#>     Attrib V16    -0.05090762558676963
#>     Attrib V17    -0.0038658317005545333
#>     Attrib V18    -0.0776310163016031
#>     Attrib V19    0.05352645528083657
#>     Attrib V2    0.03259836386526284
#>     Attrib V20    0.06437031652233827
#>     Attrib V21    0.04209449612016496
#>     Attrib V22    0.020940479244759985
#>     Attrib V23    0.007252318602423576
#>     Attrib V24    0.04883855295338514
#>     Attrib V25    -0.2493718502471872
#>     Attrib V26    -0.30179693770249777
#>     Attrib V27    0.007303310287319699
#>     Attrib V28    0.29124891203982034
#>     Attrib V29    -0.006688714707826042
#>     Attrib V3    -0.11326693574543087
#>     Attrib V30    0.08324106869817516
#>     Attrib V31    -0.4319556949355782
#>     Attrib V32    0.07083666665720806
#>     Attrib V33    0.3309302233788395
#>     Attrib V34    -0.024290943658194425
#>     Attrib V35    0.006931131509783512
#>     Attrib V36    -0.34440455188062835
#>     Attrib V37    -0.053343311769149825
#>     Attrib V38    0.297682186612035
#>     Attrib V39    0.02069725345386734
#>     Attrib V4    0.1466641433451153
#>     Attrib V40    -0.15965444258817243
#>     Attrib V41    -0.021602839619755017
#>     Attrib V42    -0.18333743968113952
#>     Attrib V43    -0.04054860877864428
#>     Attrib V44    0.04595629133124173
#>     Attrib V45    0.16345140721249757
#>     Attrib V46    0.06763301207937641
#>     Attrib V47    -0.1522375565846036
#>     Attrib V48    0.385763475987172
#>     Attrib V49    0.3362789672624536
#>     Attrib V5    0.0596127248740879
#>     Attrib V50    -0.6265321058779517
#>     Attrib V51    0.12253881582907056
#>     Attrib V52    0.173170172275936
#>     Attrib V53    0.03981501259865442
#>     Attrib V54    0.09462642069285856
#>     Attrib V55    -0.28807091677258545
#>     Attrib V56    -0.022769448322423388
#>     Attrib V57    -0.1721646369309195
#>     Attrib V58    -0.16683871020812485
#>     Attrib V59    0.09362706702003379
#>     Attrib V6    -0.04532764908675047
#>     Attrib V60    0.19909857458751934
#>     Attrib V7    0.012623308238226758
#>     Attrib V8    -0.45507777651936865
#>     Attrib V9    0.355628227122885
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.20792871849917272
#>     Attrib V1    0.33069808523425004
#>     Attrib V10    0.4971940997408794
#>     Attrib V11    0.22459934105063695
#>     Attrib V12    0.7275825536177158
#>     Attrib V13    0.7708856115324703
#>     Attrib V14    -0.5835712447036082
#>     Attrib V15    -0.7698109012408045
#>     Attrib V16    -0.3951162203010252
#>     Attrib V17    -0.1288982153393756
#>     Attrib V18    -0.14971645996368815
#>     Attrib V19    0.06667994512526362
#>     Attrib V2    0.24827617169115265
#>     Attrib V20    0.062003397960596014
#>     Attrib V21    0.11364839908524763
#>     Attrib V22    0.3974206703298395
#>     Attrib V23    0.5277659744089838
#>     Attrib V24    0.5218302930562104
#>     Attrib V25    -0.09675763961525871
#>     Attrib V26    -0.13350658548986877
#>     Attrib V27    0.6126641600874674
#>     Attrib V28    1.0362120488367363
#>     Attrib V29    0.13320741548526385
#>     Attrib V3    -0.1981687852610852
#>     Attrib V30    0.21883251406666743
#>     Attrib V31    -0.7171031281936163
#>     Attrib V32    0.1875548596411897
#>     Attrib V33    0.4124324356600712
#>     Attrib V34    0.006687424710665043
#>     Attrib V35    0.14570115684650542
#>     Attrib V36    -0.8286658744695753
#>     Attrib V37    -0.27002227929384737
#>     Attrib V38    0.3675191272638541
#>     Attrib V39    0.16508800548413588
#>     Attrib V4    0.22786921752929815
#>     Attrib V40    -0.05864809138401339
#>     Attrib V41    0.3598468126365995
#>     Attrib V42    -0.14136059157499492
#>     Attrib V43    0.1985729062987243
#>     Attrib V44    0.09813482846689567
#>     Attrib V45    0.4461131271368718
#>     Attrib V46    0.4011248459901409
#>     Attrib V47    0.08537432616348564
#>     Attrib V48    1.1259287300379268
#>     Attrib V49    1.0697146303813176
#>     Attrib V5    0.2840028068405882
#>     Attrib V50    -1.0899255838525979
#>     Attrib V51    0.5746579226860531
#>     Attrib V52    0.696041886807945
#>     Attrib V53    0.06313373796687577
#>     Attrib V54    0.17126842530163638
#>     Attrib V55    -0.5504225875376478
#>     Attrib V56    -0.24459980528520037
#>     Attrib V57    -0.709597346031407
#>     Attrib V58    -0.5336291853327838
#>     Attrib V59    -0.0903381623457001
#>     Attrib V6    0.37045539293923885
#>     Attrib V60    0.23751097962318463
#>     Attrib V7    -0.08276894341621371
#>     Attrib V8    -0.7859764429833478
#>     Attrib V9    0.9429963858490105
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.3238655119151847
#>     Attrib V1    -0.07660047844731456
#>     Attrib V10    -0.06935530148671985
#>     Attrib V11    -0.07528045533324951
#>     Attrib V12    -0.23926660697108418
#>     Attrib V13    -0.3160851227842792
#>     Attrib V14    0.2217108253724496
#>     Attrib V15    0.19771216173174191
#>     Attrib V16    0.13822638460786657
#>     Attrib V17    -4.4363905122652374E-4
#>     Attrib V18    0.12599838655066486
#>     Attrib V19    -0.0033749425320682286
#>     Attrib V2    -0.0050848096983743315
#>     Attrib V20    -0.05468802329093603
#>     Attrib V21    -0.023345538131959127
#>     Attrib V22    -0.09433610384459096
#>     Attrib V23    -0.08749765478690455
#>     Attrib V24    -0.20344167403501476
#>     Attrib V25    0.14021668816630165
#>     Attrib V26    0.23138383009025476
#>     Attrib V27    -0.1062024338691774
#>     Attrib V28    -0.3229539082406219
#>     Attrib V29    -0.02197728512175939
#>     Attrib V3    0.15193589384086081
#>     Attrib V30    -0.013309575027723751
#>     Attrib V31    0.4808103476840002
#>     Attrib V32    -0.017012594691037896
#>     Attrib V33    -0.16218220389137575
#>     Attrib V34    0.10870766840371505
#>     Attrib V35    0.07998037636171634
#>     Attrib V36    0.42664455823272796
#>     Attrib V37    0.0944374127555439
#>     Attrib V38    -0.20916059778892332
#>     Attrib V39    -0.06281428212254005
#>     Attrib V4    -0.008168789374186377
#>     Attrib V40    0.15746966960144523
#>     Attrib V41    -0.014347561108955222
#>     Attrib V42    0.07575449458938471
#>     Attrib V43    -0.019623437325538017
#>     Attrib V44    -0.06821139023185936
#>     Attrib V45    -0.2307935048711944
#>     Attrib V46    -0.12517431254746966
#>     Attrib V47    0.13627412433618144
#>     Attrib V48    -0.4246467975720558
#>     Attrib V49    -0.38305154968810623
#>     Attrib V5    -0.026967894938617686
#>     Attrib V50    0.6689217059219241
#>     Attrib V51    -0.2930874001241331
#>     Attrib V52    -0.24622211024995874
#>     Attrib V53    -0.003940697692244351
#>     Attrib V54    -0.1457860495526064
#>     Attrib V55    0.23577955987745722
#>     Attrib V56    0.015180040404325225
#>     Attrib V57    0.2886226956017332
#>     Attrib V58    0.12377486979433458
#>     Attrib V59    -0.1017965344630908
#>     Attrib V6    -0.09743231050870335
#>     Attrib V60    -0.14217194460025284
#>     Attrib V7    -0.042059352201915014
#>     Attrib V8    0.3783631235355442
#>     Attrib V9    -0.35555414464120433
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.019805361899217767
#>     Attrib V1    0.21807086574766302
#>     Attrib V10    -3.7065723797306284E-4
#>     Attrib V11    -0.07314044431360389
#>     Attrib V12    0.053460700812327365
#>     Attrib V13    0.1712647060755762
#>     Attrib V14    -0.26517122207312005
#>     Attrib V15    -0.17942143005624372
#>     Attrib V16    0.038460357981198075
#>     Attrib V17    0.30712306105487935
#>     Attrib V18    0.21329795290633435
#>     Attrib V19    0.2824321088860762
#>     Attrib V2    -0.05338987381871085
#>     Attrib V20    0.4779075290055243
#>     Attrib V21    0.3841114402583251
#>     Attrib V22    0.3566420222639018
#>     Attrib V23    0.25041886219689796
#>     Attrib V24    0.14021034138406246
#>     Attrib V25    -0.30203074159756443
#>     Attrib V26    -0.5986107538023054
#>     Attrib V27    -0.2941440441286948
#>     Attrib V28    -0.11387689222318573
#>     Attrib V29    -0.45263659542299467
#>     Attrib V3    -0.11943260527371492
#>     Attrib V30    0.021718757524298103
#>     Attrib V31    -0.7329204685418711
#>     Attrib V32    -0.03395002157395923
#>     Attrib V33    0.5233178371812038
#>     Attrib V34    0.039791552384100405
#>     Attrib V35    0.050815753188943144
#>     Attrib V36    -0.24929313713099174
#>     Attrib V37    0.012172911362911966
#>     Attrib V38    0.6300324386903224
#>     Attrib V39    0.0116096019109683
#>     Attrib V4    0.19727998332587818
#>     Attrib V40    -0.34276497453229765
#>     Attrib V41    -0.2806413282392253
#>     Attrib V42    -0.06405452797070967
#>     Attrib V43    0.20556846840825654
#>     Attrib V44    0.3785854202123191
#>     Attrib V45    0.4067268030379363
#>     Attrib V46    0.023503589698199177
#>     Attrib V47    -0.26757830955493633
#>     Attrib V48    0.356124382005809
#>     Attrib V49    0.39083911003908556
#>     Attrib V5    0.09313758316997704
#>     Attrib V50    -0.5946991004292328
#>     Attrib V51    0.2551336844529365
#>     Attrib V52    0.1310392083850112
#>     Attrib V53    -0.015460280777245735
#>     Attrib V54    0.4775146292476404
#>     Attrib V55    -0.3621847047688688
#>     Attrib V56    0.24640986716600952
#>     Attrib V57    -0.1639077051235547
#>     Attrib V58    0.008141696737790475
#>     Attrib V59    0.35490874176054
#>     Attrib V6    -0.1676743912448688
#>     Attrib V60    0.3766784062221888
#>     Attrib V7    0.15319225508610243
#>     Attrib V8    -0.44526124161862296
#>     Attrib V9    0.42648309710218646
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.013236298001813605
#>     Attrib V1    0.39920824795694915
#>     Attrib V10    -0.2130814263485818
#>     Attrib V11    -0.18466650349382205
#>     Attrib V12    -0.19872411838735346
#>     Attrib V13    0.1944062975769846
#>     Attrib V14    -0.10801701105367004
#>     Attrib V15    0.04816442923645833
#>     Attrib V16    0.23969461542082696
#>     Attrib V17    0.40976285552621544
#>     Attrib V18    0.20918859397064776
#>     Attrib V19    0.41192379586725303
#>     Attrib V2    0.08755365191748651
#>     Attrib V20    0.6484957690904714
#>     Attrib V21    0.6175047776141632
#>     Attrib V22    0.521869800264783
#>     Attrib V23    0.33325498441218365
#>     Attrib V24    0.06851428239128961
#>     Attrib V25    -0.7652324409748629
#>     Attrib V26    -1.0858470127687514
#>     Attrib V27    -0.5175212347718177
#>     Attrib V28    -0.2705646929309105
#>     Attrib V29    -0.3918948447111091
#>     Attrib V3    -0.06415368689333163
#>     Attrib V30    -2.2075101509189232E-4
#>     Attrib V31    -1.0408181839798742
#>     Attrib V32    -0.13781618783990263
#>     Attrib V33    0.7407423400809591
#>     Attrib V34    -0.07462132781068925
#>     Attrib V35    -0.175032467904293
#>     Attrib V36    -0.4279499615308667
#>     Attrib V37    0.05480448686007775
#>     Attrib V38    0.8776292923485238
#>     Attrib V39    0.04424996563229854
#>     Attrib V4    0.3117642478474766
#>     Attrib V40    -0.4089519917906959
#>     Attrib V41    -0.3054253057529973
#>     Attrib V42    0.03260214268112941
#>     Attrib V43    0.34592165432133976
#>     Attrib V44    0.37110212512484547
#>     Attrib V45    0.42158765183599084
#>     Attrib V46    0.06117407192881635
#>     Attrib V47    -0.44390564498438245
#>     Attrib V48    0.29390388781220683
#>     Attrib V49    0.35600904470426814
#>     Attrib V5    0.11568874081449024
#>     Attrib V50    -0.733832251264586
#>     Attrib V51    0.31345870709139606
#>     Attrib V52    0.21427120943258823
#>     Attrib V53    0.02270121597088838
#>     Attrib V54    0.6560222580639795
#>     Attrib V55    -0.42658110336890176
#>     Attrib V56    0.3998899823712456
#>     Attrib V57    -0.06486036359460756
#>     Attrib V58    0.20842489519876056
#>     Attrib V59    0.8119766987441913
#>     Attrib V6    -0.2500286188370725
#>     Attrib V60    0.6310191344150473
#>     Attrib V7    0.33920911555016414
#>     Attrib V8    -0.5621428529703231
#>     Attrib V9    0.34466297352681213
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.09692787142262033
#>     Attrib V1    0.2358684822490447
#>     Attrib V10    -0.08602220094800092
#>     Attrib V11    -0.11732420690743157
#>     Attrib V12    -0.043080206642291244
#>     Attrib V13    0.21113333660203606
#>     Attrib V14    -0.11228835055221713
#>     Attrib V15    -0.06393640258751508
#>     Attrib V16    0.047698024892681816
#>     Attrib V17    0.23528833682909842
#>     Attrib V18    0.16639968144927159
#>     Attrib V19    0.21921283517109824
#>     Attrib V2    0.02078252811330935
#>     Attrib V20    0.3976768548824738
#>     Attrib V21    0.33629819981701753
#>     Attrib V22    0.2608541106037607
#>     Attrib V23    0.20532393469261195
#>     Attrib V24    0.0779829833166299
#>     Attrib V25    -0.28300417943421374
#>     Attrib V26    -0.5490537911400188
#>     Attrib V27    -0.25483303948864466
#>     Attrib V28    -0.17211020978257244
#>     Attrib V29    -0.31531759141704124
#>     Attrib V3    0.02702869443003139
#>     Attrib V30    -0.024277386030304937
#>     Attrib V31    -0.5916561101701949
#>     Attrib V32    -0.01970767648810413
#>     Attrib V33    0.3806015579055186
#>     Attrib V34    0.02272307426738196
#>     Attrib V35    -0.020403651521649396
#>     Attrib V36    -0.19752594903658216
#>     Attrib V37    0.06390785363801404
#>     Attrib V38    0.45171315808203233
#>     Attrib V39    0.0749917005618419
#>     Attrib V4    0.2028621768310261
#>     Attrib V40    -0.21930551743126994
#>     Attrib V41    -0.15218923395257844
#>     Attrib V42    -0.009097780443424627
#>     Attrib V43    0.0948661915632754
#>     Attrib V44    0.18342048736704697
#>     Attrib V45    0.18548425950207292
#>     Attrib V46    0.03877195009348691
#>     Attrib V47    -0.21286992135823862
#>     Attrib V48    0.15461256936389028
#>     Attrib V49    0.28602601986259235
#>     Attrib V5    0.08999162023822979
#>     Attrib V50    -0.4428348108349034
#>     Attrib V51    0.11431870858128035
#>     Attrib V52    0.09383366278638808
#>     Attrib V53    0.042566611939839495
#>     Attrib V54    0.3270893553678908
#>     Attrib V55    -0.2324858904861455
#>     Attrib V56    0.2031850377806713
#>     Attrib V57    -0.08365675322219118
#>     Attrib V58    0.03890140530848229
#>     Attrib V59    0.4086069410062785
#>     Attrib V6    -0.12008539062870895
#>     Attrib V60    0.3963580647747439
#>     Attrib V7    0.19556683306848247
#>     Attrib V8    -0.3635602410589217
#>     Attrib V9    0.2609854261055925
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.015052529609415973
#>     Attrib V1    0.3351313694277586
#>     Attrib V10    -0.02217275744029623
#>     Attrib V11    -0.05705267875509704
#>     Attrib V12    -3.407871228282767E-5
#>     Attrib V13    0.1621840465001062
#>     Attrib V14    -0.2426126065640245
#>     Attrib V15    -0.03862958513536167
#>     Attrib V16    0.06862707860717847
#>     Attrib V17    0.29117169791498515
#>     Attrib V18    0.1806917468886646
#>     Attrib V19    0.2360888182096036
#>     Attrib V2    0.014944374665642704
#>     Attrib V20    0.4022255835160043
#>     Attrib V21    0.36490788535502516
#>     Attrib V22    0.3104518032760924
#>     Attrib V23    0.20891115706871663
#>     Attrib V24    0.0817396763064384
#>     Attrib V25    -0.3791694524668442
#>     Attrib V26    -0.6522675870161128
#>     Attrib V27    -0.4674895893987813
#>     Attrib V28    -0.374312363878279
#>     Attrib V29    -0.6133776820885694
#>     Attrib V3    -0.12199830784175497
#>     Attrib V30    -0.044202460235124266
#>     Attrib V31    -0.6607487191940777
#>     Attrib V32    0.036166510782512554
#>     Attrib V33    0.6542522122486807
#>     Attrib V34    0.023286563290687158
#>     Attrib V35    -0.007235877592183677
#>     Attrib V36    -0.35601600986759424
#>     Attrib V37    -0.020791088921838237
#>     Attrib V38    0.5080252620653164
#>     Attrib V39    -0.02204416633159953
#>     Attrib V4    0.17358797091180123
#>     Attrib V40    -0.3654133497658354
#>     Attrib V41    -0.3093254945196871
#>     Attrib V42    -0.11949486433928133
#>     Attrib V43    0.1474891423946563
#>     Attrib V44    0.3368531664326264
#>     Attrib V45    0.26206208598434605
#>     Attrib V46    0.029744980942587144
#>     Attrib V47    -0.3153795536465956
#>     Attrib V48    0.35811741432715793
#>     Attrib V49    0.39734533689823986
#>     Attrib V5    0.01841134401442325
#>     Attrib V50    -0.6026075896342317
#>     Attrib V51    0.19869768782071695
#>     Attrib V52    0.11229094424976283
#>     Attrib V53    -0.06610563915637817
#>     Attrib V54    0.5671516632540253
#>     Attrib V55    -0.2693054757388986
#>     Attrib V56    0.31355326864876204
#>     Attrib V57    -0.11091353063562576
#>     Attrib V58    0.08413787674101969
#>     Attrib V59    0.47412122727061956
#>     Attrib V6    -0.14547300057685542
#>     Attrib V60    0.4943095954456387
#>     Attrib V7    0.26425449800421597
#>     Attrib V8    -0.4842377941529446
#>     Attrib V9    0.37173887130427097
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.11564057067695895
#>     Attrib V1    -0.13526814183053495
#>     Attrib V10    -0.8697657884330737
#>     Attrib V11    -0.608180993884279
#>     Attrib V12    -1.3577026209781577
#>     Attrib V13    -1.077779388269078
#>     Attrib V14    0.7141149010393795
#>     Attrib V15    1.3610138350761465
#>     Attrib V16    0.7134422141742437
#>     Attrib V17    0.24212313970771351
#>     Attrib V18    -0.010608887426927385
#>     Attrib V19    -0.3708376145120951
#>     Attrib V2    -0.24272189554145862
#>     Attrib V20    0.09897770750594949
#>     Attrib V21    0.13209668019951482
#>     Attrib V22    -0.5536680604922825
#>     Attrib V23    -1.0786343082406549
#>     Attrib V24    -1.0562056946372198
#>     Attrib V25    -0.6170066806011227
#>     Attrib V26    -0.820882940497547
#>     Attrib V27    -1.323891537837861
#>     Attrib V28    -1.57091258929267
#>     Attrib V29    -0.27844031146415416
#>     Attrib V3    0.11304911416827276
#>     Attrib V30    -0.006112794651453628
#>     Attrib V31    0.7476554284968456
#>     Attrib V32    -0.06463376190142567
#>     Attrib V33    0.16780546703489638
#>     Attrib V34    -0.010707479093002226
#>     Attrib V35    -0.4289820860062495
#>     Attrib V36    0.9445274735616223
#>     Attrib V37    0.6035814030554704
#>     Attrib V38    0.1785150350306079
#>     Attrib V39    -0.3279051701833179
#>     Attrib V4    -0.4093675776632335
#>     Attrib V40    -0.6222001352713386
#>     Attrib V41    -1.25392358284211
#>     Attrib V42    0.11946520259467837
#>     Attrib V43    -0.037398735479790966
#>     Attrib V44    -0.1233038134905508
#>     Attrib V45    -0.38093239165133586
#>     Attrib V46    -0.5997048375501237
#>     Attrib V47    -0.5286971974591108
#>     Attrib V48    -1.7490300990597625
#>     Attrib V49    -1.5578900296520897
#>     Attrib V5    -0.7590443143678677
#>     Attrib V50    1.0070271617592939
#>     Attrib V51    -0.9402546142267032
#>     Attrib V52    -1.1845553750478546
#>     Attrib V53    -0.44427002965385376
#>     Attrib V54    -0.13741634409463613
#>     Attrib V55    0.6376491777867839
#>     Attrib V56    0.5016987440558498
#>     Attrib V57    0.6296818575586934
#>     Attrib V58    0.6115430108961741
#>     Attrib V59    0.2615494283667703
#>     Attrib V6    -0.5824882612152193
#>     Attrib V60    -0.3974126159566613
#>     Attrib V7    0.4272844891809974
#>     Attrib V8    0.893470378540496
#>     Attrib V9    -1.1597550905380118
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.09111094767918552
#>     Attrib V1    0.19960814047099015
#>     Attrib V10    -0.008991019148872988
#>     Attrib V11    -0.05786968271653638
#>     Attrib V12    -0.0014887929142931567
#>     Attrib V13    0.14457085912439993
#>     Attrib V14    -0.0411077249349968
#>     Attrib V15    -0.018951784451996686
#>     Attrib V16    0.08625423456114632
#>     Attrib V17    0.13158797264041286
#>     Attrib V18    0.09797825383204002
#>     Attrib V19    0.0965994072433652
#>     Attrib V2    0.03293510237493564
#>     Attrib V20    0.12767178433035192
#>     Attrib V21    0.07308049828986853
#>     Attrib V22    0.014070905859286678
#>     Attrib V23    -0.05524017495572857
#>     Attrib V24    -0.00946730101530846
#>     Attrib V25    -0.16765862634224465
#>     Attrib V26    -0.29616273953406363
#>     Attrib V27    -0.17238670380767604
#>     Attrib V28    -0.05656664487293961
#>     Attrib V29    -0.19163640049312594
#>     Attrib V3    0.05177271893510927
#>     Attrib V30    -0.08889361796201449
#>     Attrib V31    -0.3242582459313958
#>     Attrib V32    0.0022844402190889575
#>     Attrib V33    0.17501364665331032
#>     Attrib V34    0.03311937898321826
#>     Attrib V35    0.01029483897087643
#>     Attrib V36    -0.1298090580812624
#>     Attrib V37    0.03148863182975567
#>     Attrib V38    0.22400903001582453
#>     Attrib V39    0.02567733380980137
#>     Attrib V4    0.16384183972632096
#>     Attrib V40    -0.1758092918862433
#>     Attrib V41    -0.09249511568773054
#>     Attrib V42    -0.0021911003494250346
#>     Attrib V43    0.01879828238407968
#>     Attrib V44    0.03138980160730353
#>     Attrib V45    0.14113169468292353
#>     Attrib V46    0.05327650130818542
#>     Attrib V47    -0.1205737467402788
#>     Attrib V48    0.09545645954140963
#>     Attrib V49    0.12683416301252848
#>     Attrib V5    0.07496141880031618
#>     Attrib V50    -0.14947240142571944
#>     Attrib V51    0.1058579704833673
#>     Attrib V52    0.11277956882297463
#>     Attrib V53    0.09549270429279635
#>     Attrib V54    0.15573940795816926
#>     Attrib V55    -0.028927551790988687
#>     Attrib V56    0.12843322136809998
#>     Attrib V57    0.01832120649658122
#>     Attrib V58    0.09003130263133578
#>     Attrib V59    0.1650167744468358
#>     Attrib V6    -0.0211839781420028
#>     Attrib V60    0.2384658390248832
#>     Attrib V7    0.08616890893849077
#>     Attrib V8    -0.18278968260963513
#>     Attrib V9    0.19966642055179307
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.09238273954419533
#>     Attrib V1    0.13980926930484522
#>     Attrib V10    0.0840868062975586
#>     Attrib V11    0.025410670636791463
#>     Attrib V12    -0.008894035996053436
#>     Attrib V13    0.020463337939492805
#>     Attrib V14    -0.020343207069186672
#>     Attrib V15    0.0566059991506617
#>     Attrib V16    0.02477820192479052
#>     Attrib V17    0.04460148044046537
#>     Attrib V18    2.9313843566759306E-4
#>     Attrib V19    0.040593622208504536
#>     Attrib V2    0.1252742500107653
#>     Attrib V20    0.03084480663317601
#>     Attrib V21    -0.02086837653485716
#>     Attrib V22    0.02322399437683381
#>     Attrib V23    -0.043604823051006436
#>     Attrib V24    -0.027362664375655425
#>     Attrib V25    -0.13180633997841665
#>     Attrib V26    -0.14625760268527846
#>     Attrib V27    -0.049996884396384486
#>     Attrib V28    -0.00205359231933674
#>     Attrib V29    -0.10459727473792187
#>     Attrib V3    0.0623556722325337
#>     Attrib V30    0.018198225609252234
#>     Attrib V31    -0.054129143137196224
#>     Attrib V32    -0.021676885134308214
#>     Attrib V33    0.10872984974095254
#>     Attrib V34    -0.001876507856455887
#>     Attrib V35    0.0914399224646334
#>     Attrib V36    -0.043311270608859864
#>     Attrib V37    0.013392001983229668
#>     Attrib V38    0.15821286043528812
#>     Attrib V39    0.060018086874098105
#>     Attrib V4    0.13581316717743666
#>     Attrib V40    -0.07340475440792216
#>     Attrib V41    0.0027937412259885514
#>     Attrib V42    -0.029175377627035103
#>     Attrib V43    0.05256730693396836
#>     Attrib V44    0.059874604336798774
#>     Attrib V45    0.10172330666984195
#>     Attrib V46    0.01287271983377669
#>     Attrib V47    -0.06484135840361557
#>     Attrib V48    0.10216768263293172
#>     Attrib V49    0.061630549881458906
#>     Attrib V5    0.08918158178843281
#>     Attrib V50    -0.05031649899635412
#>     Attrib V51    0.020541298869940636
#>     Attrib V52    0.06269970896772879
#>     Attrib V53    0.008888530931574004
#>     Attrib V54    0.02544656705774422
#>     Attrib V55    0.03718494838978502
#>     Attrib V56    0.08675849410783523
#>     Attrib V57    0.08780977029753863
#>     Attrib V58    0.0037208932581799204
#>     Attrib V59    0.047548871780113695
#>     Attrib V6    0.013352599724474865
#>     Attrib V60    0.12688670143741748
#>     Attrib V7    -0.010001577420384636
#>     Attrib V8    0.0022831008209330487
#>     Attrib V9    0.14075418444018237
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2370960817482939
#>     Attrib V1    0.04505536435603634
#>     Attrib V10    0.04806460526412889
#>     Attrib V11    -0.006623779537156285
#>     Attrib V12    -0.043472699004814784
#>     Attrib V13    -0.02938794826421635
#>     Attrib V14    0.047704298404305776
#>     Attrib V15    0.03340599446588478
#>     Attrib V16    0.060698377690816874
#>     Attrib V17    0.02754582731817205
#>     Attrib V18    0.08869638983171811
#>     Attrib V19    -0.029643861639933003
#>     Attrib V2    0.07210503344969431
#>     Attrib V20    0.013515639107977602
#>     Attrib V21    0.0015607082897404058
#>     Attrib V22    -0.03078383002016225
#>     Attrib V23    -0.018157208072392954
#>     Attrib V24    -0.07935185954753124
#>     Attrib V25    -0.009423622623956044
#>     Attrib V26    -0.002396141773582589
#>     Attrib V27    -0.04175147298418406
#>     Attrib V28    -0.07623707723765656
#>     Attrib V29    -0.06790544461154976
#>     Attrib V3    0.15584573457053738
#>     Attrib V30    -0.0544303253583288
#>     Attrib V31    0.04513710722051684
#>     Attrib V32    0.037029792632649994
#>     Attrib V33    0.015604796787871638
#>     Attrib V34    0.08304040717085776
#>     Attrib V35    0.05774402727349959
#>     Attrib V36    0.15829752359440913
#>     Attrib V37    0.0657576708890705
#>     Attrib V38    0.007648469109389431
#>     Attrib V39    0.062106867182073956
#>     Attrib V4    0.07839597577032664
#>     Attrib V40    0.04219313722065777
#>     Attrib V41    0.01321168708445653
#>     Attrib V42    0.054697310196261215
#>     Attrib V43    0.02576983560749217
#>     Attrib V44    0.045697885676601185
#>     Attrib V45    -0.0657803368017212
#>     Attrib V46    -0.004040602196642777
#>     Attrib V47    0.0838324279433791
#>     Attrib V48    -0.02258944268689763
#>     Attrib V49    0.015103088728388
#>     Attrib V5    0.0865138945112972
#>     Attrib V50    0.05219625008061609
#>     Attrib V51    0.0021582156423967675
#>     Attrib V52    0.0097196657375223
#>     Attrib V53    0.022939593208493307
#>     Attrib V54    -0.04674947018468536
#>     Attrib V55    0.08646558786691275
#>     Attrib V56    0.09789575167443437
#>     Attrib V57    0.06948235365063345
#>     Attrib V58    0.07464589423443356
#>     Attrib V59    0.05498469205110908
#>     Attrib V6    -0.028739395755760584
#>     Attrib V60    0.08981928884766201
#>     Attrib V7    0.03126558503516596
#>     Attrib V8    0.11237067570608343
#>     Attrib V9    0.04834642016408957
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.0028079462634617515
#>     Attrib V1    0.35306071280649715
#>     Attrib V10    -0.12017245268354429
#>     Attrib V11    -0.18899426024175336
#>     Attrib V12    -0.018853647357804773
#>     Attrib V13    0.2294610183415405
#>     Attrib V14    -0.2188652062715257
#>     Attrib V15    0.002555486347257532
#>     Attrib V16    0.12237079827010686
#>     Attrib V17    0.3629012837304384
#>     Attrib V18    0.19469915050828737
#>     Attrib V19    0.3536533741038984
#>     Attrib V2    0.037724197051467116
#>     Attrib V20    0.5794431011009737
#>     Attrib V21    0.5468936167879176
#>     Attrib V22    0.520326639347429
#>     Attrib V23    0.3299053046330629
#>     Attrib V24    0.20055159975566592
#>     Attrib V25    -0.5116091351442859
#>     Attrib V26    -0.8961269587396025
#>     Attrib V27    -0.49233444053443814
#>     Attrib V28    -0.30468239258175933
#>     Attrib V29    -0.5931618300944999
#>     Attrib V3    -0.09863191830463779
#>     Attrib V30    -0.01652547035781382
#>     Attrib V31    -0.8872882560016446
#>     Attrib V32    -0.07352044709884065
#>     Attrib V33    0.7522227265821461
#>     Attrib V34    -0.03521375761641811
#>     Attrib V35    -0.06255702523009139
#>     Attrib V36    -0.4028746187779712
#>     Attrib V37    -0.013120962522972839
#>     Attrib V38    0.7673403057411716
#>     Attrib V39    0.002838325662606941
#>     Attrib V4    0.25282175678585034
#>     Attrib V40    -0.4071663201144515
#>     Attrib V41    -0.3043975329135707
#>     Attrib V42    0.06568224342719224
#>     Attrib V43    0.2746746743014623
#>     Attrib V44    0.3349226946381376
#>     Attrib V45    0.4444148719156204
#>     Attrib V46    0.053862355863358365
#>     Attrib V47    -0.42459846034589627
#>     Attrib V48    0.3128672449493217
#>     Attrib V49    0.4542527227812835
#>     Attrib V5    0.06188328438602339
#>     Attrib V50    -0.7486023212179506
#>     Attrib V51    0.3098795517068931
#>     Attrib V52    0.22099912790605797
#>     Attrib V53    0.05049402475740411
#>     Attrib V54    0.6939507736415768
#>     Attrib V55    -0.3828537857255494
#>     Attrib V56    0.3079870100253955
#>     Attrib V57    -0.19072057956514196
#>     Attrib V58    0.1820906933501458
#>     Attrib V59    0.6634510905522074
#>     Attrib V6    -0.21567128865617308
#>     Attrib V60    0.6115795041074421
#>     Attrib V7    0.37364044675144126
#>     Attrib V8    -0.568732975357008
#>     Attrib V9    0.394205839170156
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3960360616126202
#>     Attrib V1    0.37704009513069264
#>     Attrib V10    0.18071469220474376
#>     Attrib V11    0.03706004859249325
#>     Attrib V12    0.7108239622230484
#>     Attrib V13    0.9626122179094715
#>     Attrib V14    -0.3720948945481222
#>     Attrib V15    -0.6150600431823098
#>     Attrib V16    -0.42541680376561886
#>     Attrib V17    -0.043411532685767314
#>     Attrib V18    -0.09299819966556797
#>     Attrib V19    0.18668091725914718
#>     Attrib V2    0.07462584412961784
#>     Attrib V20    0.23681435500319686
#>     Attrib V21    0.21334222570734537
#>     Attrib V22    0.42182339900026083
#>     Attrib V23    0.4593632949125646
#>     Attrib V24    0.49226129108837013
#>     Attrib V25    -0.33154711163553363
#>     Attrib V26    -0.5349037691841995
#>     Attrib V27    0.23447151494486518
#>     Attrib V28    0.7434123614664641
#>     Attrib V29    -0.03260480685946904
#>     Attrib V3    -0.31772825071556093
#>     Attrib V30    0.11582035498433178
#>     Attrib V31    -1.007879021216977
#>     Attrib V32    0.1257833416832791
#>     Attrib V33    0.655933196787226
#>     Attrib V34    -0.19065952216805285
#>     Attrib V35    -0.03598105835892195
#>     Attrib V36    -1.0091270313110696
#>     Attrib V37    -0.19406261850664638
#>     Attrib V38    0.6006766896085003
#>     Attrib V39    0.04874933639068014
#>     Attrib V4    0.1977416778873174
#>     Attrib V40    -0.2074068401985951
#>     Attrib V41    0.2852547366090644
#>     Attrib V42    -0.13267142149573796
#>     Attrib V43    0.0986476577188868
#>     Attrib V44    0.10900971704601638
#>     Attrib V45    0.38069711367088743
#>     Attrib V46    0.07836090187975536
#>     Attrib V47    -0.3455713876642333
#>     Attrib V48    1.0668496418493572
#>     Attrib V49    0.9295882885917462
#>     Attrib V5    0.27069010230992546
#>     Attrib V50    -1.5793416672095508
#>     Attrib V51    0.713391439436507
#>     Attrib V52    0.6399704284233652
#>     Attrib V53    0.0237763464743825
#>     Attrib V54    0.3199136828770988
#>     Attrib V55    -0.7025548443168901
#>     Attrib V56    0.038155828143754005
#>     Attrib V57    -0.7593726638920527
#>     Attrib V58    -0.3464847999005781
#>     Attrib V59    0.2156007266371807
#>     Attrib V6    0.25621790842058667
#>     Attrib V60    0.35304841592630737
#>     Attrib V7    0.034838913825626656
#>     Attrib V8    -1.140148116631617
#>     Attrib V9    0.856172645035515
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.04181411021371496
#>     Attrib V1    -0.10611865334744496
#>     Attrib V10    -0.8493773872523097
#>     Attrib V11    -0.598321364588866
#>     Attrib V12    -1.2986287643408878
#>     Attrib V13    -1.0192497670037348
#>     Attrib V14    0.7144410999384987
#>     Attrib V15    1.2462366741991695
#>     Attrib V16    0.674443833691739
#>     Attrib V17    0.2500328371972207
#>     Attrib V18    0.037844401013988414
#>     Attrib V19    -0.31866137448291937
#>     Attrib V2    -0.23319039268416916
#>     Attrib V20    0.15219041620662707
#>     Attrib V21    0.22546602860848994
#>     Attrib V22    -0.5302384284942361
#>     Attrib V23    -0.9527370423245798
#>     Attrib V24    -0.990290804444554
#>     Attrib V25    -0.6140600909323498
#>     Attrib V26    -0.7770205606364936
#>     Attrib V27    -1.169590517203759
#>     Attrib V28    -1.41140238129429
#>     Attrib V29    -0.13735132904844896
#>     Attrib V3    0.07498635406482246
#>     Attrib V30    -0.012560459944550281
#>     Attrib V31    0.6770655284291356
#>     Attrib V32    -0.1284887027406664
#>     Attrib V33    0.05247391071476973
#>     Attrib V34    -0.08336705817182168
#>     Attrib V35    -0.41720969736410657
#>     Attrib V36    0.8484852702295871
#>     Attrib V37    0.5602290132853175
#>     Attrib V38    0.09178632659376211
#>     Attrib V39    -0.24533372644255277
#>     Attrib V4    -0.32689930890011404
#>     Attrib V40    -0.4240345720699133
#>     Attrib V41    -0.9657575093777825
#>     Attrib V42    0.12789294620653677
#>     Attrib V43    -0.00954802122908899
#>     Attrib V44    -0.09883734346338575
#>     Attrib V45    -0.4373713385532443
#>     Attrib V46    -0.6052178796723551
#>     Attrib V47    -0.5008395879501929
#>     Attrib V48    -1.6099253355759993
#>     Attrib V49    -1.4523407839129747
#>     Attrib V5    -0.6415701190961967
#>     Attrib V50    0.9591658186138105
#>     Attrib V51    -0.8547162445713689
#>     Attrib V52    -1.0156289682422415
#>     Attrib V53    -0.3930371617551712
#>     Attrib V54    -0.17991613230978606
#>     Attrib V55    0.5388224744911032
#>     Attrib V56    0.41334084140017263
#>     Attrib V57    0.7134682686770377
#>     Attrib V58    0.5908023926569785
#>     Attrib V59    0.32397475645185625
#>     Attrib V6    -0.5634907534590916
#>     Attrib V60    -0.2874104157786352
#>     Attrib V7    0.3409722560039459
#>     Attrib V8    0.7211379123327685
#>     Attrib V9    -1.1348853249665949
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.05802666572071161
#>     Attrib V1    0.3669592878449947
#>     Attrib V10    -0.10712487065428739
#>     Attrib V11    -0.1499806134676247
#>     Attrib V12    -0.10371352536262635
#>     Attrib V13    0.10026252080576976
#>     Attrib V14    -0.06111594622089068
#>     Attrib V15    0.016762494161725837
#>     Attrib V16    0.1975562633775074
#>     Attrib V17    0.26985544926587346
#>     Attrib V18    0.1557807123789337
#>     Attrib V19    0.19057968238111034
#>     Attrib V2    0.08592802537527129
#>     Attrib V20    0.4028692270836221
#>     Attrib V21    0.3421208135886704
#>     Attrib V22    0.2129582686451251
#>     Attrib V23    0.04788483976651703
#>     Attrib V24    0.033744950259082356
#>     Attrib V25    -0.45003017754532476
#>     Attrib V26    -0.7087870350105828
#>     Attrib V27    -0.5012922926279987
#>     Attrib V28    -0.39893909670774
#>     Attrib V29    -0.40829983673178843
#>     Attrib V3    -0.03252513617653639
#>     Attrib V30    -0.096595759884415
#>     Attrib V31    -0.5633859558334451
#>     Attrib V32    -0.014642892875393838
#>     Attrib V33    0.4616301951664394
#>     Attrib V34    -0.005937287829037523
#>     Attrib V35    -0.06271923321114409
#>     Attrib V36    -0.2433137759647248
#>     Attrib V37    0.029463467497871453
#>     Attrib V38    0.4494792767861127
#>     Attrib V39    -0.023051471382882927
#>     Attrib V4    0.2122857052195862
#>     Attrib V40    -0.2946322948040649
#>     Attrib V41    -0.27909789202801477
#>     Attrib V42    -0.06165353974338428
#>     Attrib V43    0.16447377797085397
#>     Attrib V44    0.20165214126530268
#>     Attrib V45    0.1825379659368222
#>     Attrib V46    0.03328471939840571
#>     Attrib V47    -0.326457776009336
#>     Attrib V48    0.20028230191810506
#>     Attrib V49    0.2448853331323168
#>     Attrib V5    0.09148956212788652
#>     Attrib V50    -0.4262427750984839
#>     Attrib V51    0.13227113013457778
#>     Attrib V52    0.08442174208057808
#>     Attrib V53    -0.02397002679565164
#>     Attrib V54    0.47634267891806886
#>     Attrib V55    -0.1494809374399489
#>     Attrib V56    0.31739392587891824
#>     Attrib V57    -0.012239749215574724
#>     Attrib V58    0.14290117310718592
#>     Attrib V59    0.4677300975246673
#>     Attrib V6    -0.09799590371934302
#>     Attrib V60    0.46173899059763385
#>     Attrib V7    0.23008475433995493
#>     Attrib V8    -0.4037057090443172
#>     Attrib V9    0.24976634492584554
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.025638263640897392
#>     Attrib V1    0.41308275603811717
#>     Attrib V10    -0.14387064911101827
#>     Attrib V11    -0.15075799013920446
#>     Attrib V12    -0.06720094489827731
#>     Attrib V13    0.2313809687596634
#>     Attrib V14    -0.20780456932923774
#>     Attrib V15    -0.010303832678047724
#>     Attrib V16    0.13251890176221884
#>     Attrib V17    0.4301141177622368
#>     Attrib V18    0.2121554019185139
#>     Attrib V19    0.346636898309879
#>     Attrib V2    -0.02918972466680017
#>     Attrib V20    0.5949479025220356
#>     Attrib V21    0.5439802746997129
#>     Attrib V22    0.49081827153812096
#>     Attrib V23    0.36290762195054743
#>     Attrib V24    0.1519127472867997
#>     Attrib V25    -0.5871013906862764
#>     Attrib V26    -0.9333190337961219
#>     Attrib V27    -0.598825919378104
#>     Attrib V28    -0.44516226084593086
#>     Attrib V29    -0.6945417904941338
#>     Attrib V3    -0.01581480235573951
#>     Attrib V30    -0.07572519693119291
#>     Attrib V31    -0.9617586288442409
#>     Attrib V32    -0.08220684518370272
#>     Attrib V33    0.775363751218851
#>     Attrib V34    -0.014840113190128366
#>     Attrib V35    -0.06332798074787019
#>     Attrib V36    -0.3995954938538392
#>     Attrib V37    0.06872539720286089
#>     Attrib V38    0.8074514913376946
#>     Attrib V39    -0.001316696454715857
#>     Attrib V4    0.2860576962648667
#>     Attrib V40    -0.5055352614015979
#>     Attrib V41    -0.35007917769274044
#>     Attrib V42    0.023937355036834314
#>     Attrib V43    0.33746526115608166
#>     Attrib V44    0.38764953648071954
#>     Attrib V45    0.4318464769953484
#>     Attrib V46    0.025660354367064903
#>     Attrib V47    -0.37346677494623265
#>     Attrib V48    0.2446003757277858
#>     Attrib V49    0.37070760104855194
#>     Attrib V5    0.09079959055175243
#>     Attrib V50    -0.745367123560123
#>     Attrib V51    0.291051392403724
#>     Attrib V52    0.19222339635673555
#>     Attrib V53    0.008167863641440096
#>     Attrib V54    0.677585985853036
#>     Attrib V55    -0.41485884714017696
#>     Attrib V56    0.4245915501201133
#>     Attrib V57    -0.19154338702644932
#>     Attrib V58    0.16974685194215725
#>     Attrib V59    0.7563560188957636
#>     Attrib V6    -0.18849910524099267
#>     Attrib V60    0.6087890227417618
#>     Attrib V7    0.40355290453968645
#>     Attrib V8    -0.5375459085778204
#>     Attrib V9    0.43102475799604206
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.34190488679906295
#>     Attrib V1    -0.26433640236079725
#>     Attrib V10    -0.10321629429541726
#>     Attrib V11    -0.0016986049336668687
#>     Attrib V12    -0.3546580895360021
#>     Attrib V13    -0.48665355317582576
#>     Attrib V14    0.4423769954116983
#>     Attrib V15    0.5624833872806818
#>     Attrib V16    0.2878381780526576
#>     Attrib V17    0.1930586456937935
#>     Attrib V18    0.18119313412021934
#>     Attrib V19    0.04612824292173961
#>     Attrib V2    -0.11290365862942389
#>     Attrib V20    -0.042420633838788906
#>     Attrib V21    -0.13647658654556566
#>     Attrib V22    -0.3799696851450119
#>     Attrib V23    -0.4051416239269596
#>     Attrib V24    -0.5124384965532269
#>     Attrib V25    0.1103916421399797
#>     Attrib V26    0.34546226729303803
#>     Attrib V27    -0.20967521993161253
#>     Attrib V28    -0.5051146022996145
#>     Attrib V29    -0.043664071973000575
#>     Attrib V3    0.2555163680695918
#>     Attrib V30    -0.19324009381458165
#>     Attrib V31    0.5752768199835275
#>     Attrib V32    -0.0965085621452731
#>     Attrib V33    -0.5288768113755071
#>     Attrib V34    -0.00518462910485545
#>     Attrib V35    -0.014629797942813858
#>     Attrib V36    0.6287905957572821
#>     Attrib V37    0.00877462270754016
#>     Attrib V38    -0.45824756365529423
#>     Attrib V39    -0.17264840348314212
#>     Attrib V4    0.025121666756788192
#>     Attrib V40    0.016102517132029107
#>     Attrib V41    -0.3463553090273048
#>     Attrib V42    -0.09399901438714281
#>     Attrib V43    -0.1292279805810198
#>     Attrib V44    -0.20595736668894543
#>     Attrib V45    -0.5201118757118672
#>     Attrib V46    -0.2860173414258587
#>     Attrib V47    0.09575184773647151
#>     Attrib V48    -0.7909564582583097
#>     Attrib V49    -0.7232358413961184
#>     Attrib V5    -0.16624649843585515
#>     Attrib V50    0.979659933695747
#>     Attrib V51    -0.3073091170698793
#>     Attrib V52    -0.22942421136396882
#>     Attrib V53    0.08905559714317106
#>     Attrib V54    -0.2699526790208946
#>     Attrib V55    0.5020196301573658
#>     Attrib V56    0.18816435146438895
#>     Attrib V57    0.49271713563601394
#>     Attrib V58    0.43820536003660726
#>     Attrib V59    -0.09195629604556307
#>     Attrib V6    -0.2141708741832953
#>     Attrib V60    -0.2316797910818445
#>     Attrib V7    -0.0464659790221448
#>     Attrib V8    0.6525106553972564
#>     Attrib V9    -0.5003173703998621
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.315841963842748
#>     Attrib V1    0.1702413592966953
#>     Attrib V10    0.24450249623077555
#>     Attrib V11    0.148298070481655
#>     Attrib V12    0.8155541118132303
#>     Attrib V13    0.8387843906735669
#>     Attrib V14    -0.38384316146797764
#>     Attrib V15    -0.7801635169038238
#>     Attrib V16    -0.3950493856620742
#>     Attrib V17    0.010276182638962942
#>     Attrib V18    0.030084936789170073
#>     Attrib V19    0.1697984687586932
#>     Attrib V2    0.15058367101374168
#>     Attrib V20    0.04759730474539769
#>     Attrib V21    -0.008339565645997747
#>     Attrib V22    0.3894016225132627
#>     Attrib V23    0.5488265997378722
#>     Attrib V24    0.5058942233829293
#>     Attrib V25    -0.12146693145117449
#>     Attrib V26    -0.13803915547674955
#>     Attrib V27    0.6613856460586235
#>     Attrib V28    0.9985414712050399
#>     Attrib V29    0.06120749548630689
#>     Attrib V3    -0.14987494766247303
#>     Attrib V30    0.10117571157716548
#>     Attrib V31    -0.710622497443354
#>     Attrib V32    0.2294584898550039
#>     Attrib V33    0.33557803305842665
#>     Attrib V34    -0.14110525968252582
#>     Attrib V35    0.07717202010451107
#>     Attrib V36    -0.911436112238061
#>     Attrib V37    -0.34278357330603876
#>     Attrib V38    0.2778481542770912
#>     Attrib V39    0.07933747777558343
#>     Attrib V4    0.2627614931568545
#>     Attrib V40    -0.09726729165508018
#>     Attrib V41    0.4444389131006441
#>     Attrib V42    0.0463745870248652
#>     Attrib V43    0.23185983133541083
#>     Attrib V44    0.17570060418868597
#>     Attrib V45    0.37887276239460865
#>     Attrib V46    0.24503235309299962
#>     Attrib V47    -0.060657959645227806
#>     Attrib V48    1.142827746419372
#>     Attrib V49    1.1395031851964705
#>     Attrib V5    0.31471658752758264
#>     Attrib V50    -1.1328285986193984
#>     Attrib V51    0.6302569968755067
#>     Attrib V52    0.7823087838264934
#>     Attrib V53    0.23587902513002068
#>     Attrib V54    0.1846221839565238
#>     Attrib V55    -0.6173014460012942
#>     Attrib V56    -0.053804728678535585
#>     Attrib V57    -0.6065244141079138
#>     Attrib V58    -0.3627937077889839
#>     Attrib V59    0.10445852736553175
#>     Attrib V6    0.2894054697874386
#>     Attrib V60    0.3022864792856861
#>     Attrib V7    -0.30794459368140975
#>     Attrib V8    -1.064703618004553
#>     Attrib V9    0.7322601507974118
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.18908662710653618
#>     Attrib V1    0.12246150380630497
#>     Attrib V10    0.017884922102914525
#>     Attrib V11    -0.038180531457682285
#>     Attrib V12    0.032294180008397115
#>     Attrib V13    0.0324991864203718
#>     Attrib V14    0.06423754074146792
#>     Attrib V15    0.006973433056460756
#>     Attrib V16    0.03144031272828479
#>     Attrib V17    0.08312848607229811
#>     Attrib V18    -0.014328280887835047
#>     Attrib V19    0.07332820615194845
#>     Attrib V2    0.09335179338398773
#>     Attrib V20    0.05509650019230737
#>     Attrib V21    0.008395025043583875
#>     Attrib V22    -0.028273620692819388
#>     Attrib V23    -0.023107940266367658
#>     Attrib V24    -0.06735646608377766
#>     Attrib V25    -0.09159874176256215
#>     Attrib V26    -0.1280294586908826
#>     Attrib V27    -0.02688963965584178
#>     Attrib V28    0.024215851128259396
#>     Attrib V29    -0.048456521737401614
#>     Attrib V3    0.057129483869616714
#>     Attrib V30    -0.022289430208958506
#>     Attrib V31    -0.1138524103028664
#>     Attrib V32    -0.029541961830479194
#>     Attrib V33    0.07013977054114898
#>     Attrib V34    0.003987990078596101
#>     Attrib V35    0.10426687560603852
#>     Attrib V36    0.04808657409916544
#>     Attrib V37    0.09802266853363828
#>     Attrib V38    0.08675126709007924
#>     Attrib V39    0.049846584772015055
#>     Attrib V4    0.1715995864425556
#>     Attrib V40    -0.033258984909725835
#>     Attrib V41    -0.017189352299409093
#>     Attrib V42    0.02207859933018121
#>     Attrib V43    0.032645990236194466
#>     Attrib V44    0.038177782215493526
#>     Attrib V45    0.04980686768725182
#>     Attrib V46    0.013937783484393416
#>     Attrib V47    -0.033610123144295165
#>     Attrib V48    0.08283523096583971
#>     Attrib V49    0.06382504179739135
#>     Attrib V5    0.0548001765974338
#>     Attrib V50    -0.006917722314223755
#>     Attrib V51    -0.018625471796341834
#>     Attrib V52    0.05618318232547125
#>     Attrib V53    0.027109101194296277
#>     Attrib V54    0.031944617884891585
#>     Attrib V55    0.027044637517261726
#>     Attrib V56    0.0997706870905254
#>     Attrib V57    0.09197911669413376
#>     Attrib V58    0.06300582558198592
#>     Attrib V59    0.11163009606801727
#>     Attrib V6    0.02769648017698753
#>     Attrib V60    0.17449032790938188
#>     Attrib V7    -0.00952084626979132
#>     Attrib V8    0.005229470213077671
#>     Attrib V9    0.09129197989077574
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.4749180800047474
#>     Attrib V1    0.4241307293497612
#>     Attrib V10    0.22752472934664736
#>     Attrib V11    0.08741691307939332
#>     Attrib V12    0.5476189729334391
#>     Attrib V13    0.8306459596478358
#>     Attrib V14    -0.4178938067166251
#>     Attrib V15    -0.5051283728334367
#>     Attrib V16    -0.33555013995817745
#>     Attrib V17    -0.10902091518221686
#>     Attrib V18    -0.1441784379547566
#>     Attrib V19    0.09924554356679913
#>     Attrib V2    0.07305178797914251
#>     Attrib V20    0.1925989452316325
#>     Attrib V21    0.19808495411827526
#>     Attrib V22    0.28850228579351767
#>     Attrib V23    0.29016576868451815
#>     Attrib V24    0.3966942640102065
#>     Attrib V25    -0.37687362760938853
#>     Attrib V26    -0.502286993347019
#>     Attrib V27    0.11295246864579354
#>     Attrib V28    0.6532525810490865
#>     Attrib V29    -0.05591074478971734
#>     Attrib V3    -0.31368813664492146
#>     Attrib V30    0.10867519708694072
#>     Attrib V31    -0.9327115647783162
#>     Attrib V32    0.10122026698579722
#>     Attrib V33    0.5895056311809819
#>     Attrib V34    -0.08425366618910991
#>     Attrib V35    0.023050417085169885
#>     Attrib V36    -0.9046060358418432
#>     Attrib V37    -0.16494386192367574
#>     Attrib V38    0.5721928100514763
#>     Attrib V39    0.11674518435009432
#>     Attrib V4    0.1351567125867495
#>     Attrib V40    -0.29407595547427384
#>     Attrib V41    0.11636354858606118
#>     Attrib V42    -0.18053763006737578
#>     Attrib V43    -0.02659068335341828
#>     Attrib V44    0.08240480145471642
#>     Attrib V45    0.43361778833514936
#>     Attrib V46    0.07096486233211102
#>     Attrib V47    -0.3446251930746184
#>     Attrib V48    0.910680785773782
#>     Attrib V49    0.7465274945842679
#>     Attrib V5    0.15415660985899196
#>     Attrib V50    -1.3889981928057191
#>     Attrib V51    0.5851862465718337
#>     Attrib V52    0.5357560791052475
#>     Attrib V53    0.029527015295620837
#>     Attrib V54    0.28261445606244495
#>     Attrib V55    -0.568900026147174
#>     Attrib V56    -0.03722747371147937
#>     Attrib V57    -0.638262553971035
#>     Attrib V58    -0.30567280009149916
#>     Attrib V59    0.15625996239536288
#>     Attrib V6    0.2593332949457676
#>     Attrib V60    0.2839914910802575
#>     Attrib V7    0.06039698714507788
#>     Attrib V8    -0.8818623937941631
#>     Attrib V9    0.8450488646351527
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.0725742132603064
#>     Attrib V1    0.11342863254313218
#>     Attrib V10    -1.4450266070479312
#>     Attrib V11    -0.9764996261943018
#>     Attrib V12    -2.10508899257314
#>     Attrib V13    -1.567383689493073
#>     Attrib V14    1.0679038248888912
#>     Attrib V15    2.0444668685770124
#>     Attrib V16    1.0812172144314856
#>     Attrib V17    0.23656588852153684
#>     Attrib V18    -0.01933258344355382
#>     Attrib V19    -0.7141322589455724
#>     Attrib V2    -0.31380201743800823
#>     Attrib V20    0.1547838630174307
#>     Attrib V21    0.333522520171996
#>     Attrib V22    -0.7997614843441463
#>     Attrib V23    -1.7175010027811175
#>     Attrib V24    -1.5786148690026143
#>     Attrib V25    -0.9025224986691459
#>     Attrib V26    -1.2976879408770647
#>     Attrib V27    -1.5913867293349633
#>     Attrib V28    -1.9994730481988303
#>     Attrib V29    -0.23664633676256575
#>     Attrib V3    -0.022280949919024746
#>     Attrib V30    0.21463496357686362
#>     Attrib V31    0.8513511636714773
#>     Attrib V32    -0.10871660495007701
#>     Attrib V33    0.45892963872717657
#>     Attrib V34    -0.13309815090853871
#>     Attrib V35    -0.7517537188073966
#>     Attrib V36    1.3967523842872078
#>     Attrib V37    0.9923302898531862
#>     Attrib V38    0.6540052225044238
#>     Attrib V39    -0.4619998820263925
#>     Attrib V4    -0.5351567879922058
#>     Attrib V40    -1.2128108219148177
#>     Attrib V41    -1.999979029129234
#>     Attrib V42    0.30720557437402773
#>     Attrib V43    0.051585437637111584
#>     Attrib V44    -0.21776148074976975
#>     Attrib V45    -0.563890558409534
#>     Attrib V46    -0.8103861774596521
#>     Attrib V47    -0.8606690066849948
#>     Attrib V48    -2.416406401371235
#>     Attrib V49    -2.1657198860679383
#>     Attrib V5    -1.1313267920132475
#>     Attrib V50    1.3833900360762492
#>     Attrib V51    -1.4332791743552717
#>     Attrib V52    -1.7606578702906053
#>     Attrib V53    -0.6912855898731047
#>     Attrib V54    0.11123926813058604
#>     Attrib V55    0.7573699182662084
#>     Attrib V56    0.48411983056710145
#>     Attrib V57    0.9685164469592127
#>     Attrib V58    0.7727658726325309
#>     Attrib V59    0.7134630107281511
#>     Attrib V6    -0.6373256846974954
#>     Attrib V60    -0.1896982077839751
#>     Attrib V7    0.9228042622068179
#>     Attrib V8    1.1086100582216794
#>     Attrib V9    -1.6920406329026685
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.04379659864345651
#>     Attrib V1    0.22758614321500792
#>     Attrib V10    -0.009495464662902983
#>     Attrib V11    -0.011822188535266653
#>     Attrib V12    0.11440801434086469
#>     Attrib V13    0.27555882808485505
#>     Attrib V14    -0.22510168268551184
#>     Attrib V15    -0.2102645309399615
#>     Attrib V16    -0.02427312424846667
#>     Attrib V17    0.20553015007334716
#>     Attrib V18    0.15978113051941842
#>     Attrib V19    0.2546586705375152
#>     Attrib V2    0.0015427836194101346
#>     Attrib V20    0.4572893394662953
#>     Attrib V21    0.4203016754843856
#>     Attrib V22    0.4361901099768735
#>     Attrib V23    0.22369406001451653
#>     Attrib V24    0.19452263669138956
#>     Attrib V25    -0.270008367390814
#>     Attrib V26    -0.5643381435200664
#>     Attrib V27    -0.21065883440499578
#>     Attrib V28    -0.0316869044269997
#>     Attrib V29    -0.3232393429941618
#>     Attrib V3    -0.07118026589642075
#>     Attrib V30    -0.00464047830974338
#>     Attrib V31    -0.6872706696492573
#>     Attrib V32    0.029065454163385438
#>     Attrib V33    0.5316478442784741
#>     Attrib V34    -0.004408615749278785
#>     Attrib V35    0.03361300997592019
#>     Attrib V36    -0.33261454108281724
#>     Attrib V37    0.031672860012400855
#>     Attrib V38    0.583613001057232
#>     Attrib V39    0.05312266917502769
#>     Attrib V4    0.16182412055957618
#>     Attrib V40    -0.3017929360979053
#>     Attrib V41    -0.16836600679482136
#>     Attrib V42    -0.09451607931757175
#>     Attrib V43    0.2385791973185182
#>     Attrib V44    0.2611729920948741
#>     Attrib V45    0.40478362381079047
#>     Attrib V46    0.05617325798290266
#>     Attrib V47    -0.2594045993336337
#>     Attrib V48    0.37606974034527985
#>     Attrib V49    0.43298055834331756
#>     Attrib V5    0.02409290823500068
#>     Attrib V50    -0.6554926269001251
#>     Attrib V51    0.250240306496617
#>     Attrib V52    0.22978943962796405
#>     Attrib V53    -0.029943677011422008
#>     Attrib V54    0.4058668335211637
#>     Attrib V55    -0.3355944802043548
#>     Attrib V56    0.2194132577451263
#>     Attrib V57    -0.23940492864669255
#>     Attrib V58    -0.06934357574456582
#>     Attrib V59    0.3478487913132235
#>     Attrib V6    -0.11673887895783798
#>     Attrib V60    0.3937836898146395
#>     Attrib V7    0.16139792024868785
#>     Attrib V8    -0.5024059937272131
#>     Attrib V9    0.43558321551788015
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.2246118038783581
#>     Attrib V1    0.01889294418022323
#>     Attrib V10    0.08940135909723292
#>     Attrib V11    0.020280067135886797
#>     Attrib V12    -0.0178071173021481
#>     Attrib V13    -0.04605000420563396
#>     Attrib V14    0.104108810112569
#>     Attrib V15    0.15082508137009779
#>     Attrib V16    0.13262563385793194
#>     Attrib V17    0.15815741019895063
#>     Attrib V18    0.12136690406668915
#>     Attrib V19    0.008125605733766918
#>     Attrib V2    0.06930970225073191
#>     Attrib V20    -0.049576823984505185
#>     Attrib V21    0.013363948610684108
#>     Attrib V22    -0.005506301394546878
#>     Attrib V23    -0.06391199526840473
#>     Attrib V24    -0.14415970114818372
#>     Attrib V25    0.07567296006922772
#>     Attrib V26    0.10450584001835635
#>     Attrib V27    -0.07573390164500414
#>     Attrib V28    -0.13718592050330433
#>     Attrib V29    -0.0667153222550807
#>     Attrib V3    0.09669708087471932
#>     Attrib V30    0.016918327472144733
#>     Attrib V31    0.2757541096366127
#>     Attrib V32    0.06655430488207702
#>     Attrib V33    -0.03632576796344345
#>     Attrib V34    0.07297520414690356
#>     Attrib V35    0.12968525086052846
#>     Attrib V36    0.20950616759303087
#>     Attrib V37    0.1571257771165059
#>     Attrib V38    -0.09102884885859361
#>     Attrib V39    0.07428873545312782
#>     Attrib V4    0.10331646188203061
#>     Attrib V40    0.16457977495243223
#>     Attrib V41    0.10307924857250045
#>     Attrib V42    0.15242209548963329
#>     Attrib V43    0.021538591597563918
#>     Attrib V44    -0.04610884644971099
#>     Attrib V45    -0.08382751195810723
#>     Attrib V46    -0.005338211445227372
#>     Attrib V47    0.09132721229232948
#>     Attrib V48    -0.07251587833559227
#>     Attrib V49    -0.12763157170911976
#>     Attrib V5    0.02625303883969905
#>     Attrib V50    0.2197821853003045
#>     Attrib V51    -0.15778147803145406
#>     Attrib V52    -0.08748151992165891
#>     Attrib V53    -0.050278213441696966
#>     Attrib V54    -0.07254171908117137
#>     Attrib V55    0.07759936888665733
#>     Attrib V56    0.09202939711269274
#>     Attrib V57    0.1567800564926895
#>     Attrib V58    0.10726844490500227
#>     Attrib V59    0.012524209244960668
#>     Attrib V6    -0.006448877182586299
#>     Attrib V60    0.007229327997916292
#>     Attrib V7    -0.061478316632893375
#>     Attrib V8    0.15173382981832112
#>     Attrib V9    -0.06189228915971734
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.09509468766475711
#>     Attrib V1    0.42007835781861086
#>     Attrib V10    -0.1603046360727267
#>     Attrib V11    -0.17841266994319444
#>     Attrib V12    -0.18766248490526663
#>     Attrib V13    0.22193951747012153
#>     Attrib V14    -0.13100991630932457
#>     Attrib V15    0.09086008449317731
#>     Attrib V16    0.20872848554723397
#>     Attrib V17    0.4245093877791012
#>     Attrib V18    0.21010943357698925
#>     Attrib V19    0.31683477977580965
#>     Attrib V2    0.0767517383928837
#>     Attrib V20    0.6263552692260763
#>     Attrib V21    0.49115955234272934
#>     Attrib V22    0.43904356045695825
#>     Attrib V23    0.3066910158690148
#>     Attrib V24    0.1637063712149165
#>     Attrib V25    -0.6819204607642273
#>     Attrib V26    -1.0118364564204751
#>     Attrib V27    -0.675697650777375
#>     Attrib V28    -0.53696936714585
#>     Attrib V29    -0.7016038356522792
#>     Attrib V3    -0.04226575896832028
#>     Attrib V30    -0.12119519085803558
#>     Attrib V31    -0.9082078909652812
#>     Attrib V32    -0.09870122007309935
#>     Attrib V33    0.8030618123652767
#>     Attrib V34    0.038264215844527785
#>     Attrib V35    -0.10446457594343654
#>     Attrib V36    -0.4404774065324026
#>     Attrib V37    0.04109364937980537
#>     Attrib V38    0.8384586679786518
#>     Attrib V39    -0.018728159557341858
#>     Attrib V4    0.26871206064024283
#>     Attrib V40    -0.4759083102032286
#>     Attrib V41    -0.36995878240024616
#>     Attrib V42    0.027368812568892835
#>     Attrib V43    0.30237741461144013
#>     Attrib V44    0.403235122750213
#>     Attrib V45    0.35834437398508995
#>     Attrib V46    0.013124257838316392
#>     Attrib V47    -0.43735314731788555
#>     Attrib V48    0.23279920975290344
#>     Attrib V49    0.3219681640502726
#>     Attrib V5    0.09104989227409528
#>     Attrib V50    -0.7176247630935985
#>     Attrib V51    0.2634127366929792
#>     Attrib V52    0.15467525078413516
#>     Attrib V53    0.024222826772375482
#>     Attrib V54    0.7117699598497286
#>     Attrib V55    -0.34074479751043546
#>     Attrib V56    0.39720699459093206
#>     Attrib V57    -0.12301323098740606
#>     Attrib V58    0.1699884462063293
#>     Attrib V59    0.7314958696768167
#>     Attrib V6    -0.146736117013295
#>     Attrib V60    0.6310582217242751
#>     Attrib V7    0.40698518533781725
#>     Attrib V8    -0.49643829353293856
#>     Attrib V9    0.4237842320468889
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.0910196514521727
#>     Attrib V1    0.3896851732224209
#>     Attrib V10    -0.20956233704740965
#>     Attrib V11    -0.18780673667482572
#>     Attrib V12    -0.13921603462170615
#>     Attrib V13    0.10243629916386444
#>     Attrib V14    -0.03355485054565789
#>     Attrib V15    0.0799789134960776
#>     Attrib V16    0.20759899013611202
#>     Attrib V17    0.29968673580548516
#>     Attrib V18    0.2581314376254326
#>     Attrib V19    0.2497791961056773
#>     Attrib V2    0.0649588496010693
#>     Attrib V20    0.5213202538126499
#>     Attrib V21    0.48603341023992386
#>     Attrib V22    0.34165918342134793
#>     Attrib V23    0.21503855267534613
#>     Attrib V24    0.01886394938120852
#>     Attrib V25    -0.5938970349479862
#>     Attrib V26    -0.8336861152634462
#>     Attrib V27    -0.5051918915526353
#>     Attrib V28    -0.28791947035123555
#>     Attrib V29    -0.3941932684857921
#>     Attrib V3    0.03862828352505042
#>     Attrib V30    -0.008676434853912233
#>     Attrib V31    -0.7623656606665197
#>     Attrib V32    -0.09461031185687653
#>     Attrib V33    0.5407596985299198
#>     Attrib V34    -0.043408005178111636
#>     Attrib V35    -0.09762834113441925
#>     Attrib V36    -0.22699358406441444
#>     Attrib V37    0.07174296134289145
#>     Attrib V38    0.596191566533354
#>     Attrib V39    0.06388884073717721
#>     Attrib V4    0.23025955452146993
#>     Attrib V40    -0.376642652365982
#>     Attrib V41    -0.2897172154361657
#>     Attrib V42    0.04270354577298102
#>     Attrib V43    0.16926371542361698
#>     Attrib V44    0.310013729288011
#>     Attrib V45    0.3386989240640023
#>     Attrib V46    0.030953967465826515
#>     Attrib V47    -0.34509475862676425
#>     Attrib V48    0.12562368151449504
#>     Attrib V49    0.3155441638452114
#>     Attrib V5    0.09930301996373382
#>     Attrib V50    -0.49427396354167896
#>     Attrib V51    0.17950835946688634
#>     Attrib V52    0.1390535815758048
#>     Attrib V53    0.015881393534357902
#>     Attrib V54    0.46329927445185654
#>     Attrib V55    -0.25287263769113183
#>     Attrib V56    0.3226306928179517
#>     Attrib V57    -0.05966024461216319
#>     Attrib V58    0.18138509158748975
#>     Attrib V59    0.546126177508617
#>     Attrib V6    -0.149980012877798
#>     Attrib V60    0.4773523270016235
#>     Attrib V7    0.23368424228745333
#>     Attrib V8    -0.380335571978965
#>     Attrib V9    0.27430989236866765
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
