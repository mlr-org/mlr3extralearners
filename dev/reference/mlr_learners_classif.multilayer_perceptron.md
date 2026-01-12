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
#>     Threshold    -0.08811938785516
#>     Node 2    2.0238428469103624
#>     Node 3    1.1241326965163772
#>     Node 4    1.0564401638212673
#>     Node 5    -1.9312840572168066
#>     Node 6    1.7457846370176224
#>     Node 7    1.618391762556488
#>     Node 8    0.8327252436160953
#>     Node 9    4.0455600118534445
#>     Node 10    -1.224086240603956
#>     Node 11    0.5155056700021877
#>     Node 12    1.117092195568069
#>     Node 13    1.4742973223662164
#>     Node 14    1.4489348274047225
#>     Node 15    -1.9667277245291455
#>     Node 16    -0.7695154170434014
#>     Node 17    -0.23574828082361493
#>     Node 18    0.7261053489190846
#>     Node 19    1.6962432856443743
#>     Node 20    2.260564362190699
#>     Node 21    -1.447282600050536
#>     Node 22    0.821011707875056
#>     Node 23    2.120512293377573
#>     Node 24    -1.6151841183356679
#>     Node 25    4.280178031598892
#>     Node 26    -1.0394822583526646
#>     Node 27    2.13611845379497
#>     Node 28    -5.181752572720795
#>     Node 29    1.1131070992190535
#>     Node 30    0.5934744742899859
#>     Node 31    0.8546782061750643
#>     Node 32    0.3147578406824859
#> Sigmoid Node 1
#>     Inputs    Weights
#>     Threshold    0.12912322598979
#>     Node 2    -2.0717370795362267
#>     Node 3    -1.1069017270550006
#>     Node 4    -1.015662976570111
#>     Node 5    1.946506282360591
#>     Node 6    -1.719581507050257
#>     Node 7    -1.619278555506379
#>     Node 8    -0.8756440053763068
#>     Node 9    -4.056355249373299
#>     Node 10    1.1675754830064202
#>     Node 11    -0.48808908021669706
#>     Node 12    -1.196377571909076
#>     Node 13    -1.4210618170480909
#>     Node 14    -1.3806575683324567
#>     Node 15    1.968863712031234
#>     Node 16    0.7536862392308711
#>     Node 17    0.25921904291533854
#>     Node 18    -0.6915534661784828
#>     Node 19    -1.6958499438441064
#>     Node 20    -2.2458260114253696
#>     Node 21    1.5066600417061653
#>     Node 22    -0.8772174434303537
#>     Node 23    -2.1587581313898596
#>     Node 24    1.6135124075403662
#>     Node 25    -4.279933857514207
#>     Node 26    0.9677868860203599
#>     Node 27    -2.173775507328031
#>     Node 28    5.167541785470177
#>     Node 29    -1.1458216782903472
#>     Node 30    -0.5250621692423136
#>     Node 31    -0.7992854647397838
#>     Node 32    -0.33956793978369887
#> Sigmoid Node 2
#>     Inputs    Weights
#>     Threshold    -0.07534611867060124
#>     Attrib V1    0.7832409620223548
#>     Attrib V10    -0.09112195085406893
#>     Attrib V11    -0.3907469919019384
#>     Attrib V12    -0.03899491397152537
#>     Attrib V13    -0.38281623307909785
#>     Attrib V14    0.09965552966390591
#>     Attrib V15    0.5647261543572701
#>     Attrib V16    -0.1907479294962947
#>     Attrib V17    0.04356260744492199
#>     Attrib V18    0.4155304140237485
#>     Attrib V19    -0.15008946772989679
#>     Attrib V2    0.25085197089228367
#>     Attrib V20    0.4327305490316649
#>     Attrib V21    0.6484746015882911
#>     Attrib V22    0.39758376073431617
#>     Attrib V23    0.2308159888572487
#>     Attrib V24    0.18425897286590773
#>     Attrib V25    -0.38525922169335103
#>     Attrib V26    -1.0677415544808408
#>     Attrib V27    -1.1096528688121676
#>     Attrib V28    -0.7404040982708155
#>     Attrib V29    -0.2303268258419707
#>     Attrib V3    0.28337446905805463
#>     Attrib V30    0.30113252383606065
#>     Attrib V31    -0.7107571726225586
#>     Attrib V32    -0.19528026867488107
#>     Attrib V33    0.2959937415385563
#>     Attrib V34    -0.2744497323430517
#>     Attrib V35    -0.1709310588342253
#>     Attrib V36    -0.47684296589610803
#>     Attrib V37    -0.6203777287292294
#>     Attrib V38    -0.13719943656067465
#>     Attrib V39    -0.008603738323427616
#>     Attrib V4    0.2045251639522768
#>     Attrib V40    -0.2231833976767246
#>     Attrib V41    -0.3963181951288256
#>     Attrib V42    0.27427426816822714
#>     Attrib V43    0.557931263772045
#>     Attrib V44    -0.013352994594901725
#>     Attrib V45    -0.23323826601023648
#>     Attrib V46    -0.33420540688768197
#>     Attrib V47    -0.34309475091243646
#>     Attrib V48    0.1920604839889366
#>     Attrib V49    0.11837118782571905
#>     Attrib V5    0.08287319284837943
#>     Attrib V50    -0.14214830379476584
#>     Attrib V51    0.31003267720124833
#>     Attrib V52    0.08182843486619158
#>     Attrib V53    0.6880241402824027
#>     Attrib V54    0.6759517685316813
#>     Attrib V55    -0.6456707296087056
#>     Attrib V56    0.8266111946060816
#>     Attrib V57    -0.25113315051904167
#>     Attrib V58    0.33008739968001566
#>     Attrib V59    0.9546100789334355
#>     Attrib V6    0.10821515311849435
#>     Attrib V60    0.8557198887814271
#>     Attrib V7    -0.4262624912831712
#>     Attrib V8    -0.3556206133775095
#>     Attrib V9    0.1689544682215754
#> Sigmoid Node 3
#>     Inputs    Weights
#>     Threshold    -0.05479839437052138
#>     Attrib V1    0.4011282270301536
#>     Attrib V10    0.018712541006115
#>     Attrib V11    -0.19346487902133802
#>     Attrib V12    0.05856656822420136
#>     Attrib V13    -0.15058941947553933
#>     Attrib V14    0.022821382925463405
#>     Attrib V15    0.382378824168999
#>     Attrib V16    -0.11288616992729818
#>     Attrib V17    0.062327202406593014
#>     Attrib V18    0.24566772014239005
#>     Attrib V19    -0.04952324047812095
#>     Attrib V2    0.15281015754540242
#>     Attrib V20    0.20856471837012738
#>     Attrib V21    0.2952357714914549
#>     Attrib V22    0.21999836973706324
#>     Attrib V23    0.12669469620366522
#>     Attrib V24    0.09558749671429422
#>     Attrib V25    -0.17891741247669943
#>     Attrib V26    -0.6072528949225461
#>     Attrib V27    -0.6690573516995137
#>     Attrib V28    -0.4489599784451678
#>     Attrib V29    -0.24102570769277765
#>     Attrib V3    0.14295472205443602
#>     Attrib V30    0.23634309803325493
#>     Attrib V31    -0.35196080945714436
#>     Attrib V32    -0.03767864522252417
#>     Attrib V33    0.22788637996271466
#>     Attrib V34    -0.19092863938771984
#>     Attrib V35    -0.06037937065298977
#>     Attrib V36    -0.30601802896061675
#>     Attrib V37    -0.3928388381200787
#>     Attrib V38    -0.12219627775361436
#>     Attrib V39    0.0035979286869835584
#>     Attrib V4    0.15618618854345087
#>     Attrib V40    -0.16195461153049212
#>     Attrib V41    -0.278259576299493
#>     Attrib V42    0.05537972105632729
#>     Attrib V43    0.26187823570490393
#>     Attrib V44    -0.011413600976179746
#>     Attrib V45    -0.1380273303706786
#>     Attrib V46    -0.2010757354051547
#>     Attrib V47    -0.15288832760589038
#>     Attrib V48    0.11981483821786647
#>     Attrib V49    0.06504642929777382
#>     Attrib V5    0.064833812554364
#>     Attrib V50    -0.10394875710808359
#>     Attrib V51    0.1949277058259072
#>     Attrib V52    0.07740761648223102
#>     Attrib V53    0.34446351418320553
#>     Attrib V54    0.443354036517752
#>     Attrib V55    -0.2817200591850337
#>     Attrib V56    0.5451080340002007
#>     Attrib V57    -0.13631537880531394
#>     Attrib V58    0.25960593527182685
#>     Attrib V59    0.598313727437088
#>     Attrib V6    0.04406628961929489
#>     Attrib V60    0.48045779103685043
#>     Attrib V7    -0.2829962151144655
#>     Attrib V8    -0.2385328642883496
#>     Attrib V9    0.15244686410687597
#> Sigmoid Node 4
#>     Inputs    Weights
#>     Threshold    -0.08236221032740376
#>     Attrib V1    0.33767521367955655
#>     Attrib V10    -0.007269663499103151
#>     Attrib V11    -0.17821107897080712
#>     Attrib V12    0.038286634559473065
#>     Attrib V13    -0.14528266743909307
#>     Attrib V14    0.053635149381357286
#>     Attrib V15    0.3574493195863532
#>     Attrib V16    -0.09871148892575754
#>     Attrib V17    0.07717984888905066
#>     Attrib V18    0.24284195827554647
#>     Attrib V19    -0.0967342604397584
#>     Attrib V2    0.08931350722520717
#>     Attrib V20    0.19422124567128055
#>     Attrib V21    0.33412025441220894
#>     Attrib V22    0.13356675380596714
#>     Attrib V23    0.0815589046191594
#>     Attrib V24    0.027816478402912122
#>     Attrib V25    -0.2689230009191345
#>     Attrib V26    -0.6027931115540609
#>     Attrib V27    -0.6600046785721582
#>     Attrib V28    -0.34519748752923457
#>     Attrib V29    -0.10387166642843297
#>     Attrib V3    0.1471601321329142
#>     Attrib V30    0.18403012040526626
#>     Attrib V31    -0.3623177118809538
#>     Attrib V32    -0.08324988556454521
#>     Attrib V33    0.22272356746020153
#>     Attrib V34    -0.11404335035644922
#>     Attrib V35    -0.03530084338430197
#>     Attrib V36    -0.27228557430174893
#>     Attrib V37    -0.33777118703110365
#>     Attrib V38    -0.0914416347994784
#>     Attrib V39    0.008391761748431006
#>     Attrib V4    0.1477499772006237
#>     Attrib V40    -0.17362249865678397
#>     Attrib V41    -0.3107576903608553
#>     Attrib V42    0.05077691011917102
#>     Attrib V43    0.211067143109678
#>     Attrib V44    -0.01720654515992216
#>     Attrib V45    -0.0433086705447218
#>     Attrib V46    -0.18877244615647493
#>     Attrib V47    -0.1772852208590484
#>     Attrib V48    0.1924142633797732
#>     Attrib V49    0.1386068548957624
#>     Attrib V5    0.1142012344213219
#>     Attrib V50    -0.07110402884706679
#>     Attrib V51    0.24809523170766973
#>     Attrib V52    0.04097453099506245
#>     Attrib V53    0.34884372261663477
#>     Attrib V54    0.3036463176895938
#>     Attrib V55    -0.29135321349321236
#>     Attrib V56    0.5293587601584394
#>     Attrib V57    -0.08330212044532466
#>     Attrib V58    0.18370631970608087
#>     Attrib V59    0.5568570010991855
#>     Attrib V6    0.03849396358635063
#>     Attrib V60    0.45711082851691165
#>     Attrib V7    -0.23878693791717917
#>     Attrib V8    -0.28820093924337703
#>     Attrib V9    0.19337866648997676
#> Sigmoid Node 5
#>     Inputs    Weights
#>     Threshold    -0.3662532909232443
#>     Attrib V1    -0.32473330610891826
#>     Attrib V10    -0.5616802244964862
#>     Attrib V11    -0.16599216467630842
#>     Attrib V12    -0.7528549993780886
#>     Attrib V13    -0.2665337912496177
#>     Attrib V14    0.564176330727529
#>     Attrib V15    0.10268774784042681
#>     Attrib V16    0.847781843362488
#>     Attrib V17    0.5921965530661275
#>     Attrib V18    -0.15570276285540957
#>     Attrib V19    0.20232141734846604
#>     Attrib V2    -0.12121969061854211
#>     Attrib V20    -0.3606218629188503
#>     Attrib V21    -0.4372918431876358
#>     Attrib V22    -0.40947225481470834
#>     Attrib V23    -0.5222727864419237
#>     Attrib V24    -0.37202661065782744
#>     Attrib V25    0.4354833804691617
#>     Attrib V26    0.37854805667433106
#>     Attrib V27    -0.035288476970570484
#>     Attrib V28    -0.550174234491183
#>     Attrib V29    -0.07569430442333142
#>     Attrib V3    0.11123473796806471
#>     Attrib V30    -0.24404529955491608
#>     Attrib V31    0.9519263719362953
#>     Attrib V32    0.043674989936317715
#>     Attrib V33    -0.3378460709574372
#>     Attrib V34    0.20573918966291999
#>     Attrib V35    -0.24079877488182938
#>     Attrib V36    0.7407042645621494
#>     Attrib V37    0.7381972028001093
#>     Attrib V38    0.10368300583774254
#>     Attrib V39    0.0029107421888755754
#>     Attrib V4    0.0315452906327824
#>     Attrib V40    -0.010720198290328295
#>     Attrib V41    -0.24709257785709493
#>     Attrib V42    0.23263119007021474
#>     Attrib V43    -0.3627905378602757
#>     Attrib V44    -0.014912759092562018
#>     Attrib V45    -0.14618230046382477
#>     Attrib V46    -0.05744980405168569
#>     Attrib V47    -0.03553481751399072
#>     Attrib V48    -0.6836062073322565
#>     Attrib V49    -0.8375127449692132
#>     Attrib V5    0.12748739810108453
#>     Attrib V50    0.22531530876684128
#>     Attrib V51    -0.6275865905754322
#>     Attrib V52    -0.14890827455618
#>     Attrib V53    -0.755852465834804
#>     Attrib V54    -0.49313451889385207
#>     Attrib V55    1.0727015624885865
#>     Attrib V56    -0.2204080075405734
#>     Attrib V57    0.9345314906979415
#>     Attrib V58    -0.08135262165131037
#>     Attrib V59    -0.46940854977587476
#>     Attrib V6    -0.09578950581254961
#>     Attrib V60    -0.041064802176484755
#>     Attrib V7    0.7940430272665807
#>     Attrib V8    1.2293704435248378
#>     Attrib V9    -0.8412996669478094
#> Sigmoid Node 6
#>     Inputs    Weights
#>     Threshold    -0.02009855343641433
#>     Attrib V1    0.6097019003977784
#>     Attrib V10    -0.04516161054715443
#>     Attrib V11    -0.2942826691609565
#>     Attrib V12    0.049327414724845024
#>     Attrib V13    -0.38684292062412606
#>     Attrib V14    -0.1173048055915984
#>     Attrib V15    0.40392813091262386
#>     Attrib V16    -0.1143581241964641
#>     Attrib V17    0.03769046183146359
#>     Attrib V18    0.4031658214863237
#>     Attrib V19    -0.14039639037393553
#>     Attrib V2    0.17243598798596788
#>     Attrib V20    0.2739877605191344
#>     Attrib V21    0.47833833089414435
#>     Attrib V22    0.3212906708263973
#>     Attrib V23    0.24708831926711847
#>     Attrib V24    0.304075517255862
#>     Attrib V25    -0.13807036875115894
#>     Attrib V26    -0.8336219951455144
#>     Attrib V27    -0.929047076675224
#>     Attrib V28    -0.8060162708306936
#>     Attrib V29    -0.45203094398402494
#>     Attrib V3    0.1406136679414684
#>     Attrib V30    0.20787861906884367
#>     Attrib V31    -0.52607364686614
#>     Attrib V32    -0.037614838138516654
#>     Attrib V33    0.3860587645767931
#>     Attrib V34    -0.18532801850646594
#>     Attrib V35    -0.06072130517255018
#>     Attrib V36    -0.48053780512540617
#>     Attrib V37    -0.6510426448343076
#>     Attrib V38    -0.21365869822537087
#>     Attrib V39    -0.06765324134238375
#>     Attrib V4    0.16759563601888275
#>     Attrib V40    -0.24217493674565516
#>     Attrib V41    -0.3571589999402915
#>     Attrib V42    0.17255527557424077
#>     Attrib V43    0.4628219320267345
#>     Attrib V44    -0.027606533509969413
#>     Attrib V45    -0.16646089831410713
#>     Attrib V46    -0.24662906503731558
#>     Attrib V47    -0.2611210770379447
#>     Attrib V48    0.18655813591522974
#>     Attrib V49    0.09956847695655187
#>     Attrib V5    0.00690986771587677
#>     Attrib V50    -0.09455927969020114
#>     Attrib V51    0.3061507164304455
#>     Attrib V52    0.022070435309270404
#>     Attrib V53    0.6070841821817095
#>     Attrib V54    0.5891463024813747
#>     Attrib V55    -0.5992420644109757
#>     Attrib V56    0.7207512138667082
#>     Attrib V57    -0.23568576985275985
#>     Attrib V58    0.31332209402492395
#>     Attrib V59    0.805947762926021
#>     Attrib V6    0.1041345794366113
#>     Attrib V60    0.7717296656305301
#>     Attrib V7    -0.32229605051705845
#>     Attrib V8    -0.3442396659969466
#>     Attrib V9    0.28438406545246986
#> Sigmoid Node 7
#>     Inputs    Weights
#>     Threshold    0.3700149109249125
#>     Attrib V1    0.3997785788750453
#>     Attrib V10    0.6705585483800948
#>     Attrib V11    0.566177970259026
#>     Attrib V12    0.8570366099168985
#>     Attrib V13    0.22364921341508703
#>     Attrib V14    -0.4775833694143602
#>     Attrib V15    -0.08857835940745552
#>     Attrib V16    -0.558883252129978
#>     Attrib V17    -0.2278267175827115
#>     Attrib V18    -0.03842890200148761
#>     Attrib V19    -0.6888463298355091
#>     Attrib V2    0.10840320741208016
#>     Attrib V20    -0.2955477873323872
#>     Attrib V21    0.04294450718015181
#>     Attrib V22    -0.12171732771947609
#>     Attrib V23    0.18153670153895157
#>     Attrib V24    0.26819574849489786
#>     Attrib V25    -0.016447193334794157
#>     Attrib V26    0.03598101800516349
#>     Attrib V27    0.1848554572394724
#>     Attrib V28    0.5952114298902039
#>     Attrib V29    0.20494104673065253
#>     Attrib V3    -0.010016313656535221
#>     Attrib V30    0.5475705964203518
#>     Attrib V31    -0.47698160422165686
#>     Attrib V32    -0.1203834551005712
#>     Attrib V33    0.16732824462400692
#>     Attrib V34    -0.07026976102931949
#>     Attrib V35    0.3334110654794735
#>     Attrib V36    -0.3350235375595009
#>     Attrib V37    -0.3155134678996599
#>     Attrib V38    -0.05163926353675717
#>     Attrib V39    0.01726083122191605
#>     Attrib V4    0.05680454377844828
#>     Attrib V40    -0.06265914163172631
#>     Attrib V41    0.08837604017119778
#>     Attrib V42    -0.21698522248538651
#>     Attrib V43    0.21496796203237667
#>     Attrib V44    0.07468942498880958
#>     Attrib V45    0.16210544283709533
#>     Attrib V46    0.16909539580208482
#>     Attrib V47    0.1508713158676841
#>     Attrib V48    0.6163641565051695
#>     Attrib V49    0.6557326116292647
#>     Attrib V5    0.018517908944106792
#>     Attrib V50    -0.22737215049766563
#>     Attrib V51    0.5540511657367256
#>     Attrib V52    -0.02287109721310677
#>     Attrib V53    0.23764158258141108
#>     Attrib V54    0.15374701906270555
#>     Attrib V55    -0.7736634142530173
#>     Attrib V56    -0.04654136766484124
#>     Attrib V57    -0.5131604661487359
#>     Attrib V58    -0.03824831900347116
#>     Attrib V59    0.535222560868956
#>     Attrib V6    0.1414728442126279
#>     Attrib V60    0.2679972511977819
#>     Attrib V7    -0.38697214998511237
#>     Attrib V8    -0.8051601103142721
#>     Attrib V9    0.892019963623057
#> Sigmoid Node 8
#>     Inputs    Weights
#>     Threshold    0.09518649628188647
#>     Attrib V1    0.25560196196734414
#>     Attrib V10    0.16572142027287146
#>     Attrib V11    0.0178562853967807
#>     Attrib V12    0.19501453796331175
#>     Attrib V13    -0.04621913154519493
#>     Attrib V14    -0.14472437263671822
#>     Attrib V15    0.15858451840575027
#>     Attrib V16    -0.13460518032157992
#>     Attrib V17    -0.011360254577590665
#>     Attrib V18    0.09701734043028062
#>     Attrib V19    -0.21873561417473367
#>     Attrib V2    0.038605002998057476
#>     Attrib V20    -0.02601290003341815
#>     Attrib V21    0.1381500216679134
#>     Attrib V22    0.00653736910132263
#>     Attrib V23    0.024693981470133998
#>     Attrib V24    0.09796506514276423
#>     Attrib V25    -0.11468763749075575
#>     Attrib V26    -0.32789262187151147
#>     Attrib V27    -0.3113682527378322
#>     Attrib V28    -0.03631462952107718
#>     Attrib V29    -0.014467544783762894
#>     Attrib V3    0.027125918616069816
#>     Attrib V30    0.2686179115485508
#>     Attrib V31    -0.28205835577638483
#>     Attrib V32    0.01098145334557957
#>     Attrib V33    0.21588089832130816
#>     Attrib V34    -0.07129739741664144
#>     Attrib V35    0.0424267580654865
#>     Attrib V36    -0.2061082640200712
#>     Attrib V37    -0.312629892782582
#>     Attrib V38    -0.021452792693751523
#>     Attrib V39    -0.03635441316338296
#>     Attrib V4    0.16925303929760377
#>     Attrib V40    -0.1994090292816082
#>     Attrib V41    -0.2298880461326178
#>     Attrib V42    -0.16102541116524616
#>     Attrib V43    0.12085327378544755
#>     Attrib V44    0.0017713280364213837
#>     Attrib V45    -0.02714960047820026
#>     Attrib V46    -0.050884403095173
#>     Attrib V47    -0.038629858387317945
#>     Attrib V48    0.31568794468143707
#>     Attrib V49    0.22521740802962728
#>     Attrib V5    0.055589642890414556
#>     Attrib V50    -0.150113223358361
#>     Attrib V51    0.22726177204893214
#>     Attrib V52    -0.02769401565488446
#>     Attrib V53    0.213713397089156
#>     Attrib V54    0.24097390765694557
#>     Attrib V55    -0.3388422092955198
#>     Attrib V56    0.283441370347292
#>     Attrib V57    -0.09705490081174119
#>     Attrib V58    0.0817008440853173
#>     Attrib V59    0.5034971714079493
#>     Attrib V6    0.018478451510904922
#>     Attrib V60    0.4118511180263245
#>     Attrib V7    -0.20252062311481142
#>     Attrib V8    -0.38230758543377463
#>     Attrib V9    0.2733271870993245
#> Sigmoid Node 9
#>     Inputs    Weights
#>     Threshold    0.3372811259988515
#>     Attrib V1    -0.08601737294636214
#>     Attrib V10    1.4075618348848136
#>     Attrib V11    1.3075267681306113
#>     Attrib V12    2.022064352067417
#>     Attrib V13    0.9546667898479069
#>     Attrib V14    -1.542377679026053
#>     Attrib V15    -0.7677721960463079
#>     Attrib V16    -0.5724312073750035
#>     Attrib V17    0.18750257695230002
#>     Attrib V18    0.45325428587768957
#>     Attrib V19    -0.27290401104010176
#>     Attrib V2    0.1753706336817654
#>     Attrib V20    -0.5157531662295092
#>     Attrib V21    -0.3484989019187093
#>     Attrib V22    -0.1679107855429001
#>     Attrib V23    0.9913085785771752
#>     Attrib V24    1.3025580254507751
#>     Attrib V25    0.8413588307306747
#>     Attrib V26    1.0154275088797222
#>     Attrib V27    1.1996601665848272
#>     Attrib V28    1.6346769836261292
#>     Attrib V29    -0.06939876069203788
#>     Attrib V3    -0.22848544912553034
#>     Attrib V30    0.1349856192311696
#>     Attrib V31    -0.7936898413157991
#>     Attrib V32    0.0022944239032402273
#>     Attrib V33    -0.010358934586834989
#>     Attrib V34    0.21627016931917886
#>     Attrib V35    0.9689646818240459
#>     Attrib V36    -0.594366628459725
#>     Attrib V37    -0.5204096725239123
#>     Attrib V38    -0.19854349153918677
#>     Attrib V39    0.14389819363424772
#>     Attrib V4    -0.019456054208408714
#>     Attrib V40    0.5268021524014513
#>     Attrib V41    1.3653148167728955
#>     Attrib V42    -0.5612239657336583
#>     Attrib V43    -0.0045559324170330465
#>     Attrib V44    0.24704740202342043
#>     Attrib V45    0.5003948728764164
#>     Attrib V46    0.7231744519785898
#>     Attrib V47    0.8038793036392068
#>     Attrib V48    1.1045395016090174
#>     Attrib V49    1.2119446667240752
#>     Attrib V5    0.2672574409373169
#>     Attrib V50    -0.4524462726083961
#>     Attrib V51    1.2988329437056783
#>     Attrib V52    0.42885615329789945
#>     Attrib V53    0.8326774477674109
#>     Attrib V54    -0.2991554541344545
#>     Attrib V55    -0.760052704789938
#>     Attrib V56    -0.6065744272949192
#>     Attrib V57    -1.1061558610818354
#>     Attrib V58    -0.37166323116966354
#>     Attrib V59    0.4993467441188826
#>     Attrib V6    0.31170445794899304
#>     Attrib V60    0.1046111569465305
#>     Attrib V7    -0.37737284809725485
#>     Attrib V8    -1.6487864903241176
#>     Attrib V9    1.4201703021447085
#> Sigmoid Node 10
#>     Inputs    Weights
#>     Threshold    -0.3040671531199299
#>     Attrib V1    -0.17183830203550376
#>     Attrib V10    -0.32093001720657177
#>     Attrib V11    -0.17851057683498314
#>     Attrib V12    -0.5097143694305257
#>     Attrib V13    -0.020312912901365474
#>     Attrib V14    0.43069771176144683
#>     Attrib V15    -0.11228784059510895
#>     Attrib V16    0.4653368946756782
#>     Attrib V17    0.14981186784684133
#>     Attrib V18    -0.08729911115043985
#>     Attrib V19    0.2600701907827441
#>     Attrib V2    -0.06289102733380615
#>     Attrib V20    0.018646415278953023
#>     Attrib V21    -0.10259783970751887
#>     Attrib V22    -0.1618391248588106
#>     Attrib V23    -0.34381883080252745
#>     Attrib V24    -0.39762221450420765
#>     Attrib V25    0.059824818801533466
#>     Attrib V26    0.2721299731406237
#>     Attrib V27    0.12558118827051434
#>     Attrib V28    -0.26604324668465185
#>     Attrib V29    -0.13739596802033
#>     Attrib V3    0.04162129317542891
#>     Attrib V30    -0.3502618449057452
#>     Attrib V31    0.5677382813342844
#>     Attrib V32    0.08165034864829297
#>     Attrib V33    -0.12944951358330323
#>     Attrib V34    0.16478917737221277
#>     Attrib V35    -0.1278904071984883
#>     Attrib V36    0.4084146198690901
#>     Attrib V37    0.41782097305242755
#>     Attrib V38    0.06826502948922308
#>     Attrib V39    -0.11431357273413245
#>     Attrib V4    -0.006132273378207254
#>     Attrib V40    0.0022247362293315704
#>     Attrib V41    -0.10318161705386016
#>     Attrib V42    0.053209050534473785
#>     Attrib V43    -0.28807424035920204
#>     Attrib V44    -0.06201512146180964
#>     Attrib V45    -0.07910723457317924
#>     Attrib V46    -0.04470468698048735
#>     Attrib V47    0.01494666078303074
#>     Attrib V48    -0.37182159838204715
#>     Attrib V49    -0.3870356705051891
#>     Attrib V5    -0.015717300720059016
#>     Attrib V50    0.37095845762198415
#>     Attrib V51    -0.40811382050406
#>     Attrib V52    -0.0799130384042875
#>     Attrib V53    -0.36107124430914656
#>     Attrib V54    -0.1835005410648641
#>     Attrib V55    0.5915552587300281
#>     Attrib V56    -0.28700151089660086
#>     Attrib V57    0.5745643504228269
#>     Attrib V58    -0.021659248510517436
#>     Attrib V59    -0.4283322273849001
#>     Attrib V6    -0.07359874105144826
#>     Attrib V60    -0.1693931382352993
#>     Attrib V7    0.4599533131714192
#>     Attrib V8    0.6875936005000163
#>     Attrib V9    -0.5260413284022933
#> Sigmoid Node 11
#>     Inputs    Weights
#>     Threshold    -0.10664669421647784
#>     Attrib V1    0.1688325612948225
#>     Attrib V10    0.05446177488358147
#>     Attrib V11    -0.02370356156675135
#>     Attrib V12    0.1264721911289577
#>     Attrib V13    -0.07968672454624988
#>     Attrib V14    -0.021550320188091283
#>     Attrib V15    0.09863176273392396
#>     Attrib V16    -0.07390003328147592
#>     Attrib V17    0.04944200523337131
#>     Attrib V18    0.11587622938739328
#>     Attrib V19    -0.11109955300055836
#>     Attrib V2    0.023120036348720736
#>     Attrib V20    0.07215466586611644
#>     Attrib V21    0.04052767216689661
#>     Attrib V22    -0.05935285623920818
#>     Attrib V23    -0.07085522127942782
#>     Attrib V24    -0.05967118089404128
#>     Attrib V25    -0.09768277338386346
#>     Attrib V26    -0.2997758809152791
#>     Attrib V27    -0.236954693939482
#>     Attrib V28    -0.054182630758137375
#>     Attrib V29    -0.06183963130428341
#>     Attrib V3    0.04178391202245398
#>     Attrib V30    0.0728833261812316
#>     Attrib V31    -0.23399009983597552
#>     Attrib V32    -0.05125697347648706
#>     Attrib V33    0.0911957780245826
#>     Attrib V34    0.01611868232542605
#>     Attrib V35    0.10065532354228172
#>     Attrib V36    -0.05744661139769523
#>     Attrib V37    -0.1164318538346218
#>     Attrib V38    0.0823940083252651
#>     Attrib V39    0.024434068216288567
#>     Attrib V4    0.1161373873977258
#>     Attrib V40    -0.11404581190713096
#>     Attrib V41    -0.23266857759634746
#>     Attrib V42    -0.06848941164778138
#>     Attrib V43    0.06961764895248578
#>     Attrib V44    0.027072436788431985
#>     Attrib V45    0.040053781800000285
#>     Attrib V46    -0.02158324076220691
#>     Attrib V47    0.030293341540252955
#>     Attrib V48    0.18698216213927651
#>     Attrib V49    0.0780755700813188
#>     Attrib V5    0.10737828457672784
#>     Attrib V50    0.02764799723972245
#>     Attrib V51    0.21042119516014424
#>     Attrib V52    0.0018650687710798993
#>     Attrib V53    0.11964294161718837
#>     Attrib V54    0.2347699887356039
#>     Attrib V55    -0.0671766715921033
#>     Attrib V56    0.29100698876324155
#>     Attrib V57    0.052801616181628735
#>     Attrib V58    0.15410399376272843
#>     Attrib V59    0.28462599764125457
#>     Attrib V6    0.012250285940682325
#>     Attrib V60    0.31064519322485945
#>     Attrib V7    -0.16862509271570905
#>     Attrib V8    -0.1424854905826386
#>     Attrib V9    0.14501199552540053
#> Sigmoid Node 12
#>     Inputs    Weights
#>     Threshold    -0.0024101909171822663
#>     Attrib V1    0.3996455385082002
#>     Attrib V10    -0.09245253865557262
#>     Attrib V11    -0.18036557751451102
#>     Attrib V12    -0.0371980322599376
#>     Attrib V13    -0.21116304948352016
#>     Attrib V14    0.07623651592555679
#>     Attrib V15    0.3579058627136599
#>     Attrib V16    -0.0465226917937632
#>     Attrib V17    0.08958297816278195
#>     Attrib V18    0.2896635987581039
#>     Attrib V19    -0.020176695263213494
#>     Attrib V2    0.16076749718971511
#>     Attrib V20    0.2117794717360506
#>     Attrib V21    0.31874539551145586
#>     Attrib V22    0.20653437492336993
#>     Attrib V23    0.08057299810488441
#>     Attrib V24    0.0026161954498199174
#>     Attrib V25    -0.2991332760399286
#>     Attrib V26    -0.6787041561756235
#>     Attrib V27    -0.6429913290148774
#>     Attrib V28    -0.449321812990366
#>     Attrib V29    -0.1036045807210128
#>     Attrib V3    0.1053210747062721
#>     Attrib V30    0.167516438534235
#>     Attrib V31    -0.46615905230043564
#>     Attrib V32    -0.16300674458660344
#>     Attrib V33    0.21543027258142508
#>     Attrib V34    -0.12850914360747534
#>     Attrib V35    -0.03964536821725058
#>     Attrib V36    -0.24687425885448136
#>     Attrib V37    -0.32950484193623836
#>     Attrib V38    -0.029143551580063827
#>     Attrib V39    -0.03244791819586316
#>     Attrib V4    0.21726010801002507
#>     Attrib V40    -0.1667978162858019
#>     Attrib V41    -0.32337214310554635
#>     Attrib V42    0.021679763298150776
#>     Attrib V43    0.29086915290338705
#>     Attrib V44    -0.08552358496494102
#>     Attrib V45    -0.10523209795296683
#>     Attrib V46    -0.14235373934920617
#>     Attrib V47    -0.19540051179749113
#>     Attrib V48    0.18344555804932214
#>     Attrib V49    0.04364484789027211
#>     Attrib V5    0.10467797199811894
#>     Attrib V50    -0.12115612335416387
#>     Attrib V51    0.2110322874342094
#>     Attrib V52    0.07329507247587443
#>     Attrib V53    0.3778446078321968
#>     Attrib V54    0.4080246251436147
#>     Attrib V55    -0.31234519632337476
#>     Attrib V56    0.5907283469131934
#>     Attrib V57    -0.028143899785339672
#>     Attrib V58    0.2632828222955245
#>     Attrib V59    0.6699484614192195
#>     Attrib V6    0.0370712069011676
#>     Attrib V60    0.5577690505708135
#>     Attrib V7    -0.23883494190261104
#>     Attrib V8    -0.2444353414829159
#>     Attrib V9    0.14385145201059737
#> Sigmoid Node 13
#>     Inputs    Weights
#>     Threshold    -0.07045107049453352
#>     Attrib V1    0.49315837773231147
#>     Attrib V10    0.02809054052095786
#>     Attrib V11    -0.1976912558862672
#>     Attrib V12    0.08744732343231744
#>     Attrib V13    -0.21483349972271898
#>     Attrib V14    -0.12845062352685022
#>     Attrib V15    0.32733302460568453
#>     Attrib V16    -0.17745282980645993
#>     Attrib V17    0.105063610447002
#>     Attrib V18    0.38044436823632855
#>     Attrib V19    -0.12023147978027007
#>     Attrib V2    0.10299487306495488
#>     Attrib V20    0.25609846769582173
#>     Attrib V21    0.4140729502125653
#>     Attrib V22    0.27700238684540374
#>     Attrib V23    0.28064313568135035
#>     Attrib V24    0.2876390257704427
#>     Attrib V25    -0.09148273438311552
#>     Attrib V26    -0.729026128480855
#>     Attrib V27    -0.7684486637808049
#>     Attrib V28    -0.6304377010002034
#>     Attrib V29    -0.32634733090636225
#>     Attrib V3    0.1361372666610555
#>     Attrib V30    0.23372211447984065
#>     Attrib V31    -0.53062735516594
#>     Attrib V32    -0.0488781186393007
#>     Attrib V33    0.32369181997482444
#>     Attrib V34    -0.11709787425894151
#>     Attrib V35    -0.055269021622544746
#>     Attrib V36    -0.414672286652889
#>     Attrib V37    -0.5504068613508724
#>     Attrib V38    -0.14911140064777334
#>     Attrib V39    0.00840658789995392
#>     Attrib V4    0.13450256050811926
#>     Attrib V40    -0.16985805471946216
#>     Attrib V41    -0.32289841377293
#>     Attrib V42    0.09591895652978186
#>     Attrib V43    0.36169474446606525
#>     Attrib V44    -0.018445708485206318
#>     Attrib V45    -0.16317593244672488
#>     Attrib V46    -0.1890807136726924
#>     Attrib V47    -0.16723870747870903
#>     Attrib V48    0.2339676378830936
#>     Attrib V49    0.19106192824209212
#>     Attrib V5    0.05207300368040807
#>     Attrib V50    -0.16678397735197406
#>     Attrib V51    0.2897849314184401
#>     Attrib V52    0.010890831630049908
#>     Attrib V53    0.5044406867029293
#>     Attrib V54    0.4845566573493625
#>     Attrib V55    -0.5528577686928955
#>     Attrib V56    0.617544532791867
#>     Attrib V57    -0.24754580907192306
#>     Attrib V58    0.2247402375819675
#>     Attrib V59    0.7490138543581182
#>     Attrib V6    0.11366300578336366
#>     Attrib V60    0.679641319327036
#>     Attrib V7    -0.27830546439650217
#>     Attrib V8    -0.41589979257454956
#>     Attrib V9    0.27848625272801625
#> Sigmoid Node 14
#>     Inputs    Weights
#>     Threshold    -0.060120252439351936
#>     Attrib V1    0.5035755692271823
#>     Attrib V10    -0.017180476462896
#>     Attrib V11    -0.21425594512105292
#>     Attrib V12    0.026952719257508317
#>     Attrib V13    -0.3015313308087889
#>     Attrib V14    -0.05607047245131282
#>     Attrib V15    0.4218603783844261
#>     Attrib V16    -0.14057936103174518
#>     Attrib V17    0.0876834886548506
#>     Attrib V18    0.32444138228045694
#>     Attrib V19    -0.13464611001324372
#>     Attrib V2    0.1273355154039488
#>     Attrib V20    0.19388724539772087
#>     Attrib V21    0.3391540454787999
#>     Attrib V22    0.23335727280005375
#>     Attrib V23    0.17981402706319125
#>     Attrib V24    0.10729468570952477
#>     Attrib V25    -0.2211802231512079
#>     Attrib V26    -0.717942224736979
#>     Attrib V27    -0.8428307245736039
#>     Attrib V28    -0.6934370855850361
#>     Attrib V29    -0.3913236809377183
#>     Attrib V3    0.07320049417751086
#>     Attrib V30    0.18046290086918623
#>     Attrib V31    -0.40998183542082606
#>     Attrib V32    -0.07819248256318218
#>     Attrib V33    0.30917236786871183
#>     Attrib V34    -0.14360512191806316
#>     Attrib V35    0.004502987658925256
#>     Attrib V36    -0.34322490083490875
#>     Attrib V37    -0.4583536264831058
#>     Attrib V38    -0.16443937040336926
#>     Attrib V39    -0.04057342990471372
#>     Attrib V4    0.14781390280655723
#>     Attrib V40    -0.2210961133815883
#>     Attrib V41    -0.4028027532316404
#>     Attrib V42    0.010023702400577343
#>     Attrib V43    0.3112680161503785
#>     Attrib V44    0.004406399695143465
#>     Attrib V45    -0.20192543193595452
#>     Attrib V46    -0.2048403281317822
#>     Attrib V47    -0.21381189452593533
#>     Attrib V48    0.23607846417553338
#>     Attrib V49    0.13324272009956623
#>     Attrib V5    0.015429368653703937
#>     Attrib V50    -0.1077629557933134
#>     Attrib V51    0.21680230052955166
#>     Attrib V52    0.017050135492126733
#>     Attrib V53    0.37885311676896366
#>     Attrib V54    0.5326715821105242
#>     Attrib V55    -0.37712842609158037
#>     Attrib V56    0.6550056599833077
#>     Attrib V57    -0.13342519937307837
#>     Attrib V58    0.2838775969499597
#>     Attrib V59    0.6626249600356844
#>     Attrib V6    0.07246994611098502
#>     Attrib V60    0.6831721922945088
#>     Attrib V7    -0.2485845241905752
#>     Attrib V8    -0.36046913032019107
#>     Attrib V9    0.18650641142762167
#> Sigmoid Node 15
#>     Inputs    Weights
#>     Threshold    -0.36169095615160646
#>     Attrib V1    -0.4424045587087418
#>     Attrib V10    -0.7085651949540042
#>     Attrib V11    -0.3663439783311979
#>     Attrib V12    -0.770814991056
#>     Attrib V13    -0.18348412433037387
#>     Attrib V14    0.6488592218870657
#>     Attrib V15    0.08152872528847886
#>     Attrib V16    0.734817203989304
#>     Attrib V17    0.2831875998818998
#>     Attrib V18    -0.24520428236420833
#>     Attrib V19    0.4163004317809365
#>     Attrib V2    -0.27263034348609566
#>     Attrib V20    -0.026777862649159836
#>     Attrib V21    -0.3422476955856739
#>     Attrib V22    -0.316541831537127
#>     Attrib V23    -0.643305284871491
#>     Attrib V24    -0.5256976898218406
#>     Attrib V25    0.13987334953330238
#>     Attrib V26    0.29173866244975993
#>     Attrib V27    -0.06256432417734577
#>     Attrib V28    -0.5619653917930544
#>     Attrib V29    -0.14937961521686374
#>     Attrib V3    0.06698630814874311
#>     Attrib V30    -0.5774556348801407
#>     Attrib V31    0.8386204912024318
#>     Attrib V32    0.15367005712392437
#>     Attrib V33    -0.3185098058145783
#>     Attrib V34    0.20615615325139475
#>     Attrib V35    -0.30379708717214854
#>     Attrib V36    0.6279161496563509
#>     Attrib V37    0.6981541627294586
#>     Attrib V38    0.16752561034762978
#>     Attrib V39    -0.038163144295878554
#>     Attrib V4    0.059742229291057804
#>     Attrib V40    -0.09795238862077127
#>     Attrib V41    -0.3986077627629605
#>     Attrib V42    0.03280465994515797
#>     Attrib V43    -0.42849781315002083
#>     Attrib V44    -0.19380185358923663
#>     Attrib V45    -0.18625838115009746
#>     Attrib V46    -0.08636712271657722
#>     Attrib V47    -0.10114511028139749
#>     Attrib V48    -0.6619840499689058
#>     Attrib V49    -0.8229406054894811
#>     Attrib V5    0.0832208511183926
#>     Attrib V50    0.3372957248101312
#>     Attrib V51    -0.7129579534285982
#>     Attrib V52    -0.12790408830303318
#>     Attrib V53    -0.5919770226284571
#>     Attrib V54    -0.30346229602365415
#>     Attrib V55    1.2175522435025825
#>     Attrib V56    0.04383368153550854
#>     Attrib V57    0.8952537153075222
#>     Attrib V58    0.04807472155994279
#>     Attrib V59    -0.4809364631643975
#>     Attrib V6    -0.28108220343847695
#>     Attrib V60    -0.14057769907433554
#>     Attrib V7    0.5812906661670943
#>     Attrib V8    1.1307575500750155
#>     Attrib V9    -0.9537978167974976
#> Sigmoid Node 16
#>     Inputs    Weights
#>     Threshold    -0.19681314033639194
#>     Attrib V1    -0.13657219036196216
#>     Attrib V10    -0.1091964945419609
#>     Attrib V11    -0.021573626407608484
#>     Attrib V12    -0.2287987640489706
#>     Attrib V13    0.049532441964724214
#>     Attrib V14    0.19479538813085262
#>     Attrib V15    0.014662616130804901
#>     Attrib V16    0.428748070543083
#>     Attrib V17    0.3278693235607094
#>     Attrib V18    0.08965446564410581
#>     Attrib V19    0.16686169251140553
#>     Attrib V2    -0.05232997207631269
#>     Attrib V20    -0.0933845362625768
#>     Attrib V21    -0.12456064780262475
#>     Attrib V22    -0.10498460078399828
#>     Attrib V23    -0.24837589369771748
#>     Attrib V24    -0.20086748251625058
#>     Attrib V25    0.051314487363645495
#>     Attrib V26    0.08440488784818559
#>     Attrib V27    -0.02442879781958747
#>     Attrib V28    -0.2050566081897591
#>     Attrib V29    -0.0617802768503132
#>     Attrib V3    0.06263689115182164
#>     Attrib V30    -0.1289362015791315
#>     Attrib V31    0.3859765164687465
#>     Attrib V32    0.10797020665840801
#>     Attrib V33    -0.07200403780858056
#>     Attrib V34    0.16483527476087467
#>     Attrib V35    -0.03004855528919717
#>     Attrib V36    0.3056191546719731
#>     Attrib V37    0.37002571782762406
#>     Attrib V38    0.06492894901759223
#>     Attrib V39    0.020795696307423287
#>     Attrib V4    0.03472380218950841
#>     Attrib V40    0.0613397150082548
#>     Attrib V41    0.06814642456768874
#>     Attrib V42    0.1568963598985315
#>     Attrib V43    -0.13015665961572662
#>     Attrib V44    -0.015064279063024162
#>     Attrib V45    -0.017905998567101174
#>     Attrib V46    0.04817157610377791
#>     Attrib V47    0.04818895208601999
#>     Attrib V48    -0.2634835905111735
#>     Attrib V49    -0.28863292317834366
#>     Attrib V5    0.05808994421267799
#>     Attrib V50    0.17840916155058165
#>     Attrib V51    -0.1417829222118419
#>     Attrib V52    0.007355837270565802
#>     Attrib V53    -0.22010080359315987
#>     Attrib V54    -0.20820233013460865
#>     Attrib V55    0.3905157105087393
#>     Attrib V56    -0.1975995835045228
#>     Attrib V57    0.39270468721740814
#>     Attrib V58    0.044320861548321974
#>     Attrib V59    -0.2818488532418894
#>     Attrib V6    0.05076168941081304
#>     Attrib V60    -0.10669040157979118
#>     Attrib V7    0.34139110421393354
#>     Attrib V8    0.4364629225560054
#>     Attrib V9    -0.18427623150905725
#> Sigmoid Node 17
#>     Inputs    Weights
#>     Threshold    -0.12884499467588395
#>     Attrib V1    0.024188097616151757
#>     Attrib V10    0.0646281237402908
#>     Attrib V11    0.05986121876378477
#>     Attrib V12    -0.035008553573847925
#>     Attrib V13    -5.788865866159059E-4
#>     Attrib V14    0.02997419599677384
#>     Attrib V15    0.07272323168762204
#>     Attrib V16    0.11892371308329333
#>     Attrib V17    0.11022687494257397
#>     Attrib V18    0.06726727944115582
#>     Attrib V19    0.0872208905596029
#>     Attrib V2    0.11978565826924911
#>     Attrib V20    -0.045749354954743256
#>     Attrib V21    -0.0701258736280406
#>     Attrib V22    -0.0027855992168154247
#>     Attrib V23    -0.10229115978242063
#>     Attrib V24    -0.07512299597060086
#>     Attrib V25    -0.07954693024800702
#>     Attrib V26    -0.08656474358514868
#>     Attrib V27    -0.08752920104142996
#>     Attrib V28    -0.1251055714576778
#>     Attrib V29    -0.08594289367148061
#>     Attrib V3    0.06713032148129974
#>     Attrib V30    -0.0019853393231744733
#>     Attrib V31    0.17846854315705268
#>     Attrib V32    0.048770589500148315
#>     Attrib V33    0.09893224932741877
#>     Attrib V34    0.08202928639818491
#>     Attrib V35    0.13115570583005606
#>     Attrib V36    0.11892676151126912
#>     Attrib V37    0.12478620170807285
#>     Attrib V38    0.13233348497539382
#>     Attrib V39    0.12063273114570217
#>     Attrib V4    0.06965026040826189
#>     Attrib V40    0.08729967322566062
#>     Attrib V41    0.1164213132146346
#>     Attrib V42    0.08398889074374831
#>     Attrib V43    0.09834496034794155
#>     Attrib V44    0.1385532751513027
#>     Attrib V45    0.08930407093924456
#>     Attrib V46    0.03564267476463549
#>     Attrib V47    0.027363398084168947
#>     Attrib V48    5.839021532111328E-4
#>     Attrib V49    -0.10363223910830223
#>     Attrib V5    0.08385295380891193
#>     Attrib V50    0.06142982847985472
#>     Attrib V51    0.015613262499196236
#>     Attrib V52    0.027100683094372992
#>     Attrib V53    -0.028669099125194074
#>     Attrib V54    -0.05329437243401945
#>     Attrib V55    0.18623348653447883
#>     Attrib V56    0.0317325462942877
#>     Attrib V57    0.19050888384141482
#>     Attrib V58    0.03749208188599689
#>     Attrib V59    -0.04456198637132724
#>     Attrib V6    0.07967330929357198
#>     Attrib V60    0.048795627545893935
#>     Attrib V7    0.09993470681681683
#>     Attrib V8    0.18323128142674608
#>     Attrib V9    0.012135336818573447
#> Sigmoid Node 18
#>     Inputs    Weights
#>     Threshold    -0.10805446542849213
#>     Attrib V1    0.2744009153044671
#>     Attrib V10    0.043029787929982785
#>     Attrib V11    -0.08427405171507268
#>     Attrib V12    0.05952436183558556
#>     Attrib V13    -0.09999973431557677
#>     Attrib V14    -0.0031490740790267643
#>     Attrib V15    0.1879097620220339
#>     Attrib V16    -0.05452664671348371
#>     Attrib V17    0.028164401337346393
#>     Attrib V18    0.23806249528182927
#>     Attrib V19    -0.12363428295507478
#>     Attrib V2    0.08177792492075549
#>     Attrib V20    0.11100467502411344
#>     Attrib V21    0.1901832031012117
#>     Attrib V22    0.052024627203779816
#>     Attrib V23    -0.002865213333697805
#>     Attrib V24    -0.027632598127650457
#>     Attrib V25    -0.15048162774443538
#>     Attrib V26    -0.3770125374285511
#>     Attrib V27    -0.36992953532958867
#>     Attrib V28    -0.22993578803728626
#>     Attrib V29    -0.11811453456826111
#>     Attrib V3    0.13159793765873
#>     Attrib V30    0.07307235262374616
#>     Attrib V31    -0.2951144243289734
#>     Attrib V32    -0.06794399621986213
#>     Attrib V33    0.13134103124037208
#>     Attrib V34    -0.044728357155420985
#>     Attrib V35    -0.001396832729927475
#>     Attrib V36    -0.10089027408533215
#>     Attrib V37    -0.21713300956450182
#>     Attrib V38    -0.014578622140305177
#>     Attrib V39    0.047846030361157754
#>     Attrib V4    0.10738845213727852
#>     Attrib V40    -0.16180857061308315
#>     Attrib V41    -0.274690563683237
#>     Attrib V42    -0.043093310311669145
#>     Attrib V43    0.12939255177067616
#>     Attrib V44    0.006816952072040728
#>     Attrib V45    -0.10222204623963264
#>     Attrib V46    -0.10209711982008102
#>     Attrib V47    -0.038006285106766055
#>     Attrib V48    0.15846748835656171
#>     Attrib V49    0.1023731154047445
#>     Attrib V5    0.07406833549464648
#>     Attrib V50    -0.08658821698258418
#>     Attrib V51    0.2172322853895762
#>     Attrib V52    0.008199567949450013
#>     Attrib V53    0.2144180773727467
#>     Attrib V54    0.2183870092669337
#>     Attrib V55    -0.1391716254981167
#>     Attrib V56    0.3971045892640357
#>     Attrib V57    -0.07951328245423828
#>     Attrib V58    0.156506790132809
#>     Attrib V59    0.4482295895645365
#>     Attrib V6    -0.003875661640676486
#>     Attrib V60    0.4402368360054974
#>     Attrib V7    -0.13205014346792357
#>     Attrib V8    -0.18846473164153732
#>     Attrib V9    0.15637580884563343
#> Sigmoid Node 19
#>     Inputs    Weights
#>     Threshold    0.3292063408522204
#>     Attrib V1    0.3764990428437773
#>     Attrib V10    0.4555705641696525
#>     Attrib V11    0.20805608954727475
#>     Attrib V12    0.7590871019182871
#>     Attrib V13    0.05930723078838055
#>     Attrib V14    -0.4087795338787019
#>     Attrib V15    0.3114430648070651
#>     Attrib V16    -0.45609565756043857
#>     Attrib V17    -0.03675185755520431
#>     Attrib V18    0.2568378935697498
#>     Attrib V19    -0.3840428438415176
#>     Attrib V2    0.09984173820307889
#>     Attrib V20    -0.13285398511773816
#>     Attrib V21    0.13613810380508573
#>     Attrib V22    0.10478801045655906
#>     Attrib V23    0.3241744109748857
#>     Attrib V24    0.5408432012581372
#>     Attrib V25    0.04811215125553111
#>     Attrib V26    -0.43172110732404134
#>     Attrib V27    -0.43117681665325447
#>     Attrib V28    -0.025808639978855363
#>     Attrib V29    -0.056550400665924455
#>     Attrib V3    -0.12320721203879972
#>     Attrib V30    0.6810863702524472
#>     Attrib V31    -0.3503226795534361
#>     Attrib V32    0.1838169952756046
#>     Attrib V33    0.5357105997913161
#>     Attrib V34    -0.14705171260807373
#>     Attrib V35    0.08872036030470927
#>     Attrib V36    -0.7773107261461395
#>     Attrib V37    -0.9408761820228575
#>     Attrib V38    -0.39792953081547777
#>     Attrib V39    -0.18253613095794594
#>     Attrib V4    0.05192333109436682
#>     Attrib V40    -0.16682908452617537
#>     Attrib V41    -0.04927331848007461
#>     Attrib V42    0.016454623373361774
#>     Attrib V43    0.3313992929860065
#>     Attrib V44    -0.0907958846268705
#>     Attrib V45    -0.05919831083494993
#>     Attrib V46    -0.14301777712126665
#>     Attrib V47    -0.1474233902843238
#>     Attrib V48    0.5042458339394552
#>     Attrib V49    0.4867291851619942
#>     Attrib V5    0.023463214301133958
#>     Attrib V50    -0.4717655954072475
#>     Attrib V51    0.5638882994518337
#>     Attrib V52    0.09752002536630174
#>     Attrib V53    0.5612910764665214
#>     Attrib V54    0.35069504222902786
#>     Attrib V55    -0.8159546564669841
#>     Attrib V56    0.2869631486545434
#>     Attrib V57    -0.7221608554086314
#>     Attrib V58    0.1051442247373533
#>     Attrib V59    0.6893777970284903
#>     Attrib V6    0.25264489371571086
#>     Attrib V60    0.37055023455225783
#>     Attrib V7    -0.32177076484439365
#>     Attrib V8    -0.8679323193595232
#>     Attrib V9    0.6740781880637066
#> Sigmoid Node 20
#>     Inputs    Weights
#>     Threshold    0.00302707346902733
#>     Attrib V1    0.80194860445051
#>     Attrib V10    0.09382442573009121
#>     Attrib V11    -0.24404468248599062
#>     Attrib V12    0.18941677561754247
#>     Attrib V13    -0.4334080401813618
#>     Attrib V14    -0.23470471650799016
#>     Attrib V15    0.45385228788907456
#>     Attrib V16    -0.32087532738448554
#>     Attrib V17    0.022688957636196713
#>     Attrib V18    0.44529466486621183
#>     Attrib V19    -0.2150579422488339
#>     Attrib V2    0.1942838357712371
#>     Attrib V20    0.30562172731611603
#>     Attrib V21    0.6282321541521346
#>     Attrib V22    0.5157997989285587
#>     Attrib V23    0.49772095453270865
#>     Attrib V24    0.571860974960287
#>     Attrib V25    -0.06170466689644562
#>     Attrib V26    -0.9178876414755421
#>     Attrib V27    -1.1279831315957827
#>     Attrib V28    -1.0133568936495383
#>     Attrib V29    -0.5958798325498811
#>     Attrib V3    0.07081992317221784
#>     Attrib V30    0.3099523186911173
#>     Attrib V31    -0.6228899615439561
#>     Attrib V32    -0.06321375150958818
#>     Attrib V33    0.49499419485869783
#>     Attrib V34    -0.23595518277584956
#>     Attrib V35    -0.07675042121218088
#>     Attrib V36    -0.5403109749829158
#>     Attrib V37    -0.8570166529328545
#>     Attrib V38    -0.28377326987186274
#>     Attrib V39    -0.12275498388051723
#>     Attrib V4    0.10458135784506892
#>     Attrib V40    -0.2543118128781863
#>     Attrib V41    -0.483247283671246
#>     Attrib V42    0.13706355672501547
#>     Attrib V43    0.716557343071398
#>     Attrib V44    0.07916071349963641
#>     Attrib V45    -0.19087807854269928
#>     Attrib V46    -0.34322499219930125
#>     Attrib V47    -0.33538098434063324
#>     Attrib V48    0.3625627277320641
#>     Attrib V49    0.26192121890527825
#>     Attrib V5    -0.005617325617128742
#>     Attrib V50    -0.19096677589249758
#>     Attrib V51    0.48792690287136453
#>     Attrib V52    0.07098806094788468
#>     Attrib V53    0.7227273863647158
#>     Attrib V54    0.7971887041844601
#>     Attrib V55    -0.8314286977593021
#>     Attrib V56    0.835300644883753
#>     Attrib V57    -0.4686960899437889
#>     Attrib V58    0.38048003847369566
#>     Attrib V59    0.967750489884843
#>     Attrib V6    0.08962959309508214
#>     Attrib V60    0.8601724757857409
#>     Attrib V7    -0.47531119198524363
#>     Attrib V8    -0.5641549042473389
#>     Attrib V9    0.4070801836633166
#> Sigmoid Node 21
#>     Inputs    Weights
#>     Threshold    -0.2642857029184598
#>     Attrib V1    -0.2248653073541941
#>     Attrib V10    -0.41589482569319863
#>     Attrib V11    -0.24463577499663755
#>     Attrib V12    -0.6798101314448622
#>     Attrib V13    -0.16727635275139746
#>     Attrib V14    0.45511405006996775
#>     Attrib V15    -0.047750797645732736
#>     Attrib V16    0.620210139966544
#>     Attrib V17    0.2931640581519343
#>     Attrib V18    -0.18310073788034104
#>     Attrib V19    0.20508502063216874
#>     Attrib V2    -0.11368535233957129
#>     Attrib V20    -0.12015287577162032
#>     Attrib V21    -0.21206166558408998
#>     Attrib V22    -0.28133947202252707
#>     Attrib V23    -0.5051092433658371
#>     Attrib V24    -0.3991301711536055
#>     Attrib V25    0.2067720660346401
#>     Attrib V26    0.35694571860803065
#>     Attrib V27    0.09214447180462489
#>     Attrib V28    -0.38345423305838655
#>     Attrib V29    -0.11595316188195354
#>     Attrib V3    0.04689716824820981
#>     Attrib V30    -0.3962711921589414
#>     Attrib V31    0.7189413471839852
#>     Attrib V32    0.08487463289025196
#>     Attrib V33    -0.22877280071593895
#>     Attrib V34    0.18272185697522855
#>     Attrib V35    -0.21811182272805987
#>     Attrib V36    0.5369867874989822
#>     Attrib V37    0.6058955468311924
#>     Attrib V38    0.03704394320810469
#>     Attrib V39    -0.0776050718183935
#>     Attrib V4    0.06811464968801463
#>     Attrib V40    0.015537911731379857
#>     Attrib V41    -0.08434478264033766
#>     Attrib V42    0.08263214460142415
#>     Attrib V43    -0.3404739694276057
#>     Attrib V44    -0.07598127075049153
#>     Attrib V45    -0.12455251613262534
#>     Attrib V46    -0.01929984908327532
#>     Attrib V47    -0.006182506139035816
#>     Attrib V48    -0.4390687360336248
#>     Attrib V49    -0.5201966072638443
#>     Attrib V5    0.04151372060446117
#>     Attrib V50    0.347702083840745
#>     Attrib V51    -0.4882338756299236
#>     Attrib V52    -0.09112320321513417
#>     Attrib V53    -0.5165691860527403
#>     Attrib V54    -0.2697765686964964
#>     Attrib V55    0.6994199578131419
#>     Attrib V56    -0.3557372925240262
#>     Attrib V57    0.8098969024765998
#>     Attrib V58    -0.033667623052684226
#>     Attrib V59    -0.4019102497823371
#>     Attrib V6    -0.10502758321381958
#>     Attrib V60    -0.049257491629395175
#>     Attrib V7    0.6451413859414725
#>     Attrib V8    0.8903963276581115
#>     Attrib V9    -0.5863556497277451
#> Sigmoid Node 22
#>     Inputs    Weights
#>     Threshold    -0.06722547963323212
#>     Attrib V1    0.34559139669769917
#>     Attrib V10    0.0035734698229324285
#>     Attrib V11    -0.13139319404366295
#>     Attrib V12    0.04278131746080113
#>     Attrib V13    -0.14060070892193963
#>     Attrib V14    0.056803181649600874
#>     Attrib V15    0.23377676951526688
#>     Attrib V16    -0.004230471715443333
#>     Attrib V17    0.06774313503335168
#>     Attrib V18    0.19017598817561962
#>     Attrib V19    -0.1132151657358084
#>     Attrib V2    0.10143934669928807
#>     Attrib V20    0.12088845042739056
#>     Attrib V21    0.17221280409758777
#>     Attrib V22    0.03838454484873076
#>     Attrib V23    -0.06280876368262411
#>     Attrib V24    0.011948783100930341
#>     Attrib V25    -0.21638716370696262
#>     Attrib V26    -0.49926645451300083
#>     Attrib V27    -0.4909229731753907
#>     Attrib V28    -0.3620363599720112
#>     Attrib V29    -0.11887516608654328
#>     Attrib V3    0.0783944513557388
#>     Attrib V30    0.08629180765128572
#>     Attrib V31    -0.23906771291949008
#>     Attrib V32    -0.061457850061862995
#>     Attrib V33    0.10357138465119015
#>     Attrib V34    -0.11290477373417485
#>     Attrib V35    -0.00325400001680383
#>     Attrib V36    -0.17461143039870816
#>     Attrib V37    -0.2220317867513186
#>     Attrib V38    -0.05254213145675809
#>     Attrib V39    -0.034638604345145485
#>     Attrib V4    0.16683913688534044
#>     Attrib V40    -0.14862259919668908
#>     Attrib V41    -0.31424353903899815
#>     Attrib V42    -0.05894958030452155
#>     Attrib V43    0.19087490726325604
#>     Attrib V44    -0.057568463720504795
#>     Attrib V45    -0.15618337684091713
#>     Attrib V46    -0.10319043851230039
#>     Attrib V47    -0.15299136572043226
#>     Attrib V48    0.16447461783775508
#>     Attrib V49    0.05664614862314546
#>     Attrib V5    0.10130032040861407
#>     Attrib V50    -0.05796783261416385
#>     Attrib V51    0.14285336077358898
#>     Attrib V52    0.027301469740757808
#>     Attrib V53    0.22378739478544196
#>     Attrib V54    0.32827598934367297
#>     Attrib V55    -0.137306115913445
#>     Attrib V56    0.48164868644409603
#>     Attrib V57    0.005342229140565765
#>     Attrib V58    0.23625096189494332
#>     Attrib V59    0.4876981410870823
#>     Attrib V6    0.05462482143899575
#>     Attrib V60    0.4899999341961486
#>     Attrib V7    -0.15161698648118044
#>     Attrib V8    -0.27784139698230975
#>     Attrib V9    0.13278058597802175
#> Sigmoid Node 23
#>     Inputs    Weights
#>     Threshold    -0.043746665818431556
#>     Attrib V1    0.7856799615449481
#>     Attrib V10    -0.14859201498907357
#>     Attrib V11    -0.38247348720642604
#>     Attrib V12    -0.019755731822866187
#>     Attrib V13    -0.41217450435690856
#>     Attrib V14    0.03349801732347361
#>     Attrib V15    0.5671312493524342
#>     Attrib V16    -0.237920289890001
#>     Attrib V17    0.05673695860382543
#>     Attrib V18    0.39276060978689326
#>     Attrib V19    -0.14275904097886102
#>     Attrib V2    0.2107616442340242
#>     Attrib V20    0.3618933283899518
#>     Attrib V21    0.590542728478207
#>     Attrib V22    0.4498044621644823
#>     Attrib V23    0.27960992952749547
#>     Attrib V24    0.17588781000394424
#>     Attrib V25    -0.35311668003038466
#>     Attrib V26    -1.055058583079829
#>     Attrib V27    -1.1875141257191253
#>     Attrib V28    -0.929972876729736
#>     Attrib V29    -0.39905476463802486
#>     Attrib V3    0.2589837572949251
#>     Attrib V30    0.2459170110279089
#>     Attrib V31    -0.6496696558651885
#>     Attrib V32    -0.21491822718836553
#>     Attrib V33    0.3507954941912359
#>     Attrib V34    -0.24297697086603864
#>     Attrib V35    -0.07701888916914995
#>     Attrib V36    -0.474318471579663
#>     Attrib V37    -0.6365325854275725
#>     Attrib V38    -0.2263746402937752
#>     Attrib V39    -0.04942780275323042
#>     Attrib V4    0.24371599813705577
#>     Attrib V40    -0.30039411183302783
#>     Attrib V41    -0.5149653571182585
#>     Attrib V42    0.19735275622279955
#>     Attrib V43    0.604053595521112
#>     Attrib V44    -0.027152821693417914
#>     Attrib V45    -0.19248111773928184
#>     Attrib V46    -0.30755265556321376
#>     Attrib V47    -0.2760698263121413
#>     Attrib V48    0.17560265665046304
#>     Attrib V49    0.11876825203231871
#>     Attrib V5    0.025083489948357702
#>     Attrib V50    -0.12499928188363624
#>     Attrib V51    0.2752262200554773
#>     Attrib V52    0.09169366385332028
#>     Attrib V53    0.6986278577259871
#>     Attrib V54    0.7477677862352149
#>     Attrib V55    -0.6475393925099432
#>     Attrib V56    0.8865772567811007
#>     Attrib V57    -0.2517828687017864
#>     Attrib V58    0.38520010032470847
#>     Attrib V59    0.9396563804900012
#>     Attrib V6    0.12558975131131137
#>     Attrib V60    0.8754052621049434
#>     Attrib V7    -0.3903068135449597
#>     Attrib V8    -0.40968933262512175
#>     Attrib V9    0.18762310459538073
#> Sigmoid Node 24
#>     Inputs    Weights
#>     Threshold    -0.3311715331820836
#>     Attrib V1    -0.2970898152249388
#>     Attrib V10    -0.5031855036765638
#>     Attrib V11    -0.25268814814068724
#>     Attrib V12    -0.7354125665014684
#>     Attrib V13    -0.16951649514933656
#>     Attrib V14    0.5113650173096935
#>     Attrib V15    -0.014018415412299966
#>     Attrib V16    0.6264261859924828
#>     Attrib V17    0.31027487118375785
#>     Attrib V18    -0.23109921111229437
#>     Attrib V19    0.29035185331241153
#>     Attrib V2    -0.1260756874950977
#>     Attrib V20    -0.038047334428213356
#>     Attrib V21    -0.23578624626917008
#>     Attrib V22    -0.2957499425074808
#>     Attrib V23    -0.48132607742341027
#>     Attrib V24    -0.4762653239858404
#>     Attrib V25    0.16363624332392687
#>     Attrib V26    0.35775410230617233
#>     Attrib V27    0.07276839694141124
#>     Attrib V28    -0.37901416547402705
#>     Attrib V29    -0.1534580699775178
#>     Attrib V3    0.06088581606253203
#>     Attrib V30    -0.4949528727928848
#>     Attrib V31    0.6903085188078124
#>     Attrib V32    0.15261553284625576
#>     Attrib V33    -0.3052186764178067
#>     Attrib V34    0.17363362404420082
#>     Attrib V35    -0.24773083775179508
#>     Attrib V36    0.5681219383282383
#>     Attrib V37    0.5441652408077658
#>     Attrib V38    0.08154800974494955
#>     Attrib V39    -0.09399787113051598
#>     Attrib V4    0.06706398787511109
#>     Attrib V40    -0.029152429258446046
#>     Attrib V41    -0.19612796947324274
#>     Attrib V42    0.06386893165876145
#>     Attrib V43    -0.3465416525157145
#>     Attrib V44    -0.13683207667696404
#>     Attrib V45    -0.16994821498344653
#>     Attrib V46    -0.010446638189477964
#>     Attrib V47    0.03289413253436607
#>     Attrib V48    -0.5303163676527916
#>     Attrib V49    -0.613049303942003
#>     Attrib V5    -0.016605501034606986
#>     Attrib V50    0.4018272284482311
#>     Attrib V51    -0.5311284679428263
#>     Attrib V52    -0.008043661721842902
#>     Attrib V53    -0.5691078913722544
#>     Attrib V54    -0.28615599916585815
#>     Attrib V55    0.8834936808642389
#>     Attrib V56    -0.24490181198011404
#>     Attrib V57    0.8342274469832518
#>     Attrib V58    0.02324109240578975
#>     Attrib V59    -0.5112568535366766
#>     Attrib V6    -0.15399578555356
#>     Attrib V60    -0.18883440404241655
#>     Attrib V7    0.5542569564725546
#>     Attrib V8    0.9821199700074784
#>     Attrib V9    -0.650321621545967
#> Sigmoid Node 25
#>     Inputs    Weights
#>     Threshold    0.6472751502951973
#>     Attrib V1    0.376684995546303
#>     Attrib V10    1.0287369263889496
#>     Attrib V11    1.1219236440679188
#>     Attrib V12    2.00650279167638
#>     Attrib V13    1.0829844625750018
#>     Attrib V14    -0.7076738147108954
#>     Attrib V15    -0.41920004158832236
#>     Attrib V16    -0.7786186130823547
#>     Attrib V17    -0.18570729917951143
#>     Attrib V18    0.03568339496764853
#>     Attrib V19    -0.5967300948454237
#>     Attrib V2    0.42686402333514273
#>     Attrib V20    -0.49883645980800384
#>     Attrib V21    -0.2729512302664657
#>     Attrib V22    -0.19736516652578803
#>     Attrib V23    0.7545951067891778
#>     Attrib V24    0.7563757749473246
#>     Attrib V25    0.2046307144240766
#>     Attrib V26    0.867710237838158
#>     Attrib V27    1.4374905234579132
#>     Attrib V28    2.3116665549974544
#>     Attrib V29    1.1181470816245354
#>     Attrib V3    0.2013258342110866
#>     Attrib V30    0.46160411678630764
#>     Attrib V31    -1.1582156638619545
#>     Attrib V32    -0.5092446701309005
#>     Attrib V33    -0.5786590006529072
#>     Attrib V34    -0.4077381124442494
#>     Attrib V35    0.43445373919965713
#>     Attrib V36    -0.7269456320954134
#>     Attrib V37    -0.13395269667491627
#>     Attrib V38    -0.0011975083320659447
#>     Attrib V39    0.2377857805806861
#>     Attrib V4    0.3148324692847564
#>     Attrib V40    0.5237142245696471
#>     Attrib V41    1.7828550186378405
#>     Attrib V42    -0.24441496264798795
#>     Attrib V43    -0.13223632125769805
#>     Attrib V44    0.11742945170849776
#>     Attrib V45    0.35252654791666005
#>     Attrib V46    0.502247075652702
#>     Attrib V47    0.3588998484961672
#>     Attrib V48    0.6985609793029538
#>     Attrib V49    1.2294043638166365
#>     Attrib V5    0.6424855044208942
#>     Attrib V50    -0.6133383785263764
#>     Attrib V51    1.0408760319676507
#>     Attrib V52    0.35755308789795787
#>     Attrib V53    1.0254806269459562
#>     Attrib V54    -0.2237172416687283
#>     Attrib V55    -0.678948372523988
#>     Attrib V56    -0.560870716727277
#>     Attrib V57    -0.739410048165517
#>     Attrib V58    -0.26607052628951505
#>     Attrib V59    1.0763109113646947
#>     Attrib V6    0.549611416719133
#>     Attrib V60    0.43914931012855996
#>     Attrib V7    -0.4508966068865742
#>     Attrib V8    -1.5119655036025612
#>     Attrib V9    1.1114014163671195
#> Sigmoid Node 26
#>     Inputs    Weights
#>     Threshold    -0.25679291559927553
#>     Attrib V1    -0.182824659578175
#>     Attrib V10    -0.2820724218839421
#>     Attrib V11    -0.19592668048708214
#>     Attrib V12    -0.44263571157363296
#>     Attrib V13    -0.06708097566268088
#>     Attrib V14    0.35169850938507824
#>     Attrib V15    -0.11285241501777173
#>     Attrib V16    0.33574494107828784
#>     Attrib V17    0.1400754667509074
#>     Attrib V18    -0.1528485348285424
#>     Attrib V19    0.254010638232201
#>     Attrib V2    -0.0539442526355532
#>     Attrib V20    0.029893401973002096
#>     Attrib V21    -0.08527584329796938
#>     Attrib V22    -0.127648877742416
#>     Attrib V23    -0.30714060885845507
#>     Attrib V24    -0.3313571715433711
#>     Attrib V25    0.04766550820007083
#>     Attrib V26    0.16691426952109092
#>     Attrib V27    0.12642495054243602
#>     Attrib V28    -0.19739088035177088
#>     Attrib V29    -0.08440493303601883
#>     Attrib V3    0.006473333706345369
#>     Attrib V30    -0.3620203692665517
#>     Attrib V31    0.3949790200271963
#>     Attrib V32    0.09284010722885018
#>     Attrib V33    -0.10202323366956002
#>     Attrib V34    0.09496709615792948
#>     Attrib V35    -0.08298401594471892
#>     Attrib V36    0.37014649650498455
#>     Attrib V37    0.38650176593796176
#>     Attrib V38    0.011616647796679494
#>     Attrib V39    -0.07912328144187246
#>     Attrib V4    0.024912249369847605
#>     Attrib V40    -0.02930483548381864
#>     Attrib V41    -0.11714787245101364
#>     Attrib V42    0.07150103658825034
#>     Attrib V43    -0.22209125521653614
#>     Attrib V44    -0.059245186192044524
#>     Attrib V45    -0.09679186048721677
#>     Attrib V46    -0.05053910515876493
#>     Attrib V47    -0.01944241268779943
#>     Attrib V48    -0.26304482718605643
#>     Attrib V49    -0.3216730786744536
#>     Attrib V5    -0.05974813125101922
#>     Attrib V50    0.28178063320542773
#>     Attrib V51    -0.382844026864361
#>     Attrib V52    -0.07893529014233253
#>     Attrib V53    -0.3436557481449958
#>     Attrib V54    -0.16574583123319964
#>     Attrib V55    0.4704988831280437
#>     Attrib V56    -0.22495940535140943
#>     Attrib V57    0.5086420354236165
#>     Attrib V58    0.00664937447684439
#>     Attrib V59    -0.3271535480706643
#>     Attrib V6    -0.05790418637890109
#>     Attrib V60    -0.08102342989109772
#>     Attrib V7    0.3553043884721946
#>     Attrib V8    0.5830043673954244
#>     Attrib V9    -0.42962731105529667
#> Sigmoid Node 27
#>     Inputs    Weights
#>     Threshold    0.07638731188901653
#>     Attrib V1    0.7350068915396902
#>     Attrib V10    0.25767479662145737
#>     Attrib V11    -0.09543825225205563
#>     Attrib V12    0.28695738176324753
#>     Attrib V13    -0.32745701590993326
#>     Attrib V14    -0.4331626842838044
#>     Attrib V15    0.34028753065046796
#>     Attrib V16    -0.31930830106395286
#>     Attrib V17    0.017815790992790934
#>     Attrib V18    0.5026531539165533
#>     Attrib V19    -0.22421968105845078
#>     Attrib V2    0.16107391136468144
#>     Attrib V20    0.16628511458565792
#>     Attrib V21    0.530230597062802
#>     Attrib V22    0.4744946746544398
#>     Attrib V23    0.4920090922570903
#>     Attrib V24    0.6802429815246123
#>     Attrib V25    0.025695111585509255
#>     Attrib V26    -0.7765418520786506
#>     Attrib V27    -1.0761217550895412
#>     Attrib V28    -0.9914713817920683
#>     Attrib V29    -0.7141704783274699
#>     Attrib V3    -0.0026082261254134743
#>     Attrib V30    0.3272665497460544
#>     Attrib V31    -0.5155639390575208
#>     Attrib V32    0.10016604651249415
#>     Attrib V33    0.5302893702725425
#>     Attrib V34    -0.1622077832935163
#>     Attrib V35    -0.01654709290621727
#>     Attrib V36    -0.6312418254715675
#>     Attrib V37    -0.9837572263020251
#>     Attrib V38    -0.32531315624462287
#>     Attrib V39    -0.10793591623580405
#>     Attrib V4    0.05124981975223314
#>     Attrib V40    -0.3024086506730476
#>     Attrib V41    -0.47394979726398917
#>     Attrib V42    0.07014487247082625
#>     Attrib V43    0.617374561128039
#>     Attrib V44    0.08186696931963039
#>     Attrib V45    -0.10602572670907752
#>     Attrib V46    -0.31462379927431045
#>     Attrib V47    -0.26455315595483486
#>     Attrib V48    0.47125251110483735
#>     Attrib V49    0.3252414712963859
#>     Attrib V5    -0.07965861193342297
#>     Attrib V50    -0.14864606017428225
#>     Attrib V51    0.5119270970252091
#>     Attrib V52    0.0608581403433222
#>     Attrib V53    0.7194519877579958
#>     Attrib V54    0.7436233899895112
#>     Attrib V55    -0.8298384485641939
#>     Attrib V56    0.742291914530869
#>     Attrib V57    -0.5424786711553422
#>     Attrib V58    0.3034437664367382
#>     Attrib V59    0.9177752253093382
#>     Attrib V6    0.12329229375007227
#>     Attrib V60    0.7787793129785103
#>     Attrib V7    -0.49577038890879316
#>     Attrib V8    -0.5808242169777095
#>     Attrib V9    0.5351698580961923
#> Sigmoid Node 28
#>     Inputs    Weights
#>     Threshold    -0.24131484089686908
#>     Attrib V1    0.16990991922147403
#>     Attrib V10    -1.3980106220719366
#>     Attrib V11    -1.5840294706542266
#>     Attrib V12    -2.368680946713372
#>     Attrib V13    -1.1413775633803596
#>     Attrib V14    1.7067360898404156
#>     Attrib V15    0.8802877986837323
#>     Attrib V16    0.7734588371576615
#>     Attrib V17    -0.2874969468814972
#>     Attrib V18    -0.7008472881191325
#>     Attrib V19    -0.11534476838765766
#>     Attrib V2    -0.6557236735268063
#>     Attrib V20    0.2777033932847768
#>     Attrib V21    0.25767527747045266
#>     Attrib V22    -0.11670890066445236
#>     Attrib V23    -1.6948802220692067
#>     Attrib V24    -1.792288602684738
#>     Attrib V25    -0.9915499864964613
#>     Attrib V26    -0.9250579686222858
#>     Attrib V27    -1.1381999709000843
#>     Attrib V28    -2.00457172400047
#>     Attrib V29    -0.1966899475075526
#>     Attrib V3    0.046552113049829424
#>     Attrib V30    -0.2751002564571793
#>     Attrib V31    0.983231280369081
#>     Attrib V32    0.3365537647494203
#>     Attrib V33    0.17715948788898117
#>     Attrib V34    -0.03857837693212731
#>     Attrib V35    -0.8281230856724321
#>     Attrib V36    1.064258701205727
#>     Attrib V37    0.6948626046437468
#>     Attrib V38    0.4539407304136307
#>     Attrib V39    -0.30216786600840034
#>     Attrib V4    0.055972414055585756
#>     Attrib V40    -1.050418509701496
#>     Attrib V41    -1.97584492445278
#>     Attrib V42    0.25000248850124124
#>     Attrib V43    -0.03673538783591561
#>     Attrib V44    -0.5219583865547357
#>     Attrib V45    -0.6426806479203635
#>     Attrib V46    -0.8134077853392491
#>     Attrib V47    -0.9709417988220951
#>     Attrib V48    -1.1235036010006074
#>     Attrib V49    -1.3451328952085873
#>     Attrib V5    -0.3642366525877232
#>     Attrib V50    0.6344255693146771
#>     Attrib V51    -1.700062357201546
#>     Attrib V52    -0.9243761918356502
#>     Attrib V53    -1.3048001823111468
#>     Attrib V54    0.3821513510976083
#>     Attrib V55    0.9634882770075139
#>     Attrib V56    0.8028844471110413
#>     Attrib V57    1.4426532611165686
#>     Attrib V58    0.40799512287938366
#>     Attrib V59    -0.14797314231393643
#>     Attrib V6    -0.427339384279222
#>     Attrib V60    0.4078215319753809
#>     Attrib V7    0.777010593174812
#>     Attrib V8    1.8950602930370393
#>     Attrib V9    -1.4212978384672335
#> Sigmoid Node 29
#>     Inputs    Weights
#>     Threshold    -0.025170718021238558
#>     Attrib V1    0.35337158893262677
#>     Attrib V10    0.03422865828200041
#>     Attrib V11    -0.08645327159088304
#>     Attrib V12    0.1339285677471851
#>     Attrib V13    -0.19746845184192038
#>     Attrib V14    -0.062134451949487954
#>     Attrib V15    0.2797957546511349
#>     Attrib V16    -0.1433654217404522
#>     Attrib V17    0.0712435844257258
#>     Attrib V18    0.3209626245102727
#>     Attrib V19    -0.12135808717313705
#>     Attrib V2    0.08129216452890722
#>     Attrib V20    0.2158689621166168
#>     Attrib V21    0.34438529041694105
#>     Attrib V22    0.2578167991433302
#>     Attrib V23    0.15379866216701907
#>     Attrib V24    0.2340228818297711
#>     Attrib V25    -0.08143537492762148
#>     Attrib V26    -0.615361247000918
#>     Attrib V27    -0.6766197230412193
#>     Attrib V28    -0.4894327291158708
#>     Attrib V29    -0.2232942749982337
#>     Attrib V3    0.09430100831024743
#>     Attrib V30    0.14943881236679438
#>     Attrib V31    -0.37504262468711336
#>     Attrib V32    -0.024215135716626267
#>     Attrib V33    0.2752023413347676
#>     Attrib V34    -0.11074045800560363
#>     Attrib V35    0.002617640637722316
#>     Attrib V36    -0.337795259006745
#>     Attrib V37    -0.4347047257706441
#>     Attrib V38    -0.10520155955865487
#>     Attrib V39    -0.008477391151290007
#>     Attrib V4    0.08918240610183334
#>     Attrib V40    -0.17990201332449324
#>     Attrib V41    -0.2946103059437001
#>     Attrib V42    -0.019149157562633006
#>     Attrib V43    0.3487890126393048
#>     Attrib V44    -0.047967436497655946
#>     Attrib V45    -0.05001391586786163
#>     Attrib V46    -0.1489060442430134
#>     Attrib V47    -0.1170134905561197
#>     Attrib V48    0.22704066101184486
#>     Attrib V49    0.13071318234845528
#>     Attrib V5    0.015817894270455775
#>     Attrib V50    -0.0814853160068665
#>     Attrib V51    0.2952648628614079
#>     Attrib V52    0.08373517360049727
#>     Attrib V53    0.371546954220775
#>     Attrib V54    0.3848035536781367
#>     Attrib V55    -0.346884942503156
#>     Attrib V56    0.536300328287684
#>     Attrib V57    -0.20258564934611054
#>     Attrib V58    0.17550583567136854
#>     Attrib V59    0.5464239164711202
#>     Attrib V6    0.09751577039683519
#>     Attrib V60    0.5221483569596631
#>     Attrib V7    -0.27710616621742284
#>     Attrib V8    -0.3141175813749882
#>     Attrib V9    0.25494850638163047
#> Sigmoid Node 30
#>     Inputs    Weights
#>     Threshold    -0.08483108686750628
#>     Attrib V1    0.2627653066698814
#>     Attrib V10    0.10248588768345186
#>     Attrib V11    -0.009536392787931834
#>     Attrib V12    0.15813385683301232
#>     Attrib V13    0.028529749972294814
#>     Attrib V14    0.024073593041198407
#>     Attrib V15    0.157144437746353
#>     Attrib V16    -0.0789976795498181
#>     Attrib V17    0.03597617232567559
#>     Attrib V18    0.0823561309847029
#>     Attrib V19    -0.15651471386484844
#>     Attrib V2    0.10518811235598219
#>     Attrib V20    -0.008087435486723176
#>     Attrib V21    0.0947299374373175
#>     Attrib V22    -0.02292171918885988
#>     Attrib V23    -0.05763279989055335
#>     Attrib V24    -0.06566509002852407
#>     Attrib V25    -0.09981858460091164
#>     Attrib V26    -0.21245945250649784
#>     Attrib V27    -0.20967118299879678
#>     Attrib V28    -0.056050642550474115
#>     Attrib V29    -0.0876922510817333
#>     Attrib V3    0.08321898743054343
#>     Attrib V30    0.08078015994975427
#>     Attrib V31    -0.1635712726749294
#>     Attrib V32    -0.07200471995314188
#>     Attrib V33    0.03353414059747928
#>     Attrib V34    -0.08973065504354158
#>     Attrib V35    0.05149759471540661
#>     Attrib V36    -0.1136036904734132
#>     Attrib V37    -0.06608256866051823
#>     Attrib V38    0.014111233404541243
#>     Attrib V39    0.09693308407387068
#>     Attrib V4    0.17596886940801354
#>     Attrib V40    -0.0776704871514756
#>     Attrib V41    -0.17804879000996526
#>     Attrib V42    -0.03154775031541952
#>     Attrib V43    0.06698506832490364
#>     Attrib V44    -0.0676374909566423
#>     Attrib V45    -0.04898531175769918
#>     Attrib V46    -0.04641333014148864
#>     Attrib V47    -0.06391262636662372
#>     Attrib V48    0.15185448640280969
#>     Attrib V49    0.03999674011979149
#>     Attrib V5    0.04282803834376012
#>     Attrib V50    -0.03200648070242933
#>     Attrib V51    0.12510895274631334
#>     Attrib V52    0.031303364281673865
#>     Attrib V53    0.18144198877510048
#>     Attrib V54    0.2164885694568939
#>     Attrib V55    -0.09585636142283346
#>     Attrib V56    0.3369639418066112
#>     Attrib V57    -0.002836263729814181
#>     Attrib V58    0.1787167273016696
#>     Attrib V59    0.40401592573555367
#>     Attrib V6    0.012657682266777204
#>     Attrib V60    0.3806442728775849
#>     Attrib V7    -0.1727770883490328
#>     Attrib V8    -0.19603204706664581
#>     Attrib V9    0.11229620769810478
#> Sigmoid Node 31
#>     Inputs    Weights
#>     Threshold    -0.09465982515380156
#>     Attrib V1    0.30414499303214537
#>     Attrib V10    -0.002833891084572519
#>     Attrib V11    -0.09476008701193418
#>     Attrib V12    0.0026591351888548293
#>     Attrib V13    -0.12976460653389413
#>     Attrib V14    -0.0029231500285486754
#>     Attrib V15    0.2521503931289303
#>     Attrib V16    -0.059963189288016874
#>     Attrib V17    0.0964078030154278
#>     Attrib V18    0.25594889254531655
#>     Attrib V19    -0.056993517699513316
#>     Attrib V2    0.13294888973124486
#>     Attrib V20    0.16805220468033405
#>     Attrib V21    0.16375034939441283
#>     Attrib V22    0.15177355403707535
#>     Attrib V23    0.09551718089153181
#>     Attrib V24    0.09579263730341618
#>     Attrib V25    -0.1722114366286131
#>     Attrib V26    -0.4580327282551881
#>     Attrib V27    -0.541477035555465
#>     Attrib V28    -0.41277759402774916
#>     Attrib V29    -0.22155361575708638
#>     Attrib V3    0.045599606562954906
#>     Attrib V30    0.08706152673000023
#>     Attrib V31    -0.24737520628129817
#>     Attrib V32    -0.06497631184157882
#>     Attrib V33    0.18824222789692244
#>     Attrib V34    -0.05759434110569052
#>     Attrib V35    0.05415038270762411
#>     Attrib V36    -0.2120938048265644
#>     Attrib V37    -0.26807061254795256
#>     Attrib V38    -0.016055739491719928
#>     Attrib V39    -0.035391255183119405
#>     Attrib V4    0.15039441548001203
#>     Attrib V40    -0.15995398080736975
#>     Attrib V41    -0.3176644609675129
#>     Attrib V42    -0.045910399513504715
#>     Attrib V43    0.21532503145643364
#>     Attrib V44    0.02582809900070053
#>     Attrib V45    -0.10107952228177765
#>     Attrib V46    -0.11694467838664094
#>     Attrib V47    -0.09659335510922865
#>     Attrib V48    0.1530593788898173
#>     Attrib V49    0.04862523910110648
#>     Attrib V5    0.03727069709094226
#>     Attrib V50    -0.07554439459987052
#>     Attrib V51    0.1586614327553869
#>     Attrib V52    0.04207990954734914
#>     Attrib V53    0.28679974529327623
#>     Attrib V54    0.35791360856831517
#>     Attrib V55    -0.1665973603780597
#>     Attrib V56    0.40147306214220335
#>     Attrib V57    -0.06918926890701264
#>     Attrib V58    0.15632823308478075
#>     Attrib V59    0.4417936169960206
#>     Attrib V6    0.025735406704070596
#>     Attrib V60    0.4415282444610856
#>     Attrib V7    -0.17515893819069356
#>     Attrib V8    -0.22281940653355736
#>     Attrib V9    0.17740141538491047
#> Sigmoid Node 32
#>     Inputs    Weights
#>     Threshold    -0.13510987991742762
#>     Attrib V1    0.19312611287087375
#>     Attrib V10    0.004121059821279267
#>     Attrib V11    0.0042294893518444844
#>     Attrib V12    0.06938003342107893
#>     Attrib V13    -0.046395044285291835
#>     Attrib V14    0.06256415102766018
#>     Attrib V15    0.09862449187233294
#>     Attrib V16    -0.00801624160997821
#>     Attrib V17    -0.011823853156760118
#>     Attrib V18    0.12457820115735482
#>     Attrib V19    -0.10669119324362815
#>     Attrib V2    0.06682334489969688
#>     Attrib V20    0.027142525019837868
#>     Attrib V21    0.04239692239537689
#>     Attrib V22    -0.05250826246214879
#>     Attrib V23    -0.04630078040013604
#>     Attrib V24    -0.0766675208529526
#>     Attrib V25    -0.15011636344898288
#>     Attrib V26    -0.20731457179074533
#>     Attrib V27    -0.1567792252889855
#>     Attrib V28    -0.01847344719159294
#>     Attrib V29    -0.03102722689640206
#>     Attrib V3    0.1232654251952964
#>     Attrib V30    0.05215244779276908
#>     Attrib V31    -0.16119447012341923
#>     Attrib V32    -0.0362167275955162
#>     Attrib V33    0.07605450779780645
#>     Attrib V34    -0.0053572588961783765
#>     Attrib V35    0.07023858310721394
#>     Attrib V36    0.022851095918558294
#>     Attrib V37    -0.0248530774931157
#>     Attrib V38    0.01635970581069982
#>     Attrib V39    0.058127602073730994
#>     Attrib V4    0.10833589802890518
#>     Attrib V40    -0.08335167153938715
#>     Attrib V41    -0.16822054415281756
#>     Attrib V42    -0.019895999240613846
#>     Attrib V43    0.022215208411019947
#>     Attrib V44    0.044823169387002315
#>     Attrib V45    0.04058375177029542
#>     Attrib V46    0.015312532764125537
#>     Attrib V47    0.014341114167382566
#>     Attrib V48    0.07708584967069576
#>     Attrib V49    0.08615787664449266
#>     Attrib V5    0.08303633794399261
#>     Attrib V50    5.66911464408902E-4
#>     Attrib V51    0.13216842091685918
#>     Attrib V52    0.07794185802790604
#>     Attrib V53    0.12159971084332881
#>     Attrib V54    0.10500872750175708
#>     Attrib V55    -0.02223882621016325
#>     Attrib V56    0.20417705627470617
#>     Attrib V57    0.05833686789801861
#>     Attrib V58    0.17986504630585384
#>     Attrib V59    0.22161048363241115
#>     Attrib V6    0.018927187316134367
#>     Attrib V60    0.25140641709041356
#>     Attrib V7    -0.07513256356453868
#>     Attrib V8    -0.06726772978795949
#>     Attrib V9    0.1223668846168211
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
