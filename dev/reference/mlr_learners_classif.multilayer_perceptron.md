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
#>     Threshold    0.22385351292767006
#>     Node 2    2.562309358342527
#>     Node 3    2.0389221997442095
#>     Node 4    1.3143767058812206
#>     Node 5    -1.3664720288684151
#>     Node 6    1.4294859741878139
#>     Node 7    2.0363331471621833
#>     Node 8    0.9652929373821941
#>     Node 9    2.3254870172453024
#>     Node 10    -1.7398472236973774
#>     Node 11    1.7124285175153562
#>     Node 12    1.7081682387201231
#>     Node 13    -0.9954236644670567
#>     Node 14    1.851442361281664
#>     Node 15    -3.242443449383238
#>     Node 16    0.11370119462416736
#>     Node 17    0.9589753438089237
#>     Node 18    -1.0473877552369204
#>     Node 19    2.007249007343882
#>     Node 20    2.0130882997657986
#>     Node 21    -2.714226959234736
#>     Node 22    1.4175142801674228
#>     Node 23    1.1934651935841867
#>     Node 24    -1.5329624168065026
#>     Node 25    4.376305681940805
#>     Node 26    -1.1217197474613128
#>     Node 27    3.2397542032296736
#>     Node 28    -1.250604100849294
#>     Node 29    1.2905574540034552
#>     Node 30    -1.3459609534677188
#>     Node 31    1.56120844392554
#>     Node 32    0.1592873269724778
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.2157370040967113
#>     Node 2    -2.6257699691175054
#>     Node 3    -2.027158712753619
#>     Node 4    -1.2686550297911192
#>     Node 5    1.3736144723015697
#>     Node 6    -1.4085471128450295
#>     Node 7    -2.0242359017432534
#>     Node 8    -0.9967752791503568
#>     Node 9    -2.323508218990508
#>     Node 10    1.6668758239752208
#>     Node 11    -1.6764209673213697
#>     Node 12    -1.775969037161047
#>     Node 13    1.044118630956448
#>     Node 14    -1.7915980352223195
#>     Node 15    3.232175347983962
#>     Node 16    -0.12245485713305525
#>     Node 17    -0.9210473936644243
#>     Node 18    1.0833186393276373
#>     Node 19    -2.014331052503048
#>     Node 20    -1.9949922853149622
#>     Node 21    2.772722923494026
#>     Node 22    -1.4576708094432609
#>     Node 23    -1.2327247005327475
#>     Node 24    1.5169998378820448
#>     Node 25    -4.351977760066003
#>     Node 26    1.0343934176824507
#>     Node 27    -3.2646506963191304
#>     Node 28    1.191270115789025
#>     Node 29    -1.3213917880443924
#>     Node 30    1.4203689245462776
#>     Node 31    -1.4944092422200177
#>     Node 32    -0.1708491928007736
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.3596226539685189
#>     Attrib V1    0.604303468596141
#>     Attrib V10    0.11546843413875237
#>     Attrib V11    0.4810065156973415
#>     Attrib V12    0.13281864788555897
#>     Attrib V13    0.06532242138752942
#>     Attrib V14    -0.15929189992305964
#>     Attrib V15    0.22720179905915383
#>     Attrib V16    -0.033466056473422795
#>     Attrib V17    0.006270757845197858
#>     Attrib V18    -0.5020007120213938
#>     Attrib V19    0.07856053815335334
#>     Attrib V2    -0.14134272081073623
#>     Attrib V20    0.7188560413296188
#>     Attrib V21    0.7725076148512433
#>     Attrib V22    0.40222266602030826
#>     Attrib V23    0.8600942284720196
#>     Attrib V24    0.7709858241151832
#>     Attrib V25    -0.2374356606681969
#>     Attrib V26    -0.6013042770640241
#>     Attrib V27    -0.7875139284195293
#>     Attrib V28    -0.19253599458695414
#>     Attrib V29    -0.25556285758044595
#>     Attrib V3    0.0062436035025143855
#>     Attrib V30    0.22097729118221612
#>     Attrib V31    -1.218687383176221
#>     Attrib V32    -0.22136199566797593
#>     Attrib V33    0.4054722771097425
#>     Attrib V34    -0.06315197043377042
#>     Attrib V35    0.009548429480587041
#>     Attrib V36    -0.9366514304005434
#>     Attrib V37    -1.1003445359005566
#>     Attrib V38    0.47678444110871887
#>     Attrib V39    0.42382937544882404
#>     Attrib V4    -0.26499556072772257
#>     Attrib V40    -0.5808902649581401
#>     Attrib V41    0.136403146247362
#>     Attrib V42    0.8153833409064081
#>     Attrib V43    0.753289392826723
#>     Attrib V44    0.7166458990744051
#>     Attrib V45    0.7135612624122863
#>     Attrib V46    0.3337206610671171
#>     Attrib V47    0.06627766160444516
#>     Attrib V48    0.4099620832369025
#>     Attrib V49    0.24804010252218892
#>     Attrib V5    -0.12842187101933483
#>     Attrib V50    -0.9368178594371563
#>     Attrib V51    0.3782226287990561
#>     Attrib V52    0.3563439023720364
#>     Attrib V53    0.18343947449981735
#>     Attrib V54    -0.17020682466762402
#>     Attrib V55    -0.4381337079187854
#>     Attrib V56    0.44475149992140484
#>     Attrib V57    -0.6235516473686763
#>     Attrib V58    0.7449335632878398
#>     Attrib V59    0.6676677080148102
#>     Attrib V6    -0.5798630602735941
#>     Attrib V60    -0.20280366932038
#>     Attrib V7    -0.7025908461527784
#>     Attrib V8    -0.07328933755732792
#>     Attrib V9    0.8181945205389157
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.2259732710310425
#>     Attrib V1    0.49634194097334833
#>     Attrib V10    0.025188744852649898
#>     Attrib V11    0.2504911108685525
#>     Attrib V12    0.031879764050437014
#>     Attrib V13    0.08323391228230337
#>     Attrib V14    -0.0584275200984161
#>     Attrib V15    0.3026854349098239
#>     Attrib V16    0.01447416808508721
#>     Attrib V17    0.04647931788209395
#>     Attrib V18    -0.39945985190242395
#>     Attrib V19    0.16217897750411764
#>     Attrib V2    -0.015555240901869693
#>     Attrib V20    0.6026839188892015
#>     Attrib V21    0.5750267370358739
#>     Attrib V22    0.3471193658801155
#>     Attrib V23    0.6709554018896641
#>     Attrib V24    0.5867460232255037
#>     Attrib V25    -0.18327255595882794
#>     Attrib V26    -0.569278131611515
#>     Attrib V27    -0.7431056965459545
#>     Attrib V28    -0.29493872114038416
#>     Attrib V29    -0.35576446860650407
#>     Attrib V3    0.07314435909493781
#>     Attrib V30    0.14346014908134114
#>     Attrib V31    -0.8592564861120545
#>     Attrib V32    -0.09047816704014874
#>     Attrib V33    0.3938722356788584
#>     Attrib V34    -0.09852831737460797
#>     Attrib V35    -0.05533144817269516
#>     Attrib V36    -0.7727788893235944
#>     Attrib V37    -0.9089290070036575
#>     Attrib V38    0.2586952808869021
#>     Attrib V39    0.2874337473899552
#>     Attrib V4    -0.11558215662042885
#>     Attrib V40    -0.4884786661377429
#>     Attrib V41    0.050408690516529846
#>     Attrib V42    0.6478355445327812
#>     Attrib V43    0.5499361977219771
#>     Attrib V44    0.5060506712179688
#>     Attrib V45    0.5012601066330726
#>     Attrib V46    0.18899662902849948
#>     Attrib V47    0.03283555912768351
#>     Attrib V48    0.2237093651903984
#>     Attrib V49    0.14334434694226086
#>     Attrib V5    -0.09338518921085495
#>     Attrib V50    -0.684875239941823
#>     Attrib V51    0.23328216906133867
#>     Attrib V52    0.3146425764687004
#>     Attrib V53    0.13093167764436348
#>     Attrib V54    -0.003200365032422171
#>     Attrib V55    -0.23795870563417473
#>     Attrib V56    0.439815203344887
#>     Attrib V57    -0.38645792616984787
#>     Attrib V58    0.6698952797311849
#>     Attrib V59    0.5542825744504952
#>     Attrib V6    -0.4386925515487234
#>     Attrib V60    -0.10816241785505482
#>     Attrib V7    -0.5408872213503754
#>     Attrib V8    -0.0418698500939341
#>     Attrib V9    0.5871562076067501
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.028742464205161317
#>     Attrib V1    0.35755569751457117
#>     Attrib V10    -0.09912725719952037
#>     Attrib V11    0.05975319411074044
#>     Attrib V12    -0.06235719230430895
#>     Attrib V13    0.043595256836836536
#>     Attrib V14    0.08084604080392313
#>     Attrib V15    0.30116578257253934
#>     Attrib V16    0.08233243896485974
#>     Attrib V17    0.10303390528333328
#>     Attrib V18    -0.17424398598960417
#>     Attrib V19    0.1017424513616208
#>     Attrib V2    0.061395669786914187
#>     Attrib V20    0.433905960678872
#>     Attrib V21    0.4155613753070518
#>     Attrib V22    0.092410187861509
#>     Attrib V23    0.28241098134385995
#>     Attrib V24    0.21485187382361573
#>     Attrib V25    -0.30452727315938743
#>     Attrib V26    -0.49539186143074354
#>     Attrib V27    -0.56859391212601
#>     Attrib V28    -0.20359465447945502
#>     Attrib V29    -0.15562067101651908
#>     Attrib V3    0.14248721692863825
#>     Attrib V30    0.022659755370573586
#>     Attrib V31    -0.595827020459016
#>     Attrib V32    -0.1692301833734858
#>     Attrib V33    0.1586911728252654
#>     Attrib V34    -0.08468518484868946
#>     Attrib V35    -0.03901653415361567
#>     Attrib V36    -0.46756038495363006
#>     Attrib V37    -0.4828114149489772
#>     Attrib V38    0.21849431793686164
#>     Attrib V39    0.2196596680854014
#>     Attrib V4    -0.02492766962219072
#>     Attrib V40    -0.3174570928695939
#>     Attrib V41    -0.0870165547623928
#>     Attrib V42    0.3377515245156538
#>     Attrib V43    0.281573877655418
#>     Attrib V44    0.3457500302450667
#>     Attrib V45    0.412318964851384
#>     Attrib V46    0.08964053669305634
#>     Attrib V47    -0.04042610308808827
#>     Attrib V48    0.1389463414129261
#>     Attrib V49    0.07621061943427594
#>     Attrib V5    0.018291277735432303
#>     Attrib V50    -0.4150518249918991
#>     Attrib V51    0.1683276913406291
#>     Attrib V52    0.19436425939768628
#>     Attrib V53    0.16864424966109057
#>     Attrib V54    -0.022351938062553155
#>     Attrib V55    -0.09522299061708898
#>     Attrib V56    0.34236994756865713
#>     Attrib V57    -0.14738906687080938
#>     Attrib V58    0.38270037571311544
#>     Attrib V59    0.33222054886249297
#>     Attrib V6    -0.28354989408231757
#>     Attrib V60    -0.029827736112101332
#>     Attrib V7    -0.32442118651412327
#>     Attrib V8    -0.17036250953630136
#>     Attrib V9    0.33370420610858836
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5007817516402177
#>     Attrib V1    -0.10282794420425719
#>     Attrib V10    -0.3094463096590145
#>     Attrib V11    -0.6184584860091897
#>     Attrib V12    -0.4770559177012766
#>     Attrib V13    -0.05161204686146086
#>     Attrib V14    0.38008738722219726
#>     Attrib V15    0.10211687270157221
#>     Attrib V16    0.08385975594925081
#>     Attrib V17    0.14856438504917674
#>     Attrib V18    0.3596261988880138
#>     Attrib V19    0.0981063008133526
#>     Attrib V2    0.2464205835958613
#>     Attrib V20    -0.10719096464802699
#>     Attrib V21    -0.10671047812359828
#>     Attrib V22    -0.023834405680902004
#>     Attrib V23    -0.42478411220837003
#>     Attrib V24    -0.4508526979489467
#>     Attrib V25    0.20955788099477018
#>     Attrib V26    0.08888126366466687
#>     Attrib V27    0.04731166812625084
#>     Attrib V28    -0.29426341835802633
#>     Attrib V29    -0.13909940004170557
#>     Attrib V3    0.19666400086306932
#>     Attrib V30    -0.23697184677679092
#>     Attrib V31    0.5001931177518685
#>     Attrib V32    0.05741423356114132
#>     Attrib V33    -0.07438456537319955
#>     Attrib V34    0.10216986618049137
#>     Attrib V35    -0.1406139533828299
#>     Attrib V36    0.5533352276905438
#>     Attrib V37    0.46168366801083455
#>     Attrib V38    -0.1181948024107218
#>     Attrib V39    -0.1539989528247812
#>     Attrib V4    0.20681663636133366
#>     Attrib V40    0.35442557966957533
#>     Attrib V41    -0.3942435716325179
#>     Attrib V42    -0.253340185613049
#>     Attrib V43    -0.32791751402283636
#>     Attrib V44    -0.5571103204526111
#>     Attrib V45    -0.5113317050231538
#>     Attrib V46    -0.3680914363225082
#>     Attrib V47    -0.15613274983043346
#>     Attrib V48    -0.4341495529053407
#>     Attrib V49    -0.3159965302553756
#>     Attrib V5    0.0062518592411689505
#>     Attrib V50    0.5716239139147814
#>     Attrib V51    -0.3156736491567918
#>     Attrib V52    -0.28919312271639325
#>     Attrib V53    -0.09556229721864438
#>     Attrib V54    0.18677551767285724
#>     Attrib V55    0.4301754380435484
#>     Attrib V56    0.05749500880962837
#>     Attrib V57    0.3624303473712448
#>     Attrib V58    -0.5115581327902377
#>     Attrib V59    -0.22168250543218548
#>     Attrib V6    0.03196102191346294
#>     Attrib V60    0.39047712535888585
#>     Attrib V7    0.4103493216178278
#>     Attrib V8    0.09392339771722184
#>     Attrib V9    -0.6773499724604831
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.10132613063267719
#>     Attrib V1    0.42776674636838474
#>     Attrib V10    -0.10825795141434465
#>     Attrib V11    0.11489523628533399
#>     Attrib V12    0.021209052648158748
#>     Attrib V13    0.022301123769365275
#>     Attrib V14    -0.005640354725556995
#>     Attrib V15    0.19289784532150817
#>     Attrib V16    0.09310918966457621
#>     Attrib V17    0.04292735102379019
#>     Attrib V18    -0.1706067698771717
#>     Attrib V19    0.12399293485563616
#>     Attrib V2    0.0578939388551895
#>     Attrib V20    0.4484327259013406
#>     Attrib V21    0.4211332243523448
#>     Attrib V22    0.15567799179529462
#>     Attrib V23    0.4098970628201184
#>     Attrib V24    0.418338498940484
#>     Attrib V25    -0.10492573403817985
#>     Attrib V26    -0.4135267176428469
#>     Attrib V27    -0.5437378693083568
#>     Attrib V28    -0.35152493809420504
#>     Attrib V29    -0.33069827018489323
#>     Attrib V3    0.107310542280523
#>     Attrib V30    -0.009965018628792802
#>     Attrib V31    -0.6216290313991671
#>     Attrib V32    -0.007965665730739075
#>     Attrib V33    0.3265269089141008
#>     Attrib V34    -0.036272732911681954
#>     Attrib V35    -0.038366458445447095
#>     Attrib V36    -0.5765587131229915
#>     Attrib V37    -0.6726149769624146
#>     Attrib V38    0.14318454956669907
#>     Attrib V39    0.1514578424492061
#>     Attrib V4    0.025239139341891672
#>     Attrib V40    -0.3784668229151943
#>     Attrib V41    0.06366149804408769
#>     Attrib V42    0.463169959606698
#>     Attrib V43    0.3409718990463369
#>     Attrib V44    0.22399764580877848
#>     Attrib V45    0.31954937098269787
#>     Attrib V46    0.10173616251701695
#>     Attrib V47    -0.0368323907132973
#>     Attrib V48    0.11897632090373805
#>     Attrib V49    0.0718791988334729
#>     Attrib V5    -0.02110567794501435
#>     Attrib V50    -0.41602436482783106
#>     Attrib V51    0.18913887166136645
#>     Attrib V52    0.18676866940137557
#>     Attrib V53    0.15962199562005325
#>     Attrib V54    -0.018423912541497004
#>     Attrib V55    -0.12420301623092128
#>     Attrib V56    0.34441318050119535
#>     Attrib V57    -0.2130088212964443
#>     Attrib V58    0.4720464545520349
#>     Attrib V59    0.42647699553118806
#>     Attrib V6    -0.27442815294876716
#>     Attrib V60    0.011208869470040487
#>     Attrib V7    -0.36053495253037215
#>     Attrib V8    -0.04768427264532115
#>     Attrib V9    0.42614084805188607
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.3740405866777782
#>     Attrib V1    0.5164112836256247
#>     Attrib V10    0.01953909221540104
#>     Attrib V11    0.4503203127985694
#>     Attrib V12    0.11196103425251237
#>     Attrib V13    0.024760015045091406
#>     Attrib V14    -0.16470819294672517
#>     Attrib V15    0.17995177942889926
#>     Attrib V16    -0.014590417258733815
#>     Attrib V17    -0.046553262315782024
#>     Attrib V18    -0.458673479707115
#>     Attrib V19    0.06247547813210379
#>     Attrib V2    -0.04186409198383299
#>     Attrib V20    0.5769604964484315
#>     Attrib V21    0.5621370441534571
#>     Attrib V22    0.24099707318416586
#>     Attrib V23    0.7260933544701403
#>     Attrib V24    0.6207573229355244
#>     Attrib V25    -0.23888491323020714
#>     Attrib V26    -0.4737393069609645
#>     Attrib V27    -0.6080241248048376
#>     Attrib V28    -0.15227419704383635
#>     Attrib V29    -0.12874838376580883
#>     Attrib V3    0.046043358168041365
#>     Attrib V30    0.08256888362411419
#>     Attrib V31    -0.9865861414961323
#>     Attrib V32    -0.3070731989536976
#>     Attrib V33    0.21267765257607424
#>     Attrib V34    -0.12117816599796534
#>     Attrib V35    1.3871095278169846E-4
#>     Attrib V36    -0.7812507067028625
#>     Attrib V37    -0.7968980997119505
#>     Attrib V38    0.36573571856621473
#>     Attrib V39    0.3030909119813243
#>     Attrib V4    -0.18639616649195717
#>     Attrib V40    -0.48508611220900855
#>     Attrib V41    0.07814764443108466
#>     Attrib V42    0.5621981618380498
#>     Attrib V43    0.5071835232650531
#>     Attrib V44    0.518180903084074
#>     Attrib V45    0.5692712534130612
#>     Attrib V46    0.33890507226617084
#>     Attrib V47    0.08589763083570721
#>     Attrib V48    0.26303875908186686
#>     Attrib V49    0.12384797946700603
#>     Attrib V5    -0.09919825349012765
#>     Attrib V50    -0.7374184861555197
#>     Attrib V51    0.2831876437418715
#>     Attrib V52    0.3396896268527916
#>     Attrib V53    0.15110360039634516
#>     Attrib V54    -0.06430683750444387
#>     Attrib V55    -0.3042221872944243
#>     Attrib V56    0.3083739315472627
#>     Attrib V57    -0.45447694809209777
#>     Attrib V58    0.6315306516443513
#>     Attrib V59    0.5077473118354668
#>     Attrib V6    -0.3948748666375244
#>     Attrib V60    -0.12041862839272523
#>     Attrib V7    -0.5287408124731476
#>     Attrib V8    -0.20910124222945725
#>     Attrib V9    0.655326050174094
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.1523786642762926
#>     Attrib V1    0.21203851119773898
#>     Attrib V10    0.009298974788446768
#>     Attrib V11    0.19706072989306264
#>     Attrib V12    0.07274261524622072
#>     Attrib V13    0.05344842192934536
#>     Attrib V14    -0.09810387557353838
#>     Attrib V15    0.08819063272954879
#>     Attrib V16    0.05672435783645343
#>     Attrib V17    0.03026149971464995
#>     Attrib V18    -0.17166828465010117
#>     Attrib V19    0.07518858545297906
#>     Attrib V2    0.030328480901086398
#>     Attrib V20    0.2300982772293719
#>     Attrib V21    0.22760268113516077
#>     Attrib V22    0.028934415234584215
#>     Attrib V23    0.21904174571415846
#>     Attrib V24    0.24911239575839986
#>     Attrib V25    -0.14340344762958812
#>     Attrib V26    -0.23568595125002623
#>     Attrib V27    -0.30872545727020295
#>     Attrib V28    -0.11334440358143713
#>     Attrib V29    -0.13489025685637065
#>     Attrib V3    0.03161358218014043
#>     Attrib V30    0.0442424542008212
#>     Attrib V31    -0.41348085993118466
#>     Attrib V32    -0.048962104060671176
#>     Attrib V33    0.14943168575481663
#>     Attrib V34    -0.03409124866494388
#>     Attrib V35    0.03864219558368814
#>     Attrib V36    -0.3245209573331269
#>     Attrib V37    -0.3913426775536357
#>     Attrib V38    0.1983955125863051
#>     Attrib V39    0.1459139986254548
#>     Attrib V4    0.0016360686404921388
#>     Attrib V40    -0.2581178063896551
#>     Attrib V41    0.007949094078622581
#>     Attrib V42    0.11867691057848495
#>     Attrib V43    0.1838364815485521
#>     Attrib V44    0.27959944061772946
#>     Attrib V45    0.27434417748416756
#>     Attrib V46    0.11008252681893911
#>     Attrib V47    0.014346166871011048
#>     Attrib V48    0.20795723921934972
#>     Attrib V49    0.09407062097966361
#>     Attrib V5    -0.015552710864500309
#>     Attrib V50    -0.4018924036850056
#>     Attrib V51    0.10797863344624765
#>     Attrib V52    0.14012628735312926
#>     Attrib V53    0.13108471778494257
#>     Attrib V54    -0.03475463009893515
#>     Attrib V55    -0.12729971753221261
#>     Attrib V56    0.1419627869405215
#>     Attrib V57    -0.14056307485120365
#>     Attrib V58    0.2728571970748518
#>     Attrib V59    0.2309854649897183
#>     Attrib V6    -0.2069414954902254
#>     Attrib V60    -0.07398687901540016
#>     Attrib V7    -0.3049851398486788
#>     Attrib V8    -0.18347224416052924
#>     Attrib V9    0.2873575543007839
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.5703443012037324
#>     Attrib V1    0.09186658926596111
#>     Attrib V10    0.8253884154979324
#>     Attrib V11    1.3221764247024823
#>     Attrib V12    1.1596942087812387
#>     Attrib V13    0.20550151411548945
#>     Attrib V14    -0.7028750997125954
#>     Attrib V15    -0.4620908263582439
#>     Attrib V16    -0.3663070709388014
#>     Attrib V17    -0.33904402633920233
#>     Attrib V18    -0.41282420294729366
#>     Attrib V19    -0.23692116765631036
#>     Attrib V2    -0.1555068762524804
#>     Attrib V20    -0.23519622376220717
#>     Attrib V21    -0.10933329985356902
#>     Attrib V22    -0.2298797426286482
#>     Attrib V23    0.3645129413117709
#>     Attrib V24    0.5891953404738429
#>     Attrib V25    0.2158272606776247
#>     Attrib V26    0.5407951005430047
#>     Attrib V27    0.39659924872878033
#>     Attrib V28    0.3517067028212736
#>     Attrib V29    -0.10716344047048137
#>     Attrib V3    -0.09632651585792039
#>     Attrib V30    0.09990474408762003
#>     Attrib V31    -0.3419913963781881
#>     Attrib V32    0.036415073998161296
#>     Attrib V33    -0.05635718069260093
#>     Attrib V34    0.0681309723437484
#>     Attrib V35    0.5324659215910115
#>     Attrib V36    -0.5850520879552349
#>     Attrib V37    -0.6457729188243838
#>     Attrib V38    -0.14746571631974703
#>     Attrib V39    0.13475710320538092
#>     Attrib V4    -0.1883753882192042
#>     Attrib V40    -0.1854037929426251
#>     Attrib V41    0.6599975097692383
#>     Attrib V42    -0.0168982504355606
#>     Attrib V43    0.222862909891875
#>     Attrib V44    0.3290632339661098
#>     Attrib V45    0.3453680571526087
#>     Attrib V46    0.4460080701690834
#>     Attrib V47    0.384216604662344
#>     Attrib V48    0.7858755479962868
#>     Attrib V49    0.4951386925092688
#>     Attrib V5    0.11688168366985238
#>     Attrib V50    -0.4511343006487159
#>     Attrib V51    0.5481603767229618
#>     Attrib V52    0.40690838712200755
#>     Attrib V53    0.36446576336106823
#>     Attrib V54    -0.3320564768443684
#>     Attrib V55    -0.30946298712564935
#>     Attrib V56    -0.182504473793298
#>     Attrib V57    -0.5054496349840099
#>     Attrib V58    0.5412192201255563
#>     Attrib V59    0.2688812401838587
#>     Attrib V6    0.13235518210611041
#>     Attrib V60    -0.35081834226284164
#>     Attrib V7    -0.47138253749603237
#>     Attrib V8    -0.15649484306999167
#>     Attrib V9    0.8549200840909783
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.49850799685634317
#>     Attrib V1    -0.00783336693343572
#>     Attrib V10    -0.5497419012452921
#>     Attrib V11    -0.8706623638038824
#>     Attrib V12    -0.5824281240567545
#>     Attrib V13    0.041632965725199825
#>     Attrib V14    0.598379588007901
#>     Attrib V15    0.2413443798941395
#>     Attrib V16    0.22090234556491278
#>     Attrib V17    0.18455359976555105
#>     Attrib V18    0.42665024954850533
#>     Attrib V19    0.11553635538623619
#>     Attrib V2    0.1932540075847654
#>     Attrib V20    3.219886892087544E-4
#>     Attrib V21    -0.11093197899806646
#>     Attrib V22    -0.10545456656345722
#>     Attrib V23    -0.5915906744607315
#>     Attrib V24    -0.6065383861178131
#>     Attrib V25    -0.014631875966029741
#>     Attrib V26    -0.1987392608816365
#>     Attrib V27    -0.23391579880829447
#>     Attrib V28    -0.4894644496557236
#>     Attrib V29    -0.28819097557377016
#>     Attrib V3    0.12611473051356378
#>     Attrib V30    -0.32021572858224484
#>     Attrib V31    0.47576833665267754
#>     Attrib V32    0.029273179571966516
#>     Attrib V33    0.0733171510089867
#>     Attrib V34    0.14341388237273445
#>     Attrib V35    -0.2572336859939363
#>     Attrib V36    0.5419510655206597
#>     Attrib V37    0.5437511348191869
#>     Attrib V38    0.07417800560971718
#>     Attrib V39    -0.15624223847985716
#>     Attrib V4    0.15969976703587602
#>     Attrib V40    0.23864114809192483
#>     Attrib V41    -0.5573219715518052
#>     Attrib V42    -0.27703280884562353
#>     Attrib V43    -0.3686803327008346
#>     Attrib V44    -0.6098073640404355
#>     Attrib V45    -0.48351680795199214
#>     Attrib V46    -0.5296153229447784
#>     Attrib V47    -0.37009378531544235
#>     Attrib V48    -0.626784717970834
#>     Attrib V49    -0.45306027817613365
#>     Attrib V5    -0.1472685914019257
#>     Attrib V50    0.49486920530386924
#>     Attrib V51    -0.47106318167742084
#>     Attrib V52    -0.37104105073246557
#>     Attrib V53    -0.11549302035737143
#>     Attrib V54    0.27714628834770694
#>     Attrib V55    0.4447226445848915
#>     Attrib V56    0.15385502673703566
#>     Attrib V57    0.4197301161042106
#>     Attrib V58    -0.47964670469995235
#>     Attrib V59    -0.22975049165578712
#>     Attrib V6    -0.04597535827647901
#>     Attrib V60    0.3345701181183673
#>     Attrib V7    0.4192738837377265
#>     Attrib V8    0.01368917102882762
#>     Attrib V9    -0.8274269729171464
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.14622111349455824
#>     Attrib V1    0.44313609353338845
#>     Attrib V10    -0.07770043522499709
#>     Attrib V11    0.15453103858904335
#>     Attrib V12    -0.007168899541824413
#>     Attrib V13    -0.016808952811090447
#>     Attrib V14    -0.02057481854750858
#>     Attrib V15    0.2731997749847184
#>     Attrib V16    0.06205645672933725
#>     Attrib V17    0.10322219969342565
#>     Attrib V18    -0.2626327799407439
#>     Attrib V19    0.06624805496467495
#>     Attrib V2    -0.0028419127113316193
#>     Attrib V20    0.5616607254865278
#>     Attrib V21    0.4708177403142013
#>     Attrib V22    0.16332495963451857
#>     Attrib V23    0.4518170026360236
#>     Attrib V24    0.38430337890628724
#>     Attrib V25    -0.26460376183880263
#>     Attrib V26    -0.5889517497080571
#>     Attrib V27    -0.6114728992027264
#>     Attrib V28    -0.1960183279785276
#>     Attrib V29    -0.2098452877419874
#>     Attrib V3    0.03692484838178501
#>     Attrib V30    0.08604846502864091
#>     Attrib V31    -0.8335428876127582
#>     Attrib V32    -0.24694343590989315
#>     Attrib V33    0.18401122719525093
#>     Attrib V34    -0.08722291760339285
#>     Attrib V35    -0.02241760180985649
#>     Attrib V36    -0.6004178700694071
#>     Attrib V37    -0.664876506654204
#>     Attrib V38    0.381663155524021
#>     Attrib V39    0.2687613848379461
#>     Attrib V4    -0.09295971570338445
#>     Attrib V40    -0.4471079068713981
#>     Attrib V41    -0.11186955479521377
#>     Attrib V42    0.43351360885343654
#>     Attrib V43    0.434637216916005
#>     Attrib V44    0.5107867793941911
#>     Attrib V45    0.5521391959942727
#>     Attrib V46    0.1905526783495936
#>     Attrib V47    0.03586449422778583
#>     Attrib V48    0.2197531346197227
#>     Attrib V49    0.09192039373777373
#>     Attrib V5    -0.035726353355964593
#>     Attrib V50    -0.5755848863047501
#>     Attrib V51    0.24879514744581266
#>     Attrib V52    0.2284348818065199
#>     Attrib V53    0.1599444806383231
#>     Attrib V54    0.030427117912388883
#>     Attrib V55    -0.18766897795380524
#>     Attrib V56    0.3950764414894071
#>     Attrib V57    -0.27027929359531233
#>     Attrib V58    0.5322888061394386
#>     Attrib V59    0.3762647462052456
#>     Attrib V6    -0.3379899497194756
#>     Attrib V60    -0.06719123781038021
#>     Attrib V7    -0.4701725796223746
#>     Attrib V8    -0.13920172100830866
#>     Attrib V9    0.45698436628038624
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.14785019616753198
#>     Attrib V1    0.5092961523882912
#>     Attrib V10    -0.19264917909856977
#>     Attrib V11    0.04620273095114978
#>     Attrib V12    -0.22720177682782042
#>     Attrib V13    -0.0011250928037994275
#>     Attrib V14    0.1452690088168948
#>     Attrib V15    0.4283759367666744
#>     Attrib V16    0.193723947487351
#>     Attrib V17    0.13576000306262634
#>     Attrib V18    -0.23298338058238463
#>     Attrib V19    0.14880130815174106
#>     Attrib V2    0.17516153527262154
#>     Attrib V20    0.5752760968211141
#>     Attrib V21    0.512136984247519
#>     Attrib V22    0.19764431179669528
#>     Attrib V23    0.3440286162316859
#>     Attrib V24    0.20848045091773107
#>     Attrib V25    -0.4805054041016252
#>     Attrib V26    -0.7459706407847271
#>     Attrib V27    -0.6558452203113573
#>     Attrib V28    -0.24927053221825382
#>     Attrib V29    -0.0821713648503
#>     Attrib V3    0.11483876897718523
#>     Attrib V30    0.02450303265027411
#>     Attrib V31    -0.9257245068406366
#>     Attrib V32    -0.4035977650554202
#>     Attrib V33    0.06554763540109468
#>     Attrib V34    -0.26641615148504394
#>     Attrib V35    -0.20742377758720557
#>     Attrib V36    -0.5864941528872987
#>     Attrib V37    -0.5163340804731366
#>     Attrib V38    0.4469041520003146
#>     Attrib V39    0.2801793650032928
#>     Attrib V4    0.04042325872927829
#>     Attrib V40    -0.41770659637844976
#>     Attrib V41    -0.21700542523842273
#>     Attrib V42    0.36524769121423584
#>     Attrib V43    0.43110023451535434
#>     Attrib V44    0.4688773109969144
#>     Attrib V45    0.5373409761915022
#>     Attrib V46    0.23278140655661914
#>     Attrib V47    -0.05464607097670053
#>     Attrib V48    0.08297074431004538
#>     Attrib V49    -0.046115117356759064
#>     Attrib V5    0.015489327130071262
#>     Attrib V50    -0.5597675915341922
#>     Attrib V51    0.14038707683350918
#>     Attrib V52    0.3130012185615658
#>     Attrib V53    0.26088971044634834
#>     Attrib V54    0.15617905563746762
#>     Attrib V55    -0.13227433294095536
#>     Attrib V56    0.4606840123506584
#>     Attrib V57    -0.11575770716528325
#>     Attrib V58    0.528325672103952
#>     Attrib V59    0.4517896884915111
#>     Attrib V6    -0.30992558754462607
#>     Attrib V60    0.027996198184387408
#>     Attrib V7    -0.25535679270572836
#>     Attrib V8    -0.13410484029907851
#>     Attrib V9    0.3611925825608311
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.4560140579024252
#>     Attrib V1    -0.11041136118632963
#>     Attrib V10    -0.2763476664147471
#>     Attrib V11    -0.5221183189540778
#>     Attrib V12    -0.3821782597546898
#>     Attrib V13    -0.014992656865585215
#>     Attrib V14    0.2842899824774252
#>     Attrib V15    0.02279206213285035
#>     Attrib V16    0.057939238289182106
#>     Attrib V17    0.11904117412078061
#>     Attrib V18    0.2945377654542378
#>     Attrib V19    0.080138247666805
#>     Attrib V2    0.13729120239260179
#>     Attrib V20    -0.026120223058712973
#>     Attrib V21    -0.06956630004960217
#>     Attrib V22    -0.0240112273062689
#>     Attrib V23    -0.2857363485879777
#>     Attrib V24    -0.26061298112723896
#>     Attrib V25    0.24688338530896173
#>     Attrib V26    0.10399463577403335
#>     Attrib V27    0.12395528432193167
#>     Attrib V28    -0.19946582359686474
#>     Attrib V29    -0.09066195051267867
#>     Attrib V3    0.18711468553482768
#>     Attrib V30    -0.19464860167258513
#>     Attrib V31    0.3155709763493849
#>     Attrib V32    0.027206959453366365
#>     Attrib V33    -0.07963830416513537
#>     Attrib V34    0.1073336066369876
#>     Attrib V35    -0.1516287304036724
#>     Attrib V36    0.39044195207240856
#>     Attrib V37    0.37189346454814687
#>     Attrib V38    -0.10583706096130092
#>     Attrib V39    -0.060764398647528674
#>     Attrib V4    0.21670980805587808
#>     Attrib V40    0.32151079393339005
#>     Attrib V41    -0.23737989159933262
#>     Attrib V42    -0.20395233833007914
#>     Attrib V43    -0.30904122973330733
#>     Attrib V44    -0.45358611439547697
#>     Attrib V45    -0.4081202958803131
#>     Attrib V46    -0.21508433899300192
#>     Attrib V47    -0.07287197041112553
#>     Attrib V48    -0.3540922582494167
#>     Attrib V49    -0.2076133080282554
#>     Attrib V5    0.05078574304470171
#>     Attrib V50    0.3859910891806267
#>     Attrib V51    -0.27005751610522527
#>     Attrib V52    -0.22064303737175697
#>     Attrib V53    -0.022591099714421425
#>     Attrib V54    0.07798006679136506
#>     Attrib V55    0.2636872065659942
#>     Attrib V56    0.009637555610237991
#>     Attrib V57    0.3407089256628205
#>     Attrib V58    -0.3951961973669768
#>     Attrib V59    -0.14233910842285277
#>     Attrib V6    0.07117032714852854
#>     Attrib V60    0.33852356312869897
#>     Attrib V7    0.3480485149912638
#>     Attrib V8    0.04292923910212705
#>     Attrib V9    -0.4889550341563264
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.28055551343045515
#>     Attrib V1    0.4836624504458652
#>     Attrib V10    0.07636609861119374
#>     Attrib V11    0.42894974014438114
#>     Attrib V12    0.18132177970148391
#>     Attrib V13    0.019656846623394782
#>     Attrib V14    -0.19145774032810578
#>     Attrib V15    0.19303014270003874
#>     Attrib V16    -0.05201078730327779
#>     Attrib V17    0.012701868657759255
#>     Attrib V18    -0.3623585382154441
#>     Attrib V19    0.045292450746934165
#>     Attrib V2    -0.0390232615793685
#>     Attrib V20    0.4707522927384456
#>     Attrib V21    0.4673251214240106
#>     Attrib V22    0.2439378153471137
#>     Attrib V23    0.6621580863777637
#>     Attrib V24    0.5428214383445298
#>     Attrib V25    -0.16741787732236516
#>     Attrib V26    -0.4015295327397689
#>     Attrib V27    -0.6011869952135748
#>     Attrib V28    -0.24763588621690588
#>     Attrib V29    -0.28849544441224717
#>     Attrib V3    -0.04355110114339268
#>     Attrib V30    0.10534900455324805
#>     Attrib V31    -0.7885676887358611
#>     Attrib V32    -0.12006500788965017
#>     Attrib V33    0.31584709518802045
#>     Attrib V34    -0.0757603157840654
#>     Attrib V35    0.051402858468254195
#>     Attrib V36    -0.7457489570392208
#>     Attrib V37    -0.8124191086905134
#>     Attrib V38    0.2091066936146441
#>     Attrib V39    0.25464721300499493
#>     Attrib V4    -0.16293288365480438
#>     Attrib V40    -0.47566221876052817
#>     Attrib V41    0.05734224480807977
#>     Attrib V42    0.4360296292855497
#>     Attrib V43    0.4255907712469109
#>     Attrib V44    0.46511583767517234
#>     Attrib V45    0.41846294412343493
#>     Attrib V46    0.23346358524091818
#>     Attrib V47    0.038202267609927495
#>     Attrib V48    0.3463113281344304
#>     Attrib V49    0.23141801396824419
#>     Attrib V5    -0.11675862237000907
#>     Attrib V50    -0.6453637893798336
#>     Attrib V51    0.2590990803258193
#>     Attrib V52    0.263952931199292
#>     Attrib V53    0.11346977589722315
#>     Attrib V54    -0.03548981375652723
#>     Attrib V55    -0.23577875714226912
#>     Attrib V56    0.35152345629834725
#>     Attrib V57    -0.3880629659236233
#>     Attrib V58    0.6154103601222863
#>     Attrib V59    0.476796951633314
#>     Attrib V6    -0.3378601677382722
#>     Attrib V60    -0.10900239182612537
#>     Attrib V7    -0.5303698433852184
#>     Attrib V8    -0.16902007545481118
#>     Attrib V9    0.5829584214447746
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.66094448858497
#>     Attrib V1    0.33155886543399626
#>     Attrib V10    -0.9418568263568536
#>     Attrib V11    -1.5167056156155694
#>     Attrib V12    -1.2588326645229262
#>     Attrib V13    -0.16087276945004647
#>     Attrib V14    0.8943945242850541
#>     Attrib V15    0.7363671770067479
#>     Attrib V16    0.3926517190916975
#>     Attrib V17    0.3190999409490937
#>     Attrib V18    0.3084874368258189
#>     Attrib V19    -0.04266088011685161
#>     Attrib V2    0.34713377787898914
#>     Attrib V20    0.04091661573514872
#>     Attrib V21    -0.22985375292607105
#>     Attrib V22    -0.26700721470969013
#>     Attrib V23    -1.2666122002161673
#>     Attrib V24    -1.1702751735203525
#>     Attrib V25    -0.3708561122931375
#>     Attrib V26    -0.608865985073453
#>     Attrib V27    -0.7334169007455676
#>     Attrib V28    -1.0196494928776816
#>     Attrib V29    -0.4283952932107323
#>     Attrib V3    0.24498780356580796
#>     Attrib V30    -0.4061328896817034
#>     Attrib V31    0.624507123228696
#>     Attrib V32    0.27223173180511645
#>     Attrib V33    0.39217139119900685
#>     Attrib V34    0.4295714226674423
#>     Attrib V35    -0.3279480835177095
#>     Attrib V36    0.9332882894397457
#>     Attrib V37    0.9702167516665631
#>     Attrib V38    0.24950489599814352
#>     Attrib V39    -0.34492822401857826
#>     Attrib V4    0.16648712229983095
#>     Attrib V40    -0.03585125379717117
#>     Attrib V41    -1.23029801983538
#>     Attrib V42    -0.42472542071689046
#>     Attrib V43    -0.5372927861743143
#>     Attrib V44    -0.9379930103388422
#>     Attrib V45    -0.5608089408561384
#>     Attrib V46    -0.8415275246606501
#>     Attrib V47    -0.7751889402367333
#>     Attrib V48    -1.1055531714897155
#>     Attrib V49    -0.8383234063320749
#>     Attrib V5    -0.44922503057304214
#>     Attrib V50    0.5336960311731158
#>     Attrib V51    -0.8694080623926757
#>     Attrib V52    -0.6516074401879781
#>     Attrib V53    -0.4347882259589653
#>     Attrib V54    0.36729530301844765
#>     Attrib V55    0.6929210173307537
#>     Attrib V56    0.5086331987417905
#>     Attrib V57    0.6723043998189754
#>     Attrib V58    -0.551743803124774
#>     Attrib V59    -0.34430968070650203
#>     Attrib V6    -0.40750215114338845
#>     Attrib V60    0.4556339891620868
#>     Attrib V7    0.48360145885544087
#>     Attrib V8    -0.16955786058628047
#>     Attrib V9    -1.2378926360155325
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.18377400327234725
#>     Attrib V1    0.04998006859419999
#>     Attrib V10    0.01594900802867267
#>     Attrib V11    -0.027399916612919618
#>     Attrib V12    -0.02037680767386311
#>     Attrib V13    0.027782022629303082
#>     Attrib V14    0.019650433651329544
#>     Attrib V15    0.02307233233981309
#>     Attrib V16    0.09099353619225352
#>     Attrib V17    0.09270575199789935
#>     Attrib V18    0.07394789390177837
#>     Attrib V19    0.01273354626188007
#>     Attrib V2    0.03680011195343837
#>     Attrib V20    -0.04994751769955648
#>     Attrib V21    -0.06298598135418217
#>     Attrib V22    -0.07795962010469595
#>     Attrib V23    -0.0883339166178163
#>     Attrib V24    -0.012505325046431197
#>     Attrib V25    -0.0031458102709845267
#>     Attrib V26    -0.07132695437693125
#>     Attrib V27    -0.08732002008789712
#>     Attrib V28    -0.05761308584651762
#>     Attrib V29    -0.08418708661313881
#>     Attrib V3    0.10799954369519138
#>     Attrib V30    -0.0727803168406409
#>     Attrib V31    -0.03845165951890664
#>     Attrib V32    0.054713027904657506
#>     Attrib V33    0.04683387390470588
#>     Attrib V34    0.08017941976002174
#>     Attrib V35    0.03354135723832043
#>     Attrib V36    0.019578717629182434
#>     Attrib V37    0.05738874395227216
#>     Attrib V38    0.05460333821691712
#>     Attrib V39    0.06709124984845422
#>     Attrib V4    0.10789245030009077
#>     Attrib V40    0.02825617864145449
#>     Attrib V41    0.0343726525048852
#>     Attrib V42    0.032076021979748605
#>     Attrib V43    -0.03099572793967266
#>     Attrib V44    -0.0664786025396914
#>     Attrib V45    0.016809123848280535
#>     Attrib V46    0.038304561922484895
#>     Attrib V47    0.037144990548103336
#>     Attrib V48    0.025180378568299817
#>     Attrib V49    -0.014390290748912371
#>     Attrib V5    0.08196169972819675
#>     Attrib V50    0.05878741499644775
#>     Attrib V51    0.10187618931858583
#>     Attrib V52    0.08435242726552042
#>     Attrib V53    0.11409059671353447
#>     Attrib V54    -0.018331218227939167
#>     Attrib V55    0.09413564559105703
#>     Attrib V56    0.08557525852946611
#>     Attrib V57    0.09502812036831793
#>     Attrib V58    0.09959192415942748
#>     Attrib V59    -0.01647234955363202
#>     Attrib V6    0.06579297985662344
#>     Attrib V60    0.06720974528006607
#>     Attrib V7    0.01919920911486933
#>     Attrib V8    -0.013889065078102244
#>     Attrib V9    0.0644368560699585
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.05838824858147467
#>     Attrib V1    0.2981243030886916
#>     Attrib V10    -0.017860836044593733
#>     Attrib V11    0.11935935987282105
#>     Attrib V12    -0.009818337263256597
#>     Attrib V13    0.003446811490828797
#>     Attrib V14    -0.0037878153960963054
#>     Attrib V15    0.20986410325383983
#>     Attrib V16    0.056940695052824536
#>     Attrib V17    0.06362801169257104
#>     Attrib V18    -0.11069197763596283
#>     Attrib V19    0.09786719982510193
#>     Attrib V2    0.1241975091433455
#>     Attrib V20    0.2646853847627302
#>     Attrib V21    0.21676249669601555
#>     Attrib V22    0.08922458783332071
#>     Attrib V23    0.14774883107280015
#>     Attrib V24    0.19032040811981554
#>     Attrib V25    -0.19335963976870638
#>     Attrib V26    -0.32708801001313315
#>     Attrib V27    -0.35947217051181685
#>     Attrib V28    -0.21214438467558558
#>     Attrib V29    -0.23169961587718216
#>     Attrib V3    0.062172179817822214
#>     Attrib V30    0.010094024545741015
#>     Attrib V31    -0.3608894746245079
#>     Attrib V32    -0.0908812761091
#>     Attrib V33    0.18188271704380035
#>     Attrib V34    -0.0463276001414069
#>     Attrib V35    0.0574194030137032
#>     Attrib V36    -0.3461914575665998
#>     Attrib V37    -0.38716987782307627
#>     Attrib V38    0.2042157668954863
#>     Attrib V39    0.16486812990051242
#>     Attrib V4    0.0036999534342672153
#>     Attrib V40    -0.2779760284612749
#>     Attrib V41    -0.022295185243297332
#>     Attrib V42    0.16269222958684856
#>     Attrib V43    0.2362185260269282
#>     Attrib V44    0.23120486766151868
#>     Attrib V45    0.27555235046021304
#>     Attrib V46    0.03186985360992677
#>     Attrib V47    -0.06397433843212635
#>     Attrib V48    0.16566213901487747
#>     Attrib V49    0.023334353926706877
#>     Attrib V5    -0.009650190347773377
#>     Attrib V50    -0.314727104589014
#>     Attrib V51    0.11295779209854907
#>     Attrib V52    0.11225737353964127
#>     Attrib V53    0.07043748871933084
#>     Attrib V54    -0.026390729379114963
#>     Attrib V55    -0.007239565752992374
#>     Attrib V56    0.250193096500986
#>     Attrib V57    -0.0841338820586279
#>     Attrib V58    0.262381538281311
#>     Attrib V59    0.19030339890357995
#>     Attrib V6    -0.19436011725804853
#>     Attrib V60    -0.018690678190370007
#>     Attrib V7    -0.3302623427338583
#>     Attrib V8    -0.1120952215986691
#>     Attrib V9    0.2415612313365322
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.4821934027576603
#>     Attrib V1    -0.11252025737530964
#>     Attrib V10    -0.22923523356492065
#>     Attrib V11    -0.5290673237116171
#>     Attrib V12    -0.406446522077021
#>     Attrib V13    -0.08025640891936331
#>     Attrib V14    0.28779294412628065
#>     Attrib V15    0.01728543610826627
#>     Attrib V16    0.09460070529362144
#>     Attrib V17    0.06962957742736474
#>     Attrib V18    0.34283387028684686
#>     Attrib V19    0.04769165341181534
#>     Attrib V2    0.16260964294992095
#>     Attrib V20    -0.05409992417979335
#>     Attrib V21    -0.06587956002834774
#>     Attrib V22    -0.0021891908808327446
#>     Attrib V23    -0.33840780852608376
#>     Attrib V24    -0.32701509145508423
#>     Attrib V25    0.2182045209130581
#>     Attrib V26    0.16509077529623806
#>     Attrib V27    0.11155557333885022
#>     Attrib V28    -0.18460893598718023
#>     Attrib V29    -0.112757044644474
#>     Attrib V3    0.18613798355915123
#>     Attrib V30    -0.23075004784352626
#>     Attrib V31    0.36693656047977946
#>     Attrib V32    0.013222788635958773
#>     Attrib V33    -0.07760563481972627
#>     Attrib V34    0.09892975356228774
#>     Attrib V35    -0.16983074722596606
#>     Attrib V36    0.47713277848812446
#>     Attrib V37    0.354951091821964
#>     Attrib V38    -0.1341176251891145
#>     Attrib V39    -0.08744965573846164
#>     Attrib V4    0.18206177588152173
#>     Attrib V40    0.2864240534887834
#>     Attrib V41    -0.2942041420243958
#>     Attrib V42    -0.22955093998965667
#>     Attrib V43    -0.28707286451314834
#>     Attrib V44    -0.44132446051783475
#>     Attrib V45    -0.4356814523267237
#>     Attrib V46    -0.2611944072230393
#>     Attrib V47    -0.06209999946203374
#>     Attrib V48    -0.3377671504863466
#>     Attrib V49    -0.21247877437571025
#>     Attrib V5    0.023560397424608047
#>     Attrib V50    0.40105109570002817
#>     Attrib V51    -0.1929603071762424
#>     Attrib V52    -0.21094666088799732
#>     Attrib V53    -0.026865828133855043
#>     Attrib V54    0.06973429281994169
#>     Attrib V55    0.312177986562311
#>     Attrib V56    0.03650586725138543
#>     Attrib V57    0.29804790532176134
#>     Attrib V58    -0.39412166845287433
#>     Attrib V59    -0.1811369390324169
#>     Attrib V6    0.01809554346982004
#>     Attrib V60    0.3497472875272812
#>     Attrib V7    0.346521532203672
#>     Attrib V8    0.12742422844000642
#>     Attrib V9    -0.48088522619468815
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3126604376074707
#>     Attrib V1    0.41487715679635084
#>     Attrib V10    0.055203491030024136
#>     Attrib V11    0.41582524605402005
#>     Attrib V12    0.2896243882269152
#>     Attrib V13    0.09953321366127593
#>     Attrib V14    -0.15108565601842266
#>     Attrib V15    0.21404507270621623
#>     Attrib V16    -0.058905880058618194
#>     Attrib V17    -0.015772055684447076
#>     Attrib V18    -0.43553647878620844
#>     Attrib V19    0.10782095079337556
#>     Attrib V2    -0.05434726901408529
#>     Attrib V20    0.46949420664827185
#>     Attrib V21    0.46539303348066746
#>     Attrib V22    0.32303793928566327
#>     Attrib V23    0.766663597658334
#>     Attrib V24    0.7060125752192998
#>     Attrib V25    -0.10338049864263871
#>     Attrib V26    -0.4312037714313999
#>     Attrib V27    -0.5900435351203062
#>     Attrib V28    -0.19195865517585953
#>     Attrib V29    -0.26607381606149844
#>     Attrib V3    -0.011240273583883239
#>     Attrib V30    0.06679956395087816
#>     Attrib V31    -0.883905495864948
#>     Attrib V32    -0.13528612835721937
#>     Attrib V33    0.3474322128482332
#>     Attrib V34    -0.11544394625312134
#>     Attrib V35    -0.030980217168901605
#>     Attrib V36    -0.8632774315442127
#>     Attrib V37    -1.0075764934082256
#>     Attrib V38    0.1847652517861048
#>     Attrib V39    0.20481267295550545
#>     Attrib V4    -0.0937744516134952
#>     Attrib V40    -0.49302547568637856
#>     Attrib V41    0.13539569571187032
#>     Attrib V42    0.6295542899484594
#>     Attrib V43    0.4857344511751267
#>     Attrib V44    0.36299622169418644
#>     Attrib V45    0.4920226312680287
#>     Attrib V46    0.25211395338284986
#>     Attrib V47    0.010817602189208972
#>     Attrib V48    0.27968885608610244
#>     Attrib V49    0.23256752719821322
#>     Attrib V5    -0.012626955693720522
#>     Attrib V50    -0.7565899195530786
#>     Attrib V51    0.3268650438987629
#>     Attrib V52    0.3687392658872557
#>     Attrib V53    0.22586814920911177
#>     Attrib V54    -0.00962556468442692
#>     Attrib V55    -0.27637252149584723
#>     Attrib V56    0.2705871064602632
#>     Attrib V57    -0.5184426911279258
#>     Attrib V58    0.6973824869901069
#>     Attrib V59    0.5430460012886934
#>     Attrib V6    -0.3287169289499426
#>     Attrib V60    -0.11628496448498926
#>     Attrib V7    -0.5114360632334766
#>     Attrib V8    -0.14328877465422338
#>     Attrib V9    0.6274503308220074
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.2088192163600103
#>     Attrib V1    0.6221059177121718
#>     Attrib V10    -0.14991175195810053
#>     Attrib V11    0.04520198126611476
#>     Attrib V12    -0.1365321244856586
#>     Attrib V13    0.011786403717121616
#>     Attrib V14    0.147085527028555
#>     Attrib V15    0.5096973846291633
#>     Attrib V16    0.15100284836211572
#>     Attrib V17    0.1258240350703252
#>     Attrib V18    -0.2839313611911545
#>     Attrib V19    0.09333265399821995
#>     Attrib V2    0.12121711901021763
#>     Attrib V20    0.6626450937402354
#>     Attrib V21    0.6503437295165277
#>     Attrib V22    0.24396684142092603
#>     Attrib V23    0.4182777063954766
#>     Attrib V24    0.2936111049081315
#>     Attrib V25    -0.5177125228876375
#>     Attrib V26    -0.775635852740913
#>     Attrib V27    -0.6856197405819621
#>     Attrib V28    -0.2262903370897961
#>     Attrib V29    -0.02049972593189847
#>     Attrib V3    0.0842294888461783
#>     Attrib V30    0.10033702442932851
#>     Attrib V31    -1.0253770751428717
#>     Attrib V32    -0.5273670798137142
#>     Attrib V33    -0.028995916488439733
#>     Attrib V34    -0.4023193514958938
#>     Attrib V35    -0.24168685637076084
#>     Attrib V36    -0.6181462158062355
#>     Attrib V37    -0.5047479757383639
#>     Attrib V38    0.556940991303866
#>     Attrib V39    0.3640907508804066
#>     Attrib V4    -0.053243757042349446
#>     Attrib V40    -0.5117931886112618
#>     Attrib V41    -0.24369098161533712
#>     Attrib V42    0.4108789362844652
#>     Attrib V43    0.5280453926381218
#>     Attrib V44    0.708051057750128
#>     Attrib V45    0.6401822292146019
#>     Attrib V46    0.22684751946031517
#>     Attrib V47    -0.07799373313485426
#>     Attrib V48    0.1026360986196006
#>     Attrib V49    -0.00619871927995826
#>     Attrib V5    0.027035977020411626
#>     Attrib V50    -0.6515004174851565
#>     Attrib V51    0.1964806917705428
#>     Attrib V52    0.3383814768030272
#>     Attrib V53    0.25835255851056593
#>     Attrib V54    0.20884553624672147
#>     Attrib V55    -0.1327423153440629
#>     Attrib V56    0.4795067130612755
#>     Attrib V57    -0.2499483633283466
#>     Attrib V58    0.6020743267760963
#>     Attrib V59    0.5114746516067694
#>     Attrib V6    -0.3056471204941772
#>     Attrib V60    0.008166954726920656
#>     Attrib V7    -0.28061683368006984
#>     Attrib V8    -0.2542883686092935
#>     Attrib V9    0.4038764523304168
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.5469137558451408
#>     Attrib V1    0.2701693133141125
#>     Attrib V10    -0.8427239827495492
#>     Attrib V11    -1.3558037189858727
#>     Attrib V12    -1.1439230639477087
#>     Attrib V13    -0.14668811486771474
#>     Attrib V14    0.7865074455730283
#>     Attrib V15    0.5661367046407823
#>     Attrib V16    0.3350925876076386
#>     Attrib V17    0.2889293860056686
#>     Attrib V18    0.3558983430030698
#>     Attrib V19    -0.02463247846525633
#>     Attrib V2    0.3461253662475749
#>     Attrib V20    0.07083358025617108
#>     Attrib V21    -0.07475158334454178
#>     Attrib V22    -0.24195616797661323
#>     Attrib V23    -1.1088552169190866
#>     Attrib V24    -1.0152109649038583
#>     Attrib V25    -0.2538741038400874
#>     Attrib V26    -0.5219334380115735
#>     Attrib V27    -0.5964997416577826
#>     Attrib V28    -0.858346408820741
#>     Attrib V29    -0.31311171294549733
#>     Attrib V3    0.20448476677397803
#>     Attrib V30    -0.3353238737499893
#>     Attrib V31    0.6103103129412307
#>     Attrib V32    0.17602208870936178
#>     Attrib V33    0.27392205694928334
#>     Attrib V34    0.30476312625147384
#>     Attrib V35    -0.34385331392029295
#>     Attrib V36    0.819065580876905
#>     Attrib V37    0.8587517901392685
#>     Attrib V38    0.16153968043341985
#>     Attrib V39    -0.23359101372105823
#>     Attrib V4    0.2371510871168548
#>     Attrib V40    0.13280683080377484
#>     Attrib V41    -1.0018635234888995
#>     Attrib V42    -0.40947745031819777
#>     Attrib V43    -0.4651887515778622
#>     Attrib V44    -0.7921183357474543
#>     Attrib V45    -0.5736517626222483
#>     Attrib V46    -0.7577239513708897
#>     Attrib V47    -0.6489454886434013
#>     Attrib V48    -0.9239078467526104
#>     Attrib V49    -0.73440230265836
#>     Attrib V5    -0.33315495695864134
#>     Attrib V50    0.5346656115272955
#>     Attrib V51    -0.7702256988642839
#>     Attrib V52    -0.5439171919362956
#>     Attrib V53    -0.4091642970444251
#>     Attrib V54    0.3197618370170081
#>     Attrib V55    0.6011573540920372
#>     Attrib V56    0.33774662316140575
#>     Attrib V57    0.6733306457357411
#>     Attrib V58    -0.5703488993792599
#>     Attrib V59    -0.3147504080288678
#>     Attrib V6    -0.30925747153844235
#>     Attrib V60    0.4756101624904766
#>     Attrib V7    0.5290709403459071
#>     Attrib V8    -0.13259517048698222
#>     Attrib V9    -1.0859535279284585
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.05067940877346119
#>     Attrib V1    0.5343658060127068
#>     Attrib V10    -0.1326009462273195
#>     Attrib V11    0.005323537599047586
#>     Attrib V12    -0.1384658532037495
#>     Attrib V13    -0.002487784432421734
#>     Attrib V14    0.13586868011164824
#>     Attrib V15    0.3485995363305609
#>     Attrib V16    0.1940544755033774
#>     Attrib V17    0.13014838261301387
#>     Attrib V18    -0.17871664134531173
#>     Attrib V19    0.0708787846767566
#>     Attrib V2    0.17833099983787243
#>     Attrib V20    0.5091817858170959
#>     Attrib V21    0.4121789617072289
#>     Attrib V22    0.0858510359443081
#>     Attrib V23    0.18738947728393485
#>     Attrib V24    0.22131504040338656
#>     Attrib V25    -0.3766102710930753
#>     Attrib V26    -0.6298005536746812
#>     Attrib V27    -0.6344025054593061
#>     Attrib V28    -0.35860667875872104
#>     Attrib V29    -0.17889974633030017
#>     Attrib V3    0.13042334204532877
#>     Attrib V30    -0.0403673417337335
#>     Attrib V31    -0.664460963385803
#>     Attrib V32    -0.27812679704178755
#>     Attrib V33    0.021613964105055786
#>     Attrib V34    -0.21000774046289727
#>     Attrib V35    -0.14382845961040813
#>     Attrib V36    -0.479375261614488
#>     Attrib V37    -0.41356898809952986
#>     Attrib V38    0.32481787254837274
#>     Attrib V39    0.21079020931865913
#>     Attrib V4    0.025762507495844904
#>     Attrib V40    -0.3785136893481961
#>     Attrib V41    -0.253189428973153
#>     Attrib V42    0.26686535094524994
#>     Attrib V43    0.36053614099038744
#>     Attrib V44    0.38268552800783984
#>     Attrib V45    0.365652460317571
#>     Attrib V46    0.14852629802433284
#>     Attrib V47    -0.08929347078273484
#>     Attrib V48    0.09649627032706616
#>     Attrib V49    0.004455990935433827
#>     Attrib V5    0.02181164627916255
#>     Attrib V50    -0.4143454392645066
#>     Attrib V51    0.09324588419999685
#>     Attrib V52    0.2311282026965209
#>     Attrib V53    0.17294881443243332
#>     Attrib V54    0.19984029449599114
#>     Attrib V55    -0.0183951357130762
#>     Attrib V56    0.44560275107648983
#>     Attrib V57    -0.08815254095494694
#>     Attrib V58    0.463607254046013
#>     Attrib V59    0.3601212375459749
#>     Attrib V6    -0.2107340993654542
#>     Attrib V60    0.06605802846702702
#>     Attrib V7    -0.23451381023600124
#>     Attrib V8    -0.2414339814830209
#>     Attrib V9    0.28103521199782244
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.035719310853632016
#>     Attrib V1    0.4407253082054278
#>     Attrib V10    -0.17408912580094335
#>     Attrib V11    0.05650595137598813
#>     Attrib V12    -0.024584402373771415
#>     Attrib V13    0.05997503947484331
#>     Attrib V14    0.09426500633151896
#>     Attrib V15    0.25551749037673954
#>     Attrib V16    0.045690572654341614
#>     Attrib V17    0.13027734080208947
#>     Attrib V18    -0.13445412968237383
#>     Attrib V19    0.10360778284197429
#>     Attrib V2    0.09740237043330134
#>     Attrib V20    0.3807197556786594
#>     Attrib V21    0.30515240089531825
#>     Attrib V22    0.10100578091591982
#>     Attrib V23    0.2762952490883539
#>     Attrib V24    0.21494093180229798
#>     Attrib V25    -0.21467580491496224
#>     Attrib V26    -0.4128204539975375
#>     Attrib V27    -0.5600595686824357
#>     Attrib V28    -0.3611078979027025
#>     Attrib V29    -0.2952915796263221
#>     Attrib V3    0.15129358717242886
#>     Attrib V30    -0.06848045073653072
#>     Attrib V31    -0.575415464174077
#>     Attrib V32    -0.1572241970201472
#>     Attrib V33    0.13909943092613325
#>     Attrib V34    -0.10702930251254922
#>     Attrib V35    -0.024169676228886234
#>     Attrib V36    -0.3912691690935874
#>     Attrib V37    -0.377702832544775
#>     Attrib V38    0.24392669189684152
#>     Attrib V39    0.17618350134903832
#>     Attrib V4    0.07086897629837985
#>     Attrib V40    -0.35944790916863834
#>     Attrib V41    -0.13050377716574513
#>     Attrib V42    0.2425593438497466
#>     Attrib V43    0.2965624488433421
#>     Attrib V44    0.2476438660876719
#>     Attrib V45    0.3354998839172819
#>     Attrib V46    0.0791228519497912
#>     Attrib V47    -0.0023486735495753318
#>     Attrib V48    0.056068272664519164
#>     Attrib V49    0.0247563672345032
#>     Attrib V5    0.004786924333385178
#>     Attrib V50    -0.3765306970371574
#>     Attrib V51    0.1099505227174193
#>     Attrib V52    0.24363388968684793
#>     Attrib V53    0.17606130713609608
#>     Attrib V54    0.10261730273354817
#>     Attrib V55    0.0021670497129035924
#>     Attrib V56    0.38444969494749587
#>     Attrib V57    -0.14560789469403138
#>     Attrib V58    0.3754770375849435
#>     Attrib V59    0.3666564027882448
#>     Attrib V6    -0.23329547006227802
#>     Attrib V60    0.013494875756529722
#>     Attrib V7    -0.2671385147378821
#>     Attrib V8    -0.1754700232018801
#>     Attrib V9    0.248330873292797
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.510347645430671
#>     Attrib V1    -0.13550236327920584
#>     Attrib V10    -0.39488074056126155
#>     Attrib V11    -0.734896924310416
#>     Attrib V12    -0.4836555628256252
#>     Attrib V13    -0.035993325719919735
#>     Attrib V14    0.46057309766686416
#>     Attrib V15    0.1626031103133114
#>     Attrib V16    0.11617789937421902
#>     Attrib V17    0.1876104302067451
#>     Attrib V18    0.383196858576613
#>     Attrib V19    0.11605232922155215
#>     Attrib V2    0.1821295001828081
#>     Attrib V20    -0.05983231029959244
#>     Attrib V21    -0.14039158182823241
#>     Attrib V22    -0.08463491107720142
#>     Attrib V23    -0.5312388250046525
#>     Attrib V24    -0.5441017614417398
#>     Attrib V25    0.14800173542335546
#>     Attrib V26    0.06136339751982432
#>     Attrib V27    -0.015820794953544114
#>     Attrib V28    -0.3006526076383193
#>     Attrib V29    -0.19823500194712643
#>     Attrib V3    0.15619529215088437
#>     Attrib V30    -0.3062152105474129
#>     Attrib V31    0.5027046073748465
#>     Attrib V32    0.09434204627149788
#>     Attrib V33    -0.10411988570233245
#>     Attrib V34    0.1040511420564268
#>     Attrib V35    -0.23320724081469343
#>     Attrib V36    0.5958330174764355
#>     Attrib V37    0.497403520623811
#>     Attrib V38    -0.06668053789141537
#>     Attrib V39    -0.1472856436573712
#>     Attrib V4    0.29376796106176845
#>     Attrib V40    0.38427987972061634
#>     Attrib V41    -0.4258443204013374
#>     Attrib V42    -0.355299280909127
#>     Attrib V43    -0.34948448215899974
#>     Attrib V44    -0.683979862886238
#>     Attrib V45    -0.5912347472625509
#>     Attrib V46    -0.40131679228739475
#>     Attrib V47    -0.1907722836554287
#>     Attrib V48    -0.5253679829921486
#>     Attrib V49    -0.3989261404282056
#>     Attrib V5    -0.07662338475115701
#>     Attrib V50    0.6064761088556824
#>     Attrib V51    -0.3479167770192224
#>     Attrib V52    -0.24933853974682496
#>     Attrib V53    -0.12232885405918066
#>     Attrib V54    0.19896874465456532
#>     Attrib V55    0.45597719403851794
#>     Attrib V56    0.08014919783734686
#>     Attrib V57    0.47271859985651477
#>     Attrib V58    -0.49334082562791076
#>     Attrib V59    -0.27312630952763123
#>     Attrib V6    0.03437311357989733
#>     Attrib V60    0.3930517780434971
#>     Attrib V7    0.4239193809066384
#>     Attrib V8    0.11054199684123323
#>     Attrib V9    -0.6575906358438856
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.308353198463229
#>     Attrib V1    -0.12568319238542922
#>     Attrib V10    1.1518679604069224
#>     Attrib V11    1.7443781029445644
#>     Attrib V12    1.6716373592037068
#>     Attrib V13    0.10960005752859422
#>     Attrib V14    -0.9421995502569092
#>     Attrib V15    -0.4979818091961201
#>     Attrib V16    -0.5085502844917197
#>     Attrib V17    -0.606060476100436
#>     Attrib V18    -0.5041695306941311
#>     Attrib V19    -0.3631178826767002
#>     Attrib V2    -0.09594668629473194
#>     Attrib V20    -0.186553312167861
#>     Attrib V21    0.06754873323090103
#>     Attrib V22    -0.0859665889893976
#>     Attrib V23    0.7607163862860157
#>     Attrib V24    0.8677398692330366
#>     Attrib V25    0.0856518446217975
#>     Attrib V26    0.7649380402398211
#>     Attrib V27    1.122023093578089
#>     Attrib V28    1.4175781352454264
#>     Attrib V29    1.0392692189229464
#>     Attrib V3    0.053902122989176994
#>     Attrib V30    0.4097966736066505
#>     Attrib V31    -0.7296429555787746
#>     Attrib V32    -0.9267195796293971
#>     Attrib V33    -1.2661022850202537
#>     Attrib V34    -0.6529072870964729
#>     Attrib V35    0.5155532383151493
#>     Attrib V36    -0.9563356564577457
#>     Attrib V37    -0.4201015178658569
#>     Attrib V38    -0.28190405810700925
#>     Attrib V39    0.29605924596437366
#>     Attrib V4    -0.17072841063654262
#>     Attrib V40    0.013751839170951081
#>     Attrib V41    1.121903928715054
#>     Attrib V42    -0.08798680731972852
#>     Attrib V43    0.16352937322236089
#>     Attrib V44    1.170023236008354
#>     Attrib V45    0.7300409165385837
#>     Attrib V46    0.9694023572920352
#>     Attrib V47    0.684090771901938
#>     Attrib V48    0.9416616210397224
#>     Attrib V49    0.5057299948011081
#>     Attrib V5    0.8865507093301042
#>     Attrib V50    -0.641890731565503
#>     Attrib V51    0.7972936984756006
#>     Attrib V52    0.8080564499674796
#>     Attrib V53    1.0226795897494974
#>     Attrib V54    0.4804895969590737
#>     Attrib V55    -0.46995376830075275
#>     Attrib V56    -0.8057756048622973
#>     Attrib V57    -0.37519703725886483
#>     Attrib V58    0.42670441949480664
#>     Attrib V59    0.42665993839105476
#>     Attrib V6    1.2676463771927196
#>     Attrib V60    -0.32300482523400925
#>     Attrib V7    0.04995539666093587
#>     Attrib V8    -0.3648215815781783
#>     Attrib V9    0.8796961618798359
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.47244550892078135
#>     Attrib V1    -0.09888130781734585
#>     Attrib V10    -0.25612454147581326
#>     Attrib V11    -0.5550254844299504
#>     Attrib V12    -0.35282247321325405
#>     Attrib V13    -0.0803705249027603
#>     Attrib V14    0.33606463343678616
#>     Attrib V15    0.03225586806516879
#>     Attrib V16    0.08726007722039672
#>     Attrib V17    0.1314025712969621
#>     Attrib V18    0.26757604016754677
#>     Attrib V19    0.14495474267026945
#>     Attrib V2    0.1713259239706661
#>     Attrib V20    -0.049226971915891884
#>     Attrib V21    -0.06891286014332186
#>     Attrib V22    0.009374894925158314
#>     Attrib V23    -0.33577868984899295
#>     Attrib V24    -0.3116551295023388
#>     Attrib V25    0.21512862217401355
#>     Attrib V26    0.12144918032260431
#>     Attrib V27    0.11576964220365944
#>     Attrib V28    -0.15430391980497804
#>     Attrib V29    -0.0894044574468685
#>     Attrib V3    0.10728837994733008
#>     Attrib V30    -0.20404729408688266
#>     Attrib V31    0.3547166306721765
#>     Attrib V32    -0.008712831954804172
#>     Attrib V33    -0.05611594661289439
#>     Attrib V34    0.04636782717966926
#>     Attrib V35    -0.11769445785765256
#>     Attrib V36    0.4447147862481403
#>     Attrib V37    0.4050681861018626
#>     Attrib V38    -0.13172488325541007
#>     Attrib V39    -0.10144325032926635
#>     Attrib V4    0.24564817283366525
#>     Attrib V40    0.2908103313857798
#>     Attrib V41    -0.27656713591720383
#>     Attrib V42    -0.21194452380747547
#>     Attrib V43    -0.27201200953866606
#>     Attrib V44    -0.46479723119320737
#>     Attrib V45    -0.3950293952228523
#>     Attrib V46    -0.27276564046310453
#>     Attrib V47    -0.12955798891430434
#>     Attrib V48    -0.30561981056257254
#>     Attrib V49    -0.25282968113037363
#>     Attrib V5    -0.019313399358011962
#>     Attrib V50    0.4538503502095022
#>     Attrib V51    -0.2712800320136453
#>     Attrib V52    -0.2226854316101496
#>     Attrib V53    -0.04230562439370157
#>     Attrib V54    0.10561183597883599
#>     Attrib V55    0.29261308239667544
#>     Attrib V56    0.040742932291234116
#>     Attrib V57    0.3675529218262309
#>     Attrib V58    -0.38829364345005934
#>     Attrib V59    -0.1777311511525385
#>     Attrib V6    0.07962011351260928
#>     Attrib V60    0.3687666331941118
#>     Attrib V7    0.28724240299825776
#>     Attrib V8    0.10848755215402754
#>     Attrib V9    -0.5086710811341076
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    1.0408564181949578
#>     Attrib V1    0.449050078808475
#>     Attrib V10    1.2771535957981364
#>     Attrib V11    1.7473064817151527
#>     Attrib V12    1.3752600879115933
#>     Attrib V13    0.090214448913764
#>     Attrib V14    -0.7727287386347899
#>     Attrib V15    -0.28259660801086095
#>     Attrib V16    -0.5040579441602363
#>     Attrib V17    -0.6784185579571332
#>     Attrib V18    -0.694053622533309
#>     Attrib V19    -0.5978462155027069
#>     Attrib V2    0.08213959941684956
#>     Attrib V20    -0.2742003821700145
#>     Attrib V21    -0.034230836433754804
#>     Attrib V22    -0.5015085724027333
#>     Attrib V23    -0.24749970437787266
#>     Attrib V24    0.08828999962620232
#>     Attrib V25    -0.3226354006647838
#>     Attrib V26    0.5409631965341917
#>     Attrib V27    0.6763245797110992
#>     Attrib V28    0.7605260225069178
#>     Attrib V29    0.5497943055568307
#>     Attrib V3    0.027532714411675895
#>     Attrib V30    0.25131594028277615
#>     Attrib V31    -0.7410062345333841
#>     Attrib V32    -0.6910273557318903
#>     Attrib V33    -0.8922415805434417
#>     Attrib V34    -0.4058841996786746
#>     Attrib V35    0.5709213010146748
#>     Attrib V36    -0.6179884015007159
#>     Attrib V37    -0.1832113463725023
#>     Attrib V38    0.0055391244860900826
#>     Attrib V39    0.2180884234767634
#>     Attrib V4    -0.21586693211676763
#>     Attrib V40    -0.2781355928745403
#>     Attrib V41    0.427192721749662
#>     Attrib V42    -0.5046392191629644
#>     Attrib V43    -0.155186075851523
#>     Attrib V44    0.6532883406255968
#>     Attrib V45    0.7152821184877648
#>     Attrib V46    0.6322525006094066
#>     Attrib V47    0.34667600330002574
#>     Attrib V48    0.730899620219448
#>     Attrib V49    0.19492281114998922
#>     Attrib V5    0.3071999652483997
#>     Attrib V50    -0.5463954701099936
#>     Attrib V51    0.4566067013103051
#>     Attrib V52    0.4410427150382371
#>     Attrib V53    0.5011227633040475
#>     Attrib V54    -0.06369431448380473
#>     Attrib V55    -0.2830302906375628
#>     Attrib V56    -0.44168693741895576
#>     Attrib V57    -0.2843916859223945
#>     Attrib V58    0.6054272420383898
#>     Attrib V59    0.22891613911951594
#>     Attrib V6    0.6780097904412992
#>     Attrib V60    -0.19864572923466262
#>     Attrib V7    -0.1359720986967735
#>     Attrib V8    -0.37680042682852793
#>     Attrib V9    0.9147459419070305
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.44509367738739347
#>     Attrib V1    -0.09849090845620292
#>     Attrib V10    -0.33405109160363206
#>     Attrib V11    -0.6195486511223377
#>     Attrib V12    -0.45108051265594035
#>     Attrib V13    -0.044121740065404064
#>     Attrib V14    0.3389469167659082
#>     Attrib V15    0.12106600978581442
#>     Attrib V16    0.14729340852697906
#>     Attrib V17    0.09446632200806214
#>     Attrib V18    0.3786154042794887
#>     Attrib V19    0.07751876280676559
#>     Attrib V2    0.13038602729719817
#>     Attrib V20    -0.0770155133862277
#>     Attrib V21    -0.0784299465966261
#>     Attrib V22    0.0030452894120589643
#>     Attrib V23    -0.45129212654857376
#>     Attrib V24    -0.37058289527957927
#>     Attrib V25    0.15204269068917284
#>     Attrib V26    0.08859242764553976
#>     Attrib V27    0.056937227229345105
#>     Attrib V28    -0.2761166471497025
#>     Attrib V29    -0.14481729003868946
#>     Attrib V3    0.1582888600102577
#>     Attrib V30    -0.2332507624615179
#>     Attrib V31    0.3937645346602753
#>     Attrib V32    0.05146256704766978
#>     Attrib V33    -0.12157958044764455
#>     Attrib V34    0.07843423119605558
#>     Attrib V35    -0.16413221742533887
#>     Attrib V36    0.4936292332128265
#>     Attrib V37    0.3991222935665188
#>     Attrib V38    -0.06030688079202705
#>     Attrib V39    -0.09366352768127477
#>     Attrib V4    0.2613441477657541
#>     Attrib V40    0.3103709003106433
#>     Attrib V41    -0.31520152499340437
#>     Attrib V42    -0.28301859485839287
#>     Attrib V43    -0.3160254825135282
#>     Attrib V44    -0.5633248227567074
#>     Attrib V45    -0.4237133501341605
#>     Attrib V46    -0.30631093360407835
#>     Attrib V47    -0.18332214422314327
#>     Attrib V48    -0.4063857894572113
#>     Attrib V49    -0.31509200046861696
#>     Attrib V5    -0.03869594558798501
#>     Attrib V50    0.5152940760969287
#>     Attrib V51    -0.329101278557429
#>     Attrib V52    -0.20152797667929667
#>     Attrib V53    -0.0665925451142097
#>     Attrib V54    0.17603208920440694
#>     Attrib V55    0.3341524197302454
#>     Attrib V56    0.03297285678466367
#>     Attrib V57    0.35600082855003307
#>     Attrib V58    -0.41964983423984986
#>     Attrib V59    -0.1966544710394132
#>     Attrib V6    0.03992171712520848
#>     Attrib V60    0.3378164128266096
#>     Attrib V7    0.3799223462982743
#>     Attrib V8    0.11813177749915303
#>     Attrib V9    -0.5243189621518511
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.08694686396261551
#>     Attrib V1    0.36138040280827316
#>     Attrib V10    -0.09885218346988528
#>     Attrib V11    0.17463127573347986
#>     Attrib V12    0.02816928978069273
#>     Attrib V13    0.033271461407322456
#>     Attrib V14    0.053121206358991334
#>     Attrib V15    0.2248420653598561
#>     Attrib V16    0.030307084191784964
#>     Attrib V17    0.050956514864545346
#>     Attrib V18    -0.1997931429778008
#>     Attrib V19    0.06725431382899383
#>     Attrib V2    0.043111967454545125
#>     Attrib V20    0.4563708630215803
#>     Attrib V21    0.40927538456832374
#>     Attrib V22    0.1791314727257693
#>     Attrib V23    0.3211508649340912
#>     Attrib V24    0.37787904121915133
#>     Attrib V25    -0.11987319759694492
#>     Attrib V26    -0.44019830776922325
#>     Attrib V27    -0.5324073012989858
#>     Attrib V28    -0.2984830623153908
#>     Attrib V29    -0.21999251273620143
#>     Attrib V3    0.11423876106364185
#>     Attrib V30    -0.04757839249417315
#>     Attrib V31    -0.59383229230617
#>     Attrib V32    -0.10890980997818998
#>     Attrib V33    0.20179419180871241
#>     Attrib V34    -0.05161931800584039
#>     Attrib V35    -0.00579243932212824
#>     Attrib V36    -0.4957203802310728
#>     Attrib V37    -0.5275586541323981
#>     Attrib V38    0.21850270405378158
#>     Attrib V39    0.20308907340128574
#>     Attrib V4    -0.05999750809791734
#>     Attrib V40    -0.3508913669203133
#>     Attrib V41    -0.028890849560400087
#>     Attrib V42    0.2995464249783099
#>     Attrib V43    0.3498312806715333
#>     Attrib V44    0.2317409802600878
#>     Attrib V45    0.372694802134994
#>     Attrib V46    0.11646859701811871
#>     Attrib V47    0.010215345196863786
#>     Attrib V48    0.13871608296962742
#>     Attrib V49    0.04877841863376909
#>     Attrib V5    -0.05784017577024904
#>     Attrib V50    -0.4158511070747708
#>     Attrib V51    0.1919225506363885
#>     Attrib V52    0.23580833944045293
#>     Attrib V53    0.11842446427919832
#>     Attrib V54    0.011989672799368698
#>     Attrib V55    -0.037948987367521114
#>     Attrib V56    0.32480820767160845
#>     Attrib V57    -0.18830600018197594
#>     Attrib V58    0.39900618283315314
#>     Attrib V59    0.33560969257461426
#>     Attrib V6    -0.25083032863685784
#>     Attrib V60    -0.00787897788681163
#>     Attrib V7    -0.3576735730495062
#>     Attrib V8    -0.11865877563202604
#>     Attrib V9    0.34900484075120847
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.4976974925463327
#>     Attrib V1    -0.09941293650943832
#>     Attrib V10    -0.2963908857658172
#>     Attrib V11    -0.6486045380987268
#>     Attrib V12    -0.3867470690250433
#>     Attrib V13    0.05039988123268298
#>     Attrib V14    0.42196968253133244
#>     Attrib V15    0.10586453103800224
#>     Attrib V16    0.11670115764005794
#>     Attrib V17    0.1681730362169086
#>     Attrib V18    0.3878517279601961
#>     Attrib V19    0.10579143535051046
#>     Attrib V2    0.21315175396552
#>     Attrib V20    -0.0939018265700169
#>     Attrib V21    -0.120224322381246
#>     Attrib V22    -0.04498808283420819
#>     Attrib V23    -0.47778108597841273
#>     Attrib V24    -0.4584521709661678
#>     Attrib V25    0.22040012528373282
#>     Attrib V26    0.11203668187275667
#>     Attrib V27    0.047280267485905504
#>     Attrib V28    -0.23867906904851177
#>     Attrib V29    -0.20862491596853555
#>     Attrib V3    0.15182849819753244
#>     Attrib V30    -0.2847061826712513
#>     Attrib V31    0.5282745065137004
#>     Attrib V32    0.021715368609550274
#>     Attrib V33    -0.11891947542031293
#>     Attrib V34    0.06706667129863318
#>     Attrib V35    -0.17120970100979832
#>     Attrib V36    0.5020020282014841
#>     Attrib V37    0.4985960587687436
#>     Attrib V38    -0.10898061765847453
#>     Attrib V39    -0.07479369381651649
#>     Attrib V4    0.2841292373728186
#>     Attrib V40    0.37031687911039474
#>     Attrib V41    -0.37275371654676004
#>     Attrib V42    -0.26115728335876454
#>     Attrib V43    -0.3667549247329036
#>     Attrib V44    -0.6474417247241231
#>     Attrib V45    -0.5182216455853571
#>     Attrib V46    -0.3678545855095866
#>     Attrib V47    -0.21488185674114274
#>     Attrib V48    -0.4588413698297824
#>     Attrib V49    -0.3594266628881969
#>     Attrib V5    -0.05781988484949677
#>     Attrib V50    0.5228791253005715
#>     Attrib V51    -0.36074407267033365
#>     Attrib V52    -0.26255660798760394
#>     Attrib V53    -0.03408891999301851
#>     Attrib V54    0.18678491269799308
#>     Attrib V55    0.3834049263904148
#>     Attrib V56    0.08959555078945389
#>     Attrib V57    0.3701033508094375
#>     Attrib V58    -0.4281443415556319
#>     Attrib V59    -0.21178504551715333
#>     Attrib V6    0.020946624190695373
#>     Attrib V60    0.42256375414780983
#>     Attrib V7    0.3685763747954273
#>     Attrib V8    0.06305424718233081
#>     Attrib V9    -0.6729609577632873
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.03201941757271427
#>     Attrib V1    0.5471327218071551
#>     Attrib V10    -0.19342186417283272
#>     Attrib V11    0.001961804975970283
#>     Attrib V12    -0.20653523098827276
#>     Attrib V13    0.06275634678352336
#>     Attrib V14    0.1878206394559353
#>     Attrib V15    0.4374940663494485
#>     Attrib V16    0.1600653121947092
#>     Attrib V17    0.1614908951560303
#>     Attrib V18    -0.1553465284111395
#>     Attrib V19    0.09017383542283638
#>     Attrib V2    0.23345147059617882
#>     Attrib V20    0.5561184034864278
#>     Attrib V21    0.3996669334937841
#>     Attrib V22    0.13811115285200684
#>     Attrib V23    0.25282882230166803
#>     Attrib V24    0.22674039372629998
#>     Attrib V25    -0.3984044913687553
#>     Attrib V26    -0.6219875221615423
#>     Attrib V27    -0.6925651937552083
#>     Attrib V28    -0.40064860154091286
#>     Attrib V29    -0.2659669260478736
#>     Attrib V3    0.12897919274250222
#>     Attrib V30    -0.06924237330602807
#>     Attrib V31    -0.7124403180432317
#>     Attrib V32    -0.29684854400851896
#>     Attrib V33    0.1105890640588858
#>     Attrib V34    -0.17099674014865926
#>     Attrib V35    -0.11795580972803865
#>     Attrib V36    -0.5004464380958443
#>     Attrib V37    -0.41211962984097306
#>     Attrib V38    0.4145089400674244
#>     Attrib V39    0.21586829472703806
#>     Attrib V4    0.052265625958399405
#>     Attrib V40    -0.42705914769444436
#>     Attrib V41    -0.2611767943350859
#>     Attrib V42    0.30044928832230094
#>     Attrib V43    0.35888321466149914
#>     Attrib V44    0.41877826805177687
#>     Attrib V45    0.40446001083964744
#>     Attrib V46    0.1080474158162574
#>     Attrib V47    -0.06681871098206368
#>     Attrib V48    0.08140523888990651
#>     Attrib V49    0.006624820558844871
#>     Attrib V5    -0.024497848383363628
#>     Attrib V50    -0.43689929706470704
#>     Attrib V51    0.09113305330151823
#>     Attrib V52    0.23502559936273063
#>     Attrib V53    0.21311797400043542
#>     Attrib V54    0.24088367363398727
#>     Attrib V55    0.015615339570270644
#>     Attrib V56    0.41244209766899265
#>     Attrib V57    -0.09664361157161261
#>     Attrib V58    0.40669309351013744
#>     Attrib V59    0.3849090959547608
#>     Attrib V6    -0.2725213166218736
#>     Attrib V60    0.06927992019953001
#>     Attrib V7    -0.25453924675967604
#>     Attrib V8    -0.1945071353343438
#>     Attrib V9    0.3018712627582996
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1573253005963506
#>     Attrib V1    0.10174440004817326
#>     Attrib V10    -0.04055618562545664
#>     Attrib V11    0.006810997272350721
#>     Attrib V12    -0.003900561990280132
#>     Attrib V13    -0.030186211542366875
#>     Attrib V14    0.09758794409194253
#>     Attrib V15    0.0643525802367082
#>     Attrib V16    0.06973089720507426
#>     Attrib V17    0.021729549414748514
#>     Attrib V18    0.07182133834121142
#>     Attrib V19    -0.054577847599129085
#>     Attrib V2    0.06673105933108099
#>     Attrib V20    -0.006153901460550304
#>     Attrib V21    -0.013963141151623492
#>     Attrib V22    -0.07913667770493538
#>     Attrib V23    -0.016481813645117895
#>     Attrib V24    -0.030287679603081822
#>     Attrib V25    -0.0687573913181592
#>     Attrib V26    -0.07518947571768136
#>     Attrib V27    -0.08584913814568258
#>     Attrib V28    -0.04931371418778704
#>     Attrib V29    -0.07737069237009461
#>     Attrib V3    0.12015371404389572
#>     Attrib V30    -0.0060998567179940625
#>     Attrib V31    -0.05454466716556842
#>     Attrib V32    0.01925927167466827
#>     Attrib V33    0.08307338318000854
#>     Attrib V34    0.06546172767390854
#>     Attrib V35    0.06467987646296001
#>     Attrib V36    0.0747412094191413
#>     Attrib V37    0.025648756075560258
#>     Attrib V38    0.011346687097736069
#>     Attrib V39    0.07127883531602168
#>     Attrib V4    0.07985492882736032
#>     Attrib V40    0.015599142686803718
#>     Attrib V41    -0.02340201173234397
#>     Attrib V42    0.00830515557779118
#>     Attrib V43    -0.05723714242846494
#>     Attrib V44    -0.0083151635410931
#>     Attrib V45    0.04403046546937748
#>     Attrib V46    0.02041268736024471
#>     Attrib V47    0.0220470713065553
#>     Attrib V48    0.012563996918446303
#>     Attrib V49    0.047381131824110176
#>     Attrib V5    0.0845012120461549
#>     Attrib V50    -0.02814639491209991
#>     Attrib V51    0.07146632667338065
#>     Attrib V52    0.09449665983267387
#>     Attrib V53    0.08071580633411757
#>     Attrib V54    -0.04078684061632281
#>     Attrib V55    0.062393176489081784
#>     Attrib V56    0.07967715947882366
#>     Attrib V57    0.061704011240167694
#>     Attrib V58    0.12360771555217058
#>     Attrib V59    0.007422366198372476
#>     Attrib V6    0.07049470504470348
#>     Attrib V60    0.03700914943229103
#>     Attrib V7    0.021767700275479876
#>     Attrib V8    0.04908512962577291
#>     Attrib V9    0.06954761231758574
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
