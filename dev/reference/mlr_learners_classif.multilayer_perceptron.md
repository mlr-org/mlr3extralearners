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
#>     Threshold    -0.23917700257638688
#>     Node 2    2.3215965505775147
#>     Node 3    1.9205062404231867
#>     Node 4    0.7949738740127777
#>     Node 5    -3.7478046021550293
#>     Node 6    0.30456791782260684
#>     Node 7    3.760978203780015
#>     Node 8    0.41788574981020044
#>     Node 9    3.873672354089119
#>     Node 10    -0.8200583242728327
#>     Node 11    1.5471925513846885
#>     Node 12    1.891205831711024
#>     Node 13    0.029479684385866352
#>     Node 14    1.6075149984811485
#>     Node 15    -2.625295334868716
#>     Node 16    0.25656746615311643
#>     Node 17    0.4033762650387426
#>     Node 18    -0.5836314795255831
#>     Node 19    1.7207117287710132
#>     Node 20    1.5866705461082395
#>     Node 21    -2.9540639169488623
#>     Node 22    0.6512852735758335
#>     Node 23    0.7153709883195924
#>     Node 24    -0.9791286951872564
#>     Node 25    4.020615461722049
#>     Node 26    0.06142468077880568
#>     Node 27    2.535050510558425
#>     Node 28    -1.5889121054087818
#>     Node 29    1.0195153615731296
#>     Node 30    0.03992766869404344
#>     Node 31    1.0657296719953595
#>     Node 32    0.0048279156317038545
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.24861112066923033
#>     Node 2    -2.367393779903328
#>     Node 3    -1.9079080520717824
#>     Node 4    -0.7543677685348714
#>     Node 5    3.7434143003835
#>     Node 6    -0.27873458754702923
#>     Node 7    -3.7548384338131764
#>     Node 8    -0.4457064158567722
#>     Node 9    -3.873594849423624
#>     Node 10    0.7598942538063919
#>     Node 11    -1.5031115174728071
#>     Node 12    -1.9713242509973963
#>     Node 13    0.030415063941765397
#>     Node 14    -1.5413759876916753
#>     Node 15    2.605511847209295
#>     Node 16    -0.27005758058439194
#>     Node 17    -0.3666676357538746
#>     Node 18    0.634177184749631
#>     Node 19    -1.7045301890441737
#>     Node 20    -1.5811313033833747
#>     Node 21    2.998571584046984
#>     Node 22    -0.7017422792263626
#>     Node 23    -0.7630765709951643
#>     Node 24    0.9749376159450927
#>     Node 25    -4.00723442620515
#>     Node 26    -0.1393082969148211
#>     Node 27    -2.563981426879661
#>     Node 28    1.5471322859778702
#>     Node 29    -1.0473373519563234
#>     Node 30    0.04224803253493947
#>     Node 31    -1.0137852217913468
#>     Node 32    -0.0161525325306102
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.5759876741492543
#>     Attrib V1    0.1031849306302508
#>     Attrib V10    0.6499630755232065
#>     Attrib V11    0.7100843322160402
#>     Attrib V12    0.8161859455755732
#>     Attrib V13    0.13469994874883578
#>     Attrib V14    -0.49408352738574984
#>     Attrib V15    -0.17497050338998454
#>     Attrib V16    -0.45312126128348834
#>     Attrib V17    -0.3551804933051486
#>     Attrib V18    -0.3074032484834405
#>     Attrib V19    -0.5369907508972113
#>     Attrib V2    0.22316822953482063
#>     Attrib V20    0.19501342869668462
#>     Attrib V21    0.2839290510585936
#>     Attrib V22    0.6335530143957709
#>     Attrib V23    0.39746655658744123
#>     Attrib V24    -0.0940859405736006
#>     Attrib V25    -0.693303746475565
#>     Attrib V26    -0.6340082125022358
#>     Attrib V27    -0.177499455856256
#>     Attrib V28    1.1303035440350693
#>     Attrib V29    0.8863254988339883
#>     Attrib V3    -0.10578513196004662
#>     Attrib V30    0.3948688719526518
#>     Attrib V31    -1.625326836047708
#>     Attrib V32    0.4348402074404185
#>     Attrib V33    0.17697616346901315
#>     Attrib V34    -0.5216732412667023
#>     Attrib V35    -0.4550929307442148
#>     Attrib V36    -1.146116307989126
#>     Attrib V37    -0.1294730764586837
#>     Attrib V38    -0.08800786354287438
#>     Attrib V39    0.05840520579787524
#>     Attrib V4    0.12643524660050848
#>     Attrib V40    -0.11065790407965344
#>     Attrib V41    0.7213661679899015
#>     Attrib V42    0.31441469758168367
#>     Attrib V43    0.34087240866618723
#>     Attrib V44    0.32226098173067236
#>     Attrib V45    1.00495772139273
#>     Attrib V46    0.04763718923578012
#>     Attrib V47    -0.4211591250903785
#>     Attrib V48    0.24459897317589552
#>     Attrib V49    0.9385251314506459
#>     Attrib V5    -0.027338483194567144
#>     Attrib V50    -1.3595884943185435
#>     Attrib V51    0.12780397805409693
#>     Attrib V52    0.3146756761010054
#>     Attrib V53    0.5257533467758028
#>     Attrib V54    0.6739750225693575
#>     Attrib V55    -0.84606006163903
#>     Attrib V56    -0.43493731311891176
#>     Attrib V57    0.22261208449932776
#>     Attrib V58    0.7591078589205836
#>     Attrib V59    -0.12382593939829563
#>     Attrib V6    -0.6604612040694795
#>     Attrib V60    0.05965547375139591
#>     Attrib V7    -1.1332154219223787
#>     Attrib V8    -0.040071832764758564
#>     Attrib V9    1.4213372191740488
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.12577940688368283
#>     Attrib V1    0.3780686135084574
#>     Attrib V10    -0.24672425944437126
#>     Attrib V11    -0.1073736032354844
#>     Attrib V12    0.11435147682071102
#>     Attrib V13    0.009404039615206002
#>     Attrib V14    0.05998065706880588
#>     Attrib V15    0.2994247512913107
#>     Attrib V16    0.1837296207758765
#>     Attrib V17    0.3488482646985359
#>     Attrib V18    0.08060494774919232
#>     Attrib V19    -0.0046382978823841054
#>     Attrib V2    0.16077767949082525
#>     Attrib V20    0.7552886090235295
#>     Attrib V21    0.5546133588165029
#>     Attrib V22    0.3988380406628064
#>     Attrib V23    0.16407167350593854
#>     Attrib V24    0.06563984102290861
#>     Attrib V25    -0.26675274193828025
#>     Attrib V26    -0.6598187124442696
#>     Attrib V27    -0.9010508815465277
#>     Attrib V28    -0.009453380082168781
#>     Attrib V29    -0.006692130470145232
#>     Attrib V3    0.1265544107998039
#>     Attrib V30    0.175904226187768
#>     Attrib V31    -1.0073067376585032
#>     Attrib V32    0.3034621134771817
#>     Attrib V33    0.4029119211906755
#>     Attrib V34    -0.46319824711177265
#>     Attrib V35    -0.5652333892045882
#>     Attrib V36    -0.836181869517392
#>     Attrib V37    -0.553672096215854
#>     Attrib V38    0.22937734118213135
#>     Attrib V39    0.3701728152220324
#>     Attrib V4    0.3188858999423186
#>     Attrib V40    -0.04066939982222393
#>     Attrib V41    0.1269227433358058
#>     Attrib V42    0.31724489092683134
#>     Attrib V43    0.23639918794046627
#>     Attrib V44    0.39777356193842295
#>     Attrib V45    0.6307583127857113
#>     Attrib V46    -0.16525902242912036
#>     Attrib V47    -0.5348278971722362
#>     Attrib V48    -0.028645561637474646
#>     Attrib V49    0.528904767720575
#>     Attrib V5    -0.09914522212293436
#>     Attrib V50    -0.8195024997501058
#>     Attrib V51    -0.2840054437292205
#>     Attrib V52    0.030119286493627117
#>     Attrib V53    0.4135852098575319
#>     Attrib V54    0.7417823357119958
#>     Attrib V55    -0.35971667576911276
#>     Attrib V56    0.2568068627681483
#>     Attrib V57    0.6411565965217164
#>     Attrib V58    0.7070020937379802
#>     Attrib V59    0.5542689586413468
#>     Attrib V6    -0.303493599147562
#>     Attrib V60    -0.2755164962813559
#>     Attrib V7    -0.14302220002862723
#>     Attrib V8    0.15125479620182514
#>     Attrib V9    0.6042975901681896
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.06216418594072964
#>     Attrib V1    0.05699468451692874
#>     Attrib V10    -0.015378736928067422
#>     Attrib V11    0.07414091083409105
#>     Attrib V12    0.17866404565757582
#>     Attrib V13    0.07021279830662668
#>     Attrib V14    -0.032442594401464346
#>     Attrib V15    0.047023375934609944
#>     Attrib V16    -0.07072936563854265
#>     Attrib V17    -8.845594877247642E-4
#>     Attrib V18    -0.04359010300612331
#>     Attrib V19    -0.1140297756639297
#>     Attrib V2    0.0606216993742158
#>     Attrib V20    0.1681884114138637
#>     Attrib V21    0.17360037527265573
#>     Attrib V22    0.09708518055273109
#>     Attrib V23    0.08518174700261053
#>     Attrib V24    0.04103620157058672
#>     Attrib V25    -0.11012038047585021
#>     Attrib V26    -0.16644273777666296
#>     Attrib V27    -0.2667335758657703
#>     Attrib V28    0.15152361145385604
#>     Attrib V29    0.13637504297104386
#>     Attrib V3    0.0611967323431243
#>     Attrib V30    0.07353862294488063
#>     Attrib V31    -0.36317718085825124
#>     Attrib V32    0.1584069917839587
#>     Attrib V33    0.16310663709448975
#>     Attrib V34    -0.0876842641766712
#>     Attrib V35    -0.11895504909361111
#>     Attrib V36    -0.4047953672061344
#>     Attrib V37    -0.2055026945821846
#>     Attrib V38    -0.06458321202881472
#>     Attrib V39    0.0669481016158617
#>     Attrib V4    0.0480737640629534
#>     Attrib V40    -0.019084553109461035
#>     Attrib V41    0.0864790994217255
#>     Attrib V42    0.06823703910343949
#>     Attrib V43    0.03426488616437084
#>     Attrib V44    0.10484623475496577
#>     Attrib V45    0.3362914536114494
#>     Attrib V46    -0.01998024179437521
#>     Attrib V47    -0.1738722858047449
#>     Attrib V48    0.06901049949692341
#>     Attrib V49    0.29392756391115266
#>     Attrib V5    -0.011127339443712289
#>     Attrib V50    -0.3761171115620788
#>     Attrib V51    -0.025976301618004235
#>     Attrib V52    0.061743535399277225
#>     Attrib V53    0.2596376439181814
#>     Attrib V54    0.09517651505179957
#>     Attrib V55    -0.18840205000446805
#>     Attrib V56    0.0309474855724184
#>     Attrib V57    0.19176837518019096
#>     Attrib V58    0.25086235350686836
#>     Attrib V59    0.0847134530042196
#>     Attrib V6    -0.16444187725014608
#>     Attrib V60    -0.09669786329049822
#>     Attrib V7    -0.19225230740796923
#>     Attrib V8    -0.048042479655049555
#>     Attrib V9    0.368308935299968
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.25040757563587135
#>     Attrib V1    -0.7003293524242911
#>     Attrib V10    0.5422511764663088
#>     Attrib V11    0.20790716143321825
#>     Attrib V12    -0.07630571548138682
#>     Attrib V13    0.18321769159368642
#>     Attrib V14    0.004047849221714312
#>     Attrib V15    -0.323261851604851
#>     Attrib V16    -0.35310028438764246
#>     Attrib V17    -0.684307798073063
#>     Attrib V18    -0.06803178531935868
#>     Attrib V19    0.08278453629259984
#>     Attrib V2    0.0018674005499139878
#>     Attrib V20    -1.5772582777688726
#>     Attrib V21    -1.1082097946277458
#>     Attrib V22    -0.5550739260685004
#>     Attrib V23    -0.240024642971629
#>     Attrib V24    -0.14950269924001064
#>     Attrib V25    0.5955691471998659
#>     Attrib V26    1.1969863525366573
#>     Attrib V27    1.5286082629897695
#>     Attrib V28    -0.24462791699461658
#>     Attrib V29    -0.17388403952808604
#>     Attrib V3    -0.08814252842688083
#>     Attrib V30    -0.2521274070366317
#>     Attrib V31    2.175343215202433
#>     Attrib V32    -0.23987885257797747
#>     Attrib V33    -0.7543232506395331
#>     Attrib V34    0.7804685588304204
#>     Attrib V35    1.0644384289726274
#>     Attrib V36    1.4561819836747183
#>     Attrib V37    1.0458610811967504
#>     Attrib V38    -0.7079936874289074
#>     Attrib V39    -0.8348165291273073
#>     Attrib V4    -0.7682024506865102
#>     Attrib V40    0.26431088170098693
#>     Attrib V41    0.05183688240744631
#>     Attrib V42    -0.6922188610550918
#>     Attrib V43    -0.6525876927027343
#>     Attrib V44    -0.9096536349533996
#>     Attrib V45    -1.197175965471306
#>     Attrib V46    0.2439303436278823
#>     Attrib V47    1.0724775944478238
#>     Attrib V48    0.015296841998949585
#>     Attrib V49    -1.0705728141198394
#>     Attrib V5    0.19722935822119056
#>     Attrib V50    1.4157983783375527
#>     Attrib V51    0.5432719346562641
#>     Attrib V52    0.06883087549581768
#>     Attrib V53    -0.7226695055404012
#>     Attrib V54    -1.4791587367352423
#>     Attrib V55    0.7792841749071789
#>     Attrib V56    -0.5248500129836969
#>     Attrib V57    -1.270435963706736
#>     Attrib V58    -1.2948394335053277
#>     Attrib V59    -1.1376609415727994
#>     Attrib V6    0.6196065007654086
#>     Attrib V60    0.80151026403217
#>     Attrib V7    0.1121570905151036
#>     Attrib V8    -0.3230382668899858
#>     Attrib V9    -1.1485267480375576
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.03954429052922076
#>     Attrib V1    0.11636395590886514
#>     Attrib V10    7.78172039296119E-4
#>     Attrib V11    0.07403242892945693
#>     Attrib V12    0.13479070223927647
#>     Attrib V13    0.011336291001043119
#>     Attrib V14    0.037095132029568524
#>     Attrib V15    0.03906466206070411
#>     Attrib V16    0.05558754930389345
#>     Attrib V17    0.008947681339306124
#>     Attrib V18    0.04553125710421747
#>     Attrib V19    -0.055677766382490876
#>     Attrib V2    0.09892961863610901
#>     Attrib V20    0.050464542104375114
#>     Attrib V21    0.04993755381077126
#>     Attrib V22    -0.05000337706533627
#>     Attrib V23    -0.041346272559156766
#>     Attrib V24    0.019352491946472757
#>     Attrib V25    0.026309815042480353
#>     Attrib V26    -0.051360410635476264
#>     Attrib V27    -0.05239250013820624
#>     Attrib V28    -0.0037697173196231865
#>     Attrib V29    -0.00427727469837026
#>     Attrib V3    0.101695411324559
#>     Attrib V30    0.005446371268066868
#>     Attrib V31    -0.1224953270392794
#>     Attrib V32    0.05443528632878833
#>     Attrib V33    0.04894306469566498
#>     Attrib V34    -0.043286196701247136
#>     Attrib V35    0.005453107904115539
#>     Attrib V36    -0.11371148072899492
#>     Attrib V37    -0.04397040778431431
#>     Attrib V38    -0.013753611180956494
#>     Attrib V39    0.025853639846701092
#>     Attrib V4    0.12785861540315593
#>     Attrib V40    -0.03684104129232404
#>     Attrib V41    0.04981337791261958
#>     Attrib V42    0.031526474571857775
#>     Attrib V43    0.026479530670649867
#>     Attrib V44    0.060208302834625964
#>     Attrib V45    0.11567530905630577
#>     Attrib V46    0.03772992319247582
#>     Attrib V47    -0.01554535095061046
#>     Attrib V48    0.0048167718173400004
#>     Attrib V49    0.04749733841694098
#>     Attrib V5    0.0418283239438621
#>     Attrib V50    -0.0695865429186882
#>     Attrib V51    0.011400482826954541
#>     Attrib V52    0.0411528217036849
#>     Attrib V53    0.12962944760871778
#>     Attrib V54    0.03867182606717848
#>     Attrib V55    -0.0011977882756427768
#>     Attrib V56    0.08671237620168327
#>     Attrib V57    0.14832393507396816
#>     Attrib V58    0.15442715242526556
#>     Attrib V59    0.09759082538952545
#>     Attrib V6    0.051959210472405
#>     Attrib V60    0.050927124880726926
#>     Attrib V7    0.002999375138714641
#>     Attrib V8    0.08199704443061931
#>     Attrib V9    0.17925849197574492
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4154914544185457
#>     Attrib V1    -0.16150882308280312
#>     Attrib V10    1.1902210673128062
#>     Attrib V11    1.3796998228422706
#>     Attrib V12    1.6010433693990365
#>     Attrib V13    0.924306876078856
#>     Attrib V14    -0.46125338773487046
#>     Attrib V15    -0.5026259280595703
#>     Attrib V16    -0.8603496401758394
#>     Attrib V17    -0.7698386367280271
#>     Attrib V18    -0.2556763481094955
#>     Attrib V19    -0.32949329551312667
#>     Attrib V2    0.5546405914559519
#>     Attrib V20    -0.4344711770036539
#>     Attrib V21    0.08582449597118982
#>     Attrib V22    1.004741271573384
#>     Attrib V23    1.169890217887191
#>     Attrib V24    0.5840854036230625
#>     Attrib V25    0.11814222804945343
#>     Attrib V26    0.522067091412347
#>     Attrib V27    1.1248708779641956
#>     Attrib V28    1.838941136186162
#>     Attrib V29    1.3906366636821728
#>     Attrib V3    0.17216663568183413
#>     Attrib V30    0.20050777487498295
#>     Attrib V31    -0.7443845296920777
#>     Attrib V32    0.28435650724735984
#>     Attrib V33    -0.4275985238334999
#>     Attrib V34    -0.2607828579737815
#>     Attrib V35    0.16494117620827967
#>     Attrib V36    -0.8786689371793424
#>     Attrib V37    0.3218828239873163
#>     Attrib V38    -0.5383484770905294
#>     Attrib V39    -0.11220494521295309
#>     Attrib V4    -0.12886252306139734
#>     Attrib V40    0.3625126283107507
#>     Attrib V41    1.313484572100635
#>     Attrib V42    -0.09511592743121597
#>     Attrib V43    0.19488032047043508
#>     Attrib V44    0.16939734341093263
#>     Attrib V45    1.0099052537178705
#>     Attrib V46    0.744304878564881
#>     Attrib V47    0.556679819582084
#>     Attrib V48    0.725120797528112
#>     Attrib V49    1.2838394086089038
#>     Attrib V5    0.5253217917585913
#>     Attrib V50    -0.6323823328812058
#>     Attrib V51    0.6751597076118995
#>     Attrib V52    1.1020992392324127
#>     Attrib V53    1.091068687396716
#>     Attrib V54    -0.23440790576856407
#>     Attrib V55    -0.7404597898293989
#>     Attrib V56    -0.5237790070208944
#>     Attrib V57    -0.39355038444559315
#>     Attrib V58    0.4376769297542997
#>     Attrib V59    -0.6687920823585762
#>     Attrib V6    0.16695201797573378
#>     Attrib V60    0.57340211006376
#>     Attrib V7    -1.1574200505525802
#>     Attrib V8    -0.6368740190876669
#>     Attrib V9    1.4055006187658392
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.006343589268231346
#>     Attrib V1    0.06981288857154637
#>     Attrib V10    0.05655499984868675
#>     Attrib V11    0.11969835122165577
#>     Attrib V12    0.11739435510080341
#>     Attrib V13    0.05958899843885216
#>     Attrib V14    -0.03849461867330053
#>     Attrib V15    0.006649540078540527
#>     Attrib V16    0.01405046004237379
#>     Attrib V17    -0.003731857988849893
#>     Attrib V18    -0.04432564986212509
#>     Attrib V19    -0.048985084399575086
#>     Attrib V2    0.09789306388731325
#>     Attrib V20    0.030632269174900188
#>     Attrib V21    0.04306004442757033
#>     Attrib V22    -0.012445790858168167
#>     Attrib V23    -0.0034294134798892235
#>     Attrib V24    0.042770187114522754
#>     Attrib V25    -0.014924806436231107
#>     Attrib V26    -0.02864536879886528
#>     Attrib V27    -0.08068076025739901
#>     Attrib V28    0.09072111609503768
#>     Attrib V29    0.06789138324575213
#>     Attrib V3    0.07768418820417694
#>     Attrib V30    0.0430460805864955
#>     Attrib V31    -0.18939124073397784
#>     Attrib V32    0.06524746588849015
#>     Attrib V33    0.08018165528654754
#>     Attrib V34    -0.044874514106177696
#>     Attrib V35    -0.03839790084444129
#>     Attrib V36    -0.12479622337073627
#>     Attrib V37    -0.07723897159010162
#>     Attrib V38    0.04098005067865551
#>     Attrib V39    0.03605106956605816
#>     Attrib V4    0.1365966311481709
#>     Attrib V40    -0.03604447747315442
#>     Attrib V41    0.012138835216835477
#>     Attrib V42    -0.07840918237254975
#>     Attrib V43    0.007462173948034451
#>     Attrib V44    0.10698145459530735
#>     Attrib V45    0.18143667829070073
#>     Attrib V46    0.06917023647432993
#>     Attrib V47    7.709576942075558E-4
#>     Attrib V48    0.09795767217763501
#>     Attrib V49    0.15023945207952255
#>     Attrib V5    0.012125115222506361
#>     Attrib V50    -0.18665816287815118
#>     Attrib V51    -0.00917961806012576
#>     Attrib V52    0.06213602357522288
#>     Attrib V53    0.1640290078799773
#>     Attrib V54    0.08968328917557428
#>     Attrib V55    -0.05105213885086862
#>     Attrib V56    0.0023129378203529407
#>     Attrib V57    0.18795730174707567
#>     Attrib V58    0.1416065403819566
#>     Attrib V59    0.07087206563473288
#>     Attrib V6    -0.06702786766286332
#>     Attrib V60    0.02375562431801449
#>     Attrib V7    -0.06462479973259928
#>     Attrib V8    -6.642123644376955E-4
#>     Attrib V9    0.20945781434600472
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.3517329123591138
#>     Attrib V1    -0.24970216879957655
#>     Attrib V10    1.2560549236291645
#>     Attrib V11    1.3633787161420707
#>     Attrib V12    1.6919474423530807
#>     Attrib V13    1.0013575371264802
#>     Attrib V14    -0.5152454115595865
#>     Attrib V15    -0.5128584239351047
#>     Attrib V16    -0.8453103200686206
#>     Attrib V17    -0.7242871645907107
#>     Attrib V18    -0.23353446416173862
#>     Attrib V19    -0.36832629166026026
#>     Attrib V2    0.5219403244885659
#>     Attrib V20    -0.5141793722379763
#>     Attrib V21    0.08239163943856717
#>     Attrib V22    1.0434505766276925
#>     Attrib V23    1.160648227591906
#>     Attrib V24    0.6446765993062219
#>     Attrib V25    0.22477641159092668
#>     Attrib V26    0.5839385094726177
#>     Attrib V27    1.1624025868913663
#>     Attrib V28    1.7889549426388773
#>     Attrib V29    1.2566987091280493
#>     Attrib V3    0.12835767177926163
#>     Attrib V30    0.1723397418548912
#>     Attrib V31    -0.6785768639337046
#>     Attrib V32    0.30820616873122597
#>     Attrib V33    -0.43869276456703915
#>     Attrib V34    -0.1919661990669128
#>     Attrib V35    0.19370905281093295
#>     Attrib V36    -0.8241911993012607
#>     Attrib V37    0.279061077463763
#>     Attrib V38    -0.5540842990402969
#>     Attrib V39    -0.03601926776268257
#>     Attrib V4    -0.1726112976668673
#>     Attrib V40    0.3742680363310609
#>     Attrib V41    1.3139075523298673
#>     Attrib V42    -0.20913716487708475
#>     Attrib V43    0.20748667710071933
#>     Attrib V44    0.12787485474764085
#>     Attrib V45    0.9990971910800105
#>     Attrib V46    0.7882176557886111
#>     Attrib V47    0.6041004478406613
#>     Attrib V48    0.7660864335208776
#>     Attrib V49    1.368375749408478
#>     Attrib V5    0.4846879970693258
#>     Attrib V50    -0.6143562205476913
#>     Attrib V51    0.733894637251996
#>     Attrib V52    1.134883354130244
#>     Attrib V53    1.1931431778663073
#>     Attrib V54    -0.3387378551482802
#>     Attrib V55    -0.6830045000433679
#>     Attrib V56    -0.510476960571781
#>     Attrib V57    -0.5010389700037171
#>     Attrib V58    0.3810538241176198
#>     Attrib V59    -0.6988634904329121
#>     Attrib V6    0.23997337488799
#>     Attrib V60    0.5102206772348513
#>     Attrib V7    -1.130449860136624
#>     Attrib V8    -0.6046040473736247
#>     Attrib V9    1.3441521599601984
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.16268017675138607
#>     Attrib V1    -0.01076220798905586
#>     Attrib V10    0.00909738465033547
#>     Attrib V11    -0.08529893268835174
#>     Attrib V12    -0.07089437783049
#>     Attrib V13    0.057206336257339466
#>     Attrib V14    0.0635224700994817
#>     Attrib V15    -0.0359048716379972
#>     Attrib V16    0.045719099750044956
#>     Attrib V17    -0.05074521858531816
#>     Attrib V18    0.11885276165616594
#>     Attrib V19    -0.010198142318539199
#>     Attrib V2    0.04261791480029185
#>     Attrib V20    -0.2807670831378795
#>     Attrib V21    -0.17569487475857087
#>     Attrib V22    -0.08852159576735504
#>     Attrib V23    -0.03843150960328023
#>     Attrib V24    -0.1341860189624305
#>     Attrib V25    -0.11693659647028186
#>     Attrib V26    -0.07962423261294206
#>     Attrib V27    -0.11828206240685137
#>     Attrib V28    -0.2706676027704886
#>     Attrib V29    -0.15117463571010853
#>     Attrib V3    0.015297053407587502
#>     Attrib V30    0.11082080458008814
#>     Attrib V31    0.4873000602877297
#>     Attrib V32    0.08009192316317026
#>     Attrib V33    0.20330439157734886
#>     Attrib V34    0.2980485300202278
#>     Attrib V35    0.3132468404951455
#>     Attrib V36    0.46115704045275385
#>     Attrib V37    0.3713028715702511
#>     Attrib V38    0.14265819141942745
#>     Attrib V39    0.013727962388543822
#>     Attrib V4    -0.0059231562810649575
#>     Attrib V40    0.37278837420205785
#>     Attrib V41    0.4481842549276717
#>     Attrib V42    0.30361124089167063
#>     Attrib V43    0.1610077140172316
#>     Attrib V44    0.07406070005175276
#>     Attrib V45    -0.12507687031114992
#>     Attrib V46    0.02659036801595156
#>     Attrib V47    0.10472835462910564
#>     Attrib V48    -0.08217871082777645
#>     Attrib V49    -0.16205161194281378
#>     Attrib V5    0.11228283030437042
#>     Attrib V50    0.34542685410097684
#>     Attrib V51    0.16867911427152602
#>     Attrib V52    0.1008432285992315
#>     Attrib V53    0.09491374534902282
#>     Attrib V54    0.003998397570486561
#>     Attrib V55    0.1118404111988473
#>     Attrib V56    0.04464492279622585
#>     Attrib V57    -0.04756446249022353
#>     Attrib V58    -0.09474152917008398
#>     Attrib V59    0.053823342388183634
#>     Attrib V6    0.3061140454909602
#>     Attrib V60    0.17108263942171587
#>     Attrib V7    0.275604161139379
#>     Attrib V8    0.10958481106814817
#>     Attrib V9    -0.204790965578473
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.3028861439979616
#>     Attrib V1    0.002792904834257477
#>     Attrib V10    0.46872636627483016
#>     Attrib V11    0.5704297197125061
#>     Attrib V12    0.6419358042652923
#>     Attrib V13    0.13036537399413814
#>     Attrib V14    -0.30036423028498077
#>     Attrib V15    -0.1806089513798891
#>     Attrib V16    -0.3600349000325917
#>     Attrib V17    -0.28768898130834436
#>     Attrib V18    -0.2665249215733474
#>     Attrib V19    -0.4309378296541185
#>     Attrib V2    0.1202363389103975
#>     Attrib V20    -0.06464260464455947
#>     Attrib V21    -0.048698176528494806
#>     Attrib V22    0.15492195886641752
#>     Attrib V23    0.1083167754053044
#>     Attrib V24    -0.12352754542986054
#>     Attrib V25    -0.36217876988506287
#>     Attrib V26    -0.2750878312115233
#>     Attrib V27    0.13373965913678246
#>     Attrib V28    0.8920878448631835
#>     Attrib V29    0.6522060087419019
#>     Attrib V3    -0.10373426214865929
#>     Attrib V30    0.2785459588120597
#>     Attrib V31    -0.9117214012841559
#>     Attrib V32    0.20761208533753178
#>     Attrib V33    0.10798901454300341
#>     Attrib V34    -0.16764896191411044
#>     Attrib V35    -0.07229599238004322
#>     Attrib V36    -0.5707812354122264
#>     Attrib V37    -0.04261240468600171
#>     Attrib V38    -0.04244946860395057
#>     Attrib V39    -0.013901513972760796
#>     Attrib V4    0.0778820106026462
#>     Attrib V40    -0.1473163719034352
#>     Attrib V41    0.2908750526607339
#>     Attrib V42    0.05845425397573815
#>     Attrib V43    0.16618776490629747
#>     Attrib V44    0.23729551816081274
#>     Attrib V45    0.7686340724367056
#>     Attrib V46    0.16116711569478537
#>     Attrib V47    -0.07928228510174416
#>     Attrib V48    0.31515227359667175
#>     Attrib V49    0.6374967141117005
#>     Attrib V5    0.03528066781356334
#>     Attrib V50    -0.7087391700478062
#>     Attrib V51    0.15958472072145188
#>     Attrib V52    0.21570055905458646
#>     Attrib V53    0.27754732691123396
#>     Attrib V54    0.3520008898565005
#>     Attrib V55    -0.3409836864095445
#>     Attrib V56    -0.314565245007102
#>     Attrib V57    0.1330743971343442
#>     Attrib V58    0.5072096328243226
#>     Attrib V59    -0.2044531972581201
#>     Attrib V6    -0.3046776335330024
#>     Attrib V60    0.027129035271635134
#>     Attrib V7    -0.6928805588492498
#>     Attrib V8    -0.02459442616730818
#>     Attrib V9    0.9103945798230577
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.19707409025570466
#>     Attrib V1    0.3178333009197289
#>     Attrib V10    -0.30542486769066235
#>     Attrib V11    2.614961801476971E-4
#>     Attrib V12    0.12574472527081226
#>     Attrib V13    0.02057195263462671
#>     Attrib V14    0.03342756470854405
#>     Attrib V15    0.18290290623929625
#>     Attrib V16    0.15764527485339475
#>     Attrib V17    0.3199347396814858
#>     Attrib V18    0.10010318425609122
#>     Attrib V19    -0.02457193500675482
#>     Attrib V2    0.1866490076961296
#>     Attrib V20    0.7194675962551339
#>     Attrib V21    0.563750852772486
#>     Attrib V22    0.45965696359290054
#>     Attrib V23    0.20741168984770894
#>     Attrib V24    0.02861004619627862
#>     Attrib V25    -0.32974849088743297
#>     Attrib V26    -0.6557695653399558
#>     Attrib V27    -0.7941941901650155
#>     Attrib V28    0.13964204749218997
#>     Attrib V29    0.22148841907280475
#>     Attrib V3    0.047703092213950644
#>     Attrib V30    0.16390523206061366
#>     Attrib V31    -1.20807566269919
#>     Attrib V32    0.22259001563092584
#>     Attrib V33    0.42178696079952416
#>     Attrib V34    -0.3993475343122215
#>     Attrib V35    -0.5020574398066728
#>     Attrib V36    -0.7827894166691974
#>     Attrib V37    -0.46919457307334544
#>     Attrib V38    0.33334825216804076
#>     Attrib V39    0.3419824527532086
#>     Attrib V4    0.3650438688752086
#>     Attrib V40    -0.051779487847419314
#>     Attrib V41    0.12440114416424203
#>     Attrib V42    0.25414788090390694
#>     Attrib V43    0.30540478139281324
#>     Attrib V44    0.4017942703384477
#>     Attrib V45    0.8010707985270435
#>     Attrib V46    -0.05098207961593804
#>     Attrib V47    -0.5692979367768959
#>     Attrib V48    0.061146878024609275
#>     Attrib V49    0.5852671454411056
#>     Attrib V5    -0.0854428266508381
#>     Attrib V50    -0.9445527769001567
#>     Attrib V51    -0.2359330204494197
#>     Attrib V52    0.05768797938169249
#>     Attrib V53    0.4629871609003469
#>     Attrib V54    0.6840219186115596
#>     Attrib V55    -0.495917693774742
#>     Attrib V56    0.19886099549836328
#>     Attrib V57    0.6559872008738333
#>     Attrib V58    0.6969754278514149
#>     Attrib V59    0.4906277967734596
#>     Attrib V6    -0.3542314527044378
#>     Attrib V60    -0.3048166831524595
#>     Attrib V7    -0.1899154373854292
#>     Attrib V8    0.06655048931051763
#>     Attrib V9    0.6815194252269555
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.20080938615693333
#>     Attrib V1    0.05906319440343665
#>     Attrib V10    0.025386890264112442
#>     Attrib V11    0.047705281092322374
#>     Attrib V12    0.0343838509205201
#>     Attrib V13    0.09262652431126274
#>     Attrib V14    0.06558668651140663
#>     Attrib V15    0.02156932032896452
#>     Attrib V16    -0.011495079162994668
#>     Attrib V17    0.02881518462725575
#>     Attrib V18    0.007868636940387953
#>     Attrib V19    -0.03315852060503716
#>     Attrib V2    0.07670705564080497
#>     Attrib V20    -0.0172655205746896
#>     Attrib V21    -0.035305886315295125
#>     Attrib V22    -0.10927304443449122
#>     Attrib V23    -0.04929467547685162
#>     Attrib V24    -0.0564048705509115
#>     Attrib V25    -0.008352440199768248
#>     Attrib V26    -0.07263732987756981
#>     Attrib V27    -0.006538533551736633
#>     Attrib V28    -0.06075732772970927
#>     Attrib V29    -0.009345328823170341
#>     Attrib V3    0.15513521855496215
#>     Attrib V30    0.012548984685784607
#>     Attrib V31    -0.01911534286757113
#>     Attrib V32    0.013599360150316228
#>     Attrib V33    0.01809532048457311
#>     Attrib V34    0.08244696378178873
#>     Attrib V35    0.056897572262414584
#>     Attrib V36    0.05418600404738695
#>     Attrib V37    0.07692731209860651
#>     Attrib V38    0.045983254380623374
#>     Attrib V39    0.11741053222843642
#>     Attrib V4    0.1079666398889551
#>     Attrib V40    0.10131794081099567
#>     Attrib V41    0.08223178377311925
#>     Attrib V42    0.06898719060216844
#>     Attrib V43    0.013615333250399523
#>     Attrib V44    0.059309744756967625
#>     Attrib V45    0.016294725803686117
#>     Attrib V46    0.08477462268278091
#>     Attrib V47    0.11162629377461944
#>     Attrib V48    0.03586118063887821
#>     Attrib V49    0.051290514823045925
#>     Attrib V5    0.11273195019058467
#>     Attrib V50    0.020578169889542978
#>     Attrib V51    0.051246338547060365
#>     Attrib V52    0.04603019564564012
#>     Attrib V53    0.04209567482288032
#>     Attrib V54    0.011773786067818103
#>     Attrib V55    0.07758893185194506
#>     Attrib V56    0.08448628214905415
#>     Attrib V57    0.09197426878690383
#>     Attrib V58    0.07009832330329405
#>     Attrib V59    0.08818407768346728
#>     Attrib V6    0.11106892292505786
#>     Attrib V60    0.12066792758462318
#>     Attrib V7    0.10888199984589764
#>     Attrib V8    0.03373024059871398
#>     Attrib V9    0.04704468600196913
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.21839361263087834
#>     Attrib V1    0.3073477053730343
#>     Attrib V10    -0.08337817970818254
#>     Attrib V11    0.12012187359915114
#>     Attrib V12    0.2593745401996921
#>     Attrib V13    0.003466767324291779
#>     Attrib V14    -0.13966659810386187
#>     Attrib V15    0.1367026386334944
#>     Attrib V16    0.017355108517698246
#>     Attrib V17    0.1979189833315107
#>     Attrib V18    0.04946194995922356
#>     Attrib V19    -0.12375380693031401
#>     Attrib V2    0.1387253319102085
#>     Attrib V20    0.5071474301348285
#>     Attrib V21    0.3945960816150653
#>     Attrib V22    0.3789777816261635
#>     Attrib V23    0.23381241091664262
#>     Attrib V24    0.052545351025923726
#>     Attrib V25    -0.2386733258099402
#>     Attrib V26    -0.45841337609925203
#>     Attrib V27    -0.6691100219512185
#>     Attrib V28    0.07304780359926821
#>     Attrib V29    0.10051219160827292
#>     Attrib V3    -0.02734631543576676
#>     Attrib V30    0.2073683137566933
#>     Attrib V31    -0.878276573254875
#>     Attrib V32    0.313809127745158
#>     Attrib V33    0.3842654041719699
#>     Attrib V34    -0.3019613644650832
#>     Attrib V35    -0.3698794745647477
#>     Attrib V36    -0.7822061044107941
#>     Attrib V37    -0.41185395795875335
#>     Attrib V38    0.10577089808069688
#>     Attrib V39    0.22289779344104102
#>     Attrib V4    0.1917167924953166
#>     Attrib V40    -0.07065059500255708
#>     Attrib V41    0.1700127238714477
#>     Attrib V42    0.1962669425342807
#>     Attrib V43    0.18626173818037614
#>     Attrib V44    0.35616058479376883
#>     Attrib V45    0.6201506118694793
#>     Attrib V46    -0.03878222718691033
#>     Attrib V47    -0.46765316527395306
#>     Attrib V48    0.07878064043204058
#>     Attrib V49    0.6103216561804287
#>     Attrib V5    -0.14216218028488523
#>     Attrib V50    -0.8424417307223153
#>     Attrib V51    -0.20352522903489986
#>     Attrib V52    0.03989303920503474
#>     Attrib V53    0.317806180445042
#>     Attrib V54    0.5738406342616656
#>     Attrib V55    -0.40164669845176176
#>     Attrib V56    0.08637983008683868
#>     Attrib V57    0.4393613883624397
#>     Attrib V58    0.5895355975240735
#>     Attrib V59    0.3156395683968821
#>     Attrib V6    -0.31382526621685897
#>     Attrib V60    -0.14797168540573039
#>     Attrib V7    -0.27946255209491344
#>     Attrib V8    -0.010019596439422252
#>     Attrib V9    0.6795048985754982
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.1668887573905494
#>     Attrib V1    -0.5360165066649112
#>     Attrib V10    0.3745052572990309
#>     Attrib V11    0.07672249059762208
#>     Attrib V12    -0.05785805567870919
#>     Attrib V13    0.08927740773444767
#>     Attrib V14    -0.040887849692987845
#>     Attrib V15    -0.23484115803658703
#>     Attrib V16    -0.23864215636891592
#>     Attrib V17    -0.5390781747068563
#>     Attrib V18    -0.14799801029367252
#>     Attrib V19    0.04956485243603272
#>     Attrib V2    -0.0818841720284714
#>     Attrib V20    -1.1414295391850198
#>     Attrib V21    -0.8518903427031147
#>     Attrib V22    -0.45872748313302397
#>     Attrib V23    -0.30228953002063474
#>     Attrib V24    -0.165660516642879
#>     Attrib V25    0.3509206207527101
#>     Attrib V26    0.9147849499394386
#>     Attrib V27    1.124807910788596
#>     Attrib V28    -0.09964774381537489
#>     Attrib V29    -0.0801509449957075
#>     Attrib V3    -0.07380026457732111
#>     Attrib V30    -0.1977079927342795
#>     Attrib V31    1.5874237033241978
#>     Attrib V32    -0.2730830899665829
#>     Attrib V33    -0.5697692256455158
#>     Attrib V34    0.655802250682582
#>     Attrib V35    0.790373606226339
#>     Attrib V36    1.113397017405879
#>     Attrib V37    0.881709517025539
#>     Attrib V38    -0.49027479047463907
#>     Attrib V39    -0.5676937418098444
#>     Attrib V4    -0.5213682427736797
#>     Attrib V40    0.16736153299123585
#>     Attrib V41    -0.02444554384252325
#>     Attrib V42    -0.5322250392695237
#>     Attrib V43    -0.5269238130166354
#>     Attrib V44    -0.703680763339646
#>     Attrib V45    -0.8840641452479843
#>     Attrib V46    0.20981219195303102
#>     Attrib V47    0.7635141498299656
#>     Attrib V48    -0.029423612893063125
#>     Attrib V49    -0.8582138283817502
#>     Attrib V5    0.1296782056867242
#>     Attrib V50    1.032175919266233
#>     Attrib V51    0.3605200697221378
#>     Attrib V52    -0.05234796016265204
#>     Attrib V53    -0.534679701541624
#>     Attrib V54    -1.0131877055756486
#>     Attrib V55    0.6009768109431811
#>     Attrib V56    -0.36296667079661077
#>     Attrib V57    -0.8989960455645152
#>     Attrib V58    -0.9739729285260562
#>     Attrib V59    -0.7852812679566169
#>     Attrib V6    0.46012966667189303
#>     Attrib V60    0.4848690974654453
#>     Attrib V7    0.09988099274985893
#>     Attrib V8    -0.19133681096754232
#>     Attrib V9    -0.8699629824960209
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.12006697012063304
#>     Attrib V1    0.08805924243908797
#>     Attrib V10    0.04780652362553262
#>     Attrib V11    0.06666032158198044
#>     Attrib V12    0.0881745504147856
#>     Attrib V13    0.07000752023856428
#>     Attrib V14    0.010114270440803562
#>     Attrib V15    0.017015650712737924
#>     Attrib V16    0.0509706120009428
#>     Attrib V17    0.0626842969702951
#>     Attrib V18    0.04915189470663213
#>     Attrib V19    -0.01177466406377217
#>     Attrib V2    0.041764279225753244
#>     Attrib V20    0.010965196511448507
#>     Attrib V21    -0.008119067047557391
#>     Attrib V22    -0.05117017413098721
#>     Attrib V23    -0.08273990119728933
#>     Attrib V24    0.0016812628441080445
#>     Attrib V25    -0.002903983934034009
#>     Attrib V26    -0.07205865998164171
#>     Attrib V27    -0.08513514682907673
#>     Attrib V28    0.03240977265284712
#>     Attrib V29    -0.0020796598655423836
#>     Attrib V3    0.10916118072510551
#>     Attrib V30    -0.038134009836662125
#>     Attrib V31    -0.14404900577367277
#>     Attrib V32    0.032003439429448645
#>     Attrib V33    0.010247295972672802
#>     Attrib V34    1.2556290361118326E-4
#>     Attrib V35    -0.02455325847955812
#>     Attrib V36    -0.09338297668350702
#>     Attrib V37    -0.020410236062051473
#>     Attrib V38    0.021669075509321265
#>     Attrib V39    0.060910278457342586
#>     Attrib V4    0.11392506577415838
#>     Attrib V40    -0.031071709554386828
#>     Attrib V41    0.00863057945520567
#>     Attrib V42    0.0273828573689853
#>     Attrib V43    0.011161583311948362
#>     Attrib V44    0.030614634098801257
#>     Attrib V45    0.11785267131934546
#>     Attrib V46    0.05102121987736184
#>     Attrib V47    0.010718275481103984
#>     Attrib V48    0.04039537631716653
#>     Attrib V49    0.05392827078547752
#>     Attrib V5    0.04808237123857737
#>     Attrib V50    -0.024791705936132214
#>     Attrib V51    0.07033224755314642
#>     Attrib V52    0.09006946865124661
#>     Attrib V53    0.13721607592171176
#>     Attrib V54    0.0643574890898397
#>     Attrib V55    0.05272440922820279
#>     Attrib V56    0.08501668254568426
#>     Attrib V57    0.1488717361414742
#>     Attrib V58    0.18464870858584204
#>     Attrib V59    0.03435924474242716
#>     Attrib V6    0.029845380998789407
#>     Attrib V60    0.046205567870268784
#>     Attrib V7    -0.008411527894563349
#>     Attrib V8    0.017133038150616207
#>     Attrib V9    0.16883940217790624
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.024162768643995757
#>     Attrib V1    0.12254607039316068
#>     Attrib V10    0.07796561605408847
#>     Attrib V11    0.11518836891024074
#>     Attrib V12    0.08247433338436749
#>     Attrib V13    -0.007226156906165902
#>     Attrib V14    -0.010895322462131835
#>     Attrib V15    0.0808992546303257
#>     Attrib V16    -0.011266154899171614
#>     Attrib V17    0.01480428801616618
#>     Attrib V18    -0.010378934527235116
#>     Attrib V19    -0.0358383091235635
#>     Attrib V2    0.14042133693123154
#>     Attrib V20    0.052420475435448914
#>     Attrib V21    0.03413879337637334
#>     Attrib V22    0.04748288897323636
#>     Attrib V23    -0.0414754240954395
#>     Attrib V24    0.00921797574061094
#>     Attrib V25    -0.06545069344884322
#>     Attrib V26    -0.09667830845411171
#>     Attrib V27    -0.10254288826584107
#>     Attrib V28    0.02928333810823954
#>     Attrib V29    -0.010967044233879088
#>     Attrib V3    0.06284412265675617
#>     Attrib V30    0.038345801746388124
#>     Attrib V31    -0.1412016953385155
#>     Attrib V32    0.010835172571424231
#>     Attrib V33    0.08637787738984572
#>     Attrib V34    -0.07577524752700707
#>     Attrib V35    -0.0013096676040824193
#>     Attrib V36    -0.16484306545208607
#>     Attrib V37    -0.0985504198496114
#>     Attrib V38    0.05682751716900579
#>     Attrib V39    0.07703790857096048
#>     Attrib V4    0.10141653607977194
#>     Attrib V40    -0.06948833290305685
#>     Attrib V41    0.014503745292158957
#>     Attrib V42    -0.034225496599407046
#>     Attrib V43    0.06466870148360408
#>     Attrib V44    0.10862498262964579
#>     Attrib V45    0.19216076781495162
#>     Attrib V46    -0.0012345817148100378
#>     Attrib V47    -0.06961145800220604
#>     Attrib V48    0.09532965097981241
#>     Attrib V49    0.08733525564119131
#>     Attrib V5    0.016377214320089734
#>     Attrib V50    -0.13206722084262076
#>     Attrib V51    0.010765054190255518
#>     Attrib V52    0.032870668873399435
#>     Attrib V53    0.08153664382625632
#>     Attrib V54    0.0755833996285731
#>     Attrib V55    0.02606489713385094
#>     Attrib V56    0.07075160712788682
#>     Attrib V57    0.1883436567862778
#>     Attrib V58    0.1314152476886634
#>     Attrib V59    0.020462099523175632
#>     Attrib V6    -0.01679843038354594
#>     Attrib V60    0.006173520447428906
#>     Attrib V7    -0.08795299270611685
#>     Attrib V8    0.07114901360872362
#>     Attrib V9    0.20477206606621134
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.24263255604969342
#>     Attrib V1    -0.06219510657857148
#>     Attrib V10    -0.007220042394487429
#>     Attrib V11    -0.1196860461300475
#>     Attrib V12    -0.2229417569060255
#>     Attrib V13    -0.024885109982988873
#>     Attrib V14    0.09247494113720459
#>     Attrib V15    0.019113156081175288
#>     Attrib V16    0.07026287853738439
#>     Attrib V17    -0.03269814698960533
#>     Attrib V18    0.10120382461318904
#>     Attrib V19    -0.08944239234272441
#>     Attrib V2    0.04258179008159411
#>     Attrib V20    -0.2816984422545296
#>     Attrib V21    -0.18167478369988924
#>     Attrib V22    -0.1657410034365681
#>     Attrib V23    -0.08672762316490967
#>     Attrib V24    -0.0867464478321147
#>     Attrib V25    0.008749593218607233
#>     Attrib V26    0.036098677408490466
#>     Attrib V27    -0.04401868981115786
#>     Attrib V28    -0.28250783750639125
#>     Attrib V29    -0.14859123034236615
#>     Attrib V3    0.11038851962797676
#>     Attrib V30    0.004286430911628794
#>     Attrib V31    0.41290822128178034
#>     Attrib V32    -0.03401854570433714
#>     Attrib V33    0.029490085682930874
#>     Attrib V34    0.18972421685691265
#>     Attrib V35    0.22126895483854817
#>     Attrib V36    0.5226419679186323
#>     Attrib V37    0.3167758794130259
#>     Attrib V38    0.05959112940305605
#>     Attrib V39    0.00778879471784185
#>     Attrib V4    -0.022481433364335102
#>     Attrib V40    0.19843609175628202
#>     Attrib V41    0.17502322727561964
#>     Attrib V42    0.16199470770104205
#>     Attrib V43    0.049278423624594066
#>     Attrib V44    0.015821651710304557
#>     Attrib V45    -0.2640028475903965
#>     Attrib V46    0.0036317579569195473
#>     Attrib V47    0.15811675784178508
#>     Attrib V48    -0.05463430641721517
#>     Attrib V49    -0.17426095065828562
#>     Attrib V5    0.07346920623750959
#>     Attrib V50    0.3116832931355392
#>     Attrib V51    0.22643609802344924
#>     Attrib V52    0.10148045044411264
#>     Attrib V53    0.014636289939647208
#>     Attrib V54    -0.06957944762799181
#>     Attrib V55    0.2405317433839018
#>     Attrib V56    0.10079618585733133
#>     Attrib V57    -0.049854767497474264
#>     Attrib V58    -0.08717810890129385
#>     Attrib V59    0.10735591414770261
#>     Attrib V6    0.20984087168623544
#>     Attrib V60    0.2336460122855338
#>     Attrib V7    0.3371585049039195
#>     Attrib V8    0.16780157572128845
#>     Attrib V9    -0.22365502164324416
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.32020044012401905
#>     Attrib V1    -0.08708116592176234
#>     Attrib V10    0.5091671444178063
#>     Attrib V11    0.6760212776494245
#>     Attrib V12    0.9025820796103471
#>     Attrib V13    0.39308100340436053
#>     Attrib V14    -0.21641694888599794
#>     Attrib V15    -0.15136459552295886
#>     Attrib V16    -0.46533578647540297
#>     Attrib V17    -0.3981106311009411
#>     Attrib V18    -0.2352993846842732
#>     Attrib V19    -0.39079771536959657
#>     Attrib V2    0.19839154346724697
#>     Attrib V20    -0.29632975043118615
#>     Attrib V21    -0.2030590773583689
#>     Attrib V22    0.21496618939740048
#>     Attrib V23    0.19722965400013645
#>     Attrib V24    0.005209390938778102
#>     Attrib V25    -0.1732191805786757
#>     Attrib V26    0.01073882486405772
#>     Attrib V27    0.4688171872586794
#>     Attrib V28    1.0508493179364164
#>     Attrib V29    0.7426047485042525
#>     Attrib V3    -0.057834779258188224
#>     Attrib V30    0.20579564319506785
#>     Attrib V31    -0.7267951462901419
#>     Attrib V32    0.1716840547592149
#>     Attrib V33    0.02806793254760078
#>     Attrib V34    -0.17798347376287568
#>     Attrib V35    0.0024090288608784103
#>     Attrib V36    -0.5850655141087929
#>     Attrib V37    0.00839075325514294
#>     Attrib V38    -0.2177668525170992
#>     Attrib V39    -0.10481169525855791
#>     Attrib V4    0.1355805249806621
#>     Attrib V40    -0.02329821789654805
#>     Attrib V41    0.46394872786415725
#>     Attrib V42    0.061761814745130005
#>     Attrib V43    0.17306092543427737
#>     Attrib V44    0.10054145091100748
#>     Attrib V45    0.7018545349095173
#>     Attrib V46    0.2647496152305258
#>     Attrib V47    -0.05643797657629376
#>     Attrib V48    0.26245547549553827
#>     Attrib V49    0.7029667999282673
#>     Attrib V5    0.14054555362856047
#>     Attrib V50    -0.6984118247365737
#>     Attrib V51    0.13525270364595013
#>     Attrib V52    0.43474122258778003
#>     Attrib V53    0.565967511205793
#>     Attrib V54    0.2984052047463238
#>     Attrib V55    -0.2611847900243242
#>     Attrib V56    -0.41697327981144156
#>     Attrib V57    0.037545887056189116
#>     Attrib V58    0.5764807824166821
#>     Attrib V59    -0.131190002218357
#>     Attrib V6    -0.25548062285586703
#>     Attrib V60    0.26791478315214573
#>     Attrib V7    -0.7061642231955713
#>     Attrib V8    -0.15177478515057538
#>     Attrib V9    0.8441195648756971
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.08502714016393743
#>     Attrib V1    0.336742484486788
#>     Attrib V10    -0.2774121566168381
#>     Attrib V11    -0.056654485970392854
#>     Attrib V12    0.14808015034029356
#>     Attrib V13    0.0038547618150759646
#>     Attrib V14    0.03574998485138106
#>     Attrib V15    0.1471975589805328
#>     Attrib V16    0.0800800999358382
#>     Attrib V17    0.3051290171102865
#>     Attrib V18    0.1708330683164461
#>     Attrib V19    -0.0013028357568059612
#>     Attrib V2    0.1152449339083455
#>     Attrib V20    0.6651650478146282
#>     Attrib V21    0.5503391110870054
#>     Attrib V22    0.3945814275481431
#>     Attrib V23    0.21326899678772648
#>     Attrib V24    0.05830731080831559
#>     Attrib V25    -0.23335663611114885
#>     Attrib V26    -0.46662260485742846
#>     Attrib V27    -0.6506950858344738
#>     Attrib V28    0.04857032407399414
#>     Attrib V29    0.1602255135297619
#>     Attrib V3    0.03774893464111353
#>     Attrib V30    0.15718860734108311
#>     Attrib V31    -1.0104244634046153
#>     Attrib V32    0.07375203386720991
#>     Attrib V33    0.2872331116525753
#>     Attrib V34    -0.36164064969457854
#>     Attrib V35    -0.32893170695276247
#>     Attrib V36    -0.4729153496714501
#>     Attrib V37    -0.2557411368097092
#>     Attrib V38    0.3464066241078575
#>     Attrib V39    0.2950253812673943
#>     Attrib V4    0.29974766599267605
#>     Attrib V40    -0.11760238514366977
#>     Attrib V41    0.04320887564492962
#>     Attrib V42    0.16477451448051542
#>     Attrib V43    0.29698837661647276
#>     Attrib V44    0.4810868865973105
#>     Attrib V45    0.696878834137984
#>     Attrib V46    -0.06895068774411191
#>     Attrib V47    -0.487349933809534
#>     Attrib V48    0.006651448031402842
#>     Attrib V49    0.46520872564826204
#>     Attrib V5    -0.029845440605374113
#>     Attrib V50    -0.7155895016654831
#>     Attrib V51    -0.13679968603460005
#>     Attrib V52    0.058675934720372885
#>     Attrib V53    0.3212036157808159
#>     Attrib V54    0.5788162871311939
#>     Attrib V55    -0.32430857996610307
#>     Attrib V56    0.1559747291947344
#>     Attrib V57    0.48530636778907355
#>     Attrib V58    0.5829839787755091
#>     Attrib V59    0.41988102666591764
#>     Attrib V6    -0.24668430758958723
#>     Attrib V60    -0.22981280404226428
#>     Attrib V7    -0.09847478287273827
#>     Attrib V8    -0.021413332729571927
#>     Attrib V9    0.5124263262170183
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.14836528297518548
#>     Attrib V1    -0.5355460786528026
#>     Attrib V10    0.4282560431341554
#>     Attrib V11    0.07874175076048978
#>     Attrib V12    -0.11187601461261253
#>     Attrib V13    0.09073752349483558
#>     Attrib V14    -0.008088385909466006
#>     Attrib V15    -0.25381912289551095
#>     Attrib V16    -0.2404959096781704
#>     Attrib V17    -0.587228164816971
#>     Attrib V18    -0.11333430490327152
#>     Attrib V19    0.04496742707677683
#>     Attrib V2    -0.041888489420314666
#>     Attrib V20    -1.2544908878776675
#>     Attrib V21    -0.8621930125731189
#>     Attrib V22    -0.5696465657362062
#>     Attrib V23    -0.3108133318170959
#>     Attrib V24    -0.1160660440356295
#>     Attrib V25    0.45924940329336184
#>     Attrib V26    1.0390399439163296
#>     Attrib V27    1.272630088637737
#>     Attrib V28    -0.22713074189970087
#>     Attrib V29    -0.17288985154402436
#>     Attrib V3    -0.0969242891820428
#>     Attrib V30    -0.2222350467737503
#>     Attrib V31    1.9459344433052939
#>     Attrib V32    -0.2532357260839037
#>     Attrib V33    -0.667142322910716
#>     Attrib V34    0.6579374231483726
#>     Attrib V35    0.8098106999000437
#>     Attrib V36    1.1457495182078559
#>     Attrib V37    0.9175942433420572
#>     Attrib V38    -0.6271747307339982
#>     Attrib V39    -0.6638284884951565
#>     Attrib V4    -0.5756889837490105
#>     Attrib V40    0.2779165690240483
#>     Attrib V41    0.08984093006147842
#>     Attrib V42    -0.5941462308384755
#>     Attrib V43    -0.5593239703460804
#>     Attrib V44    -0.7973541630354979
#>     Attrib V45    -1.121815539952276
#>     Attrib V46    0.15941869545749804
#>     Attrib V47    0.8454392242376633
#>     Attrib V48    -0.030992501169024387
#>     Attrib V49    -0.9867982158506468
#>     Attrib V5    0.16934177668537356
#>     Attrib V50    1.2153803648363943
#>     Attrib V51    0.42697655210318136
#>     Attrib V52    0.038996168058648854
#>     Attrib V53    -0.562463612685331
#>     Attrib V54    -1.179461413208167
#>     Attrib V55    0.6660557489327029
#>     Attrib V56    -0.39970277829682915
#>     Attrib V57    -0.925157963122794
#>     Attrib V58    -1.0829838969465246
#>     Attrib V59    -0.866785307837124
#>     Attrib V6    0.5518088335067262
#>     Attrib V60    0.6491529395673321
#>     Attrib V7    0.17679390922926286
#>     Attrib V8    -0.24081662737101517
#>     Attrib V9    -0.9470029425842114
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.009217738950326836
#>     Attrib V1    0.19523618783899024
#>     Attrib V10    -0.01904992891733426
#>     Attrib V11    0.06590902196378272
#>     Attrib V12    0.11970209783453908
#>     Attrib V13    0.006594437170980348
#>     Attrib V14    0.027092022256821637
#>     Attrib V15    0.03328546201448334
#>     Attrib V16    0.08879591922060465
#>     Attrib V17    0.10654796721144581
#>     Attrib V18    0.04881931180615549
#>     Attrib V19    -0.057521954923343284
#>     Attrib V2    0.10390051072968116
#>     Attrib V20    0.20755975238341323
#>     Attrib V21    0.14026650908063754
#>     Attrib V22    0.025530382242790747
#>     Attrib V23    -0.04636885863805041
#>     Attrib V24    0.05058500760601336
#>     Attrib V25    -0.08731116483939846
#>     Attrib V26    -0.21708831222501185
#>     Attrib V27    -0.31311520373199625
#>     Attrib V28    -0.10860473846268048
#>     Attrib V29    -0.01389826366180641
#>     Attrib V3    0.036500328847848054
#>     Attrib V30    -0.010387747486889549
#>     Attrib V31    -0.27161421011026016
#>     Attrib V32    0.09457050113486248
#>     Attrib V33    0.08309593438738265
#>     Attrib V34    -0.12142204142718124
#>     Attrib V35    -0.1490763800934129
#>     Attrib V36    -0.30100843177906045
#>     Attrib V37    -0.19573818001138238
#>     Attrib V38    -0.01527728658210182
#>     Attrib V39    0.036920865231605766
#>     Attrib V4    0.12788371965487502
#>     Attrib V40    -0.04338434460621
#>     Attrib V41    -0.05420394689742358
#>     Attrib V42    -0.006388111754976611
#>     Attrib V43    0.09049313515652346
#>     Attrib V44    0.09387838834446958
#>     Attrib V45    0.14986547559979047
#>     Attrib V46    -0.006275806967027231
#>     Attrib V47    -0.1875521429987469
#>     Attrib V48    0.05342806976247153
#>     Attrib V49    0.17987283837970783
#>     Attrib V5    -0.008435600370794267
#>     Attrib V50    -0.2701604347006391
#>     Attrib V51    -0.07297182655083419
#>     Attrib V52    0.044462869341299206
#>     Attrib V53    0.17324490014369998
#>     Attrib V54    0.2492264787810454
#>     Attrib V55    -0.02785781097624412
#>     Attrib V56    0.12149905564854122
#>     Attrib V57    0.257203623464788
#>     Attrib V58    0.3223643542857946
#>     Attrib V59    0.18318458674171706
#>     Attrib V6    -0.05447821557599875
#>     Attrib V60    0.005063874114543325
#>     Attrib V7    -0.043260772929015284
#>     Attrib V8    0.010483455310547668
#>     Attrib V9    0.28244069523156184
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.06064754568774991
#>     Attrib V1    0.16386045444243966
#>     Attrib V10    -0.1335049945274462
#>     Attrib V11    0.07408202862496907
#>     Attrib V12    0.18117926987641264
#>     Attrib V13    0.05756755742742322
#>     Attrib V14    -0.002755429725158843
#>     Attrib V15    0.030125318996851346
#>     Attrib V16    -0.019896789798941418
#>     Attrib V17    0.16035553767841385
#>     Attrib V18    0.10236068877461735
#>     Attrib V19    -9.50878703826367E-4
#>     Attrib V2    0.04853462666703442
#>     Attrib V20    0.23307384383098517
#>     Attrib V21    0.18254492346883935
#>     Attrib V22    0.14000905518836868
#>     Attrib V23    0.10161706186367171
#>     Attrib V24    0.05004054990329924
#>     Attrib V25    -0.019951716693772006
#>     Attrib V26    -0.12406558941132706
#>     Attrib V27    -0.3124553839067217
#>     Attrib V28    -0.04225786575754782
#>     Attrib V29    -0.0207522993699733
#>     Attrib V3    0.07573233731243656
#>     Attrib V30    0.008853647077936608
#>     Attrib V31    -0.4157634992137168
#>     Attrib V32    0.05954599832111726
#>     Attrib V33    0.11055148830488379
#>     Attrib V34    -0.13120985154939885
#>     Attrib V35    -0.05378937000993277
#>     Attrib V36    -0.2514237894494507
#>     Attrib V37    -0.11587386395223077
#>     Attrib V38    0.04440420375169281
#>     Attrib V39    0.08589445056288512
#>     Attrib V4    0.17236718629257933
#>     Attrib V40    -0.09914022861277912
#>     Attrib V41    -0.003399362859809637
#>     Attrib V42    0.011637851699043729
#>     Attrib V43    0.13100486363805888
#>     Attrib V44    0.16868645308376232
#>     Attrib V45    0.3082661396368426
#>     Attrib V46    -0.015191232810295944
#>     Attrib V47    -0.1379964890266949
#>     Attrib V48    -0.03615303087791881
#>     Attrib V49    0.19291870525986374
#>     Attrib V5    -0.01817115026071845
#>     Attrib V50    -0.3635586858641751
#>     Attrib V51    -0.10969230743007982
#>     Attrib V52    0.07928152794167267
#>     Attrib V53    0.22015812466860385
#>     Attrib V54    0.2256577814286241
#>     Attrib V55    -0.10131376006001487
#>     Attrib V56    0.11784267956112884
#>     Attrib V57    0.20326435595816672
#>     Attrib V58    0.27886009809591134
#>     Attrib V59    0.23047070098254355
#>     Attrib V6    -0.07986264468767008
#>     Attrib V60    -0.055239230539169015
#>     Attrib V7    -0.08123235639727576
#>     Attrib V8    -0.0059473513773186165
#>     Attrib V9    0.25707135089042094
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.2614214836592585
#>     Attrib V1    -0.13973115128825814
#>     Attrib V10    -0.08834268689920793
#>     Attrib V11    -0.18515940355540436
#>     Attrib V12    -0.3655016115155053
#>     Attrib V13    -0.07773070032179598
#>     Attrib V14    0.3046724842825932
#>     Attrib V15    0.173170684405395
#>     Attrib V16    0.17481789413893106
#>     Attrib V17    0.10088649259089195
#>     Attrib V18    0.06487093507295905
#>     Attrib V19    0.07990437288420191
#>     Attrib V2    -0.111700548678789
#>     Attrib V20    -0.3347293511725292
#>     Attrib V21    -0.25941845673091535
#>     Attrib V22    -0.3999769622176028
#>     Attrib V23    -0.2975121477140559
#>     Attrib V24    -0.19113710630786998
#>     Attrib V25    0.16541594370090454
#>     Attrib V26    0.35145650057274935
#>     Attrib V27    0.2945035343537283
#>     Attrib V28    -0.24366919502969842
#>     Attrib V29    -0.1683354585511324
#>     Attrib V3    0.008825883107462547
#>     Attrib V30    -0.0738304371953926
#>     Attrib V31    0.6068008944992364
#>     Attrib V32    -0.33330165275187856
#>     Attrib V33    -0.3773612436180158
#>     Attrib V34    -0.024471232745726327
#>     Attrib V35    0.07497813619555642
#>     Attrib V36    0.6194172790381403
#>     Attrib V37    0.2350387167201782
#>     Attrib V38    -0.009631683699743597
#>     Attrib V39    -0.15384552231846024
#>     Attrib V4    -0.03449202107580842
#>     Attrib V40    0.024769231083936936
#>     Attrib V41    -0.28235422590268566
#>     Attrib V42    -0.22305226524827182
#>     Attrib V43    -0.18787987283489252
#>     Attrib V44    -0.25991222504587697
#>     Attrib V45    -0.6029910920136373
#>     Attrib V46    -0.10789888465909463
#>     Attrib V47    0.21672983375232227
#>     Attrib V48    -0.0909884670289282
#>     Attrib V49    -0.5520409549338935
#>     Attrib V5    -0.05199921966291897
#>     Attrib V50    0.7151337437456984
#>     Attrib V51    0.10242016936395777
#>     Attrib V52    -0.022816082583338736
#>     Attrib V53    -0.3034470162653535
#>     Attrib V54    -0.1532232073897877
#>     Attrib V55    0.5289116022201261
#>     Attrib V56    0.059900088850267465
#>     Attrib V57    -0.03147104875625947
#>     Attrib V58    -0.3185491227510539
#>     Attrib V59    0.007293834694353502
#>     Attrib V6    0.23984670709044553
#>     Attrib V60    0.16753664131480145
#>     Attrib V7    0.4033348017334879
#>     Attrib V8    0.1700492510621448
#>     Attrib V9    -0.5459833095010117
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5027122152859977
#>     Attrib V1    -0.2751406157048491
#>     Attrib V10    1.2301631750247188
#>     Attrib V11    1.426545076203993
#>     Attrib V12    1.7638348829489727
#>     Attrib V13    0.970869303644581
#>     Attrib V14    -0.473994533223155
#>     Attrib V15    -0.5251006362373333
#>     Attrib V16    -0.8720896856328633
#>     Attrib V17    -0.731510589193856
#>     Attrib V18    -0.2249672515513239
#>     Attrib V19    -0.3691631722798196
#>     Attrib V2    0.5523325969814007
#>     Attrib V20    -0.518286241640313
#>     Attrib V21    0.05190960938783778
#>     Attrib V22    1.110482307179468
#>     Attrib V23    1.227314160363043
#>     Attrib V24    0.6197031115964584
#>     Attrib V25    0.10607956128467128
#>     Attrib V26    0.5307001705013196
#>     Attrib V27    1.2230189973327485
#>     Attrib V28    1.8771378181552005
#>     Attrib V29    1.3096185873529453
#>     Attrib V3    0.16531248318412328
#>     Attrib V30    0.17313644018715088
#>     Attrib V31    -0.7330787617525798
#>     Attrib V32    0.3353577423593004
#>     Attrib V33    -0.4860828175195533
#>     Attrib V34    -0.2319139041997695
#>     Attrib V35    0.1799593067956598
#>     Attrib V36    -0.9162544689982755
#>     Attrib V37    0.268993960610581
#>     Attrib V38    -0.5716906213546356
#>     Attrib V39    -0.053222427981847086
#>     Attrib V4    -0.18323013043499956
#>     Attrib V40    0.364099053764085
#>     Attrib V41    1.3928512181186072
#>     Attrib V42    -0.1220032949558829
#>     Attrib V43    0.15935097860996747
#>     Attrib V44    0.19798193241793474
#>     Attrib V45    1.085557956473539
#>     Attrib V46    0.7579894809311298
#>     Attrib V47    0.5137340530271844
#>     Attrib V48    0.762463085490904
#>     Attrib V49    1.4698863993898716
#>     Attrib V5    0.532405366095183
#>     Attrib V50    -0.6765309212560371
#>     Attrib V51    0.6850793973557153
#>     Attrib V52    1.1859824500410745
#>     Attrib V53    1.2110304793735007
#>     Attrib V54    -0.2858147819799162
#>     Attrib V55    -0.6877127357474974
#>     Attrib V56    -0.5629958707851436
#>     Attrib V57    -0.415538771362724
#>     Attrib V58    0.4450171322398467
#>     Attrib V59    -0.6706331537716933
#>     Attrib V6    0.20511775875924834
#>     Attrib V60    0.5619842740592649
#>     Attrib V7    -1.2434540831914893
#>     Attrib V8    -0.671644593711772
#>     Attrib V9    1.3893845243341976
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.1801574469944117
#>     Attrib V1    0.08853080845734776
#>     Attrib V10    0.03014247755511939
#>     Attrib V11    0.029480890980596447
#>     Attrib V12    0.08230118680755157
#>     Attrib V13    0.02080992064289716
#>     Attrib V14    0.09893382061863146
#>     Attrib V15    0.030639259122622445
#>     Attrib V16    0.016531114092707928
#>     Attrib V17    0.05063589989120068
#>     Attrib V18    -0.024387450405714804
#>     Attrib V19    0.027670476530733006
#>     Attrib V2    0.11225429626877094
#>     Attrib V20    -0.002923751572852845
#>     Attrib V21    -0.010186434229670426
#>     Attrib V22    -0.06897016190704103
#>     Attrib V23    -0.07308561190585015
#>     Attrib V24    -0.06795232569705101
#>     Attrib V25    -0.028120949648332987
#>     Attrib V26    -0.05958966762425611
#>     Attrib V27    -0.0235122958519827
#>     Attrib V28    0.019004794290989606
#>     Attrib V29    0.005509684839462337
#>     Attrib V3    0.07395211022019113
#>     Attrib V30    -0.012644115056073468
#>     Attrib V31    -0.06614312291388179
#>     Attrib V32    -0.02958623063254985
#>     Attrib V33    0.038722322195423355
#>     Attrib V34    -0.0056383376350888975
#>     Attrib V35    0.08825906793847237
#>     Attrib V36    0.06311673109070323
#>     Attrib V37    0.0782409350460379
#>     Attrib V38    0.019457558275189028
#>     Attrib V39    0.07511545688363577
#>     Attrib V4    0.1369340383657536
#>     Attrib V40    0.028992522379625168
#>     Attrib V41    0.02296603610100185
#>     Attrib V42    0.0350813243233257
#>     Attrib V43    0.04086963627504561
#>     Attrib V44    0.06922081927076297
#>     Attrib V45    0.06676171574020376
#>     Attrib V46    0.026707411845877885
#>     Attrib V47    0.03064276772382233
#>     Attrib V48    0.09463031001600658
#>     Attrib V49    0.03375475434128583
#>     Attrib V5    0.03631511084992193
#>     Attrib V50    0.02190406726495261
#>     Attrib V51    0.03156581246807846
#>     Attrib V52    0.048234013360972515
#>     Attrib V53    0.05187761293001116
#>     Attrib V54    0.039908482355892984
#>     Attrib V55    0.07083921985706121
#>     Attrib V56    0.10266590315686126
#>     Attrib V57    0.13670219258436508
#>     Attrib V58    0.10749354267919128
#>     Attrib V59    0.07158704695682155
#>     Attrib V6    0.0906257581247131
#>     Attrib V60    0.11321735247381909
#>     Attrib V7    0.007222328707716452
#>     Attrib V8    0.07061877228770487
#>     Attrib V9    0.06662472898828461
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.48382533987249077
#>     Attrib V1    0.12344524006400497
#>     Attrib V10    1.123077590195483
#>     Attrib V11    1.2000798622197422
#>     Attrib V12    1.1751802565997502
#>     Attrib V13    0.5008738595952357
#>     Attrib V14    -0.5440685088696106
#>     Attrib V15    -0.35528194813052477
#>     Attrib V16    -0.7094993115835252
#>     Attrib V17    -0.8098587985335046
#>     Attrib V18    -0.5401087427687455
#>     Attrib V19    -0.6509651874469772
#>     Attrib V2    0.41078657287862247
#>     Attrib V20    -0.5283883351814229
#>     Attrib V21    -0.1745635554639723
#>     Attrib V22    0.31886678323424367
#>     Attrib V23    0.13751088529532238
#>     Attrib V24    -0.14909319307400126
#>     Attrib V25    -0.4431728157684952
#>     Attrib V26    0.015492078658052888
#>     Attrib V27    0.668787606872469
#>     Attrib V28    1.2997211801303803
#>     Attrib V29    0.9526102387864457
#>     Attrib V3    -0.030550145131768444
#>     Attrib V30    0.2919678335602523
#>     Attrib V31    -0.7891597369956834
#>     Attrib V32    0.3173227640426125
#>     Attrib V33    -0.03496377768834155
#>     Attrib V34    0.011659144908034314
#>     Attrib V35    0.2898935797360114
#>     Attrib V36    -0.5218059072978037
#>     Attrib V37    0.30901793883278733
#>     Attrib V38    -0.26788175021943145
#>     Attrib V39    -0.14440320512024524
#>     Attrib V4    -0.03841915052528437
#>     Attrib V40    -0.10597230668143896
#>     Attrib V41    0.5729344678248756
#>     Attrib V42    -0.1607644447140277
#>     Attrib V43    0.05945923610681174
#>     Attrib V44    0.13474230238904117
#>     Attrib V45    0.9781368724809362
#>     Attrib V46    0.473199269037743
#>     Attrib V47    0.12335488751131228
#>     Attrib V48    0.43378496779411696
#>     Attrib V49    0.7741940689316077
#>     Attrib V5    0.11859799315557715
#>     Attrib V50    -0.7253964922378117
#>     Attrib V51    0.3088757451580414
#>     Attrib V52    0.5575417450781552
#>     Attrib V53    0.6013759363585356
#>     Attrib V54    0.21935618799259932
#>     Attrib V55    -0.3054831351356133
#>     Attrib V56    -0.6177573150854944
#>     Attrib V57    -0.1495064006520153
#>     Attrib V58    0.5180675525149714
#>     Attrib V59    -0.5372935810823437
#>     Attrib V6    -0.1987459999004911
#>     Attrib V60    0.398915454676804
#>     Attrib V7    -0.9232269457336731
#>     Attrib V8    -0.22983531428440548
#>     Attrib V9    1.269958191741489
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.3368503669264102
#>     Attrib V1    -0.17691927637759794
#>     Attrib V10    -0.01843016828161234
#>     Attrib V11    -0.23504304523940006
#>     Attrib V12    -0.4970204706310395
#>     Attrib V13    -0.06904320669007159
#>     Attrib V14    0.37367693312823735
#>     Attrib V15    0.18088521042754208
#>     Attrib V16    0.24330621822189893
#>     Attrib V17    -0.037893960376637864
#>     Attrib V18    0.1280561792638494
#>     Attrib V19    0.12070668949448571
#>     Attrib V2    -0.128549903235804
#>     Attrib V20    -0.5430738323093613
#>     Attrib V21    -0.40861496829121297
#>     Attrib V22    -0.5519455905064332
#>     Attrib V23    -0.4103205604196808
#>     Attrib V24    -0.14735244323704547
#>     Attrib V25    0.1812093071734466
#>     Attrib V26    0.3960663962007639
#>     Attrib V27    0.5409601977042232
#>     Attrib V28    -0.3827968183379871
#>     Attrib V29    -0.28453738050632815
#>     Attrib V3    0.07027534902364263
#>     Attrib V30    -0.1883460044198946
#>     Attrib V31    1.0214257566047789
#>     Attrib V32    -0.35408199740496427
#>     Attrib V33    -0.5083028803392152
#>     Attrib V34    0.06446435584908647
#>     Attrib V35    0.18361890301978345
#>     Attrib V36    0.8651185034626344
#>     Attrib V37    0.42546245391700105
#>     Attrib V38    -0.030380785039340188
#>     Attrib V39    -0.2336936649808881
#>     Attrib V4    -0.0870895947059958
#>     Attrib V40    -0.018944260720440576
#>     Attrib V41    -0.3978075508816395
#>     Attrib V42    -0.3676114323372091
#>     Attrib V43    -0.3560462908886357
#>     Attrib V44    -0.3579185185634736
#>     Attrib V45    -0.800134118669704
#>     Attrib V46    -0.15702055631829895
#>     Attrib V47    0.24751415109992178
#>     Attrib V48    -0.17874562151573098
#>     Attrib V49    -0.842109744124102
#>     Attrib V5    0.02404286755700384
#>     Attrib V50    1.031294255742815
#>     Attrib V51    0.0774013700030337
#>     Attrib V52    -0.0677961574789094
#>     Attrib V53    -0.4023484439170957
#>     Attrib V54    -0.24798695776951468
#>     Attrib V55    0.7085307300453316
#>     Attrib V56    0.014334815836884784
#>     Attrib V57    -0.2798861764864878
#>     Attrib V58    -0.5004289913287137
#>     Attrib V59    -0.1401867268776045
#>     Attrib V6    0.45085916560789563
#>     Attrib V60    0.2743291616648438
#>     Attrib V7    0.6553129832767641
#>     Attrib V8    0.2528288202050322
#>     Attrib V9    -0.7516450792904844
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.23601131344071144
#>     Attrib V1    0.03351739124717526
#>     Attrib V10    0.07783173574375112
#>     Attrib V11    0.3003850247313364
#>     Attrib V12    0.3933879070972773
#>     Attrib V13    0.10403694971934321
#>     Attrib V14    -0.14678260382440314
#>     Attrib V15    -0.09605163634512001
#>     Attrib V16    -0.22677336299325
#>     Attrib V17    -0.13959782231037324
#>     Attrib V18    -0.11617756095642624
#>     Attrib V19    -0.26240694408454296
#>     Attrib V2    0.0736575051656216
#>     Attrib V20    0.13043167173374634
#>     Attrib V21    0.13510801070810186
#>     Attrib V22    0.23626491698101515
#>     Attrib V23    0.12133165877609403
#>     Attrib V24    0.09586814080636022
#>     Attrib V25    -0.08294545048178434
#>     Attrib V26    -0.1720424450805955
#>     Attrib V27    -0.08642455779893606
#>     Attrib V28    0.3975095989806737
#>     Attrib V29    0.35969683419240445
#>     Attrib V3    0.002560175112094555
#>     Attrib V30    0.09974456700226715
#>     Attrib V31    -0.6242976367459169
#>     Attrib V32    0.17121277146785663
#>     Attrib V33    0.13452234534373075
#>     Attrib V34    -0.14007943139966317
#>     Attrib V35    -0.08017361068661186
#>     Attrib V36    -0.4722489589527895
#>     Attrib V37    -0.08557704764584026
#>     Attrib V38    -0.010720365149328628
#>     Attrib V39    0.07339778340954206
#>     Attrib V4    0.015691559377391244
#>     Attrib V40    -0.06838208495865424
#>     Attrib V41    0.20391437796873044
#>     Attrib V42    0.030648430112103955
#>     Attrib V43    0.17680623332174691
#>     Attrib V44    0.12192933967445897
#>     Attrib V45    0.5275296131152133
#>     Attrib V46    0.08488786997770922
#>     Attrib V47    -0.14762970425181296
#>     Attrib V48    0.08871704883833191
#>     Attrib V49    0.3768635479589916
#>     Attrib V5    -0.07911990762455114
#>     Attrib V50    -0.5750155136119538
#>     Attrib V51    -0.026641575487599385
#>     Attrib V52    0.1453575449661805
#>     Attrib V53    0.27187287457872217
#>     Attrib V54    0.19055227906501504
#>     Attrib V55    -0.2676007127962218
#>     Attrib V56    -0.10727312503371
#>     Attrib V57    0.14808795906058522
#>     Attrib V58    0.327265687169331
#>     Attrib V59    -0.008629563798317919
#>     Attrib V6    -0.21220008433748336
#>     Attrib V60    -0.01891479276460851
#>     Attrib V7    -0.39978368911190104
#>     Attrib V8    -0.0750506350988909
#>     Attrib V9    0.5325269949885578
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.15414458009510337
#>     Attrib V1    0.10077349632588688
#>     Attrib V10    0.10041321471656833
#>     Attrib V11    0.06627161758953563
#>     Attrib V12    0.08123161276832504
#>     Attrib V13    0.07981060127311955
#>     Attrib V14    0.06184177435121473
#>     Attrib V15    0.06126377413657754
#>     Attrib V16    0.03845720802425784
#>     Attrib V17    0.07164611240097045
#>     Attrib V18    0.014060457870433097
#>     Attrib V19    -0.04219130272873784
#>     Attrib V2    0.11881089590880829
#>     Attrib V20    -0.07145631913220345
#>     Attrib V21    -0.01941173623704715
#>     Attrib V22    -0.06871837298810955
#>     Attrib V23    -0.07772826885547447
#>     Attrib V24    -0.09621278736192461
#>     Attrib V25    -0.005485681774714759
#>     Attrib V26    0.007730558207910819
#>     Attrib V27    -0.04661111221490191
#>     Attrib V28    -0.02238737452208641
#>     Attrib V29    -0.06664863885464967
#>     Attrib V3    0.08737178944628095
#>     Attrib V30    0.0193633502104355
#>     Attrib V31    0.07438131771905722
#>     Attrib V32    -0.02351032790607692
#>     Attrib V33    -0.020111369366312526
#>     Attrib V34    0.008491865372232225
#>     Attrib V35    0.09164313852024707
#>     Attrib V36    0.06277994372026462
#>     Attrib V37    0.10546419847027214
#>     Attrib V38    0.013263472313229573
#>     Attrib V39    0.11617289394670574
#>     Attrib V4    0.12650842939503645
#>     Attrib V40    0.09332267002231433
#>     Attrib V41    0.0818748412539884
#>     Attrib V42    0.08965438829814826
#>     Attrib V43    0.030046370216533683
#>     Attrib V44    0.0237599576898407
#>     Attrib V45    0.05290616407094926
#>     Attrib V46    0.05674045596263741
#>     Attrib V47    0.05805429436264926
#>     Attrib V48    0.08641221248090386
#>     Attrib V49    0.007239670743662143
#>     Attrib V5    0.04713465293540185
#>     Attrib V50    0.02590045599177843
#>     Attrib V51    0.05117231144170771
#>     Attrib V52    0.0724441076291679
#>     Attrib V53    0.0459236083974456
#>     Attrib V54    0.03833598234855087
#>     Attrib V55    0.0633198648562857
#>     Attrib V56    0.12860575378264283
#>     Attrib V57    0.06001061774038519
#>     Attrib V58    0.11031898431921713
#>     Attrib V59    0.09248417694792013
#>     Attrib V6    0.09230125221085299
#>     Attrib V60    0.10198523753978189
#>     Attrib V7    0.016854279549167944
#>     Attrib V8    0.04554316005640057
#>     Attrib V9    0.04196827037340937
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.014817957427187523
#>     Attrib V1    0.24072863653576204
#>     Attrib V10    -0.17358837441612507
#>     Attrib V11    0.01703636968486629
#>     Attrib V12    0.04656195422374224
#>     Attrib V13    0.02733298355263931
#>     Attrib V14    0.04782250649396036
#>     Attrib V15    0.13904933159613142
#>     Attrib V16    0.11437802445864885
#>     Attrib V17    0.251882037905904
#>     Attrib V18    0.16202940997547524
#>     Attrib V19    0.009583190778379113
#>     Attrib V2    0.14824267628380136
#>     Attrib V20    0.4357390356658868
#>     Attrib V21    0.28051218879480083
#>     Attrib V22    0.20993468017283345
#>     Attrib V23    0.09867786752869874
#>     Attrib V24    0.09920244024146588
#>     Attrib V25    -0.1179151457437903
#>     Attrib V26    -0.29226917371445643
#>     Attrib V27    -0.564308917893975
#>     Attrib V28    -0.18476228263352898
#>     Attrib V29    -0.09405902720232359
#>     Attrib V3    0.031859707786058004
#>     Attrib V30    0.01962243900940907
#>     Attrib V31    -0.48078039509847115
#>     Attrib V32    0.1069350883047341
#>     Attrib V33    0.22610167248176594
#>     Attrib V34    -0.15626943973946528
#>     Attrib V35    -0.1839030664390838
#>     Attrib V36    -0.4060467510415511
#>     Attrib V37    -0.26512509296429654
#>     Attrib V38    0.15815681341104718
#>     Attrib V39    0.14109375418846273
#>     Attrib V4    0.1988755818109747
#>     Attrib V40    -0.07703770891161255
#>     Attrib V41    -0.044924807448861695
#>     Attrib V42    0.062126776490159186
#>     Attrib V43    0.14359543523958157
#>     Attrib V44    0.2546067079928447
#>     Attrib V45    0.3283253193833754
#>     Attrib V46    -0.05307191904805066
#>     Attrib V47    -0.2654203140919355
#>     Attrib V48    0.0065969235081210715
#>     Attrib V49    0.2658499759140574
#>     Attrib V5    -0.07082277157509778
#>     Attrib V50    -0.42935872888182114
#>     Attrib V51    -0.1486683827315174
#>     Attrib V52    0.013384007947966573
#>     Attrib V53    0.26372580016230207
#>     Attrib V54    0.39248734415604636
#>     Attrib V55    -0.11289961438876722
#>     Attrib V56    0.1191246426756218
#>     Attrib V57    0.34616114771178513
#>     Attrib V58    0.3368268235923283
#>     Attrib V59    0.30930642738171266
#>     Attrib V6    -0.1178024069281429
#>     Attrib V60    -0.08273762377160046
#>     Attrib V7    -0.015805567271739648
#>     Attrib V8    0.09047927294208383
#>     Attrib V9    0.3686404251528767
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.15224582252663935
#>     Attrib V1    0.09533440177472786
#>     Attrib V10    -0.004198416945965878
#>     Attrib V11    0.05704293407630208
#>     Attrib V12    0.036415198410397885
#>     Attrib V13    -0.004950533634766471
#>     Attrib V14    0.10422112851952321
#>     Attrib V15    0.06502065423466512
#>     Attrib V16    0.05461322449918208
#>     Attrib V17    -0.007974275994648434
#>     Attrib V18    0.060556815496491126
#>     Attrib V19    -0.06922152551600776
#>     Attrib V2    0.07873364948275458
#>     Attrib V20    -0.050406755979964066
#>     Attrib V21    -0.042734670149653674
#>     Attrib V22    -0.09200845189143252
#>     Attrib V23    -0.04250455188152859
#>     Attrib V24    -0.057685477499759115
#>     Attrib V25    -0.07405365645662688
#>     Attrib V26    -0.06187950693909555
#>     Attrib V27    -0.0622182182501545
#>     Attrib V28    -0.018696328582226352
#>     Attrib V29    -0.025167974666899882
#>     Attrib V3    0.13418367771908868
#>     Attrib V30    0.03466248226071608
#>     Attrib V31    0.007166646750570707
#>     Attrib V32    -0.010982088668041746
#>     Attrib V33    0.03535040928992806
#>     Attrib V34    0.0491549804504541
#>     Attrib V35    0.08943909946145676
#>     Attrib V36    0.13627108447511585
#>     Attrib V37    0.0810778128057574
#>     Attrib V38    0.006890575409488375
#>     Attrib V39    0.06912575335552708
#>     Attrib V4    0.07384025826718799
#>     Attrib V40    0.054815586902656616
#>     Attrib V41    0.039893256546267415
#>     Attrib V42    0.06648516527524825
#>     Attrib V43    -2.6879946432600187E-4
#>     Attrib V44    0.07273355673980576
#>     Attrib V45    0.06546265032559181
#>     Attrib V46    0.05841756788062886
#>     Attrib V47    0.07019762380815078
#>     Attrib V48    0.017470722284118414
#>     Attrib V49    0.05286720698444974
#>     Attrib V5    0.0947860102651088
#>     Attrib V50    0.020035160363398544
#>     Attrib V51    0.08711048555101428
#>     Attrib V52    0.11027440512915712
#>     Attrib V53    0.0571805450786822
#>     Attrib V54    -0.0107437036498811
#>     Attrib V55    0.06606620230618265
#>     Attrib V56    0.08612311426588752
#>     Attrib V57    0.07693472831123566
#>     Attrib V58    0.1277362285036767
#>     Attrib V59    0.03690605281204944
#>     Attrib V6    0.12189007469227148
#>     Attrib V60    0.07951232203640406
#>     Attrib V7    0.08748610935551106
#>     Attrib V8    0.1046790033224642
#>     Attrib V9    0.07117077571336146
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
