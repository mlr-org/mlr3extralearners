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
#>     Threshold    -0.5501257236420423
#>     Node 2    2.7358684362855556
#>     Node 3    1.4813446266080412
#>     Node 4    1.1582791344553582
#>     Node 5    -2.247748078509031
#>     Node 6    1.060312252742383
#>     Node 7    3.375514143429354
#>     Node 8    0.3655139835356458
#>     Node 9    3.881531549221448
#>     Node 10    -0.18679412310538368
#>     Node 11    1.2132135365004315
#>     Node 12    0.9205909202066834
#>     Node 13    0.8352852787803295
#>     Node 14    1.3547457840103447
#>     Node 15    -2.7861907473752088
#>     Node 16    -1.3357298103271267
#>     Node 17    0.46753315744750373
#>     Node 18    -0.11657269551321729
#>     Node 19    2.151380406325813
#>     Node 20    1.3478941112625586
#>     Node 21    -3.241448495269475
#>     Node 22    0.5215151599870578
#>     Node 23    1.5701528634344952
#>     Node 24    -2.431222894933456
#>     Node 25    3.5056587509422292
#>     Node 26    -0.7337053367578109
#>     Node 27    1.504505272088657
#>     Node 28    -3.7148130699787605
#>     Node 29    1.4343035499959476
#>     Node 30    0.5486017152549036
#>     Node 31    1.5698072447615241
#>     Node 32    0.4846703360150383
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5673275643468824
#>     Node 2    -2.762891383274338
#>     Node 3    -1.48415971040311
#>     Node 4    -1.1342907894103356
#>     Node 5    2.2565365632221597
#>     Node 6    -1.049102971662105
#>     Node 7    -3.3666460946901435
#>     Node 8    -0.39184993378106575
#>     Node 9    -3.876350118111343
#>     Node 10    0.12801261417956547
#>     Node 11    -1.1925397137123903
#>     Node 12    -1.013769312348915
#>     Node 13    -0.7874081131349656
#>     Node 14    -1.302109051638629
#>     Node 15    2.7523462675733104
#>     Node 16    1.3476287930836262
#>     Node 17    -0.4332713425536123
#>     Node 18    0.16923139865002929
#>     Node 19    -2.140967434434126
#>     Node 20    -1.3308861296728394
#>     Node 21    3.2633971246899787
#>     Node 22    -0.5807716339282082
#>     Node 23    -1.6304104300482765
#>     Node 24    2.427531487601377
#>     Node 25    -3.490743286693726
#>     Node 26    0.6758147018097294
#>     Node 27    -1.5422533580236533
#>     Node 28    3.7197579877093014
#>     Node 29    -1.4549133382087212
#>     Node 30    -0.47545546352030754
#>     Node 31    -1.538615917638603
#>     Node 32    -0.5080978056028844
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.032026123883837826
#>     Attrib V1    0.041826738846968727
#>     Attrib V10    0.00641713445644908
#>     Attrib V11    0.528123859708684
#>     Attrib V12    0.5293538817158685
#>     Attrib V13    -0.1851409491448213
#>     Attrib V14    -0.7231845707276232
#>     Attrib V15    -0.2230621249510553
#>     Attrib V16    -0.013209836881687385
#>     Attrib V17    0.2529833742811745
#>     Attrib V18    -0.43631298162887
#>     Attrib V19    -0.11422222259621187
#>     Attrib V2    -0.10615131959681481
#>     Attrib V20    0.4962745526605578
#>     Attrib V21    0.4278892590657345
#>     Attrib V22    -0.013237599361528879
#>     Attrib V23    1.164647786500213
#>     Attrib V24    1.6023750520827587
#>     Attrib V25    0.557460074350544
#>     Attrib V26    0.0013698473300637695
#>     Attrib V27    0.23848980059105054
#>     Attrib V28    1.203230373651871
#>     Attrib V29    0.49511277999561837
#>     Attrib V3    0.13961460176926438
#>     Attrib V30    0.7197687618314035
#>     Attrib V31    -0.9494381722955132
#>     Attrib V32    0.6364034204057871
#>     Attrib V33    0.11426855152828205
#>     Attrib V34    -0.6523482966987161
#>     Attrib V35    0.4332369173282312
#>     Attrib V36    -0.609602780531243
#>     Attrib V37    -0.5890629326115616
#>     Attrib V38    -0.11042548839064588
#>     Attrib V39    0.365942900236064
#>     Attrib V4    0.5796275106999239
#>     Attrib V40    0.1962334551974571
#>     Attrib V41    0.702176422242901
#>     Attrib V42    0.9317289802804375
#>     Attrib V43    0.6564744579579882
#>     Attrib V44    0.9352612965963031
#>     Attrib V45    0.8240757332245956
#>     Attrib V46    0.48136370632515313
#>     Attrib V47    -0.07920886789254077
#>     Attrib V48    0.6744255520734611
#>     Attrib V49    0.7114724893964476
#>     Attrib V5    0.33721320230817325
#>     Attrib V50    -1.4432977814075987
#>     Attrib V51    0.3885891756767455
#>     Attrib V52    0.45309416354932286
#>     Attrib V53    -0.01323984505828844
#>     Attrib V54    0.6737139750619938
#>     Attrib V55    -0.4893611627746615
#>     Attrib V56    0.08391117862232285
#>     Attrib V57    -0.7821340845731101
#>     Attrib V58    -0.39161009422470483
#>     Attrib V59    -0.6460333123167123
#>     Attrib V6    0.05210926993185937
#>     Attrib V60    -0.015403841350496843
#>     Attrib V7    -0.8432942350730106
#>     Attrib V8    -0.29485559717225013
#>     Attrib V9    0.44400624311547343
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.04826665167844774
#>     Attrib V1    0.35994823581335006
#>     Attrib V10    -0.10513457146915728
#>     Attrib V11    0.12655510061994488
#>     Attrib V12    0.09755805883900603
#>     Attrib V13    -0.12767602448138063
#>     Attrib V14    -0.11612893556051121
#>     Attrib V15    0.4074811598742714
#>     Attrib V16    0.3035393851261108
#>     Attrib V17    0.3820897171920132
#>     Attrib V18    -0.0635988957955313
#>     Attrib V19    0.24071188879264213
#>     Attrib V2    0.06978456485438152
#>     Attrib V20    0.6930648977016705
#>     Attrib V21    0.3747151164866655
#>     Attrib V22    -0.09796847638002057
#>     Attrib V23    0.269859273307049
#>     Attrib V24    0.36983334833878473
#>     Attrib V25    -0.12112807270659415
#>     Attrib V26    -0.4437916136597575
#>     Attrib V27    -0.5163475987432801
#>     Attrib V28    0.10005592357530663
#>     Attrib V29    -0.2712798666478513
#>     Attrib V3    0.10966818360697324
#>     Attrib V30    0.11972171597317165
#>     Attrib V31    -0.88757375093153
#>     Attrib V32    0.40936257180764124
#>     Attrib V33    0.3940039654769116
#>     Attrib V34    -0.10018142472270565
#>     Attrib V35    0.6197779148061704
#>     Attrib V36    -0.17628962409002277
#>     Attrib V37    -0.41483835709116423
#>     Attrib V38    -0.08562977223054599
#>     Attrib V39    0.22413622094496408
#>     Attrib V4    0.2994900927812469
#>     Attrib V40    -0.2082629832520537
#>     Attrib V41    -0.1824853946434246
#>     Attrib V42    0.4000380113870813
#>     Attrib V43    0.26462344571220436
#>     Attrib V44    0.44211423767364516
#>     Attrib V45    0.5090593736200426
#>     Attrib V46    0.06950759695982588
#>     Attrib V47    -0.36494751888492855
#>     Attrib V48    0.09913403026221537
#>     Attrib V49    0.3671900908228249
#>     Attrib V5    -0.3049504854779606
#>     Attrib V50    -0.663344958735649
#>     Attrib V51    0.2124270326208645
#>     Attrib V52    0.32726773117217844
#>     Attrib V53    0.1795882627787562
#>     Attrib V54    0.31235061957291604
#>     Attrib V55    -0.22932406881127515
#>     Attrib V56    0.5037046858376613
#>     Attrib V57    -0.7032248201500172
#>     Attrib V58    0.2553680103156617
#>     Attrib V59    -0.10293857816423642
#>     Attrib V6    -0.32094658460399217
#>     Attrib V60    0.06842800104069945
#>     Attrib V7    -0.4525587939263777
#>     Attrib V8    -0.3156634209496058
#>     Attrib V9    0.08202183204503569
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.02010267134177225
#>     Attrib V1    0.29091203804652616
#>     Attrib V10    -0.06597646959035428
#>     Attrib V11    0.08782250875578859
#>     Attrib V12    0.012611690582884395
#>     Attrib V13    -0.11435904674580359
#>     Attrib V14    -0.02280429606501023
#>     Attrib V15    0.3158081627721799
#>     Attrib V16    0.20624710142131641
#>     Attrib V17    0.26313205416054375
#>     Attrib V18    -0.11418608314213154
#>     Attrib V19    0.0012545291316785406
#>     Attrib V2    0.011423844214169471
#>     Attrib V20    0.38437260153220676
#>     Attrib V21    0.19021672434733658
#>     Attrib V22    -0.3371879601104999
#>     Attrib V23    -0.08701040856908063
#>     Attrib V24    -0.06571051466575056
#>     Attrib V25    -0.4465283043313806
#>     Attrib V26    -0.49879004449026865
#>     Attrib V27    -0.460555290119063
#>     Attrib V28    0.11242345178497712
#>     Attrib V29    0.0010858216046627286
#>     Attrib V3    0.08196228776293325
#>     Attrib V30    0.19973492721045585
#>     Attrib V31    -0.5424526190917586
#>     Attrib V32    0.2617965992392343
#>     Attrib V33    0.2494707058267947
#>     Attrib V34    -0.11881052256176111
#>     Attrib V35    0.34919393118996556
#>     Attrib V36    -0.24616562226385746
#>     Attrib V37    -0.298314421098526
#>     Attrib V38    -0.07396688799711523
#>     Attrib V39    0.14028309588434165
#>     Attrib V4    0.24251654900524353
#>     Attrib V40    -0.208504130653946
#>     Attrib V41    -0.2218856192877854
#>     Attrib V42    0.24087004412889323
#>     Attrib V43    0.1200276405695447
#>     Attrib V44    0.29013264498402663
#>     Attrib V45    0.4744856321198303
#>     Attrib V46    0.05337012177404718
#>     Attrib V47    -0.283861930711533
#>     Attrib V48    0.21327506384560574
#>     Attrib V49    0.34541101384668565
#>     Attrib V5    -0.16532056992945254
#>     Attrib V50    -0.42138287087568366
#>     Attrib V51    0.21693806326442888
#>     Attrib V52    0.2873611500704515
#>     Attrib V53    0.21497478736979583
#>     Attrib V54    0.010252882751816756
#>     Attrib V55    -0.23755016912070528
#>     Attrib V56    0.27686788290989917
#>     Attrib V57    -0.48860970168632667
#>     Attrib V58    0.09158215436169527
#>     Attrib V59    -0.19582322307537955
#>     Attrib V6    -0.24593141018074927
#>     Attrib V60    -0.0498053561429979
#>     Attrib V7    -0.3390238334417214
#>     Attrib V8    -0.27613174368633064
#>     Attrib V9    0.1197360558100648
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.21669874373758333
#>     Attrib V1    -0.36707081484478576
#>     Attrib V10    0.08853423309408581
#>     Attrib V11    -0.3478978265987187
#>     Attrib V12    -0.4331125503596127
#>     Attrib V13    -0.13782462971327014
#>     Attrib V14    0.16737813008670868
#>     Attrib V15    -0.11747052241974291
#>     Attrib V16    0.23558407404912224
#>     Attrib V17    0.270712794669582
#>     Attrib V18    0.7243158785931172
#>     Attrib V19    0.027320535755413683
#>     Attrib V2    0.1010882379618336
#>     Attrib V20    -1.0919602846851244
#>     Attrib V21    -0.8822857294790674
#>     Attrib V22    -0.020631113383669415
#>     Attrib V23    -0.49050192462238495
#>     Attrib V24    -0.6011753098358747
#>     Attrib V25    0.5316958427226396
#>     Attrib V26    0.42223155297715975
#>     Attrib V27    0.3657932805967999
#>     Attrib V28    -0.42446151686154826
#>     Attrib V29    0.029901679363580718
#>     Attrib V3    -0.04985868012551704
#>     Attrib V30    -0.07152596388648604
#>     Attrib V31    1.3882329834025429
#>     Attrib V32    -0.4175728726210459
#>     Attrib V33    -0.15465232737168486
#>     Attrib V34    0.4589178473896169
#>     Attrib V35    -0.6663465948703989
#>     Attrib V36    0.7133197431275076
#>     Attrib V37    0.7648129707378795
#>     Attrib V38    0.15145478358390282
#>     Attrib V39    -0.13774689570899537
#>     Attrib V4    -0.5223706707511631
#>     Attrib V40    0.4403085846640263
#>     Attrib V41    0.08557502035599238
#>     Attrib V42    -0.5034679112204634
#>     Attrib V43    -0.5008931313080771
#>     Attrib V44    -0.47219031721538696
#>     Attrib V45    -0.7338796150213553
#>     Attrib V46    -0.3093560458729538
#>     Attrib V47    0.35531735908578505
#>     Attrib V48    -0.47739101801170375
#>     Attrib V49    -0.8315911247357831
#>     Attrib V5    0.3394013689040331
#>     Attrib V50    0.8801234173496106
#>     Attrib V51    -0.4171614910478411
#>     Attrib V52    -0.5060448039552564
#>     Attrib V53    -0.3260609807834287
#>     Attrib V54    -0.4851138475323169
#>     Attrib V55    0.43141153972310037
#>     Attrib V56    -0.2938418851327492
#>     Attrib V57    1.0642232277456332
#>     Attrib V58    -0.31584586927154357
#>     Attrib V59    0.1866984432753816
#>     Attrib V6    0.3068344102138958
#>     Attrib V60    0.15225569718379361
#>     Attrib V7    0.8087321931208582
#>     Attrib V8    0.7042467703436684
#>     Attrib V9    -0.1655422354992396
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.06369979459931459
#>     Attrib V1    0.3204819491426645
#>     Attrib V10    -0.13978201620101005
#>     Attrib V11    0.09927973413699424
#>     Attrib V12    0.10625443513918031
#>     Attrib V13    -0.14097606303470717
#>     Attrib V14    -0.11903888476178086
#>     Attrib V15    0.23472238575670568
#>     Attrib V16    0.24915118662273422
#>     Attrib V17    0.2458731486605961
#>     Attrib V18    -0.02315124143071126
#>     Attrib V19    0.07528721663038132
#>     Attrib V2    0.038875875303562714
#>     Attrib V20    0.4667087129722626
#>     Attrib V21    0.27979519055918417
#>     Attrib V22    -0.1746437175018757
#>     Attrib V23    0.11706587370695508
#>     Attrib V24    0.26493605619443017
#>     Attrib V25    -0.09090275790714124
#>     Attrib V26    -0.3071289649145923
#>     Attrib V27    -0.29847013645735415
#>     Attrib V28    0.09922761042574578
#>     Attrib V29    -0.08371209817326243
#>     Attrib V3    0.053540331212626496
#>     Attrib V30    0.12246218627717263
#>     Attrib V31    -0.6328001125052443
#>     Attrib V32    0.30851568028438237
#>     Attrib V33    0.26700794634742625
#>     Attrib V34    -0.0886961942245427
#>     Attrib V35    0.48157876321168497
#>     Attrib V36    -0.17352038320280933
#>     Attrib V37    -0.2618176276141121
#>     Attrib V38    -0.06040863983637047
#>     Attrib V39    0.12323115686677048
#>     Attrib V4    0.2423626644781305
#>     Attrib V40    -0.19399777983934302
#>     Attrib V41    -0.08888251042179723
#>     Attrib V42    0.3130443211947593
#>     Attrib V43    0.1882302535090466
#>     Attrib V44    0.28554098734113353
#>     Attrib V45    0.4046299780834583
#>     Attrib V46    0.08487193500280661
#>     Attrib V47    -0.29433662078809003
#>     Attrib V48    0.10666341916258736
#>     Attrib V49    0.2704111605273657
#>     Attrib V5    -0.21263146700346489
#>     Attrib V50    -0.47194909319474576
#>     Attrib V51    0.174850737227845
#>     Attrib V52    0.20309650346430966
#>     Attrib V53    0.2153596350955991
#>     Attrib V54    0.16523365029762918
#>     Attrib V55    -0.23018794102498752
#>     Attrib V56    0.32605298310866787
#>     Attrib V57    -0.5154581135254495
#>     Attrib V58    0.1440014449763498
#>     Attrib V59    -0.11447788607274326
#>     Attrib V6    -0.17019483230830776
#>     Attrib V60    0.07033864884135964
#>     Attrib V7    -0.3573584046427622
#>     Attrib V8    -0.26166183307397844
#>     Attrib V9    0.1098411204779046
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6062112135530684
#>     Attrib V1    1.0106255201965528
#>     Attrib V10    0.7009978702985797
#>     Attrib V11    1.3901055870337709
#>     Attrib V12    1.2083019062412157
#>     Attrib V13    0.51020834812113
#>     Attrib V14    -0.24589130745314114
#>     Attrib V15    -0.16344191511281567
#>     Attrib V16    -0.6880965533726024
#>     Attrib V17    -0.7249022762640768
#>     Attrib V18    -1.5701456080420604
#>     Attrib V19    -1.3913201343842645
#>     Attrib V2    0.5471713425190073
#>     Attrib V20    -0.23661890322231227
#>     Attrib V21    0.40192513125011115
#>     Attrib V22    -0.3054566945898944
#>     Attrib V23    -0.04517022684769201
#>     Attrib V24    0.3902285940833041
#>     Attrib V25    -0.2513392363882895
#>     Attrib V26    0.7734821897408792
#>     Attrib V27    0.8930864678724914
#>     Attrib V28    0.9335396803337829
#>     Attrib V29    0.7749928132444586
#>     Attrib V3    0.3266118050048797
#>     Attrib V30    0.8555066884875495
#>     Attrib V31    -0.3881619359876303
#>     Attrib V32    -0.2869009696648949
#>     Attrib V33    -0.6924807025733124
#>     Attrib V34    -0.6403206350326334
#>     Attrib V35    0.28789384220397923
#>     Attrib V36    -0.37662972581956633
#>     Attrib V37    0.43775662607774024
#>     Attrib V38    0.4354693714973585
#>     Attrib V39    0.19494682893270665
#>     Attrib V4    0.3634732251240493
#>     Attrib V40    -0.08939939192161853
#>     Attrib V41    0.2876265598271113
#>     Attrib V42    -0.21907958881604758
#>     Attrib V43    -0.052660591037728244
#>     Attrib V44    0.07745175621787206
#>     Attrib V45    0.7288036625264902
#>     Attrib V46    0.9445985790164715
#>     Attrib V47    0.37962074459754125
#>     Attrib V48    0.7916246859339165
#>     Attrib V49    0.8130954432178696
#>     Attrib V5    0.3441372313145643
#>     Attrib V50    0.013377530106026164
#>     Attrib V51    0.5642537933428956
#>     Attrib V52    0.5223991162001718
#>     Attrib V53    0.02346037221001348
#>     Attrib V54    0.47961352169116583
#>     Attrib V55    0.13967611561408508
#>     Attrib V56    -0.8485695979793361
#>     Attrib V57    -0.16974814210014566
#>     Attrib V58    -0.27831275045883686
#>     Attrib V59    -0.8307879465694684
#>     Attrib V6    0.5699059606786436
#>     Attrib V60    -0.1850095479100577
#>     Attrib V7    -0.24628057354505192
#>     Attrib V8    -0.36811197485397584
#>     Attrib V9    0.7644798681471058
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.07417770407485674
#>     Attrib V1    0.1919252573857399
#>     Attrib V10    0.08262909065501155
#>     Attrib V11    0.13727564224984629
#>     Attrib V12    0.039096736104074575
#>     Attrib V13    0.0036459902544839205
#>     Attrib V14    -0.058241275498386064
#>     Attrib V15    0.0427193248443709
#>     Attrib V16    0.0655126267455814
#>     Attrib V17    0.011565087081855267
#>     Attrib V18    -0.13602291080235707
#>     Attrib V19    -0.0844895650137768
#>     Attrib V2    0.12094164423300423
#>     Attrib V20    0.015227807901138878
#>     Attrib V21    -0.05507781717575965
#>     Attrib V22    -0.23470055477955507
#>     Attrib V23    -0.14359307972461816
#>     Attrib V24    -0.04938230583784613
#>     Attrib V25    -0.12154011664562193
#>     Attrib V26    -0.07698295996753612
#>     Attrib V27    -0.08633751912258905
#>     Attrib V28    0.05954933093276382
#>     Attrib V29    0.023591608136175304
#>     Attrib V3    0.10964570576699732
#>     Attrib V30    0.08794079447569544
#>     Attrib V31    -0.11209877453780989
#>     Attrib V32    0.14321360520657941
#>     Attrib V33    0.13480938127963726
#>     Attrib V34    2.3944203166354326E-4
#>     Attrib V35    0.1532733971737806
#>     Attrib V36    0.007824309243939901
#>     Attrib V37    -0.018592497403243688
#>     Attrib V38    0.07702298078412037
#>     Attrib V39    0.06597861578165923
#>     Attrib V4    0.2001466562493971
#>     Attrib V40    -0.036372523329783656
#>     Attrib V41    -0.054158900009736756
#>     Attrib V42    -0.04252430689454005
#>     Attrib V43    0.010687689212573475
#>     Attrib V44    0.11239103926688578
#>     Attrib V45    0.16763280732469593
#>     Attrib V46    0.1284452112040743
#>     Attrib V47    0.04041207813866685
#>     Attrib V48    0.21627726751457393
#>     Attrib V49    0.2099840404968831
#>     Attrib V5    -0.027096153825212587
#>     Attrib V50    -0.03648674869444649
#>     Attrib V51    0.13658233274585269
#>     Attrib V52    0.1553250529242983
#>     Attrib V53    0.15081293581051775
#>     Attrib V54    0.11176023495572057
#>     Attrib V55    -0.022298189687225436
#>     Attrib V56    0.056388690881149374
#>     Attrib V57    0.008288017207127461
#>     Attrib V58    0.07076344876822703
#>     Attrib V59    -0.06670683570452185
#>     Attrib V6    -0.11985710647429725
#>     Attrib V60    0.03241229713730204
#>     Attrib V7    -0.11192423918594235
#>     Attrib V8    -0.10352381423659919
#>     Attrib V9    0.09361725729284519
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6787341568011052
#>     Attrib V1    0.5133471763812036
#>     Attrib V10    0.3734454878380522
#>     Attrib V11    1.095776598169378
#>     Attrib V12    1.49402900066126
#>     Attrib V13    0.9586671485006707
#>     Attrib V14    -0.05571264983430788
#>     Attrib V15    -0.18997695692514374
#>     Attrib V16    -0.7003195609568825
#>     Attrib V17    -0.31842461658231774
#>     Attrib V18    -1.0991272026802357
#>     Attrib V19    -1.1329655431921244
#>     Attrib V2    0.38224717063949193
#>     Attrib V20    -0.28792839344942445
#>     Attrib V21    0.37386920601201074
#>     Attrib V22    0.05357770553266952
#>     Attrib V23    0.5270710139271158
#>     Attrib V24    0.8713673546337833
#>     Attrib V25    0.18107078711621918
#>     Attrib V26    1.0534509828222096
#>     Attrib V27    1.299412782888301
#>     Attrib V28    1.1900778237525995
#>     Attrib V29    0.9080838831726501
#>     Attrib V3    0.21695155738863753
#>     Attrib V30    0.9985830168487626
#>     Attrib V31    -0.18792196801494077
#>     Attrib V32    -0.2597419772429827
#>     Attrib V33    -1.028826909940232
#>     Attrib V34    -1.1154768656092813
#>     Attrib V35    -0.19559564182643446
#>     Attrib V36    -0.6723129378869827
#>     Attrib V37    0.28490625192659325
#>     Attrib V38    0.38622580633931664
#>     Attrib V39    0.3168185478269772
#>     Attrib V4    0.28814145268257796
#>     Attrib V40    0.014914379427197958
#>     Attrib V41    0.5649982193612643
#>     Attrib V42    -0.0034007254895182014
#>     Attrib V43    0.1626709617792718
#>     Attrib V44    0.31686563565133197
#>     Attrib V45    0.8183330160181973
#>     Attrib V46    0.9440501147632109
#>     Attrib V47    0.38176616298162863
#>     Attrib V48    0.9465377209427345
#>     Attrib V49    1.1404126057294226
#>     Attrib V5    0.6236722914985183
#>     Attrib V50    0.014152450576142471
#>     Attrib V51    0.7950453461933286
#>     Attrib V52    0.8188000222046227
#>     Attrib V53    0.5308838565966066
#>     Attrib V54    1.0370297642462574
#>     Attrib V55    0.32574702916191717
#>     Attrib V56    -0.8254835517061371
#>     Attrib V57    -0.4074009489864691
#>     Attrib V58    -0.4015220455178159
#>     Attrib V59    -0.6426450620661547
#>     Attrib V6    1.0302795888125573
#>     Attrib V60    -0.3420375037023334
#>     Attrib V7    -0.34020839500685585
#>     Attrib V8    -0.5681191154616393
#>     Attrib V9    0.48674805663431714
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.16860997209857315
#>     Attrib V1    0.09277379286995294
#>     Attrib V10    0.05276695521872146
#>     Attrib V11    0.02524186450615503
#>     Attrib V12    0.04818456319401265
#>     Attrib V13    0.05525068125486656
#>     Attrib V14    0.06518831679946921
#>     Attrib V15    -0.03331639011276782
#>     Attrib V16    0.030147254159687532
#>     Attrib V17    -0.02791662996249595
#>     Attrib V18    0.05915889250939809
#>     Attrib V19    0.021950720450609123
#>     Attrib V2    0.07725190382666118
#>     Attrib V20    -0.02601454601163544
#>     Attrib V21    -0.032255714700280415
#>     Attrib V22    -0.043427699546595935
#>     Attrib V23    -0.0038154538937608656
#>     Attrib V24    -0.07980489482061517
#>     Attrib V25    -0.06024452197872761
#>     Attrib V26    -0.0404198860707196
#>     Attrib V27    -0.051882072798938986
#>     Attrib V28    -0.060379342007559275
#>     Attrib V29    -0.08571902693618476
#>     Attrib V3    0.08694995010390247
#>     Attrib V30    -0.0022720817901453996
#>     Attrib V31    0.06670622145288882
#>     Attrib V32    -0.050749453052274095
#>     Attrib V33    0.07700929297142237
#>     Attrib V34    0.08509644703267989
#>     Attrib V35    0.049210181351354146
#>     Attrib V36    0.07064632589468092
#>     Attrib V37    0.05220587434122814
#>     Attrib V38    0.06820439052638505
#>     Attrib V39    0.04478795572519653
#>     Attrib V4    0.08161753903458355
#>     Attrib V40    0.11544623611174167
#>     Attrib V41    0.0997584141878983
#>     Attrib V42    0.011683678107117696
#>     Attrib V43    0.020818706184754204
#>     Attrib V44    0.047670842702744236
#>     Attrib V45    0.019418582026425615
#>     Attrib V46    -5.391306578878606E-4
#>     Attrib V47    0.04808565935979095
#>     Attrib V48    0.003847587167991893
#>     Attrib V49    0.006130745333816739
#>     Attrib V5    0.11407957780133794
#>     Attrib V50    0.11571704420368686
#>     Attrib V51    0.048386450766334944
#>     Attrib V52    0.01154840119255276
#>     Attrib V53    0.06374626074087572
#>     Attrib V54    0.036114934124733364
#>     Attrib V55    0.054466467810285725
#>     Attrib V56    0.033542531482754545
#>     Attrib V57    0.11490194088314654
#>     Attrib V58    0.04699121412227357
#>     Attrib V59    0.02413200762341284
#>     Attrib V6    0.13260009269058043
#>     Attrib V60    0.021008796709168796
#>     Attrib V7    0.08850776913497452
#>     Attrib V8    0.08762870460831713
#>     Attrib V9    0.021160386773747483
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.04176852939213918
#>     Attrib V1    0.22277719618473127
#>     Attrib V10    -0.05522122022779342
#>     Attrib V11    0.16501263476557426
#>     Attrib V12    0.13688736879946825
#>     Attrib V13    -0.1679999136417245
#>     Attrib V14    -0.16054769560428306
#>     Attrib V15    0.18580094572010036
#>     Attrib V16    0.22395810459218665
#>     Attrib V17    0.3432412801263608
#>     Attrib V18    -0.03724060917494118
#>     Attrib V19    0.06001107077413097
#>     Attrib V2    -0.08246022420189618
#>     Attrib V20    0.47274433192460935
#>     Attrib V21    0.1362983895429176
#>     Attrib V22    -0.3405687336005668
#>     Attrib V23    -0.011937199270141934
#>     Attrib V24    0.1052748533914012
#>     Attrib V25    -0.21758340028391432
#>     Attrib V26    -0.4361776035329066
#>     Attrib V27    -0.41058589193193484
#>     Attrib V28    0.09503476641498108
#>     Attrib V29    -0.13969472152638784
#>     Attrib V3    -0.06078564277598228
#>     Attrib V30    0.17242061274687936
#>     Attrib V31    -0.6199464515246085
#>     Attrib V32    0.34665286235998316
#>     Attrib V33    0.32153778203127975
#>     Attrib V34    0.0118948907324774
#>     Attrib V35    0.5445389617416551
#>     Attrib V36    -0.14091035988269027
#>     Attrib V37    -0.2895945349509538
#>     Attrib V38    0.02828681856635306
#>     Attrib V39    0.1502237454208505
#>     Attrib V4    0.196495252781569
#>     Attrib V40    -0.18318400184017047
#>     Attrib V41    -0.20279177309909108
#>     Attrib V42    0.22925223533662506
#>     Attrib V43    0.15647875165376046
#>     Attrib V44    0.3369411687734451
#>     Attrib V45    0.4940676475770505
#>     Attrib V46    0.05446187214195817
#>     Attrib V47    -0.2826513437078799
#>     Attrib V48    0.2422687841482612
#>     Attrib V49    0.33028720208863416
#>     Attrib V5    -0.22936528962311242
#>     Attrib V50    -0.4988134296085669
#>     Attrib V51    0.2401761219077213
#>     Attrib V52    0.24618553779449412
#>     Attrib V53    0.1572377546794174
#>     Attrib V54    0.13669403875649386
#>     Attrib V55    -0.22601312639804724
#>     Attrib V56    0.27807101843696735
#>     Attrib V57    -0.5577708008995189
#>     Attrib V58    0.09668991123086741
#>     Attrib V59    -0.2850621521564377
#>     Attrib V6    -0.2255594662881887
#>     Attrib V60    -0.07133730683992717
#>     Attrib V7    -0.43305336739051015
#>     Attrib V8    -0.26676355800460194
#>     Attrib V9    0.12563429547121402
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.03450821339965328
#>     Attrib V1    0.30387357866517256
#>     Attrib V10    -0.11268094846865077
#>     Attrib V11    0.13669575329600173
#>     Attrib V12    -0.012749294952337113
#>     Attrib V13    -0.11489346132480123
#>     Attrib V14    -5.234912092633863E-4
#>     Attrib V15    0.27182967751913417
#>     Attrib V16    0.24340541936517746
#>     Attrib V17    0.2396522362381692
#>     Attrib V18    -0.04906681235328378
#>     Attrib V19    0.1026658662467186
#>     Attrib V2    0.11166457430682224
#>     Attrib V20    0.364107606851056
#>     Attrib V21    0.12622894531422796
#>     Attrib V22    -0.23970830195005613
#>     Attrib V23    -0.05913629888475656
#>     Attrib V24    -0.04205615395652418
#>     Attrib V25    -0.350922229730215
#>     Attrib V26    -0.4250242394773406
#>     Attrib V27    -0.34036575540638736
#>     Attrib V28    0.010271065328864066
#>     Attrib V29    -0.030747773175142285
#>     Attrib V3    0.033675976276558967
#>     Attrib V30    0.11060025349096905
#>     Attrib V31    -0.5600607282642812
#>     Attrib V32    0.17188081126775287
#>     Attrib V33    0.2312066386623504
#>     Attrib V34    -0.05555546214742289
#>     Attrib V35    0.3389117310771493
#>     Attrib V36    -0.16193280535920837
#>     Attrib V37    -0.24131500775534803
#>     Attrib V38    -0.0018718747095919765
#>     Attrib V39    0.0742213573879996
#>     Attrib V4    0.25802395943052747
#>     Attrib V40    -0.17686434986208266
#>     Attrib V41    -0.2354823375836098
#>     Attrib V42    0.11524183128677791
#>     Attrib V43    0.16881743465554802
#>     Attrib V44    0.19163244335288876
#>     Attrib V45    0.35593652723473473
#>     Attrib V46    0.10870459018763125
#>     Attrib V47    -0.23327751086840753
#>     Attrib V48    0.1833940426965024
#>     Attrib V49    0.23370591793708848
#>     Attrib V5    -0.17840524605588517
#>     Attrib V50    -0.36982258119579026
#>     Attrib V51    0.19087986676751262
#>     Attrib V52    0.30202090296081463
#>     Attrib V53    0.2208517955849456
#>     Attrib V54    0.15889943925907626
#>     Attrib V55    -0.1672439272470498
#>     Attrib V56    0.31303012616069137
#>     Attrib V57    -0.3702566340910305
#>     Attrib V58    0.16206369679767077
#>     Attrib V59    -0.05400241214668837
#>     Attrib V6    -0.27566161651698323
#>     Attrib V60    0.03454365844715166
#>     Attrib V7    -0.28954747157051336
#>     Attrib V8    -0.22385726129339817
#>     Attrib V9    0.06492287073316132
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.007186381902086671
#>     Attrib V1    0.25727565101171807
#>     Attrib V10    -0.09206444914730758
#>     Attrib V11    0.12651892612497148
#>     Attrib V12    0.10265387466018426
#>     Attrib V13    -0.005130642076020286
#>     Attrib V14    -0.0902717622729786
#>     Attrib V15    0.15445100453628252
#>     Attrib V16    0.08665703537467655
#>     Attrib V17    0.18774213961525418
#>     Attrib V18    -0.09888901697898167
#>     Attrib V19    -5.852495130380567E-4
#>     Attrib V2    0.012393760132829857
#>     Attrib V20    0.36158536796987073
#>     Attrib V21    0.188894526947361
#>     Attrib V22    -0.20024424249795875
#>     Attrib V23    0.09730454499485346
#>     Attrib V24    0.2111101511426985
#>     Attrib V25    -0.054745363822243674
#>     Attrib V26    -0.2367561310793775
#>     Attrib V27    -0.18172144535596288
#>     Attrib V28    0.11202385239176993
#>     Attrib V29    -0.0029373688109109956
#>     Attrib V3    0.08696925356799293
#>     Attrib V30    0.13172179345355056
#>     Attrib V31    -0.5157269464042409
#>     Attrib V32    0.22955522637390272
#>     Attrib V33    0.15534980341851842
#>     Attrib V34    -0.04585033234981872
#>     Attrib V35    0.34458767932073897
#>     Attrib V36    -0.16588240960824105
#>     Attrib V37    -0.1965797441096137
#>     Attrib V38    -0.024893217236779043
#>     Attrib V39    0.1680727486633858
#>     Attrib V4    0.18525068849071177
#>     Attrib V40    -0.11398540042515763
#>     Attrib V41    -0.10969468380046968
#>     Attrib V42    0.20611307875354792
#>     Attrib V43    0.10094233982491845
#>     Attrib V44    0.20677989910396705
#>     Attrib V45    0.28130431738611666
#>     Attrib V46    0.1078905325809345
#>     Attrib V47    -0.16254385214310635
#>     Attrib V48    0.13395649555645384
#>     Attrib V49    0.2819356083132899
#>     Attrib V5    -0.13365029839046272
#>     Attrib V50    -0.41387454352019887
#>     Attrib V51    0.12280011674272913
#>     Attrib V52    0.1548887994044597
#>     Attrib V53    0.14207992124710278
#>     Attrib V54    0.13099763493250127
#>     Attrib V55    -0.17906911431329278
#>     Attrib V56    0.20071896996653094
#>     Attrib V57    -0.4179858522888327
#>     Attrib V58    0.06402674411457901
#>     Attrib V59    -0.11718264191687396
#>     Attrib V6    -0.1575327771970519
#>     Attrib V60    0.06046320302629434
#>     Attrib V7    -0.28460632792007723
#>     Attrib V8    -0.292714884697353
#>     Attrib V9    0.06023333049815178
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.048119651175347104
#>     Attrib V1    0.4272509129548556
#>     Attrib V10    -0.0745417904451197
#>     Attrib V11    0.33291176067240486
#>     Attrib V12    0.3099511821529398
#>     Attrib V13    -0.09629382116392651
#>     Attrib V14    -0.11769969828282183
#>     Attrib V15    0.3073408408557038
#>     Attrib V16    0.19665166837430947
#>     Attrib V17    0.30665667436166105
#>     Attrib V18    -0.03315368413146605
#>     Attrib V19    0.10625329195150156
#>     Attrib V2    0.0749241939172893
#>     Attrib V20    0.5314525218572856
#>     Attrib V21    0.17381959016334786
#>     Attrib V22    -0.3269366484198384
#>     Attrib V23    3.82130993626866E-4
#>     Attrib V24    0.14912777440451447
#>     Attrib V25    -0.12305883063856782
#>     Attrib V26    -0.3001236622256088
#>     Attrib V27    -0.5124128157001283
#>     Attrib V28    -0.26769110080381425
#>     Attrib V29    -0.48693619779723674
#>     Attrib V3    -0.006319186061019689
#>     Attrib V30    -0.020221414575309956
#>     Attrib V31    -0.6345588122569281
#>     Attrib V32    0.32593399962548336
#>     Attrib V33    0.3749690961816106
#>     Attrib V34    0.07587458086001433
#>     Attrib V35    0.6060259506128651
#>     Attrib V36    -0.13175496821849964
#>     Attrib V37    -0.24436334510128005
#>     Attrib V38    -0.015277753527595792
#>     Attrib V39    0.21319981037378377
#>     Attrib V4    0.18403020273384962
#>     Attrib V40    -0.17194343347808994
#>     Attrib V41    -0.3254796109221824
#>     Attrib V42    0.09345157559230917
#>     Attrib V43    0.17217017506204435
#>     Attrib V44    0.27859818954533033
#>     Attrib V45    0.2902424864832866
#>     Attrib V46    0.004483606396103713
#>     Attrib V47    -0.369366504484243
#>     Attrib V48    0.23536735107813184
#>     Attrib V49    0.38928093362589844
#>     Attrib V5    -0.3510404395946954
#>     Attrib V50    -0.41974416041774987
#>     Attrib V51    0.15312831340326727
#>     Attrib V52    0.2648891552049073
#>     Attrib V53    0.22426160942226245
#>     Attrib V54    0.361225454740146
#>     Attrib V55    -0.0870727362906756
#>     Attrib V56    0.4744162251737499
#>     Attrib V57    -0.502934857786851
#>     Attrib V58    0.17117743600835741
#>     Attrib V59    -0.019878992835861305
#>     Attrib V6    -0.3625664172086399
#>     Attrib V60    0.1370681900696754
#>     Attrib V7    -0.42859396036473857
#>     Attrib V8    -0.4108580299050114
#>     Attrib V9    0.03785616741505039
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.2309689538739394
#>     Attrib V1    -0.15973789334807706
#>     Attrib V10    -0.7069892342464167
#>     Attrib V11    -1.1483338384139536
#>     Attrib V12    -0.7748123552457955
#>     Attrib V13    -0.13914746163525465
#>     Attrib V14    0.2654279788481883
#>     Attrib V15    -0.043315668393762594
#>     Attrib V16    0.002555217051918351
#>     Attrib V17    -0.19440658248417628
#>     Attrib V18    0.5617140606032971
#>     Attrib V19    0.10870464370061672
#>     Attrib V2    0.23675022030988085
#>     Attrib V20    -1.1805205736038349
#>     Attrib V21    -1.371982426294875
#>     Attrib V22    -0.2699841789235799
#>     Attrib V23    -0.8642419342664467
#>     Attrib V24    -0.9469440011360571
#>     Attrib V25    0.16690325178334686
#>     Attrib V26    0.247729399498398
#>     Attrib V27    0.6398205940992933
#>     Attrib V28    -0.05220055954638252
#>     Attrib V29    0.6532676448602883
#>     Attrib V3    -0.1677485134845361
#>     Attrib V30    -0.2635872745793934
#>     Attrib V31    1.6727580812338794
#>     Attrib V32    -0.08256505814501545
#>     Attrib V33    -0.39919092807232
#>     Attrib V34    0.42756888237301266
#>     Attrib V35    -0.5121761955799713
#>     Attrib V36    0.4589993883788649
#>     Attrib V37    1.086613280037636
#>     Attrib V38    0.05241246047741856
#>     Attrib V39    -0.43424187858513197
#>     Attrib V4    -0.9262482868525086
#>     Attrib V40    0.3322198361875943
#>     Attrib V41    0.025538743057545606
#>     Attrib V42    -0.5118726191591959
#>     Attrib V43    -0.7527129511323768
#>     Attrib V44    -1.0201391338285781
#>     Attrib V45    -0.7561017518384808
#>     Attrib V46    0.07572090856925873
#>     Attrib V47    0.9706904935516272
#>     Attrib V48    0.053339238428356535
#>     Attrib V49    -0.7006360898934444
#>     Attrib V5    -0.04388383688272766
#>     Attrib V50    1.5420134727746653
#>     Attrib V51    -0.2708126228476491
#>     Attrib V52    -0.12931348464004896
#>     Attrib V53    0.18930405818134383
#>     Attrib V54    -0.24429577477345019
#>     Attrib V55    0.6331798472043976
#>     Attrib V56    -0.1126426605496062
#>     Attrib V57    0.813540951854318
#>     Attrib V58    -0.31667515732751483
#>     Attrib V59    -0.1798814721490274
#>     Attrib V6    -0.08179582432129155
#>     Attrib V60    0.12053597912585418
#>     Attrib V7    0.013606533904319611
#>     Attrib V8    -0.33291544317665267
#>     Attrib V9    -0.9393056888095926
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1944143066045
#>     Attrib V1    -0.21955153566802443
#>     Attrib V10    0.07822942088645349
#>     Attrib V11    -0.22564984620777231
#>     Attrib V12    -0.2221120940078467
#>     Attrib V13    0.07186647897324085
#>     Attrib V14    0.15330258362483745
#>     Attrib V15    -0.18489160951819936
#>     Attrib V16    -0.05306431726735892
#>     Attrib V17    -0.17348656853322916
#>     Attrib V18    0.24720684297424586
#>     Attrib V19    0.03790596046538176
#>     Attrib V2    0.0071764220329808125
#>     Attrib V20    -0.38986493009397766
#>     Attrib V21    -0.31168277213598694
#>     Attrib V22    0.11002184061696584
#>     Attrib V23    -0.2303090697346282
#>     Attrib V24    -0.29448262238781786
#>     Attrib V25    0.24074829224718114
#>     Attrib V26    0.25966346511313393
#>     Attrib V27    0.2284610962534276
#>     Attrib V28    -0.25610096494801565
#>     Attrib V29    -0.14635830551783077
#>     Attrib V3    0.06598454951524052
#>     Attrib V30    -0.37247173083365376
#>     Attrib V31    0.5330757687094402
#>     Attrib V32    -0.26904205501558803
#>     Attrib V33    -0.12851671040670956
#>     Attrib V34    0.24676116045634167
#>     Attrib V35    -0.45794263704096605
#>     Attrib V36    0.29986189145692904
#>     Attrib V37    0.32061263850861765
#>     Attrib V38    0.02994033358701149
#>     Attrib V39    -0.13600963990064055
#>     Attrib V4    -0.19910589787658436
#>     Attrib V40    0.12871482246435242
#>     Attrib V41    -0.03363709294885314
#>     Attrib V42    -0.34555003026731557
#>     Attrib V43    -0.30365181444564227
#>     Attrib V44    -0.4170553467026748
#>     Attrib V45    -0.5275398017658045
#>     Attrib V46    -0.20643918748255563
#>     Attrib V47    0.18995806044391106
#>     Attrib V48    -0.3135296523300036
#>     Attrib V49    -0.44599835049373737
#>     Attrib V5    0.13656793326265879
#>     Attrib V50    0.6331327331922351
#>     Attrib V51    -0.19799721082479876
#>     Attrib V52    -0.23013796921256863
#>     Attrib V53    -0.11079964185021939
#>     Attrib V54    -0.18024906107055128
#>     Attrib V55    0.2440556282233736
#>     Attrib V56    -0.12291474022827188
#>     Attrib V57    0.7390832187019155
#>     Attrib V58    -0.00898329394482195
#>     Attrib V59    0.17573026646502216
#>     Attrib V6    0.03490629316614696
#>     Attrib V60    3.678575594788828E-4
#>     Attrib V7    0.3917385719355228
#>     Attrib V8    0.28777702777026704
#>     Attrib V9    -0.08502887532821399
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.054564475219246435
#>     Attrib V1    0.2536693097598948
#>     Attrib V10    0.07147081866629139
#>     Attrib V11    0.13358129345529904
#>     Attrib V12    0.02953107216650931
#>     Attrib V13    -0.0639386100899281
#>     Attrib V14    -0.045385730618871904
#>     Attrib V15    0.13310546177283827
#>     Attrib V16    0.038661542026560115
#>     Attrib V17    0.03171471752402042
#>     Attrib V18    -0.11450183039533775
#>     Attrib V19    -0.06781174630888576
#>     Attrib V2    0.15621471280390414
#>     Attrib V20    0.07624009285027952
#>     Attrib V21    -0.05030579681254998
#>     Attrib V22    -0.19098323964960498
#>     Attrib V23    -0.16624478505121126
#>     Attrib V24    -0.0572784090994398
#>     Attrib V25    -0.18267591393355023
#>     Attrib V26    -0.15913332595450577
#>     Attrib V27    -0.11816506442204898
#>     Attrib V28    0.01770606655290254
#>     Attrib V29    -0.051052417999395736
#>     Attrib V3    0.07867218441882858
#>     Attrib V30    0.08423590178133035
#>     Attrib V31    -0.1399439648281983
#>     Attrib V32    0.10285797677464284
#>     Attrib V33    0.16123875412315725
#>     Attrib V34    -0.020353849816510318
#>     Attrib V35    0.23003302910408246
#>     Attrib V36    -0.07599103182062641
#>     Attrib V37    -0.08112753338947548
#>     Attrib V38    0.06693504023392091
#>     Attrib V39    0.09941868761841587
#>     Attrib V4    0.15749560367807722
#>     Attrib V40    -0.09880844341467326
#>     Attrib V41    -0.07005275226941479
#>     Attrib V42    0.0184599606434809
#>     Attrib V43    0.08483340206757031
#>     Attrib V44    0.12626468279747302
#>     Attrib V45    0.21587006892119653
#>     Attrib V46    0.06220987568652838
#>     Attrib V47    -0.06523970198045394
#>     Attrib V48    0.21396203726229257
#>     Attrib V49    0.16628337387484415
#>     Attrib V5    -0.05452217540397664
#>     Attrib V50    -0.047235686285628464
#>     Attrib V51    0.1504622367474007
#>     Attrib V52    0.14690774677359766
#>     Attrib V53    0.0980448545072277
#>     Attrib V54    0.08784070844599698
#>     Attrib V55    0.018274203474145267
#>     Attrib V56    0.1335633221971893
#>     Attrib V57    -0.05950460521987233
#>     Attrib V58    0.05436287992566455
#>     Attrib V59    -0.1414789363987604
#>     Attrib V6    -0.11118195073742206
#>     Attrib V60    0.00552111845442156
#>     Attrib V7    -0.2013841343264559
#>     Attrib V8    -0.09612230587483826
#>     Attrib V9    0.0755419340007141
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.19185969628969765
#>     Attrib V1    0.04040140442266549
#>     Attrib V10    0.06301607556960402
#>     Attrib V11    0.011315545035384848
#>     Attrib V12    -0.02334654561156408
#>     Attrib V13    0.005406300941238074
#>     Attrib V14    0.023289566232824747
#>     Attrib V15    -0.027833928858613754
#>     Attrib V16    0.015392554122184054
#>     Attrib V17    -0.03210641000171697
#>     Attrib V18    0.05812731778294609
#>     Attrib V19    -0.05718177506316065
#>     Attrib V2    0.07938349696248888
#>     Attrib V20    -0.03860917407508384
#>     Attrib V21    -0.03435996189242981
#>     Attrib V22    -0.04542913032955408
#>     Attrib V23    -0.024944867185351258
#>     Attrib V24    -0.059057257943410386
#>     Attrib V25    0.002122003619809313
#>     Attrib V26    -0.010292389317135508
#>     Attrib V27    -0.016830015918095603
#>     Attrib V28    -0.04700248536927272
#>     Attrib V29    -0.06207961026014035
#>     Attrib V3    0.14775222599734025
#>     Attrib V30    -0.07179154772832891
#>     Attrib V31    0.02650672849352409
#>     Attrib V32    -0.004435057656719267
#>     Attrib V33    0.03493573468783582
#>     Attrib V34    0.06992296697921946
#>     Attrib V35    0.001595406532719507
#>     Attrib V36    0.13001393906234332
#>     Attrib V37    0.043362525723446864
#>     Attrib V38    0.014173397149905415
#>     Attrib V39    0.08456070101055137
#>     Attrib V4    0.06336784756013018
#>     Attrib V40    0.057634745362210804
#>     Attrib V41    0.019401042454075586
#>     Attrib V42    0.026548792774820505
#>     Attrib V43    0.023818528835871582
#>     Attrib V44    0.06825095415116829
#>     Attrib V45    -0.04225784685514487
#>     Attrib V46    0.011395244450915009
#>     Attrib V47    0.09679059324055118
#>     Attrib V48    0.0239467292035337
#>     Attrib V49    0.04059351791526254
#>     Attrib V5    0.11506206543125445
#>     Attrib V50    0.0259924448721233
#>     Attrib V51    0.10495287107249199
#>     Attrib V52    0.02301698755192955
#>     Attrib V53    0.03451570410546695
#>     Attrib V54    -0.012373607636260532
#>     Attrib V55    0.08715550950108006
#>     Attrib V56    0.08148617394653214
#>     Attrib V57    0.09399442032150541
#>     Attrib V58    0.07585521527437854
#>     Attrib V59    0.0688229973913055
#>     Attrib V6    0.05187494294837485
#>     Attrib V60    0.07872728447359212
#>     Attrib V7    0.10635837436765974
#>     Attrib V8    0.120910740015955
#>     Attrib V9    0.06067627224800907
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.34243144587206026
#>     Attrib V1    0.6056868451607706
#>     Attrib V10    0.5276684693367868
#>     Attrib V11    1.0118033227385665
#>     Attrib V12    1.0037096695587668
#>     Attrib V13    0.3372793683792104
#>     Attrib V14    -0.29037306313789596
#>     Attrib V15    -0.17632737648970975
#>     Attrib V16    -0.49264575542459854
#>     Attrib V17    -0.374455908072297
#>     Attrib V18    -0.9801404889570543
#>     Attrib V19    -0.8149938538343191
#>     Attrib V2    0.29031586931343367
#>     Attrib V20    -0.10678982233289414
#>     Attrib V21    0.1205712733618094
#>     Attrib V22    -0.2861958305874776
#>     Attrib V23    0.0338090440358367
#>     Attrib V24    0.5059978227081325
#>     Attrib V25    0.16667390940248322
#>     Attrib V26    0.5224088563690189
#>     Attrib V27    0.5257696400181688
#>     Attrib V28    0.6886249948467601
#>     Attrib V29    0.3009355595424743
#>     Attrib V3    0.09690300921960476
#>     Attrib V30    0.5087817271640825
#>     Attrib V31    -0.2636058330813181
#>     Attrib V32    0.17464611216725287
#>     Attrib V33    -0.1810760832703607
#>     Attrib V34    -0.3623143864227296
#>     Attrib V35    0.40192874622891184
#>     Attrib V36    -0.2866652875439288
#>     Attrib V37    0.04784228902230664
#>     Attrib V38    0.20604371498973978
#>     Attrib V39    0.2203099383583079
#>     Attrib V4    0.32160710559623795
#>     Attrib V40    0.005878422268463767
#>     Attrib V41    0.20161512709831192
#>     Attrib V42    0.0030182509006993195
#>     Attrib V43    -0.013607617620808846
#>     Attrib V44    0.06288669552575528
#>     Attrib V45    0.6156714821689002
#>     Attrib V46    0.6299268950235147
#>     Attrib V47    0.22531971720040161
#>     Attrib V48    0.7493940830429241
#>     Attrib V49    0.7842569416093553
#>     Attrib V5    0.1833953845235204
#>     Attrib V50    -0.1760615865229684
#>     Attrib V51    0.39484515068631054
#>     Attrib V52    0.42415051324693714
#>     Attrib V53    0.037551574638199976
#>     Attrib V54    0.3314280264386355
#>     Attrib V55    0.01986489750488751
#>     Attrib V56    -0.530043569638116
#>     Attrib V57    -0.273770535914771
#>     Attrib V58    -0.13003159486128213
#>     Attrib V59    -0.7235134384828884
#>     Attrib V6    0.2437314529649099
#>     Attrib V60    -0.15867095492156524
#>     Attrib V7    -0.3129583650812556
#>     Attrib V8    -0.33441782502310863
#>     Attrib V9    0.5491976484013782
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.17226439335839705
#>     Attrib V1    0.32494158487290375
#>     Attrib V10    0.02624523963240784
#>     Attrib V11    0.3504606303320715
#>     Attrib V12    0.31883212151007095
#>     Attrib V13    -0.10937338799703662
#>     Attrib V14    -0.31904391561177514
#>     Attrib V15    0.043173711708142715
#>     Attrib V16    -0.02399238671580883
#>     Attrib V17    0.10813615378361938
#>     Attrib V18    -0.36508930660514755
#>     Attrib V19    -0.17585911641128138
#>     Attrib V2    -0.007198330930519996
#>     Attrib V20    0.3242322059598942
#>     Attrib V21    0.2913370914211013
#>     Attrib V22    -0.1723139401698158
#>     Attrib V23    0.35121912636916736
#>     Attrib V24    0.6396136536988172
#>     Attrib V25    0.10638418613983226
#>     Attrib V26    -0.010345860048062342
#>     Attrib V27    0.0047668368973389046
#>     Attrib V28    0.4850334401638329
#>     Attrib V29    0.2082370950160137
#>     Attrib V3    -0.025581027121959986
#>     Attrib V30    0.4355828568640055
#>     Attrib V31    -0.5612205180240638
#>     Attrib V32    0.3725339544396078
#>     Attrib V33    0.18899382811169338
#>     Attrib V34    -0.26394774552497985
#>     Attrib V35    0.4700472271016322
#>     Attrib V36    -0.2476746718360591
#>     Attrib V37    -0.29406918730078324
#>     Attrib V38    -0.045292345700135496
#>     Attrib V39    0.17116455969023872
#>     Attrib V4    0.25911939400906336
#>     Attrib V40    -0.06930535201882383
#>     Attrib V41    0.10468531591245103
#>     Attrib V42    0.3206357292817245
#>     Attrib V43    0.2594167575682719
#>     Attrib V44    0.42137609031670936
#>     Attrib V45    0.49879891199316706
#>     Attrib V46    0.19421671041686428
#>     Attrib V47    -0.2430794878482815
#>     Attrib V48    0.34463521211802095
#>     Attrib V49    0.4346880595893962
#>     Attrib V5    -0.05040508726627025
#>     Attrib V50    -0.7683864302572975
#>     Attrib V51    0.29787498328202555
#>     Attrib V52    0.27544006222266804
#>     Attrib V53    0.02382734711032652
#>     Attrib V54    0.29151674225227775
#>     Attrib V55    -0.26071738615965206
#>     Attrib V56    0.06481495171352794
#>     Attrib V57    -0.6430996279559162
#>     Attrib V58    -0.024621514526423305
#>     Attrib V59    -0.3821043038716193
#>     Attrib V6    -0.07794208052238047
#>     Attrib V60    -0.046868067965371275
#>     Attrib V7    -0.4355106587471082
#>     Attrib V8    -0.3342430983458506
#>     Attrib V9    0.27980579800309385
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.3116822028960135
#>     Attrib V1    0.0015715320019116144
#>     Attrib V10    -0.7149333079165383
#>     Attrib V11    -1.1415669771947612
#>     Attrib V12    -0.776546314894323
#>     Attrib V13    -0.4135646246295363
#>     Attrib V14    0.22809394524315574
#>     Attrib V15    0.2413616374068606
#>     Attrib V16    0.5529723957836497
#>     Attrib V17    0.7025534222530327
#>     Attrib V18    1.260628928659672
#>     Attrib V19    -0.015211314980007143
#>     Attrib V2    0.39084102605085047
#>     Attrib V20    -1.7998473607066103
#>     Attrib V21    -1.6656137357397975
#>     Attrib V22    -0.4084307154403212
#>     Attrib V23    -0.9731649773168903
#>     Attrib V24    -0.7686031533901205
#>     Attrib V25    0.7785984436424712
#>     Attrib V26    0.16335391920145353
#>     Attrib V27    0.30531315811655235
#>     Attrib V28    -0.3411824530074333
#>     Attrib V29    0.5193383373544076
#>     Attrib V3    -0.1934882263101327
#>     Attrib V30    0.2745419332766696
#>     Attrib V31    2.242268472743657
#>     Attrib V32    -0.06587797604680257
#>     Attrib V33    -0.12605222107281333
#>     Attrib V34    0.5053673933519551
#>     Attrib V35    -0.777641146027995
#>     Attrib V36    0.6830390877549459
#>     Attrib V37    1.259249823198456
#>     Attrib V38    0.2098072372211118
#>     Attrib V39    -0.06063001227002819
#>     Attrib V4    -0.840994547396479
#>     Attrib V40    0.6234299751306952
#>     Attrib V41    0.15988963339020607
#>     Attrib V42    -0.32337068897418697
#>     Attrib V43    -0.7998382364972597
#>     Attrib V44    -0.8541286150405463
#>     Attrib V45    -0.8452650206897948
#>     Attrib V46    -0.11606760601172449
#>     Attrib V47    0.7258942648157504
#>     Attrib V48    -0.32882610573218757
#>     Attrib V49    -1.0420468470053836
#>     Attrib V5    0.16433205706174508
#>     Attrib V50    1.1949330918377774
#>     Attrib V51    -0.35177716424067307
#>     Attrib V52    -0.2896413054384785
#>     Attrib V53    0.011898564150591994
#>     Attrib V54    -0.48812452298719083
#>     Attrib V55    0.45367041280123827
#>     Attrib V56    -0.2026373446949142
#>     Attrib V57    0.9034350897405393
#>     Attrib V58    -0.6309713528681339
#>     Attrib V59    -0.4284072499469344
#>     Attrib V6    0.3280606435731168
#>     Attrib V60    0.4012021763892866
#>     Attrib V7    0.6507664080235874
#>     Attrib V8    0.13918997671320674
#>     Attrib V9    -0.7000201308735429
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.08591604973108494
#>     Attrib V1    0.31835510002075074
#>     Attrib V10    0.03784271859189919
#>     Attrib V11    0.13937284518205598
#>     Attrib V12    0.09605339632603928
#>     Attrib V13    -0.00126488160021205
#>     Attrib V14    0.06659543534749959
#>     Attrib V15    0.12383059588601594
#>     Attrib V16    0.13053506203379953
#>     Attrib V17    0.0874762527670503
#>     Attrib V18    -0.07055959734202401
#>     Attrib V19    -0.06231336802736049
#>     Attrib V2    0.14401902628038463
#>     Attrib V20    0.15540568674778285
#>     Attrib V21    -0.037163832802613476
#>     Attrib V22    -0.30145879675971604
#>     Attrib V23    -0.24544759700999622
#>     Attrib V24    -0.09296633389553956
#>     Attrib V25    -0.2122557727539782
#>     Attrib V26    -0.20695455782617278
#>     Attrib V27    -0.20650635189044567
#>     Attrib V28    -0.10897432736412027
#>     Attrib V29    -0.07632660703167789
#>     Attrib V3    0.08491492429706696
#>     Attrib V30    -0.017015147806869774
#>     Attrib V31    -0.19946059438609293
#>     Attrib V32    0.10064837427998992
#>     Attrib V33    0.06670058983508967
#>     Attrib V34    -0.019920595500730175
#>     Attrib V35    0.2108428656654486
#>     Attrib V36    -0.058327547162301326
#>     Attrib V37    -0.05755527339948125
#>     Attrib V38    -0.006208255048805848
#>     Attrib V39    0.04065956844968012
#>     Attrib V4    0.17685477985615441
#>     Attrib V40    -0.08810632179778267
#>     Attrib V41    -0.20606967593540523
#>     Attrib V42    -0.011749488667248242
#>     Attrib V43    0.09511217500225455
#>     Attrib V44    0.08073954974847693
#>     Attrib V45    0.11701665341207995
#>     Attrib V46    0.09421606840734895
#>     Attrib V47    -0.09278859462088981
#>     Attrib V48    0.1894945764495097
#>     Attrib V49    0.20189385235676338
#>     Attrib V5    -0.04415563775231882
#>     Attrib V50    -0.04495732653065804
#>     Attrib V51    0.14130404644110284
#>     Attrib V52    0.2035840262757423
#>     Attrib V53    0.17396118666856242
#>     Attrib V54    0.17851239088463564
#>     Attrib V55    0.03051032001592205
#>     Attrib V56    0.2243516295782111
#>     Attrib V57    -0.11319591811928931
#>     Attrib V58    0.1967583148589785
#>     Attrib V59    -0.024076515504870364
#>     Attrib V6    -0.10955482876794836
#>     Attrib V60    0.10148888882273864
#>     Attrib V7    -0.13779919887111822
#>     Attrib V8    -0.20634941457917458
#>     Attrib V9    0.06567602738257416
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.008453603469638853
#>     Attrib V1    0.37403151267819135
#>     Attrib V10    -0.1621574492424556
#>     Attrib V11    0.2887841997714048
#>     Attrib V12    0.2820259490742687
#>     Attrib V13    -0.07795488967411014
#>     Attrib V14    -0.1420856797841609
#>     Attrib V15    0.3102912243746439
#>     Attrib V16    0.29995664285477663
#>     Attrib V17    0.47614884909218524
#>     Attrib V18    0.03584125167310579
#>     Attrib V19    0.2696644906917931
#>     Attrib V2    0.003650092729603212
#>     Attrib V20    0.7228074994545534
#>     Attrib V21    0.3600788174772967
#>     Attrib V22    -0.13838037631283268
#>     Attrib V23    0.324628301666394
#>     Attrib V24    0.4838352307915279
#>     Attrib V25    0.04895771704977114
#>     Attrib V26    -0.25747694940277405
#>     Attrib V27    -0.4402108973339805
#>     Attrib V28    0.0443123877194922
#>     Attrib V29    -0.36794750035182433
#>     Attrib V3    0.07755778865421213
#>     Attrib V30    -0.04081820215605069
#>     Attrib V31    -0.9920026210796932
#>     Attrib V32    0.37244034347465194
#>     Attrib V33    0.392458865767979
#>     Attrib V34    0.0015314428800073934
#>     Attrib V35    0.8191417847633123
#>     Attrib V36    0.007985393911047665
#>     Attrib V37    -0.2219532921784774
#>     Attrib V38    0.03200519761786509
#>     Attrib V39    0.25531122173580467
#>     Attrib V4    0.31161941016808425
#>     Attrib V40    -0.23539544090916018
#>     Attrib V41    -0.2400316280506951
#>     Attrib V42    0.3290993053532084
#>     Attrib V43    0.34380896851828685
#>     Attrib V44    0.4212229625142595
#>     Attrib V45    0.5098907092265015
#>     Attrib V46    0.017161926397312902
#>     Attrib V47    -0.4388944873909299
#>     Attrib V48    0.07267799974037824
#>     Attrib V49    0.39079375991109877
#>     Attrib V5    -0.348840624731286
#>     Attrib V50    -0.7016683833201522
#>     Attrib V51    0.20957621458881207
#>     Attrib V52    0.33648050845929056
#>     Attrib V53    0.28190135749601075
#>     Attrib V54    0.37505159398937843
#>     Attrib V55    -0.20627998162026945
#>     Attrib V56    0.5685128507338035
#>     Attrib V57    -0.7413568552975413
#>     Attrib V58    0.22162000044118474
#>     Attrib V59    -0.03604847303481125
#>     Attrib V6    -0.3500563490476777
#>     Attrib V60    0.09336656093798025
#>     Attrib V7    -0.48008695589361455
#>     Attrib V8    -0.45411137988819117
#>     Attrib V9    0.07686799112006089
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    0.03284639554939366
#>     Attrib V1    -0.4020497720979811
#>     Attrib V10    0.01445673830735883
#>     Attrib V11    -0.4814977995699305
#>     Attrib V12    -0.377920398411959
#>     Attrib V13    0.07780659556739286
#>     Attrib V14    0.2509988154782454
#>     Attrib V15    -0.3418877126564289
#>     Attrib V16    -0.2659805276800828
#>     Attrib V17    -0.35405198979384384
#>     Attrib V18    0.2814451985904548
#>     Attrib V19    -0.13187487077398008
#>     Attrib V2    -0.005318336533651754
#>     Attrib V20    -1.008158558080435
#>     Attrib V21    -0.7950711800024376
#>     Attrib V22    -0.032091880471318765
#>     Attrib V23    -0.6729627927385842
#>     Attrib V24    -0.8734151962350917
#>     Attrib V25    0.1448124925742349
#>     Attrib V26    0.47556716922191966
#>     Attrib V27    0.5556887931610291
#>     Attrib V28    -0.35226361805956174
#>     Attrib V29    0.08411942564434559
#>     Attrib V3    -0.15058438203500887
#>     Attrib V30    -0.3354270821045278
#>     Attrib V31    1.467688463146334
#>     Attrib V32    -0.43886839840280284
#>     Attrib V33    -0.4852438925950405
#>     Attrib V34    0.3219183667911476
#>     Attrib V35    -0.7664268575494658
#>     Attrib V36    0.5130102256411855
#>     Attrib V37    0.7764637481973241
#>     Attrib V38    0.12562088431840812
#>     Attrib V39    -0.2787713829014434
#>     Attrib V4    -0.57915680257432
#>     Attrib V40    0.4783770070315011
#>     Attrib V41    0.19409941934346575
#>     Attrib V42    -0.7506458016745418
#>     Attrib V43    -0.6015551370051594
#>     Attrib V44    -0.8291971413377793
#>     Attrib V45    -0.9225094902560103
#>     Attrib V46    -0.21308489241442002
#>     Attrib V47    0.5707644999759169
#>     Attrib V48    -0.33203968803404144
#>     Attrib V49    -0.8403560526821215
#>     Attrib V5    0.2766306125751209
#>     Attrib V50    1.16927778402273
#>     Attrib V51    -0.4528364966559651
#>     Attrib V52    -0.4088248866249133
#>     Attrib V53    -0.2640073756778234
#>     Attrib V54    -0.43119475414937114
#>     Attrib V55    0.46183606494788876
#>     Attrib V56    -0.5403877237829668
#>     Attrib V57    1.2244180419232786
#>     Attrib V58    -0.29454836372306764
#>     Attrib V59    0.10675654344118987
#>     Attrib V6    0.30238429520508736
#>     Attrib V60    -0.05972818097246002
#>     Attrib V7    0.6026928123659652
#>     Attrib V8    0.508814882881855
#>     Attrib V9    -0.2280446595574918
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.6217611021698043
#>     Attrib V1    0.4837290560188605
#>     Attrib V10    0.3565755772608697
#>     Attrib V11    1.069279591946946
#>     Attrib V12    1.360465876794315
#>     Attrib V13    0.8138322973959018
#>     Attrib V14    0.0086098961902729
#>     Attrib V15    -0.19794034374905356
#>     Attrib V16    -0.6678652152519633
#>     Attrib V17    -0.36221834298808714
#>     Attrib V18    -1.0791448570727522
#>     Attrib V19    -1.0915828106700416
#>     Attrib V2    0.38573770499426474
#>     Attrib V20    -0.3463651226235836
#>     Attrib V21    0.20672754079368622
#>     Attrib V22    0.00236135070195198
#>     Attrib V23    0.4590997205678743
#>     Attrib V24    0.6725087871603282
#>     Attrib V25    -0.006097398903664703
#>     Attrib V26    0.9202826572317945
#>     Attrib V27    1.2042437547278477
#>     Attrib V28    1.098472238246385
#>     Attrib V29    0.8398462700055992
#>     Attrib V3    0.3074466914720463
#>     Attrib V30    0.9718123898370444
#>     Attrib V31    -0.032029694725786005
#>     Attrib V32    -0.1266969435621952
#>     Attrib V33    -0.9205407212484591
#>     Attrib V34    -1.035938686996143
#>     Attrib V35    -0.23065788945046367
#>     Attrib V36    -0.7427820125517313
#>     Attrib V37    0.15930599957985248
#>     Attrib V38    0.29449637091316855
#>     Attrib V39    0.22802907311301923
#>     Attrib V4    0.3845200328463329
#>     Attrib V40    -0.05381008726138993
#>     Attrib V41    0.503350128725558
#>     Attrib V42    0.018079968713317057
#>     Attrib V43    0.11752374010929338
#>     Attrib V44    0.33983665497291277
#>     Attrib V45    0.712042995037738
#>     Attrib V46    0.7892064657017538
#>     Attrib V47    0.254389426071827
#>     Attrib V48    0.8290461302085576
#>     Attrib V49    1.0698345847297428
#>     Attrib V5    0.6670426130614392
#>     Attrib V50    -0.022635268202312486
#>     Attrib V51    0.710582261933862
#>     Attrib V52    0.7816353585341753
#>     Attrib V53    0.4461508444123828
#>     Attrib V54    0.8692797212167254
#>     Attrib V55    0.2533959298966234
#>     Attrib V56    -0.7493829903745479
#>     Attrib V57    -0.29332968934189674
#>     Attrib V58    -0.2313143982248364
#>     Attrib V59    -0.5442883099857121
#>     Attrib V6    0.8814247936308061
#>     Attrib V60    -0.3245517533471857
#>     Attrib V7    -0.39812174714635096
#>     Attrib V8    -0.5597455077202245
#>     Attrib V9    0.49638890115306916
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.16803421670329385
#>     Attrib V1    -0.12375469407096716
#>     Attrib V10    0.0883299257205094
#>     Attrib V11    -0.1009269161702664
#>     Attrib V12    -0.06589749220591787
#>     Attrib V13    0.01305202942668847
#>     Attrib V14    0.12335516119201542
#>     Attrib V15    -0.08833099973966892
#>     Attrib V16    0.0014097835789868979
#>     Attrib V17    -0.005931398624072154
#>     Attrib V18    0.09810079513272271
#>     Attrib V19    0.08615215602435716
#>     Attrib V2    0.024797383236745702
#>     Attrib V20    -0.16297394681063238
#>     Attrib V21    -0.10216272331733571
#>     Attrib V22    0.07924200855311524
#>     Attrib V23    -0.03464141271421028
#>     Attrib V24    -0.13743920535626175
#>     Attrib V25    0.07858303552760969
#>     Attrib V26    0.018427225532547414
#>     Attrib V27    0.04724902080168798
#>     Attrib V28    -0.11928947335825187
#>     Attrib V29    -0.10237119205477332
#>     Attrib V3    0.02882524663551606
#>     Attrib V30    -0.13809632094870702
#>     Attrib V31    0.2419131917656627
#>     Attrib V32    -0.17622149853772595
#>     Attrib V33    0.005656417173352399
#>     Attrib V34    0.09926901171457532
#>     Attrib V35    -0.15292799835172308
#>     Attrib V36    0.22227801869433567
#>     Attrib V37    0.16311143301016529
#>     Attrib V38    -3.3495178766463127E-4
#>     Attrib V39    0.0063108873578468835
#>     Attrib V4    0.007711526769331744
#>     Attrib V40    0.12769840027665755
#>     Attrib V41    0.03271889182134769
#>     Attrib V42    -0.11301383882260324
#>     Attrib V43    -0.09079801329609272
#>     Attrib V44    -0.10448646390843563
#>     Attrib V45    -0.24038426164549795
#>     Attrib V46    -0.1501716136866871
#>     Attrib V47    0.029118295151409897
#>     Attrib V48    -0.15199640095418818
#>     Attrib V49    -0.2342225930471442
#>     Attrib V5    0.11566991703474626
#>     Attrib V50    0.21320969338380086
#>     Attrib V51    -0.12787306058832637
#>     Attrib V52    -0.1667910935479492
#>     Attrib V53    -0.1374703095367078
#>     Attrib V54    -0.1216717354949462
#>     Attrib V55    0.10965315595652951
#>     Attrib V56    -0.011690295757726756
#>     Attrib V57    0.4313445602063961
#>     Attrib V58    0.01846714772185561
#>     Attrib V59    0.18220486770665864
#>     Attrib V6    0.17893068612253185
#>     Attrib V60    0.07805064339224577
#>     Attrib V7    0.2946544760148939
#>     Attrib V8    0.31259495065174936
#>     Attrib V9    0.013374775625333835
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.2998778726890392
#>     Attrib V1    0.5826247221886688
#>     Attrib V10    0.4045609780255967
#>     Attrib V11    0.8236713315938823
#>     Attrib V12    0.7109134582722085
#>     Attrib V13    0.2611175986859587
#>     Attrib V14    -0.19895177807204475
#>     Attrib V15    -0.03748772032941117
#>     Attrib V16    -0.24330972944044782
#>     Attrib V17    -0.2133398707444341
#>     Attrib V18    -0.6004179118712514
#>     Attrib V19    -0.5849051748393688
#>     Attrib V2    0.13579422328442742
#>     Attrib V20    -0.10343660402659334
#>     Attrib V21    -0.07655260348804312
#>     Attrib V22    -0.6180845777855745
#>     Attrib V23    -0.44706164704200807
#>     Attrib V24    0.007085109787834054
#>     Attrib V25    -0.14897857073043935
#>     Attrib V26    0.23726954790189478
#>     Attrib V27    0.154722433042466
#>     Attrib V28    0.2842280780537099
#>     Attrib V29    0.01919435808199363
#>     Attrib V3    0.04620362702228933
#>     Attrib V30    0.27866010885178
#>     Attrib V31    -0.2521818692111899
#>     Attrib V32    0.2804974454831021
#>     Attrib V33    -0.004005051506456629
#>     Attrib V34    -0.1562881877447755
#>     Attrib V35    0.36048414309008664
#>     Attrib V36    -0.3071423108412956
#>     Attrib V37    -0.11424624262753227
#>     Attrib V38    0.06809570348075887
#>     Attrib V39    0.16271070745692431
#>     Attrib V4    0.24632041186029668
#>     Attrib V40    -0.22347127531388414
#>     Attrib V41    -0.13981381868384973
#>     Attrib V42    -0.08345060057913775
#>     Attrib V43    -0.05063893245075627
#>     Attrib V44    0.10129786636354032
#>     Attrib V45    0.4430070845584331
#>     Attrib V46    0.27437239007542885
#>     Attrib V47    -0.013567748543852754
#>     Attrib V48    0.5952031293895865
#>     Attrib V49    0.5115129545048742
#>     Attrib V5    -0.12731353551006114
#>     Attrib V50    -0.1885440794886865
#>     Attrib V51    0.318488100421801
#>     Attrib V52    0.3502024853671561
#>     Attrib V53    0.1464029939419933
#>     Attrib V54    0.17106565065108867
#>     Attrib V55    -0.07931788933105295
#>     Attrib V56    -0.21587914479554435
#>     Attrib V57    -0.3877031024773665
#>     Attrib V58    0.07784200354802569
#>     Attrib V59    -0.47071283501205674
#>     Attrib V6    -0.07570286541546961
#>     Attrib V60    0.005450591149801276
#>     Attrib V7    -0.35478404807489095
#>     Attrib V8    -0.3122391122808815
#>     Attrib V9    0.39308534690585395
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.9431275355576759
#>     Attrib V1    -0.4755235148634431
#>     Attrib V10    -0.18788771495673914
#>     Attrib V11    -1.5967371444852299
#>     Attrib V12    -1.9033002746702954
#>     Attrib V13    -0.47343614302486664
#>     Attrib V14    0.686278469144619
#>     Attrib V15    -0.3454228089969353
#>     Attrib V16    -0.8093079867760878
#>     Attrib V17    -1.6407412470622824
#>     Attrib V18    -0.04127329748924414
#>     Attrib V19    -0.35941558693597647
#>     Attrib V2    0.23295766181742725
#>     Attrib V20    -0.7413477878110868
#>     Attrib V21    -0.395816809508783
#>     Attrib V22    -0.007393071450842674
#>     Attrib V23    -0.45282555857213214
#>     Attrib V24    -0.5931159812656528
#>     Attrib V25    0.21052906203102587
#>     Attrib V26    -0.3799410435326112
#>     Attrib V27    0.23774054353956742
#>     Attrib V28    -0.251664446252467
#>     Attrib V29    0.17151080054851384
#>     Attrib V3    0.023311252449552913
#>     Attrib V30    -1.0071913039191804
#>     Attrib V31    0.7291963242865231
#>     Attrib V32    0.14877883782760654
#>     Attrib V33    0.022077843343570006
#>     Attrib V34    0.04355742168431569
#>     Attrib V35    -0.31275084713978263
#>     Attrib V36    1.756672960521632
#>     Attrib V37    1.6223572375784368
#>     Attrib V38    1.0020226374215806
#>     Attrib V39    0.29397678105152447
#>     Attrib V4    -0.4127660519856335
#>     Attrib V40    0.19609875612383582
#>     Attrib V41    -0.46420792170065894
#>     Attrib V42    -0.7038969048363911
#>     Attrib V43    -0.5981936137107344
#>     Attrib V44    -0.21345692131632146
#>     Attrib V45    -0.7275605555377989
#>     Attrib V46    -0.9231402688128572
#>     Attrib V47    -0.3431903787334455
#>     Attrib V48    -1.0455147972808878
#>     Attrib V49    -1.0665273783752451
#>     Attrib V5    -0.7635514572314391
#>     Attrib V50    1.3107292561938635
#>     Attrib V51    -0.19108044070930255
#>     Attrib V52    0.3475823297599769
#>     Attrib V53    0.7263670774448678
#>     Attrib V54    -0.15245394816226038
#>     Attrib V55    0.5106868702734678
#>     Attrib V56    0.3455020525653359
#>     Attrib V57    1.0985925296098573
#>     Attrib V58    0.5080760757005381
#>     Attrib V59    0.485404501526616
#>     Attrib V6    -0.69526914949091
#>     Attrib V60    -0.3548570632134265
#>     Attrib V7    0.8852822878674321
#>     Attrib V8    0.7294783197630716
#>     Attrib V9    -0.2494691573916021
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.16479842509711348
#>     Attrib V1    0.39360202658192517
#>     Attrib V10    0.31908057118933325
#>     Attrib V11    0.8054178469062105
#>     Attrib V12    0.6822560859137956
#>     Attrib V13    0.07503631819215523
#>     Attrib V14    -0.37205567739708634
#>     Attrib V15    -0.22789083893737616
#>     Attrib V16    -0.24929091553999666
#>     Attrib V17    -0.12581545981745892
#>     Attrib V18    -0.5883524240839229
#>     Attrib V19    -0.5017267236548393
#>     Attrib V2    0.062091559905470266
#>     Attrib V20    0.12672626502092393
#>     Attrib V21    0.09909870530435204
#>     Attrib V22    -0.31934956321310204
#>     Attrib V23    0.024848968786252312
#>     Attrib V24    0.5162764817462774
#>     Attrib V25    0.29839406050237927
#>     Attrib V26    0.304441508671358
#>     Attrib V27    0.17797120779121026
#>     Attrib V28    0.36748103694170603
#>     Attrib V29    4.1866668146458355E-5
#>     Attrib V3    0.0578507877071676
#>     Attrib V30    0.24254306761193306
#>     Attrib V31    -0.29565963519547095
#>     Attrib V32    0.47863824146045847
#>     Attrib V33    0.2627804971834829
#>     Attrib V34    0.03798109381685974
#>     Attrib V35    0.5814361151730951
#>     Attrib V36    -0.16867381386562721
#>     Attrib V37    -0.12142250773161416
#>     Attrib V38    0.031346072217063155
#>     Attrib V39    0.1997180772939813
#>     Attrib V4    0.18321056308738493
#>     Attrib V40    -0.0011201003854325378
#>     Attrib V41    0.12467709159233391
#>     Attrib V42    0.07403982838388283
#>     Attrib V43    0.12029916526891872
#>     Attrib V44    0.10714130816103369
#>     Attrib V45    0.46671694221742044
#>     Attrib V46    0.35417161026610905
#>     Attrib V47    0.07439239502538943
#>     Attrib V48    0.5408197991048145
#>     Attrib V49    0.5325267672805862
#>     Attrib V5    -0.11317314576387269
#>     Attrib V50    -0.3335969255041252
#>     Attrib V51    0.31792641214986744
#>     Attrib V52    0.2804427770972149
#>     Attrib V53    -0.0382129711310373
#>     Attrib V54    0.15123212836194136
#>     Attrib V55    -0.0899886094402438
#>     Attrib V56    -0.147215711742488
#>     Attrib V57    -0.34337528895690983
#>     Attrib V58    -0.10526239179122736
#>     Attrib V59    -0.5845505491380939
#>     Attrib V6    -0.09425379734260737
#>     Attrib V60    -0.1085261330616559
#>     Attrib V7    -0.44911292258966107
#>     Attrib V8    -0.2674519230865349
#>     Attrib V9    0.4129440246123606
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.06248307951828533
#>     Attrib V1    0.29530353994361874
#>     Attrib V10    0.07369303125781768
#>     Attrib V11    0.16509678596245697
#>     Attrib V12    0.16570501305289453
#>     Attrib V13    0.06418422528166692
#>     Attrib V14    0.0017791610083070445
#>     Attrib V15    0.11440657089431565
#>     Attrib V16    0.03550809115308307
#>     Attrib V17    0.07240453410641966
#>     Attrib V18    -0.11438551272805215
#>     Attrib V19    -0.09810465244475193
#>     Attrib V2    0.12955279827265745
#>     Attrib V20    0.11243162184544646
#>     Attrib V21    0.017771563712157743
#>     Attrib V22    -0.2502171528036458
#>     Attrib V23    -0.14150373744193617
#>     Attrib V24    -0.06535432288035989
#>     Attrib V25    -0.09307651923237106
#>     Attrib V26    -0.07314040329650637
#>     Attrib V27    -0.13291721314397212
#>     Attrib V28    0.006691754455659386
#>     Attrib V29    -0.11449019873131931
#>     Attrib V3    0.07806507838558038
#>     Attrib V30    0.03494054374871458
#>     Attrib V31    -0.1792496013562111
#>     Attrib V32    0.10943255991803949
#>     Attrib V33    0.08200660373801882
#>     Attrib V34    -0.014759400386837145
#>     Attrib V35    0.2531877167489614
#>     Attrib V36    -0.05932913504687028
#>     Attrib V37    -0.018727381011858807
#>     Attrib V38    0.0016893458937592865
#>     Attrib V39    0.14129339798324816
#>     Attrib V4    0.1914669227018414
#>     Attrib V40    -0.05847647138936556
#>     Attrib V41    -0.11668724899503079
#>     Attrib V42    0.05767318238562265
#>     Attrib V43    0.03478925257950722
#>     Attrib V44    0.05155390524606081
#>     Attrib V45    0.17313890760575462
#>     Attrib V46    0.06919531612381787
#>     Attrib V47    -0.08483142332910978
#>     Attrib V48    0.19027388518972904
#>     Attrib V49    0.18239250125153667
#>     Attrib V5    -0.10978860288144894
#>     Attrib V50    -0.08656957934293434
#>     Attrib V51    0.126768973820543
#>     Attrib V52    0.18377330896993277
#>     Attrib V53    0.16958106593550742
#>     Attrib V54    0.15040801640174778
#>     Attrib V55    -0.03722559982407821
#>     Attrib V56    0.18578762102306123
#>     Attrib V57    -0.16802092524496193
#>     Attrib V58    0.14789754946238842
#>     Attrib V59    -0.027928506520457426
#>     Attrib V6    -0.12774035944512158
#>     Attrib V60    0.059304380362745074
#>     Attrib V7    -0.21863298336844159
#>     Attrib V8    -0.17750393802342587
#>     Attrib V9    0.04252171793451383
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.0873897008001538
#>     Attrib V1    0.39531415403107806
#>     Attrib V10    -0.1720945644454809
#>     Attrib V11    0.18734831420868336
#>     Attrib V12    0.0794248421096349
#>     Attrib V13    -0.15957059498687978
#>     Attrib V14    -0.0902348419781856
#>     Attrib V15    0.3557139478890208
#>     Attrib V16    0.3592386281626174
#>     Attrib V17    0.43823047661904774
#>     Attrib V18    0.08862686107149162
#>     Attrib V19    0.27027847726162163
#>     Attrib V2    0.12398893008413726
#>     Attrib V20    0.7328414004557775
#>     Attrib V21    0.23896747280304007
#>     Attrib V22    -0.21120344539370164
#>     Attrib V23    0.16399815550039623
#>     Attrib V24    0.3304572085290475
#>     Attrib V25    -0.13303159663377004
#>     Attrib V26    -0.4304144740376614
#>     Attrib V27    -0.6397787350566984
#>     Attrib V28    -0.23230852012995615
#>     Attrib V29    -0.5099242625988507
#>     Attrib V3    0.030314865834702713
#>     Attrib V30    -0.13780011196672454
#>     Attrib V31    -0.8471477473376454
#>     Attrib V32    0.3613591967022801
#>     Attrib V33    0.5088237465189469
#>     Attrib V34    0.18242599340506682
#>     Attrib V35    0.7584009395715648
#>     Attrib V36    -0.05806405536024648
#>     Attrib V37    -0.3251681137893964
#>     Attrib V38    6.405929090051643E-4
#>     Attrib V39    0.17796058064849635
#>     Attrib V4    0.26558916654384707
#>     Attrib V40    -0.20664785822936582
#>     Attrib V41    -0.3074930023481785
#>     Attrib V42    0.2724964884152288
#>     Attrib V43    0.2876074677922225
#>     Attrib V44    0.3777113444989426
#>     Attrib V45    0.38022576383315904
#>     Attrib V46    -0.030042416590868714
#>     Attrib V47    -0.43740491594294384
#>     Attrib V48    0.12634928049132388
#>     Attrib V49    0.34013152097199034
#>     Attrib V5    -0.3920649253969647
#>     Attrib V50    -0.5646991802553272
#>     Attrib V51    0.19348726481297418
#>     Attrib V52    0.2925914585939818
#>     Attrib V53    0.2898362396182802
#>     Attrib V54    0.3986230392152226
#>     Attrib V55    -0.12752199008505188
#>     Attrib V56    0.5657727476919769
#>     Attrib V57    -0.5762890161968741
#>     Attrib V58    0.20056641480641127
#>     Attrib V59    -0.0035554194999417948
#>     Attrib V6    -0.4024561019740854
#>     Attrib V60    0.13004338347358196
#>     Attrib V7    -0.4226531832695908
#>     Attrib V8    -0.36507533044867163
#>     Attrib V9    0.057433667267941566
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.08545427233573573
#>     Attrib V1    0.26716353159163425
#>     Attrib V10    -0.05308727405762215
#>     Attrib V11    0.07905162973352269
#>     Attrib V12    0.027894770898604995
#>     Attrib V13    -0.06036250094548434
#>     Attrib V14    0.06728755655995734
#>     Attrib V15    0.15923360863751645
#>     Attrib V16    0.11145445262445386
#>     Attrib V17    0.053604900180497426
#>     Attrib V18    -0.003443697360869527
#>     Attrib V19    -0.07316527170183858
#>     Attrib V2    0.07945880042311301
#>     Attrib V20    0.14362643089850718
#>     Attrib V21    0.019015327705887312
#>     Attrib V22    -0.2259071552328453
#>     Attrib V23    -0.11406007151639001
#>     Attrib V24    -0.09885586299222222
#>     Attrib V25    -0.22603409862537127
#>     Attrib V26    -0.20037049072617194
#>     Attrib V27    -0.1665279107425102
#>     Attrib V28    0.03260003774938973
#>     Attrib V29    -0.018631102857724235
#>     Attrib V3    0.11224364882756403
#>     Attrib V30    0.07203863781850486
#>     Attrib V31    -0.26319939584653324
#>     Attrib V32    0.08783911753568581
#>     Attrib V33    0.11761074965723932
#>     Attrib V34    -0.014209294601670551
#>     Attrib V35    0.20743936413106312
#>     Attrib V36    -0.005050875522672654
#>     Attrib V37    -0.05895365016833999
#>     Attrib V38    -0.02807704790349752
#>     Attrib V39    0.07536351895025149
#>     Attrib V4    0.1343741636964985
#>     Attrib V40    -0.11760252256799268
#>     Attrib V41    -0.1598970698538683
#>     Attrib V42    0.07455548907414716
#>     Attrib V43    0.016909731049759052
#>     Attrib V44    0.1253569413916429
#>     Attrib V45    0.2117230513383508
#>     Attrib V46    0.0764140926935666
#>     Attrib V47    -0.05944725202995357
#>     Attrib V48    0.10835426174121555
#>     Attrib V49    0.20916297247608862
#>     Attrib V5    -0.051930050966058336
#>     Attrib V50    -0.10160562677754814
#>     Attrib V51    0.15317971000875288
#>     Attrib V52    0.2078446145819239
#>     Attrib V53    0.16200059539232703
#>     Attrib V54    0.0804760366687431
#>     Attrib V55    -0.040742360053924856
#>     Attrib V56    0.14824173082801254
#>     Attrib V57    -0.14649256014710502
#>     Attrib V58    0.17500355242221352
#>     Attrib V59    -0.08363219268927047
#>     Attrib V6    -0.08487955353491
#>     Attrib V60    0.024122839538276368
#>     Attrib V7    -0.14462911998150915
#>     Attrib V8    -0.10458563363906008
#>     Attrib V9    0.06407945655395876
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
