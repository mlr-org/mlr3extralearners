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
#>     Threshold    -0.7143141706444054
#>     Node 2    1.4563302599569814
#>     Node 3    1.2875844087933146
#>     Node 4    1.1429770270647475
#>     Node 5    -0.8169753756449692
#>     Node 6    1.0837427643430553
#>     Node 7    3.5113182577030155
#>     Node 8    0.9028860597167165
#>     Node 9    2.951951880809717
#>     Node 10    -1.7031271489790567
#>     Node 11    1.2179210827050548
#>     Node 12    1.2689273011036197
#>     Node 13    0.22412033964958686
#>     Node 14    2.5495936518597424
#>     Node 15    -2.1959401633226916
#>     Node 16    0.35892228417769845
#>     Node 17    0.3833361345534383
#>     Node 18    -1.9294423498308306
#>     Node 19    2.9646252561648287
#>     Node 20    1.3451164900271795
#>     Node 21    -3.2790358200088354
#>     Node 22    2.271804135467105
#>     Node 23    2.115565733040416
#>     Node 24    -1.5759625003928681
#>     Node 25    4.0827232363651405
#>     Node 26    -1.833840439029428
#>     Node 27    1.8027496378844166
#>     Node 28    -2.5524884226234743
#>     Node 29    1.0379406022818156
#>     Node 30    -0.12548436645308836
#>     Node 31    2.6426311084291756
#>     Node 32    0.3508512979396597
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7430197012809698
#>     Node 2    -1.4947719727276652
#>     Node 3    -1.2610718688443388
#>     Node 4    -1.096223885752116
#>     Node 5    0.835414950313494
#>     Node 6    -1.062707371566505
#>     Node 7    -3.5155806755832115
#>     Node 8    -0.929798683346345
#>     Node 9    -2.953086528251279
#>     Node 10    1.656006097116746
#>     Node 11    -1.183570077514012
#>     Node 12    -1.322225188567806
#>     Node 13    -0.17489923335022847
#>     Node 14    -2.4872212232661712
#>     Node 15    2.192836864823764
#>     Node 16    -0.37704532764359133
#>     Node 17    -0.35210925758714295
#>     Node 18    1.9811863005613344
#>     Node 19    -2.968834707170447
#>     Node 20    -1.3322771135375935
#>     Node 21    3.321761791077119
#>     Node 22    -2.326726568004935
#>     Node 23    -2.1742675554616007
#>     Node 24    1.5938050173262674
#>     Node 25    -4.074483012287555
#>     Node 26    1.7707662966675186
#>     Node 27    -1.8365865683132203
#>     Node 28    2.491228577211754
#>     Node 29    -1.0691013950206845
#>     Node 30    0.19546109958871058
#>     Node 31    -2.6001488628496436
#>     Node 32    -0.3729055816906204
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.37039937172924603
#>     Attrib V1    0.08831857304715476
#>     Attrib V10    0.13071436635802205
#>     Attrib V11    0.4408746226345888
#>     Attrib V12    0.3898330073672352
#>     Attrib V13    -0.12687858022679177
#>     Attrib V14    -0.35470007343372656
#>     Attrib V15    0.004053994108365361
#>     Attrib V16    -0.19428063187474268
#>     Attrib V17    -0.18744004544970783
#>     Attrib V18    -0.670268876765604
#>     Attrib V19    0.11761138803176714
#>     Attrib V2    -0.10494934474843186
#>     Attrib V20    -0.053192097216787984
#>     Attrib V21    -0.05879650645410563
#>     Attrib V22    -0.17863941418423854
#>     Attrib V23    0.1515036162786594
#>     Attrib V24    0.4603966932012812
#>     Attrib V25    -0.02062581008017335
#>     Attrib V26    0.08919712764528029
#>     Attrib V27    0.12579586064359186
#>     Attrib V28    0.5798439509450112
#>     Attrib V29    0.3862920888873044
#>     Attrib V3    -0.11582895647657929
#>     Attrib V30    0.21452200662370802
#>     Attrib V31    -0.7603169095457467
#>     Attrib V32    0.16317198492041313
#>     Attrib V33    0.30832491477967056
#>     Attrib V34    0.4681872676231424
#>     Attrib V35    0.300474196395883
#>     Attrib V36    -0.510676634291002
#>     Attrib V37    -0.5532116396816784
#>     Attrib V38    -0.12356950475617184
#>     Attrib V39    -0.04944635344826659
#>     Attrib V4    -0.19044037099155955
#>     Attrib V40    -0.35865192856937994
#>     Attrib V41    0.3831164325398148
#>     Attrib V42    0.262720349971814
#>     Attrib V43    -0.00862222145022232
#>     Attrib V44    0.3773687204257058
#>     Attrib V45    0.33395379063537184
#>     Attrib V46    0.5976400254685988
#>     Attrib V47    0.24380355924645936
#>     Attrib V48    0.38339756479709985
#>     Attrib V49    0.6187999556228152
#>     Attrib V5    0.02412729770576928
#>     Attrib V50    -0.6782389041266291
#>     Attrib V51    0.007898409296865406
#>     Attrib V52    0.32349184444250156
#>     Attrib V53    0.3815202515310601
#>     Attrib V54    0.012473671394256185
#>     Attrib V55    -0.4116262051914441
#>     Attrib V56    -0.06519759593943639
#>     Attrib V57    -0.5577083899869443
#>     Attrib V58    0.2941014536872172
#>     Attrib V59    0.5093687219955116
#>     Attrib V6    -0.2513210385008189
#>     Attrib V60    0.03916186813783725
#>     Attrib V7    -0.2681845642168672
#>     Attrib V8    -0.13017632217099678
#>     Attrib V9    0.45061617392290654
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.3605001541919291
#>     Attrib V1    0.22706661969901062
#>     Attrib V10    -0.10516718746005707
#>     Attrib V11    0.2518701317147485
#>     Attrib V12    0.3236680502321738
#>     Attrib V13    -0.10506908406882835
#>     Attrib V14    -0.29766666036815553
#>     Attrib V15    0.1533723723817977
#>     Attrib V16    -0.13620067814894193
#>     Attrib V17    -0.07818582076339972
#>     Attrib V18    -0.6018911566618219
#>     Attrib V19    0.2062429240911312
#>     Attrib V2    -0.040849393850883764
#>     Attrib V20    0.05751280291821073
#>     Attrib V21    -0.06603278081513422
#>     Attrib V22    -0.06959852308260371
#>     Attrib V23    0.22602783619104425
#>     Attrib V24    0.45184905968784217
#>     Attrib V25    -0.0010435199479752473
#>     Attrib V26    -0.16525223581245788
#>     Attrib V27    -0.2941190418310178
#>     Attrib V28    0.11338209189299547
#>     Attrib V29    -0.0022108891817406834
#>     Attrib V3    -0.10734033787066372
#>     Attrib V30    -0.021502470733174302
#>     Attrib V31    -0.7137888336083942
#>     Attrib V32    0.23853317554525846
#>     Attrib V33    0.3210669329081844
#>     Attrib V34    0.3440249371510175
#>     Attrib V35    0.20723769374498469
#>     Attrib V36    -0.49863755852752234
#>     Attrib V37    -0.4817412521107085
#>     Attrib V38    -0.11066285240649339
#>     Attrib V39    0.0049699180179370375
#>     Attrib V4    -0.2605457082548096
#>     Attrib V40    -0.4401249108350711
#>     Attrib V41    0.11317202193198961
#>     Attrib V42    0.28836724981182427
#>     Attrib V43    -0.016233436114456188
#>     Attrib V44    0.3180380259767993
#>     Attrib V45    0.2740415909538909
#>     Attrib V46    0.44517176404991876
#>     Attrib V47    0.18383922594787733
#>     Attrib V48    0.29203318669897343
#>     Attrib V49    0.5239816950519299
#>     Attrib V5    -0.14988382304062503
#>     Attrib V50    -0.6502501511503928
#>     Attrib V51    -0.15758073854244375
#>     Attrib V52    0.24122028980328128
#>     Attrib V53    0.2054910522347303
#>     Attrib V54    0.16603129441615758
#>     Attrib V55    -0.24260206919438904
#>     Attrib V56    0.1043924246830286
#>     Attrib V57    -0.2795470063564479
#>     Attrib V58    0.39674580954150285
#>     Attrib V59    0.5330917843904808
#>     Attrib V6    -0.31105610338839373
#>     Attrib V60    -0.013414032684416785
#>     Attrib V7    -0.27657482986898835
#>     Attrib V8    -0.2110204946240061
#>     Attrib V9    0.29414857094684677
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.03788929244803292
#>     Attrib V1    0.311053736236827
#>     Attrib V10    -0.3967739439182009
#>     Attrib V11    -0.16067444383227256
#>     Attrib V12    -0.043860133636705524
#>     Attrib V13    -0.1386547199971608
#>     Attrib V14    0.058091010099684814
#>     Attrib V15    0.43136896780046485
#>     Attrib V16    0.1919931338485728
#>     Attrib V17    0.17147556034136185
#>     Attrib V18    -0.21338428813951077
#>     Attrib V19    0.1898975777306457
#>     Attrib V2    0.023953252657890684
#>     Attrib V20    0.1919091364999017
#>     Attrib V21    0.15244275211067956
#>     Attrib V22    -0.05060665539157964
#>     Attrib V23    0.06489190632307536
#>     Attrib V24    0.11728952247384178
#>     Attrib V25    -0.3458716416729857
#>     Attrib V26    -0.5381303553263802
#>     Attrib V27    -0.6517975735721938
#>     Attrib V28    -0.21368548223495368
#>     Attrib V29    -8.897917974208784E-4
#>     Attrib V3    0.023445223806304913
#>     Attrib V30    -0.10908733367511149
#>     Attrib V31    -0.6080745870337624
#>     Attrib V32    0.0013456735817196888
#>     Attrib V33    0.19298528912004387
#>     Attrib V34    0.17539232929649223
#>     Attrib V35    0.026045603566639913
#>     Attrib V36    -0.36946171971628367
#>     Attrib V37    -0.3633161867173203
#>     Attrib V38    -0.032762628651680684
#>     Attrib V39    0.011148873215818164
#>     Attrib V4    -0.07673758040386826
#>     Attrib V40    -0.40782182847649767
#>     Attrib V41    -0.14459060166546017
#>     Attrib V42    0.2965267368675187
#>     Attrib V43    0.0281397438520775
#>     Attrib V44    0.2968142136551188
#>     Attrib V45    0.3959204473356649
#>     Attrib V46    0.30284821886900565
#>     Attrib V47    0.06311035316148486
#>     Attrib V48    0.20422513647103652
#>     Attrib V49    0.3715734492278067
#>     Attrib V5    -0.03173872813466
#>     Attrib V50    -0.3135941594584109
#>     Attrib V51    -0.026068350821508355
#>     Attrib V52    0.16603740999291167
#>     Attrib V53    0.23308958815818615
#>     Attrib V54    0.18375503205014107
#>     Attrib V55    0.004672873719016067
#>     Attrib V56    0.2757181672691801
#>     Attrib V57    0.0825274581799625
#>     Attrib V58    0.3216196711704413
#>     Attrib V59    0.6062163527346446
#>     Attrib V6    -0.20729642406868845
#>     Attrib V60    0.20443445546350655
#>     Attrib V7    -0.07745121477856817
#>     Attrib V8    -0.1965352404827643
#>     Attrib V9    0.06565902690161446
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.10545821704639531
#>     Attrib V1    -0.1486402832685579
#>     Attrib V10    0.11884926766477741
#>     Attrib V11    -0.06475932693589913
#>     Attrib V12    -0.20007930239222624
#>     Attrib V13    -0.021169417835574696
#>     Attrib V14    0.1416267654868236
#>     Attrib V15    -2.4116951138482065E-4
#>     Attrib V16    0.10105777826577808
#>     Attrib V17    0.11280508049222697
#>     Attrib V18    0.2516493472352258
#>     Attrib V19    -0.10426911656259646
#>     Attrib V2    0.014800789422405343
#>     Attrib V20    -0.13459108208562146
#>     Attrib V21    -0.015572914974006891
#>     Attrib V22    -0.018938951816702684
#>     Attrib V23    -0.07378276701447324
#>     Attrib V24    -0.18564970004425627
#>     Attrib V25    0.08415846809295187
#>     Attrib V26    0.09451722215856109
#>     Attrib V27    0.16314716401496596
#>     Attrib V28    0.014957427004167355
#>     Attrib V29    0.0107013314574023
#>     Attrib V3    0.045043385114143714
#>     Attrib V30    0.11353523718293576
#>     Attrib V31    0.41232290093169865
#>     Attrib V32    -0.07353553401354875
#>     Attrib V33    -0.15335265737967152
#>     Attrib V34    -0.1953707707576016
#>     Attrib V35    -0.09726189660385058
#>     Attrib V36    0.21869195330250357
#>     Attrib V37    0.1009641321155707
#>     Attrib V38    -0.06236533211883389
#>     Attrib V39    -0.04479374454281052
#>     Attrib V4    0.06866331571427915
#>     Attrib V40    0.20747156431119457
#>     Attrib V41    -0.1339600853431917
#>     Attrib V42    -0.17465476421063067
#>     Attrib V43    -0.07216347667916753
#>     Attrib V44    -0.10765680445592732
#>     Attrib V45    -0.20336532606400834
#>     Attrib V46    -0.31616453263048117
#>     Attrib V47    -0.11889532713447189
#>     Attrib V48    -0.15069529592575967
#>     Attrib V49    -0.26093726579345944
#>     Attrib V5    0.07767402264727255
#>     Attrib V50    0.2919476280814683
#>     Attrib V51    0.0031577660187906945
#>     Attrib V52    -0.16747885696935613
#>     Attrib V53    -0.09876222317862257
#>     Attrib V54    -0.07132312258783512
#>     Attrib V55    0.1325083542636066
#>     Attrib V56    -0.028272054736276527
#>     Attrib V57    0.1535940594175578
#>     Attrib V58    -0.2237996263705301
#>     Attrib V59    -0.19709883236739115
#>     Attrib V6    0.18640377617269907
#>     Attrib V60    -0.016835882630074708
#>     Attrib V7    0.24946492516524046
#>     Attrib V8    0.21768664021890585
#>     Attrib V9    -0.17002768665767923
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.07292783719037717
#>     Attrib V1    0.3837437980607092
#>     Attrib V10    -0.43484532283672955
#>     Attrib V11    -0.14969934611501595
#>     Attrib V12    0.01001791976033575
#>     Attrib V13    -0.21285131029726026
#>     Attrib V14    -0.0384265986578683
#>     Attrib V15    0.287575339320235
#>     Attrib V16    0.19507778234452847
#>     Attrib V17    0.11259711857827769
#>     Attrib V18    -0.14102865231009679
#>     Attrib V19    0.1982537059096748
#>     Attrib V2    0.04110315073861378
#>     Attrib V20    0.22060382385008537
#>     Attrib V21    0.12217741553449084
#>     Attrib V22    -0.04166127317603684
#>     Attrib V23    0.10022217849877982
#>     Attrib V24    0.250437484636878
#>     Attrib V25    -0.12842439498946062
#>     Attrib V26    -0.45793565753985677
#>     Attrib V27    -0.6333919873232169
#>     Attrib V28    -0.44094344685155773
#>     Attrib V29    -0.24225055000283666
#>     Attrib V3    -7.79005389165593E-4
#>     Attrib V30    -0.20531181100350102
#>     Attrib V31    -0.5478704140650674
#>     Attrib V32    0.1358711016273541
#>     Attrib V33    0.29345339468148873
#>     Attrib V34    0.23310431798740547
#>     Attrib V35    0.0831777870498151
#>     Attrib V36    -0.3404199329926791
#>     Attrib V37    -0.3699547569837466
#>     Attrib V38    -0.03227468004241712
#>     Attrib V39    0.010912690046107587
#>     Attrib V4    -0.0402999802449384
#>     Attrib V40    -0.38965531936452463
#>     Attrib V41    -0.11036675630108775
#>     Attrib V42    0.3081372202356464
#>     Attrib V43    0.046965924932833136
#>     Attrib V44    0.16055088548073748
#>     Attrib V45    0.24564257505005702
#>     Attrib V46    0.25864263349543204
#>     Attrib V47    0.04579821941830549
#>     Attrib V48    0.15038589768003038
#>     Attrib V49    0.2997830636849356
#>     Attrib V5    -0.09357024004272822
#>     Attrib V50    -0.2659390440750855
#>     Attrib V51    -0.055359479139524596
#>     Attrib V52    0.13637016860484016
#>     Attrib V53    0.20994155390381458
#>     Attrib V54    0.22725155241106115
#>     Attrib V55    0.054783345767417835
#>     Attrib V56    0.2946346326901522
#>     Attrib V57    0.13324696450262177
#>     Attrib V58    0.35239509334385405
#>     Attrib V59    0.6170838962863661
#>     Attrib V6    -0.1805724928084263
#>     Attrib V60    0.25002028702002793
#>     Attrib V7    -0.08803252999407071
#>     Attrib V8    -0.12918388231915487
#>     Attrib V9    0.07913631836447231
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5782357420364039
#>     Attrib V1    0.10006290037375239
#>     Attrib V10    0.48225030333017227
#>     Attrib V11    0.6319268037004913
#>     Attrib V12    0.45261640787814256
#>     Attrib V13    -0.0569209627670318
#>     Attrib V14    -0.395410437721933
#>     Attrib V15    0.3079740365117021
#>     Attrib V16    -0.12898213032896644
#>     Attrib V17    -0.20089018762237373
#>     Attrib V18    -0.7928661780127946
#>     Attrib V19    0.2037272840769022
#>     Attrib V2    0.14008789389427456
#>     Attrib V20    -0.16796311137471728
#>     Attrib V21    0.19674973490525693
#>     Attrib V22    0.3658269911434508
#>     Attrib V23    0.5442797887038737
#>     Attrib V24    0.6199912615097972
#>     Attrib V25    -0.18348620392166692
#>     Attrib V26    0.5657481123909526
#>     Attrib V27    1.3326796670542527
#>     Attrib V28    2.0635955235150076
#>     Attrib V29    1.8585515190389161
#>     Attrib V3    -0.01453747713292617
#>     Attrib V30    0.801448083815914
#>     Attrib V31    -1.1562776438401916
#>     Attrib V32    -0.8298520764056235
#>     Attrib V33    -0.815707566098469
#>     Attrib V34    -0.2460427735268995
#>     Attrib V35    0.10985992935878872
#>     Attrib V36    -0.6290701932297519
#>     Attrib V37    0.07250224703169726
#>     Attrib V38    -0.015974481956789608
#>     Attrib V39    0.15198982945875938
#>     Attrib V4    0.09079169888785173
#>     Attrib V40    0.09208934465143562
#>     Attrib V41    1.6222988288627558
#>     Attrib V42    0.2146895070505054
#>     Attrib V43    -0.1766199235938917
#>     Attrib V44    0.38166845818237877
#>     Attrib V45    0.322165897691645
#>     Attrib V46    1.3031098631162077
#>     Attrib V47    0.7301814938181147
#>     Attrib V48    0.4057239735713388
#>     Attrib V49    0.6868143348000691
#>     Attrib V5    0.8293161376010018
#>     Attrib V50    -0.6146881813173172
#>     Attrib V51    0.5547699634884209
#>     Attrib V52    0.5981221670133801
#>     Attrib V53    1.0617437575521436
#>     Attrib V54    0.4852762645592025
#>     Attrib V55    -0.8646023539973009
#>     Attrib V56    -0.4613179117319636
#>     Attrib V57    -1.1440251420984864
#>     Attrib V58    0.3093409337866571
#>     Attrib V59    0.5592195123750511
#>     Attrib V6    0.5464103704113312
#>     Attrib V60    0.6054862700323533
#>     Attrib V7    0.02436452874714393
#>     Attrib V8    -0.609919722468839
#>     Attrib V9    0.552985085890122
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.18558860650734701
#>     Attrib V1    0.23089644372613827
#>     Attrib V10    -0.23261030421166493
#>     Attrib V11    0.051306462479326145
#>     Attrib V12    0.12143810653669995
#>     Attrib V13    -0.08220090782644647
#>     Attrib V14    -0.07720290591890488
#>     Attrib V15    0.24554095847826085
#>     Attrib V16    0.11302294814112597
#>     Attrib V17    0.0396801039588723
#>     Attrib V18    -0.30504318470569247
#>     Attrib V19    0.13550371414599383
#>     Attrib V2    0.03531129857640613
#>     Attrib V20    0.007783098846534439
#>     Attrib V21    -0.002010540587213776
#>     Attrib V22    -0.12439107723882012
#>     Attrib V23    -0.009881321521169455
#>     Attrib V24    0.19491546766207926
#>     Attrib V25    -0.12380442017314722
#>     Attrib V26    -0.18539313165119736
#>     Attrib V27    -0.24253470213673045
#>     Attrib V28    -1.795288714439529E-4
#>     Attrib V29    -1.2678192212640585E-4
#>     Attrib V3    -0.018312820035282035
#>     Attrib V30    -0.07291946056695262
#>     Attrib V31    -0.5388621195152015
#>     Attrib V32    -0.06746481652059083
#>     Attrib V33    0.06623832208963584
#>     Attrib V34    0.14550347476357686
#>     Attrib V35    0.06134307642011159
#>     Attrib V36    -0.25870296042309093
#>     Attrib V37    -0.27658393325359043
#>     Attrib V38    0.057194787918363306
#>     Attrib V39    0.0517636861597123
#>     Attrib V4    -0.002005517007023432
#>     Attrib V40    -0.2931903477237312
#>     Attrib V41    -0.009893038304742042
#>     Attrib V42    0.11128266001400064
#>     Attrib V43    0.028381474557441878
#>     Attrib V44    0.2779975731750264
#>     Attrib V45    0.2781689694390374
#>     Attrib V46    0.3511684783524739
#>     Attrib V47    0.13764959871132892
#>     Attrib V48    0.2531867958576079
#>     Attrib V49    0.3701031724753841
#>     Attrib V5    0.02502238860921772
#>     Attrib V50    -0.3335092383063927
#>     Attrib V51    -0.05788206936950402
#>     Attrib V52    0.14740916403247606
#>     Attrib V53    0.3345065183700908
#>     Attrib V54    0.27794419648204327
#>     Attrib V55    -0.04851318626430861
#>     Attrib V56    0.13658526885278824
#>     Attrib V57    0.06148204711638055
#>     Attrib V58    0.2317342907860545
#>     Attrib V59    0.5285802013441361
#>     Attrib V6    -0.12889400901558284
#>     Attrib V60    0.2461862306227103
#>     Attrib V7    -0.0816875942336997
#>     Attrib V8    -0.25390692211725013
#>     Attrib V9    0.0338229292253337
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.47182707298979226
#>     Attrib V1    0.016687211503763955
#>     Attrib V10    0.5848164871727013
#>     Attrib V11    0.8267086279736584
#>     Attrib V12    0.7309892990330573
#>     Attrib V13    0.03184259483292243
#>     Attrib V14    -0.4954840859518666
#>     Attrib V15    0.0381237052383528
#>     Attrib V16    -0.33825815450389735
#>     Attrib V17    -0.3051547349940952
#>     Attrib V18    -0.8138449668670326
#>     Attrib V19    0.10840050646850477
#>     Attrib V2    0.10897526389633207
#>     Attrib V20    -0.2354903214508499
#>     Attrib V21    0.0342966009195882
#>     Attrib V22    0.13838099260149656
#>     Attrib V23    0.35034245859260377
#>     Attrib V24    0.6616244939440041
#>     Attrib V25    0.16637328754889474
#>     Attrib V26    0.8329709076713019
#>     Attrib V27    1.261464306260396
#>     Attrib V28    1.587513537877561
#>     Attrib V29    1.1965099561992911
#>     Attrib V3    -0.06070158012118734
#>     Attrib V30    0.5659529506944664
#>     Attrib V31    -0.9785096811682727
#>     Attrib V32    -0.6486438662677235
#>     Attrib V33    -0.6191450992169657
#>     Attrib V34    -0.027280185942191355
#>     Attrib V35    0.1848473016776765
#>     Attrib V36    -0.4795870131660343
#>     Attrib V37    -0.004828640274741084
#>     Attrib V38    0.06444484307708914
#>     Attrib V39    0.3495135919791173
#>     Attrib V4    0.0519637170956222
#>     Attrib V40    0.11496037576039994
#>     Attrib V41    1.3162135268665034
#>     Attrib V42    0.02379681115288112
#>     Attrib V43    -0.1148187059717942
#>     Attrib V44    0.19130604649532293
#>     Attrib V45    0.13270619577177703
#>     Attrib V46    1.0207212400199674
#>     Attrib V47    0.634011129132108
#>     Attrib V48    0.47643220962886135
#>     Attrib V49    0.7940800891070481
#>     Attrib V5    0.6981393450868209
#>     Attrib V50    -0.50461801293039
#>     Attrib V51    0.5809898269523719
#>     Attrib V52    0.5901729357785231
#>     Attrib V53    1.0535180078792563
#>     Attrib V54    0.5096606587806877
#>     Attrib V55    -0.6138939585096451
#>     Attrib V56    -0.3737471630977613
#>     Attrib V57    -0.9875587215430166
#>     Attrib V58    0.2634359711886655
#>     Attrib V59    0.5066416392379192
#>     Attrib V6    0.3755096038065673
#>     Attrib V60    0.33760854250136746
#>     Attrib V7    -0.10241177320579231
#>     Attrib V8    -0.5031426296189908
#>     Attrib V9    0.5120537018518934
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.13337498747110224
#>     Attrib V1    -0.3218654571886317
#>     Attrib V10    0.15681837517084135
#>     Attrib V11    -0.1923857209649124
#>     Attrib V12    -0.1893228595326637
#>     Attrib V13    0.1530737665402911
#>     Attrib V14    0.3395454959352607
#>     Attrib V15    -0.21461538895477458
#>     Attrib V16    0.07043963131871214
#>     Attrib V17    -0.037368430970439716
#>     Attrib V18    0.47583737137448834
#>     Attrib V19    -0.2829073315368466
#>     Attrib V2    0.016991842466200016
#>     Attrib V20    -0.29019506494794917
#>     Attrib V21    -0.1236922159007433
#>     Attrib V22    -0.20193167651290866
#>     Attrib V23    -0.4335982581513878
#>     Attrib V24    -0.5332601668841555
#>     Attrib V25    0.005126064944377806
#>     Attrib V26    0.34439912148333746
#>     Attrib V27    0.6711150407338601
#>     Attrib V28    0.22504282447261062
#>     Attrib V29    -0.03174178904137816
#>     Attrib V3    0.04977849446528186
#>     Attrib V30    0.15910989529468988
#>     Attrib V31    0.8910081322518961
#>     Attrib V32    -0.2647708079649135
#>     Attrib V33    -0.3539341017387604
#>     Attrib V34    -0.3300334899618026
#>     Attrib V35    -0.14962169582226992
#>     Attrib V36    0.4552250630039592
#>     Attrib V37    0.4573879614534522
#>     Attrib V38    0.0071959012102432275
#>     Attrib V39    -0.05415035320449892
#>     Attrib V4    0.18727639342016986
#>     Attrib V40    0.5940246465492305
#>     Attrib V41    0.09905430332771104
#>     Attrib V42    -0.40712399541815003
#>     Attrib V43    -0.1019109514168424
#>     Attrib V44    -0.32169157476727567
#>     Attrib V45    -0.3572421238384592
#>     Attrib V46    -0.5870425865709124
#>     Attrib V47    -0.2530765040861529
#>     Attrib V48    -0.2751425522191426
#>     Attrib V49    -0.5113533338127272
#>     Attrib V5    0.19891003385803405
#>     Attrib V50    0.6770943630239573
#>     Attrib V51    0.005718649987769185
#>     Attrib V52    -0.3037002638926928
#>     Attrib V53    -0.009296240779234818
#>     Attrib V54    -0.0369935884439798
#>     Attrib V55    0.19926155787684377
#>     Attrib V56    -0.17443444392358168
#>     Attrib V57    0.26489134360569005
#>     Attrib V58    -0.4910960286430449
#>     Attrib V59    -0.48667011789955544
#>     Attrib V6    0.4492776275356739
#>     Attrib V60    -0.026576826348042093
#>     Attrib V7    0.29264278861304477
#>     Attrib V8    0.1437260412373974
#>     Attrib V9    -0.4602367114873185
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.25884493822738763
#>     Attrib V1    0.21479345597463323
#>     Attrib V10    -0.22059818472661732
#>     Attrib V11    0.1284092131694339
#>     Attrib V12    0.20062656757672995
#>     Attrib V13    -0.22781969125574902
#>     Attrib V14    -0.2542813356964172
#>     Attrib V15    0.1751245024111339
#>     Attrib V16    -0.011300378034924022
#>     Attrib V17    0.06668023810949392
#>     Attrib V18    -0.39935528880017224
#>     Attrib V19    0.23323361218165897
#>     Attrib V2    -0.11140700724905529
#>     Attrib V20    0.19836220848884742
#>     Attrib V21    0.05140045406013931
#>     Attrib V22    -0.011613488093920644
#>     Attrib V23    0.23936941133996684
#>     Attrib V24    0.360275309583085
#>     Attrib V25    -0.10413288896770967
#>     Attrib V26    -0.3389582341297828
#>     Attrib V27    -0.4231407513185729
#>     Attrib V28    -0.004264214764230592
#>     Attrib V29    -0.006426661258462337
#>     Attrib V3    -0.1738865985013609
#>     Attrib V30    -0.06191385431299143
#>     Attrib V31    -0.7935573107644477
#>     Attrib V32    0.10145961923304532
#>     Attrib V33    0.2556473198197222
#>     Attrib V34    0.34020974542187044
#>     Attrib V35    0.19660404269296994
#>     Attrib V36    -0.40769448997241925
#>     Attrib V37    -0.4392331254174707
#>     Attrib V38    0.010986991746531194
#>     Attrib V39    -0.030143958123974437
#>     Attrib V4    -0.2313987183351207
#>     Attrib V40    -0.5095806577820297
#>     Attrib V41    -0.049446959540420415
#>     Attrib V42    0.2997279342556324
#>     Attrib V43    0.028368714218885406
#>     Attrib V44    0.36857261963005233
#>     Attrib V45    0.4137337497464185
#>     Attrib V46    0.44725776637821024
#>     Attrib V47    0.2024558861237427
#>     Attrib V48    0.33589845878773406
#>     Attrib V49    0.5114111792724582
#>     Attrib V5    -0.11832788099063916
#>     Attrib V50    -0.5308910689545098
#>     Attrib V51    -0.042439507522290726
#>     Attrib V52    0.1955524106028579
#>     Attrib V53    0.19098847596058371
#>     Attrib V54    0.1441017594305662
#>     Attrib V55    -0.22651939275249355
#>     Attrib V56    0.12819450532417756
#>     Attrib V57    -0.2057463902273205
#>     Attrib V58    0.3610386225246378
#>     Attrib V59    0.469691854732508
#>     Attrib V6    -0.2680505816787757
#>     Attrib V60    0.04546245863696032
#>     Attrib V7    -0.2450936473166091
#>     Attrib V8    -0.16795659010840866
#>     Attrib V9    0.267721318778306
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.43040159531533073
#>     Attrib V1    0.13285275879394257
#>     Attrib V10    -0.09708941537017775
#>     Attrib V11    0.2923956090605612
#>     Attrib V12    0.2631259151805043
#>     Attrib V13    -0.05749029916502463
#>     Attrib V14    -0.052055039642865196
#>     Attrib V15    0.28955695645449536
#>     Attrib V16    0.03438683452690515
#>     Attrib V17    -0.056044908978390574
#>     Attrib V18    -0.5451338826507223
#>     Attrib V19    0.06395502186552764
#>     Attrib V2    0.052399712460806165
#>     Attrib V20    -0.16242190952312127
#>     Attrib V21    -0.15625007510307756
#>     Attrib V22    -0.26202360422904586
#>     Attrib V23    -0.15845163490175884
#>     Attrib V24    -0.00911591636441136
#>     Attrib V25    -0.39961217381292935
#>     Attrib V26    -0.20045717222222983
#>     Attrib V27    0.14667393988231872
#>     Attrib V28    0.5326344270355955
#>     Attrib V29    0.4537046635118918
#>     Attrib V3    -0.14536746198606745
#>     Attrib V30    0.14306470333324808
#>     Attrib V31    -0.70662106769078
#>     Attrib V32    -0.161899707534614
#>     Attrib V33    -0.0395694379961614
#>     Attrib V34    0.07172861659923674
#>     Attrib V35    0.02014623213651394
#>     Attrib V36    -0.5168855553523234
#>     Attrib V37    -0.36157667381345004
#>     Attrib V38    -0.04602595085838131
#>     Attrib V39    -0.06321779245877465
#>     Attrib V4    -0.07213585317133014
#>     Attrib V40    -0.37808993301631083
#>     Attrib V41    0.12523285555394528
#>     Attrib V42    0.09832976767150349
#>     Attrib V43    -4.5757082363945724E-5
#>     Attrib V44    0.23006553659802292
#>     Attrib V45    0.33850142533085253
#>     Attrib V46    0.537089781428132
#>     Attrib V47    0.16544154735150934
#>     Attrib V48    0.32259647967877353
#>     Attrib V49    0.4194694232052883
#>     Attrib V5    0.1102449539109339
#>     Attrib V50    -0.471727318446055
#>     Attrib V51    -0.010426184022928432
#>     Attrib V52    0.3102318825496651
#>     Attrib V53    0.541597896537925
#>     Attrib V54    0.18830222132696747
#>     Attrib V55    -0.2905659614378421
#>     Attrib V56    0.022866362868721252
#>     Attrib V57    -0.2688438465335542
#>     Attrib V58    0.28594618175797354
#>     Attrib V59    0.5212034832406301
#>     Attrib V6    -0.0594981871013996
#>     Attrib V60    0.14193886873454756
#>     Attrib V7    -0.14714442476782524
#>     Attrib V8    -0.25556048990048247
#>     Attrib V9    0.1924573260264706
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.19229433264184964
#>     Attrib V1    0.10682631511778343
#>     Attrib V10    -0.07926490163121004
#>     Attrib V11    -0.002528936357558603
#>     Attrib V12    -0.0059597904730124196
#>     Attrib V13    0.015519020010124502
#>     Attrib V14    0.02108113912057541
#>     Attrib V15    0.030401394471017588
#>     Attrib V16    -0.02039202604927409
#>     Attrib V17    0.016912159662631116
#>     Attrib V18    -0.05830312587892981
#>     Attrib V19    -0.01497788169382192
#>     Attrib V2    0.06921571766119797
#>     Attrib V20    -0.006946785043634251
#>     Attrib V21    -0.04253410742124606
#>     Attrib V22    -0.11186187113861253
#>     Attrib V23    -0.02979693424897466
#>     Attrib V24    0.001981537362947059
#>     Attrib V25    -0.011953334726620411
#>     Attrib V26    -0.07968988181510683
#>     Attrib V27    -0.006060406253262184
#>     Attrib V28    -0.02417831492443824
#>     Attrib V29    0.035364029600541226
#>     Attrib V3    0.1298134196637249
#>     Attrib V30    0.022802295194998646
#>     Attrib V31    -0.11613455207394009
#>     Attrib V32    0.03744496054489404
#>     Attrib V33    0.07400443059190379
#>     Attrib V34    0.13433445555020057
#>     Attrib V35    0.07109430612378247
#>     Attrib V36    -0.008004369428366692
#>     Attrib V37    0.012937697704853939
#>     Attrib V38    0.044366797395131774
#>     Attrib V39    0.12558390384952695
#>     Attrib V4    0.09919413801894282
#>     Attrib V40    0.04110971193527131
#>     Attrib V41    0.042898878376815074
#>     Attrib V42    0.10083540734984249
#>     Attrib V43    0.009256475216514314
#>     Attrib V44    0.04294773977605059
#>     Attrib V45    0.05435312067761794
#>     Attrib V46    0.1359072781984079
#>     Attrib V47    0.11430567485420975
#>     Attrib V48    0.0761287890770455
#>     Attrib V49    0.12352632180862586
#>     Attrib V5    0.10627498729059173
#>     Attrib V50    -0.02278990779031561
#>     Attrib V51    0.04958082631054808
#>     Attrib V52    0.07132569703319304
#>     Attrib V53    0.10921666205066996
#>     Attrib V54    0.06622109439118005
#>     Attrib V55    0.07456864716190219
#>     Attrib V56    0.11216251038132607
#>     Attrib V57    0.08468608036010207
#>     Attrib V58    0.11430693290411803
#>     Attrib V59    0.21580417418753933
#>     Attrib V6    0.009255448915840198
#>     Attrib V60    0.18636587369485058
#>     Attrib V7    -0.006226893432138211
#>     Attrib V8    -0.03270061182929614
#>     Attrib V9    0.05120736608599333
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.5344742374055657
#>     Attrib V1    0.11605459892845753
#>     Attrib V10    0.5197279284502913
#>     Attrib V11    0.9651552090479171
#>     Attrib V12    0.8553477126482185
#>     Attrib V13    0.021982151137520934
#>     Attrib V14    -0.4222997510778207
#>     Attrib V15    0.06955785417597093
#>     Attrib V16    -0.4381558323745576
#>     Attrib V17    -0.4244838904828653
#>     Attrib V18    -0.9861309806477365
#>     Attrib V19    -0.13839938710454314
#>     Attrib V2    0.13163924632174037
#>     Attrib V20    -0.4125729542729573
#>     Attrib V21    -0.21730238801266255
#>     Attrib V22    -0.19821169898248414
#>     Attrib V23    0.0027870625465023654
#>     Attrib V24    0.3385048440393665
#>     Attrib V25    -0.03567363046953442
#>     Attrib V26    0.675390466559764
#>     Attrib V27    1.0523129081726004
#>     Attrib V28    1.2601377577202648
#>     Attrib V29    0.7928065818343019
#>     Attrib V3    -0.09502123891277739
#>     Attrib V30    0.3678403350156755
#>     Attrib V31    -0.8867607481494456
#>     Attrib V32    -0.5561985235504112
#>     Attrib V33    -0.4722779422502007
#>     Attrib V34    0.05135195282770903
#>     Attrib V35    0.2503931955894388
#>     Attrib V36    -0.4185348692753366
#>     Attrib V37    0.09373161409674016
#>     Attrib V38    0.13157109091789648
#>     Attrib V39    0.3145637855469321
#>     Attrib V4    0.022631109149019366
#>     Attrib V40    0.03166111339659014
#>     Attrib V41    0.9627014383494017
#>     Attrib V42    -0.17992181237238908
#>     Attrib V43    -0.19321861174464633
#>     Attrib V44    0.26665542092543254
#>     Attrib V45    0.1356269564899602
#>     Attrib V46    0.831239421048065
#>     Attrib V47    0.411013652452864
#>     Attrib V48    0.4626074689963471
#>     Attrib V49    0.7171667472478656
#>     Attrib V5    0.5734640428490332
#>     Attrib V50    -0.5654706609555566
#>     Attrib V51    0.3326949072593685
#>     Attrib V52    0.4180990032026484
#>     Attrib V53    0.7976278093468682
#>     Attrib V54    0.5550277090585823
#>     Attrib V55    -0.42588347804041987
#>     Attrib V56    -0.30108140576927483
#>     Attrib V57    -0.6853126626010458
#>     Attrib V58    0.35976846924113925
#>     Attrib V59    0.5938506251192645
#>     Attrib V6    0.3014854764592982
#>     Attrib V60    0.3168863797904357
#>     Attrib V7    -0.21775356663579495
#>     Attrib V8    -0.5450607648781349
#>     Attrib V9    0.42993829940001926
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.1795717697208628
#>     Attrib V1    -0.34550964641327564
#>     Attrib V10    -0.24564317524343063
#>     Attrib V11    -0.6289257721463447
#>     Attrib V12    -0.3910739163105234
#>     Attrib V13    -0.040693450367283515
#>     Attrib V14    0.1880612801774503
#>     Attrib V15    -0.24999444512164629
#>     Attrib V16    -0.0158436149998913
#>     Attrib V17    -0.09939272284636132
#>     Attrib V18    0.5507675091879848
#>     Attrib V19    -0.4733406061812909
#>     Attrib V2    0.13162662103653885
#>     Attrib V20    -0.6223876372205055
#>     Attrib V21    -0.35291144277607295
#>     Attrib V22    -0.23957540884000342
#>     Attrib V23    -0.7474272378313137
#>     Attrib V24    -0.7044638492013268
#>     Attrib V25    0.07410308990154481
#>     Attrib V26    0.5029836630232069
#>     Attrib V27    1.073926251108613
#>     Attrib V28    0.4747482584081191
#>     Attrib V29    0.2980382059634932
#>     Attrib V3    0.07096979583243525
#>     Attrib V30    0.23981167033071416
#>     Attrib V31    1.2535004672185213
#>     Attrib V32    -0.09833505493948516
#>     Attrib V33    -0.5774240361166444
#>     Attrib V34    -0.4153222221557134
#>     Attrib V35    0.03419659331602297
#>     Attrib V36    0.8480795199545812
#>     Attrib V37    1.1823835444981081
#>     Attrib V38    0.16472685502023324
#>     Attrib V39    0.07137299469607307
#>     Attrib V4    0.14080642819482705
#>     Attrib V40    0.9009050196397185
#>     Attrib V41    0.21438076865609076
#>     Attrib V42    -0.5049009295748698
#>     Attrib V43    -0.03866065459931019
#>     Attrib V44    -0.5350704732263523
#>     Attrib V45    -0.43995568228956256
#>     Attrib V46    -0.5633717872537303
#>     Attrib V47    -0.1185967828064911
#>     Attrib V48    -0.15240092562538277
#>     Attrib V49    -0.6853886984484645
#>     Attrib V5    0.1030208132530543
#>     Attrib V50    0.9987248896465281
#>     Attrib V51    0.16864898582433313
#>     Attrib V52    -0.32927354846186985
#>     Attrib V53    0.20496971534147324
#>     Attrib V54    -0.08696647173184767
#>     Attrib V55    0.1962572056256012
#>     Attrib V56    -0.01656577002494847
#>     Attrib V57    -0.029590979941961693
#>     Attrib V58    -0.7132764562739775
#>     Attrib V59    -0.6678215015483316
#>     Attrib V6    0.36862317610007106
#>     Attrib V60    0.281561174754102
#>     Attrib V7    -0.1440841410216036
#>     Attrib V8    -0.4873781250230921
#>     Attrib V9    -1.0313807385294902
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.11641584555417292
#>     Attrib V1    0.15174067367579122
#>     Attrib V10    -0.11706302464619983
#>     Attrib V11    -0.022303010353581294
#>     Attrib V12    0.030152956950081165
#>     Attrib V13    -0.012255518985669423
#>     Attrib V14    -0.010701833428275836
#>     Attrib V15    0.08303154014965411
#>     Attrib V16    0.07382061107668864
#>     Attrib V17    0.050197843481463146
#>     Attrib V18    -0.057098810226622186
#>     Attrib V19    0.03272249438513423
#>     Attrib V2    0.03265673148097468
#>     Attrib V20    -0.052634289999047
#>     Attrib V21    -0.0779075257867458
#>     Attrib V22    -0.11353403543932919
#>     Attrib V23    -0.09181534205328548
#>     Attrib V24    0.04800648813594363
#>     Attrib V25    -0.05294046130733063
#>     Attrib V26    -0.13242144565906772
#>     Attrib V27    -0.15853286693318733
#>     Attrib V28    -0.06661748843939157
#>     Attrib V29    -0.05087343890548157
#>     Attrib V3    0.0810164765619306
#>     Attrib V30    -0.07478366181161127
#>     Attrib V31    -0.20619770372282825
#>     Attrib V32    0.02593155426694625
#>     Attrib V33    0.0725739519175858
#>     Attrib V34    0.1344521333908446
#>     Attrib V35    0.0501217147604258
#>     Attrib V36    -0.09170736997126767
#>     Attrib V37    -0.07331371238213162
#>     Attrib V38    0.02672819433027774
#>     Attrib V39    0.05950451849417905
#>     Attrib V4    0.07563527870697268
#>     Attrib V40    -0.09437627408900486
#>     Attrib V41    0.015472133166900612
#>     Attrib V42    0.14434193976521525
#>     Attrib V43    0.040683805366319485
#>     Attrib V44    0.04337308769296853
#>     Attrib V45    0.12477149936396043
#>     Attrib V46    0.16082817255769621
#>     Attrib V47    0.08131627202132932
#>     Attrib V48    0.10451609771675537
#>     Attrib V49    0.1206321022211751
#>     Attrib V5    0.06975312111089921
#>     Attrib V50    -0.005427401331532211
#>     Attrib V51    0.09870402888747301
#>     Attrib V52    0.13487856128827838
#>     Attrib V53    0.19778197204557604
#>     Attrib V54    0.12262456248815105
#>     Attrib V55    0.09611380680006143
#>     Attrib V56    0.15325019273280968
#>     Attrib V57    0.10175981473256814
#>     Attrib V58    0.20222768877490593
#>     Attrib V59    0.2263302027821914
#>     Attrib V6    -0.028118368282848562
#>     Attrib V60    0.18728245324026002
#>     Attrib V7    -0.05793657541310249
#>     Attrib V8    -0.09359259762243173
#>     Attrib V9    0.053905302459188786
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.05875077582100498
#>     Attrib V1    0.19094090215717285
#>     Attrib V10    -0.09468359191418867
#>     Attrib V11    0.007307522626380571
#>     Attrib V12    -0.011837610046527922
#>     Attrib V13    -0.09409041941654919
#>     Attrib V14    -0.008485918431210517
#>     Attrib V15    0.16970630478158083
#>     Attrib V16    0.03791839699931521
#>     Attrib V17    0.01681468359545398
#>     Attrib V18    -0.10565212450051437
#>     Attrib V19    0.057061177050103176
#>     Attrib V2    0.13874354162392127
#>     Attrib V20    -0.018502060876428174
#>     Attrib V21    -0.046096863374548165
#>     Attrib V22    -0.0388046956441281
#>     Attrib V23    -0.0802957717944958
#>     Attrib V24    0.038431412050884975
#>     Attrib V25    -0.11808945667437616
#>     Attrib V26    -0.14319510333447275
#>     Attrib V27    -0.15018354129908376
#>     Attrib V28    -0.08081436687935471
#>     Attrib V29    -0.05448709839483747
#>     Attrib V3    0.053692996225956954
#>     Attrib V30    -0.005716942141265304
#>     Attrib V31    -0.1598150885600808
#>     Attrib V32    -0.03567466956719223
#>     Attrib V33    0.12445778032284846
#>     Attrib V34    0.08910607315423082
#>     Attrib V35    0.1119851794631757
#>     Attrib V36    -0.09672121290533488
#>     Attrib V37    -0.11321646289476198
#>     Attrib V38    0.07969753442341758
#>     Attrib V39    0.08652481854441456
#>     Attrib V4    0.0687738518447264
#>     Attrib V40    -0.11444136421894137
#>     Attrib V41    0.018599148994869582
#>     Attrib V42    0.09955433363973099
#>     Attrib V43    0.09389794560412924
#>     Attrib V44    0.12417238080453528
#>     Attrib V45    0.17057942742329524
#>     Attrib V46    0.1273488182874528
#>     Attrib V47    0.03927173286418687
#>     Attrib V48    0.15869825284634564
#>     Attrib V49    0.1283847671547867
#>     Attrib V5    0.07016620866918415
#>     Attrib V50    -0.059697101673703054
#>     Attrib V51    0.057946613371264964
#>     Attrib V52    0.08111374499147851
#>     Attrib V53    0.11301174669080097
#>     Attrib V54    0.13506114390799864
#>     Attrib V55    0.11516552661966015
#>     Attrib V56    0.1621796087506219
#>     Attrib V57    0.11914407544314226
#>     Attrib V58    0.13526164251281425
#>     Attrib V59    0.2505106883916448
#>     Attrib V6    -0.051500542480056206
#>     Attrib V60    0.18933500270969497
#>     Attrib V7    -0.11104273009607692
#>     Attrib V8    -0.03530840870406323
#>     Attrib V9    0.04251014960134101
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.2509334311537383
#>     Attrib V1    -0.34089076271032387
#>     Attrib V10    -0.18728480826443916
#>     Attrib V11    -0.6388413321797499
#>     Attrib V12    -0.5321197737142546
#>     Attrib V13    -0.04045183401128937
#>     Attrib V14    0.2696059331352499
#>     Attrib V15    -0.27960094092401866
#>     Attrib V16    0.04993217304972903
#>     Attrib V17    -0.09305149753901665
#>     Attrib V18    0.6427658254584045
#>     Attrib V19    -0.48636800910211064
#>     Attrib V2    0.10928500242399208
#>     Attrib V20    -0.48879629139291153
#>     Attrib V21    -0.2119112608745141
#>     Attrib V22    -0.23639362983727963
#>     Attrib V23    -0.6109142885985593
#>     Attrib V24    -0.6357012697815749
#>     Attrib V25    0.08751247024364765
#>     Attrib V26    0.35514495912400756
#>     Attrib V27    0.9067518112229861
#>     Attrib V28    0.3156246441406553
#>     Attrib V29    0.10996681485297863
#>     Attrib V3    0.10641884450412283
#>     Attrib V30    0.11190990343866837
#>     Attrib V31    1.1430161033145392
#>     Attrib V32    -0.08187656849294588
#>     Attrib V33    -0.4538495522461721
#>     Attrib V34    -0.3625806917463958
#>     Attrib V35    0.02453937417683489
#>     Attrib V36    0.9038908656544589
#>     Attrib V37    0.9892903210903442
#>     Attrib V38    0.11218854475906842
#>     Attrib V39    0.046936356619768006
#>     Attrib V4    0.1390700311386846
#>     Attrib V40    0.8100968219548015
#>     Attrib V41    0.13584890792221593
#>     Attrib V42    -0.3996134374598612
#>     Attrib V43    0.00935866486323099
#>     Attrib V44    -0.3691131858605069
#>     Attrib V45    -0.4390422702798648
#>     Attrib V46    -0.6073821628576748
#>     Attrib V47    -0.1224809244824296
#>     Attrib V48    -0.17185538938857267
#>     Attrib V49    -0.5882428163903176
#>     Attrib V5    0.06998085557329711
#>     Attrib V50    0.9149333520631461
#>     Attrib V51    0.15272641414443244
#>     Attrib V52    -0.294474343508368
#>     Attrib V53    0.12176841445694345
#>     Attrib V54    -0.10878499635823145
#>     Attrib V55    0.25332712868540275
#>     Attrib V56    -0.0010296450774822134
#>     Attrib V57    0.09492351438363006
#>     Attrib V58    -0.6311001897371933
#>     Attrib V59    -0.5693966684886518
#>     Attrib V6    0.33824637791293527
#>     Attrib V60    0.31554516399284627
#>     Attrib V7    0.08152690171566186
#>     Attrib V8    -0.24464465396796872
#>     Attrib V9    -0.9164656296025356
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.5703573935755885
#>     Attrib V1    0.10363268108295204
#>     Attrib V10    0.5454635663648991
#>     Attrib V11    0.9344944834613331
#>     Attrib V12    0.9369415508905167
#>     Attrib V13    0.1083693494325701
#>     Attrib V14    -0.35684795733467556
#>     Attrib V15    0.13304772137801504
#>     Attrib V16    -0.441554271622013
#>     Attrib V17    -0.4354907849731574
#>     Attrib V18    -1.0327736561225884
#>     Attrib V19    -0.13141694181254013
#>     Attrib V2    0.20385563423788558
#>     Attrib V20    -0.4689845535081914
#>     Attrib V21    -0.18556509464410362
#>     Attrib V22    -0.07824073951632729
#>     Attrib V23    0.005761780972976466
#>     Attrib V24    0.3870341981027791
#>     Attrib V25    -0.07057625702393025
#>     Attrib V26    0.7129393244112796
#>     Attrib V27    1.3018613696816008
#>     Attrib V28    1.5519360675095393
#>     Attrib V29    1.0637362682334632
#>     Attrib V3    -0.04104701157332303
#>     Attrib V30    0.42040107147347233
#>     Attrib V31    -0.9696404910584998
#>     Attrib V32    -0.6814763087846578
#>     Attrib V33    -0.5759613599435797
#>     Attrib V34    -0.02928808533225481
#>     Attrib V35    0.2316052725325245
#>     Attrib V36    -0.42862337009853035
#>     Attrib V37    0.15289943694261793
#>     Attrib V38    0.17174785633938766
#>     Attrib V39    0.332584783654172
#>     Attrib V4    0.10412238176268626
#>     Attrib V40    0.17636245024727348
#>     Attrib V41    1.2483101787480018
#>     Attrib V42    -0.10281194882348335
#>     Attrib V43    -0.1977006033859841
#>     Attrib V44    0.15284696542711323
#>     Attrib V45    0.20749199063295273
#>     Attrib V46    0.9170450186309612
#>     Attrib V47    0.39690217574281744
#>     Attrib V48    0.38412150625718944
#>     Attrib V49    0.6920147338646
#>     Attrib V5    0.7594498446958714
#>     Attrib V50    -0.6406909764697881
#>     Attrib V51    0.40915468477880734
#>     Attrib V52    0.4889399576123511
#>     Attrib V53    0.8920205698913469
#>     Attrib V54    0.5832973695776382
#>     Attrib V55    -0.4744773788692591
#>     Attrib V56    -0.45292901783477735
#>     Attrib V57    -0.856709530163054
#>     Attrib V58    0.36453169652108663
#>     Attrib V59    0.6420589723061229
#>     Attrib V6    0.46853770634151876
#>     Attrib V60    0.4199394142301766
#>     Attrib V7    -0.1545376063757471
#>     Attrib V8    -0.6506156181815547
#>     Attrib V9    0.42082476212639364
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3999211297649852
#>     Attrib V1    0.16532227150997825
#>     Attrib V10    0.004819194359815482
#>     Attrib V11    0.37080647762125696
#>     Attrib V12    0.4376802403620886
#>     Attrib V13    -0.037717113753946055
#>     Attrib V14    -0.11379320208628319
#>     Attrib V15    0.1845628948989661
#>     Attrib V16    -0.17588134306601566
#>     Attrib V17    -0.1893721681138976
#>     Attrib V18    -0.5891278365974681
#>     Attrib V19    0.01278383613888822
#>     Attrib V2    0.016139101352293468
#>     Attrib V20    -0.16937308172674534
#>     Attrib V21    -0.09840302402628984
#>     Attrib V22    -0.20479920959554584
#>     Attrib V23    -0.08235539540848423
#>     Attrib V24    0.18671080922368632
#>     Attrib V25    -0.12571057073428496
#>     Attrib V26    0.19121628318144018
#>     Attrib V27    0.4492776764756672
#>     Attrib V28    0.6483527644885282
#>     Attrib V29    0.5024066739142911
#>     Attrib V3    -0.12577379499798794
#>     Attrib V30    0.20563086281998613
#>     Attrib V31    -0.622895793845022
#>     Attrib V32    -0.3300171752351885
#>     Attrib V33    -0.23690502637247607
#>     Attrib V34    0.041347267303269444
#>     Attrib V35    0.11097189294216206
#>     Attrib V36    -0.24908739861396112
#>     Attrib V37    -0.07078209838364607
#>     Attrib V38    0.12179511924105112
#>     Attrib V39    0.12897199373160473
#>     Attrib V4    -0.0710491654737327
#>     Attrib V40    -0.23400395662375895
#>     Attrib V41    0.25729971956611164
#>     Attrib V42    -0.005405560943527666
#>     Attrib V43    0.011113645076815927
#>     Attrib V44    0.3886058795335034
#>     Attrib V45    0.29934263938621286
#>     Attrib V46    0.4803323500802888
#>     Attrib V47    0.17024460510168565
#>     Attrib V48    0.27238613674477175
#>     Attrib V49    0.45745752160853703
#>     Attrib V5    0.25704021551361134
#>     Attrib V50    -0.44680846179049594
#>     Attrib V51    0.05026924408640587
#>     Attrib V52    0.25531144095485725
#>     Attrib V53    0.4456562478328492
#>     Attrib V54    0.3971693552835065
#>     Attrib V55    -0.16121070742590587
#>     Attrib V56    -0.06005904470330671
#>     Attrib V57    -0.26571450237844585
#>     Attrib V58    0.2983153731256598
#>     Attrib V59    0.5336920571445054
#>     Attrib V6    0.008392054808098
#>     Attrib V60    0.1618133235446581
#>     Attrib V7    -0.12238236018821888
#>     Attrib V8    -0.38308791620480814
#>     Attrib V9    0.17047306690777866
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.18886863453772051
#>     Attrib V1    -0.6186393969376741
#>     Attrib V10    -0.027459629971172128
#>     Attrib V11    -1.1659210408001883
#>     Attrib V12    -0.8663620173679444
#>     Attrib V13    -0.16730754285974017
#>     Attrib V14    0.2694447186695624
#>     Attrib V15    -0.6722929943885825
#>     Attrib V16    0.046192078116308974
#>     Attrib V17    0.0014262303166982218
#>     Attrib V18    1.2674226689859183
#>     Attrib V19    -0.296593172623944
#>     Attrib V2    -0.06097287102931186
#>     Attrib V20    -0.40154757199334956
#>     Attrib V21    -0.11627345478405052
#>     Attrib V22    -0.5032996295830111
#>     Attrib V23    -1.4127037523605912
#>     Attrib V24    -1.498742108584414
#>     Attrib V25    -0.2636245503258327
#>     Attrib V26    0.1433945350475206
#>     Attrib V27    1.1199915655844859
#>     Attrib V28    0.4571178164099583
#>     Attrib V29    0.11627898462120541
#>     Attrib V3    -0.17913448150565828
#>     Attrib V30    -0.1409159298116961
#>     Attrib V31    1.4416743770963079
#>     Attrib V32    0.036833130060252815
#>     Attrib V33    -0.3586682001150464
#>     Attrib V34    -0.47647473557575415
#>     Attrib V35    0.5449900032053341
#>     Attrib V36    1.915335583611251
#>     Attrib V37    1.9766178317569572
#>     Attrib V38    0.48801391326275645
#>     Attrib V39    -0.03937606005857758
#>     Attrib V4    0.11236624154089943
#>     Attrib V40    1.1316344501010835
#>     Attrib V41    0.16703196590144426
#>     Attrib V42    -0.2809076718668939
#>     Attrib V43    0.5324438612767671
#>     Attrib V44    -0.14472752956885548
#>     Attrib V45    -0.4004932948222648
#>     Attrib V46    -0.7331706689188943
#>     Attrib V47    -0.16091467400307197
#>     Attrib V48    -0.12631220130846307
#>     Attrib V49    -0.7490893558680536
#>     Attrib V5    -0.05358347558635789
#>     Attrib V50    1.760373922887332
#>     Attrib V51    -0.061156610548362265
#>     Attrib V52    -0.46936547468132994
#>     Attrib V53    -0.09625067286601327
#>     Attrib V54    -0.42798489437473874
#>     Attrib V55    -7.233323829956631E-4
#>     Attrib V56    -0.14540231737258436
#>     Attrib V57    0.28527804632417364
#>     Attrib V58    -1.0543916157705921
#>     Attrib V59    -0.7347606110996363
#>     Attrib V6    0.4871193064850519
#>     Attrib V60    0.8271298015601039
#>     Attrib V7    0.40543428007482896
#>     Attrib V8    -0.13996916313925523
#>     Attrib V9    -1.1205465144320734
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.1206797563292374
#>     Attrib V1    0.5647437614926283
#>     Attrib V10    -0.5923727122126836
#>     Attrib V11    -0.20050838861778464
#>     Attrib V12    0.036441668649835626
#>     Attrib V13    -0.3683186160314592
#>     Attrib V14    -0.19894975357993522
#>     Attrib V15    0.33722946151533556
#>     Attrib V16    0.22713517261642333
#>     Attrib V17    0.15205548528827614
#>     Attrib V18    -0.4164130489953641
#>     Attrib V19    0.3105433545299269
#>     Attrib V2    -0.08199619876566487
#>     Attrib V20    0.38617924621018485
#>     Attrib V21    0.04949919101186294
#>     Attrib V22    -0.1022150617871287
#>     Attrib V23    0.27341780053847203
#>     Attrib V24    0.5883747634018295
#>     Attrib V25    -0.09217107186556811
#>     Attrib V26    -0.7980377870479952
#>     Attrib V27    -1.4723931047756182
#>     Attrib V28    -1.2640914480160392
#>     Attrib V29    -0.8727243676349823
#>     Attrib V3    -0.13935831917536434
#>     Attrib V30    -0.5609226892904662
#>     Attrib V31    -0.7136111819543947
#>     Attrib V32    0.4743209679361195
#>     Attrib V33    0.8258752117791619
#>     Attrib V34    0.8116465052209385
#>     Attrib V35    0.2978260341474694
#>     Attrib V36    -0.5078496049404239
#>     Attrib V37    -0.733925227744244
#>     Attrib V38    -0.1351339667603509
#>     Attrib V39    -0.09520952843232001
#>     Attrib V4    -0.2629710573238634
#>     Attrib V40    -0.69468687529815
#>     Attrib V41    -0.4451889867964671
#>     Attrib V42    0.44957474011803106
#>     Attrib V43    0.1012967406021692
#>     Attrib V44    0.21445566197728227
#>     Attrib V45    0.29280414173287367
#>     Attrib V46    0.33479095085751526
#>     Attrib V47    0.027652803518561416
#>     Attrib V48    0.4421026670216573
#>     Attrib V49    0.5999568874366419
#>     Attrib V5    -0.3065511315036012
#>     Attrib V50    -0.6012999636900666
#>     Attrib V51    -0.18321964744201144
#>     Attrib V52    0.21295022506719627
#>     Attrib V53    0.04467539025139737
#>     Attrib V54    0.3558996907635164
#>     Attrib V55    0.16144034437815416
#>     Attrib V56    0.5229827621789161
#>     Attrib V57    0.2581429601613567
#>     Attrib V58    0.6146966535019255
#>     Attrib V59    0.9314391757899978
#>     Attrib V6    -0.31284326569955956
#>     Attrib V60    0.2331683404340314
#>     Attrib V7    -0.03787703415992045
#>     Attrib V8    -0.24972053373796846
#>     Attrib V9    0.16680278170768062
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.13178639356526692
#>     Attrib V1    0.5585594417759367
#>     Attrib V10    -0.44995147819907755
#>     Attrib V11    0.08686844751607116
#>     Attrib V12    0.17048604545635282
#>     Attrib V13    -0.30140535381699074
#>     Attrib V14    -0.24276124904278318
#>     Attrib V15    0.39708113837230696
#>     Attrib V16    0.17320646050128727
#>     Attrib V17    0.1923224693668427
#>     Attrib V18    -0.45797470976690074
#>     Attrib V19    0.49027690792467093
#>     Attrib V2    -0.10751872311023883
#>     Attrib V20    0.43265858206465346
#>     Attrib V21    0.13563989744168817
#>     Attrib V22    0.11405684944627034
#>     Attrib V23    0.5938751286712808
#>     Attrib V24    0.708502496469522
#>     Attrib V25    -0.024290354095458624
#>     Attrib V26    -0.6358557714241412
#>     Attrib V27    -1.3178939418849287
#>     Attrib V28    -0.8298134748840682
#>     Attrib V29    -0.5083632265855187
#>     Attrib V3    -0.11125151305908725
#>     Attrib V30    -0.37607380587526257
#>     Attrib V31    -1.0206103141889393
#>     Attrib V32    0.40057283447002495
#>     Attrib V33    0.6862994940616575
#>     Attrib V34    0.5948494309075375
#>     Attrib V35    0.22723720167084854
#>     Attrib V36    -0.6833288497006964
#>     Attrib V37    -0.8989539820814032
#>     Attrib V38    -0.14653382766115672
#>     Attrib V39    -0.055619324584335855
#>     Attrib V4    -0.2251704935853593
#>     Attrib V40    -0.8764884595178157
#>     Attrib V41    -0.42324737968680004
#>     Attrib V42    0.4850200757039387
#>     Attrib V43    0.10260666034958195
#>     Attrib V44    0.3866142783599668
#>     Attrib V45    0.5339056069460153
#>     Attrib V46    0.5683624432393345
#>     Attrib V47    0.29767284652943643
#>     Attrib V48    0.43597659591813154
#>     Attrib V49    0.7877828734563056
#>     Attrib V5    -0.39162728933317975
#>     Attrib V50    -0.6455690779981883
#>     Attrib V51    -0.11382741260732328
#>     Attrib V52    0.43432185573682347
#>     Attrib V53    0.20135184074774612
#>     Attrib V54    0.19671656844351457
#>     Attrib V55    -0.001334828658524276
#>     Attrib V56    0.4625471961180572
#>     Attrib V57    -0.007728843200763079
#>     Attrib V58    0.6619411343115735
#>     Attrib V59    0.8603241521995332
#>     Attrib V6    -0.5664793573237883
#>     Attrib V60    0.002468640720571331
#>     Attrib V7    -0.17807804580523437
#>     Attrib V8    -0.04917351569263528
#>     Attrib V9    0.39468105625183014
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.20978772115527913
#>     Attrib V1    -0.28559965857611713
#>     Attrib V10    0.08697118740996851
#>     Attrib V11    -0.2416797957184902
#>     Attrib V12    -0.23093815710383575
#>     Attrib V13    0.11054042597860392
#>     Attrib V14    0.4138996569062979
#>     Attrib V15    0.023782592465239945
#>     Attrib V16    0.23259551636030423
#>     Attrib V17    0.19004479709051908
#>     Attrib V18    0.5322559780641635
#>     Attrib V19    -0.15729390364143908
#>     Attrib V2    0.035426881085491434
#>     Attrib V20    -0.16834203507360043
#>     Attrib V21    -0.08813597902624973
#>     Attrib V22    -0.15995088102903304
#>     Attrib V23    -0.3507731216331478
#>     Attrib V24    -0.4505312534222812
#>     Attrib V25    0.0777678517779632
#>     Attrib V26    0.2967696708650672
#>     Attrib V27    0.43380489556037405
#>     Attrib V28    0.068002547359012
#>     Attrib V29    -0.1546481520278555
#>     Attrib V3    0.09268226700613141
#>     Attrib V30    -0.0027963640951874287
#>     Attrib V31    0.7642582482420515
#>     Attrib V32    -0.17768792081953294
#>     Attrib V33    -0.4535342513541701
#>     Attrib V34    -0.42533282482847085
#>     Attrib V35    -0.26852134776204933
#>     Attrib V36    0.3504832452198987
#>     Attrib V37    0.23027098114780398
#>     Attrib V38    -0.0986344060356489
#>     Attrib V39    -0.0838299474229041
#>     Attrib V4    0.2800735897731926
#>     Attrib V40    0.4867272280937096
#>     Attrib V41    -0.12201618484303242
#>     Attrib V42    -0.4560643765596291
#>     Attrib V43    -0.13907118019732184
#>     Attrib V44    -0.46218309797351625
#>     Attrib V45    -0.4264041586202673
#>     Attrib V46    -0.522140232871662
#>     Attrib V47    -0.14763098591494558
#>     Attrib V48    -0.19146843673596722
#>     Attrib V49    -0.4253572296144898
#>     Attrib V5    0.14096211770766165
#>     Attrib V50    0.7460667899204758
#>     Attrib V51    0.13196745609708888
#>     Attrib V52    -0.12143034556245452
#>     Attrib V53    0.0010220999144683852
#>     Attrib V54    0.027443065856829093
#>     Attrib V55    0.387302920291192
#>     Attrib V56    0.008920042974723588
#>     Attrib V57    0.39909378696263403
#>     Attrib V58    -0.35320781527626627
#>     Attrib V59    -0.3774675115834894
#>     Attrib V6    0.3857386029913581
#>     Attrib V60    0.034380440608358355
#>     Attrib V7    0.27366698591968636
#>     Attrib V8    0.22184212361785627
#>     Attrib V9    -0.37239353743014914
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5706969036742818
#>     Attrib V1    0.05845599683944122
#>     Attrib V10    0.5928912748230476
#>     Attrib V11    0.6436623502162403
#>     Attrib V12    0.45877778076831516
#>     Attrib V13    -0.07151639027131014
#>     Attrib V14    -0.42214796506923574
#>     Attrib V15    0.3206331910043992
#>     Attrib V16    -0.11427117982263459
#>     Attrib V17    -0.1424764973218721
#>     Attrib V18    -0.8160190823338349
#>     Attrib V19    0.20594159044482316
#>     Attrib V2    0.1748193268140918
#>     Attrib V20    -0.17729646157109
#>     Attrib V21    0.282250559497703
#>     Attrib V22    0.5824676033372739
#>     Attrib V23    0.721813980241832
#>     Attrib V24    0.6957279509795141
#>     Attrib V25    -0.2381171892687595
#>     Attrib V26    0.5595865197566674
#>     Attrib V27    1.439577379589209
#>     Attrib V28    2.385009335864466
#>     Attrib V29    2.2050763272206524
#>     Attrib V3    -5.626471306627471E-4
#>     Attrib V30    1.0609794342114536
#>     Attrib V31    -1.315203220371315
#>     Attrib V32    -0.836598908225206
#>     Attrib V33    -0.85936649343368
#>     Attrib V34    -0.31364156805201265
#>     Attrib V35    0.01081813691735122
#>     Attrib V36    -0.753946810522566
#>     Attrib V37    -0.076434529763631
#>     Attrib V38    -0.0854786293579601
#>     Attrib V39    0.2342698232896879
#>     Attrib V4    0.15564333611246656
#>     Attrib V40    0.07419210076835828
#>     Attrib V41    1.8670671408961952
#>     Attrib V42    0.37028159694971574
#>     Attrib V43    -0.16353968385934073
#>     Attrib V44    0.5804791944507779
#>     Attrib V45    0.4727911755209252
#>     Attrib V46    1.4939010903058791
#>     Attrib V47    0.7952837562149859
#>     Attrib V48    0.45197114578293746
#>     Attrib V49    0.9030818098757747
#>     Attrib V5    0.939127269011686
#>     Attrib V50    -0.6857371460163775
#>     Attrib V51    0.6537614979202242
#>     Attrib V52    0.7004652217357833
#>     Attrib V53    1.1587318815445653
#>     Attrib V54    0.4145841230838906
#>     Attrib V55    -1.0318564225701772
#>     Attrib V56    -0.5136374665699553
#>     Attrib V57    -1.3392744739807334
#>     Attrib V58    0.36416887971744716
#>     Attrib V59    0.5578552881157683
#>     Attrib V6    0.5665512721224055
#>     Attrib V60    0.5920186956261055
#>     Attrib V7    0.039164101056834634
#>     Attrib V8    -0.5211542372790451
#>     Attrib V9    0.6754340686179996
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.07742048955680073
#>     Attrib V1    -0.4502710803328419
#>     Attrib V10    0.17707353350518845
#>     Attrib V11    -0.22426821386470278
#>     Attrib V12    -0.16955195920646607
#>     Attrib V13    0.1282944064599835
#>     Attrib V14    0.3260413263969506
#>     Attrib V15    -0.28625960020770624
#>     Attrib V16    -0.0058167862763226896
#>     Attrib V17    -0.025910594160495574
#>     Attrib V18    0.42037881891344203
#>     Attrib V19    -0.3258247153044704
#>     Attrib V2    -0.014915033207050461
#>     Attrib V20    -0.3591400283840711
#>     Attrib V21    -0.13070730894157334
#>     Attrib V22    -0.2019990395605559
#>     Attrib V23    -0.5353495314593671
#>     Attrib V24    -0.5848686001603307
#>     Attrib V25    0.04580070174035837
#>     Attrib V26    0.4002317464022968
#>     Attrib V27    0.8881995361186217
#>     Attrib V28    0.3671161597316404
#>     Attrib V29    0.017714088801960556
#>     Attrib V3    0.0032075548295847317
#>     Attrib V30    0.10473024722203021
#>     Attrib V31    0.903604236639019
#>     Attrib V32    -0.28643114632621497
#>     Attrib V33    -0.4344200483961217
#>     Attrib V34    -0.4084836100186648
#>     Attrib V35    -0.08478682440477146
#>     Attrib V36    0.6433059775771989
#>     Attrib V37    0.69778504755925
#>     Attrib V38    0.02021673067201447
#>     Attrib V39    0.02140390487940997
#>     Attrib V4    0.2389700058335757
#>     Attrib V40    0.6923918704796367
#>     Attrib V41    0.18157974826196013
#>     Attrib V42    -0.45172893635774247
#>     Attrib V43    -0.07468239907134905
#>     Attrib V44    -0.3458667926157008
#>     Attrib V45    -0.4317160842988601
#>     Attrib V46    -0.649914147202473
#>     Attrib V47    -0.312313087300076
#>     Attrib V48    -0.24816102416613672
#>     Attrib V49    -0.5951896924865665
#>     Attrib V5    0.19005761301392776
#>     Attrib V50    0.6642014453658627
#>     Attrib V51    -0.04411179549136556
#>     Attrib V52    -0.3810596112652358
#>     Attrib V53    -0.09031873064491465
#>     Attrib V54    -0.0829107353565951
#>     Attrib V55    0.1672227694922804
#>     Attrib V56    -0.20288760904806685
#>     Attrib V57    0.3104067209236956
#>     Attrib V58    -0.562355225294439
#>     Attrib V59    -0.4933710558823783
#>     Attrib V6    0.5198992247757367
#>     Attrib V60    0.1169870061666278
#>     Attrib V7    0.2827439263703378
#>     Attrib V8    0.11292826491712384
#>     Attrib V9    -0.5317490742477426
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.4981095761952618
#>     Attrib V1    0.13352903555380513
#>     Attrib V10    0.2997742359305823
#>     Attrib V11    0.7173068542253922
#>     Attrib V12    0.641575153248924
#>     Attrib V13    -6.154998663876255E-4
#>     Attrib V14    -0.326864361473416
#>     Attrib V15    0.07352494708141485
#>     Attrib V16    -0.30627885373387853
#>     Attrib V17    -0.3700921183967825
#>     Attrib V18    -0.8007643853666446
#>     Attrib V19    -0.122150481592181
#>     Attrib V2    0.06173483007197334
#>     Attrib V20    -0.4008210210194001
#>     Attrib V21    -0.22347352916153024
#>     Attrib V22    -0.281540383282459
#>     Attrib V23    -0.14442247926359683
#>     Attrib V24    0.27028546652275515
#>     Attrib V25    -0.10115468035471627
#>     Attrib V26    0.4490059501880393
#>     Attrib V27    0.7061355400130302
#>     Attrib V28    0.8873883405321794
#>     Attrib V29    0.5590357576703416
#>     Attrib V3    -0.08806222083544582
#>     Attrib V30    0.22935478659208045
#>     Attrib V31    -0.7310196014383804
#>     Attrib V32    -0.36474399015503495
#>     Attrib V33    -0.32197781865058883
#>     Attrib V34    0.12056763056821648
#>     Attrib V35    0.17352988348536322
#>     Attrib V36    -0.35409936892105365
#>     Attrib V37    -0.0637919927497479
#>     Attrib V38    0.1092909160369917
#>     Attrib V39    0.22620779133494107
#>     Attrib V4    -0.015095719882026674
#>     Attrib V40    -0.17475370353801128
#>     Attrib V41    0.535116297724483
#>     Attrib V42    -0.10667136237161541
#>     Attrib V43    -0.15021213767503946
#>     Attrib V44    0.29928764856999457
#>     Attrib V45    0.2859647468370995
#>     Attrib V46    0.6201075255943447
#>     Attrib V47    0.2753038943348062
#>     Attrib V48    0.3961093443918498
#>     Attrib V49    0.5605917982734084
#>     Attrib V5    0.3601877057620145
#>     Attrib V50    -0.4699979395442237
#>     Attrib V51    0.17841015475507413
#>     Attrib V52    0.3530107059796617
#>     Attrib V53    0.6568821063906334
#>     Attrib V54    0.43426250086923257
#>     Attrib V55    -0.2635195107653658
#>     Attrib V56    -0.2275836692053807
#>     Attrib V57    -0.4227540015102882
#>     Attrib V58    0.35901183691238353
#>     Attrib V59    0.5490792255191336
#>     Attrib V6    0.11525236123399958
#>     Attrib V60    0.18080721941910427
#>     Attrib V7    -0.26780479932045087
#>     Attrib V8    -0.36400508374863194
#>     Attrib V9    0.35734854348673173
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.19332021017555034
#>     Attrib V1    -0.46063838963885717
#>     Attrib V10    -0.15238968044020249
#>     Attrib V11    -1.0158238676621631
#>     Attrib V12    -0.8101384140037045
#>     Attrib V13    -0.15442646714846714
#>     Attrib V14    0.28065979407925784
#>     Attrib V15    -0.511380118674588
#>     Attrib V16    -0.0023229099754891406
#>     Attrib V17    -0.2076392289501267
#>     Attrib V18    0.847569113239018
#>     Attrib V19    -0.4131972600097223
#>     Attrib V2    -0.04271846391107483
#>     Attrib V20    -0.4924188184551883
#>     Attrib V21    -0.23524150716763018
#>     Attrib V22    -0.3999105855892769
#>     Attrib V23    -0.9407118736908611
#>     Attrib V24    -0.9662104625810409
#>     Attrib V25    -0.16353185922013855
#>     Attrib V26    0.02518872669232864
#>     Attrib V27    0.782273424252916
#>     Attrib V28    0.3466823462324814
#>     Attrib V29    0.08837334466861296
#>     Attrib V3    -0.0558562107909707
#>     Attrib V30    -0.09356011594954283
#>     Attrib V31    1.0558081874178626
#>     Attrib V32    0.1146457748604751
#>     Attrib V33    -0.4147336817765827
#>     Attrib V34    -0.44596366318356007
#>     Attrib V35    0.4724961088114747
#>     Attrib V36    1.6452335663114936
#>     Attrib V37    1.5559113318352362
#>     Attrib V38    0.5303845374104736
#>     Attrib V39    0.03923163793861743
#>     Attrib V4    0.16315109092900892
#>     Attrib V40    0.8576568027133397
#>     Attrib V41    0.12486413417271558
#>     Attrib V42    -0.20646391394521452
#>     Attrib V43    0.36870646385204375
#>     Attrib V44    -0.03959981790320524
#>     Attrib V45    -0.19470817360129772
#>     Attrib V46    -0.6250771290154735
#>     Attrib V47    -0.20135281329302737
#>     Attrib V48    -0.09560497980555775
#>     Attrib V49    -0.4999294930580071
#>     Attrib V5    -0.2515032942941472
#>     Attrib V50    1.4261330318635903
#>     Attrib V51    -0.06561847514182076
#>     Attrib V52    -0.2511578434600836
#>     Attrib V53    0.03620224802314237
#>     Attrib V54    -0.25824497649459777
#>     Attrib V55    0.07742694661795896
#>     Attrib V56    -0.00163955082440206
#>     Attrib V57    0.20226792229857776
#>     Attrib V58    -0.7289090573541321
#>     Attrib V59    -0.527896702074175
#>     Attrib V6    0.3040662190889703
#>     Attrib V60    0.5605883023884665
#>     Attrib V7    0.3365837049224303
#>     Attrib V8    -0.017544058222475335
#>     Attrib V9    -0.9702206170082287
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.13934734764533574
#>     Attrib V1    0.2817652855907675
#>     Attrib V10    -0.3519238295561586
#>     Attrib V11    0.03805402945750677
#>     Attrib V12    0.13252871093337992
#>     Attrib V13    -0.15852449939582386
#>     Attrib V14    -0.05417292452998764
#>     Attrib V15    0.27117150630140907
#>     Attrib V16    0.07312580319632941
#>     Attrib V17    0.07809267540150984
#>     Attrib V18    -0.2769844249677903
#>     Attrib V19    0.15108180097935306
#>     Attrib V2    -0.0178275103526768
#>     Attrib V20    0.1615121132621575
#>     Attrib V21    0.0670737988699701
#>     Attrib V22    9.835245511726567E-4
#>     Attrib V23    0.1222144416680224
#>     Attrib V24    0.3510219785498612
#>     Attrib V25    -0.03949473474570014
#>     Attrib V26    -0.3814968713490946
#>     Attrib V27    -0.5603276210593147
#>     Attrib V28    -0.32100902151111455
#>     Attrib V29    -0.15842695144869878
#>     Attrib V3    -0.027787890313312903
#>     Attrib V30    -0.25452532534178246
#>     Attrib V31    -0.6175789372870832
#>     Attrib V32    0.07786229883576397
#>     Attrib V33    0.2109385444064196
#>     Attrib V34    0.2603611607782991
#>     Attrib V35    0.1247623111325156
#>     Attrib V36    -0.3462077246401698
#>     Attrib V37    -0.3535846640978715
#>     Attrib V38    -0.013504362967670607
#>     Attrib V39    0.032258085755179466
#>     Attrib V4    -0.1549929382472902
#>     Attrib V40    -0.407127090825809
#>     Attrib V41    -0.12538471714986382
#>     Attrib V42    0.1851212344352826
#>     Attrib V43    0.07448242333954401
#>     Attrib V44    0.1990064905671127
#>     Attrib V45    0.32453195291928194
#>     Attrib V46    0.33312587464145654
#>     Attrib V47    0.13302489820419508
#>     Attrib V48    0.22106900843086702
#>     Attrib V49    0.36780806295216445
#>     Attrib V5    -0.1331044725369618
#>     Attrib V50    -0.3470448817709175
#>     Attrib V51    -0.03996112295642021
#>     Attrib V52    0.21456450142070815
#>     Attrib V53    0.19893593148034744
#>     Attrib V54    0.21172338928465462
#>     Attrib V55    0.031812559730131404
#>     Attrib V56    0.2448700469623665
#>     Attrib V57    0.015439186394099866
#>     Attrib V58    0.30209433075278114
#>     Attrib V59    0.5253922225032838
#>     Attrib V6    -0.1952772093098379
#>     Attrib V60    0.1815902542263698
#>     Attrib V7    -0.12281058780635859
#>     Attrib V8    -0.20686070264612272
#>     Attrib V9    0.07025883777109562
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1561439456117102
#>     Attrib V1    0.0483042424880182
#>     Attrib V10    0.10659238795266378
#>     Attrib V11    0.014845186883914079
#>     Attrib V12    -0.004316972427248467
#>     Attrib V13    0.025755832303679442
#>     Attrib V14    0.04324699253493487
#>     Attrib V15    0.022876738160330975
#>     Attrib V16    0.06206594323016769
#>     Attrib V17    0.097449135100187
#>     Attrib V18    0.06720864167602345
#>     Attrib V19    -0.03920347049270402
#>     Attrib V2    0.0775055233410775
#>     Attrib V20    -0.05597000348572983
#>     Attrib V21    -0.005959466844612046
#>     Attrib V22    -0.025881709821167772
#>     Attrib V23    -0.05706091744466679
#>     Attrib V24    -0.10375857151880366
#>     Attrib V25    0.0057106319688029926
#>     Attrib V26    0.020341483279700947
#>     Attrib V27    0.009056341290243398
#>     Attrib V28    0.0224244307770183
#>     Attrib V29    -0.04079196335860845
#>     Attrib V3    0.05333733591996864
#>     Attrib V30    0.04281528495303977
#>     Attrib V31    0.1328001304938117
#>     Attrib V32    -0.017447163292171945
#>     Attrib V33    -0.030348336674894245
#>     Attrib V34    -0.028279801331216797
#>     Attrib V35    0.052453433548933844
#>     Attrib V36    0.07582958102281345
#>     Attrib V37    0.11841055555480028
#>     Attrib V38    3.086507593811593E-4
#>     Attrib V39    0.10166557044005663
#>     Attrib V4    0.12348568323902938
#>     Attrib V40    0.12273697276018689
#>     Attrib V41    0.024173876167100858
#>     Attrib V42    0.044901248206377815
#>     Attrib V43    -0.01124863585836596
#>     Attrib V44    -0.06329832883577376
#>     Attrib V45    0.00847601938518694
#>     Attrib V46    -0.01024972917913602
#>     Attrib V47    0.0017484378590889634
#>     Attrib V48    0.03733027517689882
#>     Attrib V49    -0.05650851458857258
#>     Attrib V5    0.03253068708721783
#>     Attrib V50    0.07082242617883946
#>     Attrib V51    0.031031947464410823
#>     Attrib V52    0.037539360063147
#>     Attrib V53    0.032180954537674625
#>     Attrib V54    -1.5029156268388193E-4
#>     Attrib V55    0.06188229072788781
#>     Attrib V56    0.09157771900142936
#>     Attrib V57    0.07955528998259921
#>     Attrib V58    0.051161873571482476
#>     Attrib V59    0.048033007804223864
#>     Attrib V6    0.08227907859033731
#>     Attrib V60    0.09075985199743464
#>     Attrib V7    0.003861015190334057
#>     Attrib V8    0.09319202742265655
#>     Attrib V9    0.03930614170208208
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.049216908036550995
#>     Attrib V1    0.601351165781304
#>     Attrib V10    -0.5829730546688879
#>     Attrib V11    -0.06271535468390645
#>     Attrib V12    0.0509963289593155
#>     Attrib V13    -0.33331425906697304
#>     Attrib V14    -0.21094292072686593
#>     Attrib V15    0.41235442794543936
#>     Attrib V16    0.2128422416178629
#>     Attrib V17    0.2092021699359526
#>     Attrib V18    -0.3831363690447464
#>     Attrib V19    0.47069762215230515
#>     Attrib V2    -0.04095342522517963
#>     Attrib V20    0.49968526697228755
#>     Attrib V21    -0.008125195853915296
#>     Attrib V22    -0.0450934572221125
#>     Attrib V23    0.4676829323006892
#>     Attrib V24    0.7105864422548965
#>     Attrib V25    -0.031293457338374804
#>     Attrib V26    -0.763132206612778
#>     Attrib V27    -1.6455095833093498
#>     Attrib V28    -1.3736322213379264
#>     Attrib V29    -1.0184375377738177
#>     Attrib V3    -0.15179077289189616
#>     Attrib V30    -0.6081105198448316
#>     Attrib V31    -0.8345609591348815
#>     Attrib V32    0.5438256608556388
#>     Attrib V33    0.9993873743604456
#>     Attrib V34    0.9235862849642509
#>     Attrib V35    0.3705538891538491
#>     Attrib V36    -0.6567410453610346
#>     Attrib V37    -1.0008084687193548
#>     Attrib V38    -0.18319672319689062
#>     Attrib V39    -0.14835833005954488
#>     Attrib V4    -0.27394489046230114
#>     Attrib V40    -0.8530425545999499
#>     Attrib V41    -0.55869079221587
#>     Attrib V42    0.53955066608788
#>     Attrib V43    0.11566871959185848
#>     Attrib V44    0.2504627816493221
#>     Attrib V45    0.3730468205699977
#>     Attrib V46    0.3662796654761473
#>     Attrib V47    0.15005763714786863
#>     Attrib V48    0.5248461658786597
#>     Attrib V49    0.7499478299109981
#>     Attrib V5    -0.43399148582499875
#>     Attrib V50    -0.6094971409686841
#>     Attrib V51    -0.14745262177868343
#>     Attrib V52    0.3230114165482102
#>     Attrib V53    0.13039913624512298
#>     Attrib V54    0.38102125255426844
#>     Attrib V55    0.23493351884199043
#>     Attrib V56    0.5312656715501207
#>     Attrib V57    0.2657196701721006
#>     Attrib V58    0.6548393895588672
#>     Attrib V59    0.9694112158215752
#>     Attrib V6    -0.5025031891138914
#>     Attrib V60    0.12098929380833423
#>     Attrib V7    -0.10619824225327493
#>     Attrib V8    -0.05912620339713307
#>     Attrib V9    0.3275171555237992
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.10177821259994442
#>     Attrib V1    0.19247382096723364
#>     Attrib V10    -0.1877863764234803
#>     Attrib V11    -0.023374397545471187
#>     Attrib V12    -0.0026781180488838364
#>     Attrib V13    -0.09510312320167758
#>     Attrib V14    0.06129684421099579
#>     Attrib V15    0.12577697536502222
#>     Attrib V16    0.06699770403735268
#>     Attrib V17    0.003093284449934978
#>     Attrib V18    -0.02737835333052468
#>     Attrib V19    -5.010677965883214E-4
#>     Attrib V2    0.05990871793651443
#>     Attrib V20    0.02153929855415528
#>     Attrib V21    -0.00252104375123418
#>     Attrib V22    -0.07845602332980975
#>     Attrib V23    -0.00897509573678081
#>     Attrib V24    0.005704107534731483
#>     Attrib V25    -0.14504449947665599
#>     Attrib V26    -0.15308951999666492
#>     Attrib V27    -0.1513597988776924
#>     Attrib V28    -0.029577827773242738
#>     Attrib V29    0.005106108182560536
#>     Attrib V3    0.0858693129267636
#>     Attrib V30    0.00654234127092045
#>     Attrib V31    -0.2288848898306984
#>     Attrib V32    -0.021441888326767355
#>     Attrib V33    0.09747683029077615
#>     Attrib V34    0.10948557725500375
#>     Attrib V35    0.0842084219299432
#>     Attrib V36    -0.0066142179613514936
#>     Attrib V37    -0.0558343100435873
#>     Attrib V38    0.0026515092791371854
#>     Attrib V39    0.07043499212556703
#>     Attrib V4    0.04071685984010729
#>     Attrib V40    -0.0994692314717295
#>     Attrib V41    -0.040092124763963295
#>     Attrib V42    0.1391410330490653
#>     Attrib V43    0.014648140286505809
#>     Attrib V44    0.10739760673095845
#>     Attrib V45    0.16237082496141275
#>     Attrib V46    0.15128788010033886
#>     Attrib V47    0.06843495231518204
#>     Attrib V48    0.06948461195045823
#>     Attrib V49    0.1652682881199394
#>     Attrib V5    0.06747532317223781
#>     Attrib V50    -0.08302287030078591
#>     Attrib V51    0.057601383840518605
#>     Attrib V52    0.1414833683460593
#>     Attrib V53    0.1349817523731774
#>     Attrib V54    0.09255734683705515
#>     Attrib V55    0.057613980772862276
#>     Attrib V56    0.13094003658678774
#>     Attrib V57    0.060674643649045346
#>     Attrib V58    0.2168325659281772
#>     Attrib V59    0.24381918162987354
#>     Attrib V6    -0.027625571530220095
#>     Attrib V60    0.16091890864973737
#>     Attrib V7    -0.06706382657889039
#>     Attrib V8    -0.02252564607699638
#>     Attrib V9    0.057967173214048255
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
