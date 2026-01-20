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
#>     Threshold    0.13278249366255346
#>     Node 2    2.5704292095726773
#>     Node 3    1.5621934768078742
#>     Node 4    0.5972192969902906
#>     Node 5    -2.71650981490111
#>     Node 6    1.6466860674977697
#>     Node 7    3.5638871882776764
#>     Node 8    0.8864659273025342
#>     Node 9    3.4206687093319017
#>     Node 10    -1.0951771580884626
#>     Node 11    1.0724440303446228
#>     Node 12    1.6906421572860333
#>     Node 13    1.3345547678293839
#>     Node 14    1.2927189941171906
#>     Node 15    -2.6186930483483444
#>     Node 16    0.6097437989227485
#>     Node 17    0.14262330290563363
#>     Node 18    0.014949166713263313
#>     Node 19    1.7990606670256215
#>     Node 20    1.575709434934331
#>     Node 21    -2.1675435877817244
#>     Node 22    1.029498795275657
#>     Node 23    2.1777613907619977
#>     Node 24    -1.0576250013265778
#>     Node 25    2.8836521295804873
#>     Node 26    -0.7497365447022213
#>     Node 27    1.4367393393551553
#>     Node 28    -3.19755713511695
#>     Node 29    1.3206755525110914
#>     Node 30    -0.35830029896656024
#>     Node 31    1.5060023303187025
#>     Node 32    0.291610882094484
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.10874422427876836
#>     Node 2    -2.5876524558705736
#>     Node 3    -1.5444589568903238
#>     Node 4    -0.5685256839142373
#>     Node 5    2.738976258767403
#>     Node 6    -1.6412835438241389
#>     Node 7    -3.5427438430792315
#>     Node 8    -0.928527539512033
#>     Node 9    -3.425915546411032
#>     Node 10    1.0351593496616884
#>     Node 11    -1.044389652784937
#>     Node 12    -1.7556916822244983
#>     Node 13    -1.3011135642425193
#>     Node 14    -1.2246357183427306
#>     Node 15    2.6188165750683634
#>     Node 16    -0.6414162249653946
#>     Node 17    -0.1276771327294094
#>     Node 18    0.01315537376493107
#>     Node 19    -1.7836719110679313
#>     Node 20    -1.5499895380045117
#>     Node 21    2.2247027840624822
#>     Node 22    -1.0863589026355658
#>     Node 23    -2.205209653132135
#>     Node 24    1.0518625260150691
#>     Node 25    -2.872189130107693
#>     Node 26    0.6733239741578794
#>     Node 27    -1.4641602134085052
#>     Node 28    3.1654295369815637
#>     Node 29    -1.3617625663665653
#>     Node 30    0.43145634567771385
#>     Node 31    -1.4610013006771707
#>     Node 32    -0.32460477461542064
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.26922122445140784
#>     Attrib V1    0.3243286422869656
#>     Attrib V10    -0.22804082825828773
#>     Attrib V11    -0.2093857372194653
#>     Attrib V12    0.1419872103147388
#>     Attrib V13    0.11489875024062153
#>     Attrib V14    0.11260946065790338
#>     Attrib V15    0.30399026416564573
#>     Attrib V16    0.1464510935796764
#>     Attrib V17    0.082158544116917
#>     Attrib V18    -0.2897695247928486
#>     Attrib V19    0.35180154704034156
#>     Attrib V2    0.1783902032974344
#>     Attrib V20    0.5618652919518492
#>     Attrib V21    1.040031199000799
#>     Attrib V22    0.41921303279810235
#>     Attrib V23    0.016103704951730368
#>     Attrib V24    0.41340354360156234
#>     Attrib V25    -0.5580605272888318
#>     Attrib V26    -0.9489177301560229
#>     Attrib V27    -0.6563318553453328
#>     Attrib V28    -0.36195703340825136
#>     Attrib V29    -0.5035920859943172
#>     Attrib V3    0.30589122186233236
#>     Attrib V30    -0.030894060508803445
#>     Attrib V31    -1.184797882245002
#>     Attrib V32    -0.0940878707823927
#>     Attrib V33    0.24134241689824276
#>     Attrib V34    -0.6100646450512845
#>     Attrib V35    -0.8790624464691641
#>     Attrib V36    -1.4559895827469764
#>     Attrib V37    -0.5541355058192693
#>     Attrib V38    0.9175078573064855
#>     Attrib V39    0.5107016474820042
#>     Attrib V4    0.5961534811580501
#>     Attrib V40    -0.31234864736354523
#>     Attrib V41    0.3085521808098361
#>     Attrib V42    0.7933633122541459
#>     Attrib V43    0.20334282976000526
#>     Attrib V44    0.3856708075221756
#>     Attrib V45    0.25501897733778855
#>     Attrib V46    0.41781644830085746
#>     Attrib V47    -0.2863800626601735
#>     Attrib V48    -0.6499515392716959
#>     Attrib V49    0.04915096077082602
#>     Attrib V5    0.2939985544755292
#>     Attrib V50    -1.0656504500813844
#>     Attrib V51    0.01819844836751177
#>     Attrib V52    -0.2158520766252499
#>     Attrib V53    0.6202356094763654
#>     Attrib V54    0.6409576167876344
#>     Attrib V55    -0.522746771665256
#>     Attrib V56    0.26680633386686226
#>     Attrib V57    0.1470754141864694
#>     Attrib V58    0.4700031006051657
#>     Attrib V59    1.1152369260517065
#>     Attrib V6    -0.4884640312124849
#>     Attrib V60    0.3629798808313227
#>     Attrib V7    0.17074863744451202
#>     Attrib V8    0.40171599478218806
#>     Attrib V9    0.14206555143277158
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.17798580074054618
#>     Attrib V1    0.12773454816710367
#>     Attrib V10    -0.2373462364406065
#>     Attrib V11    -0.096907786126179
#>     Attrib V12    0.1601829507063123
#>     Attrib V13    0.024724274541135044
#>     Attrib V14    0.0098768191707853
#>     Attrib V15    0.13911461490257615
#>     Attrib V16    0.02803803394943127
#>     Attrib V17    0.07066166577563515
#>     Attrib V18    -0.19292749814951624
#>     Attrib V19    0.3474537676921956
#>     Attrib V2    0.12813954213245668
#>     Attrib V20    0.3043625048927576
#>     Attrib V21    0.4646244838394134
#>     Attrib V22    0.14335156846156605
#>     Attrib V23    -0.10130925962315004
#>     Attrib V24    0.24550417614690181
#>     Attrib V25    -0.25751672933197606
#>     Attrib V26    -0.5841914786867903
#>     Attrib V27    -0.5887915766305155
#>     Attrib V28    -0.5749822420322493
#>     Attrib V29    -0.6744377626693737
#>     Attrib V3    0.17303788079522894
#>     Attrib V30    -0.027577906150591233
#>     Attrib V31    -0.5213339984297868
#>     Attrib V32    0.17658505742849484
#>     Attrib V33    0.4330675423892817
#>     Attrib V34    -0.11974326544924087
#>     Attrib V35    -0.35023555820923397
#>     Attrib V36    -0.8477689888963563
#>     Attrib V37    -0.44782360416611444
#>     Attrib V38    0.4454505137842847
#>     Attrib V39    0.3632960376662304
#>     Attrib V4    0.3709561913231915
#>     Attrib V40    -0.09873720873614739
#>     Attrib V41    0.20238000640210393
#>     Attrib V42    0.36158173270292404
#>     Attrib V43    -0.04253772370225134
#>     Attrib V44    0.019727496767791463
#>     Attrib V45    0.011309597381589322
#>     Attrib V46    0.10294492459545129
#>     Attrib V47    -0.18920916874498148
#>     Attrib V48    -0.291476442278272
#>     Attrib V49    0.1507057644397317
#>     Attrib V5    0.12902089097866126
#>     Attrib V50    -0.6410291340436743
#>     Attrib V51    0.01976080246419895
#>     Attrib V52    -0.0860920492346656
#>     Attrib V53    0.2867376476698336
#>     Attrib V54    0.5360792483217258
#>     Attrib V55    -0.05734763360655483
#>     Attrib V56    0.22923691467129134
#>     Attrib V57    0.18688548448667652
#>     Attrib V58    0.3256672605393384
#>     Attrib V59    0.7623517999291047
#>     Attrib V6    -0.3217725423426877
#>     Attrib V60    0.1735413745365065
#>     Attrib V7    0.008221848646110027
#>     Attrib V8    0.2556657257456506
#>     Attrib V9    -0.005997308723624748
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.02777546540130764
#>     Attrib V1    -0.022692335979519033
#>     Attrib V10    -0.04719891525184766
#>     Attrib V11    0.00906774644766248
#>     Attrib V12    0.04616002163134223
#>     Attrib V13    -0.002936681659506591
#>     Attrib V14    0.00455086251743464
#>     Attrib V15    0.04032477498126207
#>     Attrib V16    -0.030761784500934183
#>     Attrib V17    0.009805759652023719
#>     Attrib V18    -0.08921729554208178
#>     Attrib V19    0.10682050019129118
#>     Attrib V2    0.009069054218336628
#>     Attrib V20    0.03669486658739527
#>     Attrib V21    0.11200993713141662
#>     Attrib V22    -0.11056054966645742
#>     Attrib V23    -0.1709664446157596
#>     Attrib V24    -0.018949260138192616
#>     Attrib V25    -0.18104177257228882
#>     Attrib V26    -0.18228037362572794
#>     Attrib V27    -0.2095604379641525
#>     Attrib V28    -0.12710676694988648
#>     Attrib V29    -0.1615449835754643
#>     Attrib V3    0.09588901955857344
#>     Attrib V30    0.03769891202349467
#>     Attrib V31    -0.11203689280420251
#>     Attrib V32    0.08766953588553172
#>     Attrib V33    0.1969965183344011
#>     Attrib V34    0.05226133020220945
#>     Attrib V35    -0.0021002905538648354
#>     Attrib V36    -0.2685204981161238
#>     Attrib V37    -0.1509335228477821
#>     Attrib V38    0.14190365748041778
#>     Attrib V39    0.15720492775397568
#>     Attrib V4    0.15439541147904048
#>     Attrib V40    -0.04337449552684851
#>     Attrib V41    0.01825464761549314
#>     Attrib V42    0.063232514073851
#>     Attrib V43    -0.12484529918665414
#>     Attrib V44    -0.003548360614785153
#>     Attrib V45    0.1161909678793775
#>     Attrib V46    0.07954313448326379
#>     Attrib V47    -0.019679624518899028
#>     Attrib V48    0.013675474927639195
#>     Attrib V49    0.18397076483320424
#>     Attrib V5    0.1301696448814747
#>     Attrib V50    -0.17538808792057298
#>     Attrib V51    0.12173686574290178
#>     Attrib V52    0.030557519604462558
#>     Attrib V53    0.167268885084459
#>     Attrib V54    0.12837035928689933
#>     Attrib V55    0.07238889486788096
#>     Attrib V56    0.11699152775862515
#>     Attrib V57    0.13835721373661553
#>     Attrib V58    0.14038372492255258
#>     Attrib V59    0.2627338515044683
#>     Attrib V6    -0.11383364166628857
#>     Attrib V60    0.04972043297855164
#>     Attrib V7    0.009319503862569713
#>     Attrib V8    0.08573083705305888
#>     Attrib V9    0.07052428382262063
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5107664850951038
#>     Attrib V1    -0.06877632155240951
#>     Attrib V10    -0.8738414902053947
#>     Attrib V11    -0.8304095238922758
#>     Attrib V12    -0.6065228685197389
#>     Attrib V13    -0.2634155633458853
#>     Attrib V14    0.5758032175599805
#>     Attrib V15    0.6282415052400335
#>     Attrib V16    0.5440174926351881
#>     Attrib V17    0.4122508835377779
#>     Attrib V18    0.40932163186716447
#>     Attrib V19    -0.8336121788915994
#>     Attrib V2    0.19257703028377457
#>     Attrib V20    -0.3311664731125471
#>     Attrib V21    -0.620937418961967
#>     Attrib V22    -0.5526824027489124
#>     Attrib V23    -0.6124839789575797
#>     Attrib V24    -1.1766559003330979
#>     Attrib V25    -0.3410778461556144
#>     Attrib V26    -0.7051112321915479
#>     Attrib V27    -0.8225561496259921
#>     Attrib V28    -1.3831584311985516
#>     Attrib V29    -0.7426727239606944
#>     Attrib V3    0.06269594585421925
#>     Attrib V30    -0.7125750878057541
#>     Attrib V31    0.43124061732278585
#>     Attrib V32    -0.054260711649364815
#>     Attrib V33    -0.11097604359694087
#>     Attrib V34    0.1019851614366452
#>     Attrib V35    -0.3437829630635276
#>     Attrib V36    0.8568115626094107
#>     Attrib V37    0.24288515113134937
#>     Attrib V38    -0.5389171254668964
#>     Attrib V39    -0.5871079745832725
#>     Attrib V4    -0.5077069556113964
#>     Attrib V40    0.2213981052873281
#>     Attrib V41    -1.1610454959088852
#>     Attrib V42    -0.27671291019222805
#>     Attrib V43    0.5095894233595678
#>     Attrib V44    -0.19011611610168075
#>     Attrib V45    -0.4926311533159189
#>     Attrib V46    -1.2584894472403336
#>     Attrib V47    -0.7451211881346094
#>     Attrib V48    0.018556038716026405
#>     Attrib V49    -1.0832143545448005
#>     Attrib V5    -0.7319726269147738
#>     Attrib V50    0.9992116795216985
#>     Attrib V51    -0.9759202295978537
#>     Attrib V52    -0.45227104689554476
#>     Attrib V53    -0.2018280428836602
#>     Attrib V54    0.2709650982887747
#>     Attrib V55    0.6450198376201571
#>     Attrib V56    0.26432318715304104
#>     Attrib V57    0.462519682747973
#>     Attrib V58    -0.14600309165074857
#>     Attrib V59    -0.2668766479847176
#>     Attrib V6    -0.532067434217862
#>     Attrib V60    0.0018806288832993875
#>     Attrib V7    0.1504422285580992
#>     Attrib V8    -0.5719936135914396
#>     Attrib V9    -0.9721604390953629
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.16612704362245975
#>     Attrib V1    0.1464571360735882
#>     Attrib V10    -0.22665453920504264
#>     Attrib V11    -0.08318450378329251
#>     Attrib V12    0.12124490666858853
#>     Attrib V13    -0.05913938741600252
#>     Attrib V14    -0.05471039792827784
#>     Attrib V15    0.015720119577910655
#>     Attrib V16    0.08520166821160119
#>     Attrib V17    0.06488861380964778
#>     Attrib V18    -0.0943882253881598
#>     Attrib V19    0.43603070210154043
#>     Attrib V2    0.058383146571134026
#>     Attrib V20    0.4051433184294936
#>     Attrib V21    0.563242813054137
#>     Attrib V22    0.14346899198877155
#>     Attrib V23    -0.003543818747020879
#>     Attrib V24    0.3977826922272515
#>     Attrib V25    -0.12373726754692176
#>     Attrib V26    -0.5120344717977807
#>     Attrib V27    -0.5722055107837188
#>     Attrib V28    -0.5947903408028639
#>     Attrib V29    -0.6208330216151945
#>     Attrib V3    0.17818682145157128
#>     Attrib V30    0.03813232085907791
#>     Attrib V31    -0.41163316023180796
#>     Attrib V32    0.39533126224069753
#>     Attrib V33    0.6972872465300132
#>     Attrib V34    0.10304137044558083
#>     Attrib V35    -0.24551932935313667
#>     Attrib V36    -0.8528743418580745
#>     Attrib V37    -0.5488453102092073
#>     Attrib V38    0.40934518197459224
#>     Attrib V39    0.3127880242029977
#>     Attrib V4    0.4330200282720935
#>     Attrib V40    -0.11540365806789803
#>     Attrib V41    0.3149360978299027
#>     Attrib V42    0.3954399843577504
#>     Attrib V43    -0.18260074315193423
#>     Attrib V44    -0.18102577307581724
#>     Attrib V45    -0.06155031568936867
#>     Attrib V46    0.05919201564188996
#>     Attrib V47    -0.2723931881003657
#>     Attrib V48    -0.2840553055848575
#>     Attrib V49    0.24273369479602494
#>     Attrib V5    0.12364880830581815
#>     Attrib V50    -0.6253310059939776
#>     Attrib V51    0.09989313236342018
#>     Attrib V52    -0.13576528537339722
#>     Attrib V53    0.32458018692884927
#>     Attrib V54    0.35861810938617195
#>     Attrib V55    -0.10008753683627296
#>     Attrib V56    0.25719211806367465
#>     Attrib V57    0.10670736029415753
#>     Attrib V58    0.3468506622412842
#>     Attrib V59    0.7823562618753626
#>     Attrib V6    -0.28013785552815035
#>     Attrib V60    0.2258812494258791
#>     Attrib V7    0.026774673480466107
#>     Attrib V8    0.3958849466350831
#>     Attrib V9    0.21615310811548594
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.7876403793246876
#>     Attrib V1    0.401052739149514
#>     Attrib V10    1.124895962389658
#>     Attrib V11    1.0327455272850345
#>     Attrib V12    0.5606985671007102
#>     Attrib V13    0.22406742084276196
#>     Attrib V14    -0.6023324611294688
#>     Attrib V15    -0.23508522587534886
#>     Attrib V16    -0.4426361589242448
#>     Attrib V17    -0.47931620857280843
#>     Attrib V18    -0.5923924420490483
#>     Attrib V19    0.06968126909241709
#>     Attrib V2    0.055020635297610386
#>     Attrib V20    -0.11979898121806877
#>     Attrib V21    0.6570783163094335
#>     Attrib V22    0.4965590027164056
#>     Attrib V23    0.2537147936208295
#>     Attrib V24    0.4078775134343742
#>     Attrib V25    -0.39726176620900855
#>     Attrib V26    0.7464934017664413
#>     Attrib V27    1.2926123319809402
#>     Attrib V28    1.7790118921709275
#>     Attrib V29    1.2072886758017403
#>     Attrib V3    -0.08532402947476632
#>     Attrib V30    0.7719770319310895
#>     Attrib V31    -0.5786266532052524
#>     Attrib V32    -0.5190489783162097
#>     Attrib V33    -0.8446583684304153
#>     Attrib V34    -0.7810351763715052
#>     Attrib V35    0.26670219141047213
#>     Attrib V36    -0.9782303706813361
#>     Attrib V37    -0.016481335957642795
#>     Attrib V38    0.1749637964841076
#>     Attrib V39    0.16411079067396925
#>     Attrib V4    0.4185181308782786
#>     Attrib V40    -0.38928890502382657
#>     Attrib V41    1.096544112041876
#>     Attrib V42    0.16341564100288752
#>     Attrib V43    -0.027122522712015575
#>     Attrib V44    0.9917507497254456
#>     Attrib V45    1.0273876265512998
#>     Attrib V46    1.7940855508677176
#>     Attrib V47    1.0043238443300115
#>     Attrib V48    -0.17026922018645452
#>     Attrib V49    0.7342410321473589
#>     Attrib V5    0.944070140410635
#>     Attrib V50    -0.7589691388109026
#>     Attrib V51    0.893253610756898
#>     Attrib V52    0.44670545560998526
#>     Attrib V53    0.20151986518884077
#>     Attrib V54    -0.13836146545330935
#>     Attrib V55    -0.664658740913972
#>     Attrib V56    -0.49146600983920624
#>     Attrib V57    -0.3944896177089826
#>     Attrib V58    0.11944580552514057
#>     Attrib V59    -0.1131634827355858
#>     Attrib V6    0.8929513416110373
#>     Attrib V60    -0.07033470178108404
#>     Attrib V7    0.2973396050174798
#>     Attrib V8    0.2845949195287191
#>     Attrib V9    0.8427781145829937
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.23315953475733356
#>     Attrib V1    -0.01833988796748534
#>     Attrib V10    0.0027834622840321012
#>     Attrib V11    0.14508818137232973
#>     Attrib V12    0.12807955154311396
#>     Attrib V13    -0.03360935231389803
#>     Attrib V14    -0.13418546692589448
#>     Attrib V15    -0.058010740202415555
#>     Attrib V16    -0.03833856249243935
#>     Attrib V17    -0.08295843680447904
#>     Attrib V18    -0.21938824263916776
#>     Attrib V19    0.0720378563695188
#>     Attrib V2    0.008386678523922277
#>     Attrib V20    -0.12364574096327725
#>     Attrib V21    0.032039934170602
#>     Attrib V22    -0.2216169889249496
#>     Attrib V23    -0.36829855197179806
#>     Attrib V24    0.0022680961778457514
#>     Attrib V25    -0.20194506384049654
#>     Attrib V26    -0.10899127141818599
#>     Attrib V27    -0.03763888650896682
#>     Attrib V28    -0.0024697827381884693
#>     Attrib V29    -0.1143033781371135
#>     Attrib V3    -0.0093992363071567
#>     Attrib V30    0.11866855846010778
#>     Attrib V31    -0.16979368670507375
#>     Attrib V32    0.07107010014208028
#>     Attrib V33    0.1293380624223788
#>     Attrib V34    -0.07318136584204084
#>     Attrib V35    -0.07743965230409541
#>     Attrib V36    -0.43652876809425606
#>     Attrib V37    -0.2541627412421846
#>     Attrib V38    0.24859636825744977
#>     Attrib V39    0.17815632472359297
#>     Attrib V4    0.2222176534453606
#>     Attrib V40    -0.1569335778325095
#>     Attrib V41    0.02261565052600474
#>     Attrib V42    -0.0689453022538843
#>     Attrib V43    -0.14622696619361622
#>     Attrib V44    0.09238686423350288
#>     Attrib V45    0.17321961748219833
#>     Attrib V46    0.2742040405784986
#>     Attrib V47    0.09248981786399203
#>     Attrib V48    0.1015084322009912
#>     Attrib V49    0.3005905991654641
#>     Attrib V5    0.11234429766729101
#>     Attrib V50    -0.36176833639453904
#>     Attrib V51    0.11513414183555878
#>     Attrib V52    0.06772895469224945
#>     Attrib V53    0.21250065015671904
#>     Attrib V54    0.23802659604805648
#>     Attrib V55    0.03402867961588413
#>     Attrib V56    0.003660901340514639
#>     Attrib V57    0.17536389152638657
#>     Attrib V58    0.13729987431475985
#>     Attrib V59    0.3499959145623761
#>     Attrib V6    -0.09856130926300659
#>     Attrib V60    0.07753733402166596
#>     Attrib V7    0.030794857145547253
#>     Attrib V8    0.0822039058795564
#>     Attrib V9    0.03026571701459011
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.6809993240904831
#>     Attrib V1    0.1375681562942769
#>     Attrib V10    1.1877350834933191
#>     Attrib V11    1.3071114113196738
#>     Attrib V12    0.8458137034008205
#>     Attrib V13    0.19205543015674498
#>     Attrib V14    -0.9522765668748966
#>     Attrib V15    -0.6724640172580109
#>     Attrib V16    -0.5686836187139351
#>     Attrib V17    -0.39940136110922436
#>     Attrib V18    -0.3998021765503709
#>     Attrib V19    0.4894635479746006
#>     Attrib V2    -0.15474626670710814
#>     Attrib V20    0.01725208878913556
#>     Attrib V21    0.4461908137309055
#>     Attrib V22    0.4156010962700774
#>     Attrib V23    0.45543020153156605
#>     Attrib V24    0.8736579279116241
#>     Attrib V25    0.2635941481368448
#>     Attrib V26    0.9940735205581949
#>     Attrib V27    1.0948339622286998
#>     Attrib V28    1.4082263280702798
#>     Attrib V29    0.6982276804269246
#>     Attrib V3    -0.34690090545119917
#>     Attrib V30    0.5878579990971009
#>     Attrib V31    -0.24276834383032442
#>     Attrib V32    0.05712064282859032
#>     Attrib V33    -0.31891464808610553
#>     Attrib V34    -0.08198468757304812
#>     Attrib V35    0.7199438844560155
#>     Attrib V36    -0.6563309176717498
#>     Attrib V37    -0.13449299701643408
#>     Attrib V38    0.2090546239344923
#>     Attrib V39    0.5214590237601575
#>     Attrib V4    0.26941970474836563
#>     Attrib V40    -0.05325744714900687
#>     Attrib V41    1.1651754899631588
#>     Attrib V42    -0.18400542812345028
#>     Attrib V43    -0.41209542773644836
#>     Attrib V44    0.32926409405854085
#>     Attrib V45    0.6105096123484823
#>     Attrib V46    1.520200463842552
#>     Attrib V47    1.0809446135735137
#>     Attrib V48    0.22223799741508463
#>     Attrib V49    1.112637368819895
#>     Attrib V5    0.7465988979141569
#>     Attrib V50    -0.6495418211934777
#>     Attrib V51    1.1815679377771209
#>     Attrib V52    0.5950680615979738
#>     Attrib V53    0.11610678347003181
#>     Attrib V54    -0.1719595731894125
#>     Attrib V55    -0.21797077855397592
#>     Attrib V56    -0.37821536908326286
#>     Attrib V57    -0.5987951396862334
#>     Attrib V58    0.0783808070021225
#>     Attrib V59    -0.07365441728071523
#>     Attrib V6    0.8010318818616734
#>     Attrib V60    -0.16374071460741277
#>     Attrib V7    0.058546337136671865
#>     Attrib V8    0.36923365871319375
#>     Attrib V9    0.8607104310311515
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.3843563039313218
#>     Attrib V1    -0.0062010569732340185
#>     Attrib V10    -0.2324045136601981
#>     Attrib V11    -0.3929108588731152
#>     Attrib V12    -0.3599158558311427
#>     Attrib V13    -0.13577182847995023
#>     Attrib V14    0.29612215195666075
#>     Attrib V15    0.17032497430601454
#>     Attrib V16    0.2438439130141536
#>     Attrib V17    0.14380645122369248
#>     Attrib V18    0.3282869772220565
#>     Attrib V19    -0.2735530650958171
#>     Attrib V2    0.07544915757764038
#>     Attrib V20    -0.1291099422621946
#>     Attrib V21    -0.3519950754642546
#>     Attrib V22    -0.23818864202019152
#>     Attrib V23    -0.11706601874219215
#>     Attrib V24    -0.49136937199044856
#>     Attrib V25    0.008012360347509592
#>     Attrib V26    0.054009315591834535
#>     Attrib V27    -0.020311161533180903
#>     Attrib V28    -0.1696300571846906
#>     Attrib V29    0.015672883639174122
#>     Attrib V3    0.04298049505199411
#>     Attrib V30    -0.09596039322377446
#>     Attrib V31    0.3802227368356337
#>     Attrib V32    -0.2591659917645573
#>     Attrib V33    -0.1862855912164493
#>     Attrib V34    0.15071486227742348
#>     Attrib V35    0.12147474923491473
#>     Attrib V36    0.6863176096918414
#>     Attrib V37    0.2395106006257905
#>     Attrib V38    -0.3556542185374006
#>     Attrib V39    -0.34864728201171086
#>     Attrib V4    -0.2568991486980279
#>     Attrib V40    0.21274038932230838
#>     Attrib V41    -0.3671950834262664
#>     Attrib V42    -0.19987772983496666
#>     Attrib V43    0.14729964293218625
#>     Attrib V44    -0.03894639347272229
#>     Attrib V45    -0.10200935345460044
#>     Attrib V46    -0.48065785329008026
#>     Attrib V47    -0.1301341556649337
#>     Attrib V48    0.14086509770749195
#>     Attrib V49    -0.36744102632333636
#>     Attrib V5    -0.23197346547510903
#>     Attrib V50    0.7215197929013284
#>     Attrib V51    -0.32035074371578043
#>     Attrib V52    -0.07999634175037795
#>     Attrib V53    0.006492888513885973
#>     Attrib V54    -0.07728669507217636
#>     Attrib V55    0.2393194372597552
#>     Attrib V56    0.09669404533314421
#>     Attrib V57    0.12246215645734239
#>     Attrib V58    -0.1797701736707941
#>     Attrib V59    -0.31350574529024366
#>     Attrib V6    0.03625409582549669
#>     Attrib V60    0.0250975827996377
#>     Attrib V7    0.07103053227793535
#>     Attrib V8    -0.2523529579352013
#>     Attrib V9    -0.32825420459799276
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.21663197743950333
#>     Attrib V1    0.007998674044329718
#>     Attrib V10    -0.1425713371329097
#>     Attrib V11    0.02355201259147376
#>     Attrib V12    0.16951562788685284
#>     Attrib V13    -0.08161052602536358
#>     Attrib V14    -0.07159659524065662
#>     Attrib V15    2.4611425767843607E-4
#>     Attrib V16    -0.027171777917401347
#>     Attrib V17    0.0366546838766513
#>     Attrib V18    -0.1306280102736432
#>     Attrib V19    0.15680848806463416
#>     Attrib V2    -0.006231315411951665
#>     Attrib V20    0.11733603539129112
#>     Attrib V21    0.21363827205092867
#>     Attrib V22    -0.09450587929493093
#>     Attrib V23    -0.27421347050144373
#>     Attrib V24    0.06862330322585629
#>     Attrib V25    -0.2251098778019121
#>     Attrib V26    -0.3942630673734629
#>     Attrib V27    -0.3021920381815032
#>     Attrib V28    -0.2647358123743395
#>     Attrib V29    -0.3668996637109022
#>     Attrib V3    -0.014323558081818986
#>     Attrib V30    0.003674517236752879
#>     Attrib V31    -0.38576249776467814
#>     Attrib V32    0.04130098188074584
#>     Attrib V33    0.17451549167392605
#>     Attrib V34    -0.05077461371789699
#>     Attrib V35    -0.13247155251908485
#>     Attrib V36    -0.5858687000930506
#>     Attrib V37    -0.32867553534458555
#>     Attrib V38    0.383470335998289
#>     Attrib V39    0.24816844710995756
#>     Attrib V4    0.21375651060845313
#>     Attrib V40    -0.15097978803416473
#>     Attrib V41    0.016508850786241612
#>     Attrib V42    0.11004804370254256
#>     Attrib V43    -0.08384115691964242
#>     Attrib V44    0.08449634490265095
#>     Attrib V45    0.17985715809382216
#>     Attrib V46    0.19088798149406963
#>     Attrib V47    -0.004170077403699064
#>     Attrib V48    -0.029684678481965224
#>     Attrib V49    0.21832992351424543
#>     Attrib V5    0.13215888615581795
#>     Attrib V50    -0.4297632636182507
#>     Attrib V51    0.13009926199067792
#>     Attrib V52    -0.046121996643215465
#>     Attrib V53    0.22404621667374824
#>     Attrib V54    0.42388907519200175
#>     Attrib V55    1.3181096887894243E-4
#>     Attrib V56    0.1050612682497646
#>     Attrib V57    0.15224623774220508
#>     Attrib V58    0.1980564368553662
#>     Attrib V59    0.4364037661758056
#>     Attrib V6    -0.18112775558418806
#>     Attrib V60    0.07537014143717494
#>     Attrib V7    -0.02508730379413541
#>     Attrib V8    0.13164583934736404
#>     Attrib V9    -0.014908441488772788
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.36999636304517103
#>     Attrib V1    0.13067579806413845
#>     Attrib V10    -0.28815980664192326
#>     Attrib V11    -0.06139905670380253
#>     Attrib V12    0.10712872898052152
#>     Attrib V13    -0.014604259062373979
#>     Attrib V14    0.010307180294997671
#>     Attrib V15    0.13551094867791968
#>     Attrib V16    0.10264202318830813
#>     Attrib V17    0.07257703733629588
#>     Attrib V18    -0.2116940110253665
#>     Attrib V19    0.3530680007656682
#>     Attrib V2    0.15901658226618928
#>     Attrib V20    0.2980369484932471
#>     Attrib V21    0.6043971597420866
#>     Attrib V22    0.19465188297471303
#>     Attrib V23    -0.15385454200187196
#>     Attrib V24    0.2157649833181822
#>     Attrib V25    -0.4423022841213887
#>     Attrib V26    -0.6906156602592041
#>     Attrib V27    -0.48115910362412284
#>     Attrib V28    -0.4165246778769051
#>     Attrib V29    -0.46059986009557613
#>     Attrib V3    0.08743395124875748
#>     Attrib V30    -0.033016745362619344
#>     Attrib V31    -0.7718348291690912
#>     Attrib V32    -0.05003225551197486
#>     Attrib V33    0.250552521257548
#>     Attrib V34    -0.3206293382072409
#>     Attrib V35    -0.509241934720804
#>     Attrib V36    -1.0285597866544727
#>     Attrib V37    -0.4439435201502976
#>     Attrib V38    0.6318738800483301
#>     Attrib V39    0.37274063897484744
#>     Attrib V4    0.44657831814128596
#>     Attrib V40    -0.15610217371495985
#>     Attrib V41    0.20446549778477086
#>     Attrib V42    0.39585519461285157
#>     Attrib V43    0.08291927751024027
#>     Attrib V44    0.17617917961722865
#>     Attrib V45    0.2110139225543864
#>     Attrib V46    0.3466015494392518
#>     Attrib V47    -0.1747430071230594
#>     Attrib V48    -0.30346759000672735
#>     Attrib V49    0.14954014918072256
#>     Attrib V5    0.20516322526512226
#>     Attrib V50    -0.8072080054809814
#>     Attrib V51    0.038206721656369874
#>     Attrib V52    -0.09754703149980594
#>     Attrib V53    0.4557606498977446
#>     Attrib V54    0.5783274831745108
#>     Attrib V55    -0.26267467060888977
#>     Attrib V56    0.19633117378566314
#>     Attrib V57    0.2360407175099373
#>     Attrib V58    0.3174002496430605
#>     Attrib V59    0.8354678418109007
#>     Attrib V6    -0.318125333487405
#>     Attrib V60    0.2085941914277
#>     Attrib V7    0.12034596569507856
#>     Attrib V8    0.27014240019118685
#>     Attrib V9    0.027379052579901485
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.01816534888091132
#>     Attrib V1    0.07789578540500666
#>     Attrib V10    -0.17165583123381997
#>     Attrib V11    -0.05367905375516104
#>     Attrib V12    0.06563098201442416
#>     Attrib V13    0.023025340293168318
#>     Attrib V14    -0.054325695613122914
#>     Attrib V15    -0.014563407077375419
#>     Attrib V16    0.0038044815429309044
#>     Attrib V17    0.11189092164547891
#>     Attrib V18    -0.0728328392374943
#>     Attrib V19    0.38280064197805846
#>     Attrib V2    0.02417529573372892
#>     Attrib V20    0.3601463658468346
#>     Attrib V21    0.4427445533303444
#>     Attrib V22    0.101459980967564
#>     Attrib V23    0.038439061497886326
#>     Attrib V24    0.32009270352475727
#>     Attrib V25    -0.08570995795642336
#>     Attrib V26    -0.46828676913589107
#>     Attrib V27    -0.5056822746786049
#>     Attrib V28    -0.5481768254231988
#>     Attrib V29    -0.5239892634891209
#>     Attrib V3    0.18434240830180734
#>     Attrib V30    0.01234059846498477
#>     Attrib V31    -0.36520650232128665
#>     Attrib V32    0.3309557777193433
#>     Attrib V33    0.5698199628966332
#>     Attrib V34    0.1715844920918782
#>     Attrib V35    -0.167763763340897
#>     Attrib V36    -0.6300416048114568
#>     Attrib V37    -0.3857381142119723
#>     Attrib V38    0.38027652084612923
#>     Attrib V39    0.3442592605378595
#>     Attrib V4    0.3495698429489397
#>     Attrib V40    -0.04472586841928224
#>     Attrib V41    0.21060632888993816
#>     Attrib V42    0.25576077911084005
#>     Attrib V43    -0.22795463408066263
#>     Attrib V44    -0.1618633644269464
#>     Attrib V45    -0.08400330431877846
#>     Attrib V46    0.07598883982590993
#>     Attrib V47    -0.15461009089733554
#>     Attrib V48    -0.20239382792478436
#>     Attrib V49    0.2540057604010525
#>     Attrib V5    0.13839209759165044
#>     Attrib V50    -0.5470671526957133
#>     Attrib V51    0.09169676437214072
#>     Attrib V52    -0.11634425282595008
#>     Attrib V53    0.220025029972771
#>     Attrib V54    0.2845318789995623
#>     Attrib V55    -0.04113000562525661
#>     Attrib V56    0.20480983430303684
#>     Attrib V57    0.0873011447124769
#>     Attrib V58    0.2541942610417404
#>     Attrib V59    0.6251347912427189
#>     Attrib V6    -0.2235994361658707
#>     Attrib V60    0.1986519625773994
#>     Attrib V7    0.058866982492729224
#>     Attrib V8    0.2550148886858235
#>     Attrib V9    0.14623934652635243
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.3494146965605028
#>     Attrib V1    0.1338150998638561
#>     Attrib V10    -0.11728711673705473
#>     Attrib V11    0.15837347392519527
#>     Attrib V12    0.28129933853938305
#>     Attrib V13    -0.037353109737085485
#>     Attrib V14    -0.07364582614256815
#>     Attrib V15    0.048294750908096026
#>     Attrib V16    -0.11283581698108693
#>     Attrib V17    -0.0624057115085291
#>     Attrib V18    -0.21620717770414905
#>     Attrib V19    0.05863893430577878
#>     Attrib V2    0.07209390268814751
#>     Attrib V20    -0.038623039022878156
#>     Attrib V21    0.18729960573856366
#>     Attrib V22    -0.15323174369836537
#>     Attrib V23    -0.38492324442281645
#>     Attrib V24    -0.005457625331814375
#>     Attrib V25    -0.2914634864592257
#>     Attrib V26    -0.29056588928802557
#>     Attrib V27    -0.22278955215991209
#>     Attrib V28    -0.25628244897552743
#>     Attrib V29    -0.38068635078143664
#>     Attrib V3    -0.0504042871944452
#>     Attrib V30    0.005596002611119461
#>     Attrib V31    -0.38215483502298997
#>     Attrib V32    -0.041664781283965696
#>     Attrib V33    0.0649962730098
#>     Attrib V34    -0.22442821749960085
#>     Attrib V35    -0.19755678547938257
#>     Attrib V36    -0.7749604155494074
#>     Attrib V37    -0.38106520972983554
#>     Attrib V38    0.29499086870584484
#>     Attrib V39    0.29483182422244336
#>     Attrib V4    0.22524991223190488
#>     Attrib V40    -0.1825081179741511
#>     Attrib V41    0.015761737455881063
#>     Attrib V42    0.06979160715548588
#>     Attrib V43    -0.02938966289415999
#>     Attrib V44    0.1704805172637132
#>     Attrib V45    0.12969566967639223
#>     Attrib V46    0.29493347904402156
#>     Attrib V47    0.004908813757751276
#>     Attrib V48    0.00934518318596042
#>     Attrib V49    0.3151969971974624
#>     Attrib V5    0.07864350121004876
#>     Attrib V50    -0.47248213476858686
#>     Attrib V51    0.06081258624589179
#>     Attrib V52    0.006937773412364564
#>     Attrib V53    0.2740663797414617
#>     Attrib V54    0.5186861968793256
#>     Attrib V55    0.022695259794007397
#>     Attrib V56    0.09046871426993709
#>     Attrib V57    0.2012813657898943
#>     Attrib V58    0.24552404010244025
#>     Attrib V59    0.5661500861540556
#>     Attrib V6    -0.20363863859591969
#>     Attrib V60    0.1540759653232869
#>     Attrib V7    0.020953618521905696
#>     Attrib V8    0.021129156049497864
#>     Attrib V9    -0.09427484250771996
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.7846579149974392
#>     Attrib V1    -0.3175209704723998
#>     Attrib V10    -0.12322669039172046
#>     Attrib V11    -0.31994019391406114
#>     Attrib V12    -0.4972948335735744
#>     Attrib V13    -0.2886976101522235
#>     Attrib V14    0.7058040857020211
#>     Attrib V15    0.5906260463282754
#>     Attrib V16    0.5950908031208981
#>     Attrib V17    0.4670938860860777
#>     Attrib V18    0.6999973571951822
#>     Attrib V19    0.1776900507407648
#>     Attrib V2    0.04162814375390942
#>     Attrib V20    0.04368143130492163
#>     Attrib V21    -0.8978289095057485
#>     Attrib V22    -0.6312646861558645
#>     Attrib V23    -0.6803901876190643
#>     Attrib V24    -1.1247563103461895
#>     Attrib V25    0.11904361563036539
#>     Attrib V26    0.2928046242654769
#>     Attrib V27    -0.05119766143334813
#>     Attrib V28    -0.10420800545240956
#>     Attrib V29    -0.019848709113916556
#>     Attrib V3    0.12766680087350596
#>     Attrib V30    -0.3859286393615991
#>     Attrib V31    0.6365014826122269
#>     Attrib V32    -0.016512845275326555
#>     Attrib V33    -0.3569268877557433
#>     Attrib V34    0.3400308439174661
#>     Attrib V35    0.2743120996081701
#>     Attrib V36    1.300219192552078
#>     Attrib V37    0.10821229661538048
#>     Attrib V38    -0.6551601323977019
#>     Attrib V39    -0.37436846155917697
#>     Attrib V4    -0.22187058640663984
#>     Attrib V40    -0.0219302377685329
#>     Attrib V41    -1.7407108120276216
#>     Attrib V42    -1.0896583575180494
#>     Attrib V43    -0.5857554941887034
#>     Attrib V44    -0.667664984007762
#>     Attrib V45    -0.5085976354982423
#>     Attrib V46    -1.1274849755781295
#>     Attrib V47    -0.4768435091705901
#>     Attrib V48    0.240745817915467
#>     Attrib V49    -0.2946976243481613
#>     Attrib V5    -0.406194945349262
#>     Attrib V50    1.2119029321243562
#>     Attrib V51    -0.393735430674855
#>     Attrib V52    0.3608574115388137
#>     Attrib V53    0.20995965927062094
#>     Attrib V54    0.2583263388780015
#>     Attrib V55    1.0669032115499577
#>     Attrib V56    0.1301175683273389
#>     Attrib V57    0.0549391755358047
#>     Attrib V58    0.14912590784140314
#>     Attrib V59    -0.517393027702842
#>     Attrib V6    -0.455257869553083
#>     Attrib V60    0.13529773372369364
#>     Attrib V7    0.11631186312588364
#>     Attrib V8    -0.3830026189052535
#>     Attrib V9    -0.5108250491205162
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.02087677862307405
#>     Attrib V1    0.014519246411578153
#>     Attrib V10    -0.0601419958630221
#>     Attrib V11    -0.023860211450028555
#>     Attrib V12    0.03180417722287364
#>     Attrib V13    -0.0048053338008278886
#>     Attrib V14    -0.07870135553542311
#>     Attrib V15    -0.028623386478662704
#>     Attrib V16    0.03841876242763382
#>     Attrib V17    0.062462994501844595
#>     Attrib V18    -0.008262260324711258
#>     Attrib V19    0.16763590713318727
#>     Attrib V2    -0.015314477888076215
#>     Attrib V20    0.04803385998504877
#>     Attrib V21    0.08953090568649928
#>     Attrib V22    -0.05917620199346826
#>     Attrib V23    -0.15871173490175344
#>     Attrib V24    0.08391280944682841
#>     Attrib V25    -0.09989483065080203
#>     Attrib V26    -0.24535757571564698
#>     Attrib V27    -0.2552446284694968
#>     Attrib V28    -0.22407864240541545
#>     Attrib V29    -0.2624762245386981
#>     Attrib V3    0.07582693498152866
#>     Attrib V30    -0.024577573059779916
#>     Attrib V31    -0.16548857622474084
#>     Attrib V32    0.16137683169384065
#>     Attrib V33    0.2317846720449877
#>     Attrib V34    0.08559991028652011
#>     Attrib V35    -0.04521225040000456
#>     Attrib V36    -0.29708408311386564
#>     Attrib V37    -0.13856599233397873
#>     Attrib V38    0.21088315716207454
#>     Attrib V39    0.15407964737854138
#>     Attrib V4    0.1848074343365093
#>     Attrib V40    -0.09225007815477823
#>     Attrib V41    0.05638296615687845
#>     Attrib V42    0.08616243772132526
#>     Attrib V43    -0.1306214445969856
#>     Attrib V44    -0.09327164938719827
#>     Attrib V45    0.02980482105109799
#>     Attrib V46    0.0814969082817667
#>     Attrib V47    -0.04632562085118537
#>     Attrib V48    -0.05368237728552829
#>     Attrib V49    0.10126543475273861
#>     Attrib V5    0.07692618866847983
#>     Attrib V50    -0.183567537717924
#>     Attrib V51    0.12176485501135383
#>     Attrib V52    0.027202398481841465
#>     Attrib V53    0.17067077159025262
#>     Attrib V54    0.1654036734552688
#>     Attrib V55    0.07972494242996506
#>     Attrib V56    0.11013630132741942
#>     Attrib V57    0.1259970812904362
#>     Attrib V58    0.18952098849587798
#>     Attrib V59    0.23319188509720967
#>     Attrib V6    -0.09888402309929169
#>     Attrib V60    0.08619621349821079
#>     Attrib V7    0.011072192219085147
#>     Attrib V8    0.0747026105469299
#>     Attrib V9    0.07803879993420125
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.12502114168280165
#>     Attrib V1    0.04884766234159463
#>     Attrib V10    0.03941681894737779
#>     Attrib V11    -0.03436993084043833
#>     Attrib V12    -0.0952175723699121
#>     Attrib V13    -0.08734559544082156
#>     Attrib V14    -0.018999082868094194
#>     Attrib V15    0.10418937228028645
#>     Attrib V16    0.0477409995602467
#>     Attrib V17    0.04879682393871012
#>     Attrib V18    0.009811172840745924
#>     Attrib V19    0.04239549295915259
#>     Attrib V2    0.12384709988565819
#>     Attrib V20    -0.011264612448392018
#>     Attrib V21    -0.042134065065255355
#>     Attrib V22    -0.009612984547329376
#>     Attrib V23    -0.08204965924796509
#>     Attrib V24    -0.04354529314599165
#>     Attrib V25    -0.11201172141551032
#>     Attrib V26    -0.12342450663398292
#>     Attrib V27    -0.09894145735747116
#>     Attrib V28    -0.07608931899310321
#>     Attrib V29    -0.06276452672812956
#>     Attrib V3    0.09312262717405041
#>     Attrib V30    0.09102942673243972
#>     Attrib V31    0.09216149809254691
#>     Attrib V32    0.04139382565618658
#>     Attrib V33    0.1542822599415199
#>     Attrib V34    0.05770508511898865
#>     Attrib V35    0.125504292023889
#>     Attrib V36    0.04870346460972633
#>     Attrib V37    0.05460900519175212
#>     Attrib V38    0.13584188232890992
#>     Attrib V39    0.06934088513169474
#>     Attrib V4    0.1064733843120654
#>     Attrib V40    -0.014922462434850951
#>     Attrib V41    0.02716584333512177
#>     Attrib V42    -0.008416404369849117
#>     Attrib V43    -0.019951146594212345
#>     Attrib V44    -0.0026158636625950734
#>     Attrib V45    0.03488208144867022
#>     Attrib V46    -0.0303427820843506
#>     Attrib V47    -0.03562766511841412
#>     Attrib V48    0.027911859528125735
#>     Attrib V49    -0.028878640027305405
#>     Attrib V5    0.07120062972502093
#>     Attrib V50    0.0197879545619045
#>     Attrib V51    0.05895525478164982
#>     Attrib V52    -0.00885918909745536
#>     Attrib V53    0.05690416451632089
#>     Attrib V54    0.02445274103512741
#>     Attrib V55    0.12233360644678386
#>     Attrib V56    0.11754637768967025
#>     Attrib V57    0.1434883576737084
#>     Attrib V58    0.047461521529138725
#>     Attrib V59    0.024514366607618767
#>     Attrib V6    0.023078932493251738
#>     Attrib V60    0.07294865936877354
#>     Attrib V7    -0.014553298810498747
#>     Attrib V8    0.11013349196092032
#>     Attrib V9    0.08404264755205296
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.23376086486982847
#>     Attrib V1    0.031422742793335345
#>     Attrib V10    -0.004302774943587065
#>     Attrib V11    -0.08953049325981745
#>     Attrib V12    -0.11832897373102291
#>     Attrib V13    -0.06450914815629678
#>     Attrib V14    0.022471554631070666
#>     Attrib V15    0.03774611702202289
#>     Attrib V16    0.06801838292232251
#>     Attrib V17    0.031149990269331757
#>     Attrib V18    0.08643840469375871
#>     Attrib V19    -0.062325466241005
#>     Attrib V2    0.08907674219080208
#>     Attrib V20    7.905729003210054E-4
#>     Attrib V21    -0.030488668849210393
#>     Attrib V22    -0.07287378884239938
#>     Attrib V23    -0.05231469999631688
#>     Attrib V24    -0.12041630150413417
#>     Attrib V25    -0.0531432288949695
#>     Attrib V26    -0.05175841829388978
#>     Attrib V27    -0.060566124347876456
#>     Attrib V28    -0.061167965564566315
#>     Attrib V29    -0.017704791088582958
#>     Attrib V3    0.15593833495033074
#>     Attrib V30    0.0073369442384186466
#>     Attrib V31    0.051453748342662704
#>     Attrib V32    0.032338557219992424
#>     Attrib V33    0.0700762651273692
#>     Attrib V34    0.10070760011464212
#>     Attrib V35    0.06488855113621947
#>     Attrib V36    0.1959895797884476
#>     Attrib V37    0.09736861091354432
#>     Attrib V38    0.01918449031463603
#>     Attrib V39    0.030713179660095055
#>     Attrib V4    0.04679360277551704
#>     Attrib V40    0.007566886698645144
#>     Attrib V41    -0.06208110550243279
#>     Attrib V42    -0.008484904192764976
#>     Attrib V43    -0.034905834093199084
#>     Attrib V44    0.014119027511191812
#>     Attrib V45    -0.058562101073832945
#>     Attrib V46    -0.05795611260859174
#>     Attrib V47    0.03932706950834276
#>     Attrib V48    0.003767176459683443
#>     Attrib V49    -0.014015348698512769
#>     Attrib V5    0.057146411625878586
#>     Attrib V50    0.0401729289895397
#>     Attrib V51    0.08294597057594673
#>     Attrib V52    0.006755737755617712
#>     Attrib V53    0.08327081948621545
#>     Attrib V54    -0.011331603900266184
#>     Attrib V55    0.11974660778007382
#>     Attrib V56    0.1278282784196332
#>     Attrib V57    0.05551579201570465
#>     Attrib V58    0.06473333731401001
#>     Attrib V59    0.04177650737794415
#>     Attrib V6    0.004224383657009082
#>     Attrib V60    0.10540112534956833
#>     Attrib V7    0.06114873818522067
#>     Attrib V8    0.07504678067137258
#>     Attrib V9    0.05482981066895103
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.4366820531698512
#>     Attrib V1    0.13283820363524299
#>     Attrib V10    -0.091464878513689
#>     Attrib V11    0.07326738931504755
#>     Attrib V12    0.347319641579359
#>     Attrib V13    0.0793132102025968
#>     Attrib V14    -0.10476943200997985
#>     Attrib V15    0.03752451272132951
#>     Attrib V16    -0.05881203990073886
#>     Attrib V17    0.015510470997882221
#>     Attrib V18    -0.26679292356480455
#>     Attrib V19    0.5082302302744586
#>     Attrib V2    0.04730299428054447
#>     Attrib V20    0.3708972123632051
#>     Attrib V21    0.6837088904731651
#>     Attrib V22    0.2916487854695991
#>     Attrib V23    0.024194714370055947
#>     Attrib V24    0.5631853626883061
#>     Attrib V25    -0.15560081168682843
#>     Attrib V26    -0.414461983963959
#>     Attrib V27    -0.3390051662272197
#>     Attrib V28    -0.1864752450685893
#>     Attrib V29    -0.35945243553556666
#>     Attrib V3    0.053740057366983236
#>     Attrib V30    0.18110556722234622
#>     Attrib V31    -0.5648958383694433
#>     Attrib V32    0.24168475901919945
#>     Attrib V33    0.4802293014531435
#>     Attrib V34    -0.22818142329373634
#>     Attrib V35    -0.39440175199062727
#>     Attrib V36    -1.202792499019974
#>     Attrib V37    -0.649782372661595
#>     Attrib V38    0.5458465598589596
#>     Attrib V39    0.3969386646750991
#>     Attrib V4    0.47805220096419515
#>     Attrib V40    -0.19371639236687563
#>     Attrib V41    0.4019334446306849
#>     Attrib V42    0.5072440674059183
#>     Attrib V43    -0.09652517493007662
#>     Attrib V44    0.07101179954387798
#>     Attrib V45    0.14128832207767628
#>     Attrib V46    0.36986709568801474
#>     Attrib V47    -0.18752696681669892
#>     Attrib V48    -0.39568047234744613
#>     Attrib V49    0.3953904874063985
#>     Attrib V5    0.2304788544591788
#>     Attrib V50    -1.044531659854416
#>     Attrib V51    0.14713491196616293
#>     Attrib V52    -0.07869707363400655
#>     Attrib V53    0.42034988291328873
#>     Attrib V54    0.41752185661817637
#>     Attrib V55    -0.3244355489685875
#>     Attrib V56    0.08047034046165662
#>     Attrib V57    -0.04413765007177913
#>     Attrib V58    0.3632373235888164
#>     Attrib V59    0.8013933445280145
#>     Attrib V6    -0.2957016112935648
#>     Attrib V60    0.16395594400330474
#>     Attrib V7    0.01658070640878675
#>     Attrib V8    0.3774356769062324
#>     Attrib V9    0.22373113633726904
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.30668722832791073
#>     Attrib V1    0.20143186301802307
#>     Attrib V10    -0.2139065953194854
#>     Attrib V11    -0.06583939401747978
#>     Attrib V12    0.21956519863287866
#>     Attrib V13    0.03889294053573122
#>     Attrib V14    0.016899984295000427
#>     Attrib V15    0.13044212222293458
#>     Attrib V16    0.021452056992166704
#>     Attrib V17    0.058358956495252204
#>     Attrib V18    -0.17695798038941948
#>     Attrib V19    0.34187662702428356
#>     Attrib V2    0.10590595633001158
#>     Attrib V20    0.32069107393738405
#>     Attrib V21    0.6124737301874935
#>     Attrib V22    0.20014147956836278
#>     Attrib V23    -0.08586366486926157
#>     Attrib V24    0.28561317463065433
#>     Attrib V25    -0.342876104856834
#>     Attrib V26    -0.5251435190245861
#>     Attrib V27    -0.3868540731450074
#>     Attrib V28    -0.4050460349544107
#>     Attrib V29    -0.41543723337774924
#>     Attrib V3    0.07676446922333141
#>     Attrib V30    0.01228564277807553
#>     Attrib V31    -0.667089398410865
#>     Attrib V32    -0.0903738486048068
#>     Attrib V33    0.16696852834077033
#>     Attrib V34    -0.3422553161273804
#>     Attrib V35    -0.4590830851343196
#>     Attrib V36    -0.8868951852328509
#>     Attrib V37    -0.3243687937957247
#>     Attrib V38    0.6294791139449785
#>     Attrib V39    0.37465278279852415
#>     Attrib V4    0.37157158563733966
#>     Attrib V40    -0.17996753560853115
#>     Attrib V41    0.19651686169160407
#>     Attrib V42    0.327132359746177
#>     Attrib V43    0.09276199483962544
#>     Attrib V44    0.2629072392287874
#>     Attrib V45    0.18312442018637257
#>     Attrib V46    0.24833090502876867
#>     Attrib V47    -0.20699307189995314
#>     Attrib V48    -0.32111838462072667
#>     Attrib V49    0.15340513324088206
#>     Attrib V5    0.22082382674195397
#>     Attrib V50    -0.7622516833916541
#>     Attrib V51    0.11367094951342195
#>     Attrib V52    -0.05810983545909685
#>     Attrib V53    0.40306480902846364
#>     Attrib V54    0.5717101770646195
#>     Attrib V55    -0.20926798419551873
#>     Attrib V56    0.19094115614413038
#>     Attrib V57    0.1375323295299796
#>     Attrib V58    0.31121404708215805
#>     Attrib V59    0.8141646981201848
#>     Attrib V6    -0.2689688404308016
#>     Attrib V60    0.21701892822187888
#>     Attrib V7    0.09565866979121913
#>     Attrib V8    0.13705160097709504
#>     Attrib V9    0.02313838282626341
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.44444126703260556
#>     Attrib V1    -0.1271163963086052
#>     Attrib V10    -0.6179306614735215
#>     Attrib V11    -0.716276055533711
#>     Attrib V12    -0.5847483708159431
#>     Attrib V13    -0.33398989090064407
#>     Attrib V14    0.40540003670319685
#>     Attrib V15    0.44806600644617667
#>     Attrib V16    0.5087949002937847
#>     Attrib V17    0.34808485229403424
#>     Attrib V18    0.44325775982653776
#>     Attrib V19    -0.7200188637177799
#>     Attrib V2    0.04673679322757255
#>     Attrib V20    -0.3434152129872328
#>     Attrib V21    -0.6482795853289651
#>     Attrib V22    -0.5795373532881414
#>     Attrib V23    -0.581498111566459
#>     Attrib V24    -1.0369793077872909
#>     Attrib V25    -0.24604016381400323
#>     Attrib V26    -0.42015358075525305
#>     Attrib V27    -0.5558090232842892
#>     Attrib V28    -0.93584927584294
#>     Attrib V29    -0.44059182714736844
#>     Attrib V3    -0.057943625875659016
#>     Attrib V30    -0.5159414641817378
#>     Attrib V31    0.5749181223830654
#>     Attrib V32    -0.09430756192445307
#>     Attrib V33    -0.1790869234792384
#>     Attrib V34    0.16309690226431747
#>     Attrib V35    -0.16544405440765453
#>     Attrib V36    0.8684602248915854
#>     Attrib V37    0.2559699354160846
#>     Attrib V38    -0.6579808590141887
#>     Attrib V39    -0.5486175874783268
#>     Attrib V4    -0.41578984319303125
#>     Attrib V40    0.32978350022578473
#>     Attrib V41    -0.835038601973002
#>     Attrib V42    -0.4077703201991396
#>     Attrib V43    0.31981199617083883
#>     Attrib V44    -0.2076025468962601
#>     Attrib V45    -0.3610383567643045
#>     Attrib V46    -0.9787801136702143
#>     Attrib V47    -0.5246100478972506
#>     Attrib V48    0.19302085615092268
#>     Attrib V49    -0.8528669662660241
#>     Attrib V5    -0.5908676565540911
#>     Attrib V50    1.0466155303919908
#>     Attrib V51    -0.7388657301760658
#>     Attrib V52    -0.23609807492140977
#>     Attrib V53    -0.19333561282109146
#>     Attrib V54    0.03672021258656689
#>     Attrib V55    0.6131217655512483
#>     Attrib V56    0.10447281774950314
#>     Attrib V57    0.47661186383587884
#>     Attrib V58    -0.1269346464525599
#>     Attrib V59    -0.40785976876449387
#>     Attrib V6    -0.2785772291981967
#>     Attrib V60    0.03435106026988068
#>     Attrib V7    0.2475025450889929
#>     Attrib V8    -0.4413807526940686
#>     Attrib V9    -0.6656451956313841
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.11196919422587702
#>     Attrib V1    0.12846131507586264
#>     Attrib V10    -0.17947129664475361
#>     Attrib V11    -0.04145510478331219
#>     Attrib V12    0.09282303654096623
#>     Attrib V13    -0.058147660583746964
#>     Attrib V14    -0.012737854662732537
#>     Attrib V15    0.023416731134070286
#>     Attrib V16    0.06760012825960433
#>     Attrib V17    0.054727523550944304
#>     Attrib V18    -0.10974493763156179
#>     Attrib V19    0.136469810891436
#>     Attrib V2    0.10470329366453734
#>     Attrib V20    0.13115324368420983
#>     Attrib V21    0.23448196852803835
#>     Attrib V22    -0.06140933352049871
#>     Attrib V23    -0.2686909648614993
#>     Attrib V24    0.09451062295087963
#>     Attrib V25    -0.2710356489720245
#>     Attrib V26    -0.47154836436014225
#>     Attrib V27    -0.460399844369098
#>     Attrib V28    -0.5297944279312434
#>     Attrib V29    -0.46606796881299184
#>     Attrib V3    0.06098217159655457
#>     Attrib V30    -0.10404120641633763
#>     Attrib V31    -0.3116743069701188
#>     Attrib V32    0.06988945529780546
#>     Attrib V33    0.19700476897981647
#>     Attrib V34    -0.05589026404924602
#>     Attrib V35    -0.1787758296398236
#>     Attrib V36    -0.528756529403755
#>     Attrib V37    -0.26394181693960034
#>     Attrib V38    0.314248148351737
#>     Attrib V39    0.21525590464912792
#>     Attrib V4    0.25593313194850464
#>     Attrib V40    -0.10075684525847002
#>     Attrib V41    -0.017440130945979498
#>     Attrib V42    0.10258393795764392
#>     Attrib V43    0.0013967516522241403
#>     Attrib V44    -2.1166950932255158E-4
#>     Attrib V45    0.01175033128885917
#>     Attrib V46    0.12643423322761263
#>     Attrib V47    -0.14766464021361608
#>     Attrib V48    -0.06842849490285172
#>     Attrib V49    0.14166339892409882
#>     Attrib V5    0.1051755896961276
#>     Attrib V50    -0.3774944032744729
#>     Attrib V51    0.020215106365663135
#>     Attrib V52    -0.04451043687728053
#>     Attrib V53    0.21070124233120224
#>     Attrib V54    0.4356316802965424
#>     Attrib V55    0.06654631598513885
#>     Attrib V56    0.18887082930715746
#>     Attrib V57    0.2085644314209506
#>     Attrib V58    0.26112093140648146
#>     Attrib V59    0.503969969976347
#>     Attrib V6    -0.20373475837258725
#>     Attrib V60    0.16501075057749037
#>     Attrib V7    0.0348519406180688
#>     Attrib V8    0.01576223605737178
#>     Attrib V9    -0.03060465230830088
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.2842217473034455
#>     Attrib V1    0.3225061974627094
#>     Attrib V10    -0.5005961127191617
#>     Attrib V11    -0.19219771562038182
#>     Attrib V12    0.21148490041282555
#>     Attrib V13    0.011392719842185683
#>     Attrib V14    0.08912716906568144
#>     Attrib V15    0.26687570509829445
#>     Attrib V16    0.06677042038401945
#>     Attrib V17    0.10905207380556123
#>     Attrib V18    -0.2542220621701595
#>     Attrib V19    0.23031261823854138
#>     Attrib V2    0.22309127777857427
#>     Attrib V20    0.33308649123952755
#>     Attrib V21    0.6380974512942656
#>     Attrib V22    0.19031310403189838
#>     Attrib V23    -0.16424620316738048
#>     Attrib V24    0.19091330191087336
#>     Attrib V25    -0.4995309522563664
#>     Attrib V26    -0.8492241632926493
#>     Attrib V27    -0.7912242188477928
#>     Attrib V28    -0.8585865758482141
#>     Attrib V29    -0.8407308364767728
#>     Attrib V3    0.25849169670433936
#>     Attrib V30    -0.24389896542579279
#>     Attrib V31    -0.9164448658396943
#>     Attrib V32    -0.16967438977929045
#>     Attrib V33    0.24217081426693848
#>     Attrib V34    -0.34914881155398947
#>     Attrib V35    -0.6072317411732684
#>     Attrib V36    -1.0764250880450073
#>     Attrib V37    -0.3321017782740955
#>     Attrib V38    0.7493175715069069
#>     Attrib V39    0.49474780621158215
#>     Attrib V4    0.48035157670718975
#>     Attrib V40    -0.18838802330928905
#>     Attrib V41    0.10715887330903569
#>     Attrib V42    0.4706376758418763
#>     Attrib V43    0.1871386833460079
#>     Attrib V44    0.1236361544608427
#>     Attrib V45    0.12739887057929897
#>     Attrib V46    0.18669992039178637
#>     Attrib V47    -0.23211330615598066
#>     Attrib V48    -0.42125087671403905
#>     Attrib V49    0.06761817731189088
#>     Attrib V5    0.15157884838166868
#>     Attrib V50    -0.7147219049112106
#>     Attrib V51    -0.04750289559173027
#>     Attrib V52    -0.08918806110868731
#>     Attrib V53    0.5879661215043478
#>     Attrib V54    0.8261103668302541
#>     Attrib V55    -0.15103858270404022
#>     Attrib V56    0.34569621399572886
#>     Attrib V57    0.33869985888877935
#>     Attrib V58    0.35746645223975865
#>     Attrib V59    1.0637257228918169
#>     Attrib V6    -0.3903856923684387
#>     Attrib V60    0.3082291543611288
#>     Attrib V7    0.11150184913201466
#>     Attrib V8    0.07759628466407502
#>     Attrib V9    -0.14390473426082867
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.31407941896289077
#>     Attrib V1    -0.05895473103560274
#>     Attrib V10    -0.2489594070122574
#>     Attrib V11    -0.3865696849812154
#>     Attrib V12    -0.362809846353374
#>     Attrib V13    -0.1988734081623411
#>     Attrib V14    0.2509212740628454
#>     Attrib V15    0.24613876449747973
#>     Attrib V16    0.2260625338084535
#>     Attrib V17    0.22757385393480814
#>     Attrib V18    0.27870025377685437
#>     Attrib V19    -0.28785389662068483
#>     Attrib V2    0.04449215948442483
#>     Attrib V20    -0.14871118801463554
#>     Attrib V21    -0.38906282392301206
#>     Attrib V22    -0.29110345755901185
#>     Attrib V23    -0.15295967491212753
#>     Attrib V24    -0.4949979812419547
#>     Attrib V25    0.04008039160462897
#>     Attrib V26    0.09034283679760065
#>     Attrib V27    -0.03690992719952151
#>     Attrib V28    -0.11701951517617538
#>     Attrib V29    0.06803439011124478
#>     Attrib V3    0.029364573450006797
#>     Attrib V30    -0.10375849174552003
#>     Attrib V31    0.36309866471056
#>     Attrib V32    -0.15216013853801416
#>     Attrib V33    -0.24925495933062147
#>     Attrib V34    0.11401452340222555
#>     Attrib V35    0.07153565493563159
#>     Attrib V36    0.6622205487973092
#>     Attrib V37    0.1554722266958186
#>     Attrib V38    -0.4240348810627972
#>     Attrib V39    -0.3481824595333027
#>     Attrib V4    -0.20776625782933397
#>     Attrib V40    0.2236090988596809
#>     Attrib V41    -0.35381085566263365
#>     Attrib V42    -0.21463341355864254
#>     Attrib V43    0.17250136278034442
#>     Attrib V44    -0.09888593858443842
#>     Attrib V45    -0.1896957265592145
#>     Attrib V46    -0.4428309237115401
#>     Attrib V47    -0.07738553612733054
#>     Attrib V48    0.172332617250864
#>     Attrib V49    -0.368332547440079
#>     Attrib V5    -0.2620267672251941
#>     Attrib V50    0.6992496377600393
#>     Attrib V51    -0.28319922549727794
#>     Attrib V52    0.008737375193460096
#>     Attrib V53    -0.04936932727992918
#>     Attrib V54    -0.10742021126207367
#>     Attrib V55    0.2789088510805869
#>     Attrib V56    0.1332198867907945
#>     Attrib V57    0.19562654851409872
#>     Attrib V58    -0.12919831641303264
#>     Attrib V59    -0.27256522322849697
#>     Attrib V6    0.03884863941900236
#>     Attrib V60    0.030088081761559273
#>     Attrib V7    0.042729408526314044
#>     Attrib V8    -0.21802119016624266
#>     Attrib V9    -0.23185006250118823
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.0619033146531125
#>     Attrib V1    0.021111172576512467
#>     Attrib V10    0.47192041467078066
#>     Attrib V11    1.060879714917324
#>     Attrib V12    0.8949166305451589
#>     Attrib V13    0.16410006692262694
#>     Attrib V14    -0.33127227929089637
#>     Attrib V15    -0.24905792318264267
#>     Attrib V16    -0.4554297882109385
#>     Attrib V17    -0.4927714610573994
#>     Attrib V18    -0.6412835389687325
#>     Attrib V19    -0.5247530966473224
#>     Attrib V2    -0.01363102057670364
#>     Attrib V20    -0.8394340468057501
#>     Attrib V21    -0.32821233232869906
#>     Attrib V22    -0.5564533682584235
#>     Attrib V23    -1.0034304999291004
#>     Attrib V24    -0.42061543017018377
#>     Attrib V25    -0.6902445942406389
#>     Attrib V26    0.4243827504630288
#>     Attrib V27    0.9917102051350086
#>     Attrib V28    0.9341131976173377
#>     Attrib V29    0.3222594608645986
#>     Attrib V3    -0.2891236140964165
#>     Attrib V30    0.1896851199456588
#>     Attrib V31    -0.22749990567949863
#>     Attrib V32    -0.3215502026820736
#>     Attrib V33    -0.6060930105316649
#>     Attrib V34    -0.417892742661218
#>     Attrib V35    0.20088018956180814
#>     Attrib V36    -0.8612180242102515
#>     Attrib V37    -0.22155569600888841
#>     Attrib V38    -0.07681181815820678
#>     Attrib V39    0.12516004366389358
#>     Attrib V4    0.07872724037698542
#>     Attrib V40    -0.278816265475171
#>     Attrib V41    0.43398774401816587
#>     Attrib V42    -0.14650810432186362
#>     Attrib V43    0.02981017682454452
#>     Attrib V44    0.5976783018076762
#>     Attrib V45    0.7104359412164212
#>     Attrib V46    1.1839707571503066
#>     Attrib V47    0.6907649208697229
#>     Attrib V48    0.40979317725841924
#>     Attrib V49    0.8222780497785296
#>     Attrib V5    0.42844744412806146
#>     Attrib V50    -0.5952791188934231
#>     Attrib V51    0.46197395578890743
#>     Attrib V52    0.4523573802990834
#>     Attrib V53    0.1957489144417229
#>     Attrib V54    0.16547535332035024
#>     Attrib V55    0.11623349120008589
#>     Attrib V56    -0.38577574707555656
#>     Attrib V57    0.2595633890623172
#>     Attrib V58    0.29631298618964236
#>     Attrib V59    0.2997195091342762
#>     Attrib V6    0.5683185335182034
#>     Attrib V60    -0.03197970617128557
#>     Attrib V7    0.07880496889937076
#>     Attrib V8    0.019231516000768514
#>     Attrib V9    0.07576190202269187
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2983576434660603
#>     Attrib V1    -0.027126990232649563
#>     Attrib V10    -0.157661123470098
#>     Attrib V11    -0.3113294617235116
#>     Attrib V12    -0.26697452796051546
#>     Attrib V13    -0.14976891746784388
#>     Attrib V14    0.21826887189639912
#>     Attrib V15    0.1355223838906778
#>     Attrib V16    0.16810224265298926
#>     Attrib V17    0.16581144490123043
#>     Attrib V18    0.17894803162383935
#>     Attrib V19    -0.11790730569892384
#>     Attrib V2    0.07115466916995873
#>     Attrib V20    -0.059867524923331764
#>     Attrib V21    -0.2267265236962346
#>     Attrib V22    -0.15200469580609555
#>     Attrib V23    -0.09544166312365036
#>     Attrib V24    -0.3223854261960525
#>     Attrib V25    0.050525227579734544
#>     Attrib V26    0.0377281695368565
#>     Attrib V27    0.03386740154452802
#>     Attrib V28    -0.03696914416679094
#>     Attrib V29    0.10583225534639454
#>     Attrib V3    0.02339409604777532
#>     Attrib V30    -0.03952764997539623
#>     Attrib V31    0.24453308897796816
#>     Attrib V32    -0.16237143561233697
#>     Attrib V33    -0.12972284009610974
#>     Attrib V34    0.049761037987044204
#>     Attrib V35    0.09947002790501355
#>     Attrib V36    0.4969123193949414
#>     Attrib V37    0.19822653667826387
#>     Attrib V38    -0.3063863812603238
#>     Attrib V39    -0.23252591509546985
#>     Attrib V4    -0.11780759612387517
#>     Attrib V40    0.10209428885624994
#>     Attrib V41    -0.2970247664170434
#>     Attrib V42    -0.13542783389764074
#>     Attrib V43    0.05429372790932546
#>     Attrib V44    -0.06880772621622315
#>     Attrib V45    -0.13266960241889045
#>     Attrib V46    -0.3653400428739627
#>     Attrib V47    -0.11271590551033892
#>     Attrib V48    0.12702838729518062
#>     Attrib V49    -0.264917917991311
#>     Attrib V5    -0.17225120711531264
#>     Attrib V50    0.45794272138919767
#>     Attrib V51    -0.22667472498743552
#>     Attrib V52    -0.05162540902070568
#>     Attrib V53    -0.01142153340187002
#>     Attrib V54    -0.08074572797588023
#>     Attrib V55    0.16334279310770253
#>     Attrib V56    0.11329963534253025
#>     Attrib V57    0.12950845790903479
#>     Attrib V58    -0.0969284760862599
#>     Attrib V59    -0.17847985633594313
#>     Attrib V6    0.06444423826097065
#>     Attrib V60    0.09761200214757391
#>     Attrib V7    0.03278147410696606
#>     Attrib V8    -0.13631669590256384
#>     Attrib V9    -0.1878347141223121
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.641194423853642
#>     Attrib V1    0.14065020091129585
#>     Attrib V10    0.08632148822159844
#>     Attrib V11    0.31042220863236847
#>     Attrib V12    0.35932727731496156
#>     Attrib V13    0.03458076127291017
#>     Attrib V14    -0.259447756957185
#>     Attrib V15    -0.1049301244599132
#>     Attrib V16    -0.2088726769901688
#>     Attrib V17    -0.18951255507886391
#>     Attrib V18    -0.2791000369747234
#>     Attrib V19    0.18763466650856436
#>     Attrib V2    -0.03549399502271324
#>     Attrib V20    -0.06217859580474226
#>     Attrib V21    0.3514749819106679
#>     Attrib V22    0.012304622033718836
#>     Attrib V23    -0.2777742512535004
#>     Attrib V24    0.329884084420965
#>     Attrib V25    -0.16422770330731595
#>     Attrib V26    0.01809109621814617
#>     Attrib V27    0.15698791090052508
#>     Attrib V28    0.2531131803451382
#>     Attrib V29    0.03510409453523177
#>     Attrib V3    -0.12783556695266568
#>     Attrib V30    0.1986270789314728
#>     Attrib V31    -0.5042614206047125
#>     Attrib V32    -0.07290387851719393
#>     Attrib V33    -0.038467387389263905
#>     Attrib V34    -0.3318675428938138
#>     Attrib V35    -0.17797069807927698
#>     Attrib V36    -0.9169412818665459
#>     Attrib V37    -0.35962842284325197
#>     Attrib V38    0.40893540743097245
#>     Attrib V39    0.352591814638766
#>     Attrib V4    0.23023404148107834
#>     Attrib V40    -0.35778668451477313
#>     Attrib V41    0.23803992124815262
#>     Attrib V42    0.15899465759807765
#>     Attrib V43    -0.08026958090580066
#>     Attrib V44    0.3234096004190402
#>     Attrib V45    0.3135055721002701
#>     Attrib V46    0.5312330160951816
#>     Attrib V47    0.11305151217685207
#>     Attrib V48    -0.15193945468231768
#>     Attrib V49    0.31383994025826445
#>     Attrib V5    0.19731178921939277
#>     Attrib V50    -0.7451768360895605
#>     Attrib V51    0.2283618304797921
#>     Attrib V52    0.06987854291687423
#>     Attrib V53    0.37662709281494966
#>     Attrib V54    0.3449104771389228
#>     Attrib V55    -0.24582306130054235
#>     Attrib V56    -0.1388005544471063
#>     Attrib V57    0.012039813398472026
#>     Attrib V58    0.18679860597307296
#>     Attrib V59    0.5337834054673497
#>     Attrib V6    -0.03329447866675701
#>     Attrib V60    0.022167302307788815
#>     Attrib V7    -0.05397945814044177
#>     Attrib V8    0.12986006396127267
#>     Attrib V9    0.0829376546541133
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.4192175555168884
#>     Attrib V1    -0.044917626293864296
#>     Attrib V10    -1.1546553368313377
#>     Attrib V11    -0.9931854261914667
#>     Attrib V12    -0.5687111313357263
#>     Attrib V13    -0.23650959456236462
#>     Attrib V14    0.7167022621429759
#>     Attrib V15    0.7431553462561469
#>     Attrib V16    0.6429745183139155
#>     Attrib V17    0.3842327389625253
#>     Attrib V18    0.4291353914006163
#>     Attrib V19    -0.9533643366639509
#>     Attrib V2    0.17309249537873891
#>     Attrib V20    -0.345009818347595
#>     Attrib V21    -0.6002455443929733
#>     Attrib V22    -0.5685634977083468
#>     Attrib V23    -0.7968842502833046
#>     Attrib V24    -1.1712313777529286
#>     Attrib V25    -0.4235316583174636
#>     Attrib V26    -0.8343917565200822
#>     Attrib V27    -0.9377249309599995
#>     Attrib V28    -1.6409490113925218
#>     Attrib V29    -0.9108563042765349
#>     Attrib V3    0.07890975027349248
#>     Attrib V30    -0.7883652194898626
#>     Attrib V31    0.3655234979854434
#>     Attrib V32    -0.08041511228794802
#>     Attrib V33    -0.10207736119228528
#>     Attrib V34    0.07327270112653472
#>     Attrib V35    -0.5390701404837697
#>     Attrib V36    0.795159653194986
#>     Attrib V37    0.2390692574955491
#>     Attrib V38    -0.40219242674534617
#>     Attrib V39    -0.550413268598064
#>     Attrib V4    -0.47053669080651206
#>     Attrib V40    0.19607413409038701
#>     Attrib V41    -1.2604790146048446
#>     Attrib V42    -0.2736334528140471
#>     Attrib V43    0.6255682884993838
#>     Attrib V44    -0.2274630527817195
#>     Attrib V45    -0.5255599432030533
#>     Attrib V46    -1.3747088284236384
#>     Attrib V47    -0.9166833544577739
#>     Attrib V48    -0.033575918505546844
#>     Attrib V49    -1.1934455031803572
#>     Attrib V5    -0.8984021402270247
#>     Attrib V50    0.9315653791694993
#>     Attrib V51    -1.2105215893843058
#>     Attrib V52    -0.5325026538665137
#>     Attrib V53    -0.15155983180602553
#>     Attrib V54    0.4255002394377073
#>     Attrib V55    0.5744214327443904
#>     Attrib V56    0.3132783210448881
#>     Attrib V57    0.6250732146618355
#>     Attrib V58    -0.16145910070653785
#>     Attrib V59    -0.06522398094837416
#>     Attrib V6    -0.6361270520575246
#>     Attrib V60    0.01736761378044487
#>     Attrib V7    0.09752035929574385
#>     Attrib V8    -0.6254845001882958
#>     Attrib V9    -1.0825427481678296
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.34714397926061114
#>     Attrib V1    0.06080383300667013
#>     Attrib V10    -0.07985336473299842
#>     Attrib V11    0.17198263494926047
#>     Attrib V12    0.26593376145148406
#>     Attrib V13    -0.02061254237070473
#>     Attrib V14    -0.11908595851990032
#>     Attrib V15    -0.056343195792200984
#>     Attrib V16    -0.08735648952928869
#>     Attrib V17    -0.011638039360242028
#>     Attrib V18    -0.20078946208544468
#>     Attrib V19    0.32229272921533947
#>     Attrib V2    -0.007060855397602559
#>     Attrib V20    0.2484280604983217
#>     Attrib V21    0.48494785350563124
#>     Attrib V22    0.14959047186462338
#>     Attrib V23    -0.12884552679998462
#>     Attrib V24    0.40741757968460535
#>     Attrib V25    -0.07509213098352097
#>     Attrib V26    -0.3281109687777412
#>     Attrib V27    -0.3011713767548386
#>     Attrib V28    -0.2424543710893451
#>     Attrib V29    -0.3077066029229537
#>     Attrib V3    0.055692802115266046
#>     Attrib V30    0.09265287194778676
#>     Attrib V31    -0.3820006739221426
#>     Attrib V32    0.25402320025458075
#>     Attrib V33    0.3742402035799036
#>     Attrib V34    -0.10373083971950592
#>     Attrib V35    -0.24386062389098329
#>     Attrib V36    -0.9278439269962672
#>     Attrib V37    -0.4834432353564605
#>     Attrib V38    0.40925631125166645
#>     Attrib V39    0.35787583837990306
#>     Attrib V4    0.2854981948263692
#>     Attrib V40    -0.17334061769463774
#>     Attrib V41    0.2733651329282922
#>     Attrib V42    0.21758807593594792
#>     Attrib V43    -0.13850545674097972
#>     Attrib V44    -0.054097622442009434
#>     Attrib V45    0.10854960993167229
#>     Attrib V46    0.2786769690417419
#>     Attrib V47    -0.03391769147988066
#>     Attrib V48    -0.1838888226536395
#>     Attrib V49    0.3181261108357611
#>     Attrib V5    0.1371578630215371
#>     Attrib V50    -0.7103897934031308
#>     Attrib V51    0.1872301105132761
#>     Attrib V52    -0.02171745618297418
#>     Attrib V53    0.24730860190783885
#>     Attrib V54    0.3100277695684658
#>     Attrib V55    -0.1288320283799269
#>     Attrib V56    0.09686910538271987
#>     Attrib V57    0.020447834501095188
#>     Attrib V58    0.1900044400085923
#>     Attrib V59    0.5704514395632997
#>     Attrib V6    -0.17867373482651486
#>     Attrib V60    0.09610941678512881
#>     Attrib V7    0.006595537607882162
#>     Attrib V8    0.268776893642196
#>     Attrib V9    0.14413741050799952
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.2163727146993701
#>     Attrib V1    0.012928803526841183
#>     Attrib V10    -0.02234472183043754
#>     Attrib V11    -0.16972125312940176
#>     Attrib V12    -0.1705331765074683
#>     Attrib V13    -0.057459536646359465
#>     Attrib V14    0.11783601402944163
#>     Attrib V15    0.16010916080152846
#>     Attrib V16    0.18075626024571392
#>     Attrib V17    0.20859412675659386
#>     Attrib V18    0.17262202115036746
#>     Attrib V19    -0.0998951307918557
#>     Attrib V2    0.08263227659436462
#>     Attrib V20    -0.057936624075146506
#>     Attrib V21    -0.11631321539261721
#>     Attrib V22    -0.08374258452977165
#>     Attrib V23    -0.06845749078435978
#>     Attrib V24    -0.24081261434922718
#>     Attrib V25    0.03763718562959722
#>     Attrib V26    0.054604827855885794
#>     Attrib V27    -0.027037082087490668
#>     Attrib V28    -0.036498523477628116
#>     Attrib V29    0.023005335607554744
#>     Attrib V3    0.053675633548013656
#>     Attrib V30    0.04665659788622532
#>     Attrib V31    0.23539544023929013
#>     Attrib V32    -0.08975976693394984
#>     Attrib V33    -0.09796510052654553
#>     Attrib V34    0.029869781557755232
#>     Attrib V35    0.08663598220119512
#>     Attrib V36    0.3034931990346135
#>     Attrib V37    0.1858685366269349
#>     Attrib V38    -0.1830161551341269
#>     Attrib V39    -0.09918365562251533
#>     Attrib V4    -0.024639535429969626
#>     Attrib V40    0.07678572374396221
#>     Attrib V41    -0.165549957035745
#>     Attrib V42    -0.061264126980208895
#>     Attrib V43    -0.04684560154790178
#>     Attrib V44    -0.11585532437379206
#>     Attrib V45    -0.09119011451370124
#>     Attrib V46    -0.21462980049441566
#>     Attrib V47    -0.07348038183925623
#>     Attrib V48    0.05873582495113923
#>     Attrib V49    -0.19369641381242506
#>     Attrib V5    -0.08206224281334167
#>     Attrib V50    0.2237770158156395
#>     Attrib V51    -0.11878552684776948
#>     Attrib V52    -0.03114122807872315
#>     Attrib V53    0.015637782906709696
#>     Attrib V54    -0.04746290190152668
#>     Attrib V55    0.10037059045908046
#>     Attrib V56    0.12945773124430612
#>     Attrib V57    0.059810454611307975
#>     Attrib V58    -0.019381904315799982
#>     Attrib V59    -0.08333332564832352
#>     Attrib V6    0.05241136072535411
#>     Attrib V60    0.06700630505665742
#>     Attrib V7    0.009731757377132657
#>     Attrib V8    -0.07439758706826748
#>     Attrib V9    -0.07391260996088973
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.11867653583253318
#>     Attrib V1    0.14561682400847148
#>     Attrib V10    -0.2693929022401151
#>     Attrib V11    -0.042871417160871936
#>     Attrib V12    0.08366538328825311
#>     Attrib V13    -0.008322646025431396
#>     Attrib V14    -0.013383762511049713
#>     Attrib V15    0.06058060276971452
#>     Attrib V16    0.03222539343009743
#>     Attrib V17    0.10639331068071035
#>     Attrib V18    -0.10792745524942597
#>     Attrib V19    0.3146306819380988
#>     Attrib V2    0.14227786224579572
#>     Attrib V20    0.3201830789715225
#>     Attrib V21    0.3659344235390675
#>     Attrib V22    0.09807746644789182
#>     Attrib V23    -0.07298924945950758
#>     Attrib V24    0.2858839919936249
#>     Attrib V25    -0.24060035759127518
#>     Attrib V26    -0.5365299634111694
#>     Attrib V27    -0.6549540870386495
#>     Attrib V28    -0.7316333590576269
#>     Attrib V29    -0.7145463453260963
#>     Attrib V3    0.10605938455678883
#>     Attrib V30    -0.11212664127210449
#>     Attrib V31    -0.41760300329220146
#>     Attrib V32    0.2067853066700317
#>     Attrib V33    0.5541381304748798
#>     Attrib V34    0.11067351332795038
#>     Attrib V35    -0.19812277672658565
#>     Attrib V36    -0.7135472735406637
#>     Attrib V37    -0.3634074032134437
#>     Attrib V38    0.5171462406612953
#>     Attrib V39    0.3116277107153389
#>     Attrib V4    0.3578610274408854
#>     Attrib V40    -0.08754853056904971
#>     Attrib V41    0.12613750471236396
#>     Attrib V42    0.2558436565397399
#>     Attrib V43    -0.07850289103640651
#>     Attrib V44    -0.0785461153400275
#>     Attrib V45    -0.04742370441860825
#>     Attrib V46    0.0444875175938822
#>     Attrib V47    -0.2311323871778574
#>     Attrib V48    -0.1876413756681943
#>     Attrib V49    0.1888961091910874
#>     Attrib V5    0.08169558373394169
#>     Attrib V50    -0.5640223655579271
#>     Attrib V51    0.03901647182602698
#>     Attrib V52    -0.08709113807335847
#>     Attrib V53    0.3036760498380282
#>     Attrib V54    0.5272938880798642
#>     Attrib V55    0.02152749576274827
#>     Attrib V56    0.1989009517987506
#>     Attrib V57    0.1642215128842555
#>     Attrib V58    0.22887504272934897
#>     Attrib V59    0.6970679203352053
#>     Attrib V6    -0.2855685204577817
#>     Attrib V60    0.19262130142564673
#>     Attrib V7    0.04031896496653166
#>     Attrib V8    0.1907363422983896
#>     Attrib V9    0.0584170886559723
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.10662853215782113
#>     Attrib V1    0.06259210347910873
#>     Attrib V10    -0.05153769884132198
#>     Attrib V11    -0.008032745492120179
#>     Attrib V12    -0.011366650772586213
#>     Attrib V13    -0.06431382298450203
#>     Attrib V14    0.02325297484544235
#>     Attrib V15    0.02900479677873445
#>     Attrib V16    0.03245331242520816
#>     Attrib V17    -0.0052731179058277105
#>     Attrib V18    0.03187659709352205
#>     Attrib V19    0.019732991032147634
#>     Attrib V2    0.038863577910916644
#>     Attrib V20    0.03422702464414942
#>     Attrib V21    0.0445715659985376
#>     Attrib V22    -0.06546552374092146
#>     Attrib V23    -0.06064733767954543
#>     Attrib V24    -0.030802892137570127
#>     Attrib V25    -0.14543314176633043
#>     Attrib V26    -0.14345220208607878
#>     Attrib V27    -0.12327921702942886
#>     Attrib V28    -0.06946231248123862
#>     Attrib V29    -0.08834116480466778
#>     Attrib V3    0.11602003976486283
#>     Attrib V30    0.08898462023129837
#>     Attrib V31    -0.05222667532735344
#>     Attrib V32    0.07177843421766729
#>     Attrib V33    0.16839858430562735
#>     Attrib V34    0.07920901813674482
#>     Attrib V35    0.06361619967378009
#>     Attrib V36    -0.006238232138590088
#>     Attrib V37    0.0046906130547635354
#>     Attrib V38    0.10108447335072895
#>     Attrib V39    0.09592420333443882
#>     Attrib V4    0.12412514402580953
#>     Attrib V40    -0.04631709518969706
#>     Attrib V41    -0.01629141673465207
#>     Attrib V42    0.036393462940586395
#>     Attrib V43    -0.11098930440674205
#>     Attrib V44    0.00508846606927383
#>     Attrib V45    0.06684632087442578
#>     Attrib V46    0.05297630309926814
#>     Attrib V47    -3.7432138858071513E-4
#>     Attrib V48    -0.0376328967782327
#>     Attrib V49    0.1035652594232118
#>     Attrib V5    0.0955370449388038
#>     Attrib V50    -0.09487565259480754
#>     Attrib V51    0.0848161656550028
#>     Attrib V52    0.051707530274343036
#>     Attrib V53    0.10664775272491674
#>     Attrib V54    0.05671805203868087
#>     Attrib V55    0.06195738129814214
#>     Attrib V56    0.09481809461950139
#>     Attrib V57    0.10125847678322644
#>     Attrib V58    0.17085399318064745
#>     Attrib V59    0.12477652555533647
#>     Attrib V6    -0.0042747816453988525
#>     Attrib V60    0.0639762878692025
#>     Attrib V7    0.02142287822338969
#>     Attrib V8    0.12488472309473815
#>     Attrib V9    0.10619380701205915
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
