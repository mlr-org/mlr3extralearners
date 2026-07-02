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
#>     Threshold    -0.2521098089339787
#>     Node 2    2.906579173909955
#>     Node 3    1.824245710727288
#>     Node 4    1.1273766274089836
#>     Node 5    -2.627800026305794
#>     Node 6    0.6150657650423719
#>     Node 7    2.3905901436956496
#>     Node 8    0.4743096617800381
#>     Node 9    2.2328015247164568
#>     Node 10    -0.4084748358209993
#>     Node 11    1.3490553386457467
#>     Node 12    2.0980911191902525
#>     Node 13    0.421880439416802
#>     Node 14    1.4052295370398713
#>     Node 15    -1.9512635060620147
#>     Node 16    0.40303636974001356
#>     Node 17    -0.0066070251500298495
#>     Node 18    -1.4534357396956292
#>     Node 19    2.009951990402405
#>     Node 20    2.0740553737147533
#>     Node 21    -2.0570228410528464
#>     Node 22    0.7751390259430427
#>     Node 23    1.5514060682818749
#>     Node 24    -1.1219046912732475
#>     Node 25    3.9069378830492023
#>     Node 26    0.5278049531009948
#>     Node 27    1.7699850632279284
#>     Node 28    -2.8431489244052877
#>     Node 29    0.9963454228704595
#>     Node 30    0.31284670416101107
#>     Node 31    1.368074548770965
#>     Node 32    0.6285550981550249
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.26421803070064015
#>     Node 2    -2.9347066084930242
#>     Node 3    -1.7950614673336793
#>     Node 4    -1.0865703776373221
#>     Node 5    2.6431111122137474
#>     Node 6    -0.592118635475033
#>     Node 7    -2.387097722208806
#>     Node 8    -0.507934946582695
#>     Node 9    -2.2358337556949723
#>     Node 10    0.33915778369873606
#>     Node 11    -1.310966261526666
#>     Node 12    -2.163230697719654
#>     Node 13    -0.36961266506923796
#>     Node 14    -1.3325589797751214
#>     Node 15    1.9313702257259617
#>     Node 16    -0.41851213175677393
#>     Node 17    0.038495563278856657
#>     Node 18    1.485831242304624
#>     Node 19    -1.993948614523729
#>     Node 20    -2.05347651178007
#>     Node 21    2.104184635491332
#>     Node 22    -0.8242341940575099
#>     Node 23    -1.5860607077343571
#>     Node 24    1.1001745764296258
#>     Node 25    -3.9159303789054034
#>     Node 26    -0.6123815605706999
#>     Node 27    -1.8024597279562784
#>     Node 28    2.793404353241922
#>     Node 29    -1.0276127493149256
#>     Node 30    -0.2372906962497479
#>     Node 31    -1.3016611843069736
#>     Node 32    -0.6464697703260671
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.3659325511987765
#>     Attrib V1    0.8284932319909631
#>     Attrib V10    -1.075181905930469
#>     Attrib V11    -0.44168882501655304
#>     Attrib V12    0.09379171815627689
#>     Attrib V13    0.1359941177302884
#>     Attrib V14    0.7202798899307034
#>     Attrib V15    0.4745026032137122
#>     Attrib V16    0.31020633000266384
#>     Attrib V17    0.2176712510167098
#>     Attrib V18    0.45652234399988023
#>     Attrib V19    0.1993617556482245
#>     Attrib V2    0.4780116162665818
#>     Attrib V20    0.7922517267614596
#>     Attrib V21    0.7862190614392539
#>     Attrib V22    0.18529270586408467
#>     Attrib V23    0.0778809393520368
#>     Attrib V24    0.19049935223944398
#>     Attrib V25    -0.8619143162255718
#>     Attrib V26    -1.5849183900620654
#>     Attrib V27    -0.712503256477505
#>     Attrib V28    -0.1001761561985524
#>     Attrib V29    0.130302400632639
#>     Attrib V3    0.29917740694958134
#>     Attrib V30    -0.10776420318442112
#>     Attrib V31    -1.964524626185159
#>     Attrib V32    -0.49808301638433905
#>     Attrib V33    0.8416544287179892
#>     Attrib V34    0.4484747535173592
#>     Attrib V35    0.13716929438264858
#>     Attrib V36    -0.6090626928878912
#>     Attrib V37    -0.5200060351508987
#>     Attrib V38    0.4266982093394691
#>     Attrib V39    0.05781298043698156
#>     Attrib V4    0.1888579467717948
#>     Attrib V40    -0.1676403723151999
#>     Attrib V41    0.004135548967666329
#>     Attrib V42    0.6472221165832253
#>     Attrib V43    0.030712700969597263
#>     Attrib V44    0.27014481772888693
#>     Attrib V45    0.693676766058931
#>     Attrib V46    0.2585692505291965
#>     Attrib V47    -0.6043700793691306
#>     Attrib V48    0.2875290356062536
#>     Attrib V49    0.11062935804942124
#>     Attrib V5    -0.49297049360378736
#>     Attrib V50    -0.602992217528785
#>     Attrib V51    -0.28461721011125757
#>     Attrib V52    0.6288058398964957
#>     Attrib V53    0.5667028679543068
#>     Attrib V54    1.0855905123248468
#>     Attrib V55    0.18453587744838454
#>     Attrib V56    -0.09213081226724297
#>     Attrib V57    0.14487748544708726
#>     Attrib V58    0.3900053264251534
#>     Attrib V59    1.1781003396607646
#>     Attrib V6    -0.3070131159833261
#>     Attrib V60    0.8878337089323042
#>     Attrib V7    0.034565823266450225
#>     Attrib V8    -0.46562593638586625
#>     Attrib V9    -0.19434934947310165
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.2749340580774423
#>     Attrib V1    0.6060078499523079
#>     Attrib V10    -0.7551145537454755
#>     Attrib V11    -0.270056426308137
#>     Attrib V12    0.13716502312211515
#>     Attrib V13    0.12377598666221522
#>     Attrib V14    0.5005746489757597
#>     Attrib V15    0.3403030506477264
#>     Attrib V16    0.13836893140755174
#>     Attrib V17    0.09432443508391009
#>     Attrib V18    0.25944100742010556
#>     Attrib V19    0.1637129921650074
#>     Attrib V2    0.3500492823397524
#>     Attrib V20    0.4488604225818882
#>     Attrib V21    0.4073044874766245
#>     Attrib V22    0.08287345376666329
#>     Attrib V23    0.025306905243505363
#>     Attrib V24    0.18593392925064844
#>     Attrib V25    -0.44627308852285347
#>     Attrib V26    -0.9551304033218503
#>     Attrib V27    -0.541753656106165
#>     Attrib V28    -0.25510146480164453
#>     Attrib V29    -0.10776836213092665
#>     Attrib V3    0.19984680098261925
#>     Attrib V30    -0.10948013253779973
#>     Attrib V31    -1.1526564018557384
#>     Attrib V32    -0.2345458672937488
#>     Attrib V33    0.6081210249735846
#>     Attrib V34    0.2609369098105603
#>     Attrib V35    0.07217694459272343
#>     Attrib V36    -0.46381700051165636
#>     Attrib V37    -0.44149979400442496
#>     Attrib V38    0.1913515699028817
#>     Attrib V39    0.10514515664779077
#>     Attrib V4    0.12423736756545484
#>     Attrib V40    -0.06318077835186955
#>     Attrib V41    0.0011062110642247756
#>     Attrib V42    0.3622913126288485
#>     Attrib V43    -0.06642973739228364
#>     Attrib V44    0.11553296552598553
#>     Attrib V45    0.3766880186833356
#>     Attrib V46    0.12257256381125228
#>     Attrib V47    -0.34722249822999496
#>     Attrib V48    0.2174989038371459
#>     Attrib V49    0.07469834988251546
#>     Attrib V5    -0.33787863237177745
#>     Attrib V50    -0.37639608484741827
#>     Attrib V51    -0.19594657022772824
#>     Attrib V52    0.446435251280368
#>     Attrib V53    0.39483781237366955
#>     Attrib V54    0.8900439610674777
#>     Attrib V55    0.23087245530171316
#>     Attrib V56    0.012485507737549676
#>     Attrib V57    0.17594932812500275
#>     Attrib V58    0.3487932289716585
#>     Attrib V59    0.8294956165629731
#>     Attrib V6    -0.19537928781800187
#>     Attrib V60    0.5193867452572588
#>     Attrib V7    -0.05130100998580396
#>     Attrib V8    -0.3013814097938962
#>     Attrib V9    -0.164630972702152
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.23970222026160556
#>     Attrib V1    0.34503929528185057
#>     Attrib V10    -0.3832963473801553
#>     Attrib V11    0.021755389657671785
#>     Attrib V12    0.23026297153567038
#>     Attrib V13    0.14210216672541395
#>     Attrib V14    0.30948064929201513
#>     Attrib V15    -0.010640915891734229
#>     Attrib V16    -0.16880039343447423
#>     Attrib V17    -0.07634734002682725
#>     Attrib V18    0.12054572830484199
#>     Attrib V19    -0.05198051772216329
#>     Attrib V2    0.11565479459475579
#>     Attrib V20    0.15531918016410826
#>     Attrib V21    0.30155778614955653
#>     Attrib V22    0.08278618623625751
#>     Attrib V23    0.10270160227194568
#>     Attrib V24    0.12175955346366187
#>     Attrib V25    -0.2695863193534607
#>     Attrib V26    -0.398845609916361
#>     Attrib V27    -0.032662443276334566
#>     Attrib V28    0.20906503925666184
#>     Attrib V29    0.27103674783882925
#>     Attrib V3    0.09132644236402293
#>     Attrib V30    0.07454418618683885
#>     Attrib V31    -0.7563012745806961
#>     Attrib V32    -0.09053811076835157
#>     Attrib V33    0.45100604614158063
#>     Attrib V34    0.12084926717795963
#>     Attrib V35    -0.011611083733479268
#>     Attrib V36    -0.3747826155826625
#>     Attrib V37    -0.3729644954020121
#>     Attrib V38    0.06094815175974471
#>     Attrib V39    0.005157280398468835
#>     Attrib V4    0.14046971327144553
#>     Attrib V40    -0.13815385544394349
#>     Attrib V41    -0.0680675203440809
#>     Attrib V42    0.14355673342371267
#>     Attrib V43    -0.11799591864056215
#>     Attrib V44    0.1744955670936368
#>     Attrib V45    0.4146190944490165
#>     Attrib V46    0.07261121243475085
#>     Attrib V47    -0.1900250776265118
#>     Attrib V48    0.4153826342832365
#>     Attrib V49    0.23278404573995637
#>     Attrib V5    -0.17453076939430007
#>     Attrib V50    -0.21917398077081737
#>     Attrib V51    -0.08001835945648515
#>     Attrib V52    0.2918374433445681
#>     Attrib V53    0.15080081747062715
#>     Attrib V54    0.3547045554214404
#>     Attrib V55    -0.027819116873885674
#>     Attrib V56    -0.08184110457212165
#>     Attrib V57    0.09286200532490158
#>     Attrib V58    0.15464500557009545
#>     Attrib V59    0.4588509370931044
#>     Attrib V6    -0.11925228130647149
#>     Attrib V60    0.189528753168145
#>     Attrib V7    -0.0693321657058961
#>     Attrib V8    -0.2954575547603866
#>     Attrib V9    0.08580905274760672
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3090531859440542
#>     Attrib V1    -0.37337038085718205
#>     Attrib V10    -0.02794425832557544
#>     Attrib V11    -0.6805199319870416
#>     Attrib V12    -0.8518954066898728
#>     Attrib V13    -0.6469904350390968
#>     Attrib V14    -0.28625733200848785
#>     Attrib V15    0.7539412463750609
#>     Attrib V16    0.8374292736169564
#>     Attrib V17    0.3053158574683031
#>     Attrib V18    -0.4152144729927857
#>     Attrib V19    -0.012635436577372344
#>     Attrib V2    -0.21388318577508478
#>     Attrib V20    -0.0748619795702088
#>     Attrib V21    -0.3921571760847119
#>     Attrib V22    -0.6626679330927151
#>     Attrib V23    -0.7997534066717286
#>     Attrib V24    -0.3652616412118996
#>     Attrib V25    0.2513457012951882
#>     Attrib V26    -0.027010853628862175
#>     Attrib V27    -0.8711732781936227
#>     Attrib V28    -1.3633625170335508
#>     Attrib V29    -1.4335069070111812
#>     Attrib V3    -0.19343330364060687
#>     Attrib V30    -0.6565706376954753
#>     Attrib V31    1.1116870823220935
#>     Attrib V32    0.16872504230303007
#>     Attrib V33    -0.4720510399774862
#>     Attrib V34    0.18924210227859595
#>     Attrib V35    0.35565925831306744
#>     Attrib V36    0.7080377871139558
#>     Attrib V37    0.46545748763280037
#>     Attrib V38    -0.2204169938868227
#>     Attrib V39    -0.016742740929259183
#>     Attrib V4    -0.6391515565352183
#>     Attrib V40    0.40268296898636496
#>     Attrib V41    -0.11437249288354061
#>     Attrib V42    -0.14620221240877063
#>     Attrib V43    0.06812949792459591
#>     Attrib V44    -0.7121942060114185
#>     Attrib V45    -0.883138783141767
#>     Attrib V46    -0.3156359757746731
#>     Attrib V47    -0.18469246247752721
#>     Attrib V48    -1.1489428933871904
#>     Attrib V49    -0.8605518034476702
#>     Attrib V5    0.06730226279340387
#>     Attrib V50    0.1366963088380566
#>     Attrib V51    -0.19536673523500175
#>     Attrib V52    -0.713247716464577
#>     Attrib V53    -0.10867628047353074
#>     Attrib V54    -0.3796790963135937
#>     Attrib V55    0.6067107992601856
#>     Attrib V56    0.16803874428291413
#>     Attrib V57    0.3622692737445342
#>     Attrib V58    -0.2463606684427259
#>     Attrib V59    -0.22354052344401304
#>     Attrib V6    -0.14947280856585493
#>     Attrib V60    0.26811200681177905
#>     Attrib V7    0.3322402703734987
#>     Attrib V8    0.5190127487077689
#>     Attrib V9    -0.5392029531587755
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.05201523255145291
#>     Attrib V1    0.29122294533280835
#>     Attrib V10    -0.1538341008321755
#>     Attrib V11    0.020364152475083816
#>     Attrib V12    0.14064604143659837
#>     Attrib V13    -0.04044248873615462
#>     Attrib V14    0.1328910415599328
#>     Attrib V15    0.015383414109130746
#>     Attrib V16    -0.008661227023433788
#>     Attrib V17    -0.09432493530630746
#>     Attrib V18    -0.0010356131168495657
#>     Attrib V19    -0.165447498711255
#>     Attrib V2    0.11931132278564041
#>     Attrib V20    -0.048438589047329055
#>     Attrib V21    -0.00541578322969296
#>     Attrib V22    -0.12815121926213915
#>     Attrib V23    -0.05979553683068641
#>     Attrib V24    0.07230324911194337
#>     Attrib V25    -0.05977405743134319
#>     Attrib V26    -0.1767845202782482
#>     Attrib V27    0.010342003597603682
#>     Attrib V28    -0.028996302928961583
#>     Attrib V29    -0.014224143349043743
#>     Attrib V3    0.1022296465554297
#>     Attrib V30    -0.02141765524665282
#>     Attrib V31    -0.2951159294996588
#>     Attrib V32    0.057508860646759065
#>     Attrib V33    0.26585637050908456
#>     Attrib V34    0.08303514113836907
#>     Attrib V35    0.04735766923679205
#>     Attrib V36    -0.15018994805942584
#>     Attrib V37    -0.1512875880465307
#>     Attrib V38    0.012779256309116336
#>     Attrib V39    -0.031743236485092474
#>     Attrib V4    0.18594768837763742
#>     Attrib V40    -0.1103716220438622
#>     Attrib V41    0.004421906083632242
#>     Attrib V42    0.04679525740763763
#>     Attrib V43    -0.0529066971024076
#>     Attrib V44    0.05665871146306101
#>     Attrib V45    0.1555193925480025
#>     Attrib V46    0.09592380310247052
#>     Attrib V47    -0.05749700434201592
#>     Attrib V48    0.17188312866377156
#>     Attrib V49    0.07262381041864001
#>     Attrib V5    -0.0192468010203865
#>     Attrib V50    -0.03841150823091158
#>     Attrib V51    0.003064504116372249
#>     Attrib V52    0.15519538077765646
#>     Attrib V53    0.10325945608370354
#>     Attrib V54    0.1795821938018933
#>     Attrib V55    0.06655770214398138
#>     Attrib V56    0.011406861221214886
#>     Attrib V57    0.2002926617653058
#>     Attrib V58    0.15703038655246981
#>     Attrib V59    0.32948618761210885
#>     Attrib V6    0.03657348462826309
#>     Attrib V60    0.2547026981898512
#>     Attrib V7    0.01864738156455052
#>     Attrib V8    -0.03301531782022809
#>     Attrib V9    0.12574227663799542
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4322034419701904
#>     Attrib V1    0.7846944590850563
#>     Attrib V10    0.21262048009258658
#>     Attrib V11    0.7076588271122015
#>     Attrib V12    0.5310246658751848
#>     Attrib V13    0.3462422855058808
#>     Attrib V14    0.18467343011272774
#>     Attrib V15    -0.6047833353789561
#>     Attrib V16    -0.7439841963352647
#>     Attrib V17    -0.40174719859176933
#>     Attrib V18    0.22320222741373405
#>     Attrib V19    -0.09077257673493375
#>     Attrib V2    0.3741210252994661
#>     Attrib V20    0.3109088753956351
#>     Attrib V21    0.6736176674894063
#>     Attrib V22    0.6315584468364785
#>     Attrib V23    0.6125230905784298
#>     Attrib V24    0.1632763616374906
#>     Attrib V25    -0.30410381657249574
#>     Attrib V26    -0.01691096540036664
#>     Attrib V27    0.6565795621564418
#>     Attrib V28    1.0844752585090465
#>     Attrib V29    1.3447506424925226
#>     Attrib V3    0.16769932211794417
#>     Attrib V30    0.7602462818826515
#>     Attrib V31    -1.0698149847908964
#>     Attrib V32    -0.2396241691510999
#>     Attrib V33    0.5200565116200986
#>     Attrib V34    -0.10047313597897448
#>     Attrib V35    -0.07928858103273272
#>     Attrib V36    -0.4410607767668691
#>     Attrib V37    -0.13692150591582797
#>     Attrib V38    0.37559914900342317
#>     Attrib V39    0.040373588275346345
#>     Attrib V4    0.39072073603245594
#>     Attrib V40    -0.3222992003223256
#>     Attrib V41    -0.05551938915550011
#>     Attrib V42    -0.029693296534366812
#>     Attrib V43    -0.30585163758637973
#>     Attrib V44    0.5462448359850389
#>     Attrib V45    0.9312548886287352
#>     Attrib V46    0.3562833828438133
#>     Attrib V47    0.16188170366145418
#>     Attrib V48    1.0643044068902534
#>     Attrib V49    0.6626264209205308
#>     Attrib V5    -0.23946487997378016
#>     Attrib V50    -0.05463404607362629
#>     Attrib V51    0.07281782762754557
#>     Attrib V52    0.5772614904863778
#>     Attrib V53    -0.156215311811886
#>     Attrib V54    0.4008755571942387
#>     Attrib V55    -0.5560471723782049
#>     Attrib V56    -0.3000340299331024
#>     Attrib V57    -0.3847605743577136
#>     Attrib V58    0.031122418667267285
#>     Attrib V59    0.08737186741916374
#>     Attrib V6    0.14340596381719
#>     Attrib V60    -0.12457735858208138
#>     Attrib V7    -0.00501877738048107
#>     Attrib V8    -0.42629610671509616
#>     Attrib V9    0.7502927348893131
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.0124537589819982
#>     Attrib V1    0.18574624017592078
#>     Attrib V10    0.0047299088890750875
#>     Attrib V11    0.07887759309441211
#>     Attrib V12    0.07528546958278973
#>     Attrib V13    -0.006190999958377821
#>     Attrib V14    0.048125578348556464
#>     Attrib V15    -0.017637904973902222
#>     Attrib V16    -0.029564720514331486
#>     Attrib V17    -0.09499259466496555
#>     Attrib V18    -0.11281245087421295
#>     Attrib V19    -0.1683454505107648
#>     Attrib V2    0.10509408324946269
#>     Attrib V20    -0.15371437898632434
#>     Attrib V21    -0.09327870264585156
#>     Attrib V22    -0.12804446503527375
#>     Attrib V23    -0.050531868084003326
#>     Attrib V24    0.051903236730972184
#>     Attrib V25    -0.042602859651538504
#>     Attrib V26    -0.03783310897232769
#>     Attrib V27    0.06826747481617698
#>     Attrib V28    0.06395978324647464
#>     Attrib V29    0.028067528229074545
#>     Attrib V3    0.09418318943655998
#>     Attrib V30    0.029995033423600288
#>     Attrib V31    -0.13655884000476257
#>     Attrib V32    0.08567169377551216
#>     Attrib V33    0.2211016855371188
#>     Attrib V34    0.0581453251312985
#>     Attrib V35    0.020211288875564115
#>     Attrib V36    -0.025621544759433536
#>     Attrib V37    -0.08519270357916428
#>     Attrib V38    0.06749535245316098
#>     Attrib V39    -0.02314021066195174
#>     Attrib V4    0.1957265539274958
#>     Attrib V40    -0.054375630444086796
#>     Attrib V41    -0.01804419242293777
#>     Attrib V42    -0.07550581232806794
#>     Attrib V43    -0.06557290631092166
#>     Attrib V44    0.09578890266436758
#>     Attrib V45    0.13330618797406416
#>     Attrib V46    0.11938150351715732
#>     Attrib V47    0.03875058898705473
#>     Attrib V48    0.2376059034290276
#>     Attrib V49    0.12231967226543937
#>     Attrib V5    0.01535653995763473
#>     Attrib V50    -0.031173579831131205
#>     Attrib V51    0.02001996807611904
#>     Attrib V52    0.13311799472146715
#>     Attrib V53    0.051294052371390814
#>     Attrib V54    0.10340471347506947
#>     Attrib V55    0.03868606721631836
#>     Attrib V56    -0.05136655366366792
#>     Attrib V57    0.2287442486683239
#>     Attrib V58    0.07365420614003161
#>     Attrib V59    0.2097655392395775
#>     Attrib V6    0.013986681837357287
#>     Attrib V60    0.2046017251013888
#>     Attrib V7    0.050660854870865225
#>     Attrib V8    -0.03469858628383723
#>     Attrib V9    0.13411979942871669
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.2660845030493161
#>     Attrib V1    0.5346326174622111
#>     Attrib V10    0.34906256386679635
#>     Attrib V11    0.8513561773534574
#>     Attrib V12    0.758644762515468
#>     Attrib V13    0.3976313414468033
#>     Attrib V14    0.09950140021276122
#>     Attrib V15    -0.6013015296152269
#>     Attrib V16    -0.7087708361244317
#>     Attrib V17    -0.4003256973246534
#>     Attrib V18    0.008154089900546758
#>     Attrib V19    -0.3444583109624153
#>     Attrib V2    0.17083718218063929
#>     Attrib V20    -0.1294239778858496
#>     Attrib V21    0.31507768313771817
#>     Attrib V22    0.2911442918831922
#>     Attrib V23    0.23410698066430136
#>     Attrib V24    0.029698018781871706
#>     Attrib V25    -0.11014764126189919
#>     Attrib V26    0.36008489295911783
#>     Attrib V27    0.9135912083137308
#>     Attrib V28    1.0775348054718208
#>     Attrib V29    1.038410196449496
#>     Attrib V3    0.05322687750097349
#>     Attrib V30    0.554373684393741
#>     Attrib V31    -0.7816504981052861
#>     Attrib V32    -0.0930438737020119
#>     Attrib V33    0.3124868305265009
#>     Attrib V34    -0.13966980635936765
#>     Attrib V35    -0.12287072347033477
#>     Attrib V36    -0.3108098651542292
#>     Attrib V37    -0.2856183475954607
#>     Attrib V38    0.1940945862659516
#>     Attrib V39    0.09836362432618141
#>     Attrib V4    0.492681319891255
#>     Attrib V40    -0.42233793710741646
#>     Attrib V41    -0.1834472631260911
#>     Attrib V42    -0.22472128976347341
#>     Attrib V43    -0.12416532938998683
#>     Attrib V44    0.4647958667025625
#>     Attrib V45    0.7324023643270637
#>     Attrib V46    0.3133470258784076
#>     Attrib V47    0.22942635696677174
#>     Attrib V48    1.0097340790594203
#>     Attrib V49    0.6640959837539477
#>     Attrib V5    -0.03452096133051718
#>     Attrib V50    -0.021375087464229864
#>     Attrib V51    0.16026287874531914
#>     Attrib V52    0.49546803859277727
#>     Attrib V53    -0.09270741201941236
#>     Attrib V54    0.2847580285012408
#>     Attrib V55    -0.22015573350492804
#>     Attrib V56    -0.18124097675350406
#>     Attrib V57    -0.10261702820798761
#>     Attrib V58    0.15525991948805434
#>     Attrib V59    0.2153502175696664
#>     Attrib V6    0.08734950389225729
#>     Attrib V60    -0.13895785022274487
#>     Attrib V7    -0.0998391483598727
#>     Attrib V8    -0.27321365835129785
#>     Attrib V9    0.6208448539048159
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.225523715681469
#>     Attrib V1    -0.08948898802010116
#>     Attrib V10    0.09128871442902699
#>     Attrib V11    -0.09956479133961386
#>     Attrib V12    -0.13116565694219018
#>     Attrib V13    -0.08569517053136798
#>     Attrib V14    -0.06327084860538866
#>     Attrib V15    6.181856542451507E-4
#>     Attrib V16    0.0629757970756244
#>     Attrib V17    -0.03206063861655687
#>     Attrib V18    -0.010277682161754342
#>     Attrib V19    0.01789279984118496
#>     Attrib V2    0.005086295242233082
#>     Attrib V20    -0.0423482015569898
#>     Attrib V21    -0.059115214869825336
#>     Attrib V22    -0.0425684745354212
#>     Attrib V23    -0.018499717708271288
#>     Attrib V24    -0.14114068683925515
#>     Attrib V25    -0.031532943689561596
#>     Attrib V26    -0.00363326744448935
#>     Attrib V27    -0.16701530141893578
#>     Attrib V28    -0.19695350668836284
#>     Attrib V29    -0.16063506658240329
#>     Attrib V3    0.016616399229912263
#>     Attrib V30    0.008983792964395627
#>     Attrib V31    0.32159375667338636
#>     Attrib V32    -0.015240971149166086
#>     Attrib V33    -0.07697695648662531
#>     Attrib V34    0.015011832298746872
#>     Attrib V35    0.06666623803893529
#>     Attrib V36    0.2042923952206103
#>     Attrib V37    0.18037597840017938
#>     Attrib V38    -0.028665598502403265
#>     Attrib V39    -0.03132662966287031
#>     Attrib V4    -0.026073640390272948
#>     Attrib V40    0.15485521094274451
#>     Attrib V41    0.1176701697155254
#>     Attrib V42    -4.192824807088035E-4
#>     Attrib V43    0.03493677385008177
#>     Attrib V44    -0.05852683107009856
#>     Attrib V45    -0.19670568834825236
#>     Attrib V46    -0.12120277289989133
#>     Attrib V47    -0.0010474909219766917
#>     Attrib V48    -0.25410234951805916
#>     Attrib V49    -0.1655018714536063
#>     Attrib V5    0.07894668599548789
#>     Attrib V50    0.139494966287724
#>     Attrib V51    0.015737784369898082
#>     Attrib V52    -0.0950525533077191
#>     Attrib V53    0.08723702056578433
#>     Attrib V54    -0.10692877208312343
#>     Attrib V55    0.03224622984979913
#>     Attrib V56    0.052345154672005414
#>     Attrib V57    0.07340276965778639
#>     Attrib V58    -0.03182157665807543
#>     Attrib V59    -0.1260905363135951
#>     Attrib V6    0.12676871794019476
#>     Attrib V60    -0.022869870734466554
#>     Attrib V7    0.08877975276837442
#>     Attrib V8    0.1670117617985881
#>     Attrib V9    -0.07086542450017655
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.2326311128552779
#>     Attrib V1    0.4624747681723013
#>     Attrib V10    -0.5512351966414127
#>     Attrib V11    -0.0927155735031741
#>     Attrib V12    0.2114415557507459
#>     Attrib V13    0.055969537649159
#>     Attrib V14    0.3326090870252918
#>     Attrib V15    0.0866969673400961
#>     Attrib V16    -0.0010357405452492096
#>     Attrib V17    0.06637811943555384
#>     Attrib V18    0.25783792221779483
#>     Attrib V19    0.06060041585791491
#>     Attrib V2    0.185838959181552
#>     Attrib V20    0.3648938347836061
#>     Attrib V21    0.352737547836925
#>     Attrib V22    0.08513836335448417
#>     Attrib V23    0.07460356178679489
#>     Attrib V24    0.15577084160108057
#>     Attrib V25    -0.3064602387471377
#>     Attrib V26    -0.6779496246040698
#>     Attrib V27    -0.2515938183471314
#>     Attrib V28    -0.018865936513665756
#>     Attrib V29    0.08355006669900845
#>     Attrib V3    0.07983600767558911
#>     Attrib V30    -0.017968345197170468
#>     Attrib V31    -1.003449306444378
#>     Attrib V32    -0.22490872735967693
#>     Attrib V33    0.48987221763025074
#>     Attrib V34    0.27381901731572555
#>     Attrib V35    0.13365469757648096
#>     Attrib V36    -0.29634263911314535
#>     Attrib V37    -0.3486144945493897
#>     Attrib V38    0.24620308593414686
#>     Attrib V39    0.04607350275424959
#>     Attrib V4    0.13052860330348165
#>     Attrib V40    -0.14158164099649115
#>     Attrib V41    -0.09567028959856036
#>     Attrib V42    0.20105611748572627
#>     Attrib V43    -0.0753547069540291
#>     Attrib V44    0.17577479213387043
#>     Attrib V45    0.4263642400663111
#>     Attrib V46    0.12073450450058873
#>     Attrib V47    -0.23256848918408274
#>     Attrib V48    0.31763457555960734
#>     Attrib V49    0.11426428173869804
#>     Attrib V5    -0.21935250788693245
#>     Attrib V50    -0.29153564396671566
#>     Attrib V51    -0.06682538712584513
#>     Attrib V52    0.33002803596872443
#>     Attrib V53    0.24753515756868863
#>     Attrib V54    0.6309450112652663
#>     Attrib V55    0.0755262738252112
#>     Attrib V56    -0.05851461699292543
#>     Attrib V57    0.1164302694211506
#>     Attrib V58    0.22460405657513066
#>     Attrib V59    0.5550944228202983
#>     Attrib V6    -0.11180336723031369
#>     Attrib V60    0.37211763130739706
#>     Attrib V7    -0.09614131507815218
#>     Attrib V8    -0.2885125090783678
#>     Attrib V9    0.00161358899184538
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.39459099192876407
#>     Attrib V1    0.6499285919321267
#>     Attrib V10    -0.9067975576939489
#>     Attrib V11    -0.22763938329398967
#>     Attrib V12    0.11692322329323442
#>     Attrib V13    0.12125714334429374
#>     Attrib V14    0.5558107508126277
#>     Attrib V15    0.2861767696642553
#>     Attrib V16    0.18020046689479788
#>     Attrib V17    0.11546096932392261
#>     Attrib V18    0.3416280971139654
#>     Attrib V19    0.20172251946617573
#>     Attrib V2    0.4081241057929475
#>     Attrib V20    0.5360254226644935
#>     Attrib V21    0.549090169487926
#>     Attrib V22    0.17836480937421115
#>     Attrib V23    0.10318291590348548
#>     Attrib V24    0.16744063584773322
#>     Attrib V25    -0.6370709422950639
#>     Attrib V26    -1.1500133279016882
#>     Attrib V27    -0.47646374410139747
#>     Attrib V28    -0.13624705589118144
#>     Attrib V29    0.11817331441389103
#>     Attrib V3    0.1573814265450984
#>     Attrib V30    -0.10471470725040473
#>     Attrib V31    -1.4744379263143588
#>     Attrib V32    -0.3833889295132009
#>     Attrib V33    0.7160782676365186
#>     Attrib V34    0.3682090335986794
#>     Attrib V35    0.1187216948709829
#>     Attrib V36    -0.48800018784691906
#>     Attrib V37    -0.47338039712987984
#>     Attrib V38    0.310037539958839
#>     Attrib V39    0.03129828889747335
#>     Attrib V4    0.18669044304849886
#>     Attrib V40    -0.10612905225412417
#>     Attrib V41    -0.02955705013642756
#>     Attrib V42    0.40237669088895456
#>     Attrib V43    -0.0023790561702638235
#>     Attrib V44    0.13913675180315566
#>     Attrib V45    0.5473071558870866
#>     Attrib V46    0.2393687029961089
#>     Attrib V47    -0.4417227872489617
#>     Attrib V48    0.3269216837926024
#>     Attrib V49    0.09905070772317835
#>     Attrib V5    -0.39658810465430655
#>     Attrib V50    -0.4857851004233478
#>     Attrib V51    -0.20132828680848755
#>     Attrib V52    0.5571287982879569
#>     Attrib V53    0.4916922780625957
#>     Attrib V54    0.877090507228525
#>     Attrib V55    0.13529525057550687
#>     Attrib V56    -0.05777486458702879
#>     Attrib V57    0.1888867274678314
#>     Attrib V58    0.36136700793020304
#>     Attrib V59    0.9344330560374431
#>     Attrib V6    -0.22753143706443021
#>     Attrib V60    0.6175767548711599
#>     Attrib V7    -0.0033182278933303064
#>     Attrib V8    -0.37163744029359996
#>     Attrib V9    -0.10148803334538213
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.12037066695800164
#>     Attrib V1    0.1705614335692841
#>     Attrib V10    -0.07022939092492594
#>     Attrib V11    0.022270616037587777
#>     Attrib V12    0.06863489386826344
#>     Attrib V13    0.04963643241957188
#>     Attrib V14    0.09743039229310958
#>     Attrib V15    -0.014881923627068923
#>     Attrib V16    -0.0895385142747808
#>     Attrib V17    -0.04675468310737549
#>     Attrib V18    -0.03217936054859664
#>     Attrib V19    -0.13420890603128208
#>     Attrib V2    0.079832574640982
#>     Attrib V20    -0.035714621889328044
#>     Attrib V21    -0.035456349381625014
#>     Attrib V22    -0.10722339158988735
#>     Attrib V23    0.006976699395919146
#>     Attrib V24    0.04063994483030303
#>     Attrib V25    -0.006646934680343157
#>     Attrib V26    -0.11705195116930601
#>     Attrib V27    0.06079580286598123
#>     Attrib V28    -0.018072649524467122
#>     Attrib V29    0.007764528163896033
#>     Attrib V3    0.14667885315556545
#>     Attrib V30    0.0017436529744431447
#>     Attrib V31    -0.1845036758706715
#>     Attrib V32    0.05218679499866819
#>     Attrib V33    0.16976908765285784
#>     Attrib V34    0.11082351481122743
#>     Attrib V35    0.025806328699039902
#>     Attrib V36    -0.06377595438665104
#>     Attrib V37    -0.04842738638224467
#>     Attrib V38    0.03020593570846461
#>     Attrib V39    0.04460104481922397
#>     Attrib V4    0.15420149454333365
#>     Attrib V40    -8.894372134754156E-5
#>     Attrib V41    0.012271130084077403
#>     Attrib V42    0.029112388130268774
#>     Attrib V43    -0.06438829451088669
#>     Attrib V44    0.04790998464783008
#>     Attrib V45    0.051877826573697626
#>     Attrib V46    0.09285252108416374
#>     Attrib V47    0.029494569722324115
#>     Attrib V48    0.12330563644814413
#>     Attrib V49    0.09447344793201874
#>     Attrib V5    0.04987817872384871
#>     Attrib V50    -0.03470175869107607
#>     Attrib V51    0.007743642127018985
#>     Attrib V52    0.10908597956956749
#>     Attrib V53    0.04864621432833188
#>     Attrib V54    0.08532734966086024
#>     Attrib V55    0.053882213835521754
#>     Attrib V56    0.011169316350761422
#>     Attrib V57    0.1562994866129671
#>     Attrib V58    0.08210914991961506
#>     Attrib V59    0.21396175385479024
#>     Attrib V6    0.0696113786298236
#>     Attrib V60    0.2182589208248213
#>     Attrib V7    0.07425897775482643
#>     Attrib V8    -0.057977329685361616
#>     Attrib V9    0.08571437042324305
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.23766001095736744
#>     Attrib V1    0.5769480295201442
#>     Attrib V10    -0.48441537485228825
#>     Attrib V11    -0.02016431768875782
#>     Attrib V12    0.1998060057876018
#>     Attrib V13    0.011062902668119596
#>     Attrib V14    0.3205801260796937
#>     Attrib V15    0.221602903352153
#>     Attrib V16    0.0459838110435523
#>     Attrib V17    0.012779258660016297
#>     Attrib V18    0.11334415330192187
#>     Attrib V19    -0.06900995454957462
#>     Attrib V2    0.20619387618855026
#>     Attrib V20    0.15739389643196866
#>     Attrib V21    0.17787761015463216
#>     Attrib V22    -0.11055544291351921
#>     Attrib V23    -0.08996250280316931
#>     Attrib V24    0.062395738816799606
#>     Attrib V25    -0.3134957098852469
#>     Attrib V26    -0.583547526589305
#>     Attrib V27    -0.3693302251294865
#>     Attrib V28    -0.2729956326552984
#>     Attrib V29    -0.16841926951064662
#>     Attrib V3    0.036196359958181684
#>     Attrib V30    -0.1575906105793141
#>     Attrib V31    -0.7972284308990379
#>     Attrib V32    -0.11842036151333951
#>     Attrib V33    0.4468621270408396
#>     Attrib V34    0.19796189752108934
#>     Attrib V35    0.1455698935192383
#>     Attrib V36    -0.2923411952391117
#>     Attrib V37    -0.36402602942771184
#>     Attrib V38    0.062185644600364284
#>     Attrib V39    0.023952866949554372
#>     Attrib V4    0.13986888034626935
#>     Attrib V40    -0.1790402983668132
#>     Attrib V41    -0.16643353713170636
#>     Attrib V42    0.03691365024642674
#>     Attrib V43    -0.1093166300734752
#>     Attrib V44    0.1224168644000315
#>     Attrib V45    0.2717143754744715
#>     Attrib V46    0.11980425169216691
#>     Attrib V47    -0.23750836222181762
#>     Attrib V48    0.35342202723377675
#>     Attrib V49    0.15738800308165188
#>     Attrib V5    -0.24852860119031409
#>     Attrib V50    -0.24347520514527796
#>     Attrib V51    -0.12201691325035803
#>     Attrib V52    0.28753798007197623
#>     Attrib V53    0.1926821282909252
#>     Attrib V54    0.6631984532801842
#>     Attrib V55    0.28803194980510294
#>     Attrib V56    0.030114170507946868
#>     Attrib V57    0.3238388911906408
#>     Attrib V58    0.3325830353970743
#>     Attrib V59    0.6978898391218724
#>     Attrib V6    -0.14984179771700112
#>     Attrib V60    0.49376366787971326
#>     Attrib V7    0.0045212554886981905
#>     Attrib V8    -0.25785495039710626
#>     Attrib V9    -0.05004012728126581
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.5440243259796607
#>     Attrib V1    -0.26417138675192614
#>     Attrib V10    0.5714564517089982
#>     Attrib V11    -0.36230752455686543
#>     Attrib V12    -0.7411434623356177
#>     Attrib V13    -0.5204931686999842
#>     Attrib V14    -0.41460960470683034
#>     Attrib V15    0.49974372412873963
#>     Attrib V16    0.5322821791026562
#>     Attrib V17    0.11356133026504142
#>     Attrib V18    -0.417243425047008
#>     Attrib V19    0.10370623261493325
#>     Attrib V2    -0.12083233007523146
#>     Attrib V20    0.10331521797266002
#>     Attrib V21    -0.12321174072218358
#>     Attrib V22    -0.18256875190480565
#>     Attrib V23    -0.5011921660682903
#>     Attrib V24    -0.46163560583023977
#>     Attrib V25    0.12094650641303972
#>     Attrib V26    0.326639120969951
#>     Attrib V27    -0.5233551938907913
#>     Attrib V28    -0.776054541344914
#>     Attrib V29    -0.7887671686280561
#>     Attrib V3    -0.07358444641770373
#>     Attrib V30    -0.323942682502965
#>     Attrib V31    1.0447422997972537
#>     Attrib V32    0.0129993736403454
#>     Attrib V33    -0.6714084400127546
#>     Attrib V34    0.028072342765142526
#>     Attrib V35    0.3054492862558378
#>     Attrib V36    0.8069655640168177
#>     Attrib V37    0.6839285382147493
#>     Attrib V38    -0.16591489234748638
#>     Attrib V39    0.018449410450872283
#>     Attrib V4    -0.3186050223211552
#>     Attrib V40    0.2577848624445564
#>     Attrib V41    -0.09854096432958623
#>     Attrib V42    -0.30300221246463466
#>     Attrib V43    0.014156599225304193
#>     Attrib V44    -0.5131391582564739
#>     Attrib V45    -0.6078199437011652
#>     Attrib V46    -0.11738609290299484
#>     Attrib V47    0.15953851639265249
#>     Attrib V48    -0.8669847208086034
#>     Attrib V49    -0.5702707759177965
#>     Attrib V5    0.28343433234298004
#>     Attrib V50    0.4390099704152111
#>     Attrib V51    0.12524936956248453
#>     Attrib V52    -0.5967951023455014
#>     Attrib V53    -0.17995071969826248
#>     Attrib V54    -0.525044233135739
#>     Attrib V55    0.25074711326016463
#>     Attrib V56    0.21137791242162685
#>     Attrib V57    0.1335813889463548
#>     Attrib V58    -0.2582440028113889
#>     Attrib V59    -0.5540610099567091
#>     Attrib V6    0.004914989598318123
#>     Attrib V60    0.039080824339204456
#>     Attrib V7    0.296514778566189
#>     Attrib V8    0.5288896884523122
#>     Attrib V9    -0.13330279845664528
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.08842055402265239
#>     Attrib V1    0.1913789382576752
#>     Attrib V10    -0.047884641772833844
#>     Attrib V11    0.01308153151452639
#>     Attrib V12    0.06890275183655084
#>     Attrib V13    0.016237510745274485
#>     Attrib V14    0.06859236067230826
#>     Attrib V15    -5.296253451392571E-4
#>     Attrib V16    0.006674955206225645
#>     Attrib V17    -0.019020488945265257
#>     Attrib V18    0.0028993762620697014
#>     Attrib V19    -0.09573499842192595
#>     Attrib V2    0.059545982291556054
#>     Attrib V20    -0.08356387800387913
#>     Attrib V21    -0.07634566071152335
#>     Attrib V22    -0.11236814658651391
#>     Attrib V23    -0.087352905967126
#>     Attrib V24    0.046637358901433494
#>     Attrib V25    -0.04467562496969443
#>     Attrib V26    -0.1377934929821771
#>     Attrib V27    -0.02424686078601589
#>     Attrib V28    -0.00737240401894509
#>     Attrib V29    -0.03899814471604985
#>     Attrib V3    0.11562745502660386
#>     Attrib V30    -0.06666911476287767
#>     Attrib V31    -0.20536940557802896
#>     Attrib V32    0.044007454634093404
#>     Attrib V33    0.15723320364810445
#>     Attrib V34    0.11023381824648694
#>     Attrib V35    0.037171654919760946
#>     Attrib V36    -0.06563261253092338
#>     Attrib V37    -0.05227812694762618
#>     Attrib V38    0.0428283754690117
#>     Attrib V39    0.003274311178001601
#>     Attrib V4    0.15207914545924683
#>     Attrib V40    -0.06819572669482442
#>     Attrib V41    -0.0077391058198754805
#>     Attrib V42    0.041146114040728515
#>     Attrib V43    -0.04225077521158439
#>     Attrib V44    0.02431956941117538
#>     Attrib V45    0.1127061980452311
#>     Attrib V46    0.09203808288635733
#>     Attrib V47    -0.007974495486868401
#>     Attrib V48    0.12995652096629962
#>     Attrib V49    0.039694395291813706
#>     Attrib V5    0.022667174903264753
#>     Attrib V50    0.01978639211367395
#>     Attrib V51    0.07879856395932562
#>     Attrib V52    0.17317335974917297
#>     Attrib V53    0.1093543834196941
#>     Attrib V54    0.12479002325857608
#>     Attrib V55    0.10352115879826282
#>     Attrib V56    0.030471740216929916
#>     Attrib V57    0.1832588874040302
#>     Attrib V58    0.1538733477735877
#>     Attrib V59    0.16905517576811183
#>     Attrib V6    0.04119363360741918
#>     Attrib V60    0.2048817851098573
#>     Attrib V7    0.015854271676624676
#>     Attrib V8    -0.06421159276569013
#>     Attrib V9    0.11647103019960957
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.1260414983255838
#>     Attrib V1    0.03881326885448843
#>     Attrib V10    0.10003822406995069
#>     Attrib V11    0.023891918594698656
#>     Attrib V12    -0.041056830096406774
#>     Attrib V13    -0.06520311701725992
#>     Attrib V14    -0.02129745659077816
#>     Attrib V15    0.08678268670824892
#>     Attrib V16    0.013342000195414183
#>     Attrib V17    -0.003324491648653013
#>     Attrib V18    -0.028480810723659458
#>     Attrib V19    -0.028774928011953985
#>     Attrib V2    0.12680580311076012
#>     Attrib V20    -0.0790694283209346
#>     Attrib V21    -0.07449357576547162
#>     Attrib V22    0.014095474273286807
#>     Attrib V23    -0.038198987638200614
#>     Attrib V24    -0.019758469907211716
#>     Attrib V25    -0.04617989390187124
#>     Attrib V26    -0.06653442863815966
#>     Attrib V27    -0.06362793914654548
#>     Attrib V28    -0.09006975471128287
#>     Attrib V29    -0.1061103321389323
#>     Attrib V3    0.08211217783950085
#>     Attrib V30    0.011550666813190206
#>     Attrib V31    0.13218240639188772
#>     Attrib V32    0.005027243611878083
#>     Attrib V33    0.05837252875042495
#>     Attrib V34    -0.008147516360135734
#>     Attrib V35    0.07868067404133657
#>     Attrib V36    0.054577813642867616
#>     Attrib V37    0.0627995923538134
#>     Attrib V38    0.07271485396614343
#>     Attrib V39    0.06344161067407164
#>     Attrib V4    0.08183766595652729
#>     Attrib V40    0.07235034314121881
#>     Attrib V41    0.12061550779033775
#>     Attrib V42    0.05062799901633478
#>     Attrib V43    0.08432507758575862
#>     Attrib V44    0.04451747604733164
#>     Attrib V45    -0.009577065286562778
#>     Attrib V46    -0.007778221982554765
#>     Attrib V47    -0.0019209766872676243
#>     Attrib V48    0.009099059231157018
#>     Attrib V49    -0.04424635933828152
#>     Attrib V5    0.0876209668797901
#>     Attrib V50    0.06437519920606484
#>     Attrib V51    0.04733575425213364
#>     Attrib V52    0.017516068311556304
#>     Attrib V53    0.03313013784427133
#>     Attrib V54    -0.039450172609992284
#>     Attrib V55    0.08399283103902427
#>     Attrib V56    0.08277736980762052
#>     Attrib V57    0.15303991191328983
#>     Attrib V58    0.020188922157849405
#>     Attrib V59    -0.015945113198586703
#>     Attrib V6    0.11472422649714112
#>     Attrib V60    0.08357816859457272
#>     Attrib V7    0.041913434310332204
#>     Attrib V8    0.13844546171478975
#>     Attrib V9    0.06611946348855412
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.49062430729561485
#>     Attrib V1    -0.3096367816602156
#>     Attrib V10    0.42811491072600727
#>     Attrib V11    -0.2762707749783267
#>     Attrib V12    -0.6157375690358106
#>     Attrib V13    -0.3870552978933633
#>     Attrib V14    -0.3051428429588866
#>     Attrib V15    0.27635562566255134
#>     Attrib V16    0.36717425348701616
#>     Attrib V17    0.059942400939509644
#>     Attrib V18    -0.22458879929864387
#>     Attrib V19    0.030474998372454563
#>     Attrib V2    -0.09423874760349184
#>     Attrib V20    0.05692900011121171
#>     Attrib V21    -0.09279906000383806
#>     Attrib V22    -0.17077948300738696
#>     Attrib V23    -0.3146534447811125
#>     Attrib V24    -0.355154322731534
#>     Attrib V25    0.13217286494991223
#>     Attrib V26    0.2328883398611334
#>     Attrib V27    -0.34978652442846553
#>     Attrib V28    -0.5936377775425673
#>     Attrib V29    -0.6074255883715087
#>     Attrib V3    0.0019482201088955684
#>     Attrib V30    -0.2829469614980413
#>     Attrib V31    0.7955536818258008
#>     Attrib V32    -0.021567880059497578
#>     Attrib V33    -0.527939212481539
#>     Attrib V34    -0.00529715349390198
#>     Attrib V35    0.15510615465545174
#>     Attrib V36    0.6541195752705826
#>     Attrib V37    0.49458857722247596
#>     Attrib V38    -0.17719931260905514
#>     Attrib V39    0.011655787699764893
#>     Attrib V4    -0.2534483907364836
#>     Attrib V40    0.21069544401026422
#>     Attrib V41    -0.03982837372853014
#>     Attrib V42    -0.155505828731339
#>     Attrib V43    0.056031934478732115
#>     Attrib V44    -0.33984930304069555
#>     Attrib V45    -0.6110955996108026
#>     Attrib V46    -0.18084988202701816
#>     Attrib V47    0.1370733830267497
#>     Attrib V48    -0.7070810517375619
#>     Attrib V49    -0.42661457258072666
#>     Attrib V5    0.24023980342505372
#>     Attrib V50    0.26642112794201245
#>     Attrib V51    0.11705637352881039
#>     Attrib V52    -0.41561616642121596
#>     Attrib V53    -0.09096074383253838
#>     Attrib V54    -0.4567174031773116
#>     Attrib V55    0.19557962889599073
#>     Attrib V56    0.18343977334509776
#>     Attrib V57    0.10333531455970155
#>     Attrib V58    -0.17559747483338317
#>     Attrib V59    -0.4038112970149641
#>     Attrib V6    0.011214587246898184
#>     Attrib V60    0.03654431641099496
#>     Attrib V7    0.24249255328673772
#>     Attrib V8    0.4386167220870586
#>     Attrib V9    -0.11329075568615231
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3877915284515983
#>     Attrib V1    0.6354159045799432
#>     Attrib V10    -0.8332192567723995
#>     Attrib V11    -0.21281683969379367
#>     Attrib V12    0.27280652912507414
#>     Attrib V13    0.1724173063256377
#>     Attrib V14    0.5490589555861103
#>     Attrib V15    0.2755156397806084
#>     Attrib V16    0.05575334095942898
#>     Attrib V17    0.07542517003451525
#>     Attrib V18    0.3357935443555544
#>     Attrib V19    0.15122391381781525
#>     Attrib V2    0.35390653329031285
#>     Attrib V20    0.47728193857300594
#>     Attrib V21    0.5128721699985765
#>     Attrib V22    0.18255632271471967
#>     Attrib V23    0.08634456095483005
#>     Attrib V24    0.21067873042923543
#>     Attrib V25    -0.5144712624232035
#>     Attrib V26    -1.0232992746516392
#>     Attrib V27    -0.43492737092066824
#>     Attrib V28    -0.06468497856233055
#>     Attrib V29    0.14746096467354983
#>     Attrib V3    0.13582844694508367
#>     Attrib V30    -0.03264660395590555
#>     Attrib V31    -1.3553662991205953
#>     Attrib V32    -0.3607298927166454
#>     Attrib V33    0.7008817189192316
#>     Attrib V34    0.3144856779611706
#>     Attrib V35    0.1460294613339592
#>     Attrib V36    -0.46639181104077243
#>     Attrib V37    -0.4799947041041741
#>     Attrib V38    0.28052579755146084
#>     Attrib V39    0.07197562358149863
#>     Attrib V4    0.19538074774142242
#>     Attrib V40    -0.11486730981031683
#>     Attrib V41    -0.03642092144559055
#>     Attrib V42    0.4044182042394287
#>     Attrib V43    -0.08916811171293892
#>     Attrib V44    0.13261228740550782
#>     Attrib V45    0.5738675201173401
#>     Attrib V46    0.19187032294575668
#>     Attrib V47    -0.4571288353060731
#>     Attrib V48    0.3267438069019082
#>     Attrib V49    0.1985703404941862
#>     Attrib V5    -0.38762924156812556
#>     Attrib V50    -0.5026450086750276
#>     Attrib V51    -0.23756939088989887
#>     Attrib V52    0.5413978960281822
#>     Attrib V53    0.44503552008038666
#>     Attrib V54    0.8995568501190618
#>     Attrib V55    0.1579682788639878
#>     Attrib V56    -0.1356728056615119
#>     Attrib V57    0.08111923882866826
#>     Attrib V58    0.3566254975449738
#>     Attrib V59    0.8404959618056316
#>     Attrib V6    -0.19099749277946781
#>     Attrib V60    0.565639415242805
#>     Attrib V7    -0.005235738941404664
#>     Attrib V8    -0.4249854467748868
#>     Attrib V9    -0.09171073380599801
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.2481655951233965
#>     Attrib V1    0.7300897498499249
#>     Attrib V10    -0.621787243393835
#>     Attrib V11    -0.16051817389510842
#>     Attrib V12    0.25900305352152386
#>     Attrib V13    0.267283793548937
#>     Attrib V14    0.4843236336829961
#>     Attrib V15    0.11202117468819774
#>     Attrib V16    -0.09166773327303716
#>     Attrib V17    0.06483089880950235
#>     Attrib V18    0.43956989439197314
#>     Attrib V19    0.25837449997852296
#>     Attrib V2    0.3494125047356095
#>     Attrib V20    0.7067341603332581
#>     Attrib V21    0.7847859253313031
#>     Attrib V22    0.4756536293348338
#>     Attrib V23    0.34573410461838167
#>     Attrib V24    0.19193872939725903
#>     Attrib V25    -0.5135737557564108
#>     Attrib V26    -0.9320496025838826
#>     Attrib V27    -0.2769232341715257
#>     Attrib V28    0.13387079975436436
#>     Attrib V29    0.4429544970783256
#>     Attrib V3    0.19585265459885035
#>     Attrib V30    0.15289118885040262
#>     Attrib V31    -1.4772737133895775
#>     Attrib V32    -0.5013364324714502
#>     Attrib V33    0.6614611367994138
#>     Attrib V34    0.3461039773622045
#>     Attrib V35    0.2721841631056549
#>     Attrib V36    -0.1870923708053076
#>     Attrib V37    -0.06097544319563777
#>     Attrib V38    0.5948018345141546
#>     Attrib V39    0.13940220719443408
#>     Attrib V4    0.24763398966675443
#>     Attrib V40    -0.18508639043562838
#>     Attrib V41    0.027147231435978244
#>     Attrib V42    0.3605981580624945
#>     Attrib V43    -0.01588741815664691
#>     Attrib V44    0.2895378762171345
#>     Attrib V45    0.5930007470660222
#>     Attrib V46    0.22049612536003738
#>     Attrib V47    -0.385626642665329
#>     Attrib V48    0.33568118825016235
#>     Attrib V49    0.13314320752638845
#>     Attrib V5    -0.2416734313977439
#>     Attrib V50    -0.46200053271621694
#>     Attrib V51    -0.06372784468285254
#>     Attrib V52    0.5368304309277356
#>     Attrib V53    0.3110172861554988
#>     Attrib V54    0.7652174945914603
#>     Attrib V55    -0.13211501955351684
#>     Attrib V56    -0.1309527484433162
#>     Attrib V57    -0.22565130519669963
#>     Attrib V58    0.13945360463984888
#>     Attrib V59    0.7491482078398016
#>     Attrib V6    -0.14947556098877074
#>     Attrib V60    0.6500228836249696
#>     Attrib V7    -0.013049030422782064
#>     Attrib V8    -0.6818249385339838
#>     Attrib V9    0.03062392594552443
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.4635987199944322
#>     Attrib V1    -0.2561141463314724
#>     Attrib V10    0.5733186424959977
#>     Attrib V11    -0.4523555826806159
#>     Attrib V12    -0.8450839799691953
#>     Attrib V13    -0.6110659588939181
#>     Attrib V14    -0.40941839680686937
#>     Attrib V15    0.533630429276306
#>     Attrib V16    0.5656888017535517
#>     Attrib V17    0.08489039616894951
#>     Attrib V18    -0.5027952802616173
#>     Attrib V19    -0.03417225667330898
#>     Attrib V2    -0.20239107610330814
#>     Attrib V20    0.001944255573930793
#>     Attrib V21    -0.1292056734440875
#>     Attrib V22    -0.31580401903576594
#>     Attrib V23    -0.6184780733828716
#>     Attrib V24    -0.5097089575371425
#>     Attrib V25    0.1541076974772188
#>     Attrib V26    0.32796064448262574
#>     Attrib V27    -0.47377843564016353
#>     Attrib V28    -0.8336084899038568
#>     Attrib V29    -0.9084865625237423
#>     Attrib V3    -0.18998792384118107
#>     Attrib V30    -0.41500875361680434
#>     Attrib V31    1.1295176684935626
#>     Attrib V32    0.019672391409672866
#>     Attrib V33    -0.7107527312621303
#>     Attrib V34    -0.012386404003249371
#>     Attrib V35    0.310595862084439
#>     Attrib V36    0.850858004695483
#>     Attrib V37    0.6772342443788432
#>     Attrib V38    -0.25624476323629497
#>     Attrib V39    -0.032968709652237166
#>     Attrib V4    -0.31004897121038044
#>     Attrib V40    0.30851721368557083
#>     Attrib V41    -0.02113092564691635
#>     Attrib V42    -0.31659193680305636
#>     Attrib V43    0.06807785530431652
#>     Attrib V44    -0.5472213108177114
#>     Attrib V45    -0.7467963323196465
#>     Attrib V46    -0.16633191903694058
#>     Attrib V47    0.1290809301663346
#>     Attrib V48    -0.8945255583315139
#>     Attrib V49    -0.6465681389086347
#>     Attrib V5    0.32667935946870336
#>     Attrib V50    0.467909097759541
#>     Attrib V51    0.09274443643715524
#>     Attrib V52    -0.6367383948782022
#>     Attrib V53    -0.2770701653629357
#>     Attrib V54    -0.5893612648026243
#>     Attrib V55    0.251092311174546
#>     Attrib V56    0.10626258355202214
#>     Attrib V57    0.36717605537518355
#>     Attrib V58    -0.2752961227020075
#>     Attrib V59    -0.40532305654870354
#>     Attrib V6    0.009132560463867475
#>     Attrib V60    0.2964678584882496
#>     Attrib V7    0.44915471222863695
#>     Attrib V8    0.4970344021569587
#>     Attrib V9    -0.1619303069717243
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.031767597947575756
#>     Attrib V1    0.3801036913828496
#>     Attrib V10    -0.17050870150655806
#>     Attrib V11    0.02789811579697303
#>     Attrib V12    0.12191624169645382
#>     Attrib V13    -0.034965644487406675
#>     Attrib V14    0.20208984029108787
#>     Attrib V15    0.04559485205029014
#>     Attrib V16    0.042758039881961
#>     Attrib V17    -0.05440144858915851
#>     Attrib V18    -0.04162700794665655
#>     Attrib V19    -0.1788840973941597
#>     Attrib V2    0.15013327639169974
#>     Attrib V20    -0.03600189999635189
#>     Attrib V21    -0.041260117728899225
#>     Attrib V22    -0.20451701630759306
#>     Attrib V23    -0.1858621819381577
#>     Attrib V24    0.04030433928915589
#>     Attrib V25    -0.1920057798809623
#>     Attrib V26    -0.31279507063425926
#>     Attrib V27    -0.14275635802961653
#>     Attrib V28    -0.16225052187245653
#>     Attrib V29    -0.0746869489433071
#>     Attrib V3    0.06837153302155834
#>     Attrib V30    -0.1206185287620113
#>     Attrib V31    -0.35611192969139216
#>     Attrib V32    -0.0019092305606886427
#>     Attrib V33    0.23656460406025842
#>     Attrib V34    0.11982821873546205
#>     Attrib V35    0.07160611093058959
#>     Attrib V36    -0.13470513659261926
#>     Attrib V37    -0.22088357305753736
#>     Attrib V38    -0.019607200465260127
#>     Attrib V39    -0.06104280635179668
#>     Attrib V4    0.18083260409236934
#>     Attrib V40    -0.11317484096435003
#>     Attrib V41    -0.1419669834032984
#>     Attrib V42    -0.036522183715707264
#>     Attrib V43    -0.020389941882139943
#>     Attrib V44    0.05377402512185429
#>     Attrib V45    0.12048664563204806
#>     Attrib V46    0.11272019250960325
#>     Attrib V47    -0.11027879904585361
#>     Attrib V48    0.27726481550027265
#>     Attrib V49    0.11501660747615171
#>     Attrib V5    -0.03828597739522246
#>     Attrib V50    -0.08306011378910189
#>     Attrib V51    -0.007864028089605174
#>     Attrib V52    0.21081957293193798
#>     Attrib V53    0.09242470659299913
#>     Attrib V54    0.34041185845680016
#>     Attrib V55    0.21518415310946343
#>     Attrib V56    0.05459233866017433
#>     Attrib V57    0.30094071315462423
#>     Attrib V58    0.27226205454949687
#>     Attrib V59    0.42717722854262613
#>     Attrib V6    -0.01752535763270042
#>     Attrib V60    0.36235010520305694
#>     Attrib V7    0.037311674803015706
#>     Attrib V8    -0.13378033486844093
#>     Attrib V9    0.06964911949983077
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.2415116759893331
#>     Attrib V1    0.5910790393916172
#>     Attrib V10    -0.7183271448811059
#>     Attrib V11    -0.1889261095332529
#>     Attrib V12    0.17655812362339465
#>     Attrib V13    0.06657066700180628
#>     Attrib V14    0.41311725280577666
#>     Attrib V15    0.2566553134561066
#>     Attrib V16    0.131542100506294
#>     Attrib V17    0.1538502914903912
#>     Attrib V18    0.26226156206438445
#>     Attrib V19    0.10008166064325826
#>     Attrib V2    0.2579898872195008
#>     Attrib V20    0.33259986677336756
#>     Attrib V21    0.299603386742436
#>     Attrib V22    0.0035118086213549475
#>     Attrib V23    -0.020041654725496214
#>     Attrib V24    0.13185397606788352
#>     Attrib V25    -0.36427386632541947
#>     Attrib V26    -0.7736685397978963
#>     Attrib V27    -0.5228438372100327
#>     Attrib V28    -0.3732299405938278
#>     Attrib V29    -0.20839604871730114
#>     Attrib V3    0.18378057316556737
#>     Attrib V30    -0.24116296998660697
#>     Attrib V31    -1.0081985698652214
#>     Attrib V32    -0.24382523850543664
#>     Attrib V33    0.46940404167385374
#>     Attrib V34    0.2618848551069159
#>     Attrib V35    0.17250172879701242
#>     Attrib V36    -0.27932819688630267
#>     Attrib V37    -0.23880871948600127
#>     Attrib V38    0.2301440470371392
#>     Attrib V39    0.08746251780750698
#>     Attrib V4    0.16426912728936682
#>     Attrib V40    -0.1078311719283695
#>     Attrib V41    -0.06100034041970299
#>     Attrib V42    0.21031809761685455
#>     Attrib V43    -0.015943895377096177
#>     Attrib V44    0.05315931253168576
#>     Attrib V45    0.32450940206272977
#>     Attrib V46    0.1283252858497779
#>     Attrib V47    -0.2910299284362776
#>     Attrib V48    0.14016703842676845
#>     Attrib V49    0.03533487192178741
#>     Attrib V5    -0.25193786680380037
#>     Attrib V50    -0.33493528128691374
#>     Attrib V51    -0.15985502527709966
#>     Attrib V52    0.418472124500028
#>     Attrib V53    0.4119944852856263
#>     Attrib V54    0.7277619378107759
#>     Attrib V55    0.22278053044234875
#>     Attrib V56    0.04955962258517115
#>     Attrib V57    0.1860557723955153
#>     Attrib V58    0.25583685231156594
#>     Attrib V59    0.7552271230105279
#>     Attrib V6    -0.11666264898354178
#>     Attrib V60    0.5246409235235275
#>     Attrib V7    -0.018624584134371527
#>     Attrib V8    -0.31641752762149006
#>     Attrib V9    -0.11624848666945078
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.3471223718247946
#>     Attrib V1    -0.29712807734646646
#>     Attrib V10    0.25379369371379223
#>     Attrib V11    -0.2231098762853984
#>     Attrib V12    -0.42028854173926294
#>     Attrib V13    -0.2975694781513684
#>     Attrib V14    -0.220849686546289
#>     Attrib V15    0.2528375666610181
#>     Attrib V16    0.25491850098893304
#>     Attrib V17    0.13999263872654935
#>     Attrib V18    -0.18467449226196012
#>     Attrib V19    0.05664960775801763
#>     Attrib V2    -0.09421379281098817
#>     Attrib V20    4.95617829594152E-4
#>     Attrib V21    -0.13319032213048151
#>     Attrib V22    -0.16164318028028554
#>     Attrib V23    -0.18077910846113876
#>     Attrib V24    -0.2659444098857514
#>     Attrib V25    0.08731943925490808
#>     Attrib V26    0.19458242073907495
#>     Attrib V27    -0.29366920119233564
#>     Attrib V28    -0.43266798711937726
#>     Attrib V29    -0.4557039855845596
#>     Attrib V3    -0.02682558551039101
#>     Attrib V30    -0.21153959361187802
#>     Attrib V31    0.5888542977947128
#>     Attrib V32    0.008078356565750873
#>     Attrib V33    -0.4652296675978882
#>     Attrib V34    -0.060712334450181864
#>     Attrib V35    0.08650042255366011
#>     Attrib V36    0.4554745641622562
#>     Attrib V37    0.340013199680575
#>     Attrib V38    -0.16505055156347123
#>     Attrib V39    -0.06913731524738204
#>     Attrib V4    -0.10856528909969361
#>     Attrib V40    0.18867683547575467
#>     Attrib V41    0.032099471969605
#>     Attrib V42    -0.12792137369985024
#>     Attrib V43    0.10959885278366296
#>     Attrib V44    -0.28597000981441884
#>     Attrib V45    -0.5074381346558136
#>     Attrib V46    -0.14773520261112266
#>     Attrib V47    0.10001969795236638
#>     Attrib V48    -0.5519059857050649
#>     Attrib V49    -0.37929053567792775
#>     Attrib V5    0.16087316011146752
#>     Attrib V50    0.24818492229420575
#>     Attrib V51    0.08139363888469697
#>     Attrib V52    -0.23316742117830097
#>     Attrib V53    -0.06417249242798814
#>     Attrib V54    -0.3272948413487173
#>     Attrib V55    0.15742050457421752
#>     Attrib V56    0.17052832142055957
#>     Attrib V57    0.1722615440581078
#>     Attrib V58    -0.10382073981935902
#>     Attrib V59    -0.3108946082191192
#>     Attrib V6    0.06249112164306412
#>     Attrib V60    -0.05692811458592454
#>     Attrib V7    0.08692135171308552
#>     Attrib V8    0.3081878449426955
#>     Attrib V9    -0.07470063653531332
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.21720098847953728
#>     Attrib V1    0.48235389187336924
#>     Attrib V10    0.48876570865091146
#>     Attrib V11    1.1506476951568074
#>     Attrib V12    0.9721579561810179
#>     Attrib V13    0.7440043434060636
#>     Attrib V14    0.2451836675882606
#>     Attrib V15    -1.0017295789803087
#>     Attrib V16    -1.1689547348307026
#>     Attrib V17    -0.42902625186990734
#>     Attrib V18    0.4022442441984807
#>     Attrib V19    -0.0017424409777369472
#>     Attrib V2    0.3648488430140023
#>     Attrib V20    0.1110060065303041
#>     Attrib V21    0.7227403327297017
#>     Attrib V22    1.0390650252664295
#>     Attrib V23    1.0773856043675798
#>     Attrib V24    0.1707079506901001
#>     Attrib V25    -0.319713773068299
#>     Attrib V26    0.38250588037710526
#>     Attrib V27    1.3001670443661248
#>     Attrib V28    1.90533183648014
#>     Attrib V29    2.0287136775470227
#>     Attrib V3    0.2568721657294935
#>     Attrib V30    0.8751395476828556
#>     Attrib V31    -1.2478444787603487
#>     Attrib V32    -0.24192549135034352
#>     Attrib V33    0.2594776130005432
#>     Attrib V34    -0.4014137588934593
#>     Attrib V35    -0.38650834591935823
#>     Attrib V36    -0.7338035307922791
#>     Attrib V37    -0.5975139040101058
#>     Attrib V38    0.12002325383821727
#>     Attrib V39    0.14611418561818926
#>     Attrib V4    0.7821930743534161
#>     Attrib V40    -0.45587288411077137
#>     Attrib V41    0.07839021411894356
#>     Attrib V42    0.17006925643051057
#>     Attrib V43    -0.03180054372512166
#>     Attrib V44    0.9874477918419163
#>     Attrib V45    1.1045692240443234
#>     Attrib V46    0.5145490112743644
#>     Attrib V47    0.49714563389798094
#>     Attrib V48    1.4088395171206587
#>     Attrib V49    1.244471863609586
#>     Attrib V5    0.16736992795418967
#>     Attrib V50    0.20966099002199962
#>     Attrib V51    0.38065470791501405
#>     Attrib V52    0.870675360975598
#>     Attrib V53    -0.08461484401345125
#>     Attrib V54    0.18041286313217028
#>     Attrib V55    -0.7043670760387162
#>     Attrib V56    -0.19240953512766099
#>     Attrib V57    -0.5788486838744235
#>     Attrib V58    0.2500568036445327
#>     Attrib V59    -0.0041645433139845854
#>     Attrib V6    0.23108905020460926
#>     Attrib V60    -0.49449289745446245
#>     Attrib V7    -0.2979119578451805
#>     Attrib V8    -0.5483636967490039
#>     Attrib V9    0.7997206042685573
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.06423061474534487
#>     Attrib V1    0.26533054712743526
#>     Attrib V10    -0.10965939124945345
#>     Attrib V11    0.001048653534234917
#>     Attrib V12    0.12438213907961096
#>     Attrib V13    -0.025458617235149292
#>     Attrib V14    0.1738323417235855
#>     Attrib V15    0.007742895424090551
#>     Attrib V16    -0.057135500886938945
#>     Attrib V17    -0.04273582254039617
#>     Attrib V18    -0.07019630916349937
#>     Attrib V19    -0.09418958895371833
#>     Attrib V2    0.12603265721774717
#>     Attrib V20    -0.04545669626233884
#>     Attrib V21    -0.018527426097984093
#>     Attrib V22    -0.10800807020217268
#>     Attrib V23    -0.06719791943590846
#>     Attrib V24    0.0017513195447249946
#>     Attrib V25    -0.09872119327339333
#>     Attrib V26    -0.1779884861688824
#>     Attrib V27    0.02643289472727571
#>     Attrib V28    0.028613822497324613
#>     Attrib V29    0.010393039839236786
#>     Attrib V3    0.06152328127047122
#>     Attrib V30    -0.033407796587055116
#>     Attrib V31    -0.3089044171422512
#>     Attrib V32    -0.024340943587960705
#>     Attrib V33    0.24016411119436978
#>     Attrib V34    0.07422473896395448
#>     Attrib V35    0.0941375413169955
#>     Attrib V36    -0.04409568851906695
#>     Attrib V37    -0.07482498786521662
#>     Attrib V38    0.03107587694051068
#>     Attrib V39    0.0071949053928615355
#>     Attrib V4    0.19779447098659028
#>     Attrib V40    -0.08585888671377494
#>     Attrib V41    -0.06115089365985643
#>     Attrib V42    0.008627427580376228
#>     Attrib V43    -0.03871218750151805
#>     Attrib V44    0.07976952757541635
#>     Attrib V45    0.14782945588359914
#>     Attrib V46    0.06949245436087963
#>     Attrib V47    -0.05337213475113584
#>     Attrib V48    0.2383014641189186
#>     Attrib V49    0.07922899581592831
#>     Attrib V5    -0.040380535031507764
#>     Attrib V50    -0.026182954387473874
#>     Attrib V51    -0.0035829466221100163
#>     Attrib V52    0.1493266254397255
#>     Attrib V53    0.047461279326446316
#>     Attrib V54    0.17669051580389492
#>     Attrib V55    0.09742378531097667
#>     Attrib V56    0.004203820599851914
#>     Attrib V57    0.21850467258689407
#>     Attrib V58    0.13459219220577806
#>     Attrib V59    0.29152215808324167
#>     Attrib V6    0.038902152272333235
#>     Attrib V60    0.29585268836788237
#>     Attrib V7    -0.005133890969848717
#>     Attrib V8    -0.04266719655454506
#>     Attrib V9    0.08189994252480272
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.4041408196683315
#>     Attrib V1    0.6749933777109947
#>     Attrib V10    -0.7340666751218188
#>     Attrib V11    -0.15181244213802644
#>     Attrib V12    0.22639816775835178
#>     Attrib V13    0.1682088568710682
#>     Attrib V14    0.42788068467084817
#>     Attrib V15    0.19093296274949476
#>     Attrib V16    0.055303681035356905
#>     Attrib V17    0.04445290171391837
#>     Attrib V18    0.3615994252936912
#>     Attrib V19    0.0996364175266251
#>     Attrib V2    0.3070301676023604
#>     Attrib V20    0.3652321836533583
#>     Attrib V21    0.4769554008386987
#>     Attrib V22    0.12950030901910245
#>     Attrib V23    0.04006596424518981
#>     Attrib V24    0.21271747576258754
#>     Attrib V25    -0.4670661623359429
#>     Attrib V26    -0.8279467581987248
#>     Attrib V27    -0.4153692870711119
#>     Attrib V28    -0.16726693129091297
#>     Attrib V29    0.07362168075067611
#>     Attrib V3    0.125020312318725
#>     Attrib V30    -0.07948763742523696
#>     Attrib V31    -1.2154175707014183
#>     Attrib V32    -0.28015346766646354
#>     Attrib V33    0.5900929264351132
#>     Attrib V34    0.3025595075142023
#>     Attrib V35    0.09928265102200605
#>     Attrib V36    -0.4267553904103871
#>     Attrib V37    -0.4196184367130234
#>     Attrib V38    0.26574016073055196
#>     Attrib V39    0.1020431254755781
#>     Attrib V4    0.14167309383908003
#>     Attrib V40    -0.1990061692667161
#>     Attrib V41    -0.048717698226439884
#>     Attrib V42    0.30463946679432724
#>     Attrib V43    -0.11431408450254948
#>     Attrib V44    0.16693255995225872
#>     Attrib V45    0.5145961836641737
#>     Attrib V46    0.12479046696952044
#>     Attrib V47    -0.407801671560323
#>     Attrib V48    0.3667223692766879
#>     Attrib V49    0.11464586655865588
#>     Attrib V5    -0.35590106622348155
#>     Attrib V50    -0.36340613774370073
#>     Attrib V51    -0.1692623765848357
#>     Attrib V52    0.4680270447452661
#>     Attrib V53    0.4089512116805184
#>     Attrib V54    0.8514030288806026
#>     Attrib V55    0.18051273492191666
#>     Attrib V56    -0.10597761185617492
#>     Attrib V57    0.13468078048657903
#>     Attrib V58    0.30254057462652767
#>     Attrib V59    0.815761378523097
#>     Attrib V6    -0.11730844299811806
#>     Attrib V60    0.5174441422572952
#>     Attrib V7    -0.05400144350571404
#>     Attrib V8    -0.3907056696408341
#>     Attrib V9    -0.07368698611138819
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.2052307642474466
#>     Attrib V1    -0.3828715696144424
#>     Attrib V10    -0.22175386872763336
#>     Attrib V11    -0.7989644391847601
#>     Attrib V12    -0.858794286416193
#>     Attrib V13    -0.6805428065924328
#>     Attrib V14    -0.25059816313919775
#>     Attrib V15    0.8350019998153931
#>     Attrib V16    0.9692176201244741
#>     Attrib V17    0.27791432660903576
#>     Attrib V18    -0.3853798666574153
#>     Attrib V19    -0.0914359555370959
#>     Attrib V2    -0.34733241544167753
#>     Attrib V20    -0.13617862117226243
#>     Attrib V21    -0.48353186045644075
#>     Attrib V22    -0.7662918511568719
#>     Attrib V23    -0.9922430289529326
#>     Attrib V24    -0.3449162033318894
#>     Attrib V25    0.18495422505258238
#>     Attrib V26    -0.08542708102409091
#>     Attrib V27    -0.9001977787722898
#>     Attrib V28    -1.4437979578433322
#>     Attrib V29    -1.5502391227838042
#>     Attrib V3    -0.25994996913323587
#>     Attrib V30    -0.7355305805884113
#>     Attrib V31    1.0639433638117592
#>     Attrib V32    0.23484579255222876
#>     Attrib V33    -0.4587780836517066
#>     Attrib V34    0.23161780884573158
#>     Attrib V35    0.3541034080616698
#>     Attrib V36    0.7220510443797382
#>     Attrib V37    0.409016473710644
#>     Attrib V38    -0.20640646455601241
#>     Attrib V39    -0.03530363919620975
#>     Attrib V4    -0.5841955350240138
#>     Attrib V40    0.3568775334068572
#>     Attrib V41    -0.11638704450705964
#>     Attrib V42    -0.20507789056075243
#>     Attrib V43    0.06524475717618111
#>     Attrib V44    -0.7836566318402133
#>     Attrib V45    -0.8244077290722579
#>     Attrib V46    -0.3073960259262736
#>     Attrib V47    -0.2980665581410028
#>     Attrib V48    -1.1752806970251868
#>     Attrib V49    -0.9335251600432948
#>     Attrib V5    -0.025933301858226177
#>     Attrib V50    0.06808206355679705
#>     Attrib V51    -0.3281950542253347
#>     Attrib V52    -0.6888441798413151
#>     Attrib V53    -0.08173029245941056
#>     Attrib V54    -0.2814285451076475
#>     Attrib V55    0.6648824797568514
#>     Attrib V56    0.10976973179193535
#>     Attrib V57    0.5456395442917157
#>     Attrib V58    -0.16009185361813064
#>     Attrib V59    -0.10037099245274278
#>     Attrib V6    -0.20532788024452944
#>     Attrib V60    0.3139059917493952
#>     Attrib V7    0.31909600046747766
#>     Attrib V8    0.5335522197142066
#>     Attrib V9    -0.5362173027094984
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.23524511803973816
#>     Attrib V1    0.3491306536056429
#>     Attrib V10    -0.3613305683991354
#>     Attrib V11    0.09049845509400481
#>     Attrib V12    0.2567898754550715
#>     Attrib V13    0.08433533599850436
#>     Attrib V14    0.296552266632221
#>     Attrib V15    -0.030167378288855136
#>     Attrib V16    -0.14484762077529326
#>     Attrib V17    -0.08695452502293854
#>     Attrib V18    0.09808152596023156
#>     Attrib V19    -0.12113943520339146
#>     Attrib V2    0.10115945958518062
#>     Attrib V20    0.12299510843976744
#>     Attrib V21    0.1990165113651682
#>     Attrib V22    0.0525789207176126
#>     Attrib V23    -0.017145116566876527
#>     Attrib V24    0.13081825192448898
#>     Attrib V25    -0.1688889061534272
#>     Attrib V26    -0.37670848107745525
#>     Attrib V27    -0.020166414371752647
#>     Attrib V28    0.07629590492720009
#>     Attrib V29    0.18678225255970626
#>     Attrib V3    0.07699227676077035
#>     Attrib V30    -0.015708556325157916
#>     Attrib V31    -0.6755975132169574
#>     Attrib V32    -0.0663511029851406
#>     Attrib V33    0.39876021569733866
#>     Attrib V34    0.1310571001989235
#>     Attrib V35    0.05312516775760058
#>     Attrib V36    -0.272581354611645
#>     Attrib V37    -0.2680639700841485
#>     Attrib V38    0.10473828282340421
#>     Attrib V39    0.011651498500615807
#>     Attrib V4    0.12873452924461581
#>     Attrib V40    -0.16232073981332368
#>     Attrib V41    -0.07066673701679155
#>     Attrib V42    0.02359022416676329
#>     Attrib V43    -0.04964034989566223
#>     Attrib V44    0.08839330142875922
#>     Attrib V45    0.37331535676882194
#>     Attrib V46    0.11138814781685763
#>     Attrib V47    -0.12749796687127707
#>     Attrib V48    0.35446472576147275
#>     Attrib V49    0.14274166159334858
#>     Attrib V5    -0.1964189012025201
#>     Attrib V50    -0.1927251241452474
#>     Attrib V51    -0.06167660882751984
#>     Attrib V52    0.30535346705568805
#>     Attrib V53    0.09249970794931095
#>     Attrib V54    0.38643745016229447
#>     Attrib V55    0.0821976990827442
#>     Attrib V56    -0.07599196693646203
#>     Attrib V57    0.12819310271134177
#>     Attrib V58    0.13975308202563347
#>     Attrib V59    0.42594666292552374
#>     Attrib V6    -0.06861647262557442
#>     Attrib V60    0.2689915127682329
#>     Attrib V7    -0.06175089290115454
#>     Attrib V8    -0.23064183561236856
#>     Attrib V9    0.06427921524375257
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.10779261088235206
#>     Attrib V1    0.18333137947568773
#>     Attrib V10    0.04499607633943816
#>     Attrib V11    0.04316546707500488
#>     Attrib V12    0.09645401437604156
#>     Attrib V13    0.03260183686985843
#>     Attrib V14    0.067871605527539
#>     Attrib V15    0.025038653235852668
#>     Attrib V16    -0.03640445348409665
#>     Attrib V17    -0.013839275117989628
#>     Attrib V18    -0.0470237572613922
#>     Attrib V19    -0.134100873601426
#>     Attrib V2    0.12226960919852625
#>     Attrib V20    -0.08951643225781546
#>     Attrib V21    -0.029407541745648517
#>     Attrib V22    -0.07198802784293053
#>     Attrib V23    -0.03023127738874088
#>     Attrib V24    -0.020964086239810976
#>     Attrib V25    -5.878758405842498E-4
#>     Attrib V26    -0.02037095541216825
#>     Attrib V27    5.307528143139004E-4
#>     Attrib V28    0.0015377690943509555
#>     Attrib V29    -0.06358393212224026
#>     Attrib V3    0.08132962227292125
#>     Attrib V30    0.00500125352828203
#>     Attrib V31    -0.03642486872309102
#>     Attrib V32    0.011829142829474287
#>     Attrib V33    0.09558588784155447
#>     Attrib V34    0.03799389582736278
#>     Attrib V35    0.07111334428462422
#>     Attrib V36    -0.023189953572354604
#>     Attrib V37    0.0171460715434218
#>     Attrib V38    0.005718593623311043
#>     Attrib V39    0.061252154454582326
#>     Attrib V4    0.1625237797884914
#>     Attrib V40    0.015249837069503325
#>     Attrib V41    0.019505169947034964
#>     Attrib V42    0.04855473844139909
#>     Attrib V43    -0.029060276342055588
#>     Attrib V44    0.00999351681296286
#>     Attrib V45    0.06289704142932709
#>     Attrib V46    0.06169962255066821
#>     Attrib V47    -0.00543852655834018
#>     Attrib V48    0.13481065062742523
#>     Attrib V49    0.03735427648955087
#>     Attrib V5    0.001180673511671053
#>     Attrib V50    0.0027573030316134944
#>     Attrib V51    0.024372339868387393
#>     Attrib V52    0.11855574663903784
#>     Attrib V53    0.05431677106526232
#>     Attrib V54    0.08373619697206894
#>     Attrib V55    0.04632707127136424
#>     Attrib V56    0.07308517716457907
#>     Attrib V57    0.11081609857218287
#>     Attrib V58    0.11470271542529001
#>     Attrib V59    0.17366432643147428
#>     Attrib V6    0.0584877061536983
#>     Attrib V60    0.17907626228541962
#>     Attrib V7    -0.005878782038287106
#>     Attrib V8    -0.016954916259663177
#>     Attrib V9    0.07600448232539832
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.1393865470668415
#>     Attrib V1    0.5059940279893916
#>     Attrib V10    -0.5797844506341248
#>     Attrib V11    -0.17089715836507902
#>     Attrib V12    0.040623982595890534
#>     Attrib V13    0.030009736314405094
#>     Attrib V14    0.36884521118368546
#>     Attrib V15    0.2628045842186695
#>     Attrib V16    0.1552713837580656
#>     Attrib V17    0.1164519193760113
#>     Attrib V18    0.22203020416099387
#>     Attrib V19    0.07408188491460363
#>     Attrib V2    0.30164349467044066
#>     Attrib V20    0.3185351463202004
#>     Attrib V21    0.20762430894792439
#>     Attrib V22    -0.005819628822405598
#>     Attrib V23    -0.029478723384740085
#>     Attrib V24    0.1727057069591401
#>     Attrib V25    -0.3272023059059692
#>     Attrib V26    -0.6560040528259021
#>     Attrib V27    -0.4570826926108189
#>     Attrib V28    -0.38749174405279996
#>     Attrib V29    -0.23502981004426374
#>     Attrib V3    0.10928785273400912
#>     Attrib V30    -0.23849990214510403
#>     Attrib V31    -0.7823980515096686
#>     Attrib V32    -0.18957499337824535
#>     Attrib V33    0.44063265796410794
#>     Attrib V34    0.2827116288219976
#>     Attrib V35    0.1561802261536031
#>     Attrib V36    -0.26348381783829966
#>     Attrib V37    -0.22087141710513708
#>     Attrib V38    0.2397262341564169
#>     Attrib V39    0.05831871747861617
#>     Attrib V4    0.1235186722320183
#>     Attrib V40    -0.04596425655306809
#>     Attrib V41    -0.06175584820173362
#>     Attrib V42    0.16915995670372425
#>     Attrib V43    -0.03659572722868707
#>     Attrib V44    0.0614845178031524
#>     Attrib V45    0.20382417876559897
#>     Attrib V46    0.11121146440347317
#>     Attrib V47    -0.26401931761549124
#>     Attrib V48    0.15564305788860594
#>     Attrib V49    0.024270355780322304
#>     Attrib V5    -0.21551141513647157
#>     Attrib V50    -0.2675266631339536
#>     Attrib V51    -0.12717803518582657
#>     Attrib V52    0.31306799180633094
#>     Attrib V53    0.3565502519339096
#>     Attrib V54    0.6674341504254063
#>     Attrib V55    0.22052574765258742
#>     Attrib V56    -0.012623036645849784
#>     Attrib V57    0.1955498472313605
#>     Attrib V58    0.19062899106096373
#>     Attrib V59    0.6088242237136914
#>     Attrib V6    -0.08608096680996065
#>     Attrib V60    0.4825592559267756
#>     Attrib V7    0.004269223119169347
#>     Attrib V8    -0.2406095499821763
#>     Attrib V9    -0.05546011667273463
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.006882661218980139
#>     Attrib V1    0.31467280448320567
#>     Attrib V10    -0.18892044814632178
#>     Attrib V11    0.026098173877193567
#>     Attrib V12    0.09465264929478615
#>     Attrib V13    -0.05269216885184035
#>     Attrib V14    0.18433713751072195
#>     Attrib V15    0.05109143493904051
#>     Attrib V16    -0.018832643628969505
#>     Attrib V17    -0.09932006783110008
#>     Attrib V18    0.025894313748692242
#>     Attrib V19    -0.16592491401430776
#>     Attrib V2    0.10647871848424631
#>     Attrib V20    -0.007925860354977547
#>     Attrib V21    0.026208857018788403
#>     Attrib V22    -0.10022261369875884
#>     Attrib V23    -0.02420279959781487
#>     Attrib V24    0.03019699941301219
#>     Attrib V25    -0.16900400568232443
#>     Attrib V26    -0.227993124291404
#>     Attrib V27    -0.048433910296917036
#>     Attrib V28    -0.002994467636207744
#>     Attrib V29    -0.011557420023360888
#>     Attrib V3    0.11991441055543903
#>     Attrib V30    -0.00906883726283214
#>     Attrib V31    -0.365362919010726
#>     Attrib V32    -0.016812713081670764
#>     Attrib V33    0.2649740454262162
#>     Attrib V34    0.1256878998856785
#>     Attrib V35    0.06781486703565114
#>     Attrib V36    -0.06200362561206745
#>     Attrib V37    -0.146738805174976
#>     Attrib V38    0.007079273778182792
#>     Attrib V39    0.0026758365069135285
#>     Attrib V4    0.1335234685555232
#>     Attrib V40    -0.10677065143175654
#>     Attrib V41    -0.0920181793408806
#>     Attrib V42    0.025704817541648987
#>     Attrib V43    -0.10056591644165586
#>     Attrib V44    0.08887139609317782
#>     Attrib V45    0.1941218002249259
#>     Attrib V46    0.09425499111710534
#>     Attrib V47    -0.057251135958901654
#>     Attrib V48    0.17457408573970928
#>     Attrib V49    0.13077371296298843
#>     Attrib V5    -0.028453858792038184
#>     Attrib V50    -0.09130794650155019
#>     Attrib V51    0.013469459688758892
#>     Attrib V52    0.21978088842341995
#>     Attrib V53    0.08569178405375281
#>     Attrib V54    0.18250403636110962
#>     Attrib V55    0.08340430359988278
#>     Attrib V56    -0.009592298581631678
#>     Attrib V57    0.17688080762509606
#>     Attrib V58    0.20623722787296986
#>     Attrib V59    0.2824726635321291
#>     Attrib V6    0.031173675318517176
#>     Attrib V60    0.23756475833763757
#>     Attrib V7    0.03349262350343555
#>     Attrib V8    -0.03864544840745573
#>     Attrib V9    0.10485780115000104
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
#>  0.2463768 
```
