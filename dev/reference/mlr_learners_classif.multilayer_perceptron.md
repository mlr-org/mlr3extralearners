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
#>     Threshold    0.2949234069554034
#>     Node 2    2.1528540149234496
#>     Node 3    0.5228225631736735
#>     Node 4    0.22684039725926472
#>     Node 5    -2.986391932640725
#>     Node 6    0.9406740755547279
#>     Node 7    3.644472636930742
#>     Node 8    0.36945098217812283
#>     Node 9    3.4574133006150727
#>     Node 10    -2.3835044063759923
#>     Node 11    0.47680998694527593
#>     Node 12    1.0494425388043735
#>     Node 13    1.3427390687449987
#>     Node 14    0.9106032169955847
#>     Node 15    -2.6857249019997216
#>     Node 16    -0.32776649421221926
#>     Node 17    -0.08616242689622104
#>     Node 18    0.6708790288696032
#>     Node 19    1.7115041060776397
#>     Node 20    2.141199524927196
#>     Node 21    -1.7102119067377322
#>     Node 22    0.5814212357026451
#>     Node 23    1.9852894384660782
#>     Node 24    -1.3354157201557937
#>     Node 25    4.412198278799139
#>     Node 26    -0.1243967899874986
#>     Node 27    1.744222114823645
#>     Node 28    -2.953847119563847
#>     Node 29    0.6712008850091956
#>     Node 30    0.711335583784278
#>     Node 31    0.6017511216041791
#>     Node 32    0.5958660263378883
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.27234039504559676
#>     Node 2    -2.1922924454639654
#>     Node 3    -0.5052184068970379
#>     Node 4    -0.18534071492125195
#>     Node 5    3.0002121960181047
#>     Node 6    -0.9153048492162502
#>     Node 7    -3.649027086398576
#>     Node 8    -0.401521689747509
#>     Node 9    -3.4657755174739036
#>     Node 10    2.324535502311327
#>     Node 11    -0.4415724318797383
#>     Node 12    -1.1226781028489894
#>     Node 13    -1.2832317363868564
#>     Node 14    -0.8396227607752731
#>     Node 15    2.677520004302918
#>     Node 16    0.3112068873745537
#>     Node 17    0.11929966006293546
#>     Node 18    -0.6302340402196833
#>     Node 19    -1.7014530900215408
#>     Node 20    -2.140115927031965
#>     Node 21    1.7673499009568747
#>     Node 22    -0.632375678312183
#>     Node 23    -2.030265450988163
#>     Node 24    1.3207553704194945
#>     Node 25    -4.409884640462334
#>     Node 26    0.04013033137963872
#>     Node 27    -1.7774014339028752
#>     Node 28    2.9250103852913543
#>     Node 29    -0.7020956687973653
#>     Node 30    -0.6370737135783849
#>     Node 31    -0.544658429419392
#>     Node 32    -0.6124001110248679
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.14305723597733638
#>     Attrib V1    0.3864430087591956
#>     Attrib V10    -0.047814518100188184
#>     Attrib V11    0.01827864818994632
#>     Attrib V12    -0.11858509619276056
#>     Attrib V13    -0.23632751006923247
#>     Attrib V14    -0.29199986586884635
#>     Attrib V15    0.3013927709421614
#>     Attrib V16    -0.005304253870212083
#>     Attrib V17    0.3111953732842747
#>     Attrib V18    0.17392041804946715
#>     Attrib V19    0.20886105550916143
#>     Attrib V2    0.0788731065339473
#>     Attrib V20    0.501078851389918
#>     Attrib V21    0.5660217184126806
#>     Attrib V22    0.27512302951568635
#>     Attrib V23    0.061566660026950305
#>     Attrib V24    0.22523333033778264
#>     Attrib V25    -0.5494860384796724
#>     Attrib V26    -0.9678026579946969
#>     Attrib V27    -0.7566624601307531
#>     Attrib V28    -0.4420419700612106
#>     Attrib V29    -0.8526824665951063
#>     Attrib V3    0.15976051369898597
#>     Attrib V30    -0.00190923223841793
#>     Attrib V31    -1.0330069556940318
#>     Attrib V32    0.021352158165503194
#>     Attrib V33    0.3856806505510632
#>     Attrib V34    -0.357925772990003
#>     Attrib V35    -0.30994726919036797
#>     Attrib V36    -0.9734470986119333
#>     Attrib V37    -1.1368800789234512
#>     Attrib V38    0.6003766770906928
#>     Attrib V39    0.37132513094323505
#>     Attrib V4    0.14766607204899235
#>     Attrib V40    -0.3999024576409109
#>     Attrib V41    -0.2866836630879115
#>     Attrib V42    0.5005817975381501
#>     Attrib V43    0.6501099410213248
#>     Attrib V44    0.16504119724644842
#>     Attrib V45    0.4383350718546952
#>     Attrib V46    0.36819370276884855
#>     Attrib V47    -0.2609108044353268
#>     Attrib V48    0.25218328327404244
#>     Attrib V49    0.47600047520684163
#>     Attrib V5    0.3069902148881642
#>     Attrib V50    -0.7271044186135505
#>     Attrib V51    -0.5100167520195418
#>     Attrib V52    -0.035982202627943535
#>     Attrib V53    -0.14684064842528374
#>     Attrib V54    0.5615345770793938
#>     Attrib V55    0.051354923608434085
#>     Attrib V56    0.15855037404300787
#>     Attrib V57    0.6940511046108371
#>     Attrib V58    0.7312753310458712
#>     Attrib V59    0.3329158188937742
#>     Attrib V6    -0.16450628913597853
#>     Attrib V60    -0.16198823260383455
#>     Attrib V7    0.38917735447128615
#>     Attrib V8    -0.20863781661165534
#>     Attrib V9    0.5539891808019721
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.05387840230928112
#>     Attrib V1    0.03962618409709959
#>     Attrib V10    0.06464943711483045
#>     Attrib V11    0.04723296578882777
#>     Attrib V12    0.06680815075267385
#>     Attrib V13    0.03961786063579586
#>     Attrib V14    -0.018023234015732432
#>     Attrib V15    0.13723384210686287
#>     Attrib V16    -0.0585901756753727
#>     Attrib V17    0.018480297861184842
#>     Attrib V18    -0.016137745109958482
#>     Attrib V19    0.054804191886144604
#>     Attrib V2    0.12031611320211669
#>     Attrib V20    0.029549296628898374
#>     Attrib V21    -0.014851222940106577
#>     Attrib V22    -0.01310726832408836
#>     Attrib V23    -0.07985409776504916
#>     Attrib V24    -0.0298808965787081
#>     Attrib V25    -0.12000506094700832
#>     Attrib V26    -0.1661336859144946
#>     Attrib V27    -0.05056881286983145
#>     Attrib V28    0.05239519339088555
#>     Attrib V29    -0.11510160146443776
#>     Attrib V3    0.11114335581467363
#>     Attrib V30    0.15230326117093337
#>     Attrib V31    -0.16058570547127843
#>     Attrib V32    0.04180207249049797
#>     Attrib V33    0.12514932933533332
#>     Attrib V34    -0.03513495567883889
#>     Attrib V35    0.07197827705801256
#>     Attrib V36    -0.15217249053050522
#>     Attrib V37    -0.15259636526417583
#>     Attrib V38    0.13757224194611625
#>     Attrib V39    0.12382961314535858
#>     Attrib V4    0.10107833197662888
#>     Attrib V40    -0.04488311568619625
#>     Attrib V41    -0.029947678727943097
#>     Attrib V42    0.023073997179651837
#>     Attrib V43    0.09969582421228221
#>     Attrib V44    0.06711468839482557
#>     Attrib V45    0.1394904795071551
#>     Attrib V46    0.10911648440735337
#>     Attrib V47    -0.0284929009120501
#>     Attrib V48    0.028457678341594572
#>     Attrib V49    0.11657978432187759
#>     Attrib V5    0.11012873162771618
#>     Attrib V50    -0.17570365617911973
#>     Attrib V51    -0.15370793787375273
#>     Attrib V52    0.06343526823938948
#>     Attrib V53    0.047818587225461166
#>     Attrib V54    0.1932433975469433
#>     Attrib V55    0.11575583504415655
#>     Attrib V56    0.05486212269887804
#>     Attrib V57    0.20862518753490766
#>     Attrib V58    0.22020978972058697
#>     Attrib V59    0.06621482103943567
#>     Attrib V6    -0.08983356516792576
#>     Attrib V60    -0.07927466253411646
#>     Attrib V7    0.013187154493591499
#>     Attrib V8    -0.05565917282877499
#>     Attrib V9    0.17182001376364447
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.17009372270666773
#>     Attrib V1    0.011041664035197058
#>     Attrib V10    0.029175803743653753
#>     Attrib V11    -2.833575644079987E-5
#>     Attrib V12    0.005429121630419978
#>     Attrib V13    0.03973439967020523
#>     Attrib V14    0.06252211031204626
#>     Attrib V15    0.0749469953015147
#>     Attrib V16    -0.017146329353009995
#>     Attrib V17    0.02701663308909942
#>     Attrib V18    -0.003053436163522295
#>     Attrib V19    -0.003837514588438586
#>     Attrib V2    0.06552198530698582
#>     Attrib V20    -0.024380437141426112
#>     Attrib V21    -0.016846631849056055
#>     Attrib V22    -0.07301525963745739
#>     Attrib V23    -0.03888795577863892
#>     Attrib V24    -0.06106355808296266
#>     Attrib V25    -0.0768536086385329
#>     Attrib V26    -0.05521865009664135
#>     Attrib V27    -0.05319361866329312
#>     Attrib V28    0.055890634735640314
#>     Attrib V29    0.020635501941786902
#>     Attrib V3    0.13306964502970656
#>     Attrib V30    0.03908156335488687
#>     Attrib V31    -0.015743317750640178
#>     Attrib V32    0.004132730085011431
#>     Attrib V33    0.08326022970870746
#>     Attrib V34    0.09228523777568236
#>     Attrib V35    0.13503753846932567
#>     Attrib V36    0.07619926979691162
#>     Attrib V37    0.08171426970290559
#>     Attrib V38    0.08321816298148932
#>     Attrib V39    0.10682136398803796
#>     Attrib V4    0.06857936262153148
#>     Attrib V40    0.08897658406431319
#>     Attrib V41    0.038120116663159856
#>     Attrib V42    0.05501544537453153
#>     Attrib V43    0.028716048096224696
#>     Attrib V44    0.06680312365733486
#>     Attrib V45    0.11959093836732518
#>     Attrib V46    0.027311137854148505
#>     Attrib V47    0.0026765984006616303
#>     Attrib V48    0.03662741142117058
#>     Attrib V49    0.08907768272652522
#>     Attrib V5    0.11984739318680941
#>     Attrib V50    0.029662309756838284
#>     Attrib V51    0.026247679818591576
#>     Attrib V52    0.007733385750918084
#>     Attrib V53    0.09884222995113534
#>     Attrib V54    0.0022612983092654424
#>     Attrib V55    0.03465973127115679
#>     Attrib V56    0.08243632283833319
#>     Attrib V57    0.11357263741522369
#>     Attrib V58    0.06681548286417159
#>     Attrib V59    0.04295157744629872
#>     Attrib V6    0.006141223331522638
#>     Attrib V60    -0.014384165412284605
#>     Attrib V7    0.05626869229340953
#>     Attrib V8    -0.022800865723516604
#>     Attrib V9    0.10354436199476391
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.9068986731083702
#>     Attrib V1    0.06242426359594812
#>     Attrib V10    -0.5147380537470688
#>     Attrib V11    -0.7319141707785777
#>     Attrib V12    -0.7131207748097018
#>     Attrib V13    -0.1890505738229934
#>     Attrib V14    1.0521916275495578
#>     Attrib V15    -0.2878093450391205
#>     Attrib V16    0.6418079600238651
#>     Attrib V17    0.5356381198567539
#>     Attrib V18    0.7082703131124418
#>     Attrib V19    -0.042344656755368644
#>     Attrib V2    -0.05122990340931719
#>     Attrib V20    -0.28415469397134174
#>     Attrib V21    -0.34916559921025103
#>     Attrib V22    -0.6663373458109071
#>     Attrib V23    -0.7457592304704874
#>     Attrib V24    -1.0870957014700209
#>     Attrib V25    0.5492251234599723
#>     Attrib V26    0.9246263825459634
#>     Attrib V27    0.35275109069842553
#>     Attrib V28    -0.347375872778846
#>     Attrib V29    0.6311649468799554
#>     Attrib V3    0.040544306188730256
#>     Attrib V30    -0.2424750357817602
#>     Attrib V31    1.154968199423171
#>     Attrib V32    -0.4026837655020921
#>     Attrib V33    -0.24267787994685563
#>     Attrib V34    0.313859298774482
#>     Attrib V35    0.25318700638836106
#>     Attrib V36    2.182064394650778
#>     Attrib V37    2.009948001567238
#>     Attrib V38    -0.0535227005453063
#>     Attrib V39    -0.04184405720264438
#>     Attrib V4    0.051458004154416974
#>     Attrib V40    0.5972066435842073
#>     Attrib V41    -0.10655523937703641
#>     Attrib V42    -0.3096092068470185
#>     Attrib V43    -0.3462985988637615
#>     Attrib V44    0.5631324773383017
#>     Attrib V45    -0.1491503173802376
#>     Attrib V46    -0.7121296337276705
#>     Attrib V47    0.2721473848476221
#>     Attrib V48    -0.3660292858732203
#>     Attrib V49    -0.6608648226849893
#>     Attrib V5    -0.5695550845922315
#>     Attrib V50    2.011341834493552
#>     Attrib V51    0.33438154450233576
#>     Attrib V52    -1.3610693464314922
#>     Attrib V53    -0.43981922447683713
#>     Attrib V54    -0.6993946276810936
#>     Attrib V55    0.1361245933614555
#>     Attrib V56    -0.0018195913138929732
#>     Attrib V57    -0.4900864351037839
#>     Attrib V58    -1.2682194692081543
#>     Attrib V59    -0.4285166544411515
#>     Attrib V6    -0.05162772029243943
#>     Attrib V60    0.05122644644780187
#>     Attrib V7    -0.1331815932148929
#>     Attrib V8    0.951317248375544
#>     Attrib V9    -1.2161042113678575
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.08011424186581789
#>     Attrib V1    0.16759716372179032
#>     Attrib V10    -0.0017435769722899874
#>     Attrib V11    0.053924713532541975
#>     Attrib V12    0.03507581993818107
#>     Attrib V13    -0.10553964146594388
#>     Attrib V14    -0.15074571627177175
#>     Attrib V15    0.16073996046371522
#>     Attrib V16    0.03805578486121829
#>     Attrib V17    0.12577634662291146
#>     Attrib V18    0.13799137840314685
#>     Attrib V19    0.12309210138721266
#>     Attrib V2    0.104100042398584
#>     Attrib V20    0.22218012140190546
#>     Attrib V21    0.2563012475999201
#>     Attrib V22    0.10866236690780208
#>     Attrib V23    -0.0042952139210088
#>     Attrib V24    0.11909882610431767
#>     Attrib V25    -0.21843991309711885
#>     Attrib V26    -0.42601120101619183
#>     Attrib V27    -0.2663639961574695
#>     Attrib V28    -0.19649092082235114
#>     Attrib V29    -0.35373052210798556
#>     Attrib V3    0.09670934972438507
#>     Attrib V30    0.07640520954016682
#>     Attrib V31    -0.45494699035631486
#>     Attrib V32    0.0050361471159386054
#>     Attrib V33    0.18748354581944707
#>     Attrib V34    -0.14296447747139213
#>     Attrib V35    -0.03512027351085789
#>     Attrib V36    -0.4466374011305603
#>     Attrib V37    -0.4527329824893107
#>     Attrib V38    0.29598006626923556
#>     Attrib V39    0.16961048690779015
#>     Attrib V4    0.14084799254583077
#>     Attrib V40    -0.22010577556018288
#>     Attrib V41    -0.09417514498147024
#>     Attrib V42    0.15012904932535542
#>     Attrib V43    0.2384117886761243
#>     Attrib V44    0.05633131390398997
#>     Attrib V45    0.2656812360582164
#>     Attrib V46    0.22372048841777903
#>     Attrib V47    -0.13359717326725687
#>     Attrib V48    0.0677607232032483
#>     Attrib V49    0.22938698904478494
#>     Attrib V5    0.17397991667661122
#>     Attrib V50    -0.3206656722884203
#>     Attrib V51    -0.23733764063750382
#>     Attrib V52    -0.014225601685018517
#>     Attrib V53    0.06615353874120905
#>     Attrib V54    0.2717807062942
#>     Attrib V55    0.050911695321744506
#>     Attrib V56    0.06479031409014549
#>     Attrib V57    0.3556565382216537
#>     Attrib V58    0.3581088379662996
#>     Attrib V59    0.16556352279757525
#>     Attrib V6    -0.04330077647022688
#>     Attrib V60    -0.051940879260846756
#>     Attrib V7    0.16370230696078455
#>     Attrib V8    -0.12195493880193249
#>     Attrib V9    0.37701818630206685
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5731068273173207
#>     Attrib V1    -0.1889102431542141
#>     Attrib V10    1.1057459735776607
#>     Attrib V11    1.292514768102562
#>     Attrib V12    1.5464863947192222
#>     Attrib V13    1.0111886757078645
#>     Attrib V14    -0.5820266379282885
#>     Attrib V15    -0.05915063865781837
#>     Attrib V16    -0.8165541528333451
#>     Attrib V17    -0.6402711900551472
#>     Attrib V18    -0.17814461131317808
#>     Attrib V19    0.22686369628067418
#>     Attrib V2    0.4888133443449991
#>     Attrib V20    0.10108561516649092
#>     Attrib V21    0.3305042490399048
#>     Attrib V22    0.6611160276703678
#>     Attrib V23    0.8023020257747515
#>     Attrib V24    1.0473478375634409
#>     Attrib V25    0.384667579660501
#>     Attrib V26    0.7631485862770674
#>     Attrib V27    1.2710269141603907
#>     Attrib V28    1.627776632678425
#>     Attrib V29    0.9807805339755774
#>     Attrib V3    0.3106468265094123
#>     Attrib V30    0.6969742701158842
#>     Attrib V31    -0.7030833585481293
#>     Attrib V32    -0.031426147942987
#>     Attrib V33    -0.3477527856623339
#>     Attrib V34    -0.09683410788128088
#>     Attrib V35    0.6323025694536838
#>     Attrib V36    -0.9711114604362546
#>     Attrib V37    -0.2843848397358526
#>     Attrib V38    0.1296769648001655
#>     Attrib V39    0.11235105304642759
#>     Attrib V4    0.2926211078140911
#>     Attrib V40    0.22230253119298113
#>     Attrib V41    1.1806729354293248
#>     Attrib V42    0.1403934132929722
#>     Attrib V43    0.33714847179130253
#>     Attrib V44    -0.03501498531409447
#>     Attrib V45    0.37827866278088146
#>     Attrib V46    1.0547537979425938
#>     Attrib V47    0.29299221476123744
#>     Attrib V48    0.4205098111685566
#>     Attrib V49    0.7077285032688919
#>     Attrib V5    0.93844912236321
#>     Attrib V50    -1.090189514473154
#>     Attrib V51    0.0029623881105793836
#>     Attrib V52    1.2287390740428754
#>     Attrib V53    1.3449156096650827
#>     Attrib V54    0.24416546341846296
#>     Attrib V55    -0.8041366764701158
#>     Attrib V56    -0.337177809934371
#>     Attrib V57    -0.2754661590435364
#>     Attrib V58    0.014206241846923933
#>     Attrib V59    -0.12151280357566516
#>     Attrib V6    0.09970222167609875
#>     Attrib V60    0.02097337069183707
#>     Attrib V7    -0.2764993708723059
#>     Attrib V8    -1.1676652809538834
#>     Attrib V9    1.2733070345499053
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.0483024252399292
#>     Attrib V1    -2.1664244106839317E-4
#>     Attrib V10    0.07506621135334866
#>     Attrib V11    0.06287513855657956
#>     Attrib V12    0.020495671601244797
#>     Attrib V13    0.02836250698906639
#>     Attrib V14    -0.07062586449533542
#>     Attrib V15    0.010346517810010135
#>     Attrib V16    0.007023000518259053
#>     Attrib V17    0.013307169542504015
#>     Attrib V18    -0.024730169882005076
#>     Attrib V19    0.018179322451558188
#>     Attrib V2    0.09969396812519862
#>     Attrib V20    -0.0686570779111558
#>     Attrib V21    -0.06109399515318367
#>     Attrib V22    -0.06573628521250756
#>     Attrib V23    -0.04100685364178785
#>     Attrib V24    0.03246030306107223
#>     Attrib V25    -0.04805317724993454
#>     Attrib V26    -0.04227256178683659
#>     Attrib V27    0.010970927982400798
#>     Attrib V28    0.08870313060103548
#>     Attrib V29    0.019542073723583304
#>     Attrib V3    0.09809294378748462
#>     Attrib V30    0.11851529733147921
#>     Attrib V31    -0.0631727573277251
#>     Attrib V32    0.02842800007814692
#>     Attrib V33    0.10578054240499654
#>     Attrib V34    0.07014683765838313
#>     Attrib V35    0.15078332637219094
#>     Attrib V36    0.09150715195318859
#>     Attrib V37    0.060012450141726154
#>     Attrib V38    0.213136864652681
#>     Attrib V39    0.0932844589844724
#>     Attrib V4    0.13015196928821154
#>     Attrib V40    0.01508393046087147
#>     Attrib V41    0.02440617582050401
#>     Attrib V42    -0.05981685964038231
#>     Attrib V43    0.04897817336104826
#>     Attrib V44    0.10129276231702376
#>     Attrib V45    0.13568186435821028
#>     Attrib V46    0.11955885360356786
#>     Attrib V47    0.003781371268575196
#>     Attrib V48    0.05789896335358197
#>     Attrib V49    0.11501437318379562
#>     Attrib V5    0.09402509064035369
#>     Attrib V50    -0.11920423555795986
#>     Attrib V51    -0.07809292606197712
#>     Attrib V52    0.018950810175666057
#>     Attrib V53    0.1269761384849556
#>     Attrib V54    0.06298266887113385
#>     Attrib V55    -0.013113352504956096
#>     Attrib V56    -0.0010948862993224347
#>     Attrib V57    0.13859099281644674
#>     Attrib V58    0.06152129090857473
#>     Attrib V59    0.03814993517607017
#>     Attrib V6    -0.02193717837559077
#>     Attrib V60    -0.005652896355403041
#>     Attrib V7    0.06998663259768408
#>     Attrib V8    -0.06091224360431421
#>     Attrib V9    0.1534054355938344
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.40011931740721207
#>     Attrib V1    -0.3806427447264425
#>     Attrib V10    1.2017278370097217
#>     Attrib V11    1.2261853554433735
#>     Attrib V12    1.6242648929369483
#>     Attrib V13    1.054694702604843
#>     Attrib V14    -0.7271273651256018
#>     Attrib V15    -0.18200715528867684
#>     Attrib V16    -0.8489595399079723
#>     Attrib V17    -0.538181084932351
#>     Attrib V18    -0.12127320276901503
#>     Attrib V19    0.23050085635297138
#>     Attrib V2    0.3683751552034026
#>     Attrib V20    -0.03401953038745038
#>     Attrib V21    0.16118452306064862
#>     Attrib V22    0.6245269689815088
#>     Attrib V23    0.8128418404412895
#>     Attrib V24    1.2351928793008684
#>     Attrib V25    0.6763355990559949
#>     Attrib V26    0.8042012928326449
#>     Attrib V27    1.1266289411684958
#>     Attrib V28    1.238888894058148
#>     Attrib V29    0.33203227372382
#>     Attrib V3    0.2486969057012712
#>     Attrib V30    0.47598255194108174
#>     Attrib V31    -0.6292786481677307
#>     Attrib V32    0.02980769023616585
#>     Attrib V33    -0.19407411175676234
#>     Attrib V34    0.12192890222355311
#>     Attrib V35    0.7294349158916956
#>     Attrib V36    -0.912567314232636
#>     Attrib V37    -0.4614962159611181
#>     Attrib V38    0.1266756884336739
#>     Attrib V39    0.07314027904464834
#>     Attrib V4    0.21827975555165074
#>     Attrib V40    0.1112945904859138
#>     Attrib V41    0.9552646275893562
#>     Attrib V42    -0.046858170908170155
#>     Attrib V43    0.3534056352635515
#>     Attrib V44    -0.046483847210177565
#>     Attrib V45    0.37975017336826256
#>     Attrib V46    1.0363803751009644
#>     Attrib V47    0.3136719898956826
#>     Attrib V48    0.4742124396639733
#>     Attrib V49    0.7412635036851591
#>     Attrib V5    0.8276985785042716
#>     Attrib V50    -1.1147022056626423
#>     Attrib V51    0.00948447417287127
#>     Attrib V52    1.089292039724871
#>     Attrib V53    1.3346676251294434
#>     Attrib V54    0.25975948000460064
#>     Attrib V55    -0.6966573496273484
#>     Attrib V56    -0.2767373884368705
#>     Attrib V57    -0.38837012387219166
#>     Attrib V58    -0.10337993186065957
#>     Attrib V59    -0.2413446184262247
#>     Attrib V6    0.08076707001094297
#>     Attrib V60    -0.06515181114480274
#>     Attrib V7    -0.14782401334728493
#>     Attrib V8    -1.1171995750181016
#>     Attrib V9    1.296651968060817
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.6826702875920971
#>     Attrib V1    0.09778346347490194
#>     Attrib V10    -0.5807485549456374
#>     Attrib V11    -0.5963504193610216
#>     Attrib V12    -0.527685094669962
#>     Attrib V13    -0.14327710746177996
#>     Attrib V14    0.7642390877329456
#>     Attrib V15    -0.31055328470300997
#>     Attrib V16    0.40209620984347116
#>     Attrib V17    0.1607189179315541
#>     Attrib V18    0.21488687245618837
#>     Attrib V19    -0.07622238206590484
#>     Attrib V2    -0.13384304007410947
#>     Attrib V20    -0.07785121853410848
#>     Attrib V21    -0.34282912316784175
#>     Attrib V22    -0.46401951890458465
#>     Attrib V23    0.048821057074152255
#>     Attrib V24    -0.40740651112755294
#>     Attrib V25    0.3619206674725359
#>     Attrib V26    0.7070111557427351
#>     Attrib V27    0.3162522156603653
#>     Attrib V28    -0.021043495949706476
#>     Attrib V29    0.6425235953325281
#>     Attrib V3    0.10592759704771175
#>     Attrib V30    -0.27244017298175316
#>     Attrib V31    0.614168024926849
#>     Attrib V32    -0.8192052322691789
#>     Attrib V33    -0.5883970755895724
#>     Attrib V34    0.29006148678605226
#>     Attrib V35    0.2819518119973709
#>     Attrib V36    1.6969725291055702
#>     Attrib V37    1.5838734901640037
#>     Attrib V38    -0.13540214652833218
#>     Attrib V39    -0.08770462820816176
#>     Attrib V4    0.05823416524756311
#>     Attrib V40    0.43585355193653386
#>     Attrib V41    0.017316449262615295
#>     Attrib V42    -0.47027344397124143
#>     Attrib V43    -0.49751866640640785
#>     Attrib V44    0.24953414243399089
#>     Attrib V45    -0.2333219858378664
#>     Attrib V46    -0.656324733262802
#>     Attrib V47    0.0706571807937923
#>     Attrib V48    -0.6879960265601393
#>     Attrib V49    -0.7761107424746289
#>     Attrib V5    -0.3552404206560557
#>     Attrib V50    1.4447018817909336
#>     Attrib V51    0.4977505434031522
#>     Attrib V52    -0.4366707530552376
#>     Attrib V53    -0.021435270511233173
#>     Attrib V54    -0.7503831783133807
#>     Attrib V55    0.0973929937576993
#>     Attrib V56    0.0780142794601097
#>     Attrib V57    -0.45742984923334323
#>     Attrib V58    -0.6376151221981265
#>     Attrib V59    -0.041941299317161035
#>     Attrib V6    0.17033950635171097
#>     Attrib V60    0.24019383766722513
#>     Attrib V7    -0.22356285175166615
#>     Attrib V8    0.6825269003048584
#>     Attrib V9    -1.1316077221550846
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.06701132415086747
#>     Attrib V1    -0.01472694851888764
#>     Attrib V10    0.048347513869475674
#>     Attrib V11    0.06043216881989747
#>     Attrib V12    0.09271022246307298
#>     Attrib V13    -0.03444017096102827
#>     Attrib V14    -0.08226567559491849
#>     Attrib V15    0.01051337443850305
#>     Attrib V16    -0.0560911602337696
#>     Attrib V17    0.06523655918008299
#>     Attrib V18    0.034236392255147366
#>     Attrib V19    8.072634760540368E-4
#>     Attrib V2    0.04099781515859431
#>     Attrib V20    0.016180824603404587
#>     Attrib V21    -0.06819229514383356
#>     Attrib V22    -0.087915900627898
#>     Attrib V23    -0.07379033732380617
#>     Attrib V24    -0.015968037081891956
#>     Attrib V25    -0.05948121527453549
#>     Attrib V26    -0.13038276226721104
#>     Attrib V27    -0.0023155184594634563
#>     Attrib V28    0.10209271867327376
#>     Attrib V29    -0.026194606772391636
#>     Attrib V3    0.04312084190503168
#>     Attrib V30    0.14230538401807988
#>     Attrib V31    -0.1489383447645158
#>     Attrib V32    -0.006366635089037202
#>     Attrib V33    0.09572908606689924
#>     Attrib V34    0.11991979568214463
#>     Attrib V35    0.2054845530430307
#>     Attrib V36    0.01864633595806681
#>     Attrib V37    -0.019232353790540783
#>     Attrib V38    0.2491807861000968
#>     Attrib V39    0.10529841173185649
#>     Attrib V4    0.06996891630653397
#>     Attrib V40    -0.03423292743149554
#>     Attrib V41    -0.05406847403010038
#>     Attrib V42    -0.007629737040058306
#>     Attrib V43    0.08032412691160447
#>     Attrib V44    0.10392921759523115
#>     Attrib V45    0.20969749476129945
#>     Attrib V46    0.10859204409926138
#>     Attrib V47    -0.011593800432565266
#>     Attrib V48    0.054427748069935104
#>     Attrib V49    0.10420515147001355
#>     Attrib V5    0.14245182686822486
#>     Attrib V50    -0.11987199777412752
#>     Attrib V51    -0.054332915667578655
#>     Attrib V52    -0.006150465066776057
#>     Attrib V53    0.06443835225881252
#>     Attrib V54    0.1294348907032963
#>     Attrib V55    0.029453202693266727
#>     Attrib V56    0.03742805999780399
#>     Attrib V57    0.13673203724569152
#>     Attrib V58    0.12085157075260158
#>     Attrib V59    -0.04541611255405866
#>     Attrib V6    6.06255948864434E-4
#>     Attrib V60    -0.08500927915707467
#>     Attrib V7    0.024129446419315824
#>     Attrib V8    -0.04253192089482362
#>     Attrib V9    0.1948129176748554
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.1059207318542151
#>     Attrib V1    0.12121355635042876
#>     Attrib V10    -0.04482003392555381
#>     Attrib V11    0.08533960847749689
#>     Attrib V12    -0.06415595588652102
#>     Attrib V13    -0.08667869810650965
#>     Attrib V14    -0.11406982695034305
#>     Attrib V15    0.19158993871468968
#>     Attrib V16    0.033580658025856185
#>     Attrib V17    0.17546640502758407
#>     Attrib V18    0.12542474913813484
#>     Attrib V19    0.19968442433632508
#>     Attrib V2    0.12600059629370192
#>     Attrib V20    0.21691912096749008
#>     Attrib V21    0.25354799266951994
#>     Attrib V22    0.16608030597667522
#>     Attrib V23    -0.01653275043818209
#>     Attrib V24    0.023739358468810867
#>     Attrib V25    -0.3677234200056033
#>     Attrib V26    -0.5122247268826396
#>     Attrib V27    -0.29279937259407113
#>     Attrib V28    -0.18240621444600247
#>     Attrib V29    -0.3209012068054635
#>     Attrib V3    0.042403266653622824
#>     Attrib V30    0.08689146308643822
#>     Attrib V31    -0.5398480692635036
#>     Attrib V32    -0.04353049671296857
#>     Attrib V33    0.24667774654903774
#>     Attrib V34    -0.12084571589879713
#>     Attrib V35    -0.06928576860494243
#>     Attrib V36    -0.4788654182904931
#>     Attrib V37    -0.5492336745821002
#>     Attrib V38    0.3425750484725753
#>     Attrib V39    0.16220401125503592
#>     Attrib V4    0.1500621699615213
#>     Attrib V40    -0.17850795679311643
#>     Attrib V41    -0.14218086756454879
#>     Attrib V42    0.13324147207090464
#>     Attrib V43    0.31578990413708086
#>     Attrib V44    0.01064648176590171
#>     Attrib V45    0.29375371078181306
#>     Attrib V46    0.2732508774647716
#>     Attrib V47    -0.1492421190278027
#>     Attrib V48    0.16821491869983451
#>     Attrib V49    0.2604899188831731
#>     Attrib V5    0.18871031365404947
#>     Attrib V50    -0.4152065965167964
#>     Attrib V51    -0.2708681178819723
#>     Attrib V52    0.022951003179488807
#>     Attrib V53    0.026840677966934314
#>     Attrib V54    0.34590086356727734
#>     Attrib V55    0.0832435893476428
#>     Attrib V56    0.06982182581359418
#>     Attrib V57    0.4373161130310466
#>     Attrib V58    0.4128861593905235
#>     Attrib V59    0.18446123975318157
#>     Attrib V6    -0.15556089850669402
#>     Attrib V60    -0.10973416622908119
#>     Attrib V7    0.15670112887842264
#>     Attrib V8    -0.14761525437179707
#>     Attrib V9    0.3645139546465801
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.03656937232507614
#>     Attrib V1    0.2120378612324826
#>     Attrib V10    0.01132742291048236
#>     Attrib V11    0.06529038910937386
#>     Attrib V12    -0.027507455112457103
#>     Attrib V13    -0.04892420376768343
#>     Attrib V14    -0.2198753125916071
#>     Attrib V15    0.1882100876887684
#>     Attrib V16    -0.05996526443262024
#>     Attrib V17    0.21080494995016774
#>     Attrib V18    0.13285958560216385
#>     Attrib V19    0.1892033403081745
#>     Attrib V2    0.06566256615220688
#>     Attrib V20    0.36781188739418735
#>     Attrib V21    0.39095086904165366
#>     Attrib V22    0.21632792724598413
#>     Attrib V23    0.11038130158210217
#>     Attrib V24    0.1893925299827779
#>     Attrib V25    -0.29947275486319747
#>     Attrib V26    -0.6181236227397452
#>     Attrib V27    -0.394035621397254
#>     Attrib V28    -0.28109056710326796
#>     Attrib V29    -0.507775424210056
#>     Attrib V3    0.145932482010349
#>     Attrib V30    0.04393045966207676
#>     Attrib V31    -0.7199003215115333
#>     Attrib V32    -0.04001135661990886
#>     Attrib V33    0.21367324978395183
#>     Attrib V34    -0.1772000429433882
#>     Attrib V35    -0.120517508503663
#>     Attrib V36    -0.6108184598983492
#>     Attrib V37    -0.6566013793496268
#>     Attrib V38    0.4350767479251528
#>     Attrib V39    0.29962284011271306
#>     Attrib V4    0.13888498835055244
#>     Attrib V40    -0.26011802364971703
#>     Attrib V41    -0.18127992468610316
#>     Attrib V42    0.247155572187944
#>     Attrib V43    0.3496816362614565
#>     Attrib V44    0.08945354572315165
#>     Attrib V45    0.31237762991243506
#>     Attrib V46    0.3290161198068397
#>     Attrib V47    -0.11512593578614143
#>     Attrib V48    0.13727228420609852
#>     Attrib V49    0.37402363774467934
#>     Attrib V5    0.24914999903486684
#>     Attrib V50    -0.5086219903336321
#>     Attrib V51    -0.3434858038229873
#>     Attrib V52    -0.03853812880532149
#>     Attrib V53    -0.026472989499658588
#>     Attrib V54    0.36468598953950787
#>     Attrib V55    0.021244137981790222
#>     Attrib V56    0.06721688274693488
#>     Attrib V57    0.43763490317517756
#>     Attrib V58    0.4427359034153738
#>     Attrib V59    0.19862743876930256
#>     Attrib V6    -0.07578030206566544
#>     Attrib V60    -0.07803207463090227
#>     Attrib V7    0.2740350432529736
#>     Attrib V8    -0.2468201337124438
#>     Attrib V9    0.444359261390424
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.007992056824227134
#>     Attrib V1    0.16868123998980497
#>     Attrib V10    0.032295293803337434
#>     Attrib V11    0.09878792495214551
#>     Attrib V12    0.013878035816060954
#>     Attrib V13    -0.09450430405164953
#>     Attrib V14    -0.13790309191788713
#>     Attrib V15    0.20569018807960124
#>     Attrib V16    -0.020603076460135688
#>     Attrib V17    0.13218731921833937
#>     Attrib V18    0.08443518391247133
#>     Attrib V19    0.06600962887039569
#>     Attrib V2    0.11459043327153079
#>     Attrib V20    0.1353035264247389
#>     Attrib V21    0.15402780010870487
#>     Attrib V22    0.05378637963226436
#>     Attrib V23    -0.02442444386118763
#>     Attrib V24    0.019387455874007423
#>     Attrib V25    -0.2384929536303568
#>     Attrib V26    -0.3478450139749456
#>     Attrib V27    -0.2775021477680553
#>     Attrib V28    -0.2103883027113876
#>     Attrib V29    -0.36887042068418935
#>     Attrib V3    0.031421176588508355
#>     Attrib V30    0.07146507189976373
#>     Attrib V31    -0.3523285349009774
#>     Attrib V32    0.007263256939465225
#>     Attrib V33    0.20866408055292282
#>     Attrib V34    -0.1047133556124095
#>     Attrib V35    -0.012199333436388193
#>     Attrib V36    -0.41175981703953124
#>     Attrib V37    -0.4051805076698219
#>     Attrib V38    0.20568503398490964
#>     Attrib V39    0.14820652305814375
#>     Attrib V4    0.08842282015913495
#>     Attrib V40    -0.1673036778748481
#>     Attrib V41    -0.15950959751153965
#>     Attrib V42    0.03836214205120674
#>     Attrib V43    0.1704987369136737
#>     Attrib V44    0.0678930082143169
#>     Attrib V45    0.16534424874286072
#>     Attrib V46    0.20131159737506676
#>     Attrib V47    -0.11806734278775573
#>     Attrib V48    0.15306983242231184
#>     Attrib V49    0.27183964907074637
#>     Attrib V5    0.10505848301008422
#>     Attrib V50    -0.28943030578112194
#>     Attrib V51    -0.2285273119095897
#>     Attrib V52    -9.718326672168733E-4
#>     Attrib V53    0.008405803665560955
#>     Attrib V54    0.35387032324087386
#>     Attrib V55    0.15658166523025618
#>     Attrib V56    0.08204909513483806
#>     Attrib V57    0.3525545341809137
#>     Attrib V58    0.36210130507030197
#>     Attrib V59    0.11514540650448317
#>     Attrib V6    -0.11086986860605388
#>     Attrib V60    -0.017541565666536224
#>     Attrib V7    0.11275914735065343
#>     Attrib V8    -0.15341421204547295
#>     Attrib V9    0.30524971828263897
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.6434076005425267
#>     Attrib V1    -0.08345663063467833
#>     Attrib V10    -0.494418261769722
#>     Attrib V11    -0.5908319964413286
#>     Attrib V12    -0.3949608818387029
#>     Attrib V13    -0.030048894588737583
#>     Attrib V14    0.7940276766461556
#>     Attrib V15    -0.22050190735317554
#>     Attrib V16    0.3840621581806351
#>     Attrib V17    0.016992475405404685
#>     Attrib V18    0.028768777561703034
#>     Attrib V19    -0.17113965231337772
#>     Attrib V2    -0.0802158352414163
#>     Attrib V20    -0.28034278213212993
#>     Attrib V21    -0.5912840818579145
#>     Attrib V22    -0.5126839386845846
#>     Attrib V23    -0.07995280809068067
#>     Attrib V24    -0.519302466296169
#>     Attrib V25    0.33628758137665893
#>     Attrib V26    0.8878968608913764
#>     Attrib V27    0.49538337460079507
#>     Attrib V28    0.1914623164815415
#>     Attrib V29    1.0373938343002147
#>     Attrib V3    0.11122194770132636
#>     Attrib V30    -0.10591333563443962
#>     Attrib V31    0.9092786187223804
#>     Attrib V32    -0.6001121711065234
#>     Attrib V33    -0.5891351432230114
#>     Attrib V34    0.4512559835288584
#>     Attrib V35    0.338878381714729
#>     Attrib V36    1.7639116998166076
#>     Attrib V37    1.7949680346563088
#>     Attrib V38    -0.331201764638067
#>     Attrib V39    -0.17057775507229853
#>     Attrib V4    0.006808157965209671
#>     Attrib V40    0.49083180967786905
#>     Attrib V41    0.06363869774172315
#>     Attrib V42    -0.6847979518958172
#>     Attrib V43    -0.700152423598914
#>     Attrib V44    0.06960980961297278
#>     Attrib V45    -0.3492302729917231
#>     Attrib V46    -0.6805509906779563
#>     Attrib V47    0.035510751054742204
#>     Attrib V48    -0.752424068076528
#>     Attrib V49    -0.8582630185899082
#>     Attrib V5    -0.42162053355075646
#>     Attrib V50    1.4218533966096032
#>     Attrib V51    0.5971821011906713
#>     Attrib V52    -0.39710162750159184
#>     Attrib V53    0.030599246864501526
#>     Attrib V54    -0.9172199005035956
#>     Attrib V55    0.1132318008478313
#>     Attrib V56    0.09183468844162197
#>     Attrib V57    -0.665711993127653
#>     Attrib V58    -0.7970061806002718
#>     Attrib V59    -0.19718061998184278
#>     Attrib V6    0.08444583886984462
#>     Attrib V60    0.2738226201908989
#>     Attrib V7    -0.4233412791157232
#>     Attrib V8    0.6440994130085157
#>     Attrib V9    -1.0970307055508166
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.22273526023903953
#>     Attrib V1    0.0704869954710398
#>     Attrib V10    -0.005943349601260879
#>     Attrib V11    -0.13550367289291979
#>     Attrib V12    -0.12290357121522537
#>     Attrib V13    0.010559758800699301
#>     Attrib V14    0.10391291972402796
#>     Attrib V15    -0.0038537701087763792
#>     Attrib V16    0.16332948694726054
#>     Attrib V17    0.09372437318249295
#>     Attrib V18    0.09057975885972064
#>     Attrib V19    -0.005348733085224178
#>     Attrib V2    0.015878824337931825
#>     Attrib V20    -0.09121692620698375
#>     Attrib V21    -0.10390053186301527
#>     Attrib V22    -0.035480737880979336
#>     Attrib V23    -0.008482397156598188
#>     Attrib V24    -0.04947088360615801
#>     Attrib V25    0.06086272781845656
#>     Attrib V26    -0.031001552935680295
#>     Attrib V27    -0.1305588773810856
#>     Attrib V28    -0.17427233174669485
#>     Attrib V29    -0.12089993322183919
#>     Attrib V3    0.09043021593035556
#>     Attrib V30    -0.23902687327282884
#>     Attrib V31    0.09418173505490626
#>     Attrib V32    0.036312180039240236
#>     Attrib V33    0.019507263492178264
#>     Attrib V34    0.1400933674432242
#>     Attrib V35    0.0907866029848568
#>     Attrib V36    0.276538362112374
#>     Attrib V37    0.28892856366759007
#>     Attrib V38    -0.0692215949157646
#>     Attrib V39    0.015469616267188456
#>     Attrib V4    0.041001553080753594
#>     Attrib V40    0.2229167678257321
#>     Attrib V41    0.2160304377296309
#>     Attrib V42    0.14764395700810046
#>     Attrib V43    -0.0307060529011952
#>     Attrib V44    -0.03581213893763036
#>     Attrib V45    -0.11837628130079055
#>     Attrib V46    -0.07246604012025329
#>     Attrib V47    0.09749528940185026
#>     Attrib V48    -0.06001561963475918
#>     Attrib V49    -0.12618984007027154
#>     Attrib V5    0.00919159744271555
#>     Attrib V50    0.2866886190811798
#>     Attrib V51    0.2050169909604005
#>     Attrib V52    -0.027018547726638552
#>     Attrib V53    0.05668800545226095
#>     Attrib V54    -0.0716324172016969
#>     Attrib V55    0.047167963383514415
#>     Attrib V56    0.09002049963725268
#>     Attrib V57    0.03723634628625527
#>     Attrib V58    0.034484882531622386
#>     Attrib V59    0.049333761456742974
#>     Attrib V6    0.13279327574249367
#>     Attrib V60    0.1715967907100544
#>     Attrib V7    0.016004222084361218
#>     Attrib V8    0.09343588583417442
#>     Attrib V9    -0.09280914100568718
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.1528234348286814
#>     Attrib V1    0.09769942998654167
#>     Attrib V10    0.05105136831088904
#>     Attrib V11    -0.04532834749264232
#>     Attrib V12    -0.09262122899803872
#>     Attrib V13    -0.036173682275705096
#>     Attrib V14    0.07880456401053865
#>     Attrib V15    0.09027224131076493
#>     Attrib V16    0.07878397469104526
#>     Attrib V17    0.04547979079411619
#>     Attrib V18    0.028234490139630634
#>     Attrib V19    -0.008166557054053966
#>     Attrib V2    0.13649448786537954
#>     Attrib V20    -0.09015233808286137
#>     Attrib V21    -0.10411988573676484
#>     Attrib V22    0.008088361851806607
#>     Attrib V23    -0.021828608913839028
#>     Attrib V24    -0.028221895073777762
#>     Attrib V25    -0.0068654307706357155
#>     Attrib V26    -0.05664303477784083
#>     Attrib V27    -0.077279791709486
#>     Attrib V28    -0.11294201164423055
#>     Attrib V29    -0.11731477356331445
#>     Attrib V3    0.08526424308999339
#>     Attrib V30    -0.08539286430570575
#>     Attrib V31    0.1249780613443726
#>     Attrib V32    -0.00741358700401447
#>     Attrib V33    0.08937459960256182
#>     Attrib V34    0.07396144697780442
#>     Attrib V35    0.16267817041744095
#>     Attrib V36    0.1982275649522025
#>     Attrib V37    0.17959153986255105
#>     Attrib V38    0.06710574209003567
#>     Attrib V39    0.08999510677621697
#>     Attrib V4    0.06433332603935701
#>     Attrib V40    0.1721679862566657
#>     Attrib V41    0.19248511432841287
#>     Attrib V42    0.08555347810032268
#>     Attrib V43    0.06309463874472344
#>     Attrib V44    0.06036985241271735
#>     Attrib V45    -0.005555205926402675
#>     Attrib V46    -0.054112630397529934
#>     Attrib V47    0.03518398520261756
#>     Attrib V48    0.02305692868881495
#>     Attrib V49    -0.06543379135779553
#>     Attrib V5    0.05135389530541889
#>     Attrib V50    0.15845501347947738
#>     Attrib V51    0.09995737983403026
#>     Attrib V52    -0.07149573567105903
#>     Attrib V53    0.016498264137193415
#>     Attrib V54    -0.02734727906851837
#>     Attrib V55    0.07042102336464612
#>     Attrib V56    0.09790695490241366
#>     Attrib V57    0.09976742064498596
#>     Attrib V58    -0.006289301341884278
#>     Attrib V59    0.050474676128108936
#>     Attrib V6    0.11826456067677146
#>     Attrib V60    0.12242914572897383
#>     Attrib V7    0.02634859472674715
#>     Attrib V8    0.1244921077829401
#>     Attrib V9    -0.026894819941827516
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.05088883912142525
#>     Attrib V1    0.10421165656708302
#>     Attrib V10    0.06324081071648123
#>     Attrib V11    0.08027753729886464
#>     Attrib V12    0.025285557750320247
#>     Attrib V13    -0.02999968769887458
#>     Attrib V14    -0.11372488739158013
#>     Attrib V15    0.07398335090995299
#>     Attrib V16    -0.038257058520232874
#>     Attrib V17    0.04704452695844363
#>     Attrib V18    0.11177608208146797
#>     Attrib V19    0.052683720443633036
#>     Attrib V2    0.10097514261249607
#>     Attrib V20    0.1502622774896621
#>     Attrib V21    0.17726231968078385
#>     Attrib V22    0.07167555192387878
#>     Attrib V23    -0.003773879412993379
#>     Attrib V24    0.04005084413430692
#>     Attrib V25    -0.1573528886121648
#>     Attrib V26    -0.23309682522293135
#>     Attrib V27    -0.12678249643548203
#>     Attrib V28    -0.05820137411167438
#>     Attrib V29    -0.19943670667280472
#>     Attrib V3    0.13413877669994756
#>     Attrib V30    0.05893427653408436
#>     Attrib V31    -0.3360068824443423
#>     Attrib V32    -0.0160941492043064
#>     Attrib V33    0.13890611384263116
#>     Attrib V34    -0.0021850375678755755
#>     Attrib V35    0.024356742192692408
#>     Attrib V36    -0.18678167786953512
#>     Attrib V37    -0.267105949843725
#>     Attrib V38    0.250917312176993
#>     Attrib V39    0.17686094473038397
#>     Attrib V4    0.07537595577588722
#>     Attrib V40    -0.15906384363086704
#>     Attrib V41    -0.1292369041549464
#>     Attrib V42    0.04964525066220855
#>     Attrib V43    0.16963577957716233
#>     Attrib V44    0.1067866599344098
#>     Attrib V45    0.18375894161452705
#>     Attrib V46    0.16285408114765126
#>     Attrib V47    -0.04901512374877959
#>     Attrib V48    0.07688037461550006
#>     Attrib V49    0.21987459183670546
#>     Attrib V5    0.14328190859534798
#>     Attrib V50    -0.2912453026085745
#>     Attrib V51    -0.1196908677298276
#>     Attrib V52    -0.0023322560587699104
#>     Attrib V53    0.04663241493685087
#>     Attrib V54    0.1729361532475821
#>     Attrib V55    0.07529490762961372
#>     Attrib V56    0.06143662203943359
#>     Attrib V57    0.1703906265307211
#>     Attrib V58    0.21767736982958755
#>     Attrib V59    0.07406632440095229
#>     Attrib V6    -0.08917941012052039
#>     Attrib V60    -0.047071589911576076
#>     Attrib V7    0.12267991902001382
#>     Attrib V8    -0.10507132933262686
#>     Attrib V9    0.27486812606620054
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.2087066632153797
#>     Attrib V1    0.22242609318530024
#>     Attrib V10    0.04184098375616991
#>     Attrib V11    0.09640515703677573
#>     Attrib V12    0.07990294625102962
#>     Attrib V13    -0.1214785467841147
#>     Attrib V14    -0.3149073766022354
#>     Attrib V15    0.2780190650823415
#>     Attrib V16    -0.09605625709602233
#>     Attrib V17    0.19643891493872986
#>     Attrib V18    0.09978308530582838
#>     Attrib V19    0.21069007801628276
#>     Attrib V2    0.09947777747376281
#>     Attrib V20    0.3346559148900864
#>     Attrib V21    0.3844889055960613
#>     Attrib V22    0.2628794351238338
#>     Attrib V23    0.0319526461792575
#>     Attrib V24    0.26281529648013274
#>     Attrib V25    -0.3427521990700178
#>     Attrib V26    -0.6833316922405731
#>     Attrib V27    -0.4996340724649824
#>     Attrib V28    -0.31946703566145285
#>     Attrib V29    -0.7484333048990544
#>     Attrib V3    0.0391864588661188
#>     Attrib V30    -0.008015436420345612
#>     Attrib V31    -0.8073395074333087
#>     Attrib V32    -0.013478684000012613
#>     Attrib V33    0.3532905119728242
#>     Attrib V34    -0.2542805665451053
#>     Attrib V35    -0.10130069980968676
#>     Attrib V36    -0.8211792501321469
#>     Attrib V37    -0.9829536347179879
#>     Attrib V38    0.43834501814651883
#>     Attrib V39    0.23940406772633072
#>     Attrib V4    0.12929406927752124
#>     Attrib V40    -0.33264261487946156
#>     Attrib V41    -0.2512711437573745
#>     Attrib V42    0.3541520911094402
#>     Attrib V43    0.48564119150463
#>     Attrib V44    0.054807610676744986
#>     Attrib V45    0.4609413690893818
#>     Attrib V46    0.4346920590014496
#>     Attrib V47    -0.19609007659660016
#>     Attrib V48    0.2708484474644331
#>     Attrib V49    0.5220463244267921
#>     Attrib V5    0.2459570227914306
#>     Attrib V50    -0.68787407947427
#>     Attrib V51    -0.46408007818209707
#>     Attrib V52    0.032822320871035586
#>     Attrib V53    -0.02477967389476033
#>     Attrib V54    0.5510892186502635
#>     Attrib V55    0.06100609821811738
#>     Attrib V56    0.01688469303353803
#>     Attrib V57    0.5275797135497498
#>     Attrib V58    0.6008780727493578
#>     Attrib V59    0.17029141748197235
#>     Attrib V6    -0.15990429126909975
#>     Attrib V60    -0.13601202252785366
#>     Attrib V7    0.30932352741738095
#>     Attrib V8    -0.3149587356740551
#>     Attrib V9    0.5569942716617774
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.3597707365719829
#>     Attrib V1    0.025162578884106144
#>     Attrib V10    0.5497952503272654
#>     Attrib V11    0.5304311639616535
#>     Attrib V12    0.49462951485047063
#>     Attrib V13    0.08441966481888902
#>     Attrib V14    -0.6710971053220433
#>     Attrib V15    -0.04957097462150669
#>     Attrib V16    -0.475398537065485
#>     Attrib V17    0.12594998753917272
#>     Attrib V18    0.16390239838831758
#>     Attrib V19    0.4110887747343283
#>     Attrib V2    0.03433226105595314
#>     Attrib V20    0.4830313244615667
#>     Attrib V21    0.4662855898541028
#>     Attrib V22    0.5960482729391016
#>     Attrib V23    0.4960398903440698
#>     Attrib V24    0.49379981547067164
#>     Attrib V25    -0.26366507345374746
#>     Attrib V26    -0.2160582637303701
#>     Attrib V27    0.09865010903865988
#>     Attrib V28    0.2612819547688732
#>     Attrib V29    -0.2291852467047251
#>     Attrib V3    0.03017374684193292
#>     Attrib V30    0.6364246837056216
#>     Attrib V31    -0.9083581568742669
#>     Attrib V32    -0.12322590215623498
#>     Attrib V33    0.12568037289103917
#>     Attrib V34    -0.2202417604965106
#>     Attrib V35    0.5077531757765921
#>     Attrib V36    -0.25155766142342606
#>     Attrib V37    -0.23700049573828144
#>     Attrib V38    1.0650600690852836
#>     Attrib V39    0.3210495765807032
#>     Attrib V4    0.15907525214013485
#>     Attrib V40    -0.5778877195687767
#>     Attrib V41    -0.2116099382060566
#>     Attrib V42    0.13739836252867466
#>     Attrib V43    0.8004952914467924
#>     Attrib V44    0.5711908487584267
#>     Attrib V45    0.8003465752361567
#>     Attrib V46    0.6140354945347456
#>     Attrib V47    -0.33740035208145597
#>     Attrib V48    -0.01307564277517894
#>     Attrib V49    0.523748627589235
#>     Attrib V5    0.5441202905815019
#>     Attrib V50    -1.0203391504700061
#>     Attrib V51    -0.4559198765038911
#>     Attrib V52    0.23903697249098244
#>     Attrib V53    0.017507901281589064
#>     Attrib V54    0.4206620796281129
#>     Attrib V55    -0.5236647090796215
#>     Attrib V56    0.029998023724419634
#>     Attrib V57    -0.0396600448011793
#>     Attrib V58    0.22607268125943222
#>     Attrib V59    -0.32713183723909467
#>     Attrib V6    -0.15224772608650375
#>     Attrib V60    -0.40642880814572424
#>     Attrib V7    0.2603468016895797
#>     Attrib V8    -0.605405748556244
#>     Attrib V9    1.130044805907203
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.5495180344212864
#>     Attrib V1    0.2646759955240002
#>     Attrib V10    -0.3957550734516561
#>     Attrib V11    -0.5655266401236773
#>     Attrib V12    -0.6289642281148358
#>     Attrib V13    -0.2460918959507208
#>     Attrib V14    0.6628582262580175
#>     Attrib V15    -0.04827497059964662
#>     Attrib V16    0.44377435376881397
#>     Attrib V17    0.1839465090717733
#>     Attrib V18    0.1588015439786635
#>     Attrib V19    -0.0946757309518368
#>     Attrib V2    -0.12590512268279064
#>     Attrib V20    0.012941831659986877
#>     Attrib V21    -0.09745035949578772
#>     Attrib V22    -0.29586089879109345
#>     Attrib V23    -0.029672012729576463
#>     Attrib V24    -0.2829001500203638
#>     Attrib V25    0.4477454696054621
#>     Attrib V26    0.5016203455029035
#>     Attrib V27    -0.017389190515187135
#>     Attrib V28    -0.371038438464413
#>     Attrib V29    0.1551845370423315
#>     Attrib V3    0.01560701130202721
#>     Attrib V30    -0.48298976147003336
#>     Attrib V31    0.6537833656141572
#>     Attrib V32    -0.36815691801500755
#>     Attrib V33    -0.4063551523145011
#>     Attrib V34    -0.06655420926608839
#>     Attrib V35    -0.36364515905097144
#>     Attrib V36    0.7969041969166186
#>     Attrib V37    0.7075514703254123
#>     Attrib V38    -0.4932745266211706
#>     Attrib V39    -0.10790758761516543
#>     Attrib V4    0.05412065014772412
#>     Attrib V40    0.43250259136434177
#>     Attrib V41    -0.009705637547011882
#>     Attrib V42    -0.15886354254681712
#>     Attrib V43    -0.41800125268860194
#>     Attrib V44    -0.0849006766470975
#>     Attrib V45    -0.5820633346996872
#>     Attrib V46    -0.6423353183435981
#>     Attrib V47    0.25816250809472363
#>     Attrib V48    -0.1907956766596285
#>     Attrib V49    -0.5142266402898082
#>     Attrib V5    -0.27545280149138873
#>     Attrib V50    1.2810967568331753
#>     Attrib V51    0.5990877134303333
#>     Attrib V52    -0.35348516655810197
#>     Attrib V53    -0.1409188131008529
#>     Attrib V54    -0.37028057338681913
#>     Attrib V55    0.14674489056747642
#>     Attrib V56    0.12490111889418153
#>     Attrib V57    -0.10270975482634835
#>     Attrib V58    -0.30558330188300953
#>     Attrib V59    0.2164392742484132
#>     Attrib V6    0.19264777693794574
#>     Attrib V60    0.3714588444108282
#>     Attrib V7    0.02962958903464795
#>     Attrib V8    0.6045396259475145
#>     Attrib V9    -0.8786668819314007
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.02494057531892836
#>     Attrib V1    0.12257626751383538
#>     Attrib V10    0.0479109430095995
#>     Attrib V11    0.0652212276894486
#>     Attrib V12    0.021955567368190855
#>     Attrib V13    -0.05579909421023668
#>     Attrib V14    -0.06312525868732269
#>     Attrib V15    0.06568498353349
#>     Attrib V16    0.032428888968748106
#>     Attrib V17    0.08507562672935143
#>     Attrib V18    0.05109095608032819
#>     Attrib V19    0.030524391113402362
#>     Attrib V2    0.11559454375687934
#>     Attrib V20    0.07605569099959272
#>     Attrib V21    0.05505566091490384
#>     Attrib V22    -0.029420165186026085
#>     Attrib V23    -0.10702489427909076
#>     Attrib V24    0.05440988372205926
#>     Attrib V25    -0.16926072999997355
#>     Attrib V26    -0.2534046931330213
#>     Attrib V27    -0.14850222079500147
#>     Attrib V28    -0.10444596816946367
#>     Attrib V29    -0.14344384983678798
#>     Attrib V3    0.05990656431076313
#>     Attrib V30    0.07636118891130766
#>     Attrib V31    -0.18166526279359088
#>     Attrib V32    0.019233497824973116
#>     Attrib V33    0.10564639218182291
#>     Attrib V34    -0.024570038175961883
#>     Attrib V35    0.04124853369447859
#>     Attrib V36    -0.21638450324230982
#>     Attrib V37    -0.22471134965201056
#>     Attrib V38    0.17025382222209443
#>     Attrib V39    0.09054639029033276
#>     Attrib V4    0.10768167256740549
#>     Attrib V40    -0.08042488401046916
#>     Attrib V41    -0.12159114635284404
#>     Attrib V42    0.0039358354587970545
#>     Attrib V43    0.17217842037594694
#>     Attrib V44    0.03540883725188954
#>     Attrib V45    0.12505745486391545
#>     Attrib V46    0.16862767404390105
#>     Attrib V47    -0.10497214786071074
#>     Attrib V48    0.11756756909146791
#>     Attrib V49    0.1859068100526924
#>     Attrib V5    0.14145428309128014
#>     Attrib V50    -0.20410567581086847
#>     Attrib V51    -0.16055026125643743
#>     Attrib V52    0.023926522898544814
#>     Attrib V53    0.0494515720503175
#>     Attrib V54    0.22454520703367592
#>     Attrib V55    0.11185222960743671
#>     Attrib V56    0.08257495839221515
#>     Attrib V57    0.24627898665167294
#>     Attrib V58    0.26958217728047035
#>     Attrib V59    0.07127121035058975
#>     Attrib V6    -0.03691316816770954
#>     Attrib V60    -0.028851820269694756
#>     Attrib V7    0.09073401638121953
#>     Attrib V8    -0.1546577005415572
#>     Attrib V9    0.2437073338652318
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.27183224935108
#>     Attrib V1    0.25436753747499835
#>     Attrib V10    0.18732777663259642
#>     Attrib V11    0.3103085988849306
#>     Attrib V12    0.181634794355887
#>     Attrib V13    -0.10766461719716014
#>     Attrib V14    -0.5342800471887276
#>     Attrib V15    0.13050545390876295
#>     Attrib V16    -0.25187783801036934
#>     Attrib V17    0.24857358088318898
#>     Attrib V18    0.13877147638926415
#>     Attrib V19    0.275749203568487
#>     Attrib V2    -0.01155610698621772
#>     Attrib V20    0.4132938436918547
#>     Attrib V21    0.4753480848192474
#>     Attrib V22    0.42210130791572975
#>     Attrib V23    0.25648491272867874
#>     Attrib V24    0.3978797394074856
#>     Attrib V25    -0.33570010114599863
#>     Attrib V26    -0.6493114211069937
#>     Attrib V27    -0.5150350668202772
#>     Attrib V28    -0.291626977298361
#>     Attrib V29    -0.8603534463345163
#>     Attrib V3    0.08252046272290332
#>     Attrib V30    0.09522099274141337
#>     Attrib V31    -1.0491915577398754
#>     Attrib V32    -0.030056053036234084
#>     Attrib V33    0.3115248713262005
#>     Attrib V34    -0.37873209994731666
#>     Attrib V35    -0.05968746288008833
#>     Attrib V36    -0.8963184288779165
#>     Attrib V37    -1.0252222962976134
#>     Attrib V38    0.6776832594187779
#>     Attrib V39    0.3304033242165827
#>     Attrib V4    0.19380375772470976
#>     Attrib V40    -0.5621238297366918
#>     Attrib V41    -0.3392046522690582
#>     Attrib V42    0.3711437554737624
#>     Attrib V43    0.7491139123464665
#>     Attrib V44    0.24586998270976335
#>     Attrib V45    0.6077548684804045
#>     Attrib V46    0.5433533204841858
#>     Attrib V47    -0.1441522874552487
#>     Attrib V48    0.2373300705040796
#>     Attrib V49    0.5682278574654439
#>     Attrib V5    0.35554218661777703
#>     Attrib V50    -0.8677513138725486
#>     Attrib V51    -0.5192344163379059
#>     Attrib V52    0.051821549218562676
#>     Attrib V53    -0.09053968824884714
#>     Attrib V54    0.5728312761897231
#>     Attrib V55    -0.11781592117709641
#>     Attrib V56    0.06008378957245776
#>     Attrib V57    0.4690732043160031
#>     Attrib V58    0.5749663794438133
#>     Attrib V59    0.1417500570228282
#>     Attrib V6    -0.12159579232536456
#>     Attrib V60    -0.27474994979384754
#>     Attrib V7    0.39884065025125864
#>     Attrib V8    -0.37735413716933197
#>     Attrib V9    0.7947845356353188
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.40757844722442166
#>     Attrib V1    0.1912481603989431
#>     Attrib V10    -0.3270083960892302
#>     Attrib V11    -0.47055067734765255
#>     Attrib V12    -0.5360956321392246
#>     Attrib V13    -0.2375002100794774
#>     Attrib V14    0.4984380461175378
#>     Attrib V15    0.029897294833578624
#>     Attrib V16    0.34056004442585003
#>     Attrib V17    0.18774066276110676
#>     Attrib V18    0.08956891689021738
#>     Attrib V19    -0.10363846443288634
#>     Attrib V2    -0.10158808497579816
#>     Attrib V20    -0.038856343529675284
#>     Attrib V21    -0.13203523355846872
#>     Attrib V22    -0.2511965667839969
#>     Attrib V23    -0.0010497829201172018
#>     Attrib V24    -0.2469021675865308
#>     Attrib V25    0.31499682127487366
#>     Attrib V26    0.3161158896013834
#>     Attrib V27    -0.14713124330387733
#>     Attrib V28    -0.3656912277393997
#>     Attrib V29    -0.005152847196717949
#>     Attrib V3    -0.008360838280172127
#>     Attrib V30    -0.43638230626585645
#>     Attrib V31    0.47841309390818343
#>     Attrib V32    -0.11417673325911168
#>     Attrib V33    -0.24698333796011265
#>     Attrib V34    -0.04991460075045474
#>     Attrib V35    -0.32919305040097646
#>     Attrib V36    0.5695916250536249
#>     Attrib V37    0.40562011344419036
#>     Attrib V38    -0.4128927659644031
#>     Attrib V39    -0.13495519672984613
#>     Attrib V4    0.012625836915362378
#>     Attrib V40    0.3111361278794315
#>     Attrib V41    -0.023505197318931973
#>     Attrib V42    -0.08404293892134591
#>     Attrib V43    -0.29779252095076986
#>     Attrib V44    -0.13938315968870288
#>     Attrib V45    -0.5159430620073657
#>     Attrib V46    -0.49422421469277195
#>     Attrib V47    0.2328836246189338
#>     Attrib V48    -0.1496802650493535
#>     Attrib V49    -0.4115612372245466
#>     Attrib V5    -0.262744123692313
#>     Attrib V50    0.9552512285085025
#>     Attrib V51    0.43463500158496265
#>     Attrib V52    -0.2765198380705688
#>     Attrib V53    -0.21589562872236767
#>     Attrib V54    -0.2789735633095652
#>     Attrib V55    0.13255663652977032
#>     Attrib V56    0.14193321929922906
#>     Attrib V57    -0.026273499572059437
#>     Attrib V58    -0.18966706665530556
#>     Attrib V59    0.13778684436583366
#>     Attrib V6    0.19337860296266057
#>     Attrib V60    0.19712370693395773
#>     Attrib V7    -0.003115567817816935
#>     Attrib V8    0.5071936539638835
#>     Attrib V9    -0.627914345263533
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.525758102478425
#>     Attrib V1    -0.34001651041833286
#>     Attrib V10    1.1471514934933436
#>     Attrib V11    1.4065393857883104
#>     Attrib V12    1.7481661028304711
#>     Attrib V13    1.055481965567241
#>     Attrib V14    -0.4462332826442102
#>     Attrib V15    -0.19128553767689163
#>     Attrib V16    -0.9283606806026774
#>     Attrib V17    -0.6112174559692033
#>     Attrib V18    -0.02250997295223381
#>     Attrib V19    0.276202488798233
#>     Attrib V2    0.4382214307284037
#>     Attrib V20    0.032201648170123644
#>     Attrib V21    0.3881828217393689
#>     Attrib V22    0.7477014833469043
#>     Attrib V23    0.7022359248046626
#>     Attrib V24    0.8838890498478069
#>     Attrib V25    0.4594415602743484
#>     Attrib V26    0.9937278404020934
#>     Attrib V27    1.6977171506405222
#>     Attrib V28    2.0768190967412035
#>     Attrib V29    1.2642264794499978
#>     Attrib V3    0.2921393339790797
#>     Attrib V30    0.6934891346177369
#>     Attrib V31    -0.845952112533231
#>     Attrib V32    -0.07490926783240823
#>     Attrib V33    -0.6118334166712752
#>     Attrib V34    -0.446439715541892
#>     Attrib V35    0.30339609627580144
#>     Attrib V36    -1.0206420046738789
#>     Attrib V37    -0.40413204192431496
#>     Attrib V38    0.05349328436458066
#>     Attrib V39    0.3545786150383698
#>     Attrib V4    0.5255061330804401
#>     Attrib V40    0.2566107745474282
#>     Attrib V41    1.2648711299111173
#>     Attrib V42    0.38393240118102284
#>     Attrib V43    0.49872409825811626
#>     Attrib V44    0.1588284800378808
#>     Attrib V45    0.35388187308828084
#>     Attrib V46    0.9607010873361802
#>     Attrib V47    0.4071030809589373
#>     Attrib V48    0.7581502249081153
#>     Attrib V49    1.0015856614968606
#>     Attrib V5    1.0609718328380282
#>     Attrib V50    -1.0426593857624529
#>     Attrib V51    0.05441440866992338
#>     Attrib V52    1.3836805468369824
#>     Attrib V53    1.4777699683418932
#>     Attrib V54    0.18605971352180867
#>     Attrib V55    -1.0068339498141496
#>     Attrib V56    -0.5102206468495298
#>     Attrib V57    -0.2086940037017685
#>     Attrib V58    0.0232124589727147
#>     Attrib V59    0.0823877741607831
#>     Attrib V6    0.13554722054369944
#>     Attrib V60    -0.03949346307104791
#>     Attrib V7    -0.44620348679172833
#>     Attrib V8    -1.1938598536444807
#>     Attrib V9    1.09098779553304
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.2247638250398691
#>     Attrib V1    0.08565728438106979
#>     Attrib V10    0.006551243046348529
#>     Attrib V11    -0.07220094873078728
#>     Attrib V12    -0.01760615796300437
#>     Attrib V13    -0.011680037188958546
#>     Attrib V14    0.12459630758014544
#>     Attrib V15    0.009096514690992165
#>     Attrib V16    0.05554958123726289
#>     Attrib V17    0.07313157553245246
#>     Attrib V18    0.0026166061290544625
#>     Attrib V19    0.04112808197809575
#>     Attrib V2    0.10090691350771923
#>     Attrib V20    -0.034478728327078455
#>     Attrib V21    -0.04583419610313793
#>     Attrib V22    -0.03693068823789486
#>     Attrib V23    -0.0029666832533618904
#>     Attrib V24    -0.060549935041952385
#>     Attrib V25    0.012498846682438206
#>     Attrib V26    -0.05599458925667832
#>     Attrib V27    -0.042044277630989745
#>     Attrib V28    -0.0585963549375645
#>     Attrib V29    -0.06394545502704957
#>     Attrib V3    0.06573149356982874
#>     Attrib V30    -0.11163106983951583
#>     Attrib V31    0.010759351320669627
#>     Attrib V32    -0.011597315192651786
#>     Attrib V33    0.06792039207661472
#>     Attrib V34    0.06356480601354511
#>     Attrib V35    0.14334807229420968
#>     Attrib V36    0.21303570859582552
#>     Attrib V37    0.20698623971625485
#>     Attrib V38    -0.0012637037398078798
#>     Attrib V39    0.06743603498491742
#>     Attrib V4    0.11172830144881807
#>     Attrib V40    0.1424325920827602
#>     Attrib V41    0.11033034833009125
#>     Attrib V42    0.08667071610945724
#>     Attrib V43    0.028920024150128412
#>     Attrib V44    0.04647053893578395
#>     Attrib V45    -0.02598122313631487
#>     Attrib V46    -0.043145479322518145
#>     Attrib V47    0.040797352072296476
#>     Attrib V48    0.04377599207571566
#>     Attrib V49    -0.020202748491865395
#>     Attrib V5    0.0229268808267548
#>     Attrib V50    0.13936529320090335
#>     Attrib V51    0.06782566722884349
#>     Attrib V52    -0.03777235105174843
#>     Attrib V53    0.03277279859878905
#>     Attrib V54    0.0013056270909146267
#>     Attrib V55    0.04892590391705885
#>     Attrib V56    0.1031119028979745
#>     Attrib V57    0.0891315372544561
#>     Attrib V58    0.05581170636704108
#>     Attrib V59    0.10713843573283992
#>     Attrib V6    0.13157577648427465
#>     Attrib V60    0.14990854038045923
#>     Attrib V7    0.024185674902491537
#>     Attrib V8    0.09197687168320473
#>     Attrib V9    -0.03137015000228899
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.20678939454788092
#>     Attrib V1    0.3262375122288699
#>     Attrib V10    0.05376571880143115
#>     Attrib V11    0.0993791912358671
#>     Attrib V12    -0.020579347651514583
#>     Attrib V13    -0.1605050341715925
#>     Attrib V14    -0.3698515162137611
#>     Attrib V15    0.22733369875868373
#>     Attrib V16    -0.05330806460796333
#>     Attrib V17    0.2045259632295404
#>     Attrib V18    0.17832345921926035
#>     Attrib V19    0.17102449554226273
#>     Attrib V2    0.07817021323482823
#>     Attrib V20    0.30409543733492805
#>     Attrib V21    0.44082396741941465
#>     Attrib V22    0.25630340585078676
#>     Attrib V23    0.02841260177051029
#>     Attrib V24    0.256740656939489
#>     Attrib V25    -0.40498138694337693
#>     Attrib V26    -0.6792847330174001
#>     Attrib V27    -0.5989403364479097
#>     Attrib V28    -0.48207032671458483
#>     Attrib V29    -0.8187527448102844
#>     Attrib V3    0.05635476278980392
#>     Attrib V30    -0.027178267765861602
#>     Attrib V31    -0.7842368203569968
#>     Attrib V32    0.05208310858502824
#>     Attrib V33    0.35182064620138626
#>     Attrib V34    -0.24598899851772782
#>     Attrib V35    -0.20330374356820344
#>     Attrib V36    -0.8440881460487899
#>     Attrib V37    -0.973697078438386
#>     Attrib V38    0.4605249031225602
#>     Attrib V39    0.28131191340100536
#>     Attrib V4    0.11547716831351032
#>     Attrib V40    -0.41894358108092233
#>     Attrib V41    -0.2739913519284907
#>     Attrib V42    0.3293427820230069
#>     Attrib V43    0.47998442551035564
#>     Attrib V44    0.14917036319817445
#>     Attrib V45    0.45201852562953615
#>     Attrib V46    0.33481641627982855
#>     Attrib V47    -0.23071451286381853
#>     Attrib V48    0.2824637491142853
#>     Attrib V49    0.42551196878537706
#>     Attrib V5    0.22631189847452396
#>     Attrib V50    -0.5854321878554541
#>     Attrib V51    -0.416101460898565
#>     Attrib V52    -0.020686798704886062
#>     Attrib V53    -0.07034327411527806
#>     Attrib V54    0.5731587578409524
#>     Attrib V55    0.08841138379522905
#>     Attrib V56    0.04904206786945845
#>     Attrib V57    0.5905262441618021
#>     Attrib V58    0.6131955834435653
#>     Attrib V59    0.21804869909546395
#>     Attrib V6    -0.07670888641674167
#>     Attrib V60    -0.12159286617707768
#>     Attrib V7    0.3081355923969105
#>     Attrib V8    -0.21815437596656634
#>     Attrib V9    0.5878687343009471
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.9159730742668784
#>     Attrib V1    0.20160925696223184
#>     Attrib V10    -0.9588618583267826
#>     Attrib V11    -1.0149980963970342
#>     Attrib V12    -1.2602413997744422
#>     Attrib V13    -0.7233126355563263
#>     Attrib V14    0.9835654774661001
#>     Attrib V15    -0.031031365936052702
#>     Attrib V16    0.912978449735344
#>     Attrib V17    0.32126326168212116
#>     Attrib V18    0.22068141262841856
#>     Attrib V19    -0.2849787106932656
#>     Attrib V2    -0.3764911203301086
#>     Attrib V20    -0.23837570162148913
#>     Attrib V21    -0.5237036599106172
#>     Attrib V22    -0.9092739105349378
#>     Attrib V23    -0.62175341565229
#>     Attrib V24    -0.8176642706925954
#>     Attrib V25    0.2943779769337075
#>     Attrib V26    0.38328218505459094
#>     Attrib V27    -0.22539780852469518
#>     Attrib V28    -0.8064602666710365
#>     Attrib V29    -0.04394692540536552
#>     Attrib V3    -0.11962877430459273
#>     Attrib V30    -0.7976269584686663
#>     Attrib V31    1.0331732525435542
#>     Attrib V32    -0.32988277467807187
#>     Attrib V33    -0.34437059426876254
#>     Attrib V34    0.17220870225829119
#>     Attrib V35    -0.49825095658635005
#>     Attrib V36    1.26979351486316
#>     Attrib V37    0.7242019812400667
#>     Attrib V38    -0.8505576669132425
#>     Attrib V39    -0.22304221360792226
#>     Attrib V4    -0.023762101598867845
#>     Attrib V40    0.44204366448873167
#>     Attrib V41    -0.42166495761995215
#>     Attrib V42    -0.310832475494395
#>     Attrib V43    -0.7144796616975314
#>     Attrib V44    -0.12443378793737694
#>     Attrib V45    -0.6711401403123898
#>     Attrib V46    -1.0203383584927477
#>     Attrib V47    0.1815022217296907
#>     Attrib V48    -0.4266740748169147
#>     Attrib V49    -0.8214843885048952
#>     Attrib V5    -0.7752680494273446
#>     Attrib V50    1.8834224271863735
#>     Attrib V51    0.6234937390370396
#>     Attrib V52    -0.7842889477014133
#>     Attrib V53    -0.48328694467446487
#>     Attrib V54    -0.3777446336706495
#>     Attrib V55    0.8892284958380245
#>     Attrib V56    0.010719081529373514
#>     Attrib V57    0.015826314799798166
#>     Attrib V58    -0.15021111042171395
#>     Attrib V59    0.4088854732772341
#>     Attrib V6    0.11764925779401929
#>     Attrib V60    0.4000221316214144
#>     Attrib V7    0.017393034701000887
#>     Attrib V8    1.31389921213319
#>     Attrib V9    -1.612838750827942
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.029100021337926222
#>     Attrib V1    0.02979295716576744
#>     Attrib V10    0.023590656747915422
#>     Attrib V11    0.13482328710492034
#>     Attrib V12    0.10082113742342035
#>     Attrib V13    -0.015535966847134148
#>     Attrib V14    -0.08583563815791025
#>     Attrib V15    0.09073350907269054
#>     Attrib V16    -0.09321418795860277
#>     Attrib V17    0.033124980068429295
#>     Attrib V18    0.02951573219849056
#>     Attrib V19    0.034587397967887304
#>     Attrib V2    0.0753349825154985
#>     Attrib V20    0.13594036568389087
#>     Attrib V21    0.13649861098037738
#>     Attrib V22    0.07371419959480285
#>     Attrib V23    -0.07737900246587469
#>     Attrib V24    0.0841785451493526
#>     Attrib V25    -0.12646927497017124
#>     Attrib V26    -0.2586513398862682
#>     Attrib V27    -0.08476413659885164
#>     Attrib V28    0.013854288063220166
#>     Attrib V29    -0.0914471500073813
#>     Attrib V3    0.10237937365545381
#>     Attrib V30    0.09041668838657216
#>     Attrib V31    -0.290271936057326
#>     Attrib V32    0.02628392456335853
#>     Attrib V33    0.15469130650380794
#>     Attrib V34    -0.0027076334429378176
#>     Attrib V35    0.10435469106058372
#>     Attrib V36    -0.24826398614640505
#>     Attrib V37    -0.20975450121422642
#>     Attrib V38    0.2855994453096003
#>     Attrib V39    0.16448818882764774
#>     Attrib V4    0.06243456624452085
#>     Attrib V40    -0.13607070377621014
#>     Attrib V41    -0.08235053949700719
#>     Attrib V42    -0.005716079223559889
#>     Attrib V43    0.21549872041219753
#>     Attrib V44    0.02750784775133937
#>     Attrib V45    0.27521967106722145
#>     Attrib V46    0.19934573272304892
#>     Attrib V47    -0.07846766176411227
#>     Attrib V48    0.055912046380078476
#>     Attrib V49    0.1731889170777726
#>     Attrib V5    0.1127852069793117
#>     Attrib V50    -0.27541979341574147
#>     Attrib V51    -0.18981983858532078
#>     Attrib V52    0.05938590992330508
#>     Attrib V53    0.05720646388077499
#>     Attrib V54    0.17955190528372478
#>     Attrib V55    0.08713728182443914
#>     Attrib V56    0.04334610685950091
#>     Attrib V57    0.21891185945344913
#>     Attrib V58    0.18698740850017828
#>     Attrib V59    -0.00756662184034702
#>     Attrib V6    -0.056886676309445945
#>     Attrib V60    -0.1056939268034498
#>     Attrib V7    0.07163754842274643
#>     Attrib V8    -0.15958560256271728
#>     Attrib V9    0.27883452964811883
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.042521570747972165
#>     Attrib V1    0.08169403981690768
#>     Attrib V10    0.10911330870511307
#>     Attrib V11    0.10988893900666653
#>     Attrib V12    0.12677788287124944
#>     Attrib V13    0.042916805426321404
#>     Attrib V14    -0.14037426756062205
#>     Attrib V15    0.08066874763554019
#>     Attrib V16    -0.0967809726700414
#>     Attrib V17    0.04512932339336703
#>     Attrib V18    9.04653544953301E-4
#>     Attrib V19    0.02756350309864853
#>     Attrib V2    0.10825629642530883
#>     Attrib V20    0.046635649108519396
#>     Attrib V21    0.10870728737568232
#>     Attrib V22    0.03841904145344869
#>     Attrib V23    -0.01891380181977207
#>     Attrib V24    0.052669584512078586
#>     Attrib V25    -0.11299385224609199
#>     Attrib V26    -0.14998050973245367
#>     Attrib V27    -0.04559148662358499
#>     Attrib V28    0.07820574483559149
#>     Attrib V29    -0.13575213761237484
#>     Attrib V3    0.049946506207583216
#>     Attrib V30    0.16833641362342835
#>     Attrib V31    -0.2380572484745913
#>     Attrib V32    -0.010900804369545642
#>     Attrib V33    0.0999083812803076
#>     Attrib V34    -0.028803862175754185
#>     Attrib V35    0.121248292075278
#>     Attrib V36    -0.24161522446877207
#>     Attrib V37    -0.18588888105640244
#>     Attrib V38    0.2346575643338609
#>     Attrib V39    0.1911798844640557
#>     Attrib V4    0.10962905257414558
#>     Attrib V40    -0.112673009335783
#>     Attrib V41    -0.07273870376798763
#>     Attrib V42    0.05802405009629266
#>     Attrib V43    0.15059675848775936
#>     Attrib V44    0.02116058505975032
#>     Attrib V45    0.22117903059416297
#>     Attrib V46    0.17901729608444317
#>     Attrib V47    -0.13188441812760032
#>     Attrib V48    0.0815828621360793
#>     Attrib V49    0.16717243812456187
#>     Attrib V5    0.08968266085529739
#>     Attrib V50    -0.3158062314872005
#>     Attrib V51    -0.2179601810502495
#>     Attrib V52    0.050167995699121476
#>     Attrib V53    0.092818238390289
#>     Attrib V54    0.19773865883056344
#>     Attrib V55    0.00905402989879585
#>     Attrib V56    0.06002037385624859
#>     Attrib V57    0.16378073863600348
#>     Attrib V58    0.23066431040842705
#>     Attrib V59    0.06363719506372663
#>     Attrib V6    -0.0881214345410333
#>     Attrib V60    -0.07540843629101117
#>     Attrib V7    0.006007706220236258
#>     Attrib V8    -0.19727215613956608
#>     Attrib V9    0.2594175236881475
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.01925130063654368
#>     Attrib V1    0.05738587375078629
#>     Attrib V10    0.046382218631176544
#>     Attrib V11    0.10149183775664897
#>     Attrib V12    0.010728911532817798
#>     Attrib V13    0.005479103582312729
#>     Attrib V14    -0.07587005825666795
#>     Attrib V15    0.06488018435100741
#>     Attrib V16    -0.06106251623115004
#>     Attrib V17    0.0688476790623963
#>     Attrib V18    0.05133615422091587
#>     Attrib V19    0.036333415909817764
#>     Attrib V2    0.12931906602916277
#>     Attrib V20    0.07670388851088317
#>     Attrib V21    -0.011541965034430859
#>     Attrib V22    0.030007214678099293
#>     Attrib V23    -0.00765279793447077
#>     Attrib V24    0.06500224573772559
#>     Attrib V25    -0.15937023300516706
#>     Attrib V26    -0.17085871526304394
#>     Attrib V27    -0.10568537683929927
#>     Attrib V28    -0.053112837306187315
#>     Attrib V29    -0.15996243673373367
#>     Attrib V3    0.030302007332365946
#>     Attrib V30    0.08984482328051031
#>     Attrib V31    -0.17423533478520342
#>     Attrib V32    0.008101369179286146
#>     Attrib V33    0.15204458484567313
#>     Attrib V34    0.039274149901955706
#>     Attrib V35    0.14213504491822757
#>     Attrib V36    -0.14130635900426164
#>     Attrib V37    -0.11783750221602993
#>     Attrib V38    0.27845610768383394
#>     Attrib V39    0.09042682272153106
#>     Attrib V4    0.10833236333505988
#>     Attrib V40    -0.10985357405222927
#>     Attrib V41    -0.11504944469049978
#>     Attrib V42    -0.016453646351559922
#>     Attrib V43    0.15721766325601005
#>     Attrib V44    0.1082739399458785
#>     Attrib V45    0.1687185201759643
#>     Attrib V46    0.13850789488902596
#>     Attrib V47    -0.07778831028669142
#>     Attrib V48    0.05790731259084425
#>     Attrib V49    0.16116985812568588
#>     Attrib V5    0.10247928291287682
#>     Attrib V50    -0.23145738823736425
#>     Attrib V51    -0.18392458910159737
#>     Attrib V52    0.016235808534430348
#>     Attrib V53    0.07915072641370845
#>     Attrib V54    0.2001354662643336
#>     Attrib V55    0.05370040190941519
#>     Attrib V56    -0.007121844509535605
#>     Attrib V57    0.15868783358691452
#>     Attrib V58    0.12880373849816093
#>     Attrib V59    0.0013858891236382524
#>     Attrib V6    -0.05078238299287176
#>     Attrib V60    -0.08402016053577879
#>     Attrib V7    0.09553974203096667
#>     Attrib V8    -0.1080386167798692
#>     Attrib V9    0.2691601335562515
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.011812541450054316
#>     Attrib V1    0.06847707601711898
#>     Attrib V10    -0.013456592979062876
#>     Attrib V11    0.0630360765118663
#>     Attrib V12    0.041506786857031144
#>     Attrib V13    -0.05363646810670123
#>     Attrib V14    -0.06212715727578301
#>     Attrib V15    0.06940674157361514
#>     Attrib V16    -0.03124431287056848
#>     Attrib V17    0.038986470731321866
#>     Attrib V18    0.11161991072338667
#>     Attrib V19    0.03283549060737374
#>     Attrib V2    0.06263537386255294
#>     Attrib V20    0.07922366056350554
#>     Attrib V21    0.07876533239436323
#>     Attrib V22    0.015366225384079469
#>     Attrib V23    -0.01033980309216189
#>     Attrib V24    0.019682062968679373
#>     Attrib V25    -0.18704419337671208
#>     Attrib V26    -0.21042766653150718
#>     Attrib V27    -0.07328293695786343
#>     Attrib V28    0.045948355343066585
#>     Attrib V29    -0.09387329193177253
#>     Attrib V3    0.1018397698641068
#>     Attrib V30    0.1744608336840302
#>     Attrib V31    -0.26873416148873736
#>     Attrib V32    -0.018293012140458927
#>     Attrib V33    0.15124045825709378
#>     Attrib V34    0.03246672356878809
#>     Attrib V35    0.14352879410888628
#>     Attrib V36    -0.05114454357802804
#>     Attrib V37    -0.099376251323649
#>     Attrib V38    0.25747482906411573
#>     Attrib V39    0.1622285245076789
#>     Attrib V4    0.07323775193390995
#>     Attrib V40    -0.12325645448326865
#>     Attrib V41    -0.10565428412718385
#>     Attrib V42    0.045481525513620065
#>     Attrib V43    0.11488240060901625
#>     Attrib V44    0.11892266089849676
#>     Attrib V45    0.2584264638448414
#>     Attrib V46    0.16019530818819477
#>     Attrib V47    -0.1000821484825311
#>     Attrib V48    0.0047684583793143175
#>     Attrib V49    0.1995383398636738
#>     Attrib V5    0.13424722220020746
#>     Attrib V50    -0.26484372207906
#>     Attrib V51    -0.1804945022366676
#>     Attrib V52    0.019165450909598
#>     Attrib V53    0.05507995389148867
#>     Attrib V54    0.11184266338656655
#>     Attrib V55    -0.006573663805770508
#>     Attrib V56    0.019095800961874677
#>     Attrib V57    0.14719591610397847
#>     Attrib V58    0.2012015407689871
#>     Attrib V59    -0.012746136416794528
#>     Attrib V6    -0.03775470477448179
#>     Attrib V60    -0.11163606752421008
#>     Attrib V7    0.07988333717454582
#>     Attrib V8    -0.10897927557550964
#>     Attrib V9    0.26006776258053577
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
