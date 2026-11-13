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
#>     Threshold    -0.7355741302922066
#>     Node 2    1.9375544287603779
#>     Node 3    1.0229802610389915
#>     Node 4    0.7291998430985316
#>     Node 5    -2.5717477658680656
#>     Node 6    1.2526328030107867
#>     Node 7    2.834660726836502
#>     Node 8    0.9405477754488946
#>     Node 9    3.807802839268549
#>     Node 10    -1.5179127701510475
#>     Node 11    0.8014980784716821
#>     Node 12    1.1949254346308598
#>     Node 13    1.447074288965037
#>     Node 14    1.202197446593049
#>     Node 15    -3.0712803503021893
#>     Node 16    0.11210161658949613
#>     Node 17    0.39359872436261173
#>     Node 18    0.9609727773667772
#>     Node 19    2.68781413569041
#>     Node 20    1.999262400863788
#>     Node 21    -2.406001405825936
#>     Node 22    1.037377127277731
#>     Node 23    2.08684577938463
#>     Node 24    -1.4805355772727835
#>     Node 25    3.6319904357855357
#>     Node 26    -0.6378211221839551
#>     Node 27    2.1455886518550544
#>     Node 28    -3.4039995878750995
#>     Node 29    1.0479397942631197
#>     Node 30    0.49620762440287214
#>     Node 31    1.2354135289131705
#>     Node 32    0.8683008989433186
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.763202646559515
#>     Node 2    -1.9727233270476745
#>     Node 3    -1.0056616914676724
#>     Node 4    -0.6944439771198985
#>     Node 5    2.5861443756391465
#>     Node 6    -1.2292626930512531
#>     Node 7    -2.822423458659826
#>     Node 8    -0.9808141318903952
#>     Node 9    -3.8156234162652454
#>     Node 10    1.4614850625002151
#>     Node 11    -0.7754525252158905
#>     Node 12    -1.2710317301904295
#>     Node 13    -1.3904081634048844
#>     Node 14    -1.143025617603306
#>     Node 15    3.060006224486515
#>     Node 16    -0.13034201867747766
#>     Node 17    -0.3629679877145044
#>     Node 18    -0.9233889448824145
#>     Node 19    -2.687103531422003
#>     Node 20    -1.994590871292991
#>     Node 21    2.464090931025473
#>     Node 22    -1.0888285201363768
#>     Node 23    -2.114807477728073
#>     Node 24    1.479919320730405
#>     Node 25    -3.6198439680364913
#>     Node 26    0.5654616532770789
#>     Node 27    -2.191945990933566
#>     Node 28    3.3822726428298675
#>     Node 29    -1.0888790001108386
#>     Node 30    -0.4245739344927658
#>     Node 31    -1.1735236387888008
#>     Node 32    -0.8873884308756507
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.06586961603841965
#>     Attrib V1    0.447601720678091
#>     Attrib V10    -0.18358985622565407
#>     Attrib V11    -0.37521915899399755
#>     Attrib V12    -0.4200815654710051
#>     Attrib V13    0.15162995035330895
#>     Attrib V14    0.2224104010901684
#>     Attrib V15    0.4893992977885093
#>     Attrib V16    0.06369232708719649
#>     Attrib V17    0.027103418793199698
#>     Attrib V18    -0.1105896715363793
#>     Attrib V19    0.33519806829914184
#>     Attrib V2    -0.12770977734520128
#>     Attrib V20    0.5524907314563579
#>     Attrib V21    0.5800954826939354
#>     Attrib V22    0.2643145220788749
#>     Attrib V23    0.05782087831311602
#>     Attrib V24    0.09692485333818264
#>     Attrib V25    -0.7247300994388504
#>     Attrib V26    -0.9244414793975523
#>     Attrib V27    -0.605093307825397
#>     Attrib V28    -0.409525997943735
#>     Attrib V29    -0.5621677167957218
#>     Attrib V3    0.146183629849144
#>     Attrib V30    -0.1289786694608569
#>     Attrib V31    -0.9449154969153131
#>     Attrib V32    -0.23686707762277875
#>     Attrib V33    0.3802097201522077
#>     Attrib V34    -0.06250017047671394
#>     Attrib V35    -0.2091047523755315
#>     Attrib V36    -0.5771409566553425
#>     Attrib V37    -0.1689838971983866
#>     Attrib V38    0.7563068173188141
#>     Attrib V39    -0.009653422399743032
#>     Attrib V4    0.20324907039003715
#>     Attrib V40    -0.6618423727705761
#>     Attrib V41    -0.11134882588058011
#>     Attrib V42    0.6038467002064453
#>     Attrib V43    0.46256240934799747
#>     Attrib V44    0.4232703136107853
#>     Attrib V45    0.24052400820100253
#>     Attrib V46    0.06492509456166261
#>     Attrib V47    -0.182726356970153
#>     Attrib V48    -0.02487405128729371
#>     Attrib V49    0.30637693353115825
#>     Attrib V5    0.2901045138523058
#>     Attrib V50    -0.7719811509293223
#>     Attrib V51    0.08068798186400673
#>     Attrib V52    0.14246318322820656
#>     Attrib V53    0.33386822405128674
#>     Attrib V54    0.5422429424800701
#>     Attrib V55    -0.4648839251854885
#>     Attrib V56    0.4484649068268937
#>     Attrib V57    -0.18508281933008608
#>     Attrib V58    0.28962655526739106
#>     Attrib V59    0.768854353347007
#>     Attrib V6    -0.12731369119961275
#>     Attrib V60    0.5189144456808426
#>     Attrib V7    0.08225920068390682
#>     Attrib V8    -0.5593843511746738
#>     Attrib V9    0.20640470487568394
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.12083544531658708
#>     Attrib V1    0.20893749796605948
#>     Attrib V10    0.019693535106965372
#>     Attrib V11    -0.07620405658050741
#>     Attrib V12    -0.0747459924573053
#>     Attrib V13    0.2125832136243911
#>     Attrib V14    0.030888707611648494
#>     Attrib V15    0.21430710461968444
#>     Attrib V16    -0.089077170889239
#>     Attrib V17    -0.09520418102700443
#>     Attrib V18    -0.17238338116153712
#>     Attrib V19    0.24927020359852758
#>     Attrib V2    -0.08169520341696347
#>     Attrib V20    0.23910538775533016
#>     Attrib V21    0.18300381555120115
#>     Attrib V22    0.0940632761523983
#>     Attrib V23    -0.032644776034761847
#>     Attrib V24    0.07682175210749355
#>     Attrib V25    -0.2775260487810501
#>     Attrib V26    -0.37705091404337016
#>     Attrib V27    -0.2176756051697666
#>     Attrib V28    -0.14446788022262022
#>     Attrib V29    -0.41677183661272615
#>     Attrib V3    0.02081931058998735
#>     Attrib V30    -0.04057960423136734
#>     Attrib V31    -0.48432528666030916
#>     Attrib V32    -0.08150526748466896
#>     Attrib V33    0.2118554674274478
#>     Attrib V34    -0.04125078668332493
#>     Attrib V35    -0.019166839162000095
#>     Attrib V36    -0.33981332793139485
#>     Attrib V37    -0.11635646615420478
#>     Attrib V38    0.35076267829171826
#>     Attrib V39    0.03419089221794878
#>     Attrib V4    0.12198926209964515
#>     Attrib V40    -0.38444372057549897
#>     Attrib V41    -0.016911081688364693
#>     Attrib V42    0.2767950089721643
#>     Attrib V43    0.2197961178684198
#>     Attrib V44    0.25518174721525805
#>     Attrib V45    0.1558190983558834
#>     Attrib V46    0.0660846211121759
#>     Attrib V47    -0.04317486676474048
#>     Attrib V48    -0.0183932141701546
#>     Attrib V49    0.30867195309525514
#>     Attrib V5    0.15493524457784413
#>     Attrib V50    -0.4673321513630747
#>     Attrib V51    0.029976965387726172
#>     Attrib V52    0.09653154317846947
#>     Attrib V53    0.15219053497209278
#>     Attrib V54    0.3633994641800262
#>     Attrib V55    -0.21619118424335654
#>     Attrib V56    0.23893741108098152
#>     Attrib V57    -0.15993031568430355
#>     Attrib V58    0.18071098478316172
#>     Attrib V59    0.4421281345121729
#>     Attrib V6    -0.03467552437073074
#>     Attrib V60    0.22897223982244086
#>     Attrib V7    -0.010312807591668253
#>     Attrib V8    -0.3559777598698793
#>     Attrib V9    0.12595871056026595
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.07049917719356874
#>     Attrib V1    0.09745047804146428
#>     Attrib V10    0.03653409886050592
#>     Attrib V11    -0.00988874141242281
#>     Attrib V12    -0.03600520621353129
#>     Attrib V13    0.14445164999056384
#>     Attrib V14    0.019598669027120326
#>     Attrib V15    0.10823740594189973
#>     Attrib V16    -0.06494819812922314
#>     Attrib V17    -0.07597758119465706
#>     Attrib V18    -0.14870665848762737
#>     Attrib V19    0.07262353668083517
#>     Attrib V2    -0.07650287105854192
#>     Attrib V20    0.04623314410184282
#>     Attrib V21    0.04392360829865423
#>     Attrib V22    -0.132937427704284
#>     Attrib V23    -0.18334221005350654
#>     Attrib V24    -0.08282448011848412
#>     Attrib V25    -0.2638610402124939
#>     Attrib V26    -0.22799661695240614
#>     Attrib V27    -0.10661797033714036
#>     Attrib V28    0.06812294279673681
#>     Attrib V29    -0.07314180152498508
#>     Attrib V3    0.026771408198823142
#>     Attrib V30    0.03279042108224592
#>     Attrib V31    -0.22399136608154893
#>     Attrib V32    -0.04316738804641507
#>     Attrib V33    0.1061455961337978
#>     Attrib V34    0.019197593843271115
#>     Attrib V35    0.03261127148549086
#>     Attrib V36    -0.15923181168024986
#>     Attrib V37    0.013265915660382764
#>     Attrib V38    0.23500718133687742
#>     Attrib V39    0.08586293131981101
#>     Attrib V4    0.08292196223840652
#>     Attrib V40    -0.18591012480325475
#>     Attrib V41    0.005505340686409582
#>     Attrib V42    0.1509815112568749
#>     Attrib V43    0.08465171782023617
#>     Attrib V44    0.16433566128532215
#>     Attrib V45    0.19595968326651522
#>     Attrib V46    0.055780045885762616
#>     Attrib V47    -0.025284974013822993
#>     Attrib V48    0.09776337826864331
#>     Attrib V49    0.3190554503352901
#>     Attrib V5    0.1710437710383431
#>     Attrib V50    -0.2204619570216148
#>     Attrib V51    0.0886182669311696
#>     Attrib V52    0.06789454362048199
#>     Attrib V53    0.15752321445855944
#>     Attrib V54    0.12090499207767581
#>     Attrib V55    -0.11121977782469744
#>     Attrib V56    0.13941952994459952
#>     Attrib V57    -0.07166565463664354
#>     Attrib V58    0.07135749553875992
#>     Attrib V59    0.29279484239981046
#>     Attrib V6    0.05422704626952448
#>     Attrib V60    0.14900195858335485
#>     Attrib V7    0.053640281700021025
#>     Attrib V8    -0.24495940439384573
#>     Attrib V9    0.1112874267806647
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.20560510339801755
#>     Attrib V1    -0.29573169748390377
#>     Attrib V10    -0.5351859537949741
#>     Attrib V11    -0.3614453890924662
#>     Attrib V12    -0.011645777543104538
#>     Attrib V13    -0.479088426647775
#>     Attrib V14    0.2185818377325405
#>     Attrib V15    -0.009481202343730313
#>     Attrib V16    0.45988020319260287
#>     Attrib V17    0.5244670910935204
#>     Attrib V18    0.4692326440530435
#>     Attrib V19    -0.5910618644631104
#>     Attrib V2    0.3292406171308653
#>     Attrib V20    -0.5113682626533801
#>     Attrib V21    -0.6504107342561141
#>     Attrib V22    -0.611269700429076
#>     Attrib V23    -0.4274345083522467
#>     Attrib V24    -0.6770995495289286
#>     Attrib V25    0.4689530219649847
#>     Attrib V26    0.499375084232861
#>     Attrib V27    0.1136904115777144
#>     Attrib V28    0.01801026801484771
#>     Attrib V29    0.5109027693071875
#>     Attrib V3    0.07522128032398716
#>     Attrib V30    -0.260782019213486
#>     Attrib V31    0.9391344690963964
#>     Attrib V32    -0.1900697098839693
#>     Attrib V33    -0.7318177037727891
#>     Attrib V34    0.08557017009500158
#>     Attrib V35    0.180912934378023
#>     Attrib V36    1.099087928938356
#>     Attrib V37    0.6348368450642367
#>     Attrib V38    -0.7830195803153523
#>     Attrib V39    -0.06110308041557051
#>     Attrib V4    -0.3554236880291181
#>     Attrib V40    0.9986969622106502
#>     Attrib V41    0.003539791895059506
#>     Attrib V42    -0.6407044015991414
#>     Attrib V43    -0.5215407517985212
#>     Attrib V44    -0.3992941138447678
#>     Attrib V45    -0.2068672394651405
#>     Attrib V46    -0.2946347273799851
#>     Attrib V47    0.05211427212516222
#>     Attrib V48    0.018294013802560693
#>     Attrib V49    -1.0850959699275742
#>     Attrib V5    -0.34914649830329025
#>     Attrib V50    1.3974246473992347
#>     Attrib V51    -0.29316950895321936
#>     Attrib V52    -0.24521261027143965
#>     Attrib V53    -0.15661807253764562
#>     Attrib V54    -0.5076946995593248
#>     Attrib V55    0.7867349154040731
#>     Attrib V56    -0.34793465479411023
#>     Attrib V57    0.6671120095704081
#>     Attrib V58    -0.4562237272718041
#>     Attrib V59    -0.5988044593127763
#>     Attrib V6    0.12500956496326623
#>     Attrib V60    -0.11104454326757018
#>     Attrib V7    0.22092026769297843
#>     Attrib V8    0.7053526189736937
#>     Attrib V9    -0.9415721931778136
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.21196722321589276
#>     Attrib V1    0.27275298516596014
#>     Attrib V10    0.011482993280596761
#>     Attrib V11    -0.06324672177106418
#>     Attrib V12    -0.09704403881723772
#>     Attrib V13    0.15045825926891696
#>     Attrib V14    -0.04414812045714389
#>     Attrib V15    0.1613431448234331
#>     Attrib V16    -0.056751966381306515
#>     Attrib V17    -0.14299281094332783
#>     Attrib V18    -0.1531876240087784
#>     Attrib V19    0.2836394531933432
#>     Attrib V2    -0.14990202032568187
#>     Attrib V20    0.30866122678803615
#>     Attrib V21    0.3023259141616347
#>     Attrib V22    0.11852915609047862
#>     Attrib V23    0.007226386583700685
#>     Attrib V24    0.20335744925228938
#>     Attrib V25    -0.28346973557050453
#>     Attrib V26    -0.40068388466070487
#>     Attrib V27    -0.16245980996042853
#>     Attrib V28    -0.1467898231200973
#>     Attrib V29    -0.394344259279962
#>     Attrib V3    -0.01660213452349528
#>     Attrib V30    -0.018892145106771438
#>     Attrib V31    -0.6340035960633533
#>     Attrib V32    -0.09971396800540169
#>     Attrib V33    0.26369705229936674
#>     Attrib V34    -0.04372634026773831
#>     Attrib V35    -0.03721133255406286
#>     Attrib V36    -0.4581806739544837
#>     Attrib V37    -0.1426949884545285
#>     Attrib V38    0.4806144936064998
#>     Attrib V39    0.015700518990609216
#>     Attrib V4    0.16554325340249523
#>     Attrib V40    -0.5380502858468907
#>     Attrib V41    0.005555034345332253
#>     Attrib V42    0.37169909581035343
#>     Attrib V43    0.26283224654043913
#>     Attrib V44    0.30292928675640507
#>     Attrib V45    0.26304034673987015
#>     Attrib V46    0.16117371094348373
#>     Attrib V47    -0.07708620703323618
#>     Attrib V48    -0.024513125709341405
#>     Attrib V49    0.42785639531245667
#>     Attrib V5    0.20634156765662803
#>     Attrib V50    -0.590074739910992
#>     Attrib V51    0.07104240117588066
#>     Attrib V52    0.061228434555798864
#>     Attrib V53    0.26243528404665695
#>     Attrib V54    0.3634826435062949
#>     Attrib V55    -0.39337933045230694
#>     Attrib V56    0.2544879163738962
#>     Attrib V57    -0.2179403236556914
#>     Attrib V58    0.16269360509976025
#>     Attrib V59    0.5283337800366728
#>     Attrib V6    0.055399605650620534
#>     Attrib V60    0.3093991008003929
#>     Attrib V7    0.0747359638534469
#>     Attrib V8    -0.41538130859456435
#>     Attrib V9    0.2970598259014567
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.6244683242416567
#>     Attrib V1    0.218929336084008
#>     Attrib V10    1.326138414333793
#>     Attrib V11    1.188692529767715
#>     Attrib V12    0.5396592585813164
#>     Attrib V13    0.31912725733572556
#>     Attrib V14    -0.7570114636389318
#>     Attrib V15    -0.48614966841821516
#>     Attrib V16    -0.4781318671523027
#>     Attrib V17    -0.7449548436215958
#>     Attrib V18    -0.5123736423851095
#>     Attrib V19    0.4092697762935841
#>     Attrib V2    -0.3451949971503308
#>     Attrib V20    -0.08066236806659624
#>     Attrib V21    0.22387304221231388
#>     Attrib V22    0.37072886757965057
#>     Attrib V23    0.30186100801587074
#>     Attrib V24    0.41724685416481283
#>     Attrib V25    -0.22245543563443676
#>     Attrib V26    0.491327357368862
#>     Attrib V27    1.0245594164310592
#>     Attrib V28    1.2534704158596155
#>     Attrib V29    0.6578120170228056
#>     Attrib V3    -0.485337724608242
#>     Attrib V30    0.6238673055469107
#>     Attrib V31    -0.3989913865452488
#>     Attrib V32    -0.007825365864808025
#>     Attrib V33    -0.3644545175781905
#>     Attrib V34    -0.47528144223154783
#>     Attrib V35    0.039142309690351956
#>     Attrib V36    -0.6412841484948634
#>     Attrib V37    -0.05414989980142889
#>     Attrib V38    0.25746049176512
#>     Attrib V39    0.21609081829927423
#>     Attrib V4    0.2433156595547503
#>     Attrib V40    -0.400435730000184
#>     Attrib V41    0.6818657405182794
#>     Attrib V42    0.09972587752628809
#>     Attrib V43    0.2785687581364582
#>     Attrib V44    0.4738758727265871
#>     Attrib V45    0.37657594227314933
#>     Attrib V46    0.8252478913897371
#>     Attrib V47    0.44918980329870717
#>     Attrib V48    0.08909425571984426
#>     Attrib V49    1.3444908296802607
#>     Attrib V5    0.6098002420894209
#>     Attrib V50    -0.3087956828484792
#>     Attrib V51    0.4506196859186309
#>     Attrib V52    0.31980797779019277
#>     Attrib V53    0.20760648166402226
#>     Attrib V54    0.2228898990364298
#>     Attrib V55    -0.46271605055641685
#>     Attrib V56    -0.4053913183925605
#>     Attrib V57    -0.3746370285427755
#>     Attrib V58    0.09420094073824886
#>     Attrib V59    0.3152166966041889
#>     Attrib V6    0.7497228113485475
#>     Attrib V60    0.04245951221238037
#>     Attrib V7    0.19104104247061274
#>     Attrib V8    -0.19214210704994938
#>     Attrib V9    1.063107243760289
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.22984025394426014
#>     Attrib V1    0.1125209167309828
#>     Attrib V10    0.19204072659895505
#>     Attrib V11    0.15543319815165035
#>     Attrib V12    0.03653016065387191
#>     Attrib V13    0.14283652089748158
#>     Attrib V14    -0.17264834581525285
#>     Attrib V15    -0.050379926839958164
#>     Attrib V16    -0.09688286475161752
#>     Attrib V17    -0.20120295217121195
#>     Attrib V18    -0.2893074672769082
#>     Attrib V19    -0.008288876492841182
#>     Attrib V2    -0.07405086983630342
#>     Attrib V20    -0.18197422163731142
#>     Attrib V21    -0.16070811314605504
#>     Attrib V22    -0.2197593949151979
#>     Attrib V23    -0.25657362546177015
#>     Attrib V24    -0.02317932719417537
#>     Attrib V25    -0.16926577781112376
#>     Attrib V26    -0.03558405788510591
#>     Attrib V27    0.1677059449784428
#>     Attrib V28    0.3306546482699104
#>     Attrib V29    0.11175299514392616
#>     Attrib V3    -0.0976378470607224
#>     Attrib V30    0.21026068424032937
#>     Attrib V31    -0.13746875182117327
#>     Attrib V32    0.04384611229362324
#>     Attrib V33    0.067579246828373
#>     Attrib V34    -0.05777109245454149
#>     Attrib V35    0.010766831574883881
#>     Attrib V36    -0.1171433766316613
#>     Attrib V37    0.05375358551305212
#>     Attrib V38    0.3037341390324805
#>     Attrib V39    0.08338890621782681
#>     Attrib V4    0.1354499882105292
#>     Attrib V40    -0.26603118216982086
#>     Attrib V41    0.03100620157839407
#>     Attrib V42    -0.035118866722396995
#>     Attrib V43    0.030413324248519304
#>     Attrib V44    0.21496987276787893
#>     Attrib V45    0.2112648392172115
#>     Attrib V46    0.18080757845582401
#>     Attrib V47    0.07266072330667224
#>     Attrib V48    0.19739224203500047
#>     Attrib V49    0.4759024836799607
#>     Attrib V5    0.17318763383937635
#>     Attrib V50    -0.29326283673914805
#>     Attrib V51    0.07304793101740711
#>     Attrib V52    0.09541011790876451
#>     Attrib V53    0.1342062155671692
#>     Attrib V54    0.13560402177319353
#>     Attrib V55    -0.15894088003107765
#>     Attrib V56    0.008233680478768579
#>     Attrib V57    -0.07872826057017818
#>     Attrib V58    0.01799422777278285
#>     Attrib V59    0.2937973154615206
#>     Attrib V6    0.19655877852252124
#>     Attrib V60    0.15425562634401643
#>     Attrib V7    0.08819959989689338
#>     Attrib V8    -0.25039452642804044
#>     Attrib V9    0.1445494564771352
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.3206935233101426
#>     Attrib V1    -0.12364123149373381
#>     Attrib V10    2.043033464502923
#>     Attrib V11    1.7009578112621058
#>     Attrib V12    0.8279035109906486
#>     Attrib V13    0.44890979832588523
#>     Attrib V14    -1.2893028490724197
#>     Attrib V15    -1.0726915149132579
#>     Attrib V16    -0.849060897085409
#>     Attrib V17    -0.8673580569581495
#>     Attrib V18    -0.5525419879952649
#>     Attrib V19    0.7816465386598576
#>     Attrib V2    -0.5647476506583539
#>     Attrib V20    -0.003323725274924166
#>     Attrib V21    0.27579212150128374
#>     Attrib V22    0.6173774005917614
#>     Attrib V23    0.8276253330716863
#>     Attrib V24    1.1206085144543545
#>     Attrib V25    0.3306983104232096
#>     Attrib V26    0.9670054985152318
#>     Attrib V27    1.2434027957163414
#>     Attrib V28    1.012020923700975
#>     Attrib V29    -0.17993992397347505
#>     Attrib V3    -0.5234918384727011
#>     Attrib V30    0.4741120732928211
#>     Attrib V31    -0.5490433154195612
#>     Attrib V32    0.15796549875091298
#>     Attrib V33    -0.1093507367702853
#>     Attrib V34    -0.12602836264271144
#>     Attrib V35    0.303798983757058
#>     Attrib V36    -0.9251110091036379
#>     Attrib V37    -0.5708490591383364
#>     Attrib V38    0.07895158620549303
#>     Attrib V39    0.30998351086917725
#>     Attrib V4    0.31466275218139184
#>     Attrib V40    -0.4071887961792135
#>     Attrib V41    0.8162438371433314
#>     Attrib V42    0.0030775617456733884
#>     Attrib V43    0.29929622125707195
#>     Attrib V44    0.3933149013840069
#>     Attrib V45    0.4516593588626896
#>     Attrib V46    1.0689682301630254
#>     Attrib V47    0.7189362138720881
#>     Attrib V48    0.292499923907466
#>     Attrib V49    1.8995564643397505
#>     Attrib V5    0.6910721971691223
#>     Attrib V50    -0.41655294093458284
#>     Attrib V51    0.8732391535276097
#>     Attrib V52    0.502448168602476
#>     Attrib V53    0.22940186972473542
#>     Attrib V54    0.20668818433252595
#>     Attrib V55    -0.4299641282209572
#>     Attrib V56    -0.3647598218646587
#>     Attrib V57    -0.7741635509391194
#>     Attrib V58    0.10057794224216934
#>     Attrib V59    -0.018113598526516686
#>     Attrib V6    0.7306822711150466
#>     Attrib V60    -0.297374318607411
#>     Attrib V7    0.1578555342316413
#>     Attrib V8    0.05119520536325703
#>     Attrib V9    1.7679449090386876
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.3067224009556024
#>     Attrib V1    -0.12595113113061432
#>     Attrib V10    -0.3553720760979469
#>     Attrib V11    -0.250833099685687
#>     Attrib V12    -0.0033393561502355535
#>     Attrib V13    -0.23035154193575486
#>     Attrib V14    0.2902959747048481
#>     Attrib V15    0.021859891014103242
#>     Attrib V16    0.3104658870760473
#>     Attrib V17    0.30356191119962866
#>     Attrib V18    0.40921947435604245
#>     Attrib V19    -0.13075338550212934
#>     Attrib V2    0.23443259381526668
#>     Attrib V20    -0.027803925694501894
#>     Attrib V21    -0.11641869724460538
#>     Attrib V22    -0.2043487042030427
#>     Attrib V23    -0.18157442339853522
#>     Attrib V24    -0.31839955825644356
#>     Attrib V25    0.3829566856990076
#>     Attrib V26    0.32333544549730275
#>     Attrib V27    -0.027539823451925564
#>     Attrib V28    -0.11738593259088678
#>     Attrib V29    0.16495412155793038
#>     Attrib V3    0.15694751463905335
#>     Attrib V30    -0.1742194551946756
#>     Attrib V31    0.4109849692657933
#>     Attrib V32    -0.30523764990931823
#>     Attrib V33    -0.3760673297034185
#>     Attrib V34    0.09907954296267778
#>     Attrib V35    0.08912585946093476
#>     Attrib V36    0.6265675658874825
#>     Attrib V37    0.32927679913164487
#>     Attrib V38    -0.32178076622268575
#>     Attrib V39    -0.025228801457745774
#>     Attrib V4    -0.09436429333421657
#>     Attrib V40    0.6279047686021166
#>     Attrib V41    -0.07730987327506172
#>     Attrib V42    -0.2962124623217567
#>     Attrib V43    -0.23264322078610014
#>     Attrib V44    -0.20996354824097696
#>     Attrib V45    -0.1298638314125802
#>     Attrib V46    -0.2236377400315585
#>     Attrib V47    0.011512444290239619
#>     Attrib V48    -0.036820062327515904
#>     Attrib V49    -0.7153440298397631
#>     Attrib V5    -0.1819050343217424
#>     Attrib V50    0.7663808274376606
#>     Attrib V51    -0.208449188572669
#>     Attrib V52    -0.1763616287998274
#>     Attrib V53    0.039706514556396705
#>     Attrib V54    -0.20548791259367322
#>     Attrib V55    0.4335303042052991
#>     Attrib V56    -0.15057807330104336
#>     Attrib V57    0.39208838625845444
#>     Attrib V58    -0.2507146409374773
#>     Attrib V59    -0.35192006077916477
#>     Attrib V6    -0.09326833716621857
#>     Attrib V60    -0.025936459879154824
#>     Attrib V7    0.13345869698843824
#>     Attrib V8    0.40780499111256735
#>     Attrib V9    -0.5392528097144903
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.14564567262553166
#>     Attrib V1    0.10138592153211855
#>     Attrib V10    0.07029117202002884
#>     Attrib V11    0.03837750188200102
#>     Attrib V12    0.029229031629404573
#>     Attrib V13    0.08916573985002235
#>     Attrib V14    -0.07808347659882327
#>     Attrib V15    0.0221687501172871
#>     Attrib V16    -0.08312312642156726
#>     Attrib V17    -0.0720883869033218
#>     Attrib V18    -0.15145917126094668
#>     Attrib V19    0.038228004977226365
#>     Attrib V2    -0.12087809422441054
#>     Attrib V20    0.0263805346319658
#>     Attrib V21    -0.06646521873134206
#>     Attrib V22    -0.17684841766459267
#>     Attrib V23    -0.22420802017642136
#>     Attrib V24    -0.06650834026715996
#>     Attrib V25    -0.19545941131613787
#>     Attrib V26    -0.23152840043187234
#>     Attrib V27    -0.020991054269076666
#>     Attrib V28    0.11927446832427904
#>     Attrib V29    -0.08806709710283658
#>     Attrib V3    -0.08916541086654842
#>     Attrib V30    0.09240224807065958
#>     Attrib V31    -0.25446448221993073
#>     Attrib V32    -0.046065240955519754
#>     Attrib V33    0.07928977379502276
#>     Attrib V34    0.044645017295050604
#>     Attrib V35    0.07062717334413957
#>     Attrib V36    -0.13906022191739884
#>     Attrib V37    0.009289027878917132
#>     Attrib V38    0.3364155238239321
#>     Attrib V39    0.06220215270257084
#>     Attrib V4    0.0681083293228062
#>     Attrib V40    -0.25554657243352463
#>     Attrib V41    -0.03383418444143261
#>     Attrib V42    0.09808039849734429
#>     Attrib V43    0.09438773502851212
#>     Attrib V44    0.21135586278644328
#>     Attrib V45    0.22512698000819778
#>     Attrib V46    0.09332493806826479
#>     Attrib V47    0.029924200665323607
#>     Attrib V48    0.12894506460203572
#>     Attrib V49    0.32608064992991753
#>     Attrib V5    0.16242028417793375
#>     Attrib V50    -0.2544407898047914
#>     Attrib V51    0.11891968663198756
#>     Attrib V52    0.04590161931347399
#>     Attrib V53    0.10955527767521069
#>     Attrib V54    0.22185874420460355
#>     Attrib V55    -0.12046547034176189
#>     Attrib V56    0.10250149002712632
#>     Attrib V57    -0.1036621520783773
#>     Attrib V58    0.07594339754017136
#>     Attrib V59    0.24600990449589435
#>     Attrib V6    0.1068084759774426
#>     Attrib V60    0.14948911039484994
#>     Attrib V7    0.014760642012642754
#>     Attrib V8    -0.21864342547429658
#>     Attrib V9    0.11300744619688993
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.20037544749108777
#>     Attrib V1    0.19181663805113383
#>     Attrib V10    -0.05068096592287727
#>     Attrib V11    -0.0666963516072088
#>     Attrib V12    -0.21191413490253602
#>     Attrib V13    0.16091867730348983
#>     Attrib V14    0.033894362135169054
#>     Attrib V15    0.19323171750931042
#>     Attrib V16    -0.03256858519532851
#>     Attrib V17    -0.0768922244918245
#>     Attrib V18    -0.1431179226103431
#>     Attrib V19    0.31996750743876096
#>     Attrib V2    -0.10765993792413925
#>     Attrib V20    0.2689314913204043
#>     Attrib V21    0.2561698161076589
#>     Attrib V22    0.1496171159235801
#>     Attrib V23    -0.01794803130514249
#>     Attrib V24    0.03353942264423016
#>     Attrib V25    -0.4584386784435788
#>     Attrib V26    -0.5095976394028955
#>     Attrib V27    -0.21146939957021918
#>     Attrib V28    -0.1488496673673607
#>     Attrib V29    -0.3171598436677313
#>     Attrib V3    -0.05307295689727337
#>     Attrib V30    -0.04000074432251116
#>     Attrib V31    -0.6528089736367247
#>     Attrib V32    -0.16646070892005468
#>     Attrib V33    0.274649885566674
#>     Attrib V34    -0.009567238573199254
#>     Attrib V35    -0.0427525898520283
#>     Attrib V36    -0.37385659740760435
#>     Attrib V37    -0.10625455058459811
#>     Attrib V38    0.5169810035529709
#>     Attrib V39    -0.024868158319870538
#>     Attrib V4    0.1645862244044474
#>     Attrib V40    -0.4548641889746158
#>     Attrib V41    -0.04859926505117099
#>     Attrib V42    0.31879350966603975
#>     Attrib V43    0.34074541783856105
#>     Attrib V44    0.29047172327265025
#>     Attrib V45    0.25530038536038996
#>     Attrib V46    0.17134194324999769
#>     Attrib V47    -0.07390208889724849
#>     Attrib V48    0.050487962287420356
#>     Attrib V49    0.36420885840645556
#>     Attrib V5    0.19443988675269763
#>     Attrib V50    -0.5935150834357463
#>     Attrib V51    0.0738602636114027
#>     Attrib V52    0.12197411313877839
#>     Attrib V53    0.24250733040594907
#>     Attrib V54    0.37049758569088315
#>     Attrib V55    -0.36839626894237254
#>     Attrib V56    0.24745331339838253
#>     Attrib V57    -0.19312861884546437
#>     Attrib V58    0.17047407517869784
#>     Attrib V59    0.4967000074871168
#>     Attrib V6    -0.05996298685551289
#>     Attrib V60    0.28403204380106956
#>     Attrib V7    0.048119794822293255
#>     Attrib V8    -0.4274362763011082
#>     Attrib V9    0.1999403887727367
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.10881618209918414
#>     Attrib V1    0.2537331082941287
#>     Attrib V10    0.04584833693483723
#>     Attrib V11    -0.06229979936940121
#>     Attrib V12    -0.16990466788073377
#>     Attrib V13    0.2566129781327236
#>     Attrib V14    -0.02972945769308396
#>     Attrib V15    0.16841430369849938
#>     Attrib V16    -0.16071367887453222
#>     Attrib V17    -0.1263137232984076
#>     Attrib V18    -0.20522594234160174
#>     Attrib V19    0.3428410013835356
#>     Attrib V2    -0.2186778286712472
#>     Attrib V20    0.39100809233364064
#>     Attrib V21    0.376987975838736
#>     Attrib V22    0.20157120094305003
#>     Attrib V23    0.12690939240425708
#>     Attrib V24    0.26258840706123837
#>     Attrib V25    -0.3097472156374774
#>     Attrib V26    -0.4726037609611344
#>     Attrib V27    -0.17146452118871638
#>     Attrib V28    -0.1620087552597731
#>     Attrib V29    -0.4141734003043699
#>     Attrib V3    0.024678211043887826
#>     Attrib V30    -0.01774792108281589
#>     Attrib V31    -0.7770900371264629
#>     Attrib V32    -0.12652548447330778
#>     Attrib V33    0.30069812106873295
#>     Attrib V34    0.024800636124372544
#>     Attrib V35    -0.0664902546525876
#>     Attrib V36    -0.48038513971862085
#>     Attrib V37    -0.14123280398697596
#>     Attrib V38    0.5754618389121553
#>     Attrib V39    0.07277207857655658
#>     Attrib V4    0.1702570638011712
#>     Attrib V40    -0.5707966239193797
#>     Attrib V41    -0.04812600135733141
#>     Attrib V42    0.41217794757287246
#>     Attrib V43    0.29813979609903735
#>     Attrib V44    0.3697360623828242
#>     Attrib V45    0.2540042013778924
#>     Attrib V46    0.21232901358741857
#>     Attrib V47    -0.021063056111473865
#>     Attrib V48    -0.0036785056979101688
#>     Attrib V49    0.5488140438625541
#>     Attrib V5    0.26371586096810645
#>     Attrib V50    -0.7336141536226158
#>     Attrib V51    0.0652545721050446
#>     Attrib V52    0.06500957090508475
#>     Attrib V53    0.232442531283061
#>     Attrib V54    0.3986427182003982
#>     Attrib V55    -0.4631536890506493
#>     Attrib V56    0.24565441349581463
#>     Attrib V57    -0.2734259226246662
#>     Attrib V58    0.14400519491586192
#>     Attrib V59    0.5492018466009169
#>     Attrib V6    0.018268095443872697
#>     Attrib V60    0.3382829229473497
#>     Attrib V7    0.09068584231065524
#>     Attrib V8    -0.5331799443873861
#>     Attrib V9    0.32143118869848913
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.3138141231988287
#>     Attrib V1    0.21799013070295395
#>     Attrib V10    0.1815884106826277
#>     Attrib V11    0.16621367017912164
#>     Attrib V12    0.050990829493851156
#>     Attrib V13    0.18354980415170327
#>     Attrib V14    -0.20566685115300049
#>     Attrib V15    0.03955578094174837
#>     Attrib V16    -0.23723870386154575
#>     Attrib V17    -0.22759130858948273
#>     Attrib V18    -0.27217486156865667
#>     Attrib V19    0.08468735006980606
#>     Attrib V2    -0.18222669452501505
#>     Attrib V20    -0.01654032997789783
#>     Attrib V21    -0.0288966153294129
#>     Attrib V22    -0.07100081796226791
#>     Attrib V23    -0.10211785602683582
#>     Attrib V24    0.0749648856241599
#>     Attrib V25    -0.24021328802035313
#>     Attrib V26    -0.18089432802643585
#>     Attrib V27    0.011738932245692895
#>     Attrib V28    0.08493495963396142
#>     Attrib V29    -0.2486180262207076
#>     Attrib V3    -0.2274030254708945
#>     Attrib V30    0.07923743177276003
#>     Attrib V31    -0.3620495281865285
#>     Attrib V32    0.018503311125942962
#>     Attrib V33    0.2289758700040673
#>     Attrib V34    -0.05492606937022188
#>     Attrib V35    0.030185291511218376
#>     Attrib V36    -0.436222334466531
#>     Attrib V37    -0.12749635734587486
#>     Attrib V38    0.2978835234999807
#>     Attrib V39    -0.007859627323491644
#>     Attrib V4    0.030139393622853144
#>     Attrib V40    -0.5136122864994684
#>     Attrib V41    -0.056114090420670955
#>     Attrib V42    0.08786828325788755
#>     Attrib V43    0.11443140986908765
#>     Attrib V44    0.29906756152371244
#>     Attrib V45    0.14905415814394307
#>     Attrib V46    0.13384117215598446
#>     Attrib V47    -0.059488820631756714
#>     Attrib V48    0.12959363434033877
#>     Attrib V49    0.5902436199203696
#>     Attrib V5    0.10901895994057194
#>     Attrib V50    -0.5567422067613512
#>     Attrib V51    0.04088508791417613
#>     Attrib V52    0.0582560209552206
#>     Attrib V53    0.10144658625543153
#>     Attrib V54    0.3340815099022496
#>     Attrib V55    -0.3106694491931686
#>     Attrib V56    0.14832790464160683
#>     Attrib V57    -0.270945021265021
#>     Attrib V58    0.10468178081702786
#>     Attrib V59    0.34560715647168117
#>     Attrib V6    0.13216592484991055
#>     Attrib V60    0.1496502345322136
#>     Attrib V7    0.016935205769389134
#>     Attrib V8    -0.4911490779335258
#>     Attrib V9    0.2230888950838779
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.32450448890614764
#>     Attrib V1    -0.569916164572649
#>     Attrib V10    -0.6318539444388797
#>     Attrib V11    -0.42922267715702117
#>     Attrib V12    -0.005000283801108571
#>     Attrib V13    -0.5254719321060867
#>     Attrib V14    0.29989573576864537
#>     Attrib V15    0.16355973760122947
#>     Attrib V16    0.7473658017030688
#>     Attrib V17    0.8395849999831368
#>     Attrib V18    0.37776667786541784
#>     Attrib V19    -0.892541585656629
#>     Attrib V2    0.16187265083482075
#>     Attrib V20    -0.7225923108041491
#>     Attrib V21    -0.9519834738417429
#>     Attrib V22    -0.924548106626
#>     Attrib V23    -0.7895703976272775
#>     Attrib V24    -0.9446753705367757
#>     Attrib V25    0.35317500579342387
#>     Attrib V26    0.8480266250501786
#>     Attrib V27    0.4464731095832156
#>     Attrib V28    0.023211953306524237
#>     Attrib V29    0.5278796619085521
#>     Attrib V3    0.18011181205744983
#>     Attrib V30    -0.32321570830361557
#>     Attrib V31    0.6650215323348778
#>     Attrib V32    -0.6299678701560666
#>     Attrib V33    -0.8281564149026114
#>     Attrib V34    0.35040942059299074
#>     Attrib V35    0.15190638829196546
#>     Attrib V36    1.2088886404305503
#>     Attrib V37    1.1689663144297517
#>     Attrib V38    -0.8787724141441834
#>     Attrib V39    -0.16107412156604906
#>     Attrib V4    -0.33308259644804344
#>     Attrib V40    1.056064207836434
#>     Attrib V41    0.21052850372193033
#>     Attrib V42    -0.5235957295402474
#>     Attrib V43    -0.6893761711078525
#>     Attrib V44    -0.55125135793155
#>     Attrib V45    0.03584288694051297
#>     Attrib V46    -0.1655611967922219
#>     Attrib V47    0.08827224612896109
#>     Attrib V48    0.21296915124582144
#>     Attrib V49    -1.364051412442439
#>     Attrib V5    -0.2528618807320179
#>     Attrib V50    1.0183091382371514
#>     Attrib V51    -0.3044754103015523
#>     Attrib V52    -0.36815094878515375
#>     Attrib V53    -0.4445592915167466
#>     Attrib V54    -0.8200889594205105
#>     Attrib V55    0.8993841840312489
#>     Attrib V56    -0.4160838424433899
#>     Attrib V57    0.7499521048357591
#>     Attrib V58    -0.625841441663327
#>     Attrib V59    -0.6326391138121981
#>     Attrib V6    0.3089213861671018
#>     Attrib V60    -0.16850976636456474
#>     Attrib V7    0.010944620219347308
#>     Attrib V8    0.7139491352170618
#>     Attrib V9    -0.9701020839695057
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.17160453212636853
#>     Attrib V1    0.05504085522504568
#>     Attrib V10    0.022675727046823847
#>     Attrib V11    -0.02655410471284216
#>     Attrib V12    -0.03739031554005693
#>     Attrib V13    0.024582217702362612
#>     Attrib V14    0.01142417529862907
#>     Attrib V15    0.023772260522699474
#>     Attrib V16    0.06660380665660842
#>     Attrib V17    0.060526369593707115
#>     Attrib V18    0.02406021740607852
#>     Attrib V19    -0.018298607600005602
#>     Attrib V2    0.03537887134155891
#>     Attrib V20    -0.087079430524632
#>     Attrib V21    -0.10685610773721324
#>     Attrib V22    -0.10741956073481375
#>     Attrib V23    -0.10054429552939907
#>     Attrib V24    -0.0018630150780303784
#>     Attrib V25    -0.012364658741875471
#>     Attrib V26    -0.08305227922584156
#>     Attrib V27    -0.06990539777494201
#>     Attrib V28    -0.02548963499836444
#>     Attrib V29    -0.07403851035422754
#>     Attrib V3    0.13047369180810922
#>     Attrib V30    -0.05216060728709885
#>     Attrib V31    -0.06418542612596408
#>     Attrib V32    0.020432787596853595
#>     Attrib V33    0.034242087986138176
#>     Attrib V34    0.06506496757223192
#>     Attrib V35    0.06299164516007763
#>     Attrib V36    0.07241072192626367
#>     Attrib V37    0.15051752220956097
#>     Attrib V38    0.11282175155988833
#>     Attrib V39    0.06193680361311435
#>     Attrib V4    0.11361952090335796
#>     Attrib V40    0.016291659710996994
#>     Attrib V41    0.06857828778334596
#>     Attrib V42    0.1133904869525518
#>     Attrib V43    0.042503208336329125
#>     Attrib V44    0.001395554544639752
#>     Attrib V45    0.07930323652235381
#>     Attrib V46    0.08286705398340563
#>     Attrib V47    0.06068427144311601
#>     Attrib V48    0.03147625199915647
#>     Attrib V49    -0.001963905346023506
#>     Attrib V5    0.0991140372064707
#>     Attrib V50    0.06620040111175766
#>     Attrib V51    0.11443852012967719
#>     Attrib V52    0.08502024853627253
#>     Attrib V53    0.11933106118991671
#>     Attrib V54    0.0468694214775007
#>     Attrib V55    0.0718248637734007
#>     Attrib V56    0.12092976271836738
#>     Attrib V57    0.12040948365243728
#>     Attrib V58    0.12533215341795312
#>     Attrib V59    0.05001703432241887
#>     Attrib V6    0.06083138332038183
#>     Attrib V60    0.1255007677161626
#>     Attrib V7    0.04762499621584704
#>     Attrib V8    0.013435192760793881
#>     Attrib V9    0.09672556977149395
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.041590599379100535
#>     Attrib V1    0.13636959312055652
#>     Attrib V10    0.08915936375947454
#>     Attrib V11    0.03730520993887076
#>     Attrib V12    -0.044861084335899616
#>     Attrib V13    0.004819526879753643
#>     Attrib V14    -0.006322619129307602
#>     Attrib V15    0.10671527739259368
#>     Attrib V16    -0.0045903917193700515
#>     Attrib V17    -0.02440696939609675
#>     Attrib V18    -0.08667079148190361
#>     Attrib V19    0.01961136774714046
#>     Attrib V2    0.10132136247831713
#>     Attrib V20    -0.05511633969693436
#>     Attrib V21    -0.08274033993863131
#>     Attrib V22    -0.06972672254460135
#>     Attrib V23    -0.14600259591667153
#>     Attrib V24    -0.02646746753223579
#>     Attrib V25    -0.1405306467663773
#>     Attrib V26    -0.1473334459892203
#>     Attrib V27    -0.056242630409709636
#>     Attrib V28    -0.018075527712544
#>     Attrib V29    -0.1152421588157236
#>     Attrib V3    0.07778661746622642
#>     Attrib V30    0.04944199198757758
#>     Attrib V31    -0.04838562810155534
#>     Attrib V32    -0.03169782085684554
#>     Attrib V33    0.10498708254942883
#>     Attrib V34    0.01978263805154692
#>     Attrib V35    0.11654119039822561
#>     Attrib V36    6.134439355139101E-4
#>     Attrib V37    0.08444421195428058
#>     Attrib V38    0.24803740748770856
#>     Attrib V39    0.12744753657629512
#>     Attrib V4    0.13248824258953354
#>     Attrib V40    -0.06794885778319203
#>     Attrib V41    0.07198216781842678
#>     Attrib V42    0.07387337950410189
#>     Attrib V43    0.11856416826461709
#>     Attrib V44    0.11753499888347135
#>     Attrib V45    0.1558831668150123
#>     Attrib V46    0.06575357746293406
#>     Attrib V47    0.010369766913099146
#>     Attrib V48    0.11421516623861758
#>     Attrib V49    0.1109805267757467
#>     Attrib V5    0.1424423462636643
#>     Attrib V50    -0.04850417682426764
#>     Attrib V51    0.09234243612189874
#>     Attrib V52    0.06165497584583549
#>     Attrib V53    0.08085922878467887
#>     Attrib V54    0.09531596582124927
#>     Attrib V55    0.05487376952682721
#>     Attrib V56    0.14935303969346134
#>     Attrib V57    0.09957842296832484
#>     Attrib V58    0.0688154736109979
#>     Attrib V59    0.1631934159772382
#>     Attrib V6    0.08282197878879069
#>     Attrib V60    0.18145673464657888
#>     Attrib V7    0.029492329436086432
#>     Attrib V8    -0.0014072963328477669
#>     Attrib V9    0.10862622321747849
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    0.07783445089068342
#>     Attrib V1    0.20905189043268382
#>     Attrib V10    -0.00713448109286444
#>     Attrib V11    -0.06846483610135758
#>     Attrib V12    -0.10844829492609728
#>     Attrib V13    0.14727344714033852
#>     Attrib V14    -0.0049005170991274286
#>     Attrib V15    0.1263207914606826
#>     Attrib V16    -0.03628613433798731
#>     Attrib V17    -0.07967519633832325
#>     Attrib V18    -0.05951208285217935
#>     Attrib V19    0.17050093700548014
#>     Attrib V2    -0.08927569811946712
#>     Attrib V20    0.22455834045470077
#>     Attrib V21    0.20724360670285139
#>     Attrib V22    0.04115459954458132
#>     Attrib V23    -0.0470886110869555
#>     Attrib V24    0.052691455770534454
#>     Attrib V25    -0.26567350052671446
#>     Attrib V26    -0.34466982577929883
#>     Attrib V27    -0.19919468123130446
#>     Attrib V28    -0.16573778522560395
#>     Attrib V29    -0.34830752237266654
#>     Attrib V3    0.04590587906865599
#>     Attrib V30    -0.09832969666040436
#>     Attrib V31    -0.469554232708838
#>     Attrib V32    -0.10140687626662165
#>     Attrib V33    0.20051788737970308
#>     Attrib V34    0.06194712246999526
#>     Attrib V35    -0.015010051075946848
#>     Attrib V36    -0.21759640698260607
#>     Attrib V37    -0.08197067666272197
#>     Attrib V38    0.3768956238531685
#>     Attrib V39    0.07184982661791627
#>     Attrib V4    0.07588017196522708
#>     Attrib V40    -0.37502730512579674
#>     Attrib V41    -0.06411063876301822
#>     Attrib V42    0.22829521515662116
#>     Attrib V43    0.1945551098689922
#>     Attrib V44    0.2524234569593475
#>     Attrib V45    0.14031952083834826
#>     Attrib V46    0.06889566007505211
#>     Attrib V47    -0.021391491784107628
#>     Attrib V48    0.033005072920183225
#>     Attrib V49    0.3358473377951224
#>     Attrib V5    0.14734477284825642
#>     Attrib V50    -0.4598143830266809
#>     Attrib V51    0.09753352580880945
#>     Attrib V52    0.047048927795115845
#>     Attrib V53    0.17825516222172327
#>     Attrib V54    0.24846083721228288
#>     Attrib V55    -0.20622722053071865
#>     Attrib V56    0.21970264739989576
#>     Attrib V57    -0.2034029533418762
#>     Attrib V58    0.11386991218123346
#>     Attrib V59    0.4210079825189289
#>     Attrib V6    -0.013853795740403699
#>     Attrib V60    0.2870946658001482
#>     Attrib V7    0.08440747688011506
#>     Attrib V8    -0.31978889403650246
#>     Attrib V9    0.14085667245637273
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.6090983042964795
#>     Attrib V1    0.18421533353520003
#>     Attrib V10    1.2777595652500038
#>     Attrib V11    1.1063364281386932
#>     Attrib V12    0.7272808612820185
#>     Attrib V13    0.41839416952570485
#>     Attrib V14    -0.7278678878631604
#>     Attrib V15    -0.4462445702889378
#>     Attrib V16    -0.5928817496014828
#>     Attrib V17    -0.7477154103367399
#>     Attrib V18    -0.5819894955895647
#>     Attrib V19    0.3091888779452917
#>     Attrib V2    -0.34550656984226724
#>     Attrib V20    -0.2626398326984728
#>     Attrib V21    0.0017864350670396272
#>     Attrib V22    0.25306713622919497
#>     Attrib V23    0.12388426516052589
#>     Attrib V24    0.5108209745016381
#>     Attrib V25    0.07722370263315471
#>     Attrib V26    0.597633244735577
#>     Attrib V27    0.9028371089361792
#>     Attrib V28    0.9531803885571726
#>     Attrib V29    0.20959114622938502
#>     Attrib V3    -0.5443337585436363
#>     Attrib V30    0.40734993368671935
#>     Attrib V31    -0.33621712823699845
#>     Attrib V32    0.07651576061041367
#>     Attrib V33    -0.18688290005083427
#>     Attrib V34    -0.27718376051521565
#>     Attrib V35    0.1992277885368935
#>     Attrib V36    -0.5411732720729742
#>     Attrib V37    -0.1442383998981333
#>     Attrib V38    0.19542849525914982
#>     Attrib V39    0.20330351738530955
#>     Attrib V4    0.2501837530809723
#>     Attrib V40    -0.38643416961121707
#>     Attrib V41    0.5745904652052285
#>     Attrib V42    0.017041594589803692
#>     Attrib V43    0.14652503646944195
#>     Attrib V44    0.2889820369031433
#>     Attrib V45    0.37663979901485883
#>     Attrib V46    0.7114728381462512
#>     Attrib V47    0.33033762143616113
#>     Attrib V48    0.18173983384141615
#>     Attrib V49    1.4297241954330462
#>     Attrib V5    0.5808718670891606
#>     Attrib V50    -0.4006766698856538
#>     Attrib V51    0.4424034607478786
#>     Attrib V52    0.2787071883012143
#>     Attrib V53    0.24529420375759353
#>     Attrib V54    0.2922653240134501
#>     Attrib V55    -0.3969605695398475
#>     Attrib V56    -0.36639956650833355
#>     Attrib V57    -0.45223659312728076
#>     Attrib V58    0.10855350653585494
#>     Attrib V59    0.3799104112670277
#>     Attrib V6    0.7369282056879695
#>     Attrib V60    0.0937221294857201
#>     Attrib V7    0.2291032420718796
#>     Attrib V8    -0.2424913293468729
#>     Attrib V9    0.9589373340683793
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.49466243247523245
#>     Attrib V1    0.23643673835950677
#>     Attrib V10    0.8487138236273871
#>     Attrib V11    0.6382634594387193
#>     Attrib V12    0.3037698590634308
#>     Attrib V13    0.21438670035344293
#>     Attrib V14    -0.5198777104228748
#>     Attrib V15    -0.24831851591064064
#>     Attrib V16    -0.40920167778502664
#>     Attrib V17    -0.5317452056848816
#>     Attrib V18    -0.42556993390741715
#>     Attrib V19    0.2932946668814987
#>     Attrib V2    -0.3186769934758195
#>     Attrib V20    -0.09305061774972993
#>     Attrib V21    0.11706265339785393
#>     Attrib V22    0.21571106443508273
#>     Attrib V23    0.10524538146837363
#>     Attrib V24    0.3480466155530168
#>     Attrib V25    -0.2289401411490992
#>     Attrib V26    0.20139649968892911
#>     Attrib V27    0.6604227738009789
#>     Attrib V28    0.7690379400019799
#>     Attrib V29    0.28748087564351854
#>     Attrib V3    -0.4419061062135598
#>     Attrib V30    0.505958536721134
#>     Attrib V31    -0.36062369703759223
#>     Attrib V32    0.02510161894561094
#>     Attrib V33    -0.10835547352572045
#>     Attrib V34    -0.36900616487781907
#>     Attrib V35    -0.05298646999779534
#>     Attrib V36    -0.568314327244216
#>     Attrib V37    -0.11695985834784026
#>     Attrib V38    0.3367580736015859
#>     Attrib V39    0.09113394119574711
#>     Attrib V4    0.1696115844323795
#>     Attrib V40    -0.5515098508527055
#>     Attrib V41    0.34714908689424767
#>     Attrib V42    0.11463435390028967
#>     Attrib V43    0.2884131670658251
#>     Attrib V44    0.48461520873286573
#>     Attrib V45    0.3381567999013003
#>     Attrib V46    0.5080589228264681
#>     Attrib V47    0.20134569012582723
#>     Attrib V48    0.18672045210478835
#>     Attrib V49    1.1664254613344611
#>     Attrib V5    0.5090441673791164
#>     Attrib V50    -0.5481069892353018
#>     Attrib V51    0.36571707036534734
#>     Attrib V52    0.23951657423776207
#>     Attrib V53    0.1712755644752011
#>     Attrib V54    0.31357396324875014
#>     Attrib V55    -0.44784889193626076
#>     Attrib V56    -0.13473129732249606
#>     Attrib V57    -0.40881121719961555
#>     Attrib V58    0.10525282078193234
#>     Attrib V59    0.42885612695516456
#>     Attrib V6    0.5218750754100568
#>     Attrib V60    0.09447834344262367
#>     Attrib V7    0.11171573844360634
#>     Attrib V8    -0.39150722850837616
#>     Attrib V9    0.7447145805304847
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.12689900000938267
#>     Attrib V1    -0.2666405832049339
#>     Attrib V10    -0.5114635122484017
#>     Attrib V11    -0.3697589092319811
#>     Attrib V12    0.033504681002891064
#>     Attrib V13    -0.44394515232055853
#>     Attrib V14    0.19146490299455035
#>     Attrib V15    -0.027709093303961912
#>     Attrib V16    0.4337908821570044
#>     Attrib V17    0.4489050029240232
#>     Attrib V18    0.4364514347331492
#>     Attrib V19    -0.5707563567870518
#>     Attrib V2    0.24554732418022399
#>     Attrib V20    -0.4761741838102656
#>     Attrib V21    -0.5942864328215085
#>     Attrib V22    -0.5905509789147461
#>     Attrib V23    -0.46435164131134476
#>     Attrib V24    -0.5885733464348413
#>     Attrib V25    0.45199662218815506
#>     Attrib V26    0.5265784654827326
#>     Attrib V27    0.12629938973181806
#>     Attrib V28    0.056578306215819746
#>     Attrib V29    0.5268038492618025
#>     Attrib V3    0.007349886997182512
#>     Attrib V30    -0.2171444871439702
#>     Attrib V31    0.9138264413852025
#>     Attrib V32    -0.22852978443800676
#>     Attrib V33    -0.7105261966277829
#>     Attrib V34    0.08313132790865994
#>     Attrib V35    0.15157090647587773
#>     Attrib V36    1.0258759949220762
#>     Attrib V37    0.6657942519527766
#>     Attrib V38    -0.7234724003904015
#>     Attrib V39    -0.04616008845437541
#>     Attrib V4    -0.2518228990016596
#>     Attrib V40    0.9581751015780341
#>     Attrib V41    0.08136143658580919
#>     Attrib V42    -0.6838453333866363
#>     Attrib V43    -0.501162483222483
#>     Attrib V44    -0.4019357556627069
#>     Attrib V45    -0.2068193301895557
#>     Attrib V46    -0.2624290753876173
#>     Attrib V47    0.021964798989468286
#>     Attrib V48    0.0245768383874895
#>     Attrib V49    -1.0326774240156424
#>     Attrib V5    -0.30676541442835364
#>     Attrib V50    1.2659752995652618
#>     Attrib V51    -0.2628006072655902
#>     Attrib V52    -0.2074260891241017
#>     Attrib V53    -0.12222896018979035
#>     Attrib V54    -0.4743423553106875
#>     Attrib V55    0.6707815642275979
#>     Attrib V56    -0.40246046927982776
#>     Attrib V57    0.7135595428196589
#>     Attrib V58    -0.4308090843613741
#>     Attrib V59    -0.5273835713184373
#>     Attrib V6    0.12923780951602434
#>     Attrib V60    -0.061120765405827955
#>     Attrib V7    0.2323499942901347
#>     Attrib V8    0.5921712614678759
#>     Attrib V9    -0.8366479508395768
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.11448724270557496
#>     Attrib V1    0.28813130493977984
#>     Attrib V10    -0.07663036200007324
#>     Attrib V11    -0.12718015874739683
#>     Attrib V12    -0.12686216615084636
#>     Attrib V13    0.12695426488188818
#>     Attrib V14    0.0572081893913303
#>     Attrib V15    0.18189758678904844
#>     Attrib V16    0.0521051499395182
#>     Attrib V17    0.007982375099258926
#>     Attrib V18    -0.08379301872039586
#>     Attrib V19    0.19249498499105555
#>     Attrib V2    -0.055019279773300366
#>     Attrib V20    0.24811641877412396
#>     Attrib V21    0.182805127140396
#>     Attrib V22    0.0012489702320324508
#>     Attrib V23    -0.12239054098392863
#>     Attrib V24    0.0777884949995777
#>     Attrib V25    -0.34877928349043374
#>     Attrib V26    -0.4802846598981005
#>     Attrib V27    -0.33248973856670855
#>     Attrib V28    -0.31012935831256766
#>     Attrib V29    -0.39279775092944214
#>     Attrib V3    0.009813657076770193
#>     Attrib V30    -0.13477803994744025
#>     Attrib V31    -0.436038512881165
#>     Attrib V32    -0.12490377682546774
#>     Attrib V33    0.17014383482814535
#>     Attrib V34    0.01936881912449651
#>     Attrib V35    -5.669932437325699E-4
#>     Attrib V36    -0.29294553919424693
#>     Attrib V37    -0.05875137327121619
#>     Attrib V38    0.39752245486693455
#>     Attrib V39    0.008112099458462379
#>     Attrib V4    0.12896230320267998
#>     Attrib V40    -0.35059567395116126
#>     Attrib V41    -0.09066805103435607
#>     Attrib V42    0.2306877724508234
#>     Attrib V43    0.26774384537462237
#>     Attrib V44    0.21461058027884547
#>     Attrib V45    0.11424849389144044
#>     Attrib V46    0.07940218232894886
#>     Attrib V47    -0.12555060834306264
#>     Attrib V48    0.052599942457594265
#>     Attrib V49    0.2773162399373171
#>     Attrib V5    0.16703853938397173
#>     Attrib V50    -0.440105991230097
#>     Attrib V51    0.029885416239541964
#>     Attrib V52    0.07348671927544699
#>     Attrib V53    0.2037843285580982
#>     Attrib V54    0.3702554833996496
#>     Attrib V55    -0.19776041339526212
#>     Attrib V56    0.29547306653233724
#>     Attrib V57    -0.1189599851685109
#>     Attrib V58    0.19943243703273827
#>     Attrib V59    0.46878014361686715
#>     Attrib V6    0.008930191335368659
#>     Attrib V60    0.33751234458223084
#>     Attrib V7    0.05613469472028104
#>     Attrib V8    -0.45907203758817866
#>     Attrib V9    0.10047629872519709
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.16677040354770284
#>     Attrib V1    0.5062267873327105
#>     Attrib V10    -0.2179422855597856
#>     Attrib V11    -0.31455948804070727
#>     Attrib V12    -0.33362242403523873
#>     Attrib V13    0.20397249824939345
#>     Attrib V14    0.16415860327522996
#>     Attrib V15    0.4943838928027084
#>     Attrib V16    -0.018955840154925737
#>     Attrib V17    0.017609887235075148
#>     Attrib V18    -0.1668944951308076
#>     Attrib V19    0.3705426290323724
#>     Attrib V2    -0.18858345270900614
#>     Attrib V20    0.5134886476808949
#>     Attrib V21    0.5401289785595743
#>     Attrib V22    0.3344096619681604
#>     Attrib V23    0.13955254836270004
#>     Attrib V24    0.16774808275992376
#>     Attrib V25    -0.6474615962454545
#>     Attrib V26    -0.8348343522085797
#>     Attrib V27    -0.6196024655917911
#>     Attrib V28    -0.5518365384157989
#>     Attrib V29    -0.7422619397999488
#>     Attrib V3    0.1049443970722421
#>     Attrib V30    -0.19564561825076962
#>     Attrib V31    -0.9578722190908568
#>     Attrib V32    -0.28237585635842416
#>     Attrib V33    0.41994978531217897
#>     Attrib V34    -0.05880836019706887
#>     Attrib V35    -0.13782962646572108
#>     Attrib V36    -0.6165711976154256
#>     Attrib V37    -0.15743398071914733
#>     Attrib V38    0.7533645346443321
#>     Attrib V39    -0.05257259778572868
#>     Attrib V4    0.2467594290630121
#>     Attrib V40    -0.8084288632796357
#>     Attrib V41    -0.1827010135560623
#>     Attrib V42    0.5873437647305274
#>     Attrib V43    0.5314004058765381
#>     Attrib V44    0.4359856875703289
#>     Attrib V45    0.3326728487299892
#>     Attrib V46    0.09352206918713961
#>     Attrib V47    -0.13282199009168547
#>     Attrib V48    -0.03540818236694818
#>     Attrib V49    0.37331607815625656
#>     Attrib V5    0.2735452259165437
#>     Attrib V50    -0.8420204985088703
#>     Attrib V51    0.07390154291039978
#>     Attrib V52    0.17771137962298184
#>     Attrib V53    0.3915334161944205
#>     Attrib V54    0.6761954517737768
#>     Attrib V55    -0.5051057275826752
#>     Attrib V56    0.518909025484074
#>     Attrib V57    -0.2130163597271408
#>     Attrib V58    0.32099628728649
#>     Attrib V59    0.8234255095763658
#>     Attrib V6    -0.0832142064965944
#>     Attrib V60    0.5288096153250078
#>     Attrib V7    0.11689150074593213
#>     Attrib V8    -0.675479959253788
#>     Attrib V9    0.24804555630707634
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.28235548957336154
#>     Attrib V1    -0.17049065630411514
#>     Attrib V10    -0.3500284650559663
#>     Attrib V11    -0.2333317390953347
#>     Attrib V12    -0.002728482462918096
#>     Attrib V13    -0.2830971676411847
#>     Attrib V14    0.26217132134727195
#>     Attrib V15    0.11301370441201118
#>     Attrib V16    0.29543307775569083
#>     Attrib V17    0.39785396907179443
#>     Attrib V18    0.3690326369160058
#>     Attrib V19    -0.12292356850445747
#>     Attrib V2    0.2238233234098521
#>     Attrib V20    -7.403220941951185E-4
#>     Attrib V21    -0.11203809157368493
#>     Attrib V22    -0.21595286165797983
#>     Attrib V23    -0.1843627187977245
#>     Attrib V24    -0.3250266026313743
#>     Attrib V25    0.39914595871083747
#>     Attrib V26    0.34742740932010524
#>     Attrib V27    -0.06550598477921006
#>     Attrib V28    -0.10011774450654015
#>     Attrib V29    0.17462244987599654
#>     Attrib V3    0.1751441775569391
#>     Attrib V30    -0.23399193536673998
#>     Attrib V31    0.33914157214620533
#>     Attrib V32    -0.2225433206998914
#>     Attrib V33    -0.4619539347586144
#>     Attrib V34    0.04447487639925499
#>     Attrib V35    0.03464400552298371
#>     Attrib V36    0.6135215976656079
#>     Attrib V37    0.2556511642124262
#>     Attrib V38    -0.3839115523099853
#>     Attrib V39    -0.04175275253206967
#>     Attrib V4    -0.020118589420364652
#>     Attrib V40    0.5893812958298089
#>     Attrib V41    -0.13608539385154766
#>     Attrib V42    -0.33489744779691877
#>     Attrib V43    -0.212806620469308
#>     Attrib V44    -0.2860588006424545
#>     Attrib V45    -0.23202349234125308
#>     Attrib V46    -0.1973578812417971
#>     Attrib V47    0.06423630261060968
#>     Attrib V48    -0.014214382044519096
#>     Attrib V49    -0.7240998025515587
#>     Attrib V5    -0.1886045949445034
#>     Attrib V50    0.7367074073185053
#>     Attrib V51    -0.15320971928357033
#>     Attrib V52    -0.0789807868100716
#>     Attrib V53    -0.020500000515704903
#>     Attrib V54    -0.21604903167983333
#>     Attrib V55    0.4735558056385271
#>     Attrib V56    -0.07930395093433369
#>     Attrib V57    0.4648781072127387
#>     Attrib V58    -0.18723777376922843
#>     Attrib V59    -0.31678976175840023
#>     Attrib V6    -0.09718186366734821
#>     Attrib V60    -0.014630279838187071
#>     Attrib V7    0.09248283928849066
#>     Attrib V8    0.426734381278706
#>     Attrib V9    -0.434533064127155
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.41925718562021674
#>     Attrib V1    -0.18195281033037233
#>     Attrib V10    1.8639434998410598
#>     Attrib V11    1.529593955383904
#>     Attrib V12    0.6606660762687251
#>     Attrib V13    0.28098574618362676
#>     Attrib V14    -1.109231001640038
#>     Attrib V15    -0.9846256596148224
#>     Attrib V16    -0.7219116385609791
#>     Attrib V17    -0.7402221482728462
#>     Attrib V18    -0.3884808085064746
#>     Attrib V19    0.8543449390920469
#>     Attrib V2    -0.5663723409296385
#>     Attrib V20    0.10253446206640267
#>     Attrib V21    0.44092007768402086
#>     Attrib V22    0.807177512968732
#>     Attrib V23    0.8885376411208064
#>     Attrib V24    0.8337641816758553
#>     Attrib V25    -0.1400397344220909
#>     Attrib V26    0.6339141959765303
#>     Attrib V27    1.238359526072911
#>     Attrib V28    1.2457586758554067
#>     Attrib V29    0.2191124174091618
#>     Attrib V3    -0.47719339370461544
#>     Attrib V30    0.6702702220095321
#>     Attrib V31    -0.5827530472664603
#>     Attrib V32    0.16972126462670528
#>     Attrib V33    -0.19517613771366188
#>     Attrib V34    -0.3245184378181914
#>     Attrib V35    0.16404373669286296
#>     Attrib V36    -0.9482506177032111
#>     Attrib V37    -0.5444044603567585
#>     Attrib V38    0.09878355538402488
#>     Attrib V39    0.32418621797302705
#>     Attrib V4    0.3623498749694072
#>     Attrib V40    -0.4235417060143357
#>     Attrib V41    0.8696195611670128
#>     Attrib V42    0.17360655815070217
#>     Attrib V43    0.3888469463849817
#>     Attrib V44    0.644355527218324
#>     Attrib V45    0.4188873871736348
#>     Attrib V46    0.9641515829924568
#>     Attrib V47    0.549482068462804
#>     Attrib V48    0.18760649634364582
#>     Attrib V49    1.9096760302932878
#>     Attrib V5    0.6937758705710185
#>     Attrib V50    -0.4440022679778839
#>     Attrib V51    0.7298077850694575
#>     Attrib V52    0.49489629004984603
#>     Attrib V53    0.11207613007597772
#>     Attrib V54    0.0035020023928552077
#>     Attrib V55    -0.5613799672003189
#>     Attrib V56    -0.39166036660348635
#>     Attrib V57    -0.6660907803304325
#>     Attrib V58    0.2077200628004341
#>     Attrib V59    0.1040746484283786
#>     Attrib V6    0.6696979877851966
#>     Attrib V60    -0.18494951871135656
#>     Attrib V7    -0.01592459469611391
#>     Attrib V8    -0.07627804353121827
#>     Attrib V9    1.6428058018853067
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.16802821603035256
#>     Attrib V1    -0.09208681790909516
#>     Attrib V10    -0.14674468034962673
#>     Attrib V11    -0.1483404731041237
#>     Attrib V12    -0.04806017625893603
#>     Attrib V13    -0.1549476232468229
#>     Attrib V14    0.12317405111163147
#>     Attrib V15    0.008491567141440483
#>     Attrib V16    0.12078946875215822
#>     Attrib V17    0.18601094581585936
#>     Attrib V18    0.13220147082847036
#>     Attrib V19    0.016463335356093695
#>     Attrib V2    0.09376020342767681
#>     Attrib V20    0.020786062306597273
#>     Attrib V21    0.011103649612223437
#>     Attrib V22    -0.040554693508998714
#>     Attrib V23    -0.043903935942934944
#>     Attrib V24    -0.08479805213317987
#>     Attrib V25    0.18851925040505524
#>     Attrib V26    0.1024935298038744
#>     Attrib V27    0.007321042563574735
#>     Attrib V28    -0.036027302516573816
#>     Attrib V29    0.034695945782728756
#>     Attrib V3    0.05016908132356145
#>     Attrib V30    -0.148017485635107
#>     Attrib V31    0.03831965134324893
#>     Attrib V32    -0.15526060435726233
#>     Attrib V33    -0.1343691043095596
#>     Attrib V34    -0.012613812055368776
#>     Attrib V35    0.07043265618976513
#>     Attrib V36    0.2770574547494772
#>     Attrib V37    0.18945939359181507
#>     Attrib V38    -0.17281439413709085
#>     Attrib V39    -0.022877566962172864
#>     Attrib V4    0.019029486543513788
#>     Attrib V40    0.19870438243586075
#>     Attrib V41    -0.06283011320270884
#>     Attrib V42    -0.06123506050075123
#>     Attrib V43    -0.07765544062920929
#>     Attrib V44    -0.10600483309250432
#>     Attrib V45    -0.09443426094942227
#>     Attrib V46    -0.13356405160263723
#>     Attrib V47    -0.047372656561572885
#>     Attrib V48    -4.3956179127685425E-4
#>     Attrib V49    -0.3229420181906241
#>     Attrib V5    -0.08406091168637374
#>     Attrib V50    0.20576633661500407
#>     Attrib V51    -0.1233888394461537
#>     Attrib V52    -0.1118758723008746
#>     Attrib V53    -0.035180372729901335
#>     Attrib V54    -0.09946538625226205
#>     Attrib V55    0.1374245834250801
#>     Attrib V56    -0.013083301108446094
#>     Attrib V57    0.18432305226363155
#>     Attrib V58    -0.06555429002035786
#>     Attrib V59    -0.1268889938170126
#>     Attrib V6    -0.010082189059437077
#>     Attrib V60    0.03429688529146191
#>     Attrib V7    0.0012221059695685557
#>     Attrib V8    0.18480096424883852
#>     Attrib V9    -0.17971869480896352
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5752425285255786
#>     Attrib V1    0.2698339771143581
#>     Attrib V10    1.0477512444736716
#>     Attrib V11    0.886876702511533
#>     Attrib V12    0.5175524637218518
#>     Attrib V13    0.38866569308553955
#>     Attrib V14    -0.63340906268113
#>     Attrib V15    -0.3356884941478448
#>     Attrib V16    -0.4938879880010194
#>     Attrib V17    -0.655808798744946
#>     Attrib V18    -0.45100509758224394
#>     Attrib V19    0.20548048743910163
#>     Attrib V2    -0.29709727674693726
#>     Attrib V20    -0.26610803898649127
#>     Attrib V21    0.004273695806506322
#>     Attrib V22    0.1275860579975285
#>     Attrib V23    -0.018148221458467804
#>     Attrib V24    0.3952823823544013
#>     Attrib V25    -0.04801369100653874
#>     Attrib V26    0.4432764275677802
#>     Attrib V27    0.6811060532826378
#>     Attrib V28    0.70623020749014
#>     Attrib V29    0.08692809276032214
#>     Attrib V3    -0.4369231970156336
#>     Attrib V30    0.3597648526125035
#>     Attrib V31    -0.303082741345872
#>     Attrib V32    0.11005891576684051
#>     Attrib V33    -0.09849906382558268
#>     Attrib V34    -0.19505884140603177
#>     Attrib V35    0.10495213864145705
#>     Attrib V36    -0.5705026120029306
#>     Attrib V37    -0.15982774767654387
#>     Attrib V38    0.2577326639527126
#>     Attrib V39    0.13379267529586875
#>     Attrib V4    0.19089620087478318
#>     Attrib V40    -0.5735916364362551
#>     Attrib V41    0.35538932868498685
#>     Attrib V42    0.03539181107358523
#>     Attrib V43    0.14403337624386184
#>     Attrib V44    0.3610453292694324
#>     Attrib V45    0.3730966283620024
#>     Attrib V46    0.5119506547951576
#>     Attrib V47    0.21020132364526914
#>     Attrib V48    0.21493738248502398
#>     Attrib V49    1.1765315891426547
#>     Attrib V5    0.46169310812727443
#>     Attrib V50    -0.4424580749182291
#>     Attrib V51    0.3646560227888075
#>     Attrib V52    0.21256841472515445
#>     Attrib V53    0.20082574553462643
#>     Attrib V54    0.32996619791092546
#>     Attrib V55    -0.36728770481870054
#>     Attrib V56    -0.23589392986131769
#>     Attrib V57    -0.4243988268014067
#>     Attrib V58    0.08640121285224338
#>     Attrib V59    0.3833435645797583
#>     Attrib V6    0.621892007277111
#>     Attrib V60    0.09955443119576451
#>     Attrib V7    0.13158102780063677
#>     Attrib V8    -0.2949956876945658
#>     Attrib V9    0.835054877704261
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.45250654038212806
#>     Attrib V1    -0.17924312813837437
#>     Attrib V10    -0.9772288859346855
#>     Attrib V11    -1.7129705342303159
#>     Attrib V12    -1.2043788669625326
#>     Attrib V13    -0.8115543373799877
#>     Attrib V14    0.4686837571025456
#>     Attrib V15    -0.4429041053360379
#>     Attrib V16    -0.41647421301772247
#>     Attrib V17    -0.8217626848568008
#>     Attrib V18    -0.3245882198932905
#>     Attrib V19    -1.4528856140566428
#>     Attrib V2    0.4278915679629961
#>     Attrib V20    -1.1830855423052635
#>     Attrib V21    -1.3443469824187717
#>     Attrib V22    -1.1622069185148618
#>     Attrib V23    -0.39877909575141707
#>     Attrib V24    -0.44209415414386116
#>     Attrib V25    0.1416617493147807
#>     Attrib V26    -0.5851392353601703
#>     Attrib V27    -0.3510410880136169
#>     Attrib V28    0.5254208269678053
#>     Attrib V29    0.4360690582466141
#>     Attrib V3    0.44670885342798455
#>     Attrib V30    -0.6176840838183012
#>     Attrib V31    0.8753737347677668
#>     Attrib V32    0.4388747579035609
#>     Attrib V33    -0.1323735715133015
#>     Attrib V34    -0.40830465963700263
#>     Attrib V35    -0.005223745132306564
#>     Attrib V36    1.382243360859873
#>     Attrib V37    0.2151495389341266
#>     Attrib V38    -0.2503378557654109
#>     Attrib V39    0.06550833307474829
#>     Attrib V4    -0.011815655681118604
#>     Attrib V40    0.753035118282562
#>     Attrib V41    -0.09847183237216173
#>     Attrib V42    -0.2369812413161878
#>     Attrib V43    -0.13530926474708455
#>     Attrib V44    -0.22021826489562346
#>     Attrib V45    -0.44993048199259095
#>     Attrib V46    -0.6934572649029738
#>     Attrib V47    -0.3967112856677757
#>     Attrib V48    -0.044911991375946494
#>     Attrib V49    -0.8291040590907669
#>     Attrib V5    -0.7149916483609925
#>     Attrib V50    1.2982163011271104
#>     Attrib V51    -0.291663275947245
#>     Attrib V52    -0.14802114205868827
#>     Attrib V53    0.04011905493809141
#>     Attrib V54    -0.2124904203347219
#>     Attrib V55    0.547139074023766
#>     Attrib V56    -0.13867396380928937
#>     Attrib V57    0.6766531049940716
#>     Attrib V58    0.23900262418273643
#>     Attrib V59    -0.39892160307537444
#>     Attrib V6    -0.0798243510090248
#>     Attrib V60    0.4946035441197879
#>     Attrib V7    0.8699165679489638
#>     Attrib V8    1.1050407432591052
#>     Attrib V9    -0.8103530293184665
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.31330531046100196
#>     Attrib V1    0.12595920992318524
#>     Attrib V10    0.1839348294844286
#>     Attrib V11    0.2025402232756406
#>     Attrib V12    0.08341538012636723
#>     Attrib V13    0.20437639162290647
#>     Attrib V14    -0.14013922584229532
#>     Attrib V15    -0.02167519568616589
#>     Attrib V16    -0.23620313951675687
#>     Attrib V17    -0.2739282537773154
#>     Attrib V18    -0.300387889769026
#>     Attrib V19    0.06805829788433448
#>     Attrib V2    -0.18700076029310206
#>     Attrib V20    0.03468331535057559
#>     Attrib V21    0.02314365467330576
#>     Attrib V22    -0.02796992317122641
#>     Attrib V23    -0.15952916131749104
#>     Attrib V24    0.15501571336374984
#>     Attrib V25    -0.13805929231615913
#>     Attrib V26    -0.1392794699948917
#>     Attrib V27    0.12658509425088865
#>     Attrib V28    0.21231559818400833
#>     Attrib V29    -0.053852212652242624
#>     Attrib V3    -0.14625802915773115
#>     Attrib V30    0.06093364006850482
#>     Attrib V31    -0.333128903050948
#>     Attrib V32    0.0202190021905833
#>     Attrib V33    0.14354175705818686
#>     Attrib V34    -0.04624340857110889
#>     Attrib V35    0.01602266984144698
#>     Attrib V36    -0.3890063159743072
#>     Attrib V37    -0.07735586893157012
#>     Attrib V38    0.3130050468898318
#>     Attrib V39    0.03656749383675961
#>     Attrib V4    0.020191860340688275
#>     Attrib V40    -0.439288077401639
#>     Attrib V41    0.03125831301191255
#>     Attrib V42    0.08634109152138887
#>     Attrib V43    0.1563430923732784
#>     Attrib V44    0.19186007388562043
#>     Attrib V45    0.2570824102343558
#>     Attrib V46    0.17417256917172327
#>     Attrib V47    0.026121650400150086
#>     Attrib V48    0.1027387238953375
#>     Attrib V49    0.5529577024702214
#>     Attrib V5    0.14129922940008138
#>     Attrib V50    -0.459048675716579
#>     Attrib V51    0.0969411152436644
#>     Attrib V52    0.11636615568471197
#>     Attrib V53    0.12053539910597241
#>     Attrib V54    0.2362458822371696
#>     Attrib V55    -0.24526721123158468
#>     Attrib V56    0.09199042353106804
#>     Attrib V57    -0.2533843742690313
#>     Attrib V58    0.030656442924032138
#>     Attrib V59    0.293009457999901
#>     Attrib V6    0.21154674010881375
#>     Attrib V60    0.08984855260923218
#>     Attrib V7    0.0438605152128303
#>     Attrib V8    -0.3810193857592395
#>     Attrib V9    0.23893446009890457
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.04483902218366895
#>     Attrib V1    0.17846097917632053
#>     Attrib V10    0.08646298739522544
#>     Attrib V11    0.025823643985032792
#>     Attrib V12    0.04039354661785241
#>     Attrib V13    0.12386370392746288
#>     Attrib V14    0.018787065381054395
#>     Attrib V15    0.06798848585543779
#>     Attrib V16    -0.02084474932073795
#>     Attrib V17    -0.00939140466726526
#>     Attrib V18    -0.09364647970715048
#>     Attrib V19    -0.005643352792709175
#>     Attrib V2    0.06039571911909407
#>     Attrib V20    -0.04155991828184937
#>     Attrib V21    -0.02300500112240751
#>     Attrib V22    -0.11740943874311553
#>     Attrib V23    -0.12397919646731387
#>     Attrib V24    -0.04839510553654684
#>     Attrib V25    -0.08132369935325501
#>     Attrib V26    -0.09981742694547259
#>     Attrib V27    -0.07867482592427674
#>     Attrib V28    -0.006826670299522668
#>     Attrib V29    -0.1658964408785272
#>     Attrib V3    0.06050044383424564
#>     Attrib V30    0.003674214012128236
#>     Attrib V31    -0.08863399647889182
#>     Attrib V32    -0.04049545283764884
#>     Attrib V33    0.03418405507760034
#>     Attrib V34    0.02158195566856282
#>     Attrib V35    0.10467311282984929
#>     Attrib V36    -0.024450603666238028
#>     Attrib V37    0.11190934553054416
#>     Attrib V38    0.1921695658508554
#>     Attrib V39    0.14695047955946938
#>     Attrib V4    0.16523583354909177
#>     Attrib V40    -0.059576106155112746
#>     Attrib V41    0.052223638720121625
#>     Attrib V42    0.1378510631607518
#>     Attrib V43    0.08025004409048792
#>     Attrib V44    0.05847752401980576
#>     Attrib V45    0.12247048236261934
#>     Attrib V46    0.08453870113517689
#>     Attrib V47    0.009935596353063899
#>     Attrib V48    0.0957822441659828
#>     Attrib V49    0.14642763498787062
#>     Attrib V5    0.09823974307014519
#>     Attrib V50    -0.0907834892290765
#>     Attrib V51    0.07466340859738908
#>     Attrib V52    0.096384404979114
#>     Attrib V53    0.14296236767386827
#>     Attrib V54    0.1530035651955831
#>     Attrib V55    -0.007608072376800368
#>     Attrib V56    0.18698154303650472
#>     Attrib V57    0.009324655205321934
#>     Attrib V58    0.15401474918732028
#>     Attrib V59    0.2914261712973789
#>     Attrib V6    0.0674978747176022
#>     Attrib V60    0.23138220437945856
#>     Attrib V7    0.03130958749516068
#>     Attrib V8    -0.09542511656845956
#>     Attrib V9    0.0741713374487123
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.06295486066207512
#>     Attrib V1    0.29023040681338885
#>     Attrib V10    -0.132011121603483
#>     Attrib V11    -0.14745949719449344
#>     Attrib V12    -0.2112592017793932
#>     Attrib V13    0.18142477162954043
#>     Attrib V14    0.10104659719087415
#>     Attrib V15    0.281155716070836
#>     Attrib V16    0.005019047939421348
#>     Attrib V17    0.03572323569032001
#>     Attrib V18    -0.07368039961838822
#>     Attrib V19    0.23737613847722985
#>     Attrib V2    -0.030859269782579583
#>     Attrib V20    0.33477446587424065
#>     Attrib V21    0.20327070824212604
#>     Attrib V22    0.11544979972037063
#>     Attrib V23    0.025190527452004334
#>     Attrib V24    0.12823958863122562
#>     Attrib V25    -0.39672822019980764
#>     Attrib V26    -0.5043872367811811
#>     Attrib V27    -0.39822301461444437
#>     Attrib V28    -0.3982049125176626
#>     Attrib V29    -0.5487175096434777
#>     Attrib V3    0.024823481251477153
#>     Attrib V30    -0.18385023841355044
#>     Attrib V31    -0.5523716840801915
#>     Attrib V32    -0.17070123066100593
#>     Attrib V33    0.29086619866295205
#>     Attrib V34    0.08438324587078982
#>     Attrib V35    0.03244381846319257
#>     Attrib V36    -0.31356746849975414
#>     Attrib V37    -0.023529946210710757
#>     Attrib V38    0.5488027315899395
#>     Attrib V39    -0.0070388554593934305
#>     Attrib V4    0.16142594920556613
#>     Attrib V40    -0.44299758636077485
#>     Attrib V41    -0.11387760574449894
#>     Attrib V42    0.2818640337667403
#>     Attrib V43    0.2736622237091771
#>     Attrib V44    0.2662567097478865
#>     Attrib V45    0.16599296421677592
#>     Attrib V46    0.05705183682517014
#>     Attrib V47    -0.10292921179014798
#>     Attrib V48    0.004832051676167938
#>     Attrib V49    0.2432454526101071
#>     Attrib V5    0.15580779400291056
#>     Attrib V50    -0.5141716903432193
#>     Attrib V51    0.03837925434946297
#>     Attrib V52    0.09545906129924847
#>     Attrib V53    0.25386821027894574
#>     Attrib V54    0.45358651477392753
#>     Attrib V55    -0.20504749656989318
#>     Attrib V56    0.27150036061073707
#>     Attrib V57    -0.1287184577200077
#>     Attrib V58    0.14263447462980752
#>     Attrib V59    0.4905596552000478
#>     Attrib V6    -0.02989660654334732
#>     Attrib V60    0.3517576265263868
#>     Attrib V7    0.06616544752720703
#>     Attrib V8    -0.42252155429646393
#>     Attrib V9    0.1547617164613609
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    0.08648820499951124
#>     Attrib V1    0.22227265790658043
#>     Attrib V10    -0.10368069636714197
#>     Attrib V11    -0.09864646998483846
#>     Attrib V12    -0.12560167168605804
#>     Attrib V13    0.08447261776400332
#>     Attrib V14    0.06141734954521604
#>     Attrib V15    0.17084437430821253
#>     Attrib V16    0.017852503309145815
#>     Attrib V17    -0.03867652509153807
#>     Attrib V18    -0.025121597049241648
#>     Attrib V19    0.15068645027792085
#>     Attrib V2    -0.0818561246518603
#>     Attrib V20    0.213983764104562
#>     Attrib V21    0.18723919403784514
#>     Attrib V22    0.020696303806677478
#>     Attrib V23    -0.04435051668224458
#>     Attrib V24    0.008320301591925535
#>     Attrib V25    -0.35005115451977625
#>     Attrib V26    -0.3991849827561023
#>     Attrib V27    -0.2269295667314316
#>     Attrib V28    -0.1241370097061797
#>     Attrib V29    -0.27702624909174267
#>     Attrib V3    0.049166345756029475
#>     Attrib V30    -0.011427069326463552
#>     Attrib V31    -0.4454472031538259
#>     Attrib V32    -0.12058168678013363
#>     Attrib V33    0.18825591232737007
#>     Attrib V34    0.026257519555604496
#>     Attrib V35    0.0203310202057318
#>     Attrib V36    -0.1615831458895387
#>     Attrib V37    0.0038867046454767037
#>     Attrib V38    0.36297006617079025
#>     Attrib V39    0.07174402849101409
#>     Attrib V4    0.09111041299542105
#>     Attrib V40    -0.33303759621083995
#>     Attrib V41    -0.06183811801420195
#>     Attrib V42    0.24072974364215885
#>     Attrib V43    0.14494252214680287
#>     Attrib V44    0.23332395701895065
#>     Attrib V45    0.2242922142397744
#>     Attrib V46    0.09284768007942681
#>     Attrib V47    -0.06201393788179934
#>     Attrib V48    -0.014730991019363256
#>     Attrib V49    0.2950457133443768
#>     Attrib V5    0.1458986505930534
#>     Attrib V50    -0.38985429458694315
#>     Attrib V51    0.04902738312200811
#>     Attrib V52    0.08902670850615058
#>     Attrib V53    0.16380833568847644
#>     Attrib V54    0.2233567771097355
#>     Attrib V55    -0.2016952789755743
#>     Attrib V56    0.1829911749383339
#>     Attrib V57    -0.1279127944714566
#>     Attrib V58    0.16509597704991316
#>     Attrib V59    0.3544827793391617
#>     Attrib V6    0.029742257241539432
#>     Attrib V60    0.2316488950807408
#>     Attrib V7    0.049371883702683174
#>     Attrib V8    -0.28774261844021104
#>     Attrib V9    0.12040079026431083
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
