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
#>     Threshold    -0.7204550328452595
#>     Node 2    1.7209000663433138
#>     Node 3    1.6205497226254155
#>     Node 4    0.832383376267832
#>     Node 5    -2.085855102748122
#>     Node 6    1.5122360449252255
#>     Node 7    2.920450047830635
#>     Node 8    1.4876629981334994
#>     Node 9    2.98685453183653
#>     Node 10    -2.1509612636788407
#>     Node 11    1.21425007645357
#>     Node 12    1.8628942785057965
#>     Node 13    1.1015715047663377
#>     Node 14    1.6491385119986375
#>     Node 15    -2.6825448543958563
#>     Node 16    0.39780558424009876
#>     Node 17    0.8706713667987158
#>     Node 18    0.19320883298407693
#>     Node 19    2.490886457451415
#>     Node 20    1.5149718701172028
#>     Node 21    -2.4774171161836276
#>     Node 22    1.5650968111357113
#>     Node 23    1.4439564923414665
#>     Node 24    -0.4274531772799286
#>     Node 25    3.7007267243157984
#>     Node 26    0.32004009458212984
#>     Node 27    1.9153527009626417
#>     Node 28    -2.7898909701733503
#>     Node 29    0.9664917575244902
#>     Node 30    0.813095379739459
#>     Node 31    1.857852572959682
#>     Node 32    0.9995633929497565
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7540320479666656
#>     Node 2    -1.7881689169583428
#>     Node 3    -1.6163217640217946
#>     Node 4    -0.7945835563715609
#>     Node 5    2.1023737460496834
#>     Node 6    -1.4967556022059432
#>     Node 7    -2.9089231852596527
#>     Node 8    -1.5108557278263053
#>     Node 9    -2.982090951755026
#>     Node 10    2.092555347623625
#>     Node 11    -1.185798598002607
#>     Node 12    -1.9378391482030568
#>     Node 13    -1.0533373663600674
#>     Node 14    -1.5911659463537973
#>     Node 15    2.6724698469279353
#>     Node 16    -0.4096256093422104
#>     Node 17    -0.8393231953707582
#>     Node 18    -0.14394635874475248
#>     Node 19    -2.474591903336779
#>     Node 20    -1.5123601689291881
#>     Node 21    2.534589246718834
#>     Node 22    -1.6214463561350045
#>     Node 23    -1.494587360401518
#>     Node 24    0.4216862042884444
#>     Node 25    -3.6975106587396773
#>     Node 26    -0.3969945892906477
#>     Node 27    -1.9485376947678839
#>     Node 28    2.7477419682645827
#>     Node 29    -1.0053941078555209
#>     Node 30    -0.7401370199520045
#>     Node 31    -1.8016614837837253
#>     Node 32    -1.0216482104587725
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.5464638483120511
#>     Attrib V1    0.44347034001305513
#>     Attrib V10    0.38237930083766086
#>     Attrib V11    0.4965724554720125
#>     Attrib V12    0.25028608067933183
#>     Attrib V13    -0.3466399786119726
#>     Attrib V14    -0.29187443846619565
#>     Attrib V15    0.127449975988622
#>     Attrib V16    -0.12976436582408457
#>     Attrib V17    0.04556879070894325
#>     Attrib V18    -0.19038779257828953
#>     Attrib V19    0.08662037108931332
#>     Attrib V2    0.10237917028446389
#>     Attrib V20    0.6476492668685876
#>     Attrib V21    0.25192321930911926
#>     Attrib V22    0.3459442193762924
#>     Attrib V23    0.619272778868784
#>     Attrib V24    0.5338459630170317
#>     Attrib V25    -0.24275227555296952
#>     Attrib V26    -0.6430707426226779
#>     Attrib V27    -0.5538042875031608
#>     Attrib V28    0.2616140841755254
#>     Attrib V29    -0.0025748757303273614
#>     Attrib V3    -0.029406372599809282
#>     Attrib V30    0.2651251253682181
#>     Attrib V31    -0.6450407093413213
#>     Attrib V32    0.057643282478606436
#>     Attrib V33    0.3746391479212795
#>     Attrib V34    -0.06720786188740974
#>     Attrib V35    -0.3177987485079998
#>     Attrib V36    -0.9017154458254308
#>     Attrib V37    -0.6031841817679539
#>     Attrib V38    0.3153102772053643
#>     Attrib V39    0.5011895147251703
#>     Attrib V4    0.520517849078099
#>     Attrib V40    -0.1473256986387709
#>     Attrib V41    -0.11035246680904635
#>     Attrib V42    0.19195264310690416
#>     Attrib V43    0.3986317386591286
#>     Attrib V44    0.12186343809513389
#>     Attrib V45    0.27119355714054594
#>     Attrib V46    0.227004397267874
#>     Attrib V47    -0.25798530961149463
#>     Attrib V48    -0.24163972722877453
#>     Attrib V49    0.4105632433367378
#>     Attrib V5    0.2989446764657423
#>     Attrib V50    -0.573036918056597
#>     Attrib V51    0.030836905076149744
#>     Attrib V52    0.014221675830316772
#>     Attrib V53    0.4791724755900949
#>     Attrib V54    0.350701503513041
#>     Attrib V55    -0.6587812102419092
#>     Attrib V56    -0.020631873364710562
#>     Attrib V57    0.16154683255306868
#>     Attrib V58    0.34171148009493124
#>     Attrib V59    0.4919846292048625
#>     Attrib V6    -0.13237138237484827
#>     Attrib V60    0.11557903105417767
#>     Attrib V7    -0.3550698501065476
#>     Attrib V8    0.007440130070732776
#>     Attrib V9    0.4498157452872346
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.5513413709843672
#>     Attrib V1    0.3063766628504737
#>     Attrib V10    0.23126980695042712
#>     Attrib V11    0.26185745492847234
#>     Attrib V12    0.14496409034784952
#>     Attrib V13    -0.29162449944690183
#>     Attrib V14    -0.1844033449590465
#>     Attrib V15    0.26185423741918123
#>     Attrib V16    -0.043933734813208135
#>     Attrib V17    0.025334091892474746
#>     Attrib V18    -0.2581435238215171
#>     Attrib V19    0.05866696403833797
#>     Attrib V2    0.10149622437627995
#>     Attrib V20    0.39375061176667553
#>     Attrib V21    0.04305296722371514
#>     Attrib V22    0.16499209505194515
#>     Attrib V23    0.3411082179561794
#>     Attrib V24    0.3549451264296761
#>     Attrib V25    -0.19649162299439457
#>     Attrib V26    -0.5817845528044541
#>     Attrib V27    -0.576795440655614
#>     Attrib V28    0.03622707142096029
#>     Attrib V29    -0.23616431663674126
#>     Attrib V3    -0.03454076685290304
#>     Attrib V30    0.12049911936217736
#>     Attrib V31    -0.3602207783465308
#>     Attrib V32    0.1532907509405645
#>     Attrib V33    0.3680635186908053
#>     Attrib V34    -0.11433820896969306
#>     Attrib V35    -0.41924149776784275
#>     Attrib V36    -1.0674650604330385
#>     Attrib V37    -0.8208272764061564
#>     Attrib V38    -0.01826408129763332
#>     Attrib V39    0.3878842717378967
#>     Attrib V4    0.43100712694000054
#>     Attrib V40    -0.005839300189015994
#>     Attrib V41    -0.018848495567001855
#>     Attrib V42    0.18909279137133447
#>     Attrib V43    0.19564165006385098
#>     Attrib V44    -0.10108951278900949
#>     Attrib V45    0.045463036802903575
#>     Attrib V46    0.11847226577987412
#>     Attrib V47    -0.1794221884523126
#>     Attrib V48    -0.1285604508827514
#>     Attrib V49    0.3733264909006654
#>     Attrib V5    0.24831592848784173
#>     Attrib V50    -0.4838244119245135
#>     Attrib V51    -0.03258284648682603
#>     Attrib V52    -0.007086260964266019
#>     Attrib V53    0.40071566026181554
#>     Attrib V54    0.4212703700976847
#>     Attrib V55    -0.41292594244931763
#>     Attrib V56    0.03285211649838918
#>     Attrib V57    0.28580409853530236
#>     Attrib V58    0.5075078052034531
#>     Attrib V59    0.5797850763899626
#>     Attrib V6    -0.09697537806154782
#>     Attrib V60    0.14081386566683932
#>     Attrib V7    -0.29910813203027076
#>     Attrib V8    0.05627222309799995
#>     Attrib V9    0.290199265097081
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.16159849062858483
#>     Attrib V1    0.09583628826242141
#>     Attrib V10    0.18151070568278843
#>     Attrib V11    0.17757002534735783
#>     Attrib V12    0.11265284557172972
#>     Attrib V13    -0.042352845649632355
#>     Attrib V14    0.004398725626993999
#>     Attrib V15    0.12110025763654259
#>     Attrib V16    -0.07086232448281178
#>     Attrib V17    -0.016056077499646423
#>     Attrib V18    -0.1339176734032985
#>     Attrib V19    -0.05616763827765044
#>     Attrib V2    -0.013621994351264056
#>     Attrib V20    0.08898000203743055
#>     Attrib V21    -0.041429764200707146
#>     Attrib V22    -0.1045588266006485
#>     Attrib V23    0.04135246215586109
#>     Attrib V24    0.060261960840959285
#>     Attrib V25    -0.1638907376350241
#>     Attrib V26    -0.2480717831122327
#>     Attrib V27    -0.1822430655151107
#>     Attrib V28    0.13933060929412172
#>     Attrib V29    -0.03660569855023622
#>     Attrib V3    0.028280348151991996
#>     Attrib V30    0.02812193467467664
#>     Attrib V31    -0.1608839435757962
#>     Attrib V32    0.08102656455631026
#>     Attrib V33    0.1980546193893258
#>     Attrib V34    0.02072364803809639
#>     Attrib V35    -0.08479208240675208
#>     Attrib V36    -0.4361329155141497
#>     Attrib V37    -0.2962406275623731
#>     Attrib V38    -0.00929041825371214
#>     Attrib V39    0.16040278948002168
#>     Attrib V4    0.2651717360572669
#>     Attrib V40    -0.022291885539130824
#>     Attrib V41    -0.054323263766388886
#>     Attrib V42    -4.5691975221177894E-4
#>     Attrib V43    0.009720147937529674
#>     Attrib V44    -0.029120468759847095
#>     Attrib V45    0.16827249380712822
#>     Attrib V46    0.06771610561747267
#>     Attrib V47    -0.11742720016034958
#>     Attrib V48    0.026607173171413173
#>     Attrib V49    0.22680906075925825
#>     Attrib V5    0.18423611702244796
#>     Attrib V50    -0.16525300351423156
#>     Attrib V51    0.05280325235803906
#>     Attrib V52    0.07249198379711862
#>     Attrib V53    0.2628361046664513
#>     Attrib V54    0.10075968809060107
#>     Attrib V55    -0.1259811467887063
#>     Attrib V56    -0.013649423048276323
#>     Attrib V57    0.1867753977931846
#>     Attrib V58    0.23533256981352807
#>     Attrib V59    0.21297527451088008
#>     Attrib V6    -0.0296867409163738
#>     Attrib V60    0.11073492606762152
#>     Attrib V7    -0.07428954771955
#>     Attrib V8    -0.0403968219873828
#>     Attrib V9    0.22520044551072596
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.632818487834431
#>     Attrib V1    -0.4354631503420952
#>     Attrib V10    -0.2675799774130377
#>     Attrib V11    -0.3994805488728406
#>     Attrib V12    -0.2082921438319057
#>     Attrib V13    0.44868494516053453
#>     Attrib V14    0.3095219658003609
#>     Attrib V15    -0.18328852702856513
#>     Attrib V16    0.014870550798914218
#>     Attrib V17    -0.0712699628586209
#>     Attrib V18    0.24011645151670624
#>     Attrib V19    -0.08143529588189061
#>     Attrib V2    -0.005770835101660784
#>     Attrib V20    -0.6378725960443622
#>     Attrib V21    -0.18065171017859233
#>     Attrib V22    -0.32575375885019303
#>     Attrib V23    -0.48280732077978467
#>     Attrib V24    -0.48016099514339644
#>     Attrib V25    0.3633429648312886
#>     Attrib V26    0.8068658575742892
#>     Attrib V27    0.7111482246266355
#>     Attrib V28    -0.19867404500251695
#>     Attrib V29    0.06708047819769469
#>     Attrib V3    0.12090302847470233
#>     Attrib V30    -0.17769025180058678
#>     Attrib V31    0.6663312457319683
#>     Attrib V32    -0.026065365475464695
#>     Attrib V33    -0.45745017808430255
#>     Attrib V34    0.027423545432358365
#>     Attrib V35    0.4101850229189058
#>     Attrib V36    1.0609195110717629
#>     Attrib V37    0.7560349432023507
#>     Attrib V38    -0.3095764913068476
#>     Attrib V39    -0.5860917692140627
#>     Attrib V4    -0.615459076999442
#>     Attrib V40    0.13762706441105035
#>     Attrib V41    0.10720329392299721
#>     Attrib V42    -0.13803731421814522
#>     Attrib V43    -0.34803984796843607
#>     Attrib V44    -0.01338721209029298
#>     Attrib V45    -0.2714460985814904
#>     Attrib V46    -0.31449813285153383
#>     Attrib V47    0.23885703981300382
#>     Attrib V48    0.19810838475917228
#>     Attrib V49    -0.5285705820202611
#>     Attrib V5    -0.21604061590257495
#>     Attrib V50    0.638287881122038
#>     Attrib V51    -0.010420868422521944
#>     Attrib V52    0.015198115196213818
#>     Attrib V53    -0.5123455373862418
#>     Attrib V54    -0.38499078592795205
#>     Attrib V55    0.7039546307473474
#>     Attrib V56    0.02591855317866005
#>     Attrib V57    -0.3565474210034284
#>     Attrib V58    -0.5144573925976895
#>     Attrib V59    -0.6021557355425637
#>     Attrib V6    0.11001256337166844
#>     Attrib V60    -0.18604955077051927
#>     Attrib V7    0.3740218252257341
#>     Attrib V8    0.024560604652393802
#>     Attrib V9    -0.43027580708964447
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.5085022584266199
#>     Attrib V1    0.32409441223036567
#>     Attrib V10    0.1374488442835509
#>     Attrib V11    0.19962273272100323
#>     Attrib V12    0.09454825197538978
#>     Attrib V13    -0.3728505388440309
#>     Attrib V14    -0.17519078210986508
#>     Attrib V15    0.1950136415344534
#>     Attrib V16    0.058738008500274635
#>     Attrib V17    0.06679713504349898
#>     Attrib V18    -0.1033834199880962
#>     Attrib V19    0.04264613963835447
#>     Attrib V2    0.010383594973844975
#>     Attrib V20    0.4095030509358849
#>     Attrib V21    0.15715303579232207
#>     Attrib V22    0.11645719910434339
#>     Attrib V23    0.2500903965718465
#>     Attrib V24    0.2994605313441132
#>     Attrib V25    -0.21956586209691595
#>     Attrib V26    -0.5763553004888872
#>     Attrib V27    -0.5255501752055077
#>     Attrib V28    -0.07156995234872351
#>     Attrib V29    -0.24988565574746102
#>     Attrib V3    -0.03679655956244668
#>     Attrib V30    0.03430998404524941
#>     Attrib V31    -0.42746267549201833
#>     Attrib V32    0.08884151753966328
#>     Attrib V33    0.3346938672872417
#>     Attrib V34    -0.09214762733049246
#>     Attrib V35    -0.3259878669771293
#>     Attrib V36    -0.8812488880510106
#>     Attrib V37    -0.6772944334622073
#>     Attrib V38    0.07105143556880472
#>     Attrib V39    0.32537224344366955
#>     Attrib V4    0.4767830054022104
#>     Attrib V40    -0.09819648267836695
#>     Attrib V41    -0.03770723057804435
#>     Attrib V42    0.1593875371297193
#>     Attrib V43    0.20143566785398534
#>     Attrib V44    -0.05905439904196114
#>     Attrib V45    0.08532451091737972
#>     Attrib V46    0.11782181953591822
#>     Attrib V47    -0.22202135565653336
#>     Attrib V48    -0.12279352326666312
#>     Attrib V49    0.3300119108364026
#>     Attrib V5    0.22870105602943638
#>     Attrib V50    -0.3502814588431561
#>     Attrib V51    -0.00771178774502943
#>     Attrib V52    -0.08584282147511381
#>     Attrib V53    0.4419913554123876
#>     Attrib V54    0.3952739796917052
#>     Attrib V55    -0.4201767129739709
#>     Attrib V56    0.036224894752535625
#>     Attrib V57    0.33076588706705373
#>     Attrib V58    0.4669642211263085
#>     Attrib V59    0.6336830474315611
#>     Attrib V6    0.006381553781831019
#>     Attrib V60    0.2614666287228283
#>     Attrib V7    -0.15531886672942083
#>     Attrib V8    0.06640169231732945
#>     Attrib V9    0.31246234843285575
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.8000396113354661
#>     Attrib V1    0.3564258005626284
#>     Attrib V10    0.9695062909868658
#>     Attrib V11    1.2737182087726413
#>     Attrib V12    1.2028259356749538
#>     Attrib V13    0.7061544980521925
#>     Attrib V14    -0.31321358578965236
#>     Attrib V15    -0.1731254404319851
#>     Attrib V16    -0.5900013943607544
#>     Attrib V17    -0.5005153957262787
#>     Attrib V18    -0.5331816925831802
#>     Attrib V19    -0.12167943218041627
#>     Attrib V2    0.8591750101838171
#>     Attrib V20    0.01881232088423097
#>     Attrib V21    -0.4489111302194364
#>     Attrib V22    -0.04274915225364373
#>     Attrib V23    0.9239636201271731
#>     Attrib V24    0.9161674982997582
#>     Attrib V25    0.015251650997200179
#>     Attrib V26    0.15413579075797393
#>     Attrib V27    0.880103788949435
#>     Attrib V28    1.5916828580187297
#>     Attrib V29    0.7874518290146899
#>     Attrib V3    0.09934907560830238
#>     Attrib V30    0.1784149074119659
#>     Attrib V31    -0.5068877638687392
#>     Attrib V32    -0.11612016282265943
#>     Attrib V33    -0.23476521838416345
#>     Attrib V34    -0.19210460486193984
#>     Attrib V35    0.08387754927874125
#>     Attrib V36    -0.7614621785048881
#>     Attrib V37    0.34635317668503374
#>     Attrib V38    0.05226187060180417
#>     Attrib V39    0.3245436137708492
#>     Attrib V4    0.3945587055447503
#>     Attrib V40    0.18781281604722952
#>     Attrib V41    0.6318116207628689
#>     Attrib V42    -0.04914007493925669
#>     Attrib V43    -0.017163336820363716
#>     Attrib V44    0.02188449678832597
#>     Attrib V45    0.9277511080433638
#>     Attrib V46    0.8041741145003719
#>     Attrib V47    0.07946978078183119
#>     Attrib V48    -0.07526891524738805
#>     Attrib V49    0.5159667459299537
#>     Attrib V5    0.7250654743583396
#>     Attrib V50    -0.7281993277445103
#>     Attrib V51    0.1658450405939324
#>     Attrib V52    0.8579990233957643
#>     Attrib V53    0.47194870992529375
#>     Attrib V54    -0.33395046746601476
#>     Attrib V55    -0.3271746078368408
#>     Attrib V56    -0.5372154118346455
#>     Attrib V57    -0.16085448324692528
#>     Attrib V58    -0.15032558235219995
#>     Attrib V59    -0.4292968451453154
#>     Attrib V6    0.29822615008973435
#>     Attrib V60    0.11607451400490201
#>     Attrib V7    -0.4635313880244627
#>     Attrib V8    -0.31907312863154796
#>     Attrib V9    0.8785761958625854
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.5028346775156628
#>     Attrib V1    0.18130630412429016
#>     Attrib V10    0.5268030857150544
#>     Attrib V11    0.616364057900852
#>     Attrib V12    0.5607340906180066
#>     Attrib V13    0.1655249225674966
#>     Attrib V14    -0.23879042216839216
#>     Attrib V15    -0.10548799598071948
#>     Attrib V16    -0.29978518461438247
#>     Attrib V17    -0.3100351065044578
#>     Attrib V18    -0.4659535979050308
#>     Attrib V19    -0.29608653348001723
#>     Attrib V2    0.24954782684224955
#>     Attrib V20    -0.23340515264602998
#>     Attrib V21    -0.4599057096246943
#>     Attrib V22    -0.33232441295218795
#>     Attrib V23    0.058067554553487506
#>     Attrib V24    0.22716072150722824
#>     Attrib V25    -0.15689403350683717
#>     Attrib V26    -0.13278142693668618
#>     Attrib V27    0.35044445986855605
#>     Attrib V28    0.7605514763756758
#>     Attrib V29    0.203155058047506
#>     Attrib V3    0.0024504435211086923
#>     Attrib V30    0.08078088042210102
#>     Attrib V31    -0.3279389044719382
#>     Attrib V32    0.11724746843621266
#>     Attrib V33    0.18336682215290875
#>     Attrib V34    0.07498936216815731
#>     Attrib V35    0.11173583528908822
#>     Attrib V36    -0.36884532495370465
#>     Attrib V37    0.004352725736583343
#>     Attrib V38    0.0946652062533881
#>     Attrib V39    0.14828331831395916
#>     Attrib V4    0.5064001799856487
#>     Attrib V40    -0.036124428916520734
#>     Attrib V41    0.12946539921391023
#>     Attrib V42    -0.2139505890849661
#>     Attrib V43    -0.07827300357689428
#>     Attrib V44    -0.03599476386881108
#>     Attrib V45    0.4354470719723413
#>     Attrib V46    0.34540765362821624
#>     Attrib V47    -0.11693138328392107
#>     Attrib V48    0.04463071810942467
#>     Attrib V49    0.3220062390632766
#>     Attrib V5    0.30160039273511136
#>     Attrib V50    -0.493139552326447
#>     Attrib V51    -0.020753972262625806
#>     Attrib V52    0.2940907001014052
#>     Attrib V53    0.3030634834738924
#>     Attrib V54    -0.10926185004768586
#>     Attrib V55    -0.28613904849894034
#>     Attrib V56    -0.33240687823569315
#>     Attrib V57    0.19626881813266855
#>     Attrib V58    0.11207741109209611
#>     Attrib V59    0.0998748571526876
#>     Attrib V6    0.026514736837579198
#>     Attrib V60    0.3253401829499996
#>     Attrib V7    -0.17655571885278215
#>     Attrib V8    -0.18442360153402873
#>     Attrib V9    0.40414076805628407
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.7880172001540474
#>     Attrib V1    0.21341923888246864
#>     Attrib V10    1.0536294938970794
#>     Attrib V11    1.2530769304676161
#>     Attrib V12    1.2592285706124835
#>     Attrib V13    0.8649610401403632
#>     Attrib V14    -0.2513305538274643
#>     Attrib V15    -0.0779264242166324
#>     Attrib V16    -0.5355039423322414
#>     Attrib V17    -0.40703047883477805
#>     Attrib V18    -0.42083495507689295
#>     Attrib V19    -0.07035776628332019
#>     Attrib V2    0.7909569567229613
#>     Attrib V20    0.04858200146824816
#>     Attrib V21    -0.3514364371940369
#>     Attrib V22    0.055214301723691385
#>     Attrib V23    0.9665884483162354
#>     Attrib V24    1.015860403620379
#>     Attrib V25    0.15908521965872746
#>     Attrib V26    0.3085597561602918
#>     Attrib V27    0.9777604447232375
#>     Attrib V28    1.56334315251535
#>     Attrib V29    0.7028768189513634
#>     Attrib V3    0.011906649022840218
#>     Attrib V30    0.1474476045361163
#>     Attrib V31    -0.5540170703840176
#>     Attrib V32    -0.15840780881112798
#>     Attrib V33    -0.29688111529633515
#>     Attrib V34    -0.23032530733708226
#>     Attrib V35    0.008958964684179617
#>     Attrib V36    -0.7619213259583598
#>     Attrib V37    0.27674741399085206
#>     Attrib V38    0.05302587962826329
#>     Attrib V39    0.4503436372232543
#>     Attrib V4    0.31864036154217007
#>     Attrib V40    0.21719330374885615
#>     Attrib V41    0.6076691252366309
#>     Attrib V42    -0.0880272141183326
#>     Attrib V43    0.06993380960006661
#>     Attrib V44    0.047155226946835584
#>     Attrib V45    0.9083517079989982
#>     Attrib V46    0.7615427335266486
#>     Attrib V47    0.0406769747238102
#>     Attrib V48    -0.10073584739616347
#>     Attrib V49    0.5907525579655956
#>     Attrib V5    0.7107623880618716
#>     Attrib V50    -0.7287416865524038
#>     Attrib V51    0.20009767435932324
#>     Attrib V52    0.8719680758607737
#>     Attrib V53    0.5894078796908613
#>     Attrib V54    -0.29906005201799585
#>     Attrib V55    -0.20683953023831203
#>     Attrib V56    -0.5417700663074302
#>     Attrib V57    -0.22250836098798168
#>     Attrib V58    -0.11935286706184456
#>     Attrib V59    -0.48805359654051766
#>     Attrib V6    0.34146740745974796
#>     Attrib V60    -0.07087604117195587
#>     Attrib V7    -0.4282714427027186
#>     Attrib V8    -0.18378874950627608
#>     Attrib V9    0.8841251837703525
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.7726690034379157
#>     Attrib V1    -0.4236694578999648
#>     Attrib V10    -0.34957514969775727
#>     Attrib V11    -0.5053842874082076
#>     Attrib V12    -0.25431135048799985
#>     Attrib V13    0.4458652819310821
#>     Attrib V14    0.4137239702271082
#>     Attrib V15    -0.22157326898293916
#>     Attrib V16    0.10563967362307923
#>     Attrib V17    -0.05395168916125805
#>     Attrib V18    0.35955535959784823
#>     Attrib V19    -0.019488668046602924
#>     Attrib V2    -0.13298398116031615
#>     Attrib V20    -0.5532281466656745
#>     Attrib V21    -0.09144301028083793
#>     Attrib V22    -0.3033313590527708
#>     Attrib V23    -0.5219252652520885
#>     Attrib V24    -0.513600678516404
#>     Attrib V25    0.3335515832210844
#>     Attrib V26    0.799608721150474
#>     Attrib V27    0.6491051409489326
#>     Attrib V28    -0.25054053297830187
#>     Attrib V29    0.004670796171912498
#>     Attrib V3    0.09569390108430749
#>     Attrib V30    -0.1713467200984045
#>     Attrib V31    0.6380566230849837
#>     Attrib V32    -0.14644734013543229
#>     Attrib V33    -0.4216742399322733
#>     Attrib V34    0.06397462811194482
#>     Attrib V35    0.4296063498390398
#>     Attrib V36    1.1689803415525226
#>     Attrib V37    0.8051291544951336
#>     Attrib V38    -0.17830109355906804
#>     Attrib V39    -0.5599855583960851
#>     Attrib V4    -0.5800092074782858
#>     Attrib V40    0.12222431188239748
#>     Attrib V41    0.09178075394918402
#>     Attrib V42    -0.19501511144726213
#>     Attrib V43    -0.31809508153006677
#>     Attrib V44    0.0647059593722519
#>     Attrib V45    -0.2039705403961076
#>     Attrib V46    -0.3214878897537007
#>     Attrib V47    0.23056750033017395
#>     Attrib V48    0.1840045415429905
#>     Attrib V49    -0.5523608311245489
#>     Attrib V5    -0.26398851017393304
#>     Attrib V50    0.7475460856478955
#>     Attrib V51    -0.014216263636291993
#>     Attrib V52    -0.01663387748225886
#>     Attrib V53    -0.4347468735478413
#>     Attrib V54    -0.3218212282195922
#>     Attrib V55    0.716977853770202
#>     Attrib V56    0.01887720716320534
#>     Attrib V57    -0.29170783364605024
#>     Attrib V58    -0.48016070387526244
#>     Attrib V59    -0.6034195735385758
#>     Attrib V6    0.14023076570396853
#>     Attrib V60    -0.2232640493915087
#>     Attrib V7    0.41970654752183545
#>     Attrib V8    0.055568578702735086
#>     Attrib V9    -0.45979539029697647
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.38758072993574605
#>     Attrib V1    0.2007537257743725
#>     Attrib V10    0.19718617631080404
#>     Attrib V11    0.2441267304179084
#>     Attrib V12    0.13454074235659474
#>     Attrib V13    -0.2765226506501247
#>     Attrib V14    -0.17821963478769948
#>     Attrib V15    0.10194474761189787
#>     Attrib V16    -0.036134760023932934
#>     Attrib V17    0.08946771403828543
#>     Attrib V18    -0.10238105951986236
#>     Attrib V19    0.030830028510439197
#>     Attrib V2    -0.028323904420678652
#>     Attrib V20    0.353133807488739
#>     Attrib V21    0.025151568341065585
#>     Attrib V22    0.01869332929059404
#>     Attrib V23    0.19413187142333285
#>     Attrib V24    0.19120141385834485
#>     Attrib V25    -0.22749624507154068
#>     Attrib V26    -0.5143329622555445
#>     Attrib V27    -0.4030284383122725
#>     Attrib V28    0.06662899215036645
#>     Attrib V29    -0.15166728752043107
#>     Attrib V3    -0.09075513323701458
#>     Attrib V30    0.08849463668179511
#>     Attrib V31    -0.35838891264929035
#>     Attrib V32    0.07826529366232764
#>     Attrib V33    0.28305492131519544
#>     Attrib V34    0.024204866398789493
#>     Attrib V35    -0.16283950332911876
#>     Attrib V36    -0.6604070751709223
#>     Attrib V37    -0.5088855553409486
#>     Attrib V38    0.1362760822760123
#>     Attrib V39    0.2580876944239545
#>     Attrib V4    0.36834318134777505
#>     Attrib V40    -0.10736624860165934
#>     Attrib V41    -0.1238081948497939
#>     Attrib V42    0.04377696645225932
#>     Attrib V43    0.1458414446086737
#>     Attrib V44    0.022269557858521954
#>     Attrib V45    0.2213355561553925
#>     Attrib V46    0.1344072817616627
#>     Attrib V47    -0.1447707938366952
#>     Attrib V48    -0.041585212206846835
#>     Attrib V49    0.29869218776160694
#>     Attrib V5    0.22432723564553525
#>     Attrib V50    -0.31612900471874805
#>     Attrib V51    0.04955013941987674
#>     Attrib V52    -0.005912870670449627
#>     Attrib V53    0.3118311060073786
#>     Attrib V54    0.2915900977827846
#>     Attrib V55    -0.32695814535404666
#>     Attrib V56    -0.04628253673816685
#>     Attrib V57    0.21401378545922062
#>     Attrib V58    0.3470943470404269
#>     Attrib V59    0.30388153155608466
#>     Attrib V6    -0.01885743219107334
#>     Attrib V60    0.10048227094996671
#>     Attrib V7    -0.22227389321829327
#>     Attrib V8    0.014536324330157814
#>     Attrib V9    0.28782873769011885
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.7753867242537836
#>     Attrib V1    0.20605643331177878
#>     Attrib V10    0.5951064901050678
#>     Attrib V11    0.8929101145957627
#>     Attrib V12    0.7841685896649747
#>     Attrib V13    0.20639777877775198
#>     Attrib V14    -0.2826245886462693
#>     Attrib V15    -0.11922063588409715
#>     Attrib V16    -0.4121751056834226
#>     Attrib V17    -0.3480517177782179
#>     Attrib V18    -0.5081540733213263
#>     Attrib V19    -0.22354391253490144
#>     Attrib V2    0.37860524742253326
#>     Attrib V20    -0.14843189501793533
#>     Attrib V21    -0.5260929010460176
#>     Attrib V22    -0.22160565010673902
#>     Attrib V23    0.33995135454472175
#>     Attrib V24    0.430489116542647
#>     Attrib V25    -0.187396756676319
#>     Attrib V26    -0.21164125296881575
#>     Attrib V27    0.5045734225265598
#>     Attrib V28    1.0349196041799575
#>     Attrib V29    0.3428441662700006
#>     Attrib V3    -0.052507277719664416
#>     Attrib V30    0.08371593638980111
#>     Attrib V31    -0.6030380002022503
#>     Attrib V32    -0.020051293374335116
#>     Attrib V33    0.15934858142988587
#>     Attrib V34    0.08413589492281956
#>     Attrib V35    0.15212827559136738
#>     Attrib V36    -0.5237230570020899
#>     Attrib V37    0.06313062803975263
#>     Attrib V38    0.13315719043007698
#>     Attrib V39    0.23470942026515407
#>     Attrib V4    0.5743834793767906
#>     Attrib V40    0.03301405067574393
#>     Attrib V41    0.2159447304986823
#>     Attrib V42    -0.13697118658621865
#>     Attrib V43    0.057428435630714716
#>     Attrib V44    -0.08279444676072888
#>     Attrib V45    0.5943702022625953
#>     Attrib V46    0.48720131026165353
#>     Attrib V47    -0.18906537628310155
#>     Attrib V48    -0.05670266757310841
#>     Attrib V49    0.35174058269411873
#>     Attrib V5    0.43359645156311777
#>     Attrib V50    -0.7137552414316394
#>     Attrib V51    -0.0144417229241888
#>     Attrib V52    0.42604992970761285
#>     Attrib V53    0.426420992998724
#>     Attrib V54    -0.1515861422199755
#>     Attrib V55    -0.435276190931044
#>     Attrib V56    -0.3810982072455723
#>     Attrib V57    0.15822694245311222
#>     Attrib V58    0.1689390708189065
#>     Attrib V59    0.1394341420342246
#>     Attrib V6    -0.002415724065335971
#>     Attrib V60    0.31065550514241147
#>     Attrib V7    -0.3428806789020624
#>     Attrib V8    -0.20005847696229684
#>     Attrib V9    0.513312508300795
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.26365867525728387
#>     Attrib V1    0.20407550275235112
#>     Attrib V10    0.12457770559261423
#>     Attrib V11    0.1781123754007211
#>     Attrib V12    0.09079918755448609
#>     Attrib V13    -0.11736604087865124
#>     Attrib V14    -0.07103060647662182
#>     Attrib V15    0.1324322621574707
#>     Attrib V16    -0.051751873661964605
#>     Attrib V17    0.04879344543423929
#>     Attrib V18    -0.11100226154423273
#>     Attrib V19    0.008554902109514054
#>     Attrib V2    -0.01712343121399665
#>     Attrib V20    0.28071852751292964
#>     Attrib V21    0.07132725847142503
#>     Attrib V22    0.024632659987247417
#>     Attrib V23    0.20156975584348344
#>     Attrib V24    0.22217571892049726
#>     Attrib V25    -0.12645065579850118
#>     Attrib V26    -0.4308024758345109
#>     Attrib V27    -0.29986983152595553
#>     Attrib V28    -0.004089347824387339
#>     Attrib V29    -0.1513294251992925
#>     Attrib V3    0.0377274924010457
#>     Attrib V30    -0.006327044505692136
#>     Attrib V31    -0.3902932712204742
#>     Attrib V32    0.02865727694492459
#>     Attrib V33    0.21596989891045465
#>     Attrib V34    0.01118383936807589
#>     Attrib V35    -0.2023847216535791
#>     Attrib V36    -0.6041519861176216
#>     Attrib V37    -0.43398375216741353
#>     Attrib V38    0.06091806209439595
#>     Attrib V39    0.2826664604554065
#>     Attrib V4    0.36683953190665003
#>     Attrib V40    -0.0345583617770539
#>     Attrib V41    -0.046505548586166706
#>     Attrib V42    0.058171773644118234
#>     Attrib V43    0.08065946535446519
#>     Attrib V44    -0.05512497760061756
#>     Attrib V45    0.05002208865425257
#>     Attrib V46    0.11692331403111329
#>     Attrib V47    -0.12484601809126107
#>     Attrib V48    -0.0792107299535314
#>     Attrib V49    0.26567035251793947
#>     Attrib V5    0.2129858519653943
#>     Attrib V50    -0.3061071224443786
#>     Attrib V51    -0.02123521586127758
#>     Attrib V52    -0.03494955175416459
#>     Attrib V53    0.32278629403362935
#>     Attrib V54    0.2726460513463324
#>     Attrib V55    -0.26014020478898797
#>     Attrib V56    -0.0023512717457641968
#>     Attrib V57    0.23842816335057312
#>     Attrib V58    0.31900069141985793
#>     Attrib V59    0.45013216031229736
#>     Attrib V6    0.012001193463890145
#>     Attrib V60    0.2475752251858841
#>     Attrib V7    -0.06772280502914951
#>     Attrib V8    -0.03787103452738067
#>     Attrib V9    0.20341630534130561
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.712543882729088
#>     Attrib V1    0.275898680460482
#>     Attrib V10    0.5583762351400312
#>     Attrib V11    0.6964862104826722
#>     Attrib V12    0.5782731220714166
#>     Attrib V13    0.05004686582149836
#>     Attrib V14    -0.255856402078927
#>     Attrib V15    0.06216312579518247
#>     Attrib V16    -0.2974362089890639
#>     Attrib V17    -0.27151051075290467
#>     Attrib V18    -0.45738087746226525
#>     Attrib V19    -0.3037653345544583
#>     Attrib V2    0.27129421038140633
#>     Attrib V20    -0.16406163367250434
#>     Attrib V21    -0.4905292947957422
#>     Attrib V22    -0.3254595971491648
#>     Attrib V23    0.11922435947112463
#>     Attrib V24    0.25710985047326557
#>     Attrib V25    -0.21660441665141994
#>     Attrib V26    -0.2953421880540192
#>     Attrib V27    0.09834470816275345
#>     Attrib V28    0.5549836893012238
#>     Attrib V29    0.02826048351905947
#>     Attrib V3    -0.12796289794657992
#>     Attrib V30    0.09644336014835801
#>     Attrib V31    -0.2312006687374389
#>     Attrib V32    0.19362115578726613
#>     Attrib V33    0.24714478208695845
#>     Attrib V34    0.006043514773623372
#>     Attrib V35    -0.08032549169079543
#>     Attrib V36    -0.8356088051448739
#>     Attrib V37    -0.31335967602428355
#>     Attrib V38    -0.07880159133293552
#>     Attrib V39    0.2220998823408365
#>     Attrib V4    0.44681936420984025
#>     Attrib V40    0.024256327998804925
#>     Attrib V41    0.11229932179784408
#>     Attrib V42    -0.11662617988149304
#>     Attrib V43    -0.09892966587778793
#>     Attrib V44    -0.16556552801548194
#>     Attrib V45    0.2868174286992347
#>     Attrib V46    0.3159878603310856
#>     Attrib V47    -0.18787614760355834
#>     Attrib V48    0.06453310265925176
#>     Attrib V49    0.4313540019992071
#>     Attrib V5    0.30637574686627417
#>     Attrib V50    -0.5671470065788519
#>     Attrib V51    -0.027232883347376304
#>     Attrib V52    0.25303672358537055
#>     Attrib V53    0.32816678509169067
#>     Attrib V54    -6.168171996134636E-4
#>     Attrib V55    -0.2974121523717252
#>     Attrib V56    -0.27121170331976197
#>     Attrib V57    0.1431594970927594
#>     Attrib V58    0.35642760212467217
#>     Attrib V59    0.2614529013456784
#>     Attrib V6    -0.005776576773869719
#>     Attrib V60    0.3093311572183595
#>     Attrib V7    -0.2190086770567668
#>     Attrib V8    -0.12004222302939503
#>     Attrib V9    0.4552831808648541
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.7276098488258967
#>     Attrib V1    -0.5367890620840021
#>     Attrib V10    -0.22904329610787594
#>     Attrib V11    -0.4167003148989585
#>     Attrib V12    -0.02320994039942757
#>     Attrib V13    0.6439949008770143
#>     Attrib V14    0.25275910923364664
#>     Attrib V15    -0.300914421078031
#>     Attrib V16    -0.10095237551810811
#>     Attrib V17    -0.24019168297561214
#>     Attrib V18    0.1334158776008838
#>     Attrib V19    -0.10626113727117965
#>     Attrib V2    0.01343673738494776
#>     Attrib V20    -0.7902784204180054
#>     Attrib V21    -0.426834822016186
#>     Attrib V22    -0.41674517721606685
#>     Attrib V23    -0.5657704835525019
#>     Attrib V24    -0.47627427498822406
#>     Attrib V25    0.4156109416069014
#>     Attrib V26    1.1163642891968768
#>     Attrib V27    0.9559923914824603
#>     Attrib V28    -0.011962657052839543
#>     Attrib V29    0.23204069717398038
#>     Attrib V3    0.13826709675281293
#>     Attrib V30    -0.16737962581607693
#>     Attrib V31    0.8258879850570003
#>     Attrib V32    -0.04172535185531171
#>     Attrib V33    -0.6587761691604621
#>     Attrib V34    0.12317706220961604
#>     Attrib V35    0.5644368208664479
#>     Attrib V36    1.2150781065345102
#>     Attrib V37    1.0648959438244479
#>     Attrib V38    -0.4290171916855698
#>     Attrib V39    -0.7355837886344837
#>     Attrib V4    -0.6326862082083381
#>     Attrib V40    0.07970526090124935
#>     Attrib V41    0.18617547093314574
#>     Attrib V42    -0.30951272676379366
#>     Attrib V43    -0.5179120383610211
#>     Attrib V44    -0.10128266950626462
#>     Attrib V45    -0.08281871428100336
#>     Attrib V46    -0.16428295924491218
#>     Attrib V47    0.3116785171785065
#>     Attrib V48    0.17556244847743144
#>     Attrib V49    -0.6256363642643665
#>     Attrib V5    -0.20656875940710573
#>     Attrib V50    0.5081335826759701
#>     Attrib V51    0.005544118167350646
#>     Attrib V52    0.13977733477496504
#>     Attrib V53    -0.625903011204131
#>     Attrib V54    -0.784317497541719
#>     Attrib V55    0.7461790704325625
#>     Attrib V56    -0.07061895592155737
#>     Attrib V57    -0.4853704092906435
#>     Attrib V58    -0.7070461568894615
#>     Attrib V59    -0.9937281435086129
#>     Attrib V6    0.09250473733378199
#>     Attrib V60    -0.3230701041369065
#>     Attrib V7    0.20286268305852004
#>     Attrib V8    -0.053259704304659615
#>     Attrib V9    -0.3897346399495625
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.07013786836904329
#>     Attrib V1    0.07835994525412536
#>     Attrib V10    0.1199799406205517
#>     Attrib V11    0.0842038059903819
#>     Attrib V12    0.06855833947204744
#>     Attrib V13    0.037698859027973264
#>     Attrib V14    0.0015566222463840329
#>     Attrib V15    0.03186024484645967
#>     Attrib V16    0.03723669725323226
#>     Attrib V17    0.04967180317628018
#>     Attrib V18    0.0078026963015444244
#>     Attrib V19    -0.028589012611707043
#>     Attrib V2    -0.030258414289353185
#>     Attrib V20    -0.03932689090784154
#>     Attrib V21    -0.1162355311108557
#>     Attrib V22    -0.12136137492938764
#>     Attrib V23    -0.09074265707789624
#>     Attrib V24    0.004553898200731182
#>     Attrib V25    -0.03540140797653922
#>     Attrib V26    -0.10869402446232405
#>     Attrib V27    -0.05538944240347659
#>     Attrib V28    0.0673303176803846
#>     Attrib V29    -0.032692486289803334
#>     Attrib V3    0.07061646210231652
#>     Attrib V30    -0.018960415101326362
#>     Attrib V31    -0.06898797871342764
#>     Attrib V32    0.06745334134294412
#>     Attrib V33    0.06398562247111027
#>     Attrib V34    0.05047460320612056
#>     Attrib V35    0.01196485089118978
#>     Attrib V36    -0.10650921240297284
#>     Attrib V37    -0.030891769680949886
#>     Attrib V38    0.046239844998864
#>     Attrib V39    0.08162150857682224
#>     Attrib V4    0.17433493208365572
#>     Attrib V40    -0.02257190157455897
#>     Attrib V41    0.004461584643258745
#>     Attrib V42    0.009673065279435842
#>     Attrib V43    0.015093935575402541
#>     Attrib V44    -0.009617659254493066
#>     Attrib V45    0.08416235582437316
#>     Attrib V46    0.08463399577642035
#>     Attrib V47    0.002166270899077219
#>     Attrib V48    0.02222233924940518
#>     Attrib V49    0.07269323294939237
#>     Attrib V5    0.10504085024821236
#>     Attrib V50    0.02974664058116309
#>     Attrib V51    0.10145904793781407
#>     Attrib V52    0.10205873246746171
#>     Attrib V53    0.18865830174911719
#>     Attrib V54    0.06852013183881575
#>     Attrib V55    0.024312693381040036
#>     Attrib V56    0.04731211353604524
#>     Attrib V57    0.15551888510158857
#>     Attrib V58    0.18414604614834812
#>     Attrib V59    0.07657700456009879
#>     Attrib V6    0.07329687608510868
#>     Attrib V60    0.1448678866825728
#>     Attrib V7    0.0222290247086159
#>     Attrib V8    0.0022943203635437544
#>     Attrib V9    0.1495156352505004
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.25050332518563867
#>     Attrib V1    0.17309470219118994
#>     Attrib V10    0.23610182156048892
#>     Attrib V11    0.21547045620235722
#>     Attrib V12    0.07614893624107068
#>     Attrib V13    -0.15083204554213844
#>     Attrib V14    -0.10339823810532994
#>     Attrib V15    0.12145666154798955
#>     Attrib V16    -0.052432950954181684
#>     Attrib V17    -0.0091651808429703
#>     Attrib V18    -0.12164905722446813
#>     Attrib V19    -0.02250921777374327
#>     Attrib V2    0.06165204378186673
#>     Attrib V20    0.10803305479729375
#>     Attrib V21    -0.0716141160563336
#>     Attrib V22    -0.017331478658915205
#>     Attrib V23    0.025529881511675904
#>     Attrib V24    0.09727164251899605
#>     Attrib V25    -0.19853629400430428
#>     Attrib V26    -0.3193916662763134
#>     Attrib V27    -0.1893525448021737
#>     Attrib V28    0.06670934250790984
#>     Attrib V29    -0.12447235192210178
#>     Attrib V3    -0.03683018702836708
#>     Attrib V30    0.060838306489216086
#>     Attrib V31    -0.13681553971840937
#>     Attrib V32    0.07210452607723751
#>     Attrib V33    0.23539327658072937
#>     Attrib V34    -0.01916733249439005
#>     Attrib V35    -0.058393648707060965
#>     Attrib V36    -0.45808338633345425
#>     Attrib V37    -0.3188039185170473
#>     Attrib V38    0.0898382660945391
#>     Attrib V39    0.17620191499587845
#>     Attrib V4    0.29816092476044603
#>     Attrib V40    -0.10707821605397125
#>     Attrib V41    -0.04390853260393625
#>     Attrib V42    -0.06342823366654649
#>     Attrib V43    0.07357701294592578
#>     Attrib V44    -0.0010703562151029617
#>     Attrib V45    0.16550890369266597
#>     Attrib V46    0.07009714965092263
#>     Attrib V47    -0.16438261045098443
#>     Attrib V48    0.021273236848178858
#>     Attrib V49    0.17355095811356663
#>     Attrib V5    0.1460102843756751
#>     Attrib V50    -0.20342864041533698
#>     Attrib V51    0.014941853289888375
#>     Attrib V52    0.038876828972775446
#>     Attrib V53    0.2122459108954357
#>     Attrib V54    0.12226354546730193
#>     Attrib V55    -0.12731616960670403
#>     Attrib V56    -0.03677116651517805
#>     Attrib V57    0.21726326547006972
#>     Attrib V58    0.20283358945969465
#>     Attrib V59    0.176997827970736
#>     Attrib V6    0.014850657202257258
#>     Attrib V60    0.14008225660400875
#>     Attrib V7    -0.11566534342231936
#>     Attrib V8    0.019831973089509417
#>     Attrib V9    0.23059289152751244
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.17398785048435403
#>     Attrib V1    0.059962070089280436
#>     Attrib V10    0.07645462291163563
#>     Attrib V11    0.04404123926123378
#>     Attrib V12    0.019363944699076485
#>     Attrib V13    0.02928529813408653
#>     Attrib V14    0.0546941764819224
#>     Attrib V15    0.02531473357901015
#>     Attrib V16    0.02649485103441049
#>     Attrib V17    -0.005058921290366342
#>     Attrib V18    0.04975844712947975
#>     Attrib V19    -0.06719858307383073
#>     Attrib V2    0.039930307261961506
#>     Attrib V20    -0.008719167737053082
#>     Attrib V21    -0.03410295283217638
#>     Attrib V22    -0.0793087957551744
#>     Attrib V23    -0.03846371119895546
#>     Attrib V24    -0.057888653811295196
#>     Attrib V25    -0.016453727810669973
#>     Attrib V26    -0.02181067341898052
#>     Attrib V27    -0.02647318366631268
#>     Attrib V28    -0.01777789471657833
#>     Attrib V29    -0.03490090947068219
#>     Attrib V3    0.12036748039232978
#>     Attrib V30    -0.02346715995070957
#>     Attrib V31    0.0014228870338969517
#>     Attrib V32    0.03575707030754414
#>     Attrib V33    0.04868806052484041
#>     Attrib V34    0.06312980459550475
#>     Attrib V35    0.03694063400398941
#>     Attrib V36    0.09363627067630358
#>     Attrib V37    0.026874017589828592
#>     Attrib V38    0.02302859041646087
#>     Attrib V39    0.07952999050607004
#>     Attrib V4    0.05890245008628036
#>     Attrib V40    0.018062036499124974
#>     Attrib V41    -4.282538099434293E-4
#>     Attrib V42    0.019365479197466038
#>     Attrib V43    0.04013589777212258
#>     Attrib V44    0.09123384244175595
#>     Attrib V45    0.010663665509112186
#>     Attrib V46    0.03600084894570948
#>     Attrib V47    0.07818489655966186
#>     Attrib V48    0.040068355996752694
#>     Attrib V49    0.08154758331270194
#>     Attrib V5    0.08661759647426133
#>     Attrib V50    0.007242666536004582
#>     Attrib V51    0.11766952208345503
#>     Attrib V52    0.06179630135260693
#>     Attrib V53    0.09434231221252692
#>     Attrib V54    0.012415339936999038
#>     Attrib V55    0.07713461348819274
#>     Attrib V56    0.09135046251217738
#>     Attrib V57    0.05502491540170374
#>     Attrib V58    0.08697206037057917
#>     Attrib V59    0.07801870109577497
#>     Attrib V6    0.05471664143583783
#>     Attrib V60    0.12471096501587056
#>     Attrib V7    0.08992706153444383
#>     Attrib V8    0.09661171343669309
#>     Attrib V9    0.08889079082234205
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.7688278778625042
#>     Attrib V1    0.32038908808135075
#>     Attrib V10    0.7558143764934262
#>     Attrib V11    0.9628870578510283
#>     Attrib V12    1.1312479313996875
#>     Attrib V13    0.48092085345671615
#>     Attrib V14    -0.30463193111373255
#>     Attrib V15    -0.15614706871969503
#>     Attrib V16    -0.6570695804318184
#>     Attrib V17    -0.5626980624688741
#>     Attrib V18    -0.6762772932166948
#>     Attrib V19    -0.33318955192727007
#>     Attrib V2    0.6147803200025183
#>     Attrib V20    -0.30916091635823945
#>     Attrib V21    -0.7121711138534154
#>     Attrib V22    -0.28581690338157806
#>     Attrib V23    0.41435163271332304
#>     Attrib V24    0.5896906862428649
#>     Attrib V25    -0.09350605227060162
#>     Attrib V26    -0.08269439678828637
#>     Attrib V27    0.7781574239496991
#>     Attrib V28    1.4001755662974391
#>     Attrib V29    0.44463498337821106
#>     Attrib V3    0.04420455460915206
#>     Attrib V30    0.01319591281203751
#>     Attrib V31    -0.5992547424550098
#>     Attrib V32    -0.09254066633277247
#>     Attrib V33    -0.00774446217126698
#>     Attrib V34    0.0022800761787460408
#>     Attrib V35    0.27621544762499556
#>     Attrib V36    -0.49812543678497634
#>     Attrib V37    0.27007408196062505
#>     Attrib V38    0.04874996990569319
#>     Attrib V39    0.23177264935859465
#>     Attrib V4    0.6447329248456314
#>     Attrib V40    0.08222275624224354
#>     Attrib V41    0.439148119040114
#>     Attrib V42    -0.07378306463778396
#>     Attrib V43    -0.08838354651898213
#>     Attrib V44    -0.13396842681983778
#>     Attrib V45    0.7796908000881857
#>     Attrib V46    0.6386136899414452
#>     Attrib V47    -0.11396028726693845
#>     Attrib V48    -0.04130639709029699
#>     Attrib V49    0.4781357875239286
#>     Attrib V5    0.6334637792220501
#>     Attrib V50    -0.811491773114911
#>     Attrib V51    0.013973637233483221
#>     Attrib V52    0.5970183935136858
#>     Attrib V53    0.3936398985799771
#>     Attrib V54    -0.23206967033419007
#>     Attrib V55    -0.34824103741658863
#>     Attrib V56    -0.5376473035434728
#>     Attrib V57    0.012095015072808961
#>     Attrib V58    0.033612508529672194
#>     Attrib V59    -0.012413848877523398
#>     Attrib V6    0.16948906516728188
#>     Attrib V60    0.5025622261121795
#>     Attrib V7    -0.33574524075960366
#>     Attrib V8    -0.3944201347135706
#>     Attrib V9    0.5673351626727232
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.6520937615801902
#>     Attrib V1    0.3075676951455168
#>     Attrib V10    0.4660957481949108
#>     Attrib V11    0.5834619133664883
#>     Attrib V12    0.5618542606237914
#>     Attrib V13    -0.036776912825889435
#>     Attrib V14    -0.30236327065427143
#>     Attrib V15    -0.06173859498744403
#>     Attrib V16    -0.36836065733188006
#>     Attrib V17    -0.16792084659804565
#>     Attrib V18    -0.27168106470775044
#>     Attrib V19    -0.0018717391563465328
#>     Attrib V2    0.2140023751968179
#>     Attrib V20    0.29452128880251927
#>     Attrib V21    -0.06867159205744934
#>     Attrib V22    0.11693372713165551
#>     Attrib V23    0.5523303478736794
#>     Attrib V24    0.5364572691937504
#>     Attrib V25    -0.10308304671053908
#>     Attrib V26    -0.25572502882612375
#>     Attrib V27    0.07896354809052164
#>     Attrib V28    0.5995337254523405
#>     Attrib V29    0.2599924222028471
#>     Attrib V3    -0.0744354317003465
#>     Attrib V30    0.22178548911018353
#>     Attrib V31    -0.5376471963076962
#>     Attrib V32    -0.05183607085045931
#>     Attrib V33    0.18488132407366584
#>     Attrib V34    -0.025634826093069992
#>     Attrib V35    0.009634945206989086
#>     Attrib V36    -0.4464374866727039
#>     Attrib V37    0.01200428332773022
#>     Attrib V38    0.31117258482712995
#>     Attrib V39    0.3776726543677661
#>     Attrib V4    0.43323584565505074
#>     Attrib V40    -0.02301288955165975
#>     Attrib V41    0.09978864035043088
#>     Attrib V42    -0.03278896040149335
#>     Attrib V43    0.2701714164676125
#>     Attrib V44    0.15946827541502323
#>     Attrib V45    0.4364422252631216
#>     Attrib V46    0.2806410552079839
#>     Attrib V47    -0.2621956114438885
#>     Attrib V48    -0.1713077872784687
#>     Attrib V49    0.36545680481985343
#>     Attrib V5    0.34777913023932694
#>     Attrib V50    -0.5544884328080141
#>     Attrib V51    0.027467323980229608
#>     Attrib V52    0.20202164139881143
#>     Attrib V53    0.41806371776520657
#>     Attrib V54    0.14096479096494177
#>     Attrib V55    -0.5571322250020336
#>     Attrib V56    -0.23118312496169097
#>     Attrib V57    0.04557268912687962
#>     Attrib V58    0.09753435779796725
#>     Attrib V59    0.15591128990307326
#>     Attrib V6    -0.03637805001442272
#>     Attrib V60    0.14043629396564444
#>     Attrib V7    -0.35890803047213704
#>     Attrib V8    -0.22731022866602493
#>     Attrib V9    0.47648894772856426
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.5439987842948082
#>     Attrib V1    -0.4967230204502522
#>     Attrib V10    -0.24770057162005468
#>     Attrib V11    -0.4294325784381856
#>     Attrib V12    -0.049715834901558995
#>     Attrib V13    0.6050223993843997
#>     Attrib V14    0.2653227612335116
#>     Attrib V15    -0.2939468791255719
#>     Attrib V16    -0.08940878667302464
#>     Attrib V17    -0.23603617876396635
#>     Attrib V18    0.12012178991483773
#>     Attrib V19    -0.20385573751834407
#>     Attrib V2    -0.02256903929627545
#>     Attrib V20    -0.821718865574611
#>     Attrib V21    -0.37301593587912985
#>     Attrib V22    -0.4748554485591998
#>     Attrib V23    -0.6002875005070049
#>     Attrib V24    -0.46344873556516314
#>     Attrib V25    0.4134084772463607
#>     Attrib V26    1.0190142174624943
#>     Attrib V27    0.9597091152388985
#>     Attrib V28    -0.010560559572151238
#>     Attrib V29    0.19859542798971336
#>     Attrib V3    0.05531445761065086
#>     Attrib V30    -0.17047066206499348
#>     Attrib V31    0.7884599018842671
#>     Attrib V32    -0.06975360567992292
#>     Attrib V33    -0.6115800248777723
#>     Attrib V34    0.0814144840542683
#>     Attrib V35    0.5141030955273896
#>     Attrib V36    1.1495406831606103
#>     Attrib V37    1.006210906746369
#>     Attrib V38    -0.4328132373169167
#>     Attrib V39    -0.6928859514386335
#>     Attrib V4    -0.559615324034711
#>     Attrib V40    0.1643176970594842
#>     Attrib V41    0.27459487102742064
#>     Attrib V42    -0.30929436898070134
#>     Attrib V43    -0.5000570366069926
#>     Attrib V44    -0.12661675326697944
#>     Attrib V45    -0.20156538498253276
#>     Attrib V46    -0.2513284063083271
#>     Attrib V47    0.23045547782852033
#>     Attrib V48    0.21339151945270587
#>     Attrib V49    -0.6076899843067638
#>     Attrib V5    -0.16617801788583306
#>     Attrib V50    0.4690885560188651
#>     Attrib V51    -0.036912657333841734
#>     Attrib V52    0.11959919068509302
#>     Attrib V53    -0.638511952161938
#>     Attrib V54    -0.6858577972857403
#>     Attrib V55    0.6435152607697999
#>     Attrib V56    -0.15175509668083148
#>     Attrib V57    -0.31801793280433344
#>     Attrib V58    -0.6868592352789441
#>     Attrib V59    -0.7643252808539478
#>     Attrib V6    0.11236182655143957
#>     Attrib V60    -0.13156882199573572
#>     Attrib V7    0.31928198597919405
#>     Attrib V8    -0.11555994717368194
#>     Attrib V9    -0.39684317128910745
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.4697499743856893
#>     Attrib V1    0.36636462924620933
#>     Attrib V10    0.16165154485982827
#>     Attrib V11    0.17594511666087265
#>     Attrib V12    -0.01095310550203172
#>     Attrib V13    -0.43968229757494043
#>     Attrib V14    -0.17632006705216888
#>     Attrib V15    0.1654607418202335
#>     Attrib V16    0.09704833471232978
#>     Attrib V17    0.13611811627647022
#>     Attrib V18    -0.1308833563928838
#>     Attrib V19    0.04448656529010229
#>     Attrib V2    0.004505815285853829
#>     Attrib V20    0.4296838721537849
#>     Attrib V21    0.13026779606992478
#>     Attrib V22    0.10487607305411106
#>     Attrib V23    0.1865317888784956
#>     Attrib V24    0.26859039632439885
#>     Attrib V25    -0.31088427079450554
#>     Attrib V26    -0.6787210996284994
#>     Attrib V27    -0.6755888075463692
#>     Attrib V28    -0.18033046603795685
#>     Attrib V29    -0.2814117511103557
#>     Attrib V3    -0.06598300268992158
#>     Attrib V30    0.01317460815699518
#>     Attrib V31    -0.36461804655672775
#>     Attrib V32    0.10569924202350031
#>     Attrib V33    0.35191282677551905
#>     Attrib V34    -0.04652113708732639
#>     Attrib V35    -0.3352333288829251
#>     Attrib V36    -0.8759762688158075
#>     Attrib V37    -0.739465628516148
#>     Attrib V38    0.06661182402475008
#>     Attrib V39    0.3300643169330996
#>     Attrib V4    0.47917422567972273
#>     Attrib V40    -0.05217825428859775
#>     Attrib V41    -0.14837605037008952
#>     Attrib V42    0.10876763813695481
#>     Attrib V43    0.254814510882504
#>     Attrib V44    -0.06534873189992182
#>     Attrib V45    0.010731982446786055
#>     Attrib V46    0.1386263746260399
#>     Attrib V47    -0.22895147214571843
#>     Attrib V48    -0.008088674865191083
#>     Attrib V49    0.3993673538272812
#>     Attrib V5    0.24489314488349492
#>     Attrib V50    -0.34947818435901973
#>     Attrib V51    -0.022132091560032038
#>     Attrib V52    -0.09819797108578533
#>     Attrib V53    0.3612739162612829
#>     Attrib V54    0.46515748201414137
#>     Attrib V55    -0.3954891571646618
#>     Attrib V56    0.06638548009656187
#>     Attrib V57    0.3346358648987739
#>     Attrib V58    0.5233174545564162
#>     Attrib V59    0.6404805653309628
#>     Attrib V6    -0.02185797813439072
#>     Attrib V60    0.26729800591846764
#>     Attrib V7    -0.145379495574011
#>     Attrib V8    -0.03658442959143423
#>     Attrib V9    0.2667131320461196
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.4397023625959233
#>     Attrib V1    0.33425590624954515
#>     Attrib V10    0.09504396813614678
#>     Attrib V11    0.22799488404774573
#>     Attrib V12    0.08622253103901391
#>     Attrib V13    -0.35078709506932343
#>     Attrib V14    -0.156267823657996
#>     Attrib V15    0.18970633870506312
#>     Attrib V16    0.004366890849020569
#>     Attrib V17    0.17132751506383231
#>     Attrib V18    -0.07920223586521684
#>     Attrib V19    0.10700453614118076
#>     Attrib V2    -0.06394780611392427
#>     Attrib V20    0.43001726782348454
#>     Attrib V21    0.15921005126075968
#>     Attrib V22    0.17288422384943827
#>     Attrib V23    0.2942108807400761
#>     Attrib V24    0.242410715444554
#>     Attrib V25    -0.2565631911558176
#>     Attrib V26    -0.5594308688877927
#>     Attrib V27    -0.6048322346432758
#>     Attrib V28    -0.10920638991960113
#>     Attrib V29    -0.2782636791930481
#>     Attrib V3    -0.0031262677796997556
#>     Attrib V30    0.02840344158253651
#>     Attrib V31    -0.4726467083956849
#>     Attrib V32    0.026104241543496692
#>     Attrib V33    0.3328474444448678
#>     Attrib V34    -0.06565158293351009
#>     Attrib V35    -0.23609855508820465
#>     Attrib V36    -0.7432222500256851
#>     Attrib V37    -0.59794518950385
#>     Attrib V38    0.13426879978715633
#>     Attrib V39    0.33606089500846353
#>     Attrib V4    0.5125410425550264
#>     Attrib V40    -0.15590201497999515
#>     Attrib V41    -0.15102551755658794
#>     Attrib V42    0.09583163482473946
#>     Attrib V43    0.2851736794174439
#>     Attrib V44    0.00812718180128229
#>     Attrib V45    0.13194703773829417
#>     Attrib V46    0.11143609726929136
#>     Attrib V47    -0.17304223311272318
#>     Attrib V48    -0.143122909233708
#>     Attrib V49    0.3338836700373269
#>     Attrib V5    0.21870113437215996
#>     Attrib V50    -0.35487717016251125
#>     Attrib V51    -0.02330705156417208
#>     Attrib V52    -0.037433645743683394
#>     Attrib V53    0.4376494838164851
#>     Attrib V54    0.4641962609461872
#>     Attrib V55    -0.37419728370535804
#>     Attrib V56    0.08211359242185855
#>     Attrib V57    0.26904742803614384
#>     Attrib V58    0.45587998403765934
#>     Attrib V59    0.6587239877630792
#>     Attrib V6    -0.035257881311929716
#>     Attrib V60    0.2299408553455131
#>     Attrib V7    -0.14217415890819676
#>     Attrib V8    0.0022986232164846875
#>     Attrib V9    0.244017016260329
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.1567155564569797
#>     Attrib V1    -0.10879517701788884
#>     Attrib V10    -0.15424731745937847
#>     Attrib V11    -0.1877255636446205
#>     Attrib V12    -0.12677275007702246
#>     Attrib V13    0.004373137934109421
#>     Attrib V14    0.08513868703001128
#>     Attrib V15    0.05391649002235613
#>     Attrib V16    0.059812029939644885
#>     Attrib V17    0.07552940320054892
#>     Attrib V18    0.05783136291411506
#>     Attrib V19    -0.01813952712956874
#>     Attrib V2    -0.09074308118896615
#>     Attrib V20    -0.09475072487518524
#>     Attrib V21    0.015399473492601866
#>     Attrib V22    -0.038935337584480735
#>     Attrib V23    -0.043332038678562036
#>     Attrib V24    -0.09290466999804912
#>     Attrib V25    0.11396480392438348
#>     Attrib V26    0.19082512505565227
#>     Attrib V27    0.01932703681103233
#>     Attrib V28    -0.12070034869265286
#>     Attrib V29    -0.03198333017449273
#>     Attrib V3    0.0015871748303147647
#>     Attrib V30    -0.041651207233988685
#>     Attrib V31    0.12883847399492276
#>     Attrib V32    0.02526763763280385
#>     Attrib V33    -0.12482975689694921
#>     Attrib V34    -0.016736331561278704
#>     Attrib V35    0.017175270812856032
#>     Attrib V36    0.24888700265333824
#>     Attrib V37    0.07856235185910472
#>     Attrib V38    -0.09250988740868536
#>     Attrib V39    -0.15795817629742115
#>     Attrib V4    -0.13546332246408746
#>     Attrib V40    0.04806342150244278
#>     Attrib V41    0.018576700735586812
#>     Attrib V42    -0.03534786990594402
#>     Attrib V43    -0.031946101911717144
#>     Attrib V44    -0.06554247169201967
#>     Attrib V45    -0.21451763588731676
#>     Attrib V46    -0.1191465211527833
#>     Attrib V47    0.07515137183369049
#>     Attrib V48    0.003170028911242826
#>     Attrib V49    -0.18852555744235786
#>     Attrib V5    -0.12307245106033766
#>     Attrib V50    0.19202674272008474
#>     Attrib V51    0.00782701938767056
#>     Attrib V52    -0.0037356672323112304
#>     Attrib V53    -0.1348062972084584
#>     Attrib V54    -0.09477197937385463
#>     Attrib V55    0.12717090433375097
#>     Attrib V56    0.09815461017011487
#>     Attrib V57    0.01823686881641999
#>     Attrib V58    -0.08338898616852478
#>     Attrib V59    -0.06895275577134435
#>     Attrib V6    0.04643301707201565
#>     Attrib V60    -0.08075699641156886
#>     Attrib V7    0.07115693213644832
#>     Attrib V8    0.05288272426836779
#>     Attrib V9    -0.08640562921166148
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.9525955864684326
#>     Attrib V1    0.06580586737010755
#>     Attrib V10    1.1642672768685551
#>     Attrib V11    1.4854396844797488
#>     Attrib V12    1.4254502438196848
#>     Attrib V13    1.0319853866507958
#>     Attrib V14    -0.017726721062454372
#>     Attrib V15    -0.01360206911733061
#>     Attrib V16    -0.5706548532252145
#>     Attrib V17    -0.4223141097906383
#>     Attrib V18    -0.41988108897851223
#>     Attrib V19    -0.020843945430164268
#>     Attrib V2    0.811359276484847
#>     Attrib V20    0.0737098636361222
#>     Attrib V21    -0.42641007001385034
#>     Attrib V22    0.13791309265300888
#>     Attrib V23    1.1107741081486526
#>     Attrib V24    1.1173588733443012
#>     Attrib V25    0.33268671730431865
#>     Attrib V26    0.593393359947303
#>     Attrib V27    1.185391362720967
#>     Attrib V28    1.763314718160331
#>     Attrib V29    0.8597628260093745
#>     Attrib V3    0.0024612226387391344
#>     Attrib V30    0.18083432115717507
#>     Attrib V31    -0.6514494817821174
#>     Attrib V32    -0.2571149755999884
#>     Attrib V33    -0.467365835064178
#>     Attrib V34    -0.4246655339076306
#>     Attrib V35    -0.25819651254196624
#>     Attrib V36    -0.9108649806230195
#>     Attrib V37    0.23282477104715385
#>     Attrib V38    0.10921289496739642
#>     Attrib V39    0.7382968019061552
#>     Attrib V4    0.3216504010994101
#>     Attrib V40    0.370163162130641
#>     Attrib V41    0.6486525820787704
#>     Attrib V42    0.0595798721388741
#>     Attrib V43    0.06403645460322004
#>     Attrib V44    0.21953576486132095
#>     Attrib V45    1.0787800495178697
#>     Attrib V46    0.8014520153339281
#>     Attrib V47    0.057632925248099334
#>     Attrib V48    0.05903265622581359
#>     Attrib V49    0.8992009971327749
#>     Attrib V5    0.829871119743242
#>     Attrib V50    -0.8295739767035886
#>     Attrib V51    0.2373811220474694
#>     Attrib V52    1.0270982673185
#>     Attrib V53    0.4673549038310568
#>     Attrib V54    -0.34507860700794923
#>     Attrib V55    -0.20538012001038233
#>     Attrib V56    -0.616027713369529
#>     Attrib V57    -0.18301053346509452
#>     Attrib V58    -0.12282446640369597
#>     Attrib V59    -0.5513959087632366
#>     Attrib V6    0.3520031229451556
#>     Attrib V60    -0.2683573350100355
#>     Attrib V7    -0.540670818439785
#>     Attrib V8    -0.1534698701550686
#>     Attrib V9    1.009036916584248
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.10946275679147753
#>     Attrib V1    0.09529417058305345
#>     Attrib V10    0.0872637391859245
#>     Attrib V11    0.05831898285561337
#>     Attrib V12    0.09881267186520419
#>     Attrib V13    0.0022586520303572617
#>     Attrib V14    0.08422815567952283
#>     Attrib V15    0.03841694443532719
#>     Attrib V16    -0.008517907807711573
#>     Attrib V17    0.042184719140201464
#>     Attrib V18    -0.059504392221473565
#>     Attrib V19    0.00583293854853167
#>     Attrib V2    0.03393591562075309
#>     Attrib V20    -3.4405202031244977E-4
#>     Attrib V21    -0.07158117862150029
#>     Attrib V22    -0.10546092730609886
#>     Attrib V23    -0.04477171330285811
#>     Attrib V24    -0.03093976766390498
#>     Attrib V25    -0.04633139156036628
#>     Attrib V26    -0.10226552028597924
#>     Attrib V27    -0.01150577845128588
#>     Attrib V28    0.07567052533953432
#>     Attrib V29    -0.008542526739581427
#>     Attrib V3    0.031009382649465612
#>     Attrib V30    0.0032100075108117093
#>     Attrib V31    -0.07762003729743164
#>     Attrib V32    0.017033593924790053
#>     Attrib V33    0.10378679203694686
#>     Attrib V34    0.014749308223064717
#>     Attrib V35    0.08810542939661316
#>     Attrib V36    -0.00833935280065876
#>     Attrib V37    0.03395027308503989
#>     Attrib V38    0.042702162055233604
#>     Attrib V39    0.09145159573201105
#>     Attrib V4    0.1965245754752351
#>     Attrib V40    -0.003781171072027557
#>     Attrib V41    -0.006837667100343602
#>     Attrib V42    0.005450892128175684
#>     Attrib V43    0.052938195150558254
#>     Attrib V44    0.054541892234653284
#>     Attrib V45    0.07936693267467355
#>     Attrib V46    0.045488557081955684
#>     Attrib V47    -0.019864563404792743
#>     Attrib V48    0.07103523973643108
#>     Attrib V49    0.07897487276147566
#>     Attrib V5    0.0655118252507403
#>     Attrib V50    0.012911791521500746
#>     Attrib V51    0.036295936468667994
#>     Attrib V52    0.06054584767192134
#>     Attrib V53    0.13132127130554275
#>     Attrib V54    0.07992429487132843
#>     Attrib V55    0.015313992683301992
#>     Attrib V56    0.06267862986790801
#>     Attrib V57    0.16590072781775025
#>     Attrib V58    0.13420410718809145
#>     Attrib V59    0.1256073921403304
#>     Attrib V6    0.09599877742687714
#>     Attrib V60    0.1823916641692914
#>     Attrib V7    -0.002735670820896845
#>     Attrib V8    0.051636433424627294
#>     Attrib V9    0.0968769493862458
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.7198339240514058
#>     Attrib V1    0.35790936279468377
#>     Attrib V10    0.7156125220366064
#>     Attrib V11    0.8573822365303266
#>     Attrib V12    0.8156405003826447
#>     Attrib V13    0.2560307324370655
#>     Attrib V14    -0.3561590410390068
#>     Attrib V15    -0.15137161396187465
#>     Attrib V16    -0.5094937491635165
#>     Attrib V17    -0.4576182750187218
#>     Attrib V18    -0.5130023319366971
#>     Attrib V19    -0.319224685303893
#>     Attrib V2    0.4351729293984
#>     Attrib V20    -0.2052552235233355
#>     Attrib V21    -0.4743124383566289
#>     Attrib V22    -0.2248310207027202
#>     Attrib V23    0.28498801802422613
#>     Attrib V24    0.45280163498337267
#>     Attrib V25    -0.16788745578983186
#>     Attrib V26    -0.10874175525637816
#>     Attrib V27    0.4794605789066385
#>     Attrib V28    0.9953034436492431
#>     Attrib V29    0.3246222302676913
#>     Attrib V3    -0.005770338562136811
#>     Attrib V30    0.09457327707786646
#>     Attrib V31    -0.5109534095790196
#>     Attrib V32    1.3344853982096713E-4
#>     Attrib V33    0.07456173903442011
#>     Attrib V34    0.08305227721448512
#>     Attrib V35    0.18921498717397178
#>     Attrib V36    -0.44116238328627144
#>     Attrib V37    0.1582659586871146
#>     Attrib V38    0.13242946631689548
#>     Attrib V39    0.28122309605392076
#>     Attrib V4    0.5414133618853433
#>     Attrib V40    -0.06479023661047977
#>     Attrib V41    0.21708191827754736
#>     Attrib V42    -0.1747962726733324
#>     Attrib V43    -0.09535180154040022
#>     Attrib V44    -0.03426945417992881
#>     Attrib V45    0.6666497768615129
#>     Attrib V46    0.4561772304192716
#>     Attrib V47    -0.17694286053563538
#>     Attrib V48    -0.03193205142200237
#>     Attrib V49    0.3507462836226274
#>     Attrib V5    0.4340300578644544
#>     Attrib V50    -0.5950787934989369
#>     Attrib V51    0.015946158501625923
#>     Attrib V52    0.4174649762605248
#>     Attrib V53    0.3189625371118411
#>     Attrib V54    -0.16548900611872178
#>     Attrib V55    -0.35162619830608866
#>     Attrib V56    -0.4727775206212924
#>     Attrib V57    0.08746928657347225
#>     Attrib V58    0.08833675868112267
#>     Attrib V59    0.04735151535799684
#>     Attrib V6    0.11951480072528416
#>     Attrib V60    0.35291335744285374
#>     Attrib V7    -0.3067314575444908
#>     Attrib V8    -0.24222691643002367
#>     Attrib V9    0.5560818075162273
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.5540239248593595
#>     Attrib V1    -0.6962819707264063
#>     Attrib V10    -0.7250250246189008
#>     Attrib V11    -0.946225273874518
#>     Attrib V12    -0.5272956607576712
#>     Attrib V13    0.40886083018872765
#>     Attrib V14    0.6597010764180744
#>     Attrib V15    0.07555886067744974
#>     Attrib V16    0.4130599576279446
#>     Attrib V17    0.009446726576454796
#>     Attrib V18    0.4204181483976285
#>     Attrib V19    -0.21476074579079885
#>     Attrib V2    -0.46556296220624654
#>     Attrib V20    -1.1146495823919411
#>     Attrib V21    -0.43421087010758785
#>     Attrib V22    -0.8659883787363661
#>     Attrib V23    -1.387934475724721
#>     Attrib V24    -0.9326796279566727
#>     Attrib V25    0.15700592724384538
#>     Attrib V26    0.6418838635384817
#>     Attrib V27    0.5888895093569246
#>     Attrib V28    -0.6809535150205359
#>     Attrib V29    -0.4748645788697433
#>     Attrib V3    0.07157399425228655
#>     Attrib V30    -0.7170359937044617
#>     Attrib V31    0.8641976978404303
#>     Attrib V32    0.15623442039753768
#>     Attrib V33    -0.42692720288033703
#>     Attrib V34    0.08791573515723622
#>     Attrib V35    0.19143441824531612
#>     Attrib V36    0.7825206164761587
#>     Attrib V37    0.19853012560774827
#>     Attrib V38    -0.709435705480734
#>     Attrib V39    -0.7501336470213931
#>     Attrib V4    -0.6330960616795253
#>     Attrib V40    0.4164263863852508
#>     Attrib V41    0.23683481116472696
#>     Attrib V42    -0.18750179167109415
#>     Attrib V43    -0.6303599114974598
#>     Attrib V44    -0.4910316801299882
#>     Attrib V45    -0.7992104009605313
#>     Attrib V46    -0.595478817088763
#>     Attrib V47    0.16405757206842442
#>     Attrib V48    0.561780312276345
#>     Attrib V49    -0.6269254974669458
#>     Attrib V5    -0.3648540670953609
#>     Attrib V50    0.7837903784859104
#>     Attrib V51    -0.23661554118589456
#>     Attrib V52    -0.1451421020472462
#>     Attrib V53    -0.5103275370621435
#>     Attrib V54    -0.22829966364291468
#>     Attrib V55    1.0822731083460186
#>     Attrib V56    0.09502012460868922
#>     Attrib V57    -0.02173019407652302
#>     Attrib V58    -0.011862874799391444
#>     Attrib V59    -0.08767948981639616
#>     Attrib V6    0.08985066832344916
#>     Attrib V60    0.09182084022283041
#>     Attrib V7    0.6702111794843906
#>     Attrib V8    0.07979419637776743
#>     Attrib V9    -0.7770930930743783
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.3112162707179642
#>     Attrib V1    0.15632493345802545
#>     Attrib V10    0.1600748376065272
#>     Attrib V11    0.26480350394271346
#>     Attrib V12    0.16004328887549213
#>     Attrib V13    -0.135156453432792
#>     Attrib V14    -0.03898279854620622
#>     Attrib V15    0.11878658728227608
#>     Attrib V16    -0.07139405179931385
#>     Attrib V17    -0.020936748291224785
#>     Attrib V18    -0.13678320452285897
#>     Attrib V19    -0.03757195782804584
#>     Attrib V2    0.01659472360177308
#>     Attrib V20    0.23409022107636657
#>     Attrib V21    0.03156383039007263
#>     Attrib V22    0.037620314051575274
#>     Attrib V23    0.10143122895994479
#>     Attrib V24    0.21615934207219462
#>     Attrib V25    -0.10106244312583294
#>     Attrib V26    -0.36256624622591255
#>     Attrib V27    -0.26476343157856
#>     Attrib V28    0.05374606562258735
#>     Attrib V29    -0.08591868102895173
#>     Attrib V3    0.010604698071973251
#>     Attrib V30    -0.03305387456212424
#>     Attrib V31    -0.27309558164952885
#>     Attrib V32    0.060177626210288035
#>     Attrib V33    0.20266396085271426
#>     Attrib V34    -0.017853963900229062
#>     Attrib V35    -0.14787125374880422
#>     Attrib V36    -0.5851803175806329
#>     Attrib V37    -0.3909827420409351
#>     Attrib V38    0.051738650271145666
#>     Attrib V39    0.23275985265624397
#>     Attrib V4    0.29561792926376945
#>     Attrib V40    -0.05278227082906821
#>     Attrib V41    -0.04352983009154637
#>     Attrib V42    -0.02137259365455855
#>     Attrib V43    0.12390287423282619
#>     Attrib V44    -0.09767503680650721
#>     Attrib V45    0.15455540373291474
#>     Attrib V46    0.11800374485412773
#>     Attrib V47    -0.11703122930317401
#>     Attrib V48    -0.060740013264417955
#>     Attrib V49    0.2037328078048711
#>     Attrib V5    0.14745478566486592
#>     Attrib V50    -0.24411434965856824
#>     Attrib V51    0.025032569966875157
#>     Attrib V52    0.07128979571773092
#>     Attrib V53    0.2832323153111309
#>     Attrib V54    0.2129466470803384
#>     Attrib V55    -0.153218433257104
#>     Attrib V56    -0.011009551609275461
#>     Attrib V57    0.19592398391334814
#>     Attrib V58    0.28517388423826306
#>     Attrib V59    0.2864003765085964
#>     Attrib V6    0.010054919735022637
#>     Attrib V60    0.17414879082153395
#>     Attrib V7    -0.11029208987215475
#>     Attrib V8    0.006441777419934784
#>     Attrib V9    0.227701035789586
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.16025027974791978
#>     Attrib V1    0.17242125593759033
#>     Attrib V10    0.2369897089586429
#>     Attrib V11    0.20877835541220796
#>     Attrib V12    0.19582784918513216
#>     Attrib V13    0.02767283280462394
#>     Attrib V14    -0.01209195462508948
#>     Attrib V15    0.08486972245657183
#>     Attrib V16    -0.07607160191640477
#>     Attrib V17    -0.02491849004286358
#>     Attrib V18    -0.1452356616787098
#>     Attrib V19    -0.11360747160459526
#>     Attrib V2    0.04672998525748131
#>     Attrib V20    0.0012415433828031727
#>     Attrib V21    -0.09219445345182121
#>     Attrib V22    -0.12272765245476398
#>     Attrib V23    0.009080943263017503
#>     Attrib V24    0.06930813285199376
#>     Attrib V25    -0.047257780608261066
#>     Attrib V26    -0.12861591422956764
#>     Attrib V27    -0.05532598683488104
#>     Attrib V28    0.15663058875761057
#>     Attrib V29    -0.10661941150732107
#>     Attrib V3    0.004020057612296207
#>     Attrib V30    0.009154206350293527
#>     Attrib V31    -0.12296011337620767
#>     Attrib V32    0.028347200423488712
#>     Attrib V33    0.09948802245720188
#>     Attrib V34    -0.02283726967457928
#>     Attrib V35    -0.03737290452415295
#>     Attrib V36    -0.3711590932267345
#>     Attrib V37    -0.1933184762249844
#>     Attrib V38    0.0010796503907280774
#>     Attrib V39    0.17691853473799365
#>     Attrib V4    0.3146793916023562
#>     Attrib V40    -0.01924957111208522
#>     Attrib V41    -0.02354920270178839
#>     Attrib V42    -0.006878117331191694
#>     Attrib V43    0.0015725272152238643
#>     Attrib V44    -0.09192365627754119
#>     Attrib V45    0.1014673335607515
#>     Attrib V46    0.08380574877058758
#>     Attrib V47    -0.11086898601010045
#>     Attrib V48    0.035037145232528724
#>     Attrib V49    0.1467021698913313
#>     Attrib V5    0.11528635558164567
#>     Attrib V50    -0.1737752288346695
#>     Attrib V51    0.014506246092660062
#>     Attrib V52    0.08198404552554545
#>     Attrib V53    0.25759977972038717
#>     Attrib V54    0.16543828593639417
#>     Attrib V55    -0.10641139317801494
#>     Attrib V56    0.018331055032811232
#>     Attrib V57    0.14948854990495158
#>     Attrib V58    0.2727485964802768
#>     Attrib V59    0.28425068140911275
#>     Attrib V6    0.015533308532802036
#>     Attrib V60    0.2293746198651787
#>     Attrib V7    -0.08891111004234319
#>     Attrib V8    -0.03694064194241658
#>     Attrib V9    0.1676784735083275
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.4160404373152316
#>     Attrib V1    0.4003943653723105
#>     Attrib V10    0.08218662491602627
#>     Attrib V11    0.1558865428416026
#>     Attrib V12    -0.13287292699490572
#>     Attrib V13    -0.5167917873306985
#>     Attrib V14    -0.167632702560555
#>     Attrib V15    0.25704709196495146
#>     Attrib V16    0.11207927652221306
#>     Attrib V17    0.2260651395499626
#>     Attrib V18    -0.049085080806223154
#>     Attrib V19    0.11668670189218608
#>     Attrib V2    -0.005698657472043511
#>     Attrib V20    0.5953603640574047
#>     Attrib V21    0.25298037525956923
#>     Attrib V22    0.24588038135151502
#>     Attrib V23    0.26783530508023046
#>     Attrib V24    0.23808238595519926
#>     Attrib V25    -0.4154983418393917
#>     Attrib V26    -0.8056604406729915
#>     Attrib V27    -0.8667941309129767
#>     Attrib V28    -0.2746202850315775
#>     Attrib V29    -0.3902902134490043
#>     Attrib V3    -0.05126562609232737
#>     Attrib V30    0.020774129827791643
#>     Attrib V31    -0.48341802304253445
#>     Attrib V32    0.061174605800148454
#>     Attrib V33    0.4968840764454575
#>     Attrib V34    0.006286537772719228
#>     Attrib V35    -0.2976381551704965
#>     Attrib V36    -0.8674011591260428
#>     Attrib V37    -0.7840866592067662
#>     Attrib V38    0.2434734721316673
#>     Attrib V39    0.40383714823690675
#>     Attrib V4    0.5510045108010506
#>     Attrib V40    -0.1185520625794795
#>     Attrib V41    -0.21591780790049103
#>     Attrib V42    0.13246921316692034
#>     Attrib V43    0.34633815843341786
#>     Attrib V44    0.08333836099136693
#>     Attrib V45    0.04724369311825571
#>     Attrib V46    0.09469493542295412
#>     Attrib V47    -0.24216266176114443
#>     Attrib V48    -0.09234053816748326
#>     Attrib V49    0.39448140169668233
#>     Attrib V5    0.182527366144303
#>     Attrib V50    -0.3052180829271968
#>     Attrib V51    -0.032146664111253026
#>     Attrib V52    -0.17216890102826743
#>     Attrib V53    0.5019711398349558
#>     Attrib V54    0.6736642413702377
#>     Attrib V55    -0.40256521222025154
#>     Attrib V56    0.07054799452843458
#>     Attrib V57    0.3842559197530248
#>     Attrib V58    0.5311496312982696
#>     Attrib V59    0.7598155215579004
#>     Attrib V6    -0.030792409020065893
#>     Attrib V60    0.2785926987346938
#>     Attrib V7    -0.07181598197851531
#>     Attrib V8    0.07631278541113752
#>     Attrib V9    0.2891754190480125
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.24130952946787734
#>     Attrib V1    0.22316896834953656
#>     Attrib V10    0.08938096928969226
#>     Attrib V11    0.15529177418379467
#>     Attrib V12    0.031616281518992206
#>     Attrib V13    -0.24931507983086643
#>     Attrib V14    -0.04681394399649562
#>     Attrib V15    0.13497004695577042
#>     Attrib V16    0.02787558339731814
#>     Attrib V17    0.03744356704700551
#>     Attrib V18    -0.021442049970659165
#>     Attrib V19    -0.006115340834227988
#>     Attrib V2    -0.03928452878719504
#>     Attrib V20    0.2642636673734014
#>     Attrib V21    0.08060210899879403
#>     Attrib V22    0.024115197912484065
#>     Attrib V23    0.14669058228277337
#>     Attrib V24    0.10937013657596656
#>     Attrib V25    -0.26662989207055837
#>     Attrib V26    -0.44047341964208037
#>     Attrib V27    -0.3835291809231841
#>     Attrib V28    -0.02584770257726933
#>     Attrib V29    -0.19264421371130394
#>     Attrib V3    0.008566865102821715
#>     Attrib V30    0.03240808274754097
#>     Attrib V31    -0.32119065534404995
#>     Attrib V32    0.043566711147747524
#>     Attrib V33    0.2579072519815094
#>     Attrib V34    0.004212586577862975
#>     Attrib V35    -0.1411747855711961
#>     Attrib V36    -0.47243294559004917
#>     Attrib V37    -0.4123508637463521
#>     Attrib V38    0.04529918196152014
#>     Attrib V39    0.22707184239283446
#>     Attrib V4    0.31820626427406873
#>     Attrib V40    -0.1105748159027173
#>     Attrib V41    -0.13143838299336927
#>     Attrib V42    0.039113036131147715
#>     Attrib V43    0.07322852508869541
#>     Attrib V44    0.015087500589529278
#>     Attrib V45    0.14188980975010765
#>     Attrib V46    0.0903412629691498
#>     Attrib V47    -0.1566161066596214
#>     Attrib V48    -0.08148766946014178
#>     Attrib V49    0.26736880961372583
#>     Attrib V5    0.16363649853024856
#>     Attrib V50    -0.25504102094363945
#>     Attrib V51    0.02563230795205609
#>     Attrib V52    0.041545268914762144
#>     Attrib V53    0.28686844278492246
#>     Attrib V54    0.21933107473827482
#>     Attrib V55    -0.2240633680670932
#>     Attrib V56    -0.006537965217939389
#>     Attrib V57    0.19994162061337878
#>     Attrib V58    0.3804894177648528
#>     Attrib V59    0.34015172308116887
#>     Attrib V6    0.02278805275728863
#>     Attrib V60    0.15781686902477518
#>     Attrib V7    -0.06993158239121955
#>     Attrib V8    0.04030921567212221
#>     Attrib V9    0.22575002223832105
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
