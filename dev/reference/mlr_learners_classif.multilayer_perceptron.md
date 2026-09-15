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
#>     Threshold    -0.20158916135209967
#>     Node 2    2.0592137705544253
#>     Node 3    1.5345508803240038
#>     Node 4    0.903503151805571
#>     Node 5    -2.2257037673927833
#>     Node 6    1.41514742164202
#>     Node 7    3.557190712337668
#>     Node 8    0.5580522661848948
#>     Node 9    3.0242991009151585
#>     Node 10    -0.37405151563272226
#>     Node 11    1.1387534590026926
#>     Node 12    1.5764028638141285
#>     Node 13    1.0179043842739244
#>     Node 14    1.463797502506782
#>     Node 15    -2.821375837070495
#>     Node 16    0.4465482925899827
#>     Node 17    0.3402977305357004
#>     Node 18    0.07985103672043166
#>     Node 19    2.67751165450803
#>     Node 20    1.498640149457569
#>     Node 21    -2.965745930672877
#>     Node 22    1.3895382130256728
#>     Node 23    1.64842537288272
#>     Node 24    -0.5026863896040357
#>     Node 25    3.9662886093937995
#>     Node 26    0.061476068456314446
#>     Node 27    1.3272391033272608
#>     Node 28    -3.633408511104496
#>     Node 29    1.0131704692069758
#>     Node 30    0.3238996488091659
#>     Node 31    1.8013959476670218
#>     Node 32    1.084507314281357
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.21911514214545877
#>     Node 2    -2.087253368829315
#>     Node 3    -1.5263839836064415
#>     Node 4    -0.8641938919377766
#>     Node 5    2.2392829450572505
#>     Node 6    -1.4020319416265128
#>     Node 7    -3.551799563860419
#>     Node 8    -0.587204299462043
#>     Node 9    -3.0166562060374877
#>     Node 10    0.3163098425775684
#>     Node 11    -1.1058120525912785
#>     Node 12    -1.6352780316271356
#>     Node 13    -0.9727043472277846
#>     Node 14    -1.404802434970961
#>     Node 15    2.8128131074701934
#>     Node 16    -0.46389234429155496
#>     Node 17    -0.3016940652517487
#>     Node 18    -0.032712372705382436
#>     Node 19    -2.6712895210006593
#>     Node 20    -1.4789171775418448
#>     Node 21    3.0268694968024947
#>     Node 22    -1.456485233859209
#>     Node 23    -1.715039579500292
#>     Node 24    0.5001073270951687
#>     Node 25    -3.944707539847647
#>     Node 26    -0.13907989295086118
#>     Node 27    -1.3637322903737772
#>     Node 28    3.581791258294245
#>     Node 29    -1.0488239597341864
#>     Node 30    -0.24539182873427365
#>     Node 31    -1.7650392212624917
#>     Node 32    -1.1111645165728028
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.48722715712412173
#>     Attrib V1    -0.3235798686095085
#>     Attrib V10    0.46838490571708147
#>     Attrib V11    0.6033596269956254
#>     Attrib V12    0.5569685299127923
#>     Attrib V13    -0.05047772585742882
#>     Attrib V14    -0.16500184073738242
#>     Attrib V15    -0.40787775554467437
#>     Attrib V16    -0.18166672118472416
#>     Attrib V17    -0.4384616527587424
#>     Attrib V18    -0.011088670769614863
#>     Attrib V19    0.1550221277845056
#>     Attrib V2    -0.01434294199397683
#>     Attrib V20    -0.13320759683589253
#>     Attrib V21    -0.1690086575970863
#>     Attrib V22    0.018261600436222727
#>     Attrib V23    0.28738597864393
#>     Attrib V24    0.25976719311086943
#>     Attrib V25    -0.1363275637737812
#>     Attrib V26    -0.34756781975471057
#>     Attrib V27    -0.0907838426363854
#>     Attrib V28    0.6276617971630047
#>     Attrib V29    0.03559777989328837
#>     Attrib V3    -0.08228428332692331
#>     Attrib V30    0.32282998898379184
#>     Attrib V31    -0.8366827715417201
#>     Attrib V32    0.32195824437770704
#>     Attrib V33    0.8157042687625607
#>     Attrib V34    0.16831197932334543
#>     Attrib V35    -0.6802297091052817
#>     Attrib V36    -1.310531544038554
#>     Attrib V37    -1.1253527740215157
#>     Attrib V38    -0.2332408202268234
#>     Attrib V39    -0.13666640371159428
#>     Attrib V4    0.18701668506830732
#>     Attrib V40    -0.09607146244977839
#>     Attrib V41    0.3131716978423762
#>     Attrib V42    0.051985512281698995
#>     Attrib V43    -0.006060685580088776
#>     Attrib V44    0.37178759298894887
#>     Attrib V45    0.05901640750883686
#>     Attrib V46    0.12832043730136813
#>     Attrib V47    0.013722285792683472
#>     Attrib V48    0.4858100081875091
#>     Attrib V49    0.9290651347008777
#>     Attrib V5    0.034291607594891534
#>     Attrib V50    -0.6444219633063446
#>     Attrib V51    0.41320753272004246
#>     Attrib V52    0.7576841672576097
#>     Attrib V53    0.19673970873338767
#>     Attrib V54    -0.24489836279817165
#>     Attrib V55    -0.7335812265247031
#>     Attrib V56    -0.024874260380135963
#>     Attrib V57    -0.05885553813858056
#>     Attrib V58    0.5482378456003928
#>     Attrib V59    0.08902813367485239
#>     Attrib V6    0.34389951038442707
#>     Attrib V60    0.0574454657563145
#>     Attrib V7    -0.07403452711215931
#>     Attrib V8    0.09745364546365477
#>     Attrib V9    0.6806195674888589
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.3957386443791078
#>     Attrib V1    0.13838025865527867
#>     Attrib V10    -0.21207218789518442
#>     Attrib V11    0.03866526242731135
#>     Attrib V12    0.10357029099780533
#>     Attrib V13    0.055300566423381096
#>     Attrib V14    0.01673784092901355
#>     Attrib V15    0.11048462186707839
#>     Attrib V16    0.1324615359582515
#>     Attrib V17    -0.07532301277816904
#>     Attrib V18    0.0030961061507075796
#>     Attrib V19    0.12738840640786805
#>     Attrib V2    0.2507271709685233
#>     Attrib V20    0.2010283888907966
#>     Attrib V21    0.21949596150856082
#>     Attrib V22    0.3081089629080605
#>     Attrib V23    0.3215292723573861
#>     Attrib V24    0.20245546827390468
#>     Attrib V25    -0.312400396718794
#>     Attrib V26    -0.700632700158364
#>     Attrib V27    -0.6743795627625876
#>     Attrib V28    -0.08465409015971145
#>     Attrib V29    -0.46390266248587325
#>     Attrib V3    0.14619208689478183
#>     Attrib V30    0.04668439404420417
#>     Attrib V31    -0.5976624970590086
#>     Attrib V32    0.14323899225859524
#>     Attrib V33    0.5530852578960485
#>     Attrib V34    -0.06870689305181339
#>     Attrib V35    -0.5486560363681164
#>     Attrib V36    -0.7077963169287407
#>     Attrib V37    -0.5559738505439504
#>     Attrib V38    0.23343898647003525
#>     Attrib V39    0.05813777162585347
#>     Attrib V4    0.41362645246387303
#>     Attrib V40    -0.24138185281207844
#>     Attrib V41    0.060093178692992445
#>     Attrib V42    0.20418787458117718
#>     Attrib V43    0.1160766087376883
#>     Attrib V44    0.21287644746597964
#>     Attrib V45    0.05652859780727573
#>     Attrib V46    6.595014795447594E-4
#>     Attrib V47    -0.30517174456114116
#>     Attrib V48    -0.1634421882303472
#>     Attrib V49    0.41019820170990706
#>     Attrib V5    0.12110977225399809
#>     Attrib V50    -0.2476081730347677
#>     Attrib V51    -0.06891244596847652
#>     Attrib V52    0.16152891770131236
#>     Attrib V53    0.10445675868205723
#>     Attrib V54    0.4506743851180601
#>     Attrib V55    -0.08402268536034037
#>     Attrib V56    0.286347080070284
#>     Attrib V57    0.36758113186267677
#>     Attrib V58    0.5499117413483231
#>     Attrib V59    0.5588943188042395
#>     Attrib V6    0.06317390391048307
#>     Attrib V60    0.17929887903029948
#>     Attrib V7    0.03434640629670563
#>     Attrib V8    0.14406906588243273
#>     Attrib V9    0.26166028617764014
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.1363807064673651
#>     Attrib V1    0.04278788080032354
#>     Attrib V10    -0.04759026383988793
#>     Attrib V11    0.12214758985101037
#>     Attrib V12    0.16481943994997822
#>     Attrib V13    0.08788161319680057
#>     Attrib V14    0.05973536656303267
#>     Attrib V15    0.01848646530372329
#>     Attrib V16    0.016326728054280565
#>     Attrib V17    -0.06622811640270701
#>     Attrib V18    -0.00679859493801159
#>     Attrib V19    0.02408040595350595
#>     Attrib V2    0.11735446876671271
#>     Attrib V20    0.05649339412515446
#>     Attrib V21    0.0874981004330888
#>     Attrib V22    0.055835957715654985
#>     Attrib V23    0.12564287996327797
#>     Attrib V24    0.0698142484734635
#>     Attrib V25    -0.18603060764811843
#>     Attrib V26    -0.3421868581258463
#>     Attrib V27    -0.308057622902158
#>     Attrib V28    0.07546769583576739
#>     Attrib V29    -0.1404715476921404
#>     Attrib V3    0.14195566183015942
#>     Attrib V30    0.04710033779950696
#>     Attrib V31    -0.3897534652868778
#>     Attrib V32    0.022823626861263088
#>     Attrib V33    0.29530887446164644
#>     Attrib V34    -0.003975949281899472
#>     Attrib V35    -0.267285363964886
#>     Attrib V36    -0.3861073236450091
#>     Attrib V37    -0.30363347168359434
#>     Attrib V38    0.09082839202481671
#>     Attrib V39    -0.008218479223939264
#>     Attrib V4    0.27332667998851046
#>     Attrib V40    -0.1798763911580808
#>     Attrib V41    -0.009612208570411607
#>     Attrib V42    0.07102837241427398
#>     Attrib V43    0.02131879448219785
#>     Attrib V44    0.14123123823394917
#>     Attrib V45    0.11511799536881875
#>     Attrib V46    0.007438900166353359
#>     Attrib V47    -0.15063226019578055
#>     Attrib V48    0.024293795200266158
#>     Attrib V49    0.2970749432691996
#>     Attrib V5    0.11571183715924842
#>     Attrib V50    -0.1242907035088687
#>     Attrib V51    0.08840275636180399
#>     Attrib V52    0.1672018818149831
#>     Attrib V53    0.15392903470447875
#>     Attrib V54    0.17490536440632928
#>     Attrib V55    -0.054489743349253994
#>     Attrib V56    0.1807274700546058
#>     Attrib V57    0.28314649484363236
#>     Attrib V58    0.26259649764676996
#>     Attrib V59    0.32111454949480844
#>     Attrib V6    0.05113105957337181
#>     Attrib V60    0.16093976017298706
#>     Attrib V7    0.008507920808849729
#>     Attrib V8    -0.0067806579583323595
#>     Attrib V9    0.22721944675213385
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.5141624352518357
#>     Attrib V1    0.34952033721552234
#>     Attrib V10    -0.3903284402075278
#>     Attrib V11    -0.630322342925891
#>     Attrib V12    -0.516954643069585
#>     Attrib V13    -3.6005763778576826E-4
#>     Attrib V14    0.6717185410923847
#>     Attrib V15    0.8158680844092471
#>     Attrib V16    0.26815731241184243
#>     Attrib V17    0.21166784765949914
#>     Attrib V18    -0.1380934736443125
#>     Attrib V19    -0.597248453328444
#>     Attrib V2    0.09585873496486655
#>     Attrib V20    -0.33885866128110215
#>     Attrib V21    -0.1102057716320698
#>     Attrib V22    -0.5903352066762491
#>     Attrib V23    -0.8426454792267074
#>     Attrib V24    -0.738851904044813
#>     Attrib V25    0.1778079579628349
#>     Attrib V26    0.7418472619753067
#>     Attrib V27    0.6628802073578587
#>     Attrib V28    -0.4301077236010494
#>     Attrib V29    0.40238421801636143
#>     Attrib V3    0.1779377732075569
#>     Attrib V30    -0.37847544346221584
#>     Attrib V31    1.1323051914390174
#>     Attrib V32    -0.30724847725817583
#>     Attrib V33    -1.083176473309548
#>     Attrib V34    -0.36701060406840585
#>     Attrib V35    0.33486234364623674
#>     Attrib V36    0.5142662610399009
#>     Attrib V37    0.24133935765829925
#>     Attrib V38    -1.0953199527399249
#>     Attrib V39    -0.27617610049651053
#>     Attrib V4    -0.027028109690665013
#>     Attrib V40    0.5805066923648325
#>     Attrib V41    0.20152957926605067
#>     Attrib V42    0.272165734667094
#>     Attrib V43    -0.01238904419070523
#>     Attrib V44    -0.7628988355452877
#>     Attrib V45    -0.5494370028664589
#>     Attrib V46    -0.37878397787759854
#>     Attrib V47    0.31548741001340447
#>     Attrib V48    0.176357633600228
#>     Attrib V49    -0.879296287372389
#>     Attrib V5    -0.11105785710047632
#>     Attrib V50    0.8799116263591445
#>     Attrib V51    -0.13028426248205693
#>     Attrib V52    -0.6497408843577218
#>     Attrib V53    0.06593668059110346
#>     Attrib V54    -0.1480698008098039
#>     Attrib V55    0.7838452733415023
#>     Attrib V56    -0.09881401673212394
#>     Attrib V57    -0.07242785636464547
#>     Attrib V58    -0.4732188720392053
#>     Attrib V59    -0.04891455327599538
#>     Attrib V6    -0.37787532658295153
#>     Attrib V60    -0.1350599068170452
#>     Attrib V7    -0.349926611981601
#>     Attrib V8    0.06223955654071645
#>     Attrib V9    -1.009926772432085
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.4193502706907249
#>     Attrib V1    0.12139281554277791
#>     Attrib V10    -0.20944857130664027
#>     Attrib V11    0.06313470133256997
#>     Attrib V12    0.163610059034801
#>     Attrib V13    0.025419512561707644
#>     Attrib V14    -0.038238204229019586
#>     Attrib V15    0.009407699032410385
#>     Attrib V16    0.17247668189596968
#>     Attrib V17    -0.0679028780351567
#>     Attrib V18    0.08328160292275665
#>     Attrib V19    0.0853591259650086
#>     Attrib V2    0.1819881485846692
#>     Attrib V20    0.16162356276742368
#>     Attrib V21    0.22647352709485083
#>     Attrib V22    0.24693758434592267
#>     Attrib V23    0.28825289072785454
#>     Attrib V24    0.26354962428137685
#>     Attrib V25    -0.2006809722341313
#>     Attrib V26    -0.5918542702362736
#>     Attrib V27    -0.5404569267298303
#>     Attrib V28    -0.07808027646571362
#>     Attrib V29    -0.4351061486901959
#>     Attrib V3    0.09456997487606626
#>     Attrib V30    -0.027012872476843187
#>     Attrib V31    -0.6278564872257483
#>     Attrib V32    0.12382920003228122
#>     Attrib V33    0.5092649175841285
#>     Attrib V34    -0.05365505040318618
#>     Attrib V35    -0.4723157512185229
#>     Attrib V36    -0.6333923704870769
#>     Attrib V37    -0.4758517891152808
#>     Attrib V38    0.25070566839239106
#>     Attrib V39    -0.011120728530754973
#>     Attrib V4    0.36575317520570433
#>     Attrib V40    -0.306730467629518
#>     Attrib V41    0.07835087387863442
#>     Attrib V42    0.1741635010060288
#>     Attrib V43    0.07186326138446471
#>     Attrib V44    0.15887595367548943
#>     Attrib V45    0.07887814206803145
#>     Attrib V46    0.03937031561507538
#>     Attrib V47    -0.30450820385497585
#>     Attrib V48    -0.1312562965906317
#>     Attrib V49    0.4123643342340679
#>     Attrib V5    0.11815892053062091
#>     Attrib V50    -0.19434465487821104
#>     Attrib V51    -0.018678645723055345
#>     Attrib V52    0.11341841505343986
#>     Attrib V53    0.17016136310126942
#>     Attrib V54    0.34705914155053674
#>     Attrib V55    -0.1782014881683754
#>     Attrib V56    0.25873428506158774
#>     Attrib V57    0.3920549035436481
#>     Attrib V58    0.47958812420871133
#>     Attrib V59    0.5685832210832031
#>     Attrib V6    0.1706541137326611
#>     Attrib V60    0.2989014327738132
#>     Attrib V7    0.11912854602023218
#>     Attrib V8    0.10699156903192361
#>     Attrib V9    0.33294695285195064
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5608480510449884
#>     Attrib V1    -0.19387383344754294
#>     Attrib V10    0.6365015145359623
#>     Attrib V11    0.8871853982489571
#>     Attrib V12    1.061879517852809
#>     Attrib V13    0.3646743167084581
#>     Attrib V14    0.05480661372187332
#>     Attrib V15    -0.5701878395532717
#>     Attrib V16    -0.4808912456757232
#>     Attrib V17    -0.5865557275199136
#>     Attrib V18    -0.0757775018383532
#>     Attrib V19    -0.18068979972114138
#>     Attrib V2    0.39242350296041384
#>     Attrib V20    -0.4817705708101695
#>     Attrib V21    -0.0659136409818701
#>     Attrib V22    0.34302591118097914
#>     Attrib V23    0.5236027902597318
#>     Attrib V24    0.25951918252355766
#>     Attrib V25    0.32810837745054805
#>     Attrib V26    0.7746795617790261
#>     Attrib V27    1.3644850677544957
#>     Attrib V28    1.9546676380893624
#>     Attrib V29    1.5896542501898285
#>     Attrib V3    0.19500379946959642
#>     Attrib V30    0.7553583075450105
#>     Attrib V31    -1.4797404954185733
#>     Attrib V32    -0.5479411203341699
#>     Attrib V33    0.07249070136195111
#>     Attrib V34    -0.05159394512020589
#>     Attrib V35    -0.403170778413312
#>     Attrib V36    -0.7003132782137506
#>     Attrib V37    -0.22432733866776539
#>     Attrib V38    -0.2714982608730139
#>     Attrib V39    -0.07556945159164592
#>     Attrib V4    0.7938428119948193
#>     Attrib V40    0.19218436073217254
#>     Attrib V41    0.8995081436822501
#>     Attrib V42    0.01057871784209899
#>     Attrib V43    -0.09793318613054175
#>     Attrib V44    0.4949959467661804
#>     Attrib V45    0.6189275473223135
#>     Attrib V46    0.5759256129455282
#>     Attrib V47    0.4322636102382407
#>     Attrib V48    0.8488664534955822
#>     Attrib V49    1.20263912569824
#>     Attrib V5    0.15730016366804594
#>     Attrib V50    -0.5773616828129045
#>     Attrib V51    0.73058351011017
#>     Attrib V52    1.209540837584534
#>     Attrib V53    0.12876531671225872
#>     Attrib V54    -0.4371156690107758
#>     Attrib V55    -1.1413094001912711
#>     Attrib V56    -0.620911829730464
#>     Attrib V57    -0.23073307122453465
#>     Attrib V58    0.2867398945000886
#>     Attrib V59    0.1531234906311217
#>     Attrib V6    0.887205880353547
#>     Attrib V60    0.42244238072860857
#>     Attrib V7    0.0392886961380886
#>     Attrib V8    -0.022893518658365444
#>     Attrib V9    0.6787042454596462
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.03266900148972666
#>     Attrib V1    0.018993137673224355
#>     Attrib V10    0.04382301579037676
#>     Attrib V11    0.12186749318351786
#>     Attrib V12    0.13273746458164917
#>     Attrib V13    0.07297630916291001
#>     Attrib V14    -0.03829344209983955
#>     Attrib V15    -0.08104050949957707
#>     Attrib V16    0.02379096896217685
#>     Attrib V17    -0.06172233075377994
#>     Attrib V18    -0.06432549731843909
#>     Attrib V19    4.093046512815553E-4
#>     Attrib V2    0.1145681390233962
#>     Attrib V20    -0.06718491722336492
#>     Attrib V21    -0.05380969352416573
#>     Attrib V22    -0.020143795265660264
#>     Attrib V23    0.025379150932469813
#>     Attrib V24    0.07814880502877473
#>     Attrib V25    -0.017024144507843425
#>     Attrib V26    -0.09254833842373351
#>     Attrib V27    -0.08027061278600735
#>     Attrib V28    0.06627213744907462
#>     Attrib V29    -0.11803832867940833
#>     Attrib V3    0.10740478740742414
#>     Attrib V30    0.027361660444252155
#>     Attrib V31    -0.22097274758797947
#>     Attrib V32    0.021948122982244415
#>     Attrib V33    0.16473495543796296
#>     Attrib V34    0.02771728579929939
#>     Attrib V35    -0.04467422172843922
#>     Attrib V36    -0.03817417177655134
#>     Attrib V37    -0.052476137305276734
#>     Attrib V38    0.17870169958900647
#>     Attrib V39    0.010420273336589111
#>     Attrib V4    0.1998231035338561
#>     Attrib V40    -0.10825435567593496
#>     Attrib V41    -7.211203071174694E-4
#>     Attrib V42    -0.08145479978280236
#>     Attrib V43    -0.00831721963448194
#>     Attrib V44    0.13425213472761316
#>     Attrib V45    0.10409697614830878
#>     Attrib V46    0.10980035065543275
#>     Attrib V47    0.011724129991914719
#>     Attrib V48    0.09351525661222561
#>     Attrib V49    0.19374386233560562
#>     Attrib V5    0.04699633538663609
#>     Attrib V50    -0.067000145249178
#>     Attrib V51    0.06978598003671252
#>     Attrib V52    0.12884703478140586
#>     Attrib V53    0.12002643351432436
#>     Attrib V54    0.15948610414983627
#>     Attrib V55    -0.024564178827161207
#>     Attrib V56    0.0768596262669604
#>     Attrib V57    0.25193843048942516
#>     Attrib V58    0.10585297431128868
#>     Attrib V59    0.20416848718551348
#>     Attrib V6    0.04772945761722714
#>     Attrib V60    0.21498418016100995
#>     Attrib V7    0.0349784713666098
#>     Attrib V8    -0.044722664752362036
#>     Attrib V9    0.1407149367951389
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.4254687086653209
#>     Attrib V1    -0.32800906999603563
#>     Attrib V10    0.7506649827891594
#>     Attrib V11    0.9662651630302632
#>     Attrib V12    1.224565306323279
#>     Attrib V13    0.3653933530199615
#>     Attrib V14    -0.21941986666403074
#>     Attrib V15    -0.7609268988340414
#>     Attrib V16    -0.5730194296196961
#>     Attrib V17    -0.5666714882486713
#>     Attrib V18    -0.03894568779201104
#>     Attrib V19    -0.09280130895716315
#>     Attrib V2    0.24751086316336385
#>     Attrib V20    -0.4688556445541387
#>     Attrib V21    -0.2514838599110005
#>     Attrib V22    0.2034674917536851
#>     Attrib V23    0.45079616910299475
#>     Attrib V24    0.45830704246118825
#>     Attrib V25    0.6376790290217742
#>     Attrib V26    0.8153523124664545
#>     Attrib V27    1.1387446043998304
#>     Attrib V28    1.4231013728231237
#>     Attrib V29    0.7346918258180416
#>     Attrib V3    -0.08367329381034158
#>     Attrib V30    0.4497600021014219
#>     Attrib V31    -1.184190162388899
#>     Attrib V32    -0.2755650574131672
#>     Attrib V33    0.2408771313331296
#>     Attrib V34    0.2571826912722038
#>     Attrib V35    -0.14985987394946243
#>     Attrib V36    -0.5288308999617273
#>     Attrib V37    -0.3640708428530611
#>     Attrib V38    -0.2860246653973426
#>     Attrib V39    -0.05052663317170744
#>     Attrib V4    0.4550001969921828
#>     Attrib V40    0.10583542806575219
#>     Attrib V41    0.609476041998181
#>     Attrib V42    -0.2646841885422322
#>     Attrib V43    -0.14288989202629723
#>     Attrib V44    0.32664272217453694
#>     Attrib V45    0.460031237719925
#>     Attrib V46    0.4378545020078762
#>     Attrib V47    0.3921250221128964
#>     Attrib V48    0.8423039347127629
#>     Attrib V49    1.2155249357205629
#>     Attrib V5    -0.016185689435844433
#>     Attrib V50    -0.5061139595238147
#>     Attrib V51    0.7434113472271643
#>     Attrib V52    1.1352260587858687
#>     Attrib V53    0.1518932164352411
#>     Attrib V54    -0.24415796816088742
#>     Attrib V55    -0.8686064179256984
#>     Attrib V56    -0.4658540806092902
#>     Attrib V57    -0.27437247395421904
#>     Attrib V58    0.26366845131564143
#>     Attrib V59    0.09766780965200032
#>     Attrib V6    0.7815003388561602
#>     Attrib V60    0.3828214280015684
#>     Attrib V7    0.08419905583791791
#>     Attrib V8    -0.005752683264028281
#>     Attrib V9    0.6533487305941531
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.27229856671380004
#>     Attrib V1    0.0363576218250661
#>     Attrib V10    -0.03249415752129675
#>     Attrib V11    -0.1336549378788879
#>     Attrib V12    -0.13878609320665947
#>     Attrib V13    0.006746426494487526
#>     Attrib V14    0.1530121558872329
#>     Attrib V15    0.11146382421364964
#>     Attrib V16    0.16922843178440192
#>     Attrib V17    0.15428591727413563
#>     Attrib V18    0.17380224775410355
#>     Attrib V19    -0.016708332776549987
#>     Attrib V2    -0.02778302320921058
#>     Attrib V20    -0.0928631044416925
#>     Attrib V21    0.009750019657624707
#>     Attrib V22    -0.026907462218624986
#>     Attrib V23    -0.08993539317607256
#>     Attrib V24    -0.20094320642535293
#>     Attrib V25    -0.02222260824408549
#>     Attrib V26    0.08549776427241616
#>     Attrib V27    -0.02452639604379637
#>     Attrib V28    -0.18019843863822543
#>     Attrib V29    0.015182519143770255
#>     Attrib V3    0.010145749950046452
#>     Attrib V30    0.04327075988223481
#>     Attrib V31    0.32087789444397974
#>     Attrib V32    0.010870959532382887
#>     Attrib V33    -0.035281521793414525
#>     Attrib V34    0.04931537586057099
#>     Attrib V35    0.21433210425352656
#>     Attrib V36    0.27544719391171235
#>     Attrib V37    0.17536687586871105
#>     Attrib V38    -0.09076991348672865
#>     Attrib V39    0.03282227955724303
#>     Attrib V4    -0.03314674853786195
#>     Attrib V40    0.29357271366552307
#>     Attrib V41    0.2273534977172734
#>     Attrib V42    0.12251778424572392
#>     Attrib V43    0.05924359504937322
#>     Attrib V44    -0.007430910138685038
#>     Attrib V45    -0.017272214476771512
#>     Attrib V46    -0.049886282674631056
#>     Attrib V47    0.08982101165986472
#>     Attrib V48    0.005643913285380601
#>     Attrib V49    -0.14496571669032357
#>     Attrib V5    0.04433898468697416
#>     Attrib V50    0.22130960303979033
#>     Attrib V51    0.004464708400153165
#>     Attrib V52    -0.11617424106217704
#>     Attrib V53    0.058106974842028335
#>     Attrib V54    -0.07593083551026313
#>     Attrib V55    0.049826113220404186
#>     Attrib V56    0.019267601838154777
#>     Attrib V57    -0.02724395183444865
#>     Attrib V58    -0.015695875912552816
#>     Attrib V59    -0.07232260957587254
#>     Attrib V6    0.10912495149097429
#>     Attrib V60    -0.03954857645420711
#>     Attrib V7    0.025318981827719012
#>     Attrib V8    0.11474888664714525
#>     Attrib V9    -0.13447538697940142
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.27025851285405406
#>     Attrib V1    -0.1106297299947856
#>     Attrib V10    0.02284442567461675
#>     Attrib V11    0.23517870737152377
#>     Attrib V12    0.2809835464582759
#>     Attrib V13    -0.002611607360758396
#>     Attrib V14    -0.21967690581756105
#>     Attrib V15    -0.250665129567448
#>     Attrib V16    -0.002857512983443815
#>     Attrib V17    -0.022323648389607847
#>     Attrib V18    0.08563727366567325
#>     Attrib V19    0.18142191147588155
#>     Attrib V2    -0.003254767293821051
#>     Attrib V20    0.13491978865880264
#>     Attrib V21    0.003210294188018362
#>     Attrib V22    0.16023123212685855
#>     Attrib V23    0.3097681236896219
#>     Attrib V24    0.2915280768732229
#>     Attrib V25    -0.03355647608013427
#>     Attrib V26    -0.3963441321552544
#>     Attrib V27    -0.33482597819404253
#>     Attrib V28    0.17025826921726675
#>     Attrib V29    -0.3549938374342443
#>     Attrib V3    -0.06818269953366363
#>     Attrib V30    0.0820749820006956
#>     Attrib V31    -0.6253747458350769
#>     Attrib V32    0.12641947535569353
#>     Attrib V33    0.5294080467484638
#>     Attrib V34    0.1698299879347589
#>     Attrib V35    -0.17432122593778476
#>     Attrib V36    -0.37001105885854174
#>     Attrib V37    -0.3503520056790351
#>     Attrib V38    0.3633481913994123
#>     Attrib V39    -0.0025177293055829463
#>     Attrib V4    0.05657030873387587
#>     Attrib V40    -0.3090858344631108
#>     Attrib V41    -0.10076456174426043
#>     Attrib V42    -0.00979406304611827
#>     Attrib V43    0.04136435744707099
#>     Attrib V44    0.32180067763369136
#>     Attrib V45    0.2268961842474199
#>     Attrib V46    0.10410929480779907
#>     Attrib V47    -0.15740331300599705
#>     Attrib V48    -0.008613946816579423
#>     Attrib V49    0.4110647775339553
#>     Attrib V5    0.032212612609424846
#>     Attrib V50    -0.31792391775871914
#>     Attrib V51    0.10079087954545184
#>     Attrib V52    0.19299004277283038
#>     Attrib V53    0.01707248219632564
#>     Attrib V54    0.265030452067987
#>     Attrib V55    -0.25286909607040114
#>     Attrib V56    0.17114135740256037
#>     Attrib V57    0.22523090443346944
#>     Attrib V58    0.3121392154214253
#>     Attrib V59    0.19590633755240658
#>     Attrib V6    0.113945502663993
#>     Attrib V60    0.17812523094626465
#>     Attrib V7    0.011978285415891953
#>     Attrib V8    -0.03468479206384058
#>     Attrib V9    0.3752148702309311
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.5619172566785473
#>     Attrib V1    -0.26153544196230644
#>     Attrib V10    0.2288237546133574
#>     Attrib V11    0.4673017949164563
#>     Attrib V12    0.40443781754988356
#>     Attrib V13    -0.007310660543058622
#>     Attrib V14    -0.15553213035339516
#>     Attrib V15    -0.34361946921847586
#>     Attrib V16    -0.15328366212896638
#>     Attrib V17    -0.4073200258919866
#>     Attrib V18    -0.17074121814393375
#>     Attrib V19    0.02939074996769909
#>     Attrib V2    0.05521848826312195
#>     Attrib V20    -0.2095309422495067
#>     Attrib V21    -0.20200397159070627
#>     Attrib V22    0.04674459197052282
#>     Attrib V23    0.17360345187730972
#>     Attrib V24    0.11447118258369844
#>     Attrib V25    -0.11645710894687629
#>     Attrib V26    -0.18723157006546157
#>     Attrib V27    0.1498094056132621
#>     Attrib V28    0.6778834325259462
#>     Attrib V29    0.188206527127842
#>     Attrib V3    -0.11520957066045837
#>     Attrib V30    0.3113630092595628
#>     Attrib V31    -0.7607096739759323
#>     Attrib V32    0.10053261011094557
#>     Attrib V33    0.6136898056985245
#>     Attrib V34    0.18124926200135263
#>     Attrib V35    -0.39189790547062003
#>     Attrib V36    -0.7261096090989078
#>     Attrib V37    -0.584498686111795
#>     Attrib V38    0.007901082261930275
#>     Attrib V39    -0.09793169216503109
#>     Attrib V4    0.34906605912583116
#>     Attrib V40    -0.15434217691843435
#>     Attrib V41    0.13037202382886479
#>     Attrib V42    -0.07685369830037206
#>     Attrib V43    -0.02732956958971777
#>     Attrib V44    0.21510358854735986
#>     Attrib V45    0.2119811838427765
#>     Attrib V46    0.24703533949395884
#>     Attrib V47    -0.014739137995161026
#>     Attrib V48    0.3611149888429623
#>     Attrib V49    0.691271944702537
#>     Attrib V5    0.06458938333161333
#>     Attrib V50    -0.5226705899312281
#>     Attrib V51    0.23024213201783358
#>     Attrib V52    0.5411535237953853
#>     Attrib V53    0.07254680328200146
#>     Attrib V54    -0.07629230307131096
#>     Attrib V55    -0.5771031031678094
#>     Attrib V56    -0.07225187493538889
#>     Attrib V57    0.09864020053364717
#>     Attrib V58    0.3800934134534511
#>     Attrib V59    0.2315352488713232
#>     Attrib V6    0.23496456666311955
#>     Attrib V60    0.16772531740351201
#>     Attrib V7    -0.01410549846250659
#>     Attrib V8    0.05377480049185204
#>     Attrib V9    0.5187197069171815
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.16807696663466892
#>     Attrib V1    0.05516097797025513
#>     Attrib V10    -0.12100190156659049
#>     Attrib V11    0.1239785073299303
#>     Attrib V12    0.19615154992248107
#>     Attrib V13    0.1559411818158702
#>     Attrib V14    0.012207404805518927
#>     Attrib V15    -0.0437881383512823
#>     Attrib V16    0.022171240272414485
#>     Attrib V17    -0.013997094941017122
#>     Attrib V18    0.06018327665697722
#>     Attrib V19    0.04586778109968244
#>     Attrib V2    0.13014499695660328
#>     Attrib V20    0.08634226932753146
#>     Attrib V21    0.08666408177959746
#>     Attrib V22    0.10705269637806658
#>     Attrib V23    0.20658186146961596
#>     Attrib V24    0.18080477192654154
#>     Attrib V25    -0.07155895825501084
#>     Attrib V26    -0.38658252577976865
#>     Attrib V27    -0.2965612262758917
#>     Attrib V28    -0.027830005086765815
#>     Attrib V29    -0.26709215089066
#>     Attrib V3    0.14710102261207628
#>     Attrib V30    -0.006869460578722253
#>     Attrib V31    -0.5204251783940169
#>     Attrib V32    0.044623271323759144
#>     Attrib V33    0.31893077976009576
#>     Attrib V34    0.02435594295656906
#>     Attrib V35    -0.305564571253493
#>     Attrib V36    -0.3764134478139938
#>     Attrib V37    -0.2609479554298463
#>     Attrib V38    0.19963499745837235
#>     Attrib V39    0.0390987801474759
#>     Attrib V4    0.2891488864611206
#>     Attrib V40    -0.20510143469733397
#>     Attrib V41    0.013681377472709954
#>     Attrib V42    0.06956079687092591
#>     Attrib V43    0.009445630846501853
#>     Attrib V44    0.12700330200361343
#>     Attrib V45    0.023260536917347092
#>     Attrib V46    0.04945820994717699
#>     Attrib V47    -0.15103821840719914
#>     Attrib V48    -0.038009396677461144
#>     Attrib V49    0.33048777165862714
#>     Attrib V5    0.11550565809628217
#>     Attrib V50    -0.20187649958407763
#>     Attrib V51    0.016440730290033317
#>     Attrib V52    0.13031068144017535
#>     Attrib V53    0.1417398879937873
#>     Attrib V54    0.2625740724652079
#>     Attrib V55    -0.08828984007933717
#>     Attrib V56    0.18446916079648348
#>     Attrib V57    0.31837714102139225
#>     Attrib V58    0.29494227617642244
#>     Attrib V59    0.4392929001380425
#>     Attrib V6    0.12769653657072416
#>     Attrib V60    0.2885807057504896
#>     Attrib V7    0.08997221109086563
#>     Attrib V8    -0.044511536302516475
#>     Attrib V9    0.19998568105209275
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.400948622387546
#>     Attrib V1    0.09245798815626176
#>     Attrib V10    -0.11105681635799788
#>     Attrib V11    0.2505669979899575
#>     Attrib V12    0.27092173331274155
#>     Attrib V13    0.011375748334202079
#>     Attrib V14    -0.1901648433080798
#>     Attrib V15    -0.08799552479437625
#>     Attrib V16    0.029674482593530956
#>     Attrib V17    -0.06637061057628726
#>     Attrib V18    0.04550184450328845
#>     Attrib V19    0.10374166604256964
#>     Attrib V2    0.16064652559218112
#>     Attrib V20    0.10707043580320229
#>     Attrib V21    0.06432046806609436
#>     Attrib V22    0.19133312378883902
#>     Attrib V23    0.3346027944707294
#>     Attrib V24    0.30718366141201503
#>     Attrib V25    -0.09285763730556187
#>     Attrib V26    -0.4807055190292134
#>     Attrib V27    -0.6279561626582256
#>     Attrib V28    -0.22792291079292948
#>     Attrib V29    -0.7280249635952408
#>     Attrib V3    -0.030422794717660927
#>     Attrib V30    -0.0705309784361783
#>     Attrib V31    -0.5610835842136821
#>     Attrib V32    0.14744043273556798
#>     Attrib V33    0.6045169959245088
#>     Attrib V34    0.11324235839638111
#>     Attrib V35    -0.31668153984875946
#>     Attrib V36    -0.5760744580564182
#>     Attrib V37    -0.4866067032495086
#>     Attrib V38    0.23622168527262993
#>     Attrib V39    -0.0027649346217175417
#>     Attrib V4    0.2561528812605764
#>     Attrib V40    -0.2903495569966043
#>     Attrib V41    -0.06335634961286588
#>     Attrib V42    -0.002490823308190984
#>     Attrib V43    0.023502295821314252
#>     Attrib V44    0.2228894883705083
#>     Attrib V45    0.03407768808945689
#>     Attrib V46    0.03219459301413786
#>     Attrib V47    -0.31157037906292984
#>     Attrib V48    -0.00946385257395082
#>     Attrib V49    0.505493210456747
#>     Attrib V5    0.016421475819857694
#>     Attrib V50    -0.2876762621955917
#>     Attrib V51    -0.03652182255754208
#>     Attrib V52    0.12329811346270884
#>     Attrib V53    0.05019784624663544
#>     Attrib V54    0.5049909150203643
#>     Attrib V55    -0.10182819857143138
#>     Attrib V56    0.2689114459483066
#>     Attrib V57    0.3454937849381234
#>     Attrib V58    0.44463650075828764
#>     Attrib V59    0.47477804742402624
#>     Attrib V6    0.07228560560051847
#>     Attrib V60    0.29364162747134454
#>     Attrib V7    0.11182123692681722
#>     Attrib V8    -0.008345823985643177
#>     Attrib V9    0.3357178714242446
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.44971892226211957
#>     Attrib V1    0.3738073224900214
#>     Attrib V10    -0.5367118716087166
#>     Attrib V11    -0.838309569880325
#>     Attrib V12    -0.3689971297945712
#>     Attrib V13    -0.007212130197313594
#>     Attrib V14    0.7327909909408314
#>     Attrib V15    0.9236541411460568
#>     Attrib V16    0.31252152232291835
#>     Attrib V17    0.10866592962981382
#>     Attrib V18    -0.2894295279193857
#>     Attrib V19    -0.8102092283831929
#>     Attrib V2    0.07126179370721475
#>     Attrib V20    -0.5752194427732441
#>     Attrib V21    -0.39479069066075734
#>     Attrib V22    -0.8730845188867921
#>     Attrib V23    -1.3635536348961008
#>     Attrib V24    -1.0452748383402037
#>     Attrib V25    0.09208180705403024
#>     Attrib V26    0.8484771283158911
#>     Attrib V27    0.7615328274630917
#>     Attrib V28    -0.45959908141457856
#>     Attrib V29    0.5389976920250253
#>     Attrib V3    0.22288286237759342
#>     Attrib V30    -0.42709688536073254
#>     Attrib V31    1.4301331740911678
#>     Attrib V32    -0.2927117946457115
#>     Attrib V33    -1.2109280015996013
#>     Attrib V34    -0.23828958927182325
#>     Attrib V35    0.3316540358170096
#>     Attrib V36    0.4561242426867715
#>     Attrib V37    0.2581714389757228
#>     Attrib V38    -1.4292242224799387
#>     Attrib V39    -0.29545795894946403
#>     Attrib V4    0.13851458202280562
#>     Attrib V40    0.7894135391832845
#>     Attrib V41    0.39295914493947265
#>     Attrib V42    0.2283775915883384
#>     Attrib V43    -0.16899069779149056
#>     Attrib V44    -1.0544119719598573
#>     Attrib V45    -0.6543190603896699
#>     Attrib V46    -0.4130665323999508
#>     Attrib V47    0.4038474816601205
#>     Attrib V48    0.3682108840175308
#>     Attrib V49    -1.0660104392970366
#>     Attrib V5    -0.10732395012683735
#>     Attrib V50    0.8214213037512667
#>     Attrib V51    -0.1418700465026319
#>     Attrib V52    -0.7899415614796907
#>     Attrib V53    0.05329061594470396
#>     Attrib V54    -0.29686857579143056
#>     Attrib V55    0.7240239115730709
#>     Attrib V56    -0.2261320575529663
#>     Attrib V57    -0.07370388222098861
#>     Attrib V58    -0.7238082704450247
#>     Attrib V59    0.03176398401474285
#>     Attrib V6    -0.4887223898888393
#>     Attrib V60    -0.07524975797223088
#>     Attrib V7    -0.592341990007791
#>     Attrib V8    -0.10150353134068375
#>     Attrib V9    -1.2634521103843257
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.07563815462364896
#>     Attrib V1    0.05589400150795948
#>     Attrib V10    0.022801217848606222
#>     Attrib V11    0.06152461029370265
#>     Attrib V12    0.10701401411112745
#>     Attrib V13    0.09029031929015335
#>     Attrib V14    0.005409822870521452
#>     Attrib V15    -0.03702621736029443
#>     Attrib V16    0.05690884551366016
#>     Attrib V17    0.01672387810078508
#>     Attrib V18    0.03060831857254491
#>     Attrib V19    0.010234530137930742
#>     Attrib V2    0.062240855313242575
#>     Attrib V20    -0.051534388341418755
#>     Attrib V21    -0.07698290187695034
#>     Attrib V22    -0.04519375265404847
#>     Attrib V23    -0.03973098198269159
#>     Attrib V24    0.042995037297124776
#>     Attrib V25    -0.017429870325265526
#>     Attrib V26    -0.13891024221550854
#>     Attrib V27    -0.10828819221687645
#>     Attrib V28    0.0017884586921462049
#>     Attrib V29    -0.14939836593055408
#>     Attrib V3    0.1333960240367877
#>     Attrib V30    -0.05061331078238755
#>     Attrib V31    -0.18164941472022025
#>     Attrib V32    0.018925863051551077
#>     Attrib V33    0.08185647889471094
#>     Attrib V34    0.04075827508474405
#>     Attrib V35    -0.045454153970571176
#>     Attrib V36    -0.07674625749028129
#>     Attrib V37    -0.019478825358384428
#>     Attrib V38    0.11226043837222134
#>     Attrib V39    0.026123052742073147
#>     Attrib V4    0.14594728732182305
#>     Attrib V40    -0.09527910396197486
#>     Attrib V41    0.018672348603959863
#>     Attrib V42    0.03502119897401754
#>     Attrib V43    4.175270214977973E-4
#>     Attrib V44    0.032154628387919
#>     Attrib V45    0.06950584163557959
#>     Attrib V46    0.07579237450014394
#>     Attrib V47    -3.654234971634142E-5
#>     Attrib V48    0.027741138950521226
#>     Attrib V49    0.0941454576190756
#>     Attrib V5    0.06518939895968641
#>     Attrib V50    0.04219147465798392
#>     Attrib V51    0.12670353784195496
#>     Attrib V52    0.14422752156615554
#>     Attrib V53    0.1499370114552014
#>     Attrib V54    0.11799163040866503
#>     Attrib V55    0.06437031677582561
#>     Attrib V56    0.1411056402382101
#>     Attrib V57    0.2146999634866245
#>     Attrib V58    0.17537262543801294
#>     Attrib V59    0.13386036567098658
#>     Attrib V6    0.09527982062077109
#>     Attrib V60    0.18269348787964523
#>     Attrib V7    0.02890348238951606
#>     Attrib V8    -0.02881035391389766
#>     Attrib V9    0.13860385295787533
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.06842228065804194
#>     Attrib V1    0.07192366341382876
#>     Attrib V10    0.0786827514313965
#>     Attrib V11    0.08111024039514833
#>     Attrib V12    0.052796793600039305
#>     Attrib V13    0.006540829834930374
#>     Attrib V14    0.015197886371537243
#>     Attrib V15    0.03873157372914646
#>     Attrib V16    0.005132191856506892
#>     Attrib V17    -0.02038056334891892
#>     Attrib V18    -0.027761318482393334
#>     Attrib V19    -1.4295457920444943E-5
#>     Attrib V2    0.14223911073232282
#>     Attrib V20    -0.0616099495979298
#>     Attrib V21    -0.07764930177022016
#>     Attrib V22    0.007243290134991427
#>     Attrib V23    -0.04960934333864348
#>     Attrib V24    0.006311950497116006
#>     Attrib V25    -0.05233284226757337
#>     Attrib V26    -0.0919185388733674
#>     Attrib V27    -0.04670562258587119
#>     Attrib V28    -0.004717882047889115
#>     Attrib V29    -0.11019655640282211
#>     Attrib V3    0.09291417574460399
#>     Attrib V30    0.0353002329905381
#>     Attrib V31    -0.03965881966773351
#>     Attrib V32    -0.02388677612654097
#>     Attrib V33    0.10156277223775936
#>     Attrib V34    -0.004231266417425702
#>     Attrib V35    0.06043752605369413
#>     Attrib V36    -0.01653605417613972
#>     Attrib V37    -0.011973560688543609
#>     Attrib V38    0.13684506422208453
#>     Attrib V39    0.07198804604089099
#>     Attrib V4    0.0974584502829957
#>     Attrib V40    -0.043284763294522376
#>     Attrib V41    0.05393625768862282
#>     Attrib V42    -8.91222947631957E-5
#>     Attrib V43    0.0668716903428616
#>     Attrib V44    0.10677028035806313
#>     Attrib V45    0.11459608855208828
#>     Attrib V46    0.05317706531133839
#>     Attrib V47    0.004062469955092066
#>     Attrib V48    0.09917047418405217
#>     Attrib V49    0.07225134824167488
#>     Attrib V5    0.057979609506410075
#>     Attrib V50    0.03920703697515337
#>     Attrib V51    0.0895519425681047
#>     Attrib V52    0.07481428094054435
#>     Attrib V53    0.060214768762075016
#>     Attrib V54    0.08078957820526517
#>     Attrib V55    0.08780697387954305
#>     Attrib V56    0.12997945613138726
#>     Attrib V57    0.19617246394257654
#>     Attrib V58    0.06983417730468046
#>     Attrib V59    0.07425141163380403
#>     Attrib V6    0.09285749987657606
#>     Attrib V60    0.1470820265601718
#>     Attrib V7    -0.0044700862040098705
#>     Attrib V8    0.0503317773147869
#>     Attrib V9    0.09927594593037234
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.23291087127872565
#>     Attrib V1    0.02397737000986778
#>     Attrib V10    0.031532931864908506
#>     Attrib V11    -0.03377421308667463
#>     Attrib V12    -0.05273458855593126
#>     Attrib V13    0.009035912344952378
#>     Attrib V14    0.06007306456251688
#>     Attrib V15    0.009014572305577841
#>     Attrib V16    0.04500223661009738
#>     Attrib V17    0.006916606493892888
#>     Attrib V18    0.05301361307378611
#>     Attrib V19    -0.07779325897593091
#>     Attrib V2    0.06353982540884538
#>     Attrib V20    -0.06474154155788428
#>     Attrib V21    -0.03190992869841228
#>     Attrib V22    -0.0651435870087825
#>     Attrib V23    -0.0766893698322521
#>     Attrib V24    -0.10262577357542645
#>     Attrib V25    -0.0033869382314648164
#>     Attrib V26    0.013659354504414483
#>     Attrib V27    -0.018525408200321534
#>     Attrib V28    -0.0664268629413374
#>     Attrib V29    -0.03742101965233561
#>     Attrib V3    0.14448830188557762
#>     Attrib V30    -0.03799434197016394
#>     Attrib V31    0.05135643737224493
#>     Attrib V32    0.013307513359340375
#>     Attrib V33    -0.007778463769397652
#>     Attrib V34    0.04132423649704922
#>     Attrib V35    0.0713868219025712
#>     Attrib V36    0.17265645118253278
#>     Attrib V37    0.08089069161312845
#>     Attrib V38    0.016865600732527113
#>     Attrib V39    0.11075349028699343
#>     Attrib V4    -0.009862323982164033
#>     Attrib V40    0.09680033987880918
#>     Attrib V41    0.06534266652214775
#>     Attrib V42    0.07409591361785212
#>     Attrib V43    0.045841797095504164
#>     Attrib V44    0.07869257918412918
#>     Attrib V45    0.0019566998024927998
#>     Attrib V46    0.04779272949591282
#>     Attrib V47    0.13267257926270828
#>     Attrib V48    0.05916758370206181
#>     Attrib V49    0.05306537959371881
#>     Attrib V5    0.05602576544073293
#>     Attrib V50    0.06977708670026572
#>     Attrib V51    0.12212361784862338
#>     Attrib V52    0.02875307289366769
#>     Attrib V53    0.08359352280076587
#>     Attrib V54    -0.019799162827124007
#>     Attrib V55    0.09235962100320791
#>     Attrib V56    0.12103854046738877
#>     Attrib V57    0.029371781710603583
#>     Attrib V58    0.07721279916480837
#>     Attrib V59    0.05348360313997247
#>     Attrib V6    0.04739966596146673
#>     Attrib V60    0.11049318132219774
#>     Attrib V7    0.060676075953061084
#>     Attrib V8    0.09113480919783787
#>     Attrib V9    0.02149756824590932
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.6736681838833344
#>     Attrib V1    -0.09033371377008541
#>     Attrib V10    0.2762686075508932
#>     Attrib V11    0.715523701999493
#>     Attrib V12    1.2287196932225968
#>     Attrib V13    0.244383632018784
#>     Attrib V14    0.024227872506257755
#>     Attrib V15    -0.33830829957470415
#>     Attrib V16    -0.4769824563555111
#>     Attrib V17    -0.6674161344312016
#>     Attrib V18    -0.39094765345541305
#>     Attrib V19    -0.39626139819982836
#>     Attrib V2    0.4068502207959114
#>     Attrib V20    -0.6385774496950153
#>     Attrib V21    -0.5374406109415438
#>     Attrib V22    -0.2936692860537089
#>     Attrib V23    -0.22222738333536682
#>     Attrib V24    -0.003781730048257009
#>     Attrib V25    0.18716793727385947
#>     Attrib V26    0.43402750113974264
#>     Attrib V27    0.9402662054030876
#>     Attrib V28    1.0905650047292632
#>     Attrib V29    0.5818575756998404
#>     Attrib V3    0.16810084084704358
#>     Attrib V30    0.3892504817098386
#>     Attrib V31    -0.76908694574716
#>     Attrib V32    -0.16117972295920824
#>     Attrib V33    0.31679617098407464
#>     Attrib V34    0.2319759023755122
#>     Attrib V35    -0.3600652250992671
#>     Attrib V36    -0.8364351210170428
#>     Attrib V37    -0.5889350470158031
#>     Attrib V38    -0.4588564777711397
#>     Attrib V39    -0.19218533710775526
#>     Attrib V4    0.9895467885994899
#>     Attrib V40    0.1444225407958781
#>     Attrib V41    0.5283682770211583
#>     Attrib V42    -0.09453582191164259
#>     Attrib V43    -0.3186837457480414
#>     Attrib V44    -0.07227470158050295
#>     Attrib V45    0.27021781437186515
#>     Attrib V46    0.26018266459104744
#>     Attrib V47    0.17125838858105052
#>     Attrib V48    0.8755003798710973
#>     Attrib V49    0.9900625426161488
#>     Attrib V5    0.18802346788506902
#>     Attrib V50    -0.5417948937197489
#>     Attrib V51    0.3878278829515594
#>     Attrib V52    0.8043957382093074
#>     Attrib V53    0.13901446565056408
#>     Attrib V54    -0.007137994521986822
#>     Attrib V55    -0.5558537911246588
#>     Attrib V56    -0.44879750209941616
#>     Attrib V57    0.12603308864380722
#>     Attrib V58    0.24184072945901733
#>     Attrib V59    0.4902101625267677
#>     Attrib V6    0.5258648953722688
#>     Attrib V60    0.45661345185591634
#>     Attrib V7    0.03705434357435655
#>     Attrib V8    -0.09187321876841929
#>     Attrib V9    0.3105461647727611
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.41374063059370214
#>     Attrib V1    -0.21529662514772702
#>     Attrib V10    0.20040581808335722
#>     Attrib V11    0.3491725342432998
#>     Attrib V12    0.4800033799839459
#>     Attrib V13    0.04738623313087396
#>     Attrib V14    -0.22069728328009666
#>     Attrib V15    -0.4393716113185667
#>     Attrib V16    -0.2792826169125534
#>     Attrib V17    -0.3291797560169051
#>     Attrib V18    -0.04929471744927605
#>     Attrib V19    0.15152441430563332
#>     Attrib V2    0.020275654091668056
#>     Attrib V20    -0.06624793378999175
#>     Attrib V21    -0.10282486672028732
#>     Attrib V22    0.23364733704069596
#>     Attrib V23    0.4847494019786388
#>     Attrib V24    0.4434064715758077
#>     Attrib V25    0.1277101690832157
#>     Attrib V26    -0.01840256790200116
#>     Attrib V27    0.18037242903108422
#>     Attrib V28    0.72624978084233
#>     Attrib V29    0.1830253155544517
#>     Attrib V3    -0.1720682835330446
#>     Attrib V30    0.3391439322757098
#>     Attrib V31    -0.7420272492563941
#>     Attrib V32    0.103992450155804
#>     Attrib V33    0.5885279353846704
#>     Attrib V34    0.17273542502463496
#>     Attrib V35    -0.23195407658597242
#>     Attrib V36    -0.42538318205233216
#>     Attrib V37    -0.29732856232455934
#>     Attrib V38    0.2886535535321491
#>     Attrib V39    0.020674478905938227
#>     Attrib V4    0.02724269269703566
#>     Attrib V40    -0.19639081154599314
#>     Attrib V41    0.10448405310555883
#>     Attrib V42    -0.044435295250950725
#>     Attrib V43    0.0713271915111924
#>     Attrib V44    0.4267531899914324
#>     Attrib V45    0.31067057891297184
#>     Attrib V46    0.2695609432229409
#>     Attrib V47    -0.060701639958869194
#>     Attrib V48    0.23419735673396086
#>     Attrib V49    0.7484273398391604
#>     Attrib V5    0.043852820450392314
#>     Attrib V50    -0.49051657590621356
#>     Attrib V51    0.2511695788916353
#>     Attrib V52    0.5324971397854648
#>     Attrib V53    -0.04722190733124247
#>     Attrib V54    0.06610316832737663
#>     Attrib V55    -0.5048395918736953
#>     Attrib V56    -0.0437089475493889
#>     Attrib V57    -0.05203942417676199
#>     Attrib V58    0.32672891799380144
#>     Attrib V59    0.14603799263552394
#>     Attrib V6    0.27418097524739116
#>     Attrib V60    0.20051359632369242
#>     Attrib V7    0.0551552326266094
#>     Attrib V8    -0.17717719224222914
#>     Attrib V9    0.4895163136626329
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.29406286379320057
#>     Attrib V1    0.3736472493560599
#>     Attrib V10    -0.5572720954210555
#>     Attrib V11    -0.8444122937756277
#>     Attrib V12    -0.3635936446623645
#>     Attrib V13    -0.022857390344546726
#>     Attrib V14    0.7657817281107453
#>     Attrib V15    0.9559499234807327
#>     Attrib V16    0.322565905495379
#>     Attrib V17    0.09078550948181835
#>     Attrib V18    -0.3249255224453107
#>     Attrib V19    -0.9160561344315243
#>     Attrib V2    0.025077426009069644
#>     Attrib V20    -0.6556311209565815
#>     Attrib V21    -0.3688574886282943
#>     Attrib V22    -1.016271233908609
#>     Attrib V23    -1.537869659814797
#>     Attrib V24    -1.163820223675642
#>     Attrib V25    0.06438583883944256
#>     Attrib V26    0.845976160511582
#>     Attrib V27    0.8163419162987068
#>     Attrib V28    -0.523728697253517
#>     Attrib V29    0.5007291864661431
#>     Attrib V3    0.18327297228152897
#>     Attrib V30    -0.4248692269447417
#>     Attrib V31    1.4935435556331924
#>     Attrib V32    -0.3423820017163851
#>     Attrib V33    -1.1979862374897434
#>     Attrib V34    -0.21955069704321564
#>     Attrib V35    0.31537958402068733
#>     Attrib V36    0.4108489980702027
#>     Attrib V37    0.22275672819160866
#>     Attrib V38    -1.5099392564135083
#>     Attrib V39    -0.3076924315024969
#>     Attrib V4    0.3059925812682349
#>     Attrib V40    0.8553294633513245
#>     Attrib V41    0.4576218444834153
#>     Attrib V42    0.20556561580687546
#>     Attrib V43    -0.15654667297041935
#>     Attrib V44    -1.102495393848432
#>     Attrib V45    -0.811000316340743
#>     Attrib V46    -0.5176746237311425
#>     Attrib V47    0.34641264975655384
#>     Attrib V48    0.4100679130739914
#>     Attrib V49    -1.1319508534047886
#>     Attrib V5    -0.044689955885477764
#>     Attrib V50    0.7819266565521237
#>     Attrib V51    -0.20268581158003018
#>     Attrib V52    -0.792427938007652
#>     Attrib V53    0.054982033737935906
#>     Attrib V54    -0.30268511989952807
#>     Attrib V55    0.645718909167955
#>     Attrib V56    -0.3297317538979766
#>     Attrib V57    0.08357753899468093
#>     Attrib V58    -0.7856884561289303
#>     Attrib V59    0.16260517079951195
#>     Attrib V6    -0.5061399757854044
#>     Attrib V60    0.07217525771103486
#>     Attrib V7    -0.5359576266594631
#>     Attrib V8    -0.20518064970831154
#>     Attrib V9    -1.3151723079374527
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.3397980600595478
#>     Attrib V1    0.2166981404071868
#>     Attrib V10    -0.2588856498264011
#>     Attrib V11    0.04817208639792211
#>     Attrib V12    0.1510628450939175
#>     Attrib V13    0.053188138015786264
#>     Attrib V14    0.033403537722656626
#>     Attrib V15    0.03751248273917903
#>     Attrib V16    0.19127425838859693
#>     Attrib V17    -0.021111570465432335
#>     Attrib V18    0.022223320812295336
#>     Attrib V19    0.03803911617582119
#>     Attrib V2    0.24953377937551247
#>     Attrib V20    0.17553173238653771
#>     Attrib V21    0.16209411674460072
#>     Attrib V22    0.15750752263565312
#>     Attrib V23    0.16723343491797335
#>     Attrib V24    0.2396169569097583
#>     Attrib V25    -0.2548606391711196
#>     Attrib V26    -0.6144632108969048
#>     Attrib V27    -0.6629053821458264
#>     Attrib V28    -0.3286005384779518
#>     Attrib V29    -0.5428101373922571
#>     Attrib V3    0.11311569987538726
#>     Attrib V30    -0.14275386981329682
#>     Attrib V31    -0.4625982985728021
#>     Attrib V32    0.06662161476598903
#>     Attrib V33    0.38391176848717234
#>     Attrib V34    0.0021168787980314365
#>     Attrib V35    -0.38898790497103714
#>     Attrib V36    -0.4685276551026609
#>     Attrib V37    -0.3523626694472341
#>     Attrib V38    0.28756436024815846
#>     Attrib V39    0.036852226416731915
#>     Attrib V4    0.4032423278038091
#>     Attrib V40    -0.2110109666819357
#>     Attrib V41    -0.051779651356429854
#>     Attrib V42    0.0891986202982047
#>     Attrib V43    0.13288384156874272
#>     Attrib V44    0.09869653316282755
#>     Attrib V45    -0.031313110825287135
#>     Attrib V46    0.005181327133785855
#>     Attrib V47    -0.3609328646049088
#>     Attrib V48    -0.07716979337708472
#>     Attrib V49    0.33663337685606853
#>     Attrib V5    0.1366045700683256
#>     Attrib V50    -0.16570018893251917
#>     Attrib V51    -0.07809257281588661
#>     Attrib V52    0.05423265913844457
#>     Attrib V53    0.12019623664998305
#>     Attrib V54    0.5241263539673261
#>     Attrib V55    0.05558482297051994
#>     Attrib V56    0.3313603611165892
#>     Attrib V57    0.4311466363257024
#>     Attrib V58    0.4542550816112927
#>     Attrib V59    0.6096335205877477
#>     Attrib V6    0.07815876082896223
#>     Attrib V60    0.3139555053878723
#>     Attrib V7    0.11650747978557961
#>     Attrib V8    -0.031092810222985164
#>     Attrib V9    0.1874059037065122
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.46166102448449514
#>     Attrib V1    0.16792072205541364
#>     Attrib V10    -0.32245735930945985
#>     Attrib V11    0.10777334710750108
#>     Attrib V12    0.19453255949099682
#>     Attrib V13    0.07576770579134151
#>     Attrib V14    -0.081315130146545
#>     Attrib V15    -0.009745240994677613
#>     Attrib V16    0.13720044056530561
#>     Attrib V17    0.027386595615816547
#>     Attrib V18    0.0559253322143822
#>     Attrib V19    0.15076471868780855
#>     Attrib V2    0.1985866849159113
#>     Attrib V20    0.21328608051615444
#>     Attrib V21    0.21404621646546484
#>     Attrib V22    0.3427166200202099
#>     Attrib V23    0.4238454409534308
#>     Attrib V24    0.3229602319620781
#>     Attrib V25    -0.27749303180365426
#>     Attrib V26    -0.6845537840543185
#>     Attrib V27    -0.7823944518674242
#>     Attrib V28    -0.2189776234680056
#>     Attrib V29    -0.6780040275872965
#>     Attrib V3    0.08738519034024606
#>     Attrib V30    -0.08414865972867676
#>     Attrib V31    -0.6838966505502916
#>     Attrib V32    0.15940528975445079
#>     Attrib V33    0.6144042527035816
#>     Attrib V34    -0.016922503428656473
#>     Attrib V35    -0.47723447086427656
#>     Attrib V36    -0.6050614638442889
#>     Attrib V37    -0.43917412771296155
#>     Attrib V38    0.4382066640534846
#>     Attrib V39    0.07345714074403098
#>     Attrib V4    0.3450289798679342
#>     Attrib V40    -0.37953791624157496
#>     Attrib V41    -0.05699299219912875
#>     Attrib V42    0.1488895290064227
#>     Attrib V43    0.16319834961542792
#>     Attrib V44    0.20950785663059626
#>     Attrib V45    0.1249013278813823
#>     Attrib V46    0.035598806257537426
#>     Attrib V47    -0.3703795847518512
#>     Attrib V48    -0.2141646612383897
#>     Attrib V49    0.4812146604036061
#>     Attrib V5    0.09795334011361768
#>     Attrib V50    -0.2916077256900201
#>     Attrib V51    -0.0940425953675496
#>     Attrib V52    0.12059422519927997
#>     Attrib V53    0.11430070104689845
#>     Attrib V54    0.5513996369974554
#>     Attrib V55    -0.10017776441577225
#>     Attrib V56    0.3620892332491839
#>     Attrib V57    0.39621246926408155
#>     Attrib V58    0.5147757146282301
#>     Attrib V59    0.6758101719050307
#>     Attrib V6    0.10428880194090148
#>     Attrib V60    0.2770869681445567
#>     Attrib V7    0.16360240331496134
#>     Attrib V8    0.02115030320019817
#>     Attrib V9    0.30488577556152985
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.21369647393577848
#>     Attrib V1    -0.010633904289318997
#>     Attrib V10    -0.1140779056033105
#>     Attrib V11    -0.23121130073287816
#>     Attrib V12    -0.26228879735298827
#>     Attrib V13    -0.07842755070595589
#>     Attrib V14    0.12988024814335372
#>     Attrib V15    0.23337243275811545
#>     Attrib V16    0.15428056504165982
#>     Attrib V17    0.26721766714621653
#>     Attrib V18    0.11993088262730636
#>     Attrib V19    -0.07039668153479264
#>     Attrib V2    -0.08268983655033588
#>     Attrib V20    -0.09482174985282059
#>     Attrib V21    0.0012041739458071477
#>     Attrib V22    -0.06616720266473027
#>     Attrib V23    -0.11291060375090814
#>     Attrib V24    -0.20680211596887937
#>     Attrib V25    0.038720616863925125
#>     Attrib V26    0.18703895217559913
#>     Attrib V27    0.004039298654766379
#>     Attrib V28    -0.1692678818110577
#>     Attrib V29    0.0779413198997529
#>     Attrib V3    -0.014656543527516271
#>     Attrib V30    -0.02244629097353758
#>     Attrib V31    0.32224769568859457
#>     Attrib V32    0.02734245556951861
#>     Attrib V33    -0.2459005848765915
#>     Attrib V34    -0.07249676406367589
#>     Attrib V35    0.18715665203582854
#>     Attrib V36    0.3465876725289349
#>     Attrib V37    0.15768863871364724
#>     Attrib V38    -0.21024184901521484
#>     Attrib V39    -0.05523789399872988
#>     Attrib V4    -0.006498491501567852
#>     Attrib V40    0.21530931433606695
#>     Attrib V41    0.12947293782011515
#>     Attrib V42    0.06165282324294758
#>     Attrib V43    0.06885105071421954
#>     Attrib V44    -0.1285760347133433
#>     Attrib V45    -0.14375949611510028
#>     Attrib V46    -0.08189547756757196
#>     Attrib V47    0.10270132797854495
#>     Attrib V48    -0.027235168382647557
#>     Attrib V49    -0.2714445604659854
#>     Attrib V5    -0.03435032477959723
#>     Attrib V50    0.25049513042083654
#>     Attrib V51    -0.011625689947313233
#>     Attrib V52    -0.13145773989945786
#>     Attrib V53    -0.03843792126188008
#>     Attrib V54    -0.08010722947358591
#>     Attrib V55    0.11987673962701713
#>     Attrib V56    0.027021664817665943
#>     Attrib V57    0.018920190621807657
#>     Attrib V58    -0.05292142801177953
#>     Attrib V59    -0.06389967075398206
#>     Attrib V6    -0.006663044672444813
#>     Attrib V60    -0.08898005607709132
#>     Attrib V7    -0.06668317782293387
#>     Attrib V8    0.09376611513288687
#>     Attrib V9    -0.1416705524414007
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    1.2527107255771528
#>     Attrib V1    -0.01804457491256952
#>     Attrib V10    0.26845665173845684
#>     Attrib V11    0.937673240386569
#>     Attrib V12    1.5502258520914933
#>     Attrib V13    0.2956050481125898
#>     Attrib V14    0.03614124827843159
#>     Attrib V15    -0.39532972454365956
#>     Attrib V16    -0.36948136328439196
#>     Attrib V17    -0.6476769983696261
#>     Attrib V18    -0.2634647003494337
#>     Attrib V19    -0.5103596960345314
#>     Attrib V2    0.615092987622386
#>     Attrib V20    -0.8183335416402983
#>     Attrib V21    -0.6680341341397978
#>     Attrib V22    -0.554718795363818
#>     Attrib V23    -0.33267175315296443
#>     Attrib V24    -0.008532632808858734
#>     Attrib V25    0.1715392997114626
#>     Attrib V26    0.47719828408466364
#>     Attrib V27    1.1301375670830107
#>     Attrib V28    1.0435758473803243
#>     Attrib V29    0.39646063746689697
#>     Attrib V3    0.5715046130704142
#>     Attrib V30    0.295810905201507
#>     Attrib V31    -0.5427549440125399
#>     Attrib V32    0.08331708440793607
#>     Attrib V33    0.27243175735845143
#>     Attrib V34    0.16124175995546722
#>     Attrib V35    -0.8802528531790474
#>     Attrib V36    -1.841626478865586
#>     Attrib V37    -1.4071195722245553
#>     Attrib V38    -1.022587932936667
#>     Attrib V39    -0.34450601460763275
#>     Attrib V4    1.339060990742679
#>     Attrib V40    0.4484716221247965
#>     Attrib V41    1.2231146609100318
#>     Attrib V42    0.10329817804703179
#>     Attrib V43    -0.322022667451943
#>     Attrib V44    -0.1748015290622742
#>     Attrib V45    0.04887294357137634
#>     Attrib V46    -0.014823014595897877
#>     Attrib V47    0.17045230124981517
#>     Attrib V48    1.2349388988483156
#>     Attrib V49    1.2886450600655903
#>     Attrib V5    0.329431871117837
#>     Attrib V50    -0.4515984971860518
#>     Attrib V51    0.5051240915296304
#>     Attrib V52    0.8105954958503956
#>     Attrib V53    0.4091760961636212
#>     Attrib V54    -0.32455191041348963
#>     Attrib V55    -0.7162032267689672
#>     Attrib V56    -0.2788093704411656
#>     Attrib V57    0.3751806006605258
#>     Attrib V58    0.27606933854718785
#>     Attrib V59    0.7618822198410177
#>     Attrib V6    0.7058945714556855
#>     Attrib V60    0.4371731799404035
#>     Attrib V7    -0.07017125208728618
#>     Attrib V8    0.028289302487951005
#>     Attrib V9    0.2760753662124635
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.21779881879442242
#>     Attrib V1    0.037451622112489966
#>     Attrib V10    0.012342557449048917
#>     Attrib V11    -0.04941612267005533
#>     Attrib V12    0.012449978862524264
#>     Attrib V13    0.00995809292222285
#>     Attrib V14    0.10180625466895898
#>     Attrib V15    0.014306996732570904
#>     Attrib V16    0.035486887854336534
#>     Attrib V17    0.062099604397212245
#>     Attrib V18    -0.03028716635885142
#>     Attrib V19    0.01384411894688058
#>     Attrib V2    0.0765315329016578
#>     Attrib V20    -0.07191709219133599
#>     Attrib V21    -0.05262941424502761
#>     Attrib V22    -0.06775101322424552
#>     Attrib V23    -0.08285950100953184
#>     Attrib V24    -0.09307822979566174
#>     Attrib V25    -0.019745770716703217
#>     Attrib V26    -0.03860756431670037
#>     Attrib V27    -0.004706960714865378
#>     Attrib V28    -0.007091963334143361
#>     Attrib V29    -0.007935364088203313
#>     Attrib V3    0.07147801992743498
#>     Attrib V30    9.234254792628798E-4
#>     Attrib V31    0.02174703938587973
#>     Attrib V32    -0.008748891628393323
#>     Attrib V33    0.02423025132612081
#>     Attrib V34    -0.007796882373366348
#>     Attrib V35    0.12597839379741296
#>     Attrib V36    0.14040514726818362
#>     Attrib V37    0.1319258360098696
#>     Attrib V38    0.028511872831742318
#>     Attrib V39    0.09055950801475529
#>     Attrib V4    0.06618176710847494
#>     Attrib V40    0.0837911677428529
#>     Attrib V41    0.07552721313041241
#>     Attrib V42    0.07461494577915491
#>     Attrib V43    0.04988040871007891
#>     Attrib V44    0.05307235917330019
#>     Attrib V45    0.040005513545171206
#>     Attrib V46    0.039016663899969786
#>     Attrib V47    0.05893803136867176
#>     Attrib V48    0.09309241815727728
#>     Attrib V49    0.023529374888107617
#>     Attrib V5    0.012486218383086105
#>     Attrib V50    0.11173505959668104
#>     Attrib V51    0.0516392423419927
#>     Attrib V52    0.027224192180739622
#>     Attrib V53    0.06883649300165612
#>     Attrib V54    0.01533941118773014
#>     Attrib V55    0.06559551175954029
#>     Attrib V56    0.12345516893909879
#>     Attrib V57    0.1211528843971482
#>     Attrib V58    0.088460239514154
#>     Attrib V59    0.06559591198549954
#>     Attrib V6    0.11261138998842844
#>     Attrib V60    0.14538678357599336
#>     Attrib V7    0.006288154134637716
#>     Attrib V8    0.06998459619384408
#>     Attrib V9    0.01155642922346077
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5717032235446798
#>     Attrib V1    -0.09670236549299564
#>     Attrib V10    0.12070359189392357
#>     Attrib V11    0.4035009431994795
#>     Attrib V12    0.44110738964073865
#>     Attrib V13    0.0982669636041025
#>     Attrib V14    -0.2796623739305361
#>     Attrib V15    -0.34553396463981056
#>     Attrib V16    -0.16863443698769742
#>     Attrib V17    -0.30249713922995913
#>     Attrib V18    -0.02264786405605551
#>     Attrib V19    0.0644514643825776
#>     Attrib V2    0.07231606044826523
#>     Attrib V20    -0.10236030285808366
#>     Attrib V21    -0.10363932140531042
#>     Attrib V22    0.08788674326760314
#>     Attrib V23    0.19368853598500949
#>     Attrib V24    0.29857358861534294
#>     Attrib V25    0.03477129409027318
#>     Attrib V26    -0.12143490809978917
#>     Attrib V27    -0.12068947380140191
#>     Attrib V28    0.3453665148840258
#>     Attrib V29    -0.17990093368366883
#>     Attrib V3    -0.10474173022214188
#>     Attrib V30    0.19493869985801068
#>     Attrib V31    -0.6468144734031914
#>     Attrib V32    0.13194425075821792
#>     Attrib V33    0.5789177261993018
#>     Attrib V34    0.22595615238969488
#>     Attrib V35    -0.2542384488180494
#>     Attrib V36    -0.5017161260722505
#>     Attrib V37    -0.4102977364954376
#>     Attrib V38    0.20718102100041405
#>     Attrib V39    0.008265457949499636
#>     Attrib V4    0.15419071065460188
#>     Attrib V40    -0.30828026911640993
#>     Attrib V41    0.007306343894705182
#>     Attrib V42    -0.05823876630232315
#>     Attrib V43    -0.06948782130500039
#>     Attrib V44    0.27312917788169994
#>     Attrib V45    0.2588667878538542
#>     Attrib V46    0.10039309648972454
#>     Attrib V47    -0.1921938272733028
#>     Attrib V48    0.17373457331775197
#>     Attrib V49    0.5845644948944638
#>     Attrib V5    -0.017097691237956684
#>     Attrib V50    -0.41021824859963896
#>     Attrib V51    0.08782414629338466
#>     Attrib V52    0.3294702215911883
#>     Attrib V53    0.011358404922097559
#>     Attrib V54    0.1876319059002057
#>     Attrib V55    -0.3772387563175029
#>     Attrib V56    -0.046071772709612664
#>     Attrib V57    0.11611989580278549
#>     Attrib V58    0.2880344934845516
#>     Attrib V59    0.2507660613393828
#>     Attrib V6    0.1736373966487496
#>     Attrib V60    0.15849466979831786
#>     Attrib V7    -0.0182089872864743
#>     Attrib V8    -0.058993123391852226
#>     Attrib V9    0.435344036792621
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.4970266403919632
#>     Attrib V1    0.4358861295118158
#>     Attrib V10    -0.7362323748106835
#>     Attrib V11    -1.0523007606031767
#>     Attrib V12    -0.5113152330227629
#>     Attrib V13    -0.10991854501213695
#>     Attrib V14    0.9082179437343998
#>     Attrib V15    1.2023186920390958
#>     Attrib V16    0.5216070721376888
#>     Attrib V17    0.12891367074137655
#>     Attrib V18    -0.331453474060365
#>     Attrib V19    -1.1459772261974426
#>     Attrib V2    -0.012178344867295701
#>     Attrib V20    -0.816179005232735
#>     Attrib V21    -0.38460654923523524
#>     Attrib V22    -1.054309515308181
#>     Attrib V23    -1.7520031170545365
#>     Attrib V24    -1.4038617911673585
#>     Attrib V25    -0.023891544641018097
#>     Attrib V26    0.9225547731752377
#>     Attrib V27    0.9379752735672099
#>     Attrib V28    -0.7226645056368899
#>     Attrib V29    0.44574040969837153
#>     Attrib V3    0.11341745913815045
#>     Attrib V30    -0.6436828993619184
#>     Attrib V31    1.595908986112604
#>     Attrib V32    -0.402237326452293
#>     Attrib V33    -1.4026840501189612
#>     Attrib V34    -0.15042047849164789
#>     Attrib V35    0.5030309009241468
#>     Attrib V36    0.6598658896316867
#>     Attrib V37    0.17431787749169517
#>     Attrib V38    -1.7787280808086834
#>     Attrib V39    -0.3776245071704358
#>     Attrib V4    0.4114017298387473
#>     Attrib V40    0.8822603369645522
#>     Attrib V41    0.40264908756124596
#>     Attrib V42    0.282611396657937
#>     Attrib V43    -0.10678312236580367
#>     Attrib V44    -1.3516197962551277
#>     Attrib V45    -0.9603778696652553
#>     Attrib V46    -0.5162243610396939
#>     Attrib V47    0.4083418807779171
#>     Attrib V48    0.39744722134223176
#>     Attrib V49    -1.3733064394093388
#>     Attrib V5    -0.20967899906549148
#>     Attrib V50    1.057826468133837
#>     Attrib V51    -0.2772754664242008
#>     Attrib V52    -0.9309203382159791
#>     Attrib V53    0.09815207141805384
#>     Attrib V54    -0.2876459758645437
#>     Attrib V55    0.8522043711055889
#>     Attrib V56    -0.37872010972295417
#>     Attrib V57    0.021153558882855885
#>     Attrib V58    -0.8677483590819998
#>     Attrib V59    0.26182910298203765
#>     Attrib V6    -0.6678313251302828
#>     Attrib V60    0.23893304816445385
#>     Attrib V7    -0.703374765109622
#>     Attrib V8    -0.16949518291055482
#>     Attrib V9    -1.5477764167394925
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.29599072140795757
#>     Attrib V1    -0.05441108532902131
#>     Attrib V10    -0.04128688686623947
#>     Attrib V11    0.28632328043741817
#>     Attrib V12    0.3038449218408429
#>     Attrib V13    0.0650981881619486
#>     Attrib V14    -0.08144286589062037
#>     Attrib V15    -0.1675342335880262
#>     Attrib V16    -0.030238228369419064
#>     Attrib V17    -0.08667766110783669
#>     Attrib V18    0.05822996210471546
#>     Attrib V19    0.09486321881233678
#>     Attrib V2    0.09055180066747241
#>     Attrib V20    0.1012530727633202
#>     Attrib V21    0.03830648268781575
#>     Attrib V22    0.17640583813021982
#>     Attrib V23    0.2256478502097831
#>     Attrib V24    0.29704238040200515
#>     Attrib V25    0.013605144832033879
#>     Attrib V26    -0.337840169173524
#>     Attrib V27    -0.2978767286706203
#>     Attrib V28    0.09971711357904803
#>     Attrib V29    -0.25041631757394206
#>     Attrib V3    0.029517858080080468
#>     Attrib V30    0.014417676713296326
#>     Attrib V31    -0.52579976210735
#>     Attrib V32    0.11081226836452537
#>     Attrib V33    0.44792567453589105
#>     Attrib V34    0.08655311080459026
#>     Attrib V35    -0.22827069255300284
#>     Attrib V36    -0.41872628084024893
#>     Attrib V37    -0.32531137743805616
#>     Attrib V38    0.2164113436725658
#>     Attrib V39    -0.004056085564608461
#>     Attrib V4    0.13425723456401753
#>     Attrib V40    -0.26233410726901635
#>     Attrib V41    -0.01157556062307178
#>     Attrib V42    -0.018533025771348237
#>     Attrib V43    0.0869355769605882
#>     Attrib V44    0.16615736366638495
#>     Attrib V45    0.17054330380712876
#>     Attrib V46    0.0738752438400447
#>     Attrib V47    -0.15269172055097147
#>     Attrib V48    -0.0038636761986128206
#>     Attrib V49    0.3819615357802124
#>     Attrib V5    -0.003211830713845184
#>     Attrib V50    -0.25859679130333224
#>     Attrib V51    0.07648066657737473
#>     Attrib V52    0.2586668456507992
#>     Attrib V53    0.06246826876385669
#>     Attrib V54    0.2222151556755368
#>     Attrib V55    -0.13122395746293197
#>     Attrib V56    0.16045604893969392
#>     Attrib V57    0.22221049127450068
#>     Attrib V58    0.2717409186922257
#>     Attrib V59    0.24988435462090186
#>     Attrib V6    0.12381655395482902
#>     Attrib V60    0.19007346999040348
#>     Attrib V7    0.024332364086238498
#>     Attrib V8    -0.023017090331884493
#>     Attrib V9    0.29565885574876744
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.11930608476889888
#>     Attrib V1    0.09263341551420505
#>     Attrib V10    0.08457729468433929
#>     Attrib V11    0.06371295037326792
#>     Attrib V12    0.11585941540786168
#>     Attrib V13    0.10123207628791575
#>     Attrib V14    0.05798073241115871
#>     Attrib V15    0.013056798328163593
#>     Attrib V16    0.014207405239226069
#>     Attrib V17    0.028805724310575192
#>     Attrib V18    -0.02028620527446018
#>     Attrib V19    -0.046566580919228
#>     Attrib V2    0.11989766863022482
#>     Attrib V20    -0.06377107469471253
#>     Attrib V21    -0.030638987527558306
#>     Attrib V22    -0.045038479506374476
#>     Attrib V23    -0.03064998735382123
#>     Attrib V24    -0.04659781512770786
#>     Attrib V25    0.006121645276824742
#>     Attrib V26    -0.019777656839289406
#>     Attrib V27    -0.0532056831067985
#>     Attrib V28    0.002509042923980156
#>     Attrib V29    -0.11542591657773693
#>     Attrib V3    0.09247030111899435
#>     Attrib V30    0.020281066021247417
#>     Attrib V31    -0.01881407223355158
#>     Attrib V32    -0.02495523381824897
#>     Attrib V33    0.012038478258295807
#>     Attrib V34    -0.012058341590851146
#>     Attrib V35    0.04127692060341005
#>     Attrib V36    -0.005583537444236315
#>     Attrib V37    0.05378563950458986
#>     Attrib V38    0.051088642930237675
#>     Attrib V39    0.09880850910965036
#>     Attrib V4    0.12416548348571357
#>     Attrib V40    0.0171286919573739
#>     Attrib V41    0.04687136892646274
#>     Attrib V42    0.06121655565851801
#>     Attrib V43    0.013058445909479282
#>     Attrib V44    0.02721525860998039
#>     Attrib V45    0.07543036337873776
#>     Attrib V46    0.07342139381210655
#>     Attrib V47    0.028756129182986076
#>     Attrib V48    0.09268247675139085
#>     Attrib V49    0.07901552984976752
#>     Attrib V5    0.017447909249545174
#>     Attrib V50    0.036182228604587974
#>     Attrib V51    0.07222800534860792
#>     Attrib V52    0.10130053470052103
#>     Attrib V53    0.09654546037916993
#>     Attrib V54    0.09935386013405886
#>     Attrib V55    0.04811551151509413
#>     Attrib V56    0.15816905037606144
#>     Attrib V57    0.1193335865755519
#>     Attrib V58    0.1411845467314861
#>     Attrib V59    0.15140336081256311
#>     Attrib V6    0.08924515195806611
#>     Attrib V60    0.15788681090269963
#>     Attrib V7    -0.010736799209857298
#>     Attrib V8    0.008767589499453611
#>     Attrib V9    0.06795500103238175
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.3796885503090673
#>     Attrib V1    0.1305264357897004
#>     Attrib V10    -0.24430798206432452
#>     Attrib V11    0.09223309411330857
#>     Attrib V12    0.04438005308046267
#>     Attrib V13    0.011994393073426179
#>     Attrib V14    -0.1464661068743106
#>     Attrib V15    -0.02585963802291724
#>     Attrib V16    0.2071256947347393
#>     Attrib V17    0.01261146262813109
#>     Attrib V18    0.04812461946022084
#>     Attrib V19    0.17642184015912057
#>     Attrib V2    0.2368423016947868
#>     Attrib V20    0.2694536690156122
#>     Attrib V21    0.1909706548621556
#>     Attrib V22    0.3933463155774043
#>     Attrib V23    0.45601787889557854
#>     Attrib V24    0.4044154139497894
#>     Attrib V25    -0.31446172354598906
#>     Attrib V26    -0.7783925103323321
#>     Attrib V27    -0.8983870245127482
#>     Attrib V28    -0.2754487776252296
#>     Attrib V29    -0.8007926471279789
#>     Attrib V3    -0.013659162551707764
#>     Attrib V30    -0.12149449192260862
#>     Attrib V31    -0.6499024365004469
#>     Attrib V32    0.21810075375895785
#>     Attrib V33    0.7450075253551904
#>     Attrib V34    0.07742523342462673
#>     Attrib V35    -0.46556706550894406
#>     Attrib V36    -0.6751821022247179
#>     Attrib V37    -0.5339010500019014
#>     Attrib V38    0.5210011948699191
#>     Attrib V39    0.04987691209319272
#>     Attrib V4    0.23588674647117855
#>     Attrib V40    -0.37074691928042314
#>     Attrib V41    -0.10837927412152291
#>     Attrib V42    0.1318101418893063
#>     Attrib V43    0.14390894980938176
#>     Attrib V44    0.29121137156205584
#>     Attrib V45    0.07786971183800048
#>     Attrib V46    0.06175418888069199
#>     Attrib V47    -0.4107690659921559
#>     Attrib V48    -0.2056869368454629
#>     Attrib V49    0.4813149899406456
#>     Attrib V5    0.032393473067758825
#>     Attrib V50    -0.32026303069379664
#>     Attrib V51    -0.09830913738285645
#>     Attrib V52    0.05489363550208363
#>     Attrib V53    0.07913877054640107
#>     Attrib V54    0.6158115319306734
#>     Attrib V55    -0.10277163887305496
#>     Attrib V56    0.33619137456533005
#>     Attrib V57    0.425489129430721
#>     Attrib V58    0.4992345866741699
#>     Attrib V59    0.5586550765843656
#>     Attrib V6    0.07349020834236036
#>     Attrib V60    0.3191229452270002
#>     Attrib V7    0.22276910141316794
#>     Attrib V8    0.06034297146240216
#>     Attrib V9    0.4155086184004197
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.22465307320554678
#>     Attrib V1    0.11839649108360331
#>     Attrib V10    -0.18014047714377887
#>     Attrib V11    0.07478586604503609
#>     Attrib V12    0.10195020273998971
#>     Attrib V13    0.020011768765862425
#>     Attrib V14    0.028043776729320978
#>     Attrib V15    0.015237093683131009
#>     Attrib V16    0.14454603289579998
#>     Attrib V17    -0.03348621358150841
#>     Attrib V18    0.10940719395394775
#>     Attrib V19    0.05633454311284264
#>     Attrib V2    0.14499374880673543
#>     Attrib V20    0.1489147892930744
#>     Attrib V21    0.18683844634064883
#>     Attrib V22    0.2035048005936975
#>     Attrib V23    0.2669824581156547
#>     Attrib V24    0.14388525131393326
#>     Attrib V25    -0.2803464273483875
#>     Attrib V26    -0.5102046867480056
#>     Attrib V27    -0.44514764264072737
#>     Attrib V28    0.010018326693570856
#>     Attrib V29    -0.29731985478094625
#>     Attrib V3    0.14560797541006673
#>     Attrib V30    0.03319786356731423
#>     Attrib V31    -0.5586231587362948
#>     Attrib V32    0.013943861545102049
#>     Attrib V33    0.3689562706734739
#>     Attrib V34    -0.032938094455834274
#>     Attrib V35    -0.32538331409023397
#>     Attrib V36    -0.35953318286876534
#>     Attrib V37    -0.3000424692359106
#>     Attrib V38    0.24193150538219077
#>     Attrib V39    0.0395374201250038
#>     Attrib V4    0.2496785998953495
#>     Attrib V40    -0.2796381306219304
#>     Attrib V41    -0.05051237249403706
#>     Attrib V42    0.11515482872284659
#>     Attrib V43    0.048744048073580015
#>     Attrib V44    0.20180082810453462
#>     Attrib V45    0.12654747259989343
#>     Attrib V46    0.0606202229136324
#>     Attrib V47    -0.22600770809669046
#>     Attrib V48    -0.13396821379009444
#>     Attrib V49    0.34115477944600436
#>     Attrib V5    0.08665159072556611
#>     Attrib V50    -0.19834703264431103
#>     Attrib V51    0.011198020964528474
#>     Attrib V52    0.1627365291437587
#>     Attrib V53    0.1295182890071498
#>     Attrib V54    0.24494996803592592
#>     Attrib V55    -0.10870037273020124
#>     Attrib V56    0.216535606360247
#>     Attrib V57    0.3086826558653693
#>     Attrib V58    0.41047230603689183
#>     Attrib V59    0.37555981131796845
#>     Attrib V6    0.12287333569931176
#>     Attrib V60    0.21451662118163045
#>     Attrib V7    0.0776678012274169
#>     Attrib V8    0.06779713684701162
#>     Attrib V9    0.2613484375693583
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
