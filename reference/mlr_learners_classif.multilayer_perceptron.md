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
#>     Threshold    -0.619914503826759
#>     Node 2    2.7558328403521952
#>     Node 3    1.9458459058602622
#>     Node 4    1.304826278978701
#>     Node 5    -3.2836069274583437
#>     Node 6    -0.014263346915433971
#>     Node 7    3.3768667875550555
#>     Node 8    1.2258155487660027
#>     Node 9    2.221351571012245
#>     Node 10    -0.8468075919252943
#>     Node 11    1.7664893622630504
#>     Node 12    2.391334482952771
#>     Node 13    -0.03207476993470322
#>     Node 14    1.7811361387308655
#>     Node 15    -0.8902647022216215
#>     Node 16    0.32813363387414674
#>     Node 17    0.9617155248914809
#>     Node 18    -2.038747530839274
#>     Node 19    2.189201829156597
#>     Node 20    1.5867485871768154
#>     Node 21    -3.111779450964857
#>     Node 22    1.4358597308281957
#>     Node 23    0.7590744356358969
#>     Node 24    -0.4684935946173803
#>     Node 25    4.6224500031880975
#>     Node 26    -0.03568607010194583
#>     Node 27    2.1332206407388834
#>     Node 28    -0.6860041303229958
#>     Node 29    1.2554220999892265
#>     Node 30    -2.07178464532971
#>     Node 31    0.5516564069100331
#>     Node 32    -0.1945228412455952
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.6202425384196731
#>     Node 2    -2.7616420898555614
#>     Node 3    -1.9057174770166239
#>     Node 4    -1.2782822132682916
#>     Node 5    3.2771273218732166
#>     Node 6    0.05598423198059598
#>     Node 7    -3.3770878534861257
#>     Node 8    -1.267517688234561
#>     Node 9    -2.226920186266923
#>     Node 10    0.8043391621580444
#>     Node 11    -1.7230759385728889
#>     Node 12    -2.4384751258140027
#>     Node 13    0.10172082430657889
#>     Node 14    -1.7374814396074019
#>     Node 15    0.8899688560471734
#>     Node 16    -0.33328240020628175
#>     Node 17    -0.9216398755770533
#>     Node 18    2.0502865293678383
#>     Node 19    -2.2058491129177686
#>     Node 20    -1.5469433879284318
#>     Node 21    3.091662233185325
#>     Node 22    -1.4760229566429703
#>     Node 23    -0.7929711641882098
#>     Node 24    0.47446066131794845
#>     Node 25    -4.6263945559076465
#>     Node 26    -0.03135936221755426
#>     Node 27    -2.1605063881070494
#>     Node 28    0.655125432809286
#>     Node 29    -1.288082221760694
#>     Node 30    2.100876892772241
#>     Node 31    -0.4813221848613888
#>     Node 32    0.19402929854128825
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.21450562297586534
#>     Attrib V1    0.3374900724792718
#>     Attrib V10    -0.15769834613768371
#>     Attrib V11    -0.01570186872809272
#>     Attrib V12    -0.019356849556828516
#>     Attrib V13    -0.6230902694131687
#>     Attrib V14    -0.41083733537517475
#>     Attrib V15    0.12991457494877434
#>     Attrib V16    -0.11810084021145602
#>     Attrib V17    -0.21698917074154542
#>     Attrib V18    0.33961764595243216
#>     Attrib V19    0.1805778111256157
#>     Attrib V2    0.10597892025921717
#>     Attrib V20    0.36478952556060396
#>     Attrib V21    1.0401143430377235
#>     Attrib V22    0.761140402979072
#>     Attrib V23    0.43653062439847407
#>     Attrib V24    -0.20260149582789183
#>     Attrib V25    -1.3182334808987068
#>     Attrib V26    -1.3153934105321525
#>     Attrib V27    -0.6071399134878802
#>     Attrib V28    -0.12322590604043085
#>     Attrib V29    -0.07434440133054786
#>     Attrib V3    -0.1395481645767847
#>     Attrib V30    0.2548112474498983
#>     Attrib V31    -2.1127302108362374
#>     Attrib V32    -0.6639456624547467
#>     Attrib V33    0.5543631120371733
#>     Attrib V34    -0.05055470756180094
#>     Attrib V35    -0.5886506814338973
#>     Attrib V36    -1.0527367616326788
#>     Attrib V37    -0.7809097602722418
#>     Attrib V38    0.5537244944801512
#>     Attrib V39    0.1337754820087446
#>     Attrib V4    0.7252370240851969
#>     Attrib V40    -0.3078418527006173
#>     Attrib V41    0.19803503450224796
#>     Attrib V42    0.4741124045259413
#>     Attrib V43    0.7613479369622861
#>     Attrib V44    0.4652302486561105
#>     Attrib V45    0.21519811458970795
#>     Attrib V46    -0.2537233369313992
#>     Attrib V47    -0.5372034721959635
#>     Attrib V48    0.4523246041442292
#>     Attrib V49    0.4352052621895826
#>     Attrib V5    0.09032996514328179
#>     Attrib V50    -0.7812302280529778
#>     Attrib V51    -0.4480549085053819
#>     Attrib V52    0.3878950862618867
#>     Attrib V53    0.13686446332143967
#>     Attrib V54    1.3125932182721765
#>     Attrib V55    -0.03785223018692519
#>     Attrib V56    0.3007563875379721
#>     Attrib V57    0.5867266247978429
#>     Attrib V58    0.2825813270718465
#>     Attrib V59    0.820051723779363
#>     Attrib V6    -0.3957513997164815
#>     Attrib V60    0.7958157294376804
#>     Attrib V7    0.5597908559189801
#>     Attrib V8    0.2132279130175387
#>     Attrib V9    -0.036991125417954504
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.09408411347892667
#>     Attrib V1    0.3136366305193265
#>     Attrib V10    -0.24469320109356646
#>     Attrib V11    -0.14625367681568005
#>     Attrib V12    -0.06746515665410503
#>     Attrib V13    -0.382394110849885
#>     Attrib V14    -0.19576287626997813
#>     Attrib V15    0.32409580091632306
#>     Attrib V16    0.020281418053524628
#>     Attrib V17    -0.10409205102387464
#>     Attrib V18    0.12290325900270443
#>     Attrib V19    0.05667170373844788
#>     Attrib V2    0.19651651381312032
#>     Attrib V20    0.21828706981346063
#>     Attrib V21    0.5827618167009299
#>     Attrib V22    0.3916804969004914
#>     Attrib V23    0.10187149628600695
#>     Attrib V24    -0.17442785347406028
#>     Attrib V25    -0.84495068384429
#>     Attrib V26    -1.0335204047950302
#>     Attrib V27    -0.7625985506586939
#>     Attrib V28    -0.4972302976623819
#>     Attrib V29    -0.47162029472386124
#>     Attrib V3    -0.02243250623956683
#>     Attrib V30    -0.021888750960010864
#>     Attrib V31    -1.1904360476417033
#>     Attrib V32    -0.29756461218981134
#>     Attrib V33    0.5256057344054731
#>     Attrib V34    0.044939435336879184
#>     Attrib V35    -0.3534302867057808
#>     Attrib V36    -0.6571605881324334
#>     Attrib V37    -0.54111906899745
#>     Attrib V38    0.18787994810982436
#>     Attrib V39    -0.004465954980332664
#>     Attrib V4    0.4457432946109357
#>     Attrib V40    -0.2329805997329113
#>     Attrib V41    0.009528247797396451
#>     Attrib V42    0.20882422197651274
#>     Attrib V43    0.3282611801649606
#>     Attrib V44    0.16635115495601294
#>     Attrib V45    0.09648272943328236
#>     Attrib V46    -0.17875579675026923
#>     Attrib V47    -0.4016796306693242
#>     Attrib V48    0.16760761215468253
#>     Attrib V49    0.14052784754083186
#>     Attrib V5    0.009736104043932131
#>     Attrib V50    -0.45203708862968667
#>     Attrib V51    -0.3586739800023882
#>     Attrib V52    0.17622858041654849
#>     Attrib V53    0.047532907724994675
#>     Attrib V54    1.0105873030822985
#>     Attrib V55    0.33843999432035615
#>     Attrib V56    0.36058668557985485
#>     Attrib V57    0.5423955651876132
#>     Attrib V58    0.31523957869955505
#>     Attrib V59    0.6781641145547087
#>     Attrib V6    -0.23328192459711922
#>     Attrib V60    0.5816178262186198
#>     Attrib V7    0.30648310713654175
#>     Attrib V8    0.31659637898545845
#>     Attrib V9    -0.026237023922362653
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.251700909498793
#>     Attrib V1    0.1814696416751868
#>     Attrib V10    0.14668650216033247
#>     Attrib V11    0.428781480659525
#>     Attrib V12    0.38299565811511566
#>     Attrib V13    -0.05068778068629308
#>     Attrib V14    -0.09175457112069137
#>     Attrib V15    -0.009374273097427797
#>     Attrib V16    -0.10381926171311814
#>     Attrib V17    -0.35741220585638905
#>     Attrib V18    -0.23873086397578536
#>     Attrib V19    -0.3571610160170839
#>     Attrib V2    0.152774139730168
#>     Attrib V20    -0.5121947302388568
#>     Attrib V21    -0.04204671185245786
#>     Attrib V22    -0.19728377769142277
#>     Attrib V23    -0.3158921040361322
#>     Attrib V24    -0.32183010594795886
#>     Attrib V25    -0.43108583069610107
#>     Attrib V26    -0.1318402908746704
#>     Attrib V27    0.2141964955531479
#>     Attrib V28    0.5768114841984523
#>     Attrib V29    0.24557779605179103
#>     Attrib V3    -0.16296844706672217
#>     Attrib V30    0.20620576102165727
#>     Attrib V31    -0.556441767929083
#>     Attrib V32    0.2439114389584152
#>     Attrib V33    0.3892110999262056
#>     Attrib V34    0.1077615730489596
#>     Attrib V35    -0.14758947130653052
#>     Attrib V36    -0.4213384671411345
#>     Attrib V37    -0.39136733297703685
#>     Attrib V38    -0.048099110373229725
#>     Attrib V39    0.014965590318585742
#>     Attrib V4    0.2957571610210665
#>     Attrib V40    -0.10435554517868054
#>     Attrib V41    0.11425169524801759
#>     Attrib V42    -0.15239933474260345
#>     Attrib V43    -0.06286345220391538
#>     Attrib V44    -0.12066468755213736
#>     Attrib V45    0.2578563488522953
#>     Attrib V46    0.10857415343607649
#>     Attrib V47    -0.06200399445581871
#>     Attrib V48    0.6522119966005436
#>     Attrib V49    0.9033186828901575
#>     Attrib V5    0.026962925009115596
#>     Attrib V50    -0.30538190887966454
#>     Attrib V51    -0.1549112956719328
#>     Attrib V52    0.2887248465188986
#>     Attrib V53    0.16026258112307507
#>     Attrib V54    0.2231507785825493
#>     Attrib V55    -0.14258206651894179
#>     Attrib V56    -0.279513418569669
#>     Attrib V57    0.1107828798491429
#>     Attrib V58    0.16572299073706984
#>     Attrib V59    0.24805489338929806
#>     Attrib V6    -0.1918620753679636
#>     Attrib V60    0.2674472292668817
#>     Attrib V7    0.09333143235922557
#>     Attrib V8    -0.021879185564776842
#>     Attrib V9    0.1270788885996856
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.20318185158311874
#>     Attrib V1    -0.5574103317008439
#>     Attrib V10    -0.7046768451724991
#>     Attrib V11    -1.3560716530626018
#>     Attrib V12    -1.2789855246989623
#>     Attrib V13    -0.21837753736406945
#>     Attrib V14    0.6198418521005996
#>     Attrib V15    -0.14307733916443588
#>     Attrib V16    0.07501661846043468
#>     Attrib V17    0.4124792281507696
#>     Attrib V18    0.05279332325196351
#>     Attrib V19    -0.721106256193848
#>     Attrib V2    -0.17221193533330903
#>     Attrib V20    -0.6067403745210108
#>     Attrib V21    -1.1153586236075923
#>     Attrib V22    -1.1236946333910909
#>     Attrib V23    -0.13536531274701266
#>     Attrib V24    -0.047978562274602995
#>     Attrib V25    0.25965542700293237
#>     Attrib V26    -0.650257657916956
#>     Attrib V27    -0.47165564314409786
#>     Attrib V28    -0.1328193821523458
#>     Attrib V29    0.13350691689774463
#>     Attrib V3    0.3050029669755536
#>     Attrib V30    -0.14435184994748632
#>     Attrib V31    1.9172413175698635
#>     Attrib V32    0.777224883033182
#>     Attrib V33    -0.20917802680114436
#>     Attrib V34    -0.7718707223733953
#>     Attrib V35    0.1366874045049304
#>     Attrib V36    1.6534392726373828
#>     Attrib V37    1.4375289145619756
#>     Attrib V38    -0.09042672963907553
#>     Attrib V39    -0.28354686349508534
#>     Attrib V4    -0.32253621358014595
#>     Attrib V40    0.4055244691404707
#>     Attrib V41    0.20126908566542498
#>     Attrib V42    0.3103702299632319
#>     Attrib V43    -0.10987473943450543
#>     Attrib V44    0.09601357489297523
#>     Attrib V45    -0.9648193436199382
#>     Attrib V46    -1.0434697624007223
#>     Attrib V47    -0.3892868717186071
#>     Attrib V48    -0.964659814150102
#>     Attrib V49    -1.302009698074893
#>     Attrib V5    -0.27556027904442415
#>     Attrib V50    1.1326140673531233
#>     Attrib V51    0.583004101639465
#>     Attrib V52    -0.32409166400155254
#>     Attrib V53    0.47998743551951206
#>     Attrib V54    -0.2416163653866353
#>     Attrib V55    0.09214358541015559
#>     Attrib V56    0.35503374054703557
#>     Attrib V57    0.4991309102012223
#>     Attrib V58    0.40402130485126836
#>     Attrib V59    0.639035021147295
#>     Attrib V6    0.5342358564630054
#>     Attrib V60    0.0798278283904423
#>     Attrib V7    0.16994388078244152
#>     Attrib V8    0.7205137669373485
#>     Attrib V9    -0.37164765053973675
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.11095099764246227
#>     Attrib V1    0.09730157890796144
#>     Attrib V10    0.0026831155758326028
#>     Attrib V11    -0.0037846468406972367
#>     Attrib V12    0.011504763287524793
#>     Attrib V13    -0.04655664488072584
#>     Attrib V14    0.03622102196120024
#>     Attrib V15    0.023289553929633076
#>     Attrib V16    0.07908532851611569
#>     Attrib V17    -0.0011273847938693261
#>     Attrib V18    0.027192762476021187
#>     Attrib V19    -0.03344617897819482
#>     Attrib V2    0.08447907958552034
#>     Attrib V20    -0.04160920770001003
#>     Attrib V21    -0.04199529793285125
#>     Attrib V22    -0.08862098422461444
#>     Attrib V23    -0.0441959293426426
#>     Attrib V24    -2.1009588803465247E-4
#>     Attrib V25    0.009062690086592115
#>     Attrib V26    -0.058282366305665495
#>     Attrib V27    -0.02375301834037662
#>     Attrib V28    -0.06251645537274444
#>     Attrib V29    -0.026119348467904868
#>     Attrib V3    0.11070764147587214
#>     Attrib V30    0.0024131695378251604
#>     Attrib V31    0.04132507402213227
#>     Attrib V32    0.06808881259662802
#>     Attrib V33    0.06460968277070615
#>     Attrib V34    0.018266375095960408
#>     Attrib V35    0.0948668830854685
#>     Attrib V36    0.0726108277183802
#>     Attrib V37    0.08960321676773905
#>     Attrib V38    0.024395980975059656
#>     Attrib V39    0.058361051301091836
#>     Attrib V4    0.12048368853234079
#>     Attrib V40    0.08365606958009306
#>     Attrib V41    0.12822216082134796
#>     Attrib V42    0.12059499201190087
#>     Attrib V43    0.07828215191527493
#>     Attrib V44    0.09768536650903609
#>     Attrib V45    0.05993182984307513
#>     Attrib V46    0.05978254745490601
#>     Attrib V47    0.04301208914344485
#>     Attrib V48    -0.028189598651095285
#>     Attrib V49    -0.04259694446878827
#>     Attrib V5    0.08697459790407734
#>     Attrib V50    0.0760608537573264
#>     Attrib V51    0.07075161674686625
#>     Attrib V52    0.038447170478662515
#>     Attrib V53    0.11504509582588604
#>     Attrib V54    -0.02825957505792959
#>     Attrib V55    0.024594780626255173
#>     Attrib V56    0.10752044997433881
#>     Attrib V57    0.13538372276450875
#>     Attrib V58    0.10739110703221035
#>     Attrib V59    0.12716682784703076
#>     Attrib V6    0.11912695937922954
#>     Attrib V60    0.1070194102680827
#>     Attrib V7    0.07595996646430311
#>     Attrib V8    0.10546077591422592
#>     Attrib V9    0.08878796682194136
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.17719593242435708
#>     Attrib V1    0.28832436623586893
#>     Attrib V10    0.5447990885305304
#>     Attrib V11    1.0345135230095683
#>     Attrib V12    0.8554223602659554
#>     Attrib V13    0.43705334712054583
#>     Attrib V14    -0.02771919839498874
#>     Attrib V15    -0.6599685063228862
#>     Attrib V16    -0.3289600496095887
#>     Attrib V17    -0.4985772289672529
#>     Attrib V18    0.1872699389189132
#>     Attrib V19    0.19548323979833748
#>     Attrib V2    0.399456605125675
#>     Attrib V20    -0.24507448635784587
#>     Attrib V21    0.40848557517033496
#>     Attrib V22    0.7815423262984112
#>     Attrib V23    0.6566340904758287
#>     Attrib V24    -0.03323163838715709
#>     Attrib V25    -0.09687476818170566
#>     Attrib V26    0.8279368446470636
#>     Attrib V27    1.276611565874433
#>     Attrib V28    2.005476070294298
#>     Attrib V29    1.6137061288694716
#>     Attrib V3    -0.25607305102555117
#>     Attrib V30    0.6072402185386223
#>     Attrib V31    -1.1123798399313178
#>     Attrib V32    -0.057736212206405374
#>     Attrib V33    -0.12442264769550725
#>     Attrib V34    -0.3661343786865993
#>     Attrib V35    -0.29316114064125415
#>     Attrib V36    -0.3693692845575099
#>     Attrib V37    -0.07463203488949062
#>     Attrib V38    0.11024245163557464
#>     Attrib V39    0.5760763490636039
#>     Attrib V4    0.6532648428774719
#>     Attrib V40    0.4198424330714612
#>     Attrib V41    0.744386388741344
#>     Attrib V42    -0.2676876223267247
#>     Attrib V43    0.09006605054585706
#>     Attrib V44    -0.12572763267097595
#>     Attrib V45    0.3388521057703591
#>     Attrib V46    0.5595928839867417
#>     Attrib V47    0.3913844460848671
#>     Attrib V48    1.1686928146617757
#>     Attrib V49    1.8631792790585286
#>     Attrib V5    0.352700461693972
#>     Attrib V50    -0.20326337461233115
#>     Attrib V51    0.28098837509659647
#>     Attrib V52    1.1318558680673882
#>     Attrib V53    0.4461318036071367
#>     Attrib V54    -0.15297733682435136
#>     Attrib V55    -1.0644471444467731
#>     Attrib V56    -0.7727742682336235
#>     Attrib V57    -0.6920084546290103
#>     Attrib V58    0.07640026115521177
#>     Attrib V59    -0.09679316231665294
#>     Attrib V6    0.03570893203257594
#>     Attrib V60    0.36634209465219086
#>     Attrib V7    0.04760323030237365
#>     Attrib V8    -0.5746458897743641
#>     Attrib V9    0.1852643433728229
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.2386500871654972
#>     Attrib V1    0.29337629349396654
#>     Attrib V10    0.11635566455241278
#>     Attrib V11    0.37099355740186435
#>     Attrib V12    0.29343601124818314
#>     Attrib V13    -0.07810743875500804
#>     Attrib V14    -0.12697275188230786
#>     Attrib V15    0.026550894874150577
#>     Attrib V16    0.020493446848683518
#>     Attrib V17    -0.3116717390432711
#>     Attrib V18    -0.34139267682092606
#>     Attrib V19    -0.4245949803489237
#>     Attrib V2    0.18806842808832366
#>     Attrib V20    -0.5234290446895778
#>     Attrib V21    -0.20922897141017657
#>     Attrib V22    -0.4127371309377106
#>     Attrib V23    -0.4503972673845572
#>     Attrib V24    -0.26234589626649807
#>     Attrib V25    -0.3251262888395766
#>     Attrib V26    -0.1265230499676818
#>     Attrib V27    0.10429200505747925
#>     Attrib V28    0.314797271830031
#>     Attrib V29    0.028297126140744106
#>     Attrib V3    -0.0908590847551684
#>     Attrib V30    0.09388770437628671
#>     Attrib V31    -0.4021191192232759
#>     Attrib V32    0.23949299108501998
#>     Attrib V33    0.37802958429967676
#>     Attrib V34    0.15036665463771748
#>     Attrib V35    -0.061335295511099674
#>     Attrib V36    -0.20899338944783769
#>     Attrib V37    -0.2657995644494343
#>     Attrib V38    0.039179764642760316
#>     Attrib V39    -0.016643084289939502
#>     Attrib V4    0.33054069742386566
#>     Attrib V40    -0.1526075996714926
#>     Attrib V41    0.06395478075164335
#>     Attrib V42    -0.21137196289130936
#>     Attrib V43    -0.07888656891955642
#>     Attrib V44    -0.08227626412186925
#>     Attrib V45    0.24641812035515478
#>     Attrib V46    0.2072870995484073
#>     Attrib V47    -0.010627918699288207
#>     Attrib V48    0.5015414227707852
#>     Attrib V49    0.6618814132186174
#>     Attrib V5    8.196425570811967E-4
#>     Attrib V50    -0.215027007405082
#>     Attrib V51    -0.16889470168475712
#>     Attrib V52    0.18135023398255246
#>     Attrib V53    0.17239467527083926
#>     Attrib V54    0.3236176854087748
#>     Attrib V55    0.03247145006080009
#>     Attrib V56    -0.26036693347416123
#>     Attrib V57    0.28524306698878477
#>     Attrib V58    0.1842339121954307
#>     Attrib V59    0.3363173817986718
#>     Attrib V6    -0.11305564113840182
#>     Attrib V60    0.37804231903663044
#>     Attrib V7    0.1620338787398428
#>     Attrib V8    0.11722140430167273
#>     Attrib V9    0.13359549806773352
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.29080104173361687
#>     Attrib V1    0.39074710459003675
#>     Attrib V10    0.5254872211630738
#>     Attrib V11    0.8764501852626325
#>     Attrib V12    0.7878123358232592
#>     Attrib V13    0.3415959022901774
#>     Attrib V14    -0.11501569273885427
#>     Attrib V15    -0.2807787884979095
#>     Attrib V16    -0.18006734918231015
#>     Attrib V17    -0.49266809820271684
#>     Attrib V18    -0.26058010414381394
#>     Attrib V19    -0.3872616728883176
#>     Attrib V2    0.2977291827001874
#>     Attrib V20    -0.5928376104114527
#>     Attrib V21    0.05773418390739825
#>     Attrib V22    0.1320016367934572
#>     Attrib V23    -0.16834489204081643
#>     Attrib V24    -0.1813142804918965
#>     Attrib V25    0.05911037099244985
#>     Attrib V26    0.6662356592903758
#>     Attrib V27    0.8917342653715316
#>     Attrib V28    1.3029210523236996
#>     Attrib V29    0.7661075006935064
#>     Attrib V3    -0.3040855077878872
#>     Attrib V30    0.3254713005236837
#>     Attrib V31    -0.6633896554293871
#>     Attrib V32    0.2624817084670494
#>     Attrib V33    0.2203516300468557
#>     Attrib V34    0.05720168464635753
#>     Attrib V35    -0.007962735574458778
#>     Attrib V36    -0.06002636150801829
#>     Attrib V37    0.009081272489591568
#>     Attrib V38    0.11193138172961029
#>     Attrib V39    0.2994960135186995
#>     Attrib V4    0.3044923730658073
#>     Attrib V40    0.059451986428104744
#>     Attrib V41    0.25500304043176986
#>     Attrib V42    -0.6172590618287866
#>     Attrib V43    -0.21291929806368892
#>     Attrib V44    -0.3015006752723127
#>     Attrib V45    0.41093971643182337
#>     Attrib V46    0.5159008318422058
#>     Attrib V47    0.17847914691827682
#>     Attrib V48    0.8121051201351196
#>     Attrib V49    1.3151328382893641
#>     Attrib V5    0.09768292267622454
#>     Attrib V50    -0.30763019404866204
#>     Attrib V51    -0.0029033294693247497
#>     Attrib V52    0.505468769745671
#>     Attrib V53    0.21720941107767583
#>     Attrib V54    0.0012360200227930736
#>     Attrib V55    -0.4166354379504878
#>     Attrib V56    -0.7325087342019126
#>     Attrib V57    -0.4053445976912038
#>     Attrib V58    0.056496842394329866
#>     Attrib V59    0.012951547173758137
#>     Attrib V6    0.13085216338501693
#>     Attrib V60    0.36904137726917324
#>     Attrib V7    0.18771693081456853
#>     Attrib V8    -0.1524217192470154
#>     Attrib V9    0.2842076241772366
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.11744401720574822
#>     Attrib V1    0.08986446563150871
#>     Attrib V10    -0.0774067826564542
#>     Attrib V11    -0.23691857585772208
#>     Attrib V12    -0.2786107643664864
#>     Attrib V13    0.0031493218796053903
#>     Attrib V14    0.28240449842788223
#>     Attrib V15    0.13750955064458603
#>     Attrib V16    0.21050979261198444
#>     Attrib V17    0.12339065650997219
#>     Attrib V18    0.07890140101177534
#>     Attrib V19    0.0954541814056032
#>     Attrib V2    -0.019177213434881955
#>     Attrib V20    0.1493257966742006
#>     Attrib V21    -0.034980397654617176
#>     Attrib V22    -0.20912302386600434
#>     Attrib V23    -0.24937539838716563
#>     Attrib V24    -0.2790131158627574
#>     Attrib V25    -0.04627787264147812
#>     Attrib V26    -0.06301253962423238
#>     Attrib V27    -0.16607889018916355
#>     Attrib V28    -0.15753784634515616
#>     Attrib V29    0.18106928889194307
#>     Attrib V3    0.042938151658553775
#>     Attrib V30    0.0874484796426989
#>     Attrib V31    0.5781542206419737
#>     Attrib V32    0.0797434847187137
#>     Attrib V33    0.011509173014039769
#>     Attrib V34    0.08994860546820567
#>     Attrib V35    0.2526238873474587
#>     Attrib V36    0.4455152573681772
#>     Attrib V37    0.3903772468146063
#>     Attrib V38    0.04377921619274517
#>     Attrib V39    0.11062584367581169
#>     Attrib V4    -0.12856586853215063
#>     Attrib V40    0.3087714593720277
#>     Attrib V41    0.19731554139932436
#>     Attrib V42    0.17449994752806994
#>     Attrib V43    -0.06456341684457823
#>     Attrib V44    0.006312562559189246
#>     Attrib V45    -0.11933033197034296
#>     Attrib V46    -0.09296672288279241
#>     Attrib V47    0.07574789907540283
#>     Attrib V48    -0.2688124744846466
#>     Attrib V49    -0.34106859568222364
#>     Attrib V5    0.04604558172035431
#>     Attrib V50    0.3991975143025287
#>     Attrib V51    0.12883121223960667
#>     Attrib V52    -0.2065322867542799
#>     Attrib V53    0.006526440035624957
#>     Attrib V54    -0.255965214728911
#>     Attrib V55    0.004017210868568401
#>     Attrib V56    -0.015425564010459308
#>     Attrib V57    0.03022254970108097
#>     Attrib V58    -0.04295773786027871
#>     Attrib V59    -0.031880381448165525
#>     Attrib V6    0.1427887471541752
#>     Attrib V60    -0.1870418913468656
#>     Attrib V7    -0.09428597210483375
#>     Attrib V8    0.014378181678132927
#>     Attrib V9    -0.1523324749308689
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.23496554754712404
#>     Attrib V1    -0.1278697473359389
#>     Attrib V10    0.20795861095460547
#>     Attrib V11    0.41790971394711934
#>     Attrib V12    0.5543253074032616
#>     Attrib V13    -0.1167521023972502
#>     Attrib V14    -0.5884476827577121
#>     Attrib V15    -0.45055806968788575
#>     Attrib V16    -0.3363549232851493
#>     Attrib V17    -0.1889288555876919
#>     Attrib V18    0.2768756544570793
#>     Attrib V19    -0.003394982394287933
#>     Attrib V2    -0.06595388535588596
#>     Attrib V20    -0.2872396909890079
#>     Attrib V21    0.11372294829285207
#>     Attrib V22    0.3985490620863559
#>     Attrib V23    0.45061144121722974
#>     Attrib V24    0.24543805777988062
#>     Attrib V25    -0.05607720803149263
#>     Attrib V26    -0.1043257300868613
#>     Attrib V27    0.0799409463509095
#>     Attrib V28    0.24843522427614625
#>     Attrib V29    -0.3786174075457945
#>     Attrib V3    -0.3538768545016048
#>     Attrib V30    0.055772662672397506
#>     Attrib V31    -1.048095911251973
#>     Attrib V32    0.019347962535825696
#>     Attrib V33    0.5216036448834462
#>     Attrib V34    0.2501546147780688
#>     Attrib V35    -0.010269696808823288
#>     Attrib V36    -0.4419107143989603
#>     Attrib V37    -0.5108217451655644
#>     Attrib V38    0.17318399511024812
#>     Attrib V39    -0.12207250885665709
#>     Attrib V4    0.2556832904875157
#>     Attrib V40    -0.17933951867047856
#>     Attrib V41    0.10072233680192862
#>     Attrib V42    -0.023952800990716876
#>     Attrib V43    0.42689183311431733
#>     Attrib V44    0.24386371025756773
#>     Attrib V45    0.40998954852058955
#>     Attrib V46    0.05907316644962319
#>     Attrib V47    -0.12771134825304872
#>     Attrib V48    0.6593487375266963
#>     Attrib V49    0.754946183484268
#>     Attrib V5    -0.0531615169289988
#>     Attrib V50    -0.5801238033206652
#>     Attrib V51    -0.24320689526353034
#>     Attrib V52    0.34880571805210225
#>     Attrib V53    0.02726849425911224
#>     Attrib V54    0.5362405348408098
#>     Attrib V55    -0.3623340513100751
#>     Attrib V56    -0.0769236601753383
#>     Attrib V57    0.0499372641974999
#>     Attrib V58    0.07344961084775116
#>     Attrib V59    0.017497275837230052
#>     Attrib V6    -0.0969920562515001
#>     Attrib V60    0.3168196971068931
#>     Attrib V7    0.30025843055636575
#>     Attrib V8    0.13958166831808688
#>     Attrib V9    0.304015280095273
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.2543644373368004
#>     Attrib V1    0.2695935276589159
#>     Attrib V10    -0.29303067609439476
#>     Attrib V11    -0.043508789148881365
#>     Attrib V12    -0.0850849009925849
#>     Attrib V13    -0.56379531431207
#>     Attrib V14    -0.29904437905664133
#>     Attrib V15    0.21118173695434767
#>     Attrib V16    0.016822600194897123
#>     Attrib V17    -0.161810912090506
#>     Attrib V18    0.2614463103875303
#>     Attrib V19    0.1901758991751994
#>     Attrib V2    0.18063133849589716
#>     Attrib V20    0.29346379911001036
#>     Attrib V21    0.8439028478136209
#>     Attrib V22    0.6152980341361985
#>     Attrib V23    0.3047377825091052
#>     Attrib V24    -0.18947195185042098
#>     Attrib V25    -1.150539691353175
#>     Attrib V26    -1.213141808239035
#>     Attrib V27    -0.6176676764940412
#>     Attrib V28    -0.2886099082947182
#>     Attrib V29    -0.18595561259145382
#>     Attrib V3    -0.18460066671755776
#>     Attrib V30    0.08909517700379134
#>     Attrib V31    -1.7266306114933496
#>     Attrib V32    -0.5513788713593869
#>     Attrib V33    0.5781529936113494
#>     Attrib V34    0.023813837558598824
#>     Attrib V35    -0.5101693510757287
#>     Attrib V36    -0.9112477322316717
#>     Attrib V37    -0.7094154646141653
#>     Attrib V38    0.3984648796757157
#>     Attrib V39    0.045213144774314935
#>     Attrib V4    0.6471810794460614
#>     Attrib V40    -0.2124539943707553
#>     Attrib V41    0.13740751201262655
#>     Attrib V42    0.3291260423081271
#>     Attrib V43    0.6229041954728223
#>     Attrib V44    0.2640453648681636
#>     Attrib V45    0.19539735376076844
#>     Attrib V46    -0.144711466603228
#>     Attrib V47    -0.5091797312951387
#>     Attrib V48    0.3685399068513294
#>     Attrib V49    0.3416463306427104
#>     Attrib V5    0.03383696151438053
#>     Attrib V50    -0.6437853703470711
#>     Attrib V51    -0.41642139059455807
#>     Attrib V52    0.31850211216638274
#>     Attrib V53    0.1847545073317555
#>     Attrib V54    1.198926870511029
#>     Attrib V55    0.09889915410739059
#>     Attrib V56    0.30422293257170413
#>     Attrib V57    0.6716633678247986
#>     Attrib V58    0.3318103064352607
#>     Attrib V59    0.773690164156837
#>     Attrib V6    -0.336201307704068
#>     Attrib V60    0.6989858389184018
#>     Attrib V7    0.4828317227963646
#>     Attrib V8    0.30748896798548897
#>     Attrib V9    -0.021345887538571983
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.20922273779713116
#>     Attrib V1    0.050693627165388104
#>     Attrib V10    -0.003177592816672992
#>     Attrib V11    -0.021705956545542342
#>     Attrib V12    -0.051309687290364996
#>     Attrib V13    0.03720613479156878
#>     Attrib V14    0.04827335039039183
#>     Attrib V15    0.0028636862722798834
#>     Attrib V16    -0.006462924566888299
#>     Attrib V17    0.02417013945276425
#>     Attrib V18    -0.016242244190399092
#>     Attrib V19    -0.02700415095166067
#>     Attrib V2    0.05169806001558988
#>     Attrib V20    -0.019494383085267436
#>     Attrib V21    -0.06229777443519985
#>     Attrib V22    -0.11344009761979479
#>     Attrib V23    -0.02103805957234288
#>     Attrib V24    -0.02767986657315919
#>     Attrib V25    0.0017292261948676237
#>     Attrib V26    -0.08201324018304273
#>     Attrib V27    -0.001405001550535246
#>     Attrib V28    -0.06514849755197513
#>     Attrib V29    0.010950580804932022
#>     Attrib V3    0.14841071689156243
#>     Attrib V30    0.012467135894573284
#>     Attrib V31    0.02132970658405464
#>     Attrib V32    0.035271816673180766
#>     Attrib V33    0.026122025529642663
#>     Attrib V34    0.06798316999070624
#>     Attrib V35    0.06172152428527028
#>     Attrib V36    0.08557244428784129
#>     Attrib V37    0.10401851111573872
#>     Attrib V38    0.04734874371675448
#>     Attrib V39    0.13113093338802048
#>     Attrib V4    0.09267898090364798
#>     Attrib V40    0.14075175245797675
#>     Attrib V41    0.08922252750475755
#>     Attrib V42    0.09770471485574013
#>     Attrib V43    0.03114012112167101
#>     Attrib V44    0.08838155236492357
#>     Attrib V45    0.013945708947006873
#>     Attrib V46    0.07318031517487116
#>     Attrib V47    0.09469659401177742
#>     Attrib V48    -0.014265108909679646
#>     Attrib V49    -7.918655754162213E-5
#>     Attrib V5    0.1051092203431218
#>     Attrib V50    0.04493873984023007
#>     Attrib V51    0.05815343345190196
#>     Attrib V52    0.024560760523232843
#>     Attrib V53    0.0788271411974486
#>     Attrib V54    -0.034361162795529705
#>     Attrib V55    0.04448977091711822
#>     Attrib V56    0.08454702304722025
#>     Attrib V57    0.11682564590203103
#>     Attrib V58    0.07415618658061209
#>     Attrib V59    0.12048566495899551
#>     Attrib V6    0.10245365457568648
#>     Attrib V60    0.11331654308297957
#>     Attrib V7    0.10216518531322832
#>     Attrib V8    0.031359599982779394
#>     Attrib V9    0.032513450926229016
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.42671415009195085
#>     Attrib V1    0.14401011566516184
#>     Attrib V10    0.3416999218971461
#>     Attrib V11    0.7202609234635661
#>     Attrib V12    0.6438000308548671
#>     Attrib V13    -0.0980603887818077
#>     Attrib V14    -0.3713992296939886
#>     Attrib V15    -0.1750916904064893
#>     Attrib V16    -0.18030196390357733
#>     Attrib V17    -0.4167717392431742
#>     Attrib V18    -0.16642505412380706
#>     Attrib V19    -0.35770021756408005
#>     Attrib V2    0.11045292913709437
#>     Attrib V20    -0.6695153341060956
#>     Attrib V21    -0.1003824936742672
#>     Attrib V22    -0.061953848287376365
#>     Attrib V23    -0.2058460290419654
#>     Attrib V24    -0.22465036032686872
#>     Attrib V25    -0.2705641839233195
#>     Attrib V26    0.0013395837828552245
#>     Attrib V27    0.22280387781811514
#>     Attrib V28    0.42774988250113266
#>     Attrib V29    -0.15477363954924808
#>     Attrib V3    -0.4506175480216875
#>     Attrib V30    0.0992351057357322
#>     Attrib V31    -0.7149484375203125
#>     Attrib V32    0.4030967193022164
#>     Attrib V33    0.5816510682944469
#>     Attrib V34    0.25555874085716795
#>     Attrib V35    -0.05440062184554993
#>     Attrib V36    -0.5221871284105176
#>     Attrib V37    -0.5445738418298558
#>     Attrib V38    -0.14411583725519272
#>     Attrib V39    -0.09167723651865398
#>     Attrib V4    0.2605612425345408
#>     Attrib V40    -0.16857201081543668
#>     Attrib V41    0.08027995947965763
#>     Attrib V42    -0.39914404509256346
#>     Attrib V43    -0.08105058399173022
#>     Attrib V44    -0.11766360567708437
#>     Attrib V45    0.20835242590351902
#>     Attrib V46    0.18528520028562118
#>     Attrib V47    -0.0589266430008034
#>     Attrib V48    0.8916156252013182
#>     Attrib V49    1.19569380788001
#>     Attrib V5    -0.1553702965724133
#>     Attrib V50    -0.5159084861102999
#>     Attrib V51    -0.3116858908672169
#>     Attrib V52    0.33748175134546077
#>     Attrib V53    -0.01216049390615323
#>     Attrib V54    0.2951415965257493
#>     Attrib V55    -0.3151919897285631
#>     Attrib V56    -0.45301868057420325
#>     Attrib V57    -0.04515806057632054
#>     Attrib V58    0.14058944260569406
#>     Attrib V59    0.05365440210657632
#>     Attrib V6    -0.23041799854727318
#>     Attrib V60    0.29159140695620644
#>     Attrib V7    0.13938183198657575
#>     Attrib V8    -0.06716077303325463
#>     Attrib V9    0.2351068434375668
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.07248263536462038
#>     Attrib V1    0.06339994944880957
#>     Attrib V10    -0.06417629478622097
#>     Attrib V11    -0.25483629140461894
#>     Attrib V12    -0.27613638786530437
#>     Attrib V13    -0.03389085864191533
#>     Attrib V14    0.2750689631091093
#>     Attrib V15    0.3406246719443933
#>     Attrib V16    0.3068276977184579
#>     Attrib V17    0.21154900960433096
#>     Attrib V18    -0.03543955132864981
#>     Attrib V19    0.15644866912693114
#>     Attrib V2    -0.05356398504386036
#>     Attrib V20    0.2188093214275191
#>     Attrib V21    -0.05736975189146145
#>     Attrib V22    -0.21760980966609894
#>     Attrib V23    -0.3589020623344608
#>     Attrib V24    -0.26867306966849847
#>     Attrib V25    -0.042260413041706
#>     Attrib V26    0.0491293515858384
#>     Attrib V27    -0.12931592881795284
#>     Attrib V28    -0.17210792747280915
#>     Attrib V29    0.20806587420753497
#>     Attrib V3    0.0994591405336742
#>     Attrib V30    -0.004792271976719317
#>     Attrib V31    0.4968886319832203
#>     Attrib V32    -0.022073184627483637
#>     Attrib V33    -0.18041699956209375
#>     Attrib V34    0.06407833362428235
#>     Attrib V35    0.18593159462616862
#>     Attrib V36    0.38109219531295985
#>     Attrib V37    0.4211192998672868
#>     Attrib V38    0.0028046474838835807
#>     Attrib V39    0.12241204200079067
#>     Attrib V4    -0.13370131395509546
#>     Attrib V40    0.1948546884672968
#>     Attrib V41    0.06366429164512528
#>     Attrib V42    0.09253445241650946
#>     Attrib V43    -0.20883038621859956
#>     Attrib V44    -0.11459025108988621
#>     Attrib V45    -0.09702464177943323
#>     Attrib V46    0.0091152941449386
#>     Attrib V47    0.13037657494578636
#>     Attrib V48    -0.2565828253850596
#>     Attrib V49    -0.3302901640509383
#>     Attrib V5    0.07961615431418738
#>     Attrib V50    0.3915308284324383
#>     Attrib V51    0.16458342746727203
#>     Attrib V52    -0.27498380446786547
#>     Attrib V53    -0.03669808292708957
#>     Attrib V54    -0.3124020362454267
#>     Attrib V55    0.0402854095924998
#>     Attrib V56    0.008513920631560066
#>     Attrib V57    -0.009300873907822691
#>     Attrib V58    -0.06919799554840382
#>     Attrib V59    -0.016838699060262342
#>     Attrib V6    0.0728882110207171
#>     Attrib V60    -0.19147816326160533
#>     Attrib V7    -0.1770896360595525
#>     Attrib V8    -0.05846120862255771
#>     Attrib V9    -0.15625149806972966
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.1364899120688121
#>     Attrib V1    0.14428896660693666
#>     Attrib V10    0.03406884673531276
#>     Attrib V11    0.052746041406911054
#>     Attrib V12    0.04774132585898205
#>     Attrib V13    -0.025224572009709657
#>     Attrib V14    -0.06663905712309984
#>     Attrib V15    -0.004117063013051536
#>     Attrib V16    0.04099508316819772
#>     Attrib V17    -0.011926930806572186
#>     Attrib V18    -0.005590611039719645
#>     Attrib V19    -0.06947952275769012
#>     Attrib V2    0.06440179396880599
#>     Attrib V20    -0.13303627941153598
#>     Attrib V21    -0.08298545072102927
#>     Attrib V22    -0.12166898989408054
#>     Attrib V23    -0.11671046616083333
#>     Attrib V24    -0.02601512862147062
#>     Attrib V25    -0.09273631934244973
#>     Attrib V26    -0.14883616887685394
#>     Attrib V27    -0.10542561490427381
#>     Attrib V28    -0.03994113187544564
#>     Attrib V29    -0.12442550415511443
#>     Attrib V3    0.09039421930553643
#>     Attrib V30    -0.06260746906342173
#>     Attrib V31    -0.1982899545357788
#>     Attrib V32    0.024514291217537343
#>     Attrib V33    0.11201874897387898
#>     Attrib V34    0.09390071434549307
#>     Attrib V35    0.01567285256735089
#>     Attrib V36    -0.05686370092666619
#>     Attrib V37    -0.04517053727721471
#>     Attrib V38    0.051442504056459434
#>     Attrib V39    0.03796356213123366
#>     Attrib V4    0.18461018127394369
#>     Attrib V40    -0.04433933116181861
#>     Attrib V41    0.02770344329689567
#>     Attrib V42    0.05757954493694984
#>     Attrib V43    0.04571651306864358
#>     Attrib V44    0.020426916668920516
#>     Attrib V45    0.10465651501088123
#>     Attrib V46    0.08695628504635712
#>     Attrib V47    0.01385157865385266
#>     Attrib V48    0.09543691821156469
#>     Attrib V49    0.0957977147632304
#>     Attrib V5    0.07952512875965273
#>     Attrib V50    0.030412805029679288
#>     Attrib V51    0.07460481206208201
#>     Attrib V52    0.13919319192032037
#>     Attrib V53    0.17353679945342435
#>     Attrib V54    0.1621506297668723
#>     Attrib V55    0.1345881180715633
#>     Attrib V56    0.08366009647985197
#>     Attrib V57    0.197594877571649
#>     Attrib V58    0.18367590681570944
#>     Attrib V59    0.15977284826557883
#>     Attrib V6    0.03993009621851767
#>     Attrib V60    0.23404442660742725
#>     Attrib V7    0.11352182717917578
#>     Attrib V8    0.05689544425901014
#>     Attrib V9    0.10521884551979817
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.06186101571105748
#>     Attrib V1    0.2681864408992223
#>     Attrib V10    -0.04398722506944456
#>     Attrib V11    0.0901188923516713
#>     Attrib V12    0.038978863400542005
#>     Attrib V13    -0.21337201381254797
#>     Attrib V14    -0.14286814699464828
#>     Attrib V15    0.1578408689391381
#>     Attrib V16    0.03910651428268583
#>     Attrib V17    -0.06677042755393015
#>     Attrib V18    -0.017054167076332855
#>     Attrib V19    -0.10814792760261768
#>     Attrib V2    0.17960748885252625
#>     Attrib V20    -0.10779314189974153
#>     Attrib V21    0.07248307546995454
#>     Attrib V22    -0.025654124449136492
#>     Attrib V23    -0.14946738558953668
#>     Attrib V24    -0.10916233603985012
#>     Attrib V25    -0.40953207422707616
#>     Attrib V26    -0.47382143186688397
#>     Attrib V27    -0.35560089539397827
#>     Attrib V28    -0.2625672856600526
#>     Attrib V29    -0.36147077151487494
#>     Attrib V3    -0.02203118568347954
#>     Attrib V30    -0.06390308275654848
#>     Attrib V31    -0.4752779002514582
#>     Attrib V32    -0.04968482231917783
#>     Attrib V33    0.3549334064005787
#>     Attrib V34    0.08574300479359978
#>     Attrib V35    -0.04361736898836518
#>     Attrib V36    -0.2624894389498126
#>     Attrib V37    -0.305760095907523
#>     Attrib V38    0.09813443159143961
#>     Attrib V39    -0.015028948491896036
#>     Attrib V4    0.2667989938907064
#>     Attrib V40    -0.20719284735898702
#>     Attrib V41    -0.04144247890838342
#>     Attrib V42    -0.046806711588290945
#>     Attrib V43    0.10983299574832614
#>     Attrib V44    0.04506682705909052
#>     Attrib V45    0.13701942254508612
#>     Attrib V46    -0.031007887697610138
#>     Attrib V47    -0.20709149099895774
#>     Attrib V48    0.1990721152890215
#>     Attrib V49    0.16670883971512268
#>     Attrib V5    0.025119109043431558
#>     Attrib V50    -0.169151602834817
#>     Attrib V51    -0.11439551822816348
#>     Attrib V52    0.09206032071147
#>     Attrib V53    0.09230734884309032
#>     Attrib V54    0.44803292607259343
#>     Attrib V55    0.2826247072253213
#>     Attrib V56    0.11661307948200557
#>     Attrib V57    0.34501835308318196
#>     Attrib V58    0.1726897086271249
#>     Attrib V59    0.36230996700471996
#>     Attrib V6    -0.084438219262648
#>     Attrib V60    0.3843215206259473
#>     Attrib V7    0.13544377920102582
#>     Attrib V8    0.18498074435045395
#>     Attrib V9    0.055691307688713935
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.05930802215675401
#>     Attrib V1    0.287805477900666
#>     Attrib V10    -0.1698954905336415
#>     Attrib V11    -0.5315946830523354
#>     Attrib V12    -0.8470863405460608
#>     Attrib V13    -0.09488288000159803
#>     Attrib V14    0.6426852552765768
#>     Attrib V15    0.5220260710742254
#>     Attrib V16    0.42462963557877526
#>     Attrib V17    0.08810223569905863
#>     Attrib V18    -0.44311126395937994
#>     Attrib V19    -0.2820028394840737
#>     Attrib V2    0.04014560140873914
#>     Attrib V20    0.42684398140479735
#>     Attrib V21    -0.04739042474141038
#>     Attrib V22    -0.6618993883543874
#>     Attrib V23    -0.6611175566039432
#>     Attrib V24    -0.45308649904814463
#>     Attrib V25    0.06407901730750304
#>     Attrib V26    0.13981596636133112
#>     Attrib V27    0.08114984076336113
#>     Attrib V28    0.07970560671534492
#>     Attrib V29    0.6381485959394704
#>     Attrib V3    0.2259756460565128
#>     Attrib V30    0.0865062771308293
#>     Attrib V31    1.2112323692565021
#>     Attrib V32    0.03761712588030138
#>     Attrib V33    -0.548133400111286
#>     Attrib V34    -0.21007284612076207
#>     Attrib V35    0.276579975696636
#>     Attrib V36    1.0008165129708626
#>     Attrib V37    0.9693905031887895
#>     Attrib V38    0.002387841713992766
#>     Attrib V39    0.21096318135383058
#>     Attrib V4    -0.40146449756667907
#>     Attrib V40    0.17529408511887656
#>     Attrib V41    -0.1928857771273189
#>     Attrib V42    -0.02578348182726581
#>     Attrib V43    -0.55823983400651
#>     Attrib V44    -0.2793994800196119
#>     Attrib V45    -0.35423674706304076
#>     Attrib V46    -0.08796441640538996
#>     Attrib V47    0.1427668131771016
#>     Attrib V48    -0.7894165721216612
#>     Attrib V49    -0.817235732976626
#>     Attrib V5    -0.03257246824855719
#>     Attrib V50    0.7839290448782525
#>     Attrib V51    0.30386589827296195
#>     Attrib V52    -0.5474412462729568
#>     Attrib V53    -0.022628894840566984
#>     Attrib V54    -0.6828452057841606
#>     Attrib V55    0.14415395407481563
#>     Attrib V56    -0.19145003078411563
#>     Attrib V57    -0.21620592622360474
#>     Attrib V58    -0.1863470868973328
#>     Attrib V59    -0.0845625705949024
#>     Attrib V6    0.05236346952576995
#>     Attrib V60    -0.3481484500418546
#>     Attrib V7    -0.2990693246606118
#>     Attrib V8    -0.015639401406141815
#>     Attrib V9    -0.30138447723805906
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.47716759428441347
#>     Attrib V1    0.28732854671834707
#>     Attrib V10    0.1982997363642824
#>     Attrib V11    0.7593952713919594
#>     Attrib V12    0.8218164992648275
#>     Attrib V13    0.1997675257141762
#>     Attrib V14    0.04600860795314855
#>     Attrib V15    -0.10024199049983308
#>     Attrib V16    -0.13151681997975037
#>     Attrib V17    -0.4794286518063768
#>     Attrib V18    -0.2589673682291455
#>     Attrib V19    -0.37813636710514276
#>     Attrib V2    0.2828014095094633
#>     Attrib V20    -0.7413216164387395
#>     Attrib V21    -0.1170327475132817
#>     Attrib V22    -0.06211351442691331
#>     Attrib V23    -0.3705464832696645
#>     Attrib V24    -0.28586720213652106
#>     Attrib V25    -0.18827610973584233
#>     Attrib V26    0.37528226775318
#>     Attrib V27    0.8297334343987878
#>     Attrib V28    1.3376588519711603
#>     Attrib V29    0.8004573688697116
#>     Attrib V3    -0.37680994881509383
#>     Attrib V30    0.29742837700237945
#>     Attrib V31    -0.8224630874371864
#>     Attrib V32    0.1763655107069857
#>     Attrib V33    0.2405717026603902
#>     Attrib V34    -0.00626159505793678
#>     Attrib V35    -0.026037834650564057
#>     Attrib V36    -0.17939471250523628
#>     Attrib V37    -0.20946564623846622
#>     Attrib V38    0.022624250696179148
#>     Attrib V39    0.19164900212816327
#>     Attrib V4    0.3908201253229841
#>     Attrib V40    0.06401655984759076
#>     Attrib V41    0.2952294702880158
#>     Attrib V42    -0.4771700678548516
#>     Attrib V43    -0.20602980601092755
#>     Attrib V44    -0.3184259733722932
#>     Attrib V45    0.46159532341482196
#>     Attrib V46    0.42183997272012425
#>     Attrib V47    -0.02762283391985468
#>     Attrib V48    0.827392870605161
#>     Attrib V49    1.3983608801518983
#>     Attrib V5    0.0954955235577272
#>     Attrib V50    -0.446067174617862
#>     Attrib V51    -0.20464663729814683
#>     Attrib V52    0.49229261467647434
#>     Attrib V53    0.2745460598147047
#>     Attrib V54    0.12734383557320902
#>     Attrib V55    -0.2695374289313666
#>     Attrib V56    -0.8161623382148283
#>     Attrib V57    -0.09946981822207897
#>     Attrib V58    0.23818795829120507
#>     Attrib V59    0.2272989951670096
#>     Attrib V6    0.01636820612220085
#>     Attrib V60    0.37847382822608
#>     Attrib V7    0.13152046470325446
#>     Attrib V8    -0.08981218713740674
#>     Attrib V9    0.08382657238686383
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.09498675661520363
#>     Attrib V1    0.23687220763456443
#>     Attrib V10    -0.20672623211902566
#>     Attrib V11    -0.08948604167355567
#>     Attrib V12    0.025360794661893275
#>     Attrib V13    -0.360144697971946
#>     Attrib V14    -0.25779841391460073
#>     Attrib V15    0.09642406785369942
#>     Attrib V16    -0.05695465855113651
#>     Attrib V17    -0.07694583615836312
#>     Attrib V18    0.24080283835595936
#>     Attrib V19    0.09473908137121705
#>     Attrib V2    0.09186209466682534
#>     Attrib V20    0.15643434980773824
#>     Attrib V21    0.5002014477318166
#>     Attrib V22    0.3714899838207413
#>     Attrib V23    0.24545497570108057
#>     Attrib V24    -0.012088008438771189
#>     Attrib V25    -0.63630191400862
#>     Attrib V26    -0.7672715212961392
#>     Attrib V27    -0.5127438119317648
#>     Attrib V28    -0.4161993029462809
#>     Attrib V29    -0.42334415933120956
#>     Attrib V3    -0.11629839947904912
#>     Attrib V30    -0.042146822873246934
#>     Attrib V31    -1.053557578608458
#>     Attrib V32    -0.3384136921392429
#>     Attrib V33    0.4161803222118396
#>     Attrib V34    0.037812434138181146
#>     Attrib V35    -0.2540397138205177
#>     Attrib V36    -0.4936084562972122
#>     Attrib V37    -0.46144843402177543
#>     Attrib V38    0.22182121599767965
#>     Attrib V39    -0.06872375891379816
#>     Attrib V4    0.37164308547486546
#>     Attrib V40    -0.19744429273943037
#>     Attrib V41    0.04013250505198433
#>     Attrib V42    0.13524981836163905
#>     Attrib V43    0.406160417089611
#>     Attrib V44    0.22261112821129933
#>     Attrib V45    0.1320508596117978
#>     Attrib V46    -0.16354394155182708
#>     Attrib V47    -0.39743596516161467
#>     Attrib V48    0.21811981442229725
#>     Attrib V49    0.16170052137386212
#>     Attrib V5    0.027006692644169116
#>     Attrib V50    -0.43479239003879605
#>     Attrib V51    -0.22720753310229064
#>     Attrib V52    0.21195517746131962
#>     Attrib V53    0.10098532192794593
#>     Attrib V54    0.8890503699088274
#>     Attrib V55    0.23348551761503963
#>     Attrib V56    0.2576162888791649
#>     Attrib V57    0.4254442425693118
#>     Attrib V58    0.24796766667482678
#>     Attrib V59    0.5550101660591001
#>     Attrib V6    -0.17016125745996988
#>     Attrib V60    0.5560233325226493
#>     Attrib V7    0.39097825672965475
#>     Attrib V8    0.20282173792743813
#>     Attrib V9    0.03800765842290162
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.31473781276567936
#>     Attrib V1    0.23943106696195315
#>     Attrib V10    -0.5257522708502181
#>     Attrib V11    -0.567921630026297
#>     Attrib V12    -0.6119463932872905
#>     Attrib V13    0.1324486459564542
#>     Attrib V14    1.0319270993448002
#>     Attrib V15    0.6546031235369009
#>     Attrib V16    0.5303040222508734
#>     Attrib V17    0.02566668226224062
#>     Attrib V18    -0.7417973795361845
#>     Attrib V19    -0.6077695794836239
#>     Attrib V2    0.06831418804638252
#>     Attrib V20    -0.16978084887116596
#>     Attrib V21    -0.5075456180720566
#>     Attrib V22    -1.1778638502644336
#>     Attrib V23    -1.2974610693252298
#>     Attrib V24    -0.6420182672772802
#>     Attrib V25    0.16839739331493195
#>     Attrib V26    0.44365581318827957
#>     Attrib V27    0.4930692915363699
#>     Attrib V28    0.6211354722264828
#>     Attrib V29    1.2890700682148784
#>     Attrib V3    0.057734178128987214
#>     Attrib V30    0.18702955998153695
#>     Attrib V31    1.7788457045082562
#>     Attrib V32    0.33657659037364984
#>     Attrib V33    -0.7497000317671593
#>     Attrib V34    -0.3072937055769189
#>     Attrib V35    0.20742169156144202
#>     Attrib V36    1.0578595810159999
#>     Attrib V37    1.1067380471964197
#>     Attrib V38    -0.3431401446101894
#>     Attrib V39    0.2723948252471011
#>     Attrib V4    -0.5587155609995085
#>     Attrib V40    0.5195958163190662
#>     Attrib V41    0.13458576850541173
#>     Attrib V42    -0.28757797276349367
#>     Attrib V43    -0.8978138134497178
#>     Attrib V44    -0.7240534527681143
#>     Attrib V45    -0.48873115145031454
#>     Attrib V46    0.026917062353741552
#>     Attrib V47    0.11254219996488843
#>     Attrib V48    -0.7123399295387061
#>     Attrib V49    -0.6279630118367078
#>     Attrib V5    -0.1013298747199708
#>     Attrib V50    0.9291972553536657
#>     Attrib V51    0.19906592084226474
#>     Attrib V52    -0.6630367960170502
#>     Attrib V53    0.11875286784420461
#>     Attrib V54    -1.1013047695407725
#>     Attrib V55    0.14561472031764927
#>     Attrib V56    -0.7177489300603823
#>     Attrib V57    -0.1228848415081371
#>     Attrib V58    -0.2277318109236512
#>     Attrib V59    -8.282695645001906E-4
#>     Attrib V6    0.0957355934705835
#>     Attrib V60    -0.5074899159710177
#>     Attrib V7    -0.7539695874523203
#>     Attrib V8    -0.3072061979580409
#>     Attrib V9    -0.6487287068293803
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.08200459957719075
#>     Attrib V1    0.30962499987140096
#>     Attrib V10    -0.18223677687989917
#>     Attrib V11    -0.027847460020128865
#>     Attrib V12    0.025957921400606508
#>     Attrib V13    -0.2964178136399047
#>     Attrib V14    -0.14787601097286943
#>     Attrib V15    0.18724220533066052
#>     Attrib V16    0.10154749175743268
#>     Attrib V17    -0.049099712381311986
#>     Attrib V18    0.09154878485517387
#>     Attrib V19    -0.0667969877865548
#>     Attrib V2    0.1444990550980881
#>     Attrib V20    0.07385710735644872
#>     Attrib V21    0.3301627725878143
#>     Attrib V22    0.11560819908280796
#>     Attrib V23    -0.06313322362521637
#>     Attrib V24    -0.0929837491740192
#>     Attrib V25    -0.61859900288327
#>     Attrib V26    -0.8036834114838881
#>     Attrib V27    -0.6610576102599172
#>     Attrib V28    -0.5300805391443961
#>     Attrib V29    -0.44030299986172877
#>     Attrib V3    -0.0672193474967696
#>     Attrib V30    -0.12041026063201603
#>     Attrib V31    -0.7714354222125723
#>     Attrib V32    -0.12218103770334603
#>     Attrib V33    0.40227966635140994
#>     Attrib V34    0.10201332575735954
#>     Attrib V35    -0.21021458691744235
#>     Attrib V36    -0.45046651498083917
#>     Attrib V37    -0.4099418390826099
#>     Attrib V38    0.12767850652749368
#>     Attrib V39    -0.06671458210909474
#>     Attrib V4    0.3418631472450416
#>     Attrib V40    -0.20407762917790273
#>     Attrib V41    -0.10772251114735384
#>     Attrib V42    0.014678574028033931
#>     Attrib V43    0.23125343994043557
#>     Attrib V44    0.051525990308714346
#>     Attrib V45    0.027587763577860535
#>     Attrib V46    -0.08317121027296147
#>     Attrib V47    -0.36178178300862096
#>     Attrib V48    0.1792894721296001
#>     Attrib V49    0.12497664511495717
#>     Attrib V5    0.03145567263241884
#>     Attrib V50    -0.342018055443902
#>     Attrib V51    -0.2637283352258359
#>     Attrib V52    0.10759700721915152
#>     Attrib V53    0.03755136921877853
#>     Attrib V54    0.7510432683739782
#>     Attrib V55    0.3764045020902618
#>     Attrib V56    0.3137177065644295
#>     Attrib V57    0.4247187834070179
#>     Attrib V58    0.2765911643230206
#>     Attrib V59    0.5385160470829605
#>     Attrib V6    -0.14496959753524033
#>     Attrib V60    0.5299733773747745
#>     Attrib V7    0.2519274086944288
#>     Attrib V8    0.15064609168351767
#>     Attrib V9    0.029955889983034764
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.05229949762378761
#>     Attrib V1    0.1809267410376035
#>     Attrib V10    -0.11356670969377765
#>     Attrib V11    0.07275754003201618
#>     Attrib V12    0.13526728016695586
#>     Attrib V13    -0.1137601557898032
#>     Attrib V14    -0.13734207005040883
#>     Attrib V15    0.013737435134905194
#>     Attrib V16    -0.06079622852929982
#>     Attrib V17    -0.01956991565432568
#>     Attrib V18    0.05305249880943797
#>     Attrib V19    -0.05671963955021769
#>     Attrib V2    0.03484319053310903
#>     Attrib V20    -0.08651693469491492
#>     Attrib V21    0.05148748726989275
#>     Attrib V22    0.005210227886473954
#>     Attrib V23    0.006584322589489262
#>     Attrib V24    -0.037166948474572144
#>     Attrib V25    -0.20901799347347846
#>     Attrib V26    -0.2816077724477709
#>     Attrib V27    -0.31920067853737905
#>     Attrib V28    -0.2919613461645073
#>     Attrib V29    -0.41067002239942146
#>     Attrib V3    -9.542261024632448E-5
#>     Attrib V30    -0.135584165408809
#>     Attrib V31    -0.45768216437104053
#>     Attrib V32    -0.04731083407062402
#>     Attrib V33    0.24453356808103108
#>     Attrib V34    0.08437308565130826
#>     Attrib V35    0.010487482931580675
#>     Attrib V36    -0.1973331974867615
#>     Attrib V37    -0.22633887493473964
#>     Attrib V38    0.011374094286257524
#>     Attrib V39    -0.07673600292078153
#>     Attrib V4    0.24526389886324645
#>     Attrib V40    -0.17947275719799743
#>     Attrib V41    -0.05338213462112425
#>     Attrib V42    -0.03361423213065038
#>     Attrib V43    0.1394155115015868
#>     Attrib V44    0.032762256275877595
#>     Attrib V45    0.11059408191702774
#>     Attrib V46    -0.02207345508793544
#>     Attrib V47    -0.10945293057514374
#>     Attrib V48    0.08998939295183798
#>     Attrib V49    0.1221376824564139
#>     Attrib V5    0.00898538716107536
#>     Attrib V50    -0.20243717598044902
#>     Attrib V51    -0.1445659091175321
#>     Attrib V52    0.1443266450473413
#>     Attrib V53    0.13535244930058762
#>     Attrib V54    0.41192528286005525
#>     Attrib V55    0.1999707382102025
#>     Attrib V56    0.15532722245877656
#>     Attrib V57    0.22256881215412236
#>     Attrib V58    0.1463498611461293
#>     Attrib V59    0.3424391022967618
#>     Attrib V6    -0.07445406219640127
#>     Attrib V60    0.2947112640863189
#>     Attrib V7    0.15293663580967595
#>     Attrib V8    0.0941442925968968
#>     Attrib V9    0.044494251023742215
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.09171554201313531
#>     Attrib V1    0.027505223031794594
#>     Attrib V10    -0.04188589770885514
#>     Attrib V11    -0.13575838995575268
#>     Attrib V12    -0.16439959369140356
#>     Attrib V13    -0.0310949196880014
#>     Attrib V14    0.15014670736622363
#>     Attrib V15    0.1470240830802431
#>     Attrib V16    0.11043757390797222
#>     Attrib V17    0.14978507423160295
#>     Attrib V18    0.002527325718773198
#>     Attrib V19    0.05412901839377767
#>     Attrib V2    -0.012462624348752095
#>     Attrib V20    0.0587878785902403
#>     Attrib V21    -0.06612974155035965
#>     Attrib V22    -0.15676546709995265
#>     Attrib V23    -0.1246746169741121
#>     Attrib V24    -0.16851794884962762
#>     Attrib V25    -0.03161944718993437
#>     Attrib V26    -0.018523917822599288
#>     Attrib V27    -0.11328233622437464
#>     Attrib V28    -0.07087158419216229
#>     Attrib V29    0.10353077103142168
#>     Attrib V3    0.062470684796301905
#>     Attrib V30    0.007460180107010911
#>     Attrib V31    0.2799561404973259
#>     Attrib V32    0.07878309501387115
#>     Attrib V33    -0.09504750767600857
#>     Attrib V34    0.010203010681237391
#>     Attrib V35    0.13118470400423415
#>     Attrib V36    0.293627663157064
#>     Attrib V37    0.22517013004661446
#>     Attrib V38    0.031666735157060505
#>     Attrib V39    0.09586345091004132
#>     Attrib V4    -0.010706832213533577
#>     Attrib V40    0.23372605153767131
#>     Attrib V41    0.1627915364058988
#>     Attrib V42    0.11013462016575186
#>     Attrib V43    0.039886086985249015
#>     Attrib V44    0.018701069769747992
#>     Attrib V45    -0.09526740316869675
#>     Attrib V46    0.002127182748649336
#>     Attrib V47    0.12361999991868826
#>     Attrib V48    -0.13172685813232662
#>     Attrib V49    -0.22585928531078736
#>     Attrib V5    0.025677576121123424
#>     Attrib V50    0.23977459966871792
#>     Attrib V51    0.13662246891009888
#>     Attrib V52    -0.013435379018055704
#>     Attrib V53    -0.01939466225588747
#>     Attrib V54    -0.18884188192324453
#>     Attrib V55    0.023715849441193773
#>     Attrib V56    0.0746775676368459
#>     Attrib V57    0.09686999573023825
#>     Attrib V58    0.025908863904815654
#>     Attrib V59    0.0272702034252583
#>     Attrib V6    0.11980903938390769
#>     Attrib V60    -0.09625761310358863
#>     Attrib V7    -0.06798032095905326
#>     Attrib V8    0.025174890857929514
#>     Attrib V9    -0.002140992470429076
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.05539403088803103
#>     Attrib V1    -0.051733169955274695
#>     Attrib V10    0.5359525028389733
#>     Attrib V11    1.2033922864480038
#>     Attrib V12    1.2640602160832954
#>     Attrib V13    0.7376734367341206
#>     Attrib V14    0.1208872320745267
#>     Attrib V15    -0.966693685916555
#>     Attrib V16    -0.44471481744789354
#>     Attrib V17    -0.42920530083209346
#>     Attrib V18    0.3735160030863182
#>     Attrib V19    0.36437306822557847
#>     Attrib V2    0.4072429377194935
#>     Attrib V20    -0.3364684066482418
#>     Attrib V21    0.34306880140296264
#>     Attrib V22    1.0146822684745787
#>     Attrib V23    0.9730869078295838
#>     Attrib V24    0.08258181481520678
#>     Attrib V25    -0.07063733636748984
#>     Attrib V26    1.0175289128406377
#>     Attrib V27    1.6401106476398768
#>     Attrib V28    2.407896824846552
#>     Attrib V29    1.9609838291460562
#>     Attrib V3    -0.16520544146390725
#>     Attrib V30    0.5997987208206295
#>     Attrib V31    -1.363520112608556
#>     Attrib V32    -0.14421923667244665
#>     Attrib V33    -0.3792211946532377
#>     Attrib V34    -0.47676418520661124
#>     Attrib V35    -0.45858589656155896
#>     Attrib V36    -0.4931325137256638
#>     Attrib V37    -0.2297908905620664
#>     Attrib V38    -0.06627277978690396
#>     Attrib V39    0.8525689017016843
#>     Attrib V4    0.8265025483882108
#>     Attrib V40    0.7243882396418684
#>     Attrib V41    1.1070918180694211
#>     Attrib V42    -0.19737610644502693
#>     Attrib V43    0.190327523675041
#>     Attrib V44    -0.00870146948383654
#>     Attrib V45    0.3236663810259449
#>     Attrib V46    0.5921671696022835
#>     Attrib V47    0.4810710502748232
#>     Attrib V48    1.3948919815841572
#>     Attrib V49    2.3902420502263646
#>     Attrib V5    0.46511294012126525
#>     Attrib V50    -0.13602511743977402
#>     Attrib V51    0.51067327877337
#>     Attrib V52    1.5413495920885445
#>     Attrib V53    0.6533648753846061
#>     Attrib V54    -0.31087234833192
#>     Attrib V55    -1.2501208299637854
#>     Attrib V56    -0.7473049403028094
#>     Attrib V57    -0.7268991671004341
#>     Attrib V58    0.10539237835403947
#>     Attrib V59    -0.20916275135468396
#>     Attrib V6    0.006521689740734836
#>     Attrib V60    0.21350149877686211
#>     Attrib V7    -0.21920806614723312
#>     Attrib V8    -0.883426899472974
#>     Attrib V9    -0.06813498335254736
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.20309903498162396
#>     Attrib V1    0.08225248689459679
#>     Attrib V10    0.016261959614046983
#>     Attrib V11    -0.02558612853765248
#>     Attrib V12    0.0075753571421499
#>     Attrib V13    -0.033037953313926956
#>     Attrib V14    0.06918710345386896
#>     Attrib V15    0.003997684411126146
#>     Attrib V16    0.01852871822982762
#>     Attrib V17    0.03569230024010207
#>     Attrib V18    -0.046590255184545945
#>     Attrib V19    0.03479950262281333
#>     Attrib V2    0.09231647460805198
#>     Attrib V20    -0.04630918702912693
#>     Attrib V21    -0.05811780586025393
#>     Attrib V22    -0.08029414090235333
#>     Attrib V23    -0.05065645352484352
#>     Attrib V24    -0.048236109516476854
#>     Attrib V25    -0.029476546658063044
#>     Attrib V26    -0.07107038619975198
#>     Attrib V27    -0.016317649458204693
#>     Attrib V28    -0.008890845955517573
#>     Attrib V29    -0.005965898956072981
#>     Attrib V3    0.06490640625698667
#>     Attrib V30    -0.013115349231563033
#>     Attrib V31    -0.01218148311789835
#>     Attrib V32    -0.01117517627479199
#>     Attrib V33    0.06233140285670799
#>     Attrib V34    0.00932283767304852
#>     Attrib V35    0.10660542239635463
#>     Attrib V36    0.1144989389058027
#>     Attrib V37    0.10921760729843899
#>     Attrib V38    0.02589496126111535
#>     Attrib V39    0.08595471292187544
#>     Attrib V4    0.1337848389668423
#>     Attrib V40    0.0802978903597596
#>     Attrib V41    0.051703412198787685
#>     Attrib V42    0.08282575566573928
#>     Attrib V43    0.07412658492054675
#>     Attrib V44    0.09734579446721818
#>     Attrib V45    0.05124579376665202
#>     Attrib V46    0.03038697937705474
#>     Attrib V47    0.03394169749534212
#>     Attrib V48    0.06760431005580825
#>     Attrib V49    -0.0087720327123228
#>     Attrib V5    0.04625138593349843
#>     Attrib V50    0.07057631943567923
#>     Attrib V51    0.05110981464422648
#>     Attrib V52    0.047180694466316474
#>     Attrib V53    0.081835967021827
#>     Attrib V54    0.016961722929630933
#>     Attrib V55    0.06411163569607234
#>     Attrib V56    0.1074550934085464
#>     Attrib V57    0.1497818423323926
#>     Attrib V58    0.10106489924213427
#>     Attrib V59    0.11886156437052256
#>     Attrib V6    0.10499799451824876
#>     Attrib V60    0.15519646257393577
#>     Attrib V7    0.03999381243538599
#>     Attrib V8    0.07983703369390582
#>     Attrib V9    0.034671474804760516
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.37028858355937116
#>     Attrib V1    -0.02043025128983246
#>     Attrib V10    0.3265131546816899
#>     Attrib V11    0.5426929067287417
#>     Attrib V12    0.6676507576730749
#>     Attrib V13    0.02387492552885123
#>     Attrib V14    -0.7122837756809242
#>     Attrib V15    -0.6311615371246189
#>     Attrib V16    -0.5237363361727877
#>     Attrib V17    -0.4483863877775735
#>     Attrib V18    0.2770585061917902
#>     Attrib V19    -0.1013774862496605
#>     Attrib V2    0.012100585164402608
#>     Attrib V20    -0.5654845265134004
#>     Attrib V21    0.17422232207476263
#>     Attrib V22    0.6114839767039436
#>     Attrib V23    0.558998123170591
#>     Attrib V24    0.324420326101129
#>     Attrib V25    -0.03662606287039604
#>     Attrib V26    0.10498636716015325
#>     Attrib V27    0.28495039544261047
#>     Attrib V28    0.4636545042625793
#>     Attrib V29    -0.15533713083793002
#>     Attrib V3    -0.4071416247403183
#>     Attrib V30    0.17902704507469397
#>     Attrib V31    -1.1064680795426736
#>     Attrib V32    0.10069212267495346
#>     Attrib V33    0.6201108043848551
#>     Attrib V34    0.267934783099182
#>     Attrib V35    -0.08368773057908951
#>     Attrib V36    -0.6012507292671211
#>     Attrib V37    -0.5746188034622481
#>     Attrib V38    0.10029771810406671
#>     Attrib V39    -0.07024642229009279
#>     Attrib V4    0.2859810830601379
#>     Attrib V40    -0.10160472282602767
#>     Attrib V41    0.43570577209861505
#>     Attrib V42    0.06801194279058091
#>     Attrib V43    0.531190414012918
#>     Attrib V44    0.27175797833817966
#>     Attrib V45    0.5087761646796277
#>     Attrib V46    0.11489487433998048
#>     Attrib V47    -0.1498348121234998
#>     Attrib V48    0.8849497449368935
#>     Attrib V49    0.9755968416615483
#>     Attrib V5    -0.1293575894309929
#>     Attrib V50    -0.6829961244349366
#>     Attrib V51    -0.3179251772714143
#>     Attrib V52    0.4498502746182832
#>     Attrib V53    0.024270152985209754
#>     Attrib V54    0.4438424049692911
#>     Attrib V55    -0.6632879709169156
#>     Attrib V56    -0.3178688999005198
#>     Attrib V57    -0.029292456034010376
#>     Attrib V58    0.033816999661884686
#>     Attrib V59    -0.011739719050012892
#>     Attrib V6    -0.032147498791809746
#>     Attrib V60    0.3232119034892171
#>     Attrib V7    0.3558361512099687
#>     Attrib V8    0.061271471945066845
#>     Attrib V9    0.3782427314276118
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.08810462262082654
#>     Attrib V1    0.0370775079176862
#>     Attrib V10    -0.11295035855716269
#>     Attrib V11    -0.27241297594557906
#>     Attrib V12    -0.3590702926461595
#>     Attrib V13    -0.058147213021389546
#>     Attrib V14    0.17694527426254403
#>     Attrib V15    0.15529995520377884
#>     Attrib V16    0.15502109551679785
#>     Attrib V17    0.04901355543026119
#>     Attrib V18    0.006664585147649937
#>     Attrib V19    -0.029319926568061407
#>     Attrib V2    -0.0598678097621328
#>     Attrib V20    0.042659144811992226
#>     Attrib V21    -0.09517263682651297
#>     Attrib V22    -0.19808818567472256
#>     Attrib V23    -0.21878855268961414
#>     Attrib V24    -0.15382529661110023
#>     Attrib V25    -0.04673803653668135
#>     Attrib V26    -0.07956534180824809
#>     Attrib V27    -0.1062155636387367
#>     Attrib V28    -0.11558039093694508
#>     Attrib V29    0.17837904102747085
#>     Attrib V3    0.08283212109768474
#>     Attrib V30    0.037643280701143936
#>     Attrib V31    0.4292556922123204
#>     Attrib V32    0.117604021470293
#>     Attrib V33    -0.09927473999376743
#>     Attrib V34    0.006272252053572821
#>     Attrib V35    0.21084191233538985
#>     Attrib V36    0.44004382975218437
#>     Attrib V37    0.34584772657841756
#>     Attrib V38    0.06516728568582598
#>     Attrib V39    0.12678292542591776
#>     Attrib V4    -0.05345514175259894
#>     Attrib V40    0.2219922180628648
#>     Attrib V41    0.14655026441698876
#>     Attrib V42    0.14435980224511671
#>     Attrib V43    -0.029490119081206807
#>     Attrib V44    -0.008418752522681948
#>     Attrib V45    -0.11328467615374582
#>     Attrib V46    -0.08698900177353981
#>     Attrib V47    0.011651711612085976
#>     Attrib V48    -0.24703977128910193
#>     Attrib V49    -0.350320653446789
#>     Attrib V5    2.1323188543391476E-5
#>     Attrib V50    0.3289809596152518
#>     Attrib V51    0.11319888710017813
#>     Attrib V52    -0.07890774893770676
#>     Attrib V53    -0.001567472048649046
#>     Attrib V54    -0.19454422622528375
#>     Attrib V55    -0.005145648575446271
#>     Attrib V56    0.033228850197104115
#>     Attrib V57    0.021241785262245558
#>     Attrib V58    0.00986194092953607
#>     Attrib V59    0.03947028241336466
#>     Attrib V6    0.09860325675178203
#>     Attrib V60    -0.1366163310084062
#>     Attrib V7    -0.06168659718146482
#>     Attrib V8    0.054164830976977815
#>     Attrib V9    -0.06161186971679711
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.24961744962581742
#>     Attrib V1    -0.004310569252102065
#>     Attrib V10    0.09194691781157321
#>     Attrib V11    0.35484588802122835
#>     Attrib V12    0.38554262093026787
#>     Attrib V13    -0.13861504481118128
#>     Attrib V14    -0.384078369323157
#>     Attrib V15    -0.2358911353281145
#>     Attrib V16    -0.2252259415323854
#>     Attrib V17    -0.21029928572733234
#>     Attrib V18    0.1220102123479688
#>     Attrib V19    -0.08185600620654745
#>     Attrib V2    -0.0189179704336099
#>     Attrib V20    -0.20939231738134093
#>     Attrib V21    0.16777262108765
#>     Attrib V22    0.27011521485470424
#>     Attrib V23    0.14710736395019908
#>     Attrib V24    0.10829537238218545
#>     Attrib V25    -0.14496519551600984
#>     Attrib V26    -0.2318773078428621
#>     Attrib V27    -0.0863681696703936
#>     Attrib V28    0.014173032570076446
#>     Attrib V29    -0.3475392436836299
#>     Attrib V3    -0.225383529334227
#>     Attrib V30    -0.08936116581399343
#>     Attrib V31    -0.817439409670555
#>     Attrib V32    0.08052717277119965
#>     Attrib V33    0.4672163941342761
#>     Attrib V34    0.19547186364177135
#>     Attrib V35    -0.04401156509302657
#>     Attrib V36    -0.4323339401425837
#>     Attrib V37    -0.44142376253432125
#>     Attrib V38    0.033638659089594826
#>     Attrib V39    -0.1377854869806223
#>     Attrib V4    0.19763634942723898
#>     Attrib V40    -0.2264087393826674
#>     Attrib V41    0.037872409123790945
#>     Attrib V42    -0.11356578067763949
#>     Attrib V43    0.2557696771578689
#>     Attrib V44    0.028890200960152483
#>     Attrib V45    0.27179029642988267
#>     Attrib V46    0.028033684459594282
#>     Attrib V47    -0.13250983953537346
#>     Attrib V48    0.489606021339535
#>     Attrib V49    0.5749685378232476
#>     Attrib V5    -0.11395850120655918
#>     Attrib V50    -0.4288944838071025
#>     Attrib V51    -0.24180885487865264
#>     Attrib V52    0.2963436281622513
#>     Attrib V53    0.0324119714733388
#>     Attrib V54    0.4588741516367788
#>     Attrib V55    -0.13795838421297255
#>     Attrib V56    -0.048701960620253296
#>     Attrib V57    0.08238348424932723
#>     Attrib V58    0.06261410566724294
#>     Attrib V59    0.1284709424773348
#>     Attrib V6    -0.13811307703938963
#>     Attrib V60    0.31253594655853434
#>     Attrib V7    0.21847405101543552
#>     Attrib V8    0.07557317370628032
#>     Attrib V9    0.17744089433930857
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.0440984471478394
#>     Attrib V1    0.287751821981393
#>     Attrib V10    -0.186904780667519
#>     Attrib V11    -0.42571234145922165
#>     Attrib V12    -0.5928060744818879
#>     Attrib V13    0.10889980046218435
#>     Attrib V14    0.7022961739528767
#>     Attrib V15    0.4837972302782013
#>     Attrib V16    0.3464415599845371
#>     Attrib V17    0.07713580011696065
#>     Attrib V18    -0.5359714163698429
#>     Attrib V19    -0.3309313300179536
#>     Attrib V2    0.08840149786303493
#>     Attrib V20    0.13386912212999033
#>     Attrib V21    -0.18649569274659228
#>     Attrib V22    -0.6393012619100198
#>     Attrib V23    -0.7011587884836379
#>     Attrib V24    -0.47369489542241106
#>     Attrib V25    0.1446517649486139
#>     Attrib V26    0.34993373338618666
#>     Attrib V27    0.3285403747993157
#>     Attrib V28    0.4248673244651233
#>     Attrib V29    0.9319872236338205
#>     Attrib V3    0.14060489443977836
#>     Attrib V30    0.24043075281586804
#>     Attrib V31    1.299640027733696
#>     Attrib V32    0.09272365523839009
#>     Attrib V33    -0.6261540509951898
#>     Attrib V34    -0.2908137592656682
#>     Attrib V35    0.2161806516451542
#>     Attrib V36    0.7819710149683848
#>     Attrib V37    0.8974723250001975
#>     Attrib V38    -0.14371622281601543
#>     Attrib V39    0.24090757105557853
#>     Attrib V4    -0.3723747579884526
#>     Attrib V40    0.2687368001448511
#>     Attrib V41    -0.03881046794537829
#>     Attrib V42    -0.026813973332609833
#>     Attrib V43    -0.6150125014641278
#>     Attrib V44    -0.46207973232733324
#>     Attrib V45    -0.3061279769843383
#>     Attrib V46    0.006626116785443943
#>     Attrib V47    0.14473255954521566
#>     Attrib V48    -0.6015229345259344
#>     Attrib V49    -0.6537904933311899
#>     Attrib V5    -0.052906987513275286
#>     Attrib V50    0.739181204387499
#>     Attrib V51    0.21274198295008603
#>     Attrib V52    -0.49583939526263426
#>     Attrib V53    0.004192760033460629
#>     Attrib V54    -0.8003566942444882
#>     Attrib V55    0.018712827087410892
#>     Attrib V56    -0.2905550101174975
#>     Attrib V57    -0.24027305134172725
#>     Attrib V58    -0.16865307841357394
#>     Attrib V59    -0.09451391033144166
#>     Attrib V6    0.09938668532450434
#>     Attrib V60    -0.4245958722367913
#>     Attrib V7    -0.5283167833711933
#>     Attrib V8    -0.20333492506946527
#>     Attrib V9    -0.3909611466528672
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.07180649719916651
#>     Attrib V1    0.18516608247472585
#>     Attrib V10    2.8636789548816495E-4
#>     Attrib V11    0.10207935705184724
#>     Attrib V12    0.01943037689321954
#>     Attrib V13    -0.06485904840571519
#>     Attrib V14    -0.053763653925038596
#>     Attrib V15    0.035847351235203495
#>     Attrib V16    -0.011412743800069338
#>     Attrib V17    -0.0368474294279953
#>     Attrib V18    -0.013860437286152468
#>     Attrib V19    -0.1026898274167264
#>     Attrib V2    0.15049834124315134
#>     Attrib V20    -0.059299538328770614
#>     Attrib V21    -0.05465728027725355
#>     Attrib V22    -0.05304164212690185
#>     Attrib V23    -0.03834590864133336
#>     Attrib V24    -0.017259874495981802
#>     Attrib V25    -0.1904037537359865
#>     Attrib V26    -0.1865850172525265
#>     Attrib V27    -0.19815681601336127
#>     Attrib V28    -0.1857800419962026
#>     Attrib V29    -0.2534808518783012
#>     Attrib V3    -0.0012549967760250263
#>     Attrib V30    -0.09034317521500511
#>     Attrib V31    -0.2408375221884093
#>     Attrib V32    -0.029827590768763547
#>     Attrib V33    0.1957898755627023
#>     Attrib V34    0.11223570624271899
#>     Attrib V35    0.059106473132913645
#>     Attrib V36    -0.09252533062226322
#>     Attrib V37    -0.09242363811077269
#>     Attrib V38    0.08447564602856146
#>     Attrib V39    -0.03528445699272286
#>     Attrib V4    0.20493215316445398
#>     Attrib V40    -0.07656460996976742
#>     Attrib V41    -0.051632293968987025
#>     Attrib V42    -0.025363085894552374
#>     Attrib V43    0.08750553202531137
#>     Attrib V44    0.07977237487293984
#>     Attrib V45    0.0717333351934501
#>     Attrib V46    0.04170107150928962
#>     Attrib V47    -0.03931283017587623
#>     Attrib V48    0.12080338138821771
#>     Attrib V49    0.125970884000113
#>     Attrib V5    0.033108388681728065
#>     Attrib V50    -0.07890347290159641
#>     Attrib V51    -0.0445395017091997
#>     Attrib V52    0.11145516339025165
#>     Attrib V53    0.14740115996066755
#>     Attrib V54    0.31847789244742564
#>     Attrib V55    0.17399456241902594
#>     Attrib V56    0.031506383643130687
#>     Attrib V57    0.1972746010615187
#>     Attrib V58    0.10987292806421092
#>     Attrib V59    0.2278468352479189
#>     Attrib V6    -0.010513447566425051
#>     Attrib V60    0.2622607693390453
#>     Attrib V7    0.15228097222321973
#>     Attrib V8    0.11170571708114771
#>     Attrib V9    0.11596669801268461
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.14958995987482454
#>     Attrib V1    0.07045928482331845
#>     Attrib V10    -0.031124900346510956
#>     Attrib V11    -0.03544488888180374
#>     Attrib V12    -0.0801079529106728
#>     Attrib V13    -0.04533562282912721
#>     Attrib V14    0.12743888571320353
#>     Attrib V15    0.06729172259648862
#>     Attrib V16    0.08663881266862183
#>     Attrib V17    0.016419758473922325
#>     Attrib V18    0.0476809320528285
#>     Attrib V19    -0.031999945268553855
#>     Attrib V2    0.025816131329853498
#>     Attrib V20    -0.010261509916469597
#>     Attrib V21    -0.06489275933440082
#>     Attrib V22    -0.10161152459484332
#>     Attrib V23    -0.030072772207455505
#>     Attrib V24    -0.04851342361600308
#>     Attrib V25    -0.05499810458902016
#>     Attrib V26    -0.0677576480216788
#>     Attrib V27    -0.061687265910849366
#>     Attrib V28    -0.028393735658525696
#>     Attrib V29    0.032843479893890706
#>     Attrib V3    0.12123269181196548
#>     Attrib V30    0.03336068546678382
#>     Attrib V31    0.12149228652919881
#>     Attrib V32    0.015193774219364986
#>     Attrib V33    0.009162774262201306
#>     Attrib V34    0.028297857532579716
#>     Attrib V35    0.10856533539375883
#>     Attrib V36    0.21673179165686363
#>     Attrib V37    0.1564785367759915
#>     Attrib V38    -0.0027094322899680052
#>     Attrib V39    0.0972326075993674
#>     Attrib V4    0.01857127868703606
#>     Attrib V40    0.1322461946538128
#>     Attrib V41    0.06267151369567375
#>     Attrib V42    0.11218324594854312
#>     Attrib V43    0.003914878740444068
#>     Attrib V44    0.097613489378963
#>     Attrib V45    0.03009374825629374
#>     Attrib V46    0.021191637073803102
#>     Attrib V47    0.05610980498180205
#>     Attrib V48    -0.08260008781236282
#>     Attrib V49    -0.06378793014740682
#>     Attrib V5    0.08559997885745506
#>     Attrib V50    0.07425504566152244
#>     Attrib V51    0.10672478408915452
#>     Attrib V52    0.05546887131073165
#>     Attrib V53    0.07331431716733
#>     Attrib V54    -0.1008944980439893
#>     Attrib V55    0.02198711929204352
#>     Attrib V56    0.07917658720211353
#>     Attrib V57    0.07616187057969385
#>     Attrib V58    0.11663761943328932
#>     Attrib V59    0.048331300745235034
#>     Attrib V6    0.12568669660393691
#>     Attrib V60    0.019546305990764148
#>     Attrib V7    0.04995274416611866
#>     Attrib V8    0.09880140838534628
#>     Attrib V9    0.043999204458681274
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
#>  0.1884058 
```
