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
#>     Threshold    0.055933263653802585
#>     Node 2    2.0665982676595354
#>     Node 3    1.7960742345684355
#>     Node 4    0.7503946335494937
#>     Node 5    -0.8738011650445345
#>     Node 6    2.2415504802942894
#>     Node 7    1.763862636285443
#>     Node 8    0.9943311978644926
#>     Node 9    2.4207760868723747
#>     Node 10    -1.4559586539716638
#>     Node 11    1.2349870404983379
#>     Node 12    1.8527979837079218
#>     Node 13    0.7276017789411153
#>     Node 14    1.6614800549762303
#>     Node 15    -2.3636454179724344
#>     Node 16    0.6538077921678888
#>     Node 17    -0.0876236378987636
#>     Node 18    -0.6111482361371507
#>     Node 19    1.8083545407097896
#>     Node 20    2.410673660701639
#>     Node 21    -2.624454637613953
#>     Node 22    1.6510150741318217
#>     Node 23    2.277701917807664
#>     Node 24    -0.9946100614050646
#>     Node 25    4.309608536651598
#>     Node 26    0.7132176804798933
#>     Node 27    1.540757998800546
#>     Node 28    -4.567471806304382
#>     Node 29    1.2335198032875394
#>     Node 30    0.6360244900842195
#>     Node 31    2.288606351073559
#>     Node 32    1.1866694338360504
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.039576972321999596
#>     Node 2    -2.103297338408603
#>     Node 3    -1.7699231061048086
#>     Node 4    -0.7096897408426898
#>     Node 5    0.8706243536999656
#>     Node 6    -2.211792033348761
#>     Node 7    -1.741657561780624
#>     Node 8    -1.030068190457171
#>     Node 9    -2.4169950622788776
#>     Node 10    1.3970409557166097
#>     Node 11    -1.1991898064335944
#>     Node 12    -1.9167877112393454
#>     Node 13    -0.6751421221830917
#>     Node 14    -1.5929401985076352
#>     Node 15    2.359749499441355
#>     Node 16    -0.6747248221564658
#>     Node 17    0.10271965931399685
#>     Node 18    0.6317558592644179
#>     Node 19    -1.7971086735189064
#>     Node 20    -2.409012380063784
#>     Node 21    2.6844971928729953
#>     Node 22    -1.6995999632317582
#>     Node 23    -2.316197475011899
#>     Node 24    0.9831736657642327
#>     Node 25    -4.316745271992272
#>     Node 26    -0.8001756910331278
#>     Node 27    -1.5792376599687534
#>     Node 28    4.542405590481859
#>     Node 29    -1.2627036452397868
#>     Node 30    -0.5640084883734622
#>     Node 31    -2.2257682669810013
#>     Node 32    -1.2013461185966259
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.24608679507916925
#>     Attrib V1    0.6820264641369044
#>     Attrib V10    -0.4476437535493822
#>     Attrib V11    -0.25450070100848016
#>     Attrib V12    -0.1961906578319305
#>     Attrib V13    -0.5114559209907807
#>     Attrib V14    0.027682482237312848
#>     Attrib V15    0.3428092825159867
#>     Attrib V16    0.40149403106326453
#>     Attrib V17    0.28150170187025586
#>     Attrib V18    0.5648601232238312
#>     Attrib V19    0.3255426865190101
#>     Attrib V2    0.11597203109621038
#>     Attrib V20    0.5284511017210087
#>     Attrib V21    0.17492068224975937
#>     Attrib V22    -0.15476590856803962
#>     Attrib V23    0.14382709928847498
#>     Attrib V24    0.4672610179850108
#>     Attrib V25    -0.3180056958448836
#>     Attrib V26    -0.9553734097111555
#>     Attrib V27    -0.9633395331824426
#>     Attrib V28    -0.13377863319348082
#>     Attrib V29    -0.41069271370928084
#>     Attrib V3    -0.2563552247716962
#>     Attrib V30    -0.040182274247056365
#>     Attrib V31    -0.996803880021681
#>     Attrib V32    0.5330362608019853
#>     Attrib V33    0.8317204870976217
#>     Attrib V34    0.018868976435956437
#>     Attrib V35    0.3738641342404827
#>     Attrib V36    -0.42915266544557384
#>     Attrib V37    -1.127402598210082
#>     Attrib V38    0.26360005331680725
#>     Attrib V39    0.06999418456251175
#>     Attrib V4    0.34549335401154385
#>     Attrib V40    -0.22940622857985604
#>     Attrib V41    -0.18066284510750694
#>     Attrib V42    0.3000068926576412
#>     Attrib V43    0.2630636157816188
#>     Attrib V44    0.20562249276642292
#>     Attrib V45    0.25362828559559353
#>     Attrib V46    0.00850563533321691
#>     Attrib V47    -0.31631282440330183
#>     Attrib V48    0.29423451973096637
#>     Attrib V49    0.3895335174843158
#>     Attrib V5    -0.11994017822610314
#>     Attrib V50    -0.42165044179377154
#>     Attrib V51    0.04391692467671814
#>     Attrib V52    0.4767085737163216
#>     Attrib V53    0.28855828367741027
#>     Attrib V54    0.5843896354661732
#>     Attrib V55    -0.2907624146080646
#>     Attrib V56    0.270877749498603
#>     Attrib V57    0.053316136951380114
#>     Attrib V58    0.44699708437210556
#>     Attrib V59    1.2077035514242906
#>     Attrib V6    -0.7717630128452592
#>     Attrib V60    0.46181407938951713
#>     Attrib V7    0.15709987357938685
#>     Attrib V8    -0.21482995806053962
#>     Attrib V9    0.2658345678724296
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.24636934142000136
#>     Attrib V1    0.6098336188366379
#>     Attrib V10    -0.4090320132056838
#>     Attrib V11    -0.2724058248993635
#>     Attrib V12    -0.21554835790626214
#>     Attrib V13    -0.4076779042221958
#>     Attrib V14    0.0765380459385467
#>     Attrib V15    0.45576535831395465
#>     Attrib V16    0.3830157067183872
#>     Attrib V17    0.2109752632181969
#>     Attrib V18    0.3764946362774115
#>     Attrib V19    0.2910089369576896
#>     Attrib V2    0.1748317456638449
#>     Attrib V20    0.43148319332953816
#>     Attrib V21    0.11633579317976939
#>     Attrib V22    -0.12199057796959722
#>     Attrib V23    0.05209303337171965
#>     Attrib V24    0.3526370488647489
#>     Attrib V25    -0.2795128159973934
#>     Attrib V26    -0.8485331401181054
#>     Attrib V27    -0.8992646904519419
#>     Attrib V28    -0.21191463101330227
#>     Attrib V29    -0.42181062082402226
#>     Attrib V3    -0.20750413558917852
#>     Attrib V30    -0.0029829388499259587
#>     Attrib V31    -0.7320184520552683
#>     Attrib V32    0.4753524713133534
#>     Attrib V33    0.7535510604466148
#>     Attrib V34    0.014780070719688303
#>     Attrib V35    0.3402366378567884
#>     Attrib V36    -0.36415151961912573
#>     Attrib V37    -0.9242368439424722
#>     Attrib V38    0.1296313557685274
#>     Attrib V39    0.03656404064154177
#>     Attrib V4    0.26026448116514167
#>     Attrib V40    -0.2270592679384923
#>     Attrib V41    -0.22658687472057415
#>     Attrib V42    0.18444033233110788
#>     Attrib V43    0.12907750996900091
#>     Attrib V44    0.1488108107366112
#>     Attrib V45    0.24241715725736826
#>     Attrib V46    0.02801072352326435
#>     Attrib V47    -0.23081739025471526
#>     Attrib V48    0.21073942479022714
#>     Attrib V49    0.30349212604697207
#>     Attrib V5    -0.17500491276424174
#>     Attrib V50    -0.35955573396345397
#>     Attrib V51    -0.019090673242988337
#>     Attrib V52    0.39413384778414967
#>     Attrib V53    0.21546373740084887
#>     Attrib V54    0.6184278103460459
#>     Attrib V55    -0.1329562637545587
#>     Attrib V56    0.2580231317524884
#>     Attrib V57    0.10283489068752344
#>     Attrib V58    0.4394564156880327
#>     Attrib V59    1.0014485861990772
#>     Attrib V6    -0.6048272943485682
#>     Attrib V60    0.3470127163653223
#>     Attrib V7    0.16515738154220738
#>     Attrib V8    -0.11443711479701876
#>     Attrib V9    0.1969159328848711
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.04005648919935209
#>     Attrib V1    0.26587041775635445
#>     Attrib V10    -0.16006578771430274
#>     Attrib V11    -0.09551822127038773
#>     Attrib V12    -0.09543081281447277
#>     Attrib V13    -0.14861915296583333
#>     Attrib V14    0.10569045744299849
#>     Attrib V15    0.2374592576664033
#>     Attrib V16    0.13192279107770827
#>     Attrib V17    0.07439544856295477
#>     Attrib V18    0.1538372771362776
#>     Attrib V19    0.05958480670241843
#>     Attrib V2    0.11060701240583479
#>     Attrib V20    0.1938994643030211
#>     Attrib V21    0.1274172257308488
#>     Attrib V22    -0.06517294999979066
#>     Attrib V23    -0.008320474906306446
#>     Attrib V24    0.030764455210655593
#>     Attrib V25    -0.2486749282292644
#>     Attrib V26    -0.3503785948896438
#>     Attrib V27    -0.3227371806550499
#>     Attrib V28    -0.001280284619736775
#>     Attrib V29    -0.08220170388059395
#>     Attrib V3    -0.02701448245574021
#>     Attrib V30    -0.0018066166393496462
#>     Attrib V31    -0.35840101825115284
#>     Attrib V32    0.09770351950020387
#>     Attrib V33    0.26903231755853085
#>     Attrib V34    0.03306658222025529
#>     Attrib V35    0.2219830557654898
#>     Attrib V36    -0.09741801827090535
#>     Attrib V37    -0.27952781884812233
#>     Attrib V38    0.07055095061461698
#>     Attrib V39    0.051288889227981714
#>     Attrib V4    0.14031465975815297
#>     Attrib V40    -0.05188589900288384
#>     Attrib V41    -0.1398453708939034
#>     Attrib V42    7.773252937862038E-4
#>     Attrib V43    -0.016302490408597953
#>     Attrib V44    0.06328725010208912
#>     Attrib V45    0.15157009844928507
#>     Attrib V46    0.021665069869463767
#>     Attrib V47    -0.06336332864758447
#>     Attrib V48    0.1565364601840542
#>     Attrib V49    0.16064999673491343
#>     Attrib V5    -0.007527930112714034
#>     Attrib V50    -0.09070185513268667
#>     Attrib V51    0.09958695222344661
#>     Attrib V52    0.20751433961125837
#>     Attrib V53    0.14475409750535378
#>     Attrib V54    0.17410440499803223
#>     Attrib V55    -0.005049299925824953
#>     Attrib V56    0.10295268098709526
#>     Attrib V57    0.11175746852051897
#>     Attrib V58    0.14744178241087366
#>     Attrib V59    0.35743112702872926
#>     Attrib V6    -0.3191745502035325
#>     Attrib V60    0.16102405575015247
#>     Attrib V7    -0.00905513139201515
#>     Attrib V8    -0.13658324752567114
#>     Attrib V9    0.1712289107693815
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5108748725824876
#>     Attrib V1    -0.2137687448453241
#>     Attrib V10    -0.007570617197859811
#>     Attrib V11    -0.18871774799657665
#>     Attrib V12    -0.45056606024980667
#>     Attrib V13    -0.08992456229110615
#>     Attrib V14    0.09572941531076708
#>     Attrib V15    0.1019759928620224
#>     Attrib V16    0.26732259972115324
#>     Attrib V17    0.3392640506145871
#>     Attrib V18    0.030587960457102634
#>     Attrib V19    0.031251421555432375
#>     Attrib V2    0.0269892402387429
#>     Attrib V20    -0.11536417818802244
#>     Attrib V21    0.04042130580877108
#>     Attrib V22    0.006447962825570385
#>     Attrib V23    -0.21025403201903448
#>     Attrib V24    -0.35988225806132534
#>     Attrib V25    0.3284100685690749
#>     Attrib V26    0.3207646687146606
#>     Attrib V27    -0.05723878115673905
#>     Attrib V28    -0.4203187367004067
#>     Attrib V29    0.15370233024695193
#>     Attrib V3    0.36290483604205664
#>     Attrib V30    0.19918406620822804
#>     Attrib V31    0.6516022962016395
#>     Attrib V32    -0.04333148977824355
#>     Attrib V33    -0.026571755085585298
#>     Attrib V34    0.1766134519945174
#>     Attrib V35    -0.221433953940775
#>     Attrib V36    0.5659027409307557
#>     Attrib V37    0.6447944735513139
#>     Attrib V38    -0.04177190649783934
#>     Attrib V39    -0.06751473716840733
#>     Attrib V4    -0.12073899032183118
#>     Attrib V40    -1.7722597301412078E-4
#>     Attrib V41    -0.13875916839126928
#>     Attrib V42    0.097024962301949
#>     Attrib V43    0.04579240701218869
#>     Attrib V44    0.03688625694548178
#>     Attrib V45    -0.23449630224804513
#>     Attrib V46    -0.1908653537169017
#>     Attrib V47    -0.05080034709122378
#>     Attrib V48    -0.34305663485633775
#>     Attrib V49    -0.2503719296331844
#>     Attrib V5    -0.0011852547150143107
#>     Attrib V50    0.4148566684650106
#>     Attrib V51    -0.15685048663012802
#>     Attrib V52    -0.39075135701852814
#>     Attrib V53    -0.30659840879391886
#>     Attrib V54    -0.12443241715663345
#>     Attrib V55    0.4105159688631071
#>     Attrib V56    0.1430783144787731
#>     Attrib V57    0.1867519964668929
#>     Attrib V58    -0.16700944255591874
#>     Attrib V59    -0.47236433597206884
#>     Attrib V6    0.13062364304976623
#>     Attrib V60    -0.08038274558268549
#>     Attrib V7    0.02551511837020722
#>     Attrib V8    0.29860669321213323
#>     Attrib V9    -0.47091216608348013
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.27878539041948286
#>     Attrib V1    0.5832489107317761
#>     Attrib V10    -0.47428314204645994
#>     Attrib V11    -0.23592237439766237
#>     Attrib V12    -0.10206375055622147
#>     Attrib V13    -0.5501425331075978
#>     Attrib V14    -0.18772725994917502
#>     Attrib V15    0.2756450414064689
#>     Attrib V16    0.4668679487771841
#>     Attrib V17    0.3034379955132423
#>     Attrib V18    0.5876874092282177
#>     Attrib V19    0.2950781224532834
#>     Attrib V2    0.06124870738930399
#>     Attrib V20    0.3673128069382003
#>     Attrib V21    0.0018262040526781937
#>     Attrib V22    -0.2037429693687056
#>     Attrib V23    0.2291739929453013
#>     Attrib V24    0.7367221229411747
#>     Attrib V25    0.010435617577725001
#>     Attrib V26    -0.8508682012903993
#>     Attrib V27    -0.9961846049448021
#>     Attrib V28    -0.40057379096687584
#>     Attrib V29    -0.7863367539500026
#>     Attrib V3    -0.34330884673655704
#>     Attrib V30    -0.12914153984187682
#>     Attrib V31    -0.8630911447380154
#>     Attrib V32    0.6478885557549399
#>     Attrib V33    0.9608926770024949
#>     Attrib V34    0.10343966610329694
#>     Attrib V35    0.4597781198121085
#>     Attrib V36    -0.4968223209390277
#>     Attrib V37    -1.2885475882942121
#>     Attrib V38    0.08707522248300344
#>     Attrib V39    -0.048471606690878584
#>     Attrib V4    0.3012837508474498
#>     Attrib V40    -0.28457732977622363
#>     Attrib V41    -0.16651785819628068
#>     Attrib V42    0.30276408296537377
#>     Attrib V43    0.22553262800952453
#>     Attrib V44    0.15729977528315994
#>     Attrib V45    0.30228188704738695
#>     Attrib V46    0.07521702565714725
#>     Attrib V47    -0.2891948986292214
#>     Attrib V48    0.3209994402389748
#>     Attrib V49    0.41595658505853944
#>     Attrib V5    -0.21741199815162554
#>     Attrib V50    -0.3849448029739332
#>     Attrib V51    0.05792554872869925
#>     Attrib V52    0.39200126850825306
#>     Attrib V53    0.24676725994749626
#>     Attrib V54    0.6215684078324852
#>     Attrib V55    -0.3337720724341005
#>     Attrib V56    0.25426198479527273
#>     Attrib V57    -0.004284720063203798
#>     Attrib V58    0.46927247589172794
#>     Attrib V59    1.1672780724701013
#>     Attrib V6    -0.7240489836644799
#>     Attrib V60    0.5232800007600685
#>     Attrib V7    0.2530525158953238
#>     Attrib V8    -0.2203630387519464
#>     Attrib V9    0.36392157912735523
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4703573291444919
#>     Attrib V1    0.70916966443472
#>     Attrib V10    0.451183276320965
#>     Attrib V11    0.5639873593184597
#>     Attrib V12    0.5345188791236195
#>     Attrib V13    0.2832513003982799
#>     Attrib V14    -0.0085392447247189
#>     Attrib V15    -0.2615034433418934
#>     Attrib V16    -0.6896885864581243
#>     Attrib V17    -0.6888617805464052
#>     Attrib V18    -0.0891633651160638
#>     Attrib V19    -0.2723811613617191
#>     Attrib V2    0.33574885948238126
#>     Attrib V20    0.21995125477989816
#>     Attrib V21    0.4050172514432471
#>     Attrib V22    0.37671772023229877
#>     Attrib V23    0.2374634389837181
#>     Attrib V24    -0.1821671271697448
#>     Attrib V25    -0.6331239796500998
#>     Attrib V26    0.003629346932958135
#>     Attrib V27    0.6246875608472997
#>     Attrib V28    1.0311444628125432
#>     Attrib V29    0.5919314753364864
#>     Attrib V3    -0.2891987561421546
#>     Attrib V30    0.2712956724317895
#>     Attrib V31    -0.5983367015216327
#>     Attrib V32    0.11901274959363678
#>     Attrib V33    0.049000799907989105
#>     Attrib V34    -0.21248242322628688
#>     Attrib V35    0.6416902949995335
#>     Attrib V36    -0.3562382835944086
#>     Attrib V37    -0.23237697528822907
#>     Attrib V38    0.14278980453910575
#>     Attrib V39    0.07998190748584563
#>     Attrib V4    0.19398403471168857
#>     Attrib V40    0.1661877134198539
#>     Attrib V41    0.14981313736937127
#>     Attrib V42    -0.15452470888553702
#>     Attrib V43    -0.01330508707421226
#>     Attrib V44    -0.06353065161609625
#>     Attrib V45    0.18238499610948014
#>     Attrib V46    0.36659785070994005
#>     Attrib V47    0.47434894071818295
#>     Attrib V48    0.6399803432239779
#>     Attrib V49    0.3529896906904795
#>     Attrib V5    0.04145071102239743
#>     Attrib V50    -0.07730076409348005
#>     Attrib V51    0.4473190506067863
#>     Attrib V52    0.6278924710080434
#>     Attrib V53    0.371162779751721
#>     Attrib V54    0.19205218038788793
#>     Attrib V55    -0.612280245089185
#>     Attrib V56    -0.4306738394172335
#>     Attrib V57    -0.37245077540982596
#>     Attrib V58    0.0588933832423834
#>     Attrib V59    0.09304610338306867
#>     Attrib V6    -0.2857162124759817
#>     Attrib V60    0.10783068244941195
#>     Attrib V7    -0.2842500186091187
#>     Attrib V8    -0.4683475167827404
#>     Attrib V9    0.9760993578388556
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.14014102187470615
#>     Attrib V1    0.36101894288825
#>     Attrib V10    -0.1804989855416571
#>     Attrib V11    -0.07605840242514646
#>     Attrib V12    -0.11023607499455036
#>     Attrib V13    -0.22307027792922776
#>     Attrib V14    0.0010942021821975455
#>     Attrib V15    0.21332806925303074
#>     Attrib V16    0.24157110423566575
#>     Attrib V17    0.1063097291183304
#>     Attrib V18    0.23197875188562644
#>     Attrib V19    0.13074066774078824
#>     Attrib V2    0.12946671327389014
#>     Attrib V20    0.21972221775092704
#>     Attrib V21    0.12275792717046125
#>     Attrib V22    -0.052999710299257256
#>     Attrib V23    0.012756892897270451
#>     Attrib V24    0.1664865268363152
#>     Attrib V25    -0.21507369711039018
#>     Attrib V26    -0.4131436683209228
#>     Attrib V27    -0.38513918378098255
#>     Attrib V28    -0.031283945833008905
#>     Attrib V29    -0.173265340786789
#>     Attrib V3    -0.1494399390512124
#>     Attrib V30    -0.0075691828443638165
#>     Attrib V31    -0.5019415550122146
#>     Attrib V32    0.18901213452165627
#>     Attrib V33    0.39272665016351294
#>     Attrib V34    0.019740245099500706
#>     Attrib V35    0.2741819226499233
#>     Attrib V36    -0.10549922414451501
#>     Attrib V37    -0.43131348897821953
#>     Attrib V38    0.1636394727493708
#>     Attrib V39    0.016228007384072193
#>     Attrib V4    0.20985393978055134
#>     Attrib V40    -0.12923807181671657
#>     Attrib V41    -0.18128725023226336
#>     Attrib V42    -0.08622033863928887
#>     Attrib V43    0.004925785805448302
#>     Attrib V44    0.11519492090299607
#>     Attrib V45    0.1825553162621793
#>     Attrib V46    0.0946170787454054
#>     Attrib V47    -0.04364222977877423
#>     Attrib V48    0.2584467763133297
#>     Attrib V49    0.22079335298574984
#>     Attrib V5    -0.10325700696256207
#>     Attrib V50    -0.22138173641986414
#>     Attrib V51    0.05059608242645613
#>     Attrib V52    0.23907404817988484
#>     Attrib V53    0.1688029048766711
#>     Attrib V54    0.31307632749862707
#>     Attrib V55    -0.10345693751943581
#>     Attrib V56    0.03709417261213232
#>     Attrib V57    0.11766133690579324
#>     Attrib V58    0.16480039380325462
#>     Attrib V59    0.5331748913467841
#>     Attrib V6    -0.40513589159534535
#>     Attrib V60    0.26567140984644105
#>     Attrib V7    0.03583447054647185
#>     Attrib V8    -0.17788189677156693
#>     Attrib V9    0.21197380760594392
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.5157422432372881
#>     Attrib V1    0.7664268607215804
#>     Attrib V10    0.9185306162551861
#>     Attrib V11    0.9732535307218352
#>     Attrib V12    1.1274101105702785
#>     Attrib V13    0.6709478664398946
#>     Attrib V14    -0.22181366751646564
#>     Attrib V15    -0.4929998277988153
#>     Attrib V16    -1.0674569840116785
#>     Attrib V17    -0.9556600924196187
#>     Attrib V18    -0.25113813429654464
#>     Attrib V19    -0.4892826030089659
#>     Attrib V2    0.4523272086707978
#>     Attrib V20    0.03425074216262762
#>     Attrib V21    0.44326439277349927
#>     Attrib V22    0.5499376298267568
#>     Attrib V23    0.25996626414077567
#>     Attrib V24    -0.2222633409274238
#>     Attrib V25    -0.6949192397085606
#>     Attrib V26    0.21723747320186587
#>     Attrib V27    1.080165301309103
#>     Attrib V28    1.2240980065832228
#>     Attrib V29    0.4963338281936451
#>     Attrib V3    -0.35768279945937853
#>     Attrib V30    0.2999050160219983
#>     Attrib V31    -0.4830050156408979
#>     Attrib V32    0.18436658102986514
#>     Attrib V33    -0.1359352849165836
#>     Attrib V34    -0.13408830967285743
#>     Attrib V35    0.8958801134208301
#>     Attrib V36    -0.4861796849889811
#>     Attrib V37    -0.23310628780823822
#>     Attrib V38    -0.02708338058306952
#>     Attrib V39    0.18873040505237904
#>     Attrib V4    0.03488084680252074
#>     Attrib V40    0.4677773229630072
#>     Attrib V41    0.3420523422986957
#>     Attrib V42    -0.39302449767135067
#>     Attrib V43    -0.06449456805177443
#>     Attrib V44    -0.23091943875206894
#>     Attrib V45    0.13727366156761633
#>     Attrib V46    0.5351400645770238
#>     Attrib V47    0.7753804886699525
#>     Attrib V48    0.8314514625003547
#>     Attrib V49    0.3988514379449084
#>     Attrib V5    0.024348755216271528
#>     Attrib V50    0.004131645510868824
#>     Attrib V51    0.6712738543976127
#>     Attrib V52    0.7343866562716789
#>     Attrib V53    0.6584395837274009
#>     Attrib V54    0.13647411326404002
#>     Attrib V55    -0.6010674663978635
#>     Attrib V56    -0.5349968605439227
#>     Attrib V57    -0.6803921980127443
#>     Attrib V58    -0.05629347589562858
#>     Attrib V59    -0.3073108997649922
#>     Attrib V6    -0.03566339348142734
#>     Attrib V60    0.04066403631607371
#>     Attrib V7    -0.3544970191170377
#>     Attrib V8    -0.4614217887105709
#>     Attrib V9    1.3167283104750913
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.4833476493295641
#>     Attrib V1    -0.29160795782445265
#>     Attrib V10    -0.20388087895373444
#>     Attrib V11    -0.3850544128550606
#>     Attrib V12    -0.821381184046615
#>     Attrib V13    -0.4476138946143176
#>     Attrib V14    -0.01954752657416736
#>     Attrib V15    0.20732580128480907
#>     Attrib V16    0.6924198237676618
#>     Attrib V17    0.4542987637596424
#>     Attrib V18    -0.045552932253655753
#>     Attrib V19    0.22238496481366427
#>     Attrib V2    -0.14691475346935584
#>     Attrib V20    0.22558498462315899
#>     Attrib V21    0.08840533282918281
#>     Attrib V22    -0.21201808667379746
#>     Attrib V23    -0.24435791659251538
#>     Attrib V24    -0.23009513719838004
#>     Attrib V25    0.19852374253405294
#>     Attrib V26    -0.1349589488427381
#>     Attrib V27    -0.748900104759346
#>     Attrib V28    -0.7565212929906975
#>     Attrib V29    -0.243989260748178
#>     Attrib V3    0.2566019449361945
#>     Attrib V30    0.04651529400017336
#>     Attrib V31    0.41748332361013707
#>     Attrib V32    -0.3340944306059565
#>     Attrib V33    0.06363121761862804
#>     Attrib V34    0.3547793971330462
#>     Attrib V35    -0.2631137465291954
#>     Attrib V36    0.6489016353019194
#>     Attrib V37    0.5833280726107082
#>     Attrib V38    0.23926696557029123
#>     Attrib V39    0.039698115741845355
#>     Attrib V4    -0.21826727935390308
#>     Attrib V40    -0.2183007319956539
#>     Attrib V41    -0.42044624035308714
#>     Attrib V42    -0.03510150938065864
#>     Attrib V43    -0.021945388247900856
#>     Attrib V44    0.13734093123834185
#>     Attrib V45    -7.393086740633698E-4
#>     Attrib V46    -0.26836317785438285
#>     Attrib V47    -0.41492194799817483
#>     Attrib V48    -0.6830786411115539
#>     Attrib V49    -0.341896383723623
#>     Attrib V5    -0.21355698999997635
#>     Attrib V50    0.19326066662764543
#>     Attrib V51    -0.4590771058859014
#>     Attrib V52    -0.5454191649634202
#>     Attrib V53    -0.5820682139466984
#>     Attrib V54    -0.3140342699057134
#>     Attrib V55    0.5885155445345845
#>     Attrib V56    0.2588662564090171
#>     Attrib V57    0.2280815504894314
#>     Attrib V58    -0.12252734463318112
#>     Attrib V59    -0.4529094929018841
#>     Attrib V6    -0.06624574319079815
#>     Attrib V60    -0.35273039582284577
#>     Attrib V7    0.13344495454229838
#>     Attrib V8    0.5054587521667439
#>     Attrib V9    -0.679346833385668
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.11208403459386411
#>     Attrib V1    0.41038675331406577
#>     Attrib V10    -0.2767318128308175
#>     Attrib V11    -0.14316425562573654
#>     Attrib V12    -0.1259918938741282
#>     Attrib V13    -0.3784673285636876
#>     Attrib V14    0.0070361599167026515
#>     Attrib V15    0.25409769188574904
#>     Attrib V16    0.27354066964645646
#>     Attrib V17    0.20247269789414915
#>     Attrib V18    0.34948606096509793
#>     Attrib V19    0.16301990357036766
#>     Attrib V2    0.0870225954626497
#>     Attrib V20    0.3640910440598223
#>     Attrib V21    0.11849841126718313
#>     Attrib V22    -0.1022398891772683
#>     Attrib V23    0.008888863009467564
#>     Attrib V24    0.17044136946626687
#>     Attrib V25    -0.23044681789169186
#>     Attrib V26    -0.5839810891025655
#>     Attrib V27    -0.5300156973766402
#>     Attrib V28    -0.06628906790585866
#>     Attrib V29    -0.24851451263847094
#>     Attrib V3    -0.2188586446309313
#>     Attrib V30    -0.012142729790921528
#>     Attrib V31    -0.6213803198358057
#>     Attrib V32    0.21740452692755
#>     Attrib V33    0.47041702179778594
#>     Attrib V34    0.0820351223937748
#>     Attrib V35    0.35060166464487447
#>     Attrib V36    -0.16655361356662432
#>     Attrib V37    -0.5724916523796274
#>     Attrib V38    0.190626461927163
#>     Attrib V39    0.00967844372593408
#>     Attrib V4    0.18746289469220945
#>     Attrib V40    -0.18674730023191985
#>     Attrib V41    -0.268130071262807
#>     Attrib V42    0.011011314797171753
#>     Attrib V43    0.055241592291781105
#>     Attrib V44    0.16562704458789812
#>     Attrib V45    0.27338894973040584
#>     Attrib V46    0.0630830332985379
#>     Attrib V47    -0.0854925677572218
#>     Attrib V48    0.2599284003000631
#>     Attrib V49    0.22756572078622853
#>     Attrib V5    -0.09095746506252562
#>     Attrib V50    -0.22543377730404882
#>     Attrib V51    0.1103510499822223
#>     Attrib V52    0.26483387772201517
#>     Attrib V53    0.14108457833998875
#>     Attrib V54    0.4247125232157177
#>     Attrib V55    -0.07375750607596605
#>     Attrib V56    0.1442736433902355
#>     Attrib V57    0.10475573766897485
#>     Attrib V58    0.2694792657553677
#>     Attrib V59    0.5940852230786744
#>     Attrib V6    -0.4394274829900084
#>     Attrib V60    0.2427406036316761
#>     Attrib V7    0.014732866661489838
#>     Attrib V8    -0.12140817020106026
#>     Attrib V9    0.22784272744713904
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.36447293223106386
#>     Attrib V1    0.6517778942016931
#>     Attrib V10    -0.45163476808750835
#>     Attrib V11    -0.15695374087296862
#>     Attrib V12    -0.2187415074624065
#>     Attrib V13    -0.4752605475527946
#>     Attrib V14    0.06571706344727012
#>     Attrib V15    0.3323847089365029
#>     Attrib V16    0.36971469519453154
#>     Attrib V17    0.2106974144208186
#>     Attrib V18    0.4844656042627498
#>     Attrib V19    0.34906199448433933
#>     Attrib V2    0.17297192027860564
#>     Attrib V20    0.5041872692813887
#>     Attrib V21    0.19714585254508063
#>     Attrib V22    -0.06938143081400845
#>     Attrib V23    0.09650294434937023
#>     Attrib V24    0.28307636879349884
#>     Attrib V25    -0.43921112163807424
#>     Attrib V26    -0.8913994226158325
#>     Attrib V27    -0.7752858810957953
#>     Attrib V28    -0.05791333711740254
#>     Attrib V29    -0.24028851313955768
#>     Attrib V3    -0.32954205353292043
#>     Attrib V30    -0.042083770421380694
#>     Attrib V31    -0.9682705233912725
#>     Attrib V32    0.4310890698751362
#>     Attrib V33    0.796646772843426
#>     Attrib V34    0.026887915799302883
#>     Attrib V35    0.39775108469244225
#>     Attrib V36    -0.3693307114384016
#>     Attrib V37    -0.965465892331756
#>     Attrib V38    0.28622402606758124
#>     Attrib V39    0.04643123333725931
#>     Attrib V4    0.35477100650130927
#>     Attrib V40    -0.19805061367712565
#>     Attrib V41    -0.2523605791198753
#>     Attrib V42    0.15567104292035042
#>     Attrib V43    0.22475898322996363
#>     Attrib V44    0.14298602141388708
#>     Attrib V45    0.31488436695484234
#>     Attrib V46    0.0966940773879218
#>     Attrib V47    -0.24948377303462377
#>     Attrib V48    0.34107420978510267
#>     Attrib V49    0.356099885581983
#>     Attrib V5    -0.1477058475551962
#>     Attrib V50    -0.4275628382246226
#>     Attrib V51    0.04360662647463105
#>     Attrib V52    0.4812979044264714
#>     Attrib V53    0.3123444835723891
#>     Attrib V54    0.5466914824314162
#>     Attrib V55    -0.2870734759709752
#>     Attrib V56    0.25078161076113853
#>     Attrib V57    0.1239086680019426
#>     Attrib V58    0.4495658930822819
#>     Attrib V59    1.1051105861945738
#>     Attrib V6    -0.7244705646180211
#>     Attrib V60    0.37447031803008607
#>     Attrib V7    0.12022492625501091
#>     Attrib V8    -0.18392425706630192
#>     Attrib V9    0.30757323240067774
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.06213682813489524
#>     Attrib V1    0.26499147718328087
#>     Attrib V10    -0.19159448274190444
#>     Attrib V11    -0.09473959843132042
#>     Attrib V12    -0.08054404636529165
#>     Attrib V13    -0.10410536515353046
#>     Attrib V14    0.04705076652626666
#>     Attrib V15    0.1602017533715429
#>     Attrib V16    0.12118154267262958
#>     Attrib V17    0.12349565785032059
#>     Attrib V18    0.2122282059776793
#>     Attrib V19    0.07219530234483983
#>     Attrib V2    0.09352091296235618
#>     Attrib V20    0.1882490745009865
#>     Attrib V21    0.06883728562513071
#>     Attrib V22    -0.07110249781161729
#>     Attrib V23    0.06039792739385484
#>     Attrib V24    0.14465999150730208
#>     Attrib V25    -0.08163692146188893
#>     Attrib V26    -0.3230174267126557
#>     Attrib V27    -0.25022449563732574
#>     Attrib V28    -0.11937367147807308
#>     Attrib V29    -0.16614293253949658
#>     Attrib V3    -0.016068272653937832
#>     Attrib V30    -0.017555407991980215
#>     Attrib V31    -0.40911641446018954
#>     Attrib V32    0.11325460972776945
#>     Attrib V33    0.2371242673114801
#>     Attrib V34    0.05408899613993194
#>     Attrib V35    0.20860663342814081
#>     Attrib V36    -0.09154285262034623
#>     Attrib V37    -0.2665851593843486
#>     Attrib V38    0.09587739560756162
#>     Attrib V39    0.08607254365734612
#>     Attrib V4    0.1580173098897809
#>     Attrib V40    -0.02434518955067282
#>     Attrib V41    -0.08108143867340128
#>     Attrib V42    0.015833211670397956
#>     Attrib V43    -0.019970593940836504
#>     Attrib V44    0.03925233856500761
#>     Attrib V45    0.05929076096428786
#>     Attrib V46    0.06821256166091899
#>     Attrib V47    -0.012068593437020787
#>     Attrib V48    0.11962816594469518
#>     Attrib V49    0.1473772309414843
#>     Attrib V5    -0.015501004761614746
#>     Attrib V50    -0.14891226003405134
#>     Attrib V51    0.057333678063128286
#>     Attrib V52    0.17957370011894036
#>     Attrib V53    0.1314542005461288
#>     Attrib V54    0.19949623129125965
#>     Attrib V55    -0.027314161325290662
#>     Attrib V56    0.0941863799443794
#>     Attrib V57    0.07358942205585071
#>     Attrib V58    0.14573368095677866
#>     Attrib V59    0.409291245214252
#>     Attrib V6    -0.26056043696567294
#>     Attrib V60    0.2521680730548579
#>     Attrib V7    0.055941448569702325
#>     Attrib V8    -0.15279661307556813
#>     Attrib V9    0.1364348443335561
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.25468083789527096
#>     Attrib V1    0.6201631897145065
#>     Attrib V10    -0.3575390851722034
#>     Attrib V11    -0.15040139920057893
#>     Attrib V12    -0.17672616826119167
#>     Attrib V13    -0.4413830745588799
#>     Attrib V14    0.01815055050107447
#>     Attrib V15    0.41038391530968704
#>     Attrib V16    0.34235368462849314
#>     Attrib V17    0.19574931976456414
#>     Attrib V18    0.3760759181231643
#>     Attrib V19    0.18829764506931093
#>     Attrib V2    0.15322396665974505
#>     Attrib V20    0.34913072302104087
#>     Attrib V21    0.10922282851447444
#>     Attrib V22    -0.1619104932753565
#>     Attrib V23    0.006973335247687919
#>     Attrib V24    0.24505225315436965
#>     Attrib V25    -0.2806305682236941
#>     Attrib V26    -0.6861302756405432
#>     Attrib V27    -0.7688307305675648
#>     Attrib V28    -0.23255941980906017
#>     Attrib V29    -0.3807859376974005
#>     Attrib V3    -0.2777253280366098
#>     Attrib V30    -0.033078032399979994
#>     Attrib V31    -0.657703404995386
#>     Attrib V32    0.3866965155398179
#>     Attrib V33    0.6840229147859942
#>     Attrib V34    0.046720135722501825
#>     Attrib V35    0.3677498567745805
#>     Attrib V36    -0.32632362891210015
#>     Attrib V37    -0.7663230205087906
#>     Attrib V38    0.09989440417506527
#>     Attrib V39    -0.003496003483112171
#>     Attrib V4    0.1968967240589536
#>     Attrib V40    -0.25413484188651303
#>     Attrib V41    -0.31763926557736943
#>     Attrib V42    0.025464818504324
#>     Attrib V43    0.061653986381605165
#>     Attrib V44    0.16623254227288087
#>     Attrib V45    0.216666168557578
#>     Attrib V46    0.08013758830230391
#>     Attrib V47    -0.21361456703025872
#>     Attrib V48    0.30257079785943314
#>     Attrib V49    0.33186642419639506
#>     Attrib V5    -0.23312984481888138
#>     Attrib V50    -0.35353846976987363
#>     Attrib V51    -0.017977117001324365
#>     Attrib V52    0.3052708865209604
#>     Attrib V53    0.18907718982456528
#>     Attrib V54    0.5875675034749268
#>     Attrib V55    -0.11042844812311607
#>     Attrib V56    0.20961341506762698
#>     Attrib V57    0.10797783297113091
#>     Attrib V58    0.36902927744036607
#>     Attrib V59    0.8635292363455318
#>     Attrib V6    -0.5161351030977301
#>     Attrib V60    0.37124406989678654
#>     Attrib V7    0.1743197655916348
#>     Attrib V8    -0.1605267136063048
#>     Attrib V9    0.23647752808688413
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.49477794556779375
#>     Attrib V1    -0.2521446764131218
#>     Attrib V10    -0.5015655488588531
#>     Attrib V11    -0.6385120555737481
#>     Attrib V12    -1.1831359643347894
#>     Attrib V13    -0.750480963798011
#>     Attrib V14    0.22096883728145264
#>     Attrib V15    0.6650615733401593
#>     Attrib V16    1.1455373806785782
#>     Attrib V17    0.5882708794292304
#>     Attrib V18    -0.3115560685664948
#>     Attrib V19    0.1376786956103633
#>     Attrib V2    -0.2003306381926557
#>     Attrib V20    0.1681458377649487
#>     Attrib V21    -0.16117987508908516
#>     Attrib V22    -0.7543197619246825
#>     Attrib V23    -0.9082253401489456
#>     Attrib V24    -0.4709564806576301
#>     Attrib V25    0.15842922198900541
#>     Attrib V26    -0.3464013354919559
#>     Attrib V27    -1.1985278237758739
#>     Attrib V28    -0.9909237172604737
#>     Attrib V29    -0.041820454609244086
#>     Attrib V3    0.4115167297273036
#>     Attrib V30    0.051721257234195024
#>     Attrib V31    0.5474151843703511
#>     Attrib V32    -0.24920026726505984
#>     Attrib V33    0.24696210268399085
#>     Attrib V34    0.464802963784459
#>     Attrib V35    -0.651527028011813
#>     Attrib V36    0.7115011277078765
#>     Attrib V37    0.6238265571165995
#>     Attrib V38    0.21173457799972287
#>     Attrib V39    -0.016434039895451415
#>     Attrib V4    -0.17841089473374425
#>     Attrib V40    -0.5231556094001248
#>     Attrib V41    -0.7655205209722126
#>     Attrib V42    -5.914614534354325E-4
#>     Attrib V43    -0.14807049388256135
#>     Attrib V44    0.03685237729852648
#>     Attrib V45    -0.005634753765392704
#>     Attrib V46    -0.4080401143275392
#>     Attrib V47    -0.7860695293335049
#>     Attrib V48    -1.0047383162402233
#>     Attrib V49    -0.5562282512049623
#>     Attrib V5    -0.3236096142833155
#>     Attrib V50    -0.002060874417256458
#>     Attrib V51    -0.780107749103535
#>     Attrib V52    -0.8527712868372613
#>     Attrib V53    -0.814059126060704
#>     Attrib V54    -0.2505520015562009
#>     Attrib V55    1.0714530855836615
#>     Attrib V56    0.5252250501721838
#>     Attrib V57    0.7005462677103459
#>     Attrib V58    -0.05692239476612966
#>     Attrib V59    -0.20221064985885417
#>     Attrib V6    -0.09554991899398427
#>     Attrib V60    -0.30134348515666803
#>     Attrib V7    0.3317197934436897
#>     Attrib V8    0.9670112529995276
#>     Attrib V9    -1.062604941670587
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.039404901432959
#>     Attrib V1    0.24859566059635196
#>     Attrib V10    -0.1408235692137881
#>     Attrib V11    -0.08779659580116204
#>     Attrib V12    -0.07244307833599851
#>     Attrib V13    -0.1338041643826487
#>     Attrib V14    0.00706356453313366
#>     Attrib V15    0.14933476644417298
#>     Attrib V16    0.19408804170458108
#>     Attrib V17    0.12595104703995907
#>     Attrib V18    0.2121450194959504
#>     Attrib V19    0.0789054568872931
#>     Attrib V2    0.06375209226716562
#>     Attrib V20    0.09503904983942439
#>     Attrib V21    -0.004708138324167381
#>     Attrib V22    -0.10084580908222524
#>     Attrib V23    -0.05608051680168056
#>     Attrib V24    0.12673966879504378
#>     Attrib V25    -0.10376284918110883
#>     Attrib V26    -0.3043607810022901
#>     Attrib V27    -0.28523139452898905
#>     Attrib V28    -0.09139916007592479
#>     Attrib V29    -0.1865188624506671
#>     Attrib V3    -0.04188888364653377
#>     Attrib V30    -0.06230546131893867
#>     Attrib V31    -0.3535968565516718
#>     Attrib V32    0.1186218718714873
#>     Attrib V33    0.22189220804200882
#>     Attrib V34    0.058342948557320716
#>     Attrib V35    0.1944437507797662
#>     Attrib V36    -0.08332478747229302
#>     Attrib V37    -0.23227032440468764
#>     Attrib V38    0.09032493633792095
#>     Attrib V39    0.03412580071173655
#>     Attrib V4    0.13873590716421969
#>     Attrib V40    -0.07083678448206233
#>     Attrib V41    -0.08802905884714005
#>     Attrib V42    0.02209701170441166
#>     Attrib V43    -0.009624310368909277
#>     Attrib V44    0.0016807198160417554
#>     Attrib V45    0.09497301854892555
#>     Attrib V46    0.05835395820562549
#>     Attrib V47    -0.04826543221262605
#>     Attrib V48    0.10098644294874302
#>     Attrib V49    0.0666944496439254
#>     Attrib V5    -0.04231397890388747
#>     Attrib V50    -0.07739607683790269
#>     Attrib V51    0.10618652008509644
#>     Attrib V52    0.20860031020041717
#>     Attrib V53    0.16555371113076478
#>     Attrib V54    0.19732293589817423
#>     Attrib V55    0.04088054687979079
#>     Attrib V56    0.09539259044326374
#>     Attrib V57    0.10218269623043331
#>     Attrib V58    0.1858384819578141
#>     Attrib V59    0.2942479944755302
#>     Attrib V6    -0.23432995337800164
#>     Attrib V60    0.2153630902087939
#>     Attrib V7    0.02773395969750655
#>     Attrib V8    -0.12186045594248687
#>     Attrib V9    0.15995119468124197
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.20257879728384703
#>     Attrib V1    -0.0028290860312390385
#>     Attrib V10    0.055113979477850704
#>     Attrib V11    -0.015690758193121476
#>     Attrib V12    -0.11065144957531779
#>     Attrib V13    -0.05203046120385057
#>     Attrib V14    -0.006609321381853474
#>     Attrib V15    0.10268609046515695
#>     Attrib V16    0.09551825848877998
#>     Attrib V17    0.13265808277082336
#>     Attrib V18    0.05348247278450911
#>     Attrib V19    0.018959637769904503
#>     Attrib V2    0.12387633581816627
#>     Attrib V20    -0.07131431854901803
#>     Attrib V21    -0.057651557780755376
#>     Attrib V22    0.03629249425162776
#>     Attrib V23    -0.04788432766615142
#>     Attrib V24    -0.04767977777638396
#>     Attrib V25    -0.00805392250142719
#>     Attrib V26    -0.009903331845808452
#>     Attrib V27    -0.060258915184798444
#>     Attrib V28    -0.1299219468473576
#>     Attrib V29    -0.054125597058958134
#>     Attrib V3    0.13782290165296354
#>     Attrib V30    0.08127776053420248
#>     Attrib V31    0.18899254638361207
#>     Attrib V32    0.011506274131371957
#>     Attrib V33    0.0999571123353188
#>     Attrib V34    0.08614653880720857
#>     Attrib V35    0.09513521686615542
#>     Attrib V36    0.14427133579172235
#>     Attrib V37    0.16652763364930862
#>     Attrib V38    0.07710918496112068
#>     Attrib V39    0.07336046085755225
#>     Attrib V4    0.044955482724419495
#>     Attrib V40    0.07308021902206681
#>     Attrib V41    0.09016653729503678
#>     Attrib V42    0.055178898783212804
#>     Attrib V43    0.09346995152135448
#>     Attrib V44    0.05906527760232248
#>     Attrib V45    -0.011464445765507928
#>     Attrib V46    -0.00973746342938106
#>     Attrib V47    -0.0030185241336553722
#>     Attrib V48    -0.007463474672340287
#>     Attrib V49    -0.03897498758136941
#>     Attrib V5    0.06523109646483612
#>     Attrib V50    0.12003645019507343
#>     Attrib V51    0.04101381981591684
#>     Attrib V52    -0.04203585343187133
#>     Attrib V53    -0.03157123895293771
#>     Attrib V54    -0.037876046957865867
#>     Attrib V55    0.1464948757907771
#>     Attrib V56    0.09819667299517199
#>     Attrib V57    0.1699186222173498
#>     Attrib V58    0.0048199659102826885
#>     Attrib V59    -0.16256064733951747
#>     Attrib V6    0.08129768614355264
#>     Attrib V60    0.030731979081655418
#>     Attrib V7    -0.033804637119155566
#>     Attrib V8    0.11508589907755239
#>     Attrib V9    -0.014220657280245998
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.48489956688239316
#>     Attrib V1    -0.15889219123827078
#>     Attrib V10    -0.06992516294525036
#>     Attrib V11    -0.24406919034720215
#>     Attrib V12    -0.42408767414546605
#>     Attrib V13    -0.15237239816061693
#>     Attrib V14    0.021779881065379245
#>     Attrib V15    -0.009810795663205054
#>     Attrib V16    0.13942168610897634
#>     Attrib V17    0.11971432927079954
#>     Attrib V18    -0.01231702621896107
#>     Attrib V19    -0.08162919710813274
#>     Attrib V2    0.024124300522715678
#>     Attrib V20    -0.09417024370929303
#>     Attrib V21    -0.010478549028336892
#>     Attrib V22    -0.028921346627501354
#>     Attrib V23    -0.10837525238205205
#>     Attrib V24    -0.17428129362624162
#>     Attrib V25    0.2852901574624592
#>     Attrib V26    0.2935090857924685
#>     Attrib V27    -0.016213399413550905
#>     Attrib V28    -0.29244053682510024
#>     Attrib V29    0.09062777682820702
#>     Attrib V3    0.3398329915983485
#>     Attrib V30    0.05668767992865795
#>     Attrib V31    0.4213409691201968
#>     Attrib V32    -0.012385956331496426
#>     Attrib V33    -0.008929389276050904
#>     Attrib V34    0.1821245156956558
#>     Attrib V35    -0.18751240548727754
#>     Attrib V36    0.47494051282703587
#>     Attrib V37    0.5002133004055205
#>     Attrib V38    -0.00915897159670108
#>     Attrib V39    0.011147558702140372
#>     Attrib V4    -0.08075449690656411
#>     Attrib V40    -0.02958970081727642
#>     Attrib V41    -0.12834681021792022
#>     Attrib V42    0.07744750929872649
#>     Attrib V43    0.0484358476798026
#>     Attrib V44    0.06204107146011904
#>     Attrib V45    -0.2020445332274526
#>     Attrib V46    -0.10511710494714528
#>     Attrib V47    0.014238240796309202
#>     Attrib V48    -0.25186129536945634
#>     Attrib V49    -0.12389330675553979
#>     Attrib V5    -0.03247089022467445
#>     Attrib V50    0.2615526688205165
#>     Attrib V51    -0.031999342446348375
#>     Attrib V52    -0.21609558308379773
#>     Attrib V53    -0.13600801380771135
#>     Attrib V54    -0.13317230062439872
#>     Attrib V55    0.2602305862135455
#>     Attrib V56    0.14169677357958899
#>     Attrib V57    0.13878897143201072
#>     Attrib V58    -0.04985105204576833
#>     Attrib V59    -0.3615228774949055
#>     Attrib V6    0.007434121357616217
#>     Attrib V60    -0.047190217037437567
#>     Attrib V7    -0.04977230861389513
#>     Attrib V8    0.2039091205995656
#>     Attrib V9    -0.3359329140313655
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.2955744100245448
#>     Attrib V1    0.3558175974660217
#>     Attrib V10    -0.30290499871133153
#>     Attrib V11    -0.0439956447021043
#>     Attrib V12    0.31526699887114434
#>     Attrib V13    -0.15522428281228767
#>     Attrib V14    -0.13694087092927615
#>     Attrib V15    0.039403735047760076
#>     Attrib V16    -0.04148857310078605
#>     Attrib V17    0.1549406420819342
#>     Attrib V18    0.603370448926432
#>     Attrib V19    0.3101334132812415
#>     Attrib V2    0.05679123510259465
#>     Attrib V20    0.2003206973680003
#>     Attrib V21    0.02599715193652456
#>     Attrib V22    0.1840584411551984
#>     Attrib V23    0.4649463374478141
#>     Attrib V24    0.7200408920427748
#>     Attrib V25    0.07937498123114961
#>     Attrib V26    -0.44539895549792197
#>     Attrib V27    -0.4288953170649002
#>     Attrib V28    -0.009356997024277737
#>     Attrib V29    -0.5602213144696279
#>     Attrib V3    -0.4452392014156332
#>     Attrib V30    -0.05274390145109459
#>     Attrib V31    -0.6431362931791188
#>     Attrib V32    0.6725880026206748
#>     Attrib V33    0.6430255756914267
#>     Attrib V34    -0.2323407310757791
#>     Attrib V35    0.2928686563211637
#>     Attrib V36    -0.6634831198021999
#>     Attrib V37    -1.3405559509031852
#>     Attrib V38    0.007895589187613886
#>     Attrib V39    0.018661983481667904
#>     Attrib V4    0.2925070985689812
#>     Attrib V40    -0.08356684049052289
#>     Attrib V41    -0.10803882045699256
#>     Attrib V42    0.24335050175489426
#>     Attrib V43    0.2654794881829134
#>     Attrib V44    0.1451006265316519
#>     Attrib V45    0.1818721917779085
#>     Attrib V46    0.04932627599162988
#>     Attrib V47    -0.06867731416486175
#>     Attrib V48    0.5691092851752304
#>     Attrib V49    0.5938452196642435
#>     Attrib V5    -0.10072382453216126
#>     Attrib V50    -0.3763539131938074
#>     Attrib V51    0.23082455824403084
#>     Attrib V52    0.6164805673220604
#>     Attrib V53    0.4316722618114882
#>     Attrib V54    0.5669154930230658
#>     Attrib V55    -0.5436513082199322
#>     Attrib V56    0.10367450694055333
#>     Attrib V57    -0.32529901552733487
#>     Attrib V58    0.4263907349457058
#>     Attrib V59    0.9316681931902626
#>     Attrib V6    -0.5710304825415324
#>     Attrib V60    0.35725436759529805
#>     Attrib V7    0.05410659715877127
#>     Attrib V8    -0.48843837888620745
#>     Attrib V9    0.440520002087063
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3603291084262986
#>     Attrib V1    0.2529254988629745
#>     Attrib V10    0.4894221354842757
#>     Attrib V11    0.5356324029758832
#>     Attrib V12    1.163325617356516
#>     Attrib V13    0.6699899425855493
#>     Attrib V14    -0.2709848852527867
#>     Attrib V15    -0.6484331622587323
#>     Attrib V16    -1.1253855412983016
#>     Attrib V17    -0.4725018109188647
#>     Attrib V18    0.4542371271017468
#>     Attrib V19    -0.0010625279659488619
#>     Attrib V2    0.2172813702826478
#>     Attrib V20    0.016662132434154722
#>     Attrib V21    0.24217161716881627
#>     Attrib V22    0.8933072213595378
#>     Attrib V23    1.1555707211612656
#>     Attrib V24    0.6387774554407271
#>     Attrib V25    -0.17376133127464577
#>     Attrib V26    0.12746569418952824
#>     Attrib V27    0.8403445113051137
#>     Attrib V28    0.9158425979742844
#>     Attrib V29    -0.024878311561595264
#>     Attrib V3    -0.44656112877722065
#>     Attrib V30    0.06741449604507184
#>     Attrib V31    -0.5972953335532684
#>     Attrib V32    0.35060613127832907
#>     Attrib V33    -0.08778878446868725
#>     Attrib V34    -0.45496113421976436
#>     Attrib V35    0.7184364344771255
#>     Attrib V36    -0.7477266434164697
#>     Attrib V37    -0.8336674360141433
#>     Attrib V38    -0.11499206323344392
#>     Attrib V39    0.039057981259307255
#>     Attrib V4    0.23341460510951337
#>     Attrib V40    0.4495697296619114
#>     Attrib V41    0.6233818585257129
#>     Attrib V42    0.008257076283104438
#>     Attrib V43    0.31283462326500383
#>     Attrib V44    0.07760674333943497
#>     Attrib V45    0.031502698784237136
#>     Attrib V46    0.3883994985802111
#>     Attrib V47    0.7346767045419819
#>     Attrib V48    1.0791645598812702
#>     Attrib V49    0.6966365094699609
#>     Attrib V5    0.34941465013498363
#>     Attrib V50    -0.010360556499305151
#>     Attrib V51    0.8705103823680833
#>     Attrib V52    0.9238869001062665
#>     Attrib V53    0.6863699154741082
#>     Attrib V54    0.07642471016756218
#>     Attrib V55    -1.1640250689608138
#>     Attrib V56    -0.41841025649800867
#>     Attrib V57    -0.9112712713789947
#>     Attrib V58    0.12958098908083704
#>     Attrib V59    0.15207853053646772
#>     Attrib V6    -0.17656077104665086
#>     Attrib V60    0.1298820634969171
#>     Attrib V7    -0.44626878067441417
#>     Attrib V8    -1.0983517952087556
#>     Attrib V9    1.1321753210000947
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.46549059067733123
#>     Attrib V1    -0.33799751223051283
#>     Attrib V10    -0.5786181232647318
#>     Attrib V11    -0.7710290919549585
#>     Attrib V12    -1.3835110323953579
#>     Attrib V13    -0.968556556053311
#>     Attrib V14    0.031165256023042955
#>     Attrib V15    0.6078143824130496
#>     Attrib V16    1.2764246724788832
#>     Attrib V17    0.7676120964282179
#>     Attrib V18    -0.160077284940622
#>     Attrib V19    0.14748950290231372
#>     Attrib V2    -0.33745545929948284
#>     Attrib V20    0.10274243418663812
#>     Attrib V21    -0.18478193632834683
#>     Attrib V22    -0.8537769739513833
#>     Attrib V23    -0.8304148814767011
#>     Attrib V24    -0.18408781366332458
#>     Attrib V25    0.4495143773807322
#>     Attrib V26    -0.473558876196421
#>     Attrib V27    -1.5213086231132793
#>     Attrib V28    -1.4257844009302911
#>     Attrib V29    -0.5802842707309455
#>     Attrib V3    0.23799873567012056
#>     Attrib V30    -0.1425147886058369
#>     Attrib V31    0.5536693787972138
#>     Attrib V32    -0.155945608039011
#>     Attrib V33    0.4375421693946123
#>     Attrib V34    0.5472406505646837
#>     Attrib V35    -0.6198122963763082
#>     Attrib V36    0.7419776011889595
#>     Attrib V37    0.45609099006327164
#>     Attrib V38    0.15378412430435048
#>     Attrib V39    -0.10522250108631175
#>     Attrib V4    -0.18723186213726553
#>     Attrib V40    -0.5928997770905287
#>     Attrib V41    -0.8142031611490033
#>     Attrib V42    0.010121817303823215
#>     Attrib V43    -0.02826889472604466
#>     Attrib V44    0.1462326745618276
#>     Attrib V45    -0.03604237262912374
#>     Attrib V46    -0.4621013886983753
#>     Attrib V47    -0.8241907857545491
#>     Attrib V48    -0.8970404511415798
#>     Attrib V49    -0.5328335936420945
#>     Attrib V5    -0.43745281471224173
#>     Attrib V50    -0.03261681344491361
#>     Attrib V51    -0.8419553879166943
#>     Attrib V52    -0.9122844582926861
#>     Attrib V53    -0.9998477046291799
#>     Attrib V54    -0.27394670536378746
#>     Attrib V55    0.895900127926277
#>     Attrib V56    0.4331727391054188
#>     Attrib V57    0.7691382283687795
#>     Attrib V58    -0.05148876271666736
#>     Attrib V59    -0.07066927253584297
#>     Attrib V6    -0.31816505798728184
#>     Attrib V60    -0.18125531429735167
#>     Attrib V7    0.4530378842569264
#>     Attrib V8    0.8109166008060968
#>     Attrib V9    -1.094894914708587
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.18691342960842636
#>     Attrib V1    0.6367668324355754
#>     Attrib V10    -0.420284951532413
#>     Attrib V11    -0.28290493345434925
#>     Attrib V12    -0.3119680667413795
#>     Attrib V13    -0.4734452239700918
#>     Attrib V14    0.14399517132637815
#>     Attrib V15    0.46289508634394655
#>     Attrib V16    0.5399287931614327
#>     Attrib V17    0.26377200351925595
#>     Attrib V18    0.35661276070676495
#>     Attrib V19    0.2102343914846118
#>     Attrib V2    0.20901167217377706
#>     Attrib V20    0.4009645416458188
#>     Attrib V21    0.11077274118883723
#>     Attrib V22    -0.2406423526622434
#>     Attrib V23    -0.11618070102994334
#>     Attrib V24    0.2634244761666197
#>     Attrib V25    -0.36168599892717107
#>     Attrib V26    -0.832394082895243
#>     Attrib V27    -0.8788227955679534
#>     Attrib V28    -0.31719744947468803
#>     Attrib V29    -0.2644778150275994
#>     Attrib V3    -0.15942731177594854
#>     Attrib V30    -0.06797416320101682
#>     Attrib V31    -0.6314818064956017
#>     Attrib V32    0.32237483280417856
#>     Attrib V33    0.6138623100567964
#>     Attrib V34    0.08007353934858673
#>     Attrib V35    0.30620210142415133
#>     Attrib V36    -0.25024320853012255
#>     Attrib V37    -0.673172006900555
#>     Attrib V38    0.12451767516108571
#>     Attrib V39    -0.03781892296961732
#>     Attrib V4    0.2453501984423916
#>     Attrib V40    -0.24724984993488555
#>     Attrib V41    -0.3172502176088013
#>     Attrib V42    0.07331438949402033
#>     Attrib V43    0.1084805122577552
#>     Attrib V44    0.09368857985719935
#>     Attrib V45    0.17690745034753474
#>     Attrib V46    0.06313276122825394
#>     Attrib V47    -0.3045833525465684
#>     Attrib V48    0.18537834143503093
#>     Attrib V49    0.2451787014209469
#>     Attrib V5    -0.14918693163076274
#>     Attrib V50    -0.3453986452689284
#>     Attrib V51    -0.034184415427813586
#>     Attrib V52    0.2902774141912462
#>     Attrib V53    0.1890040724994925
#>     Attrib V54    0.5482483959206469
#>     Attrib V55    -0.010192440158166012
#>     Attrib V56    0.3019500204025213
#>     Attrib V57    0.22542266389657784
#>     Attrib V58    0.40550920003454566
#>     Attrib V59    0.8845525321031473
#>     Attrib V6    -0.4404216502908804
#>     Attrib V60    0.4012220848375525
#>     Attrib V7    0.2141587608057426
#>     Attrib V8    -0.15004501936774592
#>     Attrib V9    0.14807898841434008
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.13510605484916796
#>     Attrib V1    0.2876376913842389
#>     Attrib V10    -0.5616100263222081
#>     Attrib V11    -0.2449995769418157
#>     Attrib V12    0.10536945043006454
#>     Attrib V13    -0.3513503287873446
#>     Attrib V14    -0.19375823999666184
#>     Attrib V15    0.11441639692749044
#>     Attrib V16    0.26622179414726793
#>     Attrib V17    0.4764416504738167
#>     Attrib V18    0.7696513087455474
#>     Attrib V19    0.39774940173919066
#>     Attrib V2    -0.05474184312142949
#>     Attrib V20    0.13083075234984032
#>     Attrib V21    -0.22565763341238693
#>     Attrib V22    -0.07480129112373991
#>     Attrib V23    0.5382650820716303
#>     Attrib V24    0.9371769235187329
#>     Attrib V25    0.188857073564872
#>     Attrib V26    -0.6507408479312461
#>     Attrib V27    -0.8059460000847746
#>     Attrib V28    -0.3678913469857045
#>     Attrib V29    -0.9189298894804856
#>     Attrib V3    -0.3171054667276978
#>     Attrib V30    -0.18024473057570273
#>     Attrib V31    -0.7178564026857899
#>     Attrib V32    0.7057489005515991
#>     Attrib V33    0.8310969387302569
#>     Attrib V34    -0.09373534197950091
#>     Attrib V35    0.2796272335091243
#>     Attrib V36    -0.6822093685161503
#>     Attrib V37    -1.5270847413021094
#>     Attrib V38    -0.05375691432933139
#>     Attrib V39    -0.10292261931657484
#>     Attrib V4    0.40230707890642964
#>     Attrib V40    -0.2720744355227002
#>     Attrib V41    -0.07593189420068415
#>     Attrib V42    0.36507258812251747
#>     Attrib V43    0.4003746775302808
#>     Attrib V44    0.2502846888784986
#>     Attrib V45    0.1938012939019977
#>     Attrib V46    0.01714875541453227
#>     Attrib V47    -0.16851737040555628
#>     Attrib V48    0.4274952482027665
#>     Attrib V49    0.5630678593150138
#>     Attrib V5    -0.08298037263187215
#>     Attrib V50    -0.3693719013936734
#>     Attrib V51    0.17543960214719145
#>     Attrib V52    0.5812617180306673
#>     Attrib V53    0.3542002934002337
#>     Attrib V54    0.6584697628850222
#>     Attrib V55    -0.43743885604988936
#>     Attrib V56    0.2812169529844605
#>     Attrib V57    -0.11511861519003551
#>     Attrib V58    0.5044535762518354
#>     Attrib V59    1.2655286870306404
#>     Attrib V6    -0.6436494756902712
#>     Attrib V60    0.5189321866794977
#>     Attrib V7    0.17267486064163137
#>     Attrib V8    -0.4843520967002273
#>     Attrib V9    0.2678225258900667
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.47142369445332183
#>     Attrib V1    -0.3026402662468988
#>     Attrib V10    -0.07560019798522075
#>     Attrib V11    -0.25335663044300866
#>     Attrib V12    -0.4846191482380318
#>     Attrib V13    -0.15843069099797613
#>     Attrib V14    0.11037053893479752
#>     Attrib V15    0.1958325570372707
#>     Attrib V16    0.39291992709144336
#>     Attrib V17    0.375363319638245
#>     Attrib V18    -0.11875363794078671
#>     Attrib V19    0.056412995448413834
#>     Attrib V2    -0.08301640613056471
#>     Attrib V20    0.023221283961602123
#>     Attrib V21    0.02629231856057398
#>     Attrib V22    -0.14962109799412554
#>     Attrib V23    -0.2614425778676355
#>     Attrib V24    -0.3642574257847305
#>     Attrib V25    0.18759605048692826
#>     Attrib V26    0.1773990257887677
#>     Attrib V27    -0.24698618941360115
#>     Attrib V28    -0.46219201655542663
#>     Attrib V29    0.03315719129714656
#>     Attrib V3    0.3465383587459035
#>     Attrib V30    0.0865496637277248
#>     Attrib V31    0.553292733139023
#>     Attrib V32    -0.1824587649208951
#>     Attrib V33    -0.1466311249282543
#>     Attrib V34    0.19096675615416456
#>     Attrib V35    -0.3505189137047792
#>     Attrib V36    0.562792113683041
#>     Attrib V37    0.6289179863651345
#>     Attrib V38    0.04231598356299459
#>     Attrib V39    -0.01654726097320994
#>     Attrib V4    -0.0792172522382615
#>     Attrib V40    -0.05302609489187447
#>     Attrib V41    -0.19428419831141516
#>     Attrib V42    -0.03966835805579065
#>     Attrib V43    -0.003862254875708904
#>     Attrib V44    -0.08084659093017803
#>     Attrib V45    -0.289312421113727
#>     Attrib V46    -0.2230279640614407
#>     Attrib V47    -0.19068476516178326
#>     Attrib V48    -0.551735370014752
#>     Attrib V49    -0.3820095636406352
#>     Attrib V5    -0.04841697640627863
#>     Attrib V50    0.33759219759091347
#>     Attrib V51    -0.23668237670964873
#>     Attrib V52    -0.3625318027125476
#>     Attrib V53    -0.41491393824048994
#>     Attrib V54    -0.24072299365689132
#>     Attrib V55    0.5788621637677341
#>     Attrib V56    0.20038284862655134
#>     Attrib V57    0.34427464589703466
#>     Attrib V58    -0.12126479375476491
#>     Attrib V59    -0.47834215514326883
#>     Attrib V6    0.17533535336150255
#>     Attrib V60    -0.17564319981968995
#>     Attrib V7    0.03556361119127039
#>     Attrib V8    0.4131630291285445
#>     Attrib V9    -0.4782283731927447
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.39519214521715595
#>     Attrib V1    -0.0842619267035146
#>     Attrib V10    0.937374522888865
#>     Attrib V11    1.0793901505665269
#>     Attrib V12    2.0502886466203525
#>     Attrib V13    1.2584058369089557
#>     Attrib V14    -0.6102276396484938
#>     Attrib V15    -1.2928025842959414
#>     Attrib V16    -1.8631519939984176
#>     Attrib V17    -0.6647541837387118
#>     Attrib V18    0.6583660762119644
#>     Attrib V19    0.024031813958625227
#>     Attrib V2    0.3796163393810729
#>     Attrib V20    -0.11045467331444184
#>     Attrib V21    0.38284681129273856
#>     Attrib V22    1.5568031067095554
#>     Attrib V23    1.9968793924627988
#>     Attrib V24    0.861534562044049
#>     Attrib V25    -0.5606646041266917
#>     Attrib V26    0.22605338981535988
#>     Attrib V27    1.7218240829550764
#>     Attrib V28    1.453963338613786
#>     Attrib V29    -0.21234742647073457
#>     Attrib V3    -0.5111234223696698
#>     Attrib V30    0.010891144532712393
#>     Attrib V31    -0.5187785966180147
#>     Attrib V32    0.3921076274005827
#>     Attrib V33    -0.6589528298150399
#>     Attrib V34    -0.6052569937270487
#>     Attrib V35    1.0985458938089026
#>     Attrib V36    -1.2547892530187061
#>     Attrib V37    -1.0996654130806491
#>     Attrib V38    -0.4606207657570519
#>     Attrib V39    0.26391282886524686
#>     Attrib V4    0.10991685950938876
#>     Attrib V40    1.1599436201975006
#>     Attrib V41    1.1877063825540397
#>     Attrib V42    -0.057311173837834815
#>     Attrib V43    0.4356057721906464
#>     Attrib V44    0.049002664460693
#>     Attrib V45    -0.13292579888223632
#>     Attrib V46    0.6662609080615143
#>     Attrib V47    1.4463547275893764
#>     Attrib V48    1.6313619932493488
#>     Attrib V49    1.0552801692151714
#>     Attrib V5    0.5079055663388452
#>     Attrib V50    0.39574952223320553
#>     Attrib V51    1.3994464703876288
#>     Attrib V52    1.5385844668345012
#>     Attrib V53    1.2610745453843566
#>     Attrib V54    -0.07870628638064195
#>     Attrib V55    -1.403775793997858
#>     Attrib V56    -0.7051749212535858
#>     Attrib V57    -1.4593525542885826
#>     Attrib V58    0.10846237200344307
#>     Attrib V59    -0.43069041954698806
#>     Attrib V6    -0.019840552523087213
#>     Attrib V60    0.06361783761161383
#>     Attrib V7    -0.8683022822464601
#>     Attrib V8    -1.6063930409159968
#>     Attrib V9    1.6922125546870244
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.05853853363213451
#>     Attrib V1    0.32102047380615484
#>     Attrib V10    -0.188414649220919
#>     Attrib V11    -0.1314710478341213
#>     Attrib V12    -0.08426000043241905
#>     Attrib V13    -0.2090544851527642
#>     Attrib V14    0.1195552672654891
#>     Attrib V15    0.20713647843971944
#>     Attrib V16    0.18386500299725714
#>     Attrib V17    0.14206206717946682
#>     Attrib V18    0.1614746231998787
#>     Attrib V19    0.11813763953921817
#>     Attrib V2    0.14053854297649523
#>     Attrib V20    0.1843557252883801
#>     Attrib V21    0.07238771593434522
#>     Attrib V22    -0.0877920506558283
#>     Attrib V23    -0.03408221795993308
#>     Attrib V24    0.04477360771951597
#>     Attrib V25    -0.19728436903139654
#>     Attrib V26    -0.36829364149350047
#>     Attrib V27    -0.28262517014286526
#>     Attrib V28    -0.0474790457545645
#>     Attrib V29    -0.11727420062560498
#>     Attrib V3    -0.07794636946166564
#>     Attrib V30    -0.0310621953788926
#>     Attrib V31    -0.42703520783703763
#>     Attrib V32    0.03227996642956312
#>     Attrib V33    0.2580209982167842
#>     Attrib V34    -0.0014207444863735368
#>     Attrib V35    0.2613128155996493
#>     Attrib V36    -0.01634776316911044
#>     Attrib V37    -0.1900553943097352
#>     Attrib V38    0.13175598441577402
#>     Attrib V39    0.07752345721235111
#>     Attrib V4    0.20685896130534506
#>     Attrib V40    -0.08063410758238349
#>     Attrib V41    -0.14712581586815449
#>     Attrib V42    -0.012884390153989813
#>     Attrib V43    0.01048031747414125
#>     Attrib V44    0.058440003578924864
#>     Attrib V45    0.11228202900284431
#>     Attrib V46    0.03659281332647342
#>     Attrib V47    -0.07671736819386339
#>     Attrib V48    0.16850759533546278
#>     Attrib V49    0.10720875079904822
#>     Attrib V5    -0.06495063688548798
#>     Attrib V50    -0.11121157277188584
#>     Attrib V51    0.048382435373087194
#>     Attrib V52    0.18784739933181577
#>     Attrib V53    0.11189314260399073
#>     Attrib V54    0.21734750490313645
#>     Attrib V55    0.025194075182382654
#>     Attrib V56    0.11320867162107541
#>     Attrib V57    0.14930806728726348
#>     Attrib V58    0.17364145166907677
#>     Attrib V59    0.41296086097484647
#>     Attrib V6    -0.2614801491180774
#>     Attrib V60    0.28146538211512956
#>     Attrib V7    -0.015813021001306892
#>     Attrib V8    -0.07585283912133563
#>     Attrib V9    0.12346484925914378
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5132994140402265
#>     Attrib V1    0.6440751173511375
#>     Attrib V10    0.3652526600819004
#>     Attrib V11    0.3867426164264443
#>     Attrib V12    0.4268012612016392
#>     Attrib V13    0.14211805960871082
#>     Attrib V14    -0.19876194697059213
#>     Attrib V15    -0.22082834747341804
#>     Attrib V16    -0.5673202904304216
#>     Attrib V17    -0.5253277928254252
#>     Attrib V18    0.10822267051117859
#>     Attrib V19    -0.16238983521800854
#>     Attrib V2    0.23913143767034853
#>     Attrib V20    0.1577965632232327
#>     Attrib V21    0.369166648912602
#>     Attrib V22    0.3966619476217841
#>     Attrib V23    0.2322192143486806
#>     Attrib V24    0.045505530654277364
#>     Attrib V25    -0.42066097256081825
#>     Attrib V26    0.01637258223432253
#>     Attrib V27    0.3790282530132624
#>     Attrib V28    0.7051625706998772
#>     Attrib V29    0.2005895390435694
#>     Attrib V3    -0.43671316128576465
#>     Attrib V30    0.19610289058936337
#>     Attrib V31    -0.6239667396621391
#>     Attrib V32    0.2453427837063432
#>     Attrib V33    0.18089656754930944
#>     Attrib V34    -0.13239527442706006
#>     Attrib V35    0.649924793148027
#>     Attrib V36    -0.36739154579757344
#>     Attrib V37    -0.47700366201915023
#>     Attrib V38    0.06808283892674075
#>     Attrib V39    0.05121534318627785
#>     Attrib V4    0.12530984476397017
#>     Attrib V40    -0.02451650053174799
#>     Attrib V41    0.0022512779486901138
#>     Attrib V42    -0.1682355671721072
#>     Attrib V43    -0.029978044564058583
#>     Attrib V44    0.04052235132948956
#>     Attrib V45    0.29552032173691334
#>     Attrib V46    0.2606265567728704
#>     Attrib V47    0.3234775175202378
#>     Attrib V48    0.6855730964800401
#>     Attrib V49    0.39672370746844243
#>     Attrib V5    -0.07836535823371606
#>     Attrib V50    -0.1068933698323875
#>     Attrib V51    0.3998883953604917
#>     Attrib V52    0.514008054674748
#>     Attrib V53    0.36873783911742264
#>     Attrib V54    0.29937688014638286
#>     Attrib V55    -0.6491988507949499
#>     Attrib V56    -0.44964856366512046
#>     Attrib V57    -0.43807700442855607
#>     Attrib V58    0.08707914951643816
#>     Attrib V59    0.20243084620393284
#>     Attrib V6    -0.2983086050219594
#>     Attrib V60    0.09243113964670921
#>     Attrib V7    -0.20214433899713508
#>     Attrib V8    -0.4379441295385186
#>     Attrib V9    0.8888669977531833
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.39344408367715633
#>     Attrib V1    0.052493775882907295
#>     Attrib V10    -0.9914265168640107
#>     Attrib V11    -1.1122882968571712
#>     Attrib V12    -2.1840567177428456
#>     Attrib V13    -1.3568343840354533
#>     Attrib V14    0.6584373482831865
#>     Attrib V15    1.3406102911737983
#>     Attrib V16    1.9738925173706603
#>     Attrib V17    0.6904183106353795
#>     Attrib V18    -0.6186043526409329
#>     Attrib V19    -0.06961008679016133
#>     Attrib V2    -0.3913632104965766
#>     Attrib V20    0.15001024057577558
#>     Attrib V21    -0.340498917676547
#>     Attrib V22    -1.5810267532008482
#>     Attrib V23    -2.0492697572626666
#>     Attrib V24    -0.8823242431821652
#>     Attrib V25    0.48856776428286824
#>     Attrib V26    -0.3768082072798561
#>     Attrib V27    -1.8382732892469407
#>     Attrib V28    -1.470494728101877
#>     Attrib V29    0.2298616781144243
#>     Attrib V3    0.5755045723437456
#>     Attrib V30    0.015987430696015614
#>     Attrib V31    0.47745756253638694
#>     Attrib V32    -0.28361867822963627
#>     Attrib V33    0.6958829708045031
#>     Attrib V34    0.6170249944927516
#>     Attrib V35    -1.1276539287663792
#>     Attrib V36    1.2440037447903902
#>     Attrib V37    0.9893593283569199
#>     Attrib V38    0.538947112607353
#>     Attrib V39    -0.2433907083880744
#>     Attrib V4    -0.08334561409649101
#>     Attrib V40    -1.3355928663954226
#>     Attrib V41    -1.3121893774488724
#>     Attrib V42    0.1006426570139247
#>     Attrib V43    -0.3557908530199546
#>     Attrib V44    0.07263625776200333
#>     Attrib V45    0.20158697883307355
#>     Attrib V46    -0.7080678822984321
#>     Attrib V47    -1.5877420712027153
#>     Attrib V48    -1.7040765016070676
#>     Attrib V49    -0.9851436101620383
#>     Attrib V5    -0.584112600450076
#>     Attrib V50    -0.36687912486897556
#>     Attrib V51    -1.5644568876584306
#>     Attrib V52    -1.5370437556412624
#>     Attrib V53    -1.4028458517487015
#>     Attrib V54    0.07744527980812908
#>     Attrib V55    1.5194283825730917
#>     Attrib V56    0.7317543191379631
#>     Attrib V57    1.544933382187138
#>     Attrib V58    -0.04356601153844082
#>     Attrib V59    0.40385784462210983
#>     Attrib V6    -0.08894900045249952
#>     Attrib V60    -0.19899734949389736
#>     Attrib V7    0.7692788410879985
#>     Attrib V8    1.670978251774097
#>     Attrib V9    -1.6952740985267445
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.1627164843421765
#>     Attrib V1    0.4550449790738887
#>     Attrib V10    -0.339324703245063
#>     Attrib V11    -0.11882975933246098
#>     Attrib V12    -0.1349414606563128
#>     Attrib V13    -0.31849817070232567
#>     Attrib V14    0.11686636742264173
#>     Attrib V15    0.322399658066107
#>     Attrib V16    0.2846149952639367
#>     Attrib V17    0.15040583078230568
#>     Attrib V18    0.32161014381893616
#>     Attrib V19    0.1354092971166331
#>     Attrib V2    0.1241896045001445
#>     Attrib V20    0.36091534466761355
#>     Attrib V21    0.17100405892753628
#>     Attrib V22    -0.05055629034516159
#>     Attrib V23    -0.04319293922691219
#>     Attrib V24    0.2210893665374553
#>     Attrib V25    -0.21818570215318864
#>     Attrib V26    -0.61445524248158
#>     Attrib V27    -0.5867876361176014
#>     Attrib V28    -0.12534484435237836
#>     Attrib V29    -0.1852308227536125
#>     Attrib V3    -0.15567836674885688
#>     Attrib V30    -0.06660381899272141
#>     Attrib V31    -0.5796756414871482
#>     Attrib V32    0.26568361046540784
#>     Attrib V33    0.4954185036952375
#>     Attrib V34    0.03009744379517722
#>     Attrib V35    0.31320378661222353
#>     Attrib V36    -0.2217474307330274
#>     Attrib V37    -0.5721584874780793
#>     Attrib V38    0.15135637247715758
#>     Attrib V39    0.04624162452319554
#>     Attrib V4    0.17900678317329108
#>     Attrib V40    -0.17395499146514345
#>     Attrib V41    -0.2019520535970547
#>     Attrib V42    -0.002609443251853654
#>     Attrib V43    0.10036603807318581
#>     Attrib V44    0.06237037916025311
#>     Attrib V45    0.2568945402520742
#>     Attrib V46    0.06638770556406696
#>     Attrib V47    -0.1208883421332219
#>     Attrib V48    0.2106817333104652
#>     Attrib V49    0.21505774263708782
#>     Attrib V5    -0.14736346814220683
#>     Attrib V50    -0.2321506528515312
#>     Attrib V51    0.06384107355179741
#>     Attrib V52    0.3368820877747581
#>     Attrib V53    0.17582846810517694
#>     Attrib V54    0.4201815812037143
#>     Attrib V55    -0.03421781626178623
#>     Attrib V56    0.1694370071944593
#>     Attrib V57    0.09715496014844385
#>     Attrib V58    0.2579864096631806
#>     Attrib V59    0.6934841277915187
#>     Attrib V6    -0.4394943688000946
#>     Attrib V60    0.3006509249103056
#>     Attrib V7    0.0773114852424711
#>     Attrib V8    -0.1241687121196752
#>     Attrib V9    0.20095252178142042
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.03097150854729161
#>     Attrib V1    0.28193594447274867
#>     Attrib V10    -0.07043368127254417
#>     Attrib V11    -0.04023096528364538
#>     Attrib V12    0.0027381199750793053
#>     Attrib V13    -0.07465285664538533
#>     Attrib V14    0.043005545526110155
#>     Attrib V15    0.16698570451124717
#>     Attrib V16    0.109130943017331
#>     Attrib V17    0.0930049326253167
#>     Attrib V18    0.13685248022486643
#>     Attrib V19    0.0049493918527421885
#>     Attrib V2    0.13460899976909058
#>     Attrib V20    0.08600275229042466
#>     Attrib V21    0.057031067697550904
#>     Attrib V22    -0.05043444015049133
#>     Attrib V23    0.014537963464503539
#>     Attrib V24    0.07210479104186159
#>     Attrib V25    -0.07943821319306787
#>     Attrib V26    -0.19128191555119875
#>     Attrib V27    -0.2183494178554475
#>     Attrib V28    -0.05563814208056537
#>     Attrib V29    -0.19422245372096944
#>     Attrib V3    -0.06544084564562273
#>     Attrib V30    -0.013042999725761709
#>     Attrib V31    -0.26740947345593924
#>     Attrib V32    0.05387475367042158
#>     Attrib V33    0.1623187928343188
#>     Attrib V34    3.0392498026616654E-5
#>     Attrib V35    0.2334922722210851
#>     Attrib V36    -0.06353664353590617
#>     Attrib V37    -0.17273780316172926
#>     Attrib V38    0.06284412350170525
#>     Attrib V39    0.09675188546210399
#>     Attrib V4    0.1642474870749001
#>     Attrib V40    -0.012698883409724639
#>     Attrib V41    -0.07837464248110279
#>     Attrib V42    0.003888627572860811
#>     Attrib V43    -0.022432033977201112
#>     Attrib V44    -0.014551127069437696
#>     Attrib V45    0.07155334596791621
#>     Attrib V46    0.04084043532937894
#>     Attrib V47    -0.05343101290607157
#>     Attrib V48    0.13989679283346923
#>     Attrib V49    0.0703971047252067
#>     Attrib V5    -0.06937220475064101
#>     Attrib V50    -0.11028180987448005
#>     Attrib V51    0.06763964186029721
#>     Attrib V52    0.19479209920560167
#>     Attrib V53    0.1284384384006946
#>     Attrib V54    0.20486125899778715
#>     Attrib V55    -0.01190964656111781
#>     Attrib V56    0.11114665215741021
#>     Attrib V57    0.036757834299990855
#>     Attrib V58    0.16255108284030212
#>     Attrib V59    0.3358511793087956
#>     Attrib V6    -0.23499358090406083
#>     Attrib V60    0.22190901895794335
#>     Attrib V7    -0.03665183600634155
#>     Attrib V8    -0.11688418859184138
#>     Attrib V9    0.12413543974792732
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.25814744440330717
#>     Attrib V1    0.7940152966713535
#>     Attrib V10    -0.5853692965696851
#>     Attrib V11    -0.36855163199858193
#>     Attrib V12    -0.4805883064025944
#>     Attrib V13    -0.5714481255263011
#>     Attrib V14    0.2014440447575323
#>     Attrib V15    0.6851991265763442
#>     Attrib V16    0.6852231877549028
#>     Attrib V17    0.36368710361926954
#>     Attrib V18    0.4450920479765106
#>     Attrib V19    0.31532177166702385
#>     Attrib V2    0.2878784132386409
#>     Attrib V20    0.5598556285960373
#>     Attrib V21    0.08827474089720445
#>     Attrib V22    -0.2663925871158858
#>     Attrib V23    -0.03587268724742242
#>     Attrib V24    0.3439622113886136
#>     Attrib V25    -0.4911837829135311
#>     Attrib V26    -1.0686993826637847
#>     Attrib V27    -1.1791924958451176
#>     Attrib V28    -0.3400235177985824
#>     Attrib V29    -0.33493244378461756
#>     Attrib V3    -0.18806485682937168
#>     Attrib V30    -0.09784476142984588
#>     Attrib V31    -0.8557924616052175
#>     Attrib V32    0.3782303002494862
#>     Attrib V33    0.8591873374615508
#>     Attrib V34    0.15408247506731276
#>     Attrib V35    0.4019749360982577
#>     Attrib V36    -0.34868037388683637
#>     Attrib V37    -0.8740049869018031
#>     Attrib V38    0.25318459020105116
#>     Attrib V39    -0.033450694699998965
#>     Attrib V4    0.33110774191842474
#>     Attrib V40    -0.3755871291307944
#>     Attrib V41    -0.3421875697773507
#>     Attrib V42    0.1745206993919863
#>     Attrib V43    0.13951927686992943
#>     Attrib V44    0.17609558904435915
#>     Attrib V45    0.295908332560531
#>     Attrib V46    0.05701067479203725
#>     Attrib V47    -0.37771592752916494
#>     Attrib V48    0.15402294083338444
#>     Attrib V49    0.3170833301984646
#>     Attrib V5    -0.20503448150733317
#>     Attrib V50    -0.4706550475159471
#>     Attrib V51    -0.06479780134445313
#>     Attrib V52    0.3615539772014699
#>     Attrib V53    0.2537450640412042
#>     Attrib V54    0.6803787888011561
#>     Attrib V55    -0.047045782190634676
#>     Attrib V56    0.34936894010183045
#>     Attrib V57    0.27547014641163214
#>     Attrib V58    0.44265755356567177
#>     Attrib V59    1.1762287341600233
#>     Attrib V6    -0.5627329577003443
#>     Attrib V60    0.45991047700362553
#>     Attrib V7    0.26546595661371036
#>     Attrib V8    -0.11350682374145775
#>     Attrib V9    0.15639741481937203
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.05014056450337391
#>     Attrib V1    0.4700323884902682
#>     Attrib V10    -0.37012492479370773
#>     Attrib V11    -0.2025253172957234
#>     Attrib V12    -0.23037538208354424
#>     Attrib V13    -0.37551523945613435
#>     Attrib V14    0.15010067897405746
#>     Attrib V15    0.38246137908471584
#>     Attrib V16    0.38267660139726384
#>     Attrib V17    0.1802111120944784
#>     Attrib V18    0.3599136049177477
#>     Attrib V19    0.13246298123504074
#>     Attrib V2    0.1505750537834662
#>     Attrib V20    0.3182143728748376
#>     Attrib V21    0.133176016207336
#>     Attrib V22    -0.13794768277888558
#>     Attrib V23    -0.022065728975388568
#>     Attrib V24    0.115933836092211
#>     Attrib V25    -0.33619553059996293
#>     Attrib V26    -0.6032517700244548
#>     Attrib V27    -0.5908753434221063
#>     Attrib V28    -0.1514417495990163
#>     Attrib V29    -0.19845322459539516
#>     Attrib V3    -0.058388900086068195
#>     Attrib V30    0.006937374640066383
#>     Attrib V31    -0.577816951818079
#>     Attrib V32    0.15170417576828302
#>     Attrib V33    0.446445083431034
#>     Attrib V34    0.05054211565991439
#>     Attrib V35    0.2676522113484938
#>     Attrib V36    -0.09484307642152205
#>     Attrib V37    -0.4512951955971772
#>     Attrib V38    0.11534362561254852
#>     Attrib V39    0.04362408884725543
#>     Attrib V4    0.19193135155723492
#>     Attrib V40    -0.1854435239468669
#>     Attrib V41    -0.24077256383158252
#>     Attrib V42    0.07005888293550847
#>     Attrib V43    0.0134374279486569
#>     Attrib V44    0.11584101131921416
#>     Attrib V45    0.2019928886110603
#>     Attrib V46    0.0480510682731768
#>     Attrib V47    -0.16482585968219682
#>     Attrib V48    0.10838724648164887
#>     Attrib V49    0.22343086098096251
#>     Attrib V5    -0.09418924682055632
#>     Attrib V50    -0.2474550942513595
#>     Attrib V51    0.03964435108656432
#>     Attrib V52    0.2790970513663599
#>     Attrib V53    0.16167277360910084
#>     Attrib V54    0.32805849079111754
#>     Attrib V55    -0.006756044904465133
#>     Attrib V56    0.18526227554020758
#>     Attrib V57    0.16372940348831946
#>     Attrib V58    0.31708071297859947
#>     Attrib V59    0.6036993826110916
#>     Attrib V6    -0.38420086223523625
#>     Attrib V60    0.2767346224235651
#>     Attrib V7    0.07786230075143168
#>     Attrib V8    -0.075630368592855
#>     Attrib V9    0.1470364494829294
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
#>  0.2318841 
```
