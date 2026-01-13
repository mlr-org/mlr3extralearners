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
#>     Threshold    -0.706808981603308
#>     Node 2    1.9512875508136571
#>     Node 3    1.1058831327544194
#>     Node 4    0.469481439392648
#>     Node 5    -1.4461450355036767
#>     Node 6    1.4055483371223623
#>     Node 7    2.491304058214423
#>     Node 8    1.1815638693862738
#>     Node 9    3.245335257195608
#>     Node 10    -1.4680289536186626
#>     Node 11    1.559380910176535
#>     Node 12    1.6022831688460566
#>     Node 13    0.7350617493625113
#>     Node 14    1.5415258476798455
#>     Node 15    -1.8094031559895702
#>     Node 16    0.05246459457093164
#>     Node 17    0.641246532936982
#>     Node 18    -0.02660568260821229
#>     Node 19    2.0222491765814112
#>     Node 20    1.624063405039725
#>     Node 21    -3.091728900454003
#>     Node 22    1.0519372585117988
#>     Node 23    2.0173237186318813
#>     Node 24    -1.795787478735094
#>     Node 25    3.2635259806618646
#>     Node 26    -1.1023201251977344
#>     Node 27    2.870194804629946
#>     Node 28    -2.696888713099977
#>     Node 29    1.248335151753038
#>     Node 30    -0.5119141626170098
#>     Node 31    2.305120383367402
#>     Node 32    0.6822119100426287
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.7422992067259753
#>     Node 2    -2.0036329406810554
#>     Node 3    -1.0906063344213575
#>     Node 4    -0.43311149017205547
#>     Node 5    1.469445291707125
#>     Node 6    -1.3845949141837381
#>     Node 7    -2.4776504872297713
#>     Node 8    -1.217748624594049
#>     Node 9    -3.232060484131608
#>     Node 10    1.4134044822058196
#>     Node 11    -1.5248667161538383
#>     Node 12    -1.6787843630964212
#>     Node 13    -0.6850717537184695
#>     Node 14    -1.4757931183226312
#>     Node 15    1.8079592035591412
#>     Node 16    -0.07969839680118478
#>     Node 17    -0.6124194245828779
#>     Node 18    0.05817679576405762
#>     Node 19    -2.022654748727083
#>     Node 20    -1.613655275322953
#>     Node 21    3.1512031641373714
#>     Node 22    -1.106257063664048
#>     Node 23    -2.063257282113804
#>     Node 24    1.7951729483583145
#>     Node 25    -3.2382009023739826
#>     Node 26    1.0310332202008134
#>     Node 27    -2.9128676910826217
#>     Node 28    2.6474303328430975
#>     Node 29    -1.2820447451638042
#>     Node 30    0.5747764672049926
#>     Node 31    -2.2477169369191765
#>     Node 32    -0.7033995091939294
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.30732472736074185
#>     Attrib V1    0.16153045476008068
#>     Attrib V10    0.571330897678875
#>     Attrib V11    0.1131686389798498
#>     Attrib V12    -0.04578493373426804
#>     Attrib V13    0.5151124319786122
#>     Attrib V14    -0.11944866395524385
#>     Attrib V15    -0.23347360799042413
#>     Attrib V16    -0.5323673442279115
#>     Attrib V17    -0.21433954735177002
#>     Attrib V18    0.009831068251240542
#>     Attrib V19    0.4423858716988166
#>     Attrib V2    -0.38936212604228154
#>     Attrib V20    0.8809617814094658
#>     Attrib V21    0.7389372269167135
#>     Attrib V22    0.3869482809110139
#>     Attrib V23    0.28313073530058686
#>     Attrib V24    0.2607429603646953
#>     Attrib V25    -0.3079543543467121
#>     Attrib V26    -0.3298580921739094
#>     Attrib V27    -0.5185546627407943
#>     Attrib V28    -0.6758382346273955
#>     Attrib V29    -0.6637167704042669
#>     Attrib V3    0.07796090640598724
#>     Attrib V30    -0.03446398969920542
#>     Attrib V31    -1.350110854208021
#>     Attrib V32    -0.6417428718456657
#>     Attrib V33    0.12198703760084241
#>     Attrib V34    -0.12350681818039164
#>     Attrib V35    0.09409540411164351
#>     Attrib V36    -0.531512438555796
#>     Attrib V37    -0.3538843775244945
#>     Attrib V38    0.5800288053223254
#>     Attrib V39    -0.16504605365252778
#>     Attrib V4    0.1768005411778685
#>     Attrib V40    -0.7982990585806753
#>     Attrib V41    -0.08876834875310258
#>     Attrib V42    0.6086694262901564
#>     Attrib V43    0.12186879868515546
#>     Attrib V44    0.5418539285899879
#>     Attrib V45    0.9038965494916662
#>     Attrib V46    0.5047500908720022
#>     Attrib V47    0.18422465764665458
#>     Attrib V48    0.35589174266118695
#>     Attrib V49    0.30367853810788337
#>     Attrib V5    0.001097131702481131
#>     Attrib V50    -0.5415827831551411
#>     Attrib V51    0.08934082836166603
#>     Attrib V52    0.08036998206954424
#>     Attrib V53    0.55395244692258
#>     Attrib V54    0.15444115212101073
#>     Attrib V55    -0.5515786795317683
#>     Attrib V56    -0.052364078716023034
#>     Attrib V57    -0.3489950488188123
#>     Attrib V58    0.09931571552083322
#>     Attrib V59    0.29068616331104025
#>     Attrib V6    -0.5343110573853015
#>     Attrib V60    -0.018543800579943516
#>     Attrib V7    0.38496819722634307
#>     Attrib V8    -0.325454172941209
#>     Attrib V9    0.5103957652380026
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.17098486942741964
#>     Attrib V1    0.13687027148984407
#>     Attrib V10    0.33423022185803436
#>     Attrib V11    0.040739045737774364
#>     Attrib V12    -0.009544554649720255
#>     Attrib V13    0.3839140421279999
#>     Attrib V14    -0.027379686730369515
#>     Attrib V15    -0.03881774124231017
#>     Attrib V16    -0.30676664546579535
#>     Attrib V17    -0.13032906120932009
#>     Attrib V18    -0.05192849564331676
#>     Attrib V19    0.3014215341902869
#>     Attrib V2    -0.13143395240632752
#>     Attrib V20    0.5273942234018998
#>     Attrib V21    0.41425895194076684
#>     Attrib V22    0.26343672136607865
#>     Attrib V23    0.21746526115603462
#>     Attrib V24    0.20679502467786545
#>     Attrib V25    -0.16610623758964732
#>     Attrib V26    -0.22284594816868494
#>     Attrib V27    -0.3544625664144747
#>     Attrib V28    -0.4610638618598454
#>     Attrib V29    -0.49684751786576753
#>     Attrib V3    0.07125758107111134
#>     Attrib V30    -0.06097227599271857
#>     Attrib V31    -0.7872097606708935
#>     Attrib V32    -0.30798721276625224
#>     Attrib V33    0.16062454646715985
#>     Attrib V34    -0.08510678458364455
#>     Attrib V35    0.0507180529556372
#>     Attrib V36    -0.44086600964575834
#>     Attrib V37    -0.3331263216852512
#>     Attrib V38    0.1921617109304629
#>     Attrib V39    -0.10882041682243193
#>     Attrib V4    0.12575194011792443
#>     Attrib V40    -0.47712070971866327
#>     Attrib V41    -0.045070672143182465
#>     Attrib V42    0.3371260583026579
#>     Attrib V43    0.031056808129547663
#>     Attrib V44    0.28955850742170897
#>     Attrib V45    0.4932555110548186
#>     Attrib V46    0.2677978825526369
#>     Attrib V47    0.11211188750414273
#>     Attrib V48    0.1806255534791248
#>     Attrib V49    0.17203109447461454
#>     Attrib V5    0.02526730295646402
#>     Attrib V50    -0.31384839942425463
#>     Attrib V51    0.05706498609310391
#>     Attrib V52    0.0902082954172775
#>     Attrib V53    0.35702375128814046
#>     Attrib V54    0.20360367423088854
#>     Attrib V55    -0.2772121325903434
#>     Attrib V56    -5.527430093364292E-4
#>     Attrib V57    -0.17075900637783056
#>     Attrib V58    0.17602793722833748
#>     Attrib V59    0.23190490619353504
#>     Attrib V6    -0.2933067850242016
#>     Attrib V60    -0.00887056132823156
#>     Attrib V7    0.1618736728017344
#>     Attrib V8    -0.21217349638755054
#>     Attrib V9    0.28572923682937795
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.14397373287604961
#>     Attrib V1    0.06434924571857263
#>     Attrib V10    0.11491411894868865
#>     Attrib V11    0.019286557650985057
#>     Attrib V12    -0.014292674613410859
#>     Attrib V13    0.19850932795709253
#>     Attrib V14    0.05945672470097705
#>     Attrib V15    0.034852196330678584
#>     Attrib V16    -0.11498855231380957
#>     Attrib V17    -0.03888911639349875
#>     Attrib V18    -0.01972397830623896
#>     Attrib V19    0.11802241340458537
#>     Attrib V2    -0.03536126523412826
#>     Attrib V20    0.2305996030476136
#>     Attrib V21    0.21175773129024952
#>     Attrib V22    0.03071627659612392
#>     Attrib V23    0.056456517099322014
#>     Attrib V24    0.0483635692996704
#>     Attrib V25    -0.14746348911580265
#>     Attrib V26    -0.11892000205727181
#>     Attrib V27    -0.1862360227944506
#>     Attrib V28    -0.15196793176808424
#>     Attrib V29    -0.137739777197681
#>     Attrib V3    0.0777985607117786
#>     Attrib V30    -0.052858025769367635
#>     Attrib V31    -0.346526555048846
#>     Attrib V32    -0.14867837959751032
#>     Attrib V33    0.08670161373882385
#>     Attrib V34    0.02008659054584437
#>     Attrib V35    0.04703073641366268
#>     Attrib V36    -0.2093825590215899
#>     Attrib V37    -0.13603839320221411
#>     Attrib V38    0.0684155483641067
#>     Attrib V39    -5.302584020599414E-4
#>     Attrib V4    0.07555030277129769
#>     Attrib V40    -0.1751313154520874
#>     Attrib V41    -0.04174323250362428
#>     Attrib V42    0.12767225102893218
#>     Attrib V43    -0.02894593615639499
#>     Attrib V44    0.13412836560185745
#>     Attrib V45    0.27980846251074265
#>     Attrib V46    0.10118586800262686
#>     Attrib V47    0.01283362295274969
#>     Attrib V48    0.12002763257885497
#>     Attrib V49    0.13397861692997112
#>     Attrib V5    0.08093861654299757
#>     Attrib V50    -0.10004587284679699
#>     Attrib V51    0.1025464508777269
#>     Attrib V52    0.0667003796709638
#>     Attrib V53    0.24906799023611692
#>     Attrib V54    0.04087213579368672
#>     Attrib V55    -0.12413217567868749
#>     Attrib V56    0.02404543855138301
#>     Attrib V57    -0.05421502281023001
#>     Attrib V58    0.08730910407884601
#>     Attrib V59    0.12561189298568523
#>     Attrib V6    -0.13373995538928857
#>     Attrib V60    -0.006415614498215435
#>     Attrib V7    0.061229073256744475
#>     Attrib V8    -0.1540128155086909
#>     Attrib V9    0.15460683816152046
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.13336767631655264
#>     Attrib V1    -0.1545758487767861
#>     Attrib V10    -0.5044105337717064
#>     Attrib V11    -0.16661838463559378
#>     Attrib V12    -0.22832852820169947
#>     Attrib V13    -0.6778634640612211
#>     Attrib V14    0.14065112684952594
#>     Attrib V15    0.23896312376863071
#>     Attrib V16    0.47026376292976396
#>     Attrib V17    0.34485147536243516
#>     Attrib V18    0.19589271437103925
#>     Attrib V19    -0.147320443736399
#>     Attrib V2    0.09707341124956007
#>     Attrib V20    -0.38293605153821453
#>     Attrib V21    -0.18282567316199388
#>     Attrib V22    -0.10265733221059371
#>     Attrib V23    -0.24219486493488032
#>     Attrib V24    -0.4332305848218327
#>     Attrib V25    0.279225116415437
#>     Attrib V26    0.14794952781779885
#>     Attrib V27    0.08330327081332745
#>     Attrib V28    -0.006860508569550526
#>     Attrib V29    0.12848825590079976
#>     Attrib V3    0.04362454302863949
#>     Attrib V30    0.011131031793988383
#>     Attrib V31    0.6637267555878409
#>     Attrib V32    0.062330066258192277
#>     Attrib V33    -0.26012075970755816
#>     Attrib V34    -0.023961604304379935
#>     Attrib V35    -0.17234997214608938
#>     Attrib V36    0.7694685643665414
#>     Attrib V37    0.28302795853147067
#>     Attrib V38    -0.34592869666352516
#>     Attrib V39    0.020903166090415395
#>     Attrib V4    0.0013693200821667118
#>     Attrib V40    0.4270968882690809
#>     Attrib V41    -0.20930084979094174
#>     Attrib V42    -0.16936357086272497
#>     Attrib V43    0.1881252694819511
#>     Attrib V44    -0.15979896986728018
#>     Attrib V45    -0.6667704251034523
#>     Attrib V46    -0.5008252788931485
#>     Attrib V47    -0.1601670462356847
#>     Attrib V48    -0.44990370095672144
#>     Attrib V49    -0.4104148916215468
#>     Attrib V5    -0.0805137120885167
#>     Attrib V50    0.6825543873219382
#>     Attrib V51    -0.09672604255995704
#>     Attrib V52    -0.13525091773642534
#>     Attrib V53    -0.6287553453196845
#>     Attrib V54    0.027492862210640727
#>     Attrib V55    0.5512792122471158
#>     Attrib V56    0.32387695169357145
#>     Attrib V57    0.4073427462902077
#>     Attrib V58    -0.04848838838510612
#>     Attrib V59    0.05910411395310871
#>     Attrib V6    0.12025600329205692
#>     Attrib V60    0.16021125415055448
#>     Attrib V7    -0.05730232066640463
#>     Attrib V8    0.5327662300168413
#>     Attrib V9    -0.5063814428013866
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.18073588424397696
#>     Attrib V1    0.17987502851755557
#>     Attrib V10    0.354369410625906
#>     Attrib V11    0.05438963109080014
#>     Attrib V12    -0.026928032667666132
#>     Attrib V13    0.31744756462900914
#>     Attrib V14    -0.10176289493155019
#>     Attrib V15    -0.12182988728137872
#>     Attrib V16    -0.27464806984854395
#>     Attrib V17    -0.11909507048282121
#>     Attrib V18    0.04293666200728132
#>     Attrib V19    0.31609978973255126
#>     Attrib V2    -0.2461302892550603
#>     Attrib V20    0.619045113142885
#>     Attrib V21    0.5416386817683534
#>     Attrib V22    0.2578108644093572
#>     Attrib V23    0.22818056747377058
#>     Attrib V24    0.27657287280298887
#>     Attrib V25    -0.1703308021710702
#>     Attrib V26    -0.27219067147240344
#>     Attrib V27    -0.4369225017111867
#>     Attrib V28    -0.6513570765615513
#>     Attrib V29    -0.5810257048588918
#>     Attrib V3    0.0542197221147207
#>     Attrib V30    -0.0822513000534457
#>     Attrib V31    -0.9662318130917419
#>     Attrib V32    -0.39889244891151476
#>     Attrib V33    0.16834505867112545
#>     Attrib V34    -0.09060787542246908
#>     Attrib V35    0.04335669705500729
#>     Attrib V36    -0.49765890299958115
#>     Attrib V37    -0.3536851228055713
#>     Attrib V38    0.2918823485266102
#>     Attrib V39    -0.18059339500150043
#>     Attrib V4    0.18093815199476118
#>     Attrib V40    -0.6380762752128536
#>     Attrib V41    -0.04159776644820976
#>     Attrib V42    0.4586367012030006
#>     Attrib V43    0.06431866137838937
#>     Attrib V44    0.34083353986145987
#>     Attrib V45    0.6333658716293508
#>     Attrib V46    0.3571013878180824
#>     Attrib V47    0.0894331506673732
#>     Attrib V48    0.20251149071381866
#>     Attrib V49    0.21011963800295713
#>     Attrib V5    0.015084487998297485
#>     Attrib V50    -0.33369855901897033
#>     Attrib V51    0.08521066610949146
#>     Attrib V52    0.0529183814547111
#>     Attrib V53    0.48458643404981633
#>     Attrib V54    0.16326123093530617
#>     Attrib V55    -0.39893752520402176
#>     Attrib V56    0.02746958034551307
#>     Attrib V57    -0.16334204580478962
#>     Attrib V58    0.17214394557209142
#>     Attrib V59    0.2906707263782074
#>     Attrib V6    -0.2971350068817916
#>     Attrib V60    0.05012030263828635
#>     Attrib V7    0.31138554333201834
#>     Attrib V8    -0.19018659485457629
#>     Attrib V9    0.4375773906206552
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.2760147243889147
#>     Attrib V1    0.5832655261537647
#>     Attrib V10    0.7506949789697475
#>     Attrib V11    0.6640339655845061
#>     Attrib V12    0.5403037825357041
#>     Attrib V13    0.853630834066881
#>     Attrib V14    0.03994307471790758
#>     Attrib V15    -0.16311691750322707
#>     Attrib V16    -0.4752719655445296
#>     Attrib V17    -0.6246450187055359
#>     Attrib V18    -0.5430842599577859
#>     Attrib V19    -0.1938207817399994
#>     Attrib V2    0.5728155450044655
#>     Attrib V20    0.03147735003687697
#>     Attrib V21    0.021375882816451284
#>     Attrib V22    -0.019298630255483087
#>     Attrib V23    0.4710656856524085
#>     Attrib V24    0.6272221876186485
#>     Attrib V25    0.06118235352697525
#>     Attrib V26    0.7732687223963323
#>     Attrib V27    1.1830758882816907
#>     Attrib V28    1.400654787511772
#>     Attrib V29    1.0026421676964323
#>     Attrib V3    -0.003931062958007506
#>     Attrib V30    0.08698956800743281
#>     Attrib V31    -0.3831341600491188
#>     Attrib V32    0.20923411139541778
#>     Attrib V33    0.12048838975447783
#>     Attrib V34    -0.04725069917056057
#>     Attrib V35    0.24185859458490552
#>     Attrib V36    -0.8523934764009821
#>     Attrib V37    -0.05227050633077062
#>     Attrib V38    0.08355588915715137
#>     Attrib V39    0.32447406657235134
#>     Attrib V4    -0.07086677159029733
#>     Attrib V40    0.2319738432627983
#>     Attrib V41    0.6196976248027872
#>     Attrib V42    -0.24193478146386857
#>     Attrib V43    -0.3482863468048148
#>     Attrib V44    0.1398012942052181
#>     Attrib V45    0.5520449921809392
#>     Attrib V46    0.6903032189719378
#>     Attrib V47    0.45501396054370746
#>     Attrib V48    0.7217926342032897
#>     Attrib V49    0.687707706943558
#>     Attrib V5    0.5640538873322134
#>     Attrib V50    -0.18429646565498467
#>     Attrib V51    0.47306493008261113
#>     Attrib V52    0.40057633907611434
#>     Attrib V53    0.9632757227447521
#>     Attrib V54    0.14729594631421988
#>     Attrib V55    -0.2958752107258272
#>     Attrib V56    -0.5691919978126081
#>     Attrib V57    -0.49372268093551874
#>     Attrib V58    0.017327564504354277
#>     Attrib V59    -0.09459220567412474
#>     Attrib V6    0.43532488897188243
#>     Attrib V60    -0.035902602881265164
#>     Attrib V7    -0.3096967894947048
#>     Attrib V8    -0.46248629647908496
#>     Attrib V9    0.6860095910859174
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.04309859093166012
#>     Attrib V1    0.12043908543712431
#>     Attrib V10    0.4514205587502505
#>     Attrib V11    0.17193650393774193
#>     Attrib V12    0.03330984017089543
#>     Attrib V13    0.461559522590166
#>     Attrib V14    -0.14939620975627313
#>     Attrib V15    -0.16975115468360882
#>     Attrib V16    -0.3223209318577673
#>     Attrib V17    -0.17485218634310543
#>     Attrib V18    -0.08364029712969001
#>     Attrib V19    0.2819399184411424
#>     Attrib V2    -0.14051782075598218
#>     Attrib V20    0.5009822663283034
#>     Attrib V21    0.43687837277658687
#>     Attrib V22    0.22689429644166273
#>     Attrib V23    0.23513482623010937
#>     Attrib V24    0.26917204798940886
#>     Attrib V25    -0.22522155009294395
#>     Attrib V26    -0.1495950129715233
#>     Attrib V27    -0.242992919053929
#>     Attrib V28    -0.31833701016348603
#>     Attrib V29    -0.32290670566286994
#>     Attrib V3    0.010663734214990573
#>     Attrib V30    -0.015661099730606455
#>     Attrib V31    -0.8237872623091694
#>     Attrib V32    -0.31435030999982344
#>     Attrib V33    0.17395254111284256
#>     Attrib V34    -0.046509176514037444
#>     Attrib V35    0.10897840646113212
#>     Attrib V36    -0.42444320909451744
#>     Attrib V37    -0.2482738463242635
#>     Attrib V38    0.35323432523303333
#>     Attrib V39    -0.08566512000790268
#>     Attrib V4    0.1368349963494009
#>     Attrib V40    -0.5092167748553221
#>     Attrib V41    -0.020852280427271993
#>     Attrib V42    0.2102036849525552
#>     Attrib V43    -0.03322016969392495
#>     Attrib V44    0.35641616864809017
#>     Attrib V45    0.6324394389886646
#>     Attrib V46    0.38588904449959793
#>     Attrib V47    0.1393053894728036
#>     Attrib V48    0.335739281294163
#>     Attrib V49    0.30769789319941043
#>     Attrib V5    0.035616167489783884
#>     Attrib V50    -0.4353926187202135
#>     Attrib V51    0.08165615681277576
#>     Attrib V52    0.06213145515786324
#>     Attrib V53    0.4839859856085683
#>     Attrib V54    0.0944187083441326
#>     Attrib V55    -0.4403028568927261
#>     Attrib V56    -0.1545897438487493
#>     Attrib V57    -0.24806684140950672
#>     Attrib V58    0.05183837865007324
#>     Attrib V59    0.15721252441729192
#>     Attrib V6    -0.27394493285180127
#>     Attrib V60    -0.047569996124955174
#>     Attrib V7    0.16228595130695675
#>     Attrib V8    -0.3527098403576384
#>     Attrib V9    0.40201815910930677
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.33879321125545697
#>     Attrib V1    0.6287763907551446
#>     Attrib V10    0.7987579765157552
#>     Attrib V11    0.6814648717957247
#>     Attrib V12    0.7744998137139827
#>     Attrib V13    1.0023304580714043
#>     Attrib V14    -0.013593555007706397
#>     Attrib V15    -0.1462347268248209
#>     Attrib V16    -0.45030410690509337
#>     Attrib V17    -0.5144920454809108
#>     Attrib V18    -0.5026989545811852
#>     Attrib V19    -0.3183423847594452
#>     Attrib V2    0.690211421279072
#>     Attrib V20    -0.12044077730124832
#>     Attrib V21    -0.09282641777306098
#>     Attrib V22    0.006702834722350693
#>     Attrib V23    0.7226180335428483
#>     Attrib V24    0.9671158306204775
#>     Attrib V25    0.29562772946992294
#>     Attrib V26    1.0553766456129283
#>     Attrib V27    1.5187275910260032
#>     Attrib V28    1.6956394739957201
#>     Attrib V29    1.0770401085164434
#>     Attrib V3    -0.024897589460343136
#>     Attrib V30    -0.05955123469444001
#>     Attrib V31    -0.33258318259252034
#>     Attrib V32    0.3377487699619981
#>     Attrib V33    0.021086525725089865
#>     Attrib V34    -0.05545050944115751
#>     Attrib V35    0.25536335586733344
#>     Attrib V36    -0.9665016109880605
#>     Attrib V37    -0.04351519765638719
#>     Attrib V38    0.02294928936750524
#>     Attrib V39    0.48124335226193854
#>     Attrib V4    -0.23151076432657602
#>     Attrib V40    0.48689119783754126
#>     Attrib V41    0.8686648836933305
#>     Attrib V42    -0.42371780059883035
#>     Attrib V43    -0.3034297553720492
#>     Attrib V44    0.09741050131784094
#>     Attrib V45    0.4865607405109272
#>     Attrib V46    0.7442709053717879
#>     Attrib V47    0.5257553171331415
#>     Attrib V48    0.8141520389426293
#>     Attrib V49    0.8090938817142317
#>     Attrib V5    0.6794867547137482
#>     Attrib V50    -0.11527091062883123
#>     Attrib V51    0.6695916241528836
#>     Attrib V52    0.5028081146746758
#>     Attrib V53    1.3620765883920127
#>     Attrib V54    0.15499080680028726
#>     Attrib V55    -0.255030900831526
#>     Attrib V56    -0.5650590374568318
#>     Attrib V57    -0.5058109824112764
#>     Attrib V58    0.012270962133089864
#>     Attrib V59    -0.07530309954320123
#>     Attrib V6    0.6929101891199333
#>     Attrib V60    0.004115872098468517
#>     Attrib V7    -0.5339112868558112
#>     Attrib V8    -0.5499094954847943
#>     Attrib V9    0.6606092862615706
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.17220728456455223
#>     Attrib V1    -0.12844902499363284
#>     Attrib V10    -0.5516721768086731
#>     Attrib V11    -0.2375867915315365
#>     Attrib V12    -0.20362011600951335
#>     Attrib V13    -0.6448099267785738
#>     Attrib V14    0.20092002209326665
#>     Attrib V15    0.18610662651690013
#>     Attrib V16    0.5113449965155604
#>     Attrib V17    0.2794620219719814
#>     Attrib V18    0.22139718545281487
#>     Attrib V19    -0.14217303058979522
#>     Attrib V2    0.07850210942200501
#>     Attrib V20    -0.371735521064961
#>     Attrib V21    -0.21337790418536295
#>     Attrib V22    -0.14673807568600614
#>     Attrib V23    -0.27900665421369436
#>     Attrib V24    -0.4285948018169693
#>     Attrib V25    0.24587831563606027
#>     Attrib V26    0.1649635436182445
#>     Attrib V27    0.0925081563939514
#>     Attrib V28    0.028030376130011317
#>     Attrib V29    0.09304137665882224
#>     Attrib V3    0.019893417867608967
#>     Attrib V30    0.02062866404928402
#>     Attrib V31    0.7004100539483578
#>     Attrib V32    -0.0010600354051710943
#>     Attrib V33    -0.23172596128807732
#>     Attrib V34    0.008642545016506641
#>     Attrib V35    -0.18995095495707995
#>     Attrib V36    0.7517182775377579
#>     Attrib V37    0.3103233971313871
#>     Attrib V38    -0.2888632976006107
#>     Attrib V39    0.029520377991410676
#>     Attrib V4    0.018589309483063875
#>     Attrib V40    0.4687524061752856
#>     Attrib V41    -0.1383801497852359
#>     Attrib V42    -0.22474159489963327
#>     Attrib V43    0.1546963095790005
#>     Attrib V44    -0.19552223940745878
#>     Attrib V45    -0.6351166244257072
#>     Attrib V46    -0.5052392691926769
#>     Attrib V47    -0.19687482339783413
#>     Attrib V48    -0.487981566086741
#>     Attrib V49    -0.41849512004098777
#>     Attrib V5    -0.10837316509089949
#>     Attrib V50    0.6827026686261758
#>     Attrib V51    -0.12176346895594213
#>     Attrib V52    -0.1384903695845826
#>     Attrib V53    -0.5517343526365182
#>     Attrib V54    0.023503716420166697
#>     Attrib V55    0.5217070686462376
#>     Attrib V56    0.2761500432590349
#>     Attrib V57    0.4371416230204255
#>     Attrib V58    -0.0444898161926688
#>     Attrib V59    0.015192861214778567
#>     Attrib V6    0.13956406341132502
#>     Attrib V60    0.1391285759012644
#>     Attrib V7    -0.09524921827913364
#>     Attrib V8    0.5119031480966431
#>     Attrib V9    -0.5085670295135695
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.20931778668604348
#>     Attrib V1    0.09530071368869607
#>     Attrib V10    0.43590276607840517
#>     Attrib V11    0.11013934413835576
#>     Attrib V12    0.007388493175493671
#>     Attrib V13    0.37835961619477965
#>     Attrib V14    -0.14559604313348004
#>     Attrib V15    -0.20270875537945307
#>     Attrib V16    -0.4249286061759802
#>     Attrib V17    -0.12092963186854788
#>     Attrib V18    0.013752881013349467
#>     Attrib V19    0.345234872470983
#>     Attrib V2    -0.30399152817159136
#>     Attrib V20    0.7267508782188806
#>     Attrib V21    0.5520342844807308
#>     Attrib V22    0.28601955548557123
#>     Attrib V23    0.23579623123079366
#>     Attrib V24    0.2046421166049602
#>     Attrib V25    -0.24355420850370305
#>     Attrib V26    -0.2962820284851595
#>     Attrib V27    -0.42172011569834483
#>     Attrib V28    -0.5629028943455354
#>     Attrib V29    -0.5806523718447196
#>     Attrib V3    -0.005483294431667518
#>     Attrib V30    -0.053373948296321846
#>     Attrib V31    -1.0669471646898645
#>     Attrib V32    -0.5456909712137455
#>     Attrib V33    0.09864335505125535
#>     Attrib V34    -0.04142358456586531
#>     Attrib V35    0.167763007685368
#>     Attrib V36    -0.397781310149434
#>     Attrib V37    -0.265870293742637
#>     Attrib V38    0.48908957437231415
#>     Attrib V39    -0.12192765171232564
#>     Attrib V4    0.14704860477161974
#>     Attrib V40    -0.6713687698769798
#>     Attrib V41    -0.15354871404771273
#>     Attrib V42    0.3989278575537477
#>     Attrib V43    0.05923160306992013
#>     Attrib V44    0.46454312154391797
#>     Attrib V45    0.8257292073498911
#>     Attrib V46    0.4335321599240479
#>     Attrib V47    0.19721919264955784
#>     Attrib V48    0.34114607253663026
#>     Attrib V49    0.2945766749704206
#>     Attrib V5    0.025856095321919154
#>     Attrib V50    -0.40254407437148987
#>     Attrib V51    0.14528049324064451
#>     Attrib V52    0.036402268343805416
#>     Attrib V53    0.4434465208842849
#>     Attrib V54    0.1657693454936296
#>     Attrib V55    -0.44638817209290416
#>     Attrib V56    -0.05907949796613529
#>     Attrib V57    -0.2545351456853884
#>     Attrib V58    0.12615691945304416
#>     Attrib V59    0.14836360350508246
#>     Attrib V6    -0.3730484032177717
#>     Attrib V60    -0.061979990621540505
#>     Attrib V7    0.22494897180959547
#>     Attrib V8    -0.3013761687569346
#>     Attrib V9    0.4252548932467449
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.19673247907871508
#>     Attrib V1    0.09266370925553445
#>     Attrib V10    0.4043243111468675
#>     Attrib V11    0.12537828940038273
#>     Attrib V12    -0.09072607779527239
#>     Attrib V13    0.4250556272478894
#>     Attrib V14    -0.09778143922277796
#>     Attrib V15    -0.1973393683272145
#>     Attrib V16    -0.40526961511506704
#>     Attrib V17    -0.1671036702574737
#>     Attrib V18    2.844199774935749E-4
#>     Attrib V19    0.4361653287627284
#>     Attrib V2    -0.27367412104946126
#>     Attrib V20    0.7092243802733202
#>     Attrib V21    0.6003514364839582
#>     Attrib V22    0.3804141358762404
#>     Attrib V23    0.2707798104546732
#>     Attrib V24    0.1904912885396691
#>     Attrib V25    -0.3029658801949285
#>     Attrib V26    -0.31207315385372714
#>     Attrib V27    -0.43800038931327856
#>     Attrib V28    -0.6563278814809185
#>     Attrib V29    -0.5805560008049614
#>     Attrib V3    -6.085720528308858E-4
#>     Attrib V30    -0.08229720729971339
#>     Attrib V31    -1.1442218433337337
#>     Attrib V32    -0.5806355660328139
#>     Attrib V33    0.16349813585495176
#>     Attrib V34    -0.06813863177622694
#>     Attrib V35    0.10406909753867206
#>     Attrib V36    -0.450448166363367
#>     Attrib V37    -0.31215225315134
#>     Attrib V38    0.45809254562868573
#>     Attrib V39    -0.18317927807078907
#>     Attrib V4    0.20134914305154417
#>     Attrib V40    -0.6592876974196152
#>     Attrib V41    -0.09838627120365943
#>     Attrib V42    0.44946931594177325
#>     Attrib V43    0.12169789489282455
#>     Attrib V44    0.396195815166642
#>     Attrib V45    0.8014800782004637
#>     Attrib V46    0.4882422857788821
#>     Attrib V47    0.1576400305515244
#>     Attrib V48    0.33832345179443707
#>     Attrib V49    0.25818817519212744
#>     Attrib V5    -0.004821085843486873
#>     Attrib V50    -0.463058594509602
#>     Attrib V51    0.0941525721853333
#>     Attrib V52    0.09773008417543638
#>     Attrib V53    0.502335209021039
#>     Attrib V54    0.15837434974871922
#>     Attrib V55    -0.47592493689528775
#>     Attrib V56    -0.016445449618012243
#>     Attrib V57    -0.20073174725889145
#>     Attrib V58    0.16126350368669304
#>     Attrib V59    0.2758776226300986
#>     Attrib V6    -0.46106206358506596
#>     Attrib V60    -0.011392727938556509
#>     Attrib V7    0.31784101819496147
#>     Attrib V8    -0.273402685134307
#>     Attrib V9    0.4468463289097865
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.1890184507623397
#>     Attrib V1    0.10384870091181052
#>     Attrib V10    0.16132325363279493
#>     Attrib V11    0.018726804825877394
#>     Attrib V12    -0.03274094592947405
#>     Attrib V13    0.2845174978575684
#>     Attrib V14    -0.0027421399324912233
#>     Attrib V15    -0.05108513120847819
#>     Attrib V16    -0.19069412554468573
#>     Attrib V17    -0.030863581082582903
#>     Attrib V18    0.01980673371021576
#>     Attrib V19    0.17371741588526476
#>     Attrib V2    -0.10222261158735346
#>     Attrib V20    0.3702248555276196
#>     Attrib V21    0.2966841759329161
#>     Attrib V22    0.10205885202134768
#>     Attrib V23    0.15803669813037444
#>     Attrib V24    0.15375272413665123
#>     Attrib V25    -0.10054546987336455
#>     Attrib V26    -0.20340498869275395
#>     Attrib V27    -0.21701700561174878
#>     Attrib V28    -0.3522328419296775
#>     Attrib V29    -0.2865247435181849
#>     Attrib V3    0.08835647649489754
#>     Attrib V30    -0.07931259586500489
#>     Attrib V31    -0.5810619678803518
#>     Attrib V32    -0.2242455483778247
#>     Attrib V33    0.08016291316797701
#>     Attrib V34    0.02705881466586817
#>     Attrib V35    0.03542990271248534
#>     Attrib V36    -0.29216061214553335
#>     Attrib V37    -0.18224233342347093
#>     Attrib V38    0.15424967914386958
#>     Attrib V39    -0.015693664665250528
#>     Attrib V4    0.10580382941788223
#>     Attrib V40    -0.28181814392186105
#>     Attrib V41    -0.02705397415363163
#>     Attrib V42    0.19097971261883456
#>     Attrib V43    -0.03599660604348306
#>     Attrib V44    0.1603187397998019
#>     Attrib V45    0.2872391537967201
#>     Attrib V46    0.20259390913353498
#>     Attrib V47    0.07227307188170742
#>     Attrib V48    0.11220992358712362
#>     Attrib V49    0.15890833031401075
#>     Attrib V5    0.04771979222464851
#>     Attrib V50    -0.22793812235485342
#>     Attrib V51    0.048172069304024526
#>     Attrib V52    0.032643444471214096
#>     Attrib V53    0.29397938813425023
#>     Attrib V54    0.07366294969887208
#>     Attrib V55    -0.2040012632239537
#>     Attrib V56    0.006231310405233377
#>     Attrib V57    -0.09643598986491338
#>     Attrib V58    0.10007712803542208
#>     Attrib V59    0.19676097693511638
#>     Attrib V6    -0.1463195170794322
#>     Attrib V60    0.07431638790888355
#>     Attrib V7    0.168958105866154
#>     Attrib V8    -0.20891612709538795
#>     Attrib V9    0.19637091037850576
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.16165260484793673
#>     Attrib V1    0.19704656697413148
#>     Attrib V10    0.4953972202426121
#>     Attrib V11    0.21245625762558298
#>     Attrib V12    0.049146964940902975
#>     Attrib V13    0.43892286863045166
#>     Attrib V14    -0.1667252375389989
#>     Attrib V15    -0.16193101719915595
#>     Attrib V16    -0.4708670825455345
#>     Attrib V17    -0.1817279910161954
#>     Attrib V18    -0.039405583656176586
#>     Attrib V19    0.32425632088370415
#>     Attrib V2    -0.22598308524954622
#>     Attrib V20    0.6705961789117921
#>     Attrib V21    0.5435760022763477
#>     Attrib V22    0.31225796751778917
#>     Attrib V23    0.2930422257868549
#>     Attrib V24    0.23230526021591738
#>     Attrib V25    -0.22882436606247578
#>     Attrib V26    -0.1972116498413436
#>     Attrib V27    -0.39807065962448085
#>     Attrib V28    -0.5976341423407519
#>     Attrib V29    -0.5841827905560969
#>     Attrib V3    -0.01620821490103581
#>     Attrib V30    -0.04108488568579042
#>     Attrib V31    -0.9885619585159252
#>     Attrib V32    -0.47245310908414756
#>     Attrib V33    0.1697399462995068
#>     Attrib V34    -0.09366121475712595
#>     Attrib V35    0.14324103877947308
#>     Attrib V36    -0.5038880030523398
#>     Attrib V37    -0.2855688610869306
#>     Attrib V38    0.3679285540078384
#>     Attrib V39    -0.11704432910498609
#>     Attrib V4    0.13769429936410135
#>     Attrib V40    -0.6719741131379265
#>     Attrib V41    -0.1314122694241746
#>     Attrib V42    0.35035022430677015
#>     Attrib V43    0.017281201449816985
#>     Attrib V44    0.43584812626268665
#>     Attrib V45    0.6930662383783075
#>     Attrib V46    0.4374918417186608
#>     Attrib V47    0.15227750329046816
#>     Attrib V48    0.3674508912224649
#>     Attrib V49    0.34581857855033277
#>     Attrib V5    -0.0153359688623016
#>     Attrib V50    -0.4269412707809176
#>     Attrib V51    0.07234770995934874
#>     Attrib V52    0.06144631281458531
#>     Attrib V53    0.4429453124833892
#>     Attrib V54    0.19846695423782557
#>     Attrib V55    -0.4235100128828222
#>     Attrib V56    -0.05443058293913254
#>     Attrib V57    -0.2609524530404544
#>     Attrib V58    0.13637598332078507
#>     Attrib V59    0.21133134816136254
#>     Attrib V6    -0.36273241054221994
#>     Attrib V60    -0.01909024050127108
#>     Attrib V7    0.2422159250863209
#>     Attrib V8    -0.3703236205374413
#>     Attrib V9    0.4382572153799633
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.10233197075661607
#>     Attrib V1    -0.2495862973506211
#>     Attrib V10    -0.669440720422033
#>     Attrib V11    -0.2794564546922484
#>     Attrib V12    -0.1702084711883208
#>     Attrib V13    -0.8189805170417943
#>     Attrib V14    0.15397471151079412
#>     Attrib V15    0.32337462411286577
#>     Attrib V16    0.639184311621541
#>     Attrib V17    0.37245481806363967
#>     Attrib V18    0.12836716201098022
#>     Attrib V19    -0.2502251842433051
#>     Attrib V2    0.07925917287768823
#>     Attrib V20    -0.6178700249957235
#>     Attrib V21    -0.5091835006967105
#>     Attrib V22    -0.30888766715007776
#>     Attrib V23    -0.48674220673944557
#>     Attrib V24    -0.49965249743247175
#>     Attrib V25    0.3033990408658214
#>     Attrib V26    0.2747348355237984
#>     Attrib V27    0.15520947877228966
#>     Attrib V28    0.11711428676976643
#>     Attrib V29    0.2043717335974111
#>     Attrib V3    0.04673760984092682
#>     Attrib V30    -0.031892499821700004
#>     Attrib V31    0.9403247287636821
#>     Attrib V32    0.19017198582045425
#>     Attrib V33    -0.2729092999139122
#>     Attrib V34    0.11478697115111747
#>     Attrib V35    -0.21810980848254216
#>     Attrib V36    0.7889000669123684
#>     Attrib V37    0.37868205020697066
#>     Attrib V38    -0.5004608659738867
#>     Attrib V39    0.030711188204124298
#>     Attrib V4    0.009373584285084906
#>     Attrib V40    0.5692273566016022
#>     Attrib V41    -0.1760406493801127
#>     Attrib V42    -0.3742121066485163
#>     Attrib V43    0.04616619190086935
#>     Attrib V44    -0.41593681946460986
#>     Attrib V45    -0.8212385832649102
#>     Attrib V46    -0.5446742688748606
#>     Attrib V47    -0.2209996885632025
#>     Attrib V48    -0.5108650803253303
#>     Attrib V49    -0.5144459642967528
#>     Attrib V5    -0.030030234485093864
#>     Attrib V50    0.7092417062895222
#>     Attrib V51    -0.09082981328841824
#>     Attrib V52    -0.12986916696161763
#>     Attrib V53    -0.6635189063134094
#>     Attrib V54    -0.02581423759681152
#>     Attrib V55    0.6706327065035259
#>     Attrib V56    0.3185661631824213
#>     Attrib V57    0.4921808320928129
#>     Attrib V58    -0.04623856635595345
#>     Attrib V59    -0.02878408073124218
#>     Attrib V6    0.24868493018609725
#>     Attrib V60    0.17776028117297854
#>     Attrib V7    -0.20969449253857828
#>     Attrib V8    0.5709535838574223
#>     Attrib V9    -0.5861216915165506
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1657251863803255
#>     Attrib V1    0.08224511344543833
#>     Attrib V10    0.07737448313331637
#>     Attrib V11    0.04392677787902833
#>     Attrib V12    0.026872951392392475
#>     Attrib V13    0.09467210472569679
#>     Attrib V14    0.027904186801047608
#>     Attrib V15    0.01764749838348084
#>     Attrib V16    0.0580253310876407
#>     Attrib V17    0.06181060668850813
#>     Attrib V18    0.06152217507300353
#>     Attrib V19    0.0590668951002693
#>     Attrib V2    0.019743751388586903
#>     Attrib V20    0.01485766963186353
#>     Attrib V21    -0.007024757917033015
#>     Attrib V22    -0.03600802076225543
#>     Attrib V23    -0.05418337722012541
#>     Attrib V24    0.01861272048071088
#>     Attrib V25    -0.016189067543684998
#>     Attrib V26    -0.07297324188520368
#>     Attrib V27    -0.08061761076812127
#>     Attrib V28    -0.06932759402056517
#>     Attrib V29    -0.08997123476105848
#>     Attrib V3    0.08930193065961238
#>     Attrib V30    -0.06988275236998935
#>     Attrib V31    -0.12962981826630202
#>     Attrib V32    -0.023666523650618478
#>     Attrib V33    0.012953102906668283
#>     Attrib V34    0.05873519656939449
#>     Attrib V35    0.02100001483698268
#>     Attrib V36    -0.021960572876813154
#>     Attrib V37    0.02409805727095436
#>     Attrib V38    0.05437789047685222
#>     Attrib V39    0.0481625958143993
#>     Attrib V4    0.11723570701597863
#>     Attrib V40    -0.03137328275159136
#>     Attrib V41    0.03480513828870869
#>     Attrib V42    0.08241782792901849
#>     Attrib V43    0.016548000259545444
#>     Attrib V44    0.036670604960709924
#>     Attrib V45    0.09526850662366305
#>     Attrib V46    0.08723153059521509
#>     Attrib V47    0.05678802504435865
#>     Attrib V48    0.05166152177394225
#>     Attrib V49    0.03404321618565219
#>     Attrib V5    0.08763881061706877
#>     Attrib V50    0.06859489886153641
#>     Attrib V51    0.13408242607292503
#>     Attrib V52    0.11336357859464591
#>     Attrib V53    0.1568844607791116
#>     Attrib V54    0.05210432191012215
#>     Attrib V55    0.05043529617757184
#>     Attrib V56    0.0805978121242379
#>     Attrib V57    0.07220213874679768
#>     Attrib V58    0.1349585061385831
#>     Attrib V59    0.07054063518258787
#>     Attrib V6    0.023842737256661365
#>     Attrib V60    0.07202574971925209
#>     Attrib V7    0.035731198503914006
#>     Attrib V8    -0.016291737367609443
#>     Attrib V9    0.10732452111741499
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.09559401691946899
#>     Attrib V1    0.13560707585458445
#>     Attrib V10    0.2138479698961725
#>     Attrib V11    0.06652742854273953
#>     Attrib V12    -0.04299826651987158
#>     Attrib V13    0.1660703304387684
#>     Attrib V14    -0.044715056704285695
#>     Attrib V15    0.011251709205213607
#>     Attrib V16    -0.14905191951966223
#>     Attrib V17    -0.050102981439662776
#>     Attrib V18    -0.0023292616480887285
#>     Attrib V19    0.19280178077915733
#>     Attrib V2    -0.015416287039666523
#>     Attrib V20    0.2968907926174929
#>     Attrib V21    0.2320253468825294
#>     Attrib V22    0.14669793868920625
#>     Attrib V23    0.08092191941322031
#>     Attrib V24    0.142535454513782
#>     Attrib V25    -0.16398760907677676
#>     Attrib V26    -0.17815460473696992
#>     Attrib V27    -0.2278268319459131
#>     Attrib V28    -0.3191786872132075
#>     Attrib V29    -0.32421600313542254
#>     Attrib V3    0.012662969133455835
#>     Attrib V30    -0.06282982002692042
#>     Attrib V31    -0.45601353130194355
#>     Attrib V32    -0.2409608345414674
#>     Attrib V33    0.13134579550999817
#>     Attrib V34    -0.014992080931811315
#>     Attrib V35    0.09551978645271077
#>     Attrib V36    -0.2690953185349258
#>     Attrib V37    -0.20154170805258795
#>     Attrib V38    0.19462907008973662
#>     Attrib V39    -0.016722035783425883
#>     Attrib V4    0.10499431772616837
#>     Attrib V40    -0.32858819995571253
#>     Attrib V41    -0.03379459571198589
#>     Attrib V42    0.12767457780210292
#>     Attrib V43    0.03956817671216569
#>     Attrib V44    0.20217932354781937
#>     Attrib V45    0.357050309028056
#>     Attrib V46    0.14720730741797416
#>     Attrib V47    -0.007007637597984281
#>     Attrib V48    0.16915157329335515
#>     Attrib V49    0.10494668225440251
#>     Attrib V5    0.03860667297115993
#>     Attrib V50    -0.18152754785509412
#>     Attrib V51    0.08220131293013107
#>     Attrib V52    0.047098144087804314
#>     Attrib V53    0.23409568790268395
#>     Attrib V54    0.07435359718059982
#>     Attrib V55    -0.14288838615509641
#>     Attrib V56    0.010677285363558083
#>     Attrib V57    -0.0699015872765234
#>     Attrib V58    0.07451026857794771
#>     Attrib V59    0.11051266966654671
#>     Attrib V6    -0.1411000446131615
#>     Attrib V60    0.012554577795696775
#>     Attrib V7    0.06599410049743412
#>     Attrib V8    -0.132739198425246
#>     Attrib V9    0.19631822443850455
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.19068805947475723
#>     Attrib V1    0.07089211535695764
#>     Attrib V10    0.07128093506060192
#>     Attrib V11    0.047380985773933404
#>     Attrib V12    0.006830817762013384
#>     Attrib V13    0.02474350763376697
#>     Attrib V14    0.0665520261783644
#>     Attrib V15    0.02812086159735174
#>     Attrib V16    0.047539190540768154
#>     Attrib V17    0.005037166815723819
#>     Attrib V18    0.0726801160883111
#>     Attrib V19    -0.012051876407759994
#>     Attrib V2    0.08478602091297487
#>     Attrib V20    0.032007951772378085
#>     Attrib V21    0.03669036289784649
#>     Attrib V22    -0.022441000836692246
#>     Attrib V23    -0.027024930935003123
#>     Attrib V24    -0.06110194895719434
#>     Attrib V25    -0.021036200354700434
#>     Attrib V26    -0.03285945735032012
#>     Attrib V27    -0.04154503876520275
#>     Attrib V28    -0.0725441449815924
#>     Attrib V29    -0.07346178176191755
#>     Attrib V3    0.1261994431841615
#>     Attrib V30    -0.065990597876349
#>     Attrib V31    -0.06295588384710793
#>     Attrib V32    -0.03319918702470287
#>     Attrib V33    0.011820642163965193
#>     Attrib V34    0.06376998351383503
#>     Attrib V35    0.012589580851283519
#>     Attrib V36    0.10252173089504021
#>     Attrib V37    0.02077188378590959
#>     Attrib V38    0.011668951672113912
#>     Attrib V39    0.08676302892166218
#>     Attrib V4    0.06758026863821469
#>     Attrib V40    0.03491347406503354
#>     Attrib V41    0.010508360994830544
#>     Attrib V42    0.04242157694966328
#>     Attrib V43    0.04115971663973597
#>     Attrib V44    0.0995641495835635
#>     Attrib V45    0.003950252039282306
#>     Attrib V46    0.028011110714221462
#>     Attrib V47    0.09504088930699839
#>     Attrib V48    0.05201527200688973
#>     Attrib V49    0.06427454410847457
#>     Attrib V5    0.0845812613244562
#>     Attrib V50    0.021412286556019323
#>     Attrib V51    0.12576956752346918
#>     Attrib V52    0.05972484777298144
#>     Attrib V53    0.08047162732466967
#>     Attrib V54    0.026729522092734825
#>     Attrib V55    0.0875101039774535
#>     Attrib V56    0.11394638510508966
#>     Attrib V57    0.040099528279351995
#>     Attrib V58    0.08394252509547262
#>     Attrib V59    0.12209260680473423
#>     Attrib V6    0.007756716466481612
#>     Attrib V60    0.10185996553044938
#>     Attrib V7    0.06987609656350649
#>     Attrib V8    0.09209295535731231
#>     Attrib V9    0.07448441970351084
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.2406689203472111
#>     Attrib V1    0.4503055411612042
#>     Attrib V10    0.783839209656875
#>     Attrib V11    0.5780874280202735
#>     Attrib V12    0.562312087696231
#>     Attrib V13    0.8621892726334934
#>     Attrib V14    0.044033198383647845
#>     Attrib V15    -0.10496231496810957
#>     Attrib V16    -0.5355518785818156
#>     Attrib V17    -0.62282908550045
#>     Attrib V18    -0.5466735192336473
#>     Attrib V19    -0.1749512878540058
#>     Attrib V2    0.461884508732612
#>     Attrib V20    -0.015246201023775788
#>     Attrib V21    -0.06705750866110732
#>     Attrib V22    -0.11391625666571932
#>     Attrib V23    0.12648521071983831
#>     Attrib V24    0.3510972090193727
#>     Attrib V25    -0.07660744465817479
#>     Attrib V26    0.4775965306449595
#>     Attrib V27    0.8802440911384969
#>     Attrib V28    1.077126806855292
#>     Attrib V29    0.6860822967449164
#>     Attrib V3    -0.048741078177528874
#>     Attrib V30    0.1217672516010986
#>     Attrib V31    -0.4054329115445995
#>     Attrib V32    0.1863762663131184
#>     Attrib V33    0.27541925692012054
#>     Attrib V34    0.032745050056332436
#>     Attrib V35    0.3129967177409548
#>     Attrib V36    -0.7669041869115482
#>     Attrib V37    -0.19279945329637058
#>     Attrib V38    0.0892757528661681
#>     Attrib V39    0.2505131817470898
#>     Attrib V4    0.07054329946938863
#>     Attrib V40    0.05111872867661298
#>     Attrib V41    0.37425632464145553
#>     Attrib V42    -0.1529820753085634
#>     Attrib V43    -0.3481253638131894
#>     Attrib V44    0.11964204235236275
#>     Attrib V45    0.6253849794714761
#>     Attrib V46    0.5823951740402623
#>     Attrib V47    0.26102346517228764
#>     Attrib V48    0.6134695819761694
#>     Attrib V49    0.6457869038180233
#>     Attrib V5    0.399453621502252
#>     Attrib V50    -0.35613276358400975
#>     Attrib V51    0.3138251094882114
#>     Attrib V52    0.2906893298831756
#>     Attrib V53    0.7695262519734852
#>     Attrib V54    0.13642811128349758
#>     Attrib V55    -0.27906358846254486
#>     Attrib V56    -0.5363074930012508
#>     Attrib V57    -0.6269968538955742
#>     Attrib V58    0.11925810321391733
#>     Attrib V59    -0.11032919787048229
#>     Attrib V6    0.2323256034103311
#>     Attrib V60    -0.05961411863811162
#>     Attrib V7    -0.1412158163010085
#>     Attrib V8    -0.39837054878363104
#>     Attrib V9    0.6220962093497787
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    -0.18553422395427818
#>     Attrib V1    0.16579786283337317
#>     Attrib V10    0.4757828796543637
#>     Attrib V11    0.11279857094960556
#>     Attrib V12    0.023526619252224566
#>     Attrib V13    0.4682519536961376
#>     Attrib V14    -0.0970920379095053
#>     Attrib V15    -0.1918537859355921
#>     Attrib V16    -0.4890626336478145
#>     Attrib V17    -0.2001688730845298
#>     Attrib V18    0.0013154227396856776
#>     Attrib V19    0.39453886587703624
#>     Attrib V2    -0.2963523761667856
#>     Attrib V20    0.7349608389319506
#>     Attrib V21    0.6523231385479495
#>     Attrib V22    0.38604216822694
#>     Attrib V23    0.295766430591145
#>     Attrib V24    0.2308284032566404
#>     Attrib V25    -0.2857080636274578
#>     Attrib V26    -0.23483472825177068
#>     Attrib V27    -0.35885363378987534
#>     Attrib V28    -0.5965099336726656
#>     Attrib V29    -0.5107031026442053
#>     Attrib V3    -0.022381641279967474
#>     Attrib V30    -0.03442465185570222
#>     Attrib V31    -1.0999345577278965
#>     Attrib V32    -0.6047845238947553
#>     Attrib V33    0.09196204337574014
#>     Attrib V34    -0.14201873717803867
#>     Attrib V35    0.11175156176409741
#>     Attrib V36    -0.4047914553276627
#>     Attrib V37    -0.22764638598568315
#>     Attrib V38    0.4967069259735104
#>     Attrib V39    -0.14145479390156818
#>     Attrib V4    0.131762804533832
#>     Attrib V40    -0.6738956001514905
#>     Attrib V41    -0.07838491952659811
#>     Attrib V42    0.3910369802965357
#>     Attrib V43    0.09952036593507994
#>     Attrib V44    0.4958320753078449
#>     Attrib V45    0.8086558289076079
#>     Attrib V46    0.42589883117816746
#>     Attrib V47    0.13628817936751822
#>     Attrib V48    0.3505499766216772
#>     Attrib V49    0.30630200954759773
#>     Attrib V5    0.014558463814605582
#>     Attrib V50    -0.4541830683104125
#>     Attrib V51    0.1461086698288682
#>     Attrib V52    0.08947961102180163
#>     Attrib V53    0.46983401579444445
#>     Attrib V54    0.16823678301304743
#>     Attrib V55    -0.4442739496869998
#>     Attrib V56    -0.06683960861302926
#>     Attrib V57    -0.3121473679837686
#>     Attrib V58    0.13931459151754688
#>     Attrib V59    0.258315381492512
#>     Attrib V6    -0.41349610595927794
#>     Attrib V60    -0.029694630664655587
#>     Attrib V7    0.3065946455216938
#>     Attrib V8    -0.3915237908347694
#>     Attrib V9    0.44434324332703934
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.15455647531380148
#>     Attrib V1    -0.5545207025668071
#>     Attrib V10    -1.0989534417521927
#>     Attrib V11    -0.43246167343087416
#>     Attrib V12    -0.23359052810557782
#>     Attrib V13    -0.986195953362319
#>     Attrib V14    -7.923944900968046E-4
#>     Attrib V15    0.2136253973179619
#>     Attrib V16    0.5769362585348735
#>     Attrib V17    0.7052165755918127
#>     Attrib V18    0.5203010286762109
#>     Attrib V19    0.003868197548259199
#>     Attrib V2    -0.4939041506924281
#>     Attrib V20    -0.25331156765465757
#>     Attrib V21    -0.37200463831730135
#>     Attrib V22    -0.4384898551606317
#>     Attrib V23    -0.861407980495598
#>     Attrib V24    -0.7653566758099031
#>     Attrib V25    0.2627506342018543
#>     Attrib V26    -0.4532314150305966
#>     Attrib V27    -1.2106041822532962
#>     Attrib V28    -1.8589676629878324
#>     Attrib V29    -1.4427874542853194
#>     Attrib V3    0.10329238656910476
#>     Attrib V30    -0.3325506317914545
#>     Attrib V31    0.8576065237045598
#>     Attrib V32    -0.27165071969240906
#>     Attrib V33    -0.19022921806241522
#>     Attrib V34    0.27760344072805293
#>     Attrib V35    -0.21237142640725823
#>     Attrib V36    1.081568108907563
#>     Attrib V37    0.2741862799035523
#>     Attrib V38    -0.0897018499468593
#>     Attrib V39    -0.2406891676243946
#>     Attrib V4    -0.04989601469816589
#>     Attrib V40    -0.029438507837294542
#>     Attrib V41    -0.8660985927819465
#>     Attrib V42    0.002432104566852191
#>     Attrib V43    0.40033908718913275
#>     Attrib V44    -0.44103746340401523
#>     Attrib V45    -0.9485491870310275
#>     Attrib V46    -0.9437023211515323
#>     Attrib V47    -0.5335113997932788
#>     Attrib V48    -0.8116210405842945
#>     Attrib V49    -0.955542691914689
#>     Attrib V5    -0.7595483864969178
#>     Attrib V50    0.40861318616523457
#>     Attrib V51    -0.5174146026481887
#>     Attrib V52    -0.36530509328897237
#>     Attrib V53    -1.1236085424801823
#>     Attrib V54    -0.013990991790884364
#>     Attrib V55    0.6421245222962714
#>     Attrib V56    0.8381714358876647
#>     Attrib V57    0.8600874010098799
#>     Attrib V58    -0.06245250119336384
#>     Attrib V59    0.2842446905963931
#>     Attrib V6    -0.597407453925905
#>     Attrib V60    0.19518565396623103
#>     Attrib V7    0.11891195894214827
#>     Attrib V8    0.22499008435040524
#>     Attrib V9    -0.970540260030647
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.19349534552191688
#>     Attrib V1    0.1743115440829331
#>     Attrib V10    0.27429828531857814
#>     Attrib V11    0.05083588514773142
#>     Attrib V12    -0.039077617498155096
#>     Attrib V13    0.24405129250640764
#>     Attrib V14    -0.06000370921268525
#>     Attrib V15    -0.131191518005199
#>     Attrib V16    -0.1986057835117674
#>     Attrib V17    -0.055966986143164255
#>     Attrib V18    0.019426315721377523
#>     Attrib V19    0.2471239240390766
#>     Attrib V2    -0.15984153730112022
#>     Attrib V20    0.5077044534719771
#>     Attrib V21    0.395315764975535
#>     Attrib V22    0.17267502572687893
#>     Attrib V23    0.12697770453471766
#>     Attrib V24    0.22723940972969978
#>     Attrib V25    -0.178736665417519
#>     Attrib V26    -0.2702096129788003
#>     Attrib V27    -0.4489114611830057
#>     Attrib V28    -0.6550792996319454
#>     Attrib V29    -0.5302867940570262
#>     Attrib V3    0.020366947259872956
#>     Attrib V30    -0.13625822476024044
#>     Attrib V31    -0.6975688823481386
#>     Attrib V32    -0.3350307494172944
#>     Attrib V33    0.1083411364401527
#>     Attrib V34    -0.014379469938149675
#>     Attrib V35    0.07057273933464094
#>     Attrib V36    -0.3579504875280854
#>     Attrib V37    -0.2738934201963452
#>     Attrib V38    0.2109150486141411
#>     Attrib V39    -0.1474726842569928
#>     Attrib V4    0.14230010648764319
#>     Attrib V40    -0.46487734610552195
#>     Attrib V41    -0.13129032645853117
#>     Attrib V42    0.28471305275427783
#>     Attrib V43    0.09394974758264367
#>     Attrib V44    0.24764764558653388
#>     Attrib V45    0.4282210591429671
#>     Attrib V46    0.2862450494585881
#>     Attrib V47    0.03781244469642543
#>     Attrib V48    0.23166261779568337
#>     Attrib V49    0.18891281536198345
#>     Attrib V5    0.033804558493038595
#>     Attrib V50    -0.27494001995925854
#>     Attrib V51    0.06823038892239704
#>     Attrib V52    0.07777927363366322
#>     Attrib V53    0.33437812031139
#>     Attrib V54    0.1827465981107955
#>     Attrib V55    -0.25134604460438814
#>     Attrib V56    0.057163261271915164
#>     Attrib V57    -0.11677841376373717
#>     Attrib V58    0.18845194314953853
#>     Attrib V59    0.22099795005268186
#>     Attrib V6    -0.2446975614135418
#>     Attrib V60    0.05579181034428126
#>     Attrib V7    0.2201031447314711
#>     Attrib V8    -0.279336789126438
#>     Attrib V9    0.2966212750329008
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.3218849513852908
#>     Attrib V1    0.13541265052082968
#>     Attrib V10    0.4495010060850658
#>     Attrib V11    0.11612102244421313
#>     Attrib V12    -0.04228871768361562
#>     Attrib V13    0.4047092138698255
#>     Attrib V14    -0.17514740922269684
#>     Attrib V15    -0.23357749136060466
#>     Attrib V16    -0.5106491192316135
#>     Attrib V17    -0.10476423053577813
#>     Attrib V18    0.033489701040419706
#>     Attrib V19    0.4769827601117794
#>     Attrib V2    -0.45671750893102886
#>     Attrib V20    0.8085325921990706
#>     Attrib V21    0.6252955466463258
#>     Attrib V22    0.3605667480456582
#>     Attrib V23    0.25265709553092963
#>     Attrib V24    0.174742526435909
#>     Attrib V25    -0.31375528989178825
#>     Attrib V26    -0.3727740903950299
#>     Attrib V27    -0.7371580211134344
#>     Attrib V28    -1.0245261443827223
#>     Attrib V29    -0.9250353786286262
#>     Attrib V3    0.06837664077624987
#>     Attrib V30    -0.1075694321826865
#>     Attrib V31    -1.2348262660733444
#>     Attrib V32    -0.6711908467730263
#>     Attrib V33    0.1603190132405584
#>     Attrib V34    -0.03813019696270135
#>     Attrib V35    0.19272566913876338
#>     Attrib V36    -0.43653001856272716
#>     Attrib V37    -0.2765909629733136
#>     Attrib V38    0.5037265918117156
#>     Attrib V39    -0.2300029914927411
#>     Attrib V4    0.24980477579267596
#>     Attrib V40    -0.8913996144588548
#>     Attrib V41    -0.1959303522563313
#>     Attrib V42    0.5393917231336617
#>     Attrib V43    0.14178849420737394
#>     Attrib V44    0.4772897182931081
#>     Attrib V45    0.9162768979280527
#>     Attrib V46    0.5058654523517571
#>     Attrib V47    0.22385764251469364
#>     Attrib V48    0.30339490943177605
#>     Attrib V49    0.29997360522754596
#>     Attrib V5    -0.04222173831580108
#>     Attrib V50    -0.514671232413047
#>     Attrib V51    0.06715406433665742
#>     Attrib V52    0.14467779803578126
#>     Attrib V53    0.5148443525740124
#>     Attrib V54    0.19285114738779258
#>     Attrib V55    -0.4614526844945441
#>     Attrib V56    0.0696623005474399
#>     Attrib V57    -0.25689300042538055
#>     Attrib V58    0.15561305031236491
#>     Attrib V59    0.29480152148729466
#>     Attrib V6    -0.49512158609846313
#>     Attrib V60    -0.051091805517391106
#>     Attrib V7    0.43933891069556824
#>     Attrib V8    -0.3366576018050824
#>     Attrib V9    0.4925671409026069
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.03784953229409831
#>     Attrib V1    -0.2133434416740062
#>     Attrib V10    -0.685662685813866
#>     Attrib V11    -0.2538209604971372
#>     Attrib V12    -0.19925505880246427
#>     Attrib V13    -0.803429895932888
#>     Attrib V14    0.16082737333211458
#>     Attrib V15    0.27746296198997644
#>     Attrib V16    0.5552836314413039
#>     Attrib V17    0.3677026006941295
#>     Attrib V18    0.12357444523433528
#>     Attrib V19    -0.2961466040301067
#>     Attrib V2    0.12762482136254596
#>     Attrib V20    -0.6064433940947362
#>     Attrib V21    -0.44285609053299585
#>     Attrib V22    -0.3351926691051086
#>     Attrib V23    -0.40966366040243096
#>     Attrib V24    -0.4996352036962588
#>     Attrib V25    0.2944021738613161
#>     Attrib V26    0.20606771981404126
#>     Attrib V27    0.1286211163075518
#>     Attrib V28    0.13969515372874775
#>     Attrib V29    0.20725097141336848
#>     Attrib V3    0.007978484121383819
#>     Attrib V30    -0.01903404735339383
#>     Attrib V31    0.9079757421379029
#>     Attrib V32    0.2524040246050183
#>     Attrib V33    -0.27678526347358107
#>     Attrib V34    0.05510089180551213
#>     Attrib V35    -0.22495014080272666
#>     Attrib V36    0.7967900377247927
#>     Attrib V37    0.28394214217171443
#>     Attrib V38    -0.49837400646186475
#>     Attrib V39    0.03244082827351656
#>     Attrib V4    0.03425265892322226
#>     Attrib V40    0.6121959977839191
#>     Attrib V41    -0.09883574675940418
#>     Attrib V42    -0.32883159005916623
#>     Attrib V43    0.15694205202182696
#>     Attrib V44    -0.37501463356347653
#>     Attrib V45    -0.8704494553855822
#>     Attrib V46    -0.5566171633766543
#>     Attrib V47    -0.19340520267696382
#>     Attrib V48    -0.5068774005313267
#>     Attrib V49    -0.5224632655910606
#>     Attrib V5    -0.09420317203701487
#>     Attrib V50    0.7181034368911473
#>     Attrib V51    -0.1263567711991091
#>     Attrib V52    -0.06419663266871492
#>     Attrib V53    -0.7413816550711929
#>     Attrib V54    -0.031629142403338244
#>     Attrib V55    0.641150830864146
#>     Attrib V56    0.28380003405841914
#>     Attrib V57    0.5511734751971445
#>     Attrib V58    -0.028199369907005462
#>     Attrib V59    -0.03414379836889473
#>     Attrib V6    0.2645537570719179
#>     Attrib V60    0.13324648202166045
#>     Attrib V7    -0.20706364473733957
#>     Attrib V8    0.5750211061555665
#>     Attrib V9    -0.5256353741312223
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.4124455339478731
#>     Attrib V1    0.6320396461519248
#>     Attrib V10    0.7278905733941745
#>     Attrib V11    0.6965828915546787
#>     Attrib V12    0.7754181637565822
#>     Attrib V13    0.9643192922603575
#>     Attrib V14    0.10980115600230674
#>     Attrib V15    -0.08673157678798182
#>     Attrib V16    -0.37634428777629253
#>     Attrib V17    -0.4644436816749772
#>     Attrib V18    -0.49665322697762115
#>     Attrib V19    -0.36457972452019033
#>     Attrib V2    0.7429265805534486
#>     Attrib V20    -0.23216809829137913
#>     Attrib V21    -0.27536916651432514
#>     Attrib V22    -0.07567215816219307
#>     Attrib V23    0.7020711828073203
#>     Attrib V24    0.9337575460406938
#>     Attrib V25    0.23131558699481394
#>     Attrib V26    0.9880849764718515
#>     Attrib V27    1.4702818702476539
#>     Attrib V28    1.6753328850842066
#>     Attrib V29    1.0871754407013263
#>     Attrib V3    0.06288170016673031
#>     Attrib V30    -0.025596921924587013
#>     Attrib V31    -0.141704758430512
#>     Attrib V32    0.5280093992396366
#>     Attrib V33    0.08673722433795192
#>     Attrib V34    -0.06717385428352662
#>     Attrib V35    0.1795415565956062
#>     Attrib V36    -1.1198762251879237
#>     Attrib V37    -0.2155286586009131
#>     Attrib V38    -0.16076306732490545
#>     Attrib V39    0.3637264637550958
#>     Attrib V4    -0.195691498642747
#>     Attrib V40    0.4737904516920653
#>     Attrib V41    0.9339633376080757
#>     Attrib V42    -0.344514686217222
#>     Attrib V43    -0.39105523184295293
#>     Attrib V44    0.0799230535955944
#>     Attrib V45    0.4276494125991607
#>     Attrib V46    0.6248561374889277
#>     Attrib V47    0.3916784869034982
#>     Attrib V48    0.7919452959909957
#>     Attrib V49    0.8230106783799728
#>     Attrib V5    0.7364280334711286
#>     Attrib V50    -0.11776258497944542
#>     Attrib V51    0.641641098016501
#>     Attrib V52    0.535761290712058
#>     Attrib V53    1.282812008917544
#>     Attrib V54    0.20293582652577588
#>     Attrib V55    -0.18814381588493045
#>     Attrib V56    -0.5592032215286332
#>     Attrib V57    -0.4196968652212213
#>     Attrib V58    0.0984143017386299
#>     Attrib V59    -0.022138692824560217
#>     Attrib V6    0.752106164484603
#>     Attrib V60    0.04857662934537117
#>     Attrib V7    -0.5655519870405249
#>     Attrib V8    -0.5179412717808677
#>     Attrib V9    0.6861685786648677
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.1720830199446094
#>     Attrib V1    -0.12748723356501518
#>     Attrib V10    -0.3734730232229078
#>     Attrib V11    -0.20492841767857392
#>     Attrib V12    -0.16398452700494962
#>     Attrib V13    -0.4995041646711538
#>     Attrib V14    0.15584619281749565
#>     Attrib V15    0.14787550466134064
#>     Attrib V16    0.34484742369026267
#>     Attrib V17    0.2349972450034703
#>     Attrib V18    0.10472248099628016
#>     Attrib V19    -0.011563312178320288
#>     Attrib V2    0.060119106071731085
#>     Attrib V20    -0.1662655543204934
#>     Attrib V21    -0.03257533024307726
#>     Attrib V22    0.023493530541648454
#>     Attrib V23    -0.1249832329122357
#>     Attrib V24    -0.257306998118163
#>     Attrib V25    0.2211616286863922
#>     Attrib V26    0.07112384863093868
#>     Attrib V27    0.06234486461461163
#>     Attrib V28    0.022947249598121312
#>     Attrib V29    0.0581868533576687
#>     Attrib V3    0.012626920165456548
#>     Attrib V30    -0.05384168255600517
#>     Attrib V31    0.34340532381634165
#>     Attrib V32    -0.07565484377805917
#>     Attrib V33    -0.20570314385853494
#>     Attrib V34    -0.08500064551432447
#>     Attrib V35    -0.1551835862664486
#>     Attrib V36    0.5760005677979262
#>     Attrib V37    0.24103288492146055
#>     Attrib V38    -0.2396669888128619
#>     Attrib V39    0.027887752032654294
#>     Attrib V4    0.0698362946992115
#>     Attrib V40    0.27580536328765964
#>     Attrib V41    -0.14496489188781905
#>     Attrib V42    -0.0820648698855896
#>     Attrib V43    0.15431245106135713
#>     Attrib V44    -0.12143613476699786
#>     Attrib V45    -0.4812048693074982
#>     Attrib V46    -0.3732132883010992
#>     Attrib V47    -0.13889569378857966
#>     Attrib V48    -0.3193124331946058
#>     Attrib V49    -0.3208540911749537
#>     Attrib V5    -0.14892794946506635
#>     Attrib V50    0.48194239121953614
#>     Attrib V51    -0.11138133402474326
#>     Attrib V52    -0.12084029027923554
#>     Attrib V53    -0.447817966523875
#>     Attrib V54    0.012991794935328291
#>     Attrib V55    0.35989919928200587
#>     Attrib V56    0.28301361656803803
#>     Attrib V57    0.3728355452680795
#>     Attrib V58    -0.0011718295831407606
#>     Attrib V59    0.09291921320544623
#>     Attrib V6    0.04978823896106911
#>     Attrib V60    0.17164199143829145
#>     Attrib V7    -0.06802963564958954
#>     Attrib V8    0.40867808856522203
#>     Attrib V9    -0.35341332924728125
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.36105613385130736
#>     Attrib V1    0.6976206548761389
#>     Attrib V10    0.8448157999863538
#>     Attrib V11    0.7134408017439197
#>     Attrib V12    0.6870645830429524
#>     Attrib V13    0.9846246449317253
#>     Attrib V14    0.0032252858048094283
#>     Attrib V15    -0.14307791228728922
#>     Attrib V16    -0.5392244209492086
#>     Attrib V17    -0.6699431165902382
#>     Attrib V18    -0.5562753075412574
#>     Attrib V19    -0.2832498175722429
#>     Attrib V2    0.724862963933305
#>     Attrib V20    -0.09110551796990204
#>     Attrib V21    -0.023558680150454835
#>     Attrib V22    0.008912016104586567
#>     Attrib V23    0.5006656251609162
#>     Attrib V24    0.7390071017650357
#>     Attrib V25    0.07263707217145605
#>     Attrib V26    0.8819987385798884
#>     Attrib V27    1.2937524462076546
#>     Attrib V28    1.499915785724714
#>     Attrib V29    1.0236826391080243
#>     Attrib V3    -0.02924702773392666
#>     Attrib V30    0.021221604900478377
#>     Attrib V31    -0.3968543712503678
#>     Attrib V32    0.27882669911510577
#>     Attrib V33    0.10292865190443828
#>     Attrib V34    -0.003977181241174686
#>     Attrib V35    0.2974805109815688
#>     Attrib V36    -0.9279910254936745
#>     Attrib V37    -0.058924439652835496
#>     Attrib V38    0.04829587301467298
#>     Attrib V39    0.4380257162770238
#>     Attrib V4    -0.11383888754539508
#>     Attrib V40    0.2756546074789445
#>     Attrib V41    0.6937022940411512
#>     Attrib V42    -0.39719434088766054
#>     Attrib V43    -0.44643029132128564
#>     Attrib V44    0.12101052792919183
#>     Attrib V45    0.6066171116559219
#>     Attrib V46    0.6721432759113258
#>     Attrib V47    0.43287762789079665
#>     Attrib V48    0.8297523051752247
#>     Attrib V49    0.7251736583931431
#>     Attrib V5    0.6573792917466149
#>     Attrib V50    -0.17655410662739063
#>     Attrib V51    0.5721237643530603
#>     Attrib V52    0.40500718293838245
#>     Attrib V53    1.063551406634969
#>     Attrib V54    0.15058052836162814
#>     Attrib V55    -0.24347132020087636
#>     Attrib V56    -0.6681285683393566
#>     Attrib V57    -0.5609441344134721
#>     Attrib V58    0.029505309025906118
#>     Attrib V59    -0.0860783629835946
#>     Attrib V6    0.6136367642612619
#>     Attrib V60    -0.03207078151306677
#>     Attrib V7    -0.4880762874304165
#>     Attrib V8    -0.5104923303072193
#>     Attrib V9    0.7145754384963828
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.15747398635348253
#>     Attrib V1    -0.47212473751549744
#>     Attrib V10    -1.0686400893955088
#>     Attrib V11    -0.4556568382940161
#>     Attrib V12    -0.31268711294801976
#>     Attrib V13    -0.856359870277253
#>     Attrib V14    0.0791655395237193
#>     Attrib V15    0.30856918941073724
#>     Attrib V16    0.6347078129635068
#>     Attrib V17    0.6219819695805874
#>     Attrib V18    0.5247885973110571
#>     Attrib V19    -0.027288357693571092
#>     Attrib V2    -0.39685019591272586
#>     Attrib V20    -0.26942880262024205
#>     Attrib V21    -0.29818805799623715
#>     Attrib V22    -0.30319559805656005
#>     Attrib V23    -0.7450866313917826
#>     Attrib V24    -0.7181060957966222
#>     Attrib V25    0.12456702622462107
#>     Attrib V26    -0.4819332698971452
#>     Attrib V27    -1.011962925525389
#>     Attrib V28    -1.487100916777617
#>     Attrib V29    -1.09699769021589
#>     Attrib V3    0.1254792581010383
#>     Attrib V30    -0.31306584079441896
#>     Attrib V31    0.6808309206561621
#>     Attrib V32    -0.1671608593800463
#>     Attrib V33    -0.20977977605618156
#>     Attrib V34    0.20460836019931158
#>     Attrib V35    -0.20184696121761636
#>     Attrib V36    1.0177379328482956
#>     Attrib V37    0.19823321729516388
#>     Attrib V38    -0.0769231179653829
#>     Attrib V39    -0.17866849446436445
#>     Attrib V4    -0.0416090245098941
#>     Attrib V40    0.006489170472143426
#>     Attrib V41    -0.7397962286236569
#>     Attrib V42    -0.04234380803620582
#>     Attrib V43    0.35472499840783794
#>     Attrib V44    -0.4057253208319833
#>     Attrib V45    -0.8054767684723034
#>     Attrib V46    -0.827716348628718
#>     Attrib V47    -0.5311210377806317
#>     Attrib V48    -0.8294121383217771
#>     Attrib V49    -0.8832626366703755
#>     Attrib V5    -0.6983219542808664
#>     Attrib V50    0.44956557374554945
#>     Attrib V51    -0.5192999506705576
#>     Attrib V52    -0.3339237266795122
#>     Attrib V53    -1.0933646045086345
#>     Attrib V54    -0.02306275049272436
#>     Attrib V55    0.6146054745084906
#>     Attrib V56    0.7409207130659011
#>     Attrib V57    0.666128637639328
#>     Attrib V58    0.006137789345795971
#>     Attrib V59    0.2619945056976909
#>     Attrib V6    -0.4351126698479003
#>     Attrib V60    0.19902941183736497
#>     Attrib V7    0.04708580428236357
#>     Attrib V8    0.3223640226321061
#>     Attrib V9    -0.852557100219741
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.15390779473561672
#>     Attrib V1    0.11151937167832492
#>     Attrib V10    0.37064844471168074
#>     Attrib V11    0.15584136067187415
#>     Attrib V12    0.028636651670426345
#>     Attrib V13    0.4007550274820436
#>     Attrib V14    -0.04638053486425025
#>     Attrib V15    -0.1359933508213751
#>     Attrib V16    -0.38645270886794403
#>     Attrib V17    -0.17314253151015832
#>     Attrib V18    -0.03814756345134707
#>     Attrib V19    0.2669775431281264
#>     Attrib V2    -0.20197547044242742
#>     Attrib V20    0.6337451152050853
#>     Attrib V21    0.5366411593311872
#>     Attrib V22    0.31818655042033933
#>     Attrib V23    0.1955967920299977
#>     Attrib V24    0.26395964964089913
#>     Attrib V25    -0.16850528773219509
#>     Attrib V26    -0.23320746878346663
#>     Attrib V27    -0.33212082688448624
#>     Attrib V28    -0.4906672077113005
#>     Attrib V29    -0.4177959460117847
#>     Attrib V3    0.057173575640630823
#>     Attrib V30    -0.12863684625707117
#>     Attrib V31    -0.9021354335581258
#>     Attrib V32    -0.4107140368641659
#>     Attrib V33    0.11922754018956074
#>     Attrib V34    -0.05657360293012908
#>     Attrib V35    0.1152653920626657
#>     Attrib V36    -0.4428456886088813
#>     Attrib V37    -0.24074895879848557
#>     Attrib V38    0.3419355851666635
#>     Attrib V39    -0.08860590840160276
#>     Attrib V4    0.08937048249456302
#>     Attrib V40    -0.5609438901944622
#>     Attrib V41    -0.07078071749669938
#>     Attrib V42    0.2933191998007284
#>     Attrib V43    0.07233594797935806
#>     Attrib V44    0.29189458465782464
#>     Attrib V45    0.6766090471345854
#>     Attrib V46    0.3850150404171044
#>     Attrib V47    0.1665488793148635
#>     Attrib V48    0.2699359907167057
#>     Attrib V49    0.24278249290243245
#>     Attrib V5    -0.008127630585102215
#>     Attrib V50    -0.3393524934508769
#>     Attrib V51    0.11503164460715976
#>     Attrib V52    0.10363132057328538
#>     Attrib V53    0.42176615423381353
#>     Attrib V54    0.12439319683049843
#>     Attrib V55    -0.3353909641552855
#>     Attrib V56    -0.04554143645147362
#>     Attrib V57    -0.23017246085464452
#>     Attrib V58    0.08715904036030264
#>     Attrib V59    0.16339289725844866
#>     Attrib V6    -0.29519824313017073
#>     Attrib V60    -0.024700449756869136
#>     Attrib V7    0.19113748549700396
#>     Attrib V8    -0.30203924122105136
#>     Attrib V9    0.3728618970867252
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.10117653205614655
#>     Attrib V1    0.007313002116268347
#>     Attrib V10    0.03663330201040107
#>     Attrib V11    0.02851078538421026
#>     Attrib V12    0.04604421548589975
#>     Attrib V13    -0.06342844381089159
#>     Attrib V14    0.10742116523961535
#>     Attrib V15    0.1746264264967331
#>     Attrib V16    0.2728061484616947
#>     Attrib V17    0.269003435141646
#>     Attrib V18    0.1905401887287272
#>     Attrib V19    0.04110780883972023
#>     Attrib V2    0.14190679496665765
#>     Attrib V20    -0.056975980869432556
#>     Attrib V21    0.07397172849781274
#>     Attrib V22    0.12110303470214039
#>     Attrib V23    -0.031690126573188905
#>     Attrib V24    -0.1821000839322187
#>     Attrib V25    0.07118619627984452
#>     Attrib V26    0.008390381948910569
#>     Attrib V27    -0.05942121026883527
#>     Attrib V28    -0.06384334763391475
#>     Attrib V29    -0.08280530952583352
#>     Attrib V3    0.07471324307223876
#>     Attrib V30    -0.03383662642901932
#>     Attrib V31    0.21480599721994764
#>     Attrib V32    -0.01514569662036125
#>     Attrib V33    -0.0750497767267132
#>     Attrib V34    0.025743781634399027
#>     Attrib V35    0.050637261886998526
#>     Attrib V36    0.26246822155576643
#>     Attrib V37    0.1968922255987656
#>     Attrib V38    -0.1479937565651979
#>     Attrib V39    0.08361068069735655
#>     Attrib V4    0.0783913117512137
#>     Attrib V40    0.30429209010725855
#>     Attrib V41    0.16498981523499356
#>     Attrib V42    0.11469718251208445
#>     Attrib V43    0.0980418569237653
#>     Attrib V44    -0.06707673766081952
#>     Attrib V45    -0.16093194279166212
#>     Attrib V46    -0.06806075992602573
#>     Attrib V47    0.036777134763769585
#>     Attrib V48    -0.028453900646310953
#>     Attrib V49    -0.11209263234701873
#>     Attrib V5    0.036350020890060133
#>     Attrib V50    0.1758217181097345
#>     Attrib V51    -0.04127984443534999
#>     Attrib V52    -0.04991635434844016
#>     Attrib V53    -0.15552651043974458
#>     Attrib V54    0.032505853237345075
#>     Attrib V55    0.1519907354386523
#>     Attrib V56    0.18214079650758003
#>     Attrib V57    0.16668364618006945
#>     Attrib V58    0.031167248456168393
#>     Attrib V59    0.06822214341101528
#>     Attrib V6    0.16436209812635605
#>     Attrib V60    0.08431109647055345
#>     Attrib V7    -0.02589017115653086
#>     Attrib V8    0.18244733531137788
#>     Attrib V9    -0.05079074056640447
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.38901712895913504
#>     Attrib V1    0.12116774898608211
#>     Attrib V10    0.5411362320441043
#>     Attrib V11    0.14591545470173423
#>     Attrib V12    -0.10988227748179082
#>     Attrib V13    0.48084780440391384
#>     Attrib V14    -0.18343022450656796
#>     Attrib V15    -0.24429285056742991
#>     Attrib V16    -0.54641304195225
#>     Attrib V17    -0.16186030618544853
#>     Attrib V18    0.020456163242563788
#>     Attrib V19    0.5043328105601632
#>     Attrib V2    -0.44780308091604126
#>     Attrib V20    0.9284801272722919
#>     Attrib V21    0.6485717388393468
#>     Attrib V22    0.39793332134542675
#>     Attrib V23    0.27170745941098723
#>     Attrib V24    0.24074364934699696
#>     Attrib V25    -0.38345403622331764
#>     Attrib V26    -0.4245397521063533
#>     Attrib V27    -0.773497890591621
#>     Attrib V28    -1.081013889509186
#>     Attrib V29    -0.9772564607498209
#>     Attrib V3    0.025717513742546515
#>     Attrib V30    -0.1105275558088717
#>     Attrib V31    -1.337068343977552
#>     Attrib V32    -0.7555680245466778
#>     Attrib V33    0.20227524890917806
#>     Attrib V34    0.0018968503704403631
#>     Attrib V35    0.18698516964442863
#>     Attrib V36    -0.5347563845022404
#>     Attrib V37    -0.3541861574508755
#>     Attrib V38    0.6016596544287953
#>     Attrib V39    -0.27939624149912695
#>     Attrib V4    0.2683948411713467
#>     Attrib V40    -0.9590543018872562
#>     Attrib V41    -0.2208845137879108
#>     Attrib V42    0.6300958567412692
#>     Attrib V43    0.14814142828677
#>     Attrib V44    0.5689642927734905
#>     Attrib V45    0.9653204164891571
#>     Attrib V46    0.5691690715743609
#>     Attrib V47    0.20742869289332375
#>     Attrib V48    0.36449152346136465
#>     Attrib V49    0.31262193029681057
#>     Attrib V5    -0.04663762317902414
#>     Attrib V50    -0.5871981665248623
#>     Attrib V51    0.05735757703933555
#>     Attrib V52    0.11893465729654709
#>     Attrib V53    0.5679161297020962
#>     Attrib V54    0.2415139116514061
#>     Attrib V55    -0.5155702719696819
#>     Attrib V56    -0.007945414814070788
#>     Attrib V57    -0.27710713047596325
#>     Attrib V58    0.1436764736974876
#>     Attrib V59    0.2648351514064699
#>     Attrib V6    -0.532553425903382
#>     Attrib V60    -0.0409309472440822
#>     Attrib V7    0.5152669195206477
#>     Attrib V8    -0.3346000435806042
#>     Attrib V9    0.581070384712364
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1577292923648867
#>     Attrib V1    0.14536037873990296
#>     Attrib V10    0.11054387556400819
#>     Attrib V11    0.01334820524388428
#>     Attrib V12    -0.048184805611330414
#>     Attrib V13    0.16430806694324634
#>     Attrib V14    0.03873566948684292
#>     Attrib V15    -0.009461101867847946
#>     Attrib V16    -0.10986233470197568
#>     Attrib V17    -0.050331487832784925
#>     Attrib V18    0.09392203780161927
#>     Attrib V19    0.15534646790085122
#>     Attrib V2    -0.1018985759067904
#>     Attrib V20    0.3525398962468494
#>     Attrib V21    0.3074874199737134
#>     Attrib V22    0.1192944013652676
#>     Attrib V23    0.12892479097506118
#>     Attrib V24    0.0939860530754025
#>     Attrib V25    -0.20661987199202506
#>     Attrib V26    -0.223004284251739
#>     Attrib V27    -0.2934956521894831
#>     Attrib V28    -0.33444268838562435
#>     Attrib V29    -0.3062740130751573
#>     Attrib V3    0.06330539731944737
#>     Attrib V30    -0.05157097321539692
#>     Attrib V31    -0.5634493181333354
#>     Attrib V32    -0.2580579502222116
#>     Attrib V33    0.10754035548322678
#>     Attrib V34    0.003155687337763078
#>     Attrib V35    0.06481700060309183
#>     Attrib V36    -0.18941396286331516
#>     Attrib V37    -0.16299786726356133
#>     Attrib V38    0.1392501357908729
#>     Attrib V39    -0.039148811801165216
#>     Attrib V4    0.09299003528266724
#>     Attrib V40    -0.32674211777710205
#>     Attrib V41    -0.07965921523357065
#>     Attrib V42    0.2055080474333613
#>     Attrib V43    -0.0202770918858824
#>     Attrib V44    0.20735634948780515
#>     Attrib V45    0.3686807411149964
#>     Attrib V46    0.18599673412145729
#>     Attrib V47    0.03263838807977712
#>     Attrib V48    0.09477992360183919
#>     Attrib V49    0.16764391218282818
#>     Attrib V5    0.03670648638480283
#>     Attrib V50    -0.2104326388341395
#>     Attrib V51    0.08012524146086032
#>     Attrib V52    0.08777463914476313
#>     Attrib V53    0.2676066514427756
#>     Attrib V54    0.06718646054948779
#>     Attrib V55    -0.19830301541827927
#>     Attrib V56    0.011493950291273019
#>     Attrib V57    -0.10522347042928755
#>     Attrib V58    0.17240647667270853
#>     Attrib V59    0.14985547256719714
#>     Attrib V6    -0.1471692235769581
#>     Attrib V60    0.032587197507596886
#>     Attrib V7    0.1377369338270286
#>     Attrib V8    -0.12900434788779017
#>     Attrib V9    0.21004878218233647
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
