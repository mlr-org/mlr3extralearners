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
#>     Threshold    0.0761504810714105
#>     Node 2    2.6447469887701867
#>     Node 3    1.9857242555870713
#>     Node 4    1.237242468454772
#>     Node 5    -2.008762414266364
#>     Node 6    1.7206339286682046
#>     Node 7    2.348757488574741
#>     Node 8    1.73299293632498
#>     Node 9    2.3570445348876787
#>     Node 10    -1.8997312978904302
#>     Node 11    1.4253813446570696
#>     Node 12    1.7671907331562444
#>     Node 13    1.0027798496229983
#>     Node 14    1.9838257392919372
#>     Node 15    -2.357097579349256
#>     Node 16    0.06426342351634395
#>     Node 17    1.087035676809955
#>     Node 18    -0.6961929782810996
#>     Node 19    2.4309716060041247
#>     Node 20    2.2061689030504703
#>     Node 21    -1.826826963683825
#>     Node 22    1.3706500336707101
#>     Node 23    1.3648746623571284
#>     Node 24    -2.1944271576324192
#>     Node 25    3.9006360343262148
#>     Node 26    -0.008091761523167837
#>     Node 27    2.3139270356804937
#>     Node 28    -3.1908160821631193
#>     Node 29    1.1861328250943035
#>     Node 30    0.8733059029508105
#>     Node 31    1.4342518169372198
#>     Node 32    0.2625933484969676
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    -0.06032890047019411
#>     Node 2    -2.6787743863682043
#>     Node 3    -1.9811309534960397
#>     Node 4    -1.2093322285849268
#>     Node 5    2.0232989459116504
#>     Node 6    -1.707602773254153
#>     Node 7    -2.32231045358524
#>     Node 8    -1.7798696168931023
#>     Node 9    -2.346226175039407
#>     Node 10    1.8433696674681765
#>     Node 11    -1.3995705352786276
#>     Node 12    -1.8532313253637547
#>     Node 13    -0.9572946053180017
#>     Node 14    -1.9250641968309543
#>     Node 15    2.349188464834304
#>     Node 16    -0.07066437870705441
#>     Node 17    -1.0603145882826601
#>     Node 18    0.7405036876144055
#>     Node 19    -2.4216328062997396
#>     Node 20    -2.179047692547291
#>     Node 21    1.8786496988240438
#>     Node 22    -1.431554564259515
#>     Node 23    -1.415129995024128
#>     Node 24    2.1814079877936887
#>     Node 25    -3.920670714944306
#>     Node 26    -0.06472674524425756
#>     Node 27    -2.337761211282205
#>     Node 28    3.1581765497242107
#>     Node 29    -1.228679935964855
#>     Node 30    -0.8017795706491274
#>     Node 31    -1.3833742678378507
#>     Node 32    -0.27510507658840283
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    0.23508901672053928
#>     Attrib V1    0.5036448322023148
#>     Attrib V10    0.5414430133010333
#>     Attrib V11    0.3920704781963999
#>     Attrib V12    0.08982612877705401
#>     Attrib V13    -0.19071215933967386
#>     Attrib V14    -0.08840427611908104
#>     Attrib V15    0.2228599315901732
#>     Attrib V16    0.19489414716222903
#>     Attrib V17    -0.2500103761870508
#>     Attrib V18    -0.47230967358900255
#>     Attrib V19    0.42729256717916764
#>     Attrib V2    0.2660220286859014
#>     Attrib V20    1.0279674830691936
#>     Attrib V21    1.2722520638256292
#>     Attrib V22    0.8803680497044307
#>     Attrib V23    0.6949285891138398
#>     Attrib V24    1.0932262632131708
#>     Attrib V25    -0.007882680146814878
#>     Attrib V26    -0.19165192931378686
#>     Attrib V27    0.028291665227458327
#>     Attrib V28    -0.06736567952738559
#>     Attrib V29    -0.6476262523057591
#>     Attrib V3    0.06658967765686113
#>     Attrib V30    0.5838145930108734
#>     Attrib V31    -1.1399444053746743
#>     Attrib V32    -0.578118960109041
#>     Attrib V33    0.12353017683015458
#>     Attrib V34    0.38814579471793853
#>     Attrib V35    0.8744895778327098
#>     Attrib V36    -0.44729950577586963
#>     Attrib V37    -0.7472655429647961
#>     Attrib V38    0.5758517346949348
#>     Attrib V39    0.6247539438648272
#>     Attrib V4    -0.10404965422657961
#>     Attrib V40    -0.024154022740332674
#>     Attrib V41    0.12613734695653345
#>     Attrib V42    0.7375262450652643
#>     Attrib V43    0.6592443199641901
#>     Attrib V44    0.5076457336957001
#>     Attrib V45    0.9787911315692206
#>     Attrib V46    0.5893992875424524
#>     Attrib V47    0.12023245109962585
#>     Attrib V48    0.7044176890193313
#>     Attrib V49    0.7248749265978691
#>     Attrib V5    -0.21523405020845585
#>     Attrib V50    -0.6401383249179078
#>     Attrib V51    0.016358982538428036
#>     Attrib V52    0.062374015677424656
#>     Attrib V53    0.2296437569231639
#>     Attrib V54    -0.0450915978297487
#>     Attrib V55    -0.57644490597126
#>     Attrib V56    0.31175251396529596
#>     Attrib V57    -1.3024439340942737
#>     Attrib V58    0.5720583013925065
#>     Attrib V59    0.7364509604949636
#>     Attrib V6    -0.6067506787465076
#>     Attrib V60    0.4690507912145946
#>     Attrib V7    -0.7284802569548382
#>     Attrib V8    -0.5001492490528762
#>     Attrib V9    0.8617408458565592
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.4579383401639575
#>     Attrib V1    0.30368678222113493
#>     Attrib V10    0.058870046534646406
#>     Attrib V11    -0.06528026416819664
#>     Attrib V12    0.10400774969101628
#>     Attrib V13    -0.2803765586618225
#>     Attrib V14    0.02347160852198664
#>     Attrib V15    0.42573532537375247
#>     Attrib V16    0.3128642247635956
#>     Attrib V17    -0.25900189762639736
#>     Attrib V18    -0.5094761498772677
#>     Attrib V19    0.1283127630449079
#>     Attrib V2    0.20962869632555534
#>     Attrib V20    0.4153226447519922
#>     Attrib V21    0.5394665995916168
#>     Attrib V22    0.1645716364799638
#>     Attrib V23    -0.031624754968556136
#>     Attrib V24    0.5983884368509889
#>     Attrib V25    -0.3232598036053836
#>     Attrib V26    -0.6052431617800327
#>     Attrib V27    -0.16529901278339218
#>     Attrib V28    -0.2813041584754138
#>     Attrib V29    -0.7955307093396847
#>     Attrib V3    0.037137563547380854
#>     Attrib V30    0.31257335567905925
#>     Attrib V31    -0.39675795913507644
#>     Attrib V32    -4.3472504714816933E-4
#>     Attrib V33    0.2580847709470029
#>     Attrib V34    0.11633084698210298
#>     Attrib V35    0.19006880553569608
#>     Attrib V36    -1.0807748264242916
#>     Attrib V37    -1.1986492688651884
#>     Attrib V38    -0.10790898527716347
#>     Attrib V39    0.16763166085700296
#>     Attrib V4    -0.15705288113072208
#>     Attrib V40    0.0057766848988382675
#>     Attrib V41    0.15310719336644343
#>     Attrib V42    0.6179033979397367
#>     Attrib V43    0.2591247331710849
#>     Attrib V44    -0.08096935811328905
#>     Attrib V45    0.29924709467163874
#>     Attrib V46    0.16660286318860548
#>     Attrib V47    -0.08573909565446393
#>     Attrib V48    0.5798104573525344
#>     Attrib V49    0.5141002239771056
#>     Attrib V5    -0.2923659055628896
#>     Attrib V50    -0.5490172865094726
#>     Attrib V51    -0.22011410135529122
#>     Attrib V52    0.04043778500897137
#>     Attrib V53    0.522596022453974
#>     Attrib V54    0.2528927676213233
#>     Attrib V55    -0.09728889196752284
#>     Attrib V56    0.39493273020805386
#>     Attrib V57    -0.2682264855418769
#>     Attrib V58    0.7218321889550054
#>     Attrib V59    0.7957605977339379
#>     Attrib V6    -0.4208202237433096
#>     Attrib V60    0.4451652599831346
#>     Attrib V7    -0.5870203442434397
#>     Attrib V8    -0.3552814533010938
#>     Attrib V9    0.43357500317008746
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    0.23881513538580917
#>     Attrib V1    0.18542231356953132
#>     Attrib V10    3.655962583732033E-5
#>     Attrib V11    -0.059595389356232924
#>     Attrib V12    0.04907623486542246
#>     Attrib V13    -0.12500534104934158
#>     Attrib V14    0.14455186556716262
#>     Attrib V15    0.3780840631891418
#>     Attrib V16    0.22277370368317143
#>     Attrib V17    -0.19752677032990815
#>     Attrib V18    -0.3524167454037096
#>     Attrib V19    -0.0483487379123464
#>     Attrib V2    0.1254112114063563
#>     Attrib V20    0.1245914556694755
#>     Attrib V21    0.2525432128213919
#>     Attrib V22    -0.11343480226782991
#>     Attrib V23    -0.24901161279236556
#>     Attrib V24    0.14211999444504334
#>     Attrib V25    -0.40035285812375204
#>     Attrib V26    -0.4438034987021332
#>     Attrib V27    -0.017520831901685262
#>     Attrib V28    0.06255431197365735
#>     Attrib V29    -0.17246725939509733
#>     Attrib V3    0.03749879494682738
#>     Attrib V30    0.15236929165542726
#>     Attrib V31    -0.21862068091615797
#>     Attrib V32    -0.04996191602603006
#>     Attrib V33    0.006352986817675501
#>     Attrib V34    -0.05137558401660487
#>     Attrib V35    0.04974961691615013
#>     Attrib V36    -0.6838783219149727
#>     Attrib V37    -0.6020734668493796
#>     Attrib V38    -0.10303430957739017
#>     Attrib V39    0.032203081015798295
#>     Attrib V4    -0.08604974984346997
#>     Attrib V40    -0.1115829528898885
#>     Attrib V41    -0.0564058071000859
#>     Attrib V42    0.21503776216408557
#>     Attrib V43    0.062399743131025365
#>     Attrib V44    -0.020895075385406556
#>     Attrib V45    0.2597113612997906
#>     Attrib V46    0.08704402764428727
#>     Attrib V47    -0.09128482649215348
#>     Attrib V48    0.3427761432549046
#>     Attrib V49    0.2425208087734049
#>     Attrib V5    -0.06913812852524108
#>     Attrib V50    -0.29316461247299086
#>     Attrib V51    -0.07217783551354398
#>     Attrib V52    0.05340587790827316
#>     Attrib V53    0.4229831337302935
#>     Attrib V54    0.12487692154892638
#>     Attrib V55    0.020074992272602846
#>     Attrib V56    0.190546045493496
#>     Attrib V57    0.04539373328971112
#>     Attrib V58    0.39440500769870435
#>     Attrib V59    0.4521832660184089
#>     Attrib V6    -0.1628117883843647
#>     Attrib V60    0.28638363183189003
#>     Attrib V7    -0.26835243604416853
#>     Attrib V8    -0.28582855921521017
#>     Attrib V9    0.25814755404100337
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.7494872381935132
#>     Attrib V1    -0.20739801997910862
#>     Attrib V10    -0.6183269093504674
#>     Attrib V11    -0.7033938304800084
#>     Attrib V12    -1.2626634590704762
#>     Attrib V13    -0.27656812839131945
#>     Attrib V14    0.3650811790314754
#>     Attrib V15    0.11229472164509915
#>     Attrib V16    0.013701057574917488
#>     Attrib V17    0.6358621676156397
#>     Attrib V18    0.4660647375045087
#>     Attrib V19    0.09951271900850213
#>     Attrib V2    -0.017828923380885184
#>     Attrib V20    0.18275286123416734
#>     Attrib V21    -0.07038962154947734
#>     Attrib V22    -0.045018493784747114
#>     Attrib V23    -0.04925720811528753
#>     Attrib V24    -1.0330841156178276
#>     Attrib V25    -0.14110463233372794
#>     Attrib V26    -0.1919856080723262
#>     Attrib V27    -0.8260510525156717
#>     Attrib V28    -0.6876004742766565
#>     Attrib V29    0.20976878369389054
#>     Attrib V3    0.14834066193371823
#>     Attrib V30    0.018318564233462828
#>     Attrib V31    0.04205400808365934
#>     Attrib V32    -0.12317683742660285
#>     Attrib V33    0.332463949979802
#>     Attrib V34    0.0649064750605384
#>     Attrib V35    -0.4949038255771324
#>     Attrib V36    0.7909007321060796
#>     Attrib V37    0.3703108226480019
#>     Attrib V38    -0.08049227108804503
#>     Attrib V39    -0.3249988167966508
#>     Attrib V4    0.20302410366784604
#>     Attrib V40    -0.07252075000439036
#>     Attrib V41    -0.6230752294180492
#>     Attrib V42    -0.07659253384867426
#>     Attrib V43    -0.2297524067239994
#>     Attrib V44    -0.06027682302717634
#>     Attrib V45    -0.5166057915949664
#>     Attrib V46    -0.5982550328220503
#>     Attrib V47    -0.3381684470204976
#>     Attrib V48    -0.8321292839662088
#>     Attrib V49    -0.3553338240116602
#>     Attrib V5    -0.09282497276590437
#>     Attrib V50    0.73063313759104
#>     Attrib V51    -0.31068264752447405
#>     Attrib V52    -0.29463015873356513
#>     Attrib V53    -0.9061920326105878
#>     Attrib V54    -0.02710961870677757
#>     Attrib V55    0.4550413857217284
#>     Attrib V56    0.42878645515158176
#>     Attrib V57    0.3126875081766493
#>     Attrib V58    -0.04943063457194296
#>     Attrib V59    -0.3044649402944575
#>     Attrib V6    -0.18038633535173135
#>     Attrib V60    -0.30280766578649077
#>     Attrib V7    0.5758397583174893
#>     Attrib V8    0.5654630105021543
#>     Attrib V9    -0.7861781951073179
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.3955532244417722
#>     Attrib V1    0.32441563275605706
#>     Attrib V10    -0.06828851533300127
#>     Attrib V11    -0.11952010370233948
#>     Attrib V12    2.2649511365975262E-4
#>     Attrib V13    -0.35045011745307514
#>     Attrib V14    0.04380880298761338
#>     Attrib V15    0.371687590191271
#>     Attrib V16    0.38209507717067626
#>     Attrib V17    -0.19171437377401504
#>     Attrib V18    -0.3529011951141961
#>     Attrib V19    0.07596616563178009
#>     Attrib V2    0.16977094341191812
#>     Attrib V20    0.38033214407641314
#>     Attrib V21    0.5280524306422992
#>     Attrib V22    0.06418789037754817
#>     Attrib V23    -0.12545949251416993
#>     Attrib V24    0.45105804486148854
#>     Attrib V25    -0.315899306442552
#>     Attrib V26    -0.5890069469345679
#>     Attrib V27    -0.1759653704558308
#>     Attrib V28    -0.31177898899275286
#>     Attrib V29    -0.6232927308369128
#>     Attrib V3    0.018939854009964233
#>     Attrib V30    0.22282424344882948
#>     Attrib V31    -0.42617215656113266
#>     Attrib V32    -0.0665766872104619
#>     Attrib V33    0.2102097186104048
#>     Attrib V34    0.12572921446805627
#>     Attrib V35    0.19239630031875804
#>     Attrib V36    -0.8733469786171515
#>     Attrib V37    -0.9627457423383396
#>     Attrib V38    -0.03933138804922087
#>     Attrib V39    0.13458882336261005
#>     Attrib V4    -0.06927916563679276
#>     Attrib V40    -0.0702181135938514
#>     Attrib V41    0.08486840156353295
#>     Attrib V42    0.5141573125335054
#>     Attrib V43    0.23188655870937552
#>     Attrib V44    -0.03655041092916166
#>     Attrib V45    0.31069205282961204
#>     Attrib V46    0.18243850523452845
#>     Attrib V47    -0.12620257880600186
#>     Attrib V48    0.43999650981466115
#>     Attrib V49    0.39750414623334324
#>     Attrib V5    -0.23196394624462072
#>     Attrib V50    -0.4109864278502451
#>     Attrib V51    -0.18745215165602475
#>     Attrib V52    -0.025361659813672593
#>     Attrib V53    0.4938570974287649
#>     Attrib V54    0.192594487785642
#>     Attrib V55    -0.08116806790748436
#>     Attrib V56    0.36771217049733534
#>     Attrib V57    -0.1369172236404524
#>     Attrib V58    0.6230529549369094
#>     Attrib V59    0.7558007580376147
#>     Attrib V6    -0.3024160739375784
#>     Attrib V60    0.4903070935828517
#>     Attrib V7    -0.4168017193275523
#>     Attrib V8    -0.28062538255323494
#>     Attrib V9    0.38270300522963313
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.4379829007158686
#>     Attrib V1    0.4860860236421942
#>     Attrib V10    0.4975508071571991
#>     Attrib V11    0.4943747103609114
#>     Attrib V12    0.30412052860631955
#>     Attrib V13    -0.037708093065058436
#>     Attrib V14    -0.10514111545897352
#>     Attrib V15    0.23222215231419766
#>     Attrib V16    0.19904649597572763
#>     Attrib V17    -0.3600876473176344
#>     Attrib V18    -0.5090952392859542
#>     Attrib V19    0.37596566221660477
#>     Attrib V2    0.3369169037330491
#>     Attrib V20    0.8773968048507547
#>     Attrib V21    1.0939958212084127
#>     Attrib V22    0.7262791647133816
#>     Attrib V23    0.6526433873078514
#>     Attrib V24    1.0708576524246705
#>     Attrib V25    -0.08499566157984194
#>     Attrib V26    -0.19056755359413743
#>     Attrib V27    0.12873504372026925
#>     Attrib V28    0.04530012631146081
#>     Attrib V29    -0.46622116952697346
#>     Attrib V3    0.07382050473320745
#>     Attrib V30    0.461211831486306
#>     Attrib V31    -0.873011101294074
#>     Attrib V32    -0.456071991073841
#>     Attrib V33    0.024738003058646044
#>     Attrib V34    0.2414392484033766
#>     Attrib V35    0.7493353113266565
#>     Attrib V36    -0.6791807369763243
#>     Attrib V37    -0.6863146481045986
#>     Attrib V38    0.4137227096615415
#>     Attrib V39    0.4505273472741343
#>     Attrib V4    -0.1844493200130064
#>     Attrib V40    -0.02907010891972432
#>     Attrib V41    0.223450847867068
#>     Attrib V42    0.6484205901859769
#>     Attrib V43    0.5164305698319657
#>     Attrib V44    0.2838681951574422
#>     Attrib V45    0.8192818583307772
#>     Attrib V46    0.6028585924382724
#>     Attrib V47    0.1601021655266208
#>     Attrib V48    0.6758008228130397
#>     Attrib V49    0.6630610187648804
#>     Attrib V5    -0.2613547541654926
#>     Attrib V50    -0.593140068284814
#>     Attrib V51    0.03832992055316245
#>     Attrib V52    0.1581532163793047
#>     Attrib V53    0.39219624960015415
#>     Attrib V54    -0.008547999335427395
#>     Attrib V55    -0.5390103879618922
#>     Attrib V56    0.22761585649373337
#>     Attrib V57    -1.1905993811342528
#>     Attrib V58    0.5433002989010111
#>     Attrib V59    0.5937939566454515
#>     Attrib V6    -0.4436169423459984
#>     Attrib V60    0.3601172632986498
#>     Attrib V7    -0.702968906866024
#>     Attrib V8    -0.6093046550774934
#>     Attrib V9    0.8619807891543019
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.5988300360368392
#>     Attrib V1    0.23538345238359976
#>     Attrib V10    0.28810862548585003
#>     Attrib V11    0.35737405814530937
#>     Attrib V12    0.6805327242842469
#>     Attrib V13    0.13144321089861002
#>     Attrib V14    -0.04180115500539277
#>     Attrib V15    0.24751615615410044
#>     Attrib V16    0.19270096546379006
#>     Attrib V17    -0.5076412265377773
#>     Attrib V18    -0.6202131621601362
#>     Attrib V19    -0.40253046340492404
#>     Attrib V2    0.12840221553059866
#>     Attrib V20    -0.40315878278224765
#>     Attrib V21    -0.19654737832506397
#>     Attrib V22    -0.5181759685981779
#>     Attrib V23    -0.6821348434234161
#>     Attrib V24    0.11188869477477376
#>     Attrib V25    -0.4171209630965943
#>     Attrib V26    -0.26840245410038993
#>     Attrib V27    0.5058528648870885
#>     Attrib V28    0.5894001845287071
#>     Attrib V29    0.10006439738515585
#>     Attrib V3    -0.06848878078305407
#>     Attrib V30    0.18574763766787614
#>     Attrib V31    0.07293361201461683
#>     Attrib V32    0.11295565994316602
#>     Attrib V33    -0.23559773195568903
#>     Attrib V34    -0.23688934037999196
#>     Attrib V35    0.09920020711886347
#>     Attrib V36    -0.7566177775513389
#>     Attrib V37    -0.42166140168635813
#>     Attrib V38    0.0035165938068358747
#>     Attrib V39    0.06246860864182852
#>     Attrib V4    -0.05495893370869248
#>     Attrib V40    -0.16185862290491462
#>     Attrib V41    0.057851877697256825
#>     Attrib V42    -0.13222842870129226
#>     Attrib V43    0.023975092438306464
#>     Attrib V44    0.038167043532414895
#>     Attrib V45    0.3839940756916573
#>     Attrib V46    0.3108099622582621
#>     Attrib V47    0.04432391040855147
#>     Attrib V48    0.5052925338989219
#>     Attrib V49    0.10100450265953738
#>     Attrib V5    0.09149855206817888
#>     Attrib V50    -0.5874666689444541
#>     Attrib V51    -0.012854997601274783
#>     Attrib V52    0.126733077243181
#>     Attrib V53    0.6508865761977306
#>     Attrib V54    0.1918028081868447
#>     Attrib V55    0.06506522637423277
#>     Attrib V56    -0.21728414799674123
#>     Attrib V57    0.28133993989567313
#>     Attrib V58    0.20202902158074845
#>     Attrib V59    0.43431042553687266
#>     Attrib V6    0.08070431246870172
#>     Attrib V60    0.4036222717856957
#>     Attrib V7    -0.2861501054651985
#>     Attrib V8    -0.3055969966921576
#>     Attrib V9    0.4675824866229451
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.5735964798609017
#>     Attrib V1    0.13915412728041146
#>     Attrib V10    0.8680537201734679
#>     Attrib V11    0.8749839131643242
#>     Attrib V12    1.2310958896795847
#>     Attrib V13    0.3462014995307972
#>     Attrib V14    -0.50937841790421
#>     Attrib V15    -0.2466599031399305
#>     Attrib V16    -0.09652824498802585
#>     Attrib V17    -0.6186650106742335
#>     Attrib V18    -0.45186147592822035
#>     Attrib V19    0.047946871472391094
#>     Attrib V2    0.08022727578293852
#>     Attrib V20    -0.022805378875541443
#>     Attrib V21    0.26277440564686877
#>     Attrib V22    0.2095072213087953
#>     Attrib V23    0.40644869465369854
#>     Attrib V24    1.2752786944123806
#>     Attrib V25    0.3498330004632821
#>     Attrib V26    0.35731395712073183
#>     Attrib V27    0.8585054941926563
#>     Attrib V28    0.6637572217644447
#>     Attrib V29    -0.19352507208417363
#>     Attrib V3    -0.050498875549345935
#>     Attrib V30    0.21740338295294642
#>     Attrib V31    0.07693422022859991
#>     Attrib V32    0.24918992227917455
#>     Attrib V33    -0.17266115834249432
#>     Attrib V34    0.17549831715671468
#>     Attrib V35    0.7651122628834033
#>     Attrib V36    -0.8508600224221218
#>     Attrib V37    -0.5671907696294727
#>     Attrib V38    -0.03432224498784935
#>     Attrib V39    0.29504786804555394
#>     Attrib V4    -0.2174173791269012
#>     Attrib V40    0.07165521724000708
#>     Attrib V41    0.8064242165105769
#>     Attrib V42    0.18379926834067323
#>     Attrib V43    0.3083584961976566
#>     Attrib V44    0.018948569119533742
#>     Attrib V45    0.5519271405883284
#>     Attrib V46    0.7403092133206525
#>     Attrib V47    0.5005432742919352
#>     Attrib V48    0.9223154492995913
#>     Attrib V49    0.48553446074312867
#>     Attrib V5    0.18035433931990197
#>     Attrib V50    -0.7395113307685641
#>     Attrib V51    0.525935533832037
#>     Attrib V52    0.47129361581946627
#>     Attrib V53    0.9154807739638408
#>     Attrib V54    -0.10415089892076018
#>     Attrib V55    -0.5195015761509795
#>     Attrib V56    -0.4880790565139765
#>     Attrib V57    -0.8852978413494157
#>     Attrib V58    0.023511741981382835
#>     Attrib V59    0.2413879818134171
#>     Attrib V6    0.1444925277577098
#>     Attrib V60    0.11999364972774694
#>     Attrib V7    -0.7251372732843891
#>     Attrib V8    -0.5983037073400744
#>     Attrib V9    0.9837048222931282
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.7568709363989184
#>     Attrib V1    -0.20925245689844668
#>     Attrib V10    -0.5305809352106421
#>     Attrib V11    -0.6572160564862137
#>     Attrib V12    -1.1002504853099029
#>     Attrib V13    -0.21032570353135616
#>     Attrib V14    0.24694797403330127
#>     Attrib V15    -0.11128400109344447
#>     Attrib V16    -0.040958651823927626
#>     Attrib V17    0.5718648624659851
#>     Attrib V18    0.6167916100491492
#>     Attrib V19    0.40187348540959944
#>     Attrib V2    -0.09408732526763212
#>     Attrib V20    0.47371628246976566
#>     Attrib V21    0.2346773232145578
#>     Attrib V22    0.3395787149857237
#>     Attrib V23    0.4215781363424781
#>     Attrib V24    -0.507219550064151
#>     Attrib V25    0.19068832442412778
#>     Attrib V26    0.06344086239906854
#>     Attrib V27    -0.769218895206456
#>     Attrib V28    -0.7405168573014618
#>     Attrib V29    -0.05326668459802236
#>     Attrib V3    0.06598561541509258
#>     Attrib V30    -0.03809809112789365
#>     Attrib V31    -0.08053950260844474
#>     Attrib V32    -0.24305652392624877
#>     Attrib V33    0.34069722628322696
#>     Attrib V34    0.23078662589785204
#>     Attrib V35    -0.19321214916573348
#>     Attrib V36    0.8681520154258588
#>     Attrib V37    0.4249789263462093
#>     Attrib V38    0.06041260850715625
#>     Attrib V39    -0.17046547370137102
#>     Attrib V4    0.14813462998567542
#>     Attrib V40    0.06023345263778107
#>     Attrib V41    -0.3618250073189653
#>     Attrib V42    -0.005402783925121911
#>     Attrib V43    -0.11678005720044185
#>     Attrib V44    0.022304504951040277
#>     Attrib V45    -0.3744475901239563
#>     Attrib V46    -0.44465624210233257
#>     Attrib V47    -0.18537985839968177
#>     Attrib V48    -0.6864351162254891
#>     Attrib V49    -0.23596927682522104
#>     Attrib V5    -0.11453089231332732
#>     Attrib V50    0.7048448952324677
#>     Attrib V51    -0.20075914859378907
#>     Attrib V52    -0.24945592490029497
#>     Attrib V53    -0.7688388644241418
#>     Attrib V54    -0.1532687967333117
#>     Attrib V55    0.06475296078862884
#>     Attrib V56    0.3180914868701558
#>     Attrib V57    -0.09805919087526946
#>     Attrib V58    -0.21616386955594472
#>     Attrib V59    -0.43172552863655367
#>     Attrib V6    -0.14896695321887568
#>     Attrib V60    -0.3907612959830325
#>     Attrib V7    0.4373636082866049
#>     Attrib V8    0.3293741843076526
#>     Attrib V9    -0.6806498983527406
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.3339354243686276
#>     Attrib V1    0.24456534978938294
#>     Attrib V10    -0.007938188836178325
#>     Attrib V11    -0.052668305501620286
#>     Attrib V12    0.04411139125326213
#>     Attrib V13    -0.2774032096162851
#>     Attrib V14    0.0673351406623216
#>     Attrib V15    0.36510600513959435
#>     Attrib V16    0.3127676763247469
#>     Attrib V17    -0.11398012068860262
#>     Attrib V18    -0.3002780631151043
#>     Attrib V19    0.04239997583780878
#>     Attrib V2    0.11021173041793485
#>     Attrib V20    0.32162637266002425
#>     Attrib V21    0.3669727772953633
#>     Attrib V22    -0.03921391975418611
#>     Attrib V23    -0.2253091042285255
#>     Attrib V24    0.25948604343830517
#>     Attrib V25    -0.36641577920983703
#>     Attrib V26    -0.5610665537636075
#>     Attrib V27    -0.07520051236590782
#>     Attrib V28    -0.08187636404818854
#>     Attrib V29    -0.39088875452597216
#>     Attrib V3    -0.05232274590702672
#>     Attrib V30    0.19257790145912085
#>     Attrib V31    -0.4423816351190157
#>     Attrib V32    -0.17991495518696163
#>     Attrib V33    0.028340268127547266
#>     Attrib V34    0.06133900133977018
#>     Attrib V35    0.21367177319099262
#>     Attrib V36    -0.6339186349845041
#>     Attrib V37    -0.6740871786037672
#>     Attrib V38    0.08014641336254777
#>     Attrib V39    0.08250363271116365
#>     Attrib V4    -0.09798257633570008
#>     Attrib V40    -0.15047437555530638
#>     Attrib V41    -0.11597617161823054
#>     Attrib V42    0.29378851307659803
#>     Attrib V43    0.20566708366868752
#>     Attrib V44    0.16643489193595457
#>     Attrib V45    0.4344733095501181
#>     Attrib V46    0.1682686209967929
#>     Attrib V47    -0.07715502621586043
#>     Attrib V48    0.38409147462421067
#>     Attrib V49    0.2616828417626647
#>     Attrib V5    -0.13137672804116643
#>     Attrib V50    -0.3589812786546899
#>     Attrib V51    -0.10411219202986172
#>     Attrib V52    9.549711273717519E-4
#>     Attrib V53    0.4192117727517296
#>     Attrib V54    0.2838910546096342
#>     Attrib V55    -0.017032158052784782
#>     Attrib V56    0.24103251542249593
#>     Attrib V57    -0.006920428578496125
#>     Attrib V58    0.5065590567188739
#>     Attrib V59    0.5329434027505298
#>     Attrib V6    -0.2192735111118903
#>     Attrib V60    0.3721211519326361
#>     Attrib V7    -0.3705159507371241
#>     Attrib V8    -0.2661159283098685
#>     Attrib V9    0.29851150763265943
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.4208396706369901
#>     Attrib V1    0.35181710223579926
#>     Attrib V10    -0.12882143464385468
#>     Attrib V11    -0.14616022222248812
#>     Attrib V12    -0.20230087621922885
#>     Attrib V13    -0.35932177248595115
#>     Attrib V14    0.17324539391458516
#>     Attrib V15    0.4907834301974017
#>     Attrib V16    0.42298025960910546
#>     Attrib V17    -0.14948079155699012
#>     Attrib V18    -0.3634171576548824
#>     Attrib V19    0.1616735615863421
#>     Attrib V2    0.2619781200773331
#>     Attrib V20    0.43669399970851674
#>     Attrib V21    0.5494914709510432
#>     Attrib V22    0.08843887538744881
#>     Attrib V23    -0.21748014635253224
#>     Attrib V24    0.24918133914206358
#>     Attrib V25    -0.5520818633039867
#>     Attrib V26    -0.7506955829645632
#>     Attrib V27    -0.19667542464801493
#>     Attrib V28    -0.22437685751491004
#>     Attrib V29    -0.43551886534228307
#>     Attrib V3    0.009891715242555527
#>     Attrib V30    0.21245994325291434
#>     Attrib V31    -0.6131343845638152
#>     Attrib V32    -0.2865272361481526
#>     Attrib V33    0.1494654891263961
#>     Attrib V34    0.0995334746485069
#>     Attrib V35    0.17061828861004358
#>     Attrib V36    -0.7558752164587268
#>     Attrib V37    -0.8273708828677602
#>     Attrib V38    0.11138310102974715
#>     Attrib V39    0.11061515156684772
#>     Attrib V4    -0.028932745612624846
#>     Attrib V40    -0.08396915753501967
#>     Attrib V41    -0.0739622165948757
#>     Attrib V42    0.4408699435064291
#>     Attrib V43    0.32040832482249554
#>     Attrib V44    0.1287416036304871
#>     Attrib V45    0.4442227666377469
#>     Attrib V46    0.21035908054637129
#>     Attrib V47    -0.18764342946264095
#>     Attrib V48    0.40672950858721313
#>     Attrib V49    0.3223352088195133
#>     Attrib V5    -0.21109306199183536
#>     Attrib V50    -0.4588931382466871
#>     Attrib V51    -0.2451412120470488
#>     Attrib V52    0.014313873766105545
#>     Attrib V53    0.5176426429292349
#>     Attrib V54    0.35030461436323557
#>     Attrib V55    -0.07372086712342034
#>     Attrib V56    0.4068495494501458
#>     Attrib V57    0.03828650461177493
#>     Attrib V58    0.6792885681640854
#>     Attrib V59    0.8153954913306096
#>     Attrib V6    -0.36506919627210915
#>     Attrib V60    0.5177954698182096
#>     Attrib V7    -0.3448224836741053
#>     Attrib V8    -0.2883468199539435
#>     Attrib V9    0.2771323773758564
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    0.11154331944083869
#>     Attrib V1    0.17699983772098343
#>     Attrib V10    -0.07215373462632808
#>     Attrib V11    -0.06973744908566384
#>     Attrib V12    0.023371750271269157
#>     Attrib V13    -0.0718950051959653
#>     Attrib V14    0.10526541705494348
#>     Attrib V15    0.25456326442749216
#>     Attrib V16    0.17186656930684702
#>     Attrib V17    -0.11413693496862688
#>     Attrib V18    -0.23981658897287575
#>     Attrib V19    -0.013105399013385042
#>     Attrib V2    0.09791599178749774
#>     Attrib V20    0.136434334169562
#>     Attrib V21    0.18443106560870573
#>     Attrib V22    -0.09786155865573404
#>     Attrib V23    -0.1508380428598829
#>     Attrib V24    0.1780401325310755
#>     Attrib V25    -0.2171753496874957
#>     Attrib V26    -0.38627041011270474
#>     Attrib V27    0.005524713642066612
#>     Attrib V28    -0.06277443139804113
#>     Attrib V29    -0.20733330000656255
#>     Attrib V3    0.07048228629882358
#>     Attrib V30    0.08969893236194577
#>     Attrib V31    -0.2472637063483273
#>     Attrib V32    -0.049628986870024
#>     Attrib V33    -0.008770127213426987
#>     Attrib V34    0.029467171396717874
#>     Attrib V35    0.052533415670516045
#>     Attrib V36    -0.543059116324081
#>     Attrib V37    -0.5089102320822596
#>     Attrib V38    -0.06036959312708107
#>     Attrib V39    0.09174930007219283
#>     Attrib V4    -0.010009113657178454
#>     Attrib V40    -0.058561993121014136
#>     Attrib V41    -0.016879508554293488
#>     Attrib V42    0.17016314618208672
#>     Attrib V43    0.047772405369448885
#>     Attrib V44    -0.04007262450622693
#>     Attrib V45    0.13423940271749393
#>     Attrib V46    0.14411633722410744
#>     Attrib V47    -0.006202579780146858
#>     Attrib V48    0.24609436672612922
#>     Attrib V49    0.20996721238520794
#>     Attrib V5    -0.037583543691358294
#>     Attrib V50    -0.2647833204679905
#>     Attrib V51    -0.09026242073020099
#>     Attrib V52    0.028163261591291545
#>     Attrib V53    0.3409827099827976
#>     Attrib V54    0.10797437999710162
#>     Attrib V55    0.03056584701236334
#>     Attrib V56    0.15825093735175214
#>     Attrib V57    0.03940806385599591
#>     Attrib V58    0.3380581076149549
#>     Attrib V59    0.4583816202277414
#>     Attrib V6    -0.07895533915042091
#>     Attrib V60    0.3322381526868935
#>     Attrib V7    -0.16868839068820443
#>     Attrib V8    -0.23780154547934215
#>     Attrib V9    0.15453865133418385
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.4745837388338835
#>     Attrib V1    0.3795972706500825
#>     Attrib V10    0.046779847609787956
#>     Attrib V11    -0.005527193402215602
#>     Attrib V12    0.04558283300302732
#>     Attrib V13    -0.38068504576905016
#>     Attrib V14    -0.03283290086069168
#>     Attrib V15    0.4301603426074978
#>     Attrib V16    0.3491993730606316
#>     Attrib V17    -0.19407757610270465
#>     Attrib V18    -0.44036466198232777
#>     Attrib V19    0.09328099078889032
#>     Attrib V2    0.17179302064705929
#>     Attrib V20    0.45052074734034614
#>     Attrib V21    0.5836152217993781
#>     Attrib V22    0.110516133499684
#>     Attrib V23    -0.07078562153314039
#>     Attrib V24    0.512640730293595
#>     Attrib V25    -0.37265170869198666
#>     Attrib V26    -0.6099855727191826
#>     Attrib V27    -0.23962473630587136
#>     Attrib V28    -0.3959829999433287
#>     Attrib V29    -0.8230177975716998
#>     Attrib V3    -0.0692332279741384
#>     Attrib V30    0.26548342856054913
#>     Attrib V31    -0.4667999369989017
#>     Attrib V32    -0.11332537678493096
#>     Attrib V33    0.28334585982431515
#>     Attrib V34    0.20395182709657408
#>     Attrib V35    0.3179006181806405
#>     Attrib V36    -0.9313771244646277
#>     Attrib V37    -1.0334500496507772
#>     Attrib V38    -0.020306208444477718
#>     Attrib V39    0.167217388105681
#>     Attrib V4    -0.15767690651663183
#>     Attrib V40    -0.06005643971666507
#>     Attrib V41    0.008438715331980878
#>     Attrib V42    0.5027877063950963
#>     Attrib V43    0.25376334420757857
#>     Attrib V44    0.06145639745360855
#>     Attrib V45    0.36831791746279274
#>     Attrib V46    0.22405952051957198
#>     Attrib V47    -0.1507445033534158
#>     Attrib V48    0.5913538210978567
#>     Attrib V49    0.5229759815634418
#>     Attrib V5    -0.32453438928405565
#>     Attrib V50    -0.5297908885386557
#>     Attrib V51    -0.2538408180580818
#>     Attrib V52    -0.03335824991648949
#>     Attrib V53    0.4777763413318624
#>     Attrib V54    0.30056739242750513
#>     Attrib V55    -0.07803319958866375
#>     Attrib V56    0.37952796044298526
#>     Attrib V57    -0.2163910208348662
#>     Attrib V58    0.6928164002096242
#>     Attrib V59    0.7973643137489571
#>     Attrib V6    -0.41766710965029186
#>     Attrib V60    0.5523254599341917
#>     Attrib V7    -0.4947190295518495
#>     Attrib V8    -0.38430428204175915
#>     Attrib V9    0.45671568535889817
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.7013855075063796
#>     Attrib V1    -0.22342295471650284
#>     Attrib V10    -0.8494446260942871
#>     Attrib V11    -0.9487610148959631
#>     Attrib V12    -1.323942858968963
#>     Attrib V13    -0.3525652406395417
#>     Attrib V14    0.4562574536143836
#>     Attrib V15    0.26580681016217045
#>     Attrib V16    0.13251390586416814
#>     Attrib V17    0.6423526323616694
#>     Attrib V18    0.4006624697674569
#>     Attrib V19    -0.016478787995686472
#>     Attrib V2    -0.10715703121624717
#>     Attrib V20    0.11495639105452887
#>     Attrib V21    -0.2397940084185821
#>     Attrib V22    -0.24198119669722895
#>     Attrib V23    -0.42465173758579866
#>     Attrib V24    -1.2678486559531046
#>     Attrib V25    -0.36938013376464035
#>     Attrib V26    -0.362926706908632
#>     Attrib V27    -0.9938717081381298
#>     Attrib V28    -0.7369070162072012
#>     Attrib V29    0.20913413617908197
#>     Attrib V3    0.1347901721547464
#>     Attrib V30    -0.04422679502368635
#>     Attrib V31    -0.009714152570021518
#>     Attrib V32    -0.19066298558336994
#>     Attrib V33    0.36585243194628636
#>     Attrib V34    0.06965353337410021
#>     Attrib V35    -0.6441907246673979
#>     Attrib V36    0.7978166308957093
#>     Attrib V37    0.41188866989990414
#>     Attrib V38    -0.051362077190579426
#>     Attrib V39    -0.39752627222518155
#>     Attrib V4    0.26114693376746956
#>     Attrib V40    -0.17918827219089567
#>     Attrib V41    -0.8192179748591161
#>     Attrib V42    -0.18388663300799832
#>     Attrib V43    -0.30000914252656924
#>     Attrib V44    -0.0879870418780731
#>     Attrib V45    -0.47994956800913197
#>     Attrib V46    -0.653270304899036
#>     Attrib V47    -0.5372387885525753
#>     Attrib V48    -1.026691277407482
#>     Attrib V49    -0.47577277398131024
#>     Attrib V5    -0.1605798209310567
#>     Attrib V50    0.7040013457886306
#>     Attrib V51    -0.523128316020396
#>     Attrib V52    -0.45190121865416066
#>     Attrib V53    -0.9085362841521264
#>     Attrib V54    0.028541065940104214
#>     Attrib V55    0.5880561217576693
#>     Attrib V56    0.5065150852286018
#>     Attrib V57    0.6656458388885201
#>     Attrib V58    0.062328859132583354
#>     Attrib V59    -0.19669985217726824
#>     Attrib V6    -0.24576901685328434
#>     Attrib V60    -0.2432445791624837
#>     Attrib V7    0.6224670039370773
#>     Attrib V8    0.6164333275247256
#>     Attrib V9    -0.9370333954351397
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.20489986640760907
#>     Attrib V1    0.02192626884079125
#>     Attrib V10    -0.027970877009718086
#>     Attrib V11    -0.06370751079127861
#>     Attrib V12    -0.06937924958624606
#>     Attrib V13    0.014156838589940155
#>     Attrib V14    0.015377321281164204
#>     Attrib V15    0.016289603243351578
#>     Attrib V16    0.0694118329034273
#>     Attrib V17    0.062240371259917986
#>     Attrib V18    0.044284987099749366
#>     Attrib V19    0.00801347704074081
#>     Attrib V2    0.024842410809988502
#>     Attrib V20    -0.05582830566822058
#>     Attrib V21    -0.07463752634031756
#>     Attrib V22    -0.07336263787795609
#>     Attrib V23    -0.08318661317527243
#>     Attrib V24    -0.046478869383260527
#>     Attrib V25    -0.04171066916517871
#>     Attrib V26    -0.10553546286302841
#>     Attrib V27    -0.09926114438826157
#>     Attrib V28    -0.03824704013147609
#>     Attrib V29    -0.02935869677795057
#>     Attrib V3    0.09797707727829504
#>     Attrib V30    -0.025831491424027974
#>     Attrib V31    0.015261528374280901
#>     Attrib V32    0.08007556395833049
#>     Attrib V33    0.04211808338648265
#>     Attrib V34    0.0809911866600406
#>     Attrib V35    0.05288933635054834
#>     Attrib V36    0.06386097912363184
#>     Attrib V37    0.08799945332415655
#>     Attrib V38    0.049607327930666884
#>     Attrib V39    0.04235264171768601
#>     Attrib V4    0.08880594703172028
#>     Attrib V40    0.014385960204918247
#>     Attrib V41    0.048064884628749915
#>     Attrib V42    0.06547254738826815
#>     Attrib V43    0.012547516163021858
#>     Attrib V44    -0.0548782501800106
#>     Attrib V45    -0.025340532887087812
#>     Attrib V46    0.056770712508484165
#>     Attrib V47    0.05062635912944184
#>     Attrib V48    -0.01057033770281585
#>     Attrib V49    -0.010468244064858688
#>     Attrib V5    0.07144509527423422
#>     Attrib V50    0.11278412374345574
#>     Attrib V51    0.11993795063665243
#>     Attrib V52    0.09471490281973584
#>     Attrib V53    0.0908013549203754
#>     Attrib V54    -0.01582086189690008
#>     Attrib V55    0.1044750745896621
#>     Attrib V56    0.10744419886638433
#>     Attrib V57    0.0803593270142668
#>     Attrib V58    0.11309315204511294
#>     Attrib V59    -9.017607602388857E-4
#>     Attrib V6    0.07098725784345664
#>     Attrib V60    0.08656195038737846
#>     Attrib V7    0.03484195326067195
#>     Attrib V8    3.7708720513631615E-4
#>     Attrib V9    0.03712617286960393
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    0.23007261250503505
#>     Attrib V1    0.20755646790079557
#>     Attrib V10    0.03576384331049207
#>     Attrib V11    -0.0027103378776401
#>     Attrib V12    0.025731335068049494
#>     Attrib V13    -0.17112652282137675
#>     Attrib V14    0.08537693272283255
#>     Attrib V15    0.3530247086554505
#>     Attrib V16    0.2247593814771841
#>     Attrib V17    -0.15249919060967956
#>     Attrib V18    -0.3034047546730167
#>     Attrib V19    -0.07404745525018813
#>     Attrib V2    0.15997238387374957
#>     Attrib V20    0.012117230726418965
#>     Attrib V21    0.09303554857335235
#>     Attrib V22    -0.11300727812680766
#>     Attrib V23    -0.3354134899535024
#>     Attrib V24    0.0721939919961353
#>     Attrib V25    -0.3711370891543998
#>     Attrib V26    -0.3909280585931288
#>     Attrib V27    0.03542467618888432
#>     Attrib V28    0.0031019037175222045
#>     Attrib V29    -0.2208882420881168
#>     Attrib V3    -0.02927623052586181
#>     Attrib V30    0.1367940705849331
#>     Attrib V31    -0.13688738552776183
#>     Attrib V32    -0.08122373586403163
#>     Attrib V33    -0.0033858631745063207
#>     Attrib V34    -0.09595201719010509
#>     Attrib V35    0.09847284959954229
#>     Attrib V36    -0.5034953038088676
#>     Attrib V37    -0.4404181872162926
#>     Attrib V38    0.034396724757532804
#>     Attrib V39    0.06822668588452521
#>     Attrib V4    -0.03098957716900797
#>     Attrib V40    -0.1658125992924002
#>     Attrib V41    -0.0865952177654697
#>     Attrib V42    0.07082065904055111
#>     Attrib V43    0.1279348152373295
#>     Attrib V44    0.05604467487478648
#>     Attrib V45    0.2622148922437387
#>     Attrib V46    0.08761052569145632
#>     Attrib V47    -0.10959449292235152
#>     Attrib V48    0.29501214643492374
#>     Attrib V49    0.1127986110839164
#>     Attrib V5    -0.07058458016909738
#>     Attrib V50    -0.2447300320299091
#>     Attrib V51    -0.06714071658399352
#>     Attrib V52    0.028719868999851034
#>     Attrib V53    0.3001676355801059
#>     Attrib V54    0.1452526643512321
#>     Attrib V55    0.1238246555021626
#>     Attrib V56    0.160046090094031
#>     Attrib V57    0.13036230351749056
#>     Attrib V58    0.30012464735411615
#>     Attrib V59    0.3581290227951202
#>     Attrib V6    -0.11233091606909348
#>     Attrib V60    0.32459983147968613
#>     Attrib V7    -0.25810785835208533
#>     Attrib V8    -0.1549418233466197
#>     Attrib V9    0.21107561611354847
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.3981696467238416
#>     Attrib V1    -0.10540319464491629
#>     Attrib V10    -0.22142781207743592
#>     Attrib V11    -0.27927122503928903
#>     Attrib V12    -0.39337691102265365
#>     Attrib V13    -0.023255861432296656
#>     Attrib V14    0.06872833125794706
#>     Attrib V15    -0.12915572712621545
#>     Attrib V16    -0.12243990009258772
#>     Attrib V17    0.09381702367735949
#>     Attrib V18    0.2762018798416325
#>     Attrib V19    0.02888900317012451
#>     Attrib V2    -0.03278839958835522
#>     Attrib V20    0.022972625404256077
#>     Attrib V21    -0.06974532865439528
#>     Attrib V22    0.02063058852728167
#>     Attrib V23    0.06387700081634164
#>     Attrib V24    -0.2792538023992362
#>     Attrib V25    0.18274123829108696
#>     Attrib V26    0.1487503712438037
#>     Attrib V27    -0.16852010374389034
#>     Attrib V28    -0.12995737577395425
#>     Attrib V29    0.14375485633359153
#>     Attrib V3    0.10404777402037602
#>     Attrib V30    -0.1518201051304799
#>     Attrib V31    0.13172014089126652
#>     Attrib V32    0.0127339112780038
#>     Attrib V33    0.035742098073034585
#>     Attrib V34    0.06728010824560651
#>     Attrib V35    -0.10172381860419132
#>     Attrib V36    0.5138402515463641
#>     Attrib V37    0.32660041336684653
#>     Attrib V38    -0.01510938380227253
#>     Attrib V39    -0.07340871252733118
#>     Attrib V4    0.08312535388252876
#>     Attrib V40    0.016639040509636386
#>     Attrib V41    -0.13587222980782354
#>     Attrib V42    -0.12777834929759047
#>     Attrib V43    -0.09866928900431368
#>     Attrib V44    0.006874858715464836
#>     Attrib V45    -0.28574802511883574
#>     Attrib V46    -0.1853487631810561
#>     Attrib V47    0.024771031537055187
#>     Attrib V48    -0.34212167772167407
#>     Attrib V49    -0.21940248257540376
#>     Attrib V5    0.06430582008790106
#>     Attrib V50    0.25366544938635854
#>     Attrib V51    0.07280298057856442
#>     Attrib V52    -0.07868019015903784
#>     Attrib V53    -0.2513217448376392
#>     Attrib V54    -0.047500147462324956
#>     Attrib V55    0.12934040628538063
#>     Attrib V56    0.08906948268509136
#>     Attrib V57    0.09591882822389572
#>     Attrib V58    -0.180952437224973
#>     Attrib V59    -0.1314623607307318
#>     Attrib V6    0.016530600511070383
#>     Attrib V60    -0.027613360920484817
#>     Attrib V7    0.2820812842264026
#>     Attrib V8    0.1576922721979464
#>     Attrib V9    -0.3480392502095405
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.516167731416253
#>     Attrib V1    0.41235205237354533
#>     Attrib V10    0.12588636756321497
#>     Attrib V11    0.0333679222771512
#>     Attrib V12    0.13961014399908633
#>     Attrib V13    -0.33780279162566584
#>     Attrib V14    0.0049977022015404
#>     Attrib V15    0.4382557900530589
#>     Attrib V16    0.3394795673123587
#>     Attrib V17    -0.26855918976222165
#>     Attrib V18    -0.5548476452111446
#>     Attrib V19    0.2695321700844849
#>     Attrib V2    0.21367268726535849
#>     Attrib V20    0.6567856720237116
#>     Attrib V21    0.7941073988153574
#>     Attrib V22    0.32773702104908475
#>     Attrib V23    0.1163466083969986
#>     Attrib V24    0.8387335059184515
#>     Attrib V25    -0.262843255607777
#>     Attrib V26    -0.6147440116892272
#>     Attrib V27    -0.24810412776011387
#>     Attrib V28    -0.40605435816962676
#>     Attrib V29    -0.9706401831916854
#>     Attrib V3    -0.03454652057311936
#>     Attrib V30    0.31129627447464636
#>     Attrib V31    -0.7462119306747452
#>     Attrib V32    -0.2758561212170933
#>     Attrib V33    0.35117268917400707
#>     Attrib V34    0.33899180099025916
#>     Attrib V35    0.5129364483819457
#>     Attrib V36    -1.0191603996733491
#>     Attrib V37    -1.3423377944284278
#>     Attrib V38    0.09031633351224393
#>     Attrib V39    0.32558371798795
#>     Attrib V4    -0.12705570869672173
#>     Attrib V40    0.02236320485593927
#>     Attrib V41    0.1005572889492996
#>     Attrib V42    0.796176664576254
#>     Attrib V43    0.41254256447956705
#>     Attrib V44    -0.004957233649255143
#>     Attrib V45    0.6025549969515211
#>     Attrib V46    0.3338650259788003
#>     Attrib V47    -0.15183906513936662
#>     Attrib V48    0.7165519275159427
#>     Attrib V49    0.7571993080455913
#>     Attrib V5    -0.35847003956049134
#>     Attrib V50    -0.6668773299635398
#>     Attrib V51    -0.21264973931928047
#>     Attrib V52    0.037817063166383495
#>     Attrib V53    0.5781649152380002
#>     Attrib V54    0.21630980197045405
#>     Attrib V55    -0.2196153539145131
#>     Attrib V56    0.3774045802293935
#>     Attrib V57    -0.6613075980166228
#>     Attrib V58    0.87783733075589
#>     Attrib V59    0.9487646126328066
#>     Attrib V6    -0.5703383740891181
#>     Attrib V60    0.587333341792553
#>     Attrib V7    -0.6499319064012469
#>     Attrib V8    -0.46098977051522066
#>     Attrib V9    0.6085850271062258
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.35359625040410503
#>     Attrib V1    0.43751229767968164
#>     Attrib V10    0.3400757421805894
#>     Attrib V11    0.21616350018482997
#>     Attrib V12    0.1274696314370184
#>     Attrib V13    -0.17476649153891655
#>     Attrib V14    -0.04022656323588175
#>     Attrib V15    0.2569384207389665
#>     Attrib V16    0.19002837483877633
#>     Attrib V17    -0.19219905858122932
#>     Attrib V18    -0.3746861079299064
#>     Attrib V19    0.3971420970702327
#>     Attrib V2    0.17317188705719436
#>     Attrib V20    0.7986189288007295
#>     Attrib V21    1.048037240176705
#>     Attrib V22    0.7160146710819963
#>     Attrib V23    0.48842187036063844
#>     Attrib V24    0.8416758734521212
#>     Attrib V25    -0.11690684427230255
#>     Attrib V26    -0.2536305218060857
#>     Attrib V27    0.04099392575558918
#>     Attrib V28    -0.15055178373919242
#>     Attrib V29    -0.5528477756312079
#>     Attrib V3    -0.08058552568122916
#>     Attrib V30    0.4360027375320431
#>     Attrib V31    -0.9558896571708854
#>     Attrib V32    -0.5754272378141919
#>     Attrib V33    0.0854542624011993
#>     Attrib V34    0.30732846520990037
#>     Attrib V35    0.7835582540696142
#>     Attrib V36    -0.32066573662480613
#>     Attrib V37    -0.5529443685163685
#>     Attrib V38    0.4866706216487437
#>     Attrib V39    0.4665998346658247
#>     Attrib V4    -0.10694079305493277
#>     Attrib V40    -0.07094801162290364
#>     Attrib V41    0.06158443508774664
#>     Attrib V42    0.5433613680162562
#>     Attrib V43    0.6100198131210455
#>     Attrib V44    0.5580941960351541
#>     Attrib V45    0.9071131082856471
#>     Attrib V46    0.483193636941808
#>     Attrib V47    -0.004152588795237665
#>     Attrib V48    0.5789308970966507
#>     Attrib V49    0.5726668257107409
#>     Attrib V5    -0.14224086346979725
#>     Attrib V50    -0.5398402204993951
#>     Attrib V51    -0.021494339233449695
#>     Attrib V52    0.035286200875280366
#>     Attrib V53    0.25162535286607135
#>     Attrib V54    0.054539480772009374
#>     Attrib V55    -0.4705227203623577
#>     Attrib V56    0.25153347910495616
#>     Attrib V57    -0.9881258353721136
#>     Attrib V58    0.5343932700725018
#>     Attrib V59    0.7227570374565505
#>     Attrib V6    -0.3988235585146174
#>     Attrib V60    0.4978550189012273
#>     Attrib V7    -0.5348985106941737
#>     Attrib V8    -0.5882678235332854
#>     Attrib V9    0.6466364591396365
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.5505082028632318
#>     Attrib V1    -0.1636989219695508
#>     Attrib V10    -0.7035075538664158
#>     Attrib V11    -0.7646937162546753
#>     Attrib V12    -1.0329874533083478
#>     Attrib V13    -0.24534288719574335
#>     Attrib V14    0.3180796062801015
#>     Attrib V15    0.12389801970768446
#>     Attrib V16    0.05186789176388106
#>     Attrib V17    0.5494340943218846
#>     Attrib V18    0.4276281825493206
#>     Attrib V19    -0.03431556452308386
#>     Attrib V2    -0.11853221469628017
#>     Attrib V20    0.00738935579485511
#>     Attrib V21    -0.18959164784357746
#>     Attrib V22    -0.1897013762231938
#>     Attrib V23    -0.2946489142613948
#>     Attrib V24    -1.0441246372493402
#>     Attrib V25    -0.18157129915554596
#>     Attrib V26    -0.17652506544564278
#>     Attrib V27    -0.7006543189627911
#>     Attrib V28    -0.5504760941628599
#>     Attrib V29    0.21838512554854136
#>     Attrib V3    0.04234535056394727
#>     Attrib V30    -0.1568599926686103
#>     Attrib V31    0.07936046144858569
#>     Attrib V32    -0.18058495674226877
#>     Attrib V33    0.16881432737818544
#>     Attrib V34    -0.010116436094335157
#>     Attrib V35    -0.5350643845449017
#>     Attrib V36    0.7961344599470115
#>     Attrib V37    0.562104361412624
#>     Attrib V38    -0.05364718227072018
#>     Attrib V39    -0.2859515223722457
#>     Attrib V4    0.24560724198395542
#>     Attrib V40    -0.03428837737582159
#>     Attrib V41    -0.5517636134531735
#>     Attrib V42    -0.2732992622201243
#>     Attrib V43    -0.2505197326389123
#>     Attrib V44    -0.06641699668714235
#>     Attrib V45    -0.5271289436823461
#>     Attrib V46    -0.5511107182703546
#>     Attrib V47    -0.3470693986656201
#>     Attrib V48    -0.8396943134687084
#>     Attrib V49    -0.5141293477953219
#>     Attrib V5    -0.02542078120557038
#>     Attrib V50    0.6436933275013601
#>     Attrib V51    -0.3294465773312845
#>     Attrib V52    -0.32772322295637185
#>     Attrib V53    -0.7749449135672122
#>     Attrib V54    0.06308634937686747
#>     Attrib V55    0.43054281863042554
#>     Attrib V56    0.32607565085198387
#>     Attrib V57    0.7286914085707376
#>     Attrib V58    -0.12623284080852595
#>     Attrib V59    -0.17496484142824734
#>     Attrib V6    -0.07803669482979661
#>     Attrib V60    -0.06859579807105214
#>     Attrib V7    0.6558932938026448
#>     Attrib V8    0.4115951856392512
#>     Attrib V9    -0.840353568017257
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.25701982735065293
#>     Attrib V1    0.3375130563911462
#>     Attrib V10    -0.047995662680816904
#>     Attrib V11    -0.1323811540791228
#>     Attrib V12    -0.08699106915619295
#>     Attrib V13    -0.2554078761112717
#>     Attrib V14    0.1683121481050838
#>     Attrib V15    0.3925997252887729
#>     Attrib V16    0.3691144445924542
#>     Attrib V17    -0.11243573916160332
#>     Attrib V18    -0.30470095607618625
#>     Attrib V19    -0.02793520401924204
#>     Attrib V2    0.18370860971490935
#>     Attrib V20    0.22307826228033645
#>     Attrib V21    0.2837456696828733
#>     Attrib V22    -0.10576669512436052
#>     Attrib V23    -0.3554339838066285
#>     Attrib V24    0.12305088057657153
#>     Attrib V25    -0.4536909776940469
#>     Attrib V26    -0.5814748470959785
#>     Attrib V27    -0.14978655131071997
#>     Attrib V28    -0.18725458615877455
#>     Attrib V29    -0.31177015258473734
#>     Attrib V3    -0.006808544235418487
#>     Attrib V30    0.09076522463965943
#>     Attrib V31    -0.30524710841457564
#>     Attrib V32    -0.14195746018687141
#>     Attrib V33    -0.008150501041469018
#>     Attrib V34    -0.02711473073991403
#>     Attrib V35    0.07218795559209618
#>     Attrib V36    -0.584349945208805
#>     Attrib V37    -0.5561403238491915
#>     Attrib V38    -0.006482169033016346
#>     Attrib V39    0.022970202365388534
#>     Attrib V4    -0.02178605279690349
#>     Attrib V40    -0.1311374875515917
#>     Attrib V41    -0.18400451351655744
#>     Attrib V42    0.2008412907956704
#>     Attrib V43    0.19224908184286066
#>     Attrib V44    0.06404565299130217
#>     Attrib V45    0.2193618333054434
#>     Attrib V46    0.13339603291542654
#>     Attrib V47    -0.16309035983667927
#>     Attrib V48    0.2989081033110947
#>     Attrib V49    0.21400633437378835
#>     Attrib V5    -0.11960086155547235
#>     Attrib V50    -0.27732683638384714
#>     Attrib V51    -0.1761884135744722
#>     Attrib V52    0.010305365023338516
#>     Attrib V53    0.3757509286744187
#>     Attrib V54    0.317306384564768
#>     Attrib V55    0.07379611514569574
#>     Attrib V56    0.31686573662483936
#>     Attrib V57    0.13210919689822467
#>     Attrib V58    0.537779795413161
#>     Attrib V59    0.5718467897496047
#>     Attrib V6    -0.18658175676305688
#>     Attrib V60    0.46488412543423735
#>     Attrib V7    -0.21459014458781253
#>     Attrib V8    -0.3061658479277319
#>     Attrib V9    0.19209204621405035
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.28588637068435485
#>     Attrib V1    0.3128681993106888
#>     Attrib V10    -0.12027463723588779
#>     Attrib V11    -0.09708638494833606
#>     Attrib V12    -0.06120946442548325
#>     Attrib V13    -0.2573412729058384
#>     Attrib V14    0.11552466131136983
#>     Attrib V15    0.36980961754623276
#>     Attrib V16    0.27992985131866205
#>     Attrib V17    -0.05293963425141909
#>     Attrib V18    -0.26948005244234924
#>     Attrib V19    0.1017392404659914
#>     Attrib V2    0.1240892346938005
#>     Attrib V20    0.31622547929576245
#>     Attrib V21    0.3963693752111791
#>     Attrib V22    0.03610292334227937
#>     Attrib V23    -0.15596660388796776
#>     Attrib V24    0.22323439055094074
#>     Attrib V25    -0.35697334836531364
#>     Attrib V26    -0.5077561291481253
#>     Attrib V27    -0.21710701277900007
#>     Attrib V28    -0.26766345829359883
#>     Attrib V29    -0.48164041001316016
#>     Attrib V3    0.04531449457986823
#>     Attrib V30    0.12575795517510893
#>     Attrib V31    -0.4662792158405288
#>     Attrib V32    -0.22224831238857282
#>     Attrib V33    0.07510869073740845
#>     Attrib V34    0.06700764508930596
#>     Attrib V35    0.22458903292910554
#>     Attrib V36    -0.5674046350676407
#>     Attrib V37    -0.6206905596188268
#>     Attrib V38    0.04869178749985021
#>     Attrib V39    0.13300327202612125
#>     Attrib V4    0.006986134928787866
#>     Attrib V40    -0.12659146474765431
#>     Attrib V41    -0.10727670990071057
#>     Attrib V42    0.2952661017828279
#>     Attrib V43    0.2580338410991209
#>     Attrib V44    0.1271541380553818
#>     Attrib V45    0.3786784203408567
#>     Attrib V46    0.16561819966858302
#>     Attrib V47    -0.08177072298370572
#>     Attrib V48    0.26773122975375746
#>     Attrib V49    0.2809603441903357
#>     Attrib V5    -0.1607887384347847
#>     Attrib V50    -0.3506634011132096
#>     Attrib V51    -0.2112652503004584
#>     Attrib V52    0.04636408305596486
#>     Attrib V53    0.4091995419831279
#>     Attrib V54    0.2452654796473503
#>     Attrib V55    0.0033799298684392743
#>     Attrib V56    0.3471329270609628
#>     Attrib V57    -0.06001787945364269
#>     Attrib V58    0.5259711354646495
#>     Attrib V59    0.6597885024158634
#>     Attrib V6    -0.2594047692156394
#>     Attrib V60    0.40185819010560814
#>     Attrib V7    -0.2877246999647325
#>     Attrib V8    -0.2864351203034503
#>     Attrib V9    0.21590817724385336
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.6669400216077779
#>     Attrib V1    -0.2419731700482326
#>     Attrib V10    -0.8064127794344321
#>     Attrib V11    -0.8435329932891185
#>     Attrib V12    -1.286166742925101
#>     Attrib V13    -0.34253460045538797
#>     Attrib V14    0.4301597753841562
#>     Attrib V15    0.21371523182102567
#>     Attrib V16    0.08331137488773485
#>     Attrib V17    0.670422151509064
#>     Attrib V18    0.42692583171585335
#>     Attrib V19    -0.009570929437202252
#>     Attrib V2    -0.09168847110177573
#>     Attrib V20    0.1163271483832852
#>     Attrib V21    -0.1870923674874583
#>     Attrib V22    -0.23930951672639036
#>     Attrib V23    -0.30307549644519904
#>     Attrib V24    -1.2083287420601676
#>     Attrib V25    -0.31932804186679814
#>     Attrib V26    -0.31184892607790154
#>     Attrib V27    -0.899119485120392
#>     Attrib V28    -0.6673554298780419
#>     Attrib V29    0.19427637617250956
#>     Attrib V3    0.09394783104108222
#>     Attrib V30    -0.025736474849233595
#>     Attrib V31    -0.010904788941710286
#>     Attrib V32    -0.1115382593480706
#>     Attrib V33    0.31226614845931283
#>     Attrib V34    0.013403342987559299
#>     Attrib V35    -0.6383410003116661
#>     Attrib V36    0.7705598660828078
#>     Attrib V37    0.3347099085548591
#>     Attrib V38    -0.05748763308131281
#>     Attrib V39    -0.39426901695913624
#>     Attrib V4    0.27567883647140523
#>     Attrib V40    -0.12602961946367355
#>     Attrib V41    -0.7073782451399321
#>     Attrib V42    -0.16136532037241438
#>     Attrib V43    -0.2010777604725199
#>     Attrib V44    -0.07049537107018003
#>     Attrib V45    -0.5198770513471929
#>     Attrib V46    -0.6256394253970188
#>     Attrib V47    -0.4401291974859006
#>     Attrib V48    -0.9440583966137954
#>     Attrib V49    -0.44948639238091215
#>     Attrib V5    -0.20427666143050155
#>     Attrib V50    0.6929107844069766
#>     Attrib V51    -0.4481162167292158
#>     Attrib V52    -0.31126237649178756
#>     Attrib V53    -0.914190524056568
#>     Attrib V54    0.022646270563593616
#>     Attrib V55    0.5762564954339469
#>     Attrib V56    0.46821921071728473
#>     Attrib V57    0.6586830177422105
#>     Attrib V58    0.08387627551840783
#>     Attrib V59    -0.23782407455138285
#>     Attrib V6    -0.22363784247953133
#>     Attrib V60    -0.30094258023961323
#>     Attrib V7    0.552394115760889
#>     Attrib V8    0.6055690946763359
#>     Attrib V9    -0.82487470719534
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.809750384611005
#>     Attrib V1    0.4112066373842143
#>     Attrib V10    1.2066303946571342
#>     Attrib V11    1.4187931333883221
#>     Attrib V12    2.119839958156496
#>     Attrib V13    0.971696745314553
#>     Attrib V14    -0.3497526090942043
#>     Attrib V15    5.116007695597967E-5
#>     Attrib V16    -0.20858401131970597
#>     Attrib V17    -0.9467859632607374
#>     Attrib V18    -0.7869655548252078
#>     Attrib V19    -0.4447228674467115
#>     Attrib V2    0.6434000355901752
#>     Attrib V20    -0.43819341854081584
#>     Attrib V21    0.002519368478833251
#>     Attrib V22    0.22401103643423284
#>     Attrib V23    0.38602568062008275
#>     Attrib V24    0.8915874815234525
#>     Attrib V25    -0.2555253838216814
#>     Attrib V26    0.46728871828247426
#>     Attrib V27    1.880720762815637
#>     Attrib V28    2.0918411580743905
#>     Attrib V29    0.9715262132649477
#>     Attrib V3    0.2816762027080271
#>     Attrib V30    0.10030270139790028
#>     Attrib V31    -0.23591097925549098
#>     Attrib V32    0.11112414056923876
#>     Attrib V33    -0.9929663869668989
#>     Attrib V34    -0.49102122652250707
#>     Attrib V35    0.4319377148814616
#>     Attrib V36    -1.0508707726016968
#>     Attrib V37    0.31017177312048727
#>     Attrib V38    0.13382856027423007
#>     Attrib V39    0.32098577870962114
#>     Attrib V4    -0.22749514604791535
#>     Attrib V40    -0.02706724719794907
#>     Attrib V41    0.9423800613037836
#>     Attrib V42    -0.09005796538349452
#>     Attrib V43    0.2202991049541946
#>     Attrib V44    0.29767323956797637
#>     Attrib V45    0.7982521172439929
#>     Attrib V46    0.9011646010282737
#>     Attrib V47    0.5262573319399638
#>     Attrib V48    0.681802220502897
#>     Attrib V49    0.23752847167754132
#>     Attrib V5    0.49061259877653207
#>     Attrib V50    -1.0523557129420686
#>     Attrib V51    0.6866677490925179
#>     Attrib V52    0.7303059693680765
#>     Attrib V53    1.2174540773849616
#>     Attrib V54    0.11926221339306212
#>     Attrib V55    -0.4255412567745034
#>     Attrib V56    -0.40765050998486163
#>     Attrib V57    -0.5476346774233377
#>     Attrib V58    -0.08794709811190994
#>     Attrib V59    -0.07266398624703795
#>     Attrib V6    0.7397854446216872
#>     Attrib V60    0.12169813704517049
#>     Attrib V7    -0.7158863746420714
#>     Attrib V8    -0.7837253817747417
#>     Attrib V9    1.0084626612790608
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.23457330229579923
#>     Attrib V1    0.035847711757541034
#>     Attrib V10    -0.0598795755347802
#>     Attrib V11    -0.09434351392680096
#>     Attrib V12    -0.052757314293671545
#>     Attrib V13    -0.024849160076206734
#>     Attrib V14    0.09014312793567095
#>     Attrib V15    0.01426740002363277
#>     Attrib V16    0.00553253095045377
#>     Attrib V17    0.046176311305917095
#>     Attrib V18    -0.024921149614120727
#>     Attrib V19    0.045873600398332416
#>     Attrib V2    0.08906511737612939
#>     Attrib V20    -0.00752889961854917
#>     Attrib V21    -0.024300360299820363
#>     Attrib V22    -0.05177596055702401
#>     Attrib V23    -0.03676869247338081
#>     Attrib V24    -0.09310953796622427
#>     Attrib V25    -0.05407877338377954
#>     Attrib V26    -0.10282721385194153
#>     Attrib V27    -0.06597588340831471
#>     Attrib V28    -0.021687485339811706
#>     Attrib V29    0.01192391326843341
#>     Attrib V3    0.052201553914177704
#>     Attrib V30    2.538489589986814E-4
#>     Attrib V31    0.021380550447299865
#>     Attrib V32    0.03954539459601042
#>     Attrib V33    0.08318181757395597
#>     Attrib V34    0.04052119007206953
#>     Attrib V35    0.10887983226930839
#>     Attrib V36    0.13336483690965273
#>     Attrib V37    0.12141476806106408
#>     Attrib V38    0.02332340292780963
#>     Attrib V39    0.04689692932627258
#>     Attrib V4    0.11587837775677373
#>     Attrib V40    0.030518002064885558
#>     Attrib V41    0.01932333923346843
#>     Attrib V42    0.04233211697021933
#>     Attrib V43    0.037451968844012355
#>     Attrib V44    -0.008748026703386341
#>     Attrib V45    -0.04898662330653621
#>     Attrib V46    0.008641444907275758
#>     Attrib V47    0.024464328677605177
#>     Attrib V48    0.02566144201004302
#>     Attrib V49    -0.003976105150209974
#>     Attrib V5    0.03132429648980666
#>     Attrib V50    0.10266836149333017
#>     Attrib V51    0.052757890059298804
#>     Attrib V52    0.04532355435663466
#>     Attrib V53    0.026208155690143595
#>     Attrib V54    0.001349810065855856
#>     Attrib V55    0.09449891902696383
#>     Attrib V56    0.12493434157337627
#>     Attrib V57    0.0855331590862684
#>     Attrib V58    0.07107577383265853
#>     Attrib V59    0.04982877494485346
#>     Attrib V6    0.09495961227767637
#>     Attrib V60    0.12213604908005242
#>     Attrib V7    0.02275110915899985
#>     Attrib V8    0.052465495647733736
#>     Attrib V9    -0.02623089781455537
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.44906642395377416
#>     Attrib V1    0.4779774533328601
#>     Attrib V10    0.4199490155010301
#>     Attrib V11    0.31928649124451913
#>     Attrib V12    0.17657707086574462
#>     Attrib V13    -0.13580581918519896
#>     Attrib V14    -0.12895482624505747
#>     Attrib V15    0.2581392596595492
#>     Attrib V16    0.2334077493852998
#>     Attrib V17    -0.24422837792747457
#>     Attrib V18    -0.38208455048041745
#>     Attrib V19    0.3868083504623009
#>     Attrib V2    0.20264786622303776
#>     Attrib V20    0.7934682586518187
#>     Attrib V21    1.0833242507900396
#>     Attrib V22    0.7240527196965969
#>     Attrib V23    0.4786096870498427
#>     Attrib V24    0.9721345127055419
#>     Attrib V25    -0.10821128313372722
#>     Attrib V26    -0.21904894886760065
#>     Attrib V27    0.015517837007578337
#>     Attrib V28    -0.1452709211209107
#>     Attrib V29    -0.6294583866749964
#>     Attrib V3    -0.06548190700694145
#>     Attrib V30    0.45665288990808056
#>     Attrib V31    -0.9821039731115061
#>     Attrib V32    -0.5297146290755289
#>     Attrib V33    0.09344473184201606
#>     Attrib V34    0.3605591143950675
#>     Attrib V35    0.8358413978078766
#>     Attrib V36    -0.4513024078833195
#>     Attrib V37    -0.6680719223897835
#>     Attrib V38    0.4753175044348604
#>     Attrib V39    0.5335127272551632
#>     Attrib V4    -0.1257785096593326
#>     Attrib V40    -0.13419553253513114
#>     Attrib V41    0.06628046518157588
#>     Attrib V42    0.6141215403619597
#>     Attrib V43    0.5466950033857705
#>     Attrib V44    0.49089334920634997
#>     Attrib V45    0.9871366870953057
#>     Attrib V46    0.5176087113782863
#>     Attrib V47    0.00978310621506907
#>     Attrib V48    0.6700488950583613
#>     Attrib V49    0.6268583349530142
#>     Attrib V5    -0.23780187628732713
#>     Attrib V50    -0.541391400323161
#>     Attrib V51    -0.04523511141505012
#>     Attrib V52    0.03907569441231386
#>     Attrib V53    0.3546844027945125
#>     Attrib V54    0.04073487308710788
#>     Attrib V55    -0.47027907445318917
#>     Attrib V56    0.20958386020945594
#>     Attrib V57    -1.0301844919520622
#>     Attrib V58    0.5719991095315852
#>     Attrib V59    0.7476066179348472
#>     Attrib V6    -0.43757929610937724
#>     Attrib V60    0.4956080768101641
#>     Attrib V7    -0.6935956825535242
#>     Attrib V8    -0.5489429092186331
#>     Attrib V9    0.7481056917018825
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.7029202371053245
#>     Attrib V1    -0.41729938595867866
#>     Attrib V10    -1.1573860953056212
#>     Attrib V11    -1.2639184160774475
#>     Attrib V12    -1.8665530205254544
#>     Attrib V13    -0.7703981395562689
#>     Attrib V14    0.35848902886167233
#>     Attrib V15    0.0662330987123021
#>     Attrib V16    0.2164958859235642
#>     Attrib V17    0.8398172994264473
#>     Attrib V18    0.7740615039204792
#>     Attrib V19    0.3335617822417943
#>     Attrib V2    -0.4739294265792437
#>     Attrib V20    0.39438785346533567
#>     Attrib V21    0.02533527427089167
#>     Attrib V22    -0.11542683208914763
#>     Attrib V23    -0.2664751392443163
#>     Attrib V24    -0.8812475847698716
#>     Attrib V25    0.0560378149623625
#>     Attrib V26    -0.4366052121750045
#>     Attrib V27    -1.5711836498121086
#>     Attrib V28    -1.7277731949711357
#>     Attrib V29    -0.658984729146465
#>     Attrib V3    -0.1261936853436651
#>     Attrib V30    -0.0708364437003667
#>     Attrib V31    0.15110554409009846
#>     Attrib V32    -0.0032850760932418253
#>     Attrib V33    0.7829620840149947
#>     Attrib V34    0.40184516965929135
#>     Attrib V35    -0.4466899964170681
#>     Attrib V36    0.901719460266076
#>     Attrib V37    -0.1951344307530863
#>     Attrib V38    -0.14783568873034048
#>     Attrib V39    -0.3198702657987572
#>     Attrib V4    0.22991764943911203
#>     Attrib V40    -0.02544909017272067
#>     Attrib V41    -0.7892661768502889
#>     Attrib V42    0.07880137967147159
#>     Attrib V43    -0.20535389120037115
#>     Attrib V44    -0.21010038621989194
#>     Attrib V45    -0.6539795392600034
#>     Attrib V46    -0.8071510158928227
#>     Attrib V47    -0.5641855323153075
#>     Attrib V48    -0.743330181336234
#>     Attrib V49    -0.22662674178180522
#>     Attrib V5    -0.4396022450000485
#>     Attrib V50    0.902380934252403
#>     Attrib V51    -0.6785406716705693
#>     Attrib V52    -0.5344251591077593
#>     Attrib V53    -1.0940040183939963
#>     Attrib V54    -0.07543117332251253
#>     Attrib V55    0.46889793638413435
#>     Attrib V56    0.4571231610535216
#>     Attrib V57    0.5103530155500359
#>     Attrib V58    0.15417828357459012
#>     Attrib V59    -0.006571028566968463
#>     Attrib V6    -0.5941712916190414
#>     Attrib V60    -0.24686884754254992
#>     Attrib V7    0.5897791462617551
#>     Attrib V8    0.702138876172978
#>     Attrib V9    -0.9220893303715707
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2851870781831932
#>     Attrib V1    0.19460883854530353
#>     Attrib V10    -0.017617244151580357
#>     Attrib V11    0.0235862215297863
#>     Attrib V12    0.10675507022377524
#>     Attrib V13    -0.1647691121030611
#>     Attrib V14    0.12142558747519283
#>     Attrib V15    0.3227895397233095
#>     Attrib V16    0.22332125045089712
#>     Attrib V17    -0.19662263398216817
#>     Attrib V18    -0.3308044875025725
#>     Attrib V19    -0.045067875623490135
#>     Attrib V2    0.11990894646977732
#>     Attrib V20    0.18915282641936765
#>     Attrib V21    0.2712974396330985
#>     Attrib V22    -0.03199053865740698
#>     Attrib V23    -0.2514599825910224
#>     Attrib V24    0.2579529224815734
#>     Attrib V25    -0.27225966657302797
#>     Attrib V26    -0.44054720088071714
#>     Attrib V27    -7.798362065876854E-4
#>     Attrib V28    -0.04423740352389029
#>     Attrib V29    -0.2525868924716323
#>     Attrib V3    0.022871974114371342
#>     Attrib V30    0.0958894864136769
#>     Attrib V31    -0.2399572607781258
#>     Attrib V32    -0.041939091245251366
#>     Attrib V33    0.020992848701163087
#>     Attrib V34    -0.01176260407304399
#>     Attrib V35    0.1093967991945715
#>     Attrib V36    -0.6867215657774636
#>     Attrib V37    -0.6132627368592053
#>     Attrib V38    -0.05358704942614286
#>     Attrib V39    0.07150739385533372
#>     Attrib V4    -0.11240227398806123
#>     Attrib V40    -0.09732272549616848
#>     Attrib V41    -0.015498405853543586
#>     Attrib V42    0.1815164796322827
#>     Attrib V43    0.14547728303073965
#>     Attrib V44    -0.08653317029366606
#>     Attrib V45    0.26011058420675676
#>     Attrib V46    0.14564946056192626
#>     Attrib V47    -0.037357208788756646
#>     Attrib V48    0.32483784872258503
#>     Attrib V49    0.2064208187268052
#>     Attrib V5    -0.15407986789056038
#>     Attrib V50    -0.31279134151848564
#>     Attrib V51    -0.08890566156855836
#>     Attrib V52    0.08356337856647741
#>     Attrib V53    0.3810625263276954
#>     Attrib V54    0.13773293215657786
#>     Attrib V55    0.049687033797764776
#>     Attrib V56    0.1875304298074681
#>     Attrib V57    -0.022792507482887525
#>     Attrib V58    0.39565492420559606
#>     Attrib V59    0.4402928778281034
#>     Attrib V6    -0.14764997546594047
#>     Attrib V60    0.3360226140339028
#>     Attrib V7    -0.2988307225947859
#>     Attrib V8    -0.25833763337265575
#>     Attrib V9    0.26060043388526133
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    0.09824190129984134
#>     Attrib V1    0.17857453543108134
#>     Attrib V10    0.03301126043221894
#>     Attrib V11    -0.011271643912080914
#>     Attrib V12    0.09683172855091626
#>     Attrib V13    -0.049000950196642856
#>     Attrib V14    0.09204413640611663
#>     Attrib V15    0.23400189129029939
#>     Attrib V16    0.157156545907281
#>     Attrib V17    -0.09542176116051188
#>     Attrib V18    -0.24794794274717077
#>     Attrib V19    -0.11312256061265616
#>     Attrib V2    0.10991921258727544
#>     Attrib V20    -0.03373592025474026
#>     Attrib V21    0.06892290099192572
#>     Attrib V22    -0.1512046884231856
#>     Attrib V23    -0.23777170169463754
#>     Attrib V24    0.02872042522782334
#>     Attrib V25    -0.21364639414632833
#>     Attrib V26    -0.24526928985856228
#>     Attrib V27    0.00414953724151162
#>     Attrib V28    0.006602208564269327
#>     Attrib V29    -0.21153111355524626
#>     Attrib V3    -0.010264437707410158
#>     Attrib V30    0.07787974604144923
#>     Attrib V31    -0.05184113571930939
#>     Attrib V32    -0.03468238675654102
#>     Attrib V33    -0.05800930762779167
#>     Attrib V34    -0.054279565689457784
#>     Attrib V35    0.07918084033610169
#>     Attrib V36    -0.3929357162675668
#>     Attrib V37    -0.30849047589564266
#>     Attrib V38    -0.0573906657620251
#>     Attrib V39    0.09954237532188906
#>     Attrib V4    0.03139516569313876
#>     Attrib V40    -0.05972890090447382
#>     Attrib V41    -0.06085017329538974
#>     Attrib V42    0.08257617252716573
#>     Attrib V43    0.027526472777048356
#>     Attrib V44    -0.07718576605606031
#>     Attrib V45    0.1274382430251242
#>     Attrib V46    0.08861663899011678
#>     Attrib V47    -0.06530827678481764
#>     Attrib V48    0.2172249470828739
#>     Attrib V49    0.08462449064675644
#>     Attrib V5    -0.06519771818136214
#>     Attrib V50    -0.20181505348282044
#>     Attrib V51    -0.04756789261394804
#>     Attrib V52    0.06937366172330589
#>     Attrib V53    0.27861569771497297
#>     Attrib V54    0.11903314526115219
#>     Attrib V55    0.07234661374829196
#>     Attrib V56    0.14965021991043626
#>     Attrib V57    0.05446760447822128
#>     Attrib V58    0.30707872417611937
#>     Attrib V59    0.36252122845307266
#>     Attrib V6    -0.058858514239097826
#>     Attrib V60    0.29144136552458
#>     Attrib V7    -0.1973364907817157
#>     Attrib V8    -0.1550221386621034
#>     Attrib V9    0.14134491600543733
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.2372449868528177
#>     Attrib V1    0.3151978001397518
#>     Attrib V10    -0.08762402268770714
#>     Attrib V11    -0.10552215611493304
#>     Attrib V12    -0.16941506002501186
#>     Attrib V13    -0.25947560462931857
#>     Attrib V14    0.15498560745698686
#>     Attrib V15    0.4243568680185704
#>     Attrib V16    0.3340744754831644
#>     Attrib V17    -0.06547529492484937
#>     Attrib V18    -0.26617810671429887
#>     Attrib V19    0.053050708592677
#>     Attrib V2    0.22191926047049357
#>     Attrib V20    0.34812990540264555
#>     Attrib V21    0.3479951254222858
#>     Attrib V22    0.01770725918733994
#>     Attrib V23    -0.20644278624077908
#>     Attrib V24    0.19928935152508
#>     Attrib V25    -0.44585346824587846
#>     Attrib V26    -0.5553650714178475
#>     Attrib V27    -0.21850430269411295
#>     Attrib V28    -0.25725963251609857
#>     Attrib V29    -0.44705641015850067
#>     Attrib V3    -0.010568184038087628
#>     Attrib V30    0.10921404190802063
#>     Attrib V31    -0.4373835676531287
#>     Attrib V32    -0.22540577022047006
#>     Attrib V33    0.09342188882868088
#>     Attrib V34    0.0704832588856509
#>     Attrib V35    0.18207427755027203
#>     Attrib V36    -0.5835628934516846
#>     Attrib V37    -0.609374573197125
#>     Attrib V38    0.09766773171302205
#>     Attrib V39    0.08627320143929018
#>     Attrib V4    -0.01326757013172176
#>     Attrib V40    -0.11900595167538917
#>     Attrib V41    -0.15334865476469575
#>     Attrib V42    0.28240043396609155
#>     Attrib V43    0.23058958951006153
#>     Attrib V44    0.15534645230286245
#>     Attrib V45    0.31359217570990044
#>     Attrib V46    0.13609662097404446
#>     Attrib V47    -0.13009284459663747
#>     Attrib V48    0.3000635769980029
#>     Attrib V49    0.2709644305125493
#>     Attrib V5    -0.19284427909231236
#>     Attrib V50    -0.3199967440473926
#>     Attrib V51    -0.2099715966250379
#>     Attrib V52    0.004556310272074073
#>     Attrib V53    0.40164984149826066
#>     Attrib V54    0.33317228403998367
#>     Attrib V55    0.057197160303616976
#>     Attrib V56    0.29960397215445744
#>     Attrib V57    0.01725847986802999
#>     Attrib V58    0.5040690518443315
#>     Attrib V59    0.6034448905748466
#>     Attrib V6    -0.2772759875375757
#>     Attrib V60    0.4401499277237511
#>     Attrib V7    -0.2726478409441591
#>     Attrib V8    -0.24066998394416084
#>     Attrib V9    0.24010354306222367
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.1320282104517018
#>     Attrib V1    0.09120559562065866
#>     Attrib V10    -0.06201237888764418
#>     Attrib V11    -0.009345578039154385
#>     Attrib V12    -0.022985350101994626
#>     Attrib V13    -0.060745256448561255
#>     Attrib V14    0.11321773210970405
#>     Attrib V15    0.1032618047817136
#>     Attrib V16    0.0932853115783358
#>     Attrib V17    -0.030412396714275616
#>     Attrib V18    -0.0011860196474039856
#>     Attrib V19    -0.06640353823208393
#>     Attrib V2    0.06233526968092343
#>     Attrib V20    -0.011143459415588683
#>     Attrib V21    -0.006959526362447451
#>     Attrib V22    -0.09625900296975246
#>     Attrib V23    -0.07395640866449635
#>     Attrib V24    -0.05322169974433829
#>     Attrib V25    -0.14879433101818168
#>     Attrib V26    -0.1419588236758997
#>     Attrib V27    -0.05379391850438162
#>     Attrib V28    -0.006070808702706181
#>     Attrib V29    -0.046890542692048655
#>     Attrib V3    0.0993200925524769
#>     Attrib V30    0.05659915689286902
#>     Attrib V31    -0.034572778426974905
#>     Attrib V32    0.014478729129910854
#>     Attrib V33    0.04199524839393987
#>     Attrib V34    0.03687703927841069
#>     Attrib V35    0.07370527432107887
#>     Attrib V36    0.022831795390967097
#>     Attrib V37    -0.020566387566871517
#>     Attrib V38    -0.0029507795614444935
#>     Attrib V39    0.05993345314062987
#>     Attrib V4    0.05626798086245532
#>     Attrib V40    -0.016434979745222456
#>     Attrib V41    -0.03319944283336276
#>     Attrib V42    0.04258961799608566
#>     Attrib V43    -0.0053091108211443475
#>     Attrib V44    0.015650086953820103
#>     Attrib V45    0.05787175005232921
#>     Attrib V46    0.06709754060537086
#>     Attrib V47    0.02893168036355166
#>     Attrib V48    0.03457620700431083
#>     Attrib V49    0.08689348096261512
#>     Attrib V5    0.07159040068212019
#>     Attrib V50    -0.026085186893898188
#>     Attrib V51    0.0716731763562025
#>     Attrib V52    0.10848748982449563
#>     Attrib V53    0.10438198118305965
#>     Attrib V54    -0.0049246716103197264
#>     Attrib V55    0.07817718226816767
#>     Attrib V56    0.09948612997297998
#>     Attrib V57    0.05449732423421947
#>     Attrib V58    0.1824086333207414
#>     Attrib V59    0.10020835230707706
#>     Attrib V6    0.0635081477530231
#>     Attrib V60    0.11782859477523831
#>     Attrib V7    0.005099050438125529
#>     Attrib V8    0.04767562802236304
#>     Attrib V9    0.09001519912780731
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
