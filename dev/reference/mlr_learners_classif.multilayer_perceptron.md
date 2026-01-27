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
#>     Threshold    -0.3215992736383437
#>     Node 2    1.724179627249528
#>     Node 3    1.634803618638346
#>     Node 4    1.0696883520792722
#>     Node 5    -1.4736596335555259
#>     Node 6    0.4171046017871125
#>     Node 7    2.959719190075976
#>     Node 8    1.94609089128889
#>     Node 9    2.5509922073805766
#>     Node 10    -2.1765202957627774
#>     Node 11    1.4507062266355302
#>     Node 12    1.6649089398894328
#>     Node 13    -1.5942548891474653
#>     Node 14    2.619900512695509
#>     Node 15    -2.42998305464057
#>     Node 16    0.7126119117208098
#>     Node 17    1.2386627349839303
#>     Node 18    -0.06085604895935597
#>     Node 19    2.143785368563784
#>     Node 20    1.5701832138060496
#>     Node 21    -1.6014334842070048
#>     Node 22    1.7155514756838477
#>     Node 23    1.161870984629268
#>     Node 24    -0.1521130981156339
#>     Node 25    3.513086091326954
#>     Node 26    -1.3469749613956823
#>     Node 27    2.2451579284114933
#>     Node 28    -2.3981719774413346
#>     Node 29    1.2449860126615309
#>     Node 30    -1.3027410042015704
#>     Node 31    1.783550816616908
#>     Node 32    0.4108553429474144
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.3443205960738658
#>     Node 2    -1.7830285034481674
#>     Node 3    -1.616498718057245
#>     Node 4    -1.02393478093099
#>     Node 5    1.4786655254661474
#>     Node 6    -0.39149362451810393
#>     Node 7    -2.9618299777908996
#>     Node 8    -1.9761801587714465
#>     Node 9    -2.5480691478044135
#>     Node 10    2.114071024927831
#>     Node 11    -1.4166579865855096
#>     Node 12    -1.738443151261048
#>     Node 13    1.6474242407004327
#>     Node 14    -2.553265441975354
#>     Node 15    2.426086475095184
#>     Node 16    -0.7221048016642623
#>     Node 17    -1.203209206933017
#>     Node 18    0.0994679482883038
#>     Node 19    -2.133585467866381
#>     Node 20    -1.5710611813920445
#>     Node 21    1.6595693620503074
#>     Node 22    -1.761014036394346
#>     Node 23    -1.2030457780684176
#>     Node 24    0.1352144648325735
#>     Node 25    -3.5103046751452873
#>     Node 26    1.2598439764708649
#>     Node 27    -2.2895788141895244
#>     Node 28    2.3559363729220615
#>     Node 29    -1.2775270495116333
#>     Node 30    1.3761352540565415
#>     Node 31    -1.7268432656064978
#>     Node 32    -0.4255793587341192
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.12426275383186886
#>     Attrib V1    0.3054401935382139
#>     Attrib V10    0.4905647028220685
#>     Attrib V11    0.7836128107753918
#>     Attrib V12    0.813467412422071
#>     Attrib V13    -0.37408894962974015
#>     Attrib V14    -0.361935617736128
#>     Attrib V15    -0.07923207358551167
#>     Attrib V16    -0.17298976290636714
#>     Attrib V17    -0.08748729610419732
#>     Attrib V18    0.039937330034725674
#>     Attrib V19    0.2479289472017485
#>     Attrib V2    -0.011167064977794147
#>     Attrib V20    0.426586308874298
#>     Attrib V21    0.36959849112868637
#>     Attrib V22    0.311073255596104
#>     Attrib V23    0.3766721000773557
#>     Attrib V24    0.6145593273071994
#>     Attrib V25    4.5910392712543695E-4
#>     Attrib V26    -0.42723934793376783
#>     Attrib V27    -0.3178439733370507
#>     Attrib V28    -0.29930758417474757
#>     Attrib V29    -0.6672966509225008
#>     Attrib V3    -0.21279945081770144
#>     Attrib V30    0.17556181098609858
#>     Attrib V31    -0.7735472795481443
#>     Attrib V32    -0.28719004641965484
#>     Attrib V33    0.017302346821076665
#>     Attrib V34    -0.2789266907943233
#>     Attrib V35    -0.27490566147374573
#>     Attrib V36    -0.574771064719896
#>     Attrib V37    -0.7058996905652334
#>     Attrib V38    0.33765788855833484
#>     Attrib V39    0.43378848516106705
#>     Attrib V4    0.06768190791803644
#>     Attrib V40    -0.1917929960911178
#>     Attrib V41    -0.2982437090545528
#>     Attrib V42    0.16557072090234481
#>     Attrib V43    0.7824356085244568
#>     Attrib V44    0.20330979733464177
#>     Attrib V45    0.15008694030714045
#>     Attrib V46    0.14656622958948776
#>     Attrib V47    -0.13888085368146655
#>     Attrib V48    0.05028959972608382
#>     Attrib V49    0.2816953996753001
#>     Attrib V5    -0.11996358289921032
#>     Attrib V50    -0.38753922319012324
#>     Attrib V51    0.0023855903098122223
#>     Attrib V52    -0.03177929098249659
#>     Attrib V53    0.29893308158304005
#>     Attrib V54    0.4661290932086891
#>     Attrib V55    0.16646987931572457
#>     Attrib V56    -0.28231844466593214
#>     Attrib V57    0.46688112811980553
#>     Attrib V58    -0.06428125561355519
#>     Attrib V59    0.34840626927150714
#>     Attrib V6    -0.6637485959506799
#>     Attrib V60    0.4855843645355049
#>     Attrib V7    -0.26173630128204084
#>     Attrib V8    -0.16641575021221638
#>     Attrib V9    0.4813344392951278
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.23247067441187177
#>     Attrib V1    0.23730412186119698
#>     Attrib V10    0.36974741899963665
#>     Attrib V11    0.5582771838374471
#>     Attrib V12    0.6577536431423209
#>     Attrib V13    -0.31212514278916115
#>     Attrib V14    -0.28216250740684173
#>     Attrib V15    0.027191308591006873
#>     Attrib V16    -0.14625057785284618
#>     Attrib V17    -0.1213041436709652
#>     Attrib V18    -0.0660500923300881
#>     Attrib V19    0.16720724759185435
#>     Attrib V2    -0.0014394350470252578
#>     Attrib V20    0.23110006733128996
#>     Attrib V21    0.19224872303380705
#>     Attrib V22    0.1695909182087227
#>     Attrib V23    0.1906672449999736
#>     Attrib V24    0.47146452025385416
#>     Attrib V25    -0.02425793948187066
#>     Attrib V26    -0.5537447354954055
#>     Attrib V27    -0.4805233893894694
#>     Attrib V28    -0.47624802306854697
#>     Attrib V29    -0.8129960423718414
#>     Attrib V3    -0.2155821577674357
#>     Attrib V30    0.07960754379530578
#>     Attrib V31    -0.42910836084651893
#>     Attrib V32    -0.06569944741872782
#>     Attrib V33    0.14478100125172497
#>     Attrib V34    -0.272223008471567
#>     Attrib V35    -0.4115049972946467
#>     Attrib V36    -0.7602798053496256
#>     Attrib V37    -0.8483513836024016
#>     Attrib V38    -0.0033524570494963954
#>     Attrib V39    0.2927619972530239
#>     Attrib V4    0.029766912758200776
#>     Attrib V40    -0.09321737499717206
#>     Attrib V41    -0.1560140897316122
#>     Attrib V42    0.147338842704967
#>     Attrib V43    0.5392601661093843
#>     Attrib V44    0.015544047344982806
#>     Attrib V45    -0.0016485256917296092
#>     Attrib V46    0.06616828247674844
#>     Attrib V47    -0.05160235044895454
#>     Attrib V48    0.1527954247236395
#>     Attrib V49    0.3475393544235965
#>     Attrib V5    -0.1151202987935482
#>     Attrib V50    -0.2818248449087321
#>     Attrib V51    -0.008625237411797165
#>     Attrib V52    0.01150188952298418
#>     Attrib V53    0.23050088857800313
#>     Attrib V54    0.5538021380801413
#>     Attrib V55    0.18169380445800498
#>     Attrib V56    -0.22638378585624783
#>     Attrib V57    0.5799662391500057
#>     Attrib V58    0.08002045875729087
#>     Attrib V59    0.3570566816237069
#>     Attrib V6    -0.46496423853460395
#>     Attrib V60    0.41636198944022856
#>     Attrib V7    -0.1596796154845732
#>     Attrib V8    -0.055842813673538064
#>     Attrib V9    0.3441005047254824
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.21107543884119015
#>     Attrib V1    0.1608853949569473
#>     Attrib V10    0.18984416169661622
#>     Attrib V11    0.42195316361549795
#>     Attrib V12    0.49711924255261225
#>     Attrib V13    -0.1348133025153925
#>     Attrib V14    -0.09251571505821865
#>     Attrib V15    0.026869571184622076
#>     Attrib V16    -0.13059606049527103
#>     Attrib V17    -0.10968114369217728
#>     Attrib V18    -0.14454999403157584
#>     Attrib V19    -0.07017065063200023
#>     Attrib V2    -0.04082787991324191
#>     Attrib V20    -0.04755861961616201
#>     Attrib V21    -0.023476307158533515
#>     Attrib V22    -0.24818504859624885
#>     Attrib V23    -0.13363403965716647
#>     Attrib V24    0.14386923404939309
#>     Attrib V25    -0.1318412841619007
#>     Attrib V26    -0.2977998483075592
#>     Attrib V27    -0.09497639944705301
#>     Attrib V28    0.06895405281469179
#>     Attrib V29    -0.18399173125247453
#>     Attrib V3    -0.09082798670540806
#>     Attrib V30    0.08764709958256714
#>     Attrib V31    -0.2605705941957601
#>     Attrib V32    -0.018205833671663795
#>     Attrib V33    0.11747014586989797
#>     Attrib V34    -0.09478068617838398
#>     Attrib V35    -0.21388264967114431
#>     Attrib V36    -0.5192306219367273
#>     Attrib V37    -0.48241107408177725
#>     Attrib V38    -0.04315395939551972
#>     Attrib V39    0.13412671776702953
#>     Attrib V4    0.05793174516922799
#>     Attrib V40    -0.11564988144468866
#>     Attrib V41    -0.0631907348506354
#>     Attrib V42    0.09194395608579034
#>     Attrib V43    0.24419280162864562
#>     Attrib V44    -0.04639378763147494
#>     Attrib V45    0.08729910181162978
#>     Attrib V46    0.06633494095388322
#>     Attrib V47    -0.01695777204047989
#>     Attrib V48    0.28190336198367777
#>     Attrib V49    0.3874844813115583
#>     Attrib V5    0.07206214900118409
#>     Attrib V50    -0.18495666275084882
#>     Attrib V51    0.06499451364938955
#>     Attrib V52    0.031152310005054928
#>     Attrib V53    0.2559765811746385
#>     Attrib V54    0.2134231466234944
#>     Attrib V55    0.06689764574498457
#>     Attrib V56    -0.18387775920412458
#>     Attrib V57    0.4264768148871616
#>     Attrib V58    0.02632013705909955
#>     Attrib V59    0.2534781068745476
#>     Attrib V6    -0.2060442467370835
#>     Attrib V60    0.3231315093509994
#>     Attrib V7    -0.09884830437368315
#>     Attrib V8    -0.15199339043007523
#>     Attrib V9    0.19656488959644913
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.21127151659900306
#>     Attrib V1    -0.1923152248251677
#>     Attrib V10    -0.4247248228631478
#>     Attrib V11    -0.7233846179484048
#>     Attrib V12    -0.8323959263151725
#>     Attrib V13    0.29561123050083304
#>     Attrib V14    0.4115573310811602
#>     Attrib V15    0.19576701956898956
#>     Attrib V16    0.19149639534720864
#>     Attrib V17    0.08797581619569246
#>     Attrib V18    -0.002705774616427826
#>     Attrib V19    -0.23650258608888425
#>     Attrib V2    0.08811226602605321
#>     Attrib V20    -0.3237845345388038
#>     Attrib V21    -0.2687945155103816
#>     Attrib V22    -0.2755024953072925
#>     Attrib V23    -0.2836387759997719
#>     Attrib V24    -0.5647125326879961
#>     Attrib V25    0.03427837996435933
#>     Attrib V26    0.3392627416054099
#>     Attrib V27    0.19770497286048086
#>     Attrib V28    0.12412708357634317
#>     Attrib V29    0.49283215321157353
#>     Attrib V3    0.25629468208905964
#>     Attrib V30    -0.1743761796891364
#>     Attrib V31    0.6781001739600028
#>     Attrib V32    0.2854434642918472
#>     Attrib V33    -0.005349460690755923
#>     Attrib V34    0.19594427080234975
#>     Attrib V35    0.16573471589153205
#>     Attrib V36    0.45354917169979647
#>     Attrib V37    0.4209086855472203
#>     Attrib V38    -0.4216509163861245
#>     Attrib V39    -0.3933271869034681
#>     Attrib V4    -0.12754610531554136
#>     Attrib V40    0.24422752165258485
#>     Attrib V41    0.16710246427082992
#>     Attrib V42    -0.029673695336846592
#>     Attrib V43    -0.6165425933542311
#>     Attrib V44    -0.1761722953091729
#>     Attrib V45    -0.24733840480934685
#>     Attrib V46    -0.2534155989721735
#>     Attrib V47    0.09149844025546419
#>     Attrib V48    -0.0574088711727401
#>     Attrib V49    -0.33466941630405694
#>     Attrib V5    0.119084614485835
#>     Attrib V50    0.4352112483819763
#>     Attrib V51    -0.013858248267878293
#>     Attrib V52    0.006708310209119336
#>     Attrib V53    -0.2333838651324284
#>     Attrib V54    -0.3125875320457677
#>     Attrib V55    -0.08711299571333561
#>     Attrib V56    0.31120997386783805
#>     Attrib V57    -0.5129675213255595
#>     Attrib V58    0.023972097542846828
#>     Attrib V59    -0.19050522248082938
#>     Attrib V6    0.5583477010379592
#>     Attrib V60    -0.39281891660343327
#>     Attrib V7    0.2817408865867103
#>     Attrib V8    0.2909665355200727
#>     Attrib V9    -0.4814153818402269
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.034155773596918175
#>     Attrib V1    0.13379222233198051
#>     Attrib V10    0.02620043960672151
#>     Attrib V11    0.10808371826682879
#>     Attrib V12    0.20541168130367002
#>     Attrib V13    -0.06506716960162683
#>     Attrib V14    0.01769649878670474
#>     Attrib V15    0.04376741586775283
#>     Attrib V16    0.053639967835714654
#>     Attrib V17    -0.039462996972148126
#>     Attrib V18    -0.0034569954956986306
#>     Attrib V19    -0.054339572070437964
#>     Attrib V2    0.08557356997526686
#>     Attrib V20    -0.04037765981826021
#>     Attrib V21    -0.044454579498091
#>     Attrib V22    -0.13963806058610267
#>     Attrib V23    -0.09754384059235592
#>     Attrib V24    0.04786939361583868
#>     Attrib V25    0.006988745283528633
#>     Attrib V26    -0.10591809511076986
#>     Attrib V27    -0.022053387345107825
#>     Attrib V28    -0.02976438070257218
#>     Attrib V29    -0.11330056347356142
#>     Attrib V3    0.07033594895414082
#>     Attrib V30    -0.0391897275307734
#>     Attrib V31    -0.16455491510594425
#>     Attrib V32    -0.029939523908345516
#>     Attrib V33    0.022703722429488243
#>     Attrib V34    -0.06137472878420965
#>     Attrib V35    -0.020137876358570415
#>     Attrib V36    -0.14428320304706516
#>     Attrib V37    -0.12225666034311407
#>     Attrib V38    -0.004535110359843065
#>     Attrib V39    0.034265153139292855
#>     Attrib V4    0.1529161957964317
#>     Attrib V40    -0.07495848940159
#>     Attrib V41    0.005059877738741199
#>     Attrib V42    0.06673527285943845
#>     Attrib V43    0.11155111673556375
#>     Attrib V44    0.01669479685519843
#>     Attrib V45    0.04579438934318669
#>     Attrib V46    0.05182662100290135
#>     Attrib V47    -0.017487415921618097
#>     Attrib V48    0.04199233996592603
#>     Attrib V49    0.06401641410783249
#>     Attrib V5    0.08482044694919663
#>     Attrib V50    -0.019539441036729308
#>     Attrib V51    -0.023537467802821586
#>     Attrib V52    -0.014570281720353465
#>     Attrib V53    0.16065765385423025
#>     Attrib V54    0.11619069847509353
#>     Attrib V55    0.08287494205234808
#>     Attrib V56    0.021551898359980146
#>     Attrib V57    0.2398029191425476
#>     Attrib V58    0.10105780040211229
#>     Attrib V59    0.21885041010406447
#>     Attrib V6    0.013418919354323081
#>     Attrib V60    0.2554865607088679
#>     Attrib V7    -0.004777125733640958
#>     Attrib V8    0.049289745074019814
#>     Attrib V9    0.13128124258785456
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6058300490443379
#>     Attrib V1    0.5815428758643544
#>     Attrib V10    0.6514104007537881
#>     Attrib V11    1.3689644189074974
#>     Attrib V12    1.4879267087507002
#>     Attrib V13    0.15005809042466126
#>     Attrib V14    -0.40446189185179526
#>     Attrib V15    -0.6059153819458498
#>     Attrib V16    -0.47303870663851905
#>     Attrib V17    0.021993690256539994
#>     Attrib V18    -0.05083902654422709
#>     Attrib V19    0.11443855862506855
#>     Attrib V2    0.2798405452702129
#>     Attrib V20    0.06781273625597145
#>     Attrib V21    0.06805651851269261
#>     Attrib V22    -0.33168703354970885
#>     Attrib V23    0.3417205844452248
#>     Attrib V24    0.6059247168586641
#>     Attrib V25    0.04745678210680517
#>     Attrib V26    0.47787855433553345
#>     Attrib V27    1.1846454799945283
#>     Attrib V28    1.7946528044261847
#>     Attrib V29    1.067426432501212
#>     Attrib V3    -0.03864247847264307
#>     Attrib V30    0.4296757782655003
#>     Attrib V31    -0.692760087002501
#>     Attrib V32    0.08171980553591991
#>     Attrib V33    -0.08611388740768681
#>     Attrib V34    -0.2724633142305566
#>     Attrib V35    0.21376699692918338
#>     Attrib V36    -0.6630412775334618
#>     Attrib V37    0.05972765685523354
#>     Attrib V38    0.4044324060478904
#>     Attrib V39    0.23686419207568293
#>     Attrib V4    0.34594219567679535
#>     Attrib V40    -0.25848508052081004
#>     Attrib V41    0.6891749295239272
#>     Attrib V42    0.1271714338219854
#>     Attrib V43    0.452540378016478
#>     Attrib V44    0.2574259363171254
#>     Attrib V45    0.5826716320433164
#>     Attrib V46    0.6852806967849588
#>     Attrib V47    0.3215952490568461
#>     Attrib V48    0.6284071457974233
#>     Attrib V49    0.9243858673955044
#>     Attrib V5    0.5691033362944556
#>     Attrib V50    -0.6709501603452541
#>     Attrib V51    0.6802271303334391
#>     Attrib V52    0.3557366710442194
#>     Attrib V53    0.6638667754649121
#>     Attrib V54    -0.11240758261151146
#>     Attrib V55    -0.3878908000503703
#>     Attrib V56    -0.6470739417613396
#>     Attrib V57    0.07160609952263466
#>     Attrib V58    -0.36191970948468755
#>     Attrib V59    -0.09831588454206532
#>     Attrib V6    0.3870447332700458
#>     Attrib V60    0.4154567081720123
#>     Attrib V7    -0.1977878598324316
#>     Attrib V8    -0.7085547776892748
#>     Attrib V9    0.5016687428580882
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.5294467082435024
#>     Attrib V1    0.2973550536888044
#>     Attrib V10    0.26252629629730123
#>     Attrib V11    0.8274360792509005
#>     Attrib V12    0.9724080776769556
#>     Attrib V13    0.049004351313402854
#>     Attrib V14    -0.1216802838434156
#>     Attrib V15    -0.13901164393121296
#>     Attrib V16    -0.17363688189819487
#>     Attrib V17    -0.1662761146296153
#>     Attrib V18    -0.34526750729305056
#>     Attrib V19    -0.300413269173038
#>     Attrib V2    0.04688646976068933
#>     Attrib V20    -0.4697428888986875
#>     Attrib V21    -0.49445484729493944
#>     Attrib V22    -0.971107044595151
#>     Attrib V23    -0.68453358606497
#>     Attrib V24    -0.013942316455633555
#>     Attrib V25    -0.27670947932935885
#>     Attrib V26    -0.09111960495475961
#>     Attrib V27    0.5754832848121719
#>     Attrib V28    0.8257264353334053
#>     Attrib V29    0.2755182236401167
#>     Attrib V3    -0.06649971236878496
#>     Attrib V30    0.17063571136250044
#>     Attrib V31    -0.3015292513469098
#>     Attrib V32    0.18364882718422498
#>     Attrib V33    0.20693558515360236
#>     Attrib V34    -0.02841457853881678
#>     Attrib V35    -0.07873652598810559
#>     Attrib V36    -0.6181624421263407
#>     Attrib V37    -0.42229238797980534
#>     Attrib V38    -0.06213845688886911
#>     Attrib V39    -0.06952431577715373
#>     Attrib V4    0.2932619761984422
#>     Attrib V40    -0.31158495782036993
#>     Attrib V41    0.1560574270198695
#>     Attrib V42    -0.06553716019793475
#>     Attrib V43    0.13635640174013128
#>     Attrib V44    -0.12333989371929159
#>     Attrib V45    0.18183314496530154
#>     Attrib V46    0.31079564503270146
#>     Attrib V47    0.16479989132599035
#>     Attrib V48    0.6870480148852457
#>     Attrib V49    0.6954343242897589
#>     Attrib V5    0.3392525808075339
#>     Attrib V50    -0.4474478947765979
#>     Attrib V51    0.20268440972964027
#>     Attrib V52    0.15393092762229618
#>     Attrib V53    0.48106546507244585
#>     Attrib V54    0.10140208549696524
#>     Attrib V55    -0.030010744422922602
#>     Attrib V56    -0.5283888427248756
#>     Attrib V57    0.5885580738007384
#>     Attrib V58    0.009029920566475492
#>     Attrib V59    0.28341814976075475
#>     Attrib V6    0.18133063008225886
#>     Attrib V60    0.5335633073450406
#>     Attrib V7    -0.044915168282978146
#>     Attrib V8    -0.24173147523327912
#>     Attrib V9    0.21079307417634904
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.611788458376102
#>     Attrib V1    0.3730843915630087
#>     Attrib V10    0.5563436931561747
#>     Attrib V11    1.1436649853860141
#>     Attrib V12    1.3925116038957224
#>     Attrib V13    0.11986944551017445
#>     Attrib V14    -0.40738320088310653
#>     Attrib V15    -0.4859345177206623
#>     Attrib V16    -0.3406925232130314
#>     Attrib V17    0.055777361235910046
#>     Attrib V18    -0.047590629011967304
#>     Attrib V19    0.03496754317365998
#>     Attrib V2    0.0904531291988503
#>     Attrib V20    -0.09249413125191557
#>     Attrib V21    -0.11622754572000418
#>     Attrib V22    -0.5144062991674793
#>     Attrib V23    0.019437079406759976
#>     Attrib V24    0.48217043815329536
#>     Attrib V25    0.009801363324293669
#>     Attrib V26    0.33698199835085074
#>     Attrib V27    1.1260360875238147
#>     Attrib V28    1.5944022105874835
#>     Attrib V29    0.7736516722051479
#>     Attrib V3    -0.16202803741616364
#>     Attrib V30    0.3401443843932768
#>     Attrib V31    -0.6333650937268445
#>     Attrib V32    0.1399785744764517
#>     Attrib V33    0.07276875022602061
#>     Attrib V34    -0.08425085016145635
#>     Attrib V35    0.230965407976466
#>     Attrib V36    -0.4815715539083122
#>     Attrib V37    -0.004554692288840294
#>     Attrib V38    0.3632682126190698
#>     Attrib V39    0.22723687410959983
#>     Attrib V4    0.2899217526835995
#>     Attrib V40    -0.27653150957478395
#>     Attrib V41    0.5647334670401394
#>     Attrib V42    0.0060944675058408546
#>     Attrib V43    0.4003703299385329
#>     Attrib V44    0.11962737262478018
#>     Attrib V45    0.46764466307666913
#>     Attrib V46    0.5810849337019897
#>     Attrib V47    0.2117226749220516
#>     Attrib V48    0.5956385167276745
#>     Attrib V49    0.9129716446703957
#>     Attrib V5    0.4410807243490495
#>     Attrib V50    -0.6722273708711635
#>     Attrib V51    0.4977545634991104
#>     Attrib V52    0.23848751166926987
#>     Attrib V53    0.6906568584542232
#>     Attrib V54    -0.08763575695819216
#>     Attrib V55    -0.2509653421480207
#>     Attrib V56    -0.6526646775150201
#>     Attrib V57    0.1837182609027993
#>     Attrib V58    -0.3034101662484159
#>     Attrib V59    0.10460111617158331
#>     Attrib V6    0.2856959709325295
#>     Attrib V60    0.49160662303822344
#>     Attrib V7    -0.19112283935316723
#>     Attrib V8    -0.6108243006331483
#>     Attrib V9    0.35879799845961624
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.08640897012181248
#>     Attrib V1    -0.3086255658870165
#>     Attrib V10    -0.8117303376374168
#>     Attrib V11    -1.1805445457860622
#>     Attrib V12    -1.1019139529159514
#>     Attrib V13    0.3439267339459542
#>     Attrib V14    0.6200884061718537
#>     Attrib V15    0.22986426892378398
#>     Attrib V16    0.3563426866935053
#>     Attrib V17    0.043212327570678645
#>     Attrib V18    -0.017232807143189924
#>     Attrib V19    -0.4032012065324967
#>     Attrib V2    -0.08918598583679514
#>     Attrib V20    -0.6334277485120253
#>     Attrib V21    -0.5984339110106446
#>     Attrib V22    -0.7509022127638427
#>     Attrib V23    -0.7709612058285242
#>     Attrib V24    -0.865617498295506
#>     Attrib V25    -0.18376879533290882
#>     Attrib V26    0.17459734381365224
#>     Attrib V27    0.12084338985500824
#>     Attrib V28    0.06215445780538012
#>     Attrib V29    0.4264739531890909
#>     Attrib V3    0.2169866179310742
#>     Attrib V30    -0.42350708006734866
#>     Attrib V31    0.9349174943690725
#>     Attrib V32    0.3617060550822931
#>     Attrib V33    0.09725750893457946
#>     Attrib V34    0.35312476414104754
#>     Attrib V35    0.0919409477399588
#>     Attrib V36    0.4073476550038551
#>     Attrib V37    0.39942784237736356
#>     Attrib V38    -0.6820609962788192
#>     Attrib V39    -0.6049568132869549
#>     Attrib V4    -0.17709670870729588
#>     Attrib V40    0.3830578568203924
#>     Attrib V41    0.39609724095221266
#>     Attrib V42    -0.12657228564381784
#>     Attrib V43    -1.0109068806721944
#>     Attrib V44    -0.4738633677213188
#>     Attrib V45    -0.42683192565297257
#>     Attrib V46    -0.345550217473284
#>     Attrib V47    0.10050971009016042
#>     Attrib V48    0.03478043767164796
#>     Attrib V49    -0.3871657474461073
#>     Attrib V5    0.16748827729162935
#>     Attrib V50    0.4936002731291803
#>     Attrib V51    -0.12211976323855829
#>     Attrib V52    -0.05415640590887646
#>     Attrib V53    -0.22781574707667493
#>     Attrib V54    -0.40971590907777805
#>     Attrib V55    -0.12021102106390062
#>     Attrib V56    0.25060565375848476
#>     Attrib V57    -0.3809433878096375
#>     Attrib V58    0.13734486640479573
#>     Attrib V59    -0.09532092062066716
#>     Attrib V6    0.8533306199608441
#>     Attrib V60    -0.3683709432310604
#>     Attrib V7    0.4219585690137758
#>     Attrib V8    0.38085355133740684
#>     Attrib V9    -0.7877627211713447
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.4015343061459951
#>     Attrib V1    0.1388211425700987
#>     Attrib V10    0.3396740475722545
#>     Attrib V11    0.7901317865278373
#>     Attrib V12    0.9352777498421464
#>     Attrib V13    -0.20114469988213948
#>     Attrib V14    -0.34608350816499855
#>     Attrib V15    -0.2504697229691101
#>     Attrib V16    -0.25412415047377324
#>     Attrib V17    -0.048991139274522276
#>     Attrib V18    -0.07538900567666124
#>     Attrib V19    0.05235742480882331
#>     Attrib V2    -0.11961043922385946
#>     Attrib V20    -0.004270635899156718
#>     Attrib V21    -0.16553976683517144
#>     Attrib V22    -0.3753768549437763
#>     Attrib V23    -0.048800398709185226
#>     Attrib V24    0.4343341905266283
#>     Attrib V25    0.0882540768854465
#>     Attrib V26    -0.03162137145216631
#>     Attrib V27    0.41494120277577246
#>     Attrib V28    0.6125864093243666
#>     Attrib V29    -0.013190907275533218
#>     Attrib V3    -0.2721881891785077
#>     Attrib V30    0.2454906248759057
#>     Attrib V31    -0.5177690456576238
#>     Attrib V32    -0.10877434957417124
#>     Attrib V33    0.10937484669224998
#>     Attrib V34    0.0496163833463257
#>     Attrib V35    0.14740455190324328
#>     Attrib V36    -0.4374788070355213
#>     Attrib V37    -0.44328822439809457
#>     Attrib V38    0.1935826966398094
#>     Attrib V39    0.17674725664223495
#>     Attrib V4    0.074275953159385
#>     Attrib V40    -0.2512441519697013
#>     Attrib V41    -0.029883723903195925
#>     Attrib V42    0.08292735046113377
#>     Attrib V43    0.4603615820997077
#>     Attrib V44    0.11850086713594894
#>     Attrib V45    0.31225472516882546
#>     Attrib V46    0.3049857931166612
#>     Attrib V47    0.11456737089810089
#>     Attrib V48    0.39675356163725745
#>     Attrib V49    0.5179010772621075
#>     Attrib V5    0.16569323525835886
#>     Attrib V50    -0.44241664939933106
#>     Attrib V51    0.14789804006402235
#>     Attrib V52    0.039893002920179374
#>     Attrib V53    0.3939677012135989
#>     Attrib V54    0.19090987646960075
#>     Attrib V55    -0.013180412614416697
#>     Attrib V56    -0.43805491722344964
#>     Attrib V57    0.35679920636155393
#>     Attrib V58    -0.12900412675109732
#>     Attrib V59    0.09066880597746488
#>     Attrib V6    -0.1482889720877351
#>     Attrib V60    0.3473618600287456
#>     Attrib V7    -0.2765479041824439
#>     Attrib V8    -0.31767122762085626
#>     Attrib V9    0.31351433570819676
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.6095517979884281
#>     Attrib V1    0.22757940420606934
#>     Attrib V10    0.2857974287556241
#>     Attrib V11    0.9381044830249496
#>     Attrib V12    0.9985557062718204
#>     Attrib V13    -0.07976388868407257
#>     Attrib V14    -0.19758316186984598
#>     Attrib V15    -0.1791859036368644
#>     Attrib V16    -0.20681655949885983
#>     Attrib V17    -0.09401454312719357
#>     Attrib V18    -0.14726616976652798
#>     Attrib V19    -0.012093405336615575
#>     Attrib V2    -0.009346629644199956
#>     Attrib V20    -0.20271920519282027
#>     Attrib V21    -0.2938755660809271
#>     Attrib V22    -0.5853937573044905
#>     Attrib V23    -0.26651166722319347
#>     Attrib V24    0.24318468297882634
#>     Attrib V25    -0.16666644879068893
#>     Attrib V26    -0.09845364187243845
#>     Attrib V27    0.575902159368041
#>     Attrib V28    0.7503347336962193
#>     Attrib V29    0.2061702082249632
#>     Attrib V3    -0.2507322472828157
#>     Attrib V30    0.28511970992182156
#>     Attrib V31    -0.4213707507320434
#>     Attrib V32    0.03734622418355383
#>     Attrib V33    0.19662698077648746
#>     Attrib V34    -0.024918589769896013
#>     Attrib V35    -0.03529107543773903
#>     Attrib V36    -0.6576442261911802
#>     Attrib V37    -0.5206147636863601
#>     Attrib V38    0.07862013252204543
#>     Attrib V39    0.10999901932882056
#>     Attrib V4    0.17986807423174003
#>     Attrib V40    -0.19227131978841
#>     Attrib V41    0.15581938068169537
#>     Attrib V42    0.09348340479738057
#>     Attrib V43    0.44824262259833547
#>     Attrib V44    -0.04679924122836422
#>     Attrib V45    0.23210088014912517
#>     Attrib V46    0.3348950929001288
#>     Attrib V47    0.08368210249876402
#>     Attrib V48    0.5254978690692864
#>     Attrib V49    0.6218002904755945
#>     Attrib V5    0.23096190553576937
#>     Attrib V50    -0.5308736277709809
#>     Attrib V51    0.17376738340878975
#>     Attrib V52    0.16693127602715982
#>     Attrib V53    0.5130567900177156
#>     Attrib V54    0.15615544045353316
#>     Attrib V55    -0.026157513459327694
#>     Attrib V56    -0.466109873518114
#>     Attrib V57    0.4712283746210375
#>     Attrib V58    -0.0373374177800373
#>     Attrib V59    0.26932901943403625
#>     Attrib V6    -0.06055727869965424
#>     Attrib V60    0.3968955871101666
#>     Attrib V7    -0.16782644668280602
#>     Attrib V8    -0.285944389002969
#>     Attrib V9    0.2664471529304606
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.17294369682662378
#>     Attrib V1    -0.2530279516945362
#>     Attrib V10    -0.5475453736043969
#>     Attrib V11    -0.8677536202680288
#>     Attrib V12    -0.8721597313487753
#>     Attrib V13    0.3687633255541258
#>     Attrib V14    0.44095574303822765
#>     Attrib V15    0.14701011924417057
#>     Attrib V16    0.18632458144227293
#>     Attrib V17    0.06976907417326383
#>     Attrib V18    -0.037166847735973015
#>     Attrib V19    -0.30723291665649893
#>     Attrib V2    -0.044253276727335894
#>     Attrib V20    -0.3735515422963105
#>     Attrib V21    -0.361773795127608
#>     Attrib V22    -0.4280418604014463
#>     Attrib V23    -0.44078715518739203
#>     Attrib V24    -0.6114433850106763
#>     Attrib V25    -3.353245533265965E-4
#>     Attrib V26    0.2780891137285673
#>     Attrib V27    0.27482029297800736
#>     Attrib V28    0.19561594513589942
#>     Attrib V29    0.5557006109751267
#>     Attrib V3    0.25830636274977775
#>     Attrib V30    -0.2373211579981575
#>     Attrib V31    0.6261865170976171
#>     Attrib V32    0.2691155706259074
#>     Attrib V33    -0.01833401131979189
#>     Attrib V34    0.28239893371814184
#>     Attrib V35    0.1663844940402203
#>     Attrib V36    0.4747583506725142
#>     Attrib V37    0.5297598559208759
#>     Attrib V38    -0.41985849810336995
#>     Attrib V39    -0.3772009949660498
#>     Attrib V4    -0.09007508440873066
#>     Attrib V40    0.2732282703408381
#>     Attrib V41    0.3082543607233039
#>     Attrib V42    -0.045148046911158944
#>     Attrib V43    -0.762885609467551
#>     Attrib V44    -0.2889357907659082
#>     Attrib V45    -0.29520796910504354
#>     Attrib V46    -0.18601222589851774
#>     Attrib V47    0.13834687664494952
#>     Attrib V48    -0.051764694499371156
#>     Attrib V49    -0.3382475877481606
#>     Attrib V5    0.17861948027433636
#>     Attrib V50    0.33244299156031076
#>     Attrib V51    -0.03352050271069214
#>     Attrib V52    -0.047612582225776655
#>     Attrib V53    -0.23124833360912678
#>     Attrib V54    -0.41417911190842616
#>     Attrib V55    -0.1802059805774857
#>     Attrib V56    0.2323760215812041
#>     Attrib V57    -0.44120055782024525
#>     Attrib V58    0.010822068969351865
#>     Attrib V59    -0.12697419129641815
#>     Attrib V6    0.6501558838039301
#>     Attrib V60    -0.2992475989750697
#>     Attrib V7    0.3272830049768188
#>     Attrib V8    0.20992896976553743
#>     Attrib V9    -0.534564369109609
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.7668116912948298
#>     Attrib V1    0.44446811572334816
#>     Attrib V10    0.3444418139953837
#>     Attrib V11    1.1625897197094188
#>     Attrib V12    1.3458603264335873
#>     Attrib V13    0.06503697228977216
#>     Attrib V14    -0.14807245970187483
#>     Attrib V15    -0.2053651964158388
#>     Attrib V16    -0.36096572558710005
#>     Attrib V17    -0.1763320252764474
#>     Attrib V18    -0.35883265613127385
#>     Attrib V19    -0.3735152517259585
#>     Attrib V2    0.0521265811069486
#>     Attrib V20    -0.5104628951960717
#>     Attrib V21    -0.5560154306183661
#>     Attrib V22    -1.214820229414555
#>     Attrib V23    -0.8310370959509241
#>     Attrib V24    -0.08069005367811544
#>     Attrib V25    -0.39251785665174266
#>     Attrib V26    -0.1006500150103872
#>     Attrib V27    0.7355681164194734
#>     Attrib V28    0.9267418830683688
#>     Attrib V29    0.2138148397472298
#>     Attrib V3    -0.15780807408475828
#>     Attrib V30    0.1440400949160467
#>     Attrib V31    -0.38860197015274245
#>     Attrib V32    0.2480473735478877
#>     Attrib V33    0.20859668448285862
#>     Attrib V34    -0.107900060809243
#>     Attrib V35    -0.11041441749431777
#>     Attrib V36    -0.9341579101267512
#>     Attrib V37    -0.5164524188365605
#>     Attrib V38    -0.20094978044226697
#>     Attrib V39    -0.07255866132724732
#>     Attrib V4    0.26266454555622887
#>     Attrib V40    -0.32733705653926604
#>     Attrib V41    0.29721035614010477
#>     Attrib V42    -0.04127638565201037
#>     Attrib V43    0.14951401734106617
#>     Attrib V44    -0.18045570305041575
#>     Attrib V45    0.16395279006712085
#>     Attrib V46    0.35342836189399096
#>     Attrib V47    0.15008415288302052
#>     Attrib V48    0.8995859050470691
#>     Attrib V49    0.9748927934666679
#>     Attrib V5    0.4182166371249758
#>     Attrib V50    -0.5759459240233415
#>     Attrib V51    0.3385382113018232
#>     Attrib V52    0.23234725877606346
#>     Attrib V53    0.553813917715868
#>     Attrib V54    0.1112527234925348
#>     Attrib V55    -0.08786599224264935
#>     Attrib V56    -0.6589298647907114
#>     Attrib V57    0.6008239427905071
#>     Attrib V58    0.08568986907175352
#>     Attrib V59    0.2917922233654
#>     Attrib V6    0.34450534718955084
#>     Attrib V60    0.6094972714194898
#>     Attrib V7    -0.03734602590916161
#>     Attrib V8    -0.3137382958771314
#>     Attrib V9    0.2724542279856436
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.16431810117450757
#>     Attrib V1    -0.41140899063095215
#>     Attrib V10    -0.9125016002134612
#>     Attrib V11    -1.2053825040917427
#>     Attrib V12    -0.9838823833408891
#>     Attrib V13    0.3495959753454991
#>     Attrib V14    0.5717745918804927
#>     Attrib V15    0.2994584548578523
#>     Attrib V16    0.3774760389500093
#>     Attrib V17    0.09647771876676119
#>     Attrib V18    -0.07466543315220728
#>     Attrib V19    -0.4045767695697603
#>     Attrib V2    -0.20268793004675095
#>     Attrib V20    -0.7309273450920628
#>     Attrib V21    -0.767611943105363
#>     Attrib V22    -0.9559545873140664
#>     Attrib V23    -1.0378715994827286
#>     Attrib V24    -0.9156522249813274
#>     Attrib V25    -0.2681078238256114
#>     Attrib V26    0.10746769564494221
#>     Attrib V27    0.12426590217608949
#>     Attrib V28    0.09338061018784673
#>     Attrib V29    0.46854964842570596
#>     Attrib V3    0.19195933021965866
#>     Attrib V30    -0.5474633520434214
#>     Attrib V31    0.9385136588640265
#>     Attrib V32    0.5146658025873972
#>     Attrib V33    0.1277642629041925
#>     Attrib V34    0.465172838901016
#>     Attrib V35    0.08387437914333824
#>     Attrib V36    0.3324645053734426
#>     Attrib V37    0.4487165524094565
#>     Attrib V38    -0.8028573929462647
#>     Attrib V39    -0.6800607363218406
#>     Attrib V4    -0.19774335600063558
#>     Attrib V40    0.3604658974746074
#>     Attrib V41    0.5065894086020482
#>     Attrib V42    -0.15702820801887934
#>     Attrib V43    -1.1318699940339103
#>     Attrib V44    -0.629845528775383
#>     Attrib V45    -0.4816664514331755
#>     Attrib V46    -0.3263683872792091
#>     Attrib V47    0.10686293298052921
#>     Attrib V48    0.1786426710363947
#>     Attrib V49    -0.32885513001200756
#>     Attrib V5    0.2275245790520677
#>     Attrib V50    0.3885214357814571
#>     Attrib V51    -0.05300150785864143
#>     Attrib V52    -0.056926783564937425
#>     Attrib V53    -0.1978192025985737
#>     Attrib V54    -0.43405956630345244
#>     Attrib V55    -0.14876600434332932
#>     Attrib V56    0.23609614019525776
#>     Attrib V57    -0.3301988380214565
#>     Attrib V58    0.14534889507593288
#>     Attrib V59    -0.028293051746784204
#>     Attrib V6    0.9488575456381981
#>     Attrib V60    -0.32943882185837736
#>     Attrib V7    0.42080660232473244
#>     Attrib V8    0.32435232857798335
#>     Attrib V9    -0.8769464485970311
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    0.003641274089416991
#>     Attrib V1    0.14343660604389866
#>     Attrib V10    0.07613579913453261
#>     Attrib V11    0.1651437572570299
#>     Attrib V12    0.25431765708336773
#>     Attrib V13    -0.08842734183505642
#>     Attrib V14    -0.06824173638058698
#>     Attrib V15    0.03670340165129359
#>     Attrib V16    0.027022353451732
#>     Attrib V17    -0.019735193527382733
#>     Attrib V18    -0.009261609539491147
#>     Attrib V19    0.00698580394929211
#>     Attrib V2    -0.012609278083832639
#>     Attrib V20    -0.029015473926079904
#>     Attrib V21    -0.042137013615435495
#>     Attrib V22    -0.12399738817562397
#>     Attrib V23    -0.13423593167672918
#>     Attrib V24    0.1177940711981219
#>     Attrib V25    -0.04408094612249969
#>     Attrib V26    -0.27206051430152617
#>     Attrib V27    -0.17918835293175084
#>     Attrib V28    -0.13667677365173175
#>     Attrib V29    -0.29098431640748545
#>     Attrib V3    0.004724151891121452
#>     Attrib V30    -0.10286598623588451
#>     Attrib V31    -0.2880233149958744
#>     Attrib V32    -0.09001382251347824
#>     Attrib V33    -0.0022580060646829655
#>     Attrib V34    -0.06863194924213033
#>     Attrib V35    -0.15935621578534276
#>     Attrib V36    -0.29615141964107294
#>     Attrib V37    -0.2752421477129341
#>     Attrib V38    0.014896799322551677
#>     Attrib V39    0.10466982295349817
#>     Attrib V4    0.11387671374612636
#>     Attrib V40    -0.10226927445157254
#>     Attrib V41    -0.0720345708871504
#>     Attrib V42    0.05744970235957619
#>     Attrib V43    0.15382213213354606
#>     Attrib V44    -0.06531721110256661
#>     Attrib V45    0.011055399505932019
#>     Attrib V46    0.04563109150049287
#>     Attrib V47    -0.04197721195486689
#>     Attrib V48    0.09216781309476711
#>     Attrib V49    0.11144007236672847
#>     Attrib V5    0.04637813666759548
#>     Attrib V50    -0.061927655902823064
#>     Attrib V51    -0.014114140403646815
#>     Attrib V52    -0.009912562026210015
#>     Attrib V53    0.20650169367775295
#>     Attrib V54    0.22176553290430404
#>     Attrib V55    0.14721651728519722
#>     Attrib V56    -0.034989706441495814
#>     Attrib V57    0.3612277119351136
#>     Attrib V58    0.13145159751646807
#>     Attrib V59    0.22920636864581623
#>     Attrib V6    -0.10457501695646913
#>     Attrib V60    0.3445886034935889
#>     Attrib V7    -0.03002671092002896
#>     Attrib V8    -0.056834065702958445
#>     Attrib V9    0.14136384178901418
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.18295942439491236
#>     Attrib V1    0.21227693135831258
#>     Attrib V10    0.27484081401723504
#>     Attrib V11    0.4497316241170832
#>     Attrib V12    0.4837687646441473
#>     Attrib V13    -0.3078842865744355
#>     Attrib V14    -0.2564496236267057
#>     Attrib V15    0.042037015704940214
#>     Attrib V16    -0.07442611011461613
#>     Attrib V17    -0.06867860819392765
#>     Attrib V18    -0.03394781905886993
#>     Attrib V19    0.13709362788353618
#>     Attrib V2    0.04148780067711067
#>     Attrib V20    0.15535852962675717
#>     Attrib V21    0.13487191922150546
#>     Attrib V22    0.13278032385219185
#>     Attrib V23    0.0892045767365808
#>     Attrib V24    0.3731595716880546
#>     Attrib V25    -0.07298136089324675
#>     Attrib V26    -0.4157070891003724
#>     Attrib V27    -0.297838976071415
#>     Attrib V28    -0.3209071291446494
#>     Attrib V29    -0.5991860363801945
#>     Attrib V3    -0.16825995671074598
#>     Attrib V30    -0.013593919227502823
#>     Attrib V31    -0.4707152462299438
#>     Attrib V32    -0.22175032783126816
#>     Attrib V33    0.08683223443346508
#>     Attrib V34    -0.1920842432269584
#>     Attrib V35    -0.17585692754438673
#>     Attrib V36    -0.46272426666737865
#>     Attrib V37    -0.5172799181252656
#>     Attrib V38    0.16080510715248458
#>     Attrib V39    0.23959338642198746
#>     Attrib V4    0.07150613617829615
#>     Attrib V40    -0.19830794655800765
#>     Attrib V41    -0.1846862359497753
#>     Attrib V42    0.02526304007824152
#>     Attrib V43    0.4496132771351115
#>     Attrib V44    0.043703929076026285
#>     Attrib V45    0.07368590370925984
#>     Attrib V46    0.0513805664504988
#>     Attrib V47    -0.13872914645021994
#>     Attrib V48    0.14669029163470879
#>     Attrib V49    0.1982074030456894
#>     Attrib V5    -0.0442075731588439
#>     Attrib V50    -0.2485808921393491
#>     Attrib V51    -0.027507887651202555
#>     Attrib V52    -0.08560476891053216
#>     Attrib V53    0.1906877373461076
#>     Attrib V54    0.3417371710166403
#>     Attrib V55    0.15097176652138306
#>     Attrib V56    -0.18797678178938845
#>     Attrib V57    0.5128271010218222
#>     Attrib V58    -0.024223259962980494
#>     Attrib V59    0.25771152856100465
#>     Attrib V6    -0.33934825056956863
#>     Attrib V60    0.4431796979934389
#>     Attrib V7    -0.17025665320178737
#>     Attrib V8    -0.09799279749258175
#>     Attrib V9    0.2832357337029908
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.21493360481714174
#>     Attrib V1    0.026044454725106626
#>     Attrib V10    -0.0056604293649229745
#>     Attrib V11    -0.06670840981648343
#>     Attrib V12    -0.06812573383434647
#>     Attrib V13    0.017937855472035115
#>     Attrib V14    0.06442726651301565
#>     Attrib V15    0.018930169747522284
#>     Attrib V16    0.06107750180737154
#>     Attrib V17    -0.003270013470003427
#>     Attrib V18    0.06515188802723235
#>     Attrib V19    -0.05527224646104859
#>     Attrib V2    0.0935536689788087
#>     Attrib V20    -0.024162866476642293
#>     Attrib V21    -0.02239172092248413
#>     Attrib V22    -0.04255503067382331
#>     Attrib V23    -0.03403632792708268
#>     Attrib V24    -0.07095681708242632
#>     Attrib V25    0.01792961912670644
#>     Attrib V26    0.03241570476357888
#>     Attrib V27    -0.01568751286653012
#>     Attrib V28    -0.04602708410563257
#>     Attrib V29    -0.012757986976184032
#>     Attrib V3    0.14856847043932975
#>     Attrib V30    -0.07246651147306046
#>     Attrib V31    0.009340346599249467
#>     Attrib V32    0.012553557534557174
#>     Attrib V33    0.03357605125161545
#>     Attrib V34    0.08247937650500735
#>     Attrib V35    0.05555740234882354
#>     Attrib V36    0.15423764898807085
#>     Attrib V37    0.06138934112704403
#>     Attrib V38    -0.013846557230814002
#>     Attrib V39    0.05434145484587162
#>     Attrib V4    0.047089574258294485
#>     Attrib V40    0.06496031026238515
#>     Attrib V41    0.02567117650942297
#>     Attrib V42    0.06255632454623875
#>     Attrib V43    0.029966397559403793
#>     Attrib V44    0.08818001663732435
#>     Attrib V45    -0.02209923169650036
#>     Attrib V46    0.005009444098497955
#>     Attrib V47    0.07521164512437026
#>     Attrib V48    0.010228198140280692
#>     Attrib V49    3.0252019916208653E-4
#>     Attrib V5    0.08722661575277697
#>     Attrib V50    0.027196954576172442
#>     Attrib V51    0.056034147926186044
#>     Attrib V52    0.011876404461986604
#>     Attrib V53    0.05875325307601356
#>     Attrib V54    -0.02166167173742607
#>     Attrib V55    0.06769371800355131
#>     Attrib V56    0.10415401468804796
#>     Attrib V57    -0.026928667282960804
#>     Attrib V58    0.04092744144680188
#>     Attrib V59    0.07314164261118913
#>     Attrib V6    0.07083018780977555
#>     Attrib V60    0.08471524205908969
#>     Attrib V7    0.06699792929921496
#>     Attrib V8    0.1086483938961193
#>     Attrib V9    0.02055829026569964
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.6467053304624166
#>     Attrib V1    0.3215562164461904
#>     Attrib V10    0.25304037992710515
#>     Attrib V11    0.9238020719329578
#>     Attrib V12    1.2179272816630988
#>     Attrib V13    0.08213902679050351
#>     Attrib V14    -0.08058514405923344
#>     Attrib V15    -0.12095780821897571
#>     Attrib V16    -0.30594552129573016
#>     Attrib V17    -0.16412472306590856
#>     Attrib V18    -0.2949461721419911
#>     Attrib V19    -0.23467244696984563
#>     Attrib V2    0.03753405124180239
#>     Attrib V20    -0.4299105954283238
#>     Attrib V21    -0.5284124023483209
#>     Attrib V22    -0.9752390919117974
#>     Attrib V23    -0.6627322309784459
#>     Attrib V24    0.06137136883818316
#>     Attrib V25    -0.23016705104185833
#>     Attrib V26    -0.07070630232459522
#>     Attrib V27    0.669018974260601
#>     Attrib V28    0.8699867947354744
#>     Attrib V29    0.23782415674674812
#>     Attrib V3    -0.13486447940741222
#>     Attrib V30    0.15707468542655867
#>     Attrib V31    -0.3336927055066875
#>     Attrib V32    0.14290623886621392
#>     Attrib V33    0.20076818640770894
#>     Attrib V34    -0.058855776305611125
#>     Attrib V35    -0.04227613766724535
#>     Attrib V36    -0.762801035373769
#>     Attrib V37    -0.5381300613564354
#>     Attrib V38    -0.11923001356251486
#>     Attrib V39    -0.03835397193289485
#>     Attrib V4    0.277783460104761
#>     Attrib V40    -0.24938703815535573
#>     Attrib V41    0.2746874401560394
#>     Attrib V42    0.08439474026698814
#>     Attrib V43    0.1928102809097422
#>     Attrib V44    -0.19494079093157235
#>     Attrib V45    0.2627473296888352
#>     Attrib V46    0.3416575964398102
#>     Attrib V47    0.1014046569205198
#>     Attrib V48    0.6830332120369034
#>     Attrib V49    0.8219448663632519
#>     Attrib V5    0.3862072314011299
#>     Attrib V50    -0.5505266806335785
#>     Attrib V51    0.22830522289852825
#>     Attrib V52    0.2280252380430113
#>     Attrib V53    0.5332038194537154
#>     Attrib V54    0.1207239278008021
#>     Attrib V55    0.002655096611756234
#>     Attrib V56    -0.6132850472321013
#>     Attrib V57    0.5029673654845681
#>     Attrib V58    0.07524665279473887
#>     Attrib V59    0.26129835088244213
#>     Attrib V6    0.237463079780772
#>     Attrib V60    0.5061822694210176
#>     Attrib V7    -0.028064269449666085
#>     Attrib V8    -0.2956775566245694
#>     Attrib V9    0.20071558173613882
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.12240779745968103
#>     Attrib V1    0.3097802319416257
#>     Attrib V10    0.4879649410327926
#>     Attrib V11    0.7755936446876012
#>     Attrib V12    0.8939415171058743
#>     Attrib V13    -0.27730734237083393
#>     Attrib V14    -0.37724149517108124
#>     Attrib V15    -0.1642449723728005
#>     Attrib V16    -0.27274156713822567
#>     Attrib V17    -0.06632051373014475
#>     Attrib V18    0.06439348254018734
#>     Attrib V19    0.32175229624431784
#>     Attrib V2    0.0289680673970327
#>     Attrib V20    0.4186839511412096
#>     Attrib V21    0.403811258933033
#>     Attrib V22    0.44311303845571876
#>     Attrib V23    0.5371594797451307
#>     Attrib V24    0.6670900700823172
#>     Attrib V25    0.13817502341894417
#>     Attrib V26    -0.1289000271208423
#>     Attrib V27    -0.009080332984026492
#>     Attrib V28    -0.034306794067481335
#>     Attrib V29    -0.3569344267542961
#>     Attrib V3    -0.22959139960507238
#>     Attrib V30    0.20630823880289975
#>     Attrib V31    -0.7901932549061444
#>     Attrib V32    -0.4170875643069076
#>     Attrib V33    -0.06347367120957843
#>     Attrib V34    -0.24702746382316962
#>     Attrib V35    0.001053740217317155
#>     Attrib V36    -0.2256058998952458
#>     Attrib V37    -0.26560777681555103
#>     Attrib V38    0.48155084529794306
#>     Attrib V39    0.3708701690319395
#>     Attrib V4    0.1330790707503196
#>     Attrib V40    -0.27826969564801607
#>     Attrib V41    -0.2262443299228579
#>     Attrib V42    0.049912064947043325
#>     Attrib V43    0.769261545027208
#>     Attrib V44    0.33929158008847615
#>     Attrib V45    0.2856398434296645
#>     Attrib V46    0.18998260586885626
#>     Attrib V47    -0.16174356047395563
#>     Attrib V48    0.02432169916715459
#>     Attrib V49    0.24642856092994178
#>     Attrib V5    -0.006109680148845856
#>     Attrib V50    -0.42206275640470753
#>     Attrib V51    0.1036626670228088
#>     Attrib V52    -0.030311047973828133
#>     Attrib V53    0.2524469531173709
#>     Attrib V54    0.38427561536046906
#>     Attrib V55    0.07460012186891253
#>     Attrib V56    -0.26363829292561897
#>     Attrib V57    0.2899577237546928
#>     Attrib V58    -0.1294944245688932
#>     Attrib V59    0.21395425705248275
#>     Attrib V6    -0.5061297824036302
#>     Attrib V60    0.47218652986601367
#>     Attrib V7    -0.2548995419252889
#>     Attrib V8    -0.39284851226696405
#>     Attrib V9    0.48727450416774665
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.010124909555740807
#>     Attrib V1    -0.2230835557461526
#>     Attrib V10    -0.6037336066189797
#>     Attrib V11    -0.8826579346900867
#>     Attrib V12    -0.8167660842987123
#>     Attrib V13    0.2703085204530371
#>     Attrib V14    0.42530909776463893
#>     Attrib V15    0.2017284709692282
#>     Attrib V16    0.25024072880385967
#>     Attrib V17    0.05706728327482994
#>     Attrib V18    -0.058860268803563
#>     Attrib V19    -0.35243243274603686
#>     Attrib V2    -0.05640873380152242
#>     Attrib V20    -0.4717435152236169
#>     Attrib V21    -0.41645900851893464
#>     Attrib V22    -0.5678693259522539
#>     Attrib V23    -0.602002090521256
#>     Attrib V24    -0.6383426736308976
#>     Attrib V25    -0.08928152507044548
#>     Attrib V26    0.24601369460437253
#>     Attrib V27    0.17746208157826984
#>     Attrib V28    0.12935692378316516
#>     Attrib V29    0.4740159399824101
#>     Attrib V3    0.1537158486612243
#>     Attrib V30    -0.255004530852837
#>     Attrib V31    0.7568004648034098
#>     Attrib V32    0.30362415467351883
#>     Attrib V33    0.024923076586018212
#>     Attrib V34    0.24232203087646645
#>     Attrib V35    0.06300286004172298
#>     Attrib V36    0.31991218209720734
#>     Attrib V37    0.410356134807316
#>     Attrib V38    -0.5388060208766813
#>     Attrib V39    -0.4541474803340592
#>     Attrib V4    -0.09393685836720833
#>     Attrib V40    0.3076481217264654
#>     Attrib V41    0.3666473615645152
#>     Attrib V42    -0.11141806279524437
#>     Attrib V43    -0.7466652394813483
#>     Attrib V44    -0.35044460706628383
#>     Attrib V45    -0.34648901579866975
#>     Attrib V46    -0.2633686633491816
#>     Attrib V47    0.07236301444700378
#>     Attrib V48    0.06265350123882966
#>     Attrib V49    -0.31636112123546994
#>     Attrib V5    0.14911513435273008
#>     Attrib V50    0.349657137555723
#>     Attrib V51    -0.00392779559927039
#>     Attrib V52    0.013494734921956327
#>     Attrib V53    -0.1927374688228086
#>     Attrib V54    -0.3301944985231845
#>     Attrib V55    -0.13920683166503695
#>     Attrib V56    0.19330072800134382
#>     Attrib V57    -0.28992327676156376
#>     Attrib V58    0.04753004221645828
#>     Attrib V59    -0.0663391696499157
#>     Attrib V6    0.6235659906976438
#>     Attrib V60    -0.2813085443388306
#>     Attrib V7    0.3212021716448592
#>     Attrib V8    0.22419555129388274
#>     Attrib V9    -0.556188100263588
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.19151410244841904
#>     Attrib V1    0.28100213961951764
#>     Attrib V10    0.2844646506345393
#>     Attrib V11    0.41619194438809143
#>     Attrib V12    0.530450426152493
#>     Attrib V13    -0.3717698812956703
#>     Attrib V14    -0.21310651386891097
#>     Attrib V15    0.020802660735868284
#>     Attrib V16    -0.043808213561195894
#>     Attrib V17    -0.1354646181465372
#>     Attrib V18    -0.05565967990958406
#>     Attrib V19    0.08077038335684598
#>     Attrib V2    -0.041122599159942944
#>     Attrib V20    0.2180518077249941
#>     Attrib V21    0.213767090476652
#>     Attrib V22    0.11988721764625919
#>     Attrib V23    0.02145114179042456
#>     Attrib V24    0.4080922397434351
#>     Attrib V25    -0.09865558540021653
#>     Attrib V26    -0.6712692482275043
#>     Attrib V27    -0.6625179934084039
#>     Attrib V28    -0.8306564996321161
#>     Attrib V29    -1.0001211326598656
#>     Attrib V3    -0.21392241396878364
#>     Attrib V30    -0.166601547617216
#>     Attrib V31    -0.4669410301900944
#>     Attrib V32    -0.20639395985804856
#>     Attrib V33    0.10305866111137821
#>     Attrib V34    -0.1346029875174113
#>     Attrib V35    -0.3211225831399134
#>     Attrib V36    -0.5950616264959478
#>     Attrib V37    -0.77058379679032
#>     Attrib V38    -0.016913205149005517
#>     Attrib V39    0.23150503586007504
#>     Attrib V4    0.05682350992966033
#>     Attrib V40    -0.05627169213833899
#>     Attrib V41    -0.26607963265796936
#>     Attrib V42    0.07348261754070035
#>     Attrib V43    0.5312541039166924
#>     Attrib V44    -0.07933022863628757
#>     Attrib V45    -0.12621814391155525
#>     Attrib V46    0.05538240062747586
#>     Attrib V47    -0.14903782281725175
#>     Attrib V48    0.20974717571445417
#>     Attrib V49    0.31065493743805966
#>     Attrib V5    -0.08755862131522586
#>     Attrib V50    -0.1776702370078742
#>     Attrib V51    -0.09249860306664262
#>     Attrib V52    -0.12755493963575154
#>     Attrib V53    0.19149349685783965
#>     Attrib V54    0.5991351654558107
#>     Attrib V55    0.16845358027425925
#>     Attrib V56    -0.1601263343842498
#>     Attrib V57    0.6649037175703881
#>     Attrib V58    0.13207751646228355
#>     Attrib V59    0.47905345403086286
#>     Attrib V6    -0.3980858432445179
#>     Attrib V60    0.6664015078048556
#>     Attrib V7    -0.024242974141219082
#>     Attrib V8    -0.12206263906727989
#>     Attrib V9    0.3339743411724024
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.09136946149128249
#>     Attrib V1    0.21048920270053573
#>     Attrib V10    0.150345410240301
#>     Attrib V11    0.37358837631313857
#>     Attrib V12    0.4859463065745166
#>     Attrib V13    -0.24154357972304694
#>     Attrib V14    -0.16749277837193535
#>     Attrib V15    0.022314956727043516
#>     Attrib V16    -0.0983347324533388
#>     Attrib V17    -0.030358735633210145
#>     Attrib V18    0.0073944289754601334
#>     Attrib V19    0.13110901775539907
#>     Attrib V2    -0.03621952338691101
#>     Attrib V20    0.16311710339756785
#>     Attrib V21    0.14072562792569943
#>     Attrib V22    0.13114867457301702
#>     Attrib V23    0.1160442244751142
#>     Attrib V24    0.29180685240988974
#>     Attrib V25    -0.025103166372222655
#>     Attrib V26    -0.35508069355830546
#>     Attrib V27    -0.40088031170832783
#>     Attrib V28    -0.5225801707069303
#>     Attrib V29    -0.7171679792570154
#>     Attrib V3    -0.07715446406416009
#>     Attrib V30    -0.13703201960483094
#>     Attrib V31    -0.5451304243870565
#>     Attrib V32    -0.2864783154549934
#>     Attrib V33    0.002685468813078688
#>     Attrib V34    -0.17571337361288847
#>     Attrib V35    -0.13169032610686143
#>     Attrib V36    -0.3169974580909806
#>     Attrib V37    -0.3847689863120095
#>     Attrib V38    0.11058624975984528
#>     Attrib V39    0.19766086441218236
#>     Attrib V4    0.14736317770151136
#>     Attrib V40    -0.19152677536555432
#>     Attrib V41    -0.25357717107922206
#>     Attrib V42    0.01983371821256861
#>     Attrib V43    0.43055855735515014
#>     Attrib V44    0.01860512303787653
#>     Attrib V45    0.056867108334580294
#>     Attrib V46    0.05942597479175231
#>     Attrib V47    -0.07887657828855768
#>     Attrib V48    0.019034689920703698
#>     Attrib V49    0.13590883156526276
#>     Attrib V5    -0.025968135613539323
#>     Attrib V50    -0.2313936018989546
#>     Attrib V51    -0.12446574967853337
#>     Attrib V52    -0.06300249077639915
#>     Attrib V53    0.21754803230046799
#>     Attrib V54    0.3833318324712302
#>     Attrib V55    0.1610360751471328
#>     Attrib V56    -0.11582443137329627
#>     Attrib V57    0.4456783856761375
#>     Attrib V58    0.048773221552322533
#>     Attrib V59    0.3832480552715352
#>     Attrib V6    -0.3257005889160029
#>     Attrib V60    0.4598538266369345
#>     Attrib V7    -0.08091835735888107
#>     Attrib V8    -0.09708292313922856
#>     Attrib V9    0.2631337405856224
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.14813110885978123
#>     Attrib V1    0.015576549741924704
#>     Attrib V10    -0.05295992199524862
#>     Attrib V11    -0.09967957057420446
#>     Attrib V12    -0.06205154927559341
#>     Attrib V13    0.017004013813503634
#>     Attrib V14    0.07492582286280891
#>     Attrib V15    0.10103567791292045
#>     Attrib V16    0.06742470443516392
#>     Attrib V17    0.09727883639495688
#>     Attrib V18    0.02110271331214661
#>     Attrib V19    -0.01529222799508309
#>     Attrib V2    0.06275483012449298
#>     Attrib V20    -0.03857528781768922
#>     Attrib V21    -0.05292314482166442
#>     Attrib V22    -0.06303566040776493
#>     Attrib V23    -0.01797478736190295
#>     Attrib V24    -0.1044470330657225
#>     Attrib V25    -0.01328414914769592
#>     Attrib V26    0.04807104026116801
#>     Attrib V27    -0.06664787634719575
#>     Attrib V28    -0.03321630088286056
#>     Attrib V29    0.0021684213878582718
#>     Attrib V3    0.08273356087138771
#>     Attrib V30    -0.03728592556214103
#>     Attrib V31    0.03949333285214141
#>     Attrib V32    0.0677223417570041
#>     Attrib V33    -0.0015281461977848141
#>     Attrib V34    0.06499754490382337
#>     Attrib V35    0.08352428631511777
#>     Attrib V36    0.15289180416082532
#>     Attrib V37    0.07389617915626183
#>     Attrib V38    -0.004603150372419696
#>     Attrib V39    -0.001697921715516293
#>     Attrib V4    0.0983326208619029
#>     Attrib V40    0.12936123333655813
#>     Attrib V41    0.10596740694182175
#>     Attrib V42    0.035933004920889994
#>     Attrib V43    0.05484006235515664
#>     Attrib V44    0.024833050594245173
#>     Attrib V45    -0.03314876054895215
#>     Attrib V46    0.02397801694419866
#>     Attrib V47    0.07827937380622989
#>     Attrib V48    -0.004408350600618825
#>     Attrib V49    -0.07977386312991368
#>     Attrib V5    0.04155517005137108
#>     Attrib V50    0.11943683951059975
#>     Attrib V51    0.04003347559860682
#>     Attrib V52    0.07265839394865274
#>     Attrib V53    0.0021492916937881587
#>     Attrib V54    -0.02467539961453156
#>     Attrib V55    0.04830642047797946
#>     Attrib V56    0.12221607715621305
#>     Attrib V57    0.03321549956266192
#>     Attrib V58    0.03417729947411844
#>     Attrib V59    0.03498276964607509
#>     Attrib V6    0.14211789498839325
#>     Attrib V60    -0.005405667788805207
#>     Attrib V7    0.02071946798575077
#>     Attrib V8    0.09564647471612332
#>     Attrib V9    0.04480629920801468
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.8229220663540396
#>     Attrib V1    0.41956870481376257
#>     Attrib V10    0.5943340031050494
#>     Attrib V11    1.5525697533769112
#>     Attrib V12    1.7686963687817943
#>     Attrib V13    0.07698629016759453
#>     Attrib V14    -0.44813964275742074
#>     Attrib V15    -0.7695444294383528
#>     Attrib V16    -0.4837905145053287
#>     Attrib V17    0.2605274678504607
#>     Attrib V18    0.16283941786880748
#>     Attrib V19    0.2105596768317275
#>     Attrib V2    0.2851692618031101
#>     Attrib V20    0.052966740230844196
#>     Attrib V21    0.07552823721648211
#>     Attrib V22    -0.3496595184684984
#>     Attrib V23    0.4165964662870737
#>     Attrib V24    0.5834061046328823
#>     Attrib V25    -0.32037256931626645
#>     Attrib V26    0.28807835741094384
#>     Attrib V27    1.3319436075771083
#>     Attrib V28    1.9991585149368105
#>     Attrib V29    1.1206908882375444
#>     Attrib V3    -0.026053724736707952
#>     Attrib V30    0.5038467738191232
#>     Attrib V31    -0.7556261017607049
#>     Attrib V32    0.2756310332042245
#>     Attrib V33    -0.04266571716905975
#>     Attrib V34    -0.2971550435750525
#>     Attrib V35    0.09145273553288846
#>     Attrib V36    -1.0032572755210203
#>     Attrib V37    -0.233430025105224
#>     Attrib V38    0.30387459376523157
#>     Attrib V39    0.36105215048913936
#>     Attrib V4    0.39556983389071104
#>     Attrib V40    -0.15173201718995574
#>     Attrib V41    0.9798808713584627
#>     Attrib V42    0.1737184807825693
#>     Attrib V43    0.5878471133026235
#>     Attrib V44    0.39140202758192616
#>     Attrib V45    0.6202834312556489
#>     Attrib V46    0.6243815678540345
#>     Attrib V47    0.05880142401059589
#>     Attrib V48    0.588392736616206
#>     Attrib V49    1.3450369491025314
#>     Attrib V5    0.5342887654501574
#>     Attrib V50    -0.8292326013957368
#>     Attrib V51    0.6053705190829404
#>     Attrib V52    0.5539646031166846
#>     Attrib V53    0.9386489173740141
#>     Attrib V54    -0.22310464600554356
#>     Attrib V55    -0.3299779539099484
#>     Attrib V56    -0.7807809524113453
#>     Attrib V57    0.12642491850611629
#>     Attrib V58    -0.2065397687074916
#>     Attrib V59    -0.06868286567765548
#>     Attrib V6    0.3958221420790298
#>     Attrib V60    0.22338191587057618
#>     Attrib V7    -0.4516197576296729
#>     Attrib V8    -0.7359120525938815
#>     Attrib V9    0.49154641502689733
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.24411695188994234
#>     Attrib V1    -0.201447887636284
#>     Attrib V10    -0.42437274730141067
#>     Attrib V11    -0.7263978168428409
#>     Attrib V12    -0.7149692094601351
#>     Attrib V13    0.2575588724062773
#>     Attrib V14    0.4154589170400102
#>     Attrib V15    0.13474965090417815
#>     Attrib V16    0.1836175062151153
#>     Attrib V17    0.08079271129898741
#>     Attrib V18    -0.03475362877864822
#>     Attrib V19    -0.13876687142002705
#>     Attrib V2    0.022453986497841992
#>     Attrib V20    -0.22830435797267065
#>     Attrib V21    -0.2172799559811799
#>     Attrib V22    -0.19778358780913718
#>     Attrib V23    -0.2709972823507874
#>     Attrib V24    -0.4881302840467442
#>     Attrib V25    0.04325178313598224
#>     Attrib V26    0.3335456896940143
#>     Attrib V27    0.2514828828457677
#>     Attrib V28    0.20349541223744858
#>     Attrib V29    0.48272279085216074
#>     Attrib V3    0.16996561436899837
#>     Attrib V30    -0.16263133538481184
#>     Attrib V31    0.4842190782902142
#>     Attrib V32    0.11900287093603301
#>     Attrib V33    -0.005047815113795212
#>     Attrib V34    0.19410024080056829
#>     Attrib V35    0.2459857682112744
#>     Attrib V36    0.5546031164323022
#>     Attrib V37    0.5310179114862247
#>     Attrib V38    -0.28506763778029426
#>     Attrib V39    -0.2827956768747791
#>     Attrib V4    -0.037505350757961235
#>     Attrib V40    0.20358270974344767
#>     Attrib V41    0.16117352261424917
#>     Attrib V42    -0.025199175173923186
#>     Attrib V43    -0.5178701294607242
#>     Attrib V44    -0.13422100133398512
#>     Attrib V45    -0.16365466008471632
#>     Attrib V46    -0.19840036868380198
#>     Attrib V47    0.027093226098264044
#>     Attrib V48    -0.08037346446838171
#>     Attrib V49    -0.3534456978667973
#>     Attrib V5    0.04559051535101521
#>     Attrib V50    0.35672883016687196
#>     Attrib V51    -0.08041758669574971
#>     Attrib V52    -0.03133230954547933
#>     Attrib V53    -0.19744936148370384
#>     Attrib V54    -0.34035818760369185
#>     Attrib V55    -0.13224409654724703
#>     Attrib V56    0.25389467032570723
#>     Attrib V57    -0.40607852401363476
#>     Attrib V58    0.015740258426844105
#>     Attrib V59    -0.14375202848271837
#>     Attrib V6    0.4748953713383604
#>     Attrib V60    -0.28478380455782787
#>     Attrib V7    0.17530488791266616
#>     Attrib V8    0.23690923738828853
#>     Attrib V9    -0.4199903725137012
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.7312531940207324
#>     Attrib V1    0.4239807171214162
#>     Attrib V10    0.46701743209564356
#>     Attrib V11    1.1364309264900923
#>     Attrib V12    1.3183919462361267
#>     Attrib V13    0.06266903859351151
#>     Attrib V14    -0.3487429550824734
#>     Attrib V15    -0.3463675617919373
#>     Attrib V16    -0.34809850602980663
#>     Attrib V17    -0.06975331926696057
#>     Attrib V18    -0.08407661922882308
#>     Attrib V19    0.004944427636945097
#>     Attrib V2    0.031690890255447954
#>     Attrib V20    -0.16050183894426023
#>     Attrib V21    -0.2022635844993137
#>     Attrib V22    -0.6199409218539321
#>     Attrib V23    -0.21886005652016535
#>     Attrib V24    0.3888486907166794
#>     Attrib V25    -0.07313014562431011
#>     Attrib V26    0.2826931727452109
#>     Attrib V27    0.9739133770185601
#>     Attrib V28    1.2871228302135154
#>     Attrib V29    0.5578052256607594
#>     Attrib V3    -0.20440608267164892
#>     Attrib V30    0.33247602281831923
#>     Attrib V31    -0.6376651281559028
#>     Attrib V32    -0.004523589912695717
#>     Attrib V33    0.05734853581647267
#>     Attrib V34    -0.03372665668778361
#>     Attrib V35    0.2597634368812348
#>     Attrib V36    -0.43579447696258355
#>     Attrib V37    -0.08944996886431289
#>     Attrib V38    0.2975555351628477
#>     Attrib V39    0.17931351404170673
#>     Attrib V4    0.2551690632378148
#>     Attrib V40    -0.36800843938374994
#>     Attrib V41    0.37078194436615824
#>     Attrib V42    0.039301752542065554
#>     Attrib V43    0.3351556994137043
#>     Attrib V44    0.1271814797559267
#>     Attrib V45    0.49704449983798316
#>     Attrib V46    0.44630780693925665
#>     Attrib V47    0.09704238542118784
#>     Attrib V48    0.5968525965358822
#>     Attrib V49    0.7450092322132562
#>     Attrib V5    0.3964075484802718
#>     Attrib V50    -0.6554941404300435
#>     Attrib V51    0.38361644554190977
#>     Attrib V52    0.16948100122520207
#>     Attrib V53    0.6306315370900861
#>     Attrib V54    0.022540197209404995
#>     Attrib V55    -0.1668190118487718
#>     Attrib V56    -0.7074335840342926
#>     Attrib V57    0.32116833066405776
#>     Attrib V58    -0.23542552268297495
#>     Attrib V59    0.16672103676540953
#>     Attrib V6    0.19456501871127743
#>     Attrib V60    0.479506362096226
#>     Attrib V7    -0.23647087621770208
#>     Attrib V8    -0.5283024700709217
#>     Attrib V9    0.34101682046325416
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.1808824085427232
#>     Attrib V1    -0.40320093875423096
#>     Attrib V10    -0.991891256425259
#>     Attrib V11    -1.2010381629146314
#>     Attrib V12    -1.0932896576731912
#>     Attrib V13    0.31701674796286816
#>     Attrib V14    0.5917735192531004
#>     Attrib V15    0.34520654224886876
#>     Attrib V16    0.4320409467089574
#>     Attrib V17    0.0536775025282091
#>     Attrib V18    -0.02256775921960905
#>     Attrib V19    -0.48193326083091936
#>     Attrib V2    -0.24069678657648327
#>     Attrib V20    -0.7802495889962479
#>     Attrib V21    -0.745768500956678
#>     Attrib V22    -0.9760907470479192
#>     Attrib V23    -1.0823167488465044
#>     Attrib V24    -0.9117713826983731
#>     Attrib V25    -0.28539852072123956
#>     Attrib V26    0.05296779671331461
#>     Attrib V27    0.16842957851008764
#>     Attrib V28    0.010247799197349928
#>     Attrib V29    0.38237423501855144
#>     Attrib V3    0.15858373344861548
#>     Attrib V30    -0.5070939074194089
#>     Attrib V31    0.9047196629905604
#>     Attrib V32    0.5219361314181026
#>     Attrib V33    0.13098049600997344
#>     Attrib V34    0.42414792303683624
#>     Attrib V35    0.053737715014444805
#>     Attrib V36    0.3205964595411862
#>     Attrib V37    0.2725652734059672
#>     Attrib V38    -0.8211330999987699
#>     Attrib V39    -0.670252235824015
#>     Attrib V4    -0.18830569410458228
#>     Attrib V40    0.3658388006584143
#>     Attrib V41    0.4782052480341998
#>     Attrib V42    -0.11352940521579027
#>     Attrib V43    -1.03895227506384
#>     Attrib V44    -0.612928144941341
#>     Attrib V45    -0.4953574982678165
#>     Attrib V46    -0.35895728918923053
#>     Attrib V47    0.05558696162749315
#>     Attrib V48    0.16743189704442663
#>     Attrib V49    -0.3314367708913207
#>     Attrib V5    0.12421539339078816
#>     Attrib V50    0.4100691048721457
#>     Attrib V51    -0.1862063533066028
#>     Attrib V52    0.011756794221695054
#>     Attrib V53    -0.23943135432934948
#>     Attrib V54    -0.3233141773119064
#>     Attrib V55    -0.10823217768815391
#>     Attrib V56    0.19203008737234034
#>     Attrib V57    -0.2396001014984889
#>     Attrib V58    0.20344826507325758
#>     Attrib V59    0.03735511172431923
#>     Attrib V6    0.8683107792034185
#>     Attrib V60    -0.30756528355810364
#>     Attrib V7    0.43837433321465347
#>     Attrib V8    0.3752058583901315
#>     Attrib V9    -0.8487365367409692
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.32011356517967976
#>     Attrib V1    0.14627159042178703
#>     Attrib V10    0.29476663984816515
#>     Attrib V11    0.7000926798584174
#>     Attrib V12    0.7706791976287639
#>     Attrib V13    -0.2623227350957914
#>     Attrib V14    -0.3237809372095937
#>     Attrib V15    -0.17977513185261967
#>     Attrib V16    -0.25899106900150254
#>     Attrib V17    -0.12431785430288278
#>     Attrib V18    -0.08280964569752731
#>     Attrib V19    0.07087029257226689
#>     Attrib V2    -0.07119032886553932
#>     Attrib V20    0.14875109361277225
#>     Attrib V21    0.09598710472773696
#>     Attrib V22    0.0016631177583612015
#>     Attrib V23    0.10939176484141397
#>     Attrib V24    0.5231329456501382
#>     Attrib V25    0.08739164985340195
#>     Attrib V26    -0.25116508079254096
#>     Attrib V27    0.0016070026492185936
#>     Attrib V28    0.10916695720104294
#>     Attrib V29    -0.22809996100014315
#>     Attrib V3    -0.21636239154780224
#>     Attrib V30    0.07756739824236658
#>     Attrib V31    -0.5626811326577474
#>     Attrib V32    -0.18100533905097826
#>     Attrib V33    0.03281191745166588
#>     Attrib V34    -0.1580520701654189
#>     Attrib V35    -0.06909450472411408
#>     Attrib V36    -0.4923877468016777
#>     Attrib V37    -0.42368727253536376
#>     Attrib V38    0.16668663978807513
#>     Attrib V39    0.2315838506929211
#>     Attrib V4    0.013824532490705681
#>     Attrib V40    -0.24950357412118876
#>     Attrib V41    -0.09049593567712058
#>     Attrib V42    0.03975976129268641
#>     Attrib V43    0.52343189814106
#>     Attrib V44    0.016287365257952796
#>     Attrib V45    0.2131770803124894
#>     Attrib V46    0.2270592857577816
#>     Attrib V47    0.01643517398243992
#>     Attrib V48    0.1844556788208734
#>     Attrib V49    0.30941537553986787
#>     Attrib V5    -0.023318594887157606
#>     Attrib V50    -0.39823438575072695
#>     Attrib V51    0.08506080312724337
#>     Attrib V52    0.044089377470007796
#>     Attrib V53    0.2854845872762983
#>     Attrib V54    0.21076099001410883
#>     Attrib V55    0.06714205973295752
#>     Attrib V56    -0.3556504347739473
#>     Attrib V57    0.38016992887218004
#>     Attrib V58    -0.13414366545853756
#>     Attrib V59    0.11180905040449993
#>     Attrib V6    -0.29961525322162536
#>     Attrib V60    0.35574068905240025
#>     Attrib V7    -0.2502587508037694
#>     Attrib V8    -0.26878802539554486
#>     Attrib V9    0.30826979755656964
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.23299781361594277
#>     Attrib V1    -0.1633953073831712
#>     Attrib V10    -0.3611621736180264
#>     Attrib V11    -0.704014492910103
#>     Attrib V12    -0.7321022254787353
#>     Attrib V13    0.32582471248345896
#>     Attrib V14    0.39058169111005947
#>     Attrib V15    0.17963689928557522
#>     Attrib V16    0.20963317740842885
#>     Attrib V17    0.09252129628575237
#>     Attrib V18    -0.006216528342929582
#>     Attrib V19    -0.2191455095115049
#>     Attrib V2    0.0629103522968995
#>     Attrib V20    -0.2483800077687853
#>     Attrib V21    -0.20030305808793666
#>     Attrib V22    -0.19211391660125773
#>     Attrib V23    -0.2504592977477254
#>     Attrib V24    -0.5072508066425565
#>     Attrib V25    0.0626756675301494
#>     Attrib V26    0.39502096063344966
#>     Attrib V27    0.2096005225866515
#>     Attrib V28    0.17975551106204274
#>     Attrib V29    0.43054436191077
#>     Attrib V3    0.19742857106488226
#>     Attrib V30    -0.13723613154034453
#>     Attrib V31    0.6298380905977892
#>     Attrib V32    0.1747808785004687
#>     Attrib V33    -0.05496253475963406
#>     Attrib V34    0.17257540848911215
#>     Attrib V35    0.17921680146729158
#>     Attrib V36    0.44600768330049956
#>     Attrib V37    0.48467424563532086
#>     Attrib V38    -0.34557566359245584
#>     Attrib V39    -0.2680366790011663
#>     Attrib V4    -0.04475912133312772
#>     Attrib V40    0.24702372514157886
#>     Attrib V41    0.18809964663129616
#>     Attrib V42    -0.004944355605093915
#>     Attrib V43    -0.573261459157655
#>     Attrib V44    -0.20321129826627243
#>     Attrib V45    -0.18179019255344428
#>     Attrib V46    -0.1931906208615218
#>     Attrib V47    0.04361319115832655
#>     Attrib V48    -0.08877214591812205
#>     Attrib V49    -0.3631349456094254
#>     Attrib V5    0.044969609743075276
#>     Attrib V50    0.35564904960252264
#>     Attrib V51    -0.04866125437262464
#>     Attrib V52    0.019584775425036338
#>     Attrib V53    -0.18027874432732782
#>     Attrib V54    -0.31724168215725557
#>     Attrib V55    -0.13813871939850875
#>     Attrib V56    0.3093193102581392
#>     Attrib V57    -0.4739946605188892
#>     Attrib V58    0.05662204212157991
#>     Attrib V59    -0.15087073139890037
#>     Attrib V6    0.47408696943809614
#>     Attrib V60    -0.3550504477639659
#>     Attrib V7    0.17483390377496996
#>     Attrib V8    0.23478516727392665
#>     Attrib V9    -0.4178837608599254
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.13471179999943383
#>     Attrib V1    0.247592705664012
#>     Attrib V10    0.30622699288655403
#>     Attrib V11    0.552355581950726
#>     Attrib V12    0.5590011435818908
#>     Attrib V13    -0.34439463236106704
#>     Attrib V14    -0.2421286586201749
#>     Attrib V15    0.05163969312606115
#>     Attrib V16    -0.09981274223850288
#>     Attrib V17    -0.10611392406357116
#>     Attrib V18    -0.00880563357834661
#>     Attrib V19    0.14722201449556796
#>     Attrib V2    0.0016473845321548133
#>     Attrib V20    0.29813270621071114
#>     Attrib V21    0.2220222782481081
#>     Attrib V22    0.23414878928806537
#>     Attrib V23    0.17511101591185846
#>     Attrib V24    0.46237636664015147
#>     Attrib V25    -0.09370588583771358
#>     Attrib V26    -0.5807654232343816
#>     Attrib V27    -0.6260342244180387
#>     Attrib V28    -0.7605895306591272
#>     Attrib V29    -1.0087938040231097
#>     Attrib V3    -0.24334449984214512
#>     Attrib V30    -0.1248553599697911
#>     Attrib V31    -0.6036476725297678
#>     Attrib V32    -0.328531235752843
#>     Attrib V33    0.09339276922818436
#>     Attrib V34    -0.1541173516477522
#>     Attrib V35    -0.2364734232619166
#>     Attrib V36    -0.5440775066979648
#>     Attrib V37    -0.7341761566352244
#>     Attrib V38    0.14411583544535464
#>     Attrib V39    0.2854170791951414
#>     Attrib V4    0.07908538863478003
#>     Attrib V40    -0.15708703094813078
#>     Attrib V41    -0.3916175021899074
#>     Attrib V42    0.07006092620657213
#>     Attrib V43    0.637147176428692
#>     Attrib V44    0.07675281395564501
#>     Attrib V45    0.003658241750638566
#>     Attrib V46    0.08076213334887422
#>     Attrib V47    -0.1242228607642062
#>     Attrib V48    0.13045175741311932
#>     Attrib V49    0.2836826232651248
#>     Attrib V5    -0.1729739671007218
#>     Attrib V50    -0.22442582728575397
#>     Attrib V51    -0.1308663726062368
#>     Attrib V52    -0.10950013001202277
#>     Attrib V53    0.26530445535703323
#>     Attrib V54    0.6209703547019818
#>     Attrib V55    0.22586422865787353
#>     Attrib V56    -0.23964416874823516
#>     Attrib V57    0.6319492731261217
#>     Attrib V58    0.06437071960502758
#>     Attrib V59    0.4450139776834627
#>     Attrib V6    -0.5370730451309395
#>     Attrib V60    0.6055615417349867
#>     Attrib V7    -0.08825865609507123
#>     Attrib V8    -0.05424001087012608
#>     Attrib V9    0.4133101223034776
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.07806809187972362
#>     Attrib V1    0.15041093518609194
#>     Attrib V10    0.009094353547187205
#>     Attrib V11    0.13627632878435403
#>     Attrib V12    0.18830508841541624
#>     Attrib V13    -0.07078007659188505
#>     Attrib V14    0.06990942052481453
#>     Attrib V15    0.06957738550421601
#>     Attrib V16    0.035745357414940296
#>     Attrib V17    -0.04371031803516481
#>     Attrib V18    0.0227005488202161
#>     Attrib V19    -0.06860078323086544
#>     Attrib V2    0.06019956840884434
#>     Attrib V20    -0.02798533811064785
#>     Attrib V21    -0.035159446701366164
#>     Attrib V22    -0.11909737785633608
#>     Attrib V23    -0.06845635751120868
#>     Attrib V24    0.007455208796457577
#>     Attrib V25    -0.08896431506689051
#>     Attrib V26    -0.14514604824820107
#>     Attrib V27    -0.06905476688520795
#>     Attrib V28    -0.004645131278507675
#>     Attrib V29    -0.11546639763941462
#>     Attrib V3    0.08375529533577701
#>     Attrib V30    -0.016557460999956027
#>     Attrib V31    -0.22031728519979704
#>     Attrib V32    -0.10026169859496407
#>     Attrib V33    0.015396573425846907
#>     Attrib V34    -0.03981431657370895
#>     Attrib V35    -0.027165325948315253
#>     Attrib V36    -0.06498801078354388
#>     Attrib V37    -0.11359065008623516
#>     Attrib V38    0.0035276488400625863
#>     Attrib V39    0.08245470500235692
#>     Attrib V4    0.11011479475748721
#>     Attrib V40    -0.0737177465495366
#>     Attrib V41    -0.08508710152263597
#>     Attrib V42    0.053100186054055296
#>     Attrib V43    0.09309079797929724
#>     Attrib V44    0.05020392354081708
#>     Attrib V45    0.07489125394711284
#>     Attrib V46    0.05017465727352758
#>     Attrib V47    -0.011223693851170214
#>     Attrib V48    0.05613015314546184
#>     Attrib V49    0.13738428247544723
#>     Attrib V5    0.08970084218214681
#>     Attrib V50    -0.055330877629366754
#>     Attrib V51    -0.021546836035655822
#>     Attrib V52    0.03006924999798585
#>     Attrib V53    0.1398807230150155
#>     Attrib V54    0.129957554263584
#>     Attrib V55    0.10027236953125135
#>     Attrib V56    0.002312915787714887
#>     Attrib V57    0.2233092659206844
#>     Attrib V58    0.14138738865495767
#>     Attrib V59    0.1817290702458374
#>     Attrib V6    -0.015168119564397599
#>     Attrib V60    0.24534076857403916
#>     Attrib V7    -0.01435110603313394
#>     Attrib V8    0.03752425385031137
#>     Attrib V9    0.116595727513586
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
