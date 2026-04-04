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
#>     Threshold    -0.49330446462968425
#>     Node 2    1.6439905047664363
#>     Node 3    1.6118705072134663
#>     Node 4    0.8018704905533008
#>     Node 5    -1.914486754037772
#>     Node 6    1.2306093069986548
#>     Node 7    3.3138125408307175
#>     Node 8    1.0447066454651344
#>     Node 9    2.5706329176416425
#>     Node 10    -1.9859115881253153
#>     Node 11    1.9127635989951528
#>     Node 12    1.4167404031256214
#>     Node 13    0.9249351989535167
#>     Node 14    2.1485704876295824
#>     Node 15    -2.3323827321794397
#>     Node 16    0.5561530682863604
#>     Node 17    0.44965777406453705
#>     Node 18    0.5136832658486014
#>     Node 19    2.0894887001248534
#>     Node 20    1.649374927320765
#>     Node 21    -2.684868251867383
#>     Node 22    1.316164072511725
#>     Node 23    1.9108478596648901
#>     Node 24    -0.771016388686793
#>     Node 25    3.3422093532397468
#>     Node 26    0.13245800886730857
#>     Node 27    2.3439892872429686
#>     Node 28    -2.211265531219816
#>     Node 29    1.3931430776229332
#>     Node 30    -1.9986518647759512
#>     Node 31    1.7782658627735641
#>     Node 32    0.3720713253586912
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.5303467241562829
#>     Node 2    -1.6852048041490884
#>     Node 3    -1.5940441468836013
#>     Node 4    -0.758406626636403
#>     Node 5    1.9232857000309542
#>     Node 6    -1.207918323905092
#>     Node 7    -3.310749976067137
#>     Node 8    -1.0679075990536961
#>     Node 9    -2.570366350276847
#>     Node 10    1.9128474224651852
#>     Node 11    -1.8835741982349163
#>     Node 12    -1.4806844479937107
#>     Node 13    -0.8695147157549861
#>     Node 14    -2.089204542059466
#>     Node 15    2.312796298695749
#>     Node 16    -0.5713202163152628
#>     Node 17    -0.411771976228475
#>     Node 18    -0.47044178951577226
#>     Node 19    -2.0913929414404486
#>     Node 20    -1.6300702161725553
#>     Node 21    2.7316996041038597
#>     Node 22    -1.3720878642251304
#>     Node 23    -1.9595500776870134
#>     Node 24    0.7659775050351878
#>     Node 25    -3.329094134797624
#>     Node 26    -0.21098926731677511
#>     Node 27    -2.397099262383754
#>     Node 28    2.1553256864260915
#>     Node 29    -1.4180197646859363
#>     Node 30    2.071914788758101
#>     Node 31    -1.7263961782447883
#>     Node 32    -0.3871734836428291
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.4284400988147462
#>     Attrib V1    0.13291649907730715
#>     Attrib V10    0.2464782039921026
#>     Attrib V11    0.1670407800351677
#>     Attrib V12    0.4439388913331775
#>     Attrib V13    0.1675625984333467
#>     Attrib V14    -0.11181949701022148
#>     Attrib V15    0.10713106743116381
#>     Attrib V16    -0.47314711205771887
#>     Attrib V17    -0.1347771582354205
#>     Attrib V18    -0.2692826069751881
#>     Attrib V19    0.5272202754174353
#>     Attrib V2    -0.20498552064375192
#>     Attrib V20    0.45236799848906284
#>     Attrib V21    0.44645346527806196
#>     Attrib V22    0.26830870985157285
#>     Attrib V23    0.4177865195903865
#>     Attrib V24    0.6229240782219722
#>     Attrib V25    -0.3855600427786723
#>     Attrib V26    -0.26737909732102744
#>     Attrib V27    0.14002467458248222
#>     Attrib V28    -0.044224899738045255
#>     Attrib V29    -0.4417498653712911
#>     Attrib V3    0.05470239578194409
#>     Attrib V30    0.23838877488100008
#>     Attrib V31    -0.8663373980429347
#>     Attrib V32    0.10468567128888102
#>     Attrib V33    0.30436625240884135
#>     Attrib V34    -0.1233566909757678
#>     Attrib V35    0.07527498687289384
#>     Attrib V36    -0.7414914414773586
#>     Attrib V37    -0.4973086639066857
#>     Attrib V38    0.6254865290762577
#>     Attrib V39    0.16102182427273382
#>     Attrib V4    0.0714596754933049
#>     Attrib V40    -0.3495047166109195
#>     Attrib V41    -0.019052359057805456
#>     Attrib V42    -0.012023914171420543
#>     Attrib V43    0.4710675380155928
#>     Attrib V44    0.3303964627612763
#>     Attrib V45    0.15899104125853858
#>     Attrib V46    0.1316428373661176
#>     Attrib V47    0.20527179548041055
#>     Attrib V48    0.09158757602618159
#>     Attrib V49    0.7814014501022537
#>     Attrib V5    0.36141276774514325
#>     Attrib V50    -0.7763491859467164
#>     Attrib V51    -0.0249937761942889
#>     Attrib V52    -0.1729193721733098
#>     Attrib V53    0.0748065954034829
#>     Attrib V54    0.4420745935017044
#>     Attrib V55    -0.5302008201207199
#>     Attrib V56    0.5254517623688033
#>     Attrib V57    -0.5008916359491253
#>     Attrib V58    0.2718902384407382
#>     Attrib V59    0.5649813066973761
#>     Attrib V6    -0.17364909951439683
#>     Attrib V60    0.4297769893354431
#>     Attrib V7    -0.1046776066240786
#>     Attrib V8    -0.12958327064347963
#>     Attrib V9    0.6266910905520239
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.262642561457574
#>     Attrib V1    0.20429739357539173
#>     Attrib V10    0.04966007417854849
#>     Attrib V11    -0.05794151317524568
#>     Attrib V12    0.20663348643327523
#>     Attrib V13    0.1483752914882221
#>     Attrib V14    0.030081243186953217
#>     Attrib V15    0.296138391188142
#>     Attrib V16    -0.2737069570937736
#>     Attrib V17    -0.04851446764128425
#>     Attrib V18    -0.29405464059325803
#>     Attrib V19    0.43690850107839657
#>     Attrib V2    -0.09483144746739866
#>     Attrib V20    0.45616176910690776
#>     Attrib V21    0.3497942429178531
#>     Attrib V22    0.2141804678282671
#>     Attrib V23    0.29417888201432707
#>     Attrib V24    0.4282992485333874
#>     Attrib V25    -0.37449779973552905
#>     Attrib V26    -0.4466006905561274
#>     Attrib V27    -0.22017742308838636
#>     Attrib V28    -0.5052716658843383
#>     Attrib V29    -0.7887005434274786
#>     Attrib V3    0.15215671664316596
#>     Attrib V30    0.0545641532815544
#>     Attrib V31    -0.6941826698643255
#>     Attrib V32    0.06929772218623127
#>     Attrib V33    0.4230797360337685
#>     Attrib V34    -0.01484430175052048
#>     Attrib V35    0.038699787613781365
#>     Attrib V36    -0.5698974324095306
#>     Attrib V37    -0.44267237134625587
#>     Attrib V38    0.5101090283999191
#>     Attrib V39    0.22623190162882162
#>     Attrib V4    0.07743674373265207
#>     Attrib V40    -0.22859993604208195
#>     Attrib V41    -0.13862015133574976
#>     Attrib V42    -0.019911369690927286
#>     Attrib V43    0.3751244322962399
#>     Attrib V44    0.2387485841772166
#>     Attrib V45    0.09570223110432033
#>     Attrib V46    -0.0512227556379992
#>     Attrib V47    0.07547775667040663
#>     Attrib V48    0.11347636849175216
#>     Attrib V49    0.5894679080156336
#>     Attrib V5    0.15566710834290778
#>     Attrib V50    -0.6323899861339877
#>     Attrib V51    -0.17661301223226378
#>     Attrib V52    -0.279809769325199
#>     Attrib V53    -0.009134389343486277
#>     Attrib V54    0.5540164194280965
#>     Attrib V55    -0.32769722392388784
#>     Attrib V56    0.781508076191831
#>     Attrib V57    -0.19202252476232967
#>     Attrib V58    0.38252516017901805
#>     Attrib V59    0.6587394741363322
#>     Attrib V6    -0.20161685831159007
#>     Attrib V60    0.43789236457780945
#>     Attrib V7    -0.05613285688633593
#>     Attrib V8    -0.045739127413093876
#>     Attrib V9    0.41371927371158485
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.043502360902336744
#>     Attrib V1    0.13653822431989898
#>     Attrib V10    -0.033089759315742054
#>     Attrib V11    -0.07407185654155898
#>     Attrib V12    0.03699101657694761
#>     Attrib V13    0.08280572626701044
#>     Attrib V14    0.11785724371954323
#>     Attrib V15    0.2402341046721169
#>     Attrib V16    -0.06169932436740958
#>     Attrib V17    0.013329644170486453
#>     Attrib V18    -0.11489866076554307
#>     Attrib V19    0.15790276184533122
#>     Attrib V2    -0.00927558976348006
#>     Attrib V20    0.21017822309951742
#>     Attrib V21    0.20978669404911554
#>     Attrib V22    0.0045543006287942795
#>     Attrib V23    0.01514151154018735
#>     Attrib V24    0.06423738950785762
#>     Attrib V25    -0.30879507931464945
#>     Attrib V26    -0.29667134576738546
#>     Attrib V27    -0.15899207136253132
#>     Attrib V28    -0.11260268136087695
#>     Attrib V29    -0.1595201810035529
#>     Attrib V3    0.13544369626501207
#>     Attrib V30    0.01268650943673099
#>     Attrib V31    -0.3538339158779049
#>     Attrib V32    -0.09610270821026118
#>     Attrib V33    0.06871943702791161
#>     Attrib V34    -0.06812806393441186
#>     Attrib V35    0.021304253493879082
#>     Attrib V36    -0.23314323203051604
#>     Attrib V37    -0.08563646786491103
#>     Attrib V38    0.2782077057550841
#>     Attrib V39    0.1587724027398571
#>     Attrib V4    0.07565018172064984
#>     Attrib V40    -0.08081303545429598
#>     Attrib V41    -0.04130800213862113
#>     Attrib V42    0.03674595933339155
#>     Attrib V43    0.15863985772362693
#>     Attrib V44    0.15161657555056707
#>     Attrib V45    0.18913801662021998
#>     Attrib V46    0.056605179675569446
#>     Attrib V47    0.052269550957725425
#>     Attrib V48    0.06769127624055372
#>     Attrib V49    0.2655326986234017
#>     Attrib V5    0.17896852245666506
#>     Attrib V50    -0.18405820124346794
#>     Attrib V51    -0.02115305803278826
#>     Attrib V52    -0.07330848607766348
#>     Attrib V53    0.13179556196098782
#>     Attrib V54    0.20907913732383454
#>     Attrib V55    -0.08922363754329841
#>     Attrib V56    0.35034768072610917
#>     Attrib V57    0.03782162235744113
#>     Attrib V58    0.1331847718902699
#>     Attrib V59    0.3523982341581249
#>     Attrib V6    -0.03161931060273593
#>     Attrib V60    0.2563367569675346
#>     Attrib V7    0.045408082792022776
#>     Attrib V8    -0.08112911785536207
#>     Attrib V9    0.12988995440996362
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.36173206670065877
#>     Attrib V1    -0.1440402524109993
#>     Attrib V10    -0.31416443741632205
#>     Attrib V11    -0.2045380323733525
#>     Attrib V12    -0.4689820753807445
#>     Attrib V13    -0.1837231529772659
#>     Attrib V14    0.19539065629735028
#>     Attrib V15    -0.04169251844861255
#>     Attrib V16    0.5017643795961565
#>     Attrib V17    0.17175938979155259
#>     Attrib V18    0.33301761953656545
#>     Attrib V19    -0.6280208562524533
#>     Attrib V2    0.16192070060752417
#>     Attrib V20    -0.6561148137725503
#>     Attrib V21    -0.5796743957300604
#>     Attrib V22    -0.3821468606232388
#>     Attrib V23    -0.4582340575191601
#>     Attrib V24    -0.6795436376359255
#>     Attrib V25    0.5571026214450953
#>     Attrib V26    0.3177276238134228
#>     Attrib V27    -0.1169809146248798
#>     Attrib V28    0.15211436278791035
#>     Attrib V29    0.561154707439962
#>     Attrib V3    -0.10114120198085665
#>     Attrib V30    -0.22338937612530801
#>     Attrib V31    0.9833120480700133
#>     Attrib V32    0.018104574677890114
#>     Attrib V33    -0.33600484012062054
#>     Attrib V34    0.09590216572993673
#>     Attrib V35    -0.12790492572389195
#>     Attrib V36    0.6882849667582939
#>     Attrib V37    0.3920602914331423
#>     Attrib V38    -0.8093802396347117
#>     Attrib V39    -0.2604752784606321
#>     Attrib V4    -0.16671395682730017
#>     Attrib V40    0.43943323060888084
#>     Attrib V41    0.11286073312795464
#>     Attrib V42    0.0990950883880631
#>     Attrib V43    -0.5094975444462976
#>     Attrib V44    -0.38121350551003264
#>     Attrib V45    -0.32305533140973147
#>     Attrib V46    -0.308755440151222
#>     Attrib V47    -0.20312561000854085
#>     Attrib V48    0.0022671207191670307
#>     Attrib V49    -0.9480957980996682
#>     Attrib V5    -0.29563043120153687
#>     Attrib V50    0.8761195030491803
#>     Attrib V51    0.21787665335627762
#>     Attrib V52    0.2418930736007335
#>     Attrib V53    -0.07927213497915851
#>     Attrib V54    -0.3331145022302468
#>     Attrib V55    0.6678725269088489
#>     Attrib V56    -0.5589168472700203
#>     Attrib V57    0.5135918262041397
#>     Attrib V58    -0.34364160496462104
#>     Attrib V59    -0.5130990863868955
#>     Attrib V6    0.21521668970031466
#>     Attrib V60    -0.43744580957091844
#>     Attrib V7    0.23361369262775394
#>     Attrib V8    0.23332910302743923
#>     Attrib V9    -0.8233969385721623
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.19501400767143348
#>     Attrib V1    0.2640185753524761
#>     Attrib V10    -0.08964289565986322
#>     Attrib V11    -0.10655287902953589
#>     Attrib V12    0.10803338970648663
#>     Attrib V13    0.07091448245779716
#>     Attrib V14    0.07877545310899994
#>     Attrib V15    0.2590169892997134
#>     Attrib V16    -0.052627261863404655
#>     Attrib V17    0.016205849438493874
#>     Attrib V18    -0.11765278905543657
#>     Attrib V19    0.2797629184331563
#>     Attrib V2    -0.021631994104388486
#>     Attrib V20    0.3716360967456065
#>     Attrib V21    0.30275646016777863
#>     Attrib V22    0.0774914046344797
#>     Attrib V23    0.1490059863230521
#>     Attrib V24    0.3200153313442023
#>     Attrib V25    -0.27254803021401525
#>     Attrib V26    -0.42284746290790254
#>     Attrib V27    -0.23389502867779075
#>     Attrib V28    -0.4444114539277506
#>     Attrib V29    -0.5240570296870135
#>     Attrib V3    0.15642144847621703
#>     Attrib V30    -0.015578115486565125
#>     Attrib V31    -0.5572302437665221
#>     Attrib V32    -0.03758667639962193
#>     Attrib V33    0.24672850648796552
#>     Attrib V34    -0.03017649427146332
#>     Attrib V35    0.052383753081493754
#>     Attrib V36    -0.3708440987924856
#>     Attrib V37    -0.23618234865032092
#>     Attrib V38    0.44066760563822116
#>     Attrib V39    0.1749802538889169
#>     Attrib V4    0.11844500515073783
#>     Attrib V40    -0.19452305638133888
#>     Attrib V41    -0.059007362582662405
#>     Attrib V42    0.022199171693072027
#>     Attrib V43    0.25584670055834174
#>     Attrib V44    0.1462795051344285
#>     Attrib V45    0.12096115585601298
#>     Attrib V46    -0.007950116713838667
#>     Attrib V47    -0.009506620286913568
#>     Attrib V48    0.026070806018607312
#>     Attrib V49    0.3443479934087264
#>     Attrib V5    0.14890198520321019
#>     Attrib V50    -0.3935615546025118
#>     Attrib V51    -0.14879869392729472
#>     Attrib V52    -0.2489168923400253
#>     Attrib V53    0.15262267476647998
#>     Attrib V54    0.3741015893476519
#>     Attrib V55    -0.2404656108081639
#>     Attrib V56    0.6364951804934187
#>     Attrib V57    -0.007883833766371298
#>     Attrib V58    0.27240103215280964
#>     Attrib V59    0.6008079990106018
#>     Attrib V6    -0.02260435683120499
#>     Attrib V60    0.4354358881546682
#>     Attrib V7    0.06471967622279562
#>     Attrib V8    -0.003225036039414952
#>     Attrib V9    0.2845554711644013
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.7791188639506307
#>     Attrib V1    0.1914415326245266
#>     Attrib V10    0.9779180709090997
#>     Attrib V11    0.7062354979176543
#>     Attrib V12    0.5855555459926638
#>     Attrib V13    -0.055315138537913665
#>     Attrib V14    -0.4726569362552044
#>     Attrib V15    -0.0862356144104554
#>     Attrib V16    -0.5481557060574176
#>     Attrib V17    -0.4974309193909674
#>     Attrib V18    -0.2889214926517566
#>     Attrib V19    0.19849383764601305
#>     Attrib V2    -0.09085181550519222
#>     Attrib V20    -0.012663955378018055
#>     Attrib V21    0.6055909947104875
#>     Attrib V22    0.3802078850697116
#>     Attrib V23    0.17385069311878507
#>     Attrib V24    0.18461615725740085
#>     Attrib V25    -0.7234908268269039
#>     Attrib V26    0.2499598800847062
#>     Attrib V27    1.1982547175595497
#>     Attrib V28    1.7182607742640759
#>     Attrib V29    1.2839717235393349
#>     Attrib V3    -0.23022079677825455
#>     Attrib V30    0.7982002656396983
#>     Attrib V31    -0.7789556114925336
#>     Attrib V32    -0.2746099327575213
#>     Attrib V33    -0.6626274730183344
#>     Attrib V34    -0.880555464163864
#>     Attrib V35    0.07680690855275621
#>     Attrib V36    -0.9526984941176949
#>     Attrib V37    0.05046567753797119
#>     Attrib V38    0.31408677749909714
#>     Attrib V39    -0.22989977327964203
#>     Attrib V4    0.17682829247416032
#>     Attrib V40    -0.2639495417707888
#>     Attrib V41    0.9234302152960132
#>     Attrib V42    0.08058245644672668
#>     Attrib V43    0.4169731488322658
#>     Attrib V44    0.6798905241412129
#>     Attrib V45    0.7774719325265526
#>     Attrib V46    1.336737400278295
#>     Attrib V47    1.0044078972957835
#>     Attrib V48    -0.01977257171941928
#>     Attrib V49    0.8711390301520596
#>     Attrib V5    0.8118193586018368
#>     Attrib V50    -0.04946406333600696
#>     Attrib V51    0.7807482597589385
#>     Attrib V52    0.5269405163263088
#>     Attrib V53    0.33219088225157883
#>     Attrib V54    0.02987109197441331
#>     Attrib V55    -0.37705899673546933
#>     Attrib V56    -0.9315905925941919
#>     Attrib V57    -0.2434616997161884
#>     Attrib V58    0.15171336732797355
#>     Attrib V59    -0.20576284486657692
#>     Attrib V6    0.5362974478305769
#>     Attrib V60    0.5005027528486277
#>     Attrib V7    0.33000685560489634
#>     Attrib V8    -0.12007797200244046
#>     Attrib V9    0.9697731099786528
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.29088835414086567
#>     Attrib V1    0.11222160443498537
#>     Attrib V10    0.059728954744629394
#>     Attrib V11    0.01309965753003805
#>     Attrib V12    0.14301721739460307
#>     Attrib V13    0.06257382254695064
#>     Attrib V14    -0.08968592436532993
#>     Attrib V15    0.1279881177106805
#>     Attrib V16    -0.15721662367613948
#>     Attrib V17    -0.0627048623246751
#>     Attrib V18    -0.21493015430909104
#>     Attrib V19    0.2934842414548458
#>     Attrib V2    -0.07852073965332192
#>     Attrib V20    0.2311183893220183
#>     Attrib V21    0.24544334042702173
#>     Attrib V22    0.0825146034128538
#>     Attrib V23    0.13627088945344534
#>     Attrib V24    0.3252997631670705
#>     Attrib V25    -0.24892730595817109
#>     Attrib V26    -0.2010042767911632
#>     Attrib V27    0.00935166227076972
#>     Attrib V28    -0.04650148107797936
#>     Attrib V29    -0.21471669619562947
#>     Attrib V3    0.03504157581793638
#>     Attrib V30    0.12668897013214012
#>     Attrib V31    -0.5105506659044613
#>     Attrib V32    -0.057246902941548626
#>     Attrib V33    0.12617945472211448
#>     Attrib V34    -0.10004807396635533
#>     Attrib V35    0.04080558883570568
#>     Attrib V36    -0.3716603343015895
#>     Attrib V37    -0.21111145399663936
#>     Attrib V38    0.4292587907805644
#>     Attrib V39    0.1317280306965119
#>     Attrib V4    0.1098848347029498
#>     Attrib V40    -0.18260670204416637
#>     Attrib V41    0.00618931611217244
#>     Attrib V42    -0.09773584305041735
#>     Attrib V43    0.20505004848113012
#>     Attrib V44    0.23482054556502277
#>     Attrib V45    0.18738215304796407
#>     Attrib V46    0.1672523671155355
#>     Attrib V47    0.16929221196040298
#>     Attrib V48    0.1119537816215498
#>     Attrib V49    0.43970714621267293
#>     Attrib V5    0.1903331186622954
#>     Attrib V50    -0.441282159368195
#>     Attrib V51    -0.06447239577058161
#>     Attrib V52    -0.12279171148858617
#>     Attrib V53    0.13233059002858247
#>     Attrib V54    0.2908373418452911
#>     Attrib V55    -0.2742294863634255
#>     Attrib V56    0.28448150882551476
#>     Attrib V57    -0.11814341147103845
#>     Attrib V58    0.11428352549874345
#>     Attrib V59    0.40256186233882746
#>     Attrib V6    -0.04697909294075696
#>     Attrib V60    0.3475756870869892
#>     Attrib V7    0.03652217381005598
#>     Attrib V8    -0.14570201722207324
#>     Attrib V9    0.2539946342133812
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.47293898561448444
#>     Attrib V1    -0.02286543755736853
#>     Attrib V10    1.0240929702888681
#>     Attrib V11    0.8097853589503944
#>     Attrib V12    0.8405126761776642
#>     Attrib V13    0.073989581681113
#>     Attrib V14    -0.6432993297862208
#>     Attrib V15    -0.4654800928037863
#>     Attrib V16    -0.7623350520203227
#>     Attrib V17    -0.478009986367181
#>     Attrib V18    -0.3226872107636578
#>     Attrib V19    0.33702882821782726
#>     Attrib V2    -0.21420908554689178
#>     Attrib V20    -0.04579934697326114
#>     Attrib V21    0.3065972838541512
#>     Attrib V22    0.23335575730295882
#>     Attrib V23    0.29363355317098094
#>     Attrib V24    0.6891999144855666
#>     Attrib V25    0.17941455607288412
#>     Attrib V26    0.7283906004709076
#>     Attrib V27    0.978744970928075
#>     Attrib V28    0.944745717841198
#>     Attrib V29    0.253376478121784
#>     Attrib V3    -0.2318706327362166
#>     Attrib V30    0.5208676836201013
#>     Attrib V31    -0.31034349079123036
#>     Attrib V32    0.29109012641710613
#>     Attrib V33    0.12093701441316453
#>     Attrib V34    0.013195781621891823
#>     Attrib V35    0.44587861530081285
#>     Attrib V36    -0.6981512632490444
#>     Attrib V37    -0.33418541711549843
#>     Attrib V38    0.10572459932784892
#>     Attrib V39    -0.08594934355797422
#>     Attrib V4    0.16714703958829724
#>     Attrib V40    -0.16930538053898644
#>     Attrib V41    0.8127635906222835
#>     Attrib V42    -0.10978050870694081
#>     Attrib V43    0.0035970788052324476
#>     Attrib V44    0.0760634833145301
#>     Attrib V45    0.3918782831045713
#>     Attrib V46    0.8682259829761114
#>     Attrib V47    0.8447005084774832
#>     Attrib V48    0.28377823062770363
#>     Attrib V49    1.0525511743901153
#>     Attrib V5    0.6892086959880012
#>     Attrib V50    -0.3044881858216175
#>     Attrib V51    0.8928169987885262
#>     Attrib V52    0.3742631174473956
#>     Attrib V53    0.15442237948826776
#>     Attrib V54    -0.03761814788656249
#>     Attrib V55    -0.15015168308639498
#>     Attrib V56    -0.6713212055974772
#>     Attrib V57    -0.5359018440803185
#>     Attrib V58    0.08850841085675071
#>     Attrib V59    -0.09295947656972318
#>     Attrib V6    0.4726775771961722
#>     Attrib V60    0.37344131816446163
#>     Attrib V7    0.22014218406190122
#>     Attrib V8    0.05297435851362351
#>     Attrib V9    1.052105236136323
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.4426992467430257
#>     Attrib V1    -0.1047254389819898
#>     Attrib V10    -0.29582525898391915
#>     Attrib V11    -0.20879696531298034
#>     Attrib V12    -0.4469348781262604
#>     Attrib V13    -0.16449324663598341
#>     Attrib V14    0.2228785447361204
#>     Attrib V15    -0.14984060621020054
#>     Attrib V16    0.5119285331311791
#>     Attrib V17    0.08590853203728901
#>     Attrib V18    0.34639242649834767
#>     Attrib V19    -0.6006420132873302
#>     Attrib V2    0.14868860545447918
#>     Attrib V20    -0.5489325121078036
#>     Attrib V21    -0.5263582654886032
#>     Attrib V22    -0.3817156642639013
#>     Attrib V23    -0.4935554653592681
#>     Attrib V24    -0.7038264116466296
#>     Attrib V25    0.5258807260687073
#>     Attrib V26    0.3748166530130269
#>     Attrib V27    -0.1064123779526425
#>     Attrib V28    0.18074750082877875
#>     Attrib V29    0.5425134017155634
#>     Attrib V3    -0.11682326732949772
#>     Attrib V30    -0.20821759989062893
#>     Attrib V31    0.9578950721262216
#>     Attrib V32    -0.13876641636121198
#>     Attrib V33    -0.349763015740693
#>     Attrib V34    0.1472419225134977
#>     Attrib V35    -0.09423665244952159
#>     Attrib V36    0.7523866895223599
#>     Attrib V37    0.4875140701701574
#>     Attrib V38    -0.7197990845609653
#>     Attrib V39    -0.2264915008370743
#>     Attrib V4    -0.13161300613453353
#>     Attrib V40    0.46443563264079435
#>     Attrib V41    0.14988484093147855
#>     Attrib V42    0.02848638972787813
#>     Attrib V43    -0.5814741621131698
#>     Attrib V44    -0.39278013900206227
#>     Attrib V45    -0.2142203380278391
#>     Attrib V46    -0.23882033800789215
#>     Attrib V47    -0.2076781088365715
#>     Attrib V48    -0.046331071317497176
#>     Attrib V49    -0.9652238696597805
#>     Attrib V5    -0.3295482541022329
#>     Attrib V50    0.9060383861830894
#>     Attrib V51    0.16194480145380727
#>     Attrib V52    0.23331266479495474
#>     Attrib V53    -0.03681100927274585
#>     Attrib V54    -0.4175901763178468
#>     Attrib V55    0.6497748376222207
#>     Attrib V56    -0.6627135653160828
#>     Attrib V57    0.5403838384883975
#>     Attrib V58    -0.38655141172855667
#>     Attrib V59    -0.5838747111142492
#>     Attrib V6    0.23144080426491367
#>     Attrib V60    -0.5046374537555827
#>     Attrib V7    0.20997483925554403
#>     Attrib V8    0.23430476815504353
#>     Attrib V9    -0.8038776820635333
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.4391839234654556
#>     Attrib V1    0.013324831941080329
#>     Attrib V10    0.7050708346185616
#>     Attrib V11    0.5410511321372863
#>     Attrib V12    0.6364650660127256
#>     Attrib V13    -0.021353812270885432
#>     Attrib V14    -0.4115437665035539
#>     Attrib V15    -0.23360422341895712
#>     Attrib V16    -0.6307085399364408
#>     Attrib V17    -0.3949187472078449
#>     Attrib V18    -0.3492603897747113
#>     Attrib V19    0.2393619643590284
#>     Attrib V2    -0.21751380408454796
#>     Attrib V20    0.009353377420775102
#>     Attrib V21    0.1811141261101352
#>     Attrib V22    0.09179325627740424
#>     Attrib V23    0.14144825428577693
#>     Attrib V24    0.4586876913612707
#>     Attrib V25    -0.04328576628061814
#>     Attrib V26    0.3348198637529066
#>     Attrib V27    0.6993880250398882
#>     Attrib V28    0.7879474483618151
#>     Attrib V29    0.23369129146470233
#>     Attrib V3    -0.22308004467070702
#>     Attrib V30    0.48493928315992757
#>     Attrib V31    -0.3592841397417993
#>     Attrib V32    0.19583777474445915
#>     Attrib V33    0.06103898987000469
#>     Attrib V34    -0.11414694311188547
#>     Attrib V35    0.25050582967324564
#>     Attrib V36    -0.6859772146501436
#>     Attrib V37    -0.33275167674680967
#>     Attrib V38    0.2137792951465728
#>     Attrib V39    -0.04143563963483761
#>     Attrib V4    0.12728225489300904
#>     Attrib V40    -0.1911541573987314
#>     Attrib V41    0.4817313823248009
#>     Attrib V42    -0.027860689037634244
#>     Attrib V43    0.053922527097336956
#>     Attrib V44    0.14228775038538474
#>     Attrib V45    0.3759610904208321
#>     Attrib V46    0.651105245762894
#>     Attrib V47    0.7135846249391833
#>     Attrib V48    0.2965710836238917
#>     Attrib V49    0.8327026786805066
#>     Attrib V5    0.5916712737349302
#>     Attrib V50    -0.3810553229650537
#>     Attrib V51    0.6208871622105058
#>     Attrib V52    0.1643611746993029
#>     Attrib V53    0.024601296375412397
#>     Attrib V54    0.11183520384333118
#>     Attrib V55    -0.21038536507679656
#>     Attrib V56    -0.4006285669902327
#>     Attrib V57    -0.39188280382853946
#>     Attrib V58    0.1257562119050694
#>     Attrib V59    -0.023787192311836576
#>     Attrib V6    0.29874261751440395
#>     Attrib V60    0.359924312653309
#>     Attrib V7    0.09958948578567527
#>     Attrib V8    0.02423914339562393
#>     Attrib V9    0.8003837529299092
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.5600989556212405
#>     Attrib V1    0.04436306190448191
#>     Attrib V10    0.21776639288937635
#>     Attrib V11    0.2242202388196871
#>     Attrib V12    0.3851557950708292
#>     Attrib V13    0.0868682837886437
#>     Attrib V14    -0.17156216114370018
#>     Attrib V15    0.020352544963599287
#>     Attrib V16    -0.477235160793135
#>     Attrib V17    -0.2684229741363593
#>     Attrib V18    -0.3869860786510967
#>     Attrib V19    0.35461791199082926
#>     Attrib V2    -0.1661129336687159
#>     Attrib V20    0.15628036829785882
#>     Attrib V21    0.22353331980665522
#>     Attrib V22    0.11296372279499636
#>     Attrib V23    0.1877428012984058
#>     Attrib V24    0.4076562946271163
#>     Attrib V25    -0.3590413097266081
#>     Attrib V26    -0.12106530718531072
#>     Attrib V27    0.36286158391909773
#>     Attrib V28    0.28599415781627346
#>     Attrib V29    -0.049100467058605386
#>     Attrib V3    -0.15607832819419953
#>     Attrib V30    0.26566857916399456
#>     Attrib V31    -0.6790401841330819
#>     Attrib V32    -0.018321993281557786
#>     Attrib V33    0.11212802810715938
#>     Attrib V34    -0.2261571771046524
#>     Attrib V35    0.04834659019457477
#>     Attrib V36    -0.7531500015466613
#>     Attrib V37    -0.406098909204995
#>     Attrib V38    0.3733354093406011
#>     Attrib V39    0.006752101915793414
#>     Attrib V4    0.0991451236323943
#>     Attrib V40    -0.2656273903078736
#>     Attrib V41    0.16307472404466739
#>     Attrib V42    0.006350643332012082
#>     Attrib V43    0.3210237017504367
#>     Attrib V44    0.13541663104405868
#>     Attrib V45    0.20046368438487477
#>     Attrib V46    0.3709433276353719
#>     Attrib V47    0.40140225527018836
#>     Attrib V48    0.194703942795247
#>     Attrib V49    0.6438391326590439
#>     Attrib V5    0.38240936839094025
#>     Attrib V50    -0.5940152020506002
#>     Attrib V51    0.16348355019900115
#>     Attrib V52    -0.03212090966481588
#>     Attrib V53    0.10171297341546641
#>     Attrib V54    0.3001802603321627
#>     Attrib V55    -0.42638136099706914
#>     Attrib V56    0.12229733147872977
#>     Attrib V57    -0.36200394659940854
#>     Attrib V58    0.17794960838313092
#>     Attrib V59    0.3138768083470391
#>     Attrib V6    -0.05381806093796942
#>     Attrib V60    0.32265922571234856
#>     Attrib V7    -0.04762011874378926
#>     Attrib V8    -0.12621430787165328
#>     Attrib V9    0.52498506044168
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.032801160928911624
#>     Attrib V1    0.18270128589510792
#>     Attrib V10    -0.07700623112615575
#>     Attrib V11    -0.08610461171385984
#>     Attrib V12    0.03807114297168003
#>     Attrib V13    0.12904719315031252
#>     Attrib V14    0.0812934113570484
#>     Attrib V15    0.1807082738866242
#>     Attrib V16    -0.09234537947603791
#>     Attrib V17    0.05295893215045597
#>     Attrib V18    -0.08615414684700033
#>     Attrib V19    0.21515119095212712
#>     Attrib V2    -0.02162699012990025
#>     Attrib V20    0.2928003514288919
#>     Attrib V21    0.2061526371455881
#>     Attrib V22    0.017328998376570173
#>     Attrib V23    0.1161795490910896
#>     Attrib V24    0.20749313838401734
#>     Attrib V25    -0.19826241280069173
#>     Attrib V26    -0.3506550802691054
#>     Attrib V27    -0.1554224439931426
#>     Attrib V28    -0.293760117143033
#>     Attrib V29    -0.31533299840364987
#>     Attrib V3    0.16696289306617262
#>     Attrib V30    -0.014889423050603178
#>     Attrib V31    -0.4484420529919445
#>     Attrib V32    -0.05240251225188891
#>     Attrib V33    0.13463783696757461
#>     Attrib V34    0.029065962494107395
#>     Attrib V35    0.05914338170367317
#>     Attrib V36    -0.2294101689537256
#>     Attrib V37    -0.11284279657915791
#>     Attrib V38    0.36278150831965067
#>     Attrib V39    0.2156515684211874
#>     Attrib V4    0.10309944327817112
#>     Attrib V40    -0.08102331155318046
#>     Attrib V41    -0.04202560465220516
#>     Attrib V42    -0.004485897188934507
#>     Attrib V43    0.13811607721474356
#>     Attrib V44    0.11053213328019257
#>     Attrib V45    0.07774246089792583
#>     Attrib V46    0.06332274794744648
#>     Attrib V47    0.06977041928978008
#>     Attrib V48    0.02880944259881315
#>     Attrib V49    0.2989905216605798
#>     Attrib V5    0.16896542643136614
#>     Attrib V50    -0.29967956208397506
#>     Attrib V51    -0.12055528257911487
#>     Attrib V52    -0.16433824202404979
#>     Attrib V53    0.11775742304824098
#>     Attrib V54    0.25470427517224176
#>     Attrib V55    -0.14075773357465174
#>     Attrib V56    0.4132878407372259
#>     Attrib V57    -0.004080421105401668
#>     Attrib V58    0.159703255361042
#>     Attrib V59    0.4570974133646938
#>     Attrib V6    0.01699692057471149
#>     Attrib V60    0.3563006636503561
#>     Attrib V7    0.10956382308022512
#>     Attrib V8    -0.07611480213470302
#>     Attrib V9    0.14308788354000063
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.496201540356755
#>     Attrib V1    0.06157042534913987
#>     Attrib V10    0.8267753517487032
#>     Attrib V11    0.7057744001037995
#>     Attrib V12    0.805061149889449
#>     Attrib V13    0.008815456821861922
#>     Attrib V14    -0.5400124928403766
#>     Attrib V15    -0.2939327459209874
#>     Attrib V16    -0.7680235547659802
#>     Attrib V17    -0.4767097025993434
#>     Attrib V18    -0.3966746714442032
#>     Attrib V19    0.26936990660916227
#>     Attrib V2    -0.20050305441033553
#>     Attrib V20    -0.10874547974005944
#>     Attrib V21    0.09589531879934908
#>     Attrib V22    0.0696861566924535
#>     Attrib V23    0.1824152612906383
#>     Attrib V24    0.5699474153300275
#>     Attrib V25    0.12089852104086378
#>     Attrib V26    0.5899361306922233
#>     Attrib V27    0.7427126987142127
#>     Attrib V28    0.6166223613133973
#>     Attrib V29    -0.028973749280762184
#>     Attrib V3    -0.27123276989194134
#>     Attrib V30    0.40699696292876314
#>     Attrib V31    -0.2549487287705616
#>     Attrib V32    0.32371974348983196
#>     Attrib V33    0.2136100354588263
#>     Attrib V34    0.004900010053286802
#>     Attrib V35    0.39562573549137053
#>     Attrib V36    -0.7379693130417293
#>     Attrib V37    -0.37509275368820555
#>     Attrib V38    0.07530597645434037
#>     Attrib V39    -0.0416593832724998
#>     Attrib V4    0.12142293440402056
#>     Attrib V40    -0.1689847203458339
#>     Attrib V41    0.5448654615974324
#>     Attrib V42    -0.13615686599953442
#>     Attrib V43    -0.04899827886137749
#>     Attrib V44    0.058233172706822024
#>     Attrib V45    0.23829630406757585
#>     Attrib V46    0.6700299108487934
#>     Attrib V47    0.7376100014938601
#>     Attrib V48    0.42144352041759764
#>     Attrib V49    1.005959240820871
#>     Attrib V5    0.5919972464868054
#>     Attrib V50    -0.4213927302660977
#>     Attrib V51    0.7291795913779671
#>     Attrib V52    0.21721240668397893
#>     Attrib V53    -0.0357286733512747
#>     Attrib V54    0.15824445882183544
#>     Attrib V55    -0.15073011391673022
#>     Attrib V56    -0.4397143351721255
#>     Attrib V57    -0.42909827052612254
#>     Attrib V58    0.15345160225058252
#>     Attrib V59    0.03467044982175914
#>     Attrib V6    0.30991454698552395
#>     Attrib V60    0.44680303673704225
#>     Attrib V7    0.15141923787950706
#>     Attrib V8    -0.061881885676169
#>     Attrib V9    0.8911092127796305
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.43559582816615444
#>     Attrib V1    -0.1815772352795129
#>     Attrib V10    -0.39255880908949836
#>     Attrib V11    -0.3190611202163839
#>     Attrib V12    -0.4607405825283648
#>     Attrib V13    -0.23660625595701804
#>     Attrib V14    0.18182606820371566
#>     Attrib V15    -0.07875487259327539
#>     Attrib V16    0.6048008242102462
#>     Attrib V17    0.13917163329607174
#>     Attrib V18    0.3490363250517066
#>     Attrib V19    -0.7119134265441353
#>     Attrib V2    0.1247344905963587
#>     Attrib V20    -0.701201017655658
#>     Attrib V21    -0.7024969267520802
#>     Attrib V22    -0.4524625724761247
#>     Attrib V23    -0.6705665060017305
#>     Attrib V24    -0.7927259437791628
#>     Attrib V25    0.6051187939880633
#>     Attrib V26    0.4231887357950881
#>     Attrib V27    -0.18031734534633614
#>     Attrib V28    0.2248154722779059
#>     Attrib V29    0.670215976273566
#>     Attrib V3    -0.14433117146313643
#>     Attrib V30    -0.3312950772563064
#>     Attrib V31    1.13546807292894
#>     Attrib V32    -0.06700000372537174
#>     Attrib V33    -0.48196740381577846
#>     Attrib V34    0.15279698173735182
#>     Attrib V35    -0.13034016862400785
#>     Attrib V36    0.8279420728736933
#>     Attrib V37    0.5823945110882186
#>     Attrib V38    -0.9269238617392449
#>     Attrib V39    -0.2641653309699107
#>     Attrib V4    -0.13085286185946582
#>     Attrib V40    0.5320074603250703
#>     Attrib V41    0.22471200547276363
#>     Attrib V42    0.06645710963672358
#>     Attrib V43    -0.6764532516518812
#>     Attrib V44    -0.5338651403414362
#>     Attrib V45    -0.27238834380227006
#>     Attrib V46    -0.17305125705254815
#>     Attrib V47    -0.1563669512884845
#>     Attrib V48    0.007795186310329798
#>     Attrib V49    -1.1204619162208236
#>     Attrib V5    -0.3350897551245625
#>     Attrib V50    1.073487365755914
#>     Attrib V51    0.28788537059256586
#>     Attrib V52    0.26010313970463617
#>     Attrib V53    -0.0223687719668128
#>     Attrib V54    -0.48543052172175966
#>     Attrib V55    0.780347471167285
#>     Attrib V56    -0.758843714148675
#>     Attrib V57    0.6725422311001311
#>     Attrib V58    -0.4470872164517602
#>     Attrib V59    -0.656732823298295
#>     Attrib V6    0.23919139063840178
#>     Attrib V60    -0.5094751971953637
#>     Attrib V7    0.19397817451347507
#>     Attrib V8    0.21708105167413538
#>     Attrib V9    -0.9661774240096715
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.036306659499628066
#>     Attrib V1    0.15881769415165273
#>     Attrib V10    0.020155102066678955
#>     Attrib V11    -0.02729400993765092
#>     Attrib V12    0.04935128688059233
#>     Attrib V13    0.0898692251998359
#>     Attrib V14    0.0442059334819558
#>     Attrib V15    0.1286286244465104
#>     Attrib V16    0.015554351563942971
#>     Attrib V17    0.050305334181325996
#>     Attrib V18    -0.025869248630312137
#>     Attrib V19    0.11316720582972728
#>     Attrib V2    -0.004372163991867234
#>     Attrib V20    0.07917839014070227
#>     Attrib V21    0.04175251589228859
#>     Attrib V22    -0.045625922111693896
#>     Attrib V23    -0.06200813466093118
#>     Attrib V24    0.07972387681095582
#>     Attrib V25    -0.15157803581601098
#>     Attrib V26    -0.23892608424888734
#>     Attrib V27    -0.13377246199556359
#>     Attrib V28    -0.11859390606748446
#>     Attrib V29    -0.1740898332297202
#>     Attrib V3    0.12419898868673193
#>     Attrib V30    -0.03153957186145654
#>     Attrib V31    -0.24727741045694404
#>     Attrib V32    -0.015562754242521732
#>     Attrib V33    0.05600109171108617
#>     Attrib V34    0.011167979496418214
#>     Attrib V35    0.03721016262632812
#>     Attrib V36    -0.15099525330992924
#>     Attrib V37    -0.044145518705554596
#>     Attrib V38    0.22631352004446642
#>     Attrib V39    0.12259008579511074
#>     Attrib V4    0.11279167680181254
#>     Attrib V40    -0.07985044150087332
#>     Attrib V41    -3.9387723445217035E-4
#>     Attrib V42    0.040070620313536906
#>     Attrib V43    0.10170953997841121
#>     Attrib V44    0.0498538176858195
#>     Attrib V45    0.13125457611742267
#>     Attrib V46    0.0978879906822446
#>     Attrib V47    0.06960666316384996
#>     Attrib V48    0.0485659626395083
#>     Attrib V49    0.14354178359556047
#>     Attrib V5    0.13940655624361875
#>     Attrib V50    -0.08349484290800553
#>     Attrib V51    0.02419097327544483
#>     Attrib V52    -0.009468996695140387
#>     Attrib V53    0.13545985007796288
#>     Attrib V54    0.17919274283985454
#>     Attrib V55    0.010006598569561511
#>     Attrib V56    0.2762631526930516
#>     Attrib V57    0.07919128675056064
#>     Attrib V58    0.17495645219936395
#>     Attrib V59    0.24794648336210132
#>     Attrib V6    0.06125493354456488
#>     Attrib V60    0.26477042842690807
#>     Attrib V7    0.08423097916089688
#>     Attrib V8    -0.02702840317521404
#>     Attrib V9    0.1365693147031046
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.03773004706892173
#>     Attrib V1    0.15914070613096584
#>     Attrib V10    0.09351703666720088
#>     Attrib V11    0.03662311603649271
#>     Attrib V12    -0.021386889145747205
#>     Attrib V13    -0.009584723933326548
#>     Attrib V14    0.03984400164303331
#>     Attrib V15    0.16249138639596428
#>     Attrib V16    -0.021349721913418926
#>     Attrib V17    0.0037512497929779653
#>     Attrib V18    -0.07451460407474078
#>     Attrib V19    0.082137336192542
#>     Attrib V2    0.10960279116991971
#>     Attrib V20    0.04154932720507776
#>     Attrib V21    0.0059222476166398514
#>     Attrib V22    0.0061777078003221655
#>     Attrib V23    -0.05289450598824639
#>     Attrib V24    0.04676718713347601
#>     Attrib V25    -0.15386997079891004
#>     Attrib V26    -0.16771790087840047
#>     Attrib V27    -0.07545234137035466
#>     Attrib V28    -0.08406716848020374
#>     Attrib V29    -0.1435614214617928
#>     Attrib V3    0.09875085375107806
#>     Attrib V30    0.054171416373803405
#>     Attrib V31    -0.08461257546716036
#>     Attrib V32    -0.03301089090533248
#>     Attrib V33    0.10582619150920408
#>     Attrib V34    -0.018636780860363633
#>     Attrib V35    0.10219476691204933
#>     Attrib V36    -0.09138276674580548
#>     Attrib V37    -0.038859634612769596
#>     Attrib V38    0.2284043353928729
#>     Attrib V39    0.12244994681128571
#>     Attrib V4    0.1111115015852466
#>     Attrib V40    -0.0591778141729727
#>     Attrib V41    0.03349519441278404
#>     Attrib V42    -0.005885727162345322
#>     Attrib V43    0.09793954104383278
#>     Attrib V44    0.08142221385828922
#>     Attrib V45    0.14268703487267845
#>     Attrib V46    0.06126000447444049
#>     Attrib V47    0.03756188705992931
#>     Attrib V48    0.09914892289542598
#>     Attrib V49    0.10727716976761731
#>     Attrib V5    0.13961643575838006
#>     Attrib V50    -0.07735423058383659
#>     Attrib V51    0.014840977063025309
#>     Attrib V52    -0.019989199895173723
#>     Attrib V53    0.06483144986116189
#>     Attrib V54    0.12173791984751092
#>     Attrib V55    0.05061197233736438
#>     Attrib V56    0.21010559557208672
#>     Attrib V57    0.08928099716039725
#>     Attrib V58    0.07252617486224627
#>     Attrib V59    0.17066127744604917
#>     Attrib V6    0.07732265087710123
#>     Attrib V60    0.22546192857257188
#>     Attrib V7    0.04753697128992797
#>     Attrib V8    0.07574585627291729
#>     Attrib V9    0.13339069481140506
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.09587268621359388
#>     Attrib V1    0.1511861307883696
#>     Attrib V10    0.04411153545510423
#>     Attrib V11    -0.0030176378392945584
#>     Attrib V12    0.005173999967922495
#>     Attrib V13    0.03824118980474282
#>     Attrib V14    0.062227789397861916
#>     Attrib V15    0.09295175199418694
#>     Attrib V16    -0.02787558969117521
#>     Attrib V17    -0.02101163092071723
#>     Attrib V18    -0.012429352085869434
#>     Attrib V19    0.049841795877709955
#>     Attrib V2    0.05569456461538537
#>     Attrib V20    0.10579405632032422
#>     Attrib V21    0.0824775187075873
#>     Attrib V22    -0.03108474410809354
#>     Attrib V23    -0.013983729280126134
#>     Attrib V24    0.02953788043236908
#>     Attrib V25    -0.12717585849272525
#>     Attrib V26    -0.1510338952873182
#>     Attrib V27    -0.08900675338419542
#>     Attrib V28    -0.13442333790884145
#>     Attrib V29    -0.17213747907596016
#>     Attrib V3    0.1559327748195261
#>     Attrib V30    -0.02535110004493674
#>     Attrib V31    -0.19542165159392388
#>     Attrib V32    -0.01715509090153725
#>     Attrib V33    0.08973313389857801
#>     Attrib V34    0.04375729859049778
#>     Attrib V35    0.050470502033097685
#>     Attrib V36    -0.03290620041842556
#>     Attrib V37    -0.052944688538022235
#>     Attrib V38    0.19165548229416368
#>     Attrib V39    0.138923393871974
#>     Attrib V4    0.07546971213051347
#>     Attrib V40    -0.05702420781461655
#>     Attrib V41    -0.02905513600765086
#>     Attrib V42    0.0071751901114405405
#>     Attrib V43    0.08277249205577575
#>     Attrib V44    0.09919941003736692
#>     Attrib V45    0.06783757649332253
#>     Attrib V46    0.0677460791275212
#>     Attrib V47    0.11764511461510092
#>     Attrib V48    0.07409286863572988
#>     Attrib V49    0.19190404698033028
#>     Attrib V5    0.14020011416597267
#>     Attrib V50    -0.14445091684634567
#>     Attrib V51    0.04629207019579374
#>     Attrib V52    -0.040449855384156005
#>     Attrib V53    0.08508391262972506
#>     Attrib V54    0.1257901765464982
#>     Attrib V55    0.020679448505324625
#>     Attrib V56    0.24859809354921014
#>     Attrib V57    -0.008332131494099709
#>     Attrib V58    0.11612450605532261
#>     Attrib V59    0.2706782037295084
#>     Attrib V6    0.02192155020814717
#>     Attrib V60    0.27626664537770096
#>     Attrib V7    0.1158931497807496
#>     Attrib V8    0.05507638496352136
#>     Attrib V9    0.1312773252307906
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.5004011293638136
#>     Attrib V1    0.011577368885067345
#>     Attrib V10    0.7246538448186329
#>     Attrib V11    0.5813346158261649
#>     Attrib V12    0.8077068504668515
#>     Attrib V13    0.07316467243417268
#>     Attrib V14    -0.43787593743592423
#>     Attrib V15    -0.24984319563372132
#>     Attrib V16    -0.7163032860102965
#>     Attrib V17    -0.45699233368464376
#>     Attrib V18    -0.37455143880258707
#>     Attrib V19    0.30381524862866666
#>     Attrib V2    -0.16727640851636888
#>     Attrib V20    -0.09385288214270217
#>     Attrib V21    0.13153382552327395
#>     Attrib V22    0.13858581901154793
#>     Attrib V23    0.144802741773711
#>     Attrib V24    0.5688211854961056
#>     Attrib V25    0.12277011083320656
#>     Attrib V26    0.5379093418437914
#>     Attrib V27    0.7798667749975962
#>     Attrib V28    0.7550952030795093
#>     Attrib V29    0.1512236601768718
#>     Attrib V3    -0.24030322473872925
#>     Attrib V30    0.39405925780550394
#>     Attrib V31    -0.2927534926335517
#>     Attrib V32    0.22347687128693977
#>     Attrib V33    0.12879475110540603
#>     Attrib V34    -0.05899968078168246
#>     Attrib V35    0.37977049414332587
#>     Attrib V36    -0.6671195603946095
#>     Attrib V37    -0.3632494554386213
#>     Attrib V38    0.09968319294002301
#>     Attrib V39    -0.07412009999105104
#>     Attrib V4    0.17938704257528545
#>     Attrib V40    -0.14355899966676544
#>     Attrib V41    0.5820458379553531
#>     Attrib V42    -0.035260830187451665
#>     Attrib V43    -0.020536898635144435
#>     Attrib V44    0.027322999685719183
#>     Attrib V45    0.3602805968948797
#>     Attrib V46    0.7079224400683112
#>     Attrib V47    0.6895600300919347
#>     Attrib V48    0.31432734365211473
#>     Attrib V49    0.9644278232428326
#>     Attrib V5    0.6430883583646642
#>     Attrib V50    -0.38604253616884543
#>     Attrib V51    0.6830886551597029
#>     Attrib V52    0.2593552365244103
#>     Attrib V53    0.08667030943094024
#>     Attrib V54    0.08854474240404427
#>     Attrib V55    -0.1724716936176967
#>     Attrib V56    -0.5283800683919577
#>     Attrib V57    -0.4100731519952299
#>     Attrib V58    0.1589474051068117
#>     Attrib V59    0.04188334792737015
#>     Attrib V6    0.33106665403084123
#>     Attrib V60    0.4125279370140352
#>     Attrib V7    0.1927698330071166
#>     Attrib V8    -0.07163531467444514
#>     Attrib V9    0.8048258325916416
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.5182615577920971
#>     Attrib V1    0.0845440855846661
#>     Attrib V10    0.4387208264181013
#>     Attrib V11    0.3554422601871063
#>     Attrib V12    0.6136409405134058
#>     Attrib V13    0.0731230359296936
#>     Attrib V14    -0.26298771934456755
#>     Attrib V15    -0.08018201096544163
#>     Attrib V16    -0.6276560532388616
#>     Attrib V17    -0.3444501440113554
#>     Attrib V18    -0.3460080873012647
#>     Attrib V19    0.3492171424682125
#>     Attrib V2    -0.20091094664274053
#>     Attrib V20    0.06082710702356355
#>     Attrib V21    0.20488437705851892
#>     Attrib V22    0.10872497859343758
#>     Attrib V23    0.21049512059329514
#>     Attrib V24    0.5256214940285322
#>     Attrib V25    -0.17059186171569732
#>     Attrib V26    0.21366621548733553
#>     Attrib V27    0.6192509579642532
#>     Attrib V28    0.5355875374549608
#>     Attrib V29    0.15173746017380282
#>     Attrib V3    -0.19935971399491398
#>     Attrib V30    0.42049714591061776
#>     Attrib V31    -0.4833898746645868
#>     Attrib V32    0.04617771983325506
#>     Attrib V33    0.01915922159344324
#>     Attrib V34    -0.26478315323981316
#>     Attrib V35    0.1069925632469194
#>     Attrib V36    -0.7079184942032676
#>     Attrib V37    -0.3221797223780143
#>     Attrib V38    0.3287254363241709
#>     Attrib V39    0.008620767919077513
#>     Attrib V4    0.10346205771224143
#>     Attrib V40    -0.2589554627103008
#>     Attrib V41    0.33433609803492814
#>     Attrib V42    -0.03904241200963525
#>     Attrib V43    0.26402673611675453
#>     Attrib V44    0.2486416032997289
#>     Attrib V45    0.2600010079672836
#>     Attrib V46    0.4731746062097293
#>     Attrib V47    0.5343942461682265
#>     Attrib V48    0.2323709514843306
#>     Attrib V49    0.7768311990430079
#>     Attrib V5    0.5567145328219589
#>     Attrib V50    -0.5760206203194692
#>     Attrib V51    0.4063285014135407
#>     Attrib V52    0.08807374704804798
#>     Attrib V53    0.07256976778457071
#>     Attrib V54    0.25276085274752524
#>     Attrib V55    -0.30089486624745493
#>     Attrib V56    -0.10375056473294846
#>     Attrib V57    -0.3974988125307954
#>     Attrib V58    0.1816687264443078
#>     Attrib V59    0.2628956877266267
#>     Attrib V6    0.13579871154104914
#>     Attrib V60    0.38662851223907246
#>     Attrib V7    0.055293126962406035
#>     Attrib V8    -0.18680360603487772
#>     Attrib V9    0.6410300029091387
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.46125704759458774
#>     Attrib V1    -0.14168794063922605
#>     Attrib V10    -0.4712323544787211
#>     Attrib V11    -0.42208042361232057
#>     Attrib V12    -0.6707633562194216
#>     Attrib V13    -0.3422979661648871
#>     Attrib V14    0.2152157944950801
#>     Attrib V15    -0.12817047873739593
#>     Attrib V16    0.7215016307175205
#>     Attrib V17    0.18446890421532347
#>     Attrib V18    0.44638726700442094
#>     Attrib V19    -0.8770852732066565
#>     Attrib V2    0.12501967710908077
#>     Attrib V20    -0.7845570010860999
#>     Attrib V21    -0.6956024738087384
#>     Attrib V22    -0.5845793993628696
#>     Attrib V23    -0.8492243521915045
#>     Attrib V24    -0.9821516983561249
#>     Attrib V25    0.6709082221846718
#>     Attrib V26    0.37677775652642664
#>     Attrib V27    -0.29026486639848187
#>     Attrib V28    0.11359552406477166
#>     Attrib V29    0.6750690374765593
#>     Attrib V3    -0.22292839620682794
#>     Attrib V30    -0.3911650758748294
#>     Attrib V31    1.3313226544984125
#>     Attrib V32    -0.1050717773883045
#>     Attrib V33    -0.507458255917138
#>     Attrib V34    0.16861250397150349
#>     Attrib V35    -0.1770981429376543
#>     Attrib V36    0.9391163563367528
#>     Attrib V37    0.6236622487722129
#>     Attrib V38    -1.1202622761643939
#>     Attrib V39    -0.309731400946817
#>     Attrib V4    -0.12864042519101399
#>     Attrib V40    0.6946851752564329
#>     Attrib V41    0.3196443264596513
#>     Attrib V42    0.05127212070349881
#>     Attrib V43    -0.8019354779064732
#>     Attrib V44    -0.6141977212331384
#>     Attrib V45    -0.3986389339543289
#>     Attrib V46    -0.26230452339659044
#>     Attrib V47    -0.2164147959369531
#>     Attrib V48    0.07533647096743654
#>     Attrib V49    -1.314602369692769
#>     Attrib V5    -0.40698420574648553
#>     Attrib V50    1.2272098047853635
#>     Attrib V51    0.3031853423461447
#>     Attrib V52    0.3048739959116947
#>     Attrib V53    -0.08939508778310784
#>     Attrib V54    -0.554226968228314
#>     Attrib V55    0.8773680180842014
#>     Attrib V56    -0.908753566103484
#>     Attrib V57    0.9583246168667554
#>     Attrib V58    -0.4806030190014585
#>     Attrib V59    -0.6622197314601994
#>     Attrib V6    0.297901191852664
#>     Attrib V60    -0.43163266197615174
#>     Attrib V7    0.3687840867498985
#>     Attrib V8    0.22589158596927733
#>     Attrib V9    -1.0870332026492644
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.14823399017027739
#>     Attrib V1    0.3332383102285929
#>     Attrib V10    -0.14142699262235914
#>     Attrib V11    -0.16785085233058475
#>     Attrib V12    0.0272472239780261
#>     Attrib V13    0.06477262215531568
#>     Attrib V14    0.1510797123584454
#>     Attrib V15    0.3261201790116767
#>     Attrib V16    0.029686468039827957
#>     Attrib V17    0.09102342587125603
#>     Attrib V18    -0.140530952236121
#>     Attrib V19    0.2193345913089707
#>     Attrib V2    0.030223336708521533
#>     Attrib V20    0.36644082250441096
#>     Attrib V21    0.25681369064442333
#>     Attrib V22    0.035716211462835046
#>     Attrib V23    0.04012511246313848
#>     Attrib V24    0.22828812750162886
#>     Attrib V25    -0.43561507629778734
#>     Attrib V26    -0.5660016985982537
#>     Attrib V27    -0.3498330560082768
#>     Attrib V28    -0.5494256780333079
#>     Attrib V29    -0.517064611770178
#>     Attrib V3    0.14833031520756498
#>     Attrib V30    -0.09965373508666514
#>     Attrib V31    -0.5612814960718217
#>     Attrib V32    -0.16308145661829063
#>     Attrib V33    0.1056282473134835
#>     Attrib V34    -0.0920961565901819
#>     Attrib V35    0.0109927432057711
#>     Attrib V36    -0.30277315786444536
#>     Attrib V37    -0.13807653995467753
#>     Attrib V38    0.48812183458138164
#>     Attrib V39    0.20279685530983005
#>     Attrib V4    0.0959473971879413
#>     Attrib V40    -0.13313047883706391
#>     Attrib V41    -0.19463019910787224
#>     Attrib V42    -0.02463368415335319
#>     Attrib V43    0.4010173351960344
#>     Attrib V44    0.2159388472215809
#>     Attrib V45    0.07859874999122064
#>     Attrib V46    0.010303376578153427
#>     Attrib V47    -0.03938626066506641
#>     Attrib V48    0.09413769805771896
#>     Attrib V49    0.31129329514593196
#>     Attrib V5    0.14671748762843795
#>     Attrib V50    -0.3935536394999389
#>     Attrib V51    -0.20205078694290368
#>     Attrib V52    -0.23508566657014285
#>     Attrib V53    0.12754624193113
#>     Attrib V54    0.5167221214852303
#>     Attrib V55    -0.17255187806707264
#>     Attrib V56    0.7448180297388572
#>     Attrib V57    0.06786060118053179
#>     Attrib V58    0.31326219258197713
#>     Attrib V59    0.592061806943685
#>     Attrib V6    -0.06934860670768869
#>     Attrib V60    0.475622604985875
#>     Attrib V7    0.03785022418921371
#>     Attrib V8    -0.16868347932299316
#>     Attrib V9    0.1483816502684333
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.28378490586477256
#>     Attrib V1    0.2938626327259377
#>     Attrib V10    -0.022035825774689346
#>     Attrib V11    0.03392674295321208
#>     Attrib V12    0.3133277006656074
#>     Attrib V13    0.17566841016032464
#>     Attrib V14    0.003316150900067086
#>     Attrib V15    0.22997691378860294
#>     Attrib V16    -0.33569706655327486
#>     Attrib V17    0.027526286607655673
#>     Attrib V18    -0.28505720822928005
#>     Attrib V19    0.49236723094034557
#>     Attrib V2    -0.16568131851647105
#>     Attrib V20    0.4855413173973491
#>     Attrib V21    0.31347499392640327
#>     Attrib V22    0.19559586315807043
#>     Attrib V23    0.4128436808624047
#>     Attrib V24    0.5736255214459207
#>     Attrib V25    -0.30681305441904483
#>     Attrib V26    -0.40222837888783075
#>     Attrib V27    -0.3545142226402985
#>     Attrib V28    -0.8451659911696627
#>     Attrib V29    -1.0789016422683733
#>     Attrib V3    0.18137032875877912
#>     Attrib V30    -0.03691926609514176
#>     Attrib V31    -0.707922014084015
#>     Attrib V32    0.1280321217082893
#>     Attrib V33    0.6330245947726905
#>     Attrib V34    0.2342822544174444
#>     Attrib V35    0.21749934239904073
#>     Attrib V36    -0.5161523247656673
#>     Attrib V37    -0.4828431761847782
#>     Attrib V38    0.6059672768450272
#>     Attrib V39    0.27193613921110277
#>     Attrib V4    0.10761782615421564
#>     Attrib V40    -0.2774135080074832
#>     Attrib V41    -0.25535656101456217
#>     Attrib V42    -0.14574938537504925
#>     Attrib V43    0.4051923179512999
#>     Attrib V44    0.11264400581514317
#>     Attrib V45    0.0943807010684805
#>     Attrib V46    -0.12575069586343005
#>     Attrib V47    0.044131985152273435
#>     Attrib V48    0.18581190319110688
#>     Attrib V49    0.6901845802090826
#>     Attrib V5    0.16540471750552135
#>     Attrib V50    -0.7853505657121322
#>     Attrib V51    -0.2032897672525814
#>     Attrib V52    -0.37251979735551244
#>     Attrib V53    0.0011339859169412368
#>     Attrib V54    0.6201252123502073
#>     Attrib V55    -0.34117104062165754
#>     Attrib V56    1.0080760436910816
#>     Attrib V57    -0.3194591181962314
#>     Attrib V58    0.3948831297575268
#>     Attrib V59    0.8299729613643327
#>     Attrib V6    -0.14915655173643472
#>     Attrib V60    0.5332530523373578
#>     Attrib V7    0.011771965597021521
#>     Attrib V8    -0.07615054597963042
#>     Attrib V9    0.5180290246690673
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.2113366192312188
#>     Attrib V1    -0.07917878138359341
#>     Attrib V10    -0.1501666322108067
#>     Attrib V11    -0.18882125123534615
#>     Attrib V12    -0.3359023435194777
#>     Attrib V13    -0.14632157720144845
#>     Attrib V14    0.09364056149458545
#>     Attrib V15    -0.04436876387373099
#>     Attrib V16    0.1501625287187007
#>     Attrib V17    0.026260957278886866
#>     Attrib V18    0.05402409876937339
#>     Attrib V19    -0.3078557611870925
#>     Attrib V2    0.026109660759968366
#>     Attrib V20    -0.253899269227688
#>     Attrib V21    -0.24777760354318318
#>     Attrib V22    -0.1623019105716758
#>     Attrib V23    -0.10379331089532977
#>     Attrib V24    -0.28341053353742607
#>     Attrib V25    0.21609605425271664
#>     Attrib V26    0.10799466656038995
#>     Attrib V27    -0.15025480477646078
#>     Attrib V28    0.036696923245217054
#>     Attrib V29    0.15767983829641644
#>     Attrib V3    -0.016851758292347058
#>     Attrib V30    -0.12935611070835076
#>     Attrib V31    0.3346474367502142
#>     Attrib V32    0.08793075566854784
#>     Attrib V33    -0.07261549778563083
#>     Attrib V34    0.09224169048326816
#>     Attrib V35    -0.031137829844312247
#>     Attrib V36    0.4872574640427054
#>     Attrib V37    0.2257541829811325
#>     Attrib V38    -0.19550917314623284
#>     Attrib V39    -0.032282815614984056
#>     Attrib V4    -0.014933520514212295
#>     Attrib V40    0.2187624799185673
#>     Attrib V41    3.9729915085927775E-4
#>     Attrib V42    0.01728562378541077
#>     Attrib V43    -0.08633083960359321
#>     Attrib V44    -0.07953812912694039
#>     Attrib V45    -0.1562682664923575
#>     Attrib V46    -0.18971749749721423
#>     Attrib V47    -0.1910466828778647
#>     Attrib V48    -0.07465665601860431
#>     Attrib V49    -0.4142140589035775
#>     Attrib V5    -0.26067708544027196
#>     Attrib V50    0.3998360622421386
#>     Attrib V51    0.013845275857032264
#>     Attrib V52    0.14931693178899946
#>     Attrib V53    -0.04429659862127839
#>     Attrib V54    -0.17844598503821282
#>     Attrib V55    0.202300681905697
#>     Attrib V56    -0.10133503153721324
#>     Attrib V57    0.26689340168917686
#>     Attrib V58    -0.06246640349118905
#>     Attrib V59    -0.13694403554505086
#>     Attrib V6    0.022677234949602318
#>     Attrib V60    -0.21459508274100117
#>     Attrib V7    0.0605637246820702
#>     Attrib V8    0.18055757200215078
#>     Attrib V9    -0.23861012553357874
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.7181911070740544
#>     Attrib V1    0.052734243195490714
#>     Attrib V10    0.906180755110727
#>     Attrib V11    0.671243378664008
#>     Attrib V12    0.7478691837667987
#>     Attrib V13    0.007242382861818524
#>     Attrib V14    -0.426186409721896
#>     Attrib V15    -0.13794815795088494
#>     Attrib V16    -0.5568714000243276
#>     Attrib V17    -0.38857724546319755
#>     Attrib V18    -0.17252415177123875
#>     Attrib V19    0.2144736237952926
#>     Attrib V2    -0.09987760763341332
#>     Attrib V20    -0.12990759711625371
#>     Attrib V21    0.47005258796393196
#>     Attrib V22    0.4315962922689769
#>     Attrib V23    0.23806448819128287
#>     Attrib V24    0.2068366013908074
#>     Attrib V25    -0.6642537610441008
#>     Attrib V26    0.2901240421658442
#>     Attrib V27    1.300610414169513
#>     Attrib V28    1.7658452872404253
#>     Attrib V29    1.2279420887253363
#>     Attrib V3    -0.2054930233386794
#>     Attrib V30    0.767744200916131
#>     Attrib V31    -0.7420425728189972
#>     Attrib V32    -0.22503843085205377
#>     Attrib V33    -0.7080628501748286
#>     Attrib V34    -0.8777546704815955
#>     Attrib V35    0.046115378736448845
#>     Attrib V36    -0.9681054032879711
#>     Attrib V37    -0.03728520396174818
#>     Attrib V38    0.22248298090324498
#>     Attrib V39    -0.2191907629805765
#>     Attrib V4    0.2514334237629511
#>     Attrib V40    -0.3486002271325445
#>     Attrib V41    0.940457450749231
#>     Attrib V42    0.15806432669907183
#>     Attrib V43    0.4901435795123475
#>     Attrib V44    0.7514849821034952
#>     Attrib V45    0.7401624319407555
#>     Attrib V46    1.2323690894228219
#>     Attrib V47    0.9163418451310635
#>     Attrib V48    -0.03241364296957096
#>     Attrib V49    0.950502841378137
#>     Attrib V5    0.925906043888687
#>     Attrib V50    -0.07378209345333199
#>     Attrib V51    0.8445073285956938
#>     Attrib V52    0.6110920950943584
#>     Attrib V53    0.39301515504853657
#>     Attrib V54    0.04725234498250619
#>     Attrib V55    -0.35440994534455356
#>     Attrib V56    -0.8852412683554347
#>     Attrib V57    -0.24472453924434762
#>     Attrib V58    0.16187698817819016
#>     Attrib V59    -0.0981794110494672
#>     Attrib V6    0.5627133797834384
#>     Attrib V60    0.538973115330797
#>     Attrib V7    0.19170036331338253
#>     Attrib V8    -0.2344099790442299
#>     Attrib V9    0.8358135440921574
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.19206087935332952
#>     Attrib V1    0.10634880866765338
#>     Attrib V10    0.04226228284498307
#>     Attrib V11    -0.016764151340620786
#>     Attrib V12    -0.022929204251000018
#>     Attrib V13    -0.006601867960854972
#>     Attrib V14    0.1024220645010956
#>     Attrib V15    0.03775421151667615
#>     Attrib V16    -0.005346947241446859
#>     Attrib V17    0.03580072844308001
#>     Attrib V18    -0.0708286704874197
#>     Attrib V19    0.03506217834603308
#>     Attrib V2    0.09178077691487592
#>     Attrib V20    -0.021704586487121723
#>     Attrib V21    -0.04038050394467422
#>     Attrib V22    -0.0776900204325209
#>     Attrib V23    -0.052580569573276455
#>     Attrib V24    -0.03520492837483374
#>     Attrib V25    -0.03664298560481969
#>     Attrib V26    -0.08334109196061353
#>     Attrib V27    -0.025632904158986076
#>     Attrib V28    0.00624835076723314
#>     Attrib V29    -0.01734081676897279
#>     Attrib V3    0.07507668943435633
#>     Attrib V30    0.01734174227522354
#>     Attrib V31    -0.04313610516283057
#>     Attrib V32    0.00332615277987329
#>     Attrib V33    0.08747403221353736
#>     Attrib V34    0.023276976545606134
#>     Attrib V35    0.12219531310539553
#>     Attrib V36    0.08018562332995281
#>     Attrib V37    0.09513384913065524
#>     Attrib V38    0.07798085432759021
#>     Attrib V39    0.06794878300115643
#>     Attrib V4    0.13568657985732555
#>     Attrib V40    0.01162568480769854
#>     Attrib V41    0.032621014378949945
#>     Attrib V42    0.06003048472215278
#>     Attrib V43    0.03280785684353251
#>     Attrib V44    0.036728845538948826
#>     Attrib V45    0.07144674591057153
#>     Attrib V46    0.04768140817126809
#>     Attrib V47    0.043031692069700186
#>     Attrib V48    0.09599096563928579
#>     Attrib V49    0.04273751578236401
#>     Attrib V5    0.06543724099362652
#>     Attrib V50    0.030753122125477983
#>     Attrib V51    0.006648902594342413
#>     Attrib V52    0.01469012377978749
#>     Attrib V53    0.0693718981215308
#>     Attrib V54    0.06198566861770045
#>     Attrib V55    0.05939906222493416
#>     Attrib V56    0.1242332595359654
#>     Attrib V57    0.1019831677211616
#>     Attrib V58    0.08070451870724357
#>     Attrib V59    0.12855649156514587
#>     Attrib V6    0.10548334634879003
#>     Attrib V60    0.19158557207926039
#>     Attrib V7    0.04512497365959254
#>     Attrib V8    0.09785276650365997
#>     Attrib V9    0.07601108834020248
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.6245352557580369
#>     Attrib V1    0.09868117325244027
#>     Attrib V10    0.8829776950032644
#>     Attrib V11    0.7099847611056631
#>     Attrib V12    0.838312220629631
#>     Attrib V13    0.07522396620878606
#>     Attrib V14    -0.547222895374594
#>     Attrib V15    -0.32526258736423663
#>     Attrib V16    -0.7473801958432678
#>     Attrib V17    -0.5182223303331517
#>     Attrib V18    -0.2944891142825043
#>     Attrib V19    0.3068900691225234
#>     Attrib V2    -0.20579514848935976
#>     Attrib V20    -0.10367064898983139
#>     Attrib V21    0.2773535006826558
#>     Attrib V22    0.2163328643626988
#>     Attrib V23    0.1801882750516326
#>     Attrib V24    0.6099224213361459
#>     Attrib V25    0.061169070058391985
#>     Attrib V26    0.6706864044945327
#>     Attrib V27    0.8897251234467459
#>     Attrib V28    0.844345690387666
#>     Attrib V29    0.28082599743215525
#>     Attrib V3    -0.27033975507160046
#>     Attrib V30    0.47973494289953295
#>     Attrib V31    -0.3379119329880897
#>     Attrib V32    0.21827165835229168
#>     Attrib V33    0.006929194098178226
#>     Attrib V34    -0.10834205709917749
#>     Attrib V35    0.36863303279662596
#>     Attrib V36    -0.7002270494175098
#>     Attrib V37    -0.2863560982515441
#>     Attrib V38    0.1301616965548377
#>     Attrib V39    -0.04713438698538571
#>     Attrib V4    0.1520348182390811
#>     Attrib V40    -0.19388939869579563
#>     Attrib V41    0.7275817709867144
#>     Attrib V42    -0.07768208595355901
#>     Attrib V43    -0.009471789524766763
#>     Attrib V44    0.14295276641840127
#>     Attrib V45    0.4155433860117735
#>     Attrib V46    0.7452489782110021
#>     Attrib V47    0.7539330919559416
#>     Attrib V48    0.3347189652764796
#>     Attrib V49    0.9527338583546466
#>     Attrib V5    0.6902834904364967
#>     Attrib V50    -0.2907460201081511
#>     Attrib V51    0.82392154831083
#>     Attrib V52    0.3016579370192613
#>     Attrib V53    0.11061100990772023
#>     Attrib V54    0.06513496719869177
#>     Attrib V55    -0.18172754336896194
#>     Attrib V56    -0.6659160038016353
#>     Attrib V57    -0.3963072355034529
#>     Attrib V58    0.13020034963268398
#>     Attrib V59    0.025306275772553885
#>     Attrib V6    0.45253604232146494
#>     Attrib V60    0.42589402096270423
#>     Attrib V7    0.16470319184835086
#>     Attrib V8    -0.01930680317627823
#>     Attrib V9    0.9328328453756854
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.42282083243119023
#>     Attrib V1    -0.1574680829924064
#>     Attrib V10    -0.44651125047810336
#>     Attrib V11    -0.38786312115423305
#>     Attrib V12    -0.6269081139202007
#>     Attrib V13    -0.21313931565079922
#>     Attrib V14    0.264205355586933
#>     Attrib V15    0.006996862774080347
#>     Attrib V16    0.6754763175758343
#>     Attrib V17    0.13450424282080042
#>     Attrib V18    0.41872541972419713
#>     Attrib V19    -0.7497859160634449
#>     Attrib V2    0.06530192978885838
#>     Attrib V20    -0.7522996962298552
#>     Attrib V21    -0.6820304703857386
#>     Attrib V22    -0.43441409240065165
#>     Attrib V23    -0.6337987843207704
#>     Attrib V24    -0.7851335874406034
#>     Attrib V25    0.5512812853273953
#>     Attrib V26    0.29027440792054127
#>     Attrib V27    -0.18324381862670905
#>     Attrib V28    0.12499648830139737
#>     Attrib V29    0.5545301964180578
#>     Attrib V3    -0.13373173051129608
#>     Attrib V30    -0.3187082247760074
#>     Attrib V31    1.0740044296098867
#>     Attrib V32    0.055611340217342736
#>     Attrib V33    -0.352227034917719
#>     Attrib V34    0.15411463574212103
#>     Attrib V35    -0.17562025746130938
#>     Attrib V36    0.7986184229492147
#>     Attrib V37    0.3920255571099221
#>     Attrib V38    -0.8738789568764054
#>     Attrib V39    -0.23373357727889543
#>     Attrib V4    -0.10167627974834346
#>     Attrib V40    0.5300785091929044
#>     Attrib V41    0.18985680445554326
#>     Attrib V42    0.08176059678030245
#>     Attrib V43    -0.5875912602640553
#>     Attrib V44    -0.50747662296651
#>     Attrib V45    -0.3418190277977227
#>     Attrib V46    -0.32685018394342
#>     Attrib V47    -0.27715043950275114
#>     Attrib V48    0.025627599543107546
#>     Attrib V49    -1.1117282451724795
#>     Attrib V5    -0.4046953424598819
#>     Attrib V50    0.9914423816981341
#>     Attrib V51    0.16793954077023157
#>     Attrib V52    0.280048035241367
#>     Attrib V53    -0.11900532576276716
#>     Attrib V54    -0.3378454419357985
#>     Attrib V55    0.7242796205526187
#>     Attrib V56    -0.6451784819942811
#>     Attrib V57    0.6440185140556476
#>     Attrib V58    -0.32311119698334523
#>     Attrib V59    -0.5563601188121478
#>     Attrib V6    0.2308953033381728
#>     Attrib V60    -0.45348492580366956
#>     Attrib V7    0.30773411377799953
#>     Attrib V8    0.30196123136625486
#>     Attrib V9    -0.8591576218882799
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.41488933141868134
#>     Attrib V1    0.03527179362277894
#>     Attrib V10    0.39392424491472844
#>     Attrib V11    0.3809784031145418
#>     Attrib V12    0.5237393299062287
#>     Attrib V13    0.0800099554374222
#>     Attrib V14    -0.20192717433861057
#>     Attrib V15    -0.065315730418899
#>     Attrib V16    -0.5582753624784353
#>     Attrib V17    -0.3487936713111354
#>     Attrib V18    -0.3832303675685805
#>     Attrib V19    0.19173257349341774
#>     Attrib V2    -0.173040963714686
#>     Attrib V20    0.07554658671586847
#>     Attrib V21    0.1645125100086735
#>     Attrib V22    0.06865954031502992
#>     Attrib V23    0.08955659142776518
#>     Attrib V24    0.4713138895235893
#>     Attrib V25    -0.07726330732016917
#>     Attrib V26    0.12613076208172236
#>     Attrib V27    0.46058222483988487
#>     Attrib V28    0.4210283482149287
#>     Attrib V29    0.05347361002499057
#>     Attrib V3    -0.08952995964986805
#>     Attrib V30    0.2540274005282844
#>     Attrib V31    -0.4054712462780222
#>     Attrib V32    0.13884820692200037
#>     Attrib V33    0.11736833981389345
#>     Attrib V34    -0.12124149578525555
#>     Attrib V35    0.13484058091583034
#>     Attrib V36    -0.6979554503207319
#>     Attrib V37    -0.3336547694374049
#>     Attrib V38    0.2501188289934703
#>     Attrib V39    0.043774777454320936
#>     Attrib V4    0.0643504242674069
#>     Attrib V40    -0.2404506337294399
#>     Attrib V41    0.2452017230290614
#>     Attrib V42    -0.06892356288092791
#>     Attrib V43    0.1462664166800181
#>     Attrib V44    0.046850455012691264
#>     Attrib V45    0.2777456774966785
#>     Attrib V46    0.4363110469472475
#>     Attrib V47    0.5224002052090301
#>     Attrib V48    0.23742992827278836
#>     Attrib V49    0.6687013011557247
#>     Attrib V5    0.3976248252465004
#>     Attrib V50    -0.46387547293668224
#>     Attrib V51    0.3258103198188785
#>     Attrib V52    0.07199596471346546
#>     Attrib V53    0.005026387427491646
#>     Attrib V54    0.1614377231832529
#>     Attrib V55    -0.19496116318347576
#>     Attrib V56    -0.07230462177701111
#>     Attrib V57    -0.34341155117953054
#>     Attrib V58    0.1044496899061428
#>     Attrib V59    0.11895332948282153
#>     Attrib V6    0.16170583056857707
#>     Attrib V60    0.31428460941404734
#>     Attrib V7    0.07750523482701568
#>     Attrib V8    -0.062038562980017635
#>     Attrib V9    0.5914050667751309
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.4129601562964719
#>     Attrib V1    -0.13757029553953842
#>     Attrib V10    -0.2944359885500019
#>     Attrib V11    -0.24356456349457306
#>     Attrib V12    -0.4415143076013055
#>     Attrib V13    -0.15042965658122723
#>     Attrib V14    0.18989265779204625
#>     Attrib V15    -0.10223478515935092
#>     Attrib V16    0.5331614357124552
#>     Attrib V17    0.1769322578609516
#>     Attrib V18    0.3459670713449122
#>     Attrib V19    -0.6616792700914307
#>     Attrib V2    0.14801322884786547
#>     Attrib V20    -0.64240635639575
#>     Attrib V21    -0.5711077121697355
#>     Attrib V22    -0.39819891067795216
#>     Attrib V23    -0.531069898116426
#>     Attrib V24    -0.6969411047019419
#>     Attrib V25    0.6191889203104216
#>     Attrib V26    0.3868491044161481
#>     Attrib V27    -0.13332850954438977
#>     Attrib V28    0.20604553954590457
#>     Attrib V29    0.5437906784629278
#>     Attrib V3    -0.15499320315563514
#>     Attrib V30    -0.24938734632587017
#>     Attrib V31    1.0653494244060955
#>     Attrib V32    -0.062016894146803295
#>     Attrib V33    -0.4243593310218599
#>     Attrib V34    0.08663320319247957
#>     Attrib V35    -0.12052916150153167
#>     Attrib V36    0.7082026769937606
#>     Attrib V37    0.482678154430546
#>     Attrib V38    -0.8556681510765174
#>     Attrib V39    -0.20104832055273117
#>     Attrib V4    -0.10071390035404167
#>     Attrib V40    0.4699417631594881
#>     Attrib V41    0.16402748833910782
#>     Attrib V42    0.10842799734640024
#>     Attrib V43    -0.5874318989927739
#>     Attrib V44    -0.483492528064752
#>     Attrib V45    -0.3007344042084331
#>     Attrib V46    -0.2452497772876338
#>     Attrib V47    -0.22017186364687152
#>     Attrib V48    0.0010531893167336224
#>     Attrib V49    -1.0237624157530685
#>     Attrib V5    -0.36668126737625517
#>     Attrib V50    0.9158995500838089
#>     Attrib V51    0.2086381937435234
#>     Attrib V52    0.27277463336830593
#>     Attrib V53    -0.03777378306196811
#>     Attrib V54    -0.4065343333987224
#>     Attrib V55    0.6565635747181072
#>     Attrib V56    -0.6161760581227212
#>     Attrib V57    0.607398353133008
#>     Attrib V58    -0.32567605976365815
#>     Attrib V59    -0.5153295141811297
#>     Attrib V6    0.20204650586460166
#>     Attrib V60    -0.43926574336138924
#>     Attrib V7    0.15815670075961996
#>     Attrib V8    0.20175459600573356
#>     Attrib V9    -0.8398447072971111
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.1833204192274229
#>     Attrib V1    0.29501072201111184
#>     Attrib V10    -0.06446019702407188
#>     Attrib V11    -0.04910091842962022
#>     Attrib V12    0.107433694382305
#>     Attrib V13    0.14779425478998653
#>     Attrib V14    0.07657561581435268
#>     Attrib V15    0.2946190128996586
#>     Attrib V16    -0.20453151982668827
#>     Attrib V17    0.03232945234265009
#>     Attrib V18    -0.2548714374206815
#>     Attrib V19    0.3567331803139437
#>     Attrib V2    -0.04843433656765433
#>     Attrib V20    0.49274107107874326
#>     Attrib V21    0.266551214762421
#>     Attrib V22    0.16320637994092838
#>     Attrib V23    0.318651319952061
#>     Attrib V24    0.4849897799652791
#>     Attrib V25    -0.3818749664218371
#>     Attrib V26    -0.48881703726900005
#>     Attrib V27    -0.41793390151214194
#>     Attrib V28    -0.8338321240047192
#>     Attrib V29    -0.9844423388513067
#>     Attrib V3    0.13752643005304618
#>     Attrib V30    -0.10219577780439945
#>     Attrib V31    -0.6310400357260126
#>     Attrib V32    0.019055391294334176
#>     Attrib V33    0.5429576551329253
#>     Attrib V34    0.22868192977028334
#>     Attrib V35    0.1747230869069686
#>     Attrib V36    -0.4531637379346304
#>     Attrib V37    -0.39470187819803115
#>     Attrib V38    0.5964945914172083
#>     Attrib V39    0.21133641182241644
#>     Attrib V4    0.08773016083589265
#>     Attrib V40    -0.21616392966431786
#>     Attrib V41    -0.2548627518672331
#>     Attrib V42    -0.09243970719602068
#>     Attrib V43    0.35907894464961737
#>     Attrib V44    0.14105449562528563
#>     Attrib V45    0.046080505927717674
#>     Attrib V46    -0.1118674397000463
#>     Attrib V47    -0.020924713863104145
#>     Attrib V48    0.17944125821908555
#>     Attrib V49    0.5191295232657505
#>     Attrib V5    0.10253981609758067
#>     Attrib V50    -0.665964218822309
#>     Attrib V51    -0.23997875390476717
#>     Attrib V52    -0.39136632566272933
#>     Attrib V53    0.02762624338031136
#>     Attrib V54    0.6059178319248578
#>     Attrib V55    -0.2510684870681961
#>     Attrib V56    0.8703371610866766
#>     Attrib V57    -0.15975301904446287
#>     Attrib V58    0.3178515374639685
#>     Attrib V59    0.695947703490741
#>     Attrib V6    -0.13702479546583346
#>     Attrib V60    0.5196820904703778
#>     Attrib V7    0.039855360301252425
#>     Attrib V8    -0.04019287631955947
#>     Attrib V9    0.42468061499891624
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.09219707924472206
#>     Attrib V1    0.16978698708358508
#>     Attrib V10    0.0020495360824324643
#>     Attrib V11    0.022180547540523666
#>     Attrib V12    7.068101707339675E-4
#>     Attrib V13    0.005079372614197639
#>     Attrib V14    0.11637741016152373
#>     Attrib V15    0.11740452599646575
#>     Attrib V16    0.011280518133584312
#>     Attrib V17    -0.012473924856583439
#>     Attrib V18    0.0016446050094112976
#>     Attrib V19    0.004685779395416308
#>     Attrib V2    0.04725184618320655
#>     Attrib V20    0.05155597948977285
#>     Attrib V21    0.03252839387758398
#>     Attrib V22    -0.054735669579895445
#>     Attrib V23    -0.007827597724606873
#>     Attrib V24    0.011427347784013435
#>     Attrib V25    -0.15573400966836623
#>     Attrib V26    -0.16062657199419048
#>     Attrib V27    -0.08902739000390357
#>     Attrib V28    -0.04683880784737692
#>     Attrib V29    -0.09074644799987416
#>     Attrib V3    0.13988061256680812
#>     Attrib V30    0.06134335724839632
#>     Attrib V31    -0.14254056141077076
#>     Attrib V32    -0.0158738905427066
#>     Attrib V33    0.0885816579111579
#>     Attrib V34    0.022553195275771508
#>     Attrib V35    0.08330947744783415
#>     Attrib V36    0.01267200964592772
#>     Attrib V37    0.015547360982192945
#>     Attrib V38    0.13985893448211834
#>     Attrib V39    0.09443386624400392
#>     Attrib V4    0.09074362885979471
#>     Attrib V40    -0.048156112339227286
#>     Attrib V41    -0.013639978589395335
#>     Attrib V42    0.04783830185821501
#>     Attrib V43    0.025129004352964807
#>     Attrib V44    0.07783799987065904
#>     Attrib V45    0.13960328100579275
#>     Attrib V46    0.09462874253089587
#>     Attrib V47    0.06917289953018414
#>     Attrib V48    0.02797112829490549
#>     Attrib V49    0.15538674166309657
#>     Attrib V5    0.1417202831249404
#>     Attrib V50    -0.08789260220851448
#>     Attrib V51    0.011331281368798306
#>     Attrib V52    0.03027481703474519
#>     Attrib V53    0.09415182080995572
#>     Attrib V54    0.09143154397771801
#>     Attrib V55    0.004298078172438476
#>     Attrib V56    0.17606718941341354
#>     Attrib V57    0.0480573683852274
#>     Attrib V58    0.14959158979411466
#>     Attrib V59    0.17636825293899283
#>     Attrib V6    0.09431864515289366
#>     Attrib V60    0.19632567595992967
#>     Attrib V7    0.09620581043452894
#>     Attrib V8    0.08263932127064826
#>     Attrib V9    0.14457405760534914
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
#>  0.1594203 
```
