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
#>     Threshold    0.008984148366407681
#>     Node 2    2.068333468475934
#>     Node 3    1.6241645584923532
#>     Node 4    0.7841341322893104
#>     Node 5    -2.3307504727457795
#>     Node 6    1.710503165940084
#>     Node 7    3.6847532119031885
#>     Node 8    1.1436158425451874
#>     Node 9    2.948709906706284
#>     Node 10    -2.0635480039392986
#>     Node 11    1.105539613187745
#>     Node 12    1.6724420692750628
#>     Node 13    0.6002630825477374
#>     Node 14    1.8760868783316005
#>     Node 15    -3.0045781339048285
#>     Node 16    0.7485190350037343
#>     Node 17    0.21988963857771868
#>     Node 18    0.3268522521687168
#>     Node 19    3.020666001001164
#>     Node 20    1.4993269154415394
#>     Node 21    -2.8799646749046985
#>     Node 22    1.2360880084540378
#>     Node 23    1.9010582349261111
#>     Node 24    -1.336223480395049
#>     Node 25    3.9574873302117393
#>     Node 26    -0.681488588862289
#>     Node 27    2.470927894826274
#>     Node 28    -2.249831085902285
#>     Node 29    1.3941548514141848
#>     Node 30    -0.3413316379354026
#>     Node 31    1.599698201299041
#>     Node 32    0.6615723865217904
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.04983315553695237
#>     Node 2    -2.1014946436834854
#>     Node 3    -1.603529769279011
#>     Node 4    -0.7501475900884013
#>     Node 5    2.349522826112137
#>     Node 6    -1.6816278987582929
#>     Node 7    -3.683081159607765
#>     Node 8    -1.1851637720014687
#>     Node 9    -2.9393864888599257
#>     Node 10    2.0062293110132727
#>     Node 11    -1.079805575026768
#>     Node 12    -1.743566667166714
#>     Node 13    -0.5553006341932517
#>     Node 14    -1.817736219461441
#>     Node 15    2.9922957220503292
#>     Node 16    -0.7739640992346215
#>     Node 17    -0.19622286619727114
#>     Node 18    -0.29428375921989486
#>     Node 19    -3.0254619784007364
#>     Node 20    -1.4844705976333357
#>     Node 21    2.9354069513102927
#>     Node 22    -1.2945786539418698
#>     Node 23    -1.9358947084379357
#>     Node 24    1.3322736358925231
#>     Node 25    -3.946534558759535
#>     Node 26    0.600697703185915
#>     Node 27    -2.5068950511156967
#>     Node 28    2.2040562057912303
#>     Node 29    -1.4307703392527404
#>     Node 30    0.40734500282846275
#>     Node 31    -1.542915756763178
#>     Node 32    -0.6866569709648682
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.01728454121268654
#>     Attrib V1    0.10601339067762126
#>     Attrib V10    -0.4348015721994504
#>     Attrib V11    0.20226346646448698
#>     Attrib V12    0.4725452896681679
#>     Attrib V13    -0.28537900729988164
#>     Attrib V14    -0.5527870950695408
#>     Attrib V15    0.05325281055816567
#>     Attrib V16    0.2491461820873182
#>     Attrib V17    0.20407678781046543
#>     Attrib V18    0.10750155963244333
#>     Attrib V19    -0.5490514292715111
#>     Attrib V2    -0.23249923400955422
#>     Attrib V20    0.8146557248639551
#>     Attrib V21    0.5352942390729215
#>     Attrib V22    0.01462855226297874
#>     Attrib V23    0.2267460440884327
#>     Attrib V24    0.285315317948729
#>     Attrib V25    -0.27607463010165606
#>     Attrib V26    -0.8023584413309645
#>     Attrib V27    -0.7867710614520096
#>     Attrib V28    -0.03626297456024649
#>     Attrib V29    -0.6133071730838338
#>     Attrib V3    -0.05606009738263631
#>     Attrib V30    0.13754246023897596
#>     Attrib V31    -1.3744850150317165
#>     Attrib V32    0.10990230495330149
#>     Attrib V33    0.9730208598350887
#>     Attrib V34    0.19340751756288796
#>     Attrib V35    0.07338809711339539
#>     Attrib V36    -0.6926967528040125
#>     Attrib V37    -0.8513292515719203
#>     Attrib V38    -0.03533163173778406
#>     Attrib V39    -0.07649406403996585
#>     Attrib V4    0.3520474085120273
#>     Attrib V40    -0.055914944431443576
#>     Attrib V41    -0.23320115206745384
#>     Attrib V42    0.23740748965110503
#>     Attrib V43    0.6229527753339721
#>     Attrib V44    0.3669603020120181
#>     Attrib V45    0.3127691100883552
#>     Attrib V46    0.3056758773020449
#>     Attrib V47    -0.341731193622486
#>     Attrib V48    0.24594495914835562
#>     Attrib V49    0.5271908922288159
#>     Attrib V5    0.001223942483625641
#>     Attrib V50    -1.0221121281561754
#>     Attrib V51    -0.258465115069217
#>     Attrib V52    0.39706307452712314
#>     Attrib V53    0.26121264927939647
#>     Attrib V54    0.6439652808199973
#>     Attrib V55    -0.6292016586759953
#>     Attrib V56    0.29229365891263814
#>     Attrib V57    -0.3635483260789015
#>     Attrib V58    0.3065258166859539
#>     Attrib V59    0.5675383068104284
#>     Attrib V6    -0.4258265624548446
#>     Attrib V60    0.6046537374919698
#>     Attrib V7    -0.28313423430778517
#>     Attrib V8    0.12254497298164012
#>     Attrib V9    0.7079028081464628
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    0.1418641503144876
#>     Attrib V1    0.2042250830809324
#>     Attrib V10    -0.4547590313273033
#>     Attrib V11    -0.018693270025693744
#>     Attrib V12    0.24711416449762458
#>     Attrib V13    -0.18224442939176175
#>     Attrib V14    -0.18134041797292788
#>     Attrib V15    0.3347511748974432
#>     Attrib V16    0.3089976372381416
#>     Attrib V17    0.14744419663246924
#>     Attrib V18    -0.012957804051751233
#>     Attrib V19    -0.3207824359810832
#>     Attrib V2    -0.07795893845383181
#>     Attrib V20    0.6502294703608051
#>     Attrib V21    0.39415527820706703
#>     Attrib V22    -0.04826858637350511
#>     Attrib V23    0.020047042180742495
#>     Attrib V24    0.05384200946964046
#>     Attrib V25    -0.4358655046340364
#>     Attrib V26    -0.8395666923144486
#>     Attrib V27    -0.6889463709915639
#>     Attrib V28    -0.09603194779026365
#>     Attrib V29    -0.4317762868228397
#>     Attrib V3    -0.0473136065344839
#>     Attrib V30    0.0764444436190159
#>     Attrib V31    -0.9881582895342612
#>     Attrib V32    0.11252059399173754
#>     Attrib V33    0.750005873927253
#>     Attrib V34    0.07269391949971857
#>     Attrib V35    -0.04577867752852738
#>     Attrib V36    -0.5662345491624686
#>     Attrib V37    -0.5921220174681987
#>     Attrib V38    -0.07166625643281456
#>     Attrib V39    -0.03726298125483754
#>     Attrib V4    0.29213373346111654
#>     Attrib V40    -0.0560782363628433
#>     Attrib V41    -0.18616432578864378
#>     Attrib V42    0.09798941223963821
#>     Attrib V43    0.32299709370717883
#>     Attrib V44    0.16754624642691285
#>     Attrib V45    0.16776939523539347
#>     Attrib V46    0.166873508536169
#>     Attrib V47    -0.2732995469107251
#>     Attrib V48    0.11404886016146659
#>     Attrib V49    0.3605923336658523
#>     Attrib V5    0.01943270091597956
#>     Attrib V50    -0.6749373471691699
#>     Attrib V51    -0.25127791665642374
#>     Attrib V52    0.28122592290841547
#>     Attrib V53    0.17414476791317318
#>     Attrib V54    0.6669204576267996
#>     Attrib V55    -0.23662934301062388
#>     Attrib V56    0.2608383474389497
#>     Attrib V57    -0.0916975670094949
#>     Attrib V58    0.33718495056394293
#>     Attrib V59    0.5805016173673424
#>     Attrib V6    -0.21820915615992398
#>     Attrib V60    0.5571317830406177
#>     Attrib V7    -0.07886202443206376
#>     Attrib V8    0.11037002547012152
#>     Attrib V9    0.32910030427800147
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.03249176042579719
#>     Attrib V1    0.15727435814019483
#>     Attrib V10    -0.08613999517723989
#>     Attrib V11    0.07594883783764006
#>     Attrib V12    0.12425662129740216
#>     Attrib V13    -0.07617544237418447
#>     Attrib V14    -0.028086096951071803
#>     Attrib V15    0.19598757841038417
#>     Attrib V16    0.09941744772760096
#>     Attrib V17    -0.03429835199157612
#>     Attrib V18    -0.12879123174774593
#>     Attrib V19    -0.3090973615787733
#>     Attrib V2    -0.03170037985851971
#>     Attrib V20    0.11674526718471234
#>     Attrib V21    0.04851456661148175
#>     Attrib V22    -0.2577459178554186
#>     Attrib V23    -0.17422763117167347
#>     Attrib V24    -0.14319878273893033
#>     Attrib V25    -0.3015421813207475
#>     Attrib V26    -0.3228536269477426
#>     Attrib V27    -0.22041129720430708
#>     Attrib V28    0.12382740299913135
#>     Attrib V29    -0.015227227805936671
#>     Attrib V3    0.029204449221232335
#>     Attrib V30    0.020895711281231428
#>     Attrib V31    -0.4410972209464235
#>     Attrib V32    0.028104648899284584
#>     Attrib V33    0.32144085148236934
#>     Attrib V34    0.08015682341865998
#>     Attrib V35    0.026769488972947005
#>     Attrib V36    -0.17699885790022574
#>     Attrib V37    -0.16304847655441468
#>     Attrib V38    -0.04852980960008115
#>     Attrib V39    -0.049592048665149505
#>     Attrib V4    0.20557825356446457
#>     Attrib V40    -0.09481234900306314
#>     Attrib V41    -0.13040927678471434
#>     Attrib V42    -0.004787083654384375
#>     Attrib V43    0.03941962757853108
#>     Attrib V44    -0.02477172595684891
#>     Attrib V45    0.09065849218044543
#>     Attrib V46    0.08710900162554354
#>     Attrib V47    -0.071406003400654
#>     Attrib V48    0.1466416654972637
#>     Attrib V49    0.19760687712704805
#>     Attrib V5    0.10899975401265528
#>     Attrib V50    -0.14308017819941984
#>     Attrib V51    0.052946001539941306
#>     Attrib V52    0.14968876020867622
#>     Attrib V53    0.1125539999179532
#>     Attrib V54    0.2730007485836769
#>     Attrib V55    0.053560415225535875
#>     Attrib V56    -0.003960578164255735
#>     Attrib V57    0.10486491919826671
#>     Attrib V58    0.1535797652630129
#>     Attrib V59    0.29151747059814115
#>     Attrib V6    -0.10111660986942887
#>     Attrib V60    0.381019296248142
#>     Attrib V7    0.02540885083504928
#>     Attrib V8    0.07747850194578963
#>     Attrib V9    0.2303433216654167
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    0.022706696470994058
#>     Attrib V1    0.1851912188546825
#>     Attrib V10    0.5162912746371577
#>     Attrib V11    -0.5689146564870252
#>     Attrib V12    -1.0540637740201986
#>     Attrib V13    0.07971794328861824
#>     Attrib V14    0.8499905780231869
#>     Attrib V15    0.2547088143896351
#>     Attrib V16    -0.02472325965706547
#>     Attrib V17    -0.16764173295527338
#>     Attrib V18    -0.2390102814772411
#>     Attrib V19    0.6040890660862136
#>     Attrib V2    0.2951599385890692
#>     Attrib V20    -0.8274017463410562
#>     Attrib V21    -0.4688103824000374
#>     Attrib V22    -0.17096453765895905
#>     Attrib V23    -0.6299777733832052
#>     Attrib V24    -0.6750083960042399
#>     Attrib V25    0.1966028048116178
#>     Attrib V26    0.409844708586029
#>     Attrib V27    0.3376261936727524
#>     Attrib V28    -0.2767106886415601
#>     Attrib V29    0.39014553933890544
#>     Attrib V3    0.1593311584102012
#>     Attrib V30    -0.3889446019657203
#>     Attrib V31    1.3167938760674303
#>     Attrib V32    -0.03565589973185442
#>     Attrib V33    -0.7967499694868144
#>     Attrib V34    0.05816451644726563
#>     Attrib V35    0.19040177742722592
#>     Attrib V36    1.036064225718988
#>     Attrib V37    1.0289074811067687
#>     Attrib V38    0.13591245746322417
#>     Attrib V39    0.18428422051118773
#>     Attrib V4    -0.5660891705138221
#>     Attrib V40    0.1228680920260307
#>     Attrib V41    -0.07160551678188501
#>     Attrib V42    -0.34941613737495647
#>     Attrib V43    -0.9226251536347091
#>     Attrib V44    -0.539351001264758
#>     Attrib V45    -0.5269428042295079
#>     Attrib V46    -0.4464972190713435
#>     Attrib V47    0.37725072909513757
#>     Attrib V48    -0.2219982487106721
#>     Attrib V49    -0.9030791228792107
#>     Attrib V5    -0.09040238016230182
#>     Attrib V50    1.2516344420096637
#>     Attrib V51    0.036835820523272486
#>     Attrib V52    -0.8181854961265781
#>     Attrib V53    -0.3529227654324787
#>     Attrib V54    -0.33045061460952957
#>     Attrib V55    0.8741173751636407
#>     Attrib V56    -0.14593840927507615
#>     Attrib V57    0.4569114419339315
#>     Attrib V58    -0.4330359825370274
#>     Attrib V59    -0.49476686815716064
#>     Attrib V6    0.37688899042594226
#>     Attrib V60    -0.3777518874280594
#>     Attrib V7    0.7082061289687916
#>     Attrib V8    -0.04374895427932671
#>     Attrib V9    -0.8397415299523786
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    0.14206683779043514
#>     Attrib V1    0.09801500807949799
#>     Attrib V10    -0.4234992939086324
#>     Attrib V11    0.14165649287123303
#>     Attrib V12    0.46753254058197946
#>     Attrib V13    -0.24315146726306167
#>     Attrib V14    -0.46346355009518647
#>     Attrib V15    0.102140775790917
#>     Attrib V16    0.28300520076469066
#>     Attrib V17    0.1020448466317572
#>     Attrib V18    0.07103260709262813
#>     Attrib V19    -0.5015103419432181
#>     Attrib V2    -0.20042416172576477
#>     Attrib V20    0.5876230390318704
#>     Attrib V21    0.37607416563538065
#>     Attrib V22    -0.06198698110602709
#>     Attrib V23    0.12634924981882012
#>     Attrib V24    0.25486980767192285
#>     Attrib V25    -0.19229508214375746
#>     Attrib V26    -0.6716872924163914
#>     Attrib V27    -0.6475984843260715
#>     Attrib V28    -0.162194369294251
#>     Attrib V29    -0.5818693994078613
#>     Attrib V3    -0.1334501505103865
#>     Attrib V30    0.052771878911414626
#>     Attrib V31    -1.049850531078344
#>     Attrib V32    0.12157420496181072
#>     Attrib V33    0.8330126340538445
#>     Attrib V34    0.1856248053336228
#>     Attrib V35    0.06341145016745149
#>     Attrib V36    -0.624844964941003
#>     Attrib V37    -0.6819902685253832
#>     Attrib V38    -0.09553216122383627
#>     Attrib V39    -0.11176709188199947
#>     Attrib V4    0.3069548852452685
#>     Attrib V40    -0.08581278275166691
#>     Attrib V41    -0.12964926325137643
#>     Attrib V42    0.16186276081348716
#>     Attrib V43    0.4291304092567347
#>     Attrib V44    0.1953147844292288
#>     Attrib V45    0.2562330004459832
#>     Attrib V46    0.2872644920757466
#>     Attrib V47    -0.27290864560579864
#>     Attrib V48    0.1834976592497221
#>     Attrib V49    0.4111638852985247
#>     Attrib V5    -0.008413964902662805
#>     Attrib V50    -0.7877212096449837
#>     Attrib V51    -0.20010456280272057
#>     Attrib V52    0.27490975683372604
#>     Attrib V53    0.20708780111909464
#>     Attrib V54    0.5166705034625965
#>     Attrib V55    -0.4929083921503897
#>     Attrib V56    0.19202759312982656
#>     Attrib V57    -0.19422794491936876
#>     Attrib V58    0.2707239140252746
#>     Attrib V59    0.5113156904703501
#>     Attrib V6    -0.21908851315743394
#>     Attrib V60    0.6239431235246718
#>     Attrib V7    -0.13624447943067222
#>     Attrib V8    0.1203917124398946
#>     Attrib V9    0.5784407674134164
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.5700278543375789
#>     Attrib V1    -0.02462805306071724
#>     Attrib V10    0.6734188382617194
#>     Attrib V11    1.2177202678917565
#>     Attrib V12    1.488605425854038
#>     Attrib V13    0.5588353823778067
#>     Attrib V14    -0.5481111861362293
#>     Attrib V15    -0.307796489880721
#>     Attrib V16    -0.601114612335335
#>     Attrib V17    -0.33777945412971583
#>     Attrib V18    0.4540279449571015
#>     Attrib V19    -0.42908592228684844
#>     Attrib V2    -0.043216584996180085
#>     Attrib V20    0.08550872157099891
#>     Attrib V21    0.5141215325341926
#>     Attrib V22    0.5264809019757695
#>     Attrib V23    1.0127218856780285
#>     Attrib V24    0.4716416966532608
#>     Attrib V25    -0.43186856163073944
#>     Attrib V26    0.7359127549027914
#>     Attrib V27    1.5159919668349442
#>     Attrib V28    1.932254215275171
#>     Attrib V29    1.5447834940611471
#>     Attrib V3    -0.14725948280354023
#>     Attrib V30    0.5974207403811613
#>     Attrib V31    -1.0313678698318256
#>     Attrib V32    -0.4398456450615283
#>     Attrib V33    -0.5978742113235264
#>     Attrib V34    -0.5627416026604355
#>     Attrib V35    -0.1880226955089641
#>     Attrib V36    -0.7791485524324184
#>     Attrib V37    0.3741549325315941
#>     Attrib V38    0.19346435201349726
#>     Attrib V39    -0.26370359396330617
#>     Attrib V4    0.5208183030299463
#>     Attrib V40    0.0096341507277073
#>     Attrib V41    1.540070725239587
#>     Attrib V42    0.6012254942055985
#>     Attrib V43    0.696512990742897
#>     Attrib V44    0.07455221425154393
#>     Attrib V45    0.12470548300791984
#>     Attrib V46    0.6166016186699627
#>     Attrib V47    0.2846559823326237
#>     Attrib V48    0.23386282958128518
#>     Attrib V49    1.0738379476317232
#>     Attrib V5    0.7939610731586018
#>     Attrib V50    0.14843994724981793
#>     Attrib V51    1.1059795240303667
#>     Attrib V52    1.293519611922621
#>     Attrib V53    0.32264690947862107
#>     Attrib V54    0.18249024319474952
#>     Attrib V55    -0.8333528493996167
#>     Attrib V56    -1.1477471539095876
#>     Attrib V57    -0.727094283928397
#>     Attrib V58    0.008741803457735243
#>     Attrib V59    -0.21559100332939315
#>     Attrib V6    0.5527983011759021
#>     Attrib V60    0.568784683473542
#>     Attrib V7    -0.46073124694284884
#>     Attrib V8    -0.14951151121142942
#>     Attrib V9    0.8739585670365946
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.16415919750519747
#>     Attrib V1    0.1932267406939574
#>     Attrib V10    0.11495018576091187
#>     Attrib V11    0.29562413465676146
#>     Attrib V12    0.2717458602922332
#>     Attrib V13    -0.09706983439164475
#>     Attrib V14    -0.22744409639976412
#>     Attrib V15    0.06561449729140126
#>     Attrib V16    0.0384348926220443
#>     Attrib V17    -0.265937261838845
#>     Attrib V18    -0.36695993938741
#>     Attrib V19    -0.582242438040317
#>     Attrib V2    -0.057261435734420794
#>     Attrib V20    -0.2125085179185519
#>     Attrib V21    -0.24567378061514702
#>     Attrib V22    -0.5085964982862259
#>     Attrib V23    -0.3535152848178296
#>     Attrib V24    -0.15821761007289975
#>     Attrib V25    -0.28436312945342673
#>     Attrib V26    -0.16570624313318927
#>     Attrib V27    0.0775602813245977
#>     Attrib V28    0.3553290273637182
#>     Attrib V29    0.0806077168384962
#>     Attrib V3    -0.0952522190437798
#>     Attrib V30    0.10713456809757083
#>     Attrib V31    -0.40620444637329245
#>     Attrib V32    0.1531876625712255
#>     Attrib V33    0.3633926799796973
#>     Attrib V34    0.08834354013622694
#>     Attrib V35    -0.0163140049248462
#>     Attrib V36    -0.21521514212713697
#>     Attrib V37    -0.15255650120762115
#>     Attrib V38    -0.0500865967328587
#>     Attrib V39    -0.18804348806571794
#>     Attrib V4    0.2802541844381731
#>     Attrib V40    -0.20849966916752832
#>     Attrib V41    -0.07023900409679387
#>     Attrib V42    -0.12153335275303254
#>     Attrib V43    0.007940470713040881
#>     Attrib V44    -0.11048299455622693
#>     Attrib V45    0.04571147520847331
#>     Attrib V46    0.21326430412882022
#>     Attrib V47    0.04623527631927217
#>     Attrib V48    0.29342154454033686
#>     Attrib V49    0.2729907175665084
#>     Attrib V5    0.05944816923535151
#>     Attrib V50    -0.17665362626950556
#>     Attrib V51    0.09605323987046026
#>     Attrib V52    0.1848593063742705
#>     Attrib V53    0.011866899997333065
#>     Attrib V54    0.3215860935076132
#>     Attrib V55    0.04159182389472108
#>     Attrib V56    -0.32013015291575697
#>     Attrib V57    0.15683683754308517
#>     Attrib V58    0.11877289093516558
#>     Attrib V59    0.24987674972013854
#>     Attrib V6    -0.12162406531104861
#>     Attrib V60    0.5419966180183342
#>     Attrib V7    0.0384235802671795
#>     Attrib V8    0.13130532024912997
#>     Attrib V9    0.31612331461828513
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.5770313882013993
#>     Attrib V1    0.13362879729582153
#>     Attrib V10    0.6917800986247175
#>     Attrib V11    1.035406622684077
#>     Attrib V12    1.3847434846680235
#>     Attrib V13    0.4395778645126596
#>     Attrib V14    -0.6050306333417599
#>     Attrib V15    -0.19595709175590348
#>     Attrib V16    -0.3976944485628004
#>     Attrib V17    -0.3046448897974005
#>     Attrib V18    0.16284276298970057
#>     Attrib V19    -0.7043960697606418
#>     Attrib V2    -0.18002448756803174
#>     Attrib V20    -0.23050818187991912
#>     Attrib V21    0.15340682620084878
#>     Attrib V22    0.1704915075264161
#>     Attrib V23    0.5511259390960929
#>     Attrib V24    0.40069996732135654
#>     Attrib V25    -0.11475465266115469
#>     Attrib V26    0.7364562548733337
#>     Attrib V27    1.3392352764787252
#>     Attrib V28    1.617124322797235
#>     Attrib V29    1.007562457025198
#>     Attrib V3    -0.3171175695760994
#>     Attrib V30    0.4349571269255478
#>     Attrib V31    -0.8528854450777045
#>     Attrib V32    -0.2498546589367069
#>     Attrib V33    -0.3227396405591602
#>     Attrib V34    -0.2820095358156311
#>     Attrib V35    9.000917221181419E-4
#>     Attrib V36    -0.4076725985554089
#>     Attrib V37    0.4562535320554094
#>     Attrib V38    0.250146934513897
#>     Attrib V39    -0.24351341922009995
#>     Attrib V4    0.4327089733264299
#>     Attrib V40    -0.13711282596454955
#>     Attrib V41    1.1570457920175767
#>     Attrib V42    0.25597547754853917
#>     Attrib V43    0.4569514398351786
#>     Attrib V44    -0.1780528984794839
#>     Attrib V45    0.06216432548108509
#>     Attrib V46    0.4909944371554477
#>     Attrib V47    0.19511464372646292
#>     Attrib V48    0.3001453555202201
#>     Attrib V49    0.8521117239425335
#>     Attrib V5    0.6275358273442582
#>     Attrib V50    -0.07679651252449303
#>     Attrib V51    0.8438303327511801
#>     Attrib V52    0.8277190403147954
#>     Attrib V53    0.2258003822943913
#>     Attrib V54    0.15866307212101086
#>     Attrib V55    -0.5928823581472071
#>     Attrib V56    -1.0121010800386394
#>     Attrib V57    -0.4605908252386609
#>     Attrib V58    -0.06880572372112413
#>     Attrib V59    0.13341968245293961
#>     Attrib V6    0.37560195969666693
#>     Attrib V60    0.8752539533202961
#>     Attrib V7    -0.25880017774916897
#>     Attrib V8    -0.1369636054266314
#>     Attrib V9    0.7414375160501019
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.09261033313722608
#>     Attrib V1    0.21525698724372494
#>     Attrib V10    0.47646677866077763
#>     Attrib V11    -0.41545292559951874
#>     Attrib V12    -0.8851789805609582
#>     Attrib V13    0.13053747562957357
#>     Attrib V14    0.7500270463199048
#>     Attrib V15    0.12396295731305992
#>     Attrib V16    3.733333660713492E-5
#>     Attrib V17    -0.18289755940352834
#>     Attrib V18    -0.14589949674573702
#>     Attrib V19    0.5746954532545865
#>     Attrib V2    0.26984329345929825
#>     Attrib V20    -0.5867045770485072
#>     Attrib V21    -0.3136767502865038
#>     Attrib V22    -0.0557950312147399
#>     Attrib V23    -0.48857880241208573
#>     Attrib V24    -0.6067645065872929
#>     Attrib V25    0.20098990945406078
#>     Attrib V26    0.5406257079588966
#>     Attrib V27    0.37762620729522783
#>     Attrib V28    -0.09582897327546709
#>     Attrib V29    0.4616761184573258
#>     Attrib V3    0.1169303075695576
#>     Attrib V30    -0.1601519441924353
#>     Attrib V31    1.0875680104597467
#>     Attrib V32    -0.24634495137146772
#>     Attrib V33    -0.7435755620715947
#>     Attrib V34    0.04111482761886308
#>     Attrib V35    0.2772244762023738
#>     Attrib V36    1.0863087793464299
#>     Attrib V37    1.0680306742400953
#>     Attrib V38    0.28805379156592764
#>     Attrib V39    0.192053999820667
#>     Attrib V4    -0.44799037009857234
#>     Attrib V40    0.08690112832582524
#>     Attrib V41    -0.10040899057674059
#>     Attrib V42    -0.3933539803812164
#>     Attrib V43    -0.799637409493561
#>     Attrib V44    -0.393362519682006
#>     Attrib V45    -0.2937806265954501
#>     Attrib V46    -0.3752180927245585
#>     Attrib V47    0.2919198426848796
#>     Attrib V48    -0.30020128913767274
#>     Attrib V49    -0.8265294449115679
#>     Attrib V5    -0.13924367322327766
#>     Attrib V50    1.0822248585292196
#>     Attrib V51    0.03471695669868012
#>     Attrib V52    -0.6728809619216843
#>     Attrib V53    -0.23624920246650927
#>     Attrib V54    -0.29718707524318727
#>     Attrib V55    0.801178497964037
#>     Attrib V56    -0.2232100902537635
#>     Attrib V57    0.29594599700088514
#>     Attrib V58    -0.4214037210055929
#>     Attrib V59    -0.5366188159372965
#>     Attrib V6    0.21109609719307343
#>     Attrib V60    -0.5047539367257928
#>     Attrib V7    0.5273057470024599
#>     Attrib V8    0.04699698779048994
#>     Attrib V9    -0.6343408777003632
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    0.07307173986841771
#>     Attrib V1    0.17954821057708606
#>     Attrib V10    -0.04475897462060415
#>     Attrib V11    0.17326404527393727
#>     Attrib V12    0.2432638644347765
#>     Attrib V13    -0.20874858869999158
#>     Attrib V14    -0.17848830752614056
#>     Attrib V15    0.12526009483439232
#>     Attrib V16    0.10936855211859922
#>     Attrib V17    -0.06980975691407683
#>     Attrib V18    -0.18636241749667354
#>     Attrib V19    -0.46670977804540076
#>     Attrib V2    -0.11639759804450023
#>     Attrib V20    0.06976732749741342
#>     Attrib V21    -0.10973310271314066
#>     Attrib V22    -0.41311853931575354
#>     Attrib V23    -0.28489775668668227
#>     Attrib V24    -0.16852862851016157
#>     Attrib V25    -0.3084323131611383
#>     Attrib V26    -0.3969331536092066
#>     Attrib V27    -0.16004750962784936
#>     Attrib V28    0.16599537289669117
#>     Attrib V29    -0.10254934750836134
#>     Attrib V3    -0.11741395232682114
#>     Attrib V30    0.0617196094618387
#>     Attrib V31    -0.5448981606437022
#>     Attrib V32    0.09977659891180006
#>     Attrib V33    0.41198326674653946
#>     Attrib V34    0.15123969851069963
#>     Attrib V35    0.04310374156677128
#>     Attrib V36    -0.2388665761427712
#>     Attrib V37    -0.26219420807591254
#>     Attrib V38    -0.04134752334280167
#>     Attrib V39    -0.15725432282424479
#>     Attrib V4    0.23723485963324592
#>     Attrib V40    -0.18919608310852853
#>     Attrib V41    -0.18181719846155456
#>     Attrib V42    -0.059119403211550466
#>     Attrib V43    0.06806854539688004
#>     Attrib V44    -0.051383442145852484
#>     Attrib V45    0.0912898403601282
#>     Attrib V46    0.146038860690464
#>     Attrib V47    -0.015122649803907422
#>     Attrib V48    0.25765803047091845
#>     Attrib V49    0.24555242124956436
#>     Attrib V5    0.08686555057254412
#>     Attrib V50    -0.1925791960957056
#>     Attrib V51    0.10316788857181085
#>     Attrib V52    0.1650021418478202
#>     Attrib V53    0.016011199196383715
#>     Attrib V54    0.4339243086235467
#>     Attrib V55    0.05777818232038449
#>     Attrib V56    -0.09656738686343071
#>     Attrib V57    0.1089600644612542
#>     Attrib V58    0.21023134658179016
#>     Attrib V59    0.2978107465446984
#>     Attrib V6    -0.10484537491438821
#>     Attrib V60    0.5262126360083526
#>     Attrib V7    -0.029782533159720195
#>     Attrib V8    0.1675289684865613
#>     Attrib V9    0.30321580050741426
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    0.19616370892697707
#>     Attrib V1    0.08323522589638248
#>     Attrib V10    -0.4304957903866758
#>     Attrib V11    0.17230943325511805
#>     Attrib V12    0.33548492736165825
#>     Attrib V13    -0.2582444359513115
#>     Attrib V14    -0.40248433402493416
#>     Attrib V15    0.13322365798012387
#>     Attrib V16    0.2753544201522956
#>     Attrib V17    0.09919798114194692
#>     Attrib V18    -0.009547011895734104
#>     Attrib V19    -0.4234483983873612
#>     Attrib V2    -0.16478041261119816
#>     Attrib V20    0.595940117428865
#>     Attrib V21    0.36403382683366414
#>     Attrib V22    -0.038896693100456264
#>     Attrib V23    0.12429518054047674
#>     Attrib V24    0.13521162677275392
#>     Attrib V25    -0.39285876414219334
#>     Attrib V26    -0.7434045148478685
#>     Attrib V27    -0.582348660062478
#>     Attrib V28    -0.044307150967636245
#>     Attrib V29    -0.4476476677275556
#>     Attrib V3    -0.17159349600949544
#>     Attrib V30    0.052980447294040424
#>     Attrib V31    -1.129105933408788
#>     Attrib V32    0.10016786453424954
#>     Attrib V33    0.8562744896462168
#>     Attrib V34    0.2099808092130986
#>     Attrib V35    0.03417445144241236
#>     Attrib V36    -0.6004658892641263
#>     Attrib V37    -0.6633303898775704
#>     Attrib V38    -0.07192798292950404
#>     Attrib V39    -0.17011025371240251
#>     Attrib V4    0.33761959009771986
#>     Attrib V40    -0.07146981185944262
#>     Attrib V41    -0.17280182230861962
#>     Attrib V42    0.09595275042958826
#>     Attrib V43    0.4614578581828768
#>     Attrib V44    0.14367761540472918
#>     Attrib V45    0.24552348100273197
#>     Attrib V46    0.3130081090802253
#>     Attrib V47    -0.27343071076773556
#>     Attrib V48    0.23865983118653225
#>     Attrib V49    0.41834046971794064
#>     Attrib V5    0.005420626232252918
#>     Attrib V50    -0.8108023511798576
#>     Attrib V51    -0.18943861700079592
#>     Attrib V52    0.3385548483925381
#>     Attrib V53    0.16715025324637295
#>     Attrib V54    0.5404516020494993
#>     Attrib V55    -0.48028953235104
#>     Attrib V56    0.1841527367073248
#>     Attrib V57    -0.14956727816292978
#>     Attrib V58    0.29452247687520106
#>     Attrib V59    0.5063837977993406
#>     Attrib V6    -0.2923595014043783
#>     Attrib V60    0.6007932007192598
#>     Attrib V7    -0.1373654396008661
#>     Attrib V8    0.11479491218841212
#>     Attrib V9    0.5282141283052673
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.09290636096333076
#>     Attrib V1    0.13828713193314962
#>     Attrib V10    -0.1154814967784454
#>     Attrib V11    0.06272666549578651
#>     Attrib V12    0.13698969276382028
#>     Attrib V13    0.004298867635149982
#>     Attrib V14    -0.05627699716530076
#>     Attrib V15    0.08660417401124999
#>     Attrib V16    0.046903242306669986
#>     Attrib V17    0.00615044908083548
#>     Attrib V18    -0.05022883817224657
#>     Attrib V19    -0.2528173564525484
#>     Attrib V2    -0.010876221918146696
#>     Attrib V20    0.12155110306608718
#>     Attrib V21    0.024710524729461118
#>     Attrib V22    -0.18828866210451972
#>     Attrib V23    -0.06163875274249402
#>     Attrib V24    -0.0035368378637158538
#>     Attrib V25    -0.056084923724972466
#>     Attrib V26    -0.21749032005197427
#>     Attrib V27    -0.11275486491346058
#>     Attrib V28    0.015929327720745023
#>     Attrib V29    -0.055157838760652514
#>     Attrib V3    0.06973479241285319
#>     Attrib V30    0.003000804632993803
#>     Attrib V31    -0.40083531717595994
#>     Attrib V32    0.008062053818908815
#>     Attrib V33    0.217993677221979
#>     Attrib V34    0.10833664337991249
#>     Attrib V35    0.05202734169319725
#>     Attrib V36    -0.10916414116299189
#>     Attrib V37    -0.0857563162825209
#>     Attrib V38    0.010460656821559283
#>     Attrib V39    0.02603830619956796
#>     Attrib V4    0.19290423520166108
#>     Attrib V40    -0.028205943675946827
#>     Attrib V41    -0.07198140149485638
#>     Attrib V42    -0.01177331107845265
#>     Attrib V43    0.026187090417702816
#>     Attrib V44    -0.012507266883068384
#>     Attrib V45    0.01038544532003727
#>     Attrib V46    0.1368048438683438
#>     Attrib V47    0.007917732235084454
#>     Attrib V48    0.08453967548951696
#>     Attrib V49    0.139625665038068
#>     Attrib V5    0.092346322684692
#>     Attrib V50    -0.1763893756055322
#>     Attrib V51    -0.007949956900761243
#>     Attrib V52    0.09899577202890963
#>     Attrib V53    0.10824390379269186
#>     Attrib V54    0.22539366050325949
#>     Attrib V55    0.019947172712608003
#>     Attrib V56    0.01375985959833615
#>     Attrib V57    0.07872333680083272
#>     Attrib V58    0.09936040289822377
#>     Attrib V59    0.272411406740639
#>     Attrib V6    -0.024133427309103356
#>     Attrib V60    0.37072005971133287
#>     Attrib V7    0.06157594480406195
#>     Attrib V8    0.026515845106756357
#>     Attrib V9    0.15770037864380637
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    0.3661578495582493
#>     Attrib V1    0.2904837976026194
#>     Attrib V10    0.25436195359882136
#>     Attrib V11    0.5646763994923981
#>     Attrib V12    0.5288302290857568
#>     Attrib V13    -0.1989743042119038
#>     Attrib V14    -0.41533862337399724
#>     Attrib V15    0.07392267913140473
#>     Attrib V16    -0.10932009032549048
#>     Attrib V17    -0.44863620977763674
#>     Attrib V18    -0.5146592799290666
#>     Attrib V19    -0.8967788171959091
#>     Attrib V2    -0.14692831511866125
#>     Attrib V20    -0.3340152823783678
#>     Attrib V21    -0.41244871696192553
#>     Attrib V22    -0.7350561521831841
#>     Attrib V23    -0.45066047961947375
#>     Attrib V24    -0.29997727984308425
#>     Attrib V25    -0.5105084019026903
#>     Attrib V26    -0.2508765443871571
#>     Attrib V27    0.12486893030591213
#>     Attrib V28    0.3163105002748628
#>     Attrib V29    -0.13243432732127333
#>     Attrib V3    -0.2947765880478894
#>     Attrib V30    0.17609866760557877
#>     Attrib V31    -0.37540092100780287
#>     Attrib V32    0.3441895178324744
#>     Attrib V33    0.5224031447723158
#>     Attrib V34    0.149842083560596
#>     Attrib V35    -0.03147593540328331
#>     Attrib V36    -0.5308344958330399
#>     Attrib V37    -0.26723705093635314
#>     Attrib V38    -0.3163538811613385
#>     Attrib V39    -0.3940032102746369
#>     Attrib V4    0.2275023605455165
#>     Attrib V40    -0.31973427857589604
#>     Attrib V41    -0.045109786984556116
#>     Attrib V42    -0.06441084089152066
#>     Attrib V43    0.06575447742227167
#>     Attrib V44    -0.23221118241830144
#>     Attrib V45    -0.04286578721177831
#>     Attrib V46    0.2528136568722318
#>     Attrib V47    0.030192827045389233
#>     Attrib V48    0.438277386203186
#>     Attrib V49    0.4904033423055762
#>     Attrib V5    0.013674304081541319
#>     Attrib V50    -0.2479405620356864
#>     Attrib V51    0.15644071752538635
#>     Attrib V52    0.31799842394935846
#>     Attrib V53    -0.22112911420414424
#>     Attrib V54    0.3673726092029857
#>     Attrib V55    -0.01181739293180153
#>     Attrib V56    -0.45984084721277985
#>     Attrib V57    0.040134366131327336
#>     Attrib V58    0.2570882037116439
#>     Attrib V59    0.21730163439168154
#>     Attrib V6    -0.18035135836216096
#>     Attrib V60    0.6939648131166958
#>     Attrib V7    -0.05176009947045883
#>     Attrib V8    0.17731516693213623
#>     Attrib V9    0.4711193584671341
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    0.254016273295249
#>     Attrib V1    0.2876999633656731
#>     Attrib V10    0.6592562088980192
#>     Attrib V11    -0.6094825557652476
#>     Attrib V12    -0.9807239408431062
#>     Attrib V13    0.08532584317596954
#>     Attrib V14    0.8110454064946313
#>     Attrib V15    0.3019149334330374
#>     Attrib V16    -0.04527438195676643
#>     Attrib V17    -0.3863471330939705
#>     Attrib V18    -0.35735277097535456
#>     Attrib V19    0.5853383775813582
#>     Attrib V2    0.17850399785479182
#>     Attrib V20    -1.0699080783123955
#>     Attrib V21    -0.760757434473341
#>     Attrib V22    -0.28805241605465964
#>     Attrib V23    -0.8828359408675508
#>     Attrib V24    -0.8219051287636351
#>     Attrib V25    0.1952718266710963
#>     Attrib V26    0.7671869481303598
#>     Attrib V27    0.6987881227166994
#>     Attrib V28    0.2052080559982419
#>     Attrib V29    0.9236766206235966
#>     Attrib V3    3.21091758819991E-5
#>     Attrib V30    -0.2520540704662366
#>     Attrib V31    1.5003453367355986
#>     Attrib V32    -0.12024101946876052
#>     Attrib V33    -1.0526560424448224
#>     Attrib V34    0.17424559110159066
#>     Attrib V35    0.4446169689108734
#>     Attrib V36    1.4545368057764994
#>     Attrib V37    1.6498906641741122
#>     Attrib V38    0.27170535898472753
#>     Attrib V39    0.11858864648042106
#>     Attrib V4    -0.6069004750171708
#>     Attrib V40    -0.011465680462169189
#>     Attrib V41    0.08080359827141914
#>     Attrib V42    -0.5333835675355286
#>     Attrib V43    -1.199130645717616
#>     Attrib V44    -0.864048039007457
#>     Attrib V45    -0.5479598360923166
#>     Attrib V46    -0.352581403085032
#>     Attrib V47    0.46937021642924986
#>     Attrib V48    -0.35953064794330825
#>     Attrib V49    -1.151569358707049
#>     Attrib V5    -0.1291802428267816
#>     Attrib V50    1.3441735801945125
#>     Attrib V51    0.10269416078862233
#>     Attrib V52    -0.9972380671788462
#>     Attrib V53    -0.43819539502850663
#>     Attrib V54    -0.6631304812257827
#>     Attrib V55    0.8951460721580308
#>     Attrib V56    -0.5202317997173088
#>     Attrib V57    0.48016148475801096
#>     Attrib V58    -0.6678998381883523
#>     Attrib V59    -0.6485948605152991
#>     Attrib V6    0.3338467471628823
#>     Attrib V60    -0.27923667178045186
#>     Attrib V7    0.6962513971180131
#>     Attrib V8    -0.11170451959716136
#>     Attrib V9    -0.9260850892775639
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.03996529302057224
#>     Attrib V1    0.201510085630806
#>     Attrib V10    -0.06727515190073739
#>     Attrib V11    0.07665807501984603
#>     Attrib V12    0.1382852447505043
#>     Attrib V13    -0.07234541278603025
#>     Attrib V14    -0.09446835343442676
#>     Attrib V15    0.13950923880857397
#>     Attrib V16    0.1668965150530553
#>     Attrib V17    -0.005901187351362001
#>     Attrib V18    -0.08755914725165649
#>     Attrib V19    -0.28170685253924954
#>     Attrib V2    -0.041806723539276544
#>     Attrib V20    0.05000036181167992
#>     Attrib V21    -0.063465962889521
#>     Attrib V22    -0.29823081558413816
#>     Attrib V23    -0.2577059312842678
#>     Attrib V24    -0.07965084205152267
#>     Attrib V25    -0.19403999572668634
#>     Attrib V26    -0.3210085581511255
#>     Attrib V27    -0.21313497626343325
#>     Attrib V28    0.049405403106743
#>     Attrib V29    -0.1012872054841637
#>     Attrib V3    0.02845823632984354
#>     Attrib V30    -0.03580466259680694
#>     Attrib V31    -0.42157376947429265
#>     Attrib V32    0.053239987042680854
#>     Attrib V33    0.27813212882357957
#>     Attrib V34    0.13683715510425962
#>     Attrib V35    0.05596224079782146
#>     Attrib V36    -0.14268076071958966
#>     Attrib V37    -0.13632733084983478
#>     Attrib V38    -0.00725077514648702
#>     Attrib V39    -0.023994844069292583
#>     Attrib V4    0.22550987532610214
#>     Attrib V40    -0.10037589791876554
#>     Attrib V41    -0.11972942146630607
#>     Attrib V42    -0.029624433096438328
#>     Attrib V43    0.034324577531869155
#>     Attrib V44    -0.07003331811121881
#>     Attrib V45    0.05159074669763102
#>     Attrib V46    0.13614624602530265
#>     Attrib V47    -0.04115674587566129
#>     Attrib V48    0.11546999983356694
#>     Attrib V49    0.11592882144348057
#>     Attrib V5    0.07212587239077864
#>     Attrib V50    -0.11569244533089915
#>     Attrib V51    0.055106429832370636
#>     Attrib V52    0.16221937303665476
#>     Attrib V53    0.1481567917807561
#>     Attrib V54    0.3100962057833565
#>     Attrib V55    0.13475898132927952
#>     Attrib V56    0.047391113810270724
#>     Attrib V57    0.14953492561559406
#>     Attrib V58    0.22398706485078188
#>     Attrib V59    0.28776365057709263
#>     Attrib V6    -0.044394251148044926
#>     Attrib V60    0.4484217225036753
#>     Attrib V7    0.05362416310371338
#>     Attrib V8    0.08685132131292854
#>     Attrib V9    0.2207049034670385
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.11643544257202407
#>     Attrib V1    0.12815432131100044
#>     Attrib V10    0.054974661803139035
#>     Attrib V11    0.07860490383893223
#>     Attrib V12    0.03817641791947716
#>     Attrib V13    -0.05158087204443234
#>     Attrib V14    -0.029355135366624735
#>     Attrib V15    0.12482506859191943
#>     Attrib V16    0.04363078379794267
#>     Attrib V17    -0.0034155123843513983
#>     Attrib V18    -0.04934082795354344
#>     Attrib V19    -0.11171667979237891
#>     Attrib V2    0.12355055598379994
#>     Attrib V20    -0.02392839937747975
#>     Attrib V21    -0.0712536130198482
#>     Attrib V22    -0.06753759465008974
#>     Attrib V23    -0.08383313744720598
#>     Attrib V24    -0.002935551195865181
#>     Attrib V25    -0.05429825164585047
#>     Attrib V26    -0.0774421472251947
#>     Attrib V27    -0.05606771300851372
#>     Attrib V28    -0.004991873002067754
#>     Attrib V29    -0.07724834823605087
#>     Attrib V3    0.07844008838680734
#>     Attrib V30    0.018337190244635912
#>     Attrib V31    -0.08426397709455022
#>     Attrib V32    -0.027720584301696407
#>     Attrib V33    0.14059363012068207
#>     Attrib V34    0.030971508982653762
#>     Attrib V35    0.11598145068653774
#>     Attrib V36    -0.0035827635269089094
#>     Attrib V37    -0.013997685944543724
#>     Attrib V38    0.08017790477077703
#>     Attrib V39    0.05408759786027771
#>     Attrib V4    0.1422101689872325
#>     Attrib V40    -0.02513424128548174
#>     Attrib V41    -0.005596121149490963
#>     Attrib V42    -0.004067117794567447
#>     Attrib V43    0.08406920515576514
#>     Attrib V44    0.06029497395857214
#>     Attrib V45    0.07445427434511065
#>     Attrib V46    0.0630196817292492
#>     Attrib V47    0.005519806783492554
#>     Attrib V48    0.1118937097267574
#>     Attrib V49    0.01888741155423394
#>     Attrib V5    0.08274348099610107
#>     Attrib V50    -0.009726076373256192
#>     Attrib V51    0.07819148066422672
#>     Attrib V52    0.061184421798856733
#>     Attrib V53    0.039162718889053365
#>     Attrib V54    0.0910198385593599
#>     Attrib V55    0.08763293948669425
#>     Attrib V56    0.06530014407742878
#>     Attrib V57    0.1375748379590972
#>     Attrib V58    0.03821208822189039
#>     Attrib V59    0.08238190088946279
#>     Attrib V6    0.025797050625566167
#>     Attrib V60    0.1963398093267747
#>     Attrib V7    -0.00890483456601044
#>     Attrib V8    0.09030904950764022
#>     Attrib V9    0.12366248312706676
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.1857884357519989
#>     Attrib V1    0.12236103894555299
#>     Attrib V10    0.010785937206846155
#>     Attrib V11    0.055044180596736006
#>     Attrib V12    0.06236377694803623
#>     Attrib V13    -0.032580573544018665
#>     Attrib V14    -0.019404327217681195
#>     Attrib V15    0.0549581650702478
#>     Attrib V16    0.05772087757341992
#>     Attrib V17    -0.035964023667754724
#>     Attrib V18    -0.0037334097539035087
#>     Attrib V19    -0.19963140851932568
#>     Attrib V2    0.06874925448931037
#>     Attrib V20    0.026784531510536946
#>     Attrib V21    -0.01913003568686375
#>     Attrib V22    -0.14023758656673554
#>     Attrib V23    -0.07704236673946023
#>     Attrib V24    -0.05317846630723376
#>     Attrib V25    -0.028892334647445443
#>     Attrib V26    -0.06091471848724412
#>     Attrib V27    -0.06507348834304921
#>     Attrib V28    -0.006100718986497228
#>     Attrib V29    -0.07986808053614429
#>     Attrib V3    0.12958607759053278
#>     Attrib V30    -0.05020509969167489
#>     Attrib V31    -0.19251406656781345
#>     Attrib V32    -0.008592616736664567
#>     Attrib V33    0.127603076081825
#>     Attrib V34    0.0996960402324685
#>     Attrib V35    0.0669493109156922
#>     Attrib V36    0.06800002195001019
#>     Attrib V37    -0.013364327929575566
#>     Attrib V38    0.023502555730387415
#>     Attrib V39    0.056894010363072
#>     Attrib V4    0.12271290054867776
#>     Attrib V40    -0.02301774785667471
#>     Attrib V41    -0.0864139887191154
#>     Attrib V42    -0.01312588955513864
#>     Attrib V43    0.029388948167865487
#>     Attrib V44    0.05100746888653576
#>     Attrib V45    -0.009836669171451247
#>     Attrib V46    0.07654834440339756
#>     Attrib V47    0.0711937661539728
#>     Attrib V48    0.0815553402939798
#>     Attrib V49    0.08360833644282231
#>     Attrib V5    0.08586889586446936
#>     Attrib V50    -0.08424402871994235
#>     Attrib V51    0.11413184383113438
#>     Attrib V52    0.08334965663856468
#>     Attrib V53    0.0729552206345557
#>     Attrib V54    0.10493957975853459
#>     Attrib V55    0.08029169879474365
#>     Attrib V56    0.062634488194911
#>     Attrib V57    0.05769027009770448
#>     Attrib V58    0.08179069074341536
#>     Attrib V59    0.16738262351033195
#>     Attrib V6    -0.017970251270386543
#>     Attrib V60    0.27091729385103036
#>     Attrib V7    0.0716148679181032
#>     Attrib V8    0.09700697546608515
#>     Attrib V9    0.14074695037765048
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.5743467630810292
#>     Attrib V1    -0.08328724370713764
#>     Attrib V10    0.5575959883732269
#>     Attrib V11    0.9289527886670355
#>     Attrib V12    1.503395700805106
#>     Attrib V13    0.4508544463733324
#>     Attrib V14    -0.5125534102269244
#>     Attrib V15    -0.22883715588892825
#>     Attrib V16    -0.5928360373960601
#>     Attrib V17    -0.31840372581500975
#>     Attrib V18    0.2990922114021167
#>     Attrib V19    -0.5408902349644686
#>     Attrib V2    -0.20789473727416927
#>     Attrib V20    -0.1457154603670696
#>     Attrib V21    0.2185296193372442
#>     Attrib V22    0.37700683247335975
#>     Attrib V23    0.7393491723040572
#>     Attrib V24    0.4907078699080278
#>     Attrib V25    -0.15888687336466292
#>     Attrib V26    0.6178617860855607
#>     Attrib V27    1.3305257391317122
#>     Attrib V28    1.6468375650401779
#>     Attrib V29    1.0695364580785671
#>     Attrib V3    -0.25670978187149635
#>     Attrib V30    0.4291304754862112
#>     Attrib V31    -0.9595737393468236
#>     Attrib V32    -0.3275847620415227
#>     Attrib V33    -0.35402898803520894
#>     Attrib V34    -0.3764333912427781
#>     Attrib V35    -0.04648519570908607
#>     Attrib V36    -0.6031960480098981
#>     Attrib V37    0.24431235832258025
#>     Attrib V38    0.1580354688469582
#>     Attrib V39    -0.2598180302336955
#>     Attrib V4    0.5464062767152491
#>     Attrib V40    -0.01573716102182851
#>     Attrib V41    1.2859694546296534
#>     Attrib V42    0.43639056171155743
#>     Attrib V43    0.5426285176654533
#>     Attrib V44    -0.08721540561180591
#>     Attrib V45    0.10316804227168375
#>     Attrib V46    0.49149425240360617
#>     Attrib V47    0.13073175771590595
#>     Attrib V48    0.36161716968785534
#>     Attrib V49    1.0456593888297772
#>     Attrib V5    0.7478400829110015
#>     Attrib V50    -0.07518493564507073
#>     Attrib V51    0.8374186915470182
#>     Attrib V52    0.989911595516481
#>     Attrib V53    0.2575989409296008
#>     Attrib V54    0.17655824422713956
#>     Attrib V55    -0.840466724901597
#>     Attrib V56    -1.0064187672036533
#>     Attrib V57    -0.4601709494947897
#>     Attrib V58    0.05705740886693653
#>     Attrib V59    0.08296569663208561
#>     Attrib V6    0.4766473789001065
#>     Attrib V60    0.8564823740481067
#>     Attrib V7    -0.3628882904755586
#>     Attrib V8    -0.24454840839575254
#>     Attrib V9    0.7268236517457011
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.21170178900678874
#>     Attrib V1    0.06306286365922208
#>     Attrib V10    -0.2349904086651117
#>     Attrib V11    0.2969547426893704
#>     Attrib V12    0.6136866525037918
#>     Attrib V13    -0.14480696383178346
#>     Attrib V14    -0.5442348053130953
#>     Attrib V15    -0.02867705749266133
#>     Attrib V16    0.020926335390884204
#>     Attrib V17    -0.009399361489507206
#>     Attrib V18    0.034934263886110456
#>     Attrib V19    -0.48771264156762467
#>     Attrib V2    -0.23059460805508486
#>     Attrib V20    0.5144839053776505
#>     Attrib V21    0.3653588616464555
#>     Attrib V22    0.06181558632293873
#>     Attrib V23    0.27635764012007563
#>     Attrib V24    0.2895456952933581
#>     Attrib V25    -0.12821983720019142
#>     Attrib V26    -0.2452828855308648
#>     Attrib V27    -0.18362457618893607
#>     Attrib V28    0.22755711900396156
#>     Attrib V29    -0.15157986378829844
#>     Attrib V3    -0.24709288383494074
#>     Attrib V30    0.2690648980899418
#>     Attrib V31    -0.9823946416158715
#>     Attrib V32    -0.033780163402763984
#>     Attrib V33    0.5875422954279609
#>     Attrib V34    0.11211705057144725
#>     Attrib V35    0.17834306191978622
#>     Attrib V36    -0.35594088265972584
#>     Attrib V37    -0.31432859146312947
#>     Attrib V38    0.0721503139231133
#>     Attrib V39    -0.15126112246093257
#>     Attrib V4    0.24455180510183022
#>     Attrib V40    -0.09015797483164875
#>     Attrib V41    0.028631962584655092
#>     Attrib V42    0.12408377254665388
#>     Attrib V43    0.5122140235769258
#>     Attrib V44    0.264682332168019
#>     Attrib V45    0.30024967684165704
#>     Attrib V46    0.2884576387394689
#>     Attrib V47    -0.27299356064496255
#>     Attrib V48    0.13676803589337522
#>     Attrib V49    0.4067792528896036
#>     Attrib V5    0.057980093365304804
#>     Attrib V50    -0.8046360661726677
#>     Attrib V51    -0.06030564056268611
#>     Attrib V52    0.36770280505238606
#>     Attrib V53    0.1002817560105669
#>     Attrib V54    0.3528913454822905
#>     Attrib V55    -0.5016709208856591
#>     Attrib V56    0.006880487144410437
#>     Attrib V57    -0.41279710889759214
#>     Attrib V58    0.1180148966290406
#>     Attrib V59    0.2978677110776196
#>     Attrib V6    -0.2905827749680688
#>     Attrib V60    0.4814767190839304
#>     Attrib V7    -0.28049049889612027
#>     Attrib V8    -0.0418767831891444
#>     Attrib V9    0.5828289490635014
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    0.45548682719444683
#>     Attrib V1    0.24374658042500982
#>     Attrib V10    0.46534366877863753
#>     Attrib V11    -0.7113590252390607
#>     Attrib V12    -1.042483256142525
#>     Attrib V13    -0.004021970973353739
#>     Attrib V14    0.9041438619399773
#>     Attrib V15    0.3192998358785602
#>     Attrib V16    -0.01649993387068655
#>     Attrib V17    -0.42481854861010476
#>     Attrib V18    -0.47027114661043257
#>     Attrib V19    0.423774832100929
#>     Attrib V2    0.08659485673070359
#>     Attrib V20    -1.1484614657366854
#>     Attrib V21    -0.7559379412956335
#>     Attrib V22    -0.5847919848829439
#>     Attrib V23    -1.1586161435330065
#>     Attrib V24    -0.9506000414528277
#>     Attrib V25    -0.05291261342380003
#>     Attrib V26    0.36906628757299
#>     Attrib V27    0.48240839733843605
#>     Attrib V28    -0.12757067353801282
#>     Attrib V29    0.5345604513662474
#>     Attrib V3    -0.046100033756381845
#>     Attrib V30    -0.4739405107817208
#>     Attrib V31    1.4235787923292382
#>     Attrib V32    -0.10894934248884613
#>     Attrib V33    -0.8702061537900367
#>     Attrib V34    0.25933598803782626
#>     Attrib V35    0.2890762283794432
#>     Attrib V36    1.178903944784962
#>     Attrib V37    1.2933991632453568
#>     Attrib V38    0.056502779964495146
#>     Attrib V39    0.11908445303494013
#>     Attrib V4    -0.6095216543392943
#>     Attrib V40    0.13463545766937546
#>     Attrib V41    0.11575479563172145
#>     Attrib V42    -0.5642435504805442
#>     Attrib V43    -1.1923012710821388
#>     Attrib V44    -0.9234532387149157
#>     Attrib V45    -0.714312187710384
#>     Attrib V46    -0.46757394008323777
#>     Attrib V47    0.3374497171132493
#>     Attrib V48    -0.295489340009252
#>     Attrib V49    -1.117309510463108
#>     Attrib V5    -0.143031144439425
#>     Attrib V50    1.3184196897948117
#>     Attrib V51    -0.08516810091828314
#>     Attrib V52    -1.0063788190742886
#>     Attrib V53    -0.4355618869075813
#>     Attrib V54    -0.46984512929993494
#>     Attrib V55    0.9957175322710548
#>     Attrib V56    -0.580404423356417
#>     Attrib V57    0.8755247469227175
#>     Attrib V58    -0.476949068915058
#>     Attrib V59    -0.4645630797708384
#>     Attrib V6    0.38468737256163704
#>     Attrib V60    -0.19132649163292995
#>     Attrib V7    0.8657717130679567
#>     Attrib V8    -0.054414690620519096
#>     Attrib V9    -0.9886221502701009
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    0.12210677257018057
#>     Attrib V1    0.3081685929434131
#>     Attrib V10    -0.3016830928903272
#>     Attrib V11    -0.011593127924497472
#>     Attrib V12    0.13302218550672484
#>     Attrib V13    -0.20327974604535143
#>     Attrib V14    -0.03342599697063969
#>     Attrib V15    0.26103199325685256
#>     Attrib V16    0.33240857368195553
#>     Attrib V17    0.09501798177251235
#>     Attrib V18    -0.04976338197833749
#>     Attrib V19    -0.2866411736224734
#>     Attrib V2    -0.02141362360517589
#>     Attrib V20    0.3720095704904346
#>     Attrib V21    0.14959752531692533
#>     Attrib V22    -0.26887118801133525
#>     Attrib V23    -0.24683432922276394
#>     Attrib V24    -0.06841013817242039
#>     Attrib V25    -0.4094081945646164
#>     Attrib V26    -0.648677141439894
#>     Attrib V27    -0.5198724943752876
#>     Attrib V28    -0.1869020826700834
#>     Attrib V29    -0.23350011649299965
#>     Attrib V3    -0.06990283405566679
#>     Attrib V30    -0.05528048457329376
#>     Attrib V31    -0.5965630460793303
#>     Attrib V32    0.0699360979183818
#>     Attrib V33    0.4490364011268677
#>     Attrib V34    0.11694532767912215
#>     Attrib V35    0.01563072877136602
#>     Attrib V36    -0.2800985974790732
#>     Attrib V37    -0.31666127440524544
#>     Attrib V38    -0.06126683751973935
#>     Attrib V39    -0.0854862755422708
#>     Attrib V4    0.26506236448375425
#>     Attrib V40    -0.11051419551958638
#>     Attrib V41    -0.2810067254283181
#>     Attrib V42    -0.11403809149798708
#>     Attrib V43    0.13870088880195924
#>     Attrib V44    -0.04588437547174236
#>     Attrib V45    -0.020847409907811545
#>     Attrib V46    0.09675749946244816
#>     Attrib V47    -0.2418169969463964
#>     Attrib V48    0.14541958355434947
#>     Attrib V49    0.19603854839764406
#>     Attrib V5    0.06936385248195902
#>     Attrib V50    -0.36286237139052663
#>     Attrib V51    -0.14143019496305306
#>     Attrib V52    0.14403766141873314
#>     Attrib V53    0.11509914382764949
#>     Attrib V54    0.5156828697513608
#>     Attrib V55    0.09752703313775556
#>     Attrib V56    0.20838450999718364
#>     Attrib V57    0.13697692947509604
#>     Attrib V58    0.26805452293420406
#>     Attrib V59    0.514129022058256
#>     Attrib V6    -0.08709230741937111
#>     Attrib V60    0.5968144131872029
#>     Attrib V7    0.055950344778080065
#>     Attrib V8    0.016348784135974632
#>     Attrib V9    0.17704877036409317
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    0.011883066461327436
#>     Attrib V1    -0.04769065824431909
#>     Attrib V10    -0.48405641002422045
#>     Attrib V11    0.2573947314559128
#>     Attrib V12    0.7128147856036121
#>     Attrib V13    -0.1674689622961746
#>     Attrib V14    -0.6012015318332283
#>     Attrib V15    -0.0804316573475374
#>     Attrib V16    0.07861235221484134
#>     Attrib V17    0.25247819221291723
#>     Attrib V18    0.19389858899354845
#>     Attrib V19    -0.4995888823225841
#>     Attrib V2    -0.2874680443535662
#>     Attrib V20    0.5753764892487936
#>     Attrib V21    0.3188591079722393
#>     Attrib V22    0.06073806735623938
#>     Attrib V23    0.37130061801402797
#>     Attrib V24    0.3815933363860514
#>     Attrib V25    -0.12585323936898643
#>     Attrib V26    -0.5280079299030085
#>     Attrib V27    -0.5797239377749497
#>     Attrib V28    -0.10685171646537835
#>     Attrib V29    -0.6098813719987135
#>     Attrib V3    -0.02945312454259465
#>     Attrib V30    0.12981478090860138
#>     Attrib V31    -1.102578630293161
#>     Attrib V32    0.08950754706115609
#>     Attrib V33    0.7876982925911394
#>     Attrib V34    0.12319796599194457
#>     Attrib V35    0.05548606263611647
#>     Attrib V36    -0.7327138150853508
#>     Attrib V37    -0.8110292252135195
#>     Attrib V38    -0.15274792493225026
#>     Attrib V39    -0.15132569527776316
#>     Attrib V4    0.43409206774367026
#>     Attrib V40    -0.10317727957776882
#>     Attrib V41    -0.11258545272941682
#>     Attrib V42    0.20178773745247497
#>     Attrib V43    0.6689731545411708
#>     Attrib V44    0.3239398821971472
#>     Attrib V45    0.29600001892878974
#>     Attrib V46    0.32073924410241395
#>     Attrib V47    -0.2482096168616676
#>     Attrib V48    0.23571616144216595
#>     Attrib V49    0.6108112894310476
#>     Attrib V5    0.05184871063519213
#>     Attrib V50    -0.9515257376135097
#>     Attrib V51    -0.17377208723015158
#>     Attrib V52    0.5089208104466226
#>     Attrib V53    0.2707998673218099
#>     Attrib V54    0.4301531328367474
#>     Attrib V55    -0.7055720977130749
#>     Attrib V56    0.3715567645834668
#>     Attrib V57    -0.31800330585877384
#>     Attrib V58    0.3109340895413724
#>     Attrib V59    0.5690315069825285
#>     Attrib V6    -0.2636154159035493
#>     Attrib V60    0.6036355905217614
#>     Attrib V7    -0.39717650933859694
#>     Attrib V8    -0.10163779366559929
#>     Attrib V9    0.6183034598748791
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.26148522361004284
#>     Attrib V1    0.001522624936973933
#>     Attrib V10    0.14817503387817443
#>     Attrib V11    -0.44983655069588907
#>     Attrib V12    -0.6778018931074943
#>     Attrib V13    0.03696675835647802
#>     Attrib V14    0.612614472663961
#>     Attrib V15    0.17103037615262737
#>     Attrib V16    0.03262796567361683
#>     Attrib V17    0.1255088509606273
#>     Attrib V18    0.038473147191036956
#>     Attrib V19    0.4313163367132877
#>     Attrib V2    0.23227553756040004
#>     Attrib V20    -0.45573480239527164
#>     Attrib V21    -0.270851706802179
#>     Attrib V22    -0.0270806507507936
#>     Attrib V23    -0.2541462028694506
#>     Attrib V24    -0.3640688719151599
#>     Attrib V25    0.1984709343331553
#>     Attrib V26    0.3258771316648205
#>     Attrib V27    0.075944555958255
#>     Attrib V28    -0.30568214797224863
#>     Attrib V29    0.12254795072195417
#>     Attrib V3    0.2149969898562327
#>     Attrib V30    -0.21668245091644184
#>     Attrib V31    0.8406982833480571
#>     Attrib V32    0.04177733315178467
#>     Attrib V33    -0.5285611725325353
#>     Attrib V34    -0.1646256340613111
#>     Attrib V35    -0.18375139260524956
#>     Attrib V36    0.45181358718476594
#>     Attrib V37    0.31354110398418006
#>     Attrib V38    -0.056024901961295746
#>     Attrib V39    0.06599410546067741
#>     Attrib V4    -0.17363232477573715
#>     Attrib V40    0.0775268719074284
#>     Attrib V41    -0.1463971187897426
#>     Attrib V42    -0.21916495896373198
#>     Attrib V43    -0.4455345941354978
#>     Attrib V44    -0.3059806171513726
#>     Attrib V45    -0.4409238107845253
#>     Attrib V46    -0.34777669915256115
#>     Attrib V47    0.22595869153751186
#>     Attrib V48    -0.07409139347902265
#>     Attrib V49    -0.4502357268831738
#>     Attrib V5    -0.12193451566277871
#>     Attrib V50    0.7751070023183619
#>     Attrib V51    0.1250726193251304
#>     Attrib V52    -0.29793034046343525
#>     Attrib V53    -0.13615303990230634
#>     Attrib V54    -0.12989569577862287
#>     Attrib V55    0.47630513362117094
#>     Attrib V56    0.1830644509857401
#>     Attrib V57    0.47436622652168564
#>     Attrib V58    -0.08755570834091296
#>     Attrib V59    -0.17308870296520384
#>     Attrib V6    0.15932705435935587
#>     Attrib V60    -0.33863340771331796
#>     Attrib V7    0.18667629346980044
#>     Attrib V8    6.674403229745651E-4
#>     Attrib V9    -0.43408198071811555
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.5869932758142004
#>     Attrib V1    -0.16768164616579923
#>     Attrib V10    0.6460354143584883
#>     Attrib V11    1.2444237424385571
#>     Attrib V12    1.7152200110542475
#>     Attrib V13    0.618387341930808
#>     Attrib V14    -0.5413149471105116
#>     Attrib V15    -0.37935647231806074
#>     Attrib V16    -0.7306914422067287
#>     Attrib V17    -0.28742370095957376
#>     Attrib V18    0.5625257072519413
#>     Attrib V19    -0.3885462498980842
#>     Attrib V2    -0.04551188872199997
#>     Attrib V20    0.03247828389035386
#>     Attrib V21    0.4814437408908468
#>     Attrib V22    0.606737881443419
#>     Attrib V23    1.1190307571788896
#>     Attrib V24    0.586697150120824
#>     Attrib V25    -0.4238558071086717
#>     Attrib V26    0.7730362527224914
#>     Attrib V27    1.663820931805094
#>     Attrib V28    1.9579092931384063
#>     Attrib V29    1.532642729588209
#>     Attrib V3    -0.05987445132296157
#>     Attrib V30    0.6157031919796528
#>     Attrib V31    -1.0228617526514703
#>     Attrib V32    -0.4397504703469096
#>     Attrib V33    -0.7175680446204331
#>     Attrib V34    -0.5455845884976903
#>     Attrib V35    -0.22661851300330813
#>     Attrib V36    -0.9322784841712122
#>     Attrib V37    0.2543004167048689
#>     Attrib V38    0.18924728105375271
#>     Attrib V39    -0.16946086949808697
#>     Attrib V4    0.560388577524693
#>     Attrib V40    0.002306518188533184
#>     Attrib V41    1.6998939305000644
#>     Attrib V42    0.6892886166351267
#>     Attrib V43    0.7717094585507364
#>     Attrib V44    0.165388224579808
#>     Attrib V45    0.14537221705868064
#>     Attrib V46    0.5792692293609769
#>     Attrib V47    0.19364279074827676
#>     Attrib V48    0.1931940283685536
#>     Attrib V49    1.2578890131789575
#>     Attrib V5    0.9253805603058621
#>     Attrib V50    0.1838496233022173
#>     Attrib V51    1.1912897172732233
#>     Attrib V52    1.4689201874664437
#>     Attrib V53    0.40407491801213874
#>     Attrib V54    0.11575422992758098
#>     Attrib V55    -0.8680893829815819
#>     Attrib V56    -1.1035182928699743
#>     Attrib V57    -0.6705074858762317
#>     Attrib V58    0.04421189142454965
#>     Attrib V59    -0.2781079113691414
#>     Attrib V6    0.6653353267594125
#>     Attrib V60    0.45789422858965023
#>     Attrib V7    -0.5931641716524702
#>     Attrib V8    -0.2738684816346097
#>     Attrib V9    0.7975217650220394
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.23439320877722614
#>     Attrib V1    -0.011756678939551592
#>     Attrib V10    0.06249953541937739
#>     Attrib V11    -0.27671913756683303
#>     Attrib V12    -0.3559460539669215
#>     Attrib V13    -0.006867551001614997
#>     Attrib V14    0.3154487013677346
#>     Attrib V15    0.02608909739320225
#>     Attrib V16    0.023107620822125096
#>     Attrib V17    0.09691680442359452
#>     Attrib V18    0.057189717306456736
#>     Attrib V19    0.26932018774823707
#>     Attrib V2    0.14200585987184214
#>     Attrib V20    -0.2458491131663758
#>     Attrib V21    -0.11956391888959664
#>     Attrib V22    0.04175966421366785
#>     Attrib V23    -0.09548313832243692
#>     Attrib V24    -0.16679655756050538
#>     Attrib V25    0.12724793673572746
#>     Attrib V26    0.12506557285826272
#>     Attrib V27    0.03999569300182209
#>     Attrib V28    -0.13900358733056747
#>     Attrib V29    0.09008088751006439
#>     Attrib V3    0.08768728269553988
#>     Attrib V30    -0.01711182777405562
#>     Attrib V31    0.49998699670282243
#>     Attrib V32    0.0659942148761661
#>     Attrib V33    -0.1265851537871823
#>     Attrib V34    -0.058462078854960346
#>     Attrib V35    0.007261419207457141
#>     Attrib V36    0.33099219077466724
#>     Attrib V37    0.2622682773516353
#>     Attrib V38    -0.034207918316154856
#>     Attrib V39    0.08720474360603803
#>     Attrib V4    -0.05696654342732067
#>     Attrib V40    0.09207915570398609
#>     Attrib V41    -0.03995855108193824
#>     Attrib V42    -0.031127515979553554
#>     Attrib V43    -0.1924569660900487
#>     Attrib V44    -0.071191103911514
#>     Attrib V45    -0.2024986102922806
#>     Attrib V46    -0.22457808371775068
#>     Attrib V47    0.06002371604891192
#>     Attrib V48    -0.0028359822413488852
#>     Attrib V49    -0.2032867423866554
#>     Attrib V5    -0.08540446985671626
#>     Attrib V50    0.3428044152661426
#>     Attrib V51    0.03196042489150496
#>     Attrib V52    -0.19463804110520289
#>     Attrib V53    -0.11179243628169057
#>     Attrib V54    -0.09305096639173926
#>     Attrib V55    0.13554119241306445
#>     Attrib V56    0.14788428263380257
#>     Attrib V57    0.27278043609389613
#>     Attrib V58    -0.019867332490301166
#>     Attrib V59    -0.05726904380254553
#>     Attrib V6    0.13432366003078916
#>     Attrib V60    -0.10635486129473634
#>     Attrib V7    0.1059303855065414
#>     Attrib V8    0.08173229919710306
#>     Attrib V9    -0.2196753806450149
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.5979821282956007
#>     Attrib V1    0.41490692733758044
#>     Attrib V10    0.6777614858486372
#>     Attrib V11    1.0567125033865241
#>     Attrib V12    1.0071463006368881
#>     Attrib V13    0.02900907128601672
#>     Attrib V14    -0.7007764165456046
#>     Attrib V15    -0.14071158039724824
#>     Attrib V16    -0.3302065341054008
#>     Attrib V17    -0.6051330658395481
#>     Attrib V18    -0.38098134766979397
#>     Attrib V19    -0.9769503581855402
#>     Attrib V2    -0.12698545224509547
#>     Attrib V20    -0.42499553464025985
#>     Attrib V21    -0.24301653117720026
#>     Attrib V22    -0.4095418817880331
#>     Attrib V23    -0.11626316864061845
#>     Attrib V24    -0.038974057285037986
#>     Attrib V25    -0.43972047341069886
#>     Attrib V26    0.3350265194252687
#>     Attrib V27    0.8887284115932431
#>     Attrib V28    1.1491584826014316
#>     Attrib V29    0.5575356173629525
#>     Attrib V3    -0.2816295173859902
#>     Attrib V30    0.3829399057662818
#>     Attrib V31    -0.7911155460179542
#>     Attrib V32    -0.0012472755328333295
#>     Attrib V33    0.08485922997584396
#>     Attrib V34    0.08683563059636662
#>     Attrib V35    0.3136258662019051
#>     Attrib V36    -0.1617994219698043
#>     Attrib V37    0.4552343321145479
#>     Attrib V38    0.07357837417528781
#>     Attrib V39    -0.4818653096594171
#>     Attrib V4    0.4308052756692254
#>     Attrib V40    -0.4840045248225815
#>     Attrib V41    0.488859253281478
#>     Attrib V42    0.07629244460622041
#>     Attrib V43    0.20701809302408347
#>     Attrib V44    -0.20649322937872638
#>     Attrib V45    0.23918540570809096
#>     Attrib V46    0.4462998817083926
#>     Attrib V47    0.06656749385395902
#>     Attrib V48    0.2783046944960906
#>     Attrib V49    0.4982443053294727
#>     Attrib V5    0.3276324578371834
#>     Attrib V50    -0.20632934707615902
#>     Attrib V51    0.5050008741201203
#>     Attrib V52    0.6380249942551128
#>     Attrib V53    -0.003494005204834875
#>     Attrib V54    0.128214191173376
#>     Attrib V55    -0.2750554975951549
#>     Attrib V56    -1.0119658812616081
#>     Attrib V57    -0.23564083673200548
#>     Attrib V58    0.07393248216418179
#>     Attrib V59    0.10576623056656168
#>     Attrib V6    -0.003926105917993461
#>     Attrib V60    0.8938552788337903
#>     Attrib V7    -0.22636912425003475
#>     Attrib V8    0.08931471726006346
#>     Attrib V9    0.7990561111203467
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    0.16542024462277355
#>     Attrib V1    0.21691298466705897
#>     Attrib V10    0.4032863535389357
#>     Attrib V11    -0.5918826823715909
#>     Attrib V12    -1.0507284839909203
#>     Attrib V13    -0.00104158629497978
#>     Attrib V14    0.7741121870040812
#>     Attrib V15    0.30175842820067583
#>     Attrib V16    0.08532473309631582
#>     Attrib V17    -0.296805136025964
#>     Attrib V18    -0.2959591031084176
#>     Attrib V19    0.44645633113444405
#>     Attrib V2    0.10866097784363088
#>     Attrib V20    -0.8028314463112156
#>     Attrib V21    -0.4945503650787922
#>     Attrib V22    -0.2841653643047788
#>     Attrib V23    -0.8422809834733468
#>     Attrib V24    -0.7141459285444326
#>     Attrib V25    0.07543497847940736
#>     Attrib V26    0.3141770538829701
#>     Attrib V27    0.30223479330465286
#>     Attrib V28    -0.16920876872601012
#>     Attrib V29    0.3820987757717882
#>     Attrib V3    0.040940587153133014
#>     Attrib V30    -0.37193510607332814
#>     Attrib V31    1.0388912881167576
#>     Attrib V32    -0.08911426145089067
#>     Attrib V33    -0.7110255322776278
#>     Attrib V34    0.16142114276625869
#>     Attrib V35    0.30547102788743885
#>     Attrib V36    1.137463743291179
#>     Attrib V37    1.0493648933622943
#>     Attrib V38    0.2334456344009593
#>     Attrib V39    0.2206080412233943
#>     Attrib V4    -0.48333147559960415
#>     Attrib V40    0.07928958179170517
#>     Attrib V41    -0.08456076959192915
#>     Attrib V42    -0.46316047970840113
#>     Attrib V43    -0.9466627855265997
#>     Attrib V44    -0.6302418144613032
#>     Attrib V45    -0.4364315452105092
#>     Attrib V46    -0.40217804018788506
#>     Attrib V47    0.24162158061942568
#>     Attrib V48    -0.2628518765476689
#>     Attrib V49    -0.9365262301162763
#>     Attrib V5    -0.21641299897757219
#>     Attrib V50    1.0949905896724896
#>     Attrib V51    -0.12858181167092084
#>     Attrib V52    -0.7997448465563778
#>     Attrib V53    -0.3620667524800589
#>     Attrib V54    -0.21553249910196737
#>     Attrib V55    0.8744538772970966
#>     Attrib V56    -0.31275718989476403
#>     Attrib V57    0.5647645370731234
#>     Attrib V58    -0.3641159307104334
#>     Attrib V59    -0.3793449700426856
#>     Attrib V6    0.23493661779816244
#>     Attrib V60    -0.2952364889416396
#>     Attrib V7    0.721763059194136
#>     Attrib V8    0.09062940641000929
#>     Attrib V9    -0.6865761153837424
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    0.2817783319435198
#>     Attrib V1    0.03961621422959458
#>     Attrib V10    0.13686991653912567
#>     Attrib V11    0.5222769437897962
#>     Attrib V12    0.526439069495445
#>     Attrib V13    -0.18590310927028614
#>     Attrib V14    -0.49638136193508553
#>     Attrib V15    -0.07018955799333015
#>     Attrib V16    -0.07962002968141095
#>     Attrib V17    -0.27291049684930574
#>     Attrib V18    -0.22143171851828003
#>     Attrib V19    -0.7290804248862146
#>     Attrib V2    -0.2533474154961458
#>     Attrib V20    -0.05836491063820969
#>     Attrib V21    -0.11498124767346901
#>     Attrib V22    -0.32306393455455307
#>     Attrib V23    -0.14687760921086193
#>     Attrib V24    -0.024745042300233066
#>     Attrib V25    -0.28764222437939685
#>     Attrib V26    -0.1805550784790794
#>     Attrib V27    0.11181644785215612
#>     Attrib V28    0.39148614972282414
#>     Attrib V29    0.014643183544722787
#>     Attrib V3    -0.2704319747135836
#>     Attrib V30    0.17823823809275802
#>     Attrib V31    -0.5995613578745551
#>     Attrib V32    0.17745852334146764
#>     Attrib V33    0.4748452454501258
#>     Attrib V34    0.16878269938016582
#>     Attrib V35    0.11348102510976395
#>     Attrib V36    -0.40048048399708785
#>     Attrib V37    -0.2244579004433018
#>     Attrib V38    -0.2052349081619673
#>     Attrib V39    -0.363135431129653
#>     Attrib V4    0.18238375901280876
#>     Attrib V40    -0.271965611581792
#>     Attrib V41    0.041151225774320614
#>     Attrib V42    -0.0054943242796461735
#>     Attrib V43    0.28657920796133984
#>     Attrib V44    -0.10957642471858574
#>     Attrib V45    0.17453849707340474
#>     Attrib V46    0.2870076577084358
#>     Attrib V47    0.01751962292819448
#>     Attrib V48    0.2944208608636779
#>     Attrib V49    0.3878875926354944
#>     Attrib V5    -0.023394982818795554
#>     Attrib V50    -0.36514362195373207
#>     Attrib V51    0.1689769930319468
#>     Attrib V52    0.3757073954988589
#>     Attrib V53    -0.13718515738500564
#>     Attrib V54    0.2086238384888863
#>     Attrib V55    -0.19734902047049005
#>     Attrib V56    -0.42872133711489485
#>     Attrib V57    -0.19185275017304565
#>     Attrib V58    0.10401025518069242
#>     Attrib V59    0.08434404672651838
#>     Attrib V6    -0.21407113892763086
#>     Attrib V60    0.5508177787644086
#>     Attrib V7    -0.19020029966075136
#>     Attrib V8    0.16830154885866266
#>     Attrib V9    0.5429206130193651
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.19432552220387245
#>     Attrib V1    0.03188439425144157
#>     Attrib V10    0.12565464042637386
#>     Attrib V11    -0.07402724124370243
#>     Attrib V12    -0.12588414827773542
#>     Attrib V13    0.06803211829556552
#>     Attrib V14    0.1432932941348892
#>     Attrib V15    0.06960945061530845
#>     Attrib V16    0.07620584894705615
#>     Attrib V17    0.1529673065092301
#>     Attrib V18    0.10700969779693652
#>     Attrib V19    0.10150876726235536
#>     Attrib V2    0.14124926478448557
#>     Attrib V20    -0.1806885852309863
#>     Attrib V21    -0.06198641723237424
#>     Attrib V22    0.020288113345795115
#>     Attrib V23    -0.05411594613983851
#>     Attrib V24    -0.13308847132464677
#>     Attrib V25    0.06144216655472397
#>     Attrib V26    0.10520410428499984
#>     Attrib V27    -0.04240504878688607
#>     Attrib V28    -0.12293189074001998
#>     Attrib V29    -0.03292877954204056
#>     Attrib V3    0.10003045780922828
#>     Attrib V30    0.060522795179467286
#>     Attrib V31    0.37905146154772257
#>     Attrib V32    0.06404972438676892
#>     Attrib V33    -0.05250518267009592
#>     Attrib V34    0.03385878445426558
#>     Attrib V35    0.10403569752337569
#>     Attrib V36    0.22880302739370312
#>     Attrib V37    0.23996045018422144
#>     Attrib V38    0.012592042384311867
#>     Attrib V39    0.159586765321783
#>     Attrib V4    0.03398921431002169
#>     Attrib V40    0.18537750059837596
#>     Attrib V41    0.12289863816496152
#>     Attrib V42    0.12038086365224633
#>     Attrib V43    -0.03126312992674428
#>     Attrib V44    0.018771210799683354
#>     Attrib V45    -0.02361672660083657
#>     Attrib V46    -0.03565411386910198
#>     Attrib V47    0.08144018736465064
#>     Attrib V48    0.05349731326238641
#>     Attrib V49    -0.05797033086959775
#>     Attrib V5    0.004212528341033955
#>     Attrib V50    0.13745815009973922
#>     Attrib V51    0.058880465129792385
#>     Attrib V52    -0.04936696560113595
#>     Attrib V53    -0.06071953379993485
#>     Attrib V54    -0.08152961939596476
#>     Attrib V55    0.035734190420595766
#>     Attrib V56    0.17662493772590124
#>     Attrib V57    0.1508484452201536
#>     Attrib V58    0.0747781976570229
#>     Attrib V59    0.028994888414242217
#>     Attrib V6    0.13355300252794547
#>     Attrib V60    -0.037262441126223116
#>     Attrib V7    0.05282102545348944
#>     Attrib V8    0.08900222591838944
#>     Attrib V9    -0.05188267096415611
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    0.09286283578003758
#>     Attrib V1    0.25382201515729486
#>     Attrib V10    -0.5229319979911301
#>     Attrib V11    -0.026517239920713122
#>     Attrib V12    0.1667914798270138
#>     Attrib V13    -0.18498366001125816
#>     Attrib V14    -0.11737786527312025
#>     Attrib V15    0.3239548462249564
#>     Attrib V16    0.36206798927609407
#>     Attrib V17    0.2215543399829099
#>     Attrib V18    0.05529486963247712
#>     Attrib V19    -0.3062025205545808
#>     Attrib V2    -0.016739524028187788
#>     Attrib V20    0.6329356080023736
#>     Attrib V21    0.3070278900348216
#>     Attrib V22    -0.0866667043147614
#>     Attrib V23    -0.04643793876558935
#>     Attrib V24    0.048476704844018004
#>     Attrib V25    -0.4143697125775352
#>     Attrib V26    -0.7783761035314709
#>     Attrib V27    -0.733512999756785
#>     Attrib V28    -0.25204838742816515
#>     Attrib V29    -0.42220957617048704
#>     Attrib V3    -0.07139118786481793
#>     Attrib V30    -0.018942613778203415
#>     Attrib V31    -0.8574197232515424
#>     Attrib V32    0.02292318204215185
#>     Attrib V33    0.6688061658692497
#>     Attrib V34    0.16509591483356678
#>     Attrib V35    0.07226283552695528
#>     Attrib V36    -0.4405810497362592
#>     Attrib V37    -0.5024706536175698
#>     Attrib V38    3.584703064437986E-4
#>     Attrib V39    -0.053841194478064944
#>     Attrib V4    0.2957285343999342
#>     Attrib V40    -0.07370988522058378
#>     Attrib V41    -0.2963422233756336
#>     Attrib V42    -0.01621967428185927
#>     Attrib V43    0.2887906853253717
#>     Attrib V44    0.1482052534204024
#>     Attrib V45    0.1237530611639649
#>     Attrib V46    0.14962767769973703
#>     Attrib V47    -0.2767230110171097
#>     Attrib V48    0.13718132324241344
#>     Attrib V49    0.27406019793491243
#>     Attrib V5    -0.014925700105622452
#>     Attrib V50    -0.6189164002072001
#>     Attrib V51    -0.27085286708157585
#>     Attrib V52    0.1850304000905442
#>     Attrib V53    0.2789928879049181
#>     Attrib V54    0.6697580923930483
#>     Attrib V55    -0.11449712312992266
#>     Attrib V56    0.2975425731978786
#>     Attrib V57    -0.025833898004124545
#>     Attrib V58    0.2196812622763903
#>     Attrib V59    0.602200077106487
#>     Attrib V6    -0.17212230669974762
#>     Attrib V60    0.6157642777988582
#>     Attrib V7    0.002037828116383883
#>     Attrib V8    0.0178698786202366
#>     Attrib V9    0.2749781507857318
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.05013639238222566
#>     Attrib V1    0.19438602547997808
#>     Attrib V10    -0.1699414794386025
#>     Attrib V11    0.04590758827990184
#>     Attrib V12    0.10915307987511463
#>     Attrib V13    -0.12030772856288124
#>     Attrib V14    -0.003110432709586411
#>     Attrib V15    0.17129491182363946
#>     Attrib V16    0.1589678342565157
#>     Attrib V17    -0.016609962092325868
#>     Attrib V18    -0.007762363543925091
#>     Attrib V19    -0.27539726893162014
#>     Attrib V2    -0.008292620556666191
#>     Attrib V20    0.15124122449258526
#>     Attrib V21    0.050705595575016665
#>     Attrib V22    -0.18332548040392285
#>     Attrib V23    -0.09009770505002054
#>     Attrib V24    -0.07017272033080944
#>     Attrib V25    -0.22957441856165045
#>     Attrib V26    -0.2922372059184138
#>     Attrib V27    -0.22144788859724204
#>     Attrib V28    0.038105912746721135
#>     Attrib V29    -0.08542601917164075
#>     Attrib V3    0.046620667653413245
#>     Attrib V30    0.023252576354600537
#>     Attrib V31    -0.4357129255937502
#>     Attrib V32    -0.022033691265340903
#>     Attrib V33    0.27346837689470305
#>     Attrib V34    0.08239179803524602
#>     Attrib V35    0.062160814717569186
#>     Attrib V36    -0.0689761156172234
#>     Attrib V37    -0.13831832960605597
#>     Attrib V38    -0.03779392649229526
#>     Attrib V39    -0.00918366962144944
#>     Attrib V4    0.17654044578321118
#>     Attrib V40    -0.09723310721898566
#>     Attrib V41    -0.1652099055163275
#>     Attrib V42    -0.011425430926164947
#>     Attrib V43    0.026051650090447562
#>     Attrib V44    0.01971604912737737
#>     Attrib V45    0.07102510117943207
#>     Attrib V46    0.10720524367923984
#>     Attrib V47    -0.06391460944962113
#>     Attrib V48    0.04911996420510563
#>     Attrib V49    0.14111473611486583
#>     Attrib V5    0.0709516329798533
#>     Attrib V50    -0.20717702191081133
#>     Attrib V51    0.016974472324334217
#>     Attrib V52    0.15989192917986061
#>     Attrib V53    0.10805077562899364
#>     Attrib V54    0.2325235862368595
#>     Attrib V55    0.01754973130070534
#>     Attrib V56    0.041335743673495254
#>     Attrib V57    0.07034850496105607
#>     Attrib V58    0.19014864464880293
#>     Attrib V59    0.2500820250335211
#>     Attrib V6    -0.0258184560457248
#>     Attrib V60    0.3484724538728101
#>     Attrib V7    0.024187293462561325
#>     Attrib V8    0.11109523266548607
#>     Attrib V9    0.19417032691078914
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
#>  0.1304348 
```
