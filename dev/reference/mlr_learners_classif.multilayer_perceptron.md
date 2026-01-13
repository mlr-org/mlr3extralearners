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
#>     Threshold    -0.3968950522616922
#>     Node 2    1.966098584249153
#>     Node 3    1.5919617005814295
#>     Node 4    0.09844375375708156
#>     Node 5    -2.370687324892157
#>     Node 6    1.2537657994714506
#>     Node 7    3.3514233059920473
#>     Node 8    0.3485508624400072
#>     Node 9    3.2294276144532716
#>     Node 10    -1.7552836130290015
#>     Node 11    0.7215533685143257
#>     Node 12    1.5686936923252504
#>     Node 13    -0.7708807375758686
#>     Node 14    1.4939152521046788
#>     Node 15    -4.1401324389535725
#>     Node 16    -0.9273090256818408
#>     Node 17    -0.32406759703308735
#>     Node 18    -1.243177176155358
#>     Node 19    1.7006441197039377
#>     Node 20    2.3333712621681584
#>     Node 21    -2.215765728185263
#>     Node 22    1.3820907179494657
#>     Node 23    1.9062609415035938
#>     Node 24    -1.23895579132775
#>     Node 25    3.9631528210481246
#>     Node 26    -0.18406908271199537
#>     Node 27    1.3702802983708828
#>     Node 28    -3.0909247255633083
#>     Node 29    0.9795753985567297
#>     Node 30    0.1757355919343986
#>     Node 31    1.3180396963248553
#>     Node 32    0.27292430734252643
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.39310128558769575
#>     Node 2    -1.981000442879109
#>     Node 3    -1.5589656871561863
#>     Node 4    -0.056440838948840485
#>     Node 5    2.375032630492173
#>     Node 6    -1.2309565192377487
#>     Node 7    -3.3427057245339746
#>     Node 8    -0.37851906810096536
#>     Node 9    -3.2370108166419644
#>     Node 10    1.6849483879311402
#>     Node 11    -0.6873940328473801
#>     Node 12    -1.6283592118269987
#>     Node 13    0.8158075729017482
#>     Node 14    -1.4421427966692486
#>     Node 15    4.154148102016295
#>     Node 16    0.9025161514887494
#>     Node 17    0.3518728554623255
#>     Node 18    1.2825139957253364
#>     Node 19    -1.6885998919025644
#>     Node 20    -2.3149342680506098
#>     Node 21    2.2606723127730617
#>     Node 22    -1.428235738766881
#>     Node 23    -1.9381372988243095
#>     Node 24    1.2170984331026578
#>     Node 25    -3.9586282326526128
#>     Node 26    0.09880345741935796
#>     Node 27    -1.3997700040367065
#>     Node 28    3.051463662500554
#>     Node 29    -1.0108717835989671
#>     Node 30    -0.096367955756117
#>     Node 31    -1.26615334202157
#>     Node 32    -0.28766198399167336
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.41543500588724896
#>     Attrib V1    0.3145791686973221
#>     Attrib V10    -0.14720008890738345
#>     Attrib V11    0.2755481760589967
#>     Attrib V12    0.558139244476728
#>     Attrib V13    0.3433415504009841
#>     Attrib V14    -0.10906394153619611
#>     Attrib V15    -0.2950949146720405
#>     Attrib V16    -0.14272815821081816
#>     Attrib V17    -0.047116789970095906
#>     Attrib V18    0.10881873380098495
#>     Attrib V19    0.4470723715759227
#>     Attrib V2    0.16272272082308142
#>     Attrib V20    0.47590164770073573
#>     Attrib V21    0.38830258055239997
#>     Attrib V22    0.6983546708755827
#>     Attrib V23    0.23045902271057198
#>     Attrib V24    -0.24685342379595418
#>     Attrib V25    -0.6072458307916383
#>     Attrib V26    -0.5871861140706692
#>     Attrib V27    0.08653468124873576
#>     Attrib V28    1.0929729491115874
#>     Attrib V29    0.7216874196023819
#>     Attrib V3    -0.22972077887200518
#>     Attrib V30    0.4669929606808974
#>     Attrib V31    -0.9136123178985086
#>     Attrib V32    -0.3305176129191658
#>     Attrib V33    -0.1917153485036967
#>     Attrib V34    -0.576445216842813
#>     Attrib V35    -0.20791507523744066
#>     Attrib V36    -0.6634074086576276
#>     Attrib V37    -0.2216067761582966
#>     Attrib V38    0.47990282767238335
#>     Attrib V39    0.2938416418961256
#>     Attrib V4    0.12378829496444634
#>     Attrib V40    -0.34562739820382327
#>     Attrib V41    0.3652940626788064
#>     Attrib V42    0.35751671635142385
#>     Attrib V43    0.27492624131441723
#>     Attrib V44    0.4286833116043811
#>     Attrib V45    0.03449822192502906
#>     Attrib V46    -0.01911708640467313
#>     Attrib V47    -0.006593013660107624
#>     Attrib V48    0.49381567891592165
#>     Attrib V49    0.6443567716819633
#>     Attrib V5    0.6558840340687244
#>     Attrib V50    -0.978750312427249
#>     Attrib V51    0.3784869744821697
#>     Attrib V52    0.7222846131876217
#>     Attrib V53    0.03774625805930701
#>     Attrib V54    0.6580758961612696
#>     Attrib V55    -0.7706983957174857
#>     Attrib V56    0.07473649881470894
#>     Attrib V57    8.901188520068797E-4
#>     Attrib V58    -0.127271853341862
#>     Attrib V59    0.8046813205614811
#>     Attrib V6    -0.05728049672928844
#>     Attrib V60    0.31442096501682004
#>     Attrib V7    -0.685863686418447
#>     Attrib V8    -0.7506718544672314
#>     Attrib V9    0.5493532034381671
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.08229176541833563
#>     Attrib V1    0.3467206404892165
#>     Attrib V10    -0.30182624099032385
#>     Attrib V11    -0.10194554888529621
#>     Attrib V12    0.0694338426808622
#>     Attrib V13    0.0946200654314154
#>     Attrib V14    -0.22026018683155796
#>     Attrib V15    -0.0024597511693355114
#>     Attrib V16    0.19290119328446867
#>     Attrib V17    0.27447496840409347
#>     Attrib V18    0.03703981084544978
#>     Attrib V19    0.3254357353737005
#>     Attrib V2    0.25425132679975204
#>     Attrib V20    0.5486298333715127
#>     Attrib V21    0.4511508237025739
#>     Attrib V22    0.6858210020158584
#>     Attrib V23    0.1921849005743048
#>     Attrib V24    -0.12175511897691235
#>     Attrib V25    -0.3181182943585299
#>     Attrib V26    -0.6670302093163869
#>     Attrib V27    -0.5832996481671581
#>     Attrib V28    -0.049224660337556084
#>     Attrib V29    -0.41002668362093936
#>     Attrib V3    0.05872392860845061
#>     Attrib V30    0.08171614855604274
#>     Attrib V31    -0.5547042412368052
#>     Attrib V32    -0.05444446493122373
#>     Attrib V33    0.18506989869696708
#>     Attrib V34    -0.39333772301925796
#>     Attrib V35    -0.41782008407694576
#>     Attrib V36    -0.6604602367203314
#>     Attrib V37    -0.4275036246191648
#>     Attrib V38    0.24953983688919823
#>     Attrib V39    0.1233340466529875
#>     Attrib V4    0.230023019334387
#>     Attrib V40    -0.35753260333228204
#>     Attrib V41    0.08064742986027106
#>     Attrib V42    0.4317742248255145
#>     Attrib V43    0.17958193197439665
#>     Attrib V44    0.2586019250578659
#>     Attrib V45    0.1251493507968341
#>     Attrib V46    0.049991341531332424
#>     Attrib V47    -0.027778202992371177
#>     Attrib V48    0.2336793976843195
#>     Attrib V49    0.3713258079897496
#>     Attrib V5    0.3972623725638747
#>     Attrib V50    -0.6094155522230141
#>     Attrib V51    0.11621004351320309
#>     Attrib V52    0.37901819877289905
#>     Attrib V53    -0.02183269584017374
#>     Attrib V54    0.5090185347379343
#>     Attrib V55    -0.4426250702124737
#>     Attrib V56    0.49115230432807633
#>     Attrib V57    0.26754497548799033
#>     Attrib V58    0.08582467727034485
#>     Attrib V59    0.7302061013456069
#>     Attrib V6    -0.10058114940312825
#>     Attrib V60    0.2808740113593156
#>     Attrib V7    -0.199575229675205
#>     Attrib V8    -0.4492133675795299
#>     Attrib V9    0.3638878077800517
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.172178268879657
#>     Attrib V1    0.035413902412526226
#>     Attrib V10    0.033371996947953786
#>     Attrib V11    0.04194742285316686
#>     Attrib V12    0.04779495266760527
#>     Attrib V13    0.08241608257794934
#>     Attrib V14    0.08564221231965846
#>     Attrib V15    0.0788515852076659
#>     Attrib V16    0.014418212688672955
#>     Attrib V17    0.03210273913079642
#>     Attrib V18    -0.009654012695539484
#>     Attrib V19    0.00881562715515782
#>     Attrib V2    0.07118198976300659
#>     Attrib V20    -0.00417572721522787
#>     Attrib V21    0.012465141342418341
#>     Attrib V22    -0.03904193816291401
#>     Attrib V23    -0.06785628297709655
#>     Attrib V24    -0.10543807385745295
#>     Attrib V25    -0.08741322608683741
#>     Attrib V26    -0.0657690907007219
#>     Attrib V27    -0.07877560632236963
#>     Attrib V28    0.03366906511458073
#>     Attrib V29    0.016573964671369394
#>     Attrib V3    0.11891326870950661
#>     Attrib V30    0.012352169141598443
#>     Attrib V31    -0.028716250193240277
#>     Attrib V32    -0.01754697810037881
#>     Attrib V33    0.014936274891301492
#>     Attrib V34    -0.004958387653497092
#>     Attrib V35    0.023232751361694545
#>     Attrib V36    -0.0076556722093981695
#>     Attrib V37    0.010034906500881942
#>     Attrib V38    0.01441443579064937
#>     Attrib V39    0.07094846285544405
#>     Attrib V4    0.08521825148971589
#>     Attrib V40    0.04271389729210024
#>     Attrib V41    0.030603551783288434
#>     Attrib V42    0.09225986618243985
#>     Attrib V43    0.02169105680153292
#>     Attrib V44    0.0722161106208486
#>     Attrib V45    0.12277438422379364
#>     Attrib V46    0.02321547860624432
#>     Attrib V47    0.042846118943618575
#>     Attrib V48    0.1060472012341646
#>     Attrib V49    0.10541687970923563
#>     Attrib V5    0.1451386809190829
#>     Attrib V50    0.047624922242023394
#>     Attrib V51    0.10559440940297336
#>     Attrib V52    0.06367066052956633
#>     Attrib V53    0.08526071213883414
#>     Attrib V54    0.033548420113734
#>     Attrib V55    0.03645324519138885
#>     Attrib V56    0.12035710625290436
#>     Attrib V57    0.12875347053376418
#>     Attrib V58    0.06365134576945145
#>     Attrib V59    0.12376736972881713
#>     Attrib V6    -0.012847651006935546
#>     Attrib V60    0.09626200352061179
#>     Attrib V7    -0.02462182619185858
#>     Attrib V8    -0.019487668074276213
#>     Attrib V9    0.10638806965034821
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.17821900897814796
#>     Attrib V1    -0.27701596952155766
#>     Attrib V10    0.4075918398458794
#>     Attrib V11    -0.2457450432540617
#>     Attrib V12    -0.8323655072653917
#>     Attrib V13    -0.645945015029257
#>     Attrib V14    0.7571624060577016
#>     Attrib V15    0.7531360396889453
#>     Attrib V16    0.3315922838177358
#>     Attrib V17    0.07102821382136558
#>     Attrib V18    0.18731937202374788
#>     Attrib V19    0.266286431096463
#>     Attrib V2    -0.07473267980317153
#>     Attrib V20    0.025140076066120384
#>     Attrib V21    -0.17838725475359998
#>     Attrib V22    -0.9043249185554406
#>     Attrib V23    -0.5693699465477465
#>     Attrib V24    -0.29338146203123866
#>     Attrib V25    0.14711849766930932
#>     Attrib V26    0.587553657657959
#>     Attrib V27    0.5605566588780889
#>     Attrib V28    -0.1426710195663467
#>     Attrib V29    0.4560543300215786
#>     Attrib V3    0.32975492775513726
#>     Attrib V30    -0.1263111212793623
#>     Attrib V31    0.937909675525669
#>     Attrib V32    0.098903436596744
#>     Attrib V33    -0.5465469796901318
#>     Attrib V34    0.2179215187359953
#>     Attrib V35    0.24518208230950878
#>     Attrib V36    1.0987932946624397
#>     Attrib V37    0.5556263204715631
#>     Attrib V38    -0.28072191369356064
#>     Attrib V39    -0.04658892676438874
#>     Attrib V4    -0.019157382408601736
#>     Attrib V40    0.456106189196848
#>     Attrib V41    -0.6900341422074543
#>     Attrib V42    -0.8950668122790479
#>     Attrib V43    -0.8853132470389878
#>     Attrib V44    -0.5283746024929992
#>     Attrib V45    -0.4274736890308423
#>     Attrib V46    -0.45771226468030013
#>     Attrib V47    -0.18658431231630868
#>     Attrib V48    -0.9342369968186549
#>     Attrib V49    -0.7145586881318401
#>     Attrib V5    -0.49049301013911245
#>     Attrib V50    1.5233930145873542
#>     Attrib V51    -0.2893262507434187
#>     Attrib V52    -0.43456900447513475
#>     Attrib V53    0.41559570045839755
#>     Attrib V54    0.18809029580550038
#>     Attrib V55    1.1989054252050708
#>     Attrib V56    -0.16892186987960292
#>     Attrib V57    -0.09936298838071714
#>     Attrib V58    0.21406141991296757
#>     Attrib V59    -0.7416718755827317
#>     Attrib V6    0.28404990738445407
#>     Attrib V60    -0.16777138586782686
#>     Attrib V7    0.7860400373866755
#>     Attrib V8    1.0913970631380847
#>     Attrib V9    -0.9412174182142254
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.05516262427906812
#>     Attrib V1    0.17951658775575588
#>     Attrib V10    -0.19073169518217178
#>     Attrib V11    5.557034332562773E-5
#>     Attrib V12    0.17082340251472056
#>     Attrib V13    0.03130566530746485
#>     Attrib V14    -0.34567204989263733
#>     Attrib V15    -0.18054906902319504
#>     Attrib V16    0.14872674997064975
#>     Attrib V17    0.2266549673850782
#>     Attrib V18    0.1483627519904815
#>     Attrib V19    0.23138337877485962
#>     Attrib V2    0.1122591540144727
#>     Attrib V20    0.3186440783080364
#>     Attrib V21    0.25114769496344813
#>     Attrib V22    0.45839910095802777
#>     Attrib V23    0.17049810023515222
#>     Attrib V24    0.059609362000057155
#>     Attrib V25    -0.01400385982676066
#>     Attrib V26    -0.3162886834803543
#>     Attrib V27    -0.3998830774639031
#>     Attrib V28    -0.20800340775778606
#>     Attrib V29    -0.5862134621135284
#>     Attrib V3    -0.00587885945566645
#>     Attrib V30    -0.058463152478961986
#>     Attrib V31    -0.4611076625405421
#>     Attrib V32    -0.030980702427927068
#>     Attrib V33    0.17322123836088607
#>     Attrib V34    -0.24929420510374672
#>     Attrib V35    -0.2255020600739153
#>     Attrib V36    -0.5574619358971454
#>     Attrib V37    -0.42934919626158285
#>     Attrib V38    0.09839984787520092
#>     Attrib V39    -0.049153908456461025
#>     Attrib V4    0.17800891255176785
#>     Attrib V40    -0.3674152173477034
#>     Attrib V41    0.03492274692702083
#>     Attrib V42    0.27023500419765306
#>     Attrib V43    0.07787986614499817
#>     Attrib V44    0.1298648978423678
#>     Attrib V45    0.12192623644505046
#>     Attrib V46    0.06831079024530395
#>     Attrib V47    -0.021836652763864792
#>     Attrib V48    0.2656863811864455
#>     Attrib V49    0.33027904679853765
#>     Attrib V5    0.327908324083031
#>     Attrib V50    -0.5263679472743966
#>     Attrib V51    0.16328132495352032
#>     Attrib V52    0.25998029185325777
#>     Attrib V53    0.06179047324786938
#>     Attrib V54    0.3757334336502537
#>     Attrib V55    -0.3921351266931263
#>     Attrib V56    0.36372075957647676
#>     Attrib V57    0.16858908371652057
#>     Attrib V58    0.04839192585901935
#>     Attrib V59    0.5442584966795024
#>     Attrib V6    -0.053630471642925316
#>     Attrib V60    0.3169472659100876
#>     Attrib V7    -0.0987605575562479
#>     Attrib V8    -0.3651963554357513
#>     Attrib V9    0.46219033880512483
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.7528526657735817
#>     Attrib V1    -0.03916166675539206
#>     Attrib V10    0.7047360331901397
#>     Attrib V11    1.2001059328274977
#>     Attrib V12    1.6596467721715293
#>     Attrib V13    0.7116048386736724
#>     Attrib V14    0.0035732148189462965
#>     Attrib V15    -0.7865487202486989
#>     Attrib V16    -0.8839790316437545
#>     Attrib V17    -0.7818944239741028
#>     Attrib V18    0.043914942871573374
#>     Attrib V19    0.20238939464198713
#>     Attrib V2    0.05428167560056656
#>     Attrib V20    -0.4720438267380302
#>     Attrib V21    -0.2427233576056535
#>     Attrib V22    0.34987993517519683
#>     Attrib V23    0.6368448752302199
#>     Attrib V24    0.5168368052943358
#>     Attrib V25    0.44075502990087695
#>     Attrib V26    0.854003160771886
#>     Attrib V27    0.9801011047900792
#>     Attrib V28    1.5534011274530635
#>     Attrib V29    0.9468205295817231
#>     Attrib V3    -0.3123687895737897
#>     Attrib V30    0.12176813572412348
#>     Attrib V31    -0.6842833863953877
#>     Attrib V32    -0.246623231023032
#>     Attrib V33    -0.5953941327691016
#>     Attrib V34    -0.3960085397944977
#>     Attrib V35    0.49591172596809296
#>     Attrib V36    -0.42751289212131827
#>     Attrib V37    -0.026093868913613597
#>     Attrib V38    -0.01044608018823594
#>     Attrib V39    0.4608383887461771
#>     Attrib V4    0.13334043146888425
#>     Attrib V40    0.45133274411538543
#>     Attrib V41    1.040599154972203
#>     Attrib V42    -0.24851990599439777
#>     Attrib V43    -0.058820348549004565
#>     Attrib V44    0.18237196940525205
#>     Attrib V45    -0.06761731000046996
#>     Attrib V46    0.3126026018016105
#>     Attrib V47    0.4376890648466378
#>     Attrib V48    1.0618982409130082
#>     Attrib V49    1.0522725627303253
#>     Attrib V5    0.8853658216728576
#>     Attrib V50    -0.8124658942972793
#>     Attrib V51    0.7095889114110939
#>     Attrib V52    1.0603005415160718
#>     Attrib V53    0.7823763770989768
#>     Attrib V54    0.711164489410978
#>     Attrib V55    -0.6555630745216946
#>     Attrib V56    -0.5594442844284486
#>     Attrib V57    -0.13838002958244788
#>     Attrib V58    0.008364709829861466
#>     Attrib V59    0.2370816597669576
#>     Attrib V6    0.42353322755330003
#>     Attrib V60    0.5612926176177295
#>     Attrib V7    -0.2368496587115393
#>     Attrib V8    -0.4757006918183553
#>     Attrib V9    1.1401529057922701
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    -0.04691098796744309
#>     Attrib V1    0.05369867687721014
#>     Attrib V10    0.03303889301387824
#>     Attrib V11    0.09583321792768448
#>     Attrib V12    0.10501414049299111
#>     Attrib V13    0.10706353989936616
#>     Attrib V14    -0.042355759928730516
#>     Attrib V15    -0.023253076009234906
#>     Attrib V16    0.06710893715311128
#>     Attrib V17    0.04975991187226619
#>     Attrib V18    -0.0127729033828345
#>     Attrib V19    0.07935381686528006
#>     Attrib V2    0.09592571875220461
#>     Attrib V20    0.002604855346877421
#>     Attrib V21    0.011769847147129312
#>     Attrib V22    0.037504723795145654
#>     Attrib V23    -0.04983644719405764
#>     Attrib V24    -0.02405746150647646
#>     Attrib V25    -0.02807895749381264
#>     Attrib V26    -0.05773457135207646
#>     Attrib V27    -0.06258711334072951
#>     Attrib V28    0.06231101503807564
#>     Attrib V29    -0.033984359310957224
#>     Attrib V3    0.043751569587620824
#>     Attrib V30    0.0377868985814496
#>     Attrib V31    -0.13446678886078484
#>     Attrib V32    -0.05474953650243244
#>     Attrib V33    -0.022022687671735302
#>     Attrib V34    -0.11141362860786114
#>     Attrib V35    -0.04307986358458048
#>     Attrib V36    -0.08145383039231947
#>     Attrib V37    -0.07318958712317039
#>     Attrib V38    0.09937575044464506
#>     Attrib V39    0.024928587929537505
#>     Attrib V4    0.15397015846056847
#>     Attrib V40    -0.10975097522228158
#>     Attrib V41    -0.01127867354420956
#>     Attrib V42    -0.029119336230703015
#>     Attrib V43    0.012818121437708763
#>     Attrib V44    0.12592764710611776
#>     Attrib V45    0.09215681258872457
#>     Attrib V46    0.06187978975286476
#>     Attrib V47    0.04583634833290026
#>     Attrib V48    0.194050950295492
#>     Attrib V49    0.16247042711974585
#>     Attrib V5    0.16324049227440635
#>     Attrib V50    -0.1715709464571272
#>     Attrib V51    0.07866430639579367
#>     Attrib V52    0.12561039246163536
#>     Attrib V53    0.10501662001060888
#>     Attrib V54    0.14546494400467103
#>     Attrib V55    -0.08687322088209454
#>     Attrib V56    0.06997369297456627
#>     Attrib V57    0.14318071689005601
#>     Attrib V58    0.020727694596735565
#>     Attrib V59    0.219961929025052
#>     Attrib V6    -0.04683344629500286
#>     Attrib V60    0.1804681311778731
#>     Attrib V7    -0.09268700184357673
#>     Attrib V8    -0.13776724240928542
#>     Attrib V9    0.17477077129920215
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.5499480887791989
#>     Attrib V1    -0.17808551760134325
#>     Attrib V10    0.9216046923143468
#>     Attrib V11    1.214107992099324
#>     Attrib V12    1.7646198483032591
#>     Attrib V13    0.7686124909093146
#>     Attrib V14    -0.22067039142854047
#>     Attrib V15    -0.8310224823520125
#>     Attrib V16    -0.8781156548429003
#>     Attrib V17    -0.6925906517569583
#>     Attrib V18    0.023166871656482704
#>     Attrib V19    0.047022207077307095
#>     Attrib V2    -0.01340299815789238
#>     Attrib V20    -0.6312745961554793
#>     Attrib V21    -0.388669092653506
#>     Attrib V22    0.247728962143736
#>     Attrib V23    0.5893536014032444
#>     Attrib V24    0.6495364465508953
#>     Attrib V25    0.6640641498634652
#>     Attrib V26    0.9470074585286092
#>     Attrib V27    0.8699030374672109
#>     Attrib V28    1.1275702349799648
#>     Attrib V29    0.3083723731404389
#>     Attrib V3    -0.32425366598933403
#>     Attrib V30    -0.08095205674072628
#>     Attrib V31    -0.5392921810030855
#>     Attrib V32    -0.025532801276437447
#>     Attrib V33    -0.3762297606595165
#>     Attrib V34    -0.1712574335096239
#>     Attrib V35    0.5601849757860237
#>     Attrib V36    -0.41707111306294
#>     Attrib V37    -0.19863388947170793
#>     Attrib V38    -0.19445130273364863
#>     Attrib V39    0.34071032187443395
#>     Attrib V4    0.059869112865284145
#>     Attrib V40    0.39171396046742923
#>     Attrib V41    0.8727869029255352
#>     Attrib V42    -0.4440503559371059
#>     Attrib V43    -0.06960572564184596
#>     Attrib V44    0.10850531433988843
#>     Attrib V45    -0.05771108210719665
#>     Attrib V46    0.29003973900045066
#>     Attrib V47    0.3795312424119224
#>     Attrib V48    0.9779359052325677
#>     Attrib V49    0.9896837115384283
#>     Attrib V5    0.7516124419002478
#>     Attrib V50    -0.8352133042902604
#>     Attrib V51    0.6895682663951131
#>     Attrib V52    0.8987333659134592
#>     Attrib V53    0.701675243833301
#>     Attrib V54    0.5514467021191436
#>     Attrib V55    -0.5277425842716137
#>     Attrib V56    -0.507338110788584
#>     Attrib V57    -0.26002556104214614
#>     Attrib V58    0.021708515675452334
#>     Attrib V59    0.09938249420231786
#>     Attrib V6    0.39554289098855466
#>     Attrib V60    0.47467813863826425
#>     Attrib V7    -0.22367936023366267
#>     Attrib V8    -0.38286426801423756
#>     Attrib V9    1.2181251534170419
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    0.03260496251427999
#>     Attrib V1    -0.03098515806036739
#>     Attrib V10    0.011814283887847922
#>     Attrib V11    -0.3637714924031144
#>     Attrib V12    -0.5998355749385433
#>     Attrib V13    -0.4078337847046175
#>     Attrib V14    0.41707691836368693
#>     Attrib V15    0.1813793598314967
#>     Attrib V16    -0.03656373743607514
#>     Attrib V17    -0.35759639330496606
#>     Attrib V18    -0.1085805014092442
#>     Attrib V19    -0.27906047266682293
#>     Attrib V2    -0.0853819188013025
#>     Attrib V20    -0.2697098425688801
#>     Attrib V21    -0.12744461654514708
#>     Attrib V22    -0.7019672629320879
#>     Attrib V23    -0.36601662967096243
#>     Attrib V24    -0.26927817705915
#>     Attrib V25    -0.1630402438091911
#>     Attrib V26    0.07721398201275385
#>     Attrib V27    0.3819887532895205
#>     Attrib V28    0.16795519667950357
#>     Attrib V29    0.5983849719194785
#>     Attrib V3    0.08081200595581253
#>     Attrib V30    -0.0068566937955359935
#>     Attrib V31    0.501333963203802
#>     Attrib V32    -0.08430512730250096
#>     Attrib V33    -0.2962811966569903
#>     Attrib V34    0.1479143457606648
#>     Attrib V35    0.29124886327110294
#>     Attrib V36    0.9055835177497991
#>     Attrib V37    0.6798775909098936
#>     Attrib V38    0.11371579253963915
#>     Attrib V39    0.21556075212787618
#>     Attrib V4    -0.10305563240513088
#>     Attrib V40    0.4485902340560176
#>     Attrib V41    -0.08592545645496227
#>     Attrib V42    -0.21359843402993184
#>     Attrib V43    0.11511067997730542
#>     Attrib V44    0.13563443724160001
#>     Attrib V45    -0.031708701938851655
#>     Attrib V46    -0.23600581641987042
#>     Attrib V47    -0.2286138321904304
#>     Attrib V48    -0.669633398026555
#>     Attrib V49    -0.6464007651741398
#>     Attrib V5    -0.5180807771765866
#>     Attrib V50    0.9411080135985044
#>     Attrib V51    -0.3399868777362617
#>     Attrib V52    -0.5516040531828864
#>     Attrib V53    0.06561735630803579
#>     Attrib V54    -0.21485079862251702
#>     Attrib V55    0.4898978140237132
#>     Attrib V56    -0.26577434893424223
#>     Attrib V57    -0.013490004805180261
#>     Attrib V58    0.07450589540448148
#>     Attrib V59    -0.40974371549898847
#>     Attrib V6    0.1240217550347817
#>     Attrib V60    -0.19981756686161203
#>     Attrib V7    0.23688572730326837
#>     Attrib V8    0.6518184095542613
#>     Attrib V9    -0.7544042201690486
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.04376916592129476
#>     Attrib V1    0.038405349055838714
#>     Attrib V10    -0.059184180690819356
#>     Attrib V11    0.06848311955092098
#>     Attrib V12    0.19673160881061058
#>     Attrib V13    0.0612301670051158
#>     Attrib V14    -0.17560056289410916
#>     Attrib V15    -0.12096090965182017
#>     Attrib V16    0.03552131922593612
#>     Attrib V17    0.17126972204846522
#>     Attrib V18    0.0918929941224569
#>     Attrib V19    0.1638082291735877
#>     Attrib V2    0.016627948510017376
#>     Attrib V20    0.21398837256745148
#>     Attrib V21    0.09858399004224666
#>     Attrib V22    0.21462099668294968
#>     Attrib V23    0.05329420523374762
#>     Attrib V24    -0.017073337214190822
#>     Attrib V25    -0.005600783219189568
#>     Attrib V26    -0.19211645527433252
#>     Attrib V27    -0.18516531637113964
#>     Attrib V28    0.01731983028473033
#>     Attrib V29    -0.2564777594115999
#>     Attrib V3    -0.0709218163877915
#>     Attrib V30    0.01253004991148101
#>     Attrib V31    -0.30734884911311233
#>     Attrib V32    -0.11281583903169101
#>     Attrib V33    0.005257162912899547
#>     Attrib V34    -0.11002215852949825
#>     Attrib V35    -0.042199404862278134
#>     Attrib V36    -0.27501132668353256
#>     Attrib V37    -0.2438837009742439
#>     Attrib V38    0.10521376783010887
#>     Attrib V39    -0.022247828069901058
#>     Attrib V4    0.06666673683239349
#>     Attrib V40    -0.24926525919598175
#>     Attrib V41    -0.09186098503674817
#>     Attrib V42    0.05655578931206077
#>     Attrib V43    0.028537649901217554
#>     Attrib V44    0.15788993825129413
#>     Attrib V45    0.1398491810119419
#>     Attrib V46    0.01996458927629302
#>     Attrib V47    0.018738341326675616
#>     Attrib V48    0.2358657973284895
#>     Attrib V49    0.2065970766691718
#>     Attrib V5    0.26025535787434545
#>     Attrib V50    -0.34066051116790164
#>     Attrib V51    0.1616356598202431
#>     Attrib V52    0.15961659469516898
#>     Attrib V53    0.009494819725283788
#>     Attrib V54    0.2757286669439959
#>     Attrib V55    -0.21306801688188198
#>     Attrib V56    0.16469302577976183
#>     Attrib V57    0.09536863194283539
#>     Attrib V58    0.021382694935533023
#>     Attrib V59    0.23545435461632072
#>     Attrib V6    -0.031294297069797396
#>     Attrib V60    0.15377135790628726
#>     Attrib V7    -0.18067709964833312
#>     Attrib V8    -0.24305623752852232
#>     Attrib V9    0.30213756205027575
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.022902915949209294
#>     Attrib V1    0.3022254723929717
#>     Attrib V10    -0.3432916634485754
#>     Attrib V11    0.006456494912943317
#>     Attrib V12    0.0665588016886897
#>     Attrib V13    0.060165018942431765
#>     Attrib V14    -0.27451588701446533
#>     Attrib V15    -0.1412190300124342
#>     Attrib V16    0.19418111307703542
#>     Attrib V17    0.2544318027607518
#>     Attrib V18    0.06442303078190177
#>     Attrib V19    0.37694656063979254
#>     Attrib V2    0.24861594159318862
#>     Attrib V20    0.521434723496081
#>     Attrib V21    0.4431870893680687
#>     Attrib V22    0.7093715223443485
#>     Attrib V23    0.19681221698681467
#>     Attrib V24    -0.1618274345105157
#>     Attrib V25    -0.36980116295813953
#>     Attrib V26    -0.6294057006321178
#>     Attrib V27    -0.46254635427492363
#>     Attrib V28    0.04190102925363128
#>     Attrib V29    -0.2667567756262014
#>     Attrib V3    -0.055873961820119035
#>     Attrib V30    0.06722369257344511
#>     Attrib V31    -0.6812034692981078
#>     Attrib V32    -0.14055118555250992
#>     Attrib V33    0.17749588798190588
#>     Attrib V34    -0.3539612337918565
#>     Attrib V35    -0.3794217457390628
#>     Attrib V36    -0.6332889220816792
#>     Attrib V37    -0.418437730062548
#>     Attrib V38    0.34175118115905223
#>     Attrib V39    0.09232750667188437
#>     Attrib V4    0.2509603092946441
#>     Attrib V40    -0.3672893004331669
#>     Attrib V41    0.06540692700909256
#>     Attrib V42    0.3774762897442133
#>     Attrib V43    0.22430403603955706
#>     Attrib V44    0.25308410698718603
#>     Attrib V45    0.18286676168367139
#>     Attrib V46    0.12425240979361599
#>     Attrib V47    -0.05033043944920958
#>     Attrib V48    0.35019794831911083
#>     Attrib V49    0.4261091847211653
#>     Attrib V5    0.44054786991627926
#>     Attrib V50    -0.6864699781611617
#>     Attrib V51    0.1890422836179099
#>     Attrib V52    0.4115495376192803
#>     Attrib V53    0.039186757080391675
#>     Attrib V54    0.495810744481266
#>     Attrib V55    -0.5657667254556337
#>     Attrib V56    0.46124127289897776
#>     Attrib V57    0.27819676718166325
#>     Attrib V58    0.037562282773835505
#>     Attrib V59    0.758665835755748
#>     Attrib V6    -0.11732248711715092
#>     Attrib V60    0.3145965978890536
#>     Attrib V7    -0.1862226836219175
#>     Attrib V8    -0.5057476556411185
#>     Attrib V9    0.445959039967679
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.1297646600517014
#>     Attrib V1    0.10799154188263535
#>     Attrib V10    0.029971030991628313
#>     Attrib V11    -0.07242952364106102
#>     Attrib V12    -0.11213461178915166
#>     Attrib V13    -0.04476781007577986
#>     Attrib V14    -0.04391183271206848
#>     Attrib V15    -0.057504109284844694
#>     Attrib V16    -0.1031659711861198
#>     Attrib V17    -0.13899520961332287
#>     Attrib V18    -0.0415964161860309
#>     Attrib V19    -0.1881159006483172
#>     Attrib V2    0.0559669530049044
#>     Attrib V20    -0.08285737228076369
#>     Attrib V21    -4.1780006276231733E-4
#>     Attrib V22    -0.054025341201115865
#>     Attrib V23    0.09793578299202428
#>     Attrib V24    -0.055885493598364304
#>     Attrib V25    -0.1614783590949964
#>     Attrib V26    -0.27390901559080977
#>     Attrib V27    -0.0719276159750064
#>     Attrib V28    -0.14442059314873865
#>     Attrib V29    0.006848390729230456
#>     Attrib V3    0.12128678120906472
#>     Attrib V30    -0.047171385007454034
#>     Attrib V31    0.1416033746720136
#>     Attrib V32    0.2877102832316985
#>     Attrib V33    0.2993885322691406
#>     Attrib V34    0.3489069136370654
#>     Attrib V35    0.24927256339989104
#>     Attrib V36    0.33467527903113803
#>     Attrib V37    0.25057888420746394
#>     Attrib V38    0.058878913616213426
#>     Attrib V39    0.17433349626377803
#>     Attrib V4    0.05940709348989962
#>     Attrib V40    0.42262889191321495
#>     Attrib V41    0.3860231420542558
#>     Attrib V42    0.29641466319444265
#>     Attrib V43    0.26591835875769704
#>     Attrib V44    0.1370050795110263
#>     Attrib V45    -0.014866866645498493
#>     Attrib V46    0.058856638051187286
#>     Attrib V47    0.07055847266359147
#>     Attrib V48    -0.21077952816742193
#>     Attrib V49    -0.1289135707654631
#>     Attrib V5    -0.06872360932093373
#>     Attrib V50    0.3425458750130636
#>     Attrib V51    0.006981374067228778
#>     Attrib V52    -0.10598408422053306
#>     Attrib V53    -0.005784157570867334
#>     Attrib V54    -0.04626561677022973
#>     Attrib V55    0.07585021729432027
#>     Attrib V56    0.011445318002574164
#>     Attrib V57    0.1385187294339384
#>     Attrib V58    0.08920276425121847
#>     Attrib V59    -0.003073743121013645
#>     Attrib V6    0.20404564641377862
#>     Attrib V60    0.021796803063856934
#>     Attrib V7    0.23720406263411525
#>     Attrib V8    0.25083356485970104
#>     Attrib V9    -0.11832372080713766
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.013979471745865365
#>     Attrib V1    0.14612972292341891
#>     Attrib V10    -0.0035877929428641164
#>     Attrib V11    0.2791172763227289
#>     Attrib V12    0.46566844792010914
#>     Attrib V13    0.17854096036672548
#>     Attrib V14    -0.486449568379851
#>     Attrib V15    -0.2912773436368118
#>     Attrib V16    -0.05830792158311309
#>     Attrib V17    0.18409835797606813
#>     Attrib V18    0.07552848482384043
#>     Attrib V19    0.2548353201111752
#>     Attrib V2    0.07882170109469362
#>     Attrib V20    0.26359200898885093
#>     Attrib V21    0.131973809783474
#>     Attrib V22    0.5572330073788511
#>     Attrib V23    0.32139563223925866
#>     Attrib V24    0.09529298930892212
#>     Attrib V25    0.02435845278406249
#>     Attrib V26    -0.16407744387091783
#>     Attrib V27    -0.3135966195337523
#>     Attrib V28    -0.03925464428559658
#>     Attrib V29    -0.6269154671931716
#>     Attrib V3    -0.1501488532337954
#>     Attrib V30    0.016979491949895037
#>     Attrib V31    -0.48115348754213544
#>     Attrib V32    -0.03291145179503622
#>     Attrib V33    0.22761763149548297
#>     Attrib V34    -0.19723139018575991
#>     Attrib V35    -0.12513317438376423
#>     Attrib V36    -0.6934849931965752
#>     Attrib V37    -0.5172230070236169
#>     Attrib V38    0.03541227923703598
#>     Attrib V39    -0.08944863233423288
#>     Attrib V4    0.1123067856260881
#>     Attrib V40    -0.40843161999764055
#>     Attrib V41    0.014019637808593251
#>     Attrib V42    0.13441522172666204
#>     Attrib V43    -0.01972101058011314
#>     Attrib V44    0.13761366149275883
#>     Attrib V45    0.03314192005527211
#>     Attrib V46    0.11663084840853037
#>     Attrib V47    0.04446527953562859
#>     Attrib V48    0.48198532114829573
#>     Attrib V49    0.5398801507166149
#>     Attrib V5    0.4251399651906205
#>     Attrib V50    -0.7756319550638499
#>     Attrib V51    0.22989891582118788
#>     Attrib V52    0.4524956194973473
#>     Attrib V53    -0.05058923702978597
#>     Attrib V54    0.4977048049434926
#>     Attrib V55    -0.4593628240494054
#>     Attrib V56    0.2981900831303061
#>     Attrib V57    0.07130586213421894
#>     Attrib V58    -9.584259290759754E-4
#>     Attrib V59    0.474664211843787
#>     Attrib V6    -0.0810928211790696
#>     Attrib V60    0.31471160339092236
#>     Attrib V7    -0.21710510499924793
#>     Attrib V8    -0.5839033820764286
#>     Attrib V9    0.6390675152362701
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -1.3697365296120463
#>     Attrib V1    -0.7631693127660146
#>     Attrib V10    0.09478501924049518
#>     Attrib V11    -0.44587099130447133
#>     Attrib V12    -1.4429540480371432
#>     Attrib V13    -0.7107993322674626
#>     Attrib V14    1.138605887172033
#>     Attrib V15    1.2321829899935137
#>     Attrib V16    0.8611655915181502
#>     Attrib V17    0.7566529058660034
#>     Attrib V18    0.23919152298249724
#>     Attrib V19    0.13385662992437922
#>     Attrib V2    -0.07529354438235722
#>     Attrib V20    -0.26011033486364504
#>     Attrib V21    -0.6333015753568033
#>     Attrib V22    -1.4578161186833405
#>     Attrib V23    -1.4832400449886527
#>     Attrib V24    -0.5894724066778876
#>     Attrib V25    1.0095653232465287
#>     Attrib V26    1.7093618923002727
#>     Attrib V27    0.5850123060088394
#>     Attrib V28    -0.745199623064606
#>     Attrib V29    -0.09824119182420263
#>     Attrib V3    0.7523520713671682
#>     Attrib V30    -0.47027998998271864
#>     Attrib V31    0.11854660369941208
#>     Attrib V32    -1.0255266779660983
#>     Attrib V33    -1.232929090145578
#>     Attrib V34    -0.21285605058575954
#>     Attrib V35    -0.3343002633890646
#>     Attrib V36    1.0678998350301543
#>     Attrib V37    0.4786627467862678
#>     Attrib V38    -0.8384539169936348
#>     Attrib V39    -0.4378301019701327
#>     Attrib V4    0.3687187959373166
#>     Attrib V40    -0.44027363084587345
#>     Attrib V41    -1.7892207584932922
#>     Attrib V42    -1.1838001645421508
#>     Attrib V43    -1.2905841817615775
#>     Attrib V44    -0.7091854909333625
#>     Attrib V45    0.196340802877003
#>     Attrib V46    -0.26407994367593507
#>     Attrib V47    0.00643851052227805
#>     Attrib V48    -0.15173719511693187
#>     Attrib V49    -0.5777204129313195
#>     Attrib V5    -0.5134286860406919
#>     Attrib V50    1.236072151458058
#>     Attrib V51    -0.15177076766404593
#>     Attrib V52    -0.5131748036727141
#>     Attrib V53    0.4606157325302176
#>     Attrib V54    0.12588335007030957
#>     Attrib V55    1.9904216748714283
#>     Attrib V56    0.27971707731968704
#>     Attrib V57    0.02622447117334977
#>     Attrib V58    0.4602217845294184
#>     Attrib V59    -0.31026277849862594
#>     Attrib V6    -0.6380499245405526
#>     Attrib V60    0.334722569644682
#>     Attrib V7    -0.305226397825974
#>     Attrib V8    0.7768681036794818
#>     Attrib V9    -1.0588544360664613
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.09319614496140961
#>     Attrib V1    0.10893490630168984
#>     Attrib V10    0.061866041949481414
#>     Attrib V11    -0.10373353922098125
#>     Attrib V12    -0.13681011525569137
#>     Attrib V13    -0.09423242846301322
#>     Attrib V14    -0.06391815469606792
#>     Attrib V15    -0.050126506917236566
#>     Attrib V16    -0.02295008644501667
#>     Attrib V17    -0.11982972816328365
#>     Attrib V18    0.02620259993375445
#>     Attrib V19    -0.16564150080903234
#>     Attrib V2    0.023878636765416593
#>     Attrib V20    -0.1488620396092576
#>     Attrib V21    -0.02723206248342399
#>     Attrib V22    -0.03470666646812333
#>     Attrib V23    0.05444110823578216
#>     Attrib V24    -0.04098425515415384
#>     Attrib V25    -0.18036335786957142
#>     Attrib V26    -0.2675019911111454
#>     Attrib V27    -0.1395980767318542
#>     Attrib V28    -0.11111112380511279
#>     Attrib V29    0.01640541179076791
#>     Attrib V3    0.0871150899577496
#>     Attrib V30    -0.10780939525155912
#>     Attrib V31    0.2048953148005622
#>     Attrib V32    0.342048474476774
#>     Attrib V33    0.31442115373965135
#>     Attrib V34    0.3677303556830812
#>     Attrib V35    0.28701418059898187
#>     Attrib V36    0.40899632193985
#>     Attrib V37    0.3053962880715617
#>     Attrib V38    0.04739035471943281
#>     Attrib V39    0.13577464989150567
#>     Attrib V4    0.04570139694253447
#>     Attrib V40    0.43101211133827494
#>     Attrib V41    0.4215687864638224
#>     Attrib V42    0.319047813700204
#>     Attrib V43    0.30622509223376
#>     Attrib V44    0.09728383531001877
#>     Attrib V45    -0.0036049610867385563
#>     Attrib V46    0.04020032806005661
#>     Attrib V47    0.034146690019423734
#>     Attrib V48    -0.2678268617932908
#>     Attrib V49    -0.22495586478180177
#>     Attrib V5    -0.13390860227690474
#>     Attrib V50    0.4913785318736863
#>     Attrib V51    0.061390702081056556
#>     Attrib V52    -0.07479295320407464
#>     Attrib V53    0.05927343614851684
#>     Attrib V54    -0.04551588305597173
#>     Attrib V55    0.13011920233804264
#>     Attrib V56    0.00591887994333925
#>     Attrib V57    0.15123599392333759
#>     Attrib V58    0.1612534307938056
#>     Attrib V59    -0.117062247621531
#>     Attrib V6    0.21845367778648464
#>     Attrib V60    -0.033699503897471145
#>     Attrib V7    0.22662531408805223
#>     Attrib V8    0.3077707572531381
#>     Attrib V9    -0.1300527274847808
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.06173402113863361
#>     Attrib V1    0.09683581936559398
#>     Attrib V10    0.09068538166550578
#>     Attrib V11    0.027422986573880988
#>     Attrib V12    -0.05287994642816828
#>     Attrib V13    -0.061622077218915786
#>     Attrib V14    -0.03111495911013418
#>     Attrib V15    0.0587399299746589
#>     Attrib V16    -0.016590981482968968
#>     Attrib V17    -0.05514270060426053
#>     Attrib V18    -0.03346230603241365
#>     Attrib V19    -0.06638855006594248
#>     Attrib V2    0.12177044130936603
#>     Attrib V20    -0.08914681314250612
#>     Attrib V21    -0.05182185086661341
#>     Attrib V22    0.0241324548311363
#>     Attrib V23    -0.01939274417426957
#>     Attrib V24    -0.02538499741191193
#>     Attrib V25    -0.11211449540753515
#>     Attrib V26    -0.13367912672662496
#>     Attrib V27    -0.04771500502928009
#>     Attrib V28    -0.06865203180727884
#>     Attrib V29    -0.0531674583939384
#>     Attrib V3    0.05990164697455889
#>     Attrib V30    0.0011706560190135838
#>     Attrib V31    0.10456400429572434
#>     Attrib V32    0.07250412679275695
#>     Attrib V33    0.1636886880445863
#>     Attrib V34    0.10998950350995995
#>     Attrib V35    0.16520340583797125
#>     Attrib V36    0.14386643729414642
#>     Attrib V37    0.10257992031943237
#>     Attrib V38    0.10549581693920328
#>     Attrib V39    0.1074537341296175
#>     Attrib V4    0.058024444804514616
#>     Attrib V40    0.17263400403328197
#>     Attrib V41    0.22361442904154408
#>     Attrib V42    0.15086514359528452
#>     Attrib V43    0.18727629973587484
#>     Attrib V44    0.1115829826413538
#>     Attrib V45    0.09331071703289631
#>     Attrib V46    0.027884736930930173
#>     Attrib V47    0.020700162679760613
#>     Attrib V48    0.005306645914637395
#>     Attrib V49    -0.06918652167475223
#>     Attrib V5    0.00446489504927415
#>     Attrib V50    0.17395930959616987
#>     Attrib V51    0.03727259312450127
#>     Attrib V52    -0.050657530691999804
#>     Attrib V53    -0.01400360528768995
#>     Attrib V54    -0.030238307024881998
#>     Attrib V55    0.08469138077579819
#>     Attrib V56    0.05766807652142164
#>     Attrib V57    0.14184893935182982
#>     Attrib V58    0.027898944120321203
#>     Attrib V59    -0.012106778377608448
#>     Attrib V6    0.08960258934807183
#>     Attrib V60    0.04288587260011469
#>     Attrib V7    0.03838812928700564
#>     Attrib V8    0.15861142307818785
#>     Attrib V9    -0.00791537935807527
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.11312799038351842
#>     Attrib V1    -0.0054315634143226234
#>     Attrib V10    -0.05187076029409718
#>     Attrib V11    -0.39937266001055044
#>     Attrib V12    -0.6513778128500363
#>     Attrib V13    -0.4181471318775652
#>     Attrib V14    0.18071982452228522
#>     Attrib V15    0.040173491789240026
#>     Attrib V16    -0.1254819482015416
#>     Attrib V17    -0.3558329718782933
#>     Attrib V18    -0.08815376263300853
#>     Attrib V19    -0.3069623946269232
#>     Attrib V2    -0.023112409974784684
#>     Attrib V20    -0.19828819925796956
#>     Attrib V21    -0.06381083268251087
#>     Attrib V22    -0.44003571175558875
#>     Attrib V23    -0.178600219855897
#>     Attrib V24    -0.1501000915281261
#>     Attrib V25    -0.09963390512511805
#>     Attrib V26    -0.03914344770205882
#>     Attrib V27    0.20280841966865135
#>     Attrib V28    0.029115374341925904
#>     Attrib V29    0.3303389594978643
#>     Attrib V3    0.1755712984290718
#>     Attrib V30    -0.1556895497125158
#>     Attrib V31    0.28284179055579
#>     Attrib V32    -0.0063222084015375655
#>     Attrib V33    -0.14867405042821624
#>     Attrib V34    0.10235903549658466
#>     Attrib V35    0.15193704462821347
#>     Attrib V36    0.7602322762392956
#>     Attrib V37    0.43322639255667467
#>     Attrib V38    0.043719565737293374
#>     Attrib V39    0.19582449479322048
#>     Attrib V4    -0.043924381815616344
#>     Attrib V40    0.3243266055434936
#>     Attrib V41    -0.046920978611888146
#>     Attrib V42    8.640813284219108E-4
#>     Attrib V43    0.20375040405581651
#>     Attrib V44    0.14196550389918652
#>     Attrib V45    -0.10606778894793996
#>     Attrib V46    -0.21668922751532857
#>     Attrib V47    -0.12344791305815278
#>     Attrib V48    -0.5386820770540076
#>     Attrib V49    -0.46504864280368957
#>     Attrib V5    -0.41395372513417555
#>     Attrib V50    0.7129250932194271
#>     Attrib V51    -0.13583767114716827
#>     Attrib V52    -0.38302748273461334
#>     Attrib V53    0.04431896976946283
#>     Attrib V54    -0.16237281685802352
#>     Attrib V55    0.39658801128906046
#>     Attrib V56    -0.0691697954039913
#>     Attrib V57    0.04623572748010532
#>     Attrib V58    0.1374593608758096
#>     Attrib V59    -0.1282556939441936
#>     Attrib V6    0.040293211413679336
#>     Attrib V60    -0.02563929941863124
#>     Attrib V7    0.24952626669335
#>     Attrib V8    0.5476433328840732
#>     Attrib V9    -0.5806517487525623
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3319304798060296
#>     Attrib V1    -0.015022767702442388
#>     Attrib V10    0.31928061746595404
#>     Attrib V11    0.6078290077494782
#>     Attrib V12    1.0459933260295302
#>     Attrib V13    0.489492020594918
#>     Attrib V14    -0.05506490024354583
#>     Attrib V15    -0.41963036008318355
#>     Attrib V16    -0.5456829437232062
#>     Attrib V17    -0.42719456792386035
#>     Attrib V18    -0.10952697075819434
#>     Attrib V19    0.04857541495243499
#>     Attrib V2    0.06859893315359193
#>     Attrib V20    -0.2920775581579673
#>     Attrib V21    -0.24504215338896734
#>     Attrib V22    0.1722793720195287
#>     Attrib V23    0.11292971593435223
#>     Attrib V24    0.11793698702512538
#>     Attrib V25    0.19606887242563178
#>     Attrib V26    0.34081257784522356
#>     Attrib V27    0.5312909431004714
#>     Attrib V28    0.8996398612303623
#>     Attrib V29    0.4081450706760614
#>     Attrib V3    -0.22785924382512127
#>     Attrib V30    0.2117485919959209
#>     Attrib V31    -0.3771154418564799
#>     Attrib V32    -0.16511731220983303
#>     Attrib V33    -0.22417377629723106
#>     Attrib V34    -0.25754533354172987
#>     Attrib V35    0.2267602599848683
#>     Attrib V36    -0.32663822831637174
#>     Attrib V37    -0.13916976535537415
#>     Attrib V38    0.0836540363991172
#>     Attrib V39    0.1754239040552742
#>     Attrib V4    0.16652031162971978
#>     Attrib V40    -0.0211420993679155
#>     Attrib V41    0.3027802775680258
#>     Attrib V42    -0.08725041723186083
#>     Attrib V43    0.020734322756550048
#>     Attrib V44    0.15006699343008012
#>     Attrib V45    0.04919430081958414
#>     Attrib V46    0.13723646563977943
#>     Attrib V47    0.139195773560955
#>     Attrib V48    0.6229386864396477
#>     Attrib V49    0.664935419484234
#>     Attrib V5    0.5672004539852349
#>     Attrib V50    -0.6849432551028062
#>     Attrib V51    0.34722517820493126
#>     Attrib V52    0.718042037967219
#>     Attrib V53    0.3087176394973655
#>     Attrib V54    0.5370745724661219
#>     Attrib V55    -0.380617299233219
#>     Attrib V56    -0.2041325857251458
#>     Attrib V57    -0.12638565354840695
#>     Attrib V58    0.018012540816489727
#>     Attrib V59    0.2620372001219434
#>     Attrib V6    0.08034117758757948
#>     Attrib V60    0.33463102892755126
#>     Attrib V7    -0.3494893489325841
#>     Attrib V8    -0.4361632468793083
#>     Attrib V9    0.6737972311822563
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.5101546486761895
#>     Attrib V1    0.1326668167964878
#>     Attrib V10    0.4417953875113872
#>     Attrib V11    0.7978422930616771
#>     Attrib V12    1.3154173728344283
#>     Attrib V13    0.6321921002724982
#>     Attrib V14    0.12694006892203327
#>     Attrib V15    -0.4459997904455631
#>     Attrib V16    -0.6558745259828213
#>     Attrib V17    -0.5748952115030408
#>     Attrib V18    -0.09621801083314113
#>     Attrib V19    0.07458282283487394
#>     Attrib V2    0.10309678683561938
#>     Attrib V20    -0.3499030959790723
#>     Attrib V21    -0.2108403353710013
#>     Attrib V22    0.15310965300911059
#>     Attrib V23    0.1807887383742225
#>     Attrib V24    0.13017035436685534
#>     Attrib V25    0.09144200596012468
#>     Attrib V26    0.4740359708748086
#>     Attrib V27    0.8531917046637346
#>     Attrib V28    1.307161154210391
#>     Attrib V29    0.9387193387609053
#>     Attrib V3    -0.27039282963481504
#>     Attrib V30    0.3658470298846972
#>     Attrib V31    -0.5026547701410656
#>     Attrib V32    -0.2791249225483916
#>     Attrib V33    -0.4890300123455785
#>     Attrib V34    -0.44326020326286397
#>     Attrib V35    0.21421105635792595
#>     Attrib V36    -0.30045321564161087
#>     Attrib V37    0.06314951772878286
#>     Attrib V38    0.188061427418147
#>     Attrib V39    0.3390478791289026
#>     Attrib V4    0.16476650480985053
#>     Attrib V40    0.10125947710110726
#>     Attrib V41    0.5667639913142659
#>     Attrib V42    -0.18111205163396918
#>     Attrib V43    0.0996828017816768
#>     Attrib V44    0.2695592393684829
#>     Attrib V45    -0.032678796696349446
#>     Attrib V46    0.09285917716888402
#>     Attrib V47    0.14817821898692643
#>     Attrib V48    0.7241351474129867
#>     Attrib V49    0.6934120431116695
#>     Attrib V5    0.7831145587548632
#>     Attrib V50    -0.7835918306444096
#>     Attrib V51    0.5257258687967298
#>     Attrib V52    0.8336945314372405
#>     Attrib V53    0.44195606938480025
#>     Attrib V54    0.5917284790415213
#>     Attrib V55    -0.438555168161278
#>     Attrib V56    -0.29204228237887064
#>     Attrib V57    -0.1115177651522471
#>     Attrib V58    0.004089589348060339
#>     Attrib V59    0.39440114853204183
#>     Attrib V6    0.24542206073822642
#>     Attrib V60    0.4541396983641055
#>     Attrib V7    -0.39503025395096253
#>     Attrib V8    -0.47278208126591675
#>     Attrib V9    0.7847074944417937
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.193676572399315
#>     Attrib V1    -0.20877842935776114
#>     Attrib V10    0.1283256867712967
#>     Attrib V11    -0.36140854048116317
#>     Attrib V12    -0.6257824456750958
#>     Attrib V13    -0.45976149250908244
#>     Attrib V14    0.7248341710531992
#>     Attrib V15    0.5765152530247115
#>     Attrib V16    0.17982108578502723
#>     Attrib V17    -0.19775361550496925
#>     Attrib V18    -0.049659560444406864
#>     Attrib V19    -0.30885237163864715
#>     Attrib V2    -0.1800536371139155
#>     Attrib V20    -0.41680806728122877
#>     Attrib V21    -0.30464478115755805
#>     Attrib V22    -1.1033341095875018
#>     Attrib V23    -0.65977295714937
#>     Attrib V24    -0.28901042849531644
#>     Attrib V25    -0.02004478361902413
#>     Attrib V26    0.4549189716190631
#>     Attrib V27    0.6196111194814061
#>     Attrib V28    0.13064628694039676
#>     Attrib V29    0.8606019564093431
#>     Attrib V3    0.0793467632396458
#>     Attrib V30    0.059484496634624
#>     Attrib V31    1.0075005345533639
#>     Attrib V32    0.1552143951692675
#>     Attrib V33    -0.4047310118606636
#>     Attrib V34    0.26999172327261844
#>     Attrib V35    0.25313849305986447
#>     Attrib V36    0.9288075866591228
#>     Attrib V37    0.7531775703399531
#>     Attrib V38    -0.22652178448421
#>     Attrib V39    0.10481081357353628
#>     Attrib V4    -0.1739821524295388
#>     Attrib V40    0.7060159285213207
#>     Attrib V41    -0.08191322940754882
#>     Attrib V42    -0.5179053996391765
#>     Attrib V43    -0.30594408211372903
#>     Attrib V44    -0.28022169111377526
#>     Attrib V45    -0.26398529342762034
#>     Attrib V46    -0.3075292360072304
#>     Attrib V47    -0.2321929288269718
#>     Attrib V48    -0.781157433451011
#>     Attrib V49    -0.861647771698275
#>     Attrib V5    -0.646237064834249
#>     Attrib V50    1.2328191504129142
#>     Attrib V51    -0.47993765298833535
#>     Attrib V52    -0.7125309997846898
#>     Attrib V53    0.11425437267196188
#>     Attrib V54    -0.2953175221627255
#>     Attrib V55    0.8259273653601418
#>     Attrib V56    -0.43311022672301425
#>     Attrib V57    -0.047100106280531
#>     Attrib V58    0.0647338769034528
#>     Attrib V59    -0.759967946654531
#>     Attrib V6    0.11095613925868665
#>     Attrib V60    -0.3115000213785972
#>     Attrib V7    0.42904253807880915
#>     Attrib V8    0.8665885439271178
#>     Attrib V9    -0.9480351762371452
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.11541174434527077
#>     Attrib V1    0.26385909399192936
#>     Attrib V10    -0.23608363604726607
#>     Attrib V11    -0.07006107992012281
#>     Attrib V12    0.053394204007006674
#>     Attrib V13    0.00936610010017709
#>     Attrib V14    -0.3206349386486936
#>     Attrib V15    -0.16325168666202658
#>     Attrib V16    0.21889741588759987
#>     Attrib V17    0.2908884492629003
#>     Attrib V18    0.08210777244326241
#>     Attrib V19    0.22508561058016968
#>     Attrib V2    0.15676907510934943
#>     Attrib V20    0.41070592765963215
#>     Attrib V21    0.316148851758102
#>     Attrib V22    0.5103222826999796
#>     Attrib V23    0.1309815151673311
#>     Attrib V24    0.032943836176451476
#>     Attrib V25    -0.14795914230430995
#>     Attrib V26    -0.48719313656216073
#>     Attrib V27    -0.557735493278177
#>     Attrib V28    -0.2928737988519373
#>     Attrib V29    -0.589670559003781
#>     Attrib V3    -0.01404101109752465
#>     Attrib V30    -0.08467885294337876
#>     Attrib V31    -0.42400075196703935
#>     Attrib V32    -0.05377240471704315
#>     Attrib V33    0.16275373128522178
#>     Attrib V34    -0.2444595095514733
#>     Attrib V35    -0.2882742015333367
#>     Attrib V36    -0.5423478698886616
#>     Attrib V37    -0.40609879439929564
#>     Attrib V38    0.14723634338990563
#>     Attrib V39    -0.020128079341269194
#>     Attrib V4    0.17960140774598285
#>     Attrib V40    -0.34682388828697863
#>     Attrib V41    -0.05825990936171328
#>     Attrib V42    0.2869438559826187
#>     Attrib V43    0.1915876315163088
#>     Attrib V44    0.18663615181644444
#>     Attrib V45    0.08154629415288558
#>     Attrib V46    0.09908495835782276
#>     Attrib V47    -0.06408428322156823
#>     Attrib V48    0.3249020746713697
#>     Attrib V49    0.36318299961185435
#>     Attrib V5    0.34386054455393
#>     Attrib V50    -0.5487719129968869
#>     Attrib V51    0.1295068858489601
#>     Attrib V52    0.27036570026573253
#>     Attrib V53    -0.004461044079812069
#>     Attrib V54    0.4609633761935772
#>     Attrib V55    -0.3873689319490324
#>     Attrib V56    0.4674815276720223
#>     Attrib V57    0.22585285480413525
#>     Attrib V58    0.08210691711237696
#>     Attrib V59    0.5952385365904018
#>     Attrib V6    -0.07703193481735533
#>     Attrib V60    0.34998578623603827
#>     Attrib V7    -0.10481833295336733
#>     Attrib V8    -0.4946801614379284
#>     Attrib V9    0.404333663723783
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.15101812077751778
#>     Attrib V1    0.13217145729964863
#>     Attrib V10    -0.15288112663205913
#>     Attrib V11    0.3097661410398354
#>     Attrib V12    0.5505884524516075
#>     Attrib V13    0.20642193496825645
#>     Attrib V14    -0.6729138445407181
#>     Attrib V15    -0.5510794621712607
#>     Attrib V16    -0.1339684763368208
#>     Attrib V17    0.2469031155717225
#>     Attrib V18    0.1213927366026431
#>     Attrib V19    0.45497504222346463
#>     Attrib V2    0.02440549760988364
#>     Attrib V20    0.4476212245436521
#>     Attrib V21    0.26296333361486085
#>     Attrib V22    0.8436993141588346
#>     Attrib V23    0.4044460499619094
#>     Attrib V24    0.043833113179844216
#>     Attrib V25    -0.09160829593763967
#>     Attrib V26    -0.24380461403157763
#>     Attrib V27    -0.28285140330897923
#>     Attrib V28    0.2494091908536995
#>     Attrib V29    -0.544511175444755
#>     Attrib V3    -0.1911680908910134
#>     Attrib V30    0.13368733824221102
#>     Attrib V31    -0.8489639489286722
#>     Attrib V32    -0.21962044925772248
#>     Attrib V33    0.1435774673141442
#>     Attrib V34    -0.29840318736314203
#>     Attrib V35    6.204601046463904E-5
#>     Attrib V36    -0.5676203063930653
#>     Attrib V37    -0.3370653509276197
#>     Attrib V38    0.48745733901096655
#>     Attrib V39    0.06222568772446219
#>     Attrib V4    0.17630310846947433
#>     Attrib V40    -0.617061969349352
#>     Attrib V41    -0.04520597360302589
#>     Attrib V42    0.20957871295963598
#>     Attrib V43    0.22927570682450746
#>     Attrib V44    0.52679537849732
#>     Attrib V45    0.3488122865040176
#>     Attrib V46    0.21434100864696168
#>     Attrib V47    0.0981916146801347
#>     Attrib V48    0.5522067902770593
#>     Attrib V49    0.7825207129765567
#>     Attrib V5    0.5722376257229852
#>     Attrib V50    -1.0925325399932346
#>     Attrib V51    0.305355355218101
#>     Attrib V52    0.6922845112155904
#>     Attrib V53    -0.01228648109858881
#>     Attrib V54    0.6360932704290659
#>     Attrib V55    -0.7779281620122529
#>     Attrib V56    0.37338778238191644
#>     Attrib V57    -0.044838201715466826
#>     Attrib V58    -0.13063704136584936
#>     Attrib V59    0.7163823035303366
#>     Attrib V6    -0.17128105353788045
#>     Attrib V60    0.31206635028065327
#>     Attrib V7    -0.40630867756766104
#>     Attrib V8    -0.8550936085867508
#>     Attrib V9    0.7850098472066427
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.05851688012042046
#>     Attrib V1    0.1463891360598537
#>     Attrib V10    0.020466818512143773
#>     Attrib V11    -0.17485489052450767
#>     Attrib V12    -0.2029033962999786
#>     Attrib V13    -0.20860165700472003
#>     Attrib V14    -0.017638563854590047
#>     Attrib V15    0.011582763927001341
#>     Attrib V16    -0.10078540341514743
#>     Attrib V17    -0.1731974584351413
#>     Attrib V18    -0.027459056993358957
#>     Attrib V19    -0.2294311090045581
#>     Attrib V2    0.06511842570437029
#>     Attrib V20    -0.13858495410788824
#>     Attrib V21    0.011750815405390778
#>     Attrib V22    -0.1046433455605653
#>     Attrib V23    0.1027957514441892
#>     Attrib V24    -0.12749012096072923
#>     Attrib V25    -0.2484076147298319
#>     Attrib V26    -0.2648203270610117
#>     Attrib V27    -0.18832896421743697
#>     Attrib V28    -0.13855750177328877
#>     Attrib V29    0.03532055774370353
#>     Attrib V3    0.06762270246214534
#>     Attrib V30    -0.1239278718795366
#>     Attrib V31    0.3087639805503802
#>     Attrib V32    0.4614146077966335
#>     Attrib V33    0.34913209211705637
#>     Attrib V34    0.39719812534443893
#>     Attrib V35    0.36209175579741937
#>     Attrib V36    0.577870928888762
#>     Attrib V37    0.30040310344243865
#>     Attrib V38    0.013895575025421004
#>     Attrib V39    0.15542835784272455
#>     Attrib V4    0.0762817312001207
#>     Attrib V40    0.5838765960112204
#>     Attrib V41    0.47728254924903873
#>     Attrib V42    0.2842983795395
#>     Attrib V43    0.4484064446109992
#>     Attrib V44    0.1440041631439863
#>     Attrib V45    -0.09195380166356987
#>     Attrib V46    -0.013779840291953754
#>     Attrib V47    0.024310131608338573
#>     Attrib V48    -0.37401442947522573
#>     Attrib V49    -0.3128254058199076
#>     Attrib V5    -0.2545076337555168
#>     Attrib V50    0.6613353029446726
#>     Attrib V51    0.019299718994570867
#>     Attrib V52    -0.09913766383250835
#>     Attrib V53    0.03335418217314475
#>     Attrib V54    -0.011336041541479847
#>     Attrib V55    0.19829302633429802
#>     Attrib V56    0.03368093820653386
#>     Attrib V57    0.2159681662159016
#>     Attrib V58    0.18767577439847605
#>     Attrib V59    -0.0976876637201623
#>     Attrib V6    0.26550132694051015
#>     Attrib V60    -0.07390146465617646
#>     Attrib V7    0.2705106361473746
#>     Attrib V8    0.4712947145002245
#>     Attrib V9    -0.1993579426124219
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.9150348784771462
#>     Attrib V1    0.07066148337007996
#>     Attrib V10    0.9789819311022278
#>     Attrib V11    1.4380095145514347
#>     Attrib V12    2.1339935182565495
#>     Attrib V13    0.95405760350587
#>     Attrib V14    0.23582888022709828
#>     Attrib V15    -0.6979226916135568
#>     Attrib V16    -0.9905399419747558
#>     Attrib V17    -0.9294539545466975
#>     Attrib V18    -0.19311082968436555
#>     Attrib V19    -0.08515516202081906
#>     Attrib V2    0.1896348551490365
#>     Attrib V20    -0.6894814515914663
#>     Attrib V21    -0.37308542313591986
#>     Attrib V22    0.19209060750622142
#>     Attrib V23    0.5292341006538468
#>     Attrib V24    0.41470795093398777
#>     Attrib V25    0.23314823778851246
#>     Attrib V26    0.8350689182589511
#>     Attrib V27    1.1595976969285997
#>     Attrib V28    1.8179989516948558
#>     Attrib V29    1.132301022462508
#>     Attrib V3    -0.22774276605446936
#>     Attrib V30    0.06711491395285019
#>     Attrib V31    -0.7216258695822119
#>     Attrib V32    -0.03080884804854314
#>     Attrib V33    -0.569209730936871
#>     Attrib V34    -0.38298856909027795
#>     Attrib V35    0.47493596328214055
#>     Attrib V36    -0.6018659164266255
#>     Attrib V37    -0.040473597416325786
#>     Attrib V38    -0.03530648334867706
#>     Attrib V39    0.6723132777025789
#>     Attrib V4    0.08697958667906251
#>     Attrib V40    0.6540389800669802
#>     Attrib V41    1.2635680600896095
#>     Attrib V42    -0.40381752402063126
#>     Attrib V43    -0.21077729238991666
#>     Attrib V44    0.16811108735222505
#>     Attrib V45    -0.03755253857644907
#>     Attrib V46    0.27770889460994924
#>     Attrib V47    0.24618917618000363
#>     Attrib V48    0.9463389938602413
#>     Attrib V49    1.145673298693903
#>     Attrib V5    0.9791985398040427
#>     Attrib V50    -0.9299857162434079
#>     Attrib V51    0.6071283358952321
#>     Attrib V52    0.9455939949812394
#>     Attrib V53    0.792206085222087
#>     Attrib V54    0.47201231386204645
#>     Attrib V55    -0.5804587823399406
#>     Attrib V56    -0.6406692041554475
#>     Attrib V57    -0.13822323533045233
#>     Attrib V58    0.11673530923965239
#>     Attrib V59    0.3276448262969392
#>     Attrib V6    0.6727629835401256
#>     Attrib V60    0.5686420903859959
#>     Attrib V7    -0.28639536357586165
#>     Attrib V8    -0.4736201520146176
#>     Attrib V9    1.2959589954162583
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.1682259067196086
#>     Attrib V1    0.07047912674122189
#>     Attrib V10    0.03883979352030333
#>     Attrib V11    -0.008751491890713147
#>     Attrib V12    0.007209104403404962
#>     Attrib V13    -0.018017183435422576
#>     Attrib V14    0.06341671352132772
#>     Attrib V15    0.015099524723450655
#>     Attrib V16    0.0144782051045763
#>     Attrib V17    0.02956763269716445
#>     Attrib V18    -0.037574736875350505
#>     Attrib V19    0.008074523923978892
#>     Attrib V2    0.09590677796380807
#>     Attrib V20    -0.0422992562294708
#>     Attrib V21    -0.03135921482880653
#>     Attrib V22    -0.05041933301181188
#>     Attrib V23    -0.04557009616650186
#>     Attrib V24    -0.07508610634934512
#>     Attrib V25    -0.0520126947142444
#>     Attrib V26    -0.08450643140760256
#>     Attrib V27    -0.012411685888975385
#>     Attrib V28    -0.01325380437886918
#>     Attrib V29    -0.009456914975136062
#>     Attrib V3    0.052411812136160536
#>     Attrib V30    -0.029890862310126023
#>     Attrib V31    -0.020901419294053186
#>     Attrib V32    0.009819377489113617
#>     Attrib V33    0.07665989955266839
#>     Attrib V34    0.04351172600996388
#>     Attrib V35    0.11972060413917358
#>     Attrib V36    0.13979719369357177
#>     Attrib V37    0.1263282154724557
#>     Attrib V38    0.020133292723885657
#>     Attrib V39    0.0734913079179683
#>     Attrib V4    0.11309574766157673
#>     Attrib V40    0.1014138158124462
#>     Attrib V41    0.08754278353448045
#>     Attrib V42    0.10614604134193752
#>     Attrib V43    0.07313674989321939
#>     Attrib V44    0.056070405408290204
#>     Attrib V45    0.054084720268578294
#>     Attrib V46    0.02184569800314191
#>     Attrib V47    0.034593129132033024
#>     Attrib V48    0.06301219305566261
#>     Attrib V49    0.0036770903215080073
#>     Attrib V5    0.006296945890814058
#>     Attrib V50    0.12039204870402231
#>     Attrib V51    0.0318486462118327
#>     Attrib V52    -0.012612627376958015
#>     Attrib V53    0.020701212553521208
#>     Attrib V54    0.021315741904604283
#>     Attrib V55    0.07616204266072121
#>     Attrib V56    0.08395908591261358
#>     Attrib V57    0.1286905997588821
#>     Attrib V58    0.08806585864936589
#>     Attrib V59    0.07683254544917123
#>     Attrib V6    0.08627848506545745
#>     Attrib V60    0.12245455489154838
#>     Attrib V7    0.012625003643557151
#>     Attrib V8    0.10308568769907914
#>     Attrib V9    0.009371212463278147
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.3315378283535882
#>     Attrib V1    0.06979783594393028
#>     Attrib V10    0.21986021576233242
#>     Attrib V11    0.5111478712505718
#>     Attrib V12    0.8284340826967999
#>     Attrib V13    0.40784809936249394
#>     Attrib V14    -0.23014311766087595
#>     Attrib V15    -0.43138402694769107
#>     Attrib V16    -0.37348350646437933
#>     Attrib V17    -0.2699314824979816
#>     Attrib V18    -0.008072011401750177
#>     Attrib V19    0.11490677615542566
#>     Attrib V2    0.015887401974931808
#>     Attrib V20    -0.13648288724647958
#>     Attrib V21    -0.09957426519044124
#>     Attrib V22    0.22740630274493437
#>     Attrib V23    0.0879774175722279
#>     Attrib V24    0.08246531086553435
#>     Attrib V25    0.056630716725348924
#>     Attrib V26    0.19877437695114106
#>     Attrib V27    0.3191803073712691
#>     Attrib V28    0.6293504811572447
#>     Attrib V29    0.1625903575709377
#>     Attrib V3    -0.23360401688276505
#>     Attrib V30    0.1775097736542728
#>     Attrib V31    -0.4059874127898145
#>     Attrib V32    -0.1612700758449296
#>     Attrib V33    -0.20443406768171982
#>     Attrib V34    -0.25941136728575415
#>     Attrib V35    0.07609113831642028
#>     Attrib V36    -0.37638864258254257
#>     Attrib V37    -0.17223614431816328
#>     Attrib V38    0.1499218774832522
#>     Attrib V39    0.1344683694471205
#>     Attrib V4    0.08794435812025081
#>     Attrib V40    -0.26789816730087523
#>     Attrib V41    0.13063493424052716
#>     Attrib V42    -0.054231501187519036
#>     Attrib V43    0.06498092386851503
#>     Attrib V44    0.27369278627757204
#>     Attrib V45    0.07023587439047699
#>     Attrib V46    0.03712970828988106
#>     Attrib V47    0.048217933460048226
#>     Attrib V48    0.541255043621599
#>     Attrib V49    0.480848874049893
#>     Attrib V5    0.4586592488135873
#>     Attrib V50    -0.6445776917500083
#>     Attrib V51    0.32168621189538515
#>     Attrib V52    0.5984133066391816
#>     Attrib V53    0.17154704802114334
#>     Attrib V54    0.5362069237251084
#>     Attrib V55    -0.4266590910736021
#>     Attrib V56    -0.10147317041908134
#>     Attrib V57    -0.0526914212062655
#>     Attrib V58    -0.06493079552059633
#>     Attrib V59    0.3313944651175094
#>     Attrib V6    -0.010272463131141366
#>     Attrib V60    0.269326250941757
#>     Attrib V7    -0.4509447126883654
#>     Attrib V8    -0.465207373066637
#>     Attrib V9    0.6336411868483333
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.6144500010627792
#>     Attrib V1    -0.46260395667184606
#>     Attrib V10    0.23356684262713404
#>     Attrib V11    -0.44806135843952993
#>     Attrib V12    -1.1098854045549973
#>     Attrib V13    -0.6887443639797138
#>     Attrib V14    1.0271495773437895
#>     Attrib V15    1.1288572068124498
#>     Attrib V16    0.6387730154873404
#>     Attrib V17    0.1394907495107648
#>     Attrib V18    0.254308424242014
#>     Attrib V19    0.3440875055260537
#>     Attrib V2    -0.19241727544398726
#>     Attrib V20    0.07333064043566158
#>     Attrib V21    -0.28526251369278005
#>     Attrib V22    -0.9153295319186869
#>     Attrib V23    -0.8606839799014535
#>     Attrib V24    -0.3894926032777737
#>     Attrib V25    0.5157479934292591
#>     Attrib V26    1.2578871575665973
#>     Attrib V27    0.7904952398343565
#>     Attrib V28    -0.2954614741319702
#>     Attrib V29    0.24424004218736525
#>     Attrib V3    0.37354045021812
#>     Attrib V30    -0.4483785285486565
#>     Attrib V31    0.5667328971852558
#>     Attrib V32    -0.33222469305379027
#>     Attrib V33    -0.8701072141033596
#>     Attrib V34    0.18060822087281522
#>     Attrib V35    0.2760933018646165
#>     Attrib V36    1.4046521167542527
#>     Attrib V37    0.40501659149524494
#>     Attrib V38    -0.7501486155900988
#>     Attrib V39    -0.3930647143325147
#>     Attrib V4    0.10028710863548498
#>     Attrib V40    0.2885721862315805
#>     Attrib V41    -0.982102653868724
#>     Attrib V42    -0.9577449269163143
#>     Attrib V43    -0.9519289029449666
#>     Attrib V44    -0.7448196817360054
#>     Attrib V45    -0.3592544788824191
#>     Attrib V46    -0.3690204408355698
#>     Attrib V47    0.014427114376690883
#>     Attrib V48    -0.8844891308893059
#>     Attrib V49    -0.8050362953271747
#>     Attrib V5    -0.7774408525281824
#>     Attrib V50    1.9427224074321525
#>     Attrib V51    -0.1280574881191012
#>     Attrib V52    -0.3336465168067482
#>     Attrib V53    0.554760809445612
#>     Attrib V54    0.49404694476473454
#>     Attrib V55    1.6142495626001088
#>     Attrib V56    -0.023812518175239106
#>     Attrib V57    0.10460563147024222
#>     Attrib V58    0.40050810351726246
#>     Attrib V59    -0.5561847679513396
#>     Attrib V6    -0.2500058859249823
#>     Attrib V60    0.11575816136600997
#>     Attrib V7    0.41025463746137797
#>     Attrib V8    1.0560881395559985
#>     Attrib V9    -1.2708815702875278
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.01591833039469144
#>     Attrib V1    0.06161893513074847
#>     Attrib V10    -0.11200404283395735
#>     Attrib V11    0.16171883746722884
#>     Attrib V12    0.3065455186429989
#>     Attrib V13    0.14886752908635445
#>     Attrib V14    -0.21744963588822117
#>     Attrib V15    -0.1898462250673705
#>     Attrib V16    -0.011058105163902546
#>     Attrib V17    0.13372998682742182
#>     Attrib V18    0.07532957284255486
#>     Attrib V19    0.19241387335332377
#>     Attrib V2    0.06221979759902807
#>     Attrib V20    0.2769405039102892
#>     Attrib V21    0.20028028318353785
#>     Attrib V22    0.4585852093908244
#>     Attrib V23    0.13358821189457817
#>     Attrib V24    0.07526784113642707
#>     Attrib V25    0.019780117537966626
#>     Attrib V26    -0.23133914816718415
#>     Attrib V27    -0.23395126878513892
#>     Attrib V28    0.00717395154211458
#>     Attrib V29    -0.3149348193420098
#>     Attrib V3    -0.02282091757602053
#>     Attrib V30    -0.04279547559625522
#>     Attrib V31    -0.3900083654944762
#>     Attrib V32    -0.07016124045612611
#>     Attrib V33    0.08072602582486586
#>     Attrib V34    -0.1888534214995857
#>     Attrib V35    -0.11375548508425465
#>     Attrib V36    -0.46801471772680103
#>     Attrib V37    -0.3215175263830542
#>     Attrib V38    0.09636896252359327
#>     Attrib V39    -0.020171570279174943
#>     Attrib V4    0.08488112166505597
#>     Attrib V40    -0.31202694779165985
#>     Attrib V41    0.008604928268996436
#>     Attrib V42    0.09146305586454137
#>     Attrib V43    0.07706778291326415
#>     Attrib V44    0.08151244443385756
#>     Attrib V45    0.12644177351779587
#>     Attrib V46    0.06034839233686455
#>     Attrib V47    0.031009566054506308
#>     Attrib V48    0.28859941481933504
#>     Attrib V49    0.3159033587814383
#>     Attrib V5    0.305624829639875
#>     Attrib V50    -0.5358191917303788
#>     Attrib V51    0.17169508585980645
#>     Attrib V52    0.3426810122020652
#>     Attrib V53    -0.005687350832237128
#>     Attrib V54    0.3246993036112153
#>     Attrib V55    -0.2979443263196422
#>     Attrib V56    0.23978878996999442
#>     Attrib V57    0.08518026714885231
#>     Attrib V58    -0.026630378106804378
#>     Attrib V59    0.37311558828175034
#>     Attrib V6    -0.04495544920133941
#>     Attrib V60    0.2471282612521215
#>     Attrib V7    -0.19885186591298237
#>     Attrib V8    -0.40781247712255553
#>     Attrib V9    0.4104857062490202
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.1304661474933015
#>     Attrib V1    0.1114272788890976
#>     Attrib V10    0.08704320139752791
#>     Attrib V11    0.07010963726547846
#>     Attrib V12    0.09786066665248638
#>     Attrib V13    0.10274316480366046
#>     Attrib V14    0.03954589734101907
#>     Attrib V15    0.04196918624277823
#>     Attrib V16    0.03795231118855822
#>     Attrib V17    0.08312045776419304
#>     Attrib V18    0.013013793794545333
#>     Attrib V19    -0.01176214079463855
#>     Attrib V2    0.12225178565508134
#>     Attrib V20    -0.036929231424248636
#>     Attrib V21    -0.0026259812513965246
#>     Attrib V22    -0.016234677132647316
#>     Attrib V23    -0.06530762384292949
#>     Attrib V24    -0.09511492032020247
#>     Attrib V25    -0.012807792108771459
#>     Attrib V26    -0.027363869588070116
#>     Attrib V27    -0.0499401169394956
#>     Attrib V28    0.012457737261689977
#>     Attrib V29    -0.07601045987178662
#>     Attrib V3    0.0639085535082112
#>     Attrib V30    0.018168761455661986
#>     Attrib V31    -0.008469084617225706
#>     Attrib V32    -0.05381634923584377
#>     Attrib V33    -0.05335785392041329
#>     Attrib V34    -0.06422889972507359
#>     Attrib V35    0.032677051623815664
#>     Attrib V36    -0.021549265662924862
#>     Attrib V37    0.04352859853933475
#>     Attrib V38    0.02768554272111455
#>     Attrib V39    0.10914992868773253
#>     Attrib V4    0.14007337506459647
#>     Attrib V40    0.016923064799659653
#>     Attrib V41    0.03419103762460279
#>     Attrib V42    0.08490104496129462
#>     Attrib V43    0.015217244631308899
#>     Attrib V44    0.016257052819452455
#>     Attrib V45    0.07336583303915131
#>     Attrib V46    0.037818758939318006
#>     Attrib V47    0.020699874240734197
#>     Attrib V48    0.12356018057178308
#>     Attrib V49    0.0646213916281229
#>     Attrib V5    0.07737473825479067
#>     Attrib V50    -0.026412065889967317
#>     Attrib V51    0.0585974267559069
#>     Attrib V52    0.07551643757279444
#>     Attrib V53    0.06715188007269499
#>     Attrib V54    0.08945722719715088
#>     Attrib V55    0.013672400158948399
#>     Attrib V56    0.14141726812810756
#>     Attrib V57    0.07895964911001102
#>     Attrib V58    0.10442856753910094
#>     Attrib V59    0.1797793144199582
#>     Attrib V6    0.024717546829523197
#>     Attrib V60    0.15794908520733775
#>     Attrib V7    -0.0712911589920241
#>     Attrib V8    -0.026161433854692235
#>     Attrib V9    0.08883521597823513
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.16892204078038447
#>     Attrib V1    0.14447568708409467
#>     Attrib V10    -0.18247550802467757
#>     Attrib V11    0.013594473972827552
#>     Attrib V12    0.03901621706697135
#>     Attrib V13    0.06631667341493756
#>     Attrib V14    -0.34521152282287243
#>     Attrib V15    -0.16773822476556338
#>     Attrib V16    0.11560348197271941
#>     Attrib V17    0.29803825743821266
#>     Attrib V18    0.13428719017620064
#>     Attrib V19    0.22254569367032057
#>     Attrib V2    0.1478253204088251
#>     Attrib V20    0.34540445235514367
#>     Attrib V21    0.19919066560373944
#>     Attrib V22    0.520426929541064
#>     Attrib V23    0.21143174431040918
#>     Attrib V24    0.07846009770808192
#>     Attrib V25    -0.046069228663396675
#>     Attrib V26    -0.2922465317507192
#>     Attrib V27    -0.5011144778919755
#>     Attrib V28    -0.3313184071518888
#>     Attrib V29    -0.7203375399105322
#>     Attrib V3    -0.04248112401152734
#>     Attrib V30    -0.12922003917028796
#>     Attrib V31    -0.42718119985001984
#>     Attrib V32    -0.100106830705658
#>     Attrib V33    0.1843813393628777
#>     Attrib V34    -0.1846580867159647
#>     Attrib V35    -0.16741210846775897
#>     Attrib V36    -0.46454051557017195
#>     Attrib V37    -0.34788627671394445
#>     Attrib V38    0.181428472700111
#>     Attrib V39    -0.09085642300739456
#>     Attrib V4    0.17763134208783204
#>     Attrib V40    -0.3942016431605072
#>     Attrib V41    -0.10232237609943075
#>     Attrib V42    0.20240738947068296
#>     Attrib V43    0.12707716857694584
#>     Attrib V44    0.2021502023067338
#>     Attrib V45    0.12247707991444337
#>     Attrib V46    0.07672591349689438
#>     Attrib V47    -0.006592032950983793
#>     Attrib V48    0.3143198874831849
#>     Attrib V49    0.3473774463437808
#>     Attrib V5    0.2784493336748701
#>     Attrib V50    -0.5262597437548135
#>     Attrib V51    0.14380088701756624
#>     Attrib V52    0.2564397151090011
#>     Attrib V53    0.04888638737131742
#>     Attrib V54    0.46814999845760935
#>     Attrib V55    -0.30563352592916915
#>     Attrib V56    0.33794728381448197
#>     Attrib V57    0.1596944644859714
#>     Attrib V58    0.003556234993069681
#>     Attrib V59    0.49123882001922026
#>     Attrib V6    -0.14790540595553428
#>     Attrib V60    0.3044260965604559
#>     Attrib V7    -0.12031008342530039
#>     Attrib V8    -0.40250820238414653
#>     Attrib V9    0.44838254998455745
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.10557293863282302
#>     Attrib V1    0.12184882464345495
#>     Attrib V10    -0.04354471599012566
#>     Attrib V11    0.0686988883610224
#>     Attrib V12    0.08477826722947578
#>     Attrib V13    0.04342599027822184
#>     Attrib V14    0.06687150256283239
#>     Attrib V15    0.03308138444154653
#>     Attrib V16    0.07399047969731545
#>     Attrib V17    0.046200649117415275
#>     Attrib V18    0.08865916642399248
#>     Attrib V19    0.021369738904255177
#>     Attrib V2    0.08039009997689107
#>     Attrib V20    0.058274905952508865
#>     Attrib V21    0.0416264484235611
#>     Attrib V22    0.036831678762370285
#>     Attrib V23    -0.021990736289818118
#>     Attrib V24    -0.07888317200499954
#>     Attrib V25    -0.10266977139242278
#>     Attrib V26    -0.12822410543436275
#>     Attrib V27    -0.08880642135937963
#>     Attrib V28    0.031743701346729186
#>     Attrib V29    -0.049910867623901525
#>     Attrib V3    0.08557235798172193
#>     Attrib V30    0.038340495393716686
#>     Attrib V31    -0.16300046564978837
#>     Attrib V32    -0.08606560957138482
#>     Attrib V33    -0.018343410777788855
#>     Attrib V34    -0.08789526907338667
#>     Attrib V35    -0.032663196695986225
#>     Attrib V36    -0.04956199906209626
#>     Attrib V37    -0.05923712956605673
#>     Attrib V38    0.016444189821671236
#>     Attrib V39    0.047309043276281666
#>     Attrib V4    0.0916712427582659
#>     Attrib V40    -0.10675417765427839
#>     Attrib V41    -0.04865399484316271
#>     Attrib V42    0.06943895825446174
#>     Attrib V43    -6.707054930438365E-4
#>     Attrib V44    0.1023466251822934
#>     Attrib V45    0.1150692662072512
#>     Attrib V46    0.033503882341438564
#>     Attrib V47    0.015961124575933617
#>     Attrib V48    0.09540883350723384
#>     Attrib V49    0.15110079902114207
#>     Attrib V5    0.15486188453214356
#>     Attrib V50    -0.12073773690840289
#>     Attrib V51    0.09183586927356198
#>     Attrib V52    0.1251651626042934
#>     Attrib V53    0.05587240971702478
#>     Attrib V54    0.09134994617007049
#>     Attrib V55    -0.03922151604814142
#>     Attrib V56    0.11520759324637407
#>     Attrib V57    0.09573586930953581
#>     Attrib V58    0.11258451037334961
#>     Attrib V59    0.1735681201242098
#>     Attrib V6    0.019282666175643365
#>     Attrib V60    0.14219032238028909
#>     Attrib V7    -0.062448262438282456
#>     Attrib V8    -0.04224972765763522
#>     Attrib V9    0.1628005694489975
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
